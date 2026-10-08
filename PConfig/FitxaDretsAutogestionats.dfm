object wFitxaDretsAutogestionats: TwFitxaDretsAutogestionats
  Left = 563
  Top = 203
  Width = 753
  Height = 436
  Caption = 'Drets Autogestionats'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    Width = 745
    Height = 25
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    DataSource = dsDretsAutogestionats
    Titulo = False
    VerPrint = True
    VerRefresh = True
  end
  object HYGrid1: THYGrid
    Left = 0
    Top = 25
    Width = 745
    Height = 380
    Align = alClient
    Color = clWhite
    DataSource = dsDretsAutogestionats
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
        FieldName = 'C_DRET'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DRET_Descripcio'
        Title.Caption = 'Descripcio'
        Width = 509
        Visible = True
      end>
  end
  object dsDretsAutogestionats: TDataSource
    DataSet = bDretsAutogestionats
    Left = 56
    Top = 204
  end
  object bDretsAutogestionats: THYSqlBrowse
    DatabaseName = 'Interna'
    Filtered = True
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataConfig.DretsGestionats
    IndiceActivo = 'PK'
    CalcSimple = False
    AlConsultarCampoFiltro2 = bDretsAutogestionatsAlConsultarCampoFiltro2
    AutoPost = False
    Left = 56
    Top = 144
    object bDretsAutogestionats_C_DRET: TStringField
      Tag = 100
      DisplayLabel = 'Codi dret'
      DisplayWidth = 10
      FieldName = 'C_DRET'
      Size = 10
    end
    object bDretsAutogestionats_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig de Dret'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'DRET_C_Dret'
      LookupKeyFields = 'C_Dret'
      KeyFields = 'DRET'
      Size = 10
      Calculated = True
    end
    object bDretsAutogestionats_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'DRET_Descripcio'
      LookupKeyFields = 'Descripcio'
      KeyFields = 'DRET'
      Size = 80
      Calculated = True
    end
    object bDretsAutogestionats_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'DretOrdre'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'DRET_DretOrdre'
      LookupKeyFields = 'DretOrdre'
      KeyFields = 'DRET'
      Size = 100
      Calculated = True
    end
  end
  object cDret: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select D.C_DRET, D.DESCRIPCIO'
      'FROM DRETS D'
      'WHERE D.C_DRET STARTING WITH '#39'M'#39
      
        'AND (SELECT COUNT(*) FROM DRETSGESTIONATS DG WHERE DG.C_DRET=D.C' +
        '_DRET) =0'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataConfig.Drets
    Titulo = 'Drets M'
    Orden.Strings = (
      'DRET'
      'DESCRIPCIO')
    OrdenDB.Strings = (
      'C_DRET'
      'DESCRIPCIO')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = cDretAlSeleccionar
    Left = 192
    Top = 144
  end
end
