object wDataCues: TwDataCues
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 541
  Top = 286
  Height = 194
  Width = 291
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    RecvBufferSize = 65536
    Host = '10.168.102.156'
    Port = 8080
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = True
    Request.Host = '10.168.102.156'
    Request.Password = 'Ulan1234'
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Username = 'integration'
    HTTPOptions = [hoForceEncodeParams]
    Left = 38
    Top = 23
  end
  object qDades: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      
        'select hora_preingres, c_historia, nom, cognom1, cognom2 from ES' +
        'PERA where c_tractamentdesti = :tractament')
    Left = 96
    Top = 25
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
  object qDadesButton: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'select * from P_TRACTAMENTS_BUTTON(:c_tractament)')
    Left = 152
    Top = 25
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end>
    object qDadesButtonHORA_PREINGRES: TStringField
      FieldName = 'HORA_PREINGRES'
      FixedChar = True
      Size = 5
    end
    object qDadesButtonC_HISTORIA: TIntegerField
      FieldName = 'C_HISTORIA'
    end
    object qDadesButtonNOMCOMPLET: TStringField
      FieldName = 'NOMCOMPLET'
      Size = 80
    end
    object qDadesButtonNOMSENCER: TStringField
      FieldName = 'NOMSENCER'
      Size = 40
    end
    object qDadesButtonC_ESPECIAL: TStringField
      FieldName = 'C_ESPECIAL'
      FixedChar = True
      Size = 2
    end
    object qDadesButtonN_ESPECIAL: TStringField
      FieldName = 'N_ESPECIAL'
    end
    object qDadesButtonN_PRESTACIO: TStringField
      FieldName = 'N_PRESTACIO'
      Size = 35
    end
    object qDadesButtonC_CONSULTA: TStringField
      FieldName = 'C_CONSULTA'
      Size = 10
    end
    object qDadesButtonC_PORTA: TIntegerField
      FieldName = 'C_PORTA'
    end
    object qDadesButtonUBICACIO: TIntegerField
      FieldName = 'UBICACIO'
    end
    object qDadesButtonCENTRE: TStringField
      FieldName = 'CENTRE'
      FixedChar = True
      Size = 1
    end
  end
  object IdHTTP2: TIdHTTP
    MaxLineAction = maException
    RecvBufferSize = 65536
    Host = '10.168.112.114'
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = '*/*'
    Request.BasicAuthentication = False
    Request.Host = '10.168.112.114'
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 38
    Top = 79
  end
  object Button: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Button'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'RETURNS ('
      '   HORA_PREINGRES CHAR(5),'
      '   C_HISTORIA     INTEGER,'
      '   NOMCOMPLET     VARCHAR(80),'
      '   NOMSENCER      VARCHAR(40),'
      '   C_ESPECIAL     CHAR(2),'
      '   N_ESPECIAL     VARCHAR(20),'
      '   N_PRESTACIO    VARCHAR(35),'
      '   C_CONSULTA     VARCHAR(10),'
      '   C_PORTA        INTEGER,'
      '   UBICACIO       INTEGER,'
      '   CENTRE         CHAR(1)'
      ')'
      'AS'
      '  DECLARE VARIABLE HORA  INTEGER;'
      '  DECLARE VARIABLE DOW   INTEGER;'
      '  DECLARE VARIABLE C_COORDINADOR VARCHAR(5);'
      'BEGIN'
      ''
      
        '   SELECT E.HORA_PREINGRES, T.C_HISTORIA, F.NOMCOMPLET, M.NOMSEN' +
        'CER, M.C_ESPECIAL, S.N_ESPECIAL, P.N_PRESTACIO, P.CENTRE,'
      
        '          F_LEFT(T.HORA,2), F_DAYOFWEEK(T.DATA_INGRES)-1, T.C_CO' +
        'ORDINADOR'
      '   FROM TRACTAMENTS T'
      '   JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '   JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '   JOIN ESPECIAL S ON M.C_ESPECIAL = S.C_ESPECIAL'
      '   JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '   LEFT JOIN ESPERA E ON T.C_TRACTAMENT = E.C_TRACTAMENTDESTI'
      '   WHERE T.C_TRACTAMENT = :C_TRACTAMENT'
      
        '   INTO :HORA_PREINGRES, :C_HISTORIA, :NOMCOMPLET, :NOMSENCER, :' +
        'C_ESPECIAL, :N_ESPECIAL, :N_PRESTACIO, :CENTRE,'
      '        :HORA, :DOW, :C_COORDINADOR;'
      '   '
      
        '   SELECT H.C_CONSULTA, H.C_PORTA, PO.QMATIC_SERVICEPOINT FROM H' +
        'ORARI H'
      
        '   LEFT JOIN PORTES PO ON H.C_CONSULTA = PO.C_CONSULTA AND H.C_P' +
        'ORTA = PO.C_PORTA'
      '   WHERE H.C_METGE = :C_COORDINADOR AND H.DIA_SETMANA = :DOW'
      '   AND (H.HORAIN <= :HORA) AND (H.HORAFI >= :HORA)'
      '   INTO :C_CONSULTA, :C_PORTA, :UBICACIO;'
      '   '
      '   SUSPEND;'
      ''
      'END')
    Select.Strings = (
      'SELECT * FROM P_ESPERA_AGENDA(NULL, NULL, "TODAY", "TODAY")'
      '[FILTRO]'
      '[ORDEN]')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'wDataBasics.Tractaments'
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
    Modi = True
    ModiFecha = 37168.762686794
    Left = 96
    Top = 80
  end
end
