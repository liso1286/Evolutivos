object wDataBlocQuirurgicQ: TwDataBlocQuirurgicQ
  OldCreateOrder = False
  Left = 317
  Top = 206
  Height = 383
  Width = 707
  object dsIntervencions: TDataSource
    DataSet = qIntervencions
    Left = 44
    Top = 182
  end
  object dsObservInf: TDataSource
    DataSet = qObservInf
    Left = 118
    Top = 182
  end
  object bProcediments: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBlocQuirurgic.BQProcediments
    IndiceActivo = 'clau'
    CalcSimple = False
    AutoPost = False
    ReadOnly = True
    Filtro.Strings = (
      'C_INTERV = :c_interv')
    Left = 43
    Top = 238
    object bProcediments_c_interv: TIntegerField
      Tag = 100
      DisplayLabel = 'C Intervenci'#243
      DisplayWidth = 8
      FieldName = 'c_interv'
      DisplayFormat = '#,##0;; '
    end
    object bProcediments_ordre: TSmallintField
      Tag = 100
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldName = 'ordre'
    end
    object bProcediments_c_procediment: TStringField
      Tag = 100
      DisplayLabel = 'C Procediment'
      DisplayWidth = 15
      FieldName = 'c_procediment'
      Size = 15
    end
    object bProcediments_n_procediment: TStringField
      Tag = 100
      DisplayLabel = 'N Procediment'
      DisplayWidth = 40
      FieldName = 'n_procediment'
      Size = 40
    end
    object bProcediments_g_procediment: TStringField
      Tag = 100
      DisplayLabel = 'G Procediment'
      DisplayWidth = 15
      FieldName = 'g_procediment'
      Size = 15
    end
    object bProcediments_IDNEUROP: TStringField
      Tag = 100
      DisplayLabel = 'ID Neuro Procediment'
      DisplayWidth = 15
      FieldName = 'IDNEUROP'
      Size = 15
    end
    object bProcediments_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'proced_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'proced'
      Size = 15
      Calculated = True
    end
    object bProcediments_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 120
      FieldKind = fkCalculated
      FieldName = 'proced_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'proced'
      Size = 120
      Calculated = True
    end
    object bProcediments_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'proced_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'proced'
      Size = 1
      Calculated = True
    end
    object bProcediments_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'proced_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'proced'
      Size = 1
      Calculated = True
    end
    object bProcediments_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'proced_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'proced'
      Size = 15
      Calculated = True
    end
    object bProcediments_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'proced_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'proced'
      Size = 60
      Calculated = True
    end
    object bProcediments_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'proced_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'proced'
      Size = 24
      Calculated = True
    end
    object bProcediments_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'proced_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'proced'
      Size = 40
      Calculated = True
    end
    object bProcediments_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'proced_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'proced'
      Size = 15
      Calculated = True
    end
    object bProcediments_C0_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'proced_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'proced'
      Size = 15
      Calculated = True
    end
    object bProcediments_C0_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'proced_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'proced'
      Calculated = True
    end
    object bProcediments_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'proced_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'proced'
      Size = 1
      Calculated = True
    end
    object bProcediments_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'gproced_C_ICD'
      LookupKeyFields = 'C_ICD'
      KeyFields = 'gproced'
      Size = 15
      Calculated = True
    end
    object bProcediments_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 120
      FieldKind = fkCalculated
      FieldName = 'gproced_N_ICD'
      LookupKeyFields = 'N_ICD'
      KeyFields = 'gproced'
      Size = 120
      Calculated = True
    end
    object bProcediments_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'gproced_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'gproced'
      Size = 1
      Calculated = True
    end
    object bProcediments_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Indicador diagn'#242'stic inespec'#237'fic'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'gproced_I_DIAGINES'
      LookupKeyFields = 'I_DIAGINES'
      KeyFields = 'gproced'
      Size = 1
      Calculated = True
    end
    object bProcediments_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Pare'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'gproced_PARE'
      LookupKeyFields = 'PARE'
      KeyFields = 'gproced'
      Size = 15
      Calculated = True
    end
    object bProcediments_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'gproced_R_ICD'
      LookupKeyFields = 'R_ICD'
      KeyFields = 'gproced'
      Size = 60
      Calculated = True
    end
    object bProcediments_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'gproced_E_ICD'
      LookupKeyFields = 'E_ICD'
      KeyFields = 'gproced'
      Size = 24
      Calculated = True
    end
    object bProcediments_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Literal'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'gproced_N_GUTTMANN'
      LookupKeyFields = 'N_GUTTMANN'
      KeyFields = 'gproced'
      Size = 40
      Calculated = True
    end
    object bProcediments_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Grup limitaci'#243' funcional'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'gproced_GLF'
      LookupKeyFields = 'GLF'
      KeyFields = 'gproced'
      Size = 15
      Calculated = True
    end
    object bProcediments_C1_9: TStringField
      Tag = 101
      DisplayLabel = 'RIC'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'gproced_RIC'
      LookupKeyFields = 'RIC'
      KeyFields = 'gproced'
      Size = 15
      Calculated = True
    end
    object bProcediments_C1_10: TSmallintField
      Tag = 101
      DisplayLabel = #201's freq'#252'ent'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'gproced_Frequent'
      LookupKeyFields = 'Frequent'
      KeyFields = 'gproced'
      Calculated = True
    end
    object bProcediments_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'gproced_Tipus'
      LookupKeyFields = 'Tipus'
      KeyFields = 'gproced'
      Size = 1
      Calculated = True
    end
  end
  object dsProcediments: TDataSource
    DataSet = bProcediments
    Left = 38
    Top = 286
  end
  object bPersonalBQ: THYSqlBrowse
    OnCalcFields = bPersonalBQCalcFields
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBlocQuirurgic.BQAjudants
    IndiceActivo = 'clau'
    CalcSimple = False
    AutoPost = False
    ReadOnly = True
    Filtro.Strings = (
      'C_INTERV = :c_interv')
    Left = 123
    Top = 238
    object bPersonalBQ_c_interv: TIntegerField
      Tag = 100
      DisplayLabel = 'C Intervenci'#243
      DisplayWidth = 8
      FieldName = 'c_interv'
      DisplayFormat = '#,##0;; '
    end
    object bPersonalBQ_c_metge: TStringField
      Tag = 100
      DisplayLabel = 'C Metge'
      DisplayWidth = 5
      FieldName = 'c_metge'
      Size = 5
    end
    object bPersonalBQ_tipus: TStringField
      Tag = 100
      DisplayLabel = 'Tipus'
      DisplayWidth = 1
      FieldName = 'tipus'
      Size = 1
    end
    object bPersonalBQ_ordre: TSmallintField
      Tag = 100
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldName = 'ordre'
    end
    object bPersonalBQ_n_ajudant: TStringField
      Tag = 100
      DisplayLabel = 'Altre ajudant'
      DisplayWidth = 20
      FieldName = 'n_ajudant'
    end
    object bPersonalBQnom: TStringField
      FieldKind = fkCalculated
      FieldName = 'nom'
      Calculated = True
    end
    object bPersonalBQ_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'Codi'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'metge_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'metge'
      Size = 5
      Calculated = True
    end
    object bPersonalBQ_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'metge'
      Calculated = True
    end
    object bPersonalBQ_C0_2: TStringField
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
    object bPersonalBQ_C0_3: TStringField
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
    object bPersonalBQ_C0_4: TStringField
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
    object bPersonalBQ_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'N'#250'm. Col.'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'metge_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'metge'
      Size = 6
      Calculated = True
    end
    object bPersonalBQ_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Tracte'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'metge_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'metge'
      Size = 4
      Calculated = True
    end
    object bPersonalBQ_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom complet'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'metge_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'metge'
      Size = 40
      Calculated = True
    end
    object bPersonalBQ_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'Supervisor'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'metge_C_Supervisor'
      LookupKeyFields = 'C_Supervisor'
      KeyFields = 'metge'
      Size = 5
      Calculated = True
    end
    object bPersonalBQ_C1_0: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'personal_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'personal'
      Size = 1
      Calculated = True
    end
    object bPersonalBQ_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'personal_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'personal'
      Size = 60
      Calculated = True
    end
  end
  object dsPersonalBQ: TDataSource
    DataSet = bPersonalBQ
    Left = 123
    Top = 286
  end
  object qCompAnest: TQuery
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    SQL.Strings = (
      
        'select A.*, M.METGE, C.N_CODI as ANESTESIA_N_CODI, CA.N_CODI as ' +
        'ESTAT_N_CODI'
      'from BQANESTESIA A'
      'LEFT JOIN VMETGES M ON A.C_ANESTESIOLEG=M.CODI'
      
        'left outer join CODICAMPS C on A.C_ANESTESIA = C.C_CODI and C.TI' +
        'PUSCODI = '#39'ANESTESIA'#39
      
        'left outer join CODICAMPS CA on A.C_ESTAT=CA.C_CODI and CA.TIPUS' +
        'CODI='#39'BQANESTESIA.ESTAT'#39
      'where A.C_INTERV = :c_interv')
    Left = 246
    Top = 238
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERV'
        ParamType = ptUnknown
        Size = 4
      end>
    object qCompAnestC_INTERV: TIntegerField
      FieldName = 'C_INTERV'
      Origin = 'INTERNA.BQANESTESIA.C_INTERV'
    end
    object qCompAnestDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'INTERNA.BQANESTESIA.DATA'
    end
    object qCompAnestC_USUARI: TStringField
      FieldName = 'C_USUARI'
      Origin = 'INTERNA.BQANESTESIA.C_USUARI'
      Size = 5
    end
    object qCompAnestG1: TStringField
      FieldName = 'G1'
      Origin = 'INTERNA.BQANESTESIA.G1'
      FixedChar = True
      Size = 1
    end
    object qCompAnestG2: TStringField
      FieldName = 'G2'
      Origin = 'INTERNA.BQANESTESIA.G2'
      FixedChar = True
      Size = 1
    end
    object qCompAnestG3: TStringField
      FieldName = 'G3'
      Origin = 'INTERNA.BQANESTESIA.G3'
      FixedChar = True
      Size = 1
    end
    object qCompAnestG4: TStringField
      FieldName = 'G4'
      Origin = 'INTERNA.BQANESTESIA.G4'
      FixedChar = True
      Size = 1
    end
    object qCompAnestG5: TStringField
      FieldName = 'G5'
      Origin = 'INTERNA.BQANESTESIA.G5'
      FixedChar = True
      Size = 1
    end
    object qCompAnestG6: TStringField
      FieldName = 'G6'
      Origin = 'INTERNA.BQANESTESIA.G6'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG1: TStringField
      FieldName = 'CG1'
      Origin = 'INTERNA.BQANESTESIA.CG1'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG2: TStringField
      FieldName = 'CG2'
      Origin = 'INTERNA.BQANESTESIA.CG2'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG3: TStringField
      FieldName = 'CG3'
      Origin = 'INTERNA.BQANESTESIA.CG3'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG4: TStringField
      FieldName = 'CG4'
      Origin = 'INTERNA.BQANESTESIA.CG4'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG5: TStringField
      FieldName = 'CG5'
      Origin = 'INTERNA.BQANESTESIA.CG5'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG6: TStringField
      FieldName = 'CG6'
      Origin = 'INTERNA.BQANESTESIA.CG6'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG7: TStringField
      FieldName = 'CG7'
      Origin = 'INTERNA.BQANESTESIA.CG7'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG8: TStringField
      FieldName = 'CG8'
      Origin = 'INTERNA.BQANESTESIA.CG8'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG9: TStringField
      FieldName = 'CG9'
      Origin = 'INTERNA.BQANESTESIA.CG9'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG10: TStringField
      FieldName = 'CG10'
      Origin = 'INTERNA.BQANESTESIA.CG10'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCLV1: TStringField
      FieldName = 'CLV1'
      Origin = 'INTERNA.BQANESTESIA.CLV1'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCLV2: TStringField
      FieldName = 'CLV2'
      Origin = 'INTERNA.BQANESTESIA.CLV2'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCLN1: TStringField
      FieldName = 'CLN1'
      Origin = 'INTERNA.BQANESTESIA.CLN1'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCLN2: TStringField
      FieldName = 'CLN2'
      Origin = 'INTERNA.BQANESTESIA.CLN2'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCL3: TStringField
      FieldName = 'CL3'
      Origin = 'INTERNA.BQANESTESIA.CL3'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCL4: TStringField
      FieldName = 'CL4'
      Origin = 'INTERNA.BQANESTESIA.CL4'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCL5: TStringField
      FieldName = 'CL5'
      Origin = 'INTERNA.BQANESTESIA.CL5'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG11: TStringField
      FieldName = 'CG11'
      Origin = 'INTERNA.BQANESTESIA.CG11'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG12: TStringField
      FieldName = 'CG12'
      Origin = 'INTERNA.BQANESTESIA.CG12'
      FixedChar = True
      Size = 1
    end
    object qCompAnestCG13: TStringField
      FieldName = 'CG13'
      Origin = 'INTERNA.BQANESTESIA.CG13'
      FixedChar = True
      Size = 1
    end
    object qCompAnestGRAU_SEVERITAT: TSmallintField
      FieldName = 'GRAU_SEVERITAT'
      Origin = 'INTERNA.BQANESTESIA.GRAU_SEVERITAT'
    end
    object qCompAnestC_ANESTESIOLEG: TStringField
      FieldName = 'C_ANESTESIOLEG'
      Origin = 'INTERNA.BQANESTESIA.C_ANESTESIOLEG'
      Size = 5
    end
    object qCompAnestC_ANESTESIA: TSmallintField
      FieldName = 'C_ANESTESIA'
      Origin = 'INTERNA.BQANESTESIA.C_ANESTESIA'
    end
    object qCompAnestC_ESTAT: TSmallintField
      FieldName = 'C_ESTAT'
      Origin = 'INTERNA.BQANESTESIA.C_ESTAT'
    end
    object qCompAnestMETGE: TStringField
      FieldName = 'METGE'
      Origin = 'INTERNA.VMETGES.METGE'
    end
    object qCompAnestANESTESIA_N_CODI: TStringField
      FieldName = 'ANESTESIA_N_CODI'
      Size = 40
    end
    object qCompAnestESTAT_N_CODI: TStringField
      FieldName = 'ESTAT_N_CODI'
      Size = 40
    end
  end
  object dsCompAnest: TDataSource
    DataSet = qCompAnest
    Left = 246
    Top = 286
  end
  object qQuadrat: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select X, Y '
      'from COORDENADES '
      'where QUADRAT = :quadrat')
    Left = 182
    Top = 134
    ParamData = <
      item
        DataType = ftInteger
        Name = 'quadrat'
        ParamType = ptInput
      end>
  end
  object bIsq: THYSqlBrowse
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBlocQuirurgic.Isquemies
    IndiceActivo = 'pk'
    CalcSimple = False
    AutoPost = False
    ReadOnly = True
    Filtro.Strings = (
      'C_INTERV = :c_interv')
    Left = 188
    Top = 238
    object bIsq_C_INTERV: TIntegerField
      Tag = 100
      DisplayLabel = 'Intervencio'
      DisplayWidth = 8
      FieldName = 'C_INTERV'
      DisplayFormat = '#,##0;; '
    end
    object bIsq_LOCALITZACIO: TStringField
      Tag = 100
      DisplayLabel = 'Localitzaci'#243' isqu'#232'mia'
      DisplayWidth = 250
      FieldName = 'LOCALITZACIO'
      Size = 250
    end
    object bIsq_TEMPS_INICI: TDateTimeField
      Tag = 100
      DisplayLabel = 'Temps inici isqu'#232'mia'
      DisplayWidth = 16
      FieldName = 'TEMPS_INICI'
      DisplayFormat = 'hh":"nn'
      EditMask = '!99:99;1; '
    end
    object bIsq_TEMPS_FINAL: TDateTimeField
      Tag = 100
      DisplayLabel = 'Temps finalitzaci'#243' isqu'#232'mia'
      DisplayWidth = 16
      FieldName = 'TEMPS_FINAL'
      DisplayFormat = 'hh":"nn'
      EditMask = '!99:99;1; '
    end
    object bIsq_Durada: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'Durada'
      DisplayFormat = '#,##0;; '
    end
    object bIsq_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
    end
    object bIsq_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'C Intervenci'#243
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'c_interv_c_interv'
      LookupKeyFields = 'c_interv'
      KeyFields = 'c_interv'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bIsq_C0_1: TIntegerField
      Tag = 101
      DisplayLabel = 'C Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'c_interv_c_tractament'
      LookupKeyFields = 'c_tractament'
      KeyFields = 'c_interv'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bIsq_C0_2: TIntegerField
      Tag = 101
      DisplayLabel = 'C Hist'#242'ria'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'c_interv_c_historia'
      LookupKeyFields = 'c_historia'
      KeyFields = 'c_interv'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bIsq_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'N Procediment'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'c_interv_n_procediment'
      LookupKeyFields = 'n_procediment'
      KeyFields = 'c_interv'
      Size = 80
      Calculated = True
    end
    object bIsq_C0_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat enquesta CMA'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'c_interv_estat_CMA'
      LookupKeyFields = 'estat_CMA'
      KeyFields = 'c_interv'
      Calculated = True
    end
  end
  object dsIsq: TDataSource
    DataSet = bIsq
    Left = 180
    Top = 286
  end
  object bPreoperatoris: THYSqlBrowse
    AfterScroll = bPreoperatorisAfterScroll
    DatabaseName = 'Interna'
    Filtered = True
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataBlocQuirurgic.Preoperatori
    IndiceActivo = 'pk'
    CalcSimple = False
    AutoPost = False
    ReadOnly = True
    Padre = wDataVerHis.dsFili
    OrdenBy = 'ID desc'
    Left = 44
    Top = 22
    object bPreoperatoris_id: TIntegerField
      Tag = 100
      DisplayWidth = 8
      FieldName = 'id'
      DisplayFormat = '#,##0;; '
    end
    object bPreoperatoris_c_historia: TIntegerField
      Tag = 100
      DisplayLabel = 'Historia'
      DisplayWidth = 8
      FieldName = 'c_historia'
      DisplayFormat = '#,##0;; '
    end
    object bPreoperatoris_diagnostic: TStringField
      Tag = 100
      DisplayLabel = 'Diagn'#242'stic'
      DisplayWidth = 40
      FieldName = 'diagnostic'
      Size = 40
    end
    object bPreoperatoris_IntPrevista: TStringField
      Tag = 100
      DisplayLabel = 'Intervenci'#243' prevista'
      DisplayWidth = 60
      FieldName = 'IntPrevista'
      Size = 60
    end
    object bPreoperatoris_Especialitat: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Especialitat'
    end
    object bPreoperatoris_Urgent: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Urgent'
      Size = 1
    end
    object bPreoperatoris_AntecedentsQ: TStringField
      Tag = 100
      DisplayLabel = 'Antecedents quir'#250'rgics'
      DisplayWidth = 150
      FieldName = 'AntecedentsQ'
      Size = 150
    end
    object bPreoperatoris_Nerv_Normal: TStringField
      Tag = 100
      DisplayLabel = 'S.Nervi'#243's Normal'
      DisplayWidth = 1
      FieldName = 'Nerv_Normal'
      Size = 1
    end
    object bPreoperatoris_Nerv_Demencia: TStringField
      Tag = 100
      DisplayLabel = 'Dem'#232'ncia'
      DisplayWidth = 1
      FieldName = 'Nerv_Demencia'
      Size = 1
    end
    object bPreoperatoris_Nerv_Depressio: TStringField
      Tag = 100
      DisplayLabel = 'Depressi'#243
      DisplayWidth = 1
      FieldName = 'Nerv_Depressio'
      Size = 1
    end
    object bPreoperatoris_Nerv_Epilepsia: TStringField
      Tag = 100
      DisplayLabel = 'Epil'#232'psia'
      DisplayWidth = 1
      FieldName = 'Nerv_Epilepsia'
      Size = 1
    end
    object bPreoperatoris_Nerv_Pat_Psiq: TStringField
      Tag = 100
      DisplayLabel = 'Patologia Psiqui'#224'trica'
      DisplayWidth = 1
      FieldName = 'Nerv_Pat_Psiq'
      Size = 1
    end
    object bPreoperatoris_Nerv_AVC_antic: TStringField
      Tag = 100
      DisplayLabel = 'AVC antic'
      DisplayWidth = 1
      FieldName = 'Nerv_AVC_antic'
      Size = 1
    end
    object bPreoperatoris_Nerv_conducta: TStringField
      Tag = 100
      DisplayLabel = 'Alteraci'#243' de conducta'
      DisplayWidth = 1
      FieldName = 'Nerv_conducta'
      Size = 1
    end
    object bPreoperatoris_Nerv_Cerebral: TStringField
      Tag = 100
      DisplayLabel = 'Dany cerebral'
      DisplayWidth = 1
      FieldName = 'Nerv_Cerebral'
      Size = 1
    end
    object bPreoperatoris_Nerv_Cap: TStringField
      Tag = 100
      DisplayLabel = 'Cap Sistema Nervi'#243's'
      DisplayWidth = 1
      FieldName = 'Nerv_Cap'
      Size = 1
    end
    object bPreoperatoris_Resp_Normal: TStringField
      Tag = 100
      DisplayLabel = 'Respiratori Normal'
      DisplayWidth = 1
      FieldName = 'Resp_Normal'
      Size = 1
    end
    object bPreoperatoris_Resp_Asma: TStringField
      Tag = 100
      DisplayLabel = 'Asma'
      DisplayWidth = 1
      FieldName = 'Resp_Asma'
      Size = 1
    end
    object bPreoperatoris_Resp_MPOC: TStringField
      Tag = 100
      DisplayLabel = 'MPOC'
      DisplayWidth = 1
      FieldName = 'Resp_MPOC'
      Size = 1
    end
    object bPreoperatoris_Resp_Insuficiencia: TStringField
      Tag = 100
      DisplayLabel = 'Insufici'#232'ncia Respirat'#242'ria'
      DisplayWidth = 1
      FieldName = 'Resp_Insuficiencia'
      Size = 1
    end
    object bPreoperatoris_Resp_Desviacio: TStringField
      Tag = 100
      DisplayLabel = 'Desviaci'#243' traqueal'
      DisplayWidth = 1
      FieldName = 'Resp_Desviacio'
      Size = 1
    end
    object bPreoperatoris_Resp_Patologia: TStringField
      Tag = 100
      DisplayLabel = 'Respiratori - Patologia restrictiva'
      DisplayWidth = 1
      FieldName = 'Resp_Patologia'
      Size = 1
    end
    object bPreoperatoris_Vasc_Normal: TStringField
      Tag = 100
      DisplayLabel = 'Cardio Vascular Normal'
      DisplayWidth = 1
      FieldName = 'Vasc_Normal'
      Size = 1
    end
    object bPreoperatoris_Vasc_HTA: TStringField
      Tag = 100
      DisplayLabel = 'HTA'
      DisplayWidth = 1
      FieldName = 'Vasc_HTA'
      Size = 1
    end
    object bPreoperatoris_Vasc_Corona: TStringField
      Tag = 100
      DisplayLabel = 'Coronariopatia'
      DisplayWidth = 1
      FieldName = 'Vasc_Corona'
      Size = 1
    end
    object bPreoperatoris_Vasc_IAM_antic: TStringField
      Tag = 100
      DisplayLabel = 'IAM antic'
      DisplayWidth = 1
      FieldName = 'Vasc_IAM_antic'
      Size = 1
    end
    object bPreoperatoris_Vasc_Varius: TStringField
      Tag = 100
      DisplayLabel = 'Varius'
      DisplayWidth = 1
      FieldName = 'Vasc_Varius'
      Size = 1
    end
    object bPreoperatoris_Vasc_Arritmia: TStringField
      Tag = 100
      DisplayLabel = 'Arr'#237'tmia'
      DisplayWidth = 1
      FieldName = 'Vasc_Arritmia'
      Size = 1
    end
    object bPreoperatoris_Vasc_Insuficiencia: TStringField
      Tag = 100
      DisplayLabel = 'Insufici'#232'ncia Card'#237'aca'
      DisplayWidth = 1
      FieldName = 'Vasc_Insuficiencia'
      Size = 1
    end
    object bPreoperatoris_Vasc_valvula: TStringField
      Tag = 100
      DisplayLabel = 'Valvulopatia'
      DisplayWidth = 1
      FieldName = 'Vasc_valvula'
      Size = 1
    end
    object bPreoperatoris_Vasc_arteria: TStringField
      Tag = 100
      DisplayLabel = 'Arteriopatia'
      DisplayWidth = 1
      FieldName = 'Vasc_arteria'
      Size = 1
    end
    object bPreoperatoris_Vasc_shock: TStringField
      Tag = 100
      DisplayLabel = 'Shock'
      DisplayWidth = 1
      FieldName = 'Vasc_shock'
      Size = 1
    end
    object bPreoperatoris_Vasc_marcapas: TStringField
      Tag = 100
      DisplayLabel = 'Portador de marcap'#224's'
      DisplayWidth = 1
      FieldName = 'Vasc_marcapas'
      Size = 1
    end
    object bPreoperatoris_Vasc_congenita: TStringField
      Tag = 100
      DisplayLabel = 'Cardiopatia cong'#232'nita'
      DisplayWidth = 1
      FieldName = 'Vasc_congenita'
      Size = 1
    end
    object bPreoperatoris_Ren_Normal: TStringField
      Tag = 100
      DisplayLabel = 'Funci'#243' renal Normal'
      DisplayWidth = 1
      FieldName = 'Ren_Normal'
      Size = 1
    end
    object bPreoperatoris_Ren_insuficiencia: TStringField
      Tag = 100
      DisplayLabel = 'Insufici'#232'ncia renal'
      DisplayWidth = 1
      FieldName = 'Ren_insuficiencia'
      Size = 1
    end
    object bPreoperatoris_Ren_prostata: TStringField
      Tag = 100
      DisplayLabel = 'Prostatisme'
      DisplayWidth = 1
      FieldName = 'Ren_prostata'
      Size = 1
    end
    object bPreoperatoris_Ren_hemodialisi: TStringField
      Tag = 100
      DisplayLabel = 'Hemodi'#224'lisi'
      DisplayWidth = 1
      FieldName = 'Ren_hemodialisi'
      Size = 1
    end
    object bPreoperatoris_End_Normal: TStringField
      Tag = 100
      DisplayLabel = 'Endocr'#237' Normal'
      DisplayWidth = 1
      FieldName = 'End_Normal'
      Size = 1
    end
    object bPreoperatoris_End_obesitat: TStringField
      Tag = 100
      DisplayLabel = 'Obesitat'
      DisplayWidth = 1
      FieldName = 'End_obesitat'
      Size = 1
    end
    object bPreoperatoris_End_diabetes_dieta: TStringField
      Tag = 100
      DisplayLabel = 'Diabetes amb dieta'
      DisplayWidth = 1
      FieldName = 'End_diabetes_dieta'
      Size = 1
    end
    object bPreoperatoris_End_diabetes_ADO: TStringField
      Tag = 100
      DisplayLabel = 'Diabetes amb ADO'
      DisplayWidth = 1
      FieldName = 'End_diabetes_ADO'
      Size = 1
    end
    object bPreoperatoris_End_insulina: TStringField
      Tag = 100
      DisplayLabel = 'Diabetes amb insulina'
      DisplayWidth = 1
      FieldName = 'End_insulina'
      Size = 1
    end
    object bPreoperatoris_End_hipertiroides: TStringField
      Tag = 100
      DisplayLabel = 'Hipertiro'#239'disme'
      DisplayWidth = 1
      FieldName = 'End_hipertiroides'
      Size = 1
    end
    object bPreoperatoris_End_hipotiroides: TStringField
      Tag = 100
      DisplayLabel = 'Hipotiro'#239'disme'
      DisplayWidth = 1
      FieldName = 'End_hipotiroides'
      Size = 1
    end
    object bPreoperatoris_End_hiperaldosterona: TStringField
      Tag = 100
      DisplayLabel = 'Hiperaldosteronisme'
      DisplayWidth = 1
      FieldName = 'End_hiperaldosterona'
      Size = 1
    end
    object bPreoperatoris_Dig_Normal: TStringField
      Tag = 100
      DisplayLabel = 'Digestiu Normal'
      DisplayWidth = 1
      FieldName = 'Dig_Normal'
      Size = 1
    end
    object bPreoperatoris_Dig_ulcus: TStringField
      Tag = 100
      DisplayLabel = 'Ulcus'
      DisplayWidth = 1
      FieldName = 'Dig_ulcus'
      Size = 1
    end
    object bPreoperatoris_Dig_hiatus: TStringField
      Tag = 100
      DisplayLabel = 'Hernia hiatus'
      DisplayWidth = 1
      FieldName = 'Dig_hiatus'
      Size = 1
    end
    object bPreoperatoris_Dig_dispepsia: TStringField
      Tag = 100
      DisplayLabel = 'Disp'#232'psia'
      DisplayWidth = 1
      FieldName = 'Dig_dispepsia'
      Size = 1
    end
    object bPreoperatoris_Dig_hepatitis: TStringField
      Tag = 100
      DisplayLabel = 'Hepatitis'
      DisplayWidth = 1
      FieldName = 'Dig_hepatitis'
      Size = 1
    end
    object bPreoperatoris_Dig_cirrosi: TStringField
      Tag = 100
      DisplayLabel = 'Cirrosi'
      DisplayWidth = 1
      FieldName = 'Dig_cirrosi'
      Size = 1
    end
    object bPreoperatoris_Pat_sense: TStringField
      Tag = 100
      DisplayLabel = 'No altres patologies'
      DisplayWidth = 1
      FieldName = 'Pat_sense'
      Size = 1
    end
    object bPreoperatoris_Pat_artrosi: TStringField
      Tag = 100
      DisplayLabel = 'Artrosi'
      DisplayWidth = 1
      FieldName = 'Pat_artrosi'
      Size = 1
    end
    object bPreoperatoris_Pat_coagul: TStringField
      Tag = 100
      DisplayLabel = 'Coagulopaties'
      DisplayWidth = 1
      FieldName = 'Pat_coagul'
      Size = 1
    end
    object bPreoperatoris_Pat_neoplasia: TStringField
      Tag = 100
      DisplayLabel = 'Neoplasia'
      DisplayWidth = 1
      FieldName = 'Pat_neoplasia'
      Size = 1
    end
    object bPreoperatoris_Pat_sepsis: TStringField
      Tag = 100
      DisplayLabel = 'Sepsis'
      DisplayWidth = 1
      FieldName = 'Pat_sepsis'
      Size = 1
    end
    object bPreoperatoris_Pat_altres: TStringField
      Tag = 100
      DisplayLabel = 'Altres'
      DisplayWidth = 1
      FieldName = 'Pat_altres'
      Size = 1
    end
    object bPreoperatoris_Medicacio: TMemoField
      Tag = 100
      DisplayLabel = 'Medicaci'#243
      DisplayWidth = 1
      FieldName = 'Medicacio'
      BlobType = ftMemo
      Size = 1
    end
    object bPreoperatoris_Tabac: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Tabac'
      Size = 1
    end
    object bPreoperatoris_Enolisme: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Enolisme'
      Size = 1
    end
    object bPreoperatoris_Cannabis: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Cannabis'
      Size = 1
    end
    object bPreoperatoris_Coca: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Coca'
      Size = 1
    end
    object bPreoperatoris_Drogues: TStringField
      Tag = 100
      DisplayLabel = 'Altres drogues'
      DisplayWidth = 1
      FieldName = 'Drogues'
      Size = 1
    end
    object bPreoperatoris_Transfusions: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Transfusions'
      Size = 1
    end
    object bPreoperatoris_Data_Transf: TStringField
      Tag = 100
      DisplayLabel = 'Data '#250'ltima transfusi'#243
      DisplayWidth = 15
      FieldName = 'Data_Transf'
      Size = 15
    end
    object bPreoperatoris_Ag_Aust: TStringField
      Tag = 100
      DisplayLabel = 'Ag. Aust.'
      DisplayWidth = 1
      FieldName = 'Ag_Aust'
      Size = 1
    end
    object bPreoperatoris_HIV: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'HIV'
      Size = 1
    end
    object bPreoperatoris_Pes: TIntegerField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'Pes'
      DisplayFormat = '#,##0;; '
    end
    object bPreoperatoris_Talla: TIntegerField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'Talla'
      DisplayFormat = '#,##0;; '
    end
    object bPreoperatoris_TA: TStringField
      Tag = 100
      DisplayWidth = 7
      FieldName = 'TA'
      Size = 7
    end
    object bPreoperatoris_FC: TIntegerField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'FC'
      DisplayFormat = '#,##0;; '
    end
    object bPreoperatoris_IMC: TFloatField
      Tag = 100
      DisplayWidth = 5
      FieldName = 'IMC'
      DisplayFormat = '#,##0.##;; '
    end
    object bPreoperatoris_Boca: TStringField
      Tag = 100
      DisplayWidth = 20
      FieldName = 'Boca'
    end
    object bPreoperatoris_Coll: TStringField
      Tag = 100
      DisplayWidth = 20
      FieldName = 'Coll'
    end
    object bPreoperatoris_Mallampati: TSmallintField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Mallampati'
    end
    object bPreoperatoris_Columna: TStringField
      Tag = 100
      DisplayWidth = 20
      FieldName = 'Columna'
    end
    object bPreoperatoris_A_Respiratori: TStringField
      Tag = 100
      DisplayLabel = 'Ap. Respiratori'
      DisplayWidth = 200
      FieldName = 'A_Respiratori'
      Size = 200
    end
    object bPreoperatoris_A_Circulatori: TStringField
      Tag = 100
      DisplayLabel = 'Ap. Circulatori'
      DisplayWidth = 200
      FieldName = 'A_Circulatori'
      Size = 200
    end
    object bPreoperatoris_RXTorax: TStringField
      Tag = 100
      DisplayLabel = 'RX T'#242'rax'
      DisplayWidth = 200
      FieldName = 'RXTorax'
      Size = 200
    end
    object bPreoperatoris_ECG: TStringField
      Tag = 100
      DisplayWidth = 200
      FieldName = 'ECG'
      Size = 200
    end
    object bPreoperatoris_Analitica: TStringField
      Tag = 100
      DisplayLabel = 'Anal'#237'tica'
      DisplayWidth = 200
      FieldName = 'Analitica'
      Size = 200
    end
    object bPreoperatoris_Observacions: TMemoField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Observacions'
      BlobType = ftMemo
      Size = 1
    end
    object bPreoperatoris_ASA: TStringField
      Tag = 100
      DisplayWidth = 3
      FieldName = 'ASA'
      Size = 3
    end
    object bPreoperatoris_Estat_interv: TSmallintField
      Tag = 100
      DisplayLabel = 'Estat intervenci'#243
      DisplayWidth = 2
      FieldName = 'Estat_interv'
    end
    object bPreoperatoris_Sedacio: TStringField
      Tag = 100
      DisplayLabel = 'Sedaci'#243
      DisplayWidth = 1
      FieldName = 'Sedacio'
      Size = 1
    end
    object bPreoperatoris_General: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'General'
      Size = 1
    end
    object bPreoperatoris_Intradural: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Intradural'
      Size = 1
    end
    object bPreoperatoris_Epidural: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Epidural'
      Size = 1
    end
    object bPreoperatoris_Axilar: TStringField
      Tag = 100
      DisplayLabel = 'Axil'#183'lar'
      DisplayWidth = 1
      FieldName = 'Axilar'
      Size = 1
    end
    object bPreoperatoris_Regend: TStringField
      Tag = 100
      DisplayLabel = 'Reg. end.'
      DisplayWidth = 1
      FieldName = 'Regend'
      Size = 1
    end
    object bPreoperatoris_Peri: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Peri'
      Size = 1
    end
    object bPreoperatoris_Topica: TStringField
      Tag = 100
      DisplayLabel = 'T'#242'pica'
      DisplayWidth = 1
      FieldName = 'Topica'
      Size = 1
    end
    object bPreoperatoris_Local: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Local'
      Size = 1
    end
    object bPreoperatoris_Altra: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Altra'
      Size = 1
    end
    object bPreoperatoris_Modalitat: TSmallintField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Modalitat'
    end
    object bPreoperatoris_Fer_gastrica: TStringField
      Tag = 100
      DisplayLabel = 'Prot. gr'#224'stica'
      DisplayWidth = 1
      FieldName = 'Fer_gastrica'
      Size = 1
    end
    object bPreoperatoris_Fer_TVP_HBPM: TStringField
      Tag = 100
      DisplayLabel = 'Profilaxi TVP amb HBPM'
      DisplayWidth = 1
      FieldName = 'Fer_TVP_HBPM'
      Size = 1
    end
    object bPreoperatoris_Fer_insulina: TStringField
      Tag = 100
      DisplayLabel = 'Protocol insulina'
      DisplayWidth = 1
      FieldName = 'Fer_insulina'
      Size = 1
    end
    object bPreoperatoris_Fer_antiagregants: TStringField
      Tag = 100
      DisplayLabel = 'Deixar antiagregants'
      DisplayWidth = 1
      FieldName = 'Fer_antiagregants'
      Size = 1
    end
    object bPreoperatoris_Fer_endocarditis: TStringField
      Tag = 100
      DisplayLabel = 'Profilaxi endocarditis'
      DisplayWidth = 1
      FieldName = 'Fer_endocarditis'
      Size = 1
    end
    object bPreoperatoris_Notificacions: TMemoField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Notificacions'
      BlobType = ftMemo
      Size = 1
    end
    object bPreoperatoris_Data_autoritzacio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data d'#39'autoritzacio'
      DisplayWidth = 10
      FieldName = 'Data_autoritzacio'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bPreoperatoris_C_Metge: TStringField
      Tag = 100
      DisplayLabel = 'Metge '#250'ltima modificaci'#243
      DisplayWidth = 5
      FieldName = 'C_Metge'
      Size = 5
    end
    object bPreoperatoris_Data_Ultmodi: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data '#250'ltima modificaci'#243
      DisplayWidth = 10
      FieldName = 'Data_Ultmodi'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bPreoperatoris_Data_caduca2: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data caducitat (reactivats)'
      DisplayWidth = 10
      FieldName = 'Data_caduca2'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bPreoperatoris_Metge_creador: TStringField
      Tag = 100
      DisplayLabel = 'Metge crea full'
      DisplayWidth = 5
      FieldName = 'Metge_creador'
      Size = 5
    end
    object bPreoperatoris_Data_creacio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data creaci'#243' full'
      DisplayWidth = 10
      FieldName = 'Data_creacio'
      DisplayFormat = 'dd"-"mm"-"yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bPreoperatoris_nInterconRX: TIntegerField
      Tag = 100
      DisplayLabel = 'Interconsulta RX'
      DisplayWidth = 8
      FieldName = 'nInterconRX'
      DisplayFormat = '#,##0;; '
    end
    object bPreoperatoris_nInterconAnal: TIntegerField
      Tag = 100
      DisplayLabel = 'Interconsulta Anal'#237'tica'
      DisplayWidth = 8
      FieldName = 'nInterconAnal'
      DisplayFormat = '#,##0;; '
    end
    object bPreoperatoris_Alergies: TStringField
      Tag = 100
      DisplayLabel = 'Al'#183'l'#232'rgies en el moment de fer el preoperatori'
      DisplayWidth = 250
      FieldName = 'Alergies'
      Size = 250
    end
    object bPreoperatoris_Data_Reactivacio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data reactivaci'#243
      DisplayWidth = 19
      FieldName = 'Data_Reactivacio'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99;1; '
    end
    object bPreoperatoris_Usuari_Reactivacio: TStringField
      Tag = 100
      DisplayLabel = 'Usuari reactivaci'#243
      DisplayWidth = 5
      FieldName = 'Usuari_Reactivacio'
      Size = 5
    end
    object bPreoperatoris_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'motiu_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'motiu'
      Calculated = True
    end
    object bPreoperatoris_C0_1: TStringField
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
    object bPreoperatoris_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'motiu_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'motiu'
      Calculated = True
    end
    object bPreoperatoris_C0_3: TStringField
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
    object bPreoperatoris_C0_4: TStringField
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
    object bPreoperatoris_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'motiu_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'motiu'
      Calculated = True
    end
    object bPreoperatoris_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'modalitat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'modalitat'
      Calculated = True
    end
    object bPreoperatoris_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'modalitat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'modalitat'
      Size = 40
      Calculated = True
    end
    object bPreoperatoris_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'modalitat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'modalitat'
      Calculated = True
    end
    object bPreoperatoris_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'modalitat_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'modalitat'
      Size = 40
      Calculated = True
    end
    object bPreoperatoris_C1_4: TStringField
      Tag = 101
      DisplayLabel = 'Resum'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'modalitat_R_Codi'
      LookupKeyFields = 'R_Codi'
      KeyFields = 'modalitat'
      Size = 10
      Calculated = True
    end
    object bPreoperatoris_C1_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'modalitat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'modalitat'
      Calculated = True
    end
    object bPreoperatoris_C2_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'estat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'estat'
      Calculated = True
    end
    object bPreoperatoris_C2_1: TStringField
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
    object bPreoperatoris_C2_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'estat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'estat'
      Calculated = True
    end
    object bPreoperatoris_C2_3: TStringField
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
    object bPreoperatoris_C2_4: TStringField
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
    object bPreoperatoris_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'estat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'estat'
      Calculated = True
    end
    object bPreoperatoris_C3_0: TStringField
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
    object bPreoperatoris_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'metge'
      Calculated = True
    end
    object bPreoperatoris_C3_2: TStringField
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
    object bPreoperatoris_C3_3: TStringField
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
    object bPreoperatoris_C3_4: TStringField
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
    object bPreoperatoris_C3_5: TStringField
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
    object bPreoperatoris_C3_6: TStringField
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
    object bPreoperatoris_C3_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metge_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'metge'
      Calculated = True
    end
    object bPreoperatoris_C3_8: TStringField
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
    object bPreoperatoris_C3_9: TStringField
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
    object bPreoperatoris_C3_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metge_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'metge'
      Calculated = True
    end
    object bPreoperatoris_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'metge'
      Calculated = True
    end
    object bPreoperatoris_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'metge'
      Calculated = True
    end
    object bPreoperatoris_C3_13: TStringField
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
    object bPreoperatoris_C3_14: TStringField
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
    object bPreoperatoris_C3_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'metge_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'metge'
      Size = 250
      Calculated = True
    end
    object bPreoperatoris_C3_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metge_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'metge'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPreoperatoris_C3_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'metge_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'metge'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
    object bPreoperatoris_C4_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'historia_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom complet'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'historia_NomComplet'
      LookupKeyFields = 'NomComplet'
      KeyFields = 'historia'
      Size = 80
      Calculated = True
    end
    object bPreoperatoris_C4_2: TStringField
      Tag = 101
      DisplayLabel = 'Sexe'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'historia_SEXO'
      LookupKeyFields = 'SEXO'
      KeyFields = 'historia'
      Size = 1
      Calculated = True
    end
    object bPreoperatoris_C4_3: TIntegerField
      Tag = 101
      DisplayLabel = 'Edat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'historia_Edat'
      LookupKeyFields = 'Edat'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_4: TStringField
      Tag = 101
      DisplayLabel = 'EsViu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'historia_EsViu'
      LookupKeyFields = 'EsViu'
      KeyFields = 'historia'
      Size = 1
      Calculated = True
    end
    object bPreoperatoris_C4_5: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'historia_APELLIDO1'
      LookupKeyFields = 'APELLIDO1'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_6: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'historia_APELLIDO2'
      LookupKeyFields = 'APELLIDO2'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'historia_NOMBRE'
      LookupKeyFields = 'NOMBRE'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_8: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'historia_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'historia'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPreoperatoris_C4_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'historia_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_10: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'historia_TELEFONO'
      LookupKeyFields = 'TELEFONO'
      KeyFields = 'historia'
      Size = 10
      Calculated = True
    end
    object bPreoperatoris_C4_11: TStringField
      Tag = 101
      DisplayLabel = 'Tsi'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'historia_TSI'
      LookupKeyFields = 'TSI'
      KeyFields = 'historia'
      Size = 14
      Calculated = True
    end
    object bPreoperatoris_C4_12: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Naix.'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'historia_FECHA_NAC'
      LookupKeyFields = 'FECHA_NAC'
      KeyFields = 'historia'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bPreoperatoris_C4_13: TStringField
      Tag = 101
      DisplayLabel = 'Residencia'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'historia_RESIDENCIA'
      LookupKeyFields = 'RESIDENCIA'
      KeyFields = 'historia'
      Size = 7
      Calculated = True
    end
    object bPreoperatoris_C4_14: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'historia_PAIS'
      LookupKeyFields = 'PAIS'
      KeyFields = 'historia'
      Size = 3
      Calculated = True
    end
    object bPreoperatoris_C4_15: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'historia_PROVINCIA'
      LookupKeyFields = 'PROVINCIA'
      KeyFields = 'historia'
      Size = 44
      Calculated = True
    end
    object bPreoperatoris_C4_16: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'historia_POBLACIO'
      LookupKeyFields = 'POBLACIO'
      KeyFields = 'historia'
      Size = 44
      Calculated = True
    end
    object bPreoperatoris_C4_17: TSmallintField
      Tag = 101
      DisplayLabel = 'UM_ANTIGA'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'historia_UM_ANTIGA'
      LookupKeyFields = 'UM_ANTIGA'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_18: TSmallintField
      Tag = 101
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'historia_c_Lateralitat'
      LookupKeyFields = 'c_Lateralitat'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_19: TStringField
      Tag = 101
      DisplayLabel = 'Adre'#231'a'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'historia_ADRESA'
      LookupKeyFields = 'ADRESA'
      KeyFields = 'historia'
      Size = 80
      Calculated = True
    end
    object bPreoperatoris_C4_20: TStringField
      Tag = 101
      DisplayLabel = 'Dni'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'historia_DNI'
      LookupKeyFields = 'DNI'
      KeyFields = 'historia'
      Size = 9
      Calculated = True
    end
    object bPreoperatoris_C4_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Postal'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'historia_CODIGO'
      LookupKeyFields = 'CODIGO'
      KeyFields = 'historia'
      Size = 5
      Calculated = True
    end
    object bPreoperatoris_C4_22: TStringField
      Tag = 101
      DisplayLabel = 'Lloc Naix.'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'historia_LUGAR_NAC'
      LookupKeyFields = 'LUGAR_NAC'
      KeyFields = 'historia'
      Size = 44
      Calculated = True
    end
    object bPreoperatoris_C4_23: TStringField
      Tag = 101
      DisplayLabel = 'Estat Civil'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'historia_ESTADO_CIV'
      LookupKeyFields = 'ESTADO_CIV'
      KeyFields = 'historia'
      Size = 2
      Calculated = True
    end
    object bPreoperatoris_C4_24: TSmallintField
      Tag = 101
      DisplayLabel = 'Hospital primera atencio'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'historia_C_HOSPITAL'
      LookupKeyFields = 'C_HOSPITAL'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_25: TStringField
      Tag = 101
      DisplayLabel = 'Causa de la mort'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'historia_C_EXITUS'
      LookupKeyFields = 'C_EXITUS'
      KeyFields = 'historia'
      Size = 15
      Calculated = True
    end
    object bPreoperatoris_C4_26: TSmallintField
      Tag = 101
      DisplayLabel = 'Idioma'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'historia_IDIOMA'
      LookupKeyFields = 'IDIOMA'
      KeyFields = 'historia'
      Calculated = True
    end
    object bPreoperatoris_C4_27: TStringField
      Tag = 101
      DisplayLabel = 'Tipus de document'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'historia_T_DOC'
      LookupKeyFields = 'T_DOC'
      KeyFields = 'historia'
      Size = 1
      Calculated = True
    end
    object bPreoperatoris_C4_28: TStringField
      Tag = 101
      DisplayLabel = 'Soe'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'historia_SOE'
      LookupKeyFields = 'SOE'
      KeyFields = 'historia'
      Size = 12
      Calculated = True
    end
    object bPreoperatoris_C4_29: TStringField
      Tag = 101
      DisplayLabel = 'N'#250'm. del Servicio Nacional de Salud'
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'historia_SNS'
      LookupKeyFields = 'SNS'
      KeyFields = 'historia'
      Size = 25
      Calculated = True
    end
    object bPreoperatoris_C4_30: TIntegerField
      Tag = 101
      DisplayLabel = 'GNPT'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'historia_Previrnec'
      LookupKeyFields = 'Previrnec'
      KeyFields = 'historia'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPreoperatoris_C5_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'metge_reactiva'
      Size = 5
      Calculated = True
    end
    object bPreoperatoris_C5_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'metge_reactiva'
      Calculated = True
    end
    object bPreoperatoris_C5_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'metge_reactiva'
      Size = 15
      Calculated = True
    end
    object bPreoperatoris_C5_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'metge_reactiva'
      Size = 4
      Calculated = True
    end
    object bPreoperatoris_C5_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'metge_reactiva'
      Size = 2
      Calculated = True
    end
    object bPreoperatoris_C5_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'metge_reactiva'
      Size = 2
      Calculated = True
    end
    object bPreoperatoris_C5_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'metge_reactiva'
      Size = 1
      Calculated = True
    end
    object bPreoperatoris_C5_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'metge_reactiva'
      Calculated = True
    end
    object bPreoperatoris_C5_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'metge_reactiva'
      Size = 1
      Calculated = True
    end
    object bPreoperatoris_C5_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'metge_reactiva'
      Size = 40
      Calculated = True
    end
    object bPreoperatoris_C5_10: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat administrativa'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'metge_reactiva'
      Calculated = True
    end
    object bPreoperatoris_C5_11: TStringField
      Tag = 101
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_Nombre'
      LookupKeyFields = 'Nombre'
      KeyFields = 'metge_reactiva'
      Calculated = True
    end
    object bPreoperatoris_C5_12: TStringField
      Tag = 101
      DisplayLabel = 'Primer Cognom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_Cognom1'
      LookupKeyFields = 'Cognom1'
      KeyFields = 'metge_reactiva'
      Calculated = True
    end
    object bPreoperatoris_C5_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Colegiat'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_NC'
      LookupKeyFields = 'NC'
      KeyFields = 'metge_reactiva'
      Size = 6
      Calculated = True
    end
    object bPreoperatoris_C5_14: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' metge recepta'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_NMetgeRecepta'
      LookupKeyFields = 'NMetgeRecepta'
      KeyFields = 'metge_reactiva'
      Size = 9
      Calculated = True
    end
    object bPreoperatoris_C5_15: TStringField
      Tag = 101
      DisplayLabel = 'E-mail'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_EMAIL'
      LookupKeyFields = 'EMAIL'
      KeyFields = 'metge_reactiva'
      Size = 250
      Calculated = True
    end
    object bPreoperatoris_C5_16: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. hist'#242'ria cl'#237'nica'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_NHC'
      LookupKeyFields = 'NHC'
      KeyFields = 'metge_reactiva'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bPreoperatoris_C5_17: TDateTimeField
      Tag = 101
      DisplayLabel = 'DataFoto'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'metge_reactiva_DataFoto'
      LookupKeyFields = 'DataFoto'
      KeyFields = 'metge_reactiva'
      DisplayFormat = 'dd"-"mm"-"yyyy hh":"nn":"ss'
      Calculated = True
    end
  end
  object dsPreoperatoris: TDataSource
    DataSet = bPreoperatoris
    Left = 44
    Top = 70
  end
  object qEspera: TQuery
    DatabaseName = 'Interna'
    DataSource = dsPreoperatoris
    SQL.Strings = (
      'select C_ESPERA, COMENTARI'
      'from ESPERA '
      'where C_HISTORIA = :c_historia'
      'and   (C_PRESTACIO = "1004" or C_PRESTACIO = "2005") '
      'and    EXCLOS = "N" '
      'and    C_ESTAT between 20 and 29')
    Left = 118
    Top = 22
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_historia'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object updReactiva: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update PREOPERATORI '
      'set ESTAT_INTERV = 5, '
      '      DATA_CADUCA2 = :data_caduca,'
      
        '/*       OBSERVACIONS = F_StrBlob(..observacions)       l'#237'nia  3' +
        ' */'
      'where ID = :id')
    Left = 182
    Top = 22
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data_caduca'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
  end
  object qObservInf: TQuery
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    SQL.Strings = (
      'select OBSERVACIO, C_INFERMER'
      'from BQOBSERVINF'
      'where C_INTERV = :c_interv'
      'order by ORDRE')
    Left = 118
    Top = 134
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_interv'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qIntervencions: TQuery
    AfterScroll = qIntervencionsAfterScroll
    OnCalcFields = qIntervencionsCalcFields
    DatabaseName = 'Interna'
    DataSource = wDataVerHis.dsFili
    SQL.Strings = (
      'select B.*, T.C_PRESTACIO, T.C_PLANTA, M.METGE as metge_Metge,'
      '          MM.METGE as Metge_UModi,'
      '          CD.N_ICD as diag_op_N_ICD, CP.N_ICD as proced_N_ICD,'
      
        '          GD.N_ICD as gdiag_op_N_ICD, GP.N_ICD as gproced_N_ICD,' +
        '         '
      '          MC.METGE as cirurgia_Metge, MA.METGE as anest_Metge,'
      
        '          O.N_CODI as protesi_N_Codi, O2.N_CODI as protesi2_N_Co' +
        'di,'
      '          P.N_PROFI as profilaxi_N_Profi,'
      
        '          TC.N_CODI as tipuscir_N_Codi, TI.N_CODI as tipusinterv' +
        '_N_Codi,'
      
        '          Q.N_CODI as quirofan_N_Codi, E.N_CODI as Especialit_N_' +
        'Codi, '
      '          S.N_CODI as sang_N_Codi,  C.N_CODI as Estat_N_Codi, '
      
        '          C2.N_CODI as N_Estat_CMA, D.N_CODI as Descontaminacio_' +
        'Pell,'
      
        '          CT.N_CODI as N_Temperatura, C.ORDRE, BQA.C_ESTAT, CA.N' +
        '_CODI as Estat_FullAnestesia,'
      '          CMA.N_CODI as Motiu_Anulacio'
      'from BQUIRURGIC B'
      'left outer join TRACTAMENTS T on B.C_TRACTAMENT = T.C_TRACTAMENT'
      
        'left outer join CODIICD CD on B.C_DIAG_OP = CD.C_ICD AND B.VERSI' +
        'OCIM = CD.VERSIOCIM'
      
        'left outer join CODIICD GD on B.G_DIAG_OP = GD.C_ICD AND B.VERSI' +
        'OCIM_G = GD.VERSIOCIM'
      
        'left outer join CODIICD CP on B.C_PROCEDIMENT = CP.C_ICD AND B.V' +
        'ERSIOCIM=CP.VERSIOCIM'
      
        'left outer join CODIICD GP on B.G_PROCEDIMENT = GP.C_ICD AND B.V' +
        'ERSIOCIM_G=GP.VERSIOCIM'
      'left outer join METGES M on B.C_METGE_PREPARA = M.CODI'
      'left outer join METGES MM on B.USER_UMODI = MM.CODI'
      'left outer join METGES MC on B.C_CIRURGIA = MC.CODI'
      'left outer join METGES MA on B.C_ANESTESIOLEG = MA.CODI'
      
        'left outer join CODICAMPSALFA O on B.C_PROTESI = O.C_CODI and O.' +
        'TIPUSCODI = '#39'PROTESI'#39
      
        'left outer join CODICAMPSALFA O2 on B.C_PROTESI2 = O2.C_CODI and' +
        ' O2.TIPUSCODI = '#39'PROTESI'#39' AND O2.ORDRE>0'
      'left outer join PROFILAXIS P on B.C_PROFILAXI = P.C_PROFI'
      
        'left outer join CODICAMPS TC on B.C_TIPUSCIRURGIA = TC.C_CODI an' +
        'd TC.TIPUSCODI = '#39'CIRURGIA'#39
      
        'left outer join CODICAMPS TI on B.C_TIPUSINTERV = TI.C_CODI and ' +
        'TI.TIPUSCODI = '#39'TIPUSINTERV'#39
      
        'left outer join CODICAMPS Q on B.C_QUIROFAN = Q.C_CODI and Q.TIP' +
        'USCODI = '#39'QUIROFAN'#39
      
        'left outer join CODICAMPS E on B.C_ESPECIALITAT = E.C_CODI and E' +
        '.TIPUSCODI = '#39'ESPECIALITAT'#39
      
        'left outer join CODICAMPS S on B.C_SANG = S.C_CODI and S.TIPUSCO' +
        'DI = '#39'SANG'#39
      
        'left outer join CODICAMPS C on B.ESTAT = C.C_CODI and C.TIPUSCOD' +
        'I = '#39'ESTATQUIROFAN'#39
      
        'left outer join CODICAMPS C2 on B.ESTAT_CMA = C2.C_CODI and C2.T' +
        'IPUSCODI = '#39'ESTATPOST'#39
      
        'left outer join CODICAMPS D on B.DESCONT_PELL = D.C_CODI and D.T' +
        'IPUSCODI = '#39'BQ.DESCONT_PELL'#39
      
        'left outer join CODICAMPS CT on B.CTLTEMPERATURA = CT.C_CODI and' +
        ' CT.TIPUSCODI = '#39'BQ.CTL_TEMPERATURA'#39
      'left outer join BQANESTESIA BQA on B.C_INTERV=BQA.C_INTERV'
      
        'left outer join CODICAMPS CA on BQA.C_ESTAT=CA.C_CODI and CA.TIP' +
        'USCODI='#39'BQANESTESIA.ESTAT'#39
      
        'left outer join CODICAMPS CMA on B.C_MOTIU_ANULA=CMA.C_CODI and ' +
        'CMA.TIPUSCODI='#39'BQ.MOTIU_ANULA'#39
      'where B.C_HISTORIA = :num_hist'
      'order by C.ORDRE asc, B.DATA_ENTRADA desc, B.DATA_PREV')
    Left = 44
    Top = 134
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUM_HIST'
        ParamType = ptInput
        Size = 4
      end>
    object qIntervencionsdiag_ICD: TStringField
      FieldKind = fkCalculated
      FieldName = 'diag_ICD'
      Size = 140
      Calculated = True
    end
    object qIntervencionsproc_ICD: TStringField
      FieldKind = fkCalculated
      FieldName = 'proc_ICD'
      Size = 140
      Calculated = True
    end
    object qIntervencionsC_INTERV: TIntegerField
      FieldName = 'C_INTERV'
    end
    object qIntervencionsC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object qIntervencionsC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qIntervencionsTIPUS_PRESTA: TStringField
      FieldName = 'TIPUS_PRESTA'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsC_DIAG_OP: TStringField
      FieldName = 'C_DIAG_OP'
      Size = 15
    end
    object qIntervencionsC_PROCEDIMENT: TStringField
      FieldName = 'C_PROCEDIMENT'
      Size = 15
    end
    object qIntervencionsDATA_PREV: TDateTimeField
      FieldName = 'DATA_PREV'
    end
    object qIntervencionsT_ANESTESIA: TStringField
      FieldName = 'T_ANESTESIA'
      Size = 40
    end
    object qIntervencionsC_METGE_PREPARA: TStringField
      FieldName = 'C_METGE_PREPARA'
      Size = 5
    end
    object qIntervencionsDATA_PREPARA: TDateTimeField
      FieldName = 'DATA_PREPARA'
    end
    object qIntervencionsITEM1_OK: TStringField
      FieldName = 'ITEM1_OK'
      Size = 2
    end
    object qIntervencionsITEM1_I: TStringField
      FieldName = 'ITEM1_I'
      Size = 3
    end
    object qIntervencionsITEM2_OK: TStringField
      FieldName = 'ITEM2_OK'
      Size = 2
    end
    object qIntervencionsITEM2_I: TStringField
      FieldName = 'ITEM2_I'
      Size = 3
    end
    object qIntervencionsITEM3_OK: TStringField
      FieldName = 'ITEM3_OK'
      Size = 2
    end
    object qIntervencionsITEM3_I: TStringField
      FieldName = 'ITEM3_I'
      Size = 3
    end
    object qIntervencionsITEM4_OK: TStringField
      FieldName = 'ITEM4_OK'
      Size = 2
    end
    object qIntervencionsITEM4_I: TStringField
      FieldName = 'ITEM4_I'
      Size = 3
    end
    object qIntervencionsITEM5_OK: TStringField
      FieldName = 'ITEM5_OK'
      Size = 2
    end
    object qIntervencionsITEM5_I: TStringField
      FieldName = 'ITEM5_I'
      Size = 3
    end
    object qIntervencionsITEM6_OK: TStringField
      FieldName = 'ITEM6_OK'
      Size = 2
    end
    object qIntervencionsITEM6_I: TStringField
      FieldName = 'ITEM6_I'
      Size = 3
    end
    object qIntervencionsITEM7_OK: TStringField
      FieldName = 'ITEM7_OK'
      Size = 2
    end
    object qIntervencionsITEM7_I: TStringField
      FieldName = 'ITEM7_I'
      Size = 3
    end
    object qIntervencionsITEM8_OK: TStringField
      FieldName = 'ITEM8_OK'
      Size = 2
    end
    object qIntervencionsITEM8_I: TStringField
      FieldName = 'ITEM8_I'
      Size = 3
    end
    object qIntervencionsITEM9_OK: TStringField
      FieldName = 'ITEM9_OK'
      Size = 2
    end
    object qIntervencionsITEM9_I: TStringField
      FieldName = 'ITEM9_I'
      Size = 3
    end
    object qIntervencionsITEM10_OK: TStringField
      FieldName = 'ITEM10_OK'
      Size = 2
    end
    object qIntervencionsITEM10_I: TStringField
      FieldName = 'ITEM10_I'
      Size = 3
    end
    object qIntervencionsITEM11_OK: TStringField
      FieldName = 'ITEM11_OK'
      Size = 2
    end
    object qIntervencionsITEM11_I: TStringField
      FieldName = 'ITEM11_I'
      Size = 3
    end
    object qIntervencionsITEM12_OK: TStringField
      FieldName = 'ITEM12_OK'
      Size = 2
    end
    object qIntervencionsITEM12_I: TStringField
      FieldName = 'ITEM12_I'
      Size = 3
    end
    object qIntervencionsITEM13_OK: TStringField
      FieldName = 'ITEM13_OK'
      Size = 2
    end
    object qIntervencionsITEM13_I: TStringField
      FieldName = 'ITEM13_I'
      Size = 3
    end
    object qIntervencionsITEM14_OK: TStringField
      FieldName = 'ITEM14_OK'
      Size = 2
    end
    object qIntervencionsITEM14_I: TStringField
      FieldName = 'ITEM14_I'
      Size = 3
    end
    object qIntervencionsITEM15_OK: TStringField
      FieldName = 'ITEM15_OK'
      Size = 2
    end
    object qIntervencionsITEM15_I: TStringField
      FieldName = 'ITEM15_I'
      Size = 3
    end
    object qIntervencionsITEM16_OK: TStringField
      FieldName = 'ITEM16_OK'
      Size = 2
    end
    object qIntervencionsITEM16_I: TStringField
      FieldName = 'ITEM16_I'
      Size = 3
    end
    object qIntervencionsITEM17_OK: TStringField
      FieldName = 'ITEM17_OK'
      Size = 2
    end
    object qIntervencionsITEM17_I: TStringField
      FieldName = 'ITEM17_I'
      Size = 3
    end
    object qIntervencionsC_CIRURGIA: TStringField
      FieldName = 'C_CIRURGIA'
      Size = 5
    end
    object qIntervencionsC_ANESTESIOLEG: TStringField
      FieldName = 'C_ANESTESIOLEG'
      Size = 5
    end
    object qIntervencionsC_BIOPSIA: TIntegerField
      FieldName = 'C_BIOPSIA'
    end
    object qIntervencionsBOSSES: TSmallintField
      FieldName = 'BOSSES'
    end
    object qIntervencionsDATA_ENTRADA: TDateTimeField
      FieldName = 'DATA_ENTRADA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qIntervencionsTEMPSA: TDateTimeField
      FieldName = 'TEMPSA'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsTEMPSB: TDateTimeField
      FieldName = 'TEMPSB'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsTEMPSC: TDateTimeField
      FieldName = 'TEMPSC'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsTEMPSD: TDateTimeField
      FieldName = 'TEMPSD'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsCOMENTARI: TMemoField
      FieldName = 'COMENTARI'
      BlobType = ftMemo
      Size = 1
    end
    object qIntervencionsANULACIO: TStringField
      FieldName = 'ANULACIO'
      Size = 40
    end
    object qIntervencionsM_ANULACIO: TStringField
      FieldName = 'M_ANULACIO'
      Size = 5
    end
    object qIntervencionsDATA_ANULACIO: TDateTimeField
      FieldName = 'DATA_ANULACIO'
    end
    object qIntervencionsESTAT: TSmallintField
      FieldName = 'ESTAT'
    end
    object qIntervencionsDATA_CURES: TDateTimeField
      FieldName = 'DATA_CURES'
    end
    object qIntervencionsNUMERACIO: TIntegerField
      FieldName = 'NUMERACIO'
    end
    object qIntervencionsNUM_INTERV: TSmallintField
      FieldName = 'NUM_INTERV'
    end
    object qIntervencionsOBSERVACIONS: TStringField
      FieldName = 'OBSERVACIONS'
      Size = 255
    end
    object qIntervencionsN_CIRURGIA: TStringField
      FieldName = 'N_CIRURGIA'
    end
    object qIntervencionsC_METGE_FI: TStringField
      FieldName = 'C_METGE_FI'
      Size = 5
    end
    object qIntervencionsDATA_METGE_FI: TDateTimeField
      FieldName = 'DATA_METGE_FI'
    end
    object qIntervencionsC_INFER_FI: TStringField
      FieldName = 'C_INFER_FI'
      Size = 5
    end
    object qIntervencionsDATA_INFER_FI: TDateTimeField
      FieldName = 'DATA_INFER_FI'
    end
    object qIntervencionsC_ESPERA: TIntegerField
      FieldName = 'C_ESPERA'
    end
    object qIntervencionsN_PROCEDIMENT2: TStringField
      FieldName = 'N_PROCEDIMENT2'
      Size = 40
    end
    object qIntervencionsC_PROFILAXI: TStringField
      FieldName = 'C_PROFILAXI'
      FixedChar = True
      Size = 2
    end
    object qIntervencionsDIETA_ABSSN: TStringField
      FieldName = 'DIETA_ABSSN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsVIASN: TStringField
      FieldName = 'VIASN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsSANGSN: TStringField
      FieldName = 'SANGSN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsPREMEDICACIOSN: TStringField
      FieldName = 'PREMEDICACIOSN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsZONES: TStringField
      FieldName = 'ZONES'
      FixedChar = True
      Size = 94
    end
    object qIntervencionsN_DIAG_OP: TStringField
      FieldName = 'N_DIAG_OP'
      Size = 80
    end
    object qIntervencionsN_PROCEDIMENT: TStringField
      FieldName = 'N_PROCEDIMENT'
      Size = 80
    end
    object qIntervencionsTIPUSMATERIAL: TStringField
      FieldName = 'TIPUSMATERIAL'
      FixedChar = True
      Size = 4
    end
    object qIntervencionsCOMENTFARMACIA: TMemoField
      FieldName = 'COMENTFARMACIA'
      BlobType = ftMemo
      Size = 1
    end
    object qIntervencionsENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsITEM18_OK: TStringField
      FieldName = 'ITEM18_OK'
      Size = 2
    end
    object qIntervencionsITEM18_I: TStringField
      FieldName = 'ITEM18_I'
      Size = 3
    end
    object qIntervencionsITEM19_OK: TStringField
      FieldName = 'ITEM19_OK'
      Size = 2
    end
    object qIntervencionsITEM19_I: TStringField
      FieldName = 'ITEM19_I'
      Size = 3
    end
    object qIntervencionsITEM20_OK: TStringField
      FieldName = 'ITEM20_OK'
      Size = 2
    end
    object qIntervencionsITEM20_I: TStringField
      FieldName = 'ITEM20_I'
      Size = 3
    end
    object qIntervencionsITEM21_OK: TStringField
      FieldName = 'ITEM21_OK'
      Size = 2
    end
    object qIntervencionsITEM21_I: TStringField
      FieldName = 'ITEM21_I'
      Size = 3
    end
    object qIntervencionsITEM22_OK: TStringField
      FieldName = 'ITEM22_OK'
      Size = 2
    end
    object qIntervencionsITEM22_I: TStringField
      FieldName = 'ITEM22_I'
      Size = 3
    end
    object qIntervencionsESTAT_CMA: TSmallintField
      FieldName = 'ESTAT_CMA'
    end
    object qIntervencionsCOMPLICAINTRASN: TStringField
      FieldName = 'COMPLICAINTRASN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsITEM23_OK: TStringField
      FieldName = 'ITEM23_OK'
      Size = 2
    end
    object qIntervencionsITEM23_I: TStringField
      FieldName = 'ITEM23_I'
      Size = 3
    end
    object qIntervencionsITEM24_OK: TStringField
      FieldName = 'ITEM24_OK'
      Size = 2
    end
    object qIntervencionsITEM24_I: TStringField
      FieldName = 'ITEM24_I'
      Size = 3
    end
    object qIntervencionsITEM25_OK: TStringField
      FieldName = 'ITEM25_OK'
      Size = 2
    end
    object qIntervencionsITEM25_I: TStringField
      FieldName = 'ITEM25_I'
      Size = 3
    end
    object qIntervencionsG_DIAG_OP: TStringField
      FieldName = 'G_DIAG_OP'
      Size = 15
    end
    object qIntervencionsG_PROCEDIMENT: TStringField
      FieldName = 'G_PROCEDIMENT'
      Size = 15
    end
    object qIntervencionsIDNEUROD: TStringField
      FieldName = 'IDNEUROD'
      Size = 15
    end
    object qIntervencionsIDNEUROP: TStringField
      FieldName = 'IDNEUROP'
      Size = 15
    end
    object qIntervencionsREINTERVENCIO: TStringField
      FieldName = 'REINTERVENCIO'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsDINARSN: TStringField
      FieldName = 'DINARSN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsRASURARSN: TStringField
      FieldName = 'RASURARSN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsC_ANESTESIA: TSmallintField
      FieldName = 'C_ANESTESIA'
    end
    object qIntervencionsC_PROTESI: TStringField
      FieldName = 'C_PROTESI'
      Size = 15
    end
    object qIntervencionsC_TIPUSCIRURGIA: TSmallintField
      FieldName = 'C_TIPUSCIRURGIA'
    end
    object qIntervencionsC_TIPUSINTERV: TSmallintField
      FieldName = 'C_TIPUSINTERV'
    end
    object qIntervencionsC_QUIROFAN: TSmallintField
      FieldName = 'C_QUIROFAN'
    end
    object qIntervencionsC_SANG: TSmallintField
      FieldName = 'C_SANG'
    end
    object qIntervencionsC_ESPECIALITAT: TSmallintField
      FieldName = 'C_ESPECIALITAT'
    end
    object qIntervencionsCONCHEMATIES: TSmallintField
      FieldName = 'CONCHEMATIES'
    end
    object qIntervencionsPLAQUETES: TSmallintField
      FieldName = 'PLAQUETES'
    end
    object qIntervencionsPLASMAFRESC: TSmallintField
      FieldName = 'PLASMAFRESC'
    end
    object qIntervencionsSANGTOTAL: TSmallintField
      FieldName = 'SANGTOTAL'
    end
    object qIntervencionsVERIFICAENTRADA: TStringField
      FieldName = 'VERIFICAENTRADA'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsSIGNIN: TStringField
      FieldName = 'SIGNIN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsTIMEOUT: TStringField
      FieldName = 'TIMEOUT'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsSIGNOUT: TStringField
      FieldName = 'SIGNOUT'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsPERCOMPLICACIO: TStringField
      FieldName = 'PERCOMPLICACIO'
      Size = 1
    end
    object qIntervencionsC_PRESTACIO: TStringField
      FieldName = 'C_PRESTACIO'
      Size = 4
    end
    object qIntervencionsC_PLANTA: TStringField
      FieldName = 'C_PLANTA'
      Size = 15
    end
    object qIntervencionsMETGE_METGE: TStringField
      FieldName = 'METGE_METGE'
    end
    object qIntervencionsDIAG_OP_N_ICD: TStringField
      FieldName = 'DIAG_OP_N_ICD'
      Size = 120
    end
    object qIntervencionsPROCED_N_ICD: TStringField
      FieldName = 'PROCED_N_ICD'
      Size = 120
    end
    object qIntervencionsGDIAG_OP_N_ICD: TStringField
      FieldName = 'GDIAG_OP_N_ICD'
      Size = 120
    end
    object qIntervencionsGPROCED_N_ICD: TStringField
      FieldName = 'GPROCED_N_ICD'
      Size = 120
    end
    object qIntervencionsCIRURGIA_METGE: TStringField
      FieldName = 'CIRURGIA_METGE'
    end
    object qIntervencionsANEST_METGE: TStringField
      FieldName = 'ANEST_METGE'
    end
    object qIntervencionsPROTESI_N_CODI: TStringField
      FieldName = 'PROTESI_N_CODI'
      Size = 60
    end
    object qIntervencionsPROFILAXI_N_PROFI: TStringField
      FieldName = 'PROFILAXI_N_PROFI'
      Size = 80
    end
    object qIntervencionsTIPUSCIR_N_CODI: TStringField
      FieldName = 'TIPUSCIR_N_CODI'
      Size = 40
    end
    object qIntervencionsTIPUSINTERV_N_CODI: TStringField
      FieldName = 'TIPUSINTERV_N_CODI'
      Size = 40
    end
    object qIntervencionsQUIROFAN_N_CODI: TStringField
      FieldName = 'QUIROFAN_N_CODI'
      Size = 40
    end
    object qIntervencionsESPECIALIT_N_CODI: TStringField
      FieldName = 'Especialit_N_Codi'
      Size = 40
    end
    object qIntervencionsSANG_N_CODI: TStringField
      FieldName = 'SANG_N_CODI'
      Size = 40
    end
    object qIntervencionsESTAT_N_CODI: TStringField
      FieldName = 'Estat_N_Codi'
      Size = 40
    end
    object qIntervencionsORDRE: TSmallintField
      FieldName = 'ORDRE'
    end
    object qIntervencionsN_ESTAT_CMA: TStringField
      FieldName = 'N_ESTAT_CMA'
      Size = 40
    end
    object qIntervencionsUSER_UMODI: TStringField
      FieldName = 'USER_UMODI'
      Size = 5
    end
    object qIntervencionsMETGE_UMODI: TStringField
      FieldName = 'METGE_UMODI'
    end
    object qIntervencionsDATA_UMODI: TDateTimeField
      FieldName = 'DATA_UMODI'
    end
    object qIntervencionsC_ESTATFAC: TSmallintField
      FieldName = 'C_ESTATFAC'
    end
    object qIntervencionsC_CENTREFAC: TStringField
      FieldName = 'C_CENTREFAC'
      Size = 2
    end
    object qIntervencionsC_CLIENT: TStringField
      FieldName = 'C_CLIENT'
      Size = 3
    end
    object qIntervencionsC_DELEGACIO: TStringField
      FieldName = 'C_DELEGACIO'
      Size = 4
    end
    object qIntervencionsREALITZADA: TStringField
      FieldName = 'REALITZADA'
      Size = 1
    end
    object qIntervencionsC_PROTESI2: TStringField
      FieldName = 'C_PROTESI2'
      Size = 15
    end
    object qIntervencionsPROTESI2_N_CODI: TStringField
      FieldName = 'PROTESI2_N_CODI'
      Size = 60
    end
    object qIntervencionsBILATERAL: TStringField
      FieldName = 'BILATERAL'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsPREU: TFloatField
      FieldName = 'PREU'
    end
    object qIntervencionsREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 40
    end
    object qIntervencionsIMPLANT: TSmallintField
      FieldName = 'IMPLANT'
    end
    object qIntervencionsENVIAT_SAP: TStringField
      FieldName = 'ENVIAT_SAP'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsVERSIOCIM: TIntegerField
      FieldName = 'VERSIOCIM'
    end
    object qIntervencionsVERSIOCIM_G: TIntegerField
      FieldName = 'VERSIOCIM_G'
    end
    object qIntervencionsDESCONT_PELL: TSmallintField
      FieldName = 'DESCONT_PELL'
    end
    object qIntervencionsDESCONTAMINACIO_PELL: TStringField
      FieldName = 'DESCONTAMINACIO_PELL'
      Size = 40
    end
    object qIntervencionsITEM26_OK: TStringField
      FieldName = 'ITEM26_OK'
      Size = 2
    end
    object qIntervencionsITEM26_I: TStringField
      FieldName = 'ITEM26_I'
      Size = 3
    end
    object qIntervencionsITEM27_OK: TStringField
      FieldName = 'ITEM27_OK'
      Size = 2
    end
    object qIntervencionsITEM27_I: TStringField
      FieldName = 'ITEM27_I'
      Size = 3
    end
    object qIntervencionsHORAINIATB1: TDateTimeField
      DisplayLabel = '1a dosi ATB'
      DisplayWidth = 12
      FieldName = 'HORAINIATB1'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsHORAFIATB1: TDateTimeField
      DisplayWidth = 12
      FieldName = 'HORAFIATB1'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsHORAINIATB2: TDateTimeField
      DisplayLabel = '2a dosi ATB'
      DisplayWidth = 12
      FieldName = 'HORAINIATB2'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsHORAFIATB2: TDateTimeField
      DisplayWidth = 12
      FieldName = 'HORAFIATB2'
      DisplayFormat = 'hh:nn'
    end
    object qIntervencionsCTLTEMPERATURA: TSmallintField
      FieldName = 'CTLTEMPERATURA'
    end
    object qIntervencionsCTLGLICEMIA: TStringField
      FieldName = 'CTLGLICEMIA'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsN_TEMPERATURA: TStringField
      FieldName = 'N_TEMPERATURA'
      Size = 40
    end
    object qIntervencionsMATERIALSN: TStringField
      FieldName = 'MATERIALSN'
      FixedChar = True
      Size = 1
    end
    object qIntervencionsC_ESTAT: TSmallintField
      FieldName = 'C_ESTAT'
    end
    object qIntervencionsESTAT_FULLANESTESIA: TStringField
      FieldName = 'ESTAT_FULLANESTESIA'
      Size = 40
    end
    object qIntervencionsMOTIU_ANULACIO: TStringField
      FieldName = 'MOTIU_ANULACIO'
      Size = 40
    end
  end
  object qEnquestaCMA: TQuery
    AfterScroll = qEnquestaCMAAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    SQL.Strings = (
      'select * '
      'from ENQUESTACMA'
      'where C_INTERV = :c_interv')
    Left = 332
    Top = 238
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERV'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsEnquestaCMA: TDataSource
    DataSet = qEnquestaCMA
    Left = 332
    Top = 286
  end
  object qComplPQ: TQuery
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    SQL.Strings = (
      
        'select P.*, C1.N_CODI as N_COMPLICACIONS, cast(P.G_INFECCIO as V' +
        'arChar(2)) || '#39'. '#39' || C2.N_CODI as INFECCIO'
      'from BQCOMPL_PQ           P'
      
        'join CODICAMPSCURT C1 on C1.TIPUSCODI = '#39'BQ_COMPLICACIONS'#39' and P' +
        '.COMPLICACIONS = C1.C_CODI'
      
        'left outer join CODICAMPS C2 on C2.TIPUSCODI = '#39'BQ.INFECCIONSPQ'#39 +
        ' and P.G_INFECCIO = C2.C_CODI'
      'where P.C_INTERV = :c_interv')
    Left = 401
    Top = 238
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERV'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsComplPQ: TDataSource
    DataSet = qComplPQ
    Left = 401
    Top = 286
  end
  object cComplPQ: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select B.C_HISTORIA, F.NOMCOMPLET,  B.DATA_ENTRADA, '
      '           B.N_PROCEDIMENT, A.C_IMPLANT, M.METGE, '
      '           A.DATA_ALARMA, A.MESOS, A.C_INTERV'
      'from BQCOMPL_PQA A'
      'join BQUIRURGIC B on A.C_INTERV = B.C_INTERV'
      'join METGES M on B.C_CIRURGIA = M.CODI'
      'left outer join FILIACIO F on B.C_HISTORIA = F.NUM_HIST'
      'where A.ESTAT = 0'
      'and A.DATA_ALARMA <= '#39'TODAY'#39
      
        'and (A.METGE = '#39'P02'#39' or A.ESPECIALITAT = '#39'02'#39')    /* filtre usua' +
        'ri    9 */'
      'order by A.DATA_ALARMA')
    Dicionario1 = wDataBlocQuirurgic.BQuirurgic
    Dicionario2 = wDataBlocQuirurgic.BQCompl_PQA
    Dicionario3 = wDataBasics.Filiacio
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    CamposOculta.Strings = (
      'C_INTERV')
    AlSeleccionar = cComplPQAlSeleccionar
    EnActivar = cComplPQEnActivar
    EnDesactivar = cComplPQEnDesactivar
    AlTancar = cComplPQAlTancar
    Left = 456
    Top = 238
  end
  object MB: TMessageBoxes
    Items = <
      item
        Body.Strings = (
          ''
          ' EL PACIENT HA PRESENTAT ALGUNA INFECCI'#211' DEL LLOC QUIR'#218'RGIC  '
          ' DURANT ELS DARRERS 30 DIES?'
          ''
          
            ' (Tamb'#233' podeu indicar que no s'#39'ha pogut fer el seguiment del pac' +
            'ient) '
          '')
        Caption = 'Complicacions postquir'#250'rgiques'
        Icon = 2
        Button1 = 'S'#205
        Button2 = 'NO'
        Button3 = 'No seguiment'
        Name = 'ComplPQ-I'
        DefaultOne = 0
        CanClose = True
        AdjustHeight = True
        AllButtonsSameSize = True
      end
      item
        Body.Strings = (
          ''
          ' EL PACIENT HA PRESENTAT ALGUNA COMPLICACI'#211'  '
          ' DURANT ELS DARRERS 30 DIES?'
          '')
        Caption = 'Complicacions postquir'#250'rgiques'
        Icon = 2
        Button1 = 'S'#205
        Button2 = 'NO'
        Name = 'ComplPQ-C'
        DefaultOne = 0
        CanClose = True
        AdjustHeight = True
        AllButtonsSameSize = True
      end>
    Glyphs = wData.Images
    Icons = wDataOMbvg.mbIcones
    TestOne = '[Name]'
    Left = 512
    Top = 238
  end
  object qCMultinivell: TQuery
    AfterScroll = qCMultinivellAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    SQL.Strings = (
      'select * from bqmultinivell'
      'where c_interv=:c_interv'
      'order by data_p desc')
    Left = 574
    Top = 239
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERV'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsCMultinivell: TDataSource
    DataSet = qCMultinivell
    Left = 575
    Top = 293
  end
  object qCMN: TQuery
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    SQL.Strings = (
      
        'select m.*, b.data_prev, b.entrada, mp.metge as metgep, ms.metge' +
        ' as metges from bqmultinivell m'
      'join bquirurgic b on m.c_interv=b.c_interv'
      'left join metges mp on m.c_user_p=mp.codi'
      'left join metges ms on m.c_user_s=ms.codi'
      'where m.c_interv=:c_interv'
      '/* and m.id=id*/ order by m.data_p desc ')
    Left = 638
    Top = 239
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERV'
        ParamType = ptInput
        Size = 4
      end>
    object qCMNID: TIntegerField
      FieldName = 'ID'
    end
    object qCMNC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qCMNC_INTERV: TIntegerField
      FieldName = 'C_INTERV'
    end
    object qCMNPD_FLEXE_CADERA: TStringField
      FieldName = 'PD_FLEXE_CADERA'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_ADD_CADERA: TStringField
      FieldName = 'PD_ADD_CADERA'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_ESCURCA_ISQUIO: TStringField
      FieldName = 'PD_ESCURCA_ISQUIO'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_FLEXE_GENOLL: TStringField
      FieldName = 'PD_FLEXE_GENOLL'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_ROTULA_ALTA: TStringField
      FieldName = 'PD_ROTULA_ALTA'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_ROT_TIB_EXT: TStringField
      FieldName = 'PD_ROT_TIB_EXT'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_PEU_PLA_VALG: TStringField
      FieldName = 'PD_PEU_PLA_VALG'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_PEU_EQUI: TStringField
      FieldName = 'PD_PEU_EQUI'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_PEU_VAR: TStringField
      FieldName = 'PD_PEU_VAR'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_FLEXE_CADERA: TStringField
      FieldName = 'PE_FLEXE_CADERA'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_ADD_CADERA: TStringField
      FieldName = 'PE_ADD_CADERA'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_ESCURCA_ISQUIO: TStringField
      FieldName = 'PE_ESCURCA_ISQUIO'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_FLEXE_GENOLL: TStringField
      FieldName = 'PE_FLEXE_GENOLL'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_ROTULA_ALTA: TStringField
      FieldName = 'PE_ROTULA_ALTA'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_ROT_TIB_EXT: TStringField
      FieldName = 'PE_ROT_TIB_EXT'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_PEU_PLA_VALG: TStringField
      FieldName = 'PE_PEU_PLA_VALG'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_PEU_EQUI: TStringField
      FieldName = 'PE_PEU_EQUI'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_PEU_VAR: TStringField
      FieldName = 'PE_PEU_VAR'
      FixedChar = True
      Size = 1
    end
    object qCMNC_USER_P: TStringField
      FieldName = 'C_USER_P'
      Size = 5
    end
    object qCMNDATA_P: TDateTimeField
      FieldName = 'DATA_P'
    end
    object qCMNSD_TPSOAS: TStringField
      FieldName = 'SD_TPSOAS'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_TADDUCTOR: TStringField
      FieldName = 'SD_TADDUCTOR'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_TRECTE_ANT: TStringField
      FieldName = 'SD_TRECTE_ANT'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_TISQUIOS: TStringField
      FieldName = 'SD_TISQUIOS'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_OFEM_DEFLEX: TStringField
      FieldName = 'SD_OFEM_DEFLEX'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_OFEM_DERRO: TStringField
      FieldName = 'SD_OFEM_DERRO'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_TRECTE_ANT_DISTAL: TStringField
      FieldName = 'SD_TRECTE_ANT_DISTAL'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_DESCENS_TTA: TStringField
      FieldName = 'SD_DESCENS_TTA'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_OTIB_DERRO: TStringField
      FieldName = 'SD_OTIB_DERRO'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_KALIX: TStringField
      FieldName = 'SD_KALIX'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_ATRO_TALO: TStringField
      FieldName = 'SD_ATRO_TALO'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_TAQUILES: TStringField
      FieldName = 'SD_TAQUILES'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_TRI_ARTRODESI: TStringField
      FieldName = 'SD_TRI_ARTRODESI'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_TTRICEPS_SURAL: TStringField
      FieldName = 'SD_TTRICEPS_SURAL'
      FixedChar = True
      Size = 1
    end
    object qCMNSD_TTP: TStringField
      FieldName = 'SD_TTP'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TPSOAS: TStringField
      FieldName = 'SE_TPSOAS'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TADDUCTOR: TStringField
      FieldName = 'SE_TADDUCTOR'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TRECTE_ANT: TStringField
      FieldName = 'SE_TRECTE_ANT'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TISQUIOS: TStringField
      FieldName = 'SE_TISQUIOS'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_OFEM_DEFLEX: TStringField
      FieldName = 'SE_OFEM_DEFLEX'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_OFEM_DERRO: TStringField
      FieldName = 'SE_OFEM_DERRO'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TRECTE_ANT_DISTAL: TStringField
      FieldName = 'SE_TRECTE_ANT_DISTAL'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_DESCENS_TTA: TStringField
      FieldName = 'SE_DESCENS_TTA'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_OTIB_DERRO: TStringField
      FieldName = 'SE_OTIB_DERRO'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_KALIX: TStringField
      FieldName = 'SE_KALIX'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_ATRO_TALO: TStringField
      FieldName = 'SE_ATRO_TALO'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TAQUILES: TStringField
      FieldName = 'SE_TAQUILES'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TRI_ARTRODESI: TStringField
      FieldName = 'SE_TRI_ARTRODESI'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TTRICEPS_SURAL: TStringField
      FieldName = 'SE_TTRICEPS_SURAL'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TTP: TStringField
      FieldName = 'SE_TTP'
      FixedChar = True
      Size = 1
    end
    object qCMNC_USER_S: TStringField
      FieldName = 'C_USER_S'
      Size = 5
    end
    object qCMNDATA_S: TDateTimeField
      FieldName = 'DATA_S'
    end
    object qCMNDATA_PREV: TDateTimeField
      FieldName = 'DATA_PREV'
    end
    object qCMNENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
    end
    object qCMNMETGEP: TStringField
      FieldName = 'METGEP'
    end
    object qCMNMETGES: TStringField
      FieldName = 'METGES'
    end
    object qCMNSD_TTA: TStringField
      FieldName = 'SD_TTA'
      FixedChar = True
      Size = 1
    end
    object qCMNSE_TTA: TStringField
      FieldName = 'SE_TTA'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TPSOAS: TStringField
      FieldName = 'PD_TPSOAS'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TRECTE_ANT: TStringField
      FieldName = 'PD_TRECTE_ANT'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TADDUCTOR: TStringField
      FieldName = 'PD_TADDUCTOR'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TISQUIOS: TStringField
      FieldName = 'PD_TISQUIOS'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_OFEM_DEFLEX: TStringField
      FieldName = 'PD_OFEM_DEFLEX'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_OFEM_DERRO: TStringField
      FieldName = 'PD_OFEM_DERRO'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TRECTE_ANT_DISTAL: TStringField
      FieldName = 'PD_TRECTE_ANT_DISTAL'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_DESCENS_TTA: TStringField
      FieldName = 'PD_DESCENS_TTA'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_OTIB_DERRO: TStringField
      FieldName = 'PD_OTIB_DERRO'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_KALIX: TStringField
      FieldName = 'PD_KALIX'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_ATRO_TALO: TStringField
      FieldName = 'PD_ATRO_TALO'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TRI_ARTRODESI: TStringField
      FieldName = 'PD_TRI_ARTRODESI'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TAQUILES: TStringField
      FieldName = 'PD_TAQUILES'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TTRICEPS_SURAL: TStringField
      FieldName = 'PD_TTRICEPS_SURAL'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TTP: TStringField
      FieldName = 'PD_TTP'
      FixedChar = True
      Size = 1
    end
    object qCMNPD_TTA: TStringField
      FieldName = 'PD_TTA'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TPSOAS: TStringField
      FieldName = 'PE_TPSOAS'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TRECTE_ANT: TStringField
      FieldName = 'PE_TRECTE_ANT'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TADDUCTOR: TStringField
      FieldName = 'PE_TADDUCTOR'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TISQUIOS: TStringField
      FieldName = 'PE_TISQUIOS'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_OFEM_DEFLEX: TStringField
      FieldName = 'PE_OFEM_DEFLEX'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_OFEM_DERRO: TStringField
      FieldName = 'PE_OFEM_DERRO'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TRECTE_ANT_DISTAL: TStringField
      FieldName = 'PE_TRECTE_ANT_DISTAL'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_DESCENS_TTA: TStringField
      FieldName = 'PE_DESCENS_TTA'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_OTIB_DERRO: TStringField
      FieldName = 'PE_OTIB_DERRO'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_KALIX: TStringField
      FieldName = 'PE_KALIX'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_ATRO_TALO: TStringField
      FieldName = 'PE_ATRO_TALO'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TRI_ARTRODESI: TStringField
      FieldName = 'PE_TRI_ARTRODESI'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TAQUILES: TStringField
      FieldName = 'PE_TAQUILES'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TTRICEPS_SURAL: TStringField
      FieldName = 'PE_TTRICEPS_SURAL'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TTP: TStringField
      FieldName = 'PE_TTP'
      FixedChar = True
      Size = 1
    end
    object qCMNPE_TTA: TStringField
      FieldName = 'PE_TTA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCMN: TDataSource
    AutoEdit = False
    DataSet = qCMN
    Left = 639
    Top = 293
  end
  object qPreinduccio: TQuery
    AfterScroll = qPreinduccioAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsIntervencions
    SQL.Strings = (
      'select * '
      'from BQPREINDUCCIO'
      'where C_INTERV = :c_interv'
      'order by id desc'
      'rows 1')
    Left = 580
    Top = 110
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERV'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsPreinduccio: TDataSource
    DataSet = qPreinduccio
    Left = 580
    Top = 158
  end
  object qInsertBQ: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into BQUIRURGIC ('
      'C_Interv, C_Tractament, C_Espera, C_Historia, '
      'Tipus_Presta, C_Especialitat,'
      'C_Diag_Op, G_Diag_Op, N_Diag_Op, IdNeuroD, '
      
        'C_Procediment, G_Procediment, N_Procediment, N_Procediment2, IDN' +
        'euroP,'
      'PerComplicacio, Data_Prev, T_Anestesia,   '
      'C_TipusInterv, C_Quirofan, C_TipusCirurgia, C_Profilaxi,'
      'Dieta_AbsSN, RasurarSN, SangSN, ViaSN, PremedicacioSN,'
      'Zones, Observacions, Estat, C_Metge_Prepara, Data_Prepara,'
      'Item1_OK, Item1_I, Item4_OK, Item4_I, '
      'Item7_OK, Item7_I, Item8_OK, Item8_I, '
      'Item10_OK, Item10_I, Item12_OK, Item12_I, '
      'Item20_OK, Item20_I, Item21_OK, Item21_I,'
      'Item26_OK, Item26_I, Item27_OK, Item27_I, MaterialSN'
      ')'
      
        'select GEN_ID(G_BLOCQUIRURGIC, 1), C_Tractament, C_Espera, C_His' +
        'toria, '
      'Tipus_Presta, C_Especialitat,'
      'C_Diag_Op, G_Diag_Op, N_Diag_Op, IdNeuroD, '
      
        'C_Procediment, G_Procediment, N_Procediment, N_Procediment2, IDN' +
        'euroP,'
      'PerComplicacio, Data_Prev, T_Anestesia,   '
      'C_TipusInterv, C_Quirofan, C_TipusCirurgia, C_Profilaxi,'
      ':DIETA, :RASURAR, :SANG, :VIA, "N",'
      'Zones, Observacions, 10, C_Metge_Prepara, Data_Prepara,'
      'Item1_OK, Item1_I, Item4_OK, Item4_I, '
      '"N", NULL, :ITEM8, :ITEM8_USER,'
      'Item10_OK, Item10_I, :ITEM12, :ITEM12_USER,  '
      'Item20_OK, Item20_I, Item21_OK, Item21_I,'
      'Item26_OK, Item26_I, Item27_OK, Item27_I, :MATERIAL'
      'from bquirurgic'
      'where c_interv= :C_INTERV')
    Left = 254
    Top = 134
    ParamData = <
      item
        DataType = ftString
        Name = 'DIETA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RASURAR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SANG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITEM8'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITEM8_USER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITEM12'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITEM12_USER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_INTERV'
        ParamType = ptInput
      end>
  end
end
