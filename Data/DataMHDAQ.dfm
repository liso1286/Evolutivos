object wDataMHDAQ: TwDataMHDAQ
  OldCreateOrder = False
  Left = 209
  Top = 214
  Height = 271
  Width = 951
  object dsBombes: TDataSource
    DataSet = bBombes
    Left = 32
    Top = 64
  end
  object dsBombesLin: TDataSource
    DataSet = bBombesLin
    Left = 100
    Top = 64
  end
  object dsRecarregues: TDataSource
    DataSet = qRecarregues
    Left = 178
    Top = 64
  end
  object qRecarregues: TQuery
    DatabaseName = 'Interna'
    DataSource = wDataVerHis.dsFili
    SQL.Strings = (
      'select B.*, C.N_CODI as N_ACCIO'
      'from BCFRECARREGUES B'
      
        'join CODICAMPS C on C.TIPUSCODI = "BCF_ACCIO"  and B.ACCIO = C.C' +
        '_CODI'
      'where B.C_HISTORIA = :num_hist'
      'order by B.DATA_RECARREGA')
    Left = 178
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUM_HIST'
        ParamType = ptInput
        Size = 4
      end>
  end
  object bBombes: THYSqlBrowse
    AfterPost = AfterPost
    AfterScroll = bBombesAfterScroll
    DatabaseName = 'Interna'
    DataSource = wDataVerHis.dsFili
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataMHDA.BcfBombes
    IndiceActivo = 'histordre'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'c_historia = :num_hist')
    Left = 32
    Top = 16
    object bBombes_ID_Bomba: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Bomba'
      DisplayWidth = 8
      FieldName = 'ID_Bomba'
      DisplayFormat = '#,##0;; '
    end
    object bBombes_C_Historia: TIntegerField
      Tag = 100
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldName = 'C_Historia'
      DisplayFormat = '#,##0;; '
    end
    object bBombes_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'C Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
      DisplayFormat = '#,##0;; '
    end
    object bBombes_Ordre: TSmallintField
      Tag = 100
      DisplayWidth = 2
      FieldName = 'Ordre'
      DisplayFormat = '0"a";; '
    end
    object bBombes_Tipus_Bomba: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus de bomba'
      DisplayWidth = 2
      FieldName = 'Tipus_Bomba'
    end
    object bBombes_Num_Serie: TStringField
      Tag = 100
      DisplayLabel = 'N'#250'm. S'#232'rie'
      DisplayWidth = 50
      FieldName = 'Num_Serie'
      Size = 50
    end
    object bBombes_Data_Implantacio: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data implantaci'#243
      DisplayWidth = 10
      FieldName = 'Data_Implantacio'
      DisplayFormat = 'dd"."mm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bBombes_Observacions: TStringField
      Tag = 100
      DisplayWidth = 250
      FieldName = 'Observacions'
      Size = 250
    end
    object bBombes_Estat: TStringField
      Tag = 100
      DisplayWidth = 1
      FieldName = 'Estat'
      Size = 1
    end
    object bBombes_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object bBombes_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bBombes_Data_A: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data anul'#183'laci'#243
      DisplayWidth = 19
      FieldName = 'Data_A'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bBombes_C0_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'hist_NUM_HIST'
      LookupKeyFields = 'NUM_HIST'
      KeyFields = 'hist'
      Calculated = True
    end
    object bBombes_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Nom Complet'
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'hist_NomComplet'
      LookupKeyFields = 'NomComplet'
      KeyFields = 'hist'
      Size = 80
      Calculated = True
    end
    object bBombes_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Sexe'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'hist_SEXO'
      LookupKeyFields = 'SEXO'
      KeyFields = 'hist'
      Size = 1
      Calculated = True
    end
    object bBombes_C0_3: TIntegerField
      Tag = 101
      DisplayLabel = 'Edat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_Edat'
      LookupKeyFields = 'Edat'
      KeyFields = 'hist'
      Calculated = True
    end
    object bBombes_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'EsViu'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'hist_EsViu'
      LookupKeyFields = 'EsViu'
      KeyFields = 'hist'
      Size = 1
      Calculated = True
    end
    object bBombes_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 1'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_APELLIDO1'
      LookupKeyFields = 'APELLIDO1'
      KeyFields = 'hist'
      Calculated = True
    end
    object bBombes_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Cognom 2'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_APELLIDO2'
      LookupKeyFields = 'APELLIDO2'
      KeyFields = 'hist'
      Calculated = True
    end
    object bBombes_C0_7: TStringField
      Tag = 101
      DisplayLabel = 'Nom'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'hist_NOMBRE'
      LookupKeyFields = 'NOMBRE'
      KeyFields = 'hist'
      Calculated = True
    end
    object bBombes_C0_8: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_UNITAT'
      LookupKeyFields = 'UNITAT'
      KeyFields = 'hist'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bBombes_C0_9: TSmallintField
      Tag = 101
      DisplayLabel = 'Unitat M'#232'dica'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_C_UnitatMedica'
      LookupKeyFields = 'C_UnitatMedica'
      KeyFields = 'hist'
      Calculated = True
    end
    object bBombes_C0_10: TStringField
      Tag = 101
      DisplayLabel = 'Tel'#233'fon'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'hist_TELEFONO'
      LookupKeyFields = 'TELEFONO'
      KeyFields = 'hist'
      Size = 10
      Calculated = True
    end
    object bBombes_C0_11: TStringField
      Tag = 101
      DisplayLabel = 'Tsi'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'hist_TSI'
      LookupKeyFields = 'TSI'
      KeyFields = 'hist'
      Size = 14
      Calculated = True
    end
    object bBombes_C0_12: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Naix.'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'hist_FECHA_NAC'
      LookupKeyFields = 'FECHA_NAC'
      KeyFields = 'hist'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bBombes_C0_13: TStringField
      Tag = 101
      DisplayLabel = 'Residencia'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'hist_RESIDENCIA'
      LookupKeyFields = 'RESIDENCIA'
      KeyFields = 'hist'
      Size = 7
      Calculated = True
    end
    object bBombes_C0_14: TStringField
      Tag = 101
      DisplayLabel = 'Pais'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_PAIS'
      LookupKeyFields = 'PAIS'
      KeyFields = 'hist'
      Size = 3
      Calculated = True
    end
    object bBombes_C0_15: TStringField
      Tag = 101
      DisplayLabel = 'Provincia'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'hist_PROVINCIA'
      LookupKeyFields = 'PROVINCIA'
      KeyFields = 'hist'
      Size = 44
      Calculated = True
    end
    object bBombes_C0_16: TStringField
      Tag = 101
      DisplayLabel = 'Poblaci'#243
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'hist_POBLACIO'
      LookupKeyFields = 'POBLACIO'
      KeyFields = 'hist'
      Size = 44
      Calculated = True
    end
    object bBombes_C0_17: TSmallintField
      Tag = 101
      DisplayLabel = 'UM_ANTIGA'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_UM_ANTIGA'
      LookupKeyFields = 'UM_ANTIGA'
      KeyFields = 'hist'
      Calculated = True
    end
    object bBombes_C0_18: TSmallintField
      Tag = 101
      DisplayLabel = 'Lateralitat'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'hist_c_Lateralitat'
      LookupKeyFields = 'c_Lateralitat'
      KeyFields = 'hist'
      Calculated = True
    end
    object bBombes_C1_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tract_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bBombes_C1_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'tract'
      Calculated = True
    end
    object bBombes_C1_2: TStringField
      Tag = 101
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'tract_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'tract'
      Size = 4
      Calculated = True
    end
    object bBombes_C1_3: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Ingr'#233's'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_Ingres'
      LookupKeyFields = 'Data_Ingres'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bBombes_C1_4: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Alta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_Alta'
      LookupKeyFields = 'Data_Alta'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bBombes_C1_5: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data PreAlta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_PreAlta'
      LookupKeyFields = 'Data_PreAlta'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bBombes_C1_6: TStringField
      Tag = 101
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_C_Coordinador'
      LookupKeyFields = 'C_Coordinador'
      KeyFields = 'tract'
      Size = 5
      Calculated = True
    end
    object bBombes_C1_7: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_DiagnosticAlta'
      LookupKeyFields = 'C_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombes_C1_8: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Alta'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_N_DiagnosticAlta'
      LookupKeyFields = 'N_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object bBombes_C1_9: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_PercentatgePacient'
      LookupKeyFields = 'PercentatgePacient'
      KeyFields = 'tract'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object bBombes_C1_10: TStringField
      Tag = 101
      DisplayLabel = 'Refer'#232'ncia'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_Referencia'
      LookupKeyFields = 'Referencia'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object bBombes_C1_11: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tract_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'tract'
      Size = 2
      Calculated = True
    end
    object bBombes_C1_12: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'tract'
      Size = 3
      Calculated = True
    end
    object bBombes_C1_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'tract_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'tract'
      Size = 4
      Calculated = True
    end
    object bBombes_C1_14: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'tract_C_EstatFac'
      LookupKeyFields = 'C_EstatFac'
      KeyFields = 'tract'
      Calculated = True
    end
    object bBombes_C1_15: TSmallintField
      Tag = 101
      DisplayLabel = 'Vegada'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_Vegada'
      LookupKeyFields = 'Vegada'
      KeyFields = 'tract'
      Calculated = True
    end
    object bBombes_C1_16: TSmallintField
      Tag = 101
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_C_Motiu'
      LookupKeyFields = 'C_Motiu'
      KeyFields = 'tract'
      Calculated = True
    end
    object bBombes_C1_17: TStringField
      Tag = 101
      DisplayLabel = 'Fi de proc'#233's'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tract_Fi_Proces'
      LookupKeyFields = 'Fi_Proces'
      KeyFields = 'tract'
      Size = 1
      Calculated = True
    end
    object bBombes_C1_18: TStringField
      Tag = 101
      DisplayLabel = 'Metge proc'#233's'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_Metge_Proces'
      LookupKeyFields = 'Metge_Proces'
      KeyFields = 'tract'
      Size = 5
      Calculated = True
    end
    object bBombes_C1_19: TStringField
      Tag = 101
      DisplayLabel = 'Planta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_Planta'
      LookupKeyFields = 'C_Planta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombes_C1_20: TIntegerField
      Tag = 101
      DisplayLabel = 'Estat informe alta'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_EstatInformeAlta'
      LookupKeyFields = 'EstatInformeAlta'
      KeyFields = 'tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bBombes_C1_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_DiagnosticIngres'
      LookupKeyFields = 'C_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombes_C1_22: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_G_DiagnosticIngres'
      LookupKeyFields = 'G_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombes_C1_23: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Ingr'#233's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_N_DiagnosticIngres'
      LookupKeyFields = 'N_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object bBombes_C1_24: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_G_DiagnosticAlta'
      LookupKeyFields = 'G_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombes_C2_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'usuari_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'usuari'
      Size = 5
      Calculated = True
    end
    object bBombes_C2_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bBombes_C2_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'usuari'
      Size = 15
      Calculated = True
    end
    object bBombes_C2_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'usuari_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'usuari'
      Size = 4
      Calculated = True
    end
    object bBombes_C2_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'usuari'
      Size = 2
      Calculated = True
    end
    object bBombes_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'usuari'
      Size = 2
      Calculated = True
    end
    object bBombes_C2_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuari_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'usuari'
      Size = 1
      Calculated = True
    end
    object bBombes_C2_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bBombes_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuari_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'usuari'
      Size = 1
      Calculated = True
    end
    object bBombes_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'usuari_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'usuari'
      Size = 40
      Calculated = True
    end
    object bBombes_C3_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipusbomba_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'tipusbomba'
      Calculated = True
    end
    object bBombes_C3_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tipusbomba_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'tipusbomba'
      Size = 40
      Calculated = True
    end
    object bBombes_C3_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tipusbomba_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'tipusbomba'
      Calculated = True
    end
    object bBombes_C3_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tipusbomba_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'tipusbomba'
      Size = 40
      Calculated = True
    end
    object bBombes_C4_0: TStringField
      Tag = 101
      DisplayLabel = 'Tipus'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'estat_TipusCodi'
      LookupKeyFields = 'TipusCodi'
      KeyFields = 'estat'
      Calculated = True
    end
    object bBombes_C4_1: TStringField
      Tag = 101
      DisplayLabel = 'C_Codi'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'estat_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'estat'
      Size = 1
      Calculated = True
    end
    object bBombes_C4_2: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'estat_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'estat'
      Size = 60
      Calculated = True
    end
    object bBombes_C4_3: TStringField
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
    object bBombes_C4_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'estat_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'estat'
      Calculated = True
    end
  end
  object InsOM: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into ORDRESMEDIQUES ('
      'C_ORDREMEDICA, C_TRACTAMENT, C_HISTORIA, GTN,'
      'C_VIA, C_FREQUENCIA, C_FREQUENCIA_SF, DOSI, UNITAT_MESURA, '
      'DATA_INICI, DURADA, HORA_INICI, HORA_INICI_T, HORA_INICI_SF, '
      'C_ESTAT, DATA_PAUTAT, METGE_PAUTAT, OBSERVACIONS'
      ')'
      'values ('
      ':c_ordremedica, :c_tractament, :c_historia, :gtn,'
      '"ITE", "DU", "DU", :dosi, "AMPO", '
      ':data_inici, 1, 12, 12, 12, '
      ':c_estat, :data_pautat, :metge_pautat, :observacions'
      ')')
    Left = 254
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_ordremedica'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_historia'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'gtn'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dosi'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data_inici'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_estat'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_pautat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'metge_pautat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'observacions'
        ParamType = ptInput
      end>
  end
  object InsRecarrega: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into BCFRECARREGUES ('
      
        '  ID_RECARREGA, C_HISTORIA, C_TRACTAMENT, ACCIO, DATA_RECARREGA,' +
        ' '
      '  OBSERVACIONS, C_OM, AMPOLLES, CONCENTRACIO, GTN, '
      '  DOSI, ALARMA, DATA_PROPERA, C_OM_FUTURA, C_USUARI, DATA'
      ')'
      'values ('
      
        ' :id_recarrega, :c_historia, :c_tractament, :accio, :data_recarr' +
        'ega,'
      ' :observacions, :c_om, :ampolles, :concentracio, :gtn, '
      ' :dosi, :alarma, :data_propera, :c_om_futura, :c_usuari, :data'
      ')')
    Left = 316
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_recarrega'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_historia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'accio'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data_recarrega'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'observacions'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_om'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ampolles'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'concentracio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'gtn'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dosi'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'alarma'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_propera'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_om_futura'
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
  object InsAgenda: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into ESPERA ('
      'C_ESPERA, C_HISTORIA, C_PRESTACIO, DATA_INCLUSIO,'
      'DATA_PREINGRES, HORA_PREINGRES, NOM, COGNOM1, COGNOM2,'
      'TELEFON, C_MOTIU, C_ESTAT, C_UNITAT, C_COORDINADOR,'
      'COMENTARIMETGE, C_OM, LLOC'
      ')'
      'values ('
      ':c_espera, :c_historia, :c_prestacio, :data_inclusio,'
      ':data_preingres, :hora_preingres, :nom, :cognom1, :cognom2,'
      ':telefon, :c_motiu, :c_estat, :c_unitat, :c_coordinador,'
      ':comentarimetge, :c_om, :lloc'
      ')')
    Left = 390
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_espera'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_historia'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_prestacio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_inclusio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_preingres'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'hora_preingres'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nom'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cognom1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cognom2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'telefon'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_motiu'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_estat'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_unitat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_coordinador'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'comentarimetge'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_om'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lloc'
        ParamType = ptInput
      end>
  end
  object UpdOM: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update ORDRESMEDIQUES '
      'set  GTN = :gtn,'
      '       DOSI = :dosi,'
      '       DATA_INICI = :data_inici,'
      '       C_ESTAT = :c_estat,'
      '       DATA_PAUTAT = :data_pautat,'
      '       METGE_PAUTAT = :metge_pautat,'
      '       OBSERVACIONS = :observacions'
      'where C_ORDREMEDICA = :c_ordremedica')
    Left = 254
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'gtn'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dosi'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data_inici'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_estat'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_pautat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'metge_pautat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'observacions'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_ordremedica'
        ParamType = ptInput
      end>
  end
  object bBombesLin: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataMHDA.BcfBombesLin
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Padre = dsBombes
    IndicePadre = 'FKbomba'
    Left = 100
    Top = 16
    object bBombesLin_ID_Bomba: TIntegerField
      Tag = 100
      DisplayLabel = 'ID Bomba'
      DisplayWidth = 8
      FieldName = 'ID_Bomba'
      DisplayFormat = '#,##0;; '
    end
    object bBombesLin_Linia: TIntegerField
      Tag = 100
      DisplayLabel = 'L'#237'nia'
      DisplayWidth = 8
      FieldName = 'Linia'
      DisplayFormat = '#,##0;; '
    end
    object bBombesLin_Tipus_Linia: TSmallintField
      Tag = 100
      DisplayLabel = 'Tipus de l'#237'nia'
      DisplayWidth = 2
      FieldName = 'Tipus_Linia'
    end
    object bBombesLin_Data_Linia: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data l'#237'nia'
      DisplayWidth = 10
      FieldName = 'Data_Linia'
      DisplayFormat = 'dd"."mm"."yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object bBombesLin_Observacions: TStringField
      Tag = 100
      DisplayWidth = 250
      FieldName = 'Observacions'
      Size = 250
    end
    object bBombesLin_C_Usuari: TStringField
      Tag = 100
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldName = 'C_Usuari'
      Size = 5
    end
    object bBombesLin_Data: TDateTimeField
      Tag = 100
      DisplayWidth = 19
      FieldName = 'Data'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bBombesLin_Anulat: TStringField
      Tag = 100
      DisplayLabel = 'Anul'#183'lat'
      DisplayWidth = 1
      FieldName = 'Anulat'
      Size = 1
    end
    object bBombesLin_Data_A: TDateTimeField
      Tag = 100
      DisplayLabel = 'Data anul'#183'laci'#243
      DisplayWidth = 19
      FieldName = 'Data_A'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      EditMask = '!99/99/9999 99:99:99;1; '
    end
    object bBombesLin_C_Tractament: TIntegerField
      Tag = 100
      DisplayLabel = 'C Tractament'
      DisplayWidth = 8
      FieldName = 'C_Tractament'
      DisplayFormat = '#,##0;; '
    end
    object bBombesLin_Num_Serie: TStringField
      Tag = 100
      DisplayLabel = 'N'#250'mero de s'#232'rie del cat'#232'ter'
      DisplayWidth = 50
      FieldName = 'Num_Serie'
      Size = 50
    end
    object bBombesLin_C0_0: TStringField
      Tag = 101
      DisplayLabel = 'C'#243'dig Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'usuari_Codi'
      LookupKeyFields = 'Codi'
      KeyFields = 'usuari'
      Size = 5
      Calculated = True
    end
    object bBombesLin_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Metge'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'usuari_Metge'
      LookupKeyFields = 'Metge'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bBombesLin_C0_2: TStringField
      Tag = 101
      DisplayLabel = 'Cognoms'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'usuari_Cognom'
      LookupKeyFields = 'Cognom'
      KeyFields = 'usuari'
      Size = 15
      Calculated = True
    end
    object bBombesLin_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Tractament'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'usuari_Tracte'
      LookupKeyFields = 'Tracte'
      KeyFields = 'usuari'
      Size = 4
      Calculated = True
    end
    object bBombesLin_C0_4: TStringField
      Tag = 101
      DisplayLabel = 'Grup'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_C_Grup'
      LookupKeyFields = 'C_Grup'
      KeyFields = 'usuari'
      Size = 2
      Calculated = True
    end
    object bBombesLin_C0_5: TStringField
      Tag = 101
      DisplayLabel = 'Especialitat'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'usuari_C_Especial'
      LookupKeyFields = 'C_Especial'
      KeyFields = 'usuari'
      Size = 2
      Calculated = True
    end
    object bBombesLin_C0_6: TStringField
      Tag = 101
      DisplayLabel = 'Baixa'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuari_Baixa'
      LookupKeyFields = 'Baixa'
      KeyFields = 'usuari'
      Size = 1
      Calculated = True
    end
    object bBombesLin_C0_7: TIntegerField
      Tag = 101
      DisplayLabel = 'Acces Inhabilitat'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'usuari_AInhabilitat'
      LookupKeyFields = 'AInhabilitat'
      KeyFields = 'usuari'
      Calculated = True
    end
    object bBombesLin_C0_8: TStringField
      Tag = 101
      DisplayLabel = 'EsUserExtra'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'usuari_EsUserExtra'
      LookupKeyFields = 'EsUserExtra'
      KeyFields = 'usuari'
      Size = 1
      Calculated = True
    end
    object bBombesLin_C0_9: TStringField
      Tag = 101
      DisplayLabel = 'Nomsencer'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'usuari_Nomsencer'
      LookupKeyFields = 'Nomsencer'
      KeyFields = 'usuari'
      Size = 40
      Calculated = True
    end
    object bBombesLin_C1_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tipuslinia_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'tipuslinia'
      Calculated = True
    end
    object bBombesLin_C1_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tipuslinia_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'tipuslinia'
      Size = 40
      Calculated = True
    end
    object bBombesLin_C1_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tipuslinia_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'tipuslinia'
      Calculated = True
    end
    object bBombesLin_C1_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tipuslinia_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'tipuslinia'
      Size = 40
      Calculated = True
    end
    object bBombesLin_C2_0: TIntegerField
      Tag = 101
      DisplayLabel = 'ID Bomba'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'bomba_ID_Bomba'
      LookupKeyFields = 'ID_Bomba'
      KeyFields = 'bomba'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bBombesLin_C2_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#250'm. Hist.'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'bomba_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'bomba'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bBombesLin_C2_2: TIntegerField
      Tag = 101
      DisplayLabel = 'C Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'bomba_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'bomba'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bBombesLin_C2_3: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'bomba_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'bomba'
      DisplayFormat = '0"a";; '
      Calculated = True
    end
    object bBombesLin_C2_4: TSmallintField
      Tag = 101
      DisplayLabel = 'Tipus de bomba'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'bomba_Tipus_Bomba'
      LookupKeyFields = 'Tipus_Bomba'
      KeyFields = 'bomba'
      Calculated = True
    end
    object bBombesLin_C2_5: TStringField
      Tag = 101
      DisplayLabel = 'N'#250'm. S'#232'rie'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'bomba_Num_Serie'
      LookupKeyFields = 'Num_Serie'
      KeyFields = 'bomba'
      Size = 50
      Calculated = True
    end
    object bBombesLin_C2_6: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data implantaci'#243
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'bomba_Data_Implantacio'
      LookupKeyFields = 'Data_Implantacio'
      KeyFields = 'bomba'
      DisplayFormat = 'dd"."mm"."yyyy'
      Calculated = True
    end
    object bBombesLin_C2_7: TStringField
      Tag = 101
      DisplayLabel = 'Observacions'
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'bomba_Observacions'
      LookupKeyFields = 'Observacions'
      KeyFields = 'bomba'
      Size = 250
      Calculated = True
    end
    object bBombesLin_C2_8: TStringField
      Tag = 101
      DisplayLabel = 'Estat'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'bomba_Estat'
      LookupKeyFields = 'Estat'
      KeyFields = 'bomba'
      Size = 1
      Calculated = True
    end
    object bBombesLin_C2_9: TStringField
      Tag = 101
      DisplayLabel = 'Usuari'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'bomba_C_Usuari'
      LookupKeyFields = 'C_Usuari'
      KeyFields = 'bomba'
      Size = 5
      Calculated = True
    end
    object bBombesLin_C2_10: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data'
      DisplayWidth = 19
      FieldKind = fkCalculated
      FieldName = 'bomba_Data'
      LookupKeyFields = 'Data'
      KeyFields = 'bomba'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      Calculated = True
    end
    object bBombesLin_C2_11: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data anul'#183'laci'#243
      DisplayWidth = 19
      FieldKind = fkCalculated
      FieldName = 'bomba_Data_A'
      LookupKeyFields = 'Data_A'
      KeyFields = 'bomba'
      DisplayFormat = 'dd"."mm"."yyyy hh":"nn":"ss'
      Calculated = True
    end
    object bBombesLin_C3_0: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Tractament'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'tract_C_Tractament'
      LookupKeyFields = 'C_Tractament'
      KeyFields = 'tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bBombesLin_C3_1: TIntegerField
      Tag = 101
      DisplayLabel = 'N'#186' Historia'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_C_Historia'
      LookupKeyFields = 'C_Historia'
      KeyFields = 'tract'
      Calculated = True
    end
    object bBombesLin_C3_2: TStringField
      Tag = 101
      DisplayLabel = 'Prestaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'tract_C_Prestacio'
      LookupKeyFields = 'C_Prestacio'
      KeyFields = 'tract'
      Size = 4
      Calculated = True
    end
    object bBombesLin_C3_3: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Ingr'#233's'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_Ingres'
      LookupKeyFields = 'Data_Ingres'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bBombesLin_C3_4: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data Alta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_Alta'
      LookupKeyFields = 'Data_Alta'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bBombesLin_C3_5: TDateTimeField
      Tag = 101
      DisplayLabel = 'Data PreAlta'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'tract_Data_PreAlta'
      LookupKeyFields = 'Data_PreAlta'
      KeyFields = 'tract'
      DisplayFormat = 'dd"."mmm"."yyyy'
      Calculated = True
    end
    object bBombesLin_C3_6: TStringField
      Tag = 101
      DisplayLabel = 'Coordinador'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_C_Coordinador'
      LookupKeyFields = 'C_Coordinador'
      KeyFields = 'tract'
      Size = 5
      Calculated = True
    end
    object bBombesLin_C3_7: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_DiagnosticAlta'
      LookupKeyFields = 'C_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombesLin_C3_8: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Alta'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_N_DiagnosticAlta'
      LookupKeyFields = 'N_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object bBombesLin_C3_9: TFloatField
      Tag = 101
      DisplayLabel = '% Pacient'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_PercentatgePacient'
      LookupKeyFields = 'PercentatgePacient'
      KeyFields = 'tract'
      DisplayFormat = '#,##0.###" %";; '
      Calculated = True
    end
    object bBombesLin_C3_10: TStringField
      Tag = 101
      DisplayLabel = 'Refer'#232'ncia'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_Referencia'
      LookupKeyFields = 'Referencia'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object bBombesLin_C3_11: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Centre'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'tract_C_CentreFac'
      LookupKeyFields = 'C_CentreFac'
      KeyFields = 'tract'
      Size = 2
      Calculated = True
    end
    object bBombesLin_C3_12: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Client'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_C_Client'
      LookupKeyFields = 'C_Client'
      KeyFields = 'tract'
      Size = 3
      Calculated = True
    end
    object bBombesLin_C3_13: TStringField
      Tag = 101
      DisplayLabel = 'N'#186' Delegaci'#243
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'tract_C_Delegacio'
      LookupKeyFields = 'C_Delegacio'
      KeyFields = 'tract'
      Size = 4
      Calculated = True
    end
    object bBombesLin_C3_14: TSmallintField
      Tag = 101
      DisplayLabel = 'Estat Facturaci'#243
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'tract_C_EstatFac'
      LookupKeyFields = 'C_EstatFac'
      KeyFields = 'tract'
      Calculated = True
    end
    object bBombesLin_C3_15: TSmallintField
      Tag = 101
      DisplayLabel = 'Vegada'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_Vegada'
      LookupKeyFields = 'Vegada'
      KeyFields = 'tract'
      Calculated = True
    end
    object bBombesLin_C3_16: TSmallintField
      Tag = 101
      DisplayLabel = 'Motiu'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_C_Motiu'
      LookupKeyFields = 'C_Motiu'
      KeyFields = 'tract'
      Calculated = True
    end
    object bBombesLin_C3_17: TStringField
      Tag = 101
      DisplayLabel = 'Fi de proc'#233's'
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'tract_Fi_Proces'
      LookupKeyFields = 'Fi_Proces'
      KeyFields = 'tract'
      Size = 1
      Calculated = True
    end
    object bBombesLin_C3_18: TStringField
      Tag = 101
      DisplayLabel = 'Metge proc'#233's'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'tract_Metge_Proces'
      LookupKeyFields = 'Metge_Proces'
      KeyFields = 'tract'
      Size = 5
      Calculated = True
    end
    object bBombesLin_C3_19: TStringField
      Tag = 101
      DisplayLabel = 'Planta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_Planta'
      LookupKeyFields = 'C_Planta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombesLin_C3_20: TIntegerField
      Tag = 101
      DisplayLabel = 'Estat informe alta'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'tract_EstatInformeAlta'
      LookupKeyFields = 'EstatInformeAlta'
      KeyFields = 'tract'
      DisplayFormat = '#,##0;; '
      Calculated = True
    end
    object bBombesLin_C3_21: TStringField
      Tag = 101
      DisplayLabel = 'Codi Diag.Principal Ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_C_DiagnosticIngres'
      LookupKeyFields = 'C_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombesLin_C3_22: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal ingr'#233's'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_G_DiagnosticIngres'
      LookupKeyFields = 'G_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
    object bBombesLin_C3_23: TStringField
      Tag = 101
      DisplayLabel = 'Literal Diag.Principal Ingr'#233's'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'tract_N_DiagnosticIngres'
      LookupKeyFields = 'N_DiagnosticIngres'
      KeyFields = 'tract'
      Size = 40
      Calculated = True
    end
    object bBombesLin_C3_24: TStringField
      Tag = 101
      DisplayLabel = 'Subcodi Diag. principal alta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'tract_G_DiagnosticAlta'
      LookupKeyFields = 'G_DiagnosticAlta'
      KeyFields = 'tract'
      Size = 15
      Calculated = True
    end
  end
  object qTBotulinica: TQuery
    AfterScroll = qTBotulinicaAfterScroll
    OnCalcFields = qTBotulinicaCalcFields
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select O.METGE_PAUTAT, T.INDICACIO,CC.N_CODI,T.AVAL_INDICACIO1,T' +
        '.AVAL_INDICACIO2, T.AVAL_COMENT, O.DOSI,'
      
        '          O.UNITAT_MESURA,O.DATA_PAUTAT,T.ANULAT,O.DATA_SUSPENSI' +
        'O,O.METGE_SUSPENSIO, T.ID_ORIGEN, '
      
        '          T.C_USUARI, T.DATA, T.DATA_REAVAL, T.C_ORDREMEDICA, T.' +
        'REAVALUAT, T.ID, T.C_HISTORIA'
      'from TBOTULINICA T'
      'LEFT JOIN ORDRESMEDIQUES O ON T.C_ORDREMEDICA=O.C_ORDREMEDICA'
      
        'LEFT JOIN CODICAMPS CC ON T.INDICACIO=CC.C_CODI AND CC.TIPUSCODI' +
        '='#39'TBOTULINICA.INDICA'#39
      'where T.C_HISTORIA = :historia'
      'order by T.ID_ORIGEN,T.DATA')
    Left = 504
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptUnknown
      end>
    object qTBotulinicaMETGE_PAUTAT: TStringField
      FieldName = 'METGE_PAUTAT'
      Size = 5
    end
    object qTBotulinicaINDICACIO: TSmallintField
      FieldName = 'INDICACIO'
    end
    object qTBotulinicaN_CODI: TStringField
      FieldName = 'N_CODI'
      Size = 40
    end
    object qTBotulinicaAVAL_INDICACIO1: TStringField
      FieldName = 'AVAL_INDICACIO1'
      Size = 3
    end
    object qTBotulinicaAVAL_INDICACIO2: TStringField
      FieldName = 'AVAL_INDICACIO2'
      Size = 3
    end
    object qTBotulinicaDOSI: TFloatField
      FieldName = 'DOSI'
    end
    object qTBotulinicaUNITAT_MESURA: TStringField
      FieldName = 'UNITAT_MESURA'
      Size = 4
    end
    object qTBotulinicaDATA_PAUTAT: TDateTimeField
      FieldName = 'DATA_PAUTAT'
    end
    object qTBotulinicaANULAT: TStringField
      FieldName = 'ANULAT'
      FixedChar = True
      Size = 1
    end
    object qTBotulinicaDATA_SUSPENSIO: TDateTimeField
      FieldName = 'DATA_SUSPENSIO'
    end
    object qTBotulinicaMETGE_SUSPENSIO: TStringField
      FieldName = 'METGE_SUSPENSIO'
      Size = 5
    end
    object qTBotulinicaAVAL_COMENT: TStringField
      FieldName = 'AVAL_COMENT'
      Size = 250
    end
    object qTBotulinicaEscala: TStringField
      FieldKind = fkCalculated
      FieldName = 'Escala'
      Size = 50
      Calculated = True
    end
    object qTBotulinicaAvaluacio: TStringField
      FieldKind = fkCalculated
      FieldName = 'Avaluacio'
      Size = 100
      Calculated = True
    end
    object qTBotulinicaID_ORIGEN: TIntegerField
      FieldName = 'ID_ORIGEN'
    end
    object qTBotulinicaDATA_REAVAL: TDateTimeField
      FieldName = 'DATA_REAVAL'
    end
    object qTBotulinicaC_USUARI: TStringField
      FieldName = 'C_USUARI'
      Size = 5
    end
    object qTBotulinicaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qTBotulinicaC_ORDREMEDICA: TIntegerField
      FieldName = 'C_ORDREMEDICA'
    end
    object qTBotulinicaREAVALUAT: TStringField
      FieldName = 'REAVALUAT'
      FixedChar = True
      Size = 1
    end
    object qTBotulinicaID: TIntegerField
      FieldName = 'ID'
    end
    object qTBotulinicaC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
  end
  object dsTBotulinica: TDataSource
    AutoEdit = False
    DataSet = qTBotulinica
    Left = 504
    Top = 64
  end
  object dsNEepisodis: TDataSource
    DataSet = qNEepisodis
    Left = 32
    Top = 180
  end
  object qNEepisodis: TQuery
    AfterOpen = qNEepisodisAfterOpen
    AfterScroll = qNEepisodisAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select E.*, C1.N_CODI as N_ACTIVITAT,  '
      '          C2.N_CODI as N_DURADA,  M.METGE as METGE_FI'
      'from NE_EPISODIS E'
      
        'left join CODICAMPS C1 on E.ACTIVITAT = C1.C_CODI and C1.TIPUSCO' +
        'DI = "NUTRICIOE.ACTIVITAT"'
      
        'join CODICAMPS C2 on E.DURADA = C2.C_CODI and C2.TIPUSCODI = "NU' +
        'TRICIOE.DURADA"'
      'left outer join METGES M on E.C_METGE_FI = M.CODI'
      'where E.C_HISTORIA = :historia'
      'order by E.ID')
    Left = 32
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end>
  end
  object qNEdetall: TQuery
    AfterScroll = qNEdetallAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsNEepisodis
    SQL.Strings = (
      'select D.*, G.N_GTN,  U.N_UM,  AnsiLower(V.N_VIA) as N_VIA, '
      '          C.N_CODI as N_FORMA_ADM, '
      '          AnsiLower(F.N_FREQUENCIA) as N_FREQ,  M.METGE         '
      'from NE_DETALL D'
      'join GTN G on D.GTN = G.GTN'
      'join UNITATSMIDA U on D.UM = U.C_UM'
      'join VIA V on D.VIA = V.C_VIA'
      
        'join CODICAMPS C on D.FORMA_ADM = C.C_CODI and C.TIPUSCODI = "NU' +
        'TRICIOE.ADMIN"'
      'join FREQUENCIES F on D.FREQ = F.C_FREQUENCIA'
      'join METGES M on D.C_METGE = M.CODI'
      'where D.ID = :id'
      'order by D.DATA')
    Left = 98
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsNEdetall: TDataSource
    DataSet = qNEdetall
    Left = 98
    Top = 180
  end
  object dsNEmotius: TDataSource
    DataSet = qNEmotius
    Left = 162
    Top = 180
  end
  object dsNEcomplic: TDataSource
    DataSet = qNEcomplic
    Left = 230
    Top = 180
  end
  object qNEmotius: TQuery
    DatabaseName = 'Interna'
    DataSource = dsNEepisodis
    SQL.Strings = (
      
        'select M.C_MOTIU, cast(C.PARAMS || '#39' '#39' || F_IfLong(E.N_MOTIU, '#39'=' +
        #39', '#39#39', '#39#39', E.N_MOTIU) as Varchar(250)) as N_MOTIU '
      'from NE_MOTIUS M'
      
        'left outer join CODICAMPS C on M.C_MOTIU = C.C_CODI and C.TIPUSC' +
        'ODI = "NUTRICIOE.MOTIU"'
      'left outer join NE_EPISODIS E on M.ID = E.ID and C.C_CODI = 99'
      'where M.ID = :id'
      'order by M.C_MOTIU')
    Left = 162
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qNEcomplic: TQuery
    DatabaseName = 'Interna'
    DataSource = dsNEepisodis
    SQL.Strings = (
      'select C.*, C1.N_CODI as N_COMPLICACIO, M.METGE'
      'from NE_COMPLICACIONS C'
      
        'join CODICAMPS C1 on C.C_COMPLICACIO = C1.C_CODI and C1.TIPUSCOD' +
        'I = "NUTRICIOE.COMPL"'
      'join METGES M on C.C_METGE = M.CODI'
      'where C.ID = :id'
      'order by C.DATA')
    Left = 230
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object updNEepisodi: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update NE_EPISODIS '
      'set MOTIU_FI = :motiu_fi, '
      '      C_METGE_FI = :metge_fi, '
      '      DATA_FI = :data_fi'
      'where ID = :id')
    Left = 378
    Top = 132
    ParamData = <
      item
        DataType = ftString
        Name = 'motiu_fi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'metge_fi'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_fi'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
  end
  object qEMAutoritzacio: TQuery
    AfterOpen = qEMAutoritzacioAfterOpen
    AfterScroll = qEMAutoritzacioAfterScroll
    OnCalcFields = qEMAutoritzacioCalcFields
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select E.ID,  E.C_HISTORIA, E.C_METGE, M.METGE, E.DATA_RENOVA,'
      
        '          E.DATA_FINALITZACIO, E.MOTIU_FINALITZACIO, S.METGE as ' +
        'METGE_FI,'
      '          E.DATA_INICI, E.DATA_PROPERA, E.COMENTARI,'
      '          E.C_USUARI, I.METGE as INFER, '
      
        '          E.C_OM, cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', P.N_PROD, G.N_' +
        'GTN) as VarChar(100)) as MEDICAMENT, '
      '          O.DOSI as DOSI_O, P.DOSI as DOSI_P, '
      
        '          cast(F_If(O.UNITAT_MESURA, '#39'='#39', '#39#39', P.UM, O.UNITAT_MES' +
        'URA) as VarChar(4)) as UM,'
      
        '          cast(AnsiLower(F_IfLong(V1.N_VIA, '#39'='#39', '#39#39', V2.N_VIA, V' +
        '1.N_VIA)) as VarChar(25)) as N_VIA, '
      '          AnsiLower(F.N_FREQUENCIA) as N_FREQ'
      'from EM_AUTORITZACIO E'
      'left outer join ORDRESMEDIQUES O  on E.C_OM = O.C_ORDREMEDICA'
      'left outer join GTN G on O.GTN =  G.GTN'
      'left outer join VIA V1 on O.C_VIA = V1.C_VIA'
      'left outer join FREQUENCIES F on O.C_FREQUENCIA = F.C_FREQUENCIA'
      'left outer join PRODUCTES P on E.C_PRODUCTE = P.C_PROD'
      'left outer join VIA V2 on P.C_VIA = V2.C_VIA'
      'left outer join  METGES M on E.C_METGE = M.CODI'
      'left outer join  METGES I on E.C_USUARI = I.CODI'
      'left outer join  METGES S on O.METGE_SUSPENSIO = S.CODI'
      'where E.C_HISTORIA = :historia'
      'order by E.ID')
    Left = 504
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end>
    object qEMAutoritzacioQUANT: TStringField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'QUANT'
      Calculated = True
    end
    object qEMAutoritzacioID: TIntegerField
      FieldName = 'ID'
    end
    object qEMAutoritzacioC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qEMAutoritzacioC_METGE: TStringField
      FieldName = 'C_METGE'
      Size = 5
    end
    object qEMAutoritzacioMETGE: TStringField
      FieldName = 'METGE'
    end
    object qEMAutoritzacioDATA_RENOVA: TDateTimeField
      FieldName = 'DATA_RENOVA'
    end
    object qEMAutoritzacioDATA_FINALITZACIO: TDateTimeField
      FieldName = 'DATA_FINALITZACIO'
    end
    object qEMAutoritzacioMOTIU_FINALITZACIO: TStringField
      FieldName = 'MOTIU_FINALITZACIO'
      Size = 100
    end
    object qEMAutoritzacioMETGE_FI: TStringField
      FieldName = 'METGE_FI'
    end
    object qEMAutoritzacioDATA_INICI: TDateTimeField
      FieldName = 'DATA_INICI'
    end
    object qEMAutoritzacioDATA_PROPERA: TDateTimeField
      FieldName = 'DATA_PROPERA'
    end
    object qEMAutoritzacioCOMENTARI: TStringField
      FieldName = 'COMENTARI'
      Size = 100
    end
    object qEMAutoritzacioC_USUARI: TStringField
      FieldName = 'C_USUARI'
      Size = 5
    end
    object qEMAutoritzacioINFER: TStringField
      FieldName = 'INFER'
    end
    object qEMAutoritzacioC_OM: TIntegerField
      FieldName = 'C_OM'
    end
    object qEMAutoritzacioMEDICAMENT: TStringField
      DisplayWidth = 100
      FieldName = 'MEDICAMENT'
      FixedChar = True
      Size = 100
    end
    object qEMAutoritzacioDOSI_O: TFloatField
      FieldName = 'DOSI_O'
    end
    object qEMAutoritzacioDOSI_P: TFloatField
      FieldName = 'DOSI_P'
    end
    object qEMAutoritzacioUM: TStringField
      DisplayWidth = 4
      FieldName = 'UM'
      FixedChar = True
      Size = 4
    end
    object qEMAutoritzacioN_VIA: TStringField
      DisplayWidth = 25
      FieldName = 'N_VIA'
      FixedChar = True
      Size = 25
    end
    object qEMAutoritzacioN_FREQ: TStringField
      FieldName = 'N_FREQ'
      FixedChar = True
      Size = 254
    end
  end
  object dsEMAutoritzacio: TDataSource
    DataSet = qEMAutoritzacio
    Left = 504
    Top = 180
  end
  object qNEautoritza: TQuery
    DatabaseName = 'Interna'
    DataSource = dsNEepisodis
    SQL.Strings = (
      'select * '
      'from NE_AUTORITZACIONS'
      'where ID = :id'
      'order by DATA_AUTORITZA desc'
      'rows 1')
    Left = 305
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsNEautoritza: TDataSource
    DataSet = qNEautoritza
    Left = 302
    Top = 180
  end
  object cEMRenovar: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select  A.C_HISTORIA, F.NOMCOMPLET, P.N_PROD as PRODUCTE,'
      
        '            O.DOSI, O.UNITAT_MESURA as UM, O.C_VIA, O.C_FREQUENC' +
        'IA,'
      '            A.DATA_RENOVA, A.DATA_PROPERA,'
      '            Min(E.DATA_PREINGRES) as DATA_PREINGRES'
      'from     EM_AUTORITZACIO  A'
      'join      ORDRESMEDIQUES O on A.C_OM = O.C_ORDREMEDICA'
      'join      PRODUCTES P on O.C_PRODUCTE = P.C_PROD'
      'left outer join  FILIACIO F on A.C_HISTORIA = F.NUM_HIST'
      'left outer join  ESPERA E on  A.C_HISTORIA =E.C_HISTORIA'
      
        '                                        and E.C_COORDINADOR = "P' +
        '28"  /* metge - l'#237'nia 9 */'
      
        '                                        and E.DATA_PREINGRES >= ' +
        '"TODAY"'
      '                                        and E.EXCLOS = "N"'
      
        'where A.DATA_FINALITZACIO is NULL           /* tractaments actiu' +
        's */'
      
        'and     A.DATA_PROPERA is not NULL           /* no suspesos temp' +
        'oralment */'
      
        'and     A.DATA_RENOVA <= "TODAY" - 180  /* renovats fa m'#233's de 6 ' +
        'mesos */'
      '[AND FILTRO]'
      'group by A.C_HISTORIA, F.NOMCOMPLET, P.N_PROD,'
      '               O.DOSI, O.UNITAT_MESURA, O.C_VIA, O.C_FREQUENCIA,'
      '               A.DATA_RENOVA, A.DATA_PROPERA'
      '[ORDEN]')
    Dicionario1 = wDataMHDA.EM_Autoritzacio
    Dicionario2 = wDataBasics.Filiacio
    Titulo = 
      'Tractaments de l'#39'EM per renovar ('#250'ltima renovaci'#243' fa m'#233's de 6 me' +
      'sos)'
    Orden.Strings = (
      'data visita i renovaci'#243)
    OrdenDB.Strings = (
      'E.DATA_PREINGRES, A.DATA_RENOVA')
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
    AlSeleccionar = cEMRenovarAlSeleccionar
    AlPintarGrid = cEMRenovarAlPintarGrid
    Left = 588
    Top = 132
  end
  object qResourceE: TQuery
    AfterOpen = qResourceEAfterOpen
    AfterScroll = qResourceEAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select R.*, C1.N_CODI as N_CONSISTENCIA, C2.N_CODI as N_PERIODIC' +
        'ITAT, '
      '          M1.METGE, M2.METGE as METGE_FI, '
      '          M3.METGE as USUARI_DISP,  R.C_OM, '
      
        '          cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', P.N_PROD, G.N_GTN) as ' +
        'VarChar(100)) as MEDICAMENT, '
      '          O.C_PRODUCTE, O.DOSI as DOSI_O'
      'from RESOURCEE R'
      'join ORDRESMEDIQUES O  on R.C_OM = O.C_ORDREMEDICA'
      
        'join CODICAMPS C1 on C1.TIPUSCODI = "RE.CONSISTENCIA" and C1.R_C' +
        'ODI = O.DOSI '
      
        'join CODICAMPS C2 on C2.TIPUSCODI = "RE.PERIODICITAT" and C2.C_C' +
        'ODI = R.PERIODICITAT '
      'join GTN G on O.GTN =  G.GTN'
      'left outer join PRODUCTES P on O.C_PRODUCTE = P.C_PROD'
      'left outer join METGES M1 on R.C_METGE = M1.CODI'
      'left outer join METGES M2 on R.C_METGE_FI = M2.CODI'
      'left outer join METGES M3 on R.C_USUARI = M3.CODI'
      'where R.C_HISTORIA = :historia'
      'order by R.ID')
    Left = 704
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end>
  end
  object dsResourceE: TDataSource
    DataSet = qResourceE
    Left = 704
    Top = 180
  end
  object qREDisp: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select F_SoloFecha(DATA) as DATA, M.METGE as USUARI, CANTITAT||"' +
        ' "||"pots" as QUANTITAT '
      'from INTERF I'
      'left outer join METGES M on I.C_USUARI = M.CODI'
      'where I.C_HISTORIA = :historia'
      'and I.C_PROD = :c_producte'
      'order by I.DATA desc'
      'rows 1')
    Left = 768
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_producte'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsREDisp: TDataSource
    DataSet = qREDisp
    Left = 768
    Top = 180
  end
  object qDPE: TQuery
    AfterOpen = qDPEAfterOpen
    AfterScroll = qDPEAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'SELECT T.*, CM.N_CODI, CF.N_CENTREFAC, CL.N_CLIENT, D.N_DELEGACI' +
        'O, M.METGE'
      'FROM TRACTAMENTS T'
      
        'JOIN PRESTACODICAMPS PCC ON T.C_MOTIU = PCC.C_CODI AND PCC.TIPUS' +
        'CODI='#39'MOTIU'#39
      'JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        'LEFT JOIN CODICAMPS CM ON T.C_MOTIU=CM.C_CODI AND CM.TIPUSCODI='#39 +
        'MOTIU'#39
      'LEFT JOIN CENTREFAC CF ON T.C_CENTREFAC=CF.C_CENTREFAC'
      
        'LEFT JOIN CLIENTS CL ON T.C_CENTREFAC=CL.C_CENTREFAC AND T.C_CLI' +
        'ENT=CL.C_CLIENT'
      
        'LEFT JOIN DELEGACIONS D ON T.C_CENTREFAC=D.C_CENTREFAC AND T.C_C' +
        'LIENT=D.C_CLIENT AND T.C_DELEGACIO=D.C_DELEGACIO'
      'WHERE T.C_HISTORIA = :historia'
      'AND T.C_PRESTACIO = '#39'8888'#39
      'ORDER BY T.DATA_INGRES DESC')
    Left = 704
    Top = 20
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
        Value = '5566'
      end>
  end
  object dsDPE: TDataSource
    DataSet = qDPE
    Left = 704
    Top = 68
  end
  object qBQMat: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    AfterScroll = qBQMatAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT distinct L.c_interv, B.DATA_PREV, B.DATA_ENTRADA'
      '    FROM BQMAT_LIN l'
      '    JOIN BQUIRURGIC B ON L.C_INTERV= B.C_INTERV '
      '    WHERE L.c_historia= :Historia'
      '    ORDER BY L.c_interv')
    Left = 768
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end>
  end
  object dsBQMat: TDataSource
    DataSet = qBQMat
    Left = 767
    Top = 71
  end
  object dsBQMaterial: TDataSource
    DataSet = qBQMaterial
    Left = 828
    Top = 70
  end
  object qBQMaterial: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT l.c_interv, L.C_ESTAT, cce.n_codi AS Estat, bq.c_procedim' +
        'ent, BQ.DATA_ENTRADA, CCT.N_CODI as TIPUS, L.LOT, L.NUM_SERIE, L' +
        '.EMDN, L.DATA_CADUCITAT, L.C_PROD, L.NIF_PROV, L.N_PROV, L.ID, L' +
        '.DESCRIPCIO, L.QUANTITAT, L.DATA_V, M.METGE AS USER_VALIDA, L.DA' +
        'TA_R, L.DATA_E, ME.METGE AS USER_EXCEL, MR.METGE AS USER_REGISTR' +
        'E, L.CASA_COMERCIAL'
      '    FROM BQMAT_LIN L'
      
        '    LEFT JOIN CODICAMPS CCE ON l.c_ESTAT=ccE.c_codi AND ccE.tipu' +
        'scodi='#39'BQMAT.ESTAT'#39
      '    LEFT JOIN BQUIRURGIC BQ ON L.C_INTERV=BQ.C_INTERV'
      
        '    LEFT JOIN CODICAMPS3 CCT ON L.C_TIPUS = CCT.C_CODI AND CCT.T' +
        'IPUSCODI='#39'BQMAT.TIPUS'#39
      '    LEFT JOIN METGES MR ON L.C_USUARI_R=MR.CODI'
      '    LEFT JOIN METGES M ON L.C_USUARI_V=M.CODI'
      '    LEFT JOIN METGES ME ON L.C_USUARI_E=ME.CODI'
      '    WHERE l.c_interv = :c_interv'
      '    ORDER BY bq.data_entrada, l.c_tipus')
    Left = 824
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_interv'
        ParamType = ptInput
      end>
  end
end
