object wTractaments: TwTractaments
  Left = 249
  Top = 185
  Width = 873
  Height = 808
  Caption = 
    'Llistat de pacients atesos en un per'#237'ode (exclou EASE, Salut lab' +
    'oral i MHDA)'
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
  object pfiltres: TPanel
    Left = 0
    Top = 0
    Width = 395
    Height = 777
    Align = alLeft
    BorderWidth = 10
    Caption = #186
    TabOrder = 0
    object rgData: TRadioGroup
      Left = 11
      Top = 47
      Width = 373
      Height = 36
      Align = alTop
      Columns = 3
      Items.Strings = (
        'Data ingr'#233's'
        'Data alta'
        'Per'#237'ode at'#232's')
      TabOrder = 0
    end
    object pPrestacio: HYPanelConsulta
      Left = 11
      Top = 83
      Width = 373
      Height = 238
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clSilver
      UseDockManager = False
      TabOrder = 1
      Abierta = False
      SqlDic.Strings = (
        'select c_prestacio, n_prestacio, tipus, esEASE as CENTRE'
        'from prestacion '
        'where (tipus in (1,2,3,5) or tipus<=0)'
        '[AND FILTRO]'
        '[ORDEN]')
      Dicionario1 = wDataBasics.Prestacion
      Titulo = 'Llistat de prestacions'
      Orden.Strings = (
        'codi'
        'descripci'#243)
      OrdenDB.Strings = (
        'c_prestacio'
        'n_prestacio')
      Filtros = <>
      OrdenAuto = True
      AgrupaPagina = False
      MultiSelect = True
      RowSelect = False
      PrintAncho = 0
      SoloUnaLinea = False
      VerExcel = False
      VerPrint = False
      VerSimple = True
      PrinterOrientation = poPortrait
      ConsultaGetSqlField = pPrestacioConsultaGetSqlField
    end
    object Panel3: TPanel
      Left = 11
      Top = 11
      Width = 373
      Height = 36
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 2
      object eInici: THYTextEdit
        Left = 5
        Top = 9
        Width = 149
        Height = 19
        Projecto = wData.Projecte
        Tipo = teDate
        CustDataType = dtDate
        EditMask = '!99/99/9999;1; '
        Eti = 'Inici per'#237'ode:'
        EtiSepara = 75
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Size = 10
        TabOrder = 0
        TabStop = True
        AutoSelect = False
      end
      object eFinal: THYTextEdit
        Left = 160
        Top = 9
        Width = 150
        Height = 19
        Projecto = wData.Projecte
        Tipo = teDate
        CustDataType = dtDate
        EditMask = '!99/99/9999;1; '
        Eti = 'Final per'#237'ode:'
        EtiSepara = 75
        EtiOrienta = eoIzquierda
        EtiAlign = taLeftJustify
        Size = 10
        TabOrder = 1
        TabStop = True
        AutoSelect = False
      end
    end
    object Panel4: TPanel
      Left = 11
      Top = 569
      Width = 373
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object bbLlistar: TBitBtn
        Left = 130
        Top = 13
        Width = 75
        Height = 24
        Caption = 'LLISTAR'
        TabOrder = 0
        OnClick = bbLlistarClick
      end
    end
    object Panel5: TPanel
      Left = 11
      Top = 610
      Width = 373
      Height = 156
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 4
      object memoFiltres: TMemo
        Left = 0
        Top = 0
        Width = 373
        Height = 156
        Align = alClient
        ParentColor = True
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 11
      Top = 485
      Width = 373
      Height = 84
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 5
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 130
        Height = 13
        Caption = 'Filtre per UNITAT M'#200'DICA:'
      end
      object cbDC: TCheckBox
        Left = 8
        Top = 25
        Width = 148
        Height = 17
        Caption = 'Dany cereblar: 10, 13 a 19'
        TabOrder = 0
        OnClick = cbDCClick
      end
      object cbLM: TCheckBox
        Left = 188
        Top = 24
        Width = 123
        Height = 17
        Caption = 'Lesi'#243' Medul'#183'lar: 1 a 4'
        TabOrder = 1
        OnClick = cbDCClick
      end
      object cbP: TCheckBox
        Left = 8
        Top = 42
        Width = 154
        Height = 17
        Caption = 'Progressives: 11,12,20 a 22'
        TabOrder = 2
        OnClick = cbDCClick
      end
      object cbAltresLM: TCheckBox
        Left = 188
        Top = 41
        Width = 97
        Height = 17
        Caption = 'Altres LM: 5 a 9'
        TabOrder = 3
        OnClick = cbDCClick
      end
      object cbAltres: TCheckBox
        Left = 8
        Top = 59
        Width = 69
        Height = 17
        Caption = 'Altres: 23'
        TabOrder = 4
        OnClick = cbDCClick
      end
      object cbTotes: TCheckBox
        Left = 188
        Top = 57
        Width = 97
        Height = 17
        Caption = 'TOTES'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
    end
    object Panel2: TPanel
      Left = 11
      Top = 321
      Width = 373
      Height = 164
      Align = alTop
      AutoSize = True
      BevelOuter = bvLowered
      BorderWidth = 5
      TabOrder = 6
      object Label1: TLabel
        Left = 6
        Top = 6
        Width = 361
        Height = 152
        Align = alTop
        AutoSize = False
        Caption = 
          'Filtres possibles de prestacions (a part de per codi o descipci'#243 +
          '):'#13#10#13#10'TIPUS:    1 = hospitalitzaci'#243#13#10'                2 = consult' +
          'a externa'#13#10'                3 = tractament ambulatori'#13#10'          ' +
          '      5 = GBL'#13#10#13#10'CENTRE: N = Badalona (Hospital)'#13#10'              ' +
          '   C = Barcelona'#13#10'                 G = GBL'
        Layout = tlCenter
      end
    end
  end
  object pTractaments: HYPanelConsulta
    Left = 395
    Top = 0
    Width = 470
    Height = 777
    Align = alClient
    Color = clSilver
    TabOrder = 1
    Abierta = False
    SqlDic.Strings = (
      
        'select t.c_tractament, f.num_hist, f.nomcomplet, f.sexo, F.edat,' +
        ' '
      't.data_ingres, t.data_alta, t.c_prestacio, t.c_coordinador,'
      
        'f.codigo, F.poblacio, f.pais, f.c_unitatmedica, f.c_origen, c.n_' +
        'codi as origen, '
      
        't.c_motiu, C4.N_CODI as Motiu, t.c_destinacio, C6.N_CODI AS DEST' +
        'INACIO, t.DESTI_CONT_EXT, C7.N_CODI AS DESTINACIO_CONT_EXT, '
      
        't.DESTI_CONT_INT, C8.N_CODI AS DESTINACIO_CONT_INT, t.C_HOSPITAL' +
        'DESTI, H.N_HOSPITAL,'
      
        'f.c_causa, c2.n_codi, f.c_causa_detall, c3.n_codi as causa_detal' +
        'l, f.um_antiga, '
      
        't.C_DIAGNOSTICINGRES, t.N_DIAGNOSTICINGRES, C5.N_ICD as descripc' +
        'io_ICD_Diag_Principal,'
      
        't.c_centrefac, t.c_client, t.c_delegacio, t.id_facilitador, b.no' +
        'm as facilitador, t.c_estatfac'
      'from tractaments t '
      
        'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "E' +
        'STATFACTU" and X.R_CODI <> 9'
      
        'left outer join codiicd c5 on t.c_diagnosticingres = c5.c_icd an' +
        'd t.versiocim=c5.versiocim'
      'left outer join filiacio f on t.c_historia = f.num_hist'
      'left outer join prestacion p on t.c_prestacio = p.c_prestacio'
      
        'left outer join codicamps c on f.c_origen = c.c_codi and c.tipus' +
        'codi = '#39'ORIGEN_FILIACIO'#39
      
        'left outer join codicamps c2 on f.c_CAUSA = c2.c_codi and c2.tip' +
        'uscodi = '#39'CAUSA'#39
      
        'left outer join codicamps c3 on f.c_CAUSA_DETALL = c3.c_codi and' +
        ' c3.tipuscodi = '#39'CAUSA_DETALL'#39
      
        'left outer join codicamps c4 on t.c_motiu = c4.c_codi and c4.tip' +
        'uscodi = '#39'MOTIU'#39
      
        'left outer join facilitadors b on t.id_facilitador = b.id_facili' +
        'tador'
      
        'LEFT OUTER JOIN CODICAMPS C6 ON T.C_DESTINACIO = C6.c_codi AND c' +
        '6.tipuscodi='#39'DESTINACIO'#39
      
        'LEFT OUTER JOIN CODICAMPS C7 ON T.DESTI_CONT_EXT = C7.C_CODI AND' +
        ' C7.TIPUSCODI='#39'DESTI_CONT_EXT'#39
      
        'LEFT OUTER JOIN CODICAMPS C8 ON T.DESTI_CONT_INT = C8.C_CODI AND' +
        ' C8.TIPUSCODI='#39'DESTI_CONT_INT'#39
      'LEFT OUTER JOIN HOSPITAL H ON T.C_HOSPITALDESTI = H.C_HOSPITAL '
      'where (p.tipus in (1,2,3,5) or p.tipus<=0)'
      
        'and t.data_ingres between '#39'01.01.2026'#39' and '#39'11.1.2026'#39'  /* L'#205'NIA' +
        ' 23 - DATA*/'
      
        'and p.c_prestacio = '#39'1004'#39'                                      ' +
        '            /* L'#205'NIA 24 - PRESTACI'#211' */'
      
        'and f.c_unitatmedica in (1,2,3,4)                               ' +
        '          /* LINIA 25 - UNITAT M'#200'DICA */'
      '[AND FILTRO]'
      '[ORDEN]')
    SqlDicTotal.Strings = (
      'select count(*)'
      'from tractaments t'
      
        'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "E' +
        'STATFACTU" and X.R_CODI <> 9'
      'left outer join filiacio f on t.c_historia = f.num_hist'
      'left outer join prestacion p on t.c_prestacio = p.c_prestacio'
      'where (p.tipus in (1,2,3,5) or p.tipus<=0)'
      
        'and     t.data_ingres between '#39'01.03.2008'#39' and '#39'31.03.2008'#39' /* L' +
        #205'NIA 6 - DATA*/'
      
        'and     p.c_prestacio = '#39'1004'#39'                                  ' +
        '               /* L'#205'NIA 7 - PRESTACI'#211' */'
      
        'and     f.c_unitatmedica in (1,2,3,4)                           ' +
        '             /* LINIA 8 - UNITAT M'#200'DICA */'
      '[AND FILTRO]'
      '')
    Dicionario1 = wDataBasics.Tractaments
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    PrinterOrientation = poPortrait
    ConsultaGetSqlField = pTractamentsConsultaGetSqlField
    VerSalir = True
  end
end
