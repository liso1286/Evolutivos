object wDataInterconQ: TwDataInterconQ
  OldCreateOrder = False
  Left = 652
  Top = 234
  Height = 704
  Width = 1215
  object qInsInterCon: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'INSERT INTO INTERCON'
      
        '(C_INTERCON, C_Especial, C_Tipus, URGENT, C_Historia, C_Tractame' +
        'nt,'
      'Data1, C_Metge1, Solicita, Diag_Inicial, Estat,'
      'C_Diag_Inicial, InformeRx, Data_Prevista, tipus_anal, c_motiu)'
      'VALUES'
      
        '(:C_INTERCON, :C_Especial, :C_Tipus, :URGENT, :C_Historia,:C_Tra' +
        'ctament,'
      ':Data1, :C_Metge1, :Solicita, :Diag_Inicial, :Estat,'
      
        ':C_Diag_Inicial, :InformeRx, :Data_Prevista,:tipus_anal, :c_moti' +
        'u)'
      ''
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' ')
    Left = 48
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_Especial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_Tipus'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'URGENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'C_Historia'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'C_Tractament'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_Metge1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Solicita'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Diag_Inicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ESTAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_Diag_Inicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'InformeRx'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Data_Prevista'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'tipus_anal'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'c_motiu'
        ParamType = ptInput
      end>
  end
  object qFiInterCon: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'UPDATE INTERCON SET '
      'DATA3 = :DATA3,'
      'C_METGE3 = :C_METGE3, '
      'COMENTARI = :COMENTARI,'
      'ESTAT = :ESTAT,'
      'Diag_Definitiu = :Diag_Definitiu'
      'WHERE C_INTERCON = :C_INTERCON')
    Left = 48
    Top = 256
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DATA3'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_METGE3'
        ParamType = ptUnknown
      end
      item
        DataType = ftMemo
        Name = 'COMENTARI'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ESTAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Diag_Definitiu'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end>
  end
  object qRespostaInterCon: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'UPDATE INTERCON SET '
      'DATA2 = :DATA2,'
      'C_METGE2 = :C_METGE2, '
      'RESPOSTA = :RESPOSTA,'
      'ESTAT = :ESTAT,'
      'VISTA = :vista'
      'WHERE C_INTERCON = :C_INTERCON')
    Left = 48
    Top = 160
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DATA2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_METGE2'
        ParamType = ptUnknown
      end
      item
        DataType = ftMemo
        Name = 'RESPOSTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ESTAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'vista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end>
  end
  object dsInterConProvEsp: TDataSource
    DataSet = qInterConProvEsp
    Left = 354
    Top = 64
  end
  object qInterConProvEsp: TQuery
    AutoCalcFields = False
    AfterOpen = qInterConProvEspAfterOpen
    AfterClose = qInterConProvEspAfterClose
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, S.Respon' +
        'dreAltresEspe, E.*, T.C_COORDINADOR, S.DretEspe, S.DretMetge'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS = "PROVESP"'
      'order by I.DATA1')
    Left = 354
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object qInterConAnal: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, S.Respon' +
        'dreAltresEspe, S.DRETESPE, E.*, T.C_COORDINADOR, S.DretEspe, S.D' +
        'retMetge'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS = "ANAL"'
      'order by I.DATA1')
    Left = 772
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object dsInterConAnal: TDataSource
    DataSet = qInterConAnal
    Left = 772
    Top = 64
  end
  object qAnalitica: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT NUM_HIST'
      'FROM ANACABE'
      'WHERE NUM_HIST =  :historia'
      'union'
      'select cast(i.c_historia as float) from intercon i'
      'inner join analit_solicitud ans on i.c_intercon=ans.c_intercon '
      ''
      
        'where i.c_historia=:historia and (i.data_prevista<='#39'TODAY'#39' or i.' +
        'data_prevista is null)')
    Left = 772
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptUnknown
      end>
  end
  object qAnaliticaUsra: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT NUM_HIST, NUMPAR'
      'FROM ANACABE'
      'WHERE NUMPAR = :PARENT'
      '')
    Left = 772
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PARENT'
        ParamType = ptUnknown
      end>
  end
  object dsInterCon: TDataSource
    DataSet = qInterCon
    Left = 48
    Top = 64
  end
  object qInterCon: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, S.Respon' +
        'dreAltresEspe, S.DretEspe, S.DretMetge, E.*'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS IN ("INTERCON","CONSULTOR")'
      'and I.C_ESPECIAL <> '#39'57'#39' and I.C_ESPECIAL <> '#39'33'#39
      'order by I.DATA1'
      ' '
      ' '
      ' ')
    Left = 48
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object qInterConRx: TQuery
    AutoCalcFields = False
    AfterOpen = qInterConRxAfterOpen
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, S.Respon' +
        'dreAltresEspe, E.*, T.C_COORDINADOR, S.DretEspe, S.DretMetge'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS = "RX"'
      'order by I.DATA1'
      '')
    Left = 492
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object dsInterConRx: TDataSource
    DataSet = qInterConRx
    Left = 492
    Top = 64
  end
  object qInsProvaEsp: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'INSERT INTO InterConProvaEsp'
      '(C_INTERCON ,C_PROVA, C_ICD, C_METGE, DATA_VALIDA, VERSIOCIM)'
      'VALUES'
      
        '(:C_InterCon, :C_Prova, :C_ICD, :c_metge, :data_valida, :versioc' +
        'im)'
      ''
      ''
      ' ')
    Left = 354
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_Prova'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'C_ICD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_metge'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_valida'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'versiocim'
        ParamType = ptInput
      end>
  end
  object qInterConProvEsp2: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsInterConProvEsp
    SQL.Strings = (
      'SELECT * '
      'FROM InterconProvaEsp'
      'WHERE C_INTERCON = :c_intercon')
    Left = 354
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end>
  end
  object dsInterConOrtesis: TDataSource
    DataSet = qInterConOrtesis
    Left = 228
    Top = 64
  end
  object qInterConOrtesis: TQuery
    AutoCalcFields = False
    AfterOpen = qInterConOrtesisAfterOpen
    AfterClose = qInterConOrtesisAfterClose
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, O.CONTROLPROCES, T.C_PRESTACIO, T.DATA_INGRES, S.Res' +
        'pondreAltresEspe, S.N_ESPECIAL, E.*, S.DretEspe, S.DretMetge, T.' +
        'C_CentreFac'
      'from INTERCON I'
      'join INTERCONORTESIS O on I.C_INTERCON = O.C_INTERCON'
      'join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL '
      'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT'
      'where I.C_TIPUS = "ORTESIS"'
      'and I.C_HISTORIA = :HISTORIA'
      'order by I.DATA1')
    Left = 228
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object qInterConOrtesis2: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsInterConOrtesis
    SQL.Strings = (
      'SELECT * '
      'FROM INTERCONORTESIS'
      'WHERE C_INTERCON = :c_intercon'
      '')
    Left = 228
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
      end>
  end
  object qInterConUro: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, E.*, S.D' +
        'retEspe, S.DretMetge'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS = '#39'UROS'#39
      'order by I.DATA1')
    Left = 219
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object qInterconEco: TQuery
    AutoCalcFields = False
    AfterOpen = qInterconEcoAfterOpen
    AfterScroll = qInterConAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, E.*, S.D' +
        'retEspe, S.DretMetge'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS = '#39'ECOS'#39
      'order by I.DATA1'
      ''
      '')
    Left = 644
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object dsInterconUro: TDataSource
    DataSet = qInterConUro
    Left = 219
    Top = 480
  end
  object dsInterconEco: TDataSource
    DataSet = qInterconEco
    Left = 644
    Top = 64
  end
  object qRespostaInterconV: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'INSERT INTO INTERCONVALIDA'
      '(ID, C_INTERCON, RESPOSTA, C_USUARI, DATA, ESTAT_VALIDA)'
      'VALUES'
      '(:ID, :C_INTERCON, :RESPOSTA, :C_USUARI, :DATA, :ESTAT_VALIDA)')
    Left = 48
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'RESPOSTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_USUARI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESTAT_VALIDA'
        ParamType = ptUnknown
      end>
  end
  object qInterConProvEspDicom: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    DataSource = dsInterConProvEsp
    SQL.Strings = (
      'select  study_description,studyuid from dicomstudies'
      'where c_intercon=:c_intercon'
      '')
    Left = 354
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsInterConProvEspDicom: TDataSource
    DataSet = qInterConProvEspDicom
    Left = 354
    Top = 160
  end
  object dsBancSang: TDataSource
    DataSet = qBancSang
    Left = 867
    Top = 64
  end
  object qBancSang: TQuery
    AfterScroll = qBancSangAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select  I.C_TRACTAMENT, I.C_HISTORIA, T.C_PRESTACIO, T.DATA_INGR' +
        'ES, T.C_COORDINADOR, T.C_PLANTA,'
      
        '           I.C_METGE1 /*as METGE_SOLICITA*/, I.DATA1 /*as DATA_S' +
        'OLICITA*/, '
      
        '           I.C_METGE2 /*as METGE_ANULA*/, I.DATA2 /*as DATA_ANUL' +
        'A*/, I.RESPOSTA,'
      '           I.URGENT, C.N_CODI as N_URGENCIA, I.C_ESPECIAL, '
      
        '           I.ESTAT, E.TITULCURS as N_ESTAT, E.ANULABLE, E.NEXTES' +
        'TAT,'
      '           I.DATA_PREVISTA, B.*, I.C_TIPUS, F.FECHA_NAC'
      'from BANCSANG B'
      'join INTERCON I on B.C_INTERCON = I.C_INTERCON'
      'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT'
      'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      'join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'join CODICAMPS C on   C.TIPUSCODI = "TRANSFURGENCIA" '
      '                                and B.URGENCIA = C.C_CODI'
      'where  I.C_HISTORIA = :historia'
      'and I.C_TIPUS = "BANCSANG"'
      'order by I.DATA1')
    Left = 867
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end>
  end
  object qInsBancSang: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into BANCSANG'
      '(C_INTERCON, EDAT, PES, URGENCIA, '
      ' HEMATIES, PLASMAFRESC,  PLAQUETES, CRIOPRECIPITATS,'
      ' A_HEMATOCRIT, A_AP, A_PLAQUETES, A_FIBRINOGEN,'
      ' TRANSF_ANT, DATA_ANT, REACCIONS_ANT)'
      'values'
      '(:C_InterCon, :Edat, :Pes, :Urgencia,'
      ' :Hematies, :PlasmaFresc, :Plaquetes, :Crioprecipitats, '
      ' :A_Hematocrit, :A_Ap, :A_Plaquetes, :A_Fibrinogen,'
      ' :Transf_Ant, :Data_Ant, :Reaccions_Ant)')
    Left = 867
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_Intercon'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Edat'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'Pes'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Urgencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Hematies'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PlasmaFresc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Plaquetes'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Crioprecipitats'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'A_Hematocrit'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'A_Ap'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'A_Plaquetes'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'A_Fibrinogen'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Transf_Ant'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Data_Ant'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Reaccions_Ant'
        ParamType = ptInput
      end>
  end
  object dsInterConProvEspDicomRx: TDataSource
    DataSet = qInterConProvEspDicomRx
    Left = 492
    Top = 160
  end
  object qInterConProvEspDicomRx: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    DataSource = dsInterConRx
    SQL.Strings = (
      
        'select  study_description, studyuid, data_informe_radiologo,c_in' +
        'tercon'
      'from dicomstudies'
      'where c_intercon=:c_intercon')
    Left = 492
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qInterConOrtesisReg: TQuery
    AutoCalcFields = False
    OnCalcFields = qInterConOrtesisRegCalcFields
    DatabaseName = 'Interna'
    DataSource = dsInterConOrtesis
    SQL.Strings = (
      
        'select IR.C_INTERCON, IR.TIPUS, IR.ORDRE, cast(IR.C_USUARI as ch' +
        'ar(5)) as C_USUARI, IR.DATA, IR.TEXT, M.METGE, C.N_CODI '
      'from INTERCONORTESISREG IR'
      
        'join CODICAMPS C on IR.TIPUS = C.C_CODI and C.TIPUSCODI = '#39'ORTES' +
        'IS.TIPUSREG'#39
      'left outer join METGES M on IR.C_USUARI = M.CODI'
      'where IR.C_INTERCON = :c_intercon'
      ''
      'UNION'
      ''
      
        'select I.C_INTERCON, cast(201 as smallint) as TIPUS, cast(0 as i' +
        'nteger) as ORDRE, I.C_METGE1 as C_USUARI, I.DATA1 as DATA, I.SOL' +
        'ICITA as TEXT, M.METGE, cast('#39'Sol'#183'licitud'#39' as Varchar(40)) as N_' +
        'CODI'
      'from INTERCON I'
      'join METGES M on I.C_METGE1 = M.CODI'
      'where I.C_INTERCON = :c_intercon'
      ''
      'order by 3')
    Left = 228
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'c_intercon'
        ParamType = ptInput
      end>
    object qInterConOrtesisRegC_INTERCON: TIntegerField
      FieldName = 'C_INTERCON'
    end
    object qInterConOrtesisRegORDRE: TIntegerField
      FieldName = 'ORDRE'
    end
    object qInterConOrtesisRegTIPUS: TSmallintField
      FieldName = 'TIPUS'
    end
    object qInterConOrtesisRegC_USUARI: TStringField
      FieldName = 'C_USUARI'
      Size = 5
    end
    object qInterConOrtesisRegDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qInterConOrtesisRegTEXT: TMemoField
      FieldName = 'TEXT'
      BlobType = ftMemo
      Size = 1
    end
    object qInterConOrtesisRegN_CODI: TStringField
      FieldName = 'N_CODI'
      Size = 40
    end
    object qInterConOrtesisRegMETGE: TStringField
      FieldName = 'METGE'
    end
    object qInterConOrtesisRegDIES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DIES'
      Calculated = True
    end
  end
  object dsInterconOrtesisReg: TDataSource
    DataSet = qInterConOrtesisReg
    Left = 228
    Top = 208
  end
  object qInsInterconOrtesisReg: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into INTERCONORTESISREG'
      '(C_INTERCON, ORDRE, TIPUS, C_USUARI, DATA, TEXT)'
      'values'
      '(:c_intercon, :ordre, :tipus, :c_usuari, :data, :text)')
    Left = 228
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_intercon'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ordre'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'tipus'
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
      end
      item
        DataType = ftString
        Name = 'text'
        ParamType = ptInput
      end>
  end
  object dsInterConProvEspDicomEcos: TDataSource
    DataSet = qInterConProvEspDicomEcos
    Left = 644
    Top = 160
  end
  object qInterConProvEspDicomEcos: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    DataSource = dsInterconEco
    SQL.Strings = (
      'select  study_description,studyuid from dicomstudies'
      'where c_intercon=:c_intercon')
    Left = 644
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qInterconEMG: TQuery
    AutoCalcFields = False
    BeforeOpen = qInterconEMGBeforeOpen
    AfterScroll = qInterConAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.C_COORDINADOR, T.DATA_INGRES, S.N_E' +
        'SPECIAL, S.DretEspe, S.DretMetge, E.*'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS = '#39'EMG'#39
      'order by I.DATA1')
    Left = 307
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
      end>
  end
  object dsInterconEMG: TDataSource
    DataSet = qInterconEMG
    Left = 307
    Top = 480
  end
  object qInterconFarma: TQuery
    AutoCalcFields = False
    BeforeOpen = qInterconFarmaBeforeOpen
    AfterScroll = qInterConAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, S.Respon' +
        'dreAltresEspe, E.*, U.DESCRIPCIO as TIPUS, T.C_COORDINADOR, S.Dr' +
        'etEspe, S.DretMetge'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'left outer join TIPUSINTERCON U on I.C_TIPUS = U.C_TIPUS'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_ESPECIAL = 57'
      'order by I.DATA1')
    Left = 491
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object dsInterconFarma: TDataSource
    DataSet = qInterconFarma
    Left = 491
    Top = 480
  end
  object dsInterconEASE: TDataSource
    DataSet = qInterconEASE
    Left = 587
    Top = 480
  end
  object qInterconEASE: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, cast(F_If(P.ESEASE, '#39'='#39', '#39'C'#39', "GBCN",' +
        ' "Hospital") as Varchar(10)) as CENTRE, T.DATA_INGRES, S.N_ESPEC' +
        'IAL, S.RespondreAltresEspe, E.*, S.DretEspe, S.DretMetge'
      'from INTERCON I'
      'join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_ESPECIAL = 33'
      'order by I.DATA1')
    Left = 587
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object qDispCap: TQuery
    AfterOpen = qDispCapAfterOpen
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select D.C_DISP, D.C_HISTORIA, D.DATA_DISP, M.METGE, '
      'D.C_LOTE, L.N_LOTE, D.DURACIO, '
      'D.PREPARAT, D.CONFIRMAT, D.C_ESTATFAC,'
      
        'D.C_PRESTACIO, P.RESUM, D.DATA_INGRES, cast(F_DateNull(T.DATA_AL' +
        'TA, T.DATA_PREALTA) as Date) as DATA_ALTA'
      'from DISPCAP D'
      'left outer join PRESTACION P on D.C_PRESTACIO = P.C_PRESTACIO'
      'left outer join METGES M on D.C_METGE = M.CODI'
      'left outer join TRACTAMENTS T on D.C_TRACTAMENT = T.C_TRACTAMENT'
      'join LOTE L on D.C_LOTE = L.C_LOTE'
      'where D.C_HISTORIA = :historia'
      'order by D.DATA_DISP desc')
    Left = 47
    Top = 429
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptUnknown
      end>
  end
  object dsDispCap: TDataSource
    DataSet = qDispCap
    Left = 47
    Top = 481
  end
  object qTractHistoric: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select T.C_TRACTAMENT, T.C_PRESTACIO, T.DATA_INGRES, T.C_COORDIN' +
        'ADOR, P.RESUM, P.ESEASE, M.METGE'
      'from TRACTAMENTS T'
      'join METGES M on T.C_COORDINADOR = M.CODI  /* l'#237'nia 2 */'
      'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO '
      
        'join DRETSPRESTA D on D.C_PRESTACIO = P.C_PRESTACIO and D.C_DRET' +
        ' = '#39'P167'#39
      
        'join CODICAMPS F on T.C_ESTATFAC = F.C_CODI and F.TIPUSCODI = "E' +
        'STATFACTU" and F.R_CODI <> 9 '
      'where T.C_HISTORIA = :historia'
      'and P.C_PRESTACIO <> "7000"    /* excloem o no EASE   l'#237'nia 7 */'
      
        '/* ja no excloem les telem'#224'tiques, pq tamb'#233' poden tenir intercon' +
        'sultes */'
      'and T.DATA_ALTA >= "TODAY" - 90     /* dies enrere   l'#237'nia 9 */'
      'order by T.DATA_ALTA desc')
    Left = 996
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object qInterconNF: TQuery
    AfterScroll = qInterconNFAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsInterCon
    SQL.Strings = (
      
        'select I.ID, I.C_PROVA, P.R_PROVA, I.REALITZADA, I.COMENTARI, I.' +
        'DATA_PROVA, I.METGE_PROVA'
      'from INTERCONNFPROVES I'
      'join NFPROVES P on I.C_PROVA = P.C_PROVA'
      'where I.C_INTERCON = :c_intercon')
    Left = 40
    Top = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsInterconNF: TDataSource
    DataSet = qInterconNF
    Left = 40
    Top = 608
  end
  object cProvesNF: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select C_PROVA, R_PROVA, N_PROVA'
      'from NFPROVES'
      'where BAIXA <> '#39'B'#39
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataIntercon.NFProves
    Titulo = 'Proves neurofisiol'#242'giques disponibles'
    Orden.Strings = (
      'ordre')
    OrdenDB.Strings = (
      'ordre')
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
    VerSeleccionar = True
    CamposOculta.Strings = (
      'C_PROVA')
    AlSeleccionar = cProvesNFAlSeleccionar
    EnActivar = cProvesNFEnActivar
    Left = 106
    Top = 608
  end
  object tInformes: TkbmMemTable
    AutoSort = True
    SortFields = 'FileName'
    SortOptions = []
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible]
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.32'
    AfterScroll = tInformesAfterScroll
    Left = 1116
    Top = 16
    object tInformesFileName: TStringField
      FieldName = 'FileName'
      Size = 254
    end
    object tInformesTitol: TStringField
      FieldName = 'Titol'
      Size = 50
    end
  end
  object dsInformes: TDataSource
    AutoEdit = False
    DataSet = tInformes
    Left = 1116
    Top = 64
  end
  object qTract: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select T.C_TRACTAMENT, T.C_PRESTACIO, T.DATA_INGRES, T.C_COORDIN' +
        'ADOR, P.RESUM, P.ESEASE, M.METGE'
      'from TRACTAMENTS T'
      'join METGES M on T.C_COORDINADOR = M.CODI    /* l'#237'nia 2 */'
      'join PRESTACION P on T.C_PRESTACIO = P.C_PRESTACIO'
      
        'join DRETSPRESTA D on D.C_PRESTACIO = P.C_PRESTACIO and D.C_DRET' +
        ' = '#39'P167'#39
      'where T.C_HISTORIA = :historia'
      
        'and P.ESEASE <> "S"                    /* excloem EASE   l'#237'nia 6' +
        ' */'
      
        'and P.C_PRESTACIO <> "6001"    /* excloem visites telem'#224'tiques  ' +
        ' l'#237'nia 7 */'
      'and (T.DATA_ALTA is NULL or T.DATA_ALTA >= "TODAY") ')
    Left = 996
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'historia'
        ParamType = ptInput
      end>
  end
  object qInterconFSA: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, S.Respon' +
        'dreAltresEspe, E.*, S.DretEspe, S.DretMetge'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_ESPECIAL = 63'
      'order by I.DATA1')
    Left = 860
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object dsInterconFSA: TDataSource
    DataSet = qInterconFSA
    Left = 860
    Top = 480
  end
  object qInterconMarxa: TQuery
    AutoCalcFields = False
    AfterOpen = qInterconMarxaAfterOpen
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, S.Respon' +
        'dreAltresEspe, E.*, S.DretEspe, S.DretMetge'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_ESPECIAL = 62'
      'order by I.DATA1 ')
    Left = 950
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object dsInterconMarxa: TDataSource
    DataSet = qInterconMarxa
    Left = 950
    Top = 480
  end
  object cFSAPend: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select I.C_HISTORIA, F.NOMCOMPLET, T.C_PRESTACIO, T.DATA_INGRES,' +
        '  '
      
        '          T.DATA_PREALTA, T.DATA_ALTA,  I.DATA1, M.METGE, I.C_ME' +
        'TGE1, I.C_INTERCON, I.C_ESPECIAL'
      'from INTERCON I'
      'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT'
      'join FILIACIO F on  I.C_HISTORIA = F.NUM_HIST'
      'join METGES M on I.C_METGE1 = M.CODI'
      'where I.ESTAT = 4 AND I.C_TIPUS='#39'FSA'#39
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataIntercon.InterCon
    Titulo = 'Mapa de pressions pendents'
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
      'C_INTERCON'
      'C_ESPECIAL'
      'C_METGE1')
    AlSeleccionar = cFSAPendAlSeleccionar
    EnActivar = PendEnActivar
    EnDesactivar = PendEnDesactivar
    AlTancar = PendAlTancar
    Left = 860
    Top = 536
  end
  object cMarxaPend: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select I.C_HISTORIA,NOMCOMPLET, T.C_PRESTACIO, T.DATA_INGRES,  t' +
        '.c_coordinador, t.c_tractament,'
      
        '          T.DATA_PREALTA, T.DATA_ALTA,  I.DATA1, M.METGE, I.C_ME' +
        'TGE1, I.C_INTERCON, I.C_ESPECIAL, i.data_Prevista'
      'from INTERCON I'
      'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT'
      'join FILIACIO F on  I.C_HISTORIA = F.NUM_HIST'
      'join METGES M on I.C_METGE1 = M.CODI'
      'where I.ESTAT = 4 AND I.C_TIPUS='#39'MARXA'#39
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataIntercon.InterCon
    Titulo = 'Estudis de la marxa pendents'
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
    NomAltreBoto = 'D.Prevista'
    Filtrat = True
    CamposOculta.Strings = (
      'C_ESPECIAL'
      'C_METGE1'
      'c_coordinador'
      'c_tractament')
    AlSeleccionar = cMarxaPendAlSeleccionar
    ConsultaGetSqlField = cMarxaPendConsultaGetSqlField
    EnClicAltreBoto = cMarxaPendEnClicAltreBoto
    EnActivar = PendEnActivar
    EnDesactivar = PendEnDesactivar
    AlTancar = PendAlTancar
    Left = 950
    Top = 536
  end
  object cInformeProvEsp: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'SELECT E.FET as ESTAT,I.C_HISTORIA, F.NOMCOMPLET, I.URGENT, I.DA' +
        'TA1, I.C_METGE1, T.C_COORDINADOR, P.DATA_RESULTAT,i.c_intercon F' +
        'ROM INTERCON I'
      'JOIN INTERCONPROVAESP P ON I.C_INTERCON=P.C_INTERCON'
      'JOIN TRACTAMENTS T ON I.C_TRACTAMENT=T.C_TRACTAMENT'
      'JOIN estatintercon e ON i.estat = e.c_estat'
      'left join FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      'WHERE I.C_TIPUS='#39'PROVESP'#39' AND I.ESTAT IN(33,35) AND '
      '(I.C_METGE1='#39'P45'#39' OR T.C_COORDINADOR='#39'P45'#39') /* linia 6 */'
      '[AND FILTRO]'
      '[ORDEN]')
    SqlDicTotal.Strings = (
      'SELECT COUNT(*) FROM INTERCON I'
      'JOIN INTERCONPROVAESP P ON I.C_INTERCON=P.C_INTERCON'
      'JOIN TRACTAMENTS T ON I.C_TRACTAMENT=T.C_TRACTAMENT'
      'WHERE I.C_TIPUS='#39'PROVESP'#39' AND I.ESTAT IN(33,35) AND '
      '(I.C_METGE1='#39'P45'#39' OR T.C_COORDINADOR='#39'P45'#39') /* linia 4 */'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataIntercon.InterCon
    Titulo = 'Informes de Proves Especials pendents de veure'
    Orden.Strings = (
      'data1 desc')
    OrdenDB.Strings = (
      'data1 desc')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerSimple = True
    VerSeleccionar = True
    CamposOculta.Strings = (
      'c_tractament'
      'c_intercon')
    AlSeleccionar = cInformeProvEspAlSeleccionar
    EnActivar = PendEnActivar
    EnDesactivar = PendEnDesactivar
    AlTancar = PendAlTancar
    Left = 354
    Top = 312
  end
  object cInterconNF: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'select I.C_HISTORIA, F.NOMCOMPLET, I.URGENT, I.DATA1, '
      
        '          M.METGE, I.C_INTERCON, I.DATA_PREVISTA, U.METGE as PRO' +
        'GRAMAT,'
      '          E.FET as ESTAT, E.PENDENT'
      'from INTERCON I'
      'join FILIACIO F on I.C_HISTORIA = F.NUM_HIST'
      'join METGES M on I.C_METGE1 = M.CODI'
      'left outer join METGES U on I.PROGRAMATPER = U.CODI '
      'join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'where I.C_ESPECIAL = 61'
      'and I.ESTAT in (3, 36)'
      '[AND FILTRO]'
      '[ORDEN]'
      ' '
      ' '
      ' ')
    Dicionario1 = wDataIntercon.InterCon
    Titulo = 'Interconsultes a Neurofisiologia pendents'
    Orden.Strings = (
      'Data petici'#243
      'Metge petici'#243
      'N'#250'm. Hist.')
    OrdenDB.Strings = (
      'DATA1 desc'
      'METGE'
      'C_HISTORIA'
      '')
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
    NomAltreBoto = 'Reprograma'
    VerSimple = True
    VerSeleccionar = True
    CamposOculta.Strings = (
      'C_INTERCON')
    AlSeleccionar = cInterconNFAlSeleccionar
    AlPintarGrid = cInterconNFAlPintarGrid
    EnClicAltreBoto = cInterconNFEnClicAltreBoto
    EnActivar = PendEnActivar
    AlTancar = PendAlTancar
    Left = 106
    Top = 560
  end
  object qinterconvideos: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAltresAfterScroll
    DatabaseName = 'Interna'
    DataSource = dsInterconMarxa
    SQL.Strings = (
      'select * from videos where c_intercon=:c_intercon')
    Left = 1126
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'c_intercon'
        ParamType = ptUnknown
      end>
  end
  object cMarxaPendFin: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select I.C_HISTORIA, F.NOMCOMPLET, T.C_PRESTACIO, T.DATA_INGRES,' +
        '  t.c_coordinador, t.c_tractament,'
      
        '          T.DATA_PREALTA, T.DATA_ALTA,  I.DATA1, M.METGE, I.C_ME' +
        'TGE1, I.C_INTERCON, I.C_ESPECIAL, i.data_Prevista'
      'from INTERCON I'
      'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT'
      'join FILIACIO F on  I.C_HISTORIA = F.NUM_HIST'
      'join METGES M on I.C_METGE1 = M.CODI'
      'where I.ESTAT = 50 AND I.C_TIPUS='#39'MARXA'#39
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataIntercon.InterCon
    Titulo = 'Estudis de la marxa pendents de finalitzar'
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
      'C_INTERCON'
      'C_ESPECIAL'
      'C_METGE1'
      'c_coordinador'
      'c_tractament')
    AlSeleccionar = cMarxaPendFinAlSeleccionar
    EnActivar = PendEnActivar
    EnDesactivar = PendEnDesactivar
    AlTancar = PendAlTancar
    Left = 1022
    Top = 536
  end
  object qInterconPSG: TQuery
    AutoCalcFields = False
    BeforeOpen = qInterconPSGBeforeOpen
    AfterScroll = qInterConAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.C_COORDINADOR, T.DATA_INGRES, S.N_E' +
        'SPECIAL, S.DretEspe, S.DretMetge, E.*'
      'from INTERCON I'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS = '#39'PSG'#39
      'order by I.DATA1')
    Left = 395
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
      end>
  end
  object dsInterconPSG: TDataSource
    DataSet = qInterconPSG
    Left = 395
    Top = 480
  end
  object qValidaSol: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select * from INTERCONVALIDASOL where C_INTERCON = :c_intercon')
    Left = 48
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qValidaResp: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select * '
      'from INTERCONVALIDA '
      'where C_INTERCON = :c_intercon ')
    Left = 48
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptInput
        Size = 4
      end>
  end
  object qDispLin: TQuery
    DatabaseName = 'Interna'
    DataSource = dsDispCap
    SQL.Strings = (
      'select L.C_PROD, P.N_PROD, L.CANTITAT, L.CODISCS'
      'from DISPLIN L'
      'join PRODUCTES P on L.C_PROD = P.C_PROD'
      'where C_DISP = :c_disp')
    Left = 111
    Top = 429
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_DISP'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsDispLin: TDataSource
    DataSet = qDispLin
    Left = 111
    Top = 481
  end
  object cTRespPend: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select I.C_HISTORIA, F.NOMCOMPLET, T.C_PRESTACIO, T.DATA_INGRES,' +
        '  '
      
        '          T.DATA_PREALTA, T.DATA_ALTA,  I.DATA1, M.METGE, I.C_ME' +
        'TGE1, I.C_INTERCON, I.C_ESPECIAL'
      'from INTERCON I'
      'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT'
      'join FILIACIO F on  I.C_HISTORIA = F.NUM_HIST'
      'join METGES M on I.C_METGE1 = M.CODI'
      'where I.ESTAT = 1 AND I.C_ESPECIAL=77'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataIntercon.InterCon
    Titulo = 'Ter'#224'pies respirat'#242'ries pendents'
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
      'C_INTERCON'
      'C_ESPECIAL'
      'C_METGE1')
    AlSeleccionar = cTRespPendAlSeleccionar
    EnActivar = PendEnActivar
    EnDesactivar = PendEnDesactivar
    AlTancar = PendAlTancar
    Left = 1124
    Top = 528
  end
  object qInsInterconResposta: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into INTERCONRESPOSTES'
      '(C_INTERCON, DATA_RESPOSTA, RESPOSTA, C_METGE_RESPOSTA)'
      'values'
      '(:c_intercon, :data2, :resposta, :c_metge)')
    Left = 360
    Top = 576
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_intercon'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'resposta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_metge'
        ParamType = ptInput
      end>
  end
  object qInterconRespostes: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select  * '
      'from INTERCONRESPOSTES '
      'where C_INTERCON = :c_intercon'
      'order by DATA_RESPOSTA asc'
      ' '
      ' ')
    Left = 248
    Top = 576
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qInsInterconSeguiment: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'insert into INTERCONRESPOSTES'
      
        '(C_INTERCON, DATA_PREVISTA, DATA_SEGUIMENT, C_METGE_SEGUIMENT, C' +
        'OMENTARISEGUIMENT)'
      'values'
      
        '(:c_intercon, :data_prevista, :data_seguiment, :c_metge, :coment' +
        'ari)')
    Left = 480
    Top = 576
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_intercon'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftDate
        Name = 'data_prevista'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data_seguiment'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_metge'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'comentari'
        ParamType = ptInput
      end>
  end
  object qUpInterconSeguiment: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'update INTERCON '
      'set DataProgramat = :dataprogramat,'
      '      ProgramatPer = :programatper,'
      '      Data_Prevista = :data_prevista,'
      '      ComentariProgramacio = :comentariprogramacio,'
      '      Estat = :estat'
      'where C_Intercon = :c_intercon')
    Left = 600
    Top = 576
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dataprogramat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programatper'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data_prevista'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'comentariprogramacio'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'estat'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_intercon'
        ParamType = ptInput
      end>
  end
  object qValidaRespMultiples: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select * '
      'from INTERCONVALIDA '
      'where C_INTERCON = :c_intercon '
      'and data = :data_resposta'
      'and c_usuari = :metge_resposta')
    Left = 144
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_INTERCON'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'data_resposta'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'metge_resposta'
        ParamType = ptUnknown
      end>
  end
  object qInterconPROA: TQuery
    AutoCalcFields = False
    AfterScroll = qInterConAfterScroll
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select I.*, T.C_PRESTACIO, T.DATA_INGRES, S.N_ESPECIAL, S.Respon' +
        'dreAltresEspe, S.DretEspe, S.DretMetge, E.*, C.C_INTERCON as C_E' +
        'PI, C.ESTAT as ESTATEPI, C.DIAGNOSTICD'
      'from INTERCON I'
      
        'left outer join  INTERCON_COMUNICATEPI C on I.C_INTERCON = C.C_I' +
        'NTERCON'
      'left outer join ESTATINTERCON E on I.ESTAT = E.C_ESTAT'
      'left outer join ESPECIAL S on I.C_ESPECIAL = S.C_ESPECIAL'
      'left outer join TRACTAMENTS T on T.C_TRACTAMENT = I.C_TRACTAMENT'
      'where I.C_HISTORIA = :HISTORIA'
      'and I.C_TIPUS = "PROA"'
      
        'and I.ESTAT not between 80 and 89  /* filtre no anul'#183'lades -----' +
        '- l'#237'nia 8 */'
      'order by I.DATA1'
      ' '
      ' '
      ' ')
    Left = 672
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HISTORIA'
        ParamType = ptUnknown
        Value = 5565
      end>
  end
  object dsInterconPROA: TDataSource
    DataSet = qInterconPROA
    Left = 672
    Top = 480
  end
  object insDiag: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'insert into DIAGNOSTICS ('
      'C_TRACTAMENT, '
      'TIPUS, '
      'ORDRE, '
      'CLASSE, '
      'N_DIAGNOSTIC, '
      'C_METGE, '
      'DATA'
      ') '
      'values ('
      ':tract, '
      '"P", '
      ':ordre, '
      '"C", '
      ':diag, '
      ':metge, '
      '"NOW"'
      ')')
    Left = 120
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tract'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ordre'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'diag'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'metge'
        ParamType = ptInput
      end>
  end
  object qcodrsana_apa: TQuery
    AutoCalcFields = False
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select * from codrsana_apa')
    Left = 772
    Top = 216
  end
  object cPacientsUH: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      
        'select T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.C_COORDINA' +
        'DOR, T.DATA_INGRES, F.NOMCOMPLET, F.EDAT, F.SEXO, U.N_UNITATM, T' +
        '.C_LLIT, T.DATA_INGRES, Coalesce(T.DATA_ALTA, T.DATA_PREALTA) as' +
        ' DATA_ALTA'
      'from TRACTAMENTS T'
      'join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      'join UNITATM U on F.C_UNITATMEDICA = U.C_UNITATM'
      'where  T.C_PRESTACIO = '#39'1004'#39
      'and (T.DATA_ALTA is Null or T.DATA_ALTA >= "TODAY")'
      '[AND FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Tract_Resum
    Dicionario2 = wDataBasics.Filiacio
    Titulo = 
      'Seleccioneu els pacients per als quals voleu generar la petici'#243' ' +
      'de cultiu actual'
    Orden.Strings = (
      'Llit')
    OrdenDB.Strings = (
      'T.C_LLIT')
    Filtros = <
      item
        Nombre = 'UH'
        NombreDB = 'C_PLANTA'
        Tipo = tiCaracter
        Condicion = tiIgual
      end
      item
        Nombre = 'NHC diferent'
        NombreDB = 'C_Historia'
        Tipo = tiNumero
        Condicion = tiDiferente
      end>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = True
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    VerExcel = False
    VerPrint = False
    VeureSelTots = True
    Indicacio = 'Ctrl+Clic per seleccionar o des-seleccionar un registre'
    VerSimple = True
    VerSeleccionar = True
    CamposOculta.Strings = (
      'C_TRACTAMENT'
      'C_PRESTACIO'
      'C_COORDINADOR'
      'DATA_INGRES')
    AlSeleccionar = cPacientsUHAlSeleccionar
    Left = 772
    Top = 272
  end
end
