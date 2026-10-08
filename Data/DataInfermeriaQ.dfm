object wDataInfermeriaQ: TwDataInfermeriaQ
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 391
  Top = 219
  Height = 608
  Width = 881
  object qInferTasques: TQuery
    AfterOpen = qInferTasquesAfterOpen
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.C_TASCA, I.C_TRACTAMENT, I.TASCA, I.USUARI_I, M.METGE, ' +
        'I.DATA_I'
      'from INFERTASQUES I'
      'join METGES M on I.USUARI_I = M.CODI'
      'where I.C_TRACTAMENT = :c_tractament'
      'and I.ESTAT = '#39'V'#39
      'order by I.DATA_I desc')
    Left = 96
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end>
  end
  object dsInferTasques: TDataSource
    DataSet = qInferTasques
    Left = 96
    Top = 280
  end
  object qInferTasquesSusp: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select I.C_TASCA,     I.C_TRACTAMENT,             I.TASCA, '
      '          I.USUARI_S,   MS.METGE as METGE_S,   I.DATA_S, '
      '          I.USUARI_I,     MI.METGE as METGE_I,     I.DATA_I'
      'from INFERTASQUES I'
      'left join METGES MS on I.USUARI_S = MS.CODI'
      'left join METGES MI on I.USUARI_I = MI.CODI'
      'where I.C_TRACTAMENT = :c_tractament'
      'and I.ESTAT = '#39'S'#39
      'order by I.DATA_S desc')
    Left = 188
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end>
  end
  object dsInferTasquesSusp: TDataSource
    DataSet = qInferTasquesSusp
    Left = 188
    Top = 280
  end
  object InsInferTasques_Eliminar: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into INFERTASQUES '
      '(C_TASCA, C_TRACTAMENT, TASCA, USUARI_I, DATA_I, ESTAT)'
      'values'
      '(:c_tasca, :c_tractament, :tasca, :usuari_i, :data_i, '#39'V'#39')')
    Left = 744
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_tasca'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tasca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'usuari_i'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_i'
        ParamType = ptInput
      end>
  end
  object dsDocsInfer: TDataSource
    DataSet = qDocsInfer
    Left = 372
    Top = 280
  end
  object qDocsInfer: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select c.n_codi, d.data, m.metge'
      'from docsinfer d'
      
        'join codicamps c on d.c_doc=c.c_codi and c.tipuscodi ='#39'DOCSINFER' +
        #39
      'join metges m on d.c_usuari = m.codi'
      'where d.c_tractament = :c_tractament'
      'order by d.data')
    Left = 372
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptInput
        Size = 4
      end>
  end
  object InsDocsInfer: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'insert into DOCSINFER (id, c_historia, c_tractament, c_doc, c_us' +
        'uari, data)'
      'values (:id,:historia,:tractament,:doc,:usuari,:data)')
    Left = 501
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tractament'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'doc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'usuari'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptInput
      end>
  end
  object qInferIng: TQuery
    AfterScroll = qInferIngAfterScroll
    OnCalcFields = qInferIngCalcFields
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select T.C_TRACTAMENT, T.C_PRESTACIO, P.RESUM, '
      '          T.DATA_INGRES, T.DATA_ALTA'
      'from TRACTAMENTS T'
      'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO'
      
        'join DRETSPRESTA D on P.C_PRESTACIO = D.C_PRESTACIO and D.C_DRET' +
        ' = '#39'P88'#39
      
        'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "E' +
        'STATFACTU" and X.R_CODI <> 9 '
      'where T.C_HISTORIA =  :historia'
      'order by T.DATA_INGRES, T.HORA')
    Left = 26
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end>
    object qInferIngC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object qInferIngC_PRESTACIO: TStringField
      FieldName = 'C_PRESTACIO'
      Size = 4
    end
    object qInferIngDATA_INGRES: TDateTimeField
      FieldName = 'DATA_INGRES'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object qInferIngDATA_ALTA: TDateTimeField
      FieldName = 'DATA_ALTA'
    end
    object qInferIngRESUM: TStringField
      FieldName = 'RESUM'
      Size = 8
    end
    object qInferIngPRESTACIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRESTACIO'
      Size = 30
      Calculated = True
    end
  end
  object dsInferIng: TDataSource
    DataSet = qInferIng
    Left = 26
    Top = 64
  end
  object qInferDies: TQuery
    AfterScroll = qInferDiesAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select distinct F_SoloFecha(I.DATA_VALOR) as DIA, C_TRACTAMENT'
      'from INFERDADES I'
      'where I.C_TRACTAMENT = :c_tractament'
      'order by 1 desc')
    Left = 96
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsInferDies: TDataSource
    DataSet = qInferDies
    Left = 96
    Top = 64
  end
  object qInferDadesDia: TQuery
    AfterScroll = qInferDadesDiaAfterScroll
    OnCalcFields = qInferCalcFields
    DatabaseName = 'Interna'
    DataSource = dsInferDies
    SQL.Strings = (
      
        'select ID.ID, ID.C_TRACTAMENT, ID.C_ITEM, II.N_ITEM, ID.VALOR, I' +
        'I.UNITAT_MESURA,  ID.DATA_VALOR as HORA, ID.USUARI, II.COLOR, ID' +
        '.ANULAT, II.BALANSHIDRIC, ID.DATA, II.ORDRE'
      'from INFERDADES ID'
      'join INFERITEMS II on ID.C_ITEM = II.C_ITEM and II.ORDRE >= 0'
      'where ID.C_TRACTAMENT = :c_tractament'
      'and F_SoloFecha(ID.DATA_VALOR) = :dia'
      'and ANULAT <> '#39'O'#39
      'order by 10, 7 desc, 13   /* anulat, data_valor desc, ordre */')
    Left = 168
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'DIA'
        ParamType = ptUnknown
        Size = 8
      end>
    object qInferDadesDiaC_ITEM: TIntegerField
      FieldName = 'C_ITEM'
    end
    object qInferDadesDiaN_ITEM: TStringField
      FieldName = 'N_ITEM'
      Size = 40
    end
    object qInferDadesDiaVALOR: TStringField
      FieldName = 'VALOR'
      Size = 15
    end
    object qInferDadesDiaUNITAT_MESURA: TStringField
      FieldName = 'UNITAT_MESURA'
      Size = 10
    end
    object qInferDadesDiaHORA: TDateTimeField
      FieldName = 'HORA'
      DisplayFormat = 'hh":"nn'
    end
    object qInferDadesDiaUSUARI: TStringField
      FieldName = 'USUARI'
      Size = 5
    end
    object qInferDadesDiaCOLOR: TStringField
      FieldName = 'COLOR'
      FixedChar = True
      Size = 9
    end
    object qInferDadesDiaANULAT: TStringField
      FieldName = 'ANULAT'
      Size = 1
    end
    object qInferDadesDiaBALANSHIDRIC: TStringField
      FieldName = 'BALANSHIDRIC'
      FixedChar = True
      Size = 1
    end
    object qInferDadesDiaC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object qInferDadesDiaID: TIntegerField
      FieldName = 'ID'
    end
    object qInferDadesDiaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qInferDadesDiaORDRE: TIntegerField
      FieldName = 'ORDRE'
    end
    object qInferDadesDiaUM: TStringField
      FieldKind = fkCalculated
      FieldName = 'UM'
      Calculated = True
    end
  end
  object dsInferDadesDia: TDataSource
    DataSet = qInferDadesDia
    Left = 168
    Top = 64
  end
  object qInferParams: TQuery
    AfterScroll = qInferParamsAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select *'
      'from INFERITEMS'
      'where ORDRE >= 0'
      'and C_ITEM < 1000'
      'order by N_ITEM ')
    Left = 251
    Top = 16
  end
  object dsInferParams: TDataSource
    DataSet = qInferParams
    Left = 251
    Top = 64
  end
  object qInferEvol: TQuery
    AfterScroll = qInferEvolAfterScroll
    OnCalcFields = qInferCalcFields
    DatabaseName = 'Interna'
    DataSource = dsInferParams
    SQL.Strings = (
      
        'select ID.C_ITEM, ID.VALOR, II.UNITAT_MESURA, ID.DATA_VALOR, II.' +
        'NORMALITAT, ID.ID'
      'from INFERDADES ID'
      'join INFERITEMS II on ID.C_ITEM = II.C_ITEM'
      'where ID.C_TRACTAMENT = 104012     /*    3 */'
      'and ID.C_ITEM = :c_item'
      'and ID.ANULAT = '#39'N'#39
      'order by ID.DATA_VALOR desc')
    Left = 318
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
    object qInferEvolC_ITEM: TIntegerField
      FieldName = 'C_ITEM'
      Origin = 'INTERNA.INFERDADES.C_ITEM'
    end
    object qInferEvolVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'INTERNA.INFERDADES.VALOR'
      Size = 15
    end
    object qInferEvolUNITAT_MESURA: TStringField
      FieldName = 'UNITAT_MESURA'
      Origin = 'INTERNA.INFERITEMS.UNITAT_MESURA'
      Size = 10
    end
    object qInferEvolDATA_VALOR: TDateTimeField
      FieldName = 'DATA_VALOR'
      Origin = 'INTERNA.INFERDADES.DATA_VALOR'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qInferEvolNORMALITAT: TFloatField
      FieldName = 'NORMALITAT'
      Origin = 'INTERNA.INFERITEMS.NORMALITAT'
    end
    object qInferEvolUM: TStringField
      FieldKind = fkCalculated
      FieldName = 'UM'
      Calculated = True
    end
    object qInferEvolID: TIntegerField
      FieldName = 'ID'
      Origin = 'INTERNA.INFERDADES.ID'
    end
  end
  object dsInferEvol: TDataSource
    DataSet = qInferEvol
    Left = 318
    Top = 64
  end
  object qInferDolor: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select F_Mid(II.N_ITEM, 6, F_StringLength(II.N_ITEM) - 6) as Dol' +
        'or, ID.VALOR, II.UNITAT_MESURA, ID.DATA_VALOR'
      'from INFERDADES ID'
      'join INFERITEMS II on ID.C_ITEM = II.C_ITEM'
      'where ID.C_TRACTAMENT = 104012     /*    3 */'
      'and ID.C_ITEM > 1000'
      'and ID.ANULAT = '#39'N'#39
      'order by ID.DATA_VALOR desc')
    Left = 382
    Top = 16
  end
  object dsInferDolor: TDataSource
    DataSet = qInferDolor
    Left = 382
    Top = 64
  end
  object qGrafInfer: TQuery
    DatabaseName = 'Interna'
    DataSource = dsInferParams
    SQL.Strings = (
      'select ID.VALOR, II.UNITAT_MESURA, ID.DATA_VALOR, II.NORMALITAT'
      'from INFERDADES ID'
      'join INFERITEMS II on ID.C_ITEM = II.C_ITEM'
      'where ID.C_TRACTAMENT = 104012     /*    3 */'
      'and ID.C_ITEM = :c_item'
      'and II.TEGRAFICA = '#39'S'#39
      'and ID.ANULAT = '#39'N'#39
      'order by ID.DATA_VALOR desc')
    Left = 448
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object MTEvolFC: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 644
    Top = 16
    object MTEvolFCVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object MTEvolFCDATA_VALOR: TDateTimeField
      FieldName = 'DATA_VALOR'
    end
  end
  object MTEvolFR: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 712
    Top = 16
    object FloatField1: TFloatField
      FieldName = 'VALOR'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_VALOR'
    end
  end
  object MTEvolTC: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 588
    Top = 16
    object FloatField2: TFloatField
      FieldName = 'VALOR'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATA_VALOR'
    end
  end
  object MTEvolPAS: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 620
    Top = 64
    object FloatField3: TFloatField
      FieldName = 'VALOR'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DATA_VALOR'
    end
  end
  object qInferOmpleMT: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select ID.VALOR, II.UNITAT_MESURA, ID.DATA_VALOR, II.NORMALITAT'
      'from INFERDADES ID'
      'join INFERITEMS II on ID.C_ITEM = II.C_ITEM'
      
        'where ID.C_ITEM = 1                                             ' +
        '                 /*    3 */'
      
        'and ID.C_TRACTAMENT = 104012                                    ' +
        '    /*    4 */'
      
        'and ID.DATA_VALOR between '#39'1.7.2005'#39' and '#39'31.7.2005'#39'     /*    5' +
        ' */'
      'and ID.ANULAT = '#39'N'#39
      'order by ID.DATA_VALOR desc')
    Left = 520
    Top = 16
    object StringField1: TStringField
      FieldName = 'VALOR'
      Origin = 'INTERNA.INFERDADES.VALOR'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'UNITAT_MESURA'
      Origin = 'INTERNA.INFERITEMS.UNITAT_MESURA'
      Size = 10
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'DATA_VALOR'
      Origin = 'INTERNA.INFERDADES.DATA_VALOR'
      DisplayFormat = 'dd"/"mm"/"yyyy" "hh":"nn'
    end
    object FloatField4: TFloatField
      FieldName = 'NORMALITAT'
      Origin = 'INTERNA.INFERITEMS.NORMALITAT'
    end
  end
  object MTEvolPAD: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    Left = 684
    Top = 64
    object FloatField5: TFloatField
      FieldName = 'VALOR'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'DATA_VALOR'
    end
  end
  object qRegistresInfer: TQuery
    AutoCalcFields = False
    AfterScroll = qRegistresInferAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select R.ID, R.C_HISTORIA, R.C_TRACTAMENT, F_StrNull('#39'Ubicaci'#243' d' +
        'e la via: '#39' || U.N_CODI, D.N_CODI || '#39': '#39' || R.VARIS) as VARIS,'
      
        '          R.T_REG, C.N_CODI as TIPUS_REGISTRE, R.C_TIPUS, M.N_CO' +
        'DI as MODALITAT, M.PARAMS as Params, '
      
        '          cast(F_Cero(R.C_MOTIU) as Integer) as C_MOTIU, F_StrNu' +
        'll(F.N_CODI, '#39#39') as MOTIU_FI, U.N_CODI as UBICACIO,'
      
        '          R.DATAINICI_REAL, R.C_USUARI_INICI, R.DATAFINAL_REAL, ' +
        'R.C_USUARI_FINAL, R.DATAFINAL_AUTO '
      'from REGISTRESINFER R'
      'join TRACTAMENTS T on R.C_TRACTAMENT = T.C_TRACTAMENT'
      
        'join CODICAMPS C on R.T_REG = C.C_CODI and C.TIPUSCODI = '#39'INFER.' +
        'TIPUSREG'#39
      
        'left outer join CODICAMPS M on M.TIPUSCODI = C.PARAMS || '#39'_TIPUS' +
        #39' and M.C_CODI = R.C_TIPUS'
      
        'left outer join CODICAMPS F on F.TIPUSCODI = C.PARAMS || '#39'_MOTIU' +
        #39' and F.C_CODI = R.C_MOTIU'
      'left outer join CATVPQ V on R.ID = V.ID'
      
        'left outer join CODICAMPS U on U.TIPUSCODI = C.PARAMS || '#39'_VIA'#39' ' +
        'and U.C_CODI = V.UBICACIO'
      
        'left outer join CODICAMPS D on D.TIPUSCODI = '#39'INFER.ETI_VARIS'#39' a' +
        'nd D.C_CODI = R.T_REG'
      'where R.C_TRACTAMENT = :c_tractament'
      'order by 8, R.DATAINICI_REAL desc       /* l'#237'nia 13 */')
    Left = 590
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsRegistresInfer: TDataSource
    DataSet = qRegistresInfer
    Left = 590
    Top = 280
  end
  object qUPPCap: TQuery
    AfterScroll = qUPPCapAfterScroll
    OnCalcFields = qUPPCapCalcFields
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select U.*, C1. N_CODI as N_LOCALITZACIO, '
      '          P.RESUM, T.DATA_INGRES, T.DATA_ALTA,'
      '          C2.N_CODI as MOTIU_FI'
      'from UPPCAP U'
      'join TRACTAMENTS T on U.C_TRACTAMENT = T.C_TRACTAMENT'
      'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO'
      
        'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "E' +
        'STATFACTU" and X.R_CODI <> 9 '
      
        'join CODICAMPS C1 on C1.TIPUSCODI = '#39'UPP.LOCALITZACIO'#39' and U.LOC' +
        'ALITZACIO = C1.C_CODI'
      
        'left outer join CODICAMPS C2 on C2.TIPUSCODI = '#39'UPP.MOTIUFI'#39' and' +
        ' U.MOTIU_FINALITZACIO = C2.C_CODI'
      'where T.C_HISTORIA = :historia'
      
        'order by T.DATA_INGRES desc, U.ESTAT, U.DATA_CREACIO desc, ID de' +
        'sc')
    Left = 26
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end>
    object qUPPCapID: TIntegerField
      FieldName = 'ID'
    end
    object qUPPCapC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qUPPCapC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object qUPPCapDATA_CREACIO: TDateTimeField
      FieldName = 'DATA_CREACIO'
    end
    object qUPPCapINT_EXT: TStringField
      FieldName = 'INT_EXT'
      FixedChar = True
      Size = 1
    end
    object qUPPCapESTAT: TSmallintField
      FieldName = 'ESTAT'
    end
    object qUPPCapLOCALITZACIO: TSmallintField
      FieldName = 'LOCALITZACIO'
    end
    object qUPPCapDATA_FINALITZA: TDateTimeField
      FieldName = 'DATA_FINALITZA'
    end
    object qUPPCapUSER_FINALITZA: TStringField
      FieldName = 'USER_FINALITZA'
      Size = 5
    end
    object qUPPCapDATA_ANULA: TDateTimeField
      FieldName = 'DATA_ANULA'
    end
    object qUPPCapUSER_ANULA: TStringField
      FieldName = 'USER_ANULA'
      Size = 5
    end
    object qUPPCapDATA_FINALITZA_AUTO: TDateTimeField
      FieldName = 'DATA_FINALITZA_AUTO'
    end
    object qUPPCapMOTIU_FINALITZACIO: TSmallintField
      FieldName = 'MOTIU_FINALITZACIO'
    end
    object qUPPCapVISTO: TStringField
      FieldName = 'VISTO'
      FixedChar = True
      Size = 1
    end
    object qUPPCapC_USER_VISTO: TStringField
      FieldName = 'C_USER_VISTO'
      Size = 5
    end
    object qUPPCapDATA_VISTO: TDateTimeField
      FieldName = 'DATA_VISTO'
    end
    object qUPPCapN_LOCALITZACIO: TStringField
      FieldName = 'N_LOCALITZACIO'
      Size = 40
    end
    object qUPPCapRESUM: TStringField
      FieldName = 'RESUM'
      Size = 8
    end
    object qUPPCapDATA_INGRES: TDateTimeField
      FieldName = 'DATA_INGRES'
    end
    object qUPPCapDATA_ALTA: TDateTimeField
      FieldName = 'DATA_ALTA'
    end
    object qUPPCapMOTIU_FI: TStringField
      FieldName = 'MOTIU_FI'
      Size = 40
    end
    object qUPPCapEMINA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'EMINA'
      Calculated = True
    end
    object qUPPCapUPP: TStringField
      FieldName = 'UPP'
      FixedChar = True
      Size = 1
    end
  end
  object qOMAdmDies: TQuery
    DatabaseName = 'Interna'
    DataSource = dsTractOM
    SQL.Strings = (
      'select distinct F_SoloFecha(A.DATA_PRESA) as DIA, O.C_TRACTAMENT'
      'from OMADMINISTRACIO A'
      'join ORDRESMEDIQUES O on A.C_ORDREMEDICA = O.C_ORDREMEDICA'
      'where O.C_TRACTAMENT = :c_tractament'
      'order by 1 desc')
    Left = 208
    Top = 468
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
        Size = 4
      end>
    object qOMAdmDiesDIA: TDateTimeField
      FieldName = 'DIA'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object qOMAdmDiesC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
  end
  object dsOMAdmDies: TDataSource
    DataSet = qOMAdmDies
    Left = 208
    Top = 516
  end
  object qAdmDia: TQuery
    OnCalcFields = qAdmCalcFields
    DatabaseName = 'Interna'
    DataSource = dsOMAdmDies
    SQL.Strings = (
      'select A.ID, A.DATA_PRESA, CC.R_CODI as ADMINISTRACIO, '
      
        '          cast(F_IfLong(A.N_MOTIU, '#39'='#39', '#39#39', C.N_CODI, A.N_MOTIU)' +
        ' as VarChar(40)) as MOTIU, A.U_INSULINA,'
      '          A.DATA_ADMIN, A.C_USUARI_ADMIN, A.C_USUARI_RISC, '
      '          O.C_TRACTAMENT, O.C_ORDREMEDICA, '
      
        '          cast(F_IfLong(G.GTN, '#39'='#39', '#39#39', '#39'0000000'#39', G.GTN) as var' +
        'char(7)) as C_MEDICAMENT,'
      
        '          cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', O.N_MEDICAMENT_FG, G.N' +
        '_GTN) as varchar(80)) as N_MEDICAMENT,'
      '          O.C_PRODUCTE, O.DOSI, O.UNITAT_MESURA, O.C_VIA, '
      '          O.C_FREQUENCIA, O.C_FREQUENCIA_INF,'
      
        '          cast(F_If(O.C_FREQUENCIA_INF, '#39'='#39', '#39#39', O.C_FREQUENCIA,' +
        ' O.C_FREQUENCIA_INF) as varchar(4)) as C_FREQ '
      'from OMADMINISTRACIO A'
      'join ORDRESMEDIQUES O on A.C_ORDREMEDICA = O.C_ORDREMEDICA'
      'left outer join GTN G on O.GTN = G.GTN'
      
        'left outer join CODICAMPS C on C.TIPUSCODI = '#39'ADM_MOTIU'#39' and A.C' +
        '_MOTIU = C.C_CODI '
      
        'left outer join CODICAMPSCURT CC on CC.TIPUSCODI = '#39'ADM_ADMINIST' +
        'RACIO'#39' and A.ADMINISTRACIO = CC.C_CODI'
      'where O.C_TRACTAMENT = :c_tractament'
      'and F_SoloFecha(A.DATA_PRESA) = :dia'
      'and A.DATA_PRESA ||'#39' '#39'|| A.DATA_ADMIN '
      '       in  ( select  DATA_PRESA ||'#39' '#39'|| MAX(DATA_ADMIN)'
      '              from    OMADMINISTRACIO '
      '              where C_ORDREMEDICA = A.C_ORDREMEDICA'
      '              group  by DATA_PRESA )'
      'order by A.DATA_PRESA desc')
    Left = 276
    Top = 468
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'DIA'
        ParamType = ptUnknown
        Size = 8
      end>
    object qAdmDiaID: TIntegerField
      FieldName = 'ID'
    end
    object qAdmDiaDATA_PRESA: TDateTimeField
      FieldName = 'DATA_PRESA'
      DisplayFormat = 'h:nn'
    end
    object qAdmDiaADMINISTRACIO: TStringField
      FieldName = 'ADMINISTRACIO'
      FixedChar = True
      Size = 1
    end
    object qAdmDiaMOTIU: TStringField
      FieldName = 'MOTIU'
      FixedChar = True
      Size = 255
    end
    object qAdmDiaU_INSULINA: TSmallintField
      FieldName = 'U_INSULINA'
      DisplayFormat = '#0 "u. insulina"'
    end
    object qAdmDiaDATA_ADMIN: TDateTimeField
      FieldName = 'DATA_ADMIN'
      DisplayFormat = 'dd-mm-yyyy hh:nn'
    end
    object qAdmDiaC_USUARI_ADMIN: TStringField
      FieldName = 'C_USUARI_ADMIN'
      Size = 5
    end
    object qAdmDiaC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object qAdmDiaC_ORDREMEDICA: TIntegerField
      FieldName = 'C_ORDREMEDICA'
    end
    object qAdmDiaC_MEDICAMENT: TStringField
      FieldName = 'C_MEDICAMENT'
      Size = 6
    end
    object qAdmDiaN_MEDICAMENT: TStringField
      DisplayWidth = 50
      FieldName = 'N_MEDICAMENT'
      Size = 80
    end
    object qAdmDiaC_PRODUCTE: TIntegerField
      FieldName = 'C_PRODUCTE'
    end
    object qAdmDiaDOSI: TFloatField
      FieldName = 'DOSI'
    end
    object qAdmDiaUNITAT_MESURA: TStringField
      FieldName = 'UNITAT_MESURA'
      Size = 4
    end
    object qAdmDiaC_VIA: TStringField
      FieldName = 'C_VIA'
      FixedChar = True
      Size = 3
    end
    object qAdmDiaC_FREQUENCIA: TStringField
      FieldName = 'C_FREQUENCIA'
      Size = 4
    end
    object qAdmDiaC_FREQUENCIA_INF: TStringField
      FieldName = 'C_FREQUENCIA_INF'
      Size = 4
    end
    object qAdmDiaC_FREQ: TStringField
      FieldName = 'C_FREQ'
      Size = 4
    end
    object qAdmDiaC_USUARI_RISC: TStringField
      FieldName = 'C_USUARI_RISC'
      Size = 5
    end
    object qAdmDiaUSUARI: TStringField
      FieldKind = fkCalculated
      FieldName = 'USUARI'
      Size = 15
      Calculated = True
    end
  end
  object dsAdmDia: TDataSource
    DataSet = qAdmDia
    Left = 276
    Top = 516
  end
  object qOM: TQuery
    AfterScroll = qOMAfterScroll
    OnCalcFields = qOMCalcFields
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select O.C_TRACTAMENT, O.C_ORDREMEDICA, F5.C_FAMILIA4,'
      
        '          cast(F_IfLong(G.GTN, '#39'='#39', '#39#39', '#39'0000000'#39', G.GTN) as var' +
        'char(7)) as C_MEDICAMENT,'
      
        '          cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', O.N_MEDICAMENT_FG, G.N' +
        '_GTN) as varchar(80)) as N_MEDICAMENT,'
      '          O.C_PRODUCTE, O.DOSI, O.UNITAT_MESURA, O.C_VIA, '
      '          O.C_FREQUENCIA, O.C_FREQUENCIA_INF, O.RISC,'
      '          O.DATA_INICI, O.DATA_INICI_INF, O.DATA_PAUTAT,'
      '          O.HORA_INICI, O.HORA_INICI_INF, '
      '          F_MaximBVG(O.HORA_INICI, O.HORA_INICI_INF) as HORA_I,'
      '          O.OBSERVACIONS, O.C_ESTAT, O.DATA_SUSPENSIO,'
      '          M.METGE as METGE_PAUTA, M2.METGE as METGE_S'
      'from   ORDRESMEDIQUES O'
      'left outer join GTN G on O.GTN = G.GTN'
      'left outer join FAMILIAGTN5 F5 on G.C_FAMILIA = F5.C_FAMILIA5'
      'left outer join METGES M on O.METGE_PAUTAT = M.CODI'
      'left outer join METGES M2 on O.METGE_SUSPENSIO = M2.CODI'
      'where C_TRACTAMENT = :c_tractament'
      
        'order by O.GTN, /*O.C_ESTAT desc, */ O.DATA_INICI, O.HORA_INICI ' +
        '/*, 4 */')
    Left = 91
    Top = 468
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_TRACTAMENT'
        ParamType = ptUnknown
        Size = 4
      end>
    object qOMC_TRACTAMENT: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object qOMC_ORDREMEDICA: TIntegerField
      FieldName = 'C_ORDREMEDICA'
    end
    object qOMC_MEDICAMENT: TStringField
      FieldName = 'C_MEDICAMENT'
      Size = 6
    end
    object qOMN_MEDICAMENT: TStringField
      FieldName = 'N_MEDICAMENT'
      Size = 80
    end
    object qOMC_PRODUCTE: TIntegerField
      FieldName = 'C_PRODUCTE'
    end
    object qOMDOSI: TFloatField
      FieldName = 'DOSI'
    end
    object qOMUNITAT_MESURA: TStringField
      FieldName = 'UNITAT_MESURA'
      Size = 4
    end
    object qOMC_VIA: TStringField
      FieldName = 'C_VIA'
      FixedChar = True
      Size = 3
    end
    object qOMC_FREQUENCIA: TStringField
      FieldName = 'C_FREQUENCIA'
      Size = 4
    end
    object qOMC_FREQUENCIA_INF: TStringField
      FieldName = 'C_FREQUENCIA_INF'
      Size = 4
    end
    object qOMDATA_INICI: TDateTimeField
      FieldName = 'DATA_INICI'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object qOMDATA_INICI_INF: TDateTimeField
      FieldName = 'DATA_INICI_INF'
    end
    object qOMDATA_PAUTAT: TDateTimeField
      FieldName = 'DATA_PAUTAT'
      DisplayFormat = 'dd-mm-yyyy hh:nn'
    end
    object qOMHORA_INICI: TSmallintField
      FieldName = 'HORA_INICI'
    end
    object qOMHORA_INICI_INF: TSmallintField
      FieldName = 'HORA_INICI_INF'
    end
    object qOMHORA_I: TFloatField
      FieldName = 'HORA_I'
      DisplayFormat = '#0"h"'
    end
    object qOMOBSERVACIONS: TStringField
      FieldName = 'OBSERVACIONS'
      Size = 50
    end
    object qOMC_ESTAT: TStringField
      FieldName = 'C_ESTAT'
      Size = 15
    end
    object qOMDATA_SUSPENSIO: TDateTimeField
      FieldName = 'DATA_SUSPENSIO'
      DisplayFormat = 'dd-mm-yyyy hh:nn'
    end
    object qOMMETGE_PAUTA: TStringField
      FieldName = 'METGE_PAUTA'
    end
    object qOMMETGE_S: TStringField
      FieldName = 'METGE_S'
    end
    object qOMMETGE_SUSPEN: TStringField
      FieldKind = fkCalculated
      FieldName = 'METGE_SUSPEN'
      Calculated = True
    end
    object qOMC_FREQ: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_FREQ'
      Size = 15
      Calculated = True
    end
    object qOMRISC: TStringField
      FieldName = 'RISC'
      FixedChar = True
      Size = 1
    end
    object qOMC_FAMILIA4: TStringField
      FieldName = 'C_FAMILIA4'
      FixedChar = True
      Size = 4
    end
  end
  object dsOM: TDataSource
    DataSet = qOM
    Left = 91
    Top = 516
  end
  object qAdmOM: TQuery
    OnCalcFields = qAdmCalcFields
    DatabaseName = 'Interna'
    DataSource = dsOM
    SQL.Strings = (
      
        'select A.DATA_PRESA, A.ADMINISTRACIO, A.U_INSULINA, A.C_USUARI_A' +
        'DMIN, A.C_USUARI_RISC, A.DATA_ADMIN , A.COMENTARI, cast(F_IfLong' +
        '(A.N_MOTIU, '#39'='#39', '#39#39', C.N_CODI, A.N_MOTIU) as VarChar(40)) as MOT' +
        'IU'
      'from OMADMINISTRACIO A'
      
        'left outer join CODICAMPS C on A.C_MOTIU = C.C_CODI and C.TIPUSC' +
        'ODI = '#39'ADM_MOTIU'#39
      'where A.C_ORDREMEDICA = :c_ordremedica'
      
        '/* and A.DATA_PRESA >= '#39'TODAY'#39' - 7         '#250'ltima setmana   -  l' +
        #237'nia 4 */'
      'and A.DATA_PRESA ||'#39' '#39'|| A.DATA_ADMIN '
      '       in  ( select  DATA_PRESA ||'#39' '#39'|| MAX(DATA_ADMIN)'
      '              from    OMADMINISTRACIO '
      '              where C_ORDREMEDICA = A.C_ORDREMEDICA'
      '              group  by DATA_PRESA )'
      'order by A.DATA_PRESA desc')
    Left = 142
    Top = 468
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_ORDREMEDICA'
        ParamType = ptUnknown
        Size = 4
      end>
    object qAdmOMDATA_PRESA: TDateTimeField
      FieldName = 'DATA_PRESA'
    end
    object qAdmOMADMINISTRACIO: TStringField
      FieldName = 'ADMINISTRACIO'
      FixedChar = True
      Size = 1
    end
    object qAdmOMU_INSULINA: TSmallintField
      FieldName = 'U_INSULINA'
    end
    object qAdmOMC_USUARI_ADMIN: TStringField
      FieldName = 'C_USUARI_ADMIN'
      Size = 5
    end
    object qAdmOMC_USUARI_RISC: TStringField
      FieldName = 'C_USUARI_RISC'
      Size = 5
    end
    object qAdmOMDATA_ADMIN: TDateTimeField
      FieldName = 'DATA_ADMIN'
    end
    object qAdmOMUSUARI: TStringField
      FieldKind = fkCalculated
      FieldName = 'USUARI'
      Size = 15
      Calculated = True
    end
    object qAdmOMCOMENTARI: TStringField
      FieldName = 'COMENTARI'
      Size = 80
    end
    object qAdmOMMOTIU: TStringField
      FieldName = 'MOTIU'
      FixedChar = True
      Size = 255
    end
  end
  object dsAdmOM: TDataSource
    DataSet = qAdmOM
    Left = 142
    Top = 516
  end
  object qDrenaCap: TQuery
    AfterScroll = qDrenaCapAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select D.ID, T.N_CODI as TIPUS, D.UBICACIO, D.DATA_INICI, D.ESTA' +
        'T, M1.METGE as USUARI_INICI, D.DATA_FI, F.N_CODI as MOTIU_FI, M2' +
        '.METGE as USUARI_FI, D.DATA_RINICI'
      'from DRENACAP D'
      
        'join CODICAMPS T on D.TIPUS = T.C_CODI and T.TIPUSCODI = '#39'DRENAT' +
        'GE.TIPUS'#39
      
        'join CODICAMPS F on D.ESTAT = F.C_CODI and F.TIPUSCODI = '#39'DRENAT' +
        'GE.ESTAT'#39
      'join METGES M1 on D.USUARI_INICI = M1.CODI'
      'left outer join METGES M2 on D.USUARI_FI = M2.CODI'
      'where D.C_TRACTAMENT = :c_tractament'
      'order by D.ESTAT, D.DATA_INICI desc')
    Left = 96
    Top = 124
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qDrenaLin: TQuery
    AfterScroll = qDrenaLinAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsDrenaCap
    SQL.Strings = (
      
        'select D.ID, D.LINIA, D.VALOR, D.DATA_VALOR, M.METGE as Infer, D' +
        '.CANVI, D.ANULAT, D.DATA_REGISTRE, D.USUARI'
      'from DRENALIN D'
      'join METGES M on D.USUARI = M.CODI'
      'where D.ID = :id'
      'order by D.DATA_VALOR, D.DATA_REGISTRE')
    Left = 160
    Top = 124
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    object qDrenaLinVALOR: TIntegerField
      FieldName = 'VALOR'
      Origin = 'INTERNA.DRENALIN.VALOR'
      DisplayFormat = '# ml'
    end
    object qDrenaLinDATA_VALOR: TDateTimeField
      FieldName = 'DATA_VALOR'
      Origin = 'INTERNA.DRENALIN.DATA_VALOR'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qDrenaLinINFER: TStringField
      FieldName = 'INFER'
      Origin = 'INTERNA.METGES.METGE'
    end
    object qDrenaLinCANVI: TStringField
      FieldName = 'CANVI'
      Origin = 'INTERNA.DRENALIN.CANVI'
      FixedChar = True
      Size = 1
    end
    object qDrenaLinANULAT: TStringField
      FieldName = 'ANULAT'
      Origin = 'INTERNA.DRENALIN.ANULAT'
      FixedChar = True
      Size = 1
    end
    object qDrenaLinDATA_REGISTRE: TDateTimeField
      FieldName = 'DATA_REGISTRE'
      Origin = 'INTERNA.DRENALIN.DATA_REGISTRE'
    end
    object qDrenaLinUSUARI: TStringField
      FieldName = 'USUARI'
      Origin = 'INTERNA.DRENALIN.USUARI'
      Size = 5
    end
    object qDrenaLinID: TIntegerField
      FieldName = 'ID'
      Origin = 'INTERNA.DRENALIN.ID'
    end
    object qDrenaLinLINIA: TIntegerField
      FieldName = 'LINIA'
      Origin = 'INTERNA.DRENALIN.LINIA'
    end
  end
  object dsDrenaCap: TDataSource
    DataSet = qDrenaCap
    Left = 96
    Top = 172
  end
  object dsDrenaLin: TDataSource
    DataSet = qDrenaLin
    Left = 160
    Top = 172
  end
  object qRegModal_eliminar: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select N_CODI'
      'from CODICAMPS '
      'where TIPUSCODI = :tipuscodi'
      'and C_CODI = :c_tipus')
    Left = 742
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'tipuscodi'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tipus'
        ParamType = ptInput
      end>
  end
  object qRegMotiu_eliminar: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select N_CODI'
      'from CODICAMPS '
      'where TIPUSCODI = :tipuscodi'
      'and C_CODI = :c_motiu')
    Left = 742
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'tipuscodi'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_motiu'
        ParamType = ptInput
      end>
  end
  object dsCatVPQ: TDataSource
    DataSet = qCatVPQ
    Left = 661
    Top = 280
  end
  object bCatVPQ_Eliminar: THYSqlBrowse
    DatabaseName = 'Interna'
    RequestLive = True
    Numeric0IsNull = False
    Abierta = False
    Diccionario = wDataInfermeria.CatVPQ
    IndiceActivo = 'PK'
    CalcSimple = False
    AutoPost = False
    Filtro.Strings = (
      'id=:id')
    Left = 747
    Top = 440
    object bCatVPQ_Eliminar_ID: TIntegerField
      Tag = 100
      DisplayLabel = 'Identificador registre infermeria'
      DisplayWidth = 8
      FieldName = 'ID'
      DisplayFormat = '#,##0;; '
    end
    object bCatVPQ_Eliminar_ECOGNITIU: TStringField
      Tag = 100
      DisplayLabel = 'Estat cognitiu alterat'
      DisplayWidth = 1
      FieldName = 'ECOGNITIU'
      Size = 1
    end
    object bCatVPQ_Eliminar_ESPASTICITAT: TStringField
      Tag = 100
      DisplayLabel = 'Espasticitat'
      DisplayWidth = 1
      FieldName = 'ESPASTICITAT'
      Size = 1
    end
    object bCatVPQ_Eliminar_ATB: TStringField
      Tag = 100
      DisplayLabel = 'Solucions perfoses irritants (ATB)'
      DisplayWidth = 1
      FieldName = 'ATB'
      Size = 1
    end
    object bCatVPQ_Eliminar_VOLUM: TStringField
      Tag = 100
      DisplayLabel = 'Volum alt de perfusi'#243'/polimedicaci'#243' EV'
      DisplayWidth = 1
      FieldName = 'VOLUM'
      Size = 1
    end
    object bCatVPQ_Eliminar_PERFUSIONS: TStringField
      Tag = 100
      DisplayLabel = 'Perfusions amb bomba'
      DisplayWidth = 1
      FieldName = 'PERFUSIONS'
      Size = 1
    end
    object bCatVPQ_Eliminar_UBICACIO: TSmallintField
      Tag = 100
      DisplayLabel = 'Ubicaci'#243' de la via'
      DisplayWidth = 8
      FieldName = 'UBICACIO'
      DisplayFormat = '#,##0;; '
    end
    object bCatVPQ_Eliminar_C0_0: TSmallintField
      Tag = 101
      DisplayLabel = 'C'#243'di'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Via_C_Codi'
      LookupKeyFields = 'C_Codi'
      KeyFields = 'Via'
      Calculated = True
    end
    object bCatVPQ_Eliminar_C0_1: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Via_N_Codi'
      LookupKeyFields = 'N_Codi'
      KeyFields = 'Via'
      Size = 40
      Calculated = True
    end
    object bCatVPQ_Eliminar_C0_2: TSmallintField
      Tag = 101
      DisplayLabel = 'Ordre'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Via_Ordre'
      LookupKeyFields = 'Ordre'
      KeyFields = 'Via'
      Calculated = True
    end
    object bCatVPQ_Eliminar_C0_3: TStringField
      Tag = 101
      DisplayLabel = 'Descripci'#243' 2'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Via_N_Codi2'
      LookupKeyFields = 'N_Codi2'
      KeyFields = 'Via'
      Size = 40
      Calculated = True
    end
  end
  object cInfInferValidar: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select I.C_HISTORIA, F.NOMCOMPLET, T.C_PRESTACIO, T.DATA_INGRES,' +
        '  '
      
        '          F_DateNull(T.DATA_ALTA, T.DATA_PREALTA) as DATA_ALTA, ' +
        ' '
      
        '          I.TIPUS, I.DATA_INFORME, I.C_USUARI, M.METGE as INFERM' +
        'ERA, I.ARXIU'
      'from INFERINFORMES I'
      'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT'
      'join FILIACIO F on  I.C_HISTORIA = F.NUM_HIST'
      'join METGES M on I.C_USUARI = M.CODI'
      'where I.ESTAT = 2'
      '/* filtre per planta               l'#237'nia 8 */ '
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataInfermeria.InferInformes
    Dicionario2 = wDataBasics.Filiacio
    Dicionario3 = wDataBasics.Tract_Resum
    Titulo = 'Informes pendents de validar'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    Filtrat = True
    CamposOculta.Strings = (
      'C_USUARI')
    AlSeleccionar = cInfInferValidarAlSeleccionar
    ConsultaGetSqlField = cInfInferValidarConsultaGetSqlField
    AlTancar = ConsultesAlTancar
    Left = 436
    Top = 352
  end
  object cDocsInfer: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select c_codi, n_codi as Document'
      'from codicamps '
      'where tipuscodi ='#39'DOCSINFER'#39
      'and r_codi = '#39'UN'#39'    /* filtre per grup d'#39'usuari   l'#237'nia 3 */'
      'order by c_codi')
    Dicionario1 = wDataCodis.CodiCamps
    Titulo = 'Documents per entregar'
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
      'c_codi')
    AlSeleccionar = cDocsInferAlSeleccionar
    Left = 436
    Top = 232
  end
  object qUPPLin: TQuery
    AfterScroll = qUPPLinAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsUPPCap
    SQL.Strings = (
      
        'select U.*, U.MIDA1 ||'#39' x '#39'|| U.MIDA2 ||'#39' x '#39'|| F_StrNull(U.MIDA' +
        '3, '#39#39') as MIDA,'
      '          C1.N_CODI as N_GRAU, C2.N_CODI as N_EXUDAT, '
      
        '          C3.N_CODI as N_TEIXIT, C4.N_CODI as N_POSTURA, C5.N_CO' +
        'DI AS N_SEMP,'
      '          M.METGE as N_USUARI'
      'from UPPLIN U'
      
        'left outer join CODICAMPS C1 on C1.TIPUSCODI = "UPP.GRAU"       ' +
        '    and U.GRAU = C1.C_CODI'#13
      
        'left outer join CODICAMPS C2 on C2.TIPUSCODI = "UPP.EXSUDAT"    ' +
        'and U.EXUDAT = C2.C_CODI'#13
      
        'left outer join CODICAMPS C3 on C3.TIPUSCODI = "UPP.TEIXIT"     ' +
        '    and U.TEIXIT = C3.C_CODI'#13
      
        'left outer join CODICAMPS C4 on C4.TIPUSCODI = "UPP.POSTURAL" an' +
        'd U.POSTURA = C4.C_CODI'
      
        'left outer join CODICAMPS C5 on C5.TIPUSCODI = "UPP.SEMP"       ' +
        '   and U.SEMP = C5.C_CODI'
      'left outer join METGES       M  on U.C_USUARI = M.CODI'
      'where U.ID = :id'
      'order by U.DATA')
    Left = 87
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qUPPRisc: TQuery
    DatabaseName = 'Interna'
    DataSource = dsUPPCap
    SQL.Strings = (
      'select U.*, C.N_CODI as N_FRISC'
      'from UPPRISC U'
      
        'join CODICAMPS C on C.TIPUSCODI = "UPP.FRISC" and U.FRISC = C.C_' +
        'CODI'#13
      'where U.ID = :id')
    Left = 147
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsUPPCap: TDataSource
    DataSet = qUPPCap
    Left = 26
    Top = 400
  end
  object dsUPPRisc: TDataSource
    DataSet = qUPPRisc
    Left = 147
    Top = 400
  end
  object dsUPPLin: TDataSource
    DataSet = qUPPLin
    Left = 87
    Top = 400
  end
  object qUPPImatge: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select F_SoloFecha(DATA) as DATA_IMATGE, ARXIU'
      'from IMATGES'
      'where C_HISTORIA = :c_historia'
      'and ID_UPP = :id'#13
      'order by DATA desc'
      'rows 1')
    Left = 217
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_HISTORIA'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsUPPImatge: TDataSource
    DataSet = qUPPImatge
    Left = 217
    Top = 400
  end
  object insUPPLoc: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into CODICAMPS (TIPUSCODI, C_CODI, N_CODI, R_CODI)'
      'values ("UPP.LOCALITZACIO", :c_codi, :n_codi, :r_codi)')
    Left = 285
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_codi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'n_codi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'r_codi'
        ParamType = ptInput
      end>
  end
  object qTractOM: TQuery
    AfterScroll = qTractOMAfterScroll
    OnCalcFields = qTractOMCalcFields
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select T.C_TRACTAMENT, T.C_PRESTACIO, P.RESUM, '
      '          T.DATA_INGRES, T.DATA_ALTA'
      'from TRACTAMENTS T'
      'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO'
      
        'join DRETSPRESTA D on P.C_PRESTACIO = D.C_PRESTACIO and (D.C_DRE' +
        'T = '#39'P89'#39' or D.C_DRET = '#39'P201'#39')'
      
        'join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "E' +
        'STATFACTU" and X.R_CODI <> 9 '
      'where T.C_HISTORIA =  :HISTORIA'
      'order by T.DATA_INGRES, T.HORA')
    Left = 26
    Top = 468
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'C_TRACTAMENT'
    end
    object StringField3: TStringField
      FieldName = 'C_PRESTACIO'
      Size = 4
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'DATA_INGRES'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'DATA_ALTA'
    end
    object StringField4: TStringField
      FieldName = 'RESUM'
      Size = 8
    end
    object StringField5: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRESTACIO'
      Size = 30
      Calculated = True
    end
  end
  object dsTractOM: TDataSource
    DataSet = qTractOM
    Left = 26
    Top = 516
  end
  object qCatVPQ: TQuery
    DatabaseName = 'Interna'
    DataSource = dsRegistresInfer
    SQL.Strings = (
      'select * from CATVPQ where id = :id')
    Left = 661
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qAillaGermens: TQuery
    AfterScroll = qAillaGermensAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsRegistresInfer
    SQL.Strings = (
      'select A.ID, A.ID_REGINFER, '
      '          G.C_GERMEN, G.N_GERMEN, '
      
        '          C.C_CODI as C_LOCALITZACIO, C.N_CODI as N_LOCALITZACIO' +
        ','
      
        '          A.DATA_INICI, A.DATA_FI, A.ANULAT, A.DATA_INICI_R, A.U' +
        'SUARI_INICI, A.DATA_FI_R,'
      
        '          F_DateNull(A.DATA_FI, "TOMORROW") as FI_ORD /* per ord' +
        'enar */'
      'from AILLA_GERMENS A'
      'join GERMENS G on A.GERMEN = G.C_GERMEN'
      
        'left outer join CODICAMPS C on A.LOCALITZACIO = C.C_CODI and C.T' +
        'IPUSCODI = '#39'GERMEN.LOCALITZACIO'#39
      'where A.id_reginfer = :id'
      'order by A.ANULAT, FI_ORD desc, A.DATA_INICI desc  '
      '/* actius al principi, els m'#233's recents al principi '
      '    finalitzats a continuaci'#243
      '    anul'#183'lats al final'
      '*/')
    Left = 725
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
  end
  object dsAillaGermens: TDataSource
    DataSet = qAillaGermens
    Left = 725
    Top = 280
  end
  object insInferTasques: TIBSQL
    Database = wData.IBGuttmann
    ParamCheck = True
    SQL.Strings = (
      'insert into INFERTASQUES '
      '(C_TASCA, C_TRACTAMENT, TASCA, USUARI_I, DATA_I, ESTAT)'
      'values'
      '(:c_tasca, :c_tractament, :tasca, :usuari_i, :data_i, '#39'V'#39')')
    Transaction = wData.IBTransGutt
    Left = 280
    Top = 232
  end
  object cNoEvacua: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select C_HISTORIA, C_TRACTAMENT, DATA_VALOR from P_INFERDADES_NO' +
        'EVACUACIO'
      '("1")  /* Filtre per planta */'
      '[FILTRO]'
      ''
      ''
      '/* select T.C_HISTORIA, F.NOMCOMPLET, T.C_LLIT, '
      'T.C_INFERMERIA, M.METGE as INFERMERA, T.DATA_INGRES, '
      'T.DATA_PREALTA, T.DATA_ALTA, Max(I.DATA_VALOR) as ULTIM_REGISTRE'
      'from TRACTAMENTS T    '
      'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      'join INFERDADES I on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'join METGES M on T.C_INFERMERIA = M.CODI'
      
        'where T.C_PRESTACIO = "1004"                                    ' +
        '  '
      
        'and  (T.DATA_ALTA is null or T.DATA_ALTA >= "TODAY")            ' +
        '  '
      'and   I.C_ITEM = 12'
      'and   I.ANULAT = "N"'
      '/ filtre per planta                   l'#237'nia 11 /'
      'AND FILTRO                              '
      'group by T.C_HISTORIA, F.NOMCOMPLET, T.DATA_INGRES, T.C_LLIT, '
      'T.C_INFERMERIA, M.METGE, T.DATA_PREALTA, T.DATA_ALTA'
      'having Max(I.DATA_VALOR) < "TODAY"-3'
      'order by 8 */')
    Dicionario1 = wDataInfermeria.InferDades
    Dicionario2 = wDataBasics.Tract_Resum
    Titulo = 'Pacients sense evacuaci'#243' els 3 darrers dies'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    Filtrat = True
    CamposOculta.Strings = (
      'C_USUARI')
    AlSeleccionar = cNoEvacuaAlSeleccionar
    ConsultaGetSqlField = cNoEvacuaConsultaGetSqlField
    AlTancar = ConsultesAlTancar
    Left = 436
    Top = 400
  end
  object _qCodiAparell: TQuery
    DatabaseName = 'Interna'
    DataSource = dsRegistresInfer
    SQL.Strings = (
      'select * from CODIAPARELL where id = :id')
    Left = 799
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    object _qCodiAparellID: TIntegerField
      FieldName = 'ID'
      Origin = 'INTERNA.CODIAPARELL.ID'
    end
    object _qCodiAparellCODI_APARELL: TStringField
      FieldName = 'CODI_APARELL'
      Origin = 'INTERNA.CODIAPARELL.CODI_APARELL'
      Size = 30
    end
  end
  object _dsCodiAparell: TDataSource
    DataSet = _qCodiAparell
    Left = 799
    Top = 280
  end
  object cMaterialIncont: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPLET, '
      'T.C_PRESTACIO, T.C_LLIT, T.C_INFERMERIA, M.METGE as INFERMERA, '
      
        'T.DATA_INGRES, F_DateNull(T.DATA_ALTA, T.DATA_PREALTA) as DATA_A' +
        'LTA,'
      'T.C_CENTREFAC, T.C_CLIENT, T.C_DELEGACIO, D.C_DISP,'
      
        'cast(F_IF(D.C_LOTE, '#39'='#39', '#39'-1'#39', '#39'Sol'#183'licitud iniciada'#39', '#39#39') as Va' +
        'rChar(30)) as ESTAT'
      'from TRACTAMENTS T'
      
        'join   DRETSMOTIU X on T.C_MOTIU = X.C_MOTIU and X.C_DRET = "X2"' +
        '   /* motiu TIR */'
      'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST   '
      'left outer join METGES M on T.C_INFERMERIA = M.CODI'
      
        'left outer join DISPCAP D on T.C_TRACTAMENT = D.C_TRACTAMENT and' +
        ' C_LOTE = -1'
      
        'where T.C_PRESTACIO = "1004"                                    ' +
        '  '
      'and   (T.DATA_ALTA is Null or T.DATA_ALTA >= "TODAY")  '
      'and T.DATA_PREALTA >= "TODAY" and DATA_PREALTA <= "TODAY"+15  '
      '/* filtre per planta                   l'#237'nia 13 */'
      'and T.C_TRACTAMENT not in (select C_TRACTAMENT                '
      
        '                                                   from DISPCAP ' +
        '                      '
      
        '                                                   where C_HISTO' +
        'RIA = T.C_HISTORIA'
      
        '                                                   and (C_LOTE <' +
        '> -1 or c_LOTE is Null))   '
      '[AND FILTRO]                              '
      'order by T.DATA_PREALTA')
    Dicionario1 = wDataBasics.Tract_Resum
    Titulo = 'Material d'#39'incontin'#232'ncia perndent de sol'#183'licitar'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    VeureAltreBoto = True
    NomAltreBoto = 'No li cal'
    Filtrat = True
    CamposOculta.Strings = (
      'C_TRACTAMENT'
      'C_CENTREFAC'
      'C_CLIENT'
      'C_DELEGACIO'
      'C_DISP')
    AlSeleccionar = cMaterialIncontAlSeleccionar
    EnClicAltreBoto = cMaterialIncontEnClicAltreBoto
    AlTancar = ConsultesAlTancar
    Left = 436
    Top = 496
  end
  object cTancamentAcollida: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select T.C_HISTORIA, F.NOMCOMPLET, T.C_LLIT, '
      '          T.C_INFERMERIA, M.METGE as INFERMERA, T.DATA_INGRES'
      'from TRACTAMENTS T    '
      'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      'left outer join METGES M on T.C_INFERMERIA = M.CODI'
      'left outer join HISTORIA H on  T.C_TRACTAMENT = H.C_TRACTAMENT '
      
        '                                          and H.C_GRUP = "UN"   ' +
        '  /* l'#237'nia 6 */'
      '                                          and H.ANULAT = "N" '
      
        '                                          and H.QUEES = 34      ' +
        '      '
      'where  T.C_PRESTACIO = "1004"                         '
      'and    T.DATA_INGRES <= "TODAY"-4  '
      'and  T.DATA_INGRES >= "14.2.2022"'
      'and    T.DATA_ALTA is Null                            '
      
        '/* and   (T.C_PLANTA = "%s" or "%s" = "1")                      ' +
        ' l'#237'nia 13 */'
      'and    H.QUEES is Null'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Tract_Resum
    Titulo = 'Tancaments d'#39'acollida pendents'
    Orden.Strings = (
      'Llit')
    OrdenDB.Strings = (
      'T.C_LLIT')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    Filtrat = True
    CamposOculta.Strings = (
      'C_USUARI')
    AlSeleccionar = cTancamentAcollidaAlSeleccionar
    AlTancar = ConsultesAlTancar
    Left = 436
    Top = 448
  end
  object cDesnutricio: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select t.c_historia, f.nomcomplet, t.c_prestacio, t.data_ingres,' +
        ' t.data_alta, i.data_valor'
      'from tractaments t'
      'join filiacio f on t.c_historia=f.num_hist'
      
        'join inferdades i on t.c_tractament=i.c_tractament and i.c_item=' +
        '67 and i.anulat="N" and i.valor="Alt" '
      'where t.c_coordinador = '#39'71M'#39' /* linia 4 */ '
      
        'and (t.data_alta is null or t.data_alta >= "TODAY")             ' +
        '     '
      
        'and (select count(*) from inferdades i2                         ' +
        '                                      '
      
        '        where i2.c_tractament=t.c_tractament and i2.c_item=67 an' +
        'd i2.anulat="N" and i2.valor<>"Alt"      '
      '        and i.data_valor > i2.data_valor)=0'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Tract_Resum
    Dicionario2 = wDataInfermeria.InferDades
    Titulo = 'Pacients amb MUST Alt'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    Filtrat = True
    AlSeleccionar = cDesnutricioAlSeleccionar
    AlTancar = ConsultesAlTancar
    Left = 510
    Top = 400
  end
  object cContencions: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'SELECT R.C_HISTORIA, F.NOMCOMPLET, A.C_PLANTA, A.C_COORDINADOR, ' +
        'R.C_TIPUS, C.N_CODI as TIPUS, A.ID'
      'from REGISTRESINFER_AVIS A'
      
        'JOIN REGISTRESINFER R ON A.ID_REGISTREINFER=R.ID AND R.C_MOTIU I' +
        'S NULL'
      'JOIN FILIACIO F ON R.C_HISTORIA=F.NUM_HIST'
      
        'JOIN CODICAMPS C ON C.TIPUSCODI='#39'INFER.CONTFIS_TIPUS'#39' AND C.C_CO' +
        'DI=R.C_TIPUS'
      
        'WHERE A.C_COORDINADOR IS NULL  AND A.C_PLANTA IS NOT NULL /* LIN' +
        'IA 5 */'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataInfermeria.RegistresInfer
    Titulo = 'Contencions f'#237'siques actives'
    Orden.Strings = (
      'C_HISTORIA')
    OrdenDB.Strings = (
      'R.C_HISTORIA')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    Filtrat = True
    VerSimple = True
    CamposOculta.Strings = (
      'ID'
      'C_TIPUS'
      'DATAINICI_REAL'
      'C_COORDINADOR')
    AlSeleccionar = cContencionsAlSeleccionar
    AlTancar = ConsultesAlTancar
    Left = 582
    Top = 400
  end
  object cContencionsPacient: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT A.ID, C.N_CODI AS TIPUS, R.C_TIPUS'
      'from REGISTRESINFER_AVIS A'
      
        'JOIN REGISTRESINFER R ON A.ID_REGISTREINFER=R.ID AND R.C_MOTIU I' +
        'S NULL'
      
        'JOIN CODICAMPS C ON C.TIPUSCODI='#39'INFER.CONTFIS_TIPUS'#39' AND C.C_CO' +
        'DI=R.C_TIPUS'
      'WHERE A.C_COORDINADOR IS NULL /* linia 4 */'
      'AND R.C_HISTORIA = 31888 /* LINIA 5 */'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataInfermeria.RegistresInfer
    Titulo = 'Tria les contencions del pacient a revisar'
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = True
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    Filtrat = True
    VerSimple = True
    VerSalir = False
    CamposOculta.Strings = (
      'ID'
      'C_TIPUS')
    AlSeleccionar = cContencionsPacientAlSeleccionar
    AlDespuesOpen = cContencionsPacientAlDespuesOpen
    Left = 582
    Top = 448
  end
  object qContencions: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT A.ID FROM REGISTRESINFER_AVIS A            '
      
        'JOIN REGISTRESINFER R ON A.ID_REGISTREINFER = R.ID AND R.C_MOTIU' +
        ' IS NULL'
      'WHERE R.C_HISTORIA = :c_historia '
      'AND A.C_COORDINADOR = c_coordinador /* linia 3 */')
    Left = 584
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_historia'
        ParamType = ptInput
      end>
  end
end
