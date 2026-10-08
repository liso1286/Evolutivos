object wDataPerfilsNRQ: TwDataPerfilsNRQ
  OldCreateOrder = False
  Left = 437
  Top = 249
  Height = 451
  Width = 717
  object cPrealtesPend: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select distinct t.c_historia, f.nomcomplet, p.resum as c_prestac' +
        'io, t.data_ingres, t.data_prealta, t.data_alta, t.c_centrefac'
      'from tractaments t'
      'left join filiacio f on t.c_historia=f.num_hist'
      
        'join prestacion p on t.c_prestacio = p.c_prestacio /*join dretsm' +
        'otiu d on t.c_motiu=d.c_motiu and d.c_dret='#39'X1'#39'*/'
      'left join HCE_PREALTES H on t.c_tractament=h.c_tractament'
      
        'where ( (T.C_PRESTACIO = "1004" and T.C_PLANTA IN("UH-5","UH-4")' +
        ' AND H.C_TRACTAMENT IS NOT NULL) '
      
        '        OR ((T.C_PRESTACIO="1004" AND T.C_PLANTA<>"UH-5" AND T.C' +
        '_PLANTA<>"UH-4") OR (T.C_PRESTACIO ="2014" AND T.VEGADA<>1) and ' +
        'T.DATA_INGRES <= "TODAY" - 7)                                   ' +
        '     '
      
        '        OR (T.C_PRESTACIO = "2214") OR (T.C_PRESTACIO="2014" AND' +
        ' T.VEGADA=1))'
      'and (t.data_alta is null or t.data_alta >="TODAY") '
      
        'and t.data_prealta is null              /*and not (t.c_centrefac' +
        ' in ("00","50"))*/'
      'and t.c_proces is not null '
      
        'and t.c_coordinador = "P04"                             /* linia' +
        ' 11  */'
      'order by t.data_ingres')
    Dicionario1 = wDataBasics.Tract_Resum
    Titulo = 'Tractaments sense data de prealta informada - perfils NR'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    VerSimple = True
    AlSeleccionar = cPrealtesPendAlSeleccionar
    EnActivar = consultaEnActivar
    EnDesactivar = consultaEnDesactivar
    AlTancar = consultaAllTancar
    Left = 32
    Top = 24
  end
  object qMotius: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT N_CODI,C_CODI'
      'FROM CODICAMPS'
      'WHERE TIPUSCODI = '#39'PREALTA.MOTIU'#39
      'AND ORDRE > 0'
      'ORDER BY ORDRE')
    Left = 107
    Top = 25
  end
  object qProcesNR: TQuery
    OnCalcFields = qProcesNRCalcFields
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select P.*, C.N_CODI as MOTIU'
      'from PROCESNR P'
      
        'join CODICAMPS C on P.C_MOTIU = C.C_CODI and C.TIPUSCODI = '#39'MOTI' +
        'U'#39
      'where C_PROCES = :c_proces')
    Left = 107
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_proces'
        ParamType = ptInput
      end>
    object qProcesNRC_PROCES: TIntegerField
      FieldName = 'C_PROCES'
      Origin = 'INTERNA.PROCESNR.C_PROCES'
    end
    object qProcesNRC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
      Origin = 'INTERNA.PROCESNR.C_HISTORIA'
    end
    object qProcesNRDATA_INICI: TDateTimeField
      FieldName = 'DATA_INICI'
      Origin = 'INTERNA.PROCESNR.DATA_INICI'
    end
    object qProcesNRC_MOTIU: TSmallintField
      FieldName = 'C_MOTIU'
    end
    object qProcesNRDATA_FI: TDateField
      FieldKind = fkCalculated
      FieldName = 'DATA_FI'
      Calculated = True
    end
    object qProcesNRMOTIU: TStringField
      FieldName = 'MOTIU'
      Origin = 'INTERNA.CODICAMPS.N_CODI'
      Size = 40
    end
  end
  object qPautaNR: TQuery
    DatabaseName = 'Interna'
    DataSource = dsProcesNR
    SQL.Strings = (
      'select * '
      'from PROCESNR_PAUTES'
      'where C_PROCES = :c_proces'
      'and ESTAT = "V"')
    Left = 172
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_PROCES'
        ParamType = ptInput
        Size = 4
      end>
    object qPautaNRID: TIntegerField
      FieldName = 'ID'
      Origin = 'INTERNA.PROCESNR_PAUTES.ID'
    end
    object qPautaNRC_PROCES: TIntegerField
      FieldName = 'C_PROCES'
      Origin = 'INTERNA.PROCESNR_PAUTES.C_PROCES'
    end
    object qPautaNRC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
      Origin = 'INTERNA.PROCESNR_PAUTES.C_TRACTAMENT'
    end
    object qPautaNRDATA_INICI: TDateTimeField
      FieldName = 'DATA_INICI'
      Origin = 'INTERNA.PROCESNR_PAUTES.DATA_INICI'
    end
    object qPautaNRDATA_PREALTA: TDateTimeField
      FieldName = 'DATA_PREALTA'
      Origin = 'INTERNA.PROCESNR_PAUTES.DATA_PREALTA'
    end
    object qPautaNRDIES_EXTRA: TIntegerField
      FieldName = 'DIES_EXTRA'
      Origin = 'INTERNA.PROCESNR_PAUTES.DIES_EXTRA'
    end
    object qPautaNRSETMANES_5D: TSmallintField
      FieldName = 'SETMANES_5D'
      Origin = 'INTERNA.PROCESNR_PAUTES.SETMANES_5D'
    end
    object qPautaNRSETMANES_3D: TSmallintField
      FieldName = 'SETMANES_3D'
      Origin = 'INTERNA.PROCESNR_PAUTES.SETMANES_3D'
    end
    object qPautaNRSETMANES_2D: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'SETMANES_2D'
      Calculated = True
    end
    object qPautaNRC_MOTIU: TSmallintField
      FieldName = 'C_MOTIU'
      Origin = 'INTERNA.PROCESNR_PAUTES.C_MOTIU'
    end
    object qPautaNRCOMENTARI: TStringField
      FieldName = 'COMENTARI'
      Origin = 'INTERNA.PROCESNR_PAUTES.COMENTARI'
      Size = 255
    end
    object qPautaNRESTAT: TStringField
      FieldName = 'ESTAT'
      Origin = 'INTERNA.PROCESNR_PAUTES.ESTAT'
      FixedChar = True
      Size = 1
    end
    object qPautaNRC_USUARI: TStringField
      FieldName = 'C_USUARI'
      Origin = 'INTERNA.PROCESNR_PAUTES.C_USUARI'
      Size = 5
    end
    object qPautaNRDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'INTERNA.PROCESNR_PAUTES.DATA'
    end
    object qPautaNRC_USUARI_SUSP: TStringField
      FieldName = 'C_USUARI_SUSP'
      Origin = 'INTERNA.PROCESNR_PAUTES.C_USUARI_SUSP'
      Size = 5
    end
    object qPautaNRDATA_SUSP: TDateTimeField
      FieldName = 'DATA_SUSP'
      Origin = 'INTERNA.PROCESNR_PAUTES.DATA_SUSP'
    end
    object qPautaNRSEGUEIXPROTOCOLDURADA: TStringField
      FieldName = 'SEGUEIXPROTOCOLDURADA'
      Origin = 'INTERNA.PROCESNR_PAUTES.SEGUEIXPROTOCOLDURADA'
      FixedChar = True
      Size = 1
    end
    object qPautaNRSEGUEIXPROTOCOLFREQ: TStringField
      FieldName = 'SEGUEIXPROTOCOLFREQ'
      Origin = 'INTERNA.PROCESNR_PAUTES.SEGUEIXPROTOCOLFREQ'
      FixedChar = True
      Size = 1
    end
  end
  object dsProcesNR: TDataSource
    DataSet = qProcesNR
    Left = 107
    Top = 304
  end
  object qTornsNR: TQuery
    DatabaseName = 'Interna'
    DataSource = dsProcesNR
    SQL.Strings = (
      
        'select T.*, A.CODI2, Lower(A.DESCRIPCIO) as DESCRIPCIO, C.N_CODI' +
        ' as N_FREQ'
      'from PROCESNR_TORNS T'
      'join TORNAMB A on T.TORN = A.CODI'
      'join CODICAMPS C on  C.TIPUSCODI = '#39'FREQUENCIA.RHF'#39
      '                                and T.FREQUENCIA = C.C_CODI '
      'where T.C_PROCES = :c_proces'
      'order by T.DIA_INICI')
    Left = 230
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_PROCES'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qFestius: TQuery
    DatabaseName = 'Interna'
    SessionName = 'Default'
    SQL.Strings = (
      'select * '
      'from FESTIUS'
      'where DATA between :data1 and :data2')
    Left = 478
    Top = 256
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptInput
      end>
  end
  object qVisitesSeg: TQuery
    DatabaseName = 'Interna'
    SessionName = 'Default'
    DataSource = dsProcesNR
    SQL.Strings = (
      'select T.DATA_INGRES, '
      '          cast('#39' '#39' as VarChar(45)) as N_METGE, '
      '          cast('#39' '#39' as VarChar(50)) as N_CONSULTA'
      'from TRACTAMENTS T'
      'where T.C_HISTORIA = :c_historia'
      'and T.C_PRESTACIO = '#39'2003'#39
      'and T.DATA_INGRES >= :data_inici and T.DATA_INGRES <= "TODAY"'
      'union'
      'select E.DATA_PREINGRES,'
      '          M.TRACTE ||'#39' '#39'|| M.NOMSENCER as N_METGE, '
      '          C.N_CONSULTA'
      'from ESPERA E'
      'join METGES M on E.C_COORDINADOR = M.CODI'
      'left outer join CONSULTES C on  E.LLOC = C.C_CONSULTA'
      'where E.C_HISTORIA = :c_historia'
      'and E.C_PRESTACIO = '#39'2003'#39
      'and E.EXCLOS = '#39'N'#39
      'and E.C_ESTAT = 30'
      'and E.DATA_PREINGRES >= "TODAY" and E.DATA_PREINGRES <= :data_fi')
    Left = 296
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_HISTORIA'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'DATA_INICI'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftInteger
        Name = 'c_historia'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'data_fi'
        ParamType = ptUnknown
      end>
  end
  object qPerfilNR: TQuery
    DatabaseName = 'Interna'
    DataSource = wDataVerHis.dsFili
    SQL.Strings = (
      'select P.C_PERFIL, P.N_PERFIL, P.DURADA'
      'from UM_PERFILNR U '
      'join PERFILSNR P on U.C_PERFIL = P.C_PERFIL'
      'where U.C_UNITATMEDICA = :c_unitatmedica'
      'and     U.SEVERITAT = :severitat')
    Left = 32
    Top = 256
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'C_UnitatMedica'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftSmallint
        Name = 'Severitat'
        ParamType = ptInput
        Size = 2
      end>
    object qPerfilNRC_PERFIL: TSmallintField
      FieldName = 'C_PERFIL'
      Origin = 'INTERNA.PERFILSNR.C_PERFIL'
    end
    object qPerfilNRN_PERFIL: TStringField
      FieldName = 'N_PERFIL'
      Origin = 'INTERNA.PERFILSNR.N_PERFIL'
      Size = 40
    end
    object qPerfilNRDURADA: TSmallintField
      FieldName = 'DURADA'
      Origin = 'INTERNA.PERFILSNR.DURADA'
      DisplayFormat = '0" mesos "'
    end
  end
  object dsPerfilNR: TDataSource
    DataSet = qPerfilNR
    Left = 32
    Top = 304
  end
  object dsPautaNR: TDataSource
    DataSet = qPautaNR
    Left = 172
    Top = 304
  end
  object dsPautesNR: TDataSource
    DataSet = qPautesNR
    Left = 554
    Top = 304
  end
  object qPautesNR: TQuery
    DatabaseName = 'Interna'
    DataSource = dsProcesNR
    SQL.Strings = (
      'select P.*, E.N_CODI as ESTAT, C.N_CODI as MOTIU, M.METGE'
      'from PROCESNR_PAUTES P'
      
        'join CODICAMPSCURT E on P.ESTAT = E.C_CODI and E.TIPUSCODI = '#39'PA' +
        'UTESNR.ESTAT'#39
      
        'left outer join CODICAMPS C on P.C_MOTIU = C.C_CODI and C.TIPUSC' +
        'ODI = '#39'PREALTA.MOTIU'#39
      'join METGES M on P.C_USUARI = M.CODI'
      'where P.C_PROCES = :c_proces'
      'order by P.DATA desc')
    Left = 554
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_PROCES'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qHospNR: TQuery
    DatabaseName = 'Interna'
    DataSource = dsProcesNR
    SQL.Strings = (
      
        'select T.DATA_INGRES, T.DATA_PREALTA, T.DATA_ALTA, T.C_MOTIU, M.' +
        'N_CODI as MOTIU'
      'from TRACTAMENTS  T'
      
        'join CODICAMPS M on T.C_MOTIU = M.C_CODI and M.TIPUSCODI = '#39'MOTI' +
        'U'#39
      'where T.C_HISTORIA = :c_historia'
      'and T.DATA_INGRES >= :data_inici'
      'and (T.DATA_ALTA <= :data_fi or T.DATA_ALTA is null)'
      'and T.C_PRESTACIO = '#39'1004'#39
      'order by T.DATA_INGRES')
    Left = 358
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_HISTORIA'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'DATA_INICI'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftDate
        Name = 'DATA_FI'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qAmbuNR: TQuery
    DatabaseName = 'Interna'
    DataSource = dsProcesNR
    SQL.Strings = (
      'select DATA_INGRES, DATA_PREALTA, DATA_ALTA'
      'from TRACTAMENTS '
      'where C_PROCES = :c_proces'
      'and C_PRESTACIO = '#39'2014'#39
      'order by DATA_INGRES')
    Left = 416
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_PROCES'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qTractaments: TQuery
    DatabaseName = 'Interna'
    DataSource = dsProcesNR
    SQL.Strings = (
      'select T.C_PRESTACIO, P.N_PRESTACIO, T.C_MOTIU, '
      '          T.DATA_INGRES, T.DATA_PREALTA, T.DATA_ALTA, T.DURADA, '
      
        '          T.C_CENTREFAC, C.N_CENTREFAC, D.C_DRET as P33, M.C_DRE' +
        'T as X1'
      'from TRACTAMENTS T'
      
        'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "E' +
        'STATFACTU" and X.R_CODI <> 9'
      'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO'
      
        'left outer join DRETSPRESTA D on T.C_PRESTACIO = D.C_PRESTACIO a' +
        'nd D.C_DRET = '#39'P33'#39' '
      
        'left outer join DRETSMOTIU M on T.C_MOTIU = M.C_MOTIU and M.C_DR' +
        'ET = '#39'X1'#39' '
      'join CENTREFAC C on T.C_CENTREFAC = C.C_CENTREFAC'
      'where T.C_PROCES = :c_proces'
      'order by T.DATA_INGRES')
    Left = 632
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_PROCES'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsTractaments: TDataSource
    DataSet = qTractaments
    Left = 632
    Top = 304
  end
  object cProcesPend: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select T.C_HISTORIA, T.C_PRESTACIO, F.NOMCOMPLET, '
      '          T.DATA_INGRES, T.DATA_PREALTA, T.DATA_ALTA, '
      '          CF.N_CENTREFAC as C_CENTREFAC, T.C_TRACTAMENT'
      'from TRACTAMENTS T '
      'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      
        'join DRETSPRESTA DP on T.C_PRESTACIO = DP.C_PRESTACIO and DP.C_D' +
        'RET = "P33"          '
      
        'join PROTOCOLS_PROCESNR P on P.C_MOTIU = T.C_MOTIU and P.C_CENTR' +
        'EFAC = T.C_CENTREFAC '
      'left outer join CENTREFAC CF on T.C_CENTREFAC = CF.C_CENTREFAC'
      'where T.C_PROCES is Null '
      'and (T.DATA_ALTA is Null or T.DATA_ALTA >= '#39'TODAY'#39')'
      
        'and T.C_COORDINADOR = "P72"                                     ' +
        '  /* linia 10 */'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Tract_Resum
    Titulo = 'Processos NR pendents d'#39'identificar'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    VerSimple = True
    CamposOculta.Strings = (
      'c_tractament')
    AlSeleccionar = cProcesPendAlSeleccionar
    EnActivar = consultaEnActivar
    EnDesactivar = consultaEnDesactivar
    AlTancar = consultaAllTancar
    Left = 32
    Top = 80
  end
  object qUpdLesionsSuccessives: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update lesions_successives'
      
        'set DATA_LESIO=:DATA_LESIO, C_UNITATA=:C_UNITATA, C_UNITATM=:C_U' +
        'NITATM, SEVERITAT=:SEVERITAT, C_ORIGEN=:C_ORIGEN, C_CAUSA=:C_CAU' +
        'SA, C_CAUSA_DETALL=:C_CAUSA_DETALL, '
      
        'CAUSA_ALTRES= :CAUSA_ALTRES,  C_LATERALITAT =:C_LATERALITAT, RIC' +
        '=:RIC, GLF=:GLF, NIHSS=:NIHSS, GLASGOW=:GLASGOW, C_ETIOLOGIA=:C_' +
        'ETIOLOGIA, C_USUARI_M=:C_USUARI_M, '
      
        'DATA_MODI=:DATA_MODI, DIES_APT= :DIES_APT, N_DIAGNOSTICNEUROLOGI' +
        'C=:N_DIAGNOSTICNEUROLOGIC,  N_ETIOLOGIA= :N_ETIOLOGIA, G_EFECTET' +
        'ARDA =:G_EFECTETARDA, '
      
        'G_DEFICITNEUROLOGIC= :G_DEFICITNEUROLOGIC, VERSIOCIM=:VERSIOCIM,' +
        ' VERSIOCIM_G=:VERSIOCIM_G'
      'WHERE C_HISTORIA=:C_HISTORIA AND C_LINIA=:C_LINIA')
    Left = 269
    Top = 80
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DATA_LESIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_UNITATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_UNITATM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEVERITAT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_CAUSA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_CAUSA_DETALL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CAUSA_ALTRES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_LATERALITAT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RIC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GLF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NIHSS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GLASGOW'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_ETIOLOGIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_USUARI_M'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA_MODI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIES_APT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_DIAGNOSTICNEUROLOGIC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_ETIOLOGIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'G_EFECTETARDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'G_DEFICITNEUROLOGIC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VERSIOCIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VERSIOCIM_G'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_HISTORIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_LINIA'
        ParamType = ptInput
      end>
  end
  object qInsLesionsSuccessives: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'insert into lesions_successives(C_HISTORIA, C_LINIA, DATA_LESIO,' +
        '  C_UNITATA,  C_UNITATM,  SEVERITAT, C_ORIGEN, C_CAUSA,  C_CAUSA' +
        '_DETALL, CAUSA_ALTRES,  C_LATERALITAT, RIC, GLF, NIHSS, GLASGOW,' +
        ' C_ETIOLOGIA, C_PROCES, C_USUARI_R, DATA_REGISTRE, C_USUARI_M, D' +
        'ATA_MODI, DIES_APT,  N_DIAGNOSTICNEUROLOGIC,  N_ETIOLOGIA, G_EFE' +
        'CTETARDA, G_DEFICITNEUROLOGIC, VERSIOCIM, VERSIOCIM_G)'
      
        'values(:C_HISTORIA, :C_LINIA, :DATA_LESIO, :C_UNITATA, :C_UNITAT' +
        'M, :SEVERITAT, :C_ORIGEN, :C_CAUSA, :C_CAUSA_DETALL, :CAUSA_ALTR' +
        'ES, :C_LATERALITAT, :RIC, :GLF, :NIHSS, :GLASGOW, :C_ETIOLOGIA, ' +
        ':C_PROCES, :C_USUARI_R, :DATA_REGISTRE,:C_USUARI_M, :DATA_MODI,:' +
        'DIES_APT, :N_DIAGNOSTICNEUROLOGIC, :N_ETIOLOGIA, :G_EFECTETARDA,' +
        ' :G_DEFICITNEUROLOGIC, :VERSIOCIM, :VERSIOCIM_G)')
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_HISTORIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_LINIA'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA_LESIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_UNITATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_UNITATM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEVERITAT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_CAUSA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_CAUSA_DETALL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CAUSA_ALTRES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_LATERALITAT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RIC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GLF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NIHSS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GLASGOW'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_ETIOLOGIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_PROCES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_USUARI_R'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA_REGISTRE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_USUARI_M'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA_MODI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIES_APT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_DIAGNOSTICNEUROLOGIC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_ETIOLOGIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'G_EFECTETARDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'G_DEFICITNEUROLOGIC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VERSIOCIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VERSIOCIM_G'
        ParamType = ptInput
      end>
  end
  object cTornsPend: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select distinct P.C_PROCES, T.C_HISTORIA, F.NOMCOMPLET, T.DATA_I' +
        'NGRES, P.DATA_PREALTA'
      'from PROCESNR_TORNS S'
      'join PROCESNR_PAUTES P on S.C_PROCES = P.C_PROCES '
      '                                             and P.ESTAT = "V"'
      'join TRACTAMENTS T on P.C_PROCES = T.C_PROCES '
      'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      'where S.C_USUARI is NULL'
      'and T.C_PRESTACIO = "2014" '
      'and (T.DATA_ALTA is NULL or T.DATA_ALTA >= "TODAY")'
      '[ORDEN]'
      '')
    Dicionario1 = wDataBasics.Tract_Resum
    Titulo = 'Ambulatoris amb torns pendents de confirmar o reassignar'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    VerSimple = True
    CamposOculta.Strings = (
      'C_PROCES')
    AlSeleccionar = cTornsPautesPendAlSeleccionar
    EnActivar = consultaEnActivar
    EnDesactivar = consultaEnDesactivar
    AlTancar = consultaAllTancar
    Left = 112
    Top = 136
  end
  object cPautesPend: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select T.C_HISTORIA, T.C_TRACTAMENT, T.C_PRESTACIO, '
      
        '          F.NOMCOMPLET, T.DATA_INGRES, T.DATA_PREALTA, T.DATA_AL' +
        'TA '
      'from PROCESNR P '
      'join TRACTAMENTS T on P.C_PROCES = T.C_PROCES '
      'left outer join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      'where T.C_PRESTACIO = "2014" '
      'and (T.DATA_ALTA is NULL or T.DATA_ALTA >= "TODAY") '
      
        'and T.C_COORDINADOR = "P19"                                     ' +
        '        /* l'#237'nia 7 */'
      'and P.C_PROCES not in (select C_PROCES from PROCESNR_TORNS) '
      '[ORDEN]')
    Dicionario1 = wDataBasics.Tract_Resum
    Titulo = 'Pautes NR ambulat'#242'ries pendents de programar'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    VerSimple = True
    CamposOculta.Strings = (
      'c_tractament')
    AlSeleccionar = cTornsPautesPendAlSeleccionar
    EnActivar = consultaEnActivar
    EnDesactivar = consultaEnDesactivar
    AlTancar = consultaAllTancar
    Left = 32
    Top = 136
  end
  object cCanvisTorn: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select  T.C_HISTORIA, F.NOMCOMPLET, T.DATA_INGRES, T.DATA_PREALT' +
        'A, T1.CODI2 as TORN_ACTUAL, T2.CODI2 as TORN_PROPER, P.DIA_INICI' +
        ' as DIA_CANVI'
      'from TRACTAMENTS T'
      'join PROCESNR_TORNS P on T.C_PROCES = P.C_PROCES '
      
        '                                           and P.DIA_INICI - 8 +' +
        ' F_DiaDeLaSemana("TODAY") = "TODAY"'
      'join TORNAMB T1 on T.C_FREQUENCIA = T1.CODI'
      'join TORNAMB T2 on P.TORN = T2.CODI'
      'left outer join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      'where T.C_PRESTACIO = "2014"'
      'and (T.DATA_ALTA IS NULL or T.DATA_ALTA >= "TODAY")'
      'and T.C_FREQUENCIA <> P.TORN')
    Dicionario1 = wDataBasics.Tract_Resum
    Titulo = 'Canvis de torn previstos per dilluns que ve'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    VerSimple = True
    AlSeleccionar = cCanvisTornAlSeleccionar
    EnActivar = consultaEnActivar
    EnDesactivar = consultaEnDesactivar
    AlTancar = consultaAllTancar
    Left = 192
    Top = 136
  end
  object qProtocols: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from PROTOCOLS_PROCESNR'
      'where C_MOTIU = :c_motiu '
      'and C_CENTREFAC = :c_centrefac '
      
        '/*and (HOSPITALITZACIO = ..ingresprevi or HOSPITALITZACIO is Nul' +
        'l) */')
    Left = 32
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_motiu'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_centrefac'
        ParamType = ptInput
      end>
    object qProtocolsID: TIntegerField
      FieldName = 'ID'
      Origin = 'PROTOCOLS_PROCESNR.ID'
      Required = True
    end
    object qProtocolsC_MOTIU: TSmallintField
      FieldName = 'C_MOTIU'
      Origin = 'PROTOCOLS_PROCESNR.C_MOTIU'
    end
    object qProtocolsC_CENTREFAC: TIBStringField
      FieldName = 'C_CENTREFAC'
      Origin = 'PROTOCOLS_PROCESNR.C_CENTREFAC'
      Size = 2
    end
    object qProtocolsPROTOCOL: TIBStringField
      FieldName = 'PROTOCOL'
      Origin = 'PROTOCOLS_PROCESNR.PROTOCOL'
      Size = 80
    end
    object qProtocolsINICIAL5D: TSmallintField
      FieldName = 'INICIAL5D'
      Origin = 'PROTOCOLS_PROCESNR.INICIAL5D'
    end
    object qProtocolsMAXIM5D: TSmallintField
      FieldName = 'MAXIM5D'
      Origin = 'PROTOCOLS_PROCESNR.MAXIM5D'
    end
    object qProtocolsINICIAL4D: TSmallintField
      FieldName = 'INICIAL4D'
      Origin = 'PROTOCOLS_PROCESNR.INICIAL4D'
    end
    object qProtocolsMAXIM4D: TSmallintField
      FieldName = 'MAXIM4D'
      Origin = 'PROTOCOLS_PROCESNR.MAXIM4D'
    end
    object qProtocolsINICIAL3D: TSmallintField
      FieldName = 'INICIAL3D'
      Origin = 'PROTOCOLS_PROCESNR.INICIAL3D'
    end
    object qProtocolsMAXIM3D: TSmallintField
      FieldName = 'MAXIM3D'
      Origin = 'PROTOCOLS_PROCESNR.MAXIM3D'
    end
    object qProtocolsINICIAL2D: TSmallintField
      FieldName = 'INICIAL2D'
      Origin = 'PROTOCOLS_PROCESNR.INICIAL2D'
    end
    object qProtocolsMAXIM2D: TSmallintField
      FieldName = 'MAXIM2D'
      Origin = 'PROTOCOLS_PROCESNR.MAXIM2D'
    end
    object qProtocolsINICIAL1D: TSmallintField
      FieldName = 'INICIAL1D'
      Origin = 'PROTOCOLS_PROCESNR.INICIAL1D'
    end
    object qProtocolsMAXIM1D: TSmallintField
      FieldName = 'MAXIM1D'
      Origin = 'PROTOCOLS_PROCESNR.MAXIM1D'
    end
    object qProtocolsDURADAMAX: TIntegerField
      FieldName = 'DURADAMAX'
      Origin = 'PROTOCOLS_PROCESNR.DURADAMAX'
      DisplayFormat = '0" setmanes "'
    end
    object qProtocolsDURADAFIXA: TIBStringField
      FieldName = 'DURADAFIXA'
      Origin = 'PROTOCOLS_PROCESNR.DURADAFIXA'
      FixedChar = True
      Size = 1
    end
  end
  object dsProtocols: TDataSource
    DataSet = qProtocols
    Left = 91
    Top = 200
  end
  object insPauta: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'insert into PROCESNR_PAUTES '
      '   (ID, C_PROCES, C_TRACTAMENT,  '
      '    DATA_INICI, DATA_PREALTA, DIES_EXTRA,  '
      '    SEGUEIXPROTOCOLDURADA, SEGUEIXPROTOCOLFREQ,'
      '    C_MOTIU, COMENTARI, ESTAT, C_USUARI, DATA)'
      'values '
      '   (:id, :c_proces, :c_tractament, '
      '    :data_inici, :data_prealta, :dies_extra, '
      '    :segueixprotocold, :segueixprotocolf,'
      '    :c_motiu, :comentari, :estat, :c_usuari, :data)')
    Left = 172
    Top = 354
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_proces'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data_inici'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data_prealta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dies_extra'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'segueixprotocold'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'segueixprotocolf'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'c_motiu'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'comentari'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_usuari'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptInput
      end>
  end
end
