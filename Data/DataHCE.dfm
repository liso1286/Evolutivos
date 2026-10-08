object wDataHCE: TwDataHCE
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 684
  Top = 177
  Height = 866
  Width = 649
  object SingleSignOn: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'token'
        NombreDB = 'token'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'username'
        NombreDB = 'username'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'origin'
        NombreDB = 'origin'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'nhc'
        NombreDB = 'nhc'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'expire'
        NombreDB = 'expire'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'foreignId'
        NombreDB = 'foreign_id'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'token'
        NombreDB = 'token'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'token')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'SingleSignOn'
    NombreTabla = 'HCE_SINGLE_SIGN_ON'
    Organiza = tbBase
    CamposVer.Strings = (
      'token'
      'username'
      'origin'
      'nhc'
      'expire')
    IndiceVer = 'token'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 24
  end
  object qInsSingleSignOn: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'INSERT INTO HCE_SINGLE_SIGN_ON'
      '(token, username, origin, nhc, expire, foreign_id)'
      'VALUES'
      '(:token, :username, :origin, :nhc, :expire, :foreign_id)')
    Left = 138
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'token'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'origin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nhc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'expire'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'foreign_id'
        ParamType = ptUnknown
      end>
  end
  object P_GrantHCE: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GrantHCE'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '  DECLARE VARIABLE tablename VARCHAR(32);'
      'BEGIN'
      '      FOR SELECT rdb$relation_name'
      '      FROM rdb$relations'
      '      WHERE (rdb$system_flag IS NULL OR rdb$system_flag = 0)'
      '      /*AND rdb$view_blr IS NULL*/'
      '      INTO :tablename DO'
      '      BEGIN'
      
        '            EXECUTE STATEMENT ('#39'grant SELECT on table '#39' || :tabl' +
        'ename || '#39' to user HCE'#39');'
      '      END;'
      ''
      '/*'
      
        '      EXECUTE STATEMENT ('#39'grant INSERT  on table HCE_SINGLE_SIGN' +
        '_ON to user HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant DELETE  on table HCE_SINGLE_SIGN' +
        '_ON to user HCE'#39');'
      ''
      
        '      EXECUTE STATEMENT ('#39'grant EXECUTE on procedure P_SEMAFORS_' +
        'NHC to user HCE'#39');'
      ''
      ''
      
        '      EXECUTE STATEMENT ('#39'grant INSERT  on table ECG_REPLY_LOG t' +
        'o user HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant DELETE  on table ECG_REPLY_LOG t' +
        'o user HCE'#39');'
      '      '
      
        '      EXECUTE STATEMENT ('#39'grant INSERT  on table FILI_DADESFAC t' +
        'o user HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant DELETE  on table FILI_DADESFAC t' +
        'o user HCE'#39');'
      ''
      
        '      EXECUTE STATEMENT ('#39'grant INSERT  on table HL7_LOG to user' +
        ' HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant EXECUTE on procedure P_HL7_LOG_A' +
        'NOTA to user HCE'#39');'
      ''
      
        '      EXECUTE STATEMENT ('#39'grant INSERT  on table FILIACIO to use' +
        'r HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant UPDATE  on table FILIACIO to use' +
        'r HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant DELETE  on table FILIACIO to use' +
        'r HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant INSERT  on table FILI_TDI to use' +
        'r HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant DELETE  on table FILI_TDI to use' +
        'r HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant EXECUTE on procedure P_FILIACIO_' +
        'ASSIGNANUMERO to user HCE'#39');'
      
        '      EXECUTE STATEMENT ('#39'grant EXECUTE on procedure P_FILIACIO_' +
        'DIRECCION to user HCE'#39');'
      ''
      '*/'
      ''
      ''
      ''
      '/*'
      
        '      un cop borrat i creat aquest procedure, cal executarlo per' +
        ' que donar permisos:'
      '      execute  PROCEDURE  P_CONFIG_GRANTHCE'
      '*/'
      ''
      'END'
      '')
    Select.Strings = (
      'EXECUTE PROCEDURE P_CONFIG_GRANTHCE')
    Dic1 = wDataConfig.Config
    Dic1Name = 'wDataConfig.Config'
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
    Left = 228
    Top = 24
  end
  object HceLogUppCAP: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log Id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_UPPCAP'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PK value'
        NombreDB = 'PK_VALUE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Register'
        NombreDB = 'REGISTER'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Old value'
        NombreDB = 'OLD_VALUE'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Action DB'
        NombreDB = 'ACTION_DB'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = #39'I:insert;'#39'U'#39' update; '#39'D'#39' delete'
      end>
    Indices = <
      item
        Nombre = 'LogId'
        NombreDB = 'LogId'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogUppCaP'
    NombreTabla = 'HCE_LOGUPPCAP'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log Id'
      'PK value'
      'Register'
      'Old value'
      'Action DB')
    IndiceVer = 'LogId'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 80
  end
  object HceLogUppLin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log Id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOGUPPLIN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PK value 1'
        NombreDB = 'PK_VALUE_1'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PK value 2'
        NombreDB = 'PK_VALUE_2'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Register'
        NombreDB = 'REGISTER'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Old value'
        NombreDB = 'OLD_VALUE'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Action DB'
        NombreDB = 'ACTION_DB'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        Comentario = #39'I:insert;'#39'U'#39' update; '#39'D'#39' delete'
      end>
    Indices = <
      item
        Nombre = 'LogId'
        NombreDB = 'LogId'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogUppLin'
    NombreTabla = 'HCE_LOGUPPLIN'
    Organiza = tbBase
    CamposVer.Strings = (
      'Register'
      'Old value'
      'Action DB'
      'PK value 1'
      'PK value 2')
    IndiceVer = 'LogId'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 138
    Top = 80
  end
  object HceLogEscalesCap: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log ID'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_ESCALESCAP'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PK value'
        NombreDB = 'PK_VALUE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Register'
        NombreDB = 'REGISTER'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Old value'
        NombreDB = 'OLD_VALUE'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Action DB'
        NombreDB = 'ACTION_DB'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_HCELOGESCALESCAP'
        Comentario = #39'I:insert;'#39'U'#39' update; '#39'D'#39' delete'
      end>
    Indices = <
      item
        Nombre = 'LogId'
        NombreDB = 'LogId'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogEscalesCap'
    NombreTabla = 'HCE_LOGESCALESCAP'
    Organiza = tbBase
    CamposVer.Strings = (
      'PK value'
      'Register'
      'Old value'
      'Action DB'
      'Log ID')
    IndiceVer = 'LogId'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 428
    Top = 80
  end
  object UppCap_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '       IF (OLD.ESTAT <> NEW.ESTAT)'
      
        '       THEN INSERT INTO HCE_LOGUPPCAP (PK_VALUE, REGISTER, OLD_V' +
        'ALUE, ACTION_DB)'
      
        '                   VALUES             (  OLD.ID,    "NOW", OLD.E' +
        'STAT,       "U");'
      '   END'
      'END')
    Dic1 = wDataInfermeria.UppCap
    Dic1Name = 'UppCap'
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
    Left = 40
    Top = 139
  end
  object UppCap_AD_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '       INSERT INTO HCE_LOGUPPCAP (PK_VALUE, REGISTER, OLD_VALUE,' +
        ' ACTION_DB)'
      
        '              VALUES             (  OLD.ID,    "NOW", OLD.ESTAT,' +
        '       "D");'
      '   END'
      'END')
    Dic1 = wDataInfermeria.UppCap
    Dic1Name = 'UppCap'
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
    Accion2 = taDELETE
    Left = 138
    Top = 139
  end
  object UppLin_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '       IF (OLD.ANULAT <> NEW.ANULAT)'
      
        '       THEN INSERT INTO HCE_LOGUPPLIN (PK_VALUE_1, PK_VALUE_2, R' +
        'EGISTER,  OLD_VALUE, ACTION_DB)'
      
        '                   VALUES             (    OLD.ID,  OLD.LINIA,  ' +
        '  "NOW", OLD.ANULAT,       "U");'
      '   END'
      'END')
    Dic1 = wDataInfermeria.UppLin
    Dic1Name = 'UppLin'
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
    Left = 40
    Top = 195
  end
  object UppLin_AD_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '       INSERT INTO HCE_LOGUPPLIN (PK_VALUE_1, PK_VALUE_2, REGIST' +
        'ER,  OLD_VALUE, ACTION_DB)'
      
        '              VALUES             (    OLD.ID,  OLD.LINIA,    "NO' +
        'W", OLD.ANULAT,       "D");'
      '   END'
      'END')
    Dic1 = wDataInfermeria.UppLin
    Dic1Name = 'UppLin'
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
    Accion2 = taDELETE
    Left = 138
    Top = 195
  end
  object UppLin_AI_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '       INSERT INTO HCE_LOGUPPLIN (PK_VALUE_1, PK_VALUE_2, REGIST' +
        'ER,  OLD_VALUE, ACTION_DB)'
      
        '              VALUES             (    NEW.ID,  NEW.LINIA,    "NO' +
        'W", NEW.ANULAT,       "I");'
      '   END'
      'END')
    Dic1 = wDataInfermeria.UppLin
    Dic1Name = 'UppLin'
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
    Accion2 = taINSERT
    Left = 228
    Top = 195
  end
  object EscalesCap_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '       IF (OLD.ANULAT <> NEW.ANULAT)'
      
        '       THEN INSERT INTO HCE_LOGESCALESCAP (PK_VALUE, REGISTER,  ' +
        'OLD_VALUE, ACTION_DB)'
      
        '                   VALUES                 (OLD.CLAU,    "NOW", O' +
        'LD.ANULAT,       "U");'
      '   END'
      'END')
    Dic1 = wDataEscales.EscalesCap
    Dic1Name = 'EscalesCap'
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
    Left = 313
    Top = 139
  end
  object EscalesCap_AD_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '       INSERT INTO HCE_LOGESCALESCAP (PK_VALUE, REGISTER,  OLD_V' +
        'ALUE, ACTION_DB)'
      
        '              VALUES                 (OLD.CLAU,    "NOW", OLD.AN' +
        'ULAT,       "D");'
      '   END'
      'END')
    Dic1 = wDataEscales.EscalesCap
    Dic1Name = 'EscalesCap'
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
    Accion2 = taDELETE
    Left = 428
    Top = 139
  end
  object HcePrealtes: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Id de tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data prealta pla terap'#232'utic'
        NombreDB = 'DATA_PREALTA_TP'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data sessio conjunta pla terapeutic'
        NombreDB = 'DATA_SC_TP'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi de proc'#233's'
        NombreDB = 'C_PROCES'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Acci'#243
        NombreDB = 'ACCIO'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Id de tractament'
          'Data sessio conjunta pla terapeutic')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'HCE_PREALTES'
    NombreTabla = 'HCE_PREALTES'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id de tractament'
      'Data prealta pla terap'#232'utic'
      'Data sessio conjunta pla terapeutic'
      'Codi de proc'#233's'
      'Acci'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 228
    Top = 80
  end
  object P_TancaSC: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'TancaSC'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      '      DECLARE VARIABLE C_OBJECTIU INTEGER;'
      'BEGIN'
      '      '
      '  FOR SELECT DISTINCT O.C_OBJECTIU FROM HCE_PREALTES P'
      
        '  JOIN OBJPRESTA O ON P.C_TRACTAMENT=O.C_TRACTAMENT AND O.TANCAT' +
        '=0'
      '  WHERE P.ACCIO='#39'tp.closed'#39
      '  ORDER BY O.C_OBJECTIU'
      '  INTO :C_OBJECTIU'
      '  DO BEGIN'
      '      UPDATE OBJPRESTA SET TANCAT=1'
      '      WHERE C_OBJECTIU = :C_OBJECTIU;'
      '  END;'
      'END')
    Dic1 = HcePrealtes
    Dic1Name = 'HcePrealtes'
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
    Left = 313
    Top = 80
  end
  object UpdateNHC: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'UpdateNHC'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '  DECLARE VARIABLE NUM_HIST INTEGER;'
      '  DECLARE VARIABLE CODI     VARCHAR(5);'
      'BEGIN'
      ''
      '  FOR SELECT F.NUM_HIST, M.CODI'
      '  FROM FILIACIO F'
      '  JOIN TRACTAMENTS T ON F.NUM_HIST=T.C_HISTORIA'
      
        '  JOIN METGES M ON F.DNI=M.DNI OR (F.APELLIDO1=M.COGNOM1 AND F.A' +
        'PELLIDO2=M.COGNOM AND F.NOMBRE=M.NOMBRE)'
      '  WHERE T.C_PRESTACIO='#39'0000'#39
      '  AND NOT (M.CODI LIKE '#39'%99%'#39')'
      '  AND M.NHC IS NULL'
      
        '  AND ((SELECT COUNT(*) FROM METGES M2 WHERE M2.NOMBRE=M.NOMBRE ' +
        'AND M2.COGNOM1=M.COGNOM1 AND M2.COGNOM=M.COGNOM AND M2.CODI<>M.C' +
        'ODI) = 0)'
      '  ORDER BY F.NUM_HIST'
      '  INTO :NUM_HIST, :CODI'
      '  DO BEGIN'
      '    UPDATE METGES SET NHC=:NUM_HIST WHERE CODI=:CODI;'
      '  END;'
      '  '
      'END')
    Dic1 = wDataBasics.Metges
    Dic1Name = 'wDataBasics.Metges'
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
    Left = 313
    Top = 24
  end
  object ActionTokens: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'token'
        NombreDB = 'token'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'username'
        NombreDB = 'username'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'expire'
        NombreDB = 'expire'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'action name'
        NombreDB = 'action_name'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'token'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'token')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'HCE_ACTION_TOKENS'
    NombreTabla = 'HCE_ACTION_TOKENS'
    Organiza = tbBase
    CamposVer.Strings = (
      'token'
      'username'
      'expire'
      'action name')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 254
  end
  object qInsActionToken: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'INSERT INTO HCE_ACTION_TOKENS'
      '(token, username, action_name, expire)'
      'VALUES'
      '(:token, :username, :action_name, :expire)')
    Left = 138
    Top = 254
    ParamData = <
      item
        DataType = ftString
        Name = 'token'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'username'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'action_name'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'expire'
        ParamType = ptInput
      end>
  end
  object Config: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Identificador'
        NombreDB = 'ID'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Valor'
        NombreDB = 'VALOR'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Identificador')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'HCE_CONFIG'
    NombreTabla = 'HCE_CONFIG'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador'
      'Valor')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 228
    Top = 254
  end
  object HceLogFili: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_FILI'
      end
      item
        Aplica = kcCaracter
        Nombre = 'field_name'
        NombreDB = 'field_name'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'old_value'
        NombreDB = 'old_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'new_value'
        NombreDB = 'new_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'date_log'
        NombreDB = 'date_log'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'patient_id'
        NombreDB = 'patient_id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogFili'
    NombreTabla = 'HCE_LOG_FILI'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log id'
      'field_name'
      'old_value'
      'new_value'
      'date_log'
      'patient_id')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 328
  end
  object Fili_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE STRING_OLD_MORT VARCHAR(20);'
      'DECLARE VARIABLE STRING_NEW_MORT VARCHAR(20);'
      'BEGIN'
      '    if ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '            IF (OLD.UNITAT <> NEW.UNITAT) THEN INSERT INTO HCE_L' +
        'OG_FILI(FIELD_NAME,OLD_VALUE,NEW_VALUE,DATE_LOG,PATIENT_ID) VALU' +
        'ES ("UNITAT",OLD.UNITAT,NEW.UNITAT,"NOW",NEW.NUM_HIST);'
      
        '            IF (OLD.IDIOMA <> NEW.IDIOMA) THEN INSERT INTO HCE_L' +
        'OG_FILI(FIELD_NAME,OLD_VALUE,NEW_VALUE,DATE_LOG,PATIENT_ID) VALU' +
        'ES ("IDIOMA",OLD.IDIOMA,NEW.IDIOMA,"NOW",NEW.NUM_HIST);'
      
        '            IF (OLD.ESVIU  <> NEW.ESVIU)  THEN INSERT INTO HCE_L' +
        'OG_FILI(FIELD_NAME,OLD_VALUE,NEW_VALUE,DATE_LOG,PATIENT_ID) VALU' +
        'ES ("ESVIU", OLD.ESVIU, NEW.ESVIU, "NOW",NEW.NUM_HIST);'
      ''
      ''
      
        '            IF (((OLD.MORT IS NULL) AND (NEW.MORT IS NOT NULL)) ' +
        'OR ((OLD.MORT IS NOT NULL) AND (NEW.MORT IS NULL)) OR ((OLD.MORT' +
        ' IS NOT NULL) AND (NEW.MORT IS NOT NULL) AND (OLD.MORT <> NEW.MO' +
        'RT)))'
      '            THEN BEGIN'
      '                STRING_OLD_MORT = F_DATETOSTR(OLD.MORT);'
      '                STRING_NEW_MORT = F_DATETOSTR(NEW.MORT);'
      
        '                INSERT INTO HCE_LOG_FILI(FIELD_NAME,OLD_VALUE,NE' +
        'W_VALUE,DATE_LOG,PATIENT_ID) VALUES ("MORT",:STRING_OLD_MORT,:ST' +
        'RING_NEW_MORT,"NOW",NEW.NUM_HIST);'
      '            END;'
      '            '
      
        '            IF (OLD.C_UNITATMEDICA <> NEW.C_UNITATMEDICA) THEN I' +
        'NSERT INTO HCE_LOG_FILI(FIELD_NAME,OLD_VALUE,NEW_VALUE,DATE_LOG,' +
        'PATIENT_ID) VALUES ("C_UNITATMEDICA",OLD.C_UNITATMEDICA,NEW.C_UN' +
        'ITATMEDICA,"NOW",NEW.NUM_HIST);'
      '    END'
      ''
      'END')
    Dic1 = wDataBasics.Filiacio
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
    Left = 138
    Top = 328
  end
  object http: TIdHTTP
    IOHandler = ssl
    MaxLineAction = maException
    Port = 8080
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
    Left = 321
    Top = 254
  end
  object ssl: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv23
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 374
    Top = 254
  end
  object Tract_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE STRING_OLD_DATA_ALTA VARCHAR(20);'
      'DECLARE VARIABLE STRING_NEW_DATA_ALTA VARCHAR(20);'
      'DECLARE VARIABLE STRING_OLD_DATA_INGRES VARCHAR(20);'
      'DECLARE VARIABLE STRING_NEW_DATA_INGRES VARCHAR(20);'
      'DECLARE VARIABLE STRING_OLD_DATA_PREALTA VARCHAR(20);'
      'DECLARE VARIABLE STRING_NEW_DATA_PREALTA VARCHAR(20);'
      'BEGIN'
      '    if ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      '            IF (OLD.C_HISTORIA <> NEW.C_HISTORIA)'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_HISTORIA",OLD' +
        '.C_HISTORIA,NEW.C_HISTORIA,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAMENT' +
        ');'
      ''
      '            IF (OLD.C_PRESTACIO <> NEW.C_PRESTACIO)'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_PRESTACIO",OL' +
        'D.C_PRESTACIO,NEW.C_PRESTACIO,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAM' +
        'ENT);'
      ''
      '            IF (OLD.C_COORDINADOR <> NEW.C_COORDINADOR)'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_COORDINADOR",' +
        'OLD.C_COORDINADOR,NEW.C_COORDINADOR,"NOW",NEW.C_HISTORIA,NEW.C_T' +
        'RACTAMENT);'
      ''
      '            IF (OLD.DATA_INGRES <> NEW.DATA_INGRES)'
      '            THEN BEGIN'
      
        '                STRING_OLD_DATA_INGRES = F_DATETOSTR(OLD.DATA_IN' +
        'GRES);'
      
        '                STRING_NEW_DATA_INGRES = F_DATETOSTR(NEW.DATA_IN' +
        'GRES);'
      
        '                INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("DATA_INGRES",:ST' +
        'RING_OLD_DATA_INGRES,:STRING_NEW_DATA_INGRES,"NOW",NEW.C_HISTORI' +
        'A,NEW.C_TRACTAMENT);'
      '            END;'
      ''
      
        '            IF (((OLD.DATA_ALTA IS NULL) AND (NEW.DATA_ALTA IS N' +
        'OT NULL))'
      
        '            OR ((OLD.DATA_ALTA IS NOT NULL) AND (NEW.DATA_ALTA I' +
        'S NULL))'
      '            OR (OLD.DATA_ALTA <> NEW.DATA_ALTA))'
      '            THEN BEGIN'
      
        '                STRING_OLD_DATA_ALTA = F_DATETOSTR(OLD.DATA_ALTA' +
        ');'
      
        '                STRING_NEW_DATA_ALTA = F_DATETOSTR(NEW.DATA_ALTA' +
        ');'
      
        '                INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("DATA_ALTA",:STRI' +
        'NG_OLD_DATA_ALTA,:STRING_NEW_DATA_ALTA,"NOW",NEW.C_HISTORIA,NEW.' +
        'C_TRACTAMENT);'
      '            END;'
      ''
      
        '            IF (((OLD.DATA_PREALTA IS NULL) AND (NEW.DATA_PREALT' +
        'A IS NOT NULL))'
      
        '            OR ((OLD.DATA_PREALTA IS NOT NULL) AND (NEW.DATA_PRE' +
        'ALTA IS NULL))'
      '            OR (OLD.DATA_PREALTA <> NEW.DATA_PREALTA))'
      '            THEN BEGIN'
      
        '                STRING_OLD_DATA_PREALTA = F_DATETOSTR(OLD.DATA_P' +
        'REALTA);'
      
        '                STRING_NEW_DATA_PREALTA = F_DATETOSTR(NEW.DATA_P' +
        'REALTA);'
      
        '                INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("DATA_PREALTA",:S' +
        'TRING_OLD_DATA_PREALTA,:STRING_NEW_DATA_PREALTA,"NOW",NEW.C_HIST' +
        'ORIA,NEW.C_TRACTAMENT);'
      '            END;'
      ''
      '            IF (OLD.C_MOTIU <> NEW.C_MOTIU)'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_MOTIU",OLD.C_' +
        'MOTIU,NEW.C_MOTIU,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAMENT);'
      '            '
      
        '            IF (((OLD.C_LLIT IS NULL) AND (NEW.C_LLIT IS NOT NUL' +
        'L))'
      
        '              OR ((OLD.C_LLIT IS NOT NULL) AND (NEW.C_LLIT IS NU' +
        'LL))'
      '              OR (OLD.C_LLIT <> NEW.C_LLIT))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_LLIT",OLD.C_L' +
        'LIT,NEW.C_LLIT,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAMENT);'
      ''
      
        '            IF (((OLD.C_CENTREFAC IS NULL) AND (NEW.C_CENTREFAC ' +
        'IS NOT NULL))'
      
        '            OR ((OLD.C_CENTREFAC IS NOT NULL) AND (NEW.C_CENTREF' +
        'AC IS NULL))'
      '            OR (OLD.C_CENTREFAC <> NEW.C_CENTREFAC))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_CENTREFAC",OL' +
        'D.C_CENTREFAC,NEW.C_CENTREFAC,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAM' +
        'ENT);'
      ''
      '            IF (OLD.C_ESTATFAC <> NEW.C_ESTATFAC)'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_ESTATFAC",OLD' +
        '.C_ESTATFAC,NEW.C_ESTATFAC,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAMENT' +
        ');'
      ''
      
        '            IF (((OLD.C_PROCES IS NULL) AND (NEW.C_PROCES IS NOT' +
        ' NULL))'
      
        '            OR ((OLD.C_PROCES IS NOT NULL) AND (NEW.C_PROCES IS ' +
        'NULL))'
      '            OR (OLD.C_PROCES <> NEW.C_PROCES))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_PROCES",OLD.C' +
        '_PROCES,NEW.C_PROCES,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAMENT);'
      ''
      
        '            IF (((OLD.C_FREQUENCIA IS NULL) AND (NEW.C_FREQUENCI' +
        'A IS NOT NULL))'
      
        '            OR ((OLD.C_FREQUENCIA IS NOT NULL) AND (NEW.C_FREQUE' +
        'NCIA IS NULL))'
      '            OR (OLD.C_FREQUENCIA <> NEW.C_FREQUENCIA))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_FREQUENCIA",O' +
        'LD.C_FREQUENCIA,NEW.C_FREQUENCIA,"NOW",NEW.C_HISTORIA,NEW.C_TRAC' +
        'TAMENT);'
      ''
      
        '            IF (((OLD.C_FISIOTERAPEUTA IS NULL) AND (NEW.C_FISIO' +
        'TERAPEUTA IS NOT NULL))'
      
        '            OR ((OLD.C_FISIOTERAPEUTA IS NOT NULL) AND (NEW.C_FI' +
        'SIOTERAPEUTA IS NULL))'
      '            OR (OLD.C_FISIOTERAPEUTA <> NEW.C_FISIOTERAPEUTA))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_FISIOTERAPEUT' +
        'A",OLD.C_FISIOTERAPEUTA,NEW.C_FISIOTERAPEUTA,"NOW",NEW.C_HISTORI' +
        'A,NEW.C_TRACTAMENT);'
      '            '
      
        '            IF (((OLD.C_TERAPEUTA IS NULL) AND (NEW.C_TERAPEUTA ' +
        'IS NOT NULL))'
      
        '            OR ((OLD.C_TERAPEUTA IS NOT NULL) AND (NEW.C_TERAPEU' +
        'TA IS NULL))'
      '            OR (OLD.C_TERAPEUTA <> NEW.C_TERAPEUTA))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_TERAPEUTA",OL' +
        'D.C_TERAPEUTA,NEW.C_TERAPEUTA,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAM' +
        'ENT);'
      ''
      
        '            IF (((OLD.C_TERAPEUTA_RESP IS NULL) AND (NEW.C_TERAP' +
        'EUTA_RESP IS NOT NULL))'
      
        '            OR ((OLD.C_TERAPEUTA_RESP IS NOT NULL) AND (NEW.C_TE' +
        'RAPEUTA_RESP IS NULL))'
      '            OR (OLD.C_TERAPEUTA_RESP <> NEW.C_TERAPEUTA_RESP))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_TERAPEUTA_RES' +
        'P",OLD.C_TERAPEUTA_RESP,NEW.C_TERAPEUTA_RESP,"NOW",NEW.C_HISTORI' +
        'A,NEW.C_TRACTAMENT);'
      ''
      
        '            IF (((OLD.C_INFERMERIA IS NULL) AND (NEW.C_INFERMERI' +
        'A IS NOT NULL))'
      
        '            OR ((OLD.C_INFERMERIA IS NOT NULL) AND (NEW.C_INFERM' +
        'ERIA IS NULL))'
      '            OR (OLD.C_INFERMERIA <> NEW.C_INFERMERIA))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_INFERMERIA",O' +
        'LD.C_INFERMERIA,NEW.C_INFERMERIA,"NOW",NEW.C_HISTORIA,NEW.C_TRAC' +
        'TAMENT);'
      ''
      
        '            IF (((OLD.C_PSICOLEG IS NULL) AND (NEW.C_PSICOLEG IS' +
        ' NOT NULL))'
      
        '            OR ((OLD.C_PSICOLEG IS NOT NULL) AND (NEW.C_PSICOLEG' +
        ' IS NULL))'
      '            OR (OLD.C_PSICOLEG <> NEW.C_PSICOLEG))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_PSICOLEG",OLD' +
        '.C_PSICOLEG,NEW.C_PSICOLEG,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAMENT' +
        ');'
      ''
      
        '            IF (((OLD.C_TREVALLSOCIAL IS NULL) AND (NEW.C_TREVAL' +
        'LSOCIAL IS NOT NULL))'
      
        '            OR ((OLD.C_TREVALLSOCIAL IS NOT NULL) AND (NEW.C_TRE' +
        'VALLSOCIAL IS NULL))'
      '            OR (OLD.C_TREVALLSOCIAL <> NEW.C_TREVALLSOCIAL))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_TREVALLSOCIAL' +
        '",OLD.C_TREVALLSOCIAL,NEW.C_TREVALLSOCIAL,"NOW",NEW.C_HISTORIA,N' +
        'EW.C_TRACTAMENT);'
      ''
      
        '            IF (((OLD.C_LOGOPEDA IS NULL) AND (NEW.C_LOGOPEDA IS' +
        ' NOT NULL))'
      
        '            OR ((OLD.C_LOGOPEDA IS NOT NULL) AND (NEW.C_LOGOPEDA' +
        ' IS NULL))'
      '            OR (OLD.C_LOGOPEDA <> NEW.C_LOGOPEDA))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_LOGOPEDA",OLD' +
        '.C_LOGOPEDA,NEW.C_LOGOPEDA,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAMENT' +
        ');'
      ''
      
        '            IF (((OLD.C_MUSICOTERAPEUTA IS NULL) AND (NEW.C_MUSI' +
        'COTERAPEUTA IS NOT NULL))'
      
        '            OR ((OLD.C_MUSICOTERAPEUTA IS NOT NULL) AND (NEW.C_M' +
        'USICOTERAPEUTA IS NULL))'
      '            OR (OLD.C_MUSICOTERAPEUTA <> NEW.C_MUSICOTERAPEUTA))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_MUSICOTERAPEU' +
        'TA",OLD.C_MUSICOTERAPEUTA,NEW.C_MUSICOTERAPEUTA,"NOW",NEW.C_HIST' +
        'ORIA,NEW.C_TRACTAMENT);'
      ''
      
        '            IF (((OLD.C_FISIO_AR IS NULL) AND (NEW.C_FISIO_AR IS' +
        ' NOT NULL))'
      
        '            OR ((OLD.C_FISIO_AR IS NOT NULL) AND (NEW.C_FISIO_AR' +
        ' IS NULL))'
      '            OR (OLD.C_FISIO_AR <> NEW.C_FISIO_AR))'
      
        '            THEN INSERT INTO HCE_LOG_TRACT(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,TRACT_ID) VALUES ("C_FISIO_AR",OLD' +
        '.C_FISIO_AR,NEW.C_FISIO_AR,"NOW",NEW.C_HISTORIA,NEW.C_TRACTAMENT' +
        ');'
      ''
      '    END'
      ''
      'END')
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
    Modi = False
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 138
    Top = 384
  end
  object HceLogTract: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_FILI'
      end
      item
        Aplica = kcCaracter
        Nombre = 'field_name'
        NombreDB = 'field_name'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'old_value'
        NombreDB = 'old_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'new_value'
        NombreDB = 'new_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'date_log'
        NombreDB = 'date_log'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'patient_id'
        NombreDB = 'patient_id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'tract_id'
        NombreDB = 'tract_id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogTract'
    NombreTabla = 'HCE_LOG_TRACT'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log id'
      'field_name'
      'old_value'
      'new_value'
      'date_log'
      'patient_id'
      'tract_id')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 384
  end
  object HceLogEspera: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_FILI'
      end
      item
        Aplica = kcCaracter
        Nombre = 'field_name'
        NombreDB = 'field_name'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'old_value'
        NombreDB = 'old_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'new_value'
        NombreDB = 'new_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'date_log'
        NombreDB = 'date_log'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'patient_id'
        NombreDB = 'patient_id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'waiting_list_id'
        NombreDB = 'waiting_list_id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'action code'
        NombreDB = 'action_code'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'I:insert, U:update; D:delete'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogEspera'
    NombreTabla = 'HCE_LOG_ESPERA'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log id'
      'field_name'
      'old_value'
      'new_value'
      'date_log'
      'patient_id'
      'waiting_list_id')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 440
  end
  object Espera_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE STRING_OLD_DATA_PREINGRES VARCHAR(20);'
      'DECLARE VARIABLE STRING_NEW_DATA_PREINGRES VARCHAR(20);'
      'DECLARE VARIABLE TIPUS INTEGER;'
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        /* EN UNA PRIMERA FASE NOM'#201'S VOLEM TRASPASSAR DADES DE C' +
        'CEE -> PRESTACIONS TIPUS 2 */'
      
        '        SELECT TIPUS FROM PRESTACION WHERE C_PRESTACIO=NEW.C_PRE' +
        'STACIO INTO :TIPUS;'
      '        IF (TIPUS IS NULL) THEN TIPUS = 0;'
      '        '
      '        IF (TIPUS = 2) THEN'
      '        BEGIN'
      
        '            IF (((OLD.C_HISTORIA IS NULL) AND (NEW.C_HISTORIA IS' +
        ' NOT NULL))'
      
        '            OR  ((OLD.C_HISTORIA IS NOT NULL) AND (NEW.C_HISTORI' +
        'A IS NULL))'
      '            OR  (OLD.C_HISTORIA <> NEW.C_HISTORIA))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("C_HISTORIA",OLD.C_HISTORIA,NEW.C_HISTORIA,"NOW",NEW.C_HISTO' +
        'RIA,NEW.C_ESPERA,"U");'
      '        '
      '            IF (((OLD.NOM IS NULL) AND (NEW.NOM IS NOT NULL))'
      '            OR  ((OLD.NOM IS NOT NULL) AND (NEW.NOM IS NULL))'
      '            OR  (OLD.NOM <> NEW.NOM))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("NOM",OLD.NOM,NEW.NOM,"NOW",NEW.C_HISTORIA,NEW.C_ESPERA,"U")' +
        ';'
      '            '
      '            IF (OLD.COGNOM1 <> NEW.COGNOM1)'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("COGNOM1",OLD.COGNOM1,NEW.COGNOM1,"NOW",NEW.C_HISTORIA,NEW.C' +
        '_ESPERA,"U");'
      ''
      
        '            IF (((OLD.COGNOM2 IS NULL) AND (NEW.COGNOM2 IS NOT N' +
        'ULL))'
      
        '            OR  ((OLD.COGNOM2 IS NOT NULL) AND (NEW.COGNOM2 IS N' +
        'ULL))'
      '            OR  (OLD.COGNOM2 <> NEW.COGNOM2))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("COGNOM2",OLD.COGNOM2,NEW.COGNOM2,"NOW",NEW.C_HISTORIA,NEW.C' +
        '_ESPERA,"U");'
      '            '
      
        '            IF (((OLD.TELEFON IS NULL) AND (NEW.TELEFON IS NOT N' +
        'ULL))'
      
        '            OR  ((OLD.TELEFON IS NOT NULL) AND (NEW.TELEFON IS N' +
        'ULL))'
      '            OR  (OLD.TELEFON <> NEW.TELEFON))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("TELEFON",OLD.TELEFON,NEW.TELEFON,"NOW",NEW.C_HISTORIA,NEW.C' +
        '_ESPERA,"U");'
      ''
      
        '            IF (((OLD.HCE_PERSON_ID IS NULL) AND (NEW.HCE_PERSON' +
        '_ID IS NOT NULL))'
      
        '            OR  ((OLD.HCE_PERSON_ID IS NOT NULL) AND (NEW.HCE_PE' +
        'RSON_ID IS NULL))'
      '            OR  (OLD.HCE_PERSON_ID <> NEW.HCE_PERSON_ID))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("HCE_PERSON_ID",OLD.HCE_PERSON_ID,NEW.HCE_PERSON_ID,"NOW",NE' +
        'W.C_HISTORIA,NEW.C_ESPERA,"U");'
      ''
      
        '            IF (((OLD.C_UNITAT IS NULL) AND (NEW.C_UNITAT IS NOT' +
        ' NULL))'
      
        '            OR  ((OLD.C_UNITAT IS NOT NULL) AND (NEW.C_UNITAT IS' +
        ' NULL))'
      '            OR  (OLD.C_UNITAT <> NEW.C_UNITAT))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("C_UNITAT",OLD.C_UNITAT,NEW.C_UNITAT,"NOW",NEW.C_HISTORIA,NE' +
        'W.C_ESPERA,"U");'
      ''
      '            IF (OLD.C_PRESTACIO <> NEW.C_PRESTACIO)'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("C_PRESTACIO",OLD.C_PRESTACIO,NEW.C_PRESTACIO,"NOW",NEW.C_HI' +
        'STORIA,NEW.C_ESPERA,"U");'
      ''
      '            IF (OLD.C_MOTIU <> NEW.C_MOTIU)'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("C_MOTIU",OLD.C_MOTIU,NEW.C_MOTIU,"NOW",NEW.C_HISTORIA,NEW.C' +
        '_ESPERA,"U");'
      ''
      '            IF (OLD.C_COORDINADOR <> NEW.C_COORDINADOR)'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("C_COORDINADOR",OLD.C_COORDINADOR,NEW.C_COORDINADOR,"NOW",NE' +
        'W.C_HISTORIA,NEW.C_ESPERA,"U");'
      ''
      '            IF (((OLD.LLOC IS NULL) AND (NEW.LLOC IS NOT NULL))'
      '            OR  ((OLD.LLOC IS NOT NULL) AND (NEW.LLOC IS NULL))'
      '            OR  (OLD.LLOC <> NEW.LLOC))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("LLOC",OLD.LLOC,NEW.LLOC,"NOW",NEW.C_HISTORIA,NEW.C_ESPERA,"' +
        'U");'
      ''
      
        '            IF (((OLD.DATA_PREINGRES IS NULL) AND (NEW.DATA_PREI' +
        'NGRES IS NOT NULL))'
      
        '            OR ((OLD.DATA_PREINGRES IS NOT NULL) AND (NEW.DATA_P' +
        'REINGRES IS NULL))'
      '            OR (OLD.DATA_PREINGRES <> NEW.DATA_PREINGRES))'
      '            THEN BEGIN'
      
        '                STRING_OLD_DATA_PREINGRES = F_DATETOSTR(OLD.DATA' +
        '_PREINGRES);'
      
        '                STRING_NEW_DATA_PREINGRES = F_DATETOSTR(NEW.DATA' +
        '_PREINGRES);'
      
        '                INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE,' +
        'NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALUE' +
        'S ("DATA_PREINGRES",:STRING_OLD_DATA_PREINGRES,:STRING_NEW_DATA_' +
        'PREINGRES,"NOW",NEW.C_HISTORIA,NEW.C_ESPERA,"U");'
      '            END;'
      '        '
      
        '            IF (((OLD.HORA_PREINGRES IS NULL) AND (NEW.HORA_PREI' +
        'NGRES IS NOT NULL))'
      
        '            OR  ((OLD.HORA_PREINGRES IS NOT NULL) AND (NEW.HORA_' +
        'PREINGRES IS NULL))'
      '            OR  (OLD.HORA_PREINGRES <> NEW.HORA_PREINGRES))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("HORA_PREINGRES",OLD.HORA_PREINGRES,NEW.HORA_PREINGRES,"NOW"' +
        ',NEW.C_HISTORIA,NEW.C_ESPERA,"U");'
      '            '
      
        '            IF (((OLD.C_CENTREFAC IS NULL) AND (NEW.C_CENTREFAC ' +
        'IS NOT NULL))'
      
        '            OR  ((OLD.C_CENTREFAC IS NOT NULL) AND (NEW.C_CENTRE' +
        'FAC IS NULL))'
      '            OR  (OLD.C_CENTREFAC <> NEW.C_CENTREFAC))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("C_CENTREFAC",OLD.C_CENTREFAC,NEW.C_CENTREFAC,"NOW",NEW.C_HI' +
        'STORIA,NEW.C_ESPERA,"U");'
      ''
      '            IF (OLD.C_ESTAT <> NEW.C_ESTAT)'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("C_ESTAT",OLD.C_ESTAT,NEW.C_ESTAT,"NOW",NEW.C_HISTORIA,NEW.C' +
        '_ESPERA,"U");'
      '            '
      
        '            IF (((OLD.EXCLOS IS NULL) AND (NEW.EXCLOS IS NOT NUL' +
        'L))'
      
        '            OR  ((OLD.EXCLOS IS NOT NULL) AND (NEW.EXCLOS IS NUL' +
        'L))'
      '            OR  (OLD.EXCLOS <> NEW.EXCLOS))'
      
        '            THEN INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE' +
        ',NEW_VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALU' +
        'ES ("EXCLOS",OLD.EXCLOS,NEW.EXCLOS,"NOW",NEW.C_HISTORIA,NEW.C_ES' +
        'PERA,"U");'
      '      END;'
      '      '
      
        '      /*INFORMEM DE LES ESPERES FILIADES DE ESPERES CREADES EN H' +
        'CE*/'
      
        '      IF ((OLD.hce_schedule_id IS NOT NULL) AND (new.hce_schedul' +
        'e_id IS NOT NULL) and (old.hce_schedule_id=new.hce_schedule_id))'
      '      then begin'
      
        '            IF ((OLD.C_TractamentDesti IS NULL) AND (NEW.C_Tract' +
        'amentDesti IS NOT NULL)) then'
      '            begin'
      '                  INSERT INTO HCE_LOG_ESPERA'
      
        '                  (FIELD_NAME,OLD_VALUE,NEW_VALUE,DATE_LOG,PATIE' +
        'NT_ID,WAITING_LIST_ID,ACTION_CODE)'
      '                  VALUES'
      
        '                  ("HCE_SCHEDULE_FILIATION",OLD.C_TractamentDest' +
        'i,NEW.C_TractamentDesti,"NOW",NEW.C_HISTORIA,NEW.C_ESPERA,"U");'
      '            end'
      '      end'
      ''
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Espera
    Dic1Name = 'wDataAdmisio.Espera'
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
    Left = 228
    Top = 440
  end
  object Espera_AI_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE STRING_OLD_DATA_PREINGRES VARCHAR(20);'
      'DECLARE VARIABLE STRING_NEW_DATA_PREINGRES VARCHAR(20);'
      'DECLARE VARIABLE TIPUS INTEGER;'
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        /* EN UNA PRIMERA FASE NOM'#201'S VOLEM TRASPASSAR DADES DE C' +
        'CEE -> PRESTACIONS TIPUS 2 */'
      
        '        SELECT TIPUS FROM PRESTACION WHERE C_PRESTACIO=NEW.C_PRE' +
        'STACIO INTO :TIPUS;'
      '        IF (TIPUS IS NULL) THEN TIPUS = 0;'
      '        '
      '        IF (TIPUS = 2) THEN'
      '        BEGIN'
      
        '            INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE,NEW_' +
        'VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALUES ("' +
        'C_ESPERA",NULL,NEW.C_ESPERA,"NOW",NEW.C_HISTORIA,NEW.C_ESPERA,"I' +
        '");'
      '        END;'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Espera
    Dic1Name = 'wDataAdmisio.Espera'
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
    Accion2 = taINSERT
    Left = 138
    Top = 440
  end
  object Espera_AD_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE STRING_OLD_DATA_PREINGRES VARCHAR(20);'
      'DECLARE VARIABLE STRING_NEW_DATA_PREINGRES VARCHAR(20);'
      'DECLARE VARIABLE TIPUS INTEGER;'
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        /* EN UNA PRIMERA FASE NOM'#201'S VOLEM TRASPASSAR DADES DE C' +
        'CEE -> PRESTACIONS TIPUS 2 */'
      
        '        SELECT TIPUS FROM PRESTACION WHERE C_PRESTACIO=OLD.C_PRE' +
        'STACIO INTO :TIPUS;'
      '        IF (TIPUS IS NULL) THEN TIPUS = 0;'
      '        '
      '        IF (TIPUS = 2) THEN'
      '        BEGIN'
      
        '            INSERT INTO HCE_LOG_ESPERA(FIELD_NAME,OLD_VALUE,NEW_' +
        'VALUE,DATE_LOG,PATIENT_ID,WAITING_LIST_ID,ACTION_CODE) VALUES ("' +
        'C_ESPERA",OLD.C_ESPERA,NULL,"NOW",OLD.C_HISTORIA,OLD.C_ESPERA,"D' +
        '");'
      '        END;'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Espera
    Dic1Name = 'wDataAdmisio.Espera'
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
    Accion2 = taDELETE
    Left = 329
    Top = 440
  end
  object HCDuplicats: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HCDuplicats'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS'
      '(HC          INTEGER,'
      ' NOMCOMPLET  VARCHAR(80),'
      ' GENERE      CHAR(1),'
      ' T_DOC       CHAR(1),'
      ' DOC         VARCHAR(9),'
      ' TRACTAMENT  INTEGER,'
      ' DATA_INGRES DATE,'
      ' DATA_ALTA   DATE,'
      ' PRESTACIO   CHAR(4),'
      ' COORDINADOR VARCHAR(5))'
      'AS'
      '  DECLARE VARIABLE QUANTS INTEGER;'
      'BEGIN'
      ''
      '  FOR SELECT NOMCOMPLET, COUNT(*)'
      '  FROM FILIACIO'
      '  GROUP BY NOMCOMPLET'
      '  HAVING COUNT(*) > 1'
      '  ORDER BY NOMCOMPLET'
      '  INTO :NOMCOMPLET, :QUANTS'
      '  DO BEGIN'
      '      FOR SELECT NUM_HIST, T_DOC, DNI, SEXO'
      '      FROM FILIACIO'
      '      WHERE NOMCOMPLET = :NOMCOMPLET'
      '      ORDER BY NUM_HIST'
      '      INTO :HC, :T_DOC, :DOC, :GENERE'
      '      DO BEGIN'
      
        '          FOR SELECT C_TRACTAMENT, C_PRESTACIO, DATA_INGRES, DAT' +
        'A_ALTA, C_COORDINADOR'
      '          FROM TRACTAMENTS'
      '          WHERE C_ESTATFAC<>55'
      '          AND   C_HISTORIA = :HC'
      '          ORDER BY C_TRACTAMENT'
      
        '          INTO :TRACTAMENT, PRESTACIO, DATA_INGRES, DATA_ALTA, C' +
        'OORDINADOR'
      '          DO BEGIN'
      '              SUSPEND;'
      '          END;'
      '      END;'
      '  END;'
      '  '
      'END')
    Dic1 = wDataBasics.Filiacio
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
    Modi = False
    Left = 428
    Top = 24
  end
  object HceLogAnota: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_ANOTA'
      end
      item
        Aplica = kcFecha
        Nombre = 'date_log'
        NombreDB = 'date_log'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'patient_id'
        NombreDB = 'patient_id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'anotation_id'
        NombreDB = 'anotation_id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'action code'
        NombreDB = 'action_code'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'I:insert, U:update; D:delete'
      end
      item
        Aplica = kcCaracter
        Nombre = 'old_value'
        NombreDB = 'old_value'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'new_value'
        NombreDB = 'new_value'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'field_name'
        NombreDB = 'field_name'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogAnota'
    NombreTabla = 'HCE_LOG_ANOTA'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log id'
      'date_log'
      'patient_id'
      'anotation_id'
      'action code')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 496
  end
  object Historia_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '      if (old.C_TRACTAMENT <> new.C_TRACTAMENT)     then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.C_TRACTAMENT , new.C_TRACTAMENT , '#39'C_T' +
        'RACTAMENT'#39');'
      
        '      if (old.C_HISTORIA <> new.C_HISTORIA)         then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.C_HISTORIA , new.C_HISTORIA , '#39'C_HISTO' +
        'RIA'#39');'
      
        '      if (old.C_PRESTACIO <> new.C_PRESTACIO)       then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.C_PRESTACIO , new.C_PRESTACIO , '#39'C_PRE' +
        'STACIO'#39');'
      
        '      if (old.DATA_INGRES <> new.DATA_INGRES)       then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.DATA_INGRES , new.DATA_INGRES , '#39'DATA_' +
        'INGRES'#39');'
      
        '      if (old.C_COORDINADOR <> new.C_COORDINADOR)   then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.C_COORDINADOR , new.C_COORDINADOR , '#39'C' +
        '_COORDINADOR'#39');'
      
        '      if (old.DATA <> new.DATA)                     then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.DATA , new.DATA , '#39'DATA'#39');'
      
        '      if (old.C_USUARI <> new.C_USUARI)             then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.C_USUARI , new.C_USUARI , '#39'C_USUARI'#39');'
      
        '      if (old.C_GRUP <> new.C_GRUP)                 then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.C_GRUP , new.C_GRUP , '#39'C_GRUP'#39');'
      
        '      if (old.ANOTACIO <> new.ANOTACIO)             then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.ANOTACIO , new.ANOTACIO , '#39'ANOTACIO'#39');'
      
        '      if (old.IMPRES <> new.IMPRES)                 then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.IMPRES , new.IMPRES , '#39'IMPRES'#39');'
      
        '      if (old.ESEPICRISI <> new.ESEPICRISI)         then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.ESEPICRISI , new.ESEPICRISI , '#39'ESEPICR' +
        'ISI'#39');'
      
        '      if (old.C_INTERCON <> new.C_INTERCON)         then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.C_INTERCON , new.C_INTERCON , '#39'C_INTER' +
        'CON'#39');'
      
        '      if (old.ESTAT_INTERCON <> new.ESTAT_INTERCON) then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.ESTAT_INTERCON , new.ESTAT_INTERCON , ' +
        #39'ESTAT_INTERCON'#39');'
      
        '      if (old.ANULAT <> new.ANULAT)                 then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.ANULAT , new.ANULAT , '#39'ANULAT'#39');'
      
        '      if (old.ESNORMAL <> new.ESNORMAL)             then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.ESNORMAL , new.ESNORMAL , '#39'ESNORMAL'#39');'
      
        '      if (old.C_ESTATVALIDA <> new.C_ESTATVALIDA)   then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.C_ESTATVALIDA , new.C_ESTATVALIDA , '#39'C' +
        '_ESTATVALIDA'#39');'
      
        '      if (old.ESRCP <> new.ESRCP)                   then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.ESRCP , new.ESRCP , '#39'ESRCP'#39');'
      
        '      if (old.QUEES <> new.QUEES)                   then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.QUEES , new.QUEES , '#39'QUEES'#39');'
      
        '      if (old.LINK <> new.LINK)                     then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.LINK , new.LINK , '#39'LINK'#39');'
      
        '      if (old.ESMR <> new.ESMR)                     then insert ' +
        'into HCE_LOG_ANOTA(date_log, patient_id, anotation_id, action_co' +
        'de, old_value, new_value, field_name) values ('#39'NOW'#39',new.C_HISTOR' +
        'IA,new.C_ANOTACIO,'#39'U'#39',old.ESMR , new.ESMR , '#39'ESMR'#39');'
      ''
      ''
      ''
      
        '      if ((old.C_COORDINADOR is null) and (new.C_COORDINADOR is ' +
        'not null))  then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.C_COORDINADOR ' +
        ', new.C_COORDINADOR , '#39'C_COORDINADOR'#39');'
      
        '      if ((old.C_COORDINADOR is not null) and (new.C_COORDINADOR' +
        ' is null))  then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.C_COORDINADOR ' +
        ', new.C_COORDINADOR , '#39'C_COORDINADOR'#39');'
      ''
      
        '      if ((old.C_TRACTAMENT is null) and (new.C_TRACTAMENT is no' +
        't null))    then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.C_TRACTAMENT ,' +
        ' new.C_TRACTAMENT , '#39'C_TRACTAMENT'#39');'
      
        '      if ((old.C_TRACTAMENT is not null) and (new.C_TRACTAMENT i' +
        's null))    then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.C_TRACTAMENT ,' +
        ' new.C_TRACTAMENT , '#39'C_TRACTAMENT'#39');'
      ''
      
        '      if ((old.DATA_INGRES is null) and (new.DATA_INGRES is not ' +
        'null))      then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.DATA_INGRES , ' +
        'new.DATA_INGRES , '#39'DATA_INGRES'#39');'
      
        '      if ((old.DATA_INGRES is not null) and (new.DATA_INGRES is ' +
        'null))      then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.DATA_INGRES , ' +
        'new.DATA_INGRES , '#39'DATA_INGRES'#39');'
      ''
      
        '      if ((old.C_INTERCON is null) and (new.C_INTERCON is not nu' +
        'll))        then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.C_INTERCON , n' +
        'ew.C_INTERCON , '#39'C_INTERCON'#39');'
      
        '      if ((old.C_INTERCON is not null) and (new.C_INTERCON is nu' +
        'll))        then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.C_INTERCON , n' +
        'ew.C_INTERCON , '#39'C_INTERCON'#39');'
      ''
      
        '      if ((old.ESRCP is null) and (new.ESRCP is not null))      ' +
        '            then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.ESRCP , new.ES' +
        'RCP , '#39'ESRCP'#39');'
      
        '      if ((old.ESRCP is not null) and (new.ESRCP is null))      ' +
        '            then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.ESRCP , new.ES' +
        'RCP , '#39'ESRCP'#39');'
      ''
      
        '      if ((old.QUEES is null) and (new.QUEES is not null))      ' +
        '            then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.QUEES , new.QU' +
        'EES , '#39'QUEES'#39');'
      
        '      if ((old.QUEES is not null) and (new.QUEES is null))      ' +
        '            then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.QUEES , new.QU' +
        'EES , '#39'QUEES'#39');'
      ''
      
        '      if ((old.LINK is null) and (new.LINK is not null))        ' +
        '            then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.LINK , new.LIN' +
        'K , '#39'LINK'#39');'
      
        '      if ((old.LINK is not null) and (new.LINK is null))        ' +
        '            then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.LINK , new.LIN' +
        'K , '#39'LINK'#39');'
      ''
      
        '      if ((old.ESMR is null) and (new.ESMR is not null))        ' +
        '            then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.ESMR , new.ESM' +
        'R , '#39'ESMR'#39');'
      
        '      if ((old.ESMR is not null) and (new.ESMR is null))        ' +
        '            then insert into HCE_LOG_ANOTA(date_log, patient_id,' +
        ' anotation_id, action_code, old_value, new_value, field_name) va' +
        'lues ('#39'NOW'#39',new.C_HISTORIA,new.C_ANOTACIO,'#39'U'#39',old.ESMR , new.ESM' +
        'R , '#39'ESMR'#39');'
      ''
      ''
      '    END'
      '    '
      'END'
      '')
    Dic1 = wDataCurs.Historia
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
    Left = 138
    Top = 496
  end
  object UpdateIDnHCE_Eliminada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'UpdateIDnHCE'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '  DECLARE VARIABLE ID INTEGER;'
      '  DECLARE VARIABLE ID_INFORME INTEGER;'
      '  DECLARE VARIABLE LINIA INTEGER;'
      'BEGIN'
      ''
      '  FOR SELECT ID_INFORME, LINIA'
      '  FROM INFORMES_HCCC'
      '  WHERE ID_NHCE IS NULL'
      '  ORDER BY ID_INFORME, LINIA'
      '  INTO :ID_INFORME, :LINIA'
      '  DO BEGIN'
      
        '       UPDATE INFORMES_HCCC SET ID_NHCE = GEN_ID(G_INFORME_nHCE,' +
        ' 1)'
      '       WHERE ID_INFORME = :ID_INFORME AND LINIA = :LINIA;'
      '  END;'
      ''
      '  '
      'END')
    Dic1 = wDataInformes.Informes_HCCC
    Dic1Name = 'wDataInformes.Informes_HCCC'
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
    Left = 52
    Top = 752
  end
  object HceLogMetges: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_FILI'
      end
      item
        Aplica = kcCaracter
        Nombre = 'field_name'
        NombreDB = 'field_name'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'old_value'
        NombreDB = 'old_value'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'new_value'
        NombreDB = 'new_value'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'date_log'
        NombreDB = 'date_log'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'username'
        NombreDB = 'username'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogMetges'
    NombreTabla = 'HCE_LOG_METGES'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log id'
      'field_name'
      'old_value'
      'new_value'
      'date_log'
      'username')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 336
    Top = 336
  end
  object Metges_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      ' DECLARE VARIABLE TEDRET SMALLINT;'
      'BEGIN'
      '    if ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        IF ((OLD.NMETGERECEPTA IS NULL) AND (NEW.NMETGERECEPTA I' +
        'S NOT NULL)'
      
        '         OR (OLD.NMETGERECEPTA IS NOT NULL) AND (NEW.NMETGERECEP' +
        'TA IS NULL)'
      '         OR (OLD.NMETGERECEPTA <> NEW.NMETGERECEPTA))'
      
        '        THEN INSERT INTO HCE_LOG_METGES(FIELD_NAME,OLD_VALUE,NEW' +
        '_VALUE,DATE_LOG,USERNAME) VALUES ("NMETGERECEPTA",OLD.NMETGERECE' +
        'PTA,NEW.NMETGERECEPTA,"NOW",NEW.EMAIL);'
      '        '
      '        IF ((OLD.NC IS NULL) AND (NEW.NC IS NOT NULL)'
      '         OR (OLD.NC IS NOT NULL) AND (NEW.NC IS NULL)'
      '         OR (OLD.NC <> NEW.NC))'
      
        '        THEN INSERT INTO HCE_LOG_METGES(FIELD_NAME,OLD_VALUE,NEW' +
        '_VALUE,DATE_LOG,USERNAME) VALUES ("NC",OLD.NC,NEW.NC,"NOW",NEW.E' +
        'MAIL);'
      '        '
      '        IF ((OLD.C_PROV IS NULL) AND (NEW.C_PROV IS NOT NULL)'
      '         OR (OLD.C_PROV IS NOT NULL) AND (NEW.C_PROV IS NULL)'
      '         OR (OLD.C_PROV <> NEW.C_PROV))'
      
        '        THEN INSERT INTO HCE_LOG_METGES(FIELD_NAME,OLD_VALUE,NEW' +
        '_VALUE,DATE_LOG,USERNAME) VALUES ("C_PROV",OLD.C_PROV,NEW.C_PROV' +
        ',"NOW",NEW.EMAIL);'
      ''
      '        IF ((OLD.EMAIL IS NULL) AND (NEW.EMAIL IS NOT NULL)'
      '         OR (OLD.EMAIL IS NOT NULL) AND (NEW.EMAIL IS NULL)'
      '         OR (OLD.EMAIL <> NEW.EMAIL))'
      
        '        THEN INSERT INTO HCE_LOG_METGES(FIELD_NAME,OLD_VALUE,NEW' +
        '_VALUE,DATE_LOG,USERNAME) VALUES ("EMAIL",OLD.EMAIL,NEW.EMAIL,"N' +
        'OW",NEW.EMAIL);'
      ''
      '        IF ((OLD.BAIXA IS NULL) AND (NEW.BAIXA IS NOT NULL)'
      '         OR (OLD.BAIXA IS NOT NULL) AND (NEW.BAIXA IS NULL)'
      '         OR (OLD.BAIXA <> NEW.BAIXA))'
      
        '        THEN INSERT INTO HCE_LOG_METGES(FIELD_NAME,OLD_VALUE,NEW' +
        '_VALUE,DATE_LOG,USERNAME) VALUES ("BAIXA",OLD.BAIXA,NEW.BAIXA,"N' +
        'OW",NEW.EMAIL);'
      ''
      
        '        SELECT COUNT(*) FROM DRETSMETGES WHERE C_DRET='#39'M274'#39' AND' +
        ' C_USUARI = NEW.CODI INTO :TEDRET;'
      ''
      '        IF (TEDRET = 0) THEN'
      '        BEGIN'
      
        '            IF (OLD.C_GRUP <> NEW.C_GRUP)         THEN INSERT IN' +
        'TO HCE_LOG_METGES(FIELD_NAME,OLD_VALUE,NEW_VALUE,DATE_LOG,USERNA' +
        'ME) VALUES ("C_GRUP",OLD.C_GRUP,NEW.C_GRUP,"NOW",NEW.EMAIL);'
      
        '            IF (OLD.C_ESPECIAL <> NEW.C_ESPECIAL) THEN INSERT IN' +
        'TO HCE_LOG_METGES(FIELD_NAME,OLD_VALUE,NEW_VALUE,DATE_LOG,USERNA' +
        'ME) VALUES ("C_ESPECIAL",OLD.C_ESPECIAL,NEW.C_ESPECIAL,"NOW",NEW' +
        '.EMAIL);'
      '        END;'
      '    END'
      ''
      'END')
    Dic1Name = 'wDataBasics.Metges'
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
    Left = 424
    Top = 336
  end
  object Centrefac_AI_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_CENTREFAC",NULL,NEW.C_' +
        'CENTREFAC,"NOW","I");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.CentreFac
    Dic1Name = 'wDataFactu.CentreFac'
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
    Accion2 = taINSERT
    Left = 338
    Top = 496
  end
  object HceLogCatalegFactu: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_CATALEG_FACTU'
      end
      item
        Aplica = kcCaracter
        Nombre = 'field_name'
        NombreDB = 'field_name'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'old_value'
        NombreDB = 'old_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'new_value'
        NombreDB = 'new_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'date_log'
        NombreDB = 'date_log'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'action_code'
        NombreDB = 'action_code'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'I:insert, U:update; D:delete'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogCatalegFactu'
    NombreTabla = 'HCE_LOG_CATALEG_FACTU'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log id'
      'field_name'
      'old_value'
      'new_value'
      'date_log'
      'action_code')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 240
    Top = 496
  end
  object Centrefac_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_CENTREFAC",OLD.C_CENTR' +
        'EFAC,NEW.C_CENTREFAC,"NOW","U");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.CentreFac
    Dic1Name = 'wDataFactu.CentreFac'
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
    Left = 450
    Top = 496
  end
  object Centrefac_AD_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_CENTREFAC",OLD.C_CENTR' +
        'EFAC,NULL,"NOW","D");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.CentreFac
    Dic1Name = 'wDataFactu.CentreFac'
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
    Accion2 = taDELETE
    Left = 554
    Top = 496
  end
  object Client_AI_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_CENTREFAC||C_CLIENT",N' +
        'ULL,NEW.C_CENTREFAC||NEW.C_CLIENT,"NOW","I");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Clients
    Dic1Name = 'wDataFactu.Clients'
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
    Accion2 = taINSERT
    Left = 338
    Top = 544
  end
  object Client_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_CENTREFAC||C_CLIENT",O' +
        'LD.C_CENTREFAC||OLD.C_CLIENT,NEW.C_CENTREFAC||NEW.C_CLIENT,"NOW"' +
        ',"U");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Clients
    Dic1Name = 'wDataFactu.Clients'
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
    Left = 440
    Top = 544
  end
  object Client_AD_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_CENTREFAC||C_CLIENT",O' +
        'LD.C_CENTREFAC||OLD.C_CLIENT,NULL,"NOW","D");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Clients
    Dic1Name = 'wDataFactu.Clients'
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
    Accion2 = taDELETE
    Left = 544
    Top = 544
  end
  object Delega_AI_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_CENTREFAC||C_CLIENT||C' +
        '_DELEGACIO",NULL,NEW.C_CENTREFAC||NEW.C_CLIENT||NEW.C_DELEGACIO,' +
        '"NOW","I");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Delega
    Dic1Name = 'wDataFactu.Delega'
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
    Accion2 = taINSERT
    Left = 346
    Top = 600
  end
  object Delega_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE)'
      
        '        VALUES ("C_CENTREFAC||C_CLIENT||C_DELEGACIO",OLD.C_CENTR' +
        'EFAC||OLD.C_CLIENT||OLD.C_DELEGACIO,NEW.C_CENTREFAC||NEW.C_CLIEN' +
        'T||NEW.C_DELEGACIO,"NOW","U");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Delega
    Dic1Name = 'wDataFactu.Delega'
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
    Left = 448
    Top = 600
  end
  object Delega_AD_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_CENTREFAC||C_CLIENT||C' +
        '_DELEGACIO",OLD.C_CENTREFAC||OLD.C_CLIENT||OLD.C_DELEGACIO,NULL,' +
        '"NOW","D");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Delega
    Dic1Name = 'wDataFactu.Delega'
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
    Accion2 = taDELETE
    Left = 552
    Top = 600
  end
  object Params_AI_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_FACPARAM",NULL,NEW.C_C' +
        'ENTREFAC,"NOW","I");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Params
    Dic1Name = 'wDataFactu.Params'
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
    Accion2 = taINSERT
    Left = 346
    Top = 656
  end
  object Params_AU_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_FACPARAM",OLD.C_CENTRE' +
        'FAC,NEW.C_CENTREFAC,"NOW","U");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Params
    Dic1Name = 'wDataFactu.Params'
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
    Left = 448
    Top = 656
  end
  object Params_AD_HCE: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_FACPARAM",OLD.C_CENTRE' +
        'FAC,NULL,"NOW","D");'
      '    END'
      ''
      'END')
    Dic1 = wDataFactu.Params
    Dic1Name = 'wDataFactu.Params'
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
    Accion2 = taDELETE
    Left = 552
    Top = 656
  end
  object Facilita_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("ID_FACILITADOR",NULL,NEW' +
        '.ID_FACILITADOR,"NOW","I");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Facilitadors
    Dic1Name = 'wDataAdmisio.Facilitadors'
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
    Accion2 = taINSERT
    Left = 346
    Top = 712
  end
  object Facilita_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("ID_FACILITADOR",OLD.ID_F' +
        'ACILITADOR,NEW.ID_FACILITADOR,"NOW","U");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Facilitadors
    Dic1Name = 'wDataAdmisio.Facilitadors'
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
    Left = 448
    Top = 712
  end
  object Facilita_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("ID_FACILITADOR",OLD.ID_F' +
        'ACILITADOR,NULL,"NOW","D");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Facilitadors
    Dic1Name = 'wDataAdmisio.Facilitadors'
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
    Accion2 = taDELETE
    Left = 552
    Top = 712
  end
  object Hospi_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_HOSPITAL",NULL,NEW.C_H' +
        'OSPITAL,"NOW","I");'
      '    END'
      ''
      'END')
    Dic1 = wDataCodis.Hospital
    Dic1Name = 'wDataCodis.Hospital'
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
    Accion2 = taINSERT
    Left = 346
    Top = 768
  end
  object Hospi_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_HOSPITAL",OLD.C_HOSPIT' +
        'AL,NEW.C_HOSPITAL,"NOW","U");'
      '    END'
      ''
      'END')
    Dic1 = wDataCodis.Hospital
    Dic1Name = 'wDataCodis.Hospital'
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
    Left = 448
    Top = 768
  end
  object Hospi_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CATALEG_FACTU(FIELD_NAME,OLD_VALUE,N' +
        'EW_VALUE,DATE_LOG,ACTION_CODE) VALUES ("C_HOSPITAL",OLD.C_HOSPIT' +
        'AL,NULL,"NOW","D");'
      '    END'
      ''
      'END')
    Dic1 = wDataCodis.Hospital
    Dic1Name = 'wDataCodis.Hospital'
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
    Accion2 = taDELETE
    Left = 552
    Top = 768
  end
  object HceLogCE: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Log id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HCE_LOG_CATALEG_FACTU'
      end
      item
        Aplica = kcCaracter
        Nombre = 'field_name'
        NombreDB = 'field_name'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'old_value'
        NombreDB = 'old_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'new_value'
        NombreDB = 'new_value'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'date_log'
        NombreDB = 'date_log'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'action_code'
        NombreDB = 'action_code'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'I:insert, U:update; D:delete'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Log id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end>
    Consultas = <>
    Nombre = 'HceLogCE'
    NombreTabla = 'HCE_LOG_CE'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log id'
      'field_name'
      'old_value'
      'new_value'
      'date_log'
      'action_code')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 552
  end
  object Portes_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CE(FIELD_NAME,OLD_VALUE,NEW_VALUE,DA' +
        'TE_LOG,ACTION_CODE) VALUES ("C_CONSULTA||C_PORTA",NULL,NEW.C_CON' +
        'SULTA||NEW.C_PORTA,"NOW","I");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Portes
    Dic1Name = 'wDataAdmisio.Portes'
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
    Accion2 = taINSERT
    Left = 34
    Top = 608
  end
  object Portes_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CE(FIELD_NAME,OLD_VALUE,NEW_VALUE,DA' +
        'TE_LOG,ACTION_CODE) VALUES ("C_CONSULTA||C_PORTA",OLD.C_CONSULTA' +
        '||OLD.C_PORTA,NEW.C_CONSULTA||NEW.C_PORTA,"NOW","U");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Portes
    Dic1Name = 'wDataAdmisio.Portes'
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
    Left = 106
    Top = 608
  end
  object Portes_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CE(FIELD_NAME,OLD_VALUE,NEW_VALUE,DA' +
        'TE_LOG,ACTION_CODE) VALUES ("C_CONSULTA||C_PORTA",OLD.C_CONSULTA' +
        '||OLD.C_PORTA,NULL,"NOW","D");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Portes
    Dic1Name = 'wDataAdmisio.Portes'
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
    Accion2 = taDELETE
    Left = 178
    Top = 608
  end
  object Consultes_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CE(FIELD_NAME,OLD_VALUE,NEW_VALUE,DA' +
        'TE_LOG,ACTION_CODE) VALUES ("C_CONSULTA",NULL,NEW.C_CONSULTA,"NO' +
        'W","I");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Consultes
    Dic1Name = 'wDataAdmisio.Consultes'
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
    Accion2 = taINSERT
    Left = 34
    Top = 656
  end
  object Consultes_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CE(FIELD_NAME,OLD_VALUE,NEW_VALUE,DA' +
        'TE_LOG,ACTION_CODE) VALUES ("C_CONSULTA",OLD.C_CONSULTA,NEW.C_CO' +
        'NSULTA,"NOW","U");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Consultes
    Dic1Name = 'wDataAdmisio.Consultes'
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
    Left = 106
    Top = 656
  end
  object Consultes_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD_HCE'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '    IF ((USER<>"REPLICATOR") AND (USER<>"HCE")) THEN'
      '    BEGIN'
      
        '        INSERT INTO HCE_LOG_CE(FIELD_NAME,OLD_VALUE,NEW_VALUE,DA' +
        'TE_LOG,ACTION_CODE) VALUES ("C_CONSULTA",OLD.C_CONSULTA,NULL,"NO' +
        'W","D");'
      '    END'
      ''
      'END')
    Dic1 = wDataAdmisio.Consultes
    Dic1Name = 'wDataAdmisio.Consultes'
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
    Accion2 = taDELETE
    Left = 178
    Top = 656
  end
end
