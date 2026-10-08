object wFitxaPendents: TwFitxaPendents
  Left = 324
  Top = 329
  Width = 798
  Height = 411
  Caption = 'Consulta de Pendents'
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
  object PanelPendents: HYPanelConsulta
    Left = 0
    Top = 0
    Width = 790
    Height = 380
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    Abierta = False
    SqlDic.Strings = (
      
        'select E.DATA_INCLUSIO, E.C_ESTAT, E.C_ESPERA, E.C_HISTORIA, F_S' +
        'trNull(F.NOMCOMPLET, E.NOMCOMPLET) as NOMCOMPLET, E.DATA_PREINGR' +
        'ES, E.C_COORDINADOR, E.COMENTARIMETGE, E.C_PRESTACIO, C.N_CODI a' +
        's MOTIU, F.N_DIAGNOSTICNEUROLOGIC, E.C_OM, E.C_MOTIU, T.C_CENTRE' +
        'FAC'
      'from ESPERA E '
      
        'left outer join CODICAMPS C on E.C_MOTIU = C.C_CODI and C.TIPUSC' +
        'ODI = '#39'MOTIU'#39' and C.C_CODI <> 0'
      'left outer join FILIACIO F on F.NUM_HIST = E.C_HISTORIA'
      'left outer join PRESTACION P on E.C_PRESTACIO=P.C_PRESTACIO'
      'left outer join TRACTAMENTS T on E.C_HISTORIA = T.C_HISTORIA '
      
        '                          and T.C_TRACTAMENT = (select max(T2.C_' +
        'TRACTAMENT)'
      
        '                                                                ' +
        '       from TRACTAMENTS T2'
      
        '                                                                ' +
        '       join PRESTACION P on T2.C_PRESTACIO = P.C_PRESTACIO '
      
        '                                                                ' +
        '                                      and P.TIPUS <> 0'
      
        '                                                                ' +
        '                                      and P.FACTURAR = '#39'S'#39
      
        '                                                                ' +
        '       where T2.C_HISTORIA = F.NUM_HIST)'
      'where (E.C_ESTAT between 10 and 19)'
      'AND E.EXCLOS = "N"'
      
        'AND ((E.C_PRESTACIO IS NULL) OR (E.C_PRESTACIO IS NOT NULL AND N' +
        'OT (P.TIPUS = 2 and P.CENTRE = "H")))'
      '[AND FILTRO]'
      '[ORDEN]')
    SqlDicTotal.Strings = (
      'SELECT COUNT(*)'
      'FROM ESPERA E '
      'LEFT JOIN PRESTACION P ON E.C_PRESTACIO=P.C_PRESTACIO'
      'WHERE (E.C_ESTAT BETWEEN 10 AND 19)'
      'AND E.EXCLOS = "N"'
      
        'AND ((E.C_PRESTACIO IS NULL) OR (E.C_PRESTACIO IS NOT NULL AND N' +
        'OT (P.TIPUS = 2 and P.CENTRE = "H")))'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataAdmisio.Espera
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    CamposOculta.Strings = (
      'C_ESPERA'
      'C_ESTAT'
      'C_OM'
      'C_MOTIU')
    PrinterOrientation = poPortrait
    ConsultaGetSqlField = PanelPendentsConsultaGetSqlField
    AlPintarGrid = PanelPendentsAlPintarGrid
  end
  object Panel1: TPanel
    Left = 424
    Top = 10
    Width = 291
    Height = 36
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 291
      Height = 36
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 115
      Caption = 'ToolBar1'
      Color = clSilver
      EdgeBorders = []
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Images = wData.Images
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      Wrapable = False
      object ToolButton5: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 8
        Top = 0
        Action = accEliminar
        AutoSize = True
        Caption = 'Elimina'
      end
      object ToolButton2: TToolButton
        Left = 60
        Top = 0
        Action = accAgenda
        AutoSize = True
        Caption = 'Processa prestaci'#243
      end
      object bHistoric: TToolButton
        Left = 180
        Top = 0
        Action = accHistoric
        AutoSize = True
        Caption = 'Hist'#242'ric'
      end
      object ToolButton4: TToolButton
        Left = 235
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 243
        Top = 0
        Action = accSortir
        AutoSize = True
        Caption = 'Tanca'
      end
    end
  end
  object Actions: TActionList
    Images = wData.Images
    Left = 256
    Top = 136
    object accEliminar: TAction
      Caption = 'Eliminar'
      ImageIndex = 31
      OnExecute = accEliminarExecute
    end
    object accAgenda: TAction
      Caption = 'Agenda'
      ImageIndex = 43
      OnExecute = accAgendaExecute
    end
    object accSortir: TAction
      Caption = 'Tancar'
      ImageIndex = 14
      OnExecute = accSortirExecute
    end
    object accHistoric: TAction
      Caption = 'Historic'
      ImageIndex = 32
      OnExecute = accHistoricExecute
    end
  end
end
