object wDataOMbvg: TwDataOMbvg
  OldCreateOrder = False
  Left = 358
  Top = 228
  Height = 407
  Width = 922
  object P_Caduca: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Caduca'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ORDREMEDICA INTEGER, C_HISTORIA INTEGER)'
      'AS'
      '  DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      'BEGIN'
      ''
      
        '      /* Les OM generades (amb estat = v) caduquen una setmana d' +
        'espr'#233's de l'#39'alta, per programador (de fet, s'#39'eliminen) */'
      ''
      
        '      /* Amb par'#224'metre c_ordremedica <> 0 caduca l'#39'ordre que li ' +
        'passem si '#233's vigent i ja ha passat la data de caducitat */'
      ''
      '      IF (C_ORDREMEDICA <> 0) THEN'
      '      BEGIN'
      '      '
      '            UPDATE ORDRESMEDIQUES'
      '            SET    C_ESTAT = '#39'C'#39','
      '                   DATA_SUSPENSIO = DATA_CADUCITAT'
      '            WHERE  C_ORDREMEDICA = :C_ORDREMEDICA'
      '            AND    C_ESTAT = '#39'V'#39
      
        '            AND    DURADA <> -1               /* OM2014 <> DU  i' +
        '  OM8888  no caduquen fins a l'#39'alta */'
      '            AND    DATA_CADUCITAT < '#39'NOW'#39';'
      '            '
      
        '            /* OM2014  Caduquem les altes ambulat'#242'ries i els rec' +
        'alculem la durada (si s'#243'n de freq <> DU) */'
      '            UPDATE ORDRESMEDIQUES'
      '            SET    C_ESTAT = '#39'C'#39','
      '                   DURADA = DATA_SUSPENSIO - DATA_INICI + 1'
      '            WHERE  C_ORDREMEDICA = :C_ORDREMEDICA'
      '            AND    C_ESTAT = '#39'V'#39
      '            AND    DURADA = -1'
      '            AND    C_FREQUENCIA <> '#39'DU'#39
      '            AND    DATA_SUSPENSIO < '#39'NOW'#39';'
      ''
      
        '            /* OM8888  Caduquem les altes de prestacions 8888 qu' +
        'e estaven latents i els recalculem la durada */'
      '            UPDATE ORDRESMEDIQUES'
      '            SET    C_ESTAT = '#39'C'#39','
      '                   DURADA = DATA_SUSPENSIO - DATA_INICI'
      '            WHERE  C_ORDREMEDICA = :C_ORDREMEDICA'
      '            AND    C_ESTAT = '#39'L'#39
      '            AND    DURADA = -1'
      
        '            AND    C_FREQUENCIA <> '#39'DU'#39'       /* per no caducar ' +
        'les OM programades de Rec'#224'rregues de Baclof'#232'n o d'#39'Interfer'#243' */'
      '            AND    DATA_SUSPENSIO < '#39'NOW'#39';'
      '      END;'
      '      '
      '      '
      
        '      /* Amb par'#224'metre c_historia <> 0 caduca les ordres vigents' +
        ' corresponents a la hist'#242'ria que li passem si ja ha passat la da' +
        'ta de caducitat */'
      ''
      '      ELSE IF (C_HISTORIA <> 0) THEN'
      '      BEGIN'
      '            UPDATE ORDRESMEDIQUES'
      
        '            SET    C_ESTAT = '#39'C'#39', DATA_SUSPENSIO = DATA_CADUCITA' +
        'T'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    C_ESTAT = '#39'V'#39
      
        '            AND    DURADA <> -1               /* OM2014 <> DU  i' +
        '  OM8888  no caduquen fins a l'#39'alta */'
      '            AND    DATA_CADUCITAT < '#39'NOW'#39';'
      '            '
      
        '            /* OM2014  Caduquem les altes ambulat'#242'ries i els rec' +
        'alculem la durada (si s'#243'n de freq <> DU) */'
      '            UPDATE ORDRESMEDIQUES'
      '            SET    C_ESTAT = '#39'C'#39','
      '                   DURADA = DATA_SUSPENSIO - DATA_INICI + 1'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    C_ESTAT = '#39'V'#39
      '            AND    DURADA = -1'
      '            AND    C_FREQUENCIA <> '#39'DU'#39
      '            AND    DATA_SUSPENSIO < '#39'NOW'#39';'
      ''
      
        '            /* OM8888  Caduquem les altes de prestacions 8888 qu' +
        'e estave latents */'
      '            UPDATE ORDRESMEDIQUES'
      '            SET    C_ESTAT = '#39'C'#39','
      '                   DURADA = DATA_SUSPENSIO - DATA_INICI'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    C_ESTAT = '#39'L'#39
      '            AND    DURADA = -1'
      
        '            AND    C_FREQUENCIA <> '#39'DU'#39'       /* per no caducar ' +
        'les OM programades de Rec'#224'rregues de Baclof'#232'n o d'#39'Interfer'#243' */'
      '            AND    DATA_SUSPENSIO < '#39'NOW'#39';'
      '      END;'
      '      '
      
        '      /* Si els par'#224'metres s'#243'n 0, repassa totes les ordres vigen' +
        'ts i caduca les q toca si ja ha passat la data de caducitat */'
      '         '
      '      ELSE BEGIN'
      '            UPDATE ORDRESMEDIQUES'
      
        '            SET    C_ESTAT = '#39'C'#39', DATA_SUSPENSIO = DATA_CADUCITA' +
        'T'
      '            WHERE  C_ESTAT = '#39'V'#39
      
        '            AND    DURADA <> -1               /* OM2014 <> DU  i' +
        '  OM8888  no caduquen fins a l'#39'alta */'
      '            AND    DATA_CADUCITAT < '#39'NOW'#39';'
      ''
      
        '            /* OM2014  Caduquem les altes ambulat'#242'ries i els rec' +
        'alculem la durada (si s'#243'n de freq <> DU) */'
      '            UPDATE ORDRESMEDIQUES'
      '            SET    C_ESTAT = '#39'C'#39','
      '                   DURADA = DATA_SUSPENSIO - DATA_INICI + 1'
      '            WHERE  C_ESTAT = '#39'V'#39
      '            AND    DURADA = -1'
      '            AND    C_FREQUENCIA <> '#39'DU'#39
      '            AND    DATA_SUSPENSIO < '#39'NOW'#39';'
      '            '
      
        '            /* OM8888  Caduquem les altes de prestacions 8888 qu' +
        'e estave latents */'
      '            UPDATE ORDRESMEDIQUES'
      '            SET    C_ESTAT = '#39'C'#39','
      '                   DURADA = DATA_SUSPENSIO - DATA_INICI'
      '            WHERE  C_ESTAT = '#39'L'#39
      '            AND    DURADA = -1'
      
        '            AND    C_FREQUENCIA <> '#39'DU'#39'       /* per no caducar ' +
        'les OM programades de Rec'#224'rregues de Baclof'#232'n o d'#39'Interfer'#243' */'
      '            AND    DATA_SUSPENSIO < '#39'NOW'#39';'
      '      END;'
      'END'
      ''
      '')
    Dic1 = wDataOMdics.OrdresMediques
    Dic1Name = 'ordres mediques'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 34
    Top = 20
  end
  object P_CaducaInf: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Caduca'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ORDREMEDICA INTEGER, C_HISTORIA INTEGER)'
      'AS'
      'BEGIN'
      ''
      
        '      /* Amb par'#224'metre c_ordremedica <> 0 caduca l'#39'ordre que li ' +
        'passem si '#233's vigent i ja ha passat la data de caducitat */'
      ''
      '      IF (C_ORDREMEDICA <> 0) THEN'
      '      BEGIN'
      '            UPDATE ORDRESINFERMERIA'
      
        '            SET    C_ESTAT = '#39'C'#39', DATA_SUSPENSIO = DATA_CADUCITA' +
        'T'
      '            WHERE  C_ORDREMEDICA = :C_ORDREMEDICA'
      '            AND    C_ESTAT = '#39'V'#39
      '            AND    DATA_CADUCITAT < '#39'TODAY'#39';'
      '      END;'
      ''
      
        '      /* Amb par'#224'metre c_historia <> 0 caduca les ordres vigents' +
        ' corresponents a la hist'#242'ria que li passem si ja ha passat la da' +
        'ta de caducitat */'
      ''
      '      ELSE IF (C_HISTORIA <> 0) THEN'
      '      BEGIN'
      '            UPDATE ORDRESINFERMERIA'
      
        '            SET    C_ESTAT = '#39'C'#39', DATA_SUSPENSIO = DATA_CADUCITA' +
        'T'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    C_ESTAT = '#39'V'#39
      '            AND    DATA_CADUCITAT < '#39'TODAY'#39';'
      '      END;'
      ''
      
        '      /* Si els par'#224'metres s'#243'n 0, repassa totes les ordres vigen' +
        'ts i caduca les q toca si ja ha passat la data de caducitat */'
      ''
      '      ELSE BEGIN'
      '            UPDATE ORDRESINFERMERIA'
      
        '            SET    C_ESTAT = '#39'C'#39', DATA_SUSPENSIO = DATA_CADUCITA' +
        'T'
      '            WHERE  C_ESTAT = '#39'V'#39
      '            AND    DATA_CADUCITAT < '#39'TODAY'#39';'
      '      END;'
      'END'
      ''
      '')
    Dic1 = wDataOMdics.OrdresInfermeria
    Dic1Name = 'ordres infermeria'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 106
    Top = 20
  end
  object Fili: TQuery
    DatabaseName = 'Interna'
    RequestLive = True
    SQL.Strings = (
      'select NUM_HIST, ALERGIES, NOMCOMPLET, EDAT'
      'from FILIACIO'
      'where NUM_HIST = :num_hist')
    Left = 34
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'num_hist'
        ParamType = ptInput
      end>
  end
  object dsFili: TDataSource
    DataSet = Fili
    Left = 82
    Top = 104
  end
  object qryTract: TQuery
    AfterOpen = qryTractAfterOpen
    DatabaseName = 'Interna'
    DataSource = dsFili
    SQL.Strings = (
      
        'select T.C_TRACTAMENT, T.C_HISTORIA, T.C_COORDINADOR, T.C_CLIENT' +
        ','
      
        '           T.C_DIAGNOSTICNEUROLOGICINGRES, T.N_DIAGNOSTICNEUROLO' +
        'GICINGRES, '
      
        '           T.N_DIAGNOSTICNEUROLOGICINGRES as DIAGNOSTICPRINCIPAL' +
        ','
      
        '           T.C_PLANTA, T.C_LLIT, T.C_PRESTACIO, T.DATA_INGRES, T' +
        '.DATA_ALTA, t.c_motiu, T.C_PROCES'
      'from TRACTAMENTS T '
      
        'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "E' +
        'STATFACTU" and X.R_CODI <> 9'
      'where T.C_HISTORIA = :num_hist'
      
        'and (T.DATA_ALTA is NULL or T.DATA_ALTA >= "TODAY")  /* l'#237'nia 7 ' +
        '*/'
      'and T.C_PRESTACIO in (select D.C_PRESTACIO '
      '                                     from DRETSPRESTA D'
      
        '                                     where D.C_DRET = '#39'P89'#39')   /' +
        '* l'#237'nia 10 */'
      'order by T.C_PRESTACIO desc')
    Left = 34
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUM_HIST'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsTract: TDataSource
    DataSet = qryTract
    Left = 82
    Top = 160
  end
  object qryDiag: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTract
    SQL.Strings = (
      'select C_DIAGNOSTIC, N_DIAGNOSTIC, N_ICD'
      'from DIAGNOSTICS D'
      'left outer join CODIICD C on D.C_DIAGNOSTIC = C.C_ICD'
      'where D.C_TRACTAMENT = :c_tractament'
      'and D.TIPUS = '#39'I'#39
      'order by D.ORDRE'
      '')
    Left = 136
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsDiag: TDataSource
    DataSet = qryDiag
    Left = 184
    Top = 160
  end
  object qryOMInf: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTract
    SQL.Strings = (
      'select O.C_TRACTAMENT, O.C_ORDREMEDICA, '
      '          O.COMENTARI, O.CONTENCIO, O.MESURES_CONTENCIO,'
      '          O.DATA_INICI, O.DURADA, O.DIES,'
      '          O.DURADA - O.DIES as RESTEN,'
      '          M.METGE, O.C_ESTAT,'
      '          O.DATA_REVISAT, M3.METGE as METGE_REVISAT,'
      '          O.DATA_SUSPENSIO, M2.METGE as METGE_SUSPENSIO'
      'from ORDRESINFERMERIA O'
      'join METGES M on O.METGE_PAUTAT = M.CODI'
      'left outer join METGES M2 on O.METGE_SUSPENSIO = M2.CODI'
      'left outer join METGES M3 on O.METGE_REVISAT = M3.CODI'
      'where O.C_TRACTAMENT = :c_tractament'
      'and O.C_ESTAT = '#39'V'#39
      'order by O.DATA_INICI')
    Left = 34
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qryOM: TQuery
    OnCalcFields = qryOMCalcFields
    DatabaseName = 'Interna'
    DataSource = dsTract
    SQL.Strings = (
      
        'select Upper(cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', O.N_MEDICAMENT_FG, ' +
        'G.N_GTN) as varchar(80))) as NOM_MAJ,'
      '          O.C_TRACTAMENT, O.C_ORDREMEDICA, G.ESGUIA,'
      
        '          cast(F_IfLong(G.GTN, '#39'='#39', '#39#39', '#39'0000000'#39', G.GTN) as var' +
        'char(7)) as GTN,'
      
        '          cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', O.N_MEDICAMENT_FG, G.N' +
        '_GTN) as varchar(80)) as N_MEDICAMENT,'
      '          O.C_VIA, O.DOSI, O.UNITAT_MESURA, O.C_PRESENTACIO,'
      
        '          cast(F_IfLong(O.FREQ_GENERA, '#39'='#39', '#39#39', O.C_FREQUENCIA, ' +
        'O.FREQ_GENERA) as Varchar(4)) as C_FREQUENCIA, '
      
        '          O.DATA_INICI, O.CRONICA, O.DURADA, O.DIES, O.HORA_INIC' +
        'I, O.HORA_INICISD, O.HORA_INICI_T,'
      
        '          F_Truncate(F_numericNull(OCURRENCIES - DIES, F_MaximBV' +
        'G(0, O.DURADA - O.DIES))) as RESTEN,'
      '          O.OBSERVACIONS, M.METGE, O.C_ESTAT, O.DNEUROPATIC,'
      
        '          F_FloatToStr(O.DOSI_P)||'#39' '#39'||O.UNITAT_MESURA_P ||'#39' - '#39 +
        '||P1.N_REG3 as REG3_P1, '
      
        '          F_FloatToStr(O.DOSI_P2)||'#39' '#39'||O.UNITAT_MESURA_P2 ||'#39' -' +
        ' '#39'||P2.N_REG3 as REG3_P2,'
      
        '          O.HORA_PROPERA, O.MOTIU_ANTIBIOTIC, A.N_MOTIU, O.NUM_D' +
        'OSI,'
      
        '          O.C_PROFILAXI, O.ANULA_SEGUENT, O.MOTIU_EPF, O.G_POBLA' +
        'CIONAL,'
      '          O.N_MEDICAMENT_FG, O.MOTIU_FG_UR, O.BMTEST,'
      
        '          O.DATA_SUSPENSIO, M2.METGE AS METGE_SUSPEN, O.DATA_CAD' +
        'UCITAT,'
      
        '          O.OM_GENERA, O.FREQ_GENERA, O.OCURRENCIES, O.COMENTARI' +
        '_ALERGIA'
      'from ORDRESMEDIQUES O '
      'left outer join PRODUCTES P1 on O.C_PRODUCTE = P1.C_PROD '
      'left outer join PRODUCTES P2 on O.C_PRODUCTE2 = P2.C_PROD'
      'left outer join GTN G on O.GTN = G.GTN'
      'left outer join METGES M on O.METGE_PAUTAT = M.CODI'
      'left outer join METGES M2 on O.METGE_SUSPENSIO = M2.CODI'
      
        'left outer join MOTIUSANTIBIOTIC A on O.MOTIU_ANTIBIOTIC = A.C_M' +
        'OTIU'
      'where O.C_TRACTAMENT = :c_tractament'
      'and (O.C_ESTAT = '#39'V'#39' or O.C_ESTAT = '#39'P'#39' or O.C_ESTAT = '#39'L'#39'  or'
      '       (O.C_ESTAT = '#39'K'#39' and O.DATA_CADUCITAT >= "TODAY"))'
      'order by 1, O.DATA_INICI, O.HORA_INICI    /* l'#237'nia 26 */')
    Left = 34
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptInput
        Size = 4
      end>
    object qryOMC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object qryOMC_ORDREMEDICA: TIntegerField
      FieldName = 'C_ORDREMEDICA'
    end
    object qryOMGTN: TStringField
      FieldName = 'GTN'
      Size = 7
    end
    object qryOMN_MEDICAMENT: TStringField
      FieldName = 'N_MEDICAMENT'
      Size = 80
    end
    object qryOMDOSI: TFloatField
      FieldName = 'DOSI'
    end
    object qryOMUNITAT_MESURA: TStringField
      FieldName = 'UNITAT_MESURA'
      Size = 4
    end
    object qryOMC_VIA: TStringField
      FieldName = 'C_VIA'
      FixedChar = True
      Size = 3
    end
    object qryOMC_FREQUENCIA: TStringField
      FieldName = 'C_FREQUENCIA'
      Size = 4
    end
    object qryOMDATA_INICI: TDateTimeField
      FieldName = 'DATA_INICI'
    end
    object qryOMDURADA: TIntegerField
      FieldName = 'DURADA'
    end
    object qryOMDIES: TIntegerField
      FieldName = 'DIES'
    end
    object qryOMHORA_INICI: TSmallintField
      FieldName = 'HORA_INICI'
    end
    object qryOMHORA_INICISD: TSmallintField
      FieldName = 'HORA_INICISD'
    end
    object qryOMHORA_INICI_T: TSmallintField
      FieldName = 'HORA_INICI_T'
    end
    object qryOMRESTEN: TIntegerField
      FieldName = 'RESTEN'
    end
    object qryOMOBSERVACIONS: TStringField
      FieldName = 'OBSERVACIONS'
      Size = 50
    end
    object qryOMMETGE: TStringField
      FieldName = 'METGE'
    end
    object qryOMC_ESTAT: TStringField
      FieldName = 'C_ESTAT'
      Size = 15
    end
    object qryOMHORA_PROPERA: TSmallintField
      FieldName = 'HORA_PROPERA'
    end
    object qryOMMOTIU_ANTIBIOTIC: TSmallintField
      FieldName = 'MOTIU_ANTIBIOTIC'
    end
    object qryOMN_MOTIU: TStringField
      FieldName = 'N_MOTIU'
      Size = 40
    end
    object qryOMC_PROFILAXI: TStringField
      FieldName = 'C_PROFILAXI'
      FixedChar = True
      Size = 2
    end
    object qryOMANULA_SEGUENT: TStringField
      FieldName = 'ANULA_SEGUENT'
      FixedChar = True
      Size = 1
    end
    object qryOMMOTIU_EPF: TStringField
      FieldName = 'MOTIU_EPF'
      Size = 40
    end
    object qryOMN_MEDICAMENT_FG: TStringField
      FieldName = 'N_MEDICAMENT_FG'
      Size = 50
    end
    object qryOMMOTIU_FG_UR: TStringField
      FieldName = 'MOTIU_FG_UR'
      Size = 50
    end
    object qryOMDATA_SUSPENSIO: TDateTimeField
      FieldName = 'DATA_SUSPENSIO'
    end
    object qryOMMETGE_SUSPEN: TStringField
      FieldName = 'METGE_SUSPEN'
    end
    object qryOMDATA_CADUCITAT: TDateTimeField
      FieldName = 'DATA_CADUCITAT'
    end
    object qryOMOM_GENERA: TIntegerField
      FieldName = 'OM_GENERA'
    end
    object qryOMFREQ_GENERA: TStringField
      FieldName = 'FREQ_GENERA'
      Size = 4
    end
    object qryOMOCURRENCIES: TIntegerField
      FieldName = 'OCURRENCIES'
    end
    object qryOMCADUCITAT: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CADUCITAT'
      Calculated = True
    end
    object qryOMCOMENTARI_ALERGIA: TStringField
      FieldName = 'COMENTARI_ALERGIA'
      Size = 50
    end
    object qryOMBMTEST: TStringField
      FieldName = 'BMTEST'
      Size = 1
    end
    object qryOMESGUIA: TStringField
      FieldName = 'ESGUIA'
      Size = 1
    end
    object qryOMNOM_MAJ: TStringField
      FieldName = 'NOM_MAJ'
      Size = 80
    end
    object qryOMC_PRESENTACIO: TStringField
      FieldName = 'C_PRESENTACIO'
      Size = 4
    end
    object qryOMREG3_P1: TStringField
      FieldName = 'REG3_P1'
      Size = 50
    end
    object qryOMREG3_P2: TStringField
      FieldName = 'REG3_P2'
      Size = 50
    end
    object qryOMG_POBLACIONAL: TSmallintField
      FieldName = 'G_POBLACIONAL'
    end
    object qryOMNUM_DOSI: TIntegerField
      FieldName = 'NUM_DOSI'
    end
    object qryOMCRONICA: TStringField
      FieldName = 'CRONICA'
      FixedChar = True
      Size = 1
    end
    object qryOMDNEUROPATIC: TStringField
      FieldName = 'DNEUROPATIC'
      FixedChar = True
      Size = 1
    end
  end
  object qEpiLink: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTract
    SQL.Strings = (
      'select C.C_COMUNICAT, C.C_ORDREMEDICA'
      'from OMCOMUNICATSLINK C'
      'join ORDRESMEDIQUES O on C.C_ORDREMEDICA = O.C_ORDREMEDICA'
      'where O.C_TRACTAMENT = :c_tractament'
      
        'and  (O.C_ESTAT = '#39'V'#39' or F_SoloFecha(O.DATA_SUSPENSIO) >= "TODAY' +
        '" - 3)')
    Left = 34
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qEpi: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTract
    SQL.Strings = (
      'select distinct C.C_COMUNICAT, C.DATA, C.C_METGE, M.METGE, '
      '          C.TIPUS_INFECCIO, T.N_INFECCIO, C.DIAGNOSTIC, '
      '          C.NOSOCOMIAL, FACT_PREDIS_I, FACT_PREDIS_E, '
      '          C.ESTATANTIBIOGRAMA, C.GERMEN1, C.GERMEN2,'
      
        '          G1.N_GERMEN as N_GERMEN1, G2.N_GERMEN as N_GERMEN2, C.' +
        'MULTIRESISTENT1, C.MULTIRESISTENT2'
      'from OMCOMUNICATS C'
      
        'left outer join OMCOMUNICATSLINK L on C.C_COMUNICAT = L.C_COMUNI' +
        'CAT'
      
        'left outer join ORDRESMEDIQUES O on L.C_ORDREMEDICA = O.C_ORDREM' +
        'EDICA'
      'left outer join METGES M on C.C_METGE = M.CODI'
      
        'left outer join TIPUSINFECCIONS T on C.TIPUS_INFECCIO = T.C_INFE' +
        'CCIO'
      'left outer join GERMENS G1 on C.GERMEN1 = G1.C_GERMEN'
      'left outer join GERMENS G2 on C.GERMEN2 = G2.C_GERMEN'
      'where O.C_TRACTAMENT = :c_tractament'
      
        'and (O.C_ESTAT = '#39'V'#39' or F_SoloFecha(O.DATA_SUSPENSIO) >= "TODAY"' +
        ' - 3)'
      ''
      'UNION '
      ''
      'SELECT '
      'distinct C.C_COMUNICAT, C.DATA, C.C_METGE, M.METGE, '
      '          C.TIPUS_INFECCIO, T.N_INFECCIO, C.DIAGNOSTIC, '
      '          C.NOSOCOMIAL, FACT_PREDIS_I, FACT_PREDIS_E, '
      '          C.ESTATANTIBIOGRAMA, C.GERMEN1, C.GERMEN2,'
      
        '          G1.N_GERMEN as N_GERMEN1, G2.N_GERMEN as N_GERMEN2, C.' +
        'MULTIRESISTENT1, C.MULTIRESISTENT2'
      'from OMCOMUNICATS C'
      
        'left outer join OMCOMUNICATSLINK L on C.C_COMUNICAT = L.C_COMUNI' +
        'CAT'
      'left outer join METGES M on C.C_METGE = M.CODI'
      
        'left outer join TIPUSINFECCIONS T on C.TIPUS_INFECCIO = T.C_INFE' +
        'CCIO'
      'left outer join GERMENS G1 on C.GERMEN1 = G1.C_GERMEN'
      'left outer join GERMENS G2 on C.GERMEN2 = G2.C_GERMEN'
      'where (l.c_ordremedica is null)'
      'and (c.c_tractament = :c_tractament)'
      ''
      'order by 2')
    Left = 82
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptUnknown
      end>
  end
  object qFactPredis: TQuery
    DatabaseName = 'Interna'
    DataSource = dsqEpi
    SQL.Strings = (
      'select O.C_COMUNICAT, O.C_FACTOR, F.N_FACTOR, F.TIPUS'
      'from OMFACTPREDIS O'
      'join FACTPREDIS F on O.C_FACTOR = F.C_FACTOR'
      'where O.C_COMUNICAT = :c_comunicat')
    Left = 176
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_COMUNICAT'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsqEpi: TDataSource
    DataSet = qEpi
    Left = 120
    Top = 256
  end
  object qryTractH: TQuery
    DatabaseName = 'Interna'
    Constraints = <
      item
        FromDictionary = False
      end>
    DataSource = dsFili
    SQL.Strings = (
      
        'SELECT T.C_TRACTAMENT, T.DATA_INGRES, T.DATA_ALTA, T.C_PLANTA, T' +
        '.C_LLIT,'
      
        '       T.C_DIAGNOSTICNEUROLOGICINGRES, T.N_DIAGNOSTICNEUROLOGICI' +
        'NGRES,'
      
        '           P.N_PRESTACIO, M1.METGE as COORDINADOR, M2.METGE as I' +
        'NFERMERIA,'
      
        '          (T.N_DIAGNOSTICNEUROLOGICINGRES || '#39'-'#39' || T.C_DIAGNOST' +
        'ICNEUROLOGICINGRES) as DIAGNOSTICPRINCIPAL'
      'from TRACTAMENTS T'
      'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO'
      'join METGES M1 on T.C_COORDINADOR = M1.CODI'
      'left outer join METGES M2 on T.C_INFERMERIA = M2.CODI'
      'where T.C_HISTORIA = :num_hist'
      'and T.C_PRESTACIO in (select DT.C_PRESTACIO '
      '                                         from DRETSPRESTA DT'
      
        '                                         where DT.C_DRET = '#39'P89'#39 +
        ')'
      'order by T.DATA_INGRES desc')
    Left = 274
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUM_HIST'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qryOMH: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTractH
    SQL.Strings = (
      
        'select C_ORDREMEDICA, cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', F_IfLong(O' +
        'M.N_MEDICAMENT_FG, '#39'='#39', '#39#39', P.N_GUIA, OM.N_MEDICAMENT_FG), G.N_G' +
        'TN) as varchar(80)) as N_MEDICAMENT,'
      
        '          Upper(cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', F_IfLong(OM.N_ME' +
        'DICAMENT_FG, '#39'='#39', '#39#39', P.N_GUIA, OM.N_MEDICAMENT_FG), G.N_GTN) as' +
        ' varchar(80))) as NOM_MAJ,'
      '          OM.DOSI, OM.UNITAT_MESURA, OM.C_VIA, OM.C_FREQUENCIA,'
      
        '          OM.DATA_INICI, OM.HORA_INICI, OM.DATA_SUSPENSIO, OM.C_' +
        'ESTAT,'
      
        '          MA.N_MOTIU as MOTIU_ANTIBIOTIC, cast(F_IfLong(OM.FREQ_' +
        'GENERA, '#39'='#39', '#39#39', OM.OBSERVACIONS, OM.FREQ_GENERA || '#39'*. '#39' || OM.' +
        'OBSERVACIONS)  as VarChar(60)) as OBSERVACIONS, '
      '          OM.MOTIU_FG_UR, OM.COMENTARI_ALERGIA,'
      
        '          M1.METGE as METGE_PAUTA,  cast(F_IfLong(M2.METGE, '#39'='#39',' +
        ' '#39#39', '#39'CADUCAT'#39', M2.METGE) as varchar(20)) as METGE_SUSPEN'
      'from ORDRESMEDIQUES OM'
      'left outer join GTN G on OM.GTN = G.GTN'
      'left outer join PACTIUS P on OM.C_MEDICAMENT = P.C_GUIA'
      'left outer join METGES M1 on OM.METGE_PAUTAT = M1.CODI'
      'left outer join METGES M2 on OM.METGE_SUSPENSIO = M2.CODI'
      
        'left outer join MOTIUSANTIBIOTIC MA on OM.MOTIU_ANTIBIOTIC = MA.' +
        'C_MOTIU'
      'where OM.C_TRACTAMENT = :c_tractament'
      'and (OM.C_ESTAT = '#39'S'#39' or OM.C_ESTAT = '#39'C'#39' or OM.C_ESTAT = '#39'K'#39')'
      ''
      'union'
      ''
      
        'select C_ORDREMEDICA, cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', F_IfLong(O' +
        'M.N_MEDICAMENT_FG, '#39'='#39', '#39#39', P.N_GUIA, OM.N_MEDICAMENT_FG), G.N_G' +
        'TN) as varchar(80)) as N_MEDICAMENT,'
      
        '          Upper(cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', F_IfLong(OM.N_ME' +
        'DICAMENT_FG, '#39'='#39', '#39#39', P.N_GUIA, OM.N_MEDICAMENT_FG), G.N_GTN) as' +
        ' varchar(80))) as NOM_MAJ,'
      
        '          OM.DOSI, OM.UNITAT_MESURA, OM.C_VIA, cast(F_IfLong(OM.' +
        'FREQ_GENERA, '#39'='#39', '#39#39', OM.C_FREQUENCIA, OM.FREQ_GENERA) as VarCha' +
        'r(4)) as C_FREQUENCIA,'
      
        '          OM.DATA_INICI, OM.HORA_INICI, OM.DATA_SUSPENSIO, OM.C_' +
        'ESTAT,'
      
        '          MA.N_MOTIU as MOTIU_ANTIBIOTIC, cast(F_IfLong(OM.FREQ_' +
        'GENERA, '#39'='#39', '#39#39', OM.OBSERVACIONS, OM.FREQ_GENERA || '#39'*. '#39' || OM.' +
        'OBSERVACIONS)  as VarChar(60)) as OBSERVACIONS, '
      '          OM.MOTIU_FG_UR, OM.COMENTARI_ALERGIA,'
      
        '          M1.METGE as METGE_PAUTA, cast(M2.METGE as varchar(20))' +
        ' as METGE_SUSPEN'
      'from ORDRESMEDIQUES OM'
      'left outer join GTN G on OM.GTN = G.GTN'
      'left outer join PACTIUS P on OM.C_MEDICAMENT = P.C_GUIA'
      'left outer join METGES M1 on OM.METGE_PAUTAT = M1.CODI'
      'left outer join METGES M2 on OM.METGE_SUSPENSIO = M2.CODI'
      
        'left outer join MOTIUSANTIBIOTIC MA on OM.MOTIU_ANTIBIOTIC = MA.' +
        'C_MOTIU'
      'where OM.C_TRACTAMENT = :c_tractament'
      'and (OM.C_ESTAT = '#39'V'#39' or OM.C_ESTAT = '#39'P'#39' or OM.C_ESTAT = '#39'L'#39')'
      ''
      'order by 7, 8     /* l'#237'nia 34 */')
    Left = 274
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end>
  end
  object dsOMH: TDataSource
    DataSet = qryOMH
    Left = 330
    Top = 208
  end
  object dsTractH: TDataSource
    DataSet = qryTractH
    Left = 330
    Top = 160
  end
  object qryDiagH: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTractH
    SQL.Strings = (
      'select C_DIAGNOSTIC, N_DIAGNOSTIC, N_ICD'
      'from DIAGNOSTICS D'
      'left outer join CODIICD C on D.C_DIAGNOSTIC = C.C_ICD'
      'where D.C_TRACTAMENT = :c_tractament'
      'and D.TIPUS = '#39'I'#39
      'order by D.ORDRE')
    Left = 388
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsDiagH: TDataSource
    DataSet = qryDiagH
    Left = 438
    Top = 160
  end
  object dsEpiTots: TDataSource
    DataSet = EpiTots
    Left = 330
    Top = 256
  end
  object qFPITots: TQuery
    DatabaseName = 'Interna'
    DataSource = dsEpiTots
    SQL.Strings = (
      'select O.C_COMUNICAT, O.C_FACTOR, F.N_FACTOR'
      'from OMFACTPREDIS O'
      'join FACTPREDIS F on O.C_FACTOR = F.C_FACTOR and F.TIPUS = '#39'I'#39
      'where O.C_COMUNICAT = :c_comunicat')
    Left = 388
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_Comunicat'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsFPITots: TDataSource
    DataSet = qFPITots
    Left = 438
    Top = 256
  end
  object dsFPETots: TDataSource
    DataSet = qFPETots
    Left = 550
    Top = 256
  end
  object qFPETots: TQuery
    DatabaseName = 'Interna'
    DataSource = dsEpiTots
    SQL.Strings = (
      'select O.C_COMUNICAT, O.C_FACTOR, F.N_FACTOR'
      'from OMFACTPREDIS O'
      'join FACTPREDIS F on O.C_FACTOR = F.C_FACTOR and F.TIPUS = '#39'E'#39
      'where O.C_COMUNICAT = :c_comunicat')
    Left = 496
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_Comunicat'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsOM: TDataSource
    DataSet = qryOM
    Left = 82
    Top = 208
  end
  object dsOMInf: TDataSource
    DataSet = qryOMInf
    Left = 82
    Top = 304
  end
  object EpiTots: THYSqlBrowse
    AfterEdit = EpiTotsAfterEdit
    AfterScroll = EpiTotsAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsTract
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataOMdics.OMComunicats
    IndiceActivo = 'historia'
    CalcSimple = False
    AlConsultaQueCamposMostrar = EpiTotsAlConsultaQueCamposMostrar
    AlConsultarCampoFiltro2 = EpiTotsAlConsultarCampoFiltro2
    AutoPost = False
    Filtro.Strings = (
      'c_tractament = :c_tractament and estatantibiograma is not null'
      '/* c_historia = c_historia              per als hist'#242'rics  */'
      
        '/* and estatantibiograma is null    per als comunicats sense ant' +
        'ibi'#242'tic*/')
    Left = 274
    Top = 256
    object EpiTots_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'Hist'#242'ria'
      DisplayWidth = 8
      FieldName = 'C_Historia'
      DisplayFormat = '#,##0;; '
    end
    object EpiTots_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
      DisplayFormat = '#,##0;; '
    end
    object EpiTots_C_Comunicat: TIntegerField
      Tag = 100
      DisplayLabel = 'C Comunicat Epidemiol'#242'gic'
      DisplayWidth = 8
      FieldName = 'C_Comunicat'
      DisplayFormat = '#,##0;; '
    end
    object EpiTots_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999;1; '
    end
    object EpiTots_C_Metge: TStringField
      Tag = 100
      DisplayLabel = 'Metge'
      DisplayWidth = 5
      FieldName = 'C_Metge'
      Size = 5
    end
    object EpiTots_Nosocomial: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Nosocomial'
      Size = 1
    end
    object EpiTots_Tipus_Infeccio: TStringField
      Tag = 100
      DisplayLabel = 'Tipus d'#39'infecci'#243
      DisplayWidth = 2
      FieldName = 'Tipus_Infeccio'
      Size = 2
    end
    object EpiTots_Diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'Diagn'#242'stic'
      DisplayWidth = 100
      FieldName = 'Diagnostic'
      Size = 100
    end
    object EpiTots_Fact_Predis_I: TStringField
      Tag = 100
      DisplayLabel = 'Factors predisposants intr'#237'nsecs'
      DisplayWidth = 1
      FieldName = 'Fact_Predis_I'
      Size = 1
    end
    object EpiTots_Fact_Predis_E: TStringField
      Tag = 100
      DisplayLabel = 'Factors predisposants extr'#237'nsecs'
      DisplayWidth = 1
      FieldName = 'Fact_Predis_E'
      Size = 1
    end
    object EpiTots_EstatAntibiograma: TStringField
      Tag = 100
      DisplayLabel = 'Estat Antibiograma'
      DisplayWidth = 15
      FieldName = 'EstatAntibiograma'
      Size = 15
    end
    object EpiTots_Germen1: TStringField
      Tag = 100
      DisplayLabel = 'G'#232'rmen 1'
      DisplayWidth = 2
      FieldName = 'Germen1'
      Size = 2
    end
    object EpiTots_Germen2: TStringField
      Tag = 100
      DisplayLabel = 'G'#232'rmen 2'
      DisplayWidth = 2
      FieldName = 'Germen2'
      Size = 2
    end
    object EpiTots_Multiresistent1: TStringField
      Tag = 100
      DisplayLabel = 'G'#232'rmen 1 multiresistent'
      DisplayWidth = 1
      FieldName = 'Multiresistent1'
      Size = 1
    end
    object EpiTots_Multiresistent2: TStringField
      Tag = 100
      DisplayLabel = 'G'#232'rmen 2 multiresistent'
      DisplayWidth = 1
      FieldName = 'Multiresistent2'
      Size = 1
    end
    object EpiTots_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus Infecci'#243
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipusinfeccio_C_Infeccio'
      LookupKeyFields = 'C_Infeccio'
      KeyFields = 'tipusinfeccio'
      Size = 2
      Calculated = True
    end
    object EpiTots_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Tipus Infeccio'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tipusinfeccio_N_Infeccio'
      LookupKeyFields = 'N_Infeccio'
      KeyFields = 'tipusinfeccio'
      Size = 40
      Calculated = True
    end
    object EpiTots_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Estat Infecci'#243
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tipusinfeccio_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'tipusinfeccio'
      Size = 1
      Calculated = True
    end
    object EpiTots_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'Germen'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'germens1_C_Germen'
      LookupKeyFields = 'C_Germen'
      KeyFields = 'germens1'
      Size = 2
      Calculated = True
    end
    object EpiTots_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Germen'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'germens1_N_Germen'
      LookupKeyFields = 'N_Germen'
      KeyFields = 'germens1'
      Size = 30
      Calculated = True
    end
    object EpiTots_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Estat Germen'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'germens1_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'germens1'
      Size = 1
      Calculated = True
    end
    object EpiTots_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Codi ICD'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'germens1_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'germens1'
      Size = 15
      Calculated = True
    end
    object EpiTots_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'Germen'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'germens2_C_Germen'
      LookupKeyFields = 'C_Germen'
      KeyFields = 'germens2'
      Size = 2
      Calculated = True
    end
    object EpiTots_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripcio Germen'
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'germens2_N_Germen'
      LookupKeyFields = 'N_Germen'
      KeyFields = 'germens2'
      Size = 30
      Calculated = True
    end
    object EpiTots_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Estat Germen'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'germens2_C_Estat'
      LookupKeyFields = 'C_Estat'
      KeyFields = 'germens2'
      Size = 1
      Calculated = True
    end
    object EpiTots_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Codi ICD'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'germens2_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'germens2'
      Size = 15
      Calculated = True
    end
    object EpiTots_C3_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'metge_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'metge'
      Size = 5
      Calculated = True
    end
    object EpiTots_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'metge'
      Calculated = True
    end
    object EpiTots_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'metge_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'metge'
      Size = 15
      Calculated = True
    end
    object EpiTots_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'metge_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'metge'
      Size = 4
      Calculated = True
    end
    object EpiTots_C3_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metge_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'metge'
      Size = 2
      Calculated = True
    end
    object EpiTots_C3_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metge_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'metge'
      Size = 2
      Calculated = True
    end
    object EpiTots_C3_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metge_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'metge'
      Size = 1
      Calculated = True
    end
    object EpiTots_C3_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metge_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'metge'
      Calculated = True
    end
    object EpiTots_C3_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metge_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'metge'
      Size = 1
      Calculated = True
    end
    object EpiTots_C3_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'metge_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'metge'
      Size = 40
      Calculated = True
    end
    object EpiTots_C3_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metge_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'metge'
      Calculated = True
    end
    object EpiTots_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'metge'
      Calculated = True
    end
    object EpiTots_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'metge'
      Calculated = True
    end
    object EpiTots_C3_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'metge_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'metge'
      Size = 6
      Calculated = True
    end
    object EpiTots_C3_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'metge_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'metge'
      Size = 9
      Calculated = True
    end
  end
  object qOMInfH: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTractH
    SQL.Strings = (
      'select O.DATA_INICI, O.COMENTARI, O.DURADA, O.C_ESTAT, '
      '          O.DATA_PAUTAT, M1.METGE as METGE_PAUTAT, '
      
        '          O.DATA_SUSPENSIO, cast(F_IfLong(M2.METGE, '#39'='#39', '#39#39', '#39'CA' +
        'DUCAT'#39', M2.METGE) as varchar(20)) as METGE_SUSPENSIO'
      'from ORDRESINFERMERIA O'
      'left outer join METGES M1 on O.METGE_PAUTAT = M1.CODI'
      'left outer join METGES M2 on O.METGE_SUSPENSIO = M2.CODI'
      'where O.C_TRACTAMENT = :c_tractament'
      'and O.C_ESTAT <> '#39'V'#39
      ''
      'union'
      ''
      'select O.DATA_INICI, O.COMENTARI, O.DURADA, O.C_ESTAT, '
      '          O.DATA_PAUTAT, M1.METGE as METGE_PAUTAT, '
      
        '          O.DATA_SUSPENSIO, cast(M2.METGE as varchar(20)) as MET' +
        'GE_SUSPENSIO'
      'from ORDRESINFERMERIA O'
      'left outer join METGES M1 on O.METGE_PAUTAT = M1.CODI'
      'left outer join METGES M2 on O.METGE_SUSPENSIO = M2.CODI'
      'where O.C_TRACTAMENT = :c_tractament'
      'and O.C_ESTAT = '#39'V'#39
      ''
      'order by 1')
    Left = 274
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptUnknown
      end>
  end
  object dsOMInfH: TDataSource
    DataSet = qOMInfH
    Left = 330
    Top = 304
  end
  object T_DiferenciaPresa_I: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'DifPresa_I'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE HORA_ANTERIOR SMALLINT;'
      'DECLARE VARIABLE FACTOR_SUM FLOAT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '   '
      
        '      IF ((NEW.C_FREQUENCIA = '#39'SI'#39') OR (NEW.C_FREQUENCIA = '#39'DU'#39')' +
        ') THEN NEW.DIFERENCIA_PRESA = NEW.HORA_INICI_T;'
      '   '
      '      ELSE BEGIN'
      ''
      '            SELECT MAX(HORA)'
      '            FROM   HORESFREQ'
      '            WHERE  C_FREQUENCIA = NEW.C_FREQUENCIA'
      '            AND    HORA < NEW.HORA_INICI_T'
      '            INTO  :HORA_ANTERIOR;'
      '        '
      '            /* Si hi ha una hora anterior: */'
      
        '            IF ((HORA_ANTERIOR IS NOT NULL) AND (HORA_ANTERIOR <' +
        '> 0)) THEN NEW.DIFERENCIA_PRESA = NEW.HORA_INICI_T - HORA_ANTERI' +
        'OR;'
      ''
      '            /* Altrament: */'
      '            ELSE BEGIN'
      '                  SELECT MAX(HORA) FROM HORESFREQ'
      '                  WHERE C_FREQUENCIA = NEW.C_FREQUENCIA'
      '                  INTO :HORA_ANTERIOR;'
      '              '
      '                  /* Si l'#39'hora anterior '#233's el dia anterior: */'
      
        '                  IF ((HORA_ANTERIOR IS NOT NULL) AND (HORA_ANTE' +
        'RIOR <> 0)) THEN NEW.DIFERENCIA_PRESA = 24 - HORA_ANTERIOR + NEW' +
        '.HORA_INICI_T;'
      '                  '
      '                  /* Si no hi ha horesFreq */'
      '                  ELSE BEGIN'
      '                        IF (NEW.C_FREQUENCIA = '#39'48'#39') THEN'
      '                        BEGIN'
      
        '                           NEW.DIFERENCIA_PRESA = 24 * F_MODULO(' +
        'NEW.DURADA, 2);'
      
        '                           IF (NEW.DIFERENCIA_PRESA = 0) THEN NE' +
        'W.DIFERENCIA_PRESA = 24 * 2;'
      '                        END;'
      ''
      '                        ELSE IF (NEW.C_FREQUENCIA = '#39'72'#39') THEN'
      '                        BEGIN'
      
        '                           NEW.DIFERENCIA_PRESA = 24 * F_MODULO(' +
        'NEW.DURADA, 3);'
      
        '                           IF (NEW.DIFERENCIA_PRESA = 0) THEN NE' +
        'W.DIFERENCIA_PRESA = 24 * 3;'
      '                        END;'
      '                        '
      '                        ELSE BEGIN'
      
        '                           SELECT FACTORSUM FROM FREQUENCIES WHE' +
        'RE C_FREQUENCIA = NEW.C_FREQUENCIA INTO :FACTOR_SUM;'
      
        '                           IF (FACTOR_SUM < 1) THEN FACTOR_SUM =' +
        ' 1;'
      
        '                           NEW.DIFERENCIA_PRESA = (24 * 1/FACTOR' +
        '_SUM);'
      '                        END;'
      '                  END;'
      '            END;'
      ''
      '      END;'
      '      '
      '   END;'
      'END')
    Dic1 = wDataOMdics.OrdresMediques
    Dic1Name = 'Ordres M'#232'diques'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 216
    Top = 20
  end
  object T_DiferenciaPresa_U: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'DifPresa_U'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE HORA_ANTERIOR SMALLINT;'
      'DECLARE VARIABLE FACTOR_SUM FLOAT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      IF (NEW.HORA_INICI_T <> OLD.HORA_INICI_T) THEN'
      '      BEGIN'
      '      '
      
        '            IF ((NEW.C_FREQUENCIA = '#39'SI'#39') OR (NEW.C_FREQUENCIA =' +
        ' '#39'DU'#39')) THEN NEW.DIFERENCIA_PRESA = NEW.HORA_INICI_T;'
      ''
      '            ELSE BEGIN'
      ''
      '                  SELECT MAX(HORA) FROM HORESFREQ'
      '                  WHERE  C_FREQUENCIA = NEW.C_FREQUENCIA'
      '                  AND    HORA < NEW.HORA_INICI_T'
      '                  INTO  :HORA_ANTERIOR;'
      ''
      '                  /* Si hi ha una hora anterior: */'
      
        '                  IF ((HORA_ANTERIOR IS NOT NULL) AND (HORA_ANTE' +
        'RIOR <> 0)) THEN NEW.DIFERENCIA_PRESA = NEW.HORA_INICI_T - HORA_' +
        'ANTERIOR;'
      ''
      '                  /* Altrament: */'
      '                  ELSE BEGIN'
      '                        SELECT MAX(HORA) FROM HORESFREQ'
      '                        WHERE C_FREQUENCIA = NEW.C_FREQUENCIA'
      '                        INTO :HORA_ANTERIOR;'
      ''
      
        '                        /* Si l'#39'hora anterior '#233's el dia anterior' +
        ': */'
      
        '                        IF ((HORA_ANTERIOR IS NOT NULL) AND (HOR' +
        'A_ANTERIOR <> 0)) THEN NEW.DIFERENCIA_PRESA = 24 - HORA_ANTERIOR' +
        ' + NEW.HORA_INICI_T;'
      ''
      '                        /* Si no hi ha horesFreq */'
      '                        ELSE BEGIN'
      '                              IF (NEW.C_FREQUENCIA = '#39'48'#39') THEN'
      '                              BEGIN'
      
        '                                 NEW.DIFERENCIA_PRESA = 24 * F_M' +
        'ODULO(NEW.DURADA, 2);'
      
        '                                 IF (NEW.DIFERENCIA_PRESA = 0) T' +
        'HEN NEW.DIFERENCIA_PRESA = 24 * 2;'
      '                              END;'
      ''
      
        '                              ELSE IF (NEW.C_FREQUENCIA = '#39'72'#39') ' +
        'THEN'
      '                              BEGIN'
      
        '                                 NEW.DIFERENCIA_PRESA = 24 * F_M' +
        'ODULO(NEW.DURADA, 3);'
      
        '                                 IF (NEW.DIFERENCIA_PRESA = 0) T' +
        'HEN NEW.DIFERENCIA_PRESA = 24 * 3;'
      '                              END;'
      '                              '
      '                              ELSE BEGIN'
      
        '                                 SELECT FACTORSUM FROM FREQUENCI' +
        'ES WHERE C_FREQUENCIA = NEW.C_FREQUENCIA INTO :FACTOR_SUM;'
      
        '                                 IF (FACTOR_SUM < 1) THEN FACTOR' +
        '_SUM = 1;'
      
        '                                 NEW.DIFERENCIA_PRESA = (24 * 1/' +
        'FACTOR_SUM);'
      '                              END;'
      '                        END;'
      '                  END;'
      ''
      '            END;'
      '            '
      '      END;'
      '      '
      
        '      IF (((NEW.C_FREQUENCIA = '#39'48'#39') OR (NEW.C_FREQUENCIA = '#39'72'#39 +
        ')) AND (NEW.DURADA <> OLD.DURADA)) THEN'
      '      BEGIN'
      '            IF (NEW.C_FREQUENCIA = '#39'48'#39') THEN'
      '            BEGIN'
      
        '               NEW.DIFERENCIA_PRESA = 24 * F_MODULO(NEW.DURADA, ' +
        '2);'
      
        '               IF (NEW.DIFERENCIA_PRESA = 0) THEN NEW.DIFERENCIA' +
        '_PRESA = 24 * 2;'
      '            END;'
      ''
      '            ELSE IF (NEW.C_FREQUENCIA = '#39'72'#39') THEN'
      '            BEGIN'
      
        '               NEW.DIFERENCIA_PRESA = 24 * F_MODULO(NEW.DURADA, ' +
        '3);'
      
        '               IF (NEW.DIFERENCIA_PRESA = 0) THEN NEW.DIFERENCIA' +
        '_PRESA = 24 * 3;'
      '            END;'
      '      END;'
      '      '
      '   END;'
      'END')
    Dic1 = wDataOMdics.OrdresMediques
    Dic1Name = 'Ordres M'#232'diques'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Accion1 = taANTES
    Accion2 = taUPDATE
    Left = 328
    Top = 20
  end
  object P_DiferenciaPresa: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DifPresa'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '      DECLARE VARIABLE C_ORDREMEDICA INTEGER;'
      '      DECLARE VARIABLE C_FREQUENCIA VARCHAR(4);'
      '      DECLARE VARIABLE DATA_INICI DATE;'
      '      DECLARE VARIABLE HORA_INICI_T SMALLINT;'
      '      DECLARE VARIABLE DURADA INTEGER;'
      '      DECLARE VARIABLE DIFERENCIA_PRESA SMALLINT;'
      '      DECLARE VARIABLE HORA_ANTERIOR SMALLINT;'
      '      DECLARE VARIABLE FACTOR_SUM FLOAT;'
      'BEGIN'
      ''
      
        '      FOR SELECT C_ORDREMEDICA, C_FREQUENCIA, DATA_INICI, HORA_I' +
        'NICI_T, DURADA'
      '          FROM   ORDRESMEDIQUES'
      
        '          INTO  :C_ORDREMEDICA, :C_FREQUENCIA, :DATA_INICI, :HOR' +
        'A_INICI_T, :DURADA'
      '      DO BEGIN'
      '      '
      
        '            IF ((C_FREQUENCIA = '#39'SI'#39') OR (C_FREQUENCIA = '#39'DU'#39')) ' +
        'THEN DIFERENCIA_PRESA = HORA_INICI_T;'
      ''
      '            ELSE BEGIN'
      ''
      '                  SELECT MAX(HORA) FROM HORESFREQ'
      '                  WHERE  C_FREQUENCIA = :C_FREQUENCIA'
      '                  AND    HORA < :HORA_INICI_T'
      '                  INTO  :HORA_ANTERIOR;'
      ''
      '                  /* Si hi ha una hora anterior: */'
      
        '                  IF ((HORA_ANTERIOR IS NOT NULL) AND (HORA_ANTE' +
        'RIOR <> 0)) THEN DIFERENCIA_PRESA = HORA_INICI_T - HORA_ANTERIOR' +
        ';'
      ''
      '                  /* Altrament: */'
      '                  ELSE BEGIN'
      '                        SELECT MAX(HORA) FROM HORESFREQ'
      '                        WHERE C_FREQUENCIA = :C_FREQUENCIA'
      '                        INTO :HORA_ANTERIOR;'
      ''
      
        '                        /* Si l'#39'hora anterior '#233's el dia anterior' +
        ': */'
      
        '                        IF ((HORA_ANTERIOR IS NOT NULL) AND (HOR' +
        'A_ANTERIOR <> 0)) THEN DIFERENCIA_PRESA = 24 - HORA_ANTERIOR + H' +
        'ORA_INICI_T;'
      ''
      '                        /* Si no hi ha horesFreq */'
      '                        ELSE BEGIN'
      ''
      '                              IF (C_FREQUENCIA = '#39'48'#39') THEN'
      '                              BEGIN'
      
        '                                 DIFERENCIA_PRESA = 24 * F_MODUL' +
        'O(DURADA, 2);'
      
        '                                 IF (DIFERENCIA_PRESA = 0) THEN ' +
        'DIFERENCIA_PRESA = 24 * 2;'
      '                              END;'
      ''
      '                              ELSE IF (C_FREQUENCIA = '#39'72'#39') THEN'
      '                              BEGIN'
      
        '                                 DIFERENCIA_PRESA = 24 * F_MODUL' +
        'O(DURADA, 3);'
      
        '                                 IF (DIFERENCIA_PRESA = 0) THEN ' +
        'DIFERENCIA_PRESA = 24 * 3;'
      '                              END;'
      ''
      '                              ELSE BEGIN'
      
        '                                 SELECT FACTORSUM FROM FREQUENCI' +
        'ES WHERE C_FREQUENCIA = :C_FREQUENCIA INTO :FACTOR_SUM;'
      
        '                                 IF (FACTOR_SUM < 1) THEN FACTOR' +
        '_SUM = 1;'
      
        '                                 DIFERENCIA_PRESA = (24 * 1/FACT' +
        'OR_SUM);'
      '                              END;'
      '                        '
      '                        END'
      '                  END;'
      ''
      '            END;'
      ''
      
        '            UPDATE ORDRESMEDIQUES SET DIFERENCIA_PRESA = :DIFERE' +
        'NCIA_PRESA WHERE C_ORDREMEDICA = :C_ORDREMEDICA;'
      ''
      '      END;'
      'END')
    Dic1 = wDataOMdics.OrdresMediques
    Dic1Name = 'Ordres mediques'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 264
    Top = 72
  end
  object qAntibiotics: TQuery
    DatabaseName = 'Interna'
    DataSource = dsEpiTots
    SQL.Strings = (
      
        'select cast(F_IfLong(G.N_GTN, '#39'is'#39', '#39'Null'#39', O.N_MEDICAMENT_FG, G' +
        '.N_GTN) as varchar(50)) as N_MEDICAMENT, O.DATA_INICI, O.DATA_SU' +
        'SPENSIO'
      'from OMCOMUNICATSLINK C'
      'join ORDRESMEDIQUES O on C.C_ORDREMEDICA = O.C_ORDREMEDICA'
      'left outer join GTN G on O.GTN = G.GTN'
      'where C.C_COMUNICAT = :c_comunicat'
      'order by O.DATA_INICI, O.DATA_SUSPENSIO')
    Left = 608
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_Comunicat'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsAntibiotics: TDataSource
    DataSet = qAntibiotics
    Left = 670
    Top = 256
  end
  object T_DPI_tmp: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'DifPresa_I'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE HORA_ANTERIOR SMALLINT;'
      'DECLARE VARIABLE FACTOR_SUM FLOAT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '   '
      
        '      IF ((NEW.C_FREQUENCIA = '#39'SI'#39') OR (NEW.C_FREQUENCIA = '#39'DU'#39')' +
        ') THEN NEW.DIFERENCIA_PRESA = NEW.HORA_INICI_T;'
      '   '
      '      ELSE BEGIN'
      ''
      '            SELECT MAX(HORA)'
      '            FROM   HORESFREQ'
      '            WHERE  C_FREQUENCIA = NEW.C_FREQUENCIA'
      '            AND    HORA < NEW.HORA_INICI_T'
      '            INTO  :HORA_ANTERIOR;'
      '        '
      '            /* Si hi ha una hora anterior: */'
      
        '            IF ((HORA_ANTERIOR IS NOT NULL) AND (HORA_ANTERIOR <' +
        '> 0)) THEN NEW.DIFERENCIA_PRESA = NEW.HORA_INICI_T - HORA_ANTERI' +
        'OR;'
      ''
      '            /* Altrament: */'
      '            ELSE BEGIN'
      '                  SELECT MAX(HORA) FROM HORESFREQ'
      '                  WHERE C_FREQUENCIA = NEW.C_FREQUENCIA'
      '                  INTO :HORA_ANTERIOR;'
      '              '
      '                  /* Si l'#39'hora anterior '#233's el dia anterior: */'
      
        '                  IF ((HORA_ANTERIOR IS NOT NULL) AND (HORA_ANTE' +
        'RIOR <> 0)) THEN NEW.DIFERENCIA_PRESA = 24 - HORA_ANTERIOR + NEW' +
        '.HORA_INICI_T;'
      '                  '
      '                  /* Si no hi ha horesFreq */'
      '                  ELSE BEGIN'
      '                        IF (NEW.C_FREQUENCIA = '#39'48'#39') THEN'
      '                        BEGIN'
      
        '                           NEW.DIFERENCIA_PRESA = 24 * F_MODULO(' +
        'NEW.DURADA, 2);'
      
        '                           IF (NEW.DIFERENCIA_PRESA = 0) THEN NE' +
        'W.DIFERENCIA_PRESA = 24 * 2;'
      '                        END;'
      ''
      '                        ELSE IF (NEW.C_FREQUENCIA = '#39'72'#39') THEN'
      '                        BEGIN'
      
        '                           NEW.DIFERENCIA_PRESA = 24 * F_MODULO(' +
        'NEW.DURADA, 3);'
      
        '                           IF (NEW.DIFERENCIA_PRESA = 0) THEN NE' +
        'W.DIFERENCIA_PRESA = 24 * 3;'
      '                        END;'
      '                        '
      '                        ELSE BEGIN'
      
        '                           SELECT FACTORSUM FROM FREQUENCIES WHE' +
        'RE C_FREQUENCIA = NEW.C_FREQUENCIA INTO :FACTOR_SUM;'
      
        '                           IF (FACTOR_SUM < 1) THEN FACTOR_SUM =' +
        ' 1;'
      
        '                           NEW.DIFERENCIA_PRESA = (24 * 1/FACTOR' +
        '_SUM);'
      '                        END;'
      '                  END;'
      '            END;'
      ''
      '      END;'
      '      '
      '   END;'
      'END')
    Dic1 = wDataOMdics.OM_Tmp
    Dic1Name = 'OM Tmp'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 424
    Top = 20
  end
  object T_DPU_tmp: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'DifPresa_U'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE HORA_ANTERIOR SMALLINT;'
      'DECLARE VARIABLE FACTOR_SUM FLOAT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      IF (NEW.HORA_INICI_T <> OLD.HORA_INICI_T) THEN'
      '      BEGIN'
      '      '
      
        '            IF ((NEW.C_FREQUENCIA = '#39'SI'#39') OR (NEW.C_FREQUENCIA =' +
        ' '#39'DU'#39')) THEN NEW.DIFERENCIA_PRESA = NEW.HORA_INICI_T;'
      ''
      '            ELSE BEGIN'
      ''
      '                  SELECT MAX(HORA) FROM HORESFREQ'
      '                  WHERE  C_FREQUENCIA = NEW.C_FREQUENCIA'
      '                  AND    HORA < NEW.HORA_INICI_T'
      '                  INTO  :HORA_ANTERIOR;'
      ''
      '                  /* Si hi ha una hora anterior: */'
      
        '                  IF ((HORA_ANTERIOR IS NOT NULL) AND (HORA_ANTE' +
        'RIOR <> 0)) THEN NEW.DIFERENCIA_PRESA = NEW.HORA_INICI_T - HORA_' +
        'ANTERIOR;'
      ''
      '                  /* Altrament: */'
      '                  ELSE BEGIN'
      '                        SELECT MAX(HORA) FROM HORESFREQ'
      '                        WHERE C_FREQUENCIA = NEW.C_FREQUENCIA'
      '                        INTO :HORA_ANTERIOR;'
      ''
      
        '                        /* Si l'#39'hora anterior '#233's el dia anterior' +
        ': */'
      
        '                        IF ((HORA_ANTERIOR IS NOT NULL) AND (HOR' +
        'A_ANTERIOR <> 0)) THEN NEW.DIFERENCIA_PRESA = 24 - HORA_ANTERIOR' +
        ' + NEW.HORA_INICI_T;'
      ''
      '                        /* Si no hi ha horesFreq */'
      '                        ELSE BEGIN'
      '                              IF (NEW.C_FREQUENCIA = '#39'48'#39') THEN'
      '                              BEGIN'
      
        '                                 NEW.DIFERENCIA_PRESA = 24 * F_M' +
        'ODULO(NEW.DURADA, 2);'
      
        '                                 IF (NEW.DIFERENCIA_PRESA = 0) T' +
        'HEN NEW.DIFERENCIA_PRESA = 24 * 2;'
      '                              END;'
      ''
      
        '                              ELSE IF (NEW.C_FREQUENCIA = '#39'72'#39') ' +
        'THEN'
      '                              BEGIN'
      
        '                                 NEW.DIFERENCIA_PRESA = 24 * F_M' +
        'ODULO(NEW.DURADA, 3);'
      
        '                                 IF (NEW.DIFERENCIA_PRESA = 0) T' +
        'HEN NEW.DIFERENCIA_PRESA = 24 * 3;'
      '                              END;'
      '                              '
      '                              ELSE BEGIN'
      
        '                                 SELECT FACTORSUM FROM FREQUENCI' +
        'ES WHERE C_FREQUENCIA = NEW.C_FREQUENCIA INTO :FACTOR_SUM;'
      
        '                                 IF (FACTOR_SUM < 1) THEN FACTOR' +
        '_SUM = 1;'
      
        '                                 NEW.DIFERENCIA_PRESA = (24 * 1/' +
        'FACTOR_SUM);'
      '                              END;'
      '                        END;'
      '                  END;'
      ''
      '            END;'
      '            '
      '      END;'
      '      '
      
        '      IF (((NEW.C_FREQUENCIA = '#39'48'#39') OR (NEW.C_FREQUENCIA = '#39'72'#39 +
        ')) AND (NEW.DURADA <> OLD.DURADA)) THEN'
      '      BEGIN'
      '            IF (NEW.C_FREQUENCIA = '#39'48'#39') THEN'
      '            BEGIN'
      
        '               NEW.DIFERENCIA_PRESA = 24 * F_MODULO(NEW.DURADA, ' +
        '2);'
      
        '               IF (NEW.DIFERENCIA_PRESA = 0) THEN NEW.DIFERENCIA' +
        '_PRESA = 24 * 2;'
      '            END;'
      ''
      '            ELSE IF (NEW.C_FREQUENCIA = '#39'72'#39') THEN'
      '            BEGIN'
      
        '               NEW.DIFERENCIA_PRESA = 24 * F_MODULO(NEW.DURADA, ' +
        '3);'
      
        '               IF (NEW.DIFERENCIA_PRESA = 0) THEN NEW.DIFERENCIA' +
        '_PRESA = 24 * 3;'
      '            END;'
      '      END;'
      '      '
      '   END;'
      'END')
    Dic1 = wDataOMdics.OM_Tmp
    Dic1Name = 'OM Tmp'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Accion1 = taANTES
    Accion2 = taUPDATE
    Left = 488
    Top = 20
  end
  object P_DP_tmp: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DifPresa'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '      DECLARE VARIABLE C_ORDREMEDICA INTEGER;'
      '      DECLARE VARIABLE C_FREQUENCIA VARCHAR(4);'
      '      DECLARE VARIABLE DATA_INICI DATE;'
      '      DECLARE VARIABLE HORA_INICI_T SMALLINT;'
      '      DECLARE VARIABLE DURADA INTEGER;'
      '      DECLARE VARIABLE DIFERENCIA_PRESA SMALLINT;'
      '      DECLARE VARIABLE HORA_ANTERIOR SMALLINT;'
      '      DECLARE VARIABLE FACTOR_SUM FLOAT;'
      'BEGIN'
      ''
      
        '      FOR SELECT C_ORDREMEDICA, C_FREQUENCIA, DATA_INICI, HORA_I' +
        'NICI_T, DURADA'
      '          FROM   OM_TMP'
      
        '          INTO  :C_ORDREMEDICA, :C_FREQUENCIA, :DATA_INICI, :HOR' +
        'A_INICI_T, :DURADA'
      '      DO BEGIN'
      '      '
      
        '            IF ((C_FREQUENCIA = '#39'SI'#39') OR (C_FREQUENCIA = '#39'DU'#39')) ' +
        'THEN DIFERENCIA_PRESA = HORA_INICI_T;'
      ''
      '            ELSE BEGIN'
      ''
      '                  SELECT MAX(HORA) FROM HORESFREQ'
      '                  WHERE  C_FREQUENCIA = :C_FREQUENCIA'
      '                  AND    HORA < :HORA_INICI_T'
      '                  INTO  :HORA_ANTERIOR;'
      ''
      '                  /* Si hi ha una hora anterior: */'
      
        '                  IF ((HORA_ANTERIOR IS NOT NULL) AND (HORA_ANTE' +
        'RIOR <> 0)) THEN DIFERENCIA_PRESA = HORA_INICI_T - HORA_ANTERIOR' +
        ';'
      ''
      '                  /* Altrament: */'
      '                  ELSE BEGIN'
      '                        SELECT MAX(HORA) FROM HORESFREQ'
      '                        WHERE C_FREQUENCIA = :C_FREQUENCIA'
      '                        INTO :HORA_ANTERIOR;'
      ''
      
        '                        /* Si l'#39'hora anterior '#233's el dia anterior' +
        ': */'
      
        '                        IF ((HORA_ANTERIOR IS NOT NULL) AND (HOR' +
        'A_ANTERIOR <> 0)) THEN DIFERENCIA_PRESA = 24 - HORA_ANTERIOR + H' +
        'ORA_INICI_T;'
      ''
      '                        /* Si no hi ha horesFreq */'
      '                        ELSE BEGIN'
      ''
      '                              IF (C_FREQUENCIA = '#39'48'#39') THEN'
      '                              BEGIN'
      
        '                                 DIFERENCIA_PRESA = 24 * F_MODUL' +
        'O(DURADA, 2);'
      
        '                                 IF (DIFERENCIA_PRESA = 0) THEN ' +
        'DIFERENCIA_PRESA = 24 * 2;'
      '                              END;'
      ''
      '                              ELSE IF (C_FREQUENCIA = '#39'72'#39') THEN'
      '                              BEGIN'
      
        '                                 DIFERENCIA_PRESA = 24 * F_MODUL' +
        'O(DURADA, 3);'
      
        '                                 IF (DIFERENCIA_PRESA = 0) THEN ' +
        'DIFERENCIA_PRESA = 24 * 3;'
      '                              END;'
      ''
      '                              ELSE BEGIN'
      
        '                                 SELECT FACTORSUM FROM FREQUENCI' +
        'ES WHERE C_FREQUENCIA = :C_FREQUENCIA INTO :FACTOR_SUM;'
      
        '                                 IF (FACTOR_SUM < 1) THEN FACTOR' +
        '_SUM = 1;'
      
        '                                 DIFERENCIA_PRESA = (24 * 1/FACT' +
        'OR_SUM);'
      '                              END;'
      '                        '
      '                        END'
      '                  END;'
      ''
      '            END;'
      ''
      
        '            UPDATE OM_TMP SET DIFERENCIA_PRESA = :DIFERENCIA_PRE' +
        'SA WHERE C_ORDREMEDICA = :C_ORDREMEDICA;'
      ''
      '      END;'
      'END')
    Dic1 = wDataOMdics.OM_Tmp
    Dic1Name = 'OM Tmp'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 464
    Top = 72
  end
  object mbIcones: TImageList
    Height = 32
    Width = 32
    Left = 640
    Top = 144
    Bitmap = {
      494C010104000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      8400000084000000840000008400000084000000840000008400000084008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C6000000
      0000848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000840000008400000084000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      8400000084000000840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6
      C600000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000084000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000008400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008400000084000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000084000000840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840000000000FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00C6C6C6000000000000000000C6C6C60000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840000000000FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000008400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484000000
      00000000000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6
      C600000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484000000
      00000000000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000084008484
      8400848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000084848400000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000000000000000000084848400848484008484840084848400848484000000
      000000000000000000000000000000000000000000000084840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000084848400000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000000000000000000084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000084008484
      8400848484008484840084848400000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000008484840084848400848484008484
      840000000000000000000000000000000000000000000084840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00C6C6C6000000000000000000C6C6C60000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C6000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000084000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF000000
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000084848400848484008484
      84008484840000000000000000000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000084848400848484008484
      84008484840000000000000000000000000000000000000084000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      FF00000084008484840084848400000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000848484008484
      84008484840084848400000000000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C600000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000848484008484
      84008484840084848400000000000000000000000000000084000000FF000000
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      FF00000084008484840084848400848484000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484008484840084848400000000000000000000000000000000000084
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00C6C6C60000000000C6C6C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FF000000FF000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      84008484840084848400848484000000000000000000000084000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      FF0000008400848484008484840084848400000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484008484840084848400000000000000000000000000000000000084
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000848400000000000084840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C60000000000848484008484
      840000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000084848400848484008484840000000000000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000840084848400848484000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000008484840084848400848484000000000000000000000000000000
      00000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000084848400848484000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000000000848484008484840084848400000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000840084848400848484000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008484840084848400848484000000000000000000000000000000
      00000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00C6C6C600000000000000000000000000C6C6C60000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00C6C6C6000000000084848400848484000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FF000000FF000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000848484008484840084848400000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000008400848484008484840084848400C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000084848400848484000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00008484000000000000000000000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000008484840084848400000000000000
      00000000000000000000000000000000000084848400C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000008484840084848400000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000008400848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400848484000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00C6C6C600000000008484840084848400000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000008400848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400848484000000000000000000000000000000
      000000000000000000000084840000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000848484008484840000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000008400848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400848484000000000000000000000000000000
      000000000000000000000084840000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00C6C6C60000000000848484008484840000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000008400848484000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400848484000000000000000000000000000000
      00000000000000000000000000000084840000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000000000084848400848484000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000008400848484000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400000000000000000000000000000000000000
      00000000000000000000000000000084840000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C6000000000084848400848484000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FF00
      0000FF000000C6C6C600FFFFFF00FF000000FF000000FF000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000848484000000000000000000000084000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      FF000000840084848400848484000000000084848400C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF0000FFFF0000FF
      FF00C6C6C600000000000000000000000000C6C6C60000FFFF0000FFFF0000FF
      FF00000000008484840084848400000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FF000000FFFFFF00C6C6C600FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C60000000000848484000000000000000000000084000000FF000000
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      FF00000084008484840000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6
      C600000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000084848400000000000000000000000000000084000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      FF00000084000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FF000000FF000000FF000000FF000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000084000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF000000
      840084848400000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C6000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FF00
      0000C6C6C600FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000084008484
      8400000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FF000000FF000000FF000000FF000000FF000000FF000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FF000000FF000000FF000000FF000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C600000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008400000084000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000FFFF0000FFFF0000FFFF0000FFFF00C6C6C60000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484008484840084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000FFFF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484008484840084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFE7FFF8000003FFFFE7FFFFF807FF
      FFFFC7FFF0000001FFFFC7FFFFC000FFFFFF87FFC0000000FFFF87FFFF80007F
      FFFF07FF80000000FFFF07FFFE00001FFFFE07FF00000000FFFE07FFFC00000F
      FFF807FF00000000FFF807FFF8000007FFC000FF00000001FFC000FFF0000007
      FF00003F00000001FF00003FE0000003FE00001F80000003FE00001FE0000001
      FC00000F80000003FC00000FC0000001F8000007C0000007F800000780000001
      F0000003C0000007F000000380000000E0000001E000000FE000000180000000
      C0000001E000000FC00000010000000080000000F000001F8000000000000000
      80000000F000001F800000000000000000000000F800003F0000000000000000
      00000000F800003F000000000000000000000000FC00007F0000000000000000
      00000000FC00007F000000000000000100000000FE0000FF0000000000000001
      00000001FE0000FF000000018000000100000001FF0001FF0000000180000003
      80000003FF0001FF800000038000000780000007FF8003FF80000007C0000007
      C000000FFF8003FFC000000FE000000FE000001FFFC007FFE000001FE000001F
      F000003FFFC007FFF000003FF000003FF800007FFFE00FFFF800007FF800007F
      FC0000FFFFE01FFFFC0000FFFE0001FFFF0003FFFFF07FFFFF0003FFFF0003FF
      FFE01FFFFFF8FFFFFFE01FFFFFE01FFF00000000000000000000000000000000
      000000000000}
  end
  object P_Hores: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'hores'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_FREQUENCIA VARCHAR(4),'
      '         N_FREQUENCIA VARCHAR(30),'
      '         C_ESTAT CHAR(1),'
      '         DEMANAHORA VARCHAR(1),'
      '         DIESPRESA INTEGER,'
      '         DURACIOMAX NUMERIC(15, 3),'
      '         CONTROLFREQ NUMERIC(15, 3),'
      '         HORESFREQ NUMERIC(15, 3),'
      '         FACTORSUM NUMERIC(15,3),'
      '         PREGUNTAFARMA VARCHAR(1),'
      '         DIASETMANA NUMERIC(15, 3),'
      '         HORES VARCHAR(30),'
      '         ESGENERADORA VARCHAR(1))'
      'AS'
      'DECLARE VARIABLE HORA INTEGER;'
      'BEGIN'
      ''
      
        '      FOR SELECT C_FREQUENCIA, N_FREQUENCIA, C_ESTAT, DEMANAHORA' +
        ', DIESPRESA, DURACIOMAX,'
      
        '                 CONTROLFREQ, HORESFREQ, FACTORSUM, PREGUNTAFARM' +
        'A, DIASETMANA, ESGENERADORA'
      '          FROM   FREQUENCIES'
      
        '          INTO  :C_FREQUENCIA, :N_FREQUENCIA, :C_ESTAT, :DEMANAH' +
        'ORA, :DIESPRESA, :DURACIOMAX,'
      
        '                :CONTROLFREQ, :HORESFREQ, :FACTORSUM, :PREGUNTAF' +
        'ARMA, :DIASETMANA, :ESGENERADORA'
      '      DO BEGIN'
      '          '
      '            HORES = '#39#39';'
      '          '
      '            FOR SELECT HORA'
      '                FROM   HORESFREQ'
      '                WHERE  C_FREQUENCIA = :C_FREQUENCIA'
      '                ORDER  BY HORA'
      '            INTO :HORA'
      '            DO BEGIN'
      '                  IF (HORA <> 0) THEN HORES = HORES||'#39'  '#39'||HORA;'
      '            END;'
      '      '
      '            HORES = F_LTrim(HORES);'
      '            SUSPEND;'
      '      END;'
      'END'
      ''
      ''
      ''
      '')
    Dic1 = wDataOMComun.Frequencies
    Dic1Name = 'frequencies'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 576
    Top = 20
  end
  object T_ActivaSeguent: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'ActivaSeguent'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_ORDREMEDICA INTEGER;'
      'DECLARE VARIABLE DATA_ALTA DATE;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /* Si '#233's una prescripci'#243' generada que caduca... */'
      
        '      IF ((NEW.OM_GENERA IS NOT NULL) AND (OLD.C_ESTAT = "V") AN' +
        'D (NEW.C_ESTAT = "C")) THEN'
      '      BEGIN'
      '      '
      '          SELECT DATA_ALTA'
      '          FROM   TRACTAMENTS'
      '          WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '          INTO  :DATA_ALTA;'
      ''
      '          /* ... i no caduca per alta */'
      
        '          IF ((DATA_ALTA IS NULL) OR (NEW.DATA_SUSPENSIO <> DATA' +
        '_ALTA || '#39' 23:55:00'#39')) THEN'
      '          BEGIN'
      '          '
      '                /* busquem la seg'#252'ent ocurr'#232'ncia */'
      '                SELECT C_ORDREMEDICA'
      '                FROM   ORDRESMEDIQUES'
      '                WHERE  OM_GENERA = NEW.OM_GENERA'
      '                AND    C_ESTAT = "v"'
      '                ORDER  BY DATA_INICI'
      '                ROWS   1'
      '                INTO  :C_ORDREMEDICA;'
      '          '
      '                /* i l'#39'activem */'
      
        '                UPDATE ORDRESMEDIQUES SET C_ESTAT = "V" WHERE C_' +
        'ORDREMEDICA = :C_ORDREMEDICA;'
      '          END;'
      '          '
      '      END;'
      '   END;'
      'END')
    Dic1 = wDataOMdics.OrdresMediques
    Dic1Name = 'OrdresMediques'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 672
    Top = 20
  end
  object cOMForaFreq: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select distinct O.C_ORDREMEDICA, O.C_TRACTAMENT, O.C_HISTORIA, '
      
        '          O.GTN, cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', O.N_MEDICAMENT_' +
        'FG, G.N_GTN) as VarChar(80)) as MEDICACIO,'
      
        '          O.DOSI, O.UNITAT_MESURA, O.DATA_INICI, O.C_FREQUENCIA,' +
        ' '
      '          O.HORA_INICI, O.ANULA_SEGUENT, O.HORA_PROPERA,'
      '          M.METGE as METGE_PAUTAT, O.DATA_PAUTAT, '
      '          O.DATA_ASSIGNACIO, O.DURADA, O.C_ESTAT'
      'from ORDRESMEDIQUES O'
      'left outer join GTN G on O.GTN = G.GTN'
      'left outer join METGES M on O.METGE_PAUTAT = M.CODI'
      'join HORESFREQ H on O.C_FREQUENCIA = H.C_FREQUENCIA'
      'where O.HORA_INICI_T <> O.HORA_INICI'
      'and O.DATA_CADUCITAT > O.DATA_INICI + O.HORA_INICI/24'
      'and O.DATA_PAUTAT >= "TODAY"-1')
    Dicionario1 = wDataOMdics.OrdresMediques
    Titulo = 'Pautes amb presa inicial fora de freq'#252#232'ncia'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    CamposOculta.Strings = (
      'C_ORDREMEDICA'
      'C_TRACTAMENT')
    AlSeleccionar = cOMForaFreqAlSeleccionar
    Left = 576
    Top = 72
  end
  object qVigent: TQuery
    AfterOpen = qVigentAfterOpen
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT * '
      'FROM FT_contingencia'
      'WHERE C_TRACTAMENT = :C_TRACTAMENT'
      'ORDER BY ID')
    Left = 744
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
      end>
    object qVigentID: TIntegerField
      FieldName = 'ID'
      Origin = 'INTERNA.FT_CONTINGENCIA.ID'
    end
    object qVigentC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
      Origin = 'INTERNA.FT_CONTINGENCIA.C_HISTORIA'
    end
    object qVigentC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
      Origin = 'INTERNA.FT_CONTINGENCIA.C_TRACTAMENT'
    end
    object qVigentMEDICAMENT: TStringField
      FieldName = 'MEDICAMENT'
      Origin = 'INTERNA.FT_CONTINGENCIA.MEDICAMENT'
      Size = 255
    end
    object qVigentDOSI: TFloatField
      FieldName = 'DOSI'
      Origin = 'INTERNA.FT_CONTINGENCIA.DOSI'
      DisplayFormat = '0.###'
    end
    object qVigentC_UM: TStringField
      FieldName = 'C_UM'
      Origin = 'INTERNA.FT_CONTINGENCIA.C_UM'
      Size = 15
    end
    object qVigentN_VIA: TStringField
      FieldName = 'N_VIA'
      Origin = 'INTERNA.FT_CONTINGENCIA.N_VIA'
    end
    object qVigentN_FREQ: TStringField
      FieldName = 'N_FREQ'
      Origin = 'INTERNA.FT_CONTINGENCIA.N_FREQ'
      Size = 60
    end
    object qVigentDATA_CONSULTA: TDateTimeField
      FieldName = 'DATA_CONSULTA'
      Origin = 'INTERNA.FT_CONTINGENCIA.DATA_CONSULTA'
    end
    object qVigentOBSERVACIONS: TStringField
      FieldName = 'OBSERVACIONS'
      Origin = 'INTERNA.FT_CONTINGENCIA.OBSERVACIONS'
      Size = 255
    end
  end
  object dsVigent: TDataSource
    DataSet = qVigent
    Left = 800
    Top = 144
  end
end
