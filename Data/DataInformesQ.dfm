object wDataInformesQ: TwDataInformesQ
  OldCreateOrder = False
  Left = 567
  Top = 262
  Height = 342
  Width = 369
  object qInforme: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select I.ID_INFORME, I.C_HISTORIA, I.C_TIPUS, I.C_USUARI, I.URGE' +
        'NT, I.C_ESTAT, I.ARXIU, I.C_TRACTAMENT, F.TSI,'
      
        '          T.N_TIPUS, T.CENTRE, T.CONJUNT, T.SOLICITABLE, T.CORRE' +
        'GIR, T.BOLCA_IB, T.ORDRE, T.DATA_ARXIU,'
      
        '          Coalesce(I.PUBLICAR_HC3, T.PUBLICAR_HC3) as PUBLICAR_H' +
        'C3, T.PUBLICAR_APP, T.PDFDIRECTE, T.PLANTILLAFINAL, '
      
        '          D1.RUTA as RUTA_INICI, D2.RUTA as RUTA_FI, I.VERSIO, I' +
        '.IDIOMA,'
      
        '          I.C_PLANTILLA, T.GESTIONAT, I.C_ENTREGA, C.N_CODI as E' +
        'NTREGA, I.COMENTARI,'
      
        '          I.TIPUS_PLANTILLA, E.TIPUSECB, I.C_TRACTAMENT, TR.C_CE' +
        'NTREFAC, TR.C_CLIENT, T.AUTORS, T.ELIMINABUITS, T.VALIDACIOAUTO,' +
        ' T.IMPRESSIOAUTO, M.NOMBRE, M.EMAIL'
      'from INFORMES I'
      'join   FILIACIO F on I.C_HISTORIA = F.NUM_HIST'
      'join   INFORMES_TIPUS T on I.C_TIPUS = T.C_TIPUS'
      'join   DIRECTORIS D1 on T.RUTA_INICI = D1.NOM'
      'join   DIRECTORIS D2 on T.RUTA_FI = D2.NOM'
      'left outer join CODICAMPS C on C.TIPUSCODI = "INFORMES.ENTREGA"'
      
        '                                            and I.C_ENTREGA = C.' +
        'C_CODI '
      'left outer join ECBCAP E on I.C_TRACTAMENT = E.C_TRACTAMENT'
      
        'left outer join TRACTAMENTS TR on I.C_TRACTAMENT = TR.C_TRACTAME' +
        'NT'
      'left outer join METGES M on TR.C_COORDINADOR = M.CODI'
      'where I.ID_INFORME = :id_informe ')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_informe'
        ParamType = ptInput
      end>
  end
  object qPlantilles: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select N_PLANTILLA, C_PLANTILLA, C_TIPUS, IDIOMA, ARXIU'
      'from INFORMES_PLANTILLES'
      'where C_TIPUS = :c_tipus '
      'and (TIPUSECB = :tipusecb or TIPUSECB is Null)'
      'and IDIOMA = :idioma'
      'and BAIXA = "N"')
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'c_tipus'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tipusecb'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idioma'
        ParamType = ptInput
      end>
  end
  object qTags: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from P_INFORMES_PLANTILLES_OMPLE ('
      ':c_plantilla, '
      ':c_historia, '
      ':c_tractament,'
      ':fase,'
      ':c_usuari,'
      ':id_informe,'
      ':data_i,'
      ':data_f'
      ')'
      'order by TAG, ORDRE')
    Left = 32
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_plantilla'
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
        DataType = ftSmallint
        Name = 'fase'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_usuari'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_informe'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_i'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_f'
        ParamType = ptInput
      end>
  end
  object qValidacio: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select C_USUARI, DATA '
      'from INFORMES_REG '
      'where ACCIO = 5 '
      'and ID_INFORME = :id_informe'
      'order by DATA desc '
      'rows 1')
    Left = 32
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_informe'
        ParamType = ptInput
      end>
  end
  object qTitol: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select TITOL '
      'from ESPECIAL_PROF E'
      'join METGES M on E.C_ESPECIAL = M.C_ESPECIAL'
      'where M.CODI = :usuari'
      'and C_IDIOMA = :idioma')
    Left = 92
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'usuari'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'idioma'
        ParamType = ptInput
      end>
  end
  object qAutors: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from P_INFORMES_AUTORS (:id_informe)')
    Left = 32
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_informe'
        ParamType = ptInput
      end>
  end
  object dsInforme: TDataSource
    DataSet = qInforme
    Left = 88
    Top = 16
  end
  object updInfAlta: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'update TRACTAMENTS'
      'set  INFORMEALTA = :informealta,'
      '       C_METGE_INFALTA = :met_infalta,'
      '       ESTATINFORMEALTA = :estat_infalta'
      'where C_TRACTAMENT = :c_tractament')
    Left = 164
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'informealta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'met_infalta'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'estat_infalta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end>
  end
  object qBolcatge: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '/* es construeix a cada iteraci'#243' de qTags si cal */')
    Left = 92
    Top = 128
  end
  object updInformesLin: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'update INFORMES_LIN'
      'set  TEXT = :anotacio,'
      '       C_USUARI = :c_usuari,'
      '       DATA = "NOW"'
      'where ID_INFORME = :id_informe'
      'and     C_ITEM = :c_item'
      '')
    Left = 164
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'anotacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_usuari'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_informe'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_item'
        ParamType = ptInput
      end>
  end
  object qTractAlta: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select C_MOTIU, C_DIAGNOSTICINGRES, N_DIAGNOSTICINGRES, C_DIAGNO' +
        'STICALTA, N_DIAGNOSTICALTA, CONFIANCADPI, CONFIANCADPA'
      'from TRACTAMENTS'
      'where C_TRACTAMENT = :c_tractament')
    Left = 232
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end>
  end
  object updTractAlta: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'update TRACTAMENTS '
      'set  C_DIAGNOSTICALTA = :c_diagalta, '
      '       N_DIAGNOSTICALTA = :n_diagalta,'
      '       CONFIANCADPA = :confiancadpa'
      'where C_TRACTAMENT = :c_tractament')
    Left = 296
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'c_diagalta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'n_diagalta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'confiancadpa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end>
  end
  object insInformesLin: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'insert into INFORMES_LIN ('
      '  ID_INFORME, '
      '  C_ITEM, '
      '  TEXT,'
      '  C_USUARI,'
      '  DATA)'
      'values ('
      '  :id_informe, '
      '  :c_item, '
      '  :anotacio, '
      '  :c_usuari,'
      '  "NOW")')
    Left = 244
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_informe'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_item'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'anotacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_usuari'
        ParamType = ptInput
      end>
  end
  object qUltimaPublicacioHC3: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ID_HCCC, PUBLICAR_HC3'
      'from INFORMES_HCCC'
      'where ID_INFORME = :ID_Informe'
      'and PUBLICAR_HC3 <> '#39'N'#39
      'order by LINIA DESC'
      'rows 1')
    Left = 124
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_Informe'
        ParamType = ptInput
      end>
  end
  object qUltimaPublicacioAPP: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ID_APP, PUBLICAR_APP'
      'from INFORMES_HCCC'
      'where ID_INFORME = :ID_Informe'
      'and PUBLICAR_APP <> '#39'N'#39
      'order by LINIA DESC'
      'rows 1')
    Left = 236
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_Informe'
        ParamType = ptInput
      end>
  end
  object http: TIdHTTP
    IOHandler = ssl
    MaxLineAction = maException
    Port = 443
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    ConnectTimeout = 10000
    Left = 166
    Top = 14
  end
  object ssl: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv23
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 219
    Top = 14
  end
  object qDades: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select hora_preingres, c_historia, nom, cognom1, cognom2 from ES' +
        'PERA where c_tractamentdesti = :tractament')
    Left = 277
    Top = 17
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tractament'
        ParamType = ptInput
      end>
    object qDadesHORA_PREINGRES: TStringField
      FieldName = 'HORA_PREINGRES'
      FixedChar = True
      Size = 5
    end
    object qDadesC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qDadesNOM: TStringField
      FieldName = 'NOM'
    end
    object qDadesCOGNOM1: TStringField
      FieldName = 'COGNOM1'
    end
    object qDadesCOGNOM2: TStringField
      FieldName = 'COGNOM2'
    end
  end
  object qDocID: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select i.c_historia, r.id_informe, r.accio from informes_reg r'
      'join informes i on r.id_informe=i.id_informe'
      'where r.comentari = :docid and r.accio in(51,56)'
      'order by r.data desc rows 1 ')
    Left = 314
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        ParamType = ptUnknown
      end>
  end
end
