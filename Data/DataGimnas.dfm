object wDataGimnas: TwDataGimnas
  OldCreateOrder = False
  Left = 562
  Top = 173
  Height = 640
  Width = 737
  object AssistenciaGimnas: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Assist'#232'ncia'
        NombreDB = 'C_Assistencia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTA_ASSISTENCIA'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 16
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tipus d'#39'Assistencia'
        NombreDB = 'C_TipusAss'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Assist'#232'ncia'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Justificaci'#243' curta'
        NombreDB = 'J_Curta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Justificaci'#243
        NombreDB = 'J_Llarga'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Fora de Freq'#252#232'ncia'
        NombreDB = 'ForaFreq'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Freq'#252#232'ncia'
        NombreDB = 'Frequencia'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi d'#39'Usuari'
        NombreDB = 'C_Metge'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Facturat'
        NombreDB = 'Facturat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Dinar'
        NombreDB = 'Dinar'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari valida'
        NombreDB = 'Usuari_Valida'
        Longitud = 5
        Consulta = 'MetgeValida'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data valida'
        NombreDB = 'Data_Valida'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Id Biostar'
        NombreDB = 'Id_Biostar'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Id Dispositiu Biostar'
        NombreDB = 'Id_Dispositiu_Biostar'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Id assist'#232'ncia nHCE'
        NombreDB = 'HCE_ASSISTANCE_ID'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora Assist'#232'ncia'
        NombreDB = 'Hora_Assistencia'
        Longitud = 5
        MaskDisplay = 'hh:mm'
        MaskEdit = '!99:99;1; '
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Assist'#232'ncia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Assist'#232'ncia'
        NombreDB = 'Assistencia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipus d'#39'Assistencia')
        Tipo = tiForaneo
        ForaneoDic = CodisAssistencia
        ForaneoCampos.Strings = (
          'Tipus d'#39'Assist'#232'nica')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'N'#186' Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Tractament'
        NombreDB = 'Tractament'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Assist'#232'ncia'
        Master = CodisAssistencia
        BuscaOrigen.Strings = (
          'Tipus d'#39'Assistencia')
        CopiarOrigen.Strings = (
          'Tipus d'#39'Assistencia')
        CopiarMaster.Strings = (
          'Tipus d'#39'Assist'#232'nica')
        BuscaMaster.Strings = (
          'Tipus d'#39'Assist'#232'nica')
      end
      item
        Nombre = 'Metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Codi d'#39'Usuari')
        CopiarOrigen.Strings = (
          'Codi d'#39'Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgeValida'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari valida')
        CopiarOrigen.Strings = (
          'Usuari valida')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Assist'#232'ncia Gimn'#224's'
    NombreTabla = 'AssistenciaGimnas'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Assist'#232'ncia'
      'Data'
      'N'#186' Hist'#242'ria'
      'Tractament'
      'Tipus d'#39'Assistencia'
      'Justificaci'#243' curta'
      'Fora de Freq'#252#232'ncia'
      'Freq'#252#232'ncia')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37704.7590031481
    Left = 136
    Top = 8
  end
  object CodisAssistencia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Tipus d'#39'Assist'#232'nica'
        NombreDB = 'C_TipusAss'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTA_CODISASSISTENCIA'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'Nom'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Facturable'
        NombreDB = 'Facturable'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Actiu'
        NombreDB = 'Actiu'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        zDefault = 'S'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Assist'#232'ncia'
        NombreDB = 'Assistencia'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Llistat cuina'
        NombreDB = 'LlistatCuina'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus d'#39'Assist'#232'nica')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Codis d'#39'Assist'#232'ncia'
    NombreTabla = 'CodisAssistencia'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus d'#39'Assist'#232'nica'
      'Descripci'#243)
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37704.7590205208
    Left = 232
    Top = 8
  end
  object TornAmb: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'CODI'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTA_TORNAMB'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'DESCRIPCIO'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243' llarga'
        NombreDB = 'DESC_LONG'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243' llarga castell'#224
        NombreDB = 'DESC_LONGE'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia'
        NombreDB = 'Frequencia'
        Longitud = 2
        MaskDisplay = '0"D";; '
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Torn'
        NombreDB = 'Codi2'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi')
        Tipo = tiPrimario
        Unico = True
        Descending = False
      end
      item
        Nombre = 'torn'
        NombreDB = 'torn'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Torn')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Frequ'#232'ncies Torn Ambulatori'
    NombreTabla = 'TORNAMB'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Descripci'#243
      'Descripci'#243' llarga'
      'Torn'
      'Freq'#252#232'ncia')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37704.7590355787
    Left = 32
    Top = 8
  end
  object UpdateAss: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'UpdateAss'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_Assistencia INTEGER, '
      '  C_TipusAss    INTEGER,'
      '  J_Curta       VARCHAR (40),'
      '  C_Metge       VARCHAR (5),'
      '  Usuari_Valida VARCHAR(5)'
      ')'
      'AS'
      
        '  /*DECLARE VARIABLE NUM_ASS INTEGER;  /*Borra-ho el proper cop ' +
        'si no t'#39'enrecordes de que es */'
      'BEGIN'
      ''
      '  IF (J_Curta Is Null) THEN'
      '  BEGIN'
      '    IF (Usuari_Valida Is Null) THEN'
      '    BEGIN'
      '        UPDATE ASSISTENCIAGIMNAS'
      
        '        SET C_TipusAss = :C_TipusAss, C_Metge = :C_Metge, J_Curt' +
        'a = NULL'
      '        WHERE (C_Assistencia=:C_Assistencia);'
      '    END'
      '    ELSE BEGIN'
      '        UPDATE ASSISTENCIAGIMNAS'
      
        '        SET C_TipusAss = :C_TipusAss, C_Metge = :C_Metge, J_Curt' +
        'a = NULL, Usuari_Valida = :Usuari_Valida, Data_Valida = "NOW"'
      '        WHERE (C_Assistencia=:C_Assistencia);'
      '    END;'
      '  END'
      '  ELSE'
      '  BEGIN'
      '    IF (Usuari_Valida Is Null) THEN'
      '    BEGIN'
      '        UPDATE ASSISTENCIAGIMNAS'
      
        '        SET C_TipusAss = :C_TipusAss, J_Curta = :J_Curta, C_Metg' +
        'e = :C_Metge'
      '        WHERE (C_Assistencia=:C_Assistencia);'
      '    END'
      '    ELSE BEGIN'
      '        UPDATE ASSISTENCIAGIMNAS'
      
        '        SET C_TipusAss = :C_TipusAss, J_Curta = :J_Curta, C_Metg' +
        'e = :C_Metge, Usuari_Valida = :Usuari_Valida, Data_Valida = "NOW' +
        '"'
      '        WHERE (C_Assistencia=:C_Assistencia);'
      '    END;'
      '  END'
      ''
      'END')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'assistenciagimnas'
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
    ModiFecha = 36720.6779788194
    Left = 264
    Top = 56
  end
  object lAssistencia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Assist'#232'ncia'
        NombreDB = 'C_Assistencia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTA_ASSISTENCIA'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 9
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Num_His'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Prest. Gimn.'
        NombreDB = 'PrestacioGimnas'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 9
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Justificaci'#243' curta'
        NombreDB = 'J_Curta'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Justificaci'#243
        NombreDB = 'J_Llarga'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom'
        NombreDB = 'Nom'
        Longitud = 35
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom de la Assit'#232'ncia'
        NombreDB = 'NOM_ASSISTENCIA'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Fora de Freq'#252#232'ncia'
        NombreDB = 'ForaFreq'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Assist'#232'ncia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Assist'#232'ncia'
        Master = CodisAssistencia
        BuscaOrigen.Strings = (
          'Tipus d'#39'Assistencia')
        CopiarOrigen.Strings = (
          'Tipus d'#39'Assistencia')
        CopiarMaster.Strings = (
          'Tipus d'#39'Assist'#232'nica'
          'Descripci'#243)
        BuscaMaster.Strings = (
          'Tipus d'#39'Assist'#232'nica')
      end>
    Nombre = 'Assist'#232'ncia Gimn'#224's'
    NombreTabla = 'P_ASSISTENCIAGIMNAS_PASS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Assist'#232'ncia'
      'Data'
      'Num_His'
      'Prest. Gimn.'
      'Data ingr'#233's'
      'Tipus d'#39'Assistencia'
      'Justificaci'#243' curta'
      'Nom'
      'Nom de la Assit'#232'ncia')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 36810.5384433681
    Left = 268
    Top = 158
  end
  object pAss: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'pAss'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_DIA            DATE,'
      '  E_Prestacio      INTEGER'
      ')'
      'RETURNS ('
      '  NOM              VARCHAR (100),'
      '  C_Historia       INTEGER,'
      '  CF               VARCHAR(2),'
      '  PrestacioGimnas  INTEGER,'
      '  Data_Ingres      DATE,'
      '  C_TRACTAMENT     INTEGER,'
      '  C_TipusAss       INTEGER,'
      '  Frequencia       VARCHAR(7),'
      '  Data_Alta        DATE,'
      '  Unitat           INTEGER,'
      '  MetgeCoordinador VARCHAR (3),'
      '  Tipus            SMALLINT'
      ')'
      ''
      'AS'
      '  DECLARE VARIABLE NUM_ASS INTEGER;'
      '  DECLARE VARIABLE NEW_FREQ VARCHAR (7);'
      'BEGIN'
      ''
      '  IF (E_DIA IS NULL) THEN EXIT;'
      ''
      '  Tipus=2;'
      ''
      
        '  For Select A.C_Historia,T.C_Prestacio,T.Data_Ingres,A.C_TipusA' +
        'ss,A.C_TRACTAMENT'
      '  From AssistenciaGimnas A'
      '  Join Tractaments T on A.C_Tractament = T.C_Tractament'
      
        '  Join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = ' +
        '"ESTATFACTU" and X.R_CODI <> 9'
      '  Where A.Data = :E_Dia'
      
        '    and ((a.c_tipusass = -1) and ((a.data >= t.data_ingres) and ' +
        '((t.data_alta is null) or (t.data_alta is not null and a.data <=' +
        ' t.data_alta)))'
      '         or (a.c_tipusass <> -1))'
      
        '  Into :C_Historia,:PrestacioGimnas,:Data_Ingres,:C_TipusAss,:C_' +
        'TRACTAMENT'
      '  Do Begin'
      ''
      
        '    If ((E_Prestacio is null) Or (E_Prestacio = PrestacioGimnas)' +
        ') Then'
      '    Begin'
      ''
      
        '      Select T.C_FreQuencia, T.Data_Alta, T.C_COORDINADOR, NOMCO' +
        'MPLET, UNITAT, C_CENTREFAC'
      '      From TRACTAMENTS T'
      '      Join FILIACIO F on T.C_Historia = F.Num_Hist'
      '      Where (T.C_Historia = :C_Historia)'
      '        AND (T.C_TRACTAMENT = :C_TRACTAMENT)'
      '        And (T.C_Prestacio = :PrestacioGimnas)'
      '        And (T.Data_Ingres = :Data_Ingres)'
      
        '      Into :Frequencia, :Data_Alta, :MetgeCoordinador, :NOM, :UN' +
        'ITAT, :CF;'
      ''
      '      IF (F_MID(FREQUENCIA,0,1) = "X") THEN'
      '      BEGIN'
      '        NEW_FREQ = "1";'
      '      END'
      '      ELSE'
      '      BEGIN'
      '       NEW_FREQ = "-";'
      '      END'
      ''
      '      IF (F_MID(FREQUENCIA,1,1) = "X") THEN'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "2";'
      '      END'
      '      ELSE'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "-";'
      '      END'
      ''
      '      IF (F_MID(FREQUENCIA,2,1) = "X") THEN'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "3";'
      '      END'
      '      ELSE'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "-";'
      '      END'
      ''
      '      IF (F_MID(FREQUENCIA,3,1) = "X") THEN'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "4";'
      '      END'
      '      ELSE'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "-";'
      '      END'
      ''
      '      IF (F_MID(FREQUENCIA,4,1) = "X") THEN'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "5";'
      '      END'
      '      ELSE'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "-";'
      '      END'
      ''
      '      IF (F_MID(FREQUENCIA,5,1) = "X") THEN'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "6";'
      '      END'
      '      ELSE'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "-";'
      '      END'
      ''
      '      IF (F_MID(FREQUENCIA,6,1) = "X") THEN'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "7";'
      '      END'
      '      ELSE'
      '      BEGIN'
      '        NEW_FREQ = NEW_FREQ || "-";'
      '      END'
      ''
      '      FREQUENCIA = NEW_FREQ;'
      ''
      '      SUSPEND;'
      ''
      '    End'
      ''
      '  END'
      ''
      'END')
    Select.Strings = (
      'Select * From [MySelf]("TODAY",2008)')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'assistenciagimnas'
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
    ModiFecha = 36720.6785230324
    Left = 104
    Top = 104
  end
  object qPrestacions: TQuery
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT C_PRESTACIO, RESUM'
      'FROM Prestacion'
      'WHERE TIPUS = 3')
    Left = 224
    Top = 104
  end
  object EstadistAssistencia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Campo primario'
        NombreDB = 'cPrimario'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom'
        NombreDB = 'Nom'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Prestaci'#243
        NombreDB = 'Prest'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Centre de Facturaci'#243
        NombreDB = 'CF'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Freq'#252#232'ncia'
        NombreDB = 'Freq'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Historia'
        NombreDB = 'Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data d'#39'Inici'
        NombreDB = 'DataIni'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data d'#39'Alta'
        NombreDB = 'DataAlta'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Unitat'
        NombreDB = 'Unitat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'Metge'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 1'
        NombreDB = 'd1'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 2'
        NombreDB = 'd2'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 3'
        NombreDB = 'd3'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 4'
        NombreDB = 'd4'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 5'
        NombreDB = 'd5'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 6'
        NombreDB = 'd6'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 7'
        NombreDB = 'd7'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 8'
        NombreDB = 'd8'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 9'
        NombreDB = 'd9'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 10'
        NombreDB = 'd10'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 11'
        NombreDB = 'd11'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 12'
        NombreDB = 'd12'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 13'
        NombreDB = 'd13'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 14'
        NombreDB = 'd14'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 15'
        NombreDB = 'd15'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 16'
        NombreDB = 'd16'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 17'
        NombreDB = 'd17'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 18'
        NombreDB = 'd18'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 19'
        NombreDB = 'd19'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 20'
        NombreDB = 'd20'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 21'
        NombreDB = 'd21'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 22'
        NombreDB = 'd22'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 23'
        NombreDB = 'd23'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 24'
        NombreDB = 'd24'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 25'
        NombreDB = 'd25'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 26'
        NombreDB = 'd26'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 27'
        NombreDB = 'd27'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 28'
        NombreDB = 'd28'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 29'
        NombreDB = 'd29'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 30'
        NombreDB = 'd30'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dia 31'
        NombreDB = 'd31'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Total Assist'#232'nices'
        NombreDB = 'TotalSi'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Total Faltes'
        NombreDB = 'TotalNo'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Total General'
        NombreDB = 'Total'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Primario'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Campo primario')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Estad'#237'stica Assist'#232'ncia'
    NombreTabla = 'EstadistAssistencia'
    Organiza = tbBase
    CamposVer.Strings = (
      'Nom'
      'Prestaci'#243
      'Freq'#252#232'ncia'
      'Historia'
      'Centre de Facturaci'#243
      'Data d'#39'Inici'
      'Data d'#39'Alta'
      'Unitat'
      'Metge'
      'Dia 1'
      'Dia 2'
      'Dia 3'
      'Dia 4'
      'Dia 5'
      'Dia 6'
      'Dia 7'
      'Dia 8'
      'Dia 9'
      'Dia 10'
      'Dia 11'
      'Dia 12'
      'Dia 13'
      'Dia 14'
      'Dia 15'
      'Dia 16'
      'Dia 17'
      'Dia 18'
      'Dia 19'
      'Dia 20'
      'Dia 21'
      'Dia 22'
      'Dia 23'
      'Dia 24'
      'Dia 25'
      'Dia 26'
      'Dia 27'
      'Dia 28'
      'Dia 29'
      'Dia 30'
      'Dia 31'
      'Total Assist'#232'nices'
      'Total Faltes'
      'Total General')
    IndiceVer = 'Primario'
    Navegar = True
    Nivel = 0
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 36810.579808287
    Left = 32
    Top = 104
  end
  object PreparaDia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PreparaDia'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_DIA DATE'
      ')'
      'AS'
      '  DECLARE VARIABLE C_HISTORIA INTEGER;'
      '  DECLARE VARIABLE CONTADOR INTEGER;'
      '  DECLARE VARIABLE FREQUENCIA VARCHAR(7);'
      '  DECLARE VARIABLE DIAFIJO DATE;'
      '  DECLARE VARIABLE C_Tractament INTEGER;'
      '  DECLARE VARIABLE C_Prestacio VARCHAR (4);'
      '  DECLARE VARIABLE DAYOFWEEK INTEGER;'
      '  DECLARE VARIABLE PotFestius INTEGER;'
      '  DECLARE VARIABLE EsFestiu INTEGER;'
      '  DECLARE VARIABLE ESEASE CHAR(1);'
      '  DECLARE VARIABLE DATA_ASSGYM_NHCE DATE;'
      '  DECLARE VARIABLE PotAssistencia SMALLINT;'
      'BEGIN'
      ''
      '      IF (E_DIA IS NULL) THEN E_DIA = "TODAY";'
      
        '      /* IF ((F_DAYOFWEEK(:E_DIA)<2) OR (F_DAYOFWEEK(:E_DIA)>6))' +
        ' THEN EXIT;*/'
      ''
      
        '      /* PRIMER DE TOT ELIMINEM ELS REGISTRES D'#39'AVUI QUE TINGUIN' +
        ' -1 */'
      
        '      DELETE FROM ASSISTENCIAGIMNAS WHERE DATA = :E_DIA AND C_TI' +
        'PUSASS = -1;'
      ''
      
        '      SELECT COUNT(*) FROM FESTIUS WHERE DATA = :E_DIA INTO :EsF' +
        'estiu;'
      
        '      SELECT DATA FROM CONFIGDATES WHERE CAMP = '#39'AssGym_nHCE'#39' IN' +
        'TO :DATA_ASSGYM_NHCE;'
      ''
      
        '      FOR SELECT T.C_HISTORIA, T.C_FREQUENCIA, T.DIAFIXE, T.C_Tr' +
        'actament, T.C_Prestacio, P.ESEASE'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO A' +
        'ND Abs(P.TIPUS) = 3           /* afegeixo la join */'
      '          WHERE (T.DATA_ALTA >= :E_DIA OR T.DATA_ALTA IS NULL)'
      '          AND    T.DATA_INGRES <= :E_DIA'
      
        '/*        AND    T.C_PRESTACIO IN (SELECT TC_PRESTACIO FROM PRES' +
        'TACION WHERE TIPUS = 3)        i trec l'#39'"in" */'
      '          AND   (T.DIAFIXE IS NULL OR T.DIAFIXE = :E_DIA)'
      
        '          INTO  :C_HISTORIA, :FREQUENCIA, :DIAFIJO, :C_Tractamen' +
        't, :C_Prestacio, :ESEASE'
      '      DO BEGIN'
      
        '          SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = :' +
        'C_Prestacio AND C_DRET = '#39'P257'#39' INTO :PotAssistencia;'
      '          '
      
        '          IF ((ESEASE <> '#39'C'#39') OR (E_DIA < DATA_ASSGYM_NHCE) OR (' +
        'PotAssistencia <> 0))  /* No generar m'#233's registres d'#39'assist'#232'ncia' +
        ' per prestacions de BCN a partir de la data de posta en marxa d'#39 +
        'assist'#232'ncies a la nova HCE*/'
      '          THEN BEGIN'
      '            DAYOFWEEK = F_DAYOFWEEK(E_DIA)-2;'
      '            IF (DAYOFWEEK = -1) THEN DAYOFWEEK = 6;'
      ''
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' :C_Prestacio AND C_Dret = "P450" Into :PotFestius;'
      ''
      
        '            IF ( (F_Mid(:FREQUENCIA, DAYOFWEEK, 1) = "X") AND ((' +
        'EsFestiu = 0) OR (PotFestius <> 0)) ) THEN'
      '            BEGIN'
      ''
      '                  SELECT COUNT(*)'
      '                  FROM   ASSISTENCIAGIMNAS A'
      
        '                  JOIN   TRACTAMENTS T ON A.C_TRACTAMENT = T.C_T' +
        'RACTAMENT'
      '                  WHERE  A.DATA = :E_DIA'
      '                  AND    A.C_HISTORIA = :C_HISTORIA'
      '                  AND    T.C_PRESTACIO = :C_Prestacio'
      '                  AND    T.C_TRACTAMENT = :C_Tractament'
      '                  INTO  :CONTADOR;'
      ''
      '                  IF (CONTADOR = 0) THEN'
      '                  BEGIN'
      ''
      
        '                        IF (DIAFIJO IS NOT NULL) THEN FREQUENCIA' +
        ' = "";'
      ''
      
        '                        INSERT INTO ASSISTENCIAGIMNAS (C_Assiste' +
        'ncia, Data, C_Historia, C_Tractament, C_TipusAss, ForaFreq, FREQ' +
        'UENCIA)'
      
        '                        VALUES (Gen_Id(CONTA_ASSISTENCIA,1), :E_' +
        'DIA, :C_HISTORIA, :C_Tractament, -1, "N", :FREQUENCIA);'
      '                  END'
      ''
      
        '                 /* afegirm la data a la taula ABSENTISMENPCDATE' +
        'S si no hi '#233's */'
      
        '                 IF (E_DIA >= '#39'1.4.2017'#39') THEN  /* L'#39'absentisme ' +
        'es posa en marxa l'#39'1 d'#39'abril del 2017 */'
      '                 BEGIN'
      '                     CONTADOR=0;'
      
        '                     SELECT COUNT(*) FROM ABSENTISMENPCDATES WHE' +
        'RE DATA=:E_DIA INTO :CONTADOR;'
      
        '                     IF (CONTADOR=0) THEN INSERT INTO ABSENTISME' +
        'NPCDATES(DATA) VALUES(:E_DIA);'
      '                 END;'
      ''
      '            END'
      '          END'
      '      END'
      '      '
      'END')
    Select.Strings = (
      'Execute Procedure [MySelf]("5.1.2003")'
      '')
    Dic1 = wDataBasics.Tractaments
    Dic2 = AssistenciaGimnas
    Dic1Name = 'tractaments'
    Dic2Name = 'assistenciagimnas'
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
    ModiFecha = 36720.6781740741
    Left = 32
    Top = 56
  end
  object AssDiaria: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AssDiaria'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_DIA DATE,'
      '  SHOWASSIGNED INTEGER,'
      '  SHOWUNASSIGNED INTEGER'
      ')'
      'RETURNS ('
      '  NOM              VARCHAR(100),'
      '  C_Assistencia    INTEGER,'
      '  C_Historia       INTEGER,'
      '  J_Curta          VARCHAR(40),'
      '  NOM_ASSISTENCIA  VARCHAR(50),'
      '  ASSISTENCIA      VARCHAR(1),'
      '  C_TipusAss       INTEGER,'
      '  Data             DATE,'
      '  Frequencia       VARCHAR(7),'
      '  MetgeCoordinador VARCHAR(3),'
      '  ForaFreq         VARCHAR(1),'
      '  C_Tractament     INTEGER,'
      '  PrestacioGimnas  VARCHAR(4),'
      '  ESEASE           CHAR(1),'
      '  N_Prestacio      VARCHAR(35),'
      '  GrupPresta       VARCHAR(15),'
      '  C_Metge          VARCHAR(5),'
      '  C_Centrefac      VARCHAR(2),'
      '  Dinar            CHAR(1),'
      '  Usuari_Valida    VARCHAR(5),'
      '  Data_Valida      DATE,'
      '  J_Llarga         VARCHAR(3000),'
      '  Hora_Assistencia VARCHAR(5)'
      ')'
      ''
      'AS'
      '  DECLARE VARIABLE XAPELLIDO1 VARCHAR (25);'
      '  DECLARE VARIABLE XAPELLIDO2 VARCHAR (25);'
      '  DECLARE VARIABLE NUM_ASS INTEGER;'
      '  DECLARE VARIABLE NEW_FREQ VARCHAR (7);'
      '  DECLARE VARIABLE SHOW INTEGER;'
      'BEGIN'
      ''
      '  IF (E_DIA IS NULL) THEN EXIT;'
      
        '  /*IF ((F_DAYOFWEEK(:E_DIA)<2) OR (F_DAYOFWEEK(:E_DIA)>6)) THEN' +
        ' EXIT;*/'
      ''
      
        '  FOR SELECT C_ASSISTENCIA, C_HISTORIA, J_CURTA, C_TIPUSASS, DAT' +
        'A, FORAFREQ, FREQUENCIA, C_TRACTAMENT, C_Metge, Dinar, Usuari_Va' +
        'lida, Data_Valida, J_Llarga, Hora_Assistencia'
      '      FROM   ASSISTENCIAGIMNAS'
      '      WHERE  DATA = :E_DIA'
      
        '      INTO  :C_ASSISTENCIA, :C_HISTORIA, :J_CURTA, :C_TIPUSASS, ' +
        ':DATA, :FORAFREQ, :FREQUENCIA, :C_TRACTAMENT, :C_Metge, :Dinar, ' +
        ':Usuari_Valida, :Data_Valida, :J_Llarga, :Hora_Assistencia'
      '  DO BEGIN'
      ''
      '    SHOW = 0;'
      ''
      
        '    IF ((C_TIPUSASS = -1) AND (SHOWUNASSIGNED = 1)) THEN SHOW = ' +
        '1;'
      
        '    IF ((C_TIPUSASS <> -1) AND (SHOWASSIGNED = 1)) THEN SHOW = 1' +
        ';'
      ''
      '    IF (SHOW = 1) THEN'
      '    BEGIN'
      ''
      '      SELECT NOMCOMPLET'
      '      FROM   FILIACIO'
      '      WHERE  :C_HISTORIA = NUM_HIST'
      '      INTO  :NOM;'
      '      '
      
        '      SELECT T.C_COORDINADOR, T.C_PRESTACIO, P.N_PRESTACIO, P.ES' +
        'EASE, C.N_CODI, T.C_CENTREFAC'
      '      FROM   TRACTAMENTS T'
      '      JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      
        '      LEFT OUTER JOIN CODICAMPS C ON P.GRUP = C.C_CODI AND C.TIP' +
        'USCODI = '#39'PRESTACIO.GRUP'#39
      '      WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      
        '      INTO  :METGECOORDINADOR, :PRESTACIOGIMNAS, :N_PRESTACIO, :' +
        'ESEASE, :GRUPPRESTA, :C_CENTREFAC;'
      ''
      '      IF (FREQUENCIA = "") THEN FREQUENCIA = "DIA FIX";'
      '      ELSE BEGIN'
      '   '
      
        '            IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1"' +
        ';'
      
        '                                             ELSE NEW_FREQ = "-"' +
        ';'
      ''
      
        '            IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "2";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "3";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "4";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "5";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "6";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "7";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      '            FREQUENCIA = NEW_FREQ;'
      ''
      '      END'
      ''
      '      SELECT NOM, ASSISTENCIA'
      '      FROM   CODISASSISTENCIA'
      '      WHERE  C_TIPUSASS = :C_TIPUSASS'
      '      INTO  :NOM_ASSISTENCIA, :ASSISTENCIA;'
      ''
      '      SUSPEND;'
      ''
      '    END;'
      ''
      '  END;'
      'END;')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'assistenciagimnas'
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
    ModiFecha = 36720.6782318287
    Left = 88
    Top = 56
  end
  object ForaFreq: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ForaFreq'
    ForceNombreDB = False
    Body.Strings = (
      '( '
      '  E_DIA DATE,'
      '  PRESTA CHAR(4)'
      ')'
      'RETURNS ('
      '  NOM              VARCHAR(100),'
      '  C_HISTORIA       INTEGER,'
      '  PRESTACIOGIMNAS  VARCHAR (4),'
      '  N_PRESTACIO      VARCHAR(35),'
      '  DATA_INGRES      DATE,'
      '  FREQUENCIA       VARCHAR(7),'
      '  METGECOORDINADOR VARCHAR(5),'
      '  C_TRACTAMENT     INTEGER,'
      '  GNPT             INTEGER,'
      '  C_CENTREFAC      VARCHAR (2),'
      '  ESEASE           CHAR(1)'
      ')'
      'AS'
      '  DECLARE VARIABLE NEW_FREQ VARCHAR(7);'
      'BEGIN'
      ''
      '   IF (E_DIA IS NULL) THEN EXIT;'
      
        '   IF ((F_DAYOFWEEK(:E_DIA)<2) OR (F_DAYOFWEEK(:E_DIA)>6)) THEN ' +
        'EXIT;'
      ''
      
        '   FOR SELECT T.C_HISTORIA, T.C_PRESTACIO, P.N_PRESTACIO, T.DATA' +
        '_INGRES, T.C_FREQUENCIA, T.C_COORDINADOR, F.NOMCOMPLET, T.C_TRAC' +
        'TAMENT, F.PREVIRNEC, T.C_CENTREFAC, P.ESEASE'
      '       FROM   TRACTAMENTS T'
      '       JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '       JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '       WHERE  ((T.DATA_ALTA >= :E_DIA) OR (T.DATA_ALTA IS NULL))'
      
        '       AND    T.C_PRESTACIO IN (SELECT C_PRESTACIO FROM PRESTACI' +
        'ON WHERE Abs(P.TIPUS) = 3)'
      '       AND    T.C_HISTORIA NOT IN (SELECT A.C_HISTORIA'
      '                                   FROM ASSISTENCIAGIMNAS A'
      
        '                                   JOIN TRACTAMENTS T2 ON  A.C_T' +
        'RACTAMENT = T2.C_TRACTAMENT'
      
        '                                                       AND ((T2.' +
        'C_PRESTACIO = :PRESTA)'
      '                                                             OR'
      
        '                                                            (:PR' +
        'ESTA IS NULL)'
      '                                                             OR'
      
        '                                                            ((:P' +
        'RESTA = '#39'NPC'#39' ) AND T2.C_PRESTACIO IN (SELECT C_PRESTACIO'
      
        '                                                                ' +
        '                                      FROM DRETSPRESTA'
      
        '                                                                ' +
        '                                      WHERE C_DRET = "P107"))'
      '                                                             OR'
      
        '                                                            ((:P' +
        'RESTA = '#39'NPS'#39' ) AND T2.C_PRESTACIO IN (SELECT C_PRESTACIO'
      
        '                                                                ' +
        '                                      FROM DRETSPRESTA'
      
        '                                                                ' +
        '                                      WHERE C_DRET = "P222"))'
      '                                                             OR'
      
        '                                                            ((:P' +
        'RESTA = '#39'LOGO'#39') AND T2.C_PRESTACIO IN (SELECT C_PRESTACIO'
      
        '                                                                ' +
        '                                      FROM DRETSPRESTA'
      
        '                                                                ' +
        '                                      WHERE C_DRET = "P225"))'
      '                                                             OR'
      
        '                                                            ((:P' +
        'RESTA = '#39'Mus.'#39') AND T2.C_PRESTACIO IN (SELECT C_PRESTACIO'
      
        '                                                                ' +
        '                                      FROM DRETSPRESTA'
      
        '                                                                ' +
        '                                      WHERE C_DRET = "P224"))'
      '                                                            )'
      '                                   WHERE A.DATA = :E_DIA)'
      '       AND  ((T.C_PRESTACIO = :PRESTA)'
      '              OR'
      '             (:PRESTA IS NULL)'
      '              OR'
      
        '             ((:PRESTA = '#39'NPC'#39') AND T.C_PRESTACIO IN (SELECT C_P' +
        'RESTACIO FROM DRETSPRESTA WHERE C_DRET = "P107"))'
      '              OR'
      
        '             ((:PRESTA = '#39'NPS'#39') AND T.C_PRESTACIO IN (SELECT C_P' +
        'RESTACIO FROM DRETSPRESTA WHERE C_DRET = "P222"))'
      '              OR'
      
        '             ((:PRESTA = '#39'LOGO'#39') AND T.C_PRESTACIO IN (SELECT C_' +
        'PRESTACIO FROM DRETSPRESTA WHERE C_DRET = "P225"))'
      '              OR'
      
        '             ((:PRESTA = '#39'Mus.'#39') AND T.C_PRESTACIO IN (SELECT C_' +
        'PRESTACIO FROM DRETSPRESTA WHERE C_DRET = "P224"))'
      '             )'
      '             '
      
        '       INTO :C_HISTORIA, :PRESTACIOGIMNAS, :N_PRESTACIO, :DATA_I' +
        'NGRES, :FREQUENCIA, :METGECOORDINADOR, :NOM, :C_TRACTAMENT, :GNP' +
        'T, :C_CENTREFAC, :ESEASE'
      '   DO BEGIN'
      '  '
      '      IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                       ELSE NEW_FREQ = "-";'
      ''
      
        '      IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FREQ ' +
        '|| "2";'
      
        '                                       ELSE NEW_FREQ = NEW_FREQ ' +
        '|| "-";'
      ''
      
        '      IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FREQ ' +
        '|| "3";'
      
        '                                       ELSE NEW_FREQ = NEW_FREQ ' +
        '|| "-";'
      ''
      
        '      IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FREQ ' +
        '|| "4";'
      
        '                                       ELSE NEW_FREQ = NEW_FREQ ' +
        '|| "-";'
      ''
      
        '      IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FREQ ' +
        '|| "5";'
      
        '                                       ELSE NEW_FREQ = NEW_FREQ ' +
        '|| "-";'
      ''
      
        '      IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FREQ ' +
        '|| "6";'
      
        '                                       ELSE NEW_FREQ = NEW_FREQ ' +
        '|| "-";'
      ''
      
        '      IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FREQ ' +
        '|| "7";'
      
        '                                       ELSE NEW_FREQ = NEW_FREQ ' +
        '|| "-";'
      ''
      '      FREQUENCIA = NEW_FREQ;'
      ''
      '      SUSPEND;'
      ''
      '   END;'
      ''
      'END;')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'tractaments'
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
    ModiFecha = 36720.6783431713
    Left = 208
    Top = 56
  end
  object ModFrequencia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ModFrequencia'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_Tractament  INTEGER,'
      '  FRECUENCIA    VARCHAR (7),'
      '  C_Assistencia INTEGER,'
      '  DiaFijo       Date'
      ')'
      'AS'
      ''
      'BEGIN'
      ''
      '/*'
      '      UPDATE TRACTAMENTS'
      
        '      SET    C_Frequencia = :Frecuencia, DiaFixe = :DiaFijo     ' +
        '        quan DIAFIJO = NULL, li PASSA un 0.0 en ALGUNS PC'#39's !!!!' +
        '!'
      '      WHERE  C_Tractament = :C_Tractament;'
      ''
      '      IF (DIAFIJO IS NULL) THEN'
      '      BEGIN'
      '            UPDATE ASSISTENCIAGIMNAS'
      '            SET    FREqUENCIA = :Frecuencia'
      '            WHERE  C_ASSISTENCIA=:C_ASSISTENCIA;'
      '      END'
      ''
      '      ELSE BEGIN'
      ''
      '            DELETE FROM ASSISTENCIAGIMNAS'
      
        '            WHERE  C_ASSISTENCIA = :C_ASSISTENCIA AND C_TipusAss' +
        ' = -1;'
      ''
      '      END  */'
      '      '
      ''
      '      IF (DIAFIJO IS NULL) THEN'
      '      BEGIN'
      '            UPDATE TRACTAMENTS'
      '            SET    C_Frequencia = :Frecuencia, DiaFixe = Null'
      '            WHERE  C_Tractament = :C_Tractament;'
      ''
      '            UPDATE ASSISTENCIAGIMNAS'
      '            SET    FREQUENCIA = :Frecuencia'
      '            WHERE  C_ASSISTENCIA = :C_ASSISTENCIA;'
      '      END'
      '      '
      '      ELSE BEGIN'
      ''
      '            UPDATE TRACTAMENTS'
      
        '            SET    C_Frequencia = :Frecuencia, DiaFixe = :DiaFij' +
        'o'
      '            WHERE  C_Tractament = :C_Tractament;'
      ''
      '            DELETE FROM ASSISTENCIAGIMNAS'
      
        '            WHERE  C_ASSISTENCIA = :C_ASSISTENCIA AND C_TipusAss' +
        ' = -1;'
      ''
      '      END'
      ''
      'END'
      ''
      ''
      ''
      '')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'tractaments'
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
    ModiFecha = 36720.7540659722
    Left = 333
    Top = 56
  end
  object MsgBoxes: TMessageBoxes
    Items = <
      item
        Caption = 'Atenci'#243
        Icon = 3
        Button1 = 'D'#39'acord'
        Button1Glyph = 0
        Name = 'EstFaltenDades'
        DefaultOne = 1
        CancelOne = 1
      end>
    Glyphs = mbGlyphs
    Icons = mbIcones
    dsaMessage = 'No tornar a mostrar'
    TestOne = '[Name]'
    Left = 24
    Top = 158
  end
  object mbIcones: TImageList
    Height = 32
    Width = 32
    Left = 80
    Top = 158
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
  object mbGlyphs: TImageList
    Masked = False
    Left = 144
    Top = 158
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFE00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF000084840000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400008484008400840084008400840084008400
      8400840084008400840084008400840084008400840084008400840084008400
      8400840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400840084008400840084008400
      8400840084008400840084008400840084008400840084008400840084008400
      8400840084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000084
      8400008484000084840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008400840084008400840084008400
      8400840084008400840084848400000000000000000000000000848484008400
      840000FFFF008484840000000000840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000084
      8400008484000084840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484000000
      00000000000000FFFF0084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000084
      8400008484000084840000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000008484840000000000000000000000000000000000FFFFFF008484
      8400000000008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000000
      0000008484000084840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000C6C6C600FFFF
      FF00848484008484840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000000
      FF00000000000084840000000000FFFFFF0000000000BDBDBD00000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
      000084848400C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600848484000000000084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      840000008400000084000000840000008400000084000000840000FFFF000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000000
      FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      000084848400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00848484000000000084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000FFFFFF00C6C6
      C600848484000000000084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00000000000084840000000000FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000C6C6C600FFFF
      FF00848484008484840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      840000008400FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000084000000
      840000000000FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000BDBDBD00FFFFFF000000
      0000FFFFFF0000000000008484000084840000000000FFFFFF00FFFFFF00FFFF
      FF000000000084848400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF008484
      8400000000008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      840000008400FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000084000000
      840000000000FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000848400008484000084840000000000FFFFFF00000000000000
      0000000000000000000084848400848484008484840084848400848484000000
      0000840084008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      840000008400FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000084000000
      840000000000FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000084840000848400008484000084840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000848484008400
      8400840084008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000000
      FF000000FF000000000000848400008484000084840000848400008484000084
      84000084840000848400008484000084840000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF000000000084008400840084008400
      8400840084008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      8400000084000000840000008400000084000000840000008400000084000000
      840000000000FF00FF00FF00FF00FF00FF000084840000848400008484000000
      FF00000000000084840000848400008484000084840000848400008484000084
      84000084840000848400008484000084840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000008400840084008400840084008400
      8400840084008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF000084840000848400008484000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400008484000000000000000000000000000000
      0000000000000000000000000000840084008400840084008400840084008400
      8400840084008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0084840000840000008400000084840000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00848484008484840084848400848484008484840084848400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
      840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FFFF0000848400008484000084000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
      8400848484000000840000008400000084000000840000008400000084008484
      840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008400
      0000008400000084000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
      84000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      FF0084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FFFF00008484000084840000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00848484000000
      840000008400000084000000FF000000FF000000FF000000FF00000084000000
      84000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00840000000084
      000000840000008400000084000084000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
      8400000084000000840084848400FF00FF00FF00FF00FF00FF000000FF000000
      84000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000
      84000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00000084000000
      8400000084000000840084848400FF00FF00FF00FF0084000000008400000084
      00000084000000840000008400000084000084000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
      840000008400000084000000840084848400FF00FF000000FF00000084000000
      8400000084000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00840000008400000084840000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000
      8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084848400000084000000
      8400000084000000840084848400FF00FF008400000000840000008400000084
      000000FF00000084000000840000008400000084000084000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      FF00000084000000840000008400000084008484840000008400000084000000
      8400000084000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0084840000848400008484000084000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF0000008400000084008484
      8400FF00FF00FF00FF00FF00FF00FF00FF008484840000008400000084000000
      84000000FF0000008400000084008484840000840000008400000084000000FF
      0000FF00FF0000FF000000840000008400000084000084000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000FF000000840000008400000084000000840000008400000084000000
      84000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FFFF0000848400008484000084000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000840084848400FF00
      FF00FF00FF00FF00FF00FF00FF00848484000000840000008400000084000000
      FF00FF00FF000000FF00000084008484840000FF00000084000000FF0000FF00
      FF00FF00FF00FF00FF0000FF000000840000008400000084000084000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000FF0000008400000084000000840000008400000084000000
      840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FFFF000084840000848400008484000084000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000840084848400FF00
      FF00FF00FF00FF00FF00848484000000840000008400000084000000FF00FF00
      FF00FF00FF000000FF000000840084848400FF00FF0000FF0000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000FF00000084000000840000008400008400
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000008400000084000000840000008400000084008484
      8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FFFF000084840000848400008484000084000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000840084848400FF00
      FF00FF00FF00848484000000840000008400000084000000FF00FF00FF00FF00
      FF00FF00FF000000FF000000840084848400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000840000008400000084
      000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000FF00000084000000840000008400000084008484
      8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FFFF00008484000084840000848400008400
      0000FF00FF00FF00FF00FF00FF00FF00FF000000FF000000840084848400FF00
      FF00848484000000840000008400000084000000FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000FF000000840084848400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF0000008400000084
      00000084000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000FF0000008400000084000000840000008400000084008484
      8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008400
      000084000000FF00FF00FF00FF00FF00FF00FFFF000084840000848400008484
      000084000000FF00FF00FF00FF00FF00FF000000FF0000008400000084008484
      84000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000FF00000084000000840084848400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000084
      0000008400000084000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000FF000000840000008400000084008484840000008400000084000000
      840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00848400008484
      00008484000084000000FF00FF00FF00FF00FF00FF00FFFF0000848400008484
      000084000000FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000
      840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000FF000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
      000000840000008400000084000084000000FF00FF00FF00FF00FF00FF000000
      FF0000008400000084000000840084848400FF00FF000000FF00000084000000
      84000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FFFF00008484
      0000848400008484000084000000840000008400000084840000848400008484
      000084000000FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000
      84000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00848484000000
      8400000084000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000FF0000008400000084000084000000FF00FF00FF00FF00FF00FF000000
      FF00000084000000840084848400FF00FF00FF00FF00FF00FF000000FF000000
      8400000084000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
      0000848400008484000084840000848400008484000084840000848400008484
      000084840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
      8400000084000000840084848400848484008484840084848400000084000000
      84000000840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000FF00000084000000840000FF00FF00FF00FF00FF00FF00FF00
      FF000000FF0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      FF00000084000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FFFF0000FFFF000084840000848400008484000084840000848400008484
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      FF000000FF000000840000008400000084000000840000008400000084000000
      FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000FF00000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object pAssMemories: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'pAssMemories'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DIAI            DATE,'
      '  DIAF            DATE,'
      '  PRESTACIO       INTEGER'
      ')'
      'RETURNS ('
      '  NOM              VARCHAR (80),'
      '  HISTORIA         INTEGER,'
      '  PRESTACIOGIMNAS  INTEGER,'
      '  DATA_INGRES      DATE,'
      '  DATA_ALTA        DATE,'
      '  CENTREFAC        VARCHAR(2),'
      '  PROCES           INTEGER,'
      '  DATA_INIPROCES   DATE,'
      '  DATA_FIPROCES    DATE,'
      '  FI_PROCES        CHAR(1),'
      '  UNITAT           INTEGER,'
      '  METGECOORDINADOR VARCHAR (3),'
      '  UNITATMEDICA     SMALLINT,'
      '  SUM_1            INTEGER,'
      '  SUM_2            INTEGER,'
      '  SUM_3            INTEGER,'
      '  SUM_4            INTEGER,'
      '  SUM_5            INTEGER,'
      '  SUM_6            INTEGER,'
      '  TOT_SI           INTEGER,'
      '  TOT_NO           INTEGER'
      ')'
      ''
      'AS'
      '  DECLARE VARIABLE C_TIPUSASS   INTEGER;'
      '  DECLARE VARIABLE TRACTAMENT   INTEGER;'
      '  DECLARE VARIABLE SUMA         INTEGER;'
      '  '
      '  DECLARE VARIABLE NHC_ANT      INTEGER;'
      '  DECLARE VARIABLE NHC_ACT      INTEGER;'
      '  DECLARE VARIABLE TRACT_ANT    INTEGER;'
      '  DECLARE VARIABLE TRACT_ACT    INTEGER;'
      '  DECLARE VARIABLE TASS_ANT     INTEGER;'
      '  DECLARE VARIABLE TASS_ACT     INTEGER;'
      '  DECLARE VARIABLE PRIMER       INTEGER;'
      'BEGIN'
      '  IF ((DIAI IS NULL) OR (DIAF IS NULL)) THEN EXIT;'
      '  SUM_1=0; SUM_2=0; SUM_3=0; SUM_4=0; SUM_5=0; SUM_6=0;'
      '  PRIMER = 0;'
      ''
      
        '  FOR SELECT A.C_HISTORIA, A.C_TRACTAMENT, A.C_TIPUSASS, COUNT(*' +
        ')'
      '  FROM ASSISTENCIAGIMNAS A'
      '  JOIN TRACTAMENTS T ON A.C_TRACTAMENT = T.C_TRACTAMENT'
      
        '  Join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = ' +
        '"ESTATFACTU" and X.R_CODI <> 9'
      
        '  WHERE (A.DATA >= :DIAI AND A.DATA <= :DIAF) AND (A.C_TIPUSASS ' +
        '>= 0) /* No agafem els -1 */'
      '  AND   ((T.C_PRESTACIO = :PRESTACIO) OR (:PRESTACIO IS NULL))'
      '  GROUP BY A.C_HISTORIA, A.C_TRACTAMENT, A.C_TIPUSASS'
      '  ORDER BY A.C_HISTORIA, A.C_TRACTAMENT, A.C_TIPUSASS'
      '  INTO :NHC_ACT, :TRACT_ACT, :TASS_ACT, :SUMA'
      '  DO BEGIN'
      '      IF (PRIMER=0) THEN'
      '      BEGIN'
      '          NHC_ANT=NHC_ACT;'
      '          TRACT_ANT=TRACT_ACT;'
      '          TASS_ANT=TASS_ACT;'
      '          PRIMER=1;'
      '      END;'
      '  '
      '      IF (TRACT_ACT <> TRACT_ANT) THEN'
      '      BEGIN'
      '          HISTORIA = NHC_ANT; TRACTAMENT = TRACT_ANT;'
      ''
      
        '          SELECT F.NOMCOMPLET, F.UNITAT, F.C_UNITATMEDICA, T.C_P' +
        'RESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_PROCES,'
      '                 T.FI_PROCES, T.C_COORDINADOR, T.C_CENTREFAC'
      '          FROM TRACTAMENTS T'
      '          LEFT JOIN FILIACIO F ON F.NUM_HIST = T.C_HISTORIA'
      '          WHERE T.C_TRACTAMENT = :TRACTAMENT'
      
        '          INTO :NOM, :UNITAT, :UNITATMEDICA, :PRESTACIOGIMNAS, :' +
        'DATA_INGRES, :DATA_ALTA, :PROCES, :FI_PROCES, :METGECOORDINADOR,'
      '               :CENTREFAC;'
      ''
      '          TOT_SI = SUM_1+SUM_2+SUM_4+SUM_6;'
      '          TOT_NO = SUM_3+SUM_5;'
      ''
      '          IF (PROCES IS NOT NULL) THEN'
      '          BEGIN'
      '              SELECT MIN(T.DATA_INGRES)'
      '              FROM TRACTAMENTS T'
      
        '              JOIN CODICAMPS X ON T.C_ESTATFAC = X.C_CODI AND X.' +
        'TIPUSCODI = "ESTATFACTU" AND X.R_CODI <> 9'
      '              WHERE T.C_PROCES = :PROCES'
      '              INTO :DATA_INIPROCES;'
      '              '
      '              DATA_FIPROCES = NULL;'
      
        '              IF (FI_PROCES='#39'S'#39') THEN DATA_FIPROCES = :DATA_ALTA' +
        ';'
      '              ELSE BEGIN'
      '                  SELECT MAX(T.DATA_ALTA)'
      '                  FROM TRACTAMENTS T'
      
        '                  JOIN CODICAMPS X ON T.C_ESTATFAC = X.C_CODI AN' +
        'D X.TIPUSCODI = "ESTATFACTU" AND X.R_CODI <> 9'
      
        '                  JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND' +
        ' D.C_DRET  = '#39'X1'#39
      
        '                  WHERE T.C_PROCES = :PROCES AND T.FI_PROCES = '#39 +
        'S'#39
      '                  INTO :DATA_FIPROCES;'
      '              END;'
      '          END;'
      '          ELSE BEGIN'
      '              DATA_INIPROCES=NULL; DATA_FIPROCES=NULL;'
      '          END;'
      ''
      '          SUSPEND;'
      
        '          NHC_ANT=NHC_ACT; TRACT_ANT=TRACT_ACT; TASS_ANT=TASS_AC' +
        'T;'
      '          /* hem de guardar l'#39'acumulat del registre ANT */'
      '          IF (TASS_ANT=1) THEN SUM_1=SUMA; ELSE SUM_1=0;'
      '          IF (TASS_ANT=2) THEN SUM_2=SUMA; ELSE SUM_2=0;'
      '          IF (TASS_ANT=3) THEN SUM_3=SUMA; ELSE SUM_3=0;'
      '          IF (TASS_ANT=4) THEN SUM_4=SUMA; ELSE SUM_4=0;'
      '          IF (TASS_ANT=5) THEN SUM_5=SUMA; ELSE SUM_5=0;'
      '          IF (TASS_ANT=6) THEN SUM_6=SUMA; ELSE SUM_6=0;'
      '      END;'
      '      ELSE BEGIN'
      '          IF (TASS_ACT=1) THEN SUM_1=SUM_1+SUMA;'
      '          ELSE IF (TASS_ACT=2) THEN SUM_2=SUM_2+SUMA;'
      '          ELSE IF (TASS_ACT=3) THEN SUM_3=SUM_3+SUMA;'
      '          ELSE IF (TASS_ACT=4) THEN SUM_4=SUM_4+SUMA;'
      '          ELSE IF (TASS_ACT=5) THEN SUM_5=SUM_5+SUMA;'
      '          ELSE IF (TASS_ACT=6) THEN SUM_6=SUM_6+SUMA;'
      '      END;'
      '  END;'
      '  '
      
        '  /* llistem '#250'ltim registre (ja que a cada iteraci'#243' llistem l'#39'an' +
        'terior) */'
      '  '
      '  HISTORIA = NHC_ACT; TRACTAMENT = TRACT_ACT;'
      '  '
      
        '  SELECT F.NOMCOMPLET, F.UNITAT, F.C_UNITATMEDICA, T.C_PRESTACIO' +
        ', T.DATA_INGRES, T.DATA_ALTA, T.C_PROCES,'
      '         T.FI_PROCES, T.C_COORDINADOR, T.C_CENTREFAC'
      '  FROM TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON F.NUM_HIST = T.C_HISTORIA'
      '  WHERE T.C_TRACTAMENT = :TRACTAMENT'
      
        '  INTO :NOM, :UNITAT, :UNITATMEDICA, :PRESTACIOGIMNAS, :DATA_ING' +
        'RES, :DATA_ALTA, :PROCES, :FI_PROCES, :METGECOORDINADOR, :CENTRE' +
        'FAC;'
      ''
      '  TOT_SI = SUM_1+SUM_2+SUM_4+SUM_6;'
      '  TOT_NO = SUM_3+SUM_5;'
      ''
      '  IF (PROCES IS NOT NULL) THEN'
      '  BEGIN'
      '      SELECT MIN(T.DATA_INGRES)'
      '      FROM TRACTAMENTS T'
      
        '      JOIN CODICAMPS X ON T.C_ESTATFAC = X.C_CODI AND X.TIPUSCOD' +
        'I = "ESTATFACTU" AND X.R_CODI <> 9'
      '      WHERE T.C_PROCES = :PROCES'
      '      INTO :DATA_INIPROCES;'
      ''
      '      DATA_FIPROCES = NULL;'
      '      IF (FI_PROCES='#39'S'#39') THEN DATA_FIPROCES = :DATA_ALTA;'
      '      ELSE BEGIN'
      '           SELECT MAX(T.DATA_ALTA)'
      '           FROM TRACTAMENTS T'
      
        '           JOIN CODICAMPS X ON T.C_ESTATFAC = X.C_CODI AND X.TIP' +
        'USCODI = "ESTATFACTU" AND X.R_CODI <> 9'
      
        '           JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DR' +
        'ET  = '#39'X1'#39
      '           WHERE T.C_PROCES = :PROCES AND T.FI_PROCES = '#39'S'#39
      '           INTO :DATA_FIPROCES;'
      '      END;'
      '  END;'
      '  ELSE BEGIN'
      '      DATA_INIPROCES=NULL; DATA_FIPROCES=NULL;'
      '  END;'
      ''
      '  SUSPEND;'
      'END')
    Select.Strings = (
      'Select * From [MySelf]("TODAY",2008)')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'assistenciagimnas'
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
    ModiFecha = 36720.6785230324
    Left = 152
    Top = 104
  end
  object ListActivitats_NoFerCheck: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListActivitats'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1))'
      'RETURNS (TERAPEUTA  VARCHAR(20),'
      '         HC         INTEGER,'
      
        '         PACIENT    VARCHAR(82), /* 2 Espais m'#233's per posar '#39' #'#39' ' +
        'si t'#233' freq'#252#232'ncia <> '#39'XXXXX'#39' (i.e. de Dll a Dv) */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      '         ORDRE      INTEGER,'
      '         PRESTACIO  VARCHAR(4),'
      '         HORA       INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE CODI  VARCHAR(5);'
      '  DECLARE VARIABLE DOW   INTEGER;  /* DAY OF WEEK */'
      '  DECLARE VARIABLE HI    INTEGER;'
      '  DECLARE VARIABLE HF    INTEGER;'
      '  DECLARE VARIABLE RCODI VARCHAR(10);'
      '  DECLARE VARIABLE FREQ  VARCHAR(30);'
      '  DECLARE VARIABLE ACT2  VARCHAR(16);'
      '  DECLARE VARIABLE ACTF  VARCHAR(16);'
      'BEGIN'
      '    SELECT F_DAYOFWEEK("TODAY") FROM CONFIG WHERE 1=1 INTO :DOW;'
      '    IF      (DOW=1) THEN DOW=7;      /* DIUMENGE */'
      '                    ELSE DOW=DOW-1;'
      ''
      
        '    /* 8.11.2012: patri diu que nom'#233's mostrem fins a hora 17h, i' +
        '.e. HF=19. Per tant, canvio HF=26 per HF=19 */'
      
        '    IF      (OPCIO='#39'M'#39') THEN BEGIN HI=1;  HF=14; END;  /* Si vol' +
        'em llistat de MAT'#205'  nom'#233's mostrem fins hora 14 (i.e. 14:30) */'
      
        '    ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HI=15; HF=19; END;  /* Si vol' +
        'em llistat de TARDA nom'#233's mostrem a partir de l'#39'hora 15 (i.e. 15' +
        'h) */'
      
        '                        ELSE BEGIN HI=1;  HF=19; END;  /* Altram' +
        'ent, mostrem totes les hores */'
      ''
      '    IF (C_ACTIVITAT = '#39#39') THEN'
      '    BEGIN'
      '        ACT_FICT=NULL;'
      
        '        FOR SELECT DISTINCT T.C_FISIOTERAPEUTA, T.C_FREQUENCIA, ' +
        'M.METGE, A.C_ACTIVITAT, D.ORDRE, A.C_HISTORIA,'
      
        '                            F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.A' +
        'PELLIDO2,/*F.NOMCOMPLET,*/ T.C_PRESTACIO, A.HORA'
      '        FROM AGENDAPACIENT A'
      
        '        JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AN' +
        'D (T.DATA_INGRES<="TODAY") AND (T.DATA_ALTA IS NULL OR T.DATA_AL' +
        'TA>="TODAY")'
      '        JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI'
      
        '        JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D.TIP' +
        'USCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'F'#39' /*AND D.C_CODI NOT LIKE '#39'%' +
        '*%'#39'*/'
      '        LEFT JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '        WHERE (A.DATAI<="TODAY") AND (A.DATAF IS NULL OR A.DATAF' +
        '>"TODAY") AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '        ORDER BY T.C_FISIOTERAPEUTA, D.ORDRE /*A.C_ACTIVITAT*/, ' +
        'T.C_PRESTACIO DESC,'
      
        '                 F.NOMBRE, F.APELLIDO1, F.APELLIDO2, /*F.NOMCOMP' +
        'LET,*/ A.DATAI, A.HORA'
      
        '        INTO :CODI, :FREQ, :TERAPEUTA, :ACTIVITAT, :ORDRE, :HC, ' +
        ':PACIENT, :PRESTACIO, :HORA'
      '        DO BEGIN'
      
        '            IF (F_RIGHT(ACTIVITAT,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F' +
        '_LEFT(ACTIVITAT,F_STRINGLENGTH(ACTIVITAT)-1);'
      
        '                                                     ACT_FICT=AC' +
        'TIVITAT;'
      '                                          END;'
      '                                          ELSE ACT_FICT=NULL;'
      ''
      '            IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '            SUSPEND;'
      '        END;'
      ''
      
        '        FOR SELECT DISTINCT T.C_TERAPEUTA, T.C_FREQUENCIA, M.MET' +
        'GE, A.C_ACTIVITAT, D.ORDRE, A.C_HISTORIA,'
      
        '                            F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.A' +
        'PELLIDO2,/*F.NOMCOMPLET,*/ T.C_PRESTACIO, A.HORA'
      '        FROM AGENDAPACIENT A'
      
        '        JOIN TRACTAMENTS T   ON A.C_TRACTAMENT=T.C_TRACTAMENT AN' +
        'D (T.DATA_INGRES<="TODAY") AND (T.DATA_ALTA IS NULL OR T.DATA_AL' +
        'TA>="TODAY")'
      '        JOIN METGES M        ON T.C_TERAPEUTA=M.CODI'
      
        '        JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D.TIP' +
        'USCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'T'#39' /*AND D.C_CODI NOT LIKE '#39'%' +
        '*%'#39'*/'
      '        LEFT JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '        WHERE (A.DATAI<="TODAY") AND (A.DATAF IS NULL OR A.DATAF' +
        '>"TODAY") AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '        ORDER BY T.C_TERAPEUTA, D.ORDRE /*A.C_ACTIVITAT*/, T.C_P' +
        'RESTACIO DESC,'
      
        '                 F.NOMBRE, F.APELLIDO1, F.APELLIDO2, /*F.NOMCOMP' +
        'LET,*/ A.DATAI, A.HORA'
      
        '        INTO :CODI, :FREQ, :TERAPEUTA, :ACTIVITAT, :ORDRE, :HC, ' +
        ':PACIENT, :PRESTACIO, :HORA'
      '        DO BEGIN'
      
        '            IF (F_RIGHT(ACTIVITAT,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F' +
        '_LEFT(ACTIVITAT,F_STRINGLENGTH(ACTIVITAT)-1);'
      
        '                                                     ACT_FICT=AC' +
        'TIVITAT;'
      '                                          END;'
      '                                          ELSE ACT_FICT=NULL;'
      ''
      '            IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '            SUSPEND;'
      '        END;'
      '    END;'
      '    ELSE BEGIN'
      '        ACTIVITAT=C_ACTIVITAT; ORDRE=1;'
      '        ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '        SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39'ACTIVI' +
        'TATFI'#39' AND C_CODI=:C_ACTIVITAT INTO :RCODI;'
      '        '
      '        IF (RCODI='#39'F'#39') THEN'
      '        BEGIN'
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUT' +
        'A, T.C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2,/*F.NOMCOMPLET,*/ T.C_PRESTACIO, A.HORA'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<="TODAY") AND (T.DATA_ALTA IS NULL OR T.DAT' +
        'A_ALTA>="TODAY")'
      '            JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI'
      '            LEFT JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<="TODAY") AND (A.DATAF IS NULL OR A.D' +
        'ATAF>"TODAY") AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND ' +
        ':HF)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.N' +
        'OMBRE, F.APELLIDO1, F.APELLIDO2, /*F.NOMCOMPLET,*/ A.DATAI, A.HO' +
        'RA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '        END;'
      '        ELSE IF (RCODI='#39'T'#39') THEN'
      '        BEGIN'
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.' +
        'C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2,/*F.NOMCOMPLET,*/ T.C_PRESTACIO, A.HORA'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<="TODAY") AND (T.DATA_ALTA IS NULL OR T.DAT' +
        'A_ALTA>="TODAY")'
      '            JOIN METGES        M ON T.C_TERAPEUTA=M.CODI'
      '            LEFT JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<="TODAY") AND (A.DATAF IS NULL OR A.D' +
        'ATAF>"TODAY") AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND ' +
        ':HF)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, /*F.NOMCOMPLET,*/ A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '        END;'
      '        ELSE BEGIN'
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUT' +
        'A, T.C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2,/*F.NOMCOMPLET,*/ T.C_PRESTACIO, A.HORA'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<="TODAY") AND (T.DATA_ALTA IS NULL OR T.DAT' +
        'A_ALTA>="TODAY")'
      '            JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI'
      '            LEFT JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<="TODAY") AND (A.DATAF IS NULL OR A.D' +
        'ATAF>"TODAY") AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND ' +
        ':HF)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.N' +
        'OMBRE, F.APELLIDO1, F.APELLIDO2, /*F.NOMCOMPLET,*/ A.DATAI, A.HO' +
        'RA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      ''
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.' +
        'C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2,/*F.NOMCOMPLET,*/ T.C_PRESTACIO, A.HORA'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<="TODAY") AND (T.DATA_ALTA IS NULL OR T.DAT' +
        'A_ALTA>="TODAY")'
      '            JOIN METGES        M ON T.C_TERAPEUTA=M.CODI'
      '            LEFT JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<="TODAY") AND (A.DATAF IS NULL OR A.D' +
        'ATAF>"TODAY") AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND ' +
        ':HF)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, /*F.NOMCOMPLET,*/ A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '        END;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 56
    Top = 262
  end
  object InitTractament: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'InitTractament'
    ForceNombreDB = False
    Body.Strings = (
      
        '(DIA DATE, OPCIO INTEGER, HC INTEGER)   /*OPCIO: =1-UPDATE, <>1-' +
        'SELECT*/'
      'RETURNS (C_HISTORIA   INTEGER,'
      '         DATAI        DATE,'
      '         DATAF        DATE,'
      '/*         ID           INTEGER,*/'
      '         C_TRACT_ANT  INTEGER,'
      '         C_TRACTAMENT INTEGER,'
      '         DATA_INGRES  DATE,'
      '         DATA_ALTA    DATE'
      '         )'
      'AS'
      'BEGIN'
      '  IF (HC IS NULL) THEN'
      '  BEGIN'
      
        '    FOR SELECT DISTINCT /*ID,*/ C_HISTORIA, DATAI, DATAF, C_TRAC' +
        'TAMENT FROM AGENDAPACIENT'
      
        '    WHERE DATAI<=:DIA AND (DATAF IS NULL OR DATAF>=:DIA) /*AND C' +
        '_TRACTAMENT IS NULL*/'
      '    ORDER BY C_HISTORIA'
      '    INTO /*:ID,*/ :C_HISTORIA, :DATAI, :DATAF, :C_TRACT_ANT'
      '    DO BEGIN'
      '        C_TRACTAMENT=NULL; DATA_INGRES=NULL; DATA_ALTA=NULL;'
      
        '        SELECT C_TRACTAMENT, DATA_INGRES, DATA_ALTA FROM TRACTAM' +
        'ENTS'
      '        WHERE C_HISTORIA=:C_HISTORIA'
      
        '        AND DATA_INGRES<=:DIA AND (DATA_ALTA IS NULL OR DATA_ALT' +
        'A>=:DIA)'
      '        AND C_PRESTACIO IN (1004,2014,2023,2008)'
      '        ORDER BY DATA_INGRES DESC'
      '        ROWS 1'
      '        INTO :C_TRACTAMENT, :DATA_INGRES, :DATA_ALTA;'
      '        '
      '        IF (C_TRACTAMENT IS NOT NULL) THEN'
      '        BEGIN'
      '            IF (OPCIO=1) THEN'
      '            BEGIN'
      
        '                UPDATE AGENDAPACIENT SET C_TRACTAMENT=:C_TRACTAM' +
        'ENT WHERE /*ID=:ID;*/'
      
        '                C_HISTORIA=:C_HISTORIA AND DATAI<=:DIA AND (DATA' +
        'F IS NULL OR DATAF>=:DIA);'
      '            END;'
      '            '
      '            SUSPEND;'
      '        END;'
      '    END;'
      '  END;'
      '  ELSE BEGIN'
      '      C_HISTORIA=HC;'
      '      FOR SELECT DISTINCT DATAI, DATAF FROM AGENDAPACIENT'
      '      WHERE DATAI<=:DIA  AND (DATAF IS NULL OR DATAF>=:DIA)'
      '      AND C_HISTORIA=:HC /*AND C_TRACTAMENT IS NULL*/'
      '      INTO :DATAI, :DATAF'
      '      DO BEGIN'
      '        C_TRACTAMENT=NULL; DATA_INGRES=NULL; DATA_ALTA=NULL;'
      
        '        SELECT C_TRACTAMENT, DATA_INGRES, DATA_ALTA FROM TRACTAM' +
        'ENTS'
      '        WHERE C_HISTORIA=:C_HISTORIA'
      
        '        AND DATA_INGRES<=:DIA AND (DATA_ALTA IS NULL OR DATA_ALT' +
        'A>=:DIA)'
      '        ORDER BY DATA_INGRES DESC'
      '        ROWS 1'
      '        INTO :C_TRACTAMENT, :DATA_INGRES, :DATA_ALTA;'
      ''
      '        IF (C_TRACTAMENT IS NOT NULL) THEN'
      '        BEGIN'
      '            IF (OPCIO=1) THEN'
      '            BEGIN'
      
        '                UPDATE AGENDAPACIENT SET C_TRACTAMENT=:C_TRACTAM' +
        'ENT WHERE'
      
        '                C_HISTORIA=:C_HISTORIA AND DATAI<=:DIA AND (DATA' +
        'F IS NULL OR DATAF>=:DIA);'
      '            END;'
      '            SUSPEND;'
      '        END;'
      '      END;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 294
    Top = 104
  end
  object ListGrid_NoFerCheck: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListGrid'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1))'
      'RETURNS (HORA      VARCHAR(6),'
      '         ACTIVITAT VARCHAR(15),'
      '         ACT_FICT  VARCHAR(16),'
      '         TERAPEUTA VARCHAR(20),'
      '         TPRINT    VARCHAR(20),  /* terapeuta a pintar */'
      '         HC        VARCHAR(92),'
      '         PRESTACIO VARCHAR(4),'
      '         ORDRE     INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE H          INTEGER;'
      '  DECLARE VARIABLE H_ANT      INTEGER;'
      '  DECLARE VARIABLE ACTI       VARCHAR(15);'
      '  DECLARE VARIABLE ACTI_ANT   VARCHAR(15);'
      '  DECLARE VARIABLE ACTF       VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ANT   VARCHAR(15);'
      '  DECLARE VARIABLE TERA       VARCHAR(20);'
      '  DECLARE VARIABLE TERA_ANT   VARCHAR(15);'
      '  DECLARE VARIABLE TERA_BUIT  VARCHAR(20);'
      '  DECLARE VARIABLE PACI       VARCHAR(92);'
      '  DECLARE VARIABLE PRES       VARCHAR(4);'
      '  DECLARE VARIABLE HFETA      INTEGER;'
      '  DECLARE VARIABLE HINI       INTEGER;'
      '  DECLARE VARIABLE HFIN       INTEGER;'
      '  DECLARE VARIABLE ORDR       INTEGER;'
      '  DECLARE VARIABLE PACIENT    VARCHAR(82);'
      '  DECLARE VARIABLE ASSIGNATS  INTEGER;     /*  PARTE 57751 */'
      '  DECLARE VARIABLE MAXPAC     INTEGER;     /*  PARTE 57751 */'
      '  DECLARE VARIABLE I          INTEGER;     /*  PARTE 57751 */'
      '  DECLARE VARIABLE J          INTEGER;     /*  PARTE 57751 */'
      '  DECLARE VARIABLE CACTIVITAT VARCHAR(15); /*  PARTE 57751 */'
      '  DECLARE VARIABLE HORA_ANT   VARCHAR(6);  /*  PARTE 57751 */'
      '  DECLARE VARIABLE CODI       VARCHAR(5);'
      '  DECLARE VARIABLE TERA_BUIT_ANT VARCHAR(20);'
      '  DECLARE VARIABLE TEPAC      INTEGER;'
      'BEGIN'
      
        '  /* 8.11.2012: patri diu que nom'#233's mostrem fins a hora 17h, i.e' +
        '. HF=19. Per tant, canvio HF=26 per HF=19 */'
      '  IF      (OPCIO='#39'M'#39') THEN BEGIN HINI=1;  HFIN=14; END;'
      '  ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HINI=15; HFIN=19; END;'
      '                      ELSE BEGIN HINI=1;  HFIN=19; END;'
      '  /* Primer actualitzem els TEPACIENTS de la taula HORARIGYM */'
      '  EXECUTE PROCEDURE P_HORARIGYM_TEPACIENTS(:C_ACTIVITAT,:OPCIO);'
      '  '
      
        '  FOR SELECT DISTINCT ACTIVITAT FROM P_TRACTAMENTS_LISTACTIVITAT' +
        'S(:C_ACTIVITAT,:OPCIO)'
      '  WHERE ACTIVITAT NOT LIKE '#39'%*%'#39
      '  ORDER BY ACTIVITAT'
      '  INTO :CACTIVITAT'
      '  DO BEGIN'
      '    HFETA=HINI;'
      
        '    ORDR=1; H_ANT=0; ACTI_ANT='#39#39'; ACTF_ANT='#39#39'; TERA_ANT='#39#39'; TPRI' +
        'NT='#39#39'; ASSIGNATS=1; J=0; HORA_ANT='#39#39';'
      '    '
      
        '/*    FOR SELECT ACTIVITAT,ACT_FICT,TERAPEUTA, CAST(HC AS VARCHA' +
        'R(8))||'#39' '#39'||PACIENT, PACIENT, PRESTACIO, MIN(HORA)'
      '    FROM P_TRACTAMENTS_LISTACTIVITATS(:CACTIVITAT,:OPCIO)'
      '    WHERE PRESTACIO IN('#39'1004'#39','#39'2014'#39','#39'2023'#39')'
      '    GROUP BY ACTIVITAT,ACT_FICT,TERAPEUTA,HC,PACIENT,PRESTACIO'
      '    ORDER BY /-6,1,2,5 DESC,4-/ 7,1,3,6 DESC,5 */'
      
        '    FOR SELECT ACTIVITAT,ACT_FICT,TERAPEUTA,PACI,PACIENT,PRESTA,' +
        'HORA'
      '    FROM P_TRACTAMENTS_LISTGRIDNEW(:CACTIVITAT,:OPCIO)'
      '    ORDER BY 7,1,3,6 DESC,5'
      '    INTO :ACTI, :ACTF, :TERA, :PACI, :PACIENT, :PRES, :H'
      '    DO BEGIN'
      '      WHILE (HFETA<H) DO'
      '      BEGIN'
      
        '          IF      (HFETA=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (HFETA=' +
        '2)  THEN HORA='#39'H08_30'#39'; ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      
        '          ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (HFETA=' +
        '5)  THEN HORA='#39'H10_00'#39'; ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      
        '          ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (HFETA=' +
        '8)  THEN HORA='#39'H11_30'#39'; ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      
        '          ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39'; ELSE IF (HFETA=' +
        '11) THEN HORA='#39'H13_00'#39'; ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      
        '          ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39'; ELSE IF (HFETA=' +
        '14) THEN HORA='#39'H14_30'#39'; ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      
        '          ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39'; ELSE IF (HFETA=' +
        '17) THEN HORA='#39'H16_00'#39'; ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      
        '          ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39'; ELSE IF (HFETA=' +
        '20) THEN HORA='#39'H17_30'#39'; ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      
        '          ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39'; ELSE IF (HFETA=' +
        '23) THEN HORA='#39'H19_00'#39'; ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      
        '          ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39'; ELSE IF (HFETA=' +
        '26) THEN HORA='#39'H20_30'#39';'
      ''
      '          IF (HORA<>HORA_ANT) THEN ORDR=0;'
      '          TERA_BUIT='#39#39'; TPRINT='#39#39'; TERA_BUIT_ANT='#39#39';'
      ''
      '          MAXPAC=NULL;'
      '          SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA C'
      
        '          WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT' +
        ' NULL AND C.R_CODI IN('#39'F'#39','#39'T'#39')'
      '          AND C.C_CODI=:ACTI_ANT'
      '          INTO :MAXPAC;'
      '          IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '          IF ((MAXPAC=1) OR (F_MODULO(H_ANT,2)=1)) THEN BEGIN /*' +
        ' 10.1.2013 - I: Nom'#233's mirar buits si l'#39'hora '#233's en punt o t'#233' 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      
        '            /* Abans de pintar el proper terapeuta, caldria pint' +
        'ar els BUITS de l'#39'anterior */'
      
        '            /* cal mirar si en HORARIGYM el terapeuta TERA_ANT t' +
        #233' activitat ACT_ANT a l'#39'hora H_ANT  */'
      '            J=0;'
      
        '            SELECT H.C_METGE,H.TEPACIENTS,COUNT(*) FROM HORARIGY' +
        'M H JOIN METGES M ON H.C_METGE=M.CODI'
      
        '            WHERE M.METGE=:TERA_ANT AND H.C_ACTIVITAT=:ACTI_ANT ' +
        'AND H.HORA=:H_ANT AND (H.TEPACIENTS < :MAXPAC)'
      '            AND H.DATAINICI<="TODAY" AND H.DATAFI IS NULL'
      '            GROUP BY H.C_METGE,H.TEPACIENTS'
      '            INTO :CODI,:TEPAC,:J;'
      '            IF (J IS NULL) THEN J=0;'
      ''
      '            IF (J>0) THEN'
      '            BEGIN'
      '              /*IF (TERA=TERA_ANT) THEN TPRINT=TERA;  10.1.2013'
      
        '                                 ELSE */ IF (ORDR=0) THEN TPRINT' +
        '=TERA_ANT;'
      
        '                                                     ELSE TPRINT' +
        '='#39#39';'
      ''
      
        '              I=TEPAC/*ASSIGNATS*/; HC='#39' '#39'/*'#39'BUIT'#39'*/; PRESTACIO=' +
        'NULL; ACTIVITAT=ACTI_ANT; ACT_FICT=ACTF_ANT; TERAPEUTA=TERA_ANT;'
      '              IF (I=MAXPAC) THEN J=0;'
      '              WHILE (I<MAXPAC) DO'
      '              BEGIN'
      '                  ORDR=ORDR+1;'
      '                  ORDRE=ORDR; SUSPEND;'
      '                  I=I+1; HORA_ANT=HORA;'
      
        '                  /* actualitzo el TEPACIENTS per a que no es re' +
        'peteixi el BUIT al canvi d'#39'hora */'
      '                  UPDATE HORARIGYM SET TEPACIENTS=TEPACIENTS+1'
      
        '                  WHERE C_METGE=:CODI AND C_ACTIVITAT=:ACTI_ANT ' +
        'AND HORA=:H_ANT'
      '                  AND   DATAINICI<="TODAY" AND DATAFI IS NULL;'
      '              END;'
      '            END;'
      
        '          END; /* 10.1.2013 - F: Nom'#233's mirar buits si l'#39'hora '#233's ' +
        'en punt o t'#233' 1 activitat cada mitja hora */'
      '          '
      
        '          /* Quan hi ha un canvi d'#39'hora cal afegir els terapeute' +
        's que tenen BUITS, els que no tenen cap'
      
        '          hora assignada d'#39'aquesta activitat per'#242' que s'#237' tenen a' +
        ' l'#39'HORARIGYM hora enregistrada */'
      '          IF (ORDR=0) THEN ORDR=1;'
      '                      ELSE ORDR=ORDR+1;'
      ''
      '          MAXPAC=NULL;'
      '          SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA C'
      
        '          WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT' +
        ' NULL AND C.R_CODI IN('#39'F'#39','#39'T'#39')'
      '          AND C.C_CODI=:ACTI'
      '          INTO :MAXPAC;'
      '          IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '          IF ((MAXPAC=1) OR (F_MODULO(HFETA,2)=1)) THEN BEGIN /*' +
        ' 10.1.2013 - I: Nom'#233's mirar buits si l'#39'hora '#233's en punt o t'#233' 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      
        '            FOR SELECT DISTINCT H.C_METGE, M.METGE, H.TEPACIENTS' +
        ' FROM HORARIGYM H'
      '            JOIN METGES M ON H.C_METGE=M.CODI'
      
        '            WHERE H.C_ACTIVITAT=:ACTI AND H.HORA=:HFETA AND (H.T' +
        'EPACIENTS < :MAXPAC)'
      '            AND H.DATAINICI<="TODAY" AND H.DATAFI IS NULL'
      '            ORDER BY M.METGE'
      '            INTO :CODI, :TERA_BUIT, :I'
      '            DO BEGIN'
      
        '              ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPEUTA=TERA_BUIT' +
        '; HC='#39' '#39'/*'#39'BUIT'#39'*/; PRESTACIO=NULL;'
      '              WHILE (I<MAXPAC) DO'
      '              BEGIN'
      
        '                  IF ((TERA_BUIT<>TPRINT) AND (TERA_BUIT<>TERA_B' +
        'UIT_ANT)) THEN TPRINT=TERA_BUIT;'
      
        '                                                                ' +
        '          ELSE TPRINT='#39#39';'
      '                  ORDRE=ORDR;'
      '                  SUSPEND;'
      ''
      
        '                  /* actualitzo el TEPACIENTS per a que no es re' +
        'peteixi el BUIT al canvi d'#39'hora */'
      '                  UPDATE HORARIGYM SET TEPACIENTS=TEPACIENTS+1'
      
        '                  WHERE C_METGE=:CODI AND C_ACTIVITAT=:ACTI AND ' +
        'HORA=:HFETA'
      '                  AND   DATAINICI<="TODAY" AND DATAFI IS NULL;'
      '                  '
      
        '                  I=I+1; ORDR=ORDR+1; HORA_ANT=HORA; TERA_BUIT_A' +
        'NT=TERA_BUIT;'
      '              END;'
      '            END;'
      
        '          END; /* 10.1.2013 - F: Nom'#233's mirar buits si l'#39'hora '#233's ' +
        'en punt o t'#233' 1 activitat cada mitja hora */'
      ''
      
        '          ACTIVITAT=NULL; ACT_FICT=NULL; TERAPEUTA=NULL; TPRINT=' +
        'NULL; HC=NULL; PRESTACIO=NULL; ORDRE=NULL; SUSPEND; HFETA=HFETA+' +
        '1; HORA_ANT=HORA;'
      '      END;'
      '      IF (HFETA=H) THEN'
      '      BEGIN'
      
        '          IF      (H=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (H=2)  THEN' +
        ' HORA='#39'H08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      
        '          ELSE IF (H=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (H=5)  THEN' +
        ' HORA='#39'H10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      
        '          ELSE IF (H=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (H=8)  THEN' +
        ' HORA='#39'H11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      
        '          ELSE IF (H=10) THEN HORA='#39'H12_30'#39'; ELSE IF (H=11) THEN' +
        ' HORA='#39'H13_00'#39'; ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      
        '          ELSE IF (H=13) THEN HORA='#39'H14_00'#39'; ELSE IF (H=14) THEN' +
        ' HORA='#39'H14_30'#39'; ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      
        '          ELSE IF (H=16) THEN HORA='#39'H15_30'#39'; ELSE IF (H=17) THEN' +
        ' HORA='#39'H16_00'#39'; ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      
        '          ELSE IF (H=19) THEN HORA='#39'H17_00'#39'; ELSE IF (H=20) THEN' +
        ' HORA='#39'H17_30'#39'; ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      
        '          ELSE IF (H=22) THEN HORA='#39'H18_30'#39'; ELSE IF (H=23) THEN' +
        ' HORA='#39'H19_00'#39'; ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      
        '          ELSE IF (H=25) THEN HORA='#39'H20_00'#39'; ELSE IF (H=26) THEN' +
        ' HORA='#39'H20_30'#39';'
      ''
      
        '          IF ((H=H_ANT) AND (ACTI=ACTI_ANT)) THEN ORDR=ORDR+1; E' +
        'LSE ORDR=1;'
      ''
      '          TERA_BUIT='#39#39'; TERA_BUIT_ANT='#39#39';'
      
        '          IF ((H=H_ANT) AND (ACTI=ACTI_ANT) AND (TERA=TERA_ANT))' +
        ' THEN BEGIN'
      '              TPRINT='#39#39'; ASSIGNATS=ASSIGNATS+1;'
      '          END;'
      '          ELSE BEGIN'
      '            MAXPAC=NULL;'
      
        '            SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA' +
        ' C'
      
        '            WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS N' +
        'OT NULL AND C.R_CODI IN('#39'F'#39','#39'T'#39')'
      '            AND C.C_CODI=:ACTI_ANT'
      '            INTO :MAXPAC;'
      '            IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '            IF ((MAXPAC=1) OR (F_MODULO(H_ANT,2)=1)) THEN BEGIN ' +
        '/* 10.1.2013 - I: Nom'#233's mirar buits si l'#39'hora '#233's en punt o t'#233' 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      '              J=0;'
      
        '              /* Abans de pintar el proper terapeuta, caldria pi' +
        'ntar els BUITS de l'#39'anterior */'
      
        '              IF ((H=H_ANT) AND (ACTI=ACTI_ANT) AND (TERA<>TERA_' +
        'ANT)) THEN'
      '              BEGIN'
      
        '                   /* cal mirar si en HORARIGYM el terapeuta TER' +
        'A_ANT t'#233' activitat ACT_ANT a l'#39'hora H_ANT */'
      
        '                   SELECT H.C_METGE,H.TEPACIENTS,COUNT(*) FROM H' +
        'ORARIGYM H JOIN METGES M ON H.C_METGE=M.CODI'
      
        '                   WHERE M.METGE=:TERA_ANT AND H.C_ACTIVITAT=:AC' +
        'TI_ANT AND H.HORA=:H_ANT AND(H.TEPACIENTS < :MAXPAC)'
      '                   AND H.DATAINICI<="TODAY" AND H.DATAFI IS NULL'
      '                   GROUP BY H.C_METGE,H.TEPACIENTS'
      '                   INTO :CODI, :TEPAC, :J;'
      '                   IF (J IS NULL) THEN J=0;'
      ''
      '                   IF (J>0) THEN'
      '                   BEGIN'
      '                       IF (TERA=TERA_ANT) THEN BEGIN'
      
        '                           ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPE' +
        'UTA=TERA; TPRINT=TERA;'
      '                       END;'
      '                       ELSE TPRINT='#39#39';'
      '                       '
      
        '                       I=TEPAC/*ASSIGNATS*/; HC='#39' '#39'/*'#39'BUIT'#39'*/; P' +
        'RESTACIO=NULL;'
      '                       IF (I=MAXPAC) THEN J=0;'
      '                       WHILE (I<MAXPAC) DO'
      '                       BEGIN'
      
        '                           ORDRE=ORDR; SUSPEND; I=I+1; ORDR=ORDR' +
        '+1; HORA_ANT=HORA;'
      
        '                           /* actualitzo el TEPACIENTS per a que' +
        ' no es repeteixi el BUIT al canvi d'#39'hora */'
      
        '                           UPDATE HORARIGYM SET TEPACIENTS=TEPAC' +
        'IENTS+1'
      
        '                           WHERE C_METGE=:CODI AND C_ACTIVITAT=:' +
        'ACTI_ANT AND HORA=:H_ANT'
      
        '                           AND   DATAINICI<="TODAY" AND DATAFI I' +
        'S NULL;'
      '                       END;'
      '                   END;'
      '              END;'
      
        '            END; /* 10.1.2013 - I: Nom'#233's mirar buits si l'#39'hora '#233 +
        's en punt o t'#233' 1 activitat cada mitja hora */'
      
        '            IF ((TERA=TERA_ANT) AND (J<>0)) THEN TPRINT='#39#39'; ELSE' +
        ' TPRINT=TERA;'
      '            ASSIGNATS=1;'
      '          END;'
      
        '          ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPEUTA=TERA; HC=PACI' +
        '; PRESTACIO=PRES; ORDRE=ORDR; SUSPEND; HORA_ANT=HORA;'
      '      END;'
      '      H_ANT=H; ACTI_ANT=ACTI; ACTF_ANT=ACTF; TERA_ANT=TERA;'
      '    END;'
      ''
      '    MAXPAC=NULL;'
      '    SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA C'
      
        '    WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NULL ' +
        'AND C.R_CODI IN('#39'F'#39','#39'T'#39')'
      '    AND C.C_CODI=:ACTI'
      '    INTO :MAXPAC;'
      '    IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '    IF ((MAXPAC=1) OR (F_MODULO(H,2)=1)) THEN BEGIN /* 10.1.2013' +
        ' - I: Nom'#233's mirar buits si l'#39'hora '#233's en punt o t'#233' 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      
        '      /* Cal mirar si el terapeuta de l'#39#250'ltim registre t'#233' BUIT'#39's' +
        ' */'
      '      J=0; ACTF=NULL; ACTF_ANT=NULL; ACT_FICT=NULL;'
      
        '      SELECT H.C_METGE,H.TEPACIENTS,COUNT(*) FROM HORARIGYM H JO' +
        'IN METGES M ON H.C_METGE=M.CODI'
      '      WHERE M.METGE=:TERA AND H.C_ACTIVITAT=:ACTI AND H.HORA=:H'
      '      AND H.DATAINICI<="TODAY" AND H.DATAFI IS NULL'
      '      GROUP BY H.C_METGE,H.TEPACIENTS'
      '      INTO :CODI, :TEPAC, :J;'
      '      IF (J IS NULL) THEN J=0;'
      ''
      '      IF (J>0) THEN'
      '      BEGIN'
      
        '        I=TEPAC/*ASSIGNATS*/; HC='#39' '#39'/*'#39'BUIT'#39'*/; PRESTACIO=NULL; ' +
        'TPRINT='#39#39';'
      '        IF (I=MAXPAC) THEN J=0;'
      '        WHILE (I<MAXPAC) DO'
      '        BEGIN'
      '            ORDR=ORDR+1;'
      '            ORDRE=ORDR; SUSPEND;'
      '            '
      
        '            /* actualitzo el TEPACIENTS per a que no es repeteix' +
        'i el BUIT al canvi d'#39'hora */'
      '            UPDATE HORARIGYM SET TEPACIENTS=TEPACIENTS+1'
      
        '            WHERE C_METGE=:CODI AND C_ACTIVITAT=:ACTI AND HORA=:' +
        'H'
      '            AND   DATAINICI<="TODAY" AND DATAFI IS NULL;'
      '            '
      '            I=I+1; HORA_ANT=HORA;'
      '        END;'
      '      END;'
      
        '    END; /* 10.1.2013 - I: Nom'#233's mirar buits si l'#39'hora '#233's en pun' +
        't o t'#233' 1 activitat cada mitja hora */'
      '          '
      '    WHILE (HFETA<=HFIN) DO'
      '    BEGIN'
      
        '      IF      (HFETA=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (HFETA=2)  ' +
        'THEN HORA='#39'H08_30'#39'; ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      
        '      ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (HFETA=5)  ' +
        'THEN HORA='#39'H10_00'#39'; ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      
        '      ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (HFETA=8)  ' +
        'THEN HORA='#39'H11_30'#39'; ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      
        '      ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39'; ELSE IF (HFETA=11) ' +
        'THEN HORA='#39'H13_00'#39'; ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      
        '      ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39'; ELSE IF (HFETA=14) ' +
        'THEN HORA='#39'H14_30'#39'; ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      
        '      ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39'; ELSE IF (HFETA=17) ' +
        'THEN HORA='#39'H16_00'#39'; ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      
        '      ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39'; ELSE IF (HFETA=20) ' +
        'THEN HORA='#39'H17_30'#39'; ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      
        '      ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39'; ELSE IF (HFETA=23) ' +
        'THEN HORA='#39'H19_00'#39'; ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      
        '      ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39'; ELSE IF (HFETA=26) ' +
        'THEN HORA='#39'H20_30'#39';'
      '      '
      '      /* ORDR=ORDR+1; */ TERA_BUIT='#39#39'; TERA_BUIT_ANT='#39#39';'
      '      IF (HORA=HORA_ANT) THEN ORDR=ORDR+1; ELSE ORDR=1;'
      ''
      '      MAXPAC=NULL;'
      '      SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA C'
      
        '      WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NUL' +
        'L AND C.R_CODI IN('#39'F'#39','#39'T'#39')'
      '      AND C.C_CODI=:ACTI'
      '      INTO :MAXPAC;'
      '      IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '      IF ((MAXPAC=1) OR (F_MODULO(HFETA,2)=1)) THEN BEGIN /* 10.' +
        '1.2013 - I: Nom'#233's mirar buits si l'#39'hora '#233's en punt o t'#233' 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      
        '        /* Quan hi ha un canvi d'#39'hora cal afegir els terapeutes ' +
        'que tenen BUITS , els que no tenen cap'
      
        '        hora assignada d'#39'aquesta activitat per'#242' que s'#237' tenen a l' +
        #39'HORARIGYM hora enregistrada */'
      '        TPRINT='#39#39';'
      
        '        FOR SELECT DISTINCT H.C_METGE, M.METGE, H.TEPACIENTS FRO' +
        'M HORARIGYM H'
      '        JOIN METGES M ON H.C_METGE=M.CODI'
      
        '        WHERE H.C_ACTIVITAT=:ACTI AND H.HORA=:HFETA AND (H.TEPAC' +
        'IENTS < :MAXPAC)'
      '        AND H.DATAINICI<="TODAY" AND H.DATAFI IS NULL'
      '        ORDER BY M.METGE'
      '        INTO :CODI, :TERA_BUIT, :I'
      '        DO BEGIN'
      
        '          ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPEUTA=TERA_BUIT; HC' +
        '='#39' '#39'/*'#39'BUIT'#39'*/; PRESTACIO=NULL;'
      '          WHILE (I<MAXPAC) DO'
      '          BEGIN'
      
        '              IF ((TERA_BUIT<>TPRINT) AND (TERA_BUIT<>TERA_BUIT_' +
        'ANT)) THEN TPRINT=TERA_BUIT;'
      
        '                                                                ' +
        '      ELSE TPRINT='#39#39';'
      '              ORDRE=ORDR;'
      '              SUSPEND;'
      ''
      
        '              /* actualitzo el TEPACIENTS per a que no es repete' +
        'ixi el BUIT al canvi d'#39'hora */'
      '              UPDATE HORARIGYM SET TEPACIENTS=TEPACIENTS+1'
      
        '              WHERE C_METGE=:CODI AND C_ACTIVITAT=:ACTI AND HORA' +
        '=:HFETA'
      '              AND   DATAINICI<="TODAY" AND DATAFI IS NULL;'
      '              '
      
        '              I=I+1; ORDR=ORDR+1; HORA_ANT=HORA; TERA_BUIT_ANT=T' +
        'ERA_BUIT;'
      '          END;'
      '        END;'
      
        '      END; /* 10.1.2013 - I: Nom'#233's mirar buits si l'#39'hora '#233's en p' +
        'unt o t'#233' 1 activitat cada mitja hora */'
      '          '
      
        '      ACTIVITAT=NULL; ACT_FICT=NULL; TERAPEUTA=NULL; TPRINT=NULL' +
        '; HC=NULL; PRESTACIO=NULL; ORDRE=NULL; SUSPEND;'
      '      HFETA=HFETA+1; HORA_ANT=HORA;'
      '    END;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 55
    Top = 309
  end
  object ListGym_NoFerCheck: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListGym'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ACTIVITAT VARCHAR(15),OPCIO CHAR(1))'
      
        'RETURNS (TIPUS      INTEGER,       /* 0-Activitat; 1-Hora; 2-Ter' +
        'apeuta; 3-Pacients */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      '         HORA       VARCHAR(6),'
      '         TERAPEUTA  VARCHAR(20),'
      '         PACIENT    VARCHAR(92),'
      '         MOSTRAR    VARCHAR(100),'
      '         PRESTACIO  CHAR(4),'
      '         NUM        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACT_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACT_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TER_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TER_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      'BEGIN'
      '  ESPAIS40='#39'                                        '#39';'
      ''
      
        '  IF (C_ACTIVITAT<>'#39#39') THEN    /* Nom'#233's per activitats "sueltas"' +
        ' */'
      '  BEGIN'
      
        '      TER_ACT='#39#39'; TER_ANT='#39#39'; HOR_ACT=0; HOR_ANT=0; NUM=NULL; CO' +
        'NTA=1;'
      
        '      TIPUS=0; ACTIVITAT=:C_ACTIVITAT; HORA=NULL; TERAPEUTA=NULL' +
        '; PACIENT=NULL; PRESTACIO=NULL; SUSPEND;'
      '      '
      
        '      FOR SELECT /*TERAPEUTA,*/CAST(HC AS VARCHAR(8))||'#39' '#39'||PACI' +
        'ENT,PACIENT,PRESTACIO,ACT_FICT,MIN(HORA)'
      '      FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO)'
      '      WHERE PRESTACIO IN('#39'1004'#39','#39'2014'#39','#39'2023'#39')'
      '      GROUP BY /*TERAPEUTA,*/HC,PACIENT,PRESTACIO,ACT_FICT'
      '      ORDER BY 5,3 DESC,2'
      
        '      INTO /*:TER_ACT,*/:PAC_ACT,:PACI,:PRE_ACT,:ACT_FICT,:HOR_A' +
        'CT'
      '      DO BEGIN'
      
        '          /* per cada canvi de terapeuta i/o hora canviem tipus*' +
        '/'
      '          IF (HOR_ACT<>HOR_ANT) THEN'
      '          BEGIN'
      '              IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '              ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '              ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '              ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '              ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '              ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '              ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '              ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '              ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '              ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '              ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '              ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '              ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '              ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '              ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '              ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '              ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '              ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '              ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '              ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '              ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '              ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '              ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '              ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '              ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '              ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      
        '              TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NUL' +
        'L; MOSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; SUSPEND;'
      
        '              /*TIPUS=2; TERAPEUTA=TER_ACT; HORA=NULL; PACIENT=N' +
        'ULL; PRESTACIO=NULL; MOSTRAR=TERAPEUTA; SUSPEND;*/'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; PRESTACIO=' +
        'PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; CONTA=1; NUM=CONTA; SUSPEND;'
      '          END;'
      '          ELSE BEGIN'
      '              /*IF (TER_ACT<>TER_ANT) THEN'
      '              BEGIN'
      '                  IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '                  ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '                  ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '                  ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '                  ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '                  ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '                  ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '                  ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '                  ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '                  ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '                  ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '                  ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '                  ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '                  ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '                  ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '                  ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '                  ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '                  ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '                  ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '                  ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '                  ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '                  ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '                  ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '                  ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '                  ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '                  ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      
        '                  TIPUS=2; TERAPEUTA=TER_ACT; HORA=NULL; PACIENT' +
        '=NULL; PRESTACIO=NULL; MOSTRAR=TERAPEUTA; SUSPEND;'
      
        '                  TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; PRESTA' +
        'CIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; SUSPEND;'
      '              END;'
      '              ELSE BEGIN  */'
      
        '                  TIPUS=3; TERAPEUTA='#39#39'; HORA=NULL; PACIENT=PAC_' +
        'ACT; PRESTACIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT;'
      '                  CONTA=CONTA+1; NUM=CONTA; SUSPEND;'
      '              /*END;*/'
      '          END;'
      '          HOR_ANT=HOR_ACT; /*TER_ANT=TER_ACT;*/'
      '      END;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 54
    Top = 358
  end
  object AgendaPacient_NO_FER_CHECK: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'ID'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Dia de la setmana'
        NombreDB = 'DIA_SEMANA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'DATAI'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data final'
        NombreDB = 'DATAF'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi activitat'
        NombreDB = 'C_ACTIVITAT'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari inicial'
        NombreDB = 'C_USUARI_INI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari final'
        NombreDB = 'C_USUARI_FIN'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hora'
        NombreDB = 'HORA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge validador'
        NombreDB = 'C_METGEVALIDA'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data validaci'#243
        NombreDB = 'DATA_VALIDA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'ID'
        NombreDB = 'ID'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'C_HISTORIA'
        NombreDB = 'C_HISTORIA'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Hist'#242'ria cl'#237'nica')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DATA_FIN'
        NombreDB = 'DATA_FIN'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data final')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DATA_INI'
        NombreDB = 'DATA_INI'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data inici')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DIA_SEMANA'
        NombreDB = 'DIA_SEMANA'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Dia de la setmana')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'HORA'
        NombreDB = 'HORA'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Hora')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'AgendaPacient'
    NombreTabla = 'AgendaPacient'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 76
    Top = 206
  end
  object LaboMarxa_NoFerCheck: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'LaboMarxa'
    ForceNombreDB = False
    Body.Strings = (
      
        'RETURNS (TIPUS      INTEGER,       /* 0-Activitat; 1-Hora; 2-Ter' +
        'apeuta; 3-Pacients */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      '         HORA       VARCHAR(6),'
      '         TERAPEUTA  VARCHAR(20),'
      '         PACIENT    VARCHAR(92),'
      '         MOSTRAR    VARCHAR(100),'
      '         PRESTACIO  CHAR(4),'
      '         NUM        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACT        VARCHAR(15);'
      '  DECLARE VARIABLE TER_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TER_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE DOW        INTEGER;'
      '  DECLARE VARIABLE FREQ       VARCHAR(30);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE CONTA_BIPE INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE CONTA_PLA  INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE MAX_BIPE   INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE MAX_PLA    INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE I          INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE H          INTEGER;  /* PARTE 58237 */'
      'BEGIN'
      '  ESPAIS40='#39'                                        '#39';'
      '  ACTIVITAT='#39'LABO.MARXA'#39';'
      '  '
      '  SELECT F_DAYOFWEEK("TODAY") FROM CONFIG WHERE 1=1 INTO :DOW;'
      '  IF (DOW=1) THEN DOW=7;      /* DIUMENGE */'
      '             ELSE DOW=DOW-1;'
      ''
      
        '  ACT='#39#39'; TER_ACT='#39#39'; TER_ANT='#39#39'; HOR_ACT=0; HOR_ANT=0; NUM=NULL' +
        '; CONTA=1;'
      
        '  CONTA_BIPE=0; CONTA_PLA=0; MAX_BIPE=0; MAX_PLA=0; H=1; /* PART' +
        'E 58237 */'
      
        '  TIPUS=0; HORA=NULL; TERAPEUTA=NULL; PACIENT=NULL; PRESTACIO=NU' +
        'LL; SUSPEND;'
      ''
      
        '  FOR SELECT M.METGE,CAST(A.C_HISTORIA AS VARCHAR(8))||'#39' '#39'||F.NO' +
        'MCOMPLET,F.NOMCOMPLET,T.C_FREQUENCIA,T.C_PRESTACIO,A.C_ACTIVITAT' +
        ',MIN(A.HORA)'
      '  FROM AGENDAPACIENT A'
      
        '  JOIN CODICAMPSALFA C ON A.C_ACTIVITAT=C.C_CODI AND C.TIPUSCODI' +
        '='#39'ACTIVITATFI'#39' AND C.N_CODI2='#39'99'#39
      
        '  JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T.D' +
        'ATA_INGRES<="TODAY") AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="T' +
        'ODAY")'
      
        '  JOIN METGES        M ON T.C_FISIO_LABO_MARXA=M.CODI  /* Canvia' +
        't T.C_FISIOTERAPEUTA per T.C_FISIO_LABO_MARXA*/'
      '  LEFT JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '  WHERE (A.DATAI<="NOW") AND (A.DATAF IS NULL OR A.DATAF>"NOW") ' +
        'AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN 1 AND 19)'
      
        '  GROUP BY M.METGE, A.C_HISTORIA, F.NOMCOMPLET, T.C_FREQUENCIA, ' +
        'T.C_PRESTACIO, A.C_ACTIVITAT'
      '  ORDER BY 7,1,5 DESC,3'
      '  INTO :TER_ACT,:PAC_ACT,:PACI,:FREQ,:PRE_ACT,:ACT,:HOR_ACT'
      '  DO BEGIN'
      '      ACT_FICT=NULL;'
      
        '      /* PARTE 58237: per les hores anteriors en les que no hi h' +
        'a agendapacient, mirar si hi ha buits */'
      '      WHILE (H<HOR_ACT) DO'
      '      BEGIN'
      '          MAX_BIPE=0; MAX_PLA=0;'
      
        '          SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.' +
        'BIPED.'#39'    AND C_CODI=:H INTO :MAX_BIPE;'
      '          IF (MAX_BIPE IS NULL) THEN MAX_BIPE=0;'
      
        '          SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.' +
        'PLA INCL.'#39' AND C_CODI=:H INTO :MAX_PLA;'
      '          IF (MAX_PLA IS NULL) THEN MAX_PLA=0;'
      '          '
      '          IF      (H=1)  THEN HORA='#39'H08_00'#39';'
      '          ELSE IF (H=2)  THEN HORA='#39'H08_30'#39';'
      '          ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      '          ELSE IF (H=4)  THEN HORA='#39'H09_30'#39';'
      '          ELSE IF (H=5)  THEN HORA='#39'H10_00'#39';'
      '          ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      '          ELSE IF (H=7)  THEN HORA='#39'H11_00'#39';'
      '          ELSE IF (H=8)  THEN HORA='#39'H11_30'#39';'
      '          ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      '          ELSE IF (H=10) THEN HORA='#39'H12_30'#39';'
      '          ELSE IF (H=11) THEN HORA='#39'H13_00'#39';'
      '          ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      '          ELSE IF (H=13) THEN HORA='#39'H14_00'#39';'
      '          ELSE IF (H=14) THEN HORA='#39'H14_30'#39';'
      '          ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      '          ELSE IF (H=16) THEN HORA='#39'H15_30'#39';'
      '          ELSE IF (H=17) THEN HORA='#39'H16_00'#39';'
      '          ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      '          ELSE IF (H=19) THEN HORA='#39'H17_00'#39';'
      '          ELSE IF (H=20) THEN HORA='#39'H17_30'#39';'
      '          ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      '          ELSE IF (H=22) THEN HORA='#39'H18_30'#39';'
      '          ELSE IF (H=23) THEN HORA='#39'H19_00'#39';'
      '          ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      '          ELSE IF (H=25) THEN HORA='#39'H20_00'#39';'
      '          ELSE IF (H=26) THEN HORA='#39'H20_30'#39';'
      ''
      '          IF ((CONTA_BIPE<MAX_BIPE) OR (CONTA_PLA<MAX_PLA)) THEN'
      '          BEGIN'
      
        '               TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NU' +
        'LL; MOSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL;'
      '               IF (H<>HOR_ANT) THEN BEGIN CONTA=0; SUSPEND; END;'
      '               '
      '               TIPUS=4; HORA=NULL; NUM=NULL;'
      '               I=CONTA_BIPE+1;'
      '               WHILE (I<=MAX_BIPE) DO'
      '               BEGIN'
      
        '                   PACIENT='#39'BIPE LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIEN' +
        'T; SUSPEND;'
      '                   I=I+1;'
      '               END;'
      '               I=CONTA_PLA+1;'
      '               WHILE (I<=MAX_PLA) DO'
      '               BEGIN'
      
        '                   PACIENT='#39'PLA LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT' +
        '; SUSPEND;'
      '                   I=I+1;'
      '               END;'
      '          END;'
      '          CONTA_BIPE=0; CONTA_PLA=0; H=H+1;'
      '      END;'
      '      /* PARTE 58237 - F */'
      '      '
      '      /* per cada canvi de terapeuta i/o hora canviem tipus*/'
      '      IF (HOR_ACT<>HOR_ANT) THEN'
      '      BEGIN'
      '          IF (H<>HOR_ACT) THEN'
      '          BEGIN'
      
        '              /* PARTE 58237: Al canviar d'#39'hora cal afegir buits' +
        ' de l'#39'hora anterior i despr'#233's inicialitzar comptadors BIPE i PLA' +
        ' */'
      '              MAX_BIPE=0; MAX_PLA=0;'
      
        '              SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LIST' +
        'GYM.BIPED.'#39'    AND C_CODI=:HOR_ANT INTO :MAX_BIPE;'
      '              IF (MAX_BIPE IS NULL) THEN MAX_BIPE=0;'
      
        '              SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LIST' +
        'GYM.PLA INCL.'#39' AND C_CODI=:HOR_ANT INTO :MAX_PLA;'
      '              IF (MAX_PLA IS NULL) THEN MAX_PLA=0;'
      ''
      '              TIPUS=4; TERAPEUTA=NULL; PRESTACIO=NULL; NUM=NULL;'
      '              I=CONTA_BIPE+1;'
      '              WHILE (I<=MAX_BIPE) DO'
      '              BEGIN'
      
        '                  PACIENT='#39'BIPE LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT' +
        '; SUSPEND;'
      '                  I=I+1;'
      '              END;'
      '              I=CONTA_PLA+1;'
      '              WHILE (I<=MAX_PLA) DO'
      '              BEGIN'
      
        '                  PACIENT='#39'PLA LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT;' +
        ' SUSPEND;'
      '                  I=I+1;'
      '              END;'
      '          END;'
      
        '          H=HOR_ACT; /* H=99; /* aix'#242' nom'#233's '#233's pq no hi entri la' +
        ' primera vegada */'
      '          CONTA_BIPE=0; CONTA_PLA=0;'
      '          /* PARTE 58237 - F */'
      ''
      '          IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '          ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '          ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '          ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '          ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '          ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '          ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '          ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '          ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '          ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '          ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '          ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '          ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '          ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '          ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '          ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '          ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '          ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '          ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '          ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '          ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '          ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '          ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '          ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '          ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '          ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      
        '          TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NULL; M' +
        'OSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; SUSPEND;'
      
        '          TIPUS=2; TERAPEUTA=TER_ACT; HORA=NULL; PACIENT=NULL; P' +
        'RESTACIO=NULL; MOSTRAR=TERAPEUTA; NUM=NULL; SUSPEND;'
      
        '          TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; CONTA=1; NUM=C' +
        'ONTA;'
      ''
      
        '          /* Ho poso abans del # pq al programa s'#39'espera que el ' +
        '# estigui a la '#250'ltima posici'#243' */'
      
        '          IF      ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AREA*'#39 +
        '))    THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '          ELSE IF ((ACT='#39'BIPEDEST. PL.'#39')  OR (ACT='#39'BIPEDEST. PL.' +
        '*'#39'))  THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '          ELSE IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL. ARE' +
        'A*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      
        '          ELSE IF ((ACT='#39'PLA INCL.PLANT'#39') OR (ACT='#39'PLA INCL.PLAN' +
        'T*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      ''
      '          IF (F_RIGHT(ACT,1)='#39'*'#39') THEN ACT_FICT=ACT;'
      '                                  ELSE ACT_FICT=NULL;'
      ''
      '          IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' #'#39';'
      '          '
      '          /* PARTE 58237 */'
      
        '          IF ((ACT='#39'BIPED. AREA'#39')    /*OR (ACT='#39'BIPED. AREA*'#39')*/' +
        ')    THEN CONTA_BIPE=CONTA_BIPE+1;'
      
        '          IF ((ACT='#39'PLA INCL. AREA'#39') /*OR (ACT='#39'PLA INCL. AREA*'#39 +
        ')*/) THEN CONTA_PLA=CONTA_PLA+1;'
      '          '
      '          PRESTACIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; SUSPEND;'
      '      END;'
      '      ELSE BEGIN'
      '          IF (TER_ACT<>TER_ANT) THEN'
      '          BEGIN'
      '              IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '              ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '              ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '              ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '              ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '              ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '              ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '              ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '              ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '              ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '              ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '              ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '              ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '              ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '              ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '              ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '              ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '              ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '              ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '              ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '              ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '              ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '              ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '              ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '              ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '              ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      
        '              TIPUS=2; TERAPEUTA=TER_ACT; HORA=NULL; PACIENT=NUL' +
        'L; PRESTACIO=NULL; MOSTRAR=TERAPEUTA; NUM=NULL; SUSPEND;'
      '              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT;'
      ''
      
        '              IF      ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AR' +
        'EA*'#39'))    THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '              ELSE IF ((ACT='#39'BIPEDEST. PL.'#39')  OR (ACT='#39'BIPEDEST.' +
        ' PL.*'#39'))  THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '              ELSE IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL.' +
        ' AREA*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      
        '              ELSE IF ((ACT='#39'PLA INCL.PLANT'#39') OR (ACT='#39'PLA INCL.' +
        'PLANT*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      ''
      '              IF (F_RIGHT(ACT,1)='#39'*'#39') THEN ACT_FICT=ACT;'
      '                                      ELSE ACT_FICT=NULL;'
      ''
      
        '              IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' #'#39'; CON' +
        'TA=1; NUM=CONTA;'
      '              '
      '              /* PARTE 58237 */'
      
        '              IF ((ACT='#39'BIPED. AREA'#39')    /*OR (ACT='#39'BIPED. AREA*' +
        #39')*/)    THEN CONTA_BIPE=CONTA_BIPE+1;'
      
        '              IF ((ACT='#39'PLA INCL. AREA'#39') /*OR (ACT='#39'PLA INCL. AR' +
        'EA*'#39')*/) THEN CONTA_PLA=CONTA_PLA+1;'
      ''
      
        '              PRESTACIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; SUSPEN' +
        'D;'
      '          END;'
      '          ELSE BEGIN'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; HORA=NULL; PACIENT=PAC_ACT;' +
        ' CONTA=CONTA+1; NUM=CONTA;'
      ''
      
        '              IF      ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AR' +
        'EA*'#39'))    THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '              ELSE IF ((ACT='#39'BIPEDEST. PL.'#39')  OR (ACT='#39'BIPEDEST.' +
        ' PL.*'#39'))  THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '              ELSE IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL.' +
        ' AREA*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      
        '              ELSE IF ((ACT='#39'PLA INCL.PLANT'#39') OR (ACT='#39'PLA INCL.' +
        'PLANT*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      ''
      '              IF (F_RIGHT(ACT,1)='#39'*'#39') THEN ACT_FICT=ACT;'
      '                                      ELSE ACT_FICT=NULL;'
      ''
      '              IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' #'#39';'
      '              '
      '              /* PARTE 58237 */'
      
        '              IF ((ACT='#39'BIPED. AREA'#39')    /*OR (ACT='#39'BIPED. AREA*' +
        #39')*/)    THEN CONTA_BIPE=CONTA_BIPE+1;'
      
        '              IF ((ACT='#39'PLA INCL. AREA'#39') /*OR (ACT='#39'PLA INCL. AR' +
        'EA*'#39')*/) THEN CONTA_PLA=CONTA_PLA+1;'
      ''
      
        '              PRESTACIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; SUSPEN' +
        'D;'
      '          END;'
      '      END;'
      '      HOR_ANT=HOR_ACT; TER_ANT=TER_ACT;'
      '  END;'
      '  '
      '  /* PARTE 58237: tractem '#250'ltima hora tractada */'
      '  MAX_BIPE=0; MAX_PLA=0;'
      
        '  SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.BIPED.'#39' ' +
        '   AND C_CODI=:HOR_ANT INTO :MAX_BIPE;'
      '  IF (MAX_BIPE IS NULL) THEN MAX_BIPE=0;'
      
        '  SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.PLA INCL' +
        '.'#39' AND C_CODI=:HOR_ANT INTO :MAX_PLA;'
      '  IF (MAX_PLA IS NULL) THEN MAX_PLA=0;'
      ''
      '  TIPUS=4; TERAPEUTA=NULL; PRESTACIO=NULL;'
      '  I=CONTA_BIPE+1; NUM=NULL;'
      '  WHILE (I<=MAX_BIPE) DO'
      '  BEGIN'
      '      PACIENT='#39'BIPE LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT; SUSPEND;'
      '      I=I+1;'
      '  END;'
      '  I=CONTA_PLA+1;'
      '  WHILE (I<=MAX_PLA) DO'
      '  BEGIN'
      '      PACIENT='#39'PLA LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT; SUSPEND;'
      '      I=I+1;'
      '  END;'
      '  '
      
        '  /* PARTE 58237: per les hores posteriors en les que no hi ha a' +
        'gendapacient, mirar si hi ha buits */'
      '  H=HOR_ACT+1; CONTA_BIPE=0; CONTA_PLA=0;'
      '  WHILE (H<=26) DO'
      '  BEGIN'
      '      MAX_BIPE=0; MAX_PLA=0;'
      
        '      SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.BIPE' +
        'D.'#39'    AND C_CODI=:H INTO :MAX_BIPE;'
      '      IF (MAX_BIPE IS NULL) THEN MAX_BIPE=0;'
      
        '      SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.PLA ' +
        'INCL.'#39' AND C_CODI=:H INTO :MAX_PLA;'
      '      IF (MAX_PLA IS NULL) THEN MAX_PLA=0;'
      ''
      '      IF      (H=1)  THEN HORA='#39'H08_00'#39';'
      '      ELSE IF (H=2)  THEN HORA='#39'H08_30'#39';'
      '      ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      '      ELSE IF (H=4)  THEN HORA='#39'H09_30'#39';'
      '      ELSE IF (H=5)  THEN HORA='#39'H10_00'#39';'
      '      ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      '      ELSE IF (H=7)  THEN HORA='#39'H11_00'#39';'
      '      ELSE IF (H=8)  THEN HORA='#39'H11_30'#39';'
      '      ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      '      ELSE IF (H=10) THEN HORA='#39'H12_30'#39';'
      '      ELSE IF (H=11) THEN HORA='#39'H13_00'#39';'
      '      ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      '      ELSE IF (H=13) THEN HORA='#39'H14_00'#39';'
      '      ELSE IF (H=14) THEN HORA='#39'H14_30'#39';'
      '      ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      '      ELSE IF (H=16) THEN HORA='#39'H15_30'#39';'
      '      ELSE IF (H=17) THEN HORA='#39'H16_00'#39';'
      '      ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      '      ELSE IF (H=19) THEN HORA='#39'H17_00'#39';'
      '      ELSE IF (H=20) THEN HORA='#39'H17_30'#39';'
      '      ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      '      ELSE IF (H=22) THEN HORA='#39'H18_30'#39';'
      '      ELSE IF (H=23) THEN HORA='#39'H19_00'#39';'
      '      ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      '      ELSE IF (H=25) THEN HORA='#39'H20_00'#39';'
      '      ELSE IF (H=26) THEN HORA='#39'H20_30'#39';'
      ''
      
        '      IF (((CONTA_BIPE<MAX_BIPE) OR (CONTA_PLA<MAX_PLA)) AND ((M' +
        'AX_BIPE>0) OR (MAX_PLA>0))) THEN'
      '      BEGIN'
      
        '          TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NULL; M' +
        'OSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; SUSPEND;'
      '          TIPUS=4; HORA=NULL; CONTA=0; NUM=NULL;'
      '          I=CONTA_BIPE+1;'
      '          WHILE (I<=MAX_BIPE) DO'
      '          BEGIN'
      
        '              PACIENT='#39'BIPE LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT; SU' +
        'SPEND;'
      '              I=I+1;'
      '          END;'
      '          I=CONTA_PLA+1;'
      '          WHILE (I<=MAX_PLA) DO'
      '          BEGIN'
      
        '              PACIENT='#39'PLA LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT; SUS' +
        'PEND;'
      '              I=I+1;'
      '          END;'
      '      END;'
      '      H=H+1;'
      '  END;'
      '  /* PARTE 58237 - F */'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 174
    Top = 356
  end
  object HorariGym: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi metge'
        NombreDB = 'C_METGE'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi activitat'
        NombreDB = 'C_ACTIVITAT'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora'
        NombreDB = 'HORA'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Te pacients'
        NombreDB = 'TEPACIENTS'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'DataInici'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fi'
        NombreDB = 'DataFi'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
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
          'Codi metge'
          'Codi activitat'
          'Hora'
          'Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'ACTIVITATS'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Codi activitat')
        CopiarOrigen.Strings = (
          'Codi activitat')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'ACTIVITATFI'#39
      end>
    Nombre = 'HorariGym'
    NombreTabla = 'HorariGym'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi metge'
      'Codi activitat'
      'Hora'
      'Te pacients'
      'Data inici'
      'Data fi'
      'Id')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 208
    Top = 158
  end
  object List: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      
        '(DATA DATE, GRUP CHAR(2), NPC SMALLINT)        /* NPC: 0-nom'#233's a' +
        'ctivitats no NPC; 1-nom'#233's activitats NPC*/'
      'RETURNS (FILA             INTEGER,'
      '         C_METGE          VARCHAR(5),'
      '         METGE            VARCHAR(20),'
      '         C_ACTIVITAT      VARCHAR(15),'
      '         HORA             INTEGER,'
      '         MAX_PACIENTS_30M INTEGER,'
      '         C_GRUP           CHAR(2),'
      '         COLOR            SMALLINT,'
      '         ORDRE            INTEGER,'
      '         DATAINICI        DATE,'
      '         DATAFI           DATE'
      '         )'
      'AS'
      '  DECLARE VARIABLE METGE_ANT  VARCHAR(5);'
      'BEGIN'
      '  FILA=-1; METGE_ANT='#39#39';'
      ''
      '  IF (DATA="TODAY") THEN'
      '  BEGIN'
      '    IF (NPC=0) THEN'
      '    BEGIN'
      '      IF (GRUP IS NULL) THEN'
      '      BEGIN'
      
        '        FOR SELECT H.C_METGE, M.METGE, M.C_GRUP, H.C_ACTIVITAT, ' +
        'H.HORA, H.DATAINICI, H.DATAFI, CAST(A.N_CODI2 AS INTEGER), A.ORD' +
        'RE'
      '        FROM HORARIGYM H'
      '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      
        '        JOIN CODICAMPSALFA A ON A.TIPUSCODI='#39'ACTIVITATFI'#39' AND A.' +
        'C_CODI=H.C_ACTIVITAT'
      '        WHERE (H.DATAINICI <= :DATA AND H.DATAFI IS NULL)'
      
        '        AND (SELECT COUNT(*) FROM HORARIGYM H2 WHERE H2.C_METGE=' +
        'H.C_METGE AND C_ACTIVITAT NOT STARTING WITH "NPC"'
      
        '             AND (H2.DATAINICI <= :DATA AND H2.DATAFI IS NULL)) ' +
        '> 0'
      
        '        ORDER BY M.C_GRUP,M.METGE/*, M.C_UNITAT*/,H.HORA,A.ORDRE' +
        ',H.C_ACTIVITAT'
      
        '        INTO :C_METGE, :METGE, :C_GRUP, :C_ACTIVITAT, :HORA, :DA' +
        'TAINICI, :DATAFI, :MAX_PACIENTS_30M, :ORDRE'
      '        DO BEGIN'
      '          IF (METGE_ANT<>C_METGE) THEN FILA=FILA+1;'
      
        '          IF      (C_GRUP='#39'FI'#39') THEN COLOR=0;   /* ABANS 5 ELS '#39 +
        'FI'#39' I LA RESTA 6 */'
      '          ELSE IF (C_GRUP='#39'TO'#39') THEN COLOR=7;'
      '          ELSE IF (C_GRUP='#39'AR'#39') THEN COLOR=5;'
      '          ELSE IF (C_GRUP='#39'LO'#39') THEN COLOR=14;'
      '          ELSE IF (C_GRUP='#39'MS'#39') THEN COLOR=3;'
      '                                ELSE COLOR=6;'
      '          /*IF (C_GRUP='#39'AR'#39') THEN MAX_PACIENTS_30M=1;*/'
      '      '
      '         SUSPEND;'
      '         METGE_ANT=C_METGE;'
      '        END;'
      '      END;'
      '      ELSE BEGIN'
      
        '        FOR SELECT H.C_METGE, M.METGE, M.C_GRUP, H.C_ACTIVITAT, ' +
        'H.HORA, H.DATAINICI, H.DATAFI, CAST(A.N_CODI2 AS INTEGER), A.ORD' +
        'RE'
      '        FROM HORARIGYM H'
      
        '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39' AND M.' +
        'C_GRUP = :GRUP'
      
        '        JOIN CODICAMPSALFA A ON A.TIPUSCODI='#39'ACTIVITATFI'#39' AND A.' +
        'C_CODI=H.C_ACTIVITAT'
      '        WHERE (H.DATAINICI <= :DATA AND H.DATAFI IS NULL)'
      
        '        AND (SELECT COUNT(*) FROM HORARIGYM H2 WHERE H2.C_METGE=' +
        'H.C_METGE AND C_ACTIVITAT NOT STARTING WITH "NPC"'
      
        '             AND (H2.DATAINICI <= :DATA AND H2.DATAFI IS NULL)) ' +
        '> 0'
      
        '        ORDER BY M.C_GRUP,M.METGE/*, M.C_UNITAT*/,H.HORA,A.ORDRE' +
        ',H.C_ACTIVITAT'
      
        '        INTO :C_METGE, :METGE, :C_GRUP, :C_ACTIVITAT, :HORA, :DA' +
        'TAINICI, :DATAFI, :MAX_PACIENTS_30M, :ORDRE'
      '        DO BEGIN'
      '          IF (METGE_ANT<>C_METGE) THEN FILA=FILA+1;'
      
        '          IF      (C_GRUP='#39'FI'#39') THEN COLOR=0;   /* ABANS 5 ELS '#39 +
        'FI'#39' I LA RESTA 6 */'
      '          ELSE IF (C_GRUP='#39'TO'#39') THEN COLOR=7;'
      '          ELSE IF (C_GRUP='#39'AR'#39') THEN COLOR=5;'
      '          ELSE IF (C_GRUP='#39'LO'#39') THEN COLOR=14;'
      '          ELSE IF (C_GRUP='#39'MS'#39') THEN COLOR=3;'
      '                                ELSE COLOR=6;'
      '          /*IF (C_GRUP='#39'AR'#39') THEN MAX_PACIENTS_30M=1;*/'
      ''
      '         SUSPEND;'
      '         METGE_ANT=C_METGE;'
      '        END;'
      '      END;'
      '    END;'
      '    ELSE IF (NPC=1) THEN'
      '    BEGIN'
      '      IF (GRUP IS NULL) THEN'
      '      BEGIN'
      
        '        FOR SELECT H.C_METGE, M.METGE, M.C_GRUP, H.C_ACTIVITAT, ' +
        'H.HORA, H.DATAINICI, H.DATAFI, CAST(A.N_CODI2 AS INTEGER), A.ORD' +
        'RE'
      '        FROM HORARIGYM H'
      '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      
        '        JOIN CODICAMPSALFA A ON A.TIPUSCODI='#39'ACTIVITATFI'#39' AND A.' +
        'C_CODI=H.C_ACTIVITAT'
      '        WHERE (H.DATAINICI <= :DATA AND H.DATAFI IS NULL)'
      
        '        AND (SELECT COUNT(*) FROM HORARIGYM H2 WHERE H2.C_METGE=' +
        'H.C_METGE AND C_ACTIVITAT STARTING WITH "NPC"'
      
        '             AND (H2.DATAINICI <= :DATA AND H2.DATAFI IS NULL)) ' +
        '> 0'
      
        '        ORDER BY M.C_GRUP,M.METGE/*, M.C_UNITAT*/,H.HORA,A.ORDRE' +
        ',H.C_ACTIVITAT'
      
        '        INTO :C_METGE, :METGE, :C_GRUP, :C_ACTIVITAT, :HORA, :DA' +
        'TAINICI, :DATAFI, :MAX_PACIENTS_30M, :ORDRE'
      '        DO BEGIN'
      '           IF (METGE_ANT<>C_METGE) THEN FILA=FILA+1;'
      
        '           IF      (C_GRUP='#39'FI'#39') THEN COLOR=0;   /* ABANS 5 ELS ' +
        #39'FI'#39' I LA RESTA 6 */'
      '           ELSE IF (C_GRUP='#39'TO'#39') THEN COLOR=7;'
      '           ELSE IF (C_GRUP='#39'AR'#39') THEN COLOR=5;'
      '           ELSE IF (C_GRUP='#39'LO'#39') THEN COLOR=14;'
      '           ELSE IF (C_GRUP='#39'MS'#39') THEN COLOR=3;'
      '                                 ELSE COLOR=6;'
      '           /*IF (C_GRUP='#39'AR'#39') THEN MAX_PACIENTS_30M=1;*/'
      ''
      '          SUSPEND;'
      '          METGE_ANT=C_METGE;'
      '        END;'
      '      END;'
      '      ELSE BEGIN'
      
        '        FOR SELECT H.C_METGE, M.METGE, M.C_GRUP, H.C_ACTIVITAT, ' +
        'H.HORA, H.DATAINICI, H.DATAFI, CAST(A.N_CODI2 AS INTEGER), A.ORD' +
        'RE'
      '        FROM HORARIGYM H'
      
        '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39' AND M.' +
        'C_GRUP = :GRUP'
      
        '        JOIN CODICAMPSALFA A ON A.TIPUSCODI='#39'ACTIVITATFI'#39' AND A.' +
        'C_CODI=H.C_ACTIVITAT'
      '        WHERE (H.DATAINICI <= :DATA AND H.DATAFI IS NULL)'
      
        '        AND (SELECT COUNT(*) FROM HORARIGYM H2 WHERE H2.C_METGE=' +
        'H.C_METGE AND C_ACTIVITAT STARTING WITH "NPC"'
      
        '             AND (H2.DATAINICI <= :DATA AND H2.DATAFI IS NULL)) ' +
        '> 0'
      
        '        ORDER BY M.C_GRUP,M.METGE/*, M.C_UNITAT*/,H.HORA,A.ORDRE' +
        ',H.C_ACTIVITAT'
      
        '        INTO :C_METGE, :METGE, :C_GRUP, :C_ACTIVITAT, :HORA, :DA' +
        'TAINICI, :DATAFI, :MAX_PACIENTS_30M, :ORDRE'
      '        DO BEGIN'
      '           IF (METGE_ANT<>C_METGE) THEN FILA=FILA+1;'
      
        '           IF      (C_GRUP='#39'FI'#39') THEN COLOR=0;   /* ABANS 5 ELS ' +
        #39'FI'#39' I LA RESTA 6 */'
      '           ELSE IF (C_GRUP='#39'TO'#39') THEN COLOR=7;'
      '           ELSE IF (C_GRUP='#39'AR'#39') THEN COLOR=5;'
      '           ELSE IF (C_GRUP='#39'LO'#39') THEN COLOR=14;'
      '           ELSE IF (C_GRUP='#39'MS'#39') THEN COLOR=3;'
      '                                 ELSE COLOR=6;'
      '           /*IF (C_GRUP='#39'AR'#39') THEN MAX_PACIENTS_30M=1;*/'
      ''
      '          SUSPEND;'
      '          METGE_ANT=C_METGE;'
      '        END;'
      '      END;'
      '    END;'
      '  END;'
      '  ELSE BEGIN'
      '    IF (NPC=0) THEN'
      '    BEGIN'
      '      IF (GRUP IS NULL) THEN'
      '      BEGIN'
      
        '        FOR SELECT H.C_METGE, M.METGE, M.C_GRUP, H.C_ACTIVITAT, ' +
        'H.HORA, H.DATAINICI, H.DATAFI, CAST(A.N_CODI2 AS INTEGER), A.ORD' +
        'RE'
      '        FROM HORARIGYM H'
      '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      
        '        JOIN CODICAMPSALFA A ON A.TIPUSCODI='#39'ACTIVITATFI'#39' AND A.' +
        'C_CODI=H.C_ACTIVITAT'
      
        '        WHERE (H.DATAINICI <= :DATA AND (H.DATAFI >=:DATA OR H.D' +
        'ATAFI IS NULL))'
      
        '        AND (SELECT COUNT(*) FROM HORARIGYM H2 WHERE H2.C_METGE=' +
        'H.C_METGE AND C_ACTIVITAT NOT STARTING WITH "NPC"'
      
        '             AND (H2.DATAINICI <= :DATA AND (H2.DATAFI >=:DATA O' +
        'R H2.DATAFI IS NULL))) > 0'
      
        '        ORDER BY M.C_GRUP,M.METGE/*, M.C_UNITAT*/,H.HORA,A.ORDRE' +
        ',H.C_ACTIVITAT'
      
        '        INTO :C_METGE, :METGE, :C_GRUP, :C_ACTIVITAT, :HORA, :DA' +
        'TAINICI, :DATAFI, :MAX_PACIENTS_30M, :ORDRE'
      '        DO BEGIN'
      '          IF (METGE_ANT<>C_METGE) THEN FILA=FILA+1;'
      
        '          IF      (C_GRUP='#39'FI'#39') THEN COLOR=0;    /* ABANS 5 ELS ' +
        #39'FI'#39' I LA RESTA 6 */'
      '          ELSE IF (C_GRUP='#39'TO'#39') THEN COLOR=7;'
      '          ELSE IF (C_GRUP='#39'AR'#39') THEN COLOR=5;'
      '          ELSE IF (C_GRUP='#39'LO'#39') THEN COLOR=14;'
      '          ELSE IF (C_GRUP='#39'MS'#39') THEN COLOR=3;'
      '                                ELSE COLOR=6;'
      '          /*IF (C_GRUP='#39'AR'#39') THEN MAX_PACIENTS_30M=1;*/'
      ''
      '          SUSPEND;'
      '          METGE_ANT=C_METGE;'
      '        END;'
      '      END;'
      '      ELSE BEGIN'
      
        '        FOR SELECT H.C_METGE, M.METGE, M.C_GRUP, H.C_ACTIVITAT, ' +
        'H.HORA, H.DATAINICI, H.DATAFI, CAST(A.N_CODI2 AS INTEGER), A.ORD' +
        'RE'
      '        FROM HORARIGYM H'
      
        '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39' AND M.' +
        'C_GRUP = :GRUP'
      
        '        JOIN CODICAMPSALFA A ON A.TIPUSCODI='#39'ACTIVITATFI'#39' AND A.' +
        'C_CODI=H.C_ACTIVITAT'
      
        '        WHERE (H.DATAINICI <= :DATA AND (H.DATAFI >=:DATA OR H.D' +
        'ATAFI IS NULL))'
      
        '        AND (SELECT COUNT(*) FROM HORARIGYM H2 WHERE H2.C_METGE=' +
        'H.C_METGE AND C_ACTIVITAT NOT STARTING WITH "NPC"'
      
        '             AND (H2.DATAINICI <= :DATA AND (H2.DATAFI >=:DATA O' +
        'R H2.DATAFI IS NULL))) > 0'
      
        '        ORDER BY M.C_GRUP,M.METGE/*, M.C_UNITAT*/,H.HORA,A.ORDRE' +
        ',H.C_ACTIVITAT'
      
        '        INTO :C_METGE, :METGE, :C_GRUP, :C_ACTIVITAT, :HORA, :DA' +
        'TAINICI, :DATAFI, :MAX_PACIENTS_30M, :ORDRE'
      '        DO BEGIN'
      '          IF (METGE_ANT<>C_METGE) THEN FILA=FILA+1;'
      
        '          IF      (C_GRUP='#39'FI'#39') THEN COLOR=0;    /* ABANS 5 ELS ' +
        #39'FI'#39' I LA RESTA 6 */'
      '          ELSE IF (C_GRUP='#39'TO'#39') THEN COLOR=7;'
      '          ELSE IF (C_GRUP='#39'AR'#39') THEN COLOR=5;'
      '          ELSE IF (C_GRUP='#39'LO'#39') THEN COLOR=14;'
      '          ELSE IF (C_GRUP='#39'MS'#39') THEN COLOR=3;'
      '                                ELSE COLOR=6;'
      '          /*IF (C_GRUP='#39'AR'#39') THEN MAX_PACIENTS_30M=1;*/'
      ''
      '          SUSPEND;'
      '          METGE_ANT=C_METGE;'
      '        END;'
      '      END;'
      '    END;'
      '    ELSE IF (NPC=1) THEN'
      '    BEGIN'
      '      IF (GRUP IS NULL) THEN'
      '      BEGIN'
      
        '        FOR SELECT H.C_METGE, M.METGE, M.C_GRUP, H.C_ACTIVITAT, ' +
        'H.HORA, H.DATAINICI, H.DATAFI, CAST(A.N_CODI2 AS INTEGER), A.ORD' +
        'RE'
      '        FROM HORARIGYM H'
      '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      
        '        JOIN CODICAMPSALFA A ON A.TIPUSCODI='#39'ACTIVITATFI'#39' AND A.' +
        'C_CODI=H.C_ACTIVITAT'
      
        '        WHERE (H.DATAINICI <= :DATA AND (H.DATAFI >=:DATA OR H.D' +
        'ATAFI IS NULL))'
      
        '        AND (SELECT COUNT(*) FROM HORARIGYM H2 WHERE H2.C_METGE=' +
        'H.C_METGE AND C_ACTIVITAT STARTING WITH "NPC"'
      
        '             AND (H2.DATAINICI <= :DATA AND (H2.DATAFI >=:DATA O' +
        'R H2.DATAFI IS NULL))) > 0'
      
        '        ORDER BY M.C_GRUP,M.METGE/*, M.C_UNITAT*/,H.HORA,A.ORDRE' +
        ',H.C_ACTIVITAT'
      
        '        INTO :C_METGE, :METGE, :C_GRUP, :C_ACTIVITAT, :HORA, :DA' +
        'TAINICI, :DATAFI, :MAX_PACIENTS_30M, :ORDRE'
      '        DO BEGIN'
      '          IF (METGE_ANT<>C_METGE) THEN FILA=FILA+1;'
      
        '          IF      (C_GRUP='#39'FI'#39') THEN COLOR=0;    /* ABANS 5 ELS ' +
        #39'FI'#39' I LA RESTA 6 */'
      '          ELSE IF (C_GRUP='#39'TO'#39') THEN COLOR=7;'
      '          ELSE IF (C_GRUP='#39'AR'#39') THEN COLOR=5;'
      '          ELSE IF (C_GRUP='#39'LO'#39') THEN COLOR=14;'
      '          ELSE IF (C_GRUP='#39'MS'#39') THEN COLOR=3;'
      '                                ELSE COLOR=6;'
      '          /*IF (C_GRUP='#39'AR'#39') THEN MAX_PACIENTS_30M=1;*/'
      ''
      '          SUSPEND;'
      '          METGE_ANT=C_METGE;'
      '        END;'
      '      END;'
      '      ELSE BEGIN'
      
        '        FOR SELECT H.C_METGE, M.METGE, M.C_GRUP, H.C_ACTIVITAT, ' +
        'H.HORA, H.DATAINICI, H.DATAFI, CAST(A.N_CODI2 AS INTEGER), A.ORD' +
        'RE'
      '        FROM HORARIGYM H'
      
        '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39' AND M.' +
        'C_GRUP = :GRUP'
      
        '        JOIN CODICAMPSALFA A ON A.TIPUSCODI='#39'ACTIVITATFI'#39' AND A.' +
        'C_CODI=H.C_ACTIVITAT'
      
        '        WHERE (H.DATAINICI <= :DATA AND (H.DATAFI >=:DATA OR H.D' +
        'ATAFI IS NULL))'
      
        '        AND (SELECT COUNT(*) FROM HORARIGYM H2 WHERE H2.C_METGE=' +
        'H.C_METGE AND C_ACTIVITAT STARTING WITH "NPC"'
      
        '             AND (H2.DATAINICI <= :DATA AND (H2.DATAFI >=:DATA O' +
        'R H2.DATAFI IS NULL))) > 0'
      
        '        ORDER BY M.C_GRUP,M.METGE/*, M.C_UNITAT*/,H.HORA,A.ORDRE' +
        ',H.C_ACTIVITAT'
      
        '        INTO :C_METGE, :METGE, :C_GRUP, :C_ACTIVITAT, :HORA, :DA' +
        'TAINICI, :DATAFI, :MAX_PACIENTS_30M, :ORDRE'
      '        DO BEGIN'
      '          IF (METGE_ANT<>C_METGE) THEN FILA=FILA+1;'
      
        '          IF      (C_GRUP='#39'FI'#39') THEN COLOR=0;    /* ABANS 5 ELS ' +
        #39'FI'#39' I LA RESTA 6 */'
      '          ELSE IF (C_GRUP='#39'TO'#39') THEN COLOR=7;'
      '          ELSE IF (C_GRUP='#39'AR'#39') THEN COLOR=5;'
      '          ELSE IF (C_GRUP='#39'LO'#39') THEN COLOR=14;'
      '          ELSE IF (C_GRUP='#39'MS'#39') THEN COLOR=3;'
      '                                ELSE COLOR=6;'
      '          /*IF (C_GRUP='#39'AR'#39') THEN MAX_PACIENTS_30M=1;*/'
      ''
      '          SUSPEND;'
      '          METGE_ANT=C_METGE;'
      '        END;'
      '      END;'
      '    END;'
      '  END;'
      'END')
    Dic1 = HorariGym
    Dic1Name = 'HorariGym'
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
    Left = 320
    Top = 158
  end
  object tePacients_NoFerCheck: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'tePacients'
    ForceNombreDB = False
    Body.Strings = (
      '(ACTIVITAT VARCHAR(15),OPCIO CHAR(1))'
      'AS'
      ' DECLARE VARIABLE HINI        INTEGER;'
      ' DECLARE VARIABLE HFIN        INTEGER;'
      ' DECLARE VARIABLE C_METGE     VARCHAR(5);'
      ' DECLARE VARIABLE C_ACTIVITAT VARCHAR(15);'
      ' DECLARE VARIABLE HORA        INTEGER;'
      ' DECLARE VARIABLE AUX         INTEGER;'
      ' DECLARE VARIABLE DOW         INTEGER;  /* DAY OF WEEK */'
      ' DECLARE VARIABLE ACT2        VARCHAR(15);'
      'BEGIN'
      '      '
      '  IF      (OPCIO='#39'M'#39') THEN BEGIN HINI=1;  HFIN=14; END;'
      '  ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HINI=15; HFIN=19; END;'
      '                      ELSE BEGIN HINI=1;  HFIN=19; END;'
      ''
      '  SELECT F_DAYOFWEEK("TODAY") FROM CONFIG WHERE 1=1 INTO :DOW;'
      '  IF      (DOW=1) THEN DOW=7;      /* DIUMENGE */'
      '                  ELSE DOW=DOW-1;'
      ''
      '  FOR SELECT H.C_METGE, H.C_ACTIVITAT, H.HORA FROM HORARIGYM H'
      
        '  JOIN CODICAMPSALFA C ON H.C_ACTIVITAT=C.C_CODI AND C.TIPUSCODI' +
        '='#39'ACTIVITATFI'#39' AND C.R_CODI IN('#39'F'#39','#39'T'#39')'
      '  WHERE (H.C_ACTIVITAT=:ACTIVITAT OR :ACTIVITAT = '#39#39')'
      '  AND   (H.HORA BETWEEN :HINI AND :HFIN)'
      '  AND   (H.DATAINICI<="TODAY" AND H.DATAFI IS NULL)'
      '  ORDER BY H.C_METGE, H.C_ACTIVITAT, H.HORA'
      '  INTO :C_METGE, :C_ACTIVITAT, :HORA'
      '  DO BEGIN'
      '      ACT2=C_ACTIVITAT||'#39'*'#39';'
      '      SELECT COUNT(*) FROM AGENDAPACIENT A'
      '      JOIN  TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '      WHERE (T.C_FISIOTERAPEUTA = :C_METGE OR T.C_TERAPEUTA = :C' +
        '_METGE)'
      
        '      AND   ((A.C_ACTIVITAT = :C_ACTIVITAT) OR (A.C_ACTIVITAT = ' +
        ':ACT2))'
      '      AND   A.HORA = :HORA'
      '      AND   A.DATAF IS NULL'
      '      AND   A.DIA_SEMANA = :DOW'
      '      AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA>='#39'TODAY'#39')'
      '      INTO :AUX;'
      ''
      '      IF (AUX IS NULL) THEN AUX=0;'
      ''
      '      UPDATE HORARIGYM SET TEPACIENTS=:AUX'
      '      WHERE C_METGE     = :C_METGE'
      '      AND   C_ACTIVITAT = :C_ACTIVITAT'
      '      AND   HORA        = :HORA'
      '      AND   DATAINICI <="TODAY"'
      '      AND   DATAFI IS NULL;'
      '  END;'
      ''
      'END')
    Dic1 = HorariGym
    Dic1Name = 'HorariGym'
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
    Left = 299
    Top = 356
  end
  object ListGridSenseBUITS_NoFerCheck: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListGrid'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1))'
      'RETURNS (HORA      VARCHAR(6),'
      '         ACTIVITAT VARCHAR(15),'
      '         TERAPEUTA VARCHAR(20),'
      '         TPRINT    VARCHAR(20),  /* terapeuta a pintar */'
      '         HC        VARCHAR(92),'
      '         PRESTACIO VARCHAR(4),'
      '         ORDRE     INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE H         INTEGER;'
      '  DECLARE VARIABLE H_ANT     INTEGER;'
      '  DECLARE VARIABLE ACTI      VARCHAR(15);'
      '  DECLARE VARIABLE ACTI_ANT  VARCHAR(15);'
      '  DECLARE VARIABLE TERA      VARCHAR(20);'
      '  DECLARE VARIABLE TERA_ANT  VARCHAR(15);'
      '  DECLARE VARIABLE PACI      VARCHAR(92);'
      '  DECLARE VARIABLE PRES      VARCHAR(4);'
      '  DECLARE VARIABLE HFETA     INTEGER;'
      '  DECLARE VARIABLE HINI      INTEGER;'
      '  DECLARE VARIABLE HFIN      INTEGER;'
      '  DECLARE VARIABLE ORDR      INTEGER;'
      '  DECLARE VARIABLE PACIENT   VARCHAR(82);'
      'BEGIN'
      
        '  /* 8.11.2012: patri diu que nom'#233's mostrem fins a hora 17h, i.e' +
        '. HF=19. Per tant, canvio HF=26 per HF=19 */'
      '  IF      (OPCIO='#39'M'#39') THEN BEGIN HINI=1;  HFIN=14; END'
      '  ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HINI=15; HFIN=19; END'
      '                      ELSE BEGIN HINI=1;  HFIN=19; END'
      '  HFETA=HINI;'
      '  ORDR=1; H_ANT=0; ACTI_ANT='#39#39'; TERA_ANT='#39#39'; TPRINT='#39#39';'
      ''
      
        '  FOR SELECT ACTIVITAT,TERAPEUTA, CAST(HC AS VARCHAR(8))||'#39' '#39'||P' +
        'ACIENT, PACIENT, PRESTACIO, MIN(HORA)'
      '  FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO)'
      '  WHERE PRESTACIO IN('#39'1004'#39','#39'2014'#39','#39'2023'#39')'
      '  GROUP BY ACTIVITAT,TERAPEUTA,HC,PACIENT,PRESTACIO'
      '  ORDER BY 6,1,2,5 DESC,4'
      '  INTO :ACTI, :TERA, :PACI, :PACIENT, :PRES, :H'
      '  DO BEGIN'
      '      WHILE (HFETA<H) DO'
      '      BEGIN'
      '          IF      (HFETA=1)  THEN HORA='#39'H08_00'#39';'
      '          ELSE IF (HFETA=2)  THEN HORA='#39'H08_30'#39';'
      '          ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      '          ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39';'
      '          ELSE IF (HFETA=5)  THEN HORA='#39'H10_00'#39';'
      '          ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      '          ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39';'
      '          ELSE IF (HFETA=8)  THEN HORA='#39'H11_30'#39';'
      '          ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      '          ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39';'
      '          ELSE IF (HFETA=11) THEN HORA='#39'H13_00'#39';'
      '          ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      '          ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39';'
      '          ELSE IF (HFETA=14) THEN HORA='#39'H14_30'#39';'
      '          ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      '          ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39';'
      '          ELSE IF (HFETA=17) THEN HORA='#39'H16_00'#39';'
      '          ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      '          ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39';'
      '          ELSE IF (HFETA=20) THEN HORA='#39'H17_30'#39';'
      '          ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      '          ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39';'
      '          ELSE IF (HFETA=23) THEN HORA='#39'H19_00'#39';'
      '          ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      '          ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39';'
      '          ELSE IF (HFETA=26) THEN HORA='#39'H20_30'#39';'
      
        '          ACTIVITAT=NULL;TERAPEUTA=NULL; TPRINT=NULL; HC=NULL; P' +
        'RESTACIO=NULL; ORDRE=NULL; SUSPEND;'
      '          HFETA=HFETA+1;'
      '      END'
      '      IF (HFETA=H) THEN'
      '      BEGIN'
      '          IF      (H=1)  THEN HORA='#39'H08_00'#39';'
      '          ELSE IF (H=2)  THEN HORA='#39'H08_30'#39';'
      '          ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      '          ELSE IF (H=4)  THEN HORA='#39'H09_30'#39';'
      '          ELSE IF (H=5)  THEN HORA='#39'H10_00'#39';'
      '          ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      '          ELSE IF (H=7)  THEN HORA='#39'H11_00'#39';'
      '          ELSE IF (H=8)  THEN HORA='#39'H11_30'#39';'
      '          ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      '          ELSE IF (H=10) THEN HORA='#39'H12_30'#39';'
      '          ELSE IF (H=11) THEN HORA='#39'H13_00'#39';'
      '          ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      '          ELSE IF (H=13) THEN HORA='#39'H14_00'#39';'
      '          ELSE IF (H=14) THEN HORA='#39'H14_30'#39';'
      '          ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      '          ELSE IF (H=16) THEN HORA='#39'H15_30'#39';'
      '          ELSE IF (H=17) THEN HORA='#39'H16_00'#39';'
      '          ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      '          ELSE IF (H=19) THEN HORA='#39'H17_00'#39';'
      '          ELSE IF (H=20) THEN HORA='#39'H17_30'#39';'
      '          ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      '          ELSE IF (H=22) THEN HORA='#39'H18_30'#39';'
      '          ELSE IF (H=23) THEN HORA='#39'H19_00'#39';'
      '          ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      '          ELSE IF (H=25) THEN HORA='#39'H20_00'#39';'
      '          ELSE IF (H=26) THEN HORA='#39'H20_30'#39';'
      ''
      '          IF ((H=H_ANT) AND (ACTI=ACTI_ANT)) THEN ORDR=ORDR+1;'
      '                                             ELSE ORDR=1;'
      ''
      
        '          IF ((H=H_ANT) AND (ACTI=ACTI_ANT) AND (TERA=TERA_ANT))' +
        ' THEN TPRINT='#39#39';'
      
        '                                                                ' +
        ' ELSE TPRINT=TERA;'
      ''
      
        '          ACTIVITAT=ACTI; TERAPEUTA=TERA; HC=PACI; PRESTACIO=PRE' +
        'S; ORDRE=ORDR; SUSPEND;'
      '      END'
      '      H_ANT=H; ACTI_ANT=ACTI; TERA_ANT=TERA;'
      '  END'
      '  WHILE (HFETA<=HFIN) DO'
      '  BEGIN'
      '      IF      (HFETA=1)  THEN HORA='#39'H08_00'#39';'
      '      ELSE IF (HFETA=2)  THEN HORA='#39'H08_30'#39';'
      '      ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      '      ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39';'
      '      ELSE IF (HFETA=5)  THEN HORA='#39'H10_00'#39';'
      '      ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      '      ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39';'
      '      ELSE IF (HFETA=8)  THEN HORA='#39'H11_30'#39';'
      '      ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      '      ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39';'
      '      ELSE IF (HFETA=11) THEN HORA='#39'H13_00'#39';'
      '      ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      '      ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39';'
      '      ELSE IF (HFETA=14) THEN HORA='#39'H14_30'#39';'
      '      ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      '      ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39';'
      '      ELSE IF (HFETA=17) THEN HORA='#39'H16_00'#39';'
      '      ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      '      ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39';'
      '      ELSE IF (HFETA=20) THEN HORA='#39'H17_30'#39';'
      '      ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      '      ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39';'
      '      ELSE IF (HFETA=23) THEN HORA='#39'H19_00'#39';'
      '      ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      '      ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39';'
      '      ELSE IF (HFETA=26) THEN HORA='#39'H20_30'#39';'
      
        '      ACTIVITAT=NULL; TERAPEUTA=NULL; TPRINT=NULL; HC=NULL; PRES' +
        'TACIO=NULL; ORDRE=NULL; SUSPEND;'
      '      HFETA=HFETA+1;'
      '  END'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 202
    Top = 307
  end
  object ListGridNew_NoFerCheck: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListGridNew'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1))'
      'RETURNS (ACTIVITAT VARCHAR(15),'
      '         ACT_FICT  VARCHAR(16),'
      '         TERAPEUTA VARCHAR(20),'
      '         PACI      VARCHAR(92),'
      '         PACIENT   VARCHAR(82),'
      '         PRESTA    VARCHAR(4),'
      '         HORA      INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACTI_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTI_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TERA_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TERA_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE PACI_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PACI_ANT    VARCHAR(92);'
      '  DECLARE VARIABLE PACIENT_ACT VARCHAR(82);'
      '  DECLARE VARIABLE PACIENT_ANT VARCHAR(82);'
      '  DECLARE VARIABLE PRES_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE PRES_ANT    VARCHAR(4);'
      '  DECLARE VARIABLE H_ACT       INTEGER;'
      '  DECLARE VARIABLE H_ANT       INTEGER;'
      '  DECLARE VARIABLE PRIMER      SMALLINT;'
      'BEGIN'
      
        '    ACTI_ANT='#39#39'; ACTF_ANT='#39#39'; TERA_ANT='#39#39'; PACI_ANT='#39#39'; PACIENT_' +
        'ANT='#39#39'; PRES_ANT='#39#39'; H_ANT=0; PRIMER=0;'
      '    '
      
        '    FOR SELECT ACTIVITAT,ACT_FICT,TERAPEUTA, CAST(HC AS VARCHAR(' +
        '8))||'#39' '#39'||PACIENT, PACIENT, PRESTACIO, HORA'
      '    FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO)'
      '    WHERE PRESTACIO IN('#39'1004'#39','#39'2014'#39','#39'2023'#39')'
      '    ORDER BY 1,2,3,4,5,6,7'
      
        '    INTO :ACTI_ACT, :ACTF_ACT, :TERA_ACT, :PACI_ACT, :PACIENT_AC' +
        'T, :PRES_ACT, :H_ACT'
      '    DO BEGIN'
      '        IF (PRIMER=0) THEN'
      '        BEGIN'
      '            PRIMER=1;'
      
        '            ACTI_ANT=ACTI_ACT; ACTF_ANT=ACTF_ACT; TERA_ANT=TERA_' +
        'ACT; PACI_ANT=PACI_ACT; PACIENT_ANT=PACIENT_ACT;'
      '            PRES_ANT=PRES_ACT; H_ANT=H_ACT;'
      '        END;'
      ''
      
        '        IF (NOT ((ACTI_ANT=ACTI_ACT) AND (TERA_ANT=TERA_ACT) AND' +
        ' (PACI_ANT=PACI_ACT) AND (H_ANT=H_ACT-1))) THEN'
      '        BEGIN'
      
        '            ACTIVITAT=ACTI_ACT; ACT_FICT=ACTF_ACT; TERAPEUTA=TER' +
        'A_ACT; PACIENT=PACIENT_ACT; PACI=PACI_ACT; PRESTA=PRES_ACT; HORA' +
        '=H_ACT;'
      '            SUSPEND;'
      '        END;'
      ''
      
        '        ACTI_ANT=ACTI_ACT; ACTF_ANT=ACTF_ACT; TERA_ANT=TERA_ACT;' +
        ' PACI_ANT=PACI_ACT; PACIENT_ANT=PACIENT_ACT;'
      '        PRES_ANT=PRES_ACT; H_ANT=H_ACT;'
      '    END;'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 197
    Top = 259
  end
  object GymMaterial: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi material'
        NombreDB = 'C_MATERIAL'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' material'
        NombreDB = 'N_MATERIAL'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Estat'
        NombreDB = 'ESTAT'
        Longitud = 1
        Consulta = 'GymMatEstat'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'V:vigent;B:baixa;P:prestat'
        ValidChars = 'VBP'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' visible catal'#224
        NombreDB = 'P_MATERIAL_C'
        Longitud = 250
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
          'Codi material')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'GymMatEstat'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Estat')
        CopiarOrigen.Strings = (
          'Estat')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'GYMMATESTAT'#39
      end>
    Nombre = 'GymMaterial'
    NombreTabla = 'GymMaterial'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi material'
      'Descripci'#243' material'
      'Estat'
      'Descripci'#243' visible catal'#224)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 424
    Top = 9
  end
  object GymPrestecs: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Id pr'#233'stec'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi material prestat'
        NombreDB = 'C_MATERIAL'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Material'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data sortida'
        NombreDB = 'DATA_INICI'
        Longitud = 11
        MaskDisplay = 'dd"/"mm"/"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data entrada'
        NombreDB = 'DATA_FINAL'
        Longitud = 11
        MaskDisplay = 'dd"/"mm"/"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi usuari sortida'
        NombreDB = 'C_USUARI_I'
        Longitud = 5
        Consulta = 'UserI'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Pacient a qui es fa el pr'#233'stec'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Llit'
        NombreDB = 'C_LLIT'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre inici'
        NombreDB = 'DATA_REGISTRE_I'
        Longitud = 11
        MaskDisplay = 'dd"/"mm"/"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre final'
        NombreDB = 'DATA_REGISTRE_F'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi usuari entrada'
        NombreDB = 'C_USUARI_F'
        Longitud = 5
        Consulta = 'UserF'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Bloc'
        NombreDB = 'BLOC'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
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
          'Id pr'#233'stec')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Pacient a qui es fa el pr'#233'stec')
        CopiarOrigen.Strings = (
          'Pacient a qui es fa el pr'#233'stec')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Material'
        Master = GymMaterial
        BuscaOrigen.Strings = (
          'Codi material prestat')
        CopiarOrigen.Strings = (
          'Codi material prestat')
        CopiarMaster.Strings = (
          'Codi material')
        BuscaMaster.Strings = (
          'Codi material')
        WhereFiltro = 'ESTAT='#39'V'#39' OR ESTAT='#39'P'#39
      end
      item
        Nombre = 'UserI'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Codi usuari sortida')
        CopiarOrigen.Strings = (
          'Codi usuari sortida')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        WhereFiltro = 'C_GRUP='#39'TO'#39' OR C_GRUP='#39'FI'#39
      end
      item
        Nombre = 'UserF'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Codi usuari entrada')
        CopiarOrigen.Strings = (
          'Codi usuari entrada')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        WhereFiltro = 'C_GRUP='#39'TO'#39' OR C_GRUP='#39'FI'#39
      end>
    Nombre = 'GymPrestecs'
    NombreTabla = 'GymPrestecs'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id pr'#233'stec'
      'Codi material prestat'
      'Data sortida'
      'Data entrada'
      'Codi usuari sortida'
      'Pacient a qui es fa el pr'#233'stec'
      'Llit'
      'Data registre inici'
      'Data registre final'
      'Codi usuari entrada'
      'Bloc')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 424
    Top = 56
  end
  object InformesNPC: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador de registre'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari informe'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'METGE'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data informe'
        NombreDB = 'DATA_INFORME'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy" "hh":"mm":"ss'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat informe'
        NombreDB = 'C_ESTAT'
        Longitud = 2
        Consulta = 'ESTAT'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom informe (fitxer)'
        NombreDB = 'NOM_FITXER'
        Longitud = 150
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari valida/anul'#183'la'
        NombreDB = 'C_USER_FI'
        Longitud = 5
        Consulta = 'METGEFI'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data valida/anul'#183'la'
        NombreDB = 'DATA_FI'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy" "hh":"mm":"ss'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari impressi'#243
        NombreDB = 'C_USER_PRINT'
        Longitud = 5
        Consulta = 'METGEPRINT'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data impressi'#243
        NombreDB = 'DATA_PRINT'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy" "hh":"mm":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
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
          'Identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'ESTAT'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat informe')
        CopiarOrigen.Strings = (
          'Estat informe')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'INFNPC.ESTAT'#39
      end
      item
        Nombre = 'METGE'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari informe')
        CopiarOrigen.Strings = (
          'Usuari informe')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'METGEFI'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari valida/anul'#183'la')
        CopiarOrigen.Strings = (
          'Usuari valida/anul'#183'la')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'METGEPRINT'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari impressi'#243)
        CopiarOrigen.Strings = (
          'Usuari impressi'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'InformesNPC'
    NombreTabla = 'InformesNPC'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Hist'#242'ria cl'#237'nica'
      'Tractament'
      'Usuari informe'
      'Data informe'
      'Estat informe'
      'Nom informe (fitxer)'
      'Usuari valida/anul'#183'la'
      'Data valida/anul'#183'la')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 512
    Top = 8
  end
  object ListNPC_senseBuits: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListNPC'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1), DIA INTEGER)  /* DIA: -' +
        '1:AHIR, 0:AVUI, 1:DEMA */'
      'RETURNS (HORA        VARCHAR(6),'
      '         ACTIVITAT   VARCHAR(15),'
      '         ACT_FICT    VARCHAR(16),'
      '         TERAPEUTA   VARCHAR(20),'
      '         C_TERAPEUTA VARCHAR(5),'
      '         COLUMNA     VARCHAR(11),'
      '         TPRINT      VARCHAR(20),  /* terapeuta a pintar */'
      '         HC          VARCHAR(92),'
      '         ORDRE       INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE H           INTEGER;'
      '  DECLARE VARIABLE H_ANT       INTEGER;'
      '  DECLARE VARIABLE ACTI        VARCHAR(15);'
      '  DECLARE VARIABLE ACTI_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTF        VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TERA        VARCHAR(20);'
      '  DECLARE VARIABLE TERA_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE TERA_BUIT   VARCHAR(20);'
      '  DECLARE VARIABLE C_TERA      VARCHAR(5);'
      '  DECLARE VARIABLE C_TERA_ANT  VARCHAR(5);'
      '  DECLARE VARIABLE C_TERA_BUIT VARCHAR(5);'
      '  DECLARE VARIABLE COL         VARCHAR(11);'
      '  DECLARE VARIABLE COL_ANT     VARCHAR(11);'
      '  DECLARE VARIABLE COL_BUIT    VARCHAR(11);'
      '  DECLARE VARIABLE PACI        VARCHAR(92);'
      '  DECLARE VARIABLE HFETA       INTEGER;'
      '  DECLARE VARIABLE HINI        INTEGER;'
      '  DECLARE VARIABLE HFIN        INTEGER;'
      '  DECLARE VARIABLE ORDR        INTEGER;'
      '  DECLARE VARIABLE PACIENT     VARCHAR(82);'
      '  DECLARE VARIABLE MAXPAC      INTEGER;'
      '  DECLARE VARIABLE I           INTEGER;'
      '  DECLARE VARIABLE J           INTEGER;'
      '  DECLARE VARIABLE CACTIVITAT  VARCHAR(15);'
      '  DECLARE VARIABLE HORA_ANT    VARCHAR(6);'
      '  DECLARE VARIABLE CODI        VARCHAR(5);'
      '  DECLARE VARIABLE TERA_BUIT_ANT   VARCHAR(20);'
      '  DECLARE VARIABLE C_TERA_BUIT_ANT VARCHAR(5);'
      '  DECLARE VARIABLE COL_BUIT_ANT    VARCHAR(11);'
      '  DECLARE VARIABLE TEPAC       INTEGER;'
      '  DECLARE VARIABLE GRUP        CHAR(2);'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      ''
      '  IF      (OPCIO='#39'M'#39') THEN BEGIN HINI=3;  HFIN=14; END;'
      '  ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HINI=15; HFIN=22; END;'
      '                      ELSE BEGIN HINI=3;  HFIN=22; END;'
      '  CACTIVITAT='#39'NPC'#39';'
      '  HFETA=HINI;'
      
        '  ORDR=1; H_ANT=0; ACTI_ANT='#39#39'; ACTF_ANT='#39#39'; TERA_ANT='#39#39'; C_TERA' +
        '_ANT='#39#39'; COL_ANT='#39#39'; TPRINT='#39#39';'
      '  J=0; HORA_ANT='#39#39';'
      ''
      
        '  FOR SELECT ACTIVITAT,ACT_FICT,TERAPEUTA,PACI,PACIENT,HORA,C_TE' +
        'RAPEUTA,COLUMNA'
      '  FROM P_TRACTAMENTS_LISTNPCNEW(:CACTIVITAT,:OPCIO,:DIA)'
      '  ORDER BY 6,3,1,5'
      '  INTO :ACTI, :ACTF, :TERA, :PACI, :PACIENT, :H, :C_TERA, :COL'
      '  DO BEGIN'
      '    WHILE (HFETA<H) DO'
      '    BEGIN'
      
        '        IF      (HFETA=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (HFETA=2)' +
        '  THEN HORA='#39'H08_30'#39'; ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      
        '        ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (HFETA=5)' +
        '  THEN HORA='#39'H10_00'#39'; ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      
        '        ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (HFETA=8)' +
        '  THEN HORA='#39'H11_30'#39'; ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      
        '        ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39'; ELSE IF (HFETA=11' +
        ') THEN HORA='#39'H13_00'#39'; ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      
        '        ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39'; ELSE IF (HFETA=14' +
        ') THEN HORA='#39'H14_30'#39'; ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      
        '        ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39'; ELSE IF (HFETA=17' +
        ') THEN HORA='#39'H16_00'#39'; ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      
        '        ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39'; ELSE IF (HFETA=20' +
        ') THEN HORA='#39'H17_30'#39'; ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      
        '        ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39'; ELSE IF (HFETA=23' +
        ') THEN HORA='#39'H19_00'#39'; ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      
        '        ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39'; ELSE IF (HFETA=26' +
        ') THEN HORA='#39'H20_30'#39';'
      ''
      '        IF (HORA<>HORA_ANT) THEN ORDR=0;'
      
        '        TERA_BUIT='#39#39'; C_TERA_BUIT='#39#39'; COL_BUIT='#39#39'; TPRINT='#39#39'; TE' +
        'RA_BUIT_ANT='#39#39'; C_TERA_BUIT_ANT='#39#39'; COL_BUIT_ANT='#39#39';'
      ''
      
        '        /* Quan hi ha un canvi d'#39'hora cal afegir els terapeutes ' +
        'que tenen BUITS, els que no tenen cap'
      
        '        hora assignada d'#39'aquesta activitat per'#242' que s'#237' tenen a l' +
        #39'HORARIGYM hora enregistrada */'
      '        IF (ORDR=0) THEN ORDR=1;'
      '                    ELSE ORDR=ORDR+1;'
      ''
      
        '        ACTIVITAT=NULL; ACT_FICT=NULL; TERAPEUTA=NULL; C_TERAPEU' +
        'TA=NULL; COLUMNA=NULL; TPRINT=NULL; HC=NULL; ORDRE=NULL;'
      '        SUSPEND; HFETA=HFETA+1; HORA_ANT=HORA;'
      '    END;'
      '    IF (HFETA=H) THEN'
      '    BEGIN'
      
        '        IF      (H=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (H=2)  THEN H' +
        'ORA='#39'H08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (H=5)  THEN H' +
        'ORA='#39'H10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (H=8)  THEN H' +
        'ORA='#39'H11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'H12_30'#39'; ELSE IF (H=11) THEN H' +
        'ORA='#39'H13_00'#39'; ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'H14_00'#39'; ELSE IF (H=14) THEN H' +
        'ORA='#39'H14_30'#39'; ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'H15_30'#39'; ELSE IF (H=17) THEN H' +
        'ORA='#39'H16_00'#39'; ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'H17_00'#39'; ELSE IF (H=20) THEN H' +
        'ORA='#39'H17_30'#39'; ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'H18_30'#39'; ELSE IF (H=23) THEN H' +
        'ORA='#39'H19_00'#39'; ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'H20_00'#39'; ELSE IF (H=26) THEN H' +
        'ORA='#39'H20_30'#39';'
      ''
      
        '        IF ((H=H_ANT) AND (ACTI=ACTI_ANT)) THEN ORDR=ORDR+1; ELS' +
        'E ORDR=1;'
      ''
      
        '        TERA_BUIT='#39#39'; C_TERA_BUIT='#39#39'; COL_BUIT='#39#39'; TERA_BUIT_ANT' +
        '='#39#39'; C_TERA_BUIT_ANT='#39#39'; COL_BUIT_ANT='#39#39';'
      '        IF ((H=H_ANT) AND (ACTI=ACTI_ANT) AND (TERA=TERA_ANT))'
      '        THEN TPRINT='#39#39';'
      '        ELSE BEGIN'
      '          IF ((TERA=TERA_ANT) AND (J<>0)) THEN TPRINT='#39#39';'
      '                                          ELSE TPRINT=TERA;'
      '        END;'
      
        '        ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPEUTA=TERA; C_TERAPEU' +
        'TA=C_TERA; COLUMNA=COL; HC=PACI; ORDRE=ORDR;'
      '        SUSPEND; HORA_ANT=HORA;'
      '    END;'
      
        '    H_ANT=H; ACTI_ANT=ACTI; ACTF_ANT=ACTF; TERA_ANT=TERA; C_TERA' +
        '_ANT=C_TERA; COL_ANT=COL;'
      '  END;'
      ''
      '  WHILE (HFETA<=HFIN) DO'
      '  BEGIN'
      
        '    IF      (HFETA=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (HFETA=2)  TH' +
        'EN HORA='#39'H08_30'#39'; ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      
        '    ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (HFETA=5)  TH' +
        'EN HORA='#39'H10_00'#39'; ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      
        '    ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (HFETA=8)  TH' +
        'EN HORA='#39'H11_30'#39'; ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      
        '    ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39'; ELSE IF (HFETA=11) TH' +
        'EN HORA='#39'H13_00'#39'; ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      
        '    ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39'; ELSE IF (HFETA=14) TH' +
        'EN HORA='#39'H14_30'#39'; ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      
        '    ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39'; ELSE IF (HFETA=17) TH' +
        'EN HORA='#39'H16_00'#39'; ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      
        '    ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39'; ELSE IF (HFETA=20) TH' +
        'EN HORA='#39'H17_30'#39'; ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      
        '    ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39'; ELSE IF (HFETA=23) TH' +
        'EN HORA='#39'H19_00'#39'; ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      
        '    ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39'; ELSE IF (HFETA=26) TH' +
        'EN HORA='#39'H20_30'#39';'
      ''
      
        '    /* ORDR=ORDR+1; */ TERA_BUIT='#39#39'; C_TERA_BUIT='#39#39'; COL_BUIT='#39#39 +
        '; TERA_BUIT_ANT='#39#39'; C_TERA_BUIT_ANT='#39#39'; COL_BUIT_ANT='#39#39';'
      '    IF (HORA=HORA_ANT) THEN ORDR=ORDR+1; ELSE ORDR=1;'
      ''
      
        '    ACTIVITAT=NULL; ACT_FICT=NULL; TERAPEUTA=NULL; C_TERAPEUTA=N' +
        'ULL; COLUMNA=NULL; TPRINT=NULL; HC=NULL; ORDRE=NULL; SUSPEND;'
      '    HFETA=HFETA+1; HORA_ANT=HORA;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 617
    Top = 290
  end
  object ListNPCNew: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListNPCNew'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1),DIA INTEGER) /* DIA: -1:' +
        'AHIR, 0:AVUI, 1:DEM'#192' */'
      'RETURNS (ACTIVITAT   VARCHAR(15),'
      '         ACT_FICT    VARCHAR(16),'
      '         TERAPEUTA   VARCHAR(20),'
      '         C_TERAPEUTA VARCHAR(5),'
      '         COLUMNA     VARCHAR(11),'
      '         PACI        VARCHAR(92),'
      '         PACIENT     VARCHAR(82),'
      '         PRESTA      VARCHAR(4),'
      '         CF          VARCHAR(2),'
      '         HORA        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACTI_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTI_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TERA_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TERA_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE C_TERA_ACT  VARCHAR(5);'
      '  DECLARE VARIABLE C_TERA_ANT  VARCHAR(5);'
      '  DECLARE VARIABLE COL_ACT     VARCHAR(11);'
      '  DECLARE VARIABLE COL_ANT     VARCHAR(11);'
      '  DECLARE VARIABLE PACI_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PACI_ANT    VARCHAR(92);'
      '  DECLARE VARIABLE PACIENT_ACT VARCHAR(82);'
      '  DECLARE VARIABLE PACIENT_ANT VARCHAR(82);'
      '  DECLARE VARIABLE PRES_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE PRES_ANT    VARCHAR(4);'
      '  DECLARE VARIABLE H_ACT       INTEGER;'
      '  DECLARE VARIABLE H_ANT       INTEGER;'
      '  DECLARE VARIABLE PRIMER      SMALLINT;'
      '  DECLARE VARIABLE CF_ACT      VARCHAR(4);'
      '  DECLARE VARIABLE CF_ANT      VARCHAR(4);'
      'BEGIN'
      '    IF (DIA IS NULL) THEN DIA=0;'
      
        '    ACTI_ANT='#39#39'; ACTF_ANT='#39#39'; TERA_ANT='#39#39'; C_TERA_ANT='#39#39'; COL_AN' +
        'T='#39#39'; PACI_ANT='#39#39'; PACIENT_ANT='#39#39';'
      '    PRES_ANT='#39#39'; H_ANT=0; PRIMER=0; CF_ANT='#39#39';'
      '    '
      
        '    FOR SELECT P.ACTIVITAT,P.ACT_FICT,P.TERAPEUTA,CAST(P.HC AS V' +
        'ARCHAR(8))||'#39' '#39'||P.PACIENT,P.PACIENT,P.PRESTACIO,P.HORA,P.CENTRE' +
        'FAC,'
      '               P.C_TERAPEUTA,P.COLUMNA'
      '    FROM P_TRACTAMENTS_ACTIVITATSNPC(:C_ACTIVITAT,:OPCIO,:DIA) P'
      
        '    JOIN DRETSPRESTA DP ON P.PRESTACIO=DP.C_PRESTACIO AND DP.C_D' +
        'RET='#39'P117'#39' /*WHERE PRESTACIO = '#39'2023'#39'*/'
      '    ORDER BY 1,2,3,4,5,6,7'
      
        '    INTO :ACTI_ACT, :ACTF_ACT, :TERA_ACT, :PACI_ACT, :PACIENT_AC' +
        'T, :PRES_ACT, :H_ACT, :CF_ACT, :C_TERA_ACT, :COL_ACT'
      '    DO BEGIN'
      '        IF (PRIMER=0) THEN'
      '        BEGIN'
      '            PRIMER=1;'
      
        '            ACTI_ANT=ACTI_ACT; ACTF_ANT=ACTF_ACT; TERA_ANT=TERA_' +
        'ACT; C_TERA_ANT=C_TERA_ACT; COL_ANT=COL_ACT; PACI_ANT=PACI_ACT;'
      
        '            PACIENT_ANT=PACIENT_ACT; PRES_ANT=PRES_ACT; H_ANT=H_' +
        'ACT; CF_ANT=CF_ACT;'
      '        END;'
      
        '/*        IF (NOT ((ACTI_ANT=ACTI_ACT) AND (TERA_ANT=TERA_ACT) A' +
        'ND (PACI_ANT=PACI_ACT) AND (H_ANT=H_ACT-1))) THEN*/'
      
        '        IF (((ACTI_ANT<>ACTI_ACT) OR (TERA_ANT<>TERA_ACT) OR (PA' +
        'CI_ANT<>PACI_ACT)) OR'
      '            ((H_ANT<>H_ACT-1) OR (F_MODULO(H_ACT,2)=1))) THEN'
      '        BEGIN'
      
        '            ACTIVITAT=ACTI_ACT; ACT_FICT=ACTF_ACT; TERAPEUTA=TER' +
        'A_ACT; C_TERAPEUTA=C_TERA_ACT; COLUMNA=COL_ACT;'
      
        '            PACIENT=PACIENT_ACT; PACI=PACI_ACT; PRESTA=PRES_ACT;' +
        ' HORA=H_ACT; CF=CF_ACT;'
      '            SUSPEND;'
      '        END;'
      ''
      
        '        ACTI_ANT=ACTI_ACT; ACTF_ANT=ACTF_ACT; TERA_ANT=TERA_ACT;' +
        ' C_TERA_ANT=C_TERA_ACT; COL_ANT=COL_ACT; PACI_ANT=PACI_ACT;'
      
        '        PACIENT_ANT=PACIENT_ACT; PRES_ANT=PRES_ACT; H_ANT=H_ACT;' +
        ' CF_ANT=CF_ACT;'
      '    END;'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 616
    Top = 240
  end
  object ListNPC_AmbBuits: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListNPC'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1), DIA INTEGER)'
      'RETURNS ('
      '  HORA VARCHAR(6),'
      '  ACTIVITAT VARCHAR(15),'
      '  ACT_FICT VARCHAR(16),'
      '  TERAPEUTA VARCHAR(20),'
      '  C_TERAPEUTA VARCHAR(5),'
      '  COLUMNA VARCHAR(11),'
      '  TPRINT VARCHAR(20),'
      '  HC VARCHAR(92),'
      '  ORDRE INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE H           INTEGER;'
      '  DECLARE VARIABLE H_ANT       INTEGER;'
      '  DECLARE VARIABLE ACTI        VARCHAR(15);'
      '  DECLARE VARIABLE ACTI_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTF        VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TERA        VARCHAR(20);'
      '  DECLARE VARIABLE TERA_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE TERA_BUIT   VARCHAR(20);'
      '  DECLARE VARIABLE C_TERA      VARCHAR(5);'
      '  DECLARE VARIABLE C_TERA_ANT  VARCHAR(5);'
      '  DECLARE VARIABLE C_TERA_BUIT VARCHAR(5);'
      '  DECLARE VARIABLE COL         VARCHAR(11);'
      '  DECLARE VARIABLE COL_ANT     VARCHAR(11);'
      '  DECLARE VARIABLE COL_BUIT    VARCHAR(11);'
      '  DECLARE VARIABLE PACI        VARCHAR(92);'
      '  DECLARE VARIABLE HFETA       INTEGER;'
      '  DECLARE VARIABLE HINI        INTEGER;'
      '  DECLARE VARIABLE HFIN        INTEGER;'
      '  DECLARE VARIABLE ORDR        INTEGER;'
      '  DECLARE VARIABLE PACIENT     VARCHAR(82);'
      '  DECLARE VARIABLE MAXPAC      INTEGER;'
      '  DECLARE VARIABLE I           INTEGER;'
      '  DECLARE VARIABLE J           INTEGER;'
      '  DECLARE VARIABLE CACTIVITAT  VARCHAR(15);'
      '  DECLARE VARIABLE HORA_ANT    VARCHAR(6);'
      '  DECLARE VARIABLE TERA_BUIT_ANT   VARCHAR(20);'
      '  DECLARE VARIABLE C_TERA_BUIT_ANT VARCHAR(5);'
      '  DECLARE VARIABLE COL_BUIT_ANT    VARCHAR(11);'
      '  DECLARE VARIABLE ACT_BUIT        VARCHAR(15);'
      '  DECLARE VARIABLE ACT_BUIT_FIC    VARCHAR(15);'
      '  DECLARE VARIABLE CONTA_BUIT  INTEGER;'
      '  DECLARE VARIABLE DOW         INTEGER;'
      '  DECLARE VARIABLE DATA_       DATE;'
      '  DECLARE VARIABLE CONTA_BUIT2 INTEGER;'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      ''
      '  IF      (OPCIO='#39'M'#39') THEN BEGIN HINI=3;  HFIN=14; END'
      '  ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HINI=15; HFIN=22; END'
      '                      ELSE BEGIN HINI=3;  HFIN=22; END'
      '  CACTIVITAT='#39'NPC'#39';'
      '  HFETA=HINI;'
      
        '  ORDR=1; H_ANT=0; ACTI_ANT='#39#39'; ACTF_ANT='#39#39'; TERA_ANT='#39#39'; C_TERA' +
        '_ANT='#39#39'; COL_ANT='#39#39'; TPRINT='#39#39';'
      '  J=0; HORA_ANT='#39#39';'
      ''
      
        '  SELECT F_DIADELASEMANA("TODAY"),"TODAY" FROM CONFIG WHERE 1=1 ' +
        'INTO :DOW, :DATA_;'
      '  DOW=DOW+DIA;'
      '  IF      (DOW=0) THEN DOW=7;'
      '  ELSE IF (DOW>7) THEN DOW=F_MODULO(DOW,7);'
      '  ELSE IF (DOW<0) THEN DOW=7+F_MODULO(DOW,7);'
      '/*  IF (DIA>=0) THEN DOW=DOW+DIA;             QU S AIX ?????'
      '              ELSE DOW=7+F_MODULO(DOW+DIA,7);*/'
      '  DATA_ = DATA_ + DIA;'
      ''
      
        '  FOR SELECT ACTIVITAT,ACT_FICT,TERAPEUTA,PACI,PACIENT,HORA,C_TE' +
        'RAPEUTA,COLUMNA'
      '  FROM P_TRACTAMENTS_LISTNPCNEW(:CACTIVITAT,:OPCIO,:DIA)'
      '  ORDER BY 6,3,1,5'
      '  INTO :ACTI, :ACTF, :TERA, :PACI, :PACIENT, :H, :C_TERA, :COL'
      '  DO BEGIN'
      '    WHILE (HFETA<H) DO'
      '    BEGIN'
      
        '        IF      (HFETA=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (HFETA=2)' +
        '  THEN HORA='#39'H08_30'#39'; ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      
        '        ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (HFETA=5)' +
        '  THEN HORA='#39'H10_00'#39'; ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      
        '        ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (HFETA=8)' +
        '  THEN HORA='#39'H11_30'#39'; ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      
        '        ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39'; ELSE IF (HFETA=11' +
        ') THEN HORA='#39'H13_00'#39'; ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      
        '        ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39'; ELSE IF (HFETA=14' +
        ') THEN HORA='#39'H14_30'#39'; ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      
        '        ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39'; ELSE IF (HFETA=17' +
        ') THEN HORA='#39'H16_00'#39'; ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      
        '        ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39'; ELSE IF (HFETA=20' +
        ') THEN HORA='#39'H17_30'#39'; ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      
        '        ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39'; ELSE IF (HFETA=23' +
        ') THEN HORA='#39'H19_00'#39'; ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      
        '        ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39'; ELSE IF (HFETA=26' +
        ') THEN HORA='#39'H20_30'#39';'
      ''
      '        IF (HORA<>HORA_ANT) THEN ORDR=0;'
      
        '        TERA_BUIT='#39#39'; C_TERA_BUIT='#39#39'; COL_BUIT='#39#39'; TPRINT='#39#39'; TE' +
        'RA_BUIT_ANT='#39#39'; C_TERA_BUIT_ANT='#39#39'; COL_BUIT_ANT='#39#39';'
      '        IF (ORDR=0) THEN ORDR=1; ELSE ORDR=ORDR+1;'
      ''
      
        '        /* A les hores anteriors a alguna hora amb activitat, ca' +
        'l afegir BUITS de l'#39'activitat+terapeuta */'
      
        '        IF  ( (F_MODULO(HFETA,2)=1)                   /* Buits n' +
        'oms en hores en punt */'
      
        '        AND   ((DOW<>3) OR (HFETA<>11)) ) THEN        /* Dimecre' +
        's de 13 a 14 tenen reuni => no mostrar buits */'
      '        BEGIN'
      '          MAXPAC=NULL;'
      
        '          FOR SELECT DISTINCT H.C_ACTIVITAT, H.C_METGE, M.METGE,' +
        ' CAST(A.N_CODI2 AS INTEGER) FROM HORARIGYM H'
      '          JOIN METGES        M ON H.C_METGE=M.CODI'
      
        '          JOIN CODICAMPSALFA A ON H.C_ACTIVITAT=A.C_CODI AND A.T' +
        'IPUSCODI='#39'ACTIVITATFI'#39
      
        '          WHERE H.C_ACTIVITAT STARTING WITH '#39'NPC'#39' AND (NOT H.C_A' +
        'CTIVITAT LIKE '#39'*'#39') AND H.DATAFI IS NULL AND H.HORA=:HFETA'
      '          ORDER BY H.C_ACTIVITAT, H.C_METGE'
      '          INTO :ACT_BUIT, :C_TERA_BUIT, :TERA_BUIT, :MAXPAC'
      '          DO BEGIN'
      '            ACT_BUIT_FIC=ACT_BUIT||'#39'*'#39';'
      '            IF (MAXPAC>0) THEN'
      '            BEGIN'
      '              CONTA_BUIT=NULL; CONTA_BUIT2=NULL;'
      ''
      
        '              IF ((ACT_BUIT='#39'NPC'#39') OR (ACT_BUIT='#39'NPC_HIDRO'#39')) TH' +
        'EN'
      '              BEGIN'
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT AND T.C_FISIOTERAPEUTA=:C_TERA_BUIT'
      
        '                  JOIN METGES      M  ON T.C_FISIOTERAPEUTA = M.' +
        'CODI AND M.C_GRUP='#39'FI'#39
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  WHERE (A.C_ACTIVITAT IN ('#39'NPC'#39','#39'NPC*'#39','#39'NPC_HID' +
        'RO'#39','#39'NPC_HIDRO*'#39'))'
      '                  AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT2;'
      '                  IF (CONTA_BUIT2 IS NULL) THEN CONTA_BUIT2=0;'
      '                  '
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT AND T.C_TERAPEUTA=:C_TERA_BUIT'
      
        '                  JOIN METGES      M  ON T.C_TERAPEUTA = M.CODI ' +
        'AND M.C_GRUP='#39'FI'#39
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  WHERE (A.C_ACTIVITAT IN ('#39'NPC'#39','#39'NPC*'#39','#39'NPC_HID' +
        'RO'#39','#39'NPC_HIDRO*'#39'))'
      '                  AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT;'
      
        '                  IF (CONTA_BUIT IS NULL) THEN CONTA_BUIT=CONTA_' +
        'BUIT2;'
      
        '                                          ELSE CONTA_BUIT=CONTA_' +
        'BUIT+CONTA_BUIT2;'
      '              END'
      '              ELSE BEGIN'
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT'
      
        '                                     AND (T.C_FISIOTERAPEUTA=:C_' +
        'TERA_BUIT OR T.C_FISIO_AR=:C_TERA_BUIT OR T.C_TERAPEUTA=:C_TERA_' +
        'BUIT OR T.C_LOGOPEDA=:C_TERA_BUIT OR'
      
        '                                          T.C_PSICOLEG=:C_TERA_B' +
        'UIT OR T.C_MUSICOTERAPEUTA=:C_TERA_BUIT)'
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                  WHERE (A.C_ACTIVITAT=:ACT_BUIT OR A.C_ACTIVITA' +
        'T=:ACT_BUIT_FIC) AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT;'
      '                  IF (CONTA_BUIT IS NULL) THEN CONTA_BUIT=0;'
      '              END;'
      ''
      '              IF (CONTA_BUIT<MAXPAC) THEN'
      '              BEGIN                        /*:ACT_BUIT_FIC;*/'
      
        '                ACTIVITAT=:ACT_BUIT; ACT_FICT=NULL; TERAPEUTA=:T' +
        'ERA_BUIT; C_TERAPEUTA=:C_TERA_BUIT; TPRINT=NULL; HC='#39' '#39'; ORDRE=O' +
        'RDR;'
      
        '                IF      (ACT_BUIT='#39'NPC'#39')       THEN COLUMNA=:ACT' +
        '_BUIT||'#39'_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_DIRIG'#39') THEN COLUMNA='#39'DIR' +
        'IG_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_HIDRO'#39') THEN COLUMNA='#39'HID' +
        'RO_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_TO'#39')    THEN COLUMNA='#39'TO_' +
        #39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_LOGO'#39')  THEN COLUMNA='#39'LOG' +
        'O_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_MT'#39')    THEN COLUMNA='#39'MT_' +
        #39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_NPS'#39')   THEN COLUMNA='#39'NPS' +
        '_'#39'||C_TERA_BUIT;'
      ''
      
        '                IF ((DOW<>3) OR (HFETA<>11)) THEN  /* Dimecres d' +
        'e 13 a 14 tenen reuni => no mostrar buits */'
      '                SUSPEND;'
      '              END'
      '            END'
      '          END'
      '        END'
      ''
      
        '        ACTIVITAT=NULL; ACT_FICT=NULL; TERAPEUTA=NULL; C_TERAPEU' +
        'TA=NULL; COLUMNA=NULL; TPRINT=NULL; HC=NULL; ORDRE=NULL;'
      '        SUSPEND; HFETA=HFETA+1; HORA_ANT=HORA;'
      '    END'
      '    IF (HFETA=H) THEN'
      '    BEGIN'
      
        '        IF      (H=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (H=2)  THEN H' +
        'ORA='#39'H08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (H=5)  THEN H' +
        'ORA='#39'H10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (H=8)  THEN H' +
        'ORA='#39'H11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'H12_30'#39'; ELSE IF (H=11) THEN H' +
        'ORA='#39'H13_00'#39'; ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'H14_00'#39'; ELSE IF (H=14) THEN H' +
        'ORA='#39'H14_30'#39'; ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'H15_30'#39'; ELSE IF (H=17) THEN H' +
        'ORA='#39'H16_00'#39'; ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'H17_00'#39'; ELSE IF (H=20) THEN H' +
        'ORA='#39'H17_30'#39'; ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'H18_30'#39'; ELSE IF (H=23) THEN H' +
        'ORA='#39'H19_00'#39'; ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'H20_00'#39'; ELSE IF (H=26) THEN H' +
        'ORA='#39'H20_30'#39';'
      ''
      
        '        IF ((H=H_ANT) AND (ACTI=ACTI_ANT)) THEN ORDR=ORDR+1; ELS' +
        'E ORDR=1;'
      ''
      
        '        /* A les hores anteriors a alguna hora amb activitat, ca' +
        'l afegir BUITS de l'#39'activitat+terapeuta */'
      
        '        IF  ((F_MODULO(HFETA,2)=1)                   /* Buits no' +
        'ms en hores en punt */'
      
        '        AND  ((DOW<>3) OR (HFETA<>11)) ) THEN        /* Dimecres' +
        ' de 13 a 14 tenen reuni => no mostrar buits */'
      '        BEGIN'
      '          MAXPAC=NULL;'
      
        '          FOR SELECT DISTINCT H.C_ACTIVITAT, H.C_METGE, M.METGE,' +
        ' CAST(A.N_CODI2 AS INTEGER) FROM HORARIGYM H'
      '          JOIN METGES M ON H.C_METGE=M.CODI'
      
        '          JOIN CODICAMPSALFA A ON H.C_ACTIVITAT=A.C_CODI AND A.T' +
        'IPUSCODI='#39'ACTIVITATFI'#39
      
        '          WHERE H.C_ACTIVITAT STARTING WITH '#39'NPC'#39' AND (NOT H.C_A' +
        'CTIVITAT LIKE '#39'*'#39') AND H.DATAFI IS NULL AND H.HORA=:HFETA'
      '          ORDER BY H.C_ACTIVITAT, H.C_METGE'
      '          INTO :ACT_BUIT, :C_TERA_BUIT, :TERA_BUIT, :MAXPAC'
      '          DO BEGIN'
      '            ACT_BUIT_FIC=ACT_BUIT||'#39'*'#39';'
      '            IF (MAXPAC>0) THEN'
      '            BEGIN'
      '              CONTA_BUIT=NULL;'
      ''
      
        '              IF ((ACT_BUIT='#39'NPC'#39') OR (ACT_BUIT='#39'NPC_HIDRO'#39')) TH' +
        'EN'
      '              BEGIN'
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT AND T.C_FISIOTERAPEUTA=:C_TERA_BUIT'
      
        '                  JOIN METGES      M  ON T.C_FISIOTERAPEUTA=M.CO' +
        'DI AND M.C_GRUP='#39'FI'#39
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  WHERE (A.C_ACTIVITAT IN ('#39'NPC'#39','#39'NPC*'#39','#39'NPC_HID' +
        'RO'#39','#39'NPC_HIDRO*'#39'))'
      '                  AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT2;'
      '                  IF (CONTA_BUIT2 IS NULL) THEN CONTA_BUIT2=0;'
      '                  '
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT AND T.C_TERAPEUTA=:C_TERA_BUIT'
      
        '                  JOIN METGES      M  ON T.C_TERAPEUTA=M.CODI AN' +
        'D M.C_GRUP='#39'FI'#39
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  WHERE (A.C_ACTIVITAT IN ('#39'NPC'#39','#39'NPC*'#39','#39'NPC_HID' +
        'RO'#39','#39'NPC_HIDRO*'#39'))'
      '                  AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT;'
      
        '                  IF (CONTA_BUIT IS NULL) THEN CONTA_BUIT=CONTA_' +
        'BUIT2;'
      
        '                                          ELSE CONTA_BUIT=CONTA_' +
        'BUIT+CONTA_BUIT2;'
      '              END'
      '              ELSE BEGIN'
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT'
      
        '                                     AND (T.C_FISIOTERAPEUTA=:C_' +
        'TERA_BUIT OR T.C_FISIO_AR=:C_TERA_BUIT OR T.C_TERAPEUTA=:C_TERA_' +
        'BUIT OR T.C_LOGOPEDA=:C_TERA_BUIT OR'
      
        '                                          T.C_PSICOLEG=:C_TERA_B' +
        'UIT OR T.C_MUSICOTERAPEUTA=:C_TERA_BUIT)'
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                  WHERE (A.C_ACTIVITAT=:ACT_BUIT OR A.C_ACTIVITA' +
        'T=:ACT_BUIT_FIC) AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT;'
      '                  IF (CONTA_BUIT IS NULL) THEN CONTA_BUIT=0;'
      '              END;'
      ''
      '              IF (CONTA_BUIT<MAXPAC) THEN'
      '              BEGIN'
      
        '                ACTIVITAT=:ACT_BUIT; ACT_FICT=NULL;/*:ACT_BUIT_F' +
        'IC;*/ TERAPEUTA=:TERA_BUIT; C_TERAPEUTA=:C_TERA_BUIT; TPRINT=NUL' +
        'L; HC='#39' '#39'; ORDRE=ORDR;'
      
        '                IF      (ACT_BUIT='#39'NPC'#39')       THEN COLUMNA=:ACT' +
        '_BUIT||'#39'_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_DIRIG'#39') THEN COLUMNA='#39'DIR' +
        'IG_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_HIDRO'#39') THEN COLUMNA='#39'HID' +
        'RO_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_TO'#39')    THEN COLUMNA='#39'TO_' +
        #39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_LOGO'#39')  THEN COLUMNA='#39'LOG' +
        'O_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_MT'#39')    THEN COLUMNA='#39'MT_' +
        #39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_NPS'#39')   THEN COLUMNA='#39'NPS' +
        '_'#39'||C_TERA_BUIT;'
      ''
      
        '                IF ((DOW<>3) OR (HFETA<>11)) THEN  /* Dimecres d' +
        'e 13 a 14 tenen reuni => no mostrar buits */'
      '                SUSPEND;'
      '              END'
      '            END'
      '          END'
      '        END'
      ''
      
        '        TERA_BUIT='#39#39'; C_TERA_BUIT='#39#39'; COL_BUIT='#39#39'; TERA_BUIT_ANT' +
        '='#39#39'; C_TERA_BUIT_ANT='#39#39'; COL_BUIT_ANT='#39#39';'
      '        IF ((H=H_ANT) AND (ACTI=ACTI_ANT) AND (TERA=TERA_ANT))'
      '        THEN TPRINT='#39#39';'
      '        ELSE BEGIN'
      '          IF ((TERA=TERA_ANT) AND (J<>0)) THEN TPRINT='#39#39';'
      '                                          ELSE TPRINT=TERA;'
      '        END'
      
        '        ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPEUTA=TERA; C_TERAPEU' +
        'TA=C_TERA; COLUMNA=COL; HC=PACI; ORDRE=ORDR;'
      '        SUSPEND; HORA_ANT=HORA;'
      '    END'
      
        '    H_ANT=H; ACTI_ANT=ACTI; ACTF_ANT=ACTF; TERA_ANT=TERA; C_TERA' +
        '_ANT=C_TERA; COL_ANT=COL;'
      '  END'
      ''
      '  WHILE (HFETA<=HFIN) DO'
      '  BEGIN'
      
        '    IF      (HFETA=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (HFETA=2)  TH' +
        'EN HORA='#39'H08_30'#39'; ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      
        '    ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (HFETA=5)  TH' +
        'EN HORA='#39'H10_00'#39'; ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      
        '    ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (HFETA=8)  TH' +
        'EN HORA='#39'H11_30'#39'; ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      
        '    ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39'; ELSE IF (HFETA=11) TH' +
        'EN HORA='#39'H13_00'#39'; ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      
        '    ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39'; ELSE IF (HFETA=14) TH' +
        'EN HORA='#39'H14_30'#39'; ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      
        '    ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39'; ELSE IF (HFETA=17) TH' +
        'EN HORA='#39'H16_00'#39'; ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      
        '    ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39'; ELSE IF (HFETA=20) TH' +
        'EN HORA='#39'H17_30'#39'; ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      
        '    ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39'; ELSE IF (HFETA=23) TH' +
        'EN HORA='#39'H19_00'#39'; ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      
        '    ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39'; ELSE IF (HFETA=26) TH' +
        'EN HORA='#39'H20_30'#39';'
      ''
      
        '    TERA_BUIT='#39#39'; C_TERA_BUIT='#39#39'; COL_BUIT='#39#39'; TERA_BUIT_ANT='#39#39';' +
        ' C_TERA_BUIT_ANT='#39#39'; COL_BUIT_ANT='#39#39';'
      '    IF (HORA=HORA_ANT) THEN ORDR=ORDR+1; ELSE ORDR=1;'
      ''
      
        '    /* A les hores anteriors a alguna hora amb activitat, cal af' +
        'egir BUITS de l'#39'activitat+terapeuta */'
      
        '    IF  ((F_MODULO(HFETA,2)=1)                   /* Buits noms e' +
        'n hores en punt */'
      
        '    AND  ((DOW<>3) OR (HFETA<>11)) ) THEN        /* Dimecres de ' +
        '13 a 14 tenen reuni => no mostrar buits */'
      '    BEGIN'
      '      MAXPAC=NULL;'
      
        '      FOR SELECT DISTINCT H.C_ACTIVITAT, H.C_METGE, M.METGE, CAS' +
        'T(A.N_CODI2 AS INTEGER) FROM HORARIGYM H'
      '      JOIN METGES M ON H.C_METGE=M.CODI'
      
        '      JOIN CODICAMPSALFA A ON H.C_ACTIVITAT=A.C_CODI AND A.TIPUS' +
        'CODI='#39'ACTIVITATFI'#39
      
        '      WHERE H.C_ACTIVITAT STARTING WITH '#39'NPC'#39' AND (NOT H.C_ACTIV' +
        'ITAT LIKE '#39'*'#39') AND H.DATAFI IS NULL AND H.HORA=:HFETA'
      '      ORDER BY H.C_ACTIVITAT, H.C_METGE'
      '      INTO :ACT_BUIT, :C_TERA_BUIT, :TERA_BUIT, :MAXPAC'
      '      DO BEGIN'
      '        ACT_BUIT_FIC=ACT_BUIT||'#39'*'#39';'
      '        IF (MAXPAC>0) THEN'
      '        BEGIN'
      '              CONTA_BUIT=NULL;'
      ''
      
        '              IF ((ACT_BUIT='#39'NPC'#39') OR (ACT_BUIT='#39'NPC_HIDRO'#39')) TH' +
        'EN'
      '              BEGIN'
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT AND T.C_FISIOTERAPEUTA=:C_TERA_BUIT'
      
        '                  JOIN METGES      M  ON T.C_FISIOTERAPEUTA=M.CO' +
        'DI AND M.C_GRUP='#39'FI'#39
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  WHERE (A.C_ACTIVITAT IN ('#39'NPC'#39','#39'NPC*'#39','#39'NPC_HID' +
        'RO'#39','#39'NPC_HIDRO*'#39'))'
      '                  AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT2;'
      '                  IF (CONTA_BUIT2 IS NULL) THEN CONTA_BUIT2=0;'
      '                  '
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT AND T.C_TERAPEUTA=:C_TERA_BUIT'
      
        '                  JOIN METGES      M  ON T.C_TERAPEUTA=M.CODI AN' +
        'D M.C_GRUP='#39'FI'#39
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  WHERE (A.C_ACTIVITAT IN ('#39'NPC'#39','#39'NPC*'#39','#39'NPC_HID' +
        'RO'#39','#39'NPC_HIDRO*'#39'))'
      '                  AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT;'
      
        '                  IF (CONTA_BUIT IS NULL) THEN CONTA_BUIT=CONTA_' +
        'BUIT2;'
      
        '                                          ELSE CONTA_BUIT=CONTA_' +
        'BUIT+CONTA_BUIT2;'
      '              END'
      '              ELSE BEGIN'
      '                  SELECT COUNT(*) FROM AGENDAPACIENT A'
      
        '                  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRAC' +
        'TAMENT'
      
        '                                     AND (T.C_FISIOTERAPEUTA=:C_' +
        'TERA_BUIT OR T.C_FISIO_AR=:C_TERA_BUIT OR T.C_TERAPEUTA=:C_TERA_' +
        'BUIT OR T.C_LOGOPEDA=:C_TERA_BUIT OR'
      
        '                                          T.C_PSICOLEG=:C_TERA_B' +
        'UIT OR T.C_MUSICOTERAPEUTA=:C_TERA_BUIT)'
      
        '                                     /*AND (T.DATA_INGRES<="TODA' +
        'Y"+:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY"+:DIA) ' +
        'no cal pq es treu c_tractament de AGENDAPACIENT al ser ALTA*/'
      
        '                  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRES' +
        'TACIO AND DP.C_DRET='#39'P117'#39
      
        '                  WHERE (A.C_ACTIVITAT=:ACT_BUIT OR A.C_ACTIVITA' +
        'T=:ACT_BUIT_FIC) AND A.HORA=:HFETA'
      
        '                  AND (A.DATAI <=:DATA_ AND (A.DATAF IS NULL OR ' +
        '(A.DATAF>:DATA_))) AND A.DIA_SEMANA=:DOW'
      
        '                                                           /* Hi' +
        ' havia A.DATAF>="TODAY"+:DIA perqu agafava les activitats finali' +
        'tzades avui*/'
      '                  INTO :CONTA_BUIT;'
      '                  IF (CONTA_BUIT IS NULL) THEN CONTA_BUIT=0;'
      '              END;'
      ''
      '              IF (CONTA_BUIT<MAXPAC) THEN'
      '              BEGIN'
      
        '                ACTIVITAT=:ACT_BUIT; ACT_FICT=NULL;/*:ACT_BUIT_F' +
        'IC;*/ TERAPEUTA=:TERA_BUIT; C_TERAPEUTA=:C_TERA_BUIT; TPRINT=NUL' +
        'L; HC='#39' '#39'; ORDRE=ORDR;'
      
        '                IF      (ACT_BUIT='#39'NPC'#39')       THEN COLUMNA=:ACT' +
        '_BUIT||'#39'_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_DIRIG'#39') THEN COLUMNA='#39'DIR' +
        'IG_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_HIDRO'#39') THEN COLUMNA='#39'HID' +
        'RO_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_TO'#39')    THEN COLUMNA='#39'TO_' +
        #39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_LOGO'#39')  THEN COLUMNA='#39'LOG' +
        'O_'#39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_MT'#39')    THEN COLUMNA='#39'MT_' +
        #39'||C_TERA_BUIT;'
      
        '                ELSE IF (ACT_BUIT='#39'NPC_NPS'#39')   THEN COLUMNA='#39'NPS' +
        '_'#39'||C_TERA_BUIT;'
      ''
      
        '                IF ((DOW<>3) OR (HFETA<>11)) THEN  /* Dimecres d' +
        'e 13 a 14 tenen reuni => no mostrar buits */'
      '                SUSPEND;'
      '              END'
      '        END'
      '      END'
      '    END'
      ''
      
        '    ACTIVITAT=NULL; ACT_FICT=NULL; TERAPEUTA=NULL; C_TERAPEUTA=N' +
        'ULL; COLUMNA=NULL; TPRINT=NULL; HC=NULL; ORDRE=NULL; SUSPEND;'
      '    HFETA=HFETA+1; HORA_ANT=HORA;'
      '  END'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 617
    Top = 340
  end
  object NPCList: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NPCList'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1), DIA INTEGER)  /* DIA: -' +
        '1:AHIR, 0:AVUI, 1:DEMA */'
      'RETURNS (HORA        VARCHAR(6),'
      '         ACTIVITAT   VARCHAR(15),'
      '         ACT_FICT    VARCHAR(16),'
      '         TERAPEUTA   VARCHAR(20),'
      '         C_TERAPEUTA VARCHAR(5),'
      '         COLUMNA     VARCHAR(11),'
      '         TPRINT      VARCHAR(20),  /* terapeuta a pintar */'
      '         HC          VARCHAR(92),'
      '         ORDRE       INTEGER,'
      '         ORDRENPC    INTEGER'
      '         )'
      'AS'
      'BEGIN'
      '    ORDRENPC=1;'
      ''
      
        '    FOR SELECT DISTINCT HORA,ACTIVITAT,ACT_FICT,TERAPEUTA,C_TERA' +
        'PEUTA,COLUMNA,TPRINT,HC,ORDRE'
      '    FROM P_TRACTAMENTS_LISTNPC(:C_ACTIVITAT,:OPCIO,:DIA)'
      '    WHERE ORDRE IS NOT NULL'
      '    ORDER BY HORA,TERAPEUTA,ORDRE,HC'
      
        '    INTO :HORA,:ACTIVITAT,:ACT_FICT,:TERAPEUTA,:C_TERAPEUTA,:COL' +
        'UMNA,:TPRINT,:HC,:ORDRE'
      '    DO BEGIN'
      '        IF ((TPRINT<>'#39#39') OR (HC='#39' '#39')) THEN ORDRENPC=1;'
      '                                      ELSE ORDRENPC=ORDRENPC+1;'
      '        IF (TERAPEUTA IS NULL) THEN ORDRENPC=NULL;'
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = HorariGym
    Dic1Name = 'HorariGym'
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
    Left = 619
    Top = 388
  end
  object MultiSens: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'MultiSens'
    ForceNombreDB = False
    Body.Strings = (
      '(ACTIVITAT VARCHAR(15))'
      'RETURNS (HORA       INTEGER,'
      '         DIA_SEMANA VARCHAR(3),'
      '         PACIENT    VARCHAR(92),'
      '         CF         VARCHAR(2),'
      '         PRESTA     CHAR(4),'
      '         ACT        VARCHAR(15),'
      '         ORDRE      INTEGER)'
      'AS'
      ' DECLARE VARIABLE ACTF VARCHAR(15);'
      ' DECLARE VARIABLE H    SMALLINT;'
      ' DECLARE VARIABLE DANT INTEGER;'
      ' DECLARE VARIABLE DIAS INTEGER;'
      ' DECLARE VARIABLE HC   VARCHAR(10);'
      ' DECLARE VARIABLE NOM  VARCHAR(80);'
      'BEGIN'
      '  ACTF=ACTIVITAT||'#39'*'#39';'
      ''
      
        ' /* Hauria de ser de 1(8h) a 26(20:30h) per'#242' nom'#233's necessitem de' +
        ' 3(9h) a 20(17:30h)'
      '    i a les 13(14h) i 14(14:30h) no mirar res */'
      ' H=3;'
      ' WHILE (H<=20) DO'
      ' BEGIN'
      '     IF ((H<>13) AND (H<>14)) THEN'
      '     BEGIN'
      '         DANT=0; ORDRE=1; HORA=H;'
      
        '         FOR SELECT DISTINCT A.DIA_SEMANA,A.C_HISTORIA,F.NOMCOMP' +
        'LET,T.C_CENTREFAC,T.C_PRESTACIO,A.C_ACTIVITAT'
      
        '         FROM AGENDAPACIENT A LEFT JOIN FILIACIO F ON A.C_HISTOR' +
        'IA=F.NUM_HIST'
      
        '         JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND' +
        ' (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY")'
      
        '         WHERE (A.C_ACTIVITAT=:ACTIVITAT OR A.C_ACTIVITAT=:ACTF)' +
        ' AND (A.DATAF IS NULL OR A.DATAF>"TODAY") AND A.HORA=:H'
      '         ORDER BY A.DIA_SEMANA,F.NOMCOMPLET'
      '         INTO :DIAS,:HC,:NOM,:CF,:PRESTA,:ACT'
      '         DO BEGIN'
      '             PACIENT=HC||'#39' '#39'||NOM;'
      '             IF (DANT=DIAS) THEN ORDRE=ORDRE+1;'
      '                            ELSE ORDRE=1;'
      '             IF      (DIAS=1) THEN DIA_SEMANA='#39'DLL'#39';'
      '             ELSE IF (DIAS=2) THEN DIA_SEMANA='#39'DM'#39';'
      '             ELSE IF (DIAS=3) THEN DIA_SEMANA='#39'DX'#39';'
      '             ELSE IF (DIAS=4) THEN DIA_SEMANA='#39'DJ'#39';'
      '             ELSE IF (DIAS=5) THEN DIA_SEMANA='#39'DV'#39';'
      '             SUSPEND;'
      '             DANT=DIAS;'
      '         END;'
      '     END;'
      '     H=H+1;'
      ' END;'
      'END')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic1Name = 'AgendaPacient_NO_FER_CHECK'
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
    Left = 376
    Top = 160
  end
  object NPCValora: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador de registre'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora inici'
        NombreDB = 'HORA_INI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora final'
        NombreDB = 'HORA_FIN'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'ESTAT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Estat'
        zType = tcIB_Smallint
        zNotNull = False
        zDefault = '1'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ingressa'
        NombreDB = 'INGRESSA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari ingres'
        NombreDB = 'COMENT_INGRES'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data preingres'
        NombreDB = 'DATA_PREINGRES'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora preingres'
        NombreDB = 'HORA_PREINGRES'
        Longitud = 5
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
          'Identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Hist'#242'ria cl'#237'nica')
        CopiarOrigen.Strings = (
          'Hist'#242'ria cl'#237'nica')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Estat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat')
        CopiarOrigen.Strings = (
          'Estat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'NPCVALORA.ESTAT'#39
      end>
    Nombre = 'NPCValora'
    NombreTabla = 'NPCValora'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Hist'#242'ria cl'#237'nica'
      'Data'
      'Hora inici'
      'Hora final'
      'Estat'
      'Comentari ingres')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 512
    Top = 59
  end
  object ValoraList: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE)'
      'RETURNS (DOW     INTEGER,'
      '         HORA    VARCHAR(5),'
      '         HC      INTEGER,'
      '         NOM     VARCHAR(90),'
      '         ORDRE   INTEGER,'
      '         ID      INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE HANT  VARCHAR(5);'
      '  DECLARE VARIABLE DANT  INTEGER;'
      '  DECLARE VARIABLE H     INTEGER;'
      '  DECLARE VARIABLE PRINT SMALLINT;'
      'BEGIN'
      
        '  /* 1:  Result:='#39'08:00'#39';  8:  Result:='#39'11:30'#39';   15: Result:='#39'1' +
        '5:00'#39';   22: Result:='#39'18:30'#39';'
      
        '     2:  Result:='#39'08:30'#39';  9:  Result:='#39'12:00'#39';   16: Result:='#39'1' +
        '5:30'#39';   23: Result:='#39'19:00'#39';'
      
        '     3:  Result:='#39'09:00'#39';  10: Result:='#39'12:30'#39';   17: Result:='#39'1' +
        '6:00'#39';   24: Result:='#39'19:30'#39';'
      
        '     4:  Result:='#39'09:30'#39';  11: Result:='#39'13:00'#39';   18: Result:='#39'1' +
        '6:30'#39';   25: Result:='#39'20:00'#39';'
      
        '     5:  Result:='#39'10:00'#39';  12: Result:='#39'13:30'#39';   19: Result:='#39'1' +
        '7:00'#39';   26: Result:='#39'20:30'#39';'
      
        '     6:  Result:='#39'10:30'#39';  13: Result:='#39'14:00'#39';   20: Result:='#39'1' +
        '7:30'#39';'
      
        '     7:  Result:='#39'11:00'#39';  14: Result:='#39'14:30'#39';   21: Result:='#39'1' +
        '8:00'#39';                          */'
      '     '
      '  H=3; /* Faig nom'#233's de 9h a 19h */'
      '  WHILE (H<=23) DO'
      '  BEGIN'
      '    IF      (H=1)  THEN HORA='#39'08:00'#39';'
      '    ELSE IF (H=2)  THEN HORA='#39'08:30'#39';'
      '    ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      '    ELSE IF (H=4)  THEN HORA='#39'09:30'#39';'
      '    ELSE IF (H=5)  THEN HORA='#39'10:00'#39';'
      '    ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      '    ELSE IF (H=7)  THEN HORA='#39'11:00'#39';'
      '    ELSE IF (H=8)  THEN HORA='#39'11:30'#39';'
      '    ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      '    ELSE IF (H=10) THEN HORA='#39'12:30'#39';'
      '    ELSE IF (H=11) THEN HORA='#39'13:00'#39';'
      '    ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      '    ELSE IF (H=13) THEN HORA='#39'14:00'#39';'
      '    ELSE IF (H=14) THEN HORA='#39'14:30'#39';'
      '    ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      '    ELSE IF (H=16) THEN HORA='#39'15:30'#39';'
      '    ELSE IF (H=17) THEN HORA='#39'16:00'#39';'
      '    ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      '    ELSE IF (H=19) THEN HORA='#39'17:00'#39';'
      '    ELSE IF (H=20) THEN HORA='#39'17:30'#39';'
      '    ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      '    ELSE IF (H=22) THEN HORA='#39'18:30'#39';'
      '    ELSE IF (H=23) THEN HORA='#39'19:00'#39';'
      '    ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      '    ELSE IF (H=25) THEN HORA='#39'20:00'#39';'
      '    ELSE IF (H=26) THEN HORA='#39'20:30'#39';'
      ''
      '    PRINT=0;DOW=NULL;HC=NULL;NOM=NULL;HANT=NULL;DANT=0;ORDRE=1;'
      
        '    FOR SELECT F_DAYOFWEEK(N.DATA),N.C_HISTORIA,F.NOMCOMPLET||'#39' ' +
        '('#39'||N.HORA_FIN||'#39')'#39',N.ID'
      '    FROM NPCVALORA N JOIN FILIACIO F ON N.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE N.DATA BETWEEN :DATAI AND :DATAF AND N.ESTAT=1 AND N.H' +
        'ORA_INI=:HORA'
      '    ORDER BY 1,2,3     /* ORDER BY 1,2,4 */'
      '    INTO :DOW,:HC,:NOM,:ID'
      '    DO BEGIN'
      '        IF ((HORA=HANT) AND (DANT=DOW)) THEN ORDRE=ORDRE+1;'
      '                                        ELSE ORDRE=1;'
      '        SUSPEND;'
      '        HANT=HORA; DANT=DOW; PRINT=1;'
      '    END;'
      '    IF (PRINT=0) THEN SUSPEND;'
      '    H=H+1;'
      '  END;'
      'END')
    Dic1 = NPCValora
    Dic1Name = 'NPCValora'
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
    Left = 616
    Top = 8
  end
  object NPCHorari: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NPCHorari'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HORA       INTEGER,'
      '         DIA_SEMANA VARCHAR(3),'
      '         PACIENT    VARCHAR(92),'
      '         CF         VARCHAR(2),'
      '         PRESTA     CHAR(4),'
      '         ACT        VARCHAR(15),'
      '         ORDRE      INTEGER)'
      'AS'
      ' DECLARE VARIABLE AANT      VARCHAR(15);'
      ' DECLARE VARIABLE H         SMALLINT;'
      ' DECLARE VARIABLE DANT      INTEGER;'
      ' DECLARE VARIABLE DIAS      INTEGER;'
      ' DECLARE VARIABLE HC        VARCHAR(10);'
      ' DECLARE VARIABLE NOM       VARCHAR(80);'
      ' DECLARE VARIABLE TEORIC    INTEGER;'
      ' DECLARE VARIABLE PRACTIC   INTEGER;'
      ' DECLARE VARIABLE I         INTEGER;'
      ' DECLARE VARIABLE CFANT     VARCHAR(2);'
      ' DECLARE VARIABLE PANT      CHAR(4);'
      ' DECLARE VARIABLE ACTAUX    VARCHAR(15);'
      ' DECLARE VARIABLE HAUX      INTEGER;'
      ' DECLARE VARIABLE ACTIVITAT VARCHAR(15);'
      ' DECLARE VARIABLE NPC       SMALLINT;'
      ' DECLARE VARIABLE NPC_TO    SMALLINT;'
      ' DECLARE VARIABLE NPC_DIRIG SMALLINT;'
      ' DECLARE VARIABLE NPC_HIDRO SMALLINT;'
      ' DECLARE VARIABLE NPC_LOGO  SMALLINT;'
      ' DECLARE VARIABLE NPC_NPS   SMALLINT;'
      ' DECLARE VARIABLE NPC_MT    SMALLINT;'
      ' DECLARE VARIABLE HMAX      SMALLINT;'
      ' DECLARE VARIABLE NPC_ANDA  SMALLINT;'
      ' DECLARE VARIABLE NPC_ARME  SMALLINT;'
      'BEGIN'
      '  SELECT MAX(HORA) FROM HORARIGYM'
      
        '  WHERE (C_ACTIVITAT STARTING WITH '#39'NPC'#39' AND NOT (C_ACTIVITAT LI' +
        'KE '#39'%*%'#39'))'
      '  INTO :HMAX;'
      ''
      
        '  PRACTIC=1; NPC=0; NPC_DIRIG=0; NPC_HIDRO=0; NPC_LOGO=0; NPC_TO' +
        '=0; NPC_NPS=0; NPC_MT=0; NPC_ANDA=0; NPC_ARME=0;'
      
        '  FOR SELECT DISTINCT A.DIA_SEMANA,A.C_HISTORIA,F.NOMCOMPLET,T.C' +
        '_CENTREFAC,T.C_PRESTACIO,A.C_ACTIVITAT,MIN(A.HORA)'
      
        '  FROM AGENDAPACIENT A JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIS' +
        'T'
      
        '  JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T.DAT' +
        'A_ALTA IS NULL OR T.DATA_ALTA>="TODAY")'
      
        '  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP.C_D' +
        'RET='#39'P117'#39
      
        '  WHERE (A.C_ACTIVITAT STARTING WITH '#39'NPC'#39' AND NOT (A.C_ACTIVITA' +
        'T LIKE '#39'%*%'#39'))'
      '  AND   (A.DATAF IS NULL OR A.DATAF>"TODAY")'
      
        '  GROUP BY A.DIA_SEMANA,A.C_HISTORIA,F.NOMCOMPLET,T.C_CENTREFAC,' +
        'T.C_PRESTACIO,A.C_ACTIVITAT'
      '  ORDER BY 1,7,6,3 /* 13.10.2015: abans era ORDER BY 1,7,3 */'
      '  INTO :DIAS,:HC,:NOM,:CF,:PRESTA,:ACT,:HORA'
      '  DO BEGIN'
      '      IF      (AANT='#39'NPC'#39')        THEN NPC=1;'
      '      ELSE IF (AANT='#39'NPC_DIRIG'#39')  THEN NPC_DIRIG=1;'
      '      ELSE IF (AANT='#39'NPC_HIDRO'#39')  THEN NPC_HIDRO=1;'
      '      ELSE IF (AANT='#39'NPC_LOGO'#39')   THEN NPC_LOGO=1;'
      '      ELSE IF (AANT='#39'NPC_TO'#39')     THEN NPC_TO=1;'
      '      ELSE IF (AANT='#39'NPC_NPS'#39')    THEN NPC_NPS=1;'
      '      ELSE IF (AANT='#39'NPC_MT'#39')     THEN NPC_MT=1;'
      '      ELSE IF (AANT='#39'NPC_ANDAGO'#39') THEN NPC_ANDA=1;'
      '      ELSE IF (AANT='#39'NPC_ARMEO'#39')  THEN NPC_ARME=1;'
      ''
      
        '      /* Quan hi ha canvi de DIA_SEMANA, C_ACTIVITAT i HORA mire' +
        'm els buits */'
      '      IF ((DANT=DIAS) AND (H=HORA) AND (AANT=ACT)) THEN'
      '      BEGIN'
      '          PRACTIC=PRACTIC+1; TEORIC=0;'
      '      END;'
      '      ELSE BEGIN'
      
        '          IF ((F_MODULO(H,2)=1) AND ((DANT<>3) OR (H<>11))) THEN' +
        '  /* Buits nom'#233's en hores en punt i Dimecres de 13 a 14 no mostr' +
        'ar buits pq tenen reuni */'
      '          BEGIN'
      '            TEORIC = 0;'
      '            SELECT C.N_CODI2*COUNT(*)'
      '            FROM HORARIGYM H'
      
        '            JOIN CODICAMPSALFA C ON H.C_ACTIVITAT=C.C_CODI AND C' +
        '.TIPUSCODI='#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NULL'
      
        '            WHERE DATAFI IS NULL AND H.C_ACTIVITAT = :AANT AND H' +
        '.HORA = :H'
      '            GROUP BY C.N_CODI2'
      '            INTO :TEORIC;'
      ''
      '            IF (TEORIC IS NULL) THEN TEORIC=0;'
      ''
      '            I=PRACTIC;'
      '            WHILE (I<TEORIC) DO'
      '            BEGIN'
      '              /* Afegir registre '#39'BUIT'#39' */'
      '              CFANT=CF; PANT=PRESTA; ACTAUX=ACT; HAUX=HORA;'
      
        '              PACIENT=AANT; CF=NULL; PRESTA=NULL; ORDRE=ORDRE+1;' +
        ' ACT=AANT; HORA=H;'
      '              SUSPEND;'
      '              I=I+1;'
      '              CF=CFANT; PRESTA=PANT; ACT=ACTAUX; HORA=HAUX;'
      '            END;'
      '            /*PRACTIC=1;*/'
      '          END;'
      '          PRACTIC=1;'
      '      END;'
      ''
      
        '      /* Si canvia l'#39'hora, mirar si hi ha activitats que s'#39'han d' +
        #39'afegir com a BUITS */'
      '      IF ((DANT=DIAS) AND (H<>HORA)) THEN'
      '      BEGIN'
      
        '          IF ((F_MODULO(H,2)=1) AND ((DANT<>3) OR (H<>11))) THEN' +
        '  /* Buits noms en hores en punt i Dimecres de 13 a 14 no mostra' +
        'r buits pq tenen reuni */'
      '          BEGIN'
      '            TEORIC = 0;'
      '            FOR SELECT H.C_ACTIVITAT, C.N_CODI2*COUNT(*)'
      '            FROM HORARIGYM H'
      
        '            JOIN CODICAMPSALFA C ON H.C_ACTIVITAT=C.C_CODI AND C' +
        '.TIPUSCODI='#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NULL'
      '            WHERE DATAFI IS NULL AND (H.HORA=:H)'
      
        '            AND ((:NPC=0       AND H.C_ACTIVITAT='#39'NPC'#39'      )  O' +
        'R'
      
        '                 (:NPC_DIRIG=0 AND H.C_ACTIVITAT='#39'NPC_DIRIG'#39')  O' +
        'R'
      
        '                 (:NPC_HIDRO=0 AND H.C_ACTIVITAT='#39'NPC_HIDRO'#39')  O' +
        'R'
      
        '                 (:NPC_LOGO=0  AND H.C_ACTIVITAT='#39'NPC_LOGO'#39' )  O' +
        'R'
      
        '                 (:NPC_TO=0    AND H.C_ACTIVITAT='#39'NPC_TO'#39'   )  O' +
        'R'
      
        '                 (:NPC_NPS=0   AND H.C_ACTIVITAT='#39'NPC_NPS'#39'  )  O' +
        'R'
      
        '                 (:NPC_ANDA=0  AND H.C_ACTIVITAT='#39'NPC_ANDAGO'#39') O' +
        'R'
      
        '                 (:NPC_ARME=0  AND H.C_ACTIVITAT='#39'NPC_ARMEO'#39')  O' +
        'R'
      '                 (:NPC_MT=0    AND H.C_ACTIVITAT='#39'NPC_MT'#39'   ))'
      '            GROUP BY H.C_ACTIVITAT, C.N_CODI2'
      '            ORDER BY H.C_ACTIVITAT'
      '            INTO :ACTIVITAT, :TEORIC'
      '            DO BEGIN'
      '              IF (TEORIC IS NULL) THEN TEORIC=0;'
      ''
      '              I=0;'
      '              WHILE (I<TEORIC) DO'
      '              BEGIN'
      '                  /* Afegir registre '#39'BUIT'#39' */'
      '                  CFANT=CF; PANT=PRESTA; ACTAUX=ACT; HAUX=HORA;'
      
        '                  PACIENT=ACTIVITAT; CF=NULL; PRESTA=NULL; ORDRE' +
        '=ORDRE+1; ACT=ACTIVITAT; HORA=H;'
      '                  SUSPEND;'
      '                  I=I+1;'
      '                  CF=CFANT; PRESTA=PANT; ACT=ACTAUX; HORA=HAUX;'
      '              END;'
      '            END;'
      '          END;'
      ''
      
        '          NPC=0; NPC_DIRIG=0; NPC_HIDRO=0; NPC_LOGO=0; NPC_TO=0;' +
        ' NPC_NPS=0; NPC_MT=0; NPC_ANDA=0; NPC_ARME=0;'
      ''
      
        '          /* Si hi ha alguna hora en punt que no t cap activitat' +
        ', mirem si hi ha buits */'
      '          IF (HORA - H > 3) THEN'
      '          BEGIN'
      '            H=H+1; ORDRE=0;'
      '            WHILE (H<HORA) DO'
      '            BEGIN'
      
        '              IF ((F_MODULO(H,2)=1) AND ((DANT<>3) OR (H<>11))) ' +
        'THEN  /* Buits noms en hores en punt i Dimecres de 13 a 14 no mo' +
        'strar buits pq tenen reuni */'
      '              BEGIN'
      '                TEORIC = 0;'
      '                FOR SELECT H.C_ACTIVITAT, C.N_CODI2*COUNT(*)'
      '                FROM HORARIGYM H'
      
        '                JOIN CODICAMPSALFA C ON H.C_ACTIVITAT=C.C_CODI A' +
        'ND C.TIPUSCODI='#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NULL'
      '                WHERE DATAFI IS NULL AND (H.HORA=:H)'
      
        '                AND (H.C_ACTIVITAT STARTING WITH '#39'NPC'#39' AND NOT (' +
        'H.C_ACTIVITAT LIKE '#39'%*%'#39'))'
      '                GROUP BY H.C_ACTIVITAT, C.N_CODI2'
      '                ORDER BY H.C_ACTIVITAT'
      '                INTO :ACTIVITAT, :TEORIC'
      '                DO BEGIN'
      '                  IF (TEORIC IS NULL) THEN TEORIC=0;'
      ''
      '                  I=0;'
      '                  WHILE (I<TEORIC) DO'
      '                  BEGIN'
      '                      /* Afegir registre '#39'BUIT'#39' */'
      
        '                      CFANT=CF; PANT=PRESTA; ACTAUX=ACT; HAUX=HO' +
        'RA;'
      
        '                      PACIENT=ACTIVITAT; CF=NULL; PRESTA=NULL; O' +
        'RDRE=ORDRE+1; ACT=ACTIVITAT; HORA=H;'
      '                      SUSPEND;'
      '                      I=I+1;'
      
        '                      CF=CFANT; PRESTA=PANT; ACT=ACTAUX; HORA=HA' +
        'UX;'
      '                  END;'
      '                END;'
      '              END;'
      '              H=H+1; ORDRE=0;'
      '            END;'
      '          END;'
      '      END;'
      ''
      '      IF (DANT<>DIAS) THEN'
      '      BEGIN'
      
        '          NPC=0; NPC_DIRIG=0; NPC_HIDRO=0; NPC_LOGO=0; NPC_TO=0;' +
        ' NPC_NPS=0; NPC_MT=0; NPC_ANDA=0; NPC_ARME=0;'
      '      END;'
      ''
      '      PACIENT=HC||'#39' '#39'||NOM;'
      '      IF ((DANT=DIAS) AND (H=HORA)) THEN ORDRE=ORDRE+1;'
      '                                    ELSE ORDRE=1;'
      ''
      '      IF      (DIAS=1) THEN DIA_SEMANA='#39'DLL'#39';'
      '      ELSE IF (DIAS=2) THEN DIA_SEMANA='#39'DM'#39';'
      '      ELSE IF (DIAS=3) THEN DIA_SEMANA='#39'DX'#39';'
      '      ELSE IF (DIAS=4) THEN DIA_SEMANA='#39'DJ'#39';'
      '      ELSE IF (DIAS=5) THEN DIA_SEMANA='#39'DV'#39';'
      ''
      
        '      /* IF (((AANT<>ACT) OR (TERA_ANT<>TERA_ACT) OR (PACI_ANT<>' +
        'PACI_ACT)) OR'
      '          ((H_ANT<>H_ACT-1) OR (F_MODULO(H_ACT,2)=1))) THEN *'
      
        '      IF ((AANT<>ACT) OR (H<>HORA) OR (F_MODULO(HORA,2)=1)) THEN' +
        ' */'
      '      SUSPEND;'
      '      DANT=DIAS; H=HORA; AANT=ACT;'
      '  END;'
      '  /* L'#39'ltim registre s'#39'ha de tractar */'
      '  /* Si la ltima hora no t cap registre, hem de mirar-ho tot */'
      '  IF      (AANT='#39'NPC'#39')        THEN NPC=1;'
      '  ELSE IF (AANT='#39'NPC_DIRIG'#39')  THEN NPC_DIRIG=1;'
      '  ELSE IF (AANT='#39'NPC_HIDRO'#39')  THEN NPC_HIDRO=1;'
      '  ELSE IF (AANT='#39'NPC_LOGO'#39')   THEN NPC_LOGO=1;'
      '  ELSE IF (AANT='#39'NPC_TO'#39')     THEN NPC_TO=1;'
      '  ELSE IF (AANT='#39'NPC_NPS'#39')    THEN NPC_NPS=1;'
      '  ELSE IF (AANT='#39'NPC_MT'#39')     THEN NPC_MT=1;'
      '  ELSE IF (AANT='#39'NPC_ANDAGO'#39') THEN NPC_ANDA=1;'
      '  ELSE IF (AANT='#39'NPC_ARMEO'#39')  THEN NPC_ARME=1;'
      ''
      '  TEORIC = 0;'
      '  SELECT C.N_CODI2*COUNT(*)'
      '  FROM HORARIGYM H'
      
        '  JOIN CODICAMPSALFA C ON H.C_ACTIVITAT=C.C_CODI AND C.TIPUSCODI' +
        '='#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NULL'
      '  WHERE DATAFI IS NULL AND H.C_ACTIVITAT = :AANT AND H.HORA = :H'
      '  GROUP BY C.N_CODI2'
      '  INTO :TEORIC;'
      ''
      '  IF (TEORIC IS NULL) THEN TEORIC=0;'
      ''
      '  I=PRACTIC;'
      '  WHILE (I<TEORIC) DO'
      '  BEGIN'
      '    /* Afegir registre '#39'BUIT'#39' */'
      '    CFANT=CF; PANT=PRESTA; ACTAUX=ACT; HAUX=HORA;'
      
        '    PACIENT=AANT; CF=NULL; PRESTA=NULL; ORDRE=ORDRE+1; ACT=AANT;' +
        ' HORA=H;'
      '    SUSPEND;'
      '    I=I+1;'
      '    CF=CFANT; PRESTA=PANT; ACT=ACTAUX; HORA=HAUX;'
      '  END;'
      ''
      '  WHILE (H<=HMAX) DO'
      '  BEGIN'
      
        '    IF ((F_MODULO(H,2)=1) AND ((DANT<>3) OR (H<>11))) THEN  /* B' +
        'uits noms en hores en punt i Dimecres de 13 a 14 no mostrar buit' +
        's pq tenen reuni */'
      '    BEGIN'
      '      TEORIC = 0;'
      '      FOR SELECT H.C_ACTIVITAT, C.N_CODI2*COUNT(*)'
      '      FROM HORARIGYM H'
      
        '      JOIN CODICAMPSALFA C ON H.C_ACTIVITAT=C.C_CODI AND C.TIPUS' +
        'CODI='#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NULL'
      '      WHERE DATAFI IS NULL AND (H.HORA=:H)'
      '      AND ((:NPC=0       AND H.C_ACTIVITAT='#39'NPC'#39'      )  OR'
      '           (:NPC_DIRIG=0 AND H.C_ACTIVITAT='#39'NPC_DIRIG'#39')  OR'
      '           (:NPC_HIDRO=0 AND H.C_ACTIVITAT='#39'NPC_HIDRO'#39')  OR'
      '           (:NPC_LOGO=0  AND H.C_ACTIVITAT='#39'NPC_LOGO'#39' )  OR'
      '           (:NPC_TO=0    AND H.C_ACTIVITAT='#39'NPC_TO'#39'   )  OR'
      '           (:NPC_NPS=0   AND H.C_ACTIVITAT='#39'NPC_NPS'#39'  )  OR'
      '           (:NPC_ANDA=0  AND H.C_ACTIVITAT='#39'NPC_ANDAGO'#39') OR'
      '           (:NPC_ARME=0  AND H.C_ACTIVITAT='#39'NPC_ARMEO'#39')  OR'
      '           (:NPC_MT=0    AND H.C_ACTIVITAT='#39'NPC_MT'#39'   ))'
      '      GROUP BY H.C_ACTIVITAT, C.N_CODI2'
      '      ORDER BY H.C_ACTIVITAT'
      '      INTO :ACTIVITAT, :TEORIC'
      '      DO BEGIN'
      '        IF (TEORIC IS NULL) THEN TEORIC=0;'
      ''
      '        I=0;'
      '        WHILE (I<TEORIC) DO'
      '        BEGIN'
      '          /* Afegir registre '#39'BUIT'#39' */'
      '          CFANT=CF; PANT=PRESTA; ACTAUX=ACT; HAUX=HORA;'
      
        '          PACIENT=ACTIVITAT; CF=NULL; PRESTA=NULL; ORDRE=ORDRE+1' +
        '; ACT=ACTIVITAT; HORA=H;'
      '          SUSPEND;'
      '          I=I+1;'
      '          CF=CFANT; PRESTA=PANT; ACT=ACTAUX; HORA=HAUX;'
      '        END;'
      '      END;'
      '    END;'
      '    H=H+1; ORDRE=0;'
      
        '    NPC=0; NPC_DIRIG=0; NPC_HIDRO=0; NPC_LOGO=0; NPC_TO=0; NPC_N' +
        'PS=0; NPC_MT=0; NPC_ANDA=0; NPC_ARME=0;'
      '  END;'
      ''
      'END'
      '')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic1Name = 'AgendaPacient_NO_FER_CHECK'
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
    Left = 616
    Top = 64
  end
  object P_CarreguesDia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CarreguesDia'
    ForceNombreDB = False
    Body.Strings = (
      
        'RETURNS (PRESTACIO VARCHAR(40), DIA VARCHAR(20), CARREGA_ACTUAL ' +
        'INTEGER)'
      'AS'
      '      DECLARE VARIABLE C_FREQ    VARCHAR(7);'
      '      DECLARE VARIABLE DILLUNS   INTEGER;'
      '      DECLARE VARIABLE DIMARTS   INTEGER;'
      '      DECLARE VARIABLE DIMECRES  INTEGER;'
      '      DECLARE VARIABLE DIJOUS    INTEGER;'
      '      DECLARE VARIABLE DIVENDRES INTEGER;'
      '      DECLARE VARIABLE DISSABTE  INTEGER;'
      '      DECLARE VARIABLE DIUMENGE  INTEGER;'
      'BEGIN'
      ''
      '      /* Calculem c'#224'rregues de rehabilitaci'#243' ambulat'#242'ria */'
      '      '
      '      PRESTACIO = '#39'2014 - REHABILITACI'#211' AMBULAT'#210'RIA'#39';'
      ''
      '      DILLUNS   = 0;'
      '      DIMARTS   = 0;'
      '      DIMECRES  = 0;'
      '      DIJOUS    = 0;'
      '      DIVENDRES = 0;'
      '      DISSABTE  = 0;'
      '      DIUMENGE  = 0;'
      '      '
      '      FOR SELECT T.C_FREQUENCIA'
      '          FROM   TRACTAMENTS T'
      '          JOIN   TORNAMB     A ON T.C_FREQUENCIA = A.CODI'
      '          WHERE  T.C_PRESTACIO = '#39'2014'#39
      '          AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '          INTO  :C_FREQ'
      '      DO BEGIN'
      ''
      
        '            IF (F_MID(C_FREQ, 0, 1) = '#39'X'#39') THEN DILLUNS   = DILL' +
        'UNS   + 1;'
      
        '            IF (F_MID(C_FREQ, 1, 1) = '#39'X'#39') THEN DIMARTS   = DIMA' +
        'RTS   + 1;'
      
        '            IF (F_MID(C_FREQ, 2, 1) = '#39'X'#39') THEN DIMECRES  = DIME' +
        'CRES  + 1;'
      
        '            IF (F_MID(C_FREQ, 3, 1) = '#39'X'#39') THEN DIJOUS    = DIJO' +
        'US    + 1;'
      
        '            IF (F_MID(C_FREQ, 4, 1) = '#39'X'#39') THEN DIVENDRES = DIVE' +
        'NDRES + 1;'
      
        '            IF (F_MID(C_FREQ, 5, 1) = '#39'X'#39') THEN DISSABTE  = DISS' +
        'ABTE  + 1;'
      
        '            IF (F_MID(C_FREQ, 6, 1) = '#39'X'#39') THEN DIUMENGE  = DIUM' +
        'ENGE  + 1;'
      ''
      '      END;'
      '      '
      '      DIA = '#39'DILLUNS'#39';   CARREGA_ACTUAL = DILLUNS;'
      '      SUSPEND;'
      '      PRESTACIO = '#39#39';'
      '      DIA = '#39'DIMARTS'#39';   CARREGA_ACTUAL = DIMARTS;'
      '      SUSPEND;'
      '      DIA = '#39'DIMECRES'#39';  CARREGA_ACTUAL = DIMECRES;'
      '      SUSPEND;'
      '      DIA = '#39'DIJOUS'#39';    CARREGA_ACTUAL = DIJOUS;'
      '      SUSPEND;'
      '      DIA = '#39'DIVENDRES'#39'; CARREGA_ACTUAL = DIVENDRES;'
      '      SUSPEND;'
      '      DIA = '#39'DISSABTE'#39';  CARREGA_ACTUAL = DISSABTE;'
      '      SUSPEND;'
      '      DIA = '#39'DIUMENGE'#39';  CARREGA_ACTUAL = DIUMENGE;'
      '      SUSPEND;'
      '      '
      '      /* L'#237'nia en blanc */'
      ''
      '      DIA = NULL;'
      '      CARREGA_ACTUAL = NULL;'
      '      SUSPEND;'
      ''
      ''
      '      /* Calculem c'#224'rregues de rehabilitaci'#243' infantil */'
      '      '
      '      PRESTACIO = '#39'2008 - REHABILITACI'#211' INFANTIL'#39';'
      '      '
      '      DILLUNS   = 0;'
      '      DIMARTS   = 0;'
      '      DIMECRES  = 0;'
      '      DIJOUS    = 0;'
      '      DIVENDRES = 0;'
      '      DISSABTE  = 0;'
      '      DIUMENGE  = 0;'
      '      '
      '      FOR SELECT T.C_FREQUENCIA'
      '          FROM   TRACTAMENTS T'
      '          JOIN   TORNAMB     A ON T.C_FREQUENCIA = A.CODI'
      '          WHERE  T.C_PRESTACIO = '#39'2008'#39
      '          AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '          INTO  :C_FREQ'
      '      DO BEGIN'
      ''
      
        '            IF (F_MID(C_FREQ, 0, 1) = '#39'X'#39') THEN DILLUNS   = DILL' +
        'UNS   + 1;'
      
        '            IF (F_MID(C_FREQ, 1, 1) = '#39'X'#39') THEN DIMARTS   = DIMA' +
        'RTS   + 1;'
      
        '            IF (F_MID(C_FREQ, 2, 1) = '#39'X'#39') THEN DIMECRES  = DIME' +
        'CRES  + 1;'
      
        '            IF (F_MID(C_FREQ, 3, 1) = '#39'X'#39') THEN DIJOUS    = DIJO' +
        'US    + 1;'
      
        '            IF (F_MID(C_FREQ, 4, 1) = '#39'X'#39') THEN DIVENDRES = DIVE' +
        'NDRES + 1;'
      
        '            IF (F_MID(C_FREQ, 5, 1) = '#39'X'#39') THEN DISSABTE  = DISS' +
        'ABTE  + 1;'
      
        '            IF (F_MID(C_FREQ, 6, 1) = '#39'X'#39') THEN DIUMENGE  = DIUM' +
        'ENGE  + 1;'
      ''
      '      END;'
      ''
      '      DIA = '#39'DILLUNS'#39';   CARREGA_ACTUAL = DILLUNS;'
      '      SUSPEND;'
      '      PRESTACIO = '#39#39';'
      '      DIA = '#39'DIMARTS'#39';   CARREGA_ACTUAL = DIMARTS;'
      '      SUSPEND;'
      '      DIA = '#39'DIMECRES'#39';  CARREGA_ACTUAL = DIMECRES;'
      '      SUSPEND;'
      '      DIA = '#39'DIJOUS'#39';    CARREGA_ACTUAL = DIJOUS;'
      '      SUSPEND;'
      '      DIA = '#39'DIVENDRES'#39'; CARREGA_ACTUAL = DIVENDRES;'
      '      SUSPEND;'
      '      DIA = '#39'DISSABTE'#39';  CARREGA_ACTUAL = DISSABTE;'
      '      SUSPEND;'
      '      DIA = '#39'DIUMENGE'#39';  CARREGA_ACTUAL = DIUMENGE;'
      '      SUSPEND;'
      ''
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic2 = TornAmb
    Dic1Name = 'tractaments'
    Dic2Name = 'tornamb'
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
    Left = 448
    Top = 160
  end
  object pAssTeorica: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'pAssTeorica'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_DIA            DATE,'
      '  E_Prestacio      INTEGER'
      ')'
      'RETURNS ('
      '  NOM              VARCHAR(100),'
      '  C_Historia       INTEGER,'
      '  CF               VARCHAR(2),'
      '  PrestacioGimnas  INTEGER,'
      '  Data_Ingres      DATE,'
      '  C_TRACTAMENT     INTEGER,'
      '  C_TipusAss       INTEGER,'
      '  Frequencia       VARCHAR(7),'
      '  Data_Alta        DATE,'
      '  Unitat           INTEGER,'
      '  MetgeCoordinador VARCHAR (3),'
      '  Tipus            SMALLINT'
      ')'
      ''
      'AS'
      '  DECLARE VARIABLE NEW_FREQ VARCHAR (7);'
      '  DECLARE VARIABLE DOW          INTEGER;'
      'BEGIN'
      ''
      '  IF (E_DIA IS NULL) THEN EXIT;'
      ''
      
        '  SELECT F_DIADELASEMANA(:E_DIA) FROM CONFIG WHERE 1=1 INTO :DOW' +
        ';'
      '  Tipus=1;'
      '  '
      
        '  FOR SELECT T.C_HISTORIA, T.C_PRESTACIO, T.DATA_INGRES, T.C_TRA' +
        'CTAMENT, T.Data_Alta, T.C_COORDINADOR,'
      
        '/*             F.NOMCOMPLET, F.UNITAT, T.C_CENTREFAC, A.C_TIPUSA' +
        'SS, Cast(F_StrNull(A.FREQUENCIA,T.C_FREQUENCIA) AS VARCHAR(7)) *' +
        '/'
      
        '             F.NOMCOMPLET, F.UNITAT, T.C_CENTREFAC, A.C_TIPUSASS' +
        ', F_If(A.FREQUENCIA, '#39'='#39', '#39#39', T.C_FREQUENCIA, A.FREQUENCIA)'
      '  FROM TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '  LEFT JOIN ASSISTENCIAGIMNAS A ON T.C_TRACTAMENT=A.C_TRACTAMENT' +
        ' AND A.DATA=:E_DIA'
      
        '  WHERE (T.DATA_INGRES<=:E_DIA AND (T.DATA_ALTA>=:E_DIA OR T.DAT' +
        'A_ALTA IS NULL))'
      '  AND   ((:E_PRESTACIO IS NULL) OR (:E_PRESTACIO=T.C_PRESTACIO))'
      '  ORDER BY T.C_HISTORIA'
      
        '  INTO :C_Historia, :PrestacioGimnas, :Data_Ingres, :C_TRACTAMEN' +
        'T, :Data_Alta, :MetgeCoordinador, :NOM, :UNITAT, :CF,'
      '       :C_TipusAss,:Frequencia'
      '  DO BEGIN'
      '       IF (F_MID(FREQUENCIA,DOW-1,1)="X") THEN NEW_FREQ='#39'S'#39';'
      '                                          ELSE NEW_FREQ='#39'N'#39';'
      '       FREQUENCIA = NEW_FREQ;'
      '       '
      '       IF (C_TipusAss >= 0) THEN SUSPEND;'
      '  END;'
      ''
      'END')
    Select.Strings = (
      'Select * From [MySelf]("TODAY",2008)')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'assistenciagimnas'
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
    ModiFecha = 36720.6785230324
    Left = 368
    Top = 104
  end
  object T_AgendaPacient_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      
        '      /* En afegir activitat a l'#39'agenda, inicialitzem el C_TRACT' +
        'AMENT  (si no ve informat) */'
      '      IF (NEW.C_TRACTAMENT IS NULL) THEN'
      '      BEGIN'
      ''
      
        '            /* Si hi ha m'#233's d'#39'un tractament simultani (passa per' +
        ' als NPC),'
      
        '               hem de demanar a l'#39'usuari a quina prestaci'#243' corre' +
        'spon l'#39'activitat.'
      
        '               Aix'#242' s'#39'haur'#224' de fer per programa, per'#242' seguim aix' +
        #237' fins que estigui implementat.'
      
        '              (de fet, com q mirem si C_Tractament ve ple, tampo' +
        'c caldria eliminar el trigger) */'
      ''
      ''
      
        '            /* Busquem el c_tractament entre totes les prestacio' +
        'ns actives que poden tenir agenda (dret P39)'
      
        '               tot i q es necessita b'#224'sicament per a les del Gim' +
        'n'#224's */'
      
        '            /* Si n'#39'hi ha m'#233's d'#39'una, ens quedem la 1a que sigui ' +
        'del gimn'#224's (dretpresta P131) */'
      '      '
      
        '            /* Mirem si t'#233' alguna P131 (prestacions del gimn'#224's) ' +
        'i agafem la primera que trobem */'
      '            SELECT T.C_TRACTAMENT'
      '            FROM   TRACTAMENTS T'
      
        '            JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACI' +
        'O AND D.C_DRET = "P131"'
      '            WHERE  T.C_HISTORIA = NEW.C_HISTORIA'
      
        '            AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY"' +
        ')'
      '            ROWS   1'
      '            INTO   NEW.C_TRACTAMENT;'
      '      '
      
        '            /* Si ha quedat buit, agafem la primera P39 (prestac' +
        'ions amb agendapacient) */'
      '            IF (NEW.C_TRACTAMENT IS NULL) THEN'
      '            BEGIN'
      '                  SELECT T.C_TRACTAMENT'
      '                  FROM   TRACTAMENTS T'
      
        '                  JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.C_PR' +
        'ESTACIO AND D.C_DRET = "P39"'
      '                  WHERE  T.C_HISTORIA = NEW.C_HISTORIA'
      
        '                  AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "' +
        'TODAY")'
      '                  ROWS   1'
      '                  INTO   NEW.C_TRACTAMENT;'
      '            END;'
      '      END;'
      '      '
      '   END;'
      'END')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic1Name = 'AgendaPacient'
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
    Top = 206
  end
  object CalendariGym: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
        Consulta = 'Metges'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Dia'
        NombreDB = 'Dia'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 15
        Consulta = 'Tipus'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari '
        NombreDB = 'Comentari'
        Longitud = 100
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
          'Codi Metge'
          'Dia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'metge'
        NombreDB = 'metge'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Metge')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metges'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Codi Metge')
        CopiarOrigen.Strings = (
          'Codi Metge')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Tipus'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CALENDARIGYM.TIPUS'#39
      end>
    Nombre = 'Calendari Area Medica'
    NombreTabla = 'CALENDARI_GYM'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Metge'
      'Dia'
      'Comentari '
      'Tipus')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 56
    Top = 420
  end
  object NPCHorariTerapeuta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NPCHorariTerapeuta'
    ForceNombreDB = False
    Body.Strings = (
      '(ACTIVITAT VARCHAR(15), TERAPEUTA VARCHAR(3))'
      'RETURNS ('
      '  HORA INTEGER,'
      '  DIA_SEMANA VARCHAR(3),'
      '  PACIENT VARCHAR(92),'
      '  CF VARCHAR(2),'
      '  PRESTA CHAR(4),'
      '  ACT VARCHAR(15),'
      '  ORDRE INTEGER,'
      '  DIAS INTEGER'
      ') AS'
      ' DECLARE VARIABLE H        SMALLINT;'
      ' DECLARE VARIABLE DANT     INTEGER;'
      ' DECLARE VARIABLE HC       VARCHAR(10);'
      ' DECLARE VARIABLE NOM      VARCHAR(80);'
      ' DECLARE VARIABLE DIA_FET  INTEGER;'
      'BEGIN'
      ''
      '  DIA_FET=0;'
      
        '  FOR SELECT DISTINCT A.DIA_SEMANA,A.C_HISTORIA,F.NOMCOMPLET,T.C' +
        '_CENTREFAC,T.C_PRESTACIO,A.C_ACTIVITAT,/*MIN(A.HORA)*/A.HORA'
      
        '  FROM AGENDAPACIENT A JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIS' +
        'T'
      
        '  JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T.DA' +
        'TA_ALTA IS NULL OR T.DATA_ALTA>="TODAY")'
      
        '  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO  AND DP.C_' +
        'DRET='#39'P117'#39
      '  WHERE (A.C_ACTIVITAT = :ACTIVITAT) AND F_MODULO(A.HORA,2)=1'
      '  AND   (A.DATAF IS NULL OR A.DATAF>"TODAY")'
      
        '  AND   ((T.C_FISIOTERAPEUTA=:TERAPEUTA) OR (T.C_TERAPEUTA=:TERA' +
        'PEUTA) OR (T.C_FISIO_AR=:TERAPEUTA) OR (T.C_LOGOPEDA=:TERAPEUTA)' +
        ' OR'
      
        '         (T.C_PSICOLEG=:TERAPEUTA) OR (T.C_MUSICOTERAPEUTA=:TERA' +
        'PEUTA))'
      
        '  /*GROUP BY A.DIA_SEMANA,A.C_HISTORIA,F.NOMCOMPLET,T.C_CENTREFA' +
        'C,T.C_PRESTACIO,A.C_ACTIVITAT*/'
      '  ORDER BY 1,7,6,3 /* 13.10.2015: abans era ORDER BY 1,7,3 */'
      '  INTO :DIAS,:HC,:NOM,:CF,:PRESTA,:ACT,:HORA'
      '  DO BEGIN'
      '      PACIENT=HC||'#39' '#39'||NOM;'
      '      IF ((DANT=DIAS) AND (H=HORA)) THEN ORDRE=ORDRE+1;'
      '                                    ELSE ORDRE=1;'
      '      IF      (DIAS=1) THEN DIA_SEMANA='#39'DLL'#39';'
      '      ELSE IF (DIAS=2) THEN DIA_SEMANA='#39'DM'#39';'
      '      ELSE IF (DIAS=3) THEN DIA_SEMANA='#39'DX'#39';'
      '      ELSE IF (DIAS=4) THEN DIA_SEMANA='#39'DJ'#39';'
      '      ELSE IF (DIAS=5) THEN DIA_SEMANA='#39'DV'#39';'
      '      SUSPEND;'
      '      DANT=DIAS; H=HORA;'
      ''
      
        '      /* Mostrem els buits - Els buits nom'#233's es miren a les hore' +
        's en punt */'
      
        '      HC=NULL; NOM='#39' '#39'; CF=NULL; PRESTA=NULL; PACIENT='#39' '#39'; /*ORD' +
        'RE=ORDRE+1; SI NO HI HA PACIENT AQUEST DIA I HORA SER EL PRIMER ' +
        '*/ ORDRE=1;'
      '      IF (DIA_FET < DIAS) THEN'
      '      BEGIN'
      '          FOR SELECT H.HORA'
      '          FROM HORARIGYM H'
      
        '          WHERE H.C_ACTIVITAT=:ACTIVITAT AND H.C_METGE=:TERAPEUT' +
        'A'
      '          AND (H.DATAFI IS NULL OR H.DATAFI>="TODAY")'
      '          AND F_MODULO(H.HORA,2)=1'
      '          AND (NOT (:DIAS=3 AND H.HORA=11))'
      '          AND NOT EXISTS (SELECT *'
      
        '                          FROM AGENDAPACIENT A JOIN FILIACIO F O' +
        'N A.C_HISTORIA=F.NUM_HIST'
      
        '                          JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T' +
        '.C_TRACTAMENT AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY")'
      
        '                          JOIN DRETSPRESTA DP ON T.C_PRESTACIO=D' +
        'P.C_PRESTACIO AND DP.C_DRET='#39'P117'#39
      
        '                          WHERE (A.C_ACTIVITAT = :ACTIVITAT) AND' +
        ' A.DIA_SEMANA=:DIAS AND A.HORA=H.HORA'
      
        '                          AND   (A.DATAF IS NULL OR A.DATAF>"TOD' +
        'AY")'
      
        '                          AND   ((T.C_FISIOTERAPEUTA=:TERAPEUTA)' +
        ' OR (T.C_TERAPEUTA=:TERAPEUTA) OR (T.C_FISIO_AR=:TERAPEUTA) OR'
      
        '                                 (T.C_LOGOPEDA=:TERAPEUTA) OR (T' +
        '.C_PSICOLEG=:TERAPEUTA) OR (T.C_MUSICOTERAPEUTA=:TERAPEUTA)) )'
      '          ORDER BY H.HORA'
      '          INTO :HORA'
      '          DO BEGIN'
      '             SUSPEND;'
      '          END'
      '          /* Mostrem els buits */'
      '      END'
      '      DIA_FET=DIAS;'
      '  END'
      'END')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic1Name = 'AgendaPacient_NO_FER_CHECK'
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
    Left = 614
    Top = 120
  end
  object ListNPCtmp: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'HORA'
        NombreDB = 'HORA'
        Longitud = 6
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'ACTIVITAT'
        NombreDB = 'ACTIVITAT'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'ACT_FICT'
        NombreDB = 'ACT_FICT'
        Longitud = 16
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'TERAPEUTA'
        NombreDB = 'TERAPEUTA'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_TERAPEUTA'
        NombreDB = 'C_TERAPEUTA'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'COLUMNA'
        NombreDB = 'COLUMNA'
        Longitud = 11
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'TPRINT'
        NombreDB = 'TPRINT'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'HC'
        NombreDB = 'HC'
        Longitud = 92
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ORDRE'
        NombreDB = 'ORDRE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ORDRENPC'
        NombreDB = 'ORDRENPC'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PC'
        NombreDB = 'PC'
        Longitud = 40
        zType = tcIB_Varchar
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
          'HORA'
          'ACTIVITAT'
          'C_TERAPEUTA'
          'HC'
          'ORDRE'
          'PC')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LISTNPCTMP'
    NombreTabla = 'LISTNPCTMP'
    Organiza = tbBase
    CamposVer.Strings = (
      'HORA'
      'ACTIVITAT'
      'ACT_FICT'
      'TERAPEUTA'
      'C_TERAPEUTA'
      'COLUMNA'
      'TPRINT'
      'HC'
      'ORDRE'
      'ORDRENPC')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 624
    Top = 448
  end
  object Suplents: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi de tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'Codi de grup'
        NombreDB = 'C_GRUP'
        Longitud = 2
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi del suplent'
        NombreDB = 'C_SUPLENT'
        Longitud = 5
        Consulta = 'Suplent'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hora'
        NombreDB = 'HORA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Dia'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi de tractament'
          'Codi de grup'
          'Hora'
          'Dia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Suplent'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Codi del suplent')
        CopiarOrigen.Strings = (
          'Codi del suplent')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Suplents'
    NombreTabla = 'Suplents'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi de tractament'
      'Codi de grup'
      'Codi del suplent')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 336
    Top = 8
  end
  object ResumDiari: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ResumDiari'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO CHAR(1), DATA_ DATE)'
      'RETURNS (H            INTEGER,'
      '         HORA         VARCHAR(6),'
      '         C_ACTIVITAT  VARCHAR(15),'
      '         C_TERAPEUTA  VARCHAR(5),'
      '         TERAPEUTA    VARCHAR(20),'
      '         PACIENT      VARCHAR(62),'
      '         C_TIPUSASS   SMALLINT,'
      '         C_HISTORIA   INTEGER,'
      '         C_TRACTAMENT INTEGER,'
      '         C_PRESTACIO  VARCHAR(4)'
      ') AS'
      '  DECLARE VARIABLE DOW   INTEGER;  /* DAY OF WEEK */'
      '  DECLARE VARIABLE HI    INTEGER;'
      '  DECLARE VARIABLE HF    INTEGER;'
      'BEGIN'
      
        '    SELECT F_DIADELASEMANA(:DATA_) FROM CONFIG WHERE 1=1 INTO :D' +
        'OW;'
      ''
      
        '    IF      (OPCIO='#39'M'#39') THEN BEGIN HI=3;  HF=14; END  /* Si vole' +
        'm llistat de MAT'#205'  nom'#233's mostrem fins hora 14 (i.e. 14:30) */'
      
        '    ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HI=15; HF=22; END  /* Si vole' +
        'm llistat de TARDA nom'#233's mostrem a partir de l'#39'hora 15 (i.e. 15h' +
        ') */'
      
        '                        ELSE BEGIN HI=3;  HF=22; END  /* Altrame' +
        'nt, mostrem totes les hores */'
      ''
      '    /* NPC */'
      '    C_ACTIVITAT='#39'NPC'#39';'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_FISIOTERAPEUTA=MP.CODI AND MP.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'FI'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_TERAPEUTA=MP.CODI AND MP.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'FI'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      ''
      '    /* NPC_TO */'
      '    C_ACTIVITAT='#39'NPC_TO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'T' +
        'O'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'TO'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_TERAPEUTA=MP.CODI AND MP.C_GRUP='#39'T' +
        'O'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'TO'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_FISIOTERAPEUTA=MP.CODI AND MP.C_GR' +
        'UP='#39'TO'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'TO'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      ''
      '    /* MULTISENSORIAL */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2||'#39' - Multisens'#39', A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_' +
        'PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T  ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (' +
        'T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=' +
        ':DATA_)'
      
        '    JOIN DRETSPRESTA   DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP' +
        '.C_DRET='#39'P132'#39
      
        '    JOIN METGES        M  ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39 +
        'TO'#39
      '    JOIN FILIACIO      F  ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S  ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S' +
        '.C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT='#39'MULTISENSORIAL'#39'))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2||'#39' - Multisens'#39', A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_' +
        'PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T  ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (' +
        'T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=' +
        ':DATA_)'
      
        '    JOIN DRETSPRESTA   DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP' +
        '.C_DRET='#39'P132'#39
      
        '    JOIN METGES        M  ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_G' +
        'RUP='#39'TO'#39
      '    JOIN FILIACIO      F  ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S  ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S' +
        '.C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT='#39'MULTISENSORIAL'#39'))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2||'#39' - Multisens'#39', AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C' +
        '_PRESTACIO,'
      '                        A.C_TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES      MP ON T.C_TERAPEUTA=MP.CODI AND MP.C_GRUP='#39 +
        'TO'#39
      
        '    JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP.C' +
        '_DRET='#39'P132'#39
      '    JOIN FILIACIO    F  ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S  ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.D' +
        'ATA=A.DATA AND S.C_GRUP='#39'TO'#39
      '    JOIN METGES      M  ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_)'
      
        '                          AND (AP.HORA BETWEEN :HI AND :HF) AND ' +
        'AP.DIA_SEMANA<>:DOW AND AP.C_ACTIVITAT='#39'MULTISENSORIAL'#39
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2||'#39' - Multisens'#39', AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C' +
        '_PRESTACIO,'
      '                        A.C_TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES      MP ON T.C_FISIOTERAPEUTA=MP.CODI AND MP.C_G' +
        'RUP='#39'TO'#39
      
        '    JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP.C' +
        '_DRET='#39'P132'#39
      '    JOIN FILIACIO    F  ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S  ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.D' +
        'ATA=A.DATA AND S.C_GRUP='#39'TO'#39
      '    JOIN METGES      M  ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_)'
      
        '                          AND (AP.HORA BETWEEN :HI AND :HF) AND ' +
        'AP.DIA_SEMANA<>:DOW AND AP.C_ACTIVITAT='#39'MULTISENSORIAL'#39
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      ''
      '    /* NPC_DIRIG */'
      '    C_ACTIVITAT='#39'NPC_DIRIG'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIO_AR)' +
        ' AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_FISIO_AR=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIO_AR)' +
        ' AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'AR'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      ''
      '    /* NPC_HIDRO */'
      '    C_ACTIVITAT='#39'NPC_HIDRO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_FISIOTERAPEUTA=MP.CODI AND MP.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'FI'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_TERAPEUTA=MP.CODI AND MP.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'FI'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      ''
      '    /* NPC_ARMEO */'
      '    C_ACTIVITAT='#39'NPC_ARMEO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'T' +
        'O'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'TO'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_FISIOTERAPEUTA=MP.CODI AND MP.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'FI'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_TERAPEUTA=MP.CODI AND MP.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'FI'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      ''
      '    /* NPC_ANDAGO */'
      '    C_ACTIVITAT='#39'NPC_ANDAGO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_FISIOTERAPEUTA=MP.CODI AND MP.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'FI'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN METGES     MP ON T.C_TERAPEUTA=MP.CODI AND MP.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'FI'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      ''
      
        '    FOR SELECT H, HORA, C_ACTIVITAT, C_TERAPEUTA, TERAPEUTA, PAC' +
        'IENT, C_TIPUSASS, C_HISTORIA, C_TRACTAMENT, C_PRESTACIO'
      '    FROM P_TRACTAMENTS_RESUM2(:DATA_, :DOW, :HI, :HF)'
      
        '    INTO :H, :HORA, :C_ACTIVITAT, :C_TERAPEUTA, :TERAPEUTA, :PAC' +
        'IENT, :C_TIPUSASS, :C_HISTORIA, :C_TRACTAMENT, :C_PRESTACIO'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 525
    Top = 304
  end
  object ResumDiariOrdre: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ResumDiariOrdre'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO CHAR(1), DATA_ DATE)'
      'RETURNS (H            INTEGER,'
      '         HORA         VARCHAR(6),'
      '         C_ACTIVITAT  VARCHAR(15),'
      '         C_TERAPEUTA  VARCHAR(5),'
      '         TERAPEUTA    VARCHAR(20),'
      '         PACIENT      VARCHAR(62),'
      '         C_HISTORIA   INTEGER,'
      '         C_TRACTAMENT INTEGER,'
      '         C_PRESTACIO  VARCHAR(4),'
      '         C_TIPUSASS   SMALLINT,'
      '         ORDRE        INTEGER'
      ')'
      'AS'
      ' DECLARE VARIABLE HANT  INTEGER;'
      ' DECLARE VARIABLE AANT  VARCHAR(15);'
      'BEGIN'
      '      '
      '  HANT=0; AANT=NULL;'
      
        '  FOR SELECT H, HORA, C_ACTIVITAT, C_TERAPEUTA, TERAPEUTA, PACIE' +
        'NT, C_HISTORIA, C_TRACTAMENT, C_TIPUSASS, C_PRESTACIO'
      '  FROM P_TRACTAMENTS_RESUMDIARI(:OPCIO,:DATA_)'
      '  WHERE F_MODULO(H,2)=1  /* Nom'#233's hores en punt */'
      '  ORDER BY H, C_ACTIVITAT, PACIENT, C_TERAPEUTA'
      
        '  INTO :H,:HORA,:C_ACTIVITAT,:C_TERAPEUTA,:TERAPEUTA,:PACIENT,:C' +
        '_HISTORIA,:C_TRACTAMENT,:C_TIPUSASS,:C_PRESTACIO'
      '  DO BEGIN'
      '      IF ((H<>HANT) OR (AANT<>C_ACTIVITAT)) THEN ORDRE=1;'
      '                                            ELSE ORDRE=ORDRE+1;'
      '      SUSPEND;'
      '      HANT=H;'
      '      AANT=C_ACTIVITAT;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 525
    Top = 355
  end
  object RD_ForaFreq: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RD_ForaFreq'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO CHAR(1), DATA_ DATE)'
      'RETURNS (H            INTEGER,'
      '         HORA         VARCHAR(6),'
      '         C_ACTIVITAT  VARCHAR(15),'
      '         C_TERAPEUTA  VARCHAR(5),'
      '         TERAPEUTA    VARCHAR(20),'
      '         C_GRUP       CHAR(2),'
      '         C_HISTORIA   INTEGER,'
      '         FREQUENCIA   VARCHAR(7),'
      '         PACIENT      VARCHAR(62),'
      '         C_TIPUSASS   SMALLINT,'
      '         C_TRACTAMENT INTEGER,'
      '         C_PRESTACIO  VARCHAR(4)'
      ') AS'
      '  DECLARE VARIABLE DOW      INTEGER;  /* DAY OF WEEK */'
      '  DECLARE VARIABLE HI       INTEGER;'
      '  DECLARE VARIABLE HF       INTEGER;'
      '  DECLARE VARIABLE NEW_FREQ VARCHAR(7);'
      'BEGIN'
      
        '    SELECT F_DIADELASEMANA(:DATA_) FROM CONFIG WHERE 1=1 INTO :D' +
        'OW;'
      ''
      
        '    IF      (OPCIO='#39'M'#39') THEN BEGIN HI=3;  HF=14; END  /* Si vole' +
        'm llistat de MAT'#205'  nom'#233's mostrem fins hora 14 (i.e. 14:30) */'
      
        '    ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HI=15; HF=22; END  /* Si vole' +
        'm llistat de TARDA nom'#233's mostrem a partir de l'#39'hora 15 (i.e. 15h' +
        ') */'
      
        '                        ELSE BEGIN HI=3;  HF=22; END  /* Altrame' +
        'nt, mostrem totes les hores */'
      ''
      '    /* NPC */'
      '    C_ACTIVITAT='#39'NPC'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      '                              '
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      '        '
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      '        '
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_TO */'
      '    C_ACTIVITAT='#39'NPC_TO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_DIRIG */'
      '    C_ACTIVITAT='#39'NPC_DIRIG'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIO_AR)' +
        ' AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_FISIO_AR=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      '                              '
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_HIDRO */'
      '    C_ACTIVITAT='#39'NPC_HIDRO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_NPS */'
      '    C_ACTIVITAT='#39'NPC_NPS'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_PSICOLEG)' +
        ' AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_PSICOLEG=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_LOGO */'
      '    C_ACTIVITAT='#39'NPC_LOGO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_LOGOPEDA)' +
        ' AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_LOGOPEDA=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      '    '
      '    /* NPC_MT */'
      '    C_ACTIVITAT='#39'NPC_MT'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_MUSICOTER' +
        'APEUTA) AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_MUSICOTERAPEUTA=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_ARMEO */'
      '    C_ACTIVITAT='#39'NPC_ARMEO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_TERAPEUTA' +
        ') AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_ANDAGO */'
      '    C_ACTIVITAT='#39'NPC_ANDAGO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_FISIOTERA' +
        'PEUTA) AS VARCHAR(5)),'
      
        '                    F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELLIDO2' +
        ', CAST(F_STRNULL(S.HORA,A.HORA) AS INTEGER),'
      
        '                    A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO,' +
        ' T.C_FREQUENCIA'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA<>:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT)) AND (F_MID(T.C_FREQUENC' +
        'IA,:DOW-1,1)='#39' '#39')'
      
        '    AND   NOT (A.C_TRACTAMENT IN (SELECT ASS.C_TRACTAMENT FROM A' +
        'SSISTENCIAGIMNAS ASS WHERE ASS.DATA=:DATA_))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :FREQUENCIA'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE, C_GRUP FROM METGES WHERE CODI=:C_TERAPEUTA' +
        ' INTO :TERAPEUTA, :C_GRUP;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1";'
      '                                         ELSE NEW_FREQ = "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "2";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "3";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "4";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "5";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "6";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      
        '        IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW_FRE' +
        'Q || "7";'
      
        '                                         ELSE NEW_FREQ = NEW_FRE' +
        'Q || "-";'
      ''
      '        FREQUENCIA = NEW_FREQ;'
      ''
      '        SUSPEND;'
      '    END'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 527
    Top = 405
  end
  object RD_ForaFreqOrdre: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RD_ForaFreqOrdre'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO CHAR(1), DATA_ DATE)'
      'RETURNS (H            INTEGER,'
      '         HORA         VARCHAR(6),'
      '         C_ACTIVITAT  VARCHAR(15),'
      '         C_TERAPEUTA  VARCHAR(5),'
      '         TERAPEUTA    VARCHAR(20),'
      '         C_GRUP       CHAR(2),'
      '         PACIENT      VARCHAR(62),'
      '         C_TRACTAMENT INTEGER,'
      '         C_HISTORIA   INTEGER,'
      '         FREQUENCIA   VARCHAR(7),'
      '         C_PRESTACIO  VARCHAR(4),'
      '         C_TIPUSASS   SMALLINT,'
      '         ORDRE        INTEGER'
      ')'
      'AS'
      ' DECLARE VARIABLE HANT  INTEGER;'
      ' DECLARE VARIABLE AANT  VARCHAR(15);'
      'BEGIN'
      '      '
      '  HANT=0; AANT=NULL;'
      
        '  FOR SELECT H, HORA, C_ACTIVITAT, C_TERAPEUTA, TERAPEUTA, C_GRU' +
        'P, PACIENT, C_TRACTAMENT, C_HISTORIA, C_TIPUSASS, C_PRESTACIO, F' +
        'REQUENCIA'
      '  FROM P_TRACTAMENTS_RD_FORAFREQ(:OPCIO,:DATA_)'
      '  WHERE F_MODULO(H,2)=1  /* Nom'#233's hores en punt */'
      '  ORDER BY H, C_ACTIVITAT, PACIENT, C_TERAPEUTA'
      
        '  INTO :H,:HORA,:C_ACTIVITAT,:C_TERAPEUTA,:TERAPEUTA,:C_GRUP,:PA' +
        'CIENT,:C_TRACTAMENT,:C_HISTORIA,:C_TIPUSASS,:C_PRESTACIO,:FREQUE' +
        'NCIA'
      '  DO BEGIN'
      '      IF ((H<>HANT) OR (AANT<>C_ACTIVITAT)) THEN ORDRE=1;'
      '                                            ELSE ORDRE=ORDRE+1;'
      '      SUSPEND;'
      '      HANT=H;'
      '      AANT=C_ACTIVITAT;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 529
    Top = 461
  end
  object ActivitatsNPC: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatsNPC'
    ForceNombreDB = False
    Body.Strings = (
      '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1), DIA INTEGER)'
      'RETURNS ('
      '  TERAPEUTA VARCHAR(20),'
      '  C_TERAPEUTA VARCHAR(5),'
      '  COLUMNA VARCHAR(11),'
      '  HC INTEGER,'
      '  PACIENT VARCHAR(82),'
      '  ACTIVITAT VARCHAR(15),'
      '  ACT_FICT VARCHAR(16),'
      '  PRESTACIO VARCHAR(4),'
      '  CENTREFAC VARCHAR(2),'
      '  HORA INTEGER'
      ') AS'
      '  DECLARE VARIABLE DOW   INTEGER;  /* DAY OF WEEK */'
      '  DECLARE VARIABLE HI    INTEGER;'
      '  DECLARE VARIABLE HF    INTEGER;'
      '  DECLARE VARIABLE FREQ  VARCHAR(30);'
      '  DECLARE VARIABLE ACT2  VARCHAR(16);'
      '  DECLARE VARIABLE ACTF  VARCHAR(16);'
      '  DECLARE VARIABLE DATA_ DATE;'
      'BEGIN'
      '    IF (DIA IS NULL) THEN DIA=0;'
      ''
      
        '    SELECT F_DIADELASEMANA("TODAY"),"TODAY" FROM CONFIG WHERE 1=' +
        '1 INTO :DOW, :DATA_;'
      '/*    IF (DIA>=0) THEN DOW=DOW+DIA;'
      '                ELSE DOW=7+F_MODULO(DOW+DIA,7);'
      '    DOW=F_MODULO(DOW,7);'
      '    IF (DOW=0) THEN DOW=7;*/'
      '    DOW=DOW+DIA;'
      '    IF      (DOW=0) THEN DOW=7;'
      '    ELSE IF (DOW>7) THEN DOW=F_MODULO(DOW,7);'
      '    ELSE IF (DOW<0) THEN DOW=7+F_MODULO(DOW,7);'
      '    DATA_ = DATA_ + DIA;'
      ''
      
        '    IF      (OPCIO='#39'M'#39') THEN BEGIN HI=3;  HF=14; END  /* Si vole' +
        'm llistat de MAT'#205'  nom'#233's mostrem fins hora 14 (i.e. 14:30) */'
      
        '    ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HI=15; HF=22; END  /* Si vole' +
        'm llistat de TARDA nom'#233's mostrem a partir de l'#39'hora 15 (i.e. 15h' +
        ') */'
      
        '                        ELSE BEGIN HI=3;  HF=22; END  /* Altrame' +
        'nt, mostrem totes les hores */'
      ''
      '    IF (C_ACTIVITAT = '#39#39') THEN C_ACTIVITAT='#39'NPC'#39';'
      ''
      '    /* NPC */'
      '    ACTIVITAT=C_ACTIVITAT;'
      '    ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUTA, T.C_F' +
        'REQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      
        '    FROM AGENDAPACIENT A                                        ' +
        '                                                            /* "' +
        'TODAY"+:DIA */'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, F' +
        '.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        /*IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';*/'
      '        COLUMNA='#39'NPC_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.C_FREQUE' +
        'NCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      
        '    FROM AGENDAPACIENT A                                        ' +
        '                                                            /* "' +
        'TODAY"+:DIA */'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, F' +
        '.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        /*IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';*/'
      '        COLUMNA='#39'NPC_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_TO */'
      '    C_ACTIVITAT='#39'NPC_TO'#39'; ACTIVITAT=C_ACTIVITAT;'
      '    ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.C_FREQUE' +
        'NCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'T' +
        'O'#39
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, F.APEL' +
        'LIDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        COLUMNA='#39'TO_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUTA, T.C_F' +
        'REQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'TO'#39
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, F.APEL' +
        'LIDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        COLUMNA='#39'TO_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      ''
      '    /* MULTISENSORIAL */'
      '    C_ACTIVITAT='#39'MULTISENSORIAL'#39'; ACTIVITAT='#39'MULTISENSORIAL'#39';'
      '    ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.C_FREQUE' +
        'NCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN DRETSPRESTA   DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP' +
        '.C_DRET='#39'P132'#39
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'T' +
        'O'#39
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, F.APEL' +
        'LIDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        COLUMNA='#39'MSENS_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUTA, T.C_F' +
        'REQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN DRETSPRESTA   DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP' +
        '.C_DRET='#39'P132'#39
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'TO'#39
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, F.APEL' +
        'LIDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        COLUMNA='#39'MSENS_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_DIRIG */'
      '    C_ACTIVITAT='#39'NPC_DIRIG'#39'; ACTIVITAT=C_ACTIVITAT;'
      '    ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIO_AR, T.C_FREQUEN' +
        'CIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_FISIO_AR=M.CODI'
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_FISIO_AR, T.C_PRESTACIO DESC, F.NOMBRE, F.APELL' +
        'IDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        /*IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';*/'
      '        COLUMNA='#39'DIRIG_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_HIDRO */'
      '    C_ACTIVITAT='#39'NPC_HIDRO'#39'; ACTIVITAT=C_ACTIVITAT;'
      '    ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      
        '                                       /* 15-6-2016: CANVIEM T.C' +
        '_FISIO_AR PER T.C_FISIOTERAPEUTA A PETICI'#211' DEL MANEL OCHOA */'
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUTA, T.C_F' +
        'REQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.C_GR' +
        'UP='#39'FI'#39
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, F' +
        '.APELLIDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        /*IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';*/'
      '        COLUMNA='#39'HIDRO_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      '    '
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.C_FREQUE' +
        'NCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      
        '    JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRUP='#39'F' +
        'I'#39
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, F' +
        '.APELLIDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        /*IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';*/'
      '        COLUMNA='#39'HIDRO_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      ''
      '    /* NPC_LOGO */'
      '    C_ACTIVITAT='#39'NPC_LOGO'#39'; ACTIVITAT=C_ACTIVITAT;'
      '    ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_LOGOPEDA, T.C_FREQUEN' +
        'CIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_LOGOPEDA=M.CODI'
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_LOGOPEDA, T.C_PRESTACIO DESC, F.NOMBRE, F.APELL' +
        'IDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        COLUMNA='#39'LOGO_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      '    '
      '    /* NPC_MT */'
      '    C_ACTIVITAT='#39'NPC_MT'#39'; ACTIVITAT=C_ACTIVITAT;'
      '    ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_MUSICOTERAPEUTA, T.C_' +
        'FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_MUSICOTERAPEUTA=M.CODI'
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_MUSICOTERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE, ' +
        'F.APELLIDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        COLUMNA='#39'MT_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      '    '
      '    /* NPC_NPS */'
      '    C_ACTIVITAT='#39'NPC_NPS'#39'; ACTIVITAT=C_ACTIVITAT;'
      '    ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '    FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_PSICOLEG, T.C_FREQUEN' +
        'CIA, M.METGE, A.C_HISTORIA,'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_PSICOLEG=M.CODI'
      '    JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=:ACTF)' +
        ')'
      
        '    ORDER BY T.C_PSICOLEG, T.C_PRESTACIO DESC, F.NOMBRE, F.APELL' +
        'IDO1, F.APELLIDO2,  A.DATAI, A.HORA'
      
        '    INTO :ACT2, :C_TERAPEUTA, :FREQ, :TERAPEUTA, :HC, :PACIENT, ' +
        ':PRESTACIO, :HORA, :CENTREFAC'
      '    DO BEGIN'
      '        IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                              ELSE ACT_FICT=ACTF;'
      '        COLUMNA='#39'NPS_'#39'||C_TERAPEUTA;'
      '        SUSPEND;'
      '    END'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 616
    Top = 192
  end
  object ListActivitats: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListActivitats'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1),DIA INTEGER)  /* DIA: -1' +
        ':AHIR, 0:AVUI, 1:DEM */'
      'RETURNS (TERAPEUTA  VARCHAR(20),'
      '         HC         INTEGER,'
      
        '         PACIENT    VARCHAR(82), /* 2 Espais ms per posar '#39' #'#39' s' +
        'i t freqncia <> '#39'XXXXX'#39' (i.e. de Dll a Dv) */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      '         ORDRE      INTEGER,'
      '         PRESTACIO  VARCHAR(4),'
      '         CENTREFAC  VARCHAR(2),'
      '         HORA       INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE CODI  VARCHAR(5);'
      '  DECLARE VARIABLE DOW   INTEGER;  /* DAY OF WEEK */'
      '  DECLARE VARIABLE HI    INTEGER;'
      '  DECLARE VARIABLE HF    INTEGER;'
      '  DECLARE VARIABLE RCODI VARCHAR(10);'
      '  DECLARE VARIABLE FREQ  VARCHAR(30);'
      '  DECLARE VARIABLE ACT2  VARCHAR(16);'
      '  DECLARE VARIABLE ACTF  VARCHAR(16);'
      '  DECLARE VARIABLE DATA_ DATE;'
      'BEGIN'
      '    IF (DIA IS NULL) THEN DIA=0;'
      ''
      
        '    SELECT F_DAYOFWEEK("TODAY"), "TODAY" FROM CONFIG WHERE 1=1 I' +
        'NTO :DOW, :DATA_;'
      
        '    DOW=DOW+DIA;                /* DIA: -1:AHIR, 0:AVUI, 1:DEM *' +
        '/'
      '    IF (DOW=1) THEN DOW=7;      /* DIUMENGE */'
      '               ELSE DOW=DOW-1;'
      ''
      
        '    /* 8.11.2012: Patri diu que noms mostrem fins a hora 17h, i.' +
        'e. HF=19. Per tant, canvio HF=26 per HF=19 */'
      
        '    /* 26.10.2016: Patri diu que vol fins les 19h ==> canvio HF ' +
        'a 26 de nou */'
      
        '    IF      (OPCIO='#39'M'#39') THEN BEGIN HI=1;  HF=14; END;  /* Si vol' +
        'em llistat de MAT'#205'  nom'#233's mostrem fins hora 14 (i.e. 14:30) */'
      
        '    ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HI=15; HF=26; END;  /* Si vol' +
        'em llistat de TARDA nom'#233's mostrem a partir de l'#39'hora 15 (i.e. 15' +
        'h) */'
      
        '                        ELSE BEGIN HI=1;  HF=26; END;  /* Altram' +
        'ent, mostrem totes les hores */'
      ''
      '    DATA_ = DATA_ + DIA;'
      ''
      '    IF (C_ACTIVITAT = '#39#39') THEN'
      '    BEGIN'
      '        ACT_FICT=NULL;'
      
        '        FOR SELECT DISTINCT T.C_FISIOTERAPEUTA, T.C_FREQUENCIA, ' +
        'M.METGE, A.C_ACTIVITAT, D.ORDRE, A.C_HISTORIA,'
      
        '                            F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.A' +
        'PELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '        FROM AGENDAPACIENT A'
      
        '        JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AN' +
        'D (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALT' +
        'A>=:DATA_)'
      
        '        JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AND M.' +
        'C_GRUP='#39'FI'#39
      
        '        JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D.TIP' +
        'USCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'F'#39' /*AND D.C_CODI NOT LIKE '#39'%' +
        '*%'#39'*/'
      '        JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '        WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>' +
        ':DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '        ORDER BY T.C_FISIOTERAPEUTA, D.ORDRE, T.C_PRESTACIO DESC' +
        ','
      
        '                 F.NOMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.' +
        'HORA'
      
        '        INTO :CODI, :FREQ, :TERAPEUTA, :ACTIVITAT, :ORDRE, :HC, ' +
        ':PACIENT, :PRESTACIO, :HORA, :CENTREFAC'
      '        DO BEGIN'
      
        '            IF (F_RIGHT(ACTIVITAT,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F' +
        '_LEFT(ACTIVITAT,F_STRINGLENGTH(ACTIVITAT)-1);'
      
        '                                                     ACT_FICT=AC' +
        'TIVITAT;'
      '                                          END;'
      '                                          ELSE ACT_FICT=NULL;'
      ''
      '            IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '            SUSPEND;'
      '        END;'
      '        '
      
        '        FOR SELECT DISTINCT T.C_TERAPEUTA, T.C_FREQUENCIA, M.MET' +
        'GE, A.C_ACTIVITAT, D.ORDRE, A.C_HISTORIA,'
      
        '                            F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.A' +
        'PELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '        FROM AGENDAPACIENT A'
      
        '        JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AN' +
        'D (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALT' +
        'A>=:DATA_)'
      
        '        JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C_GRU' +
        'P='#39'FI'#39
      
        '        JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D.TIP' +
        'USCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'F'#39' /*AND D.C_CODI NOT LIKE '#39'%' +
        '*%'#39'*/'
      '        JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '        WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>' +
        ':DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '        ORDER BY T.C_FISIOTERAPEUTA, D.ORDRE, T.C_PRESTACIO DESC' +
        ','
      
        '                 F.NOMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.' +
        'HORA'
      
        '        INTO :CODI, :FREQ, :TERAPEUTA, :ACTIVITAT, :ORDRE, :HC, ' +
        ':PACIENT, :PRESTACIO, :HORA, :CENTREFAC'
      '        DO BEGIN'
      
        '            IF (F_RIGHT(ACTIVITAT,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F' +
        '_LEFT(ACTIVITAT,F_STRINGLENGTH(ACTIVITAT)-1);'
      
        '                                                     ACT_FICT=AC' +
        'TIVITAT;'
      '                                          END;'
      '                                          ELSE ACT_FICT=NULL;'
      ''
      '            IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '            SUSPEND;'
      '        END;'
      ''
      
        '        FOR SELECT DISTINCT T.C_TERAPEUTA, T.C_FREQUENCIA, M.MET' +
        'GE, A.C_ACTIVITAT, D.ORDRE, A.C_HISTORIA,'
      
        '                            F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.A' +
        'PELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      
        '        FROM AGENDAPACIENT A                                    ' +
        '                  /*"TODAY"+:DIA*/'
      
        '        JOIN TRACTAMENTS T   ON A.C_TRACTAMENT=T.C_TRACTAMENT AN' +
        'D (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALT' +
        'A>=:DATA_)'
      
        '        JOIN METGES M        ON T.C_TERAPEUTA=M.CODI AND M.C_GRU' +
        'P='#39'TO'#39
      
        '        JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D.TIP' +
        'USCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'T'#39' /*AND D.C_CODI NOT LIKE '#39'%' +
        '*%'#39'*/'
      '        JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '        WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>' +
        ':DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '        ORDER BY T.C_TERAPEUTA, D.ORDRE, T.C_PRESTACIO DESC,'
      
        '                 F.NOMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.' +
        'HORA'
      
        '        INTO :CODI, :FREQ, :TERAPEUTA, :ACTIVITAT, :ORDRE, :HC, ' +
        ':PACIENT, :PRESTACIO, :HORA, :CENTREFAC'
      '        DO BEGIN'
      
        '            IF (F_RIGHT(ACTIVITAT,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F' +
        '_LEFT(ACTIVITAT,F_STRINGLENGTH(ACTIVITAT)-1);'
      
        '                                                     ACT_FICT=AC' +
        'TIVITAT;'
      '                                          END;'
      '                                          ELSE ACT_FICT=NULL;'
      ''
      '            IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '            SUSPEND;'
      '        END;'
      '        '
      
        '        FOR SELECT DISTINCT T.C_FISIOTERAPEUTA, T.C_FREQUENCIA, ' +
        'M.METGE, A.C_ACTIVITAT, D.ORDRE, A.C_HISTORIA,'
      
        '                            F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.A' +
        'PELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      
        '        FROM AGENDAPACIENT A                                    ' +
        '                  /*"TODAY"+:DIA*/'
      
        '        JOIN TRACTAMENTS T   ON A.C_TRACTAMENT=T.C_TRACTAMENT AN' +
        'D (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALT' +
        'A>=:DATA_)'
      
        '        JOIN METGES M        ON T.C_FISIOTERAPEUTA=M.CODI AND M.' +
        'C_GRUP='#39'TO'#39
      
        '        JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D.TIP' +
        'USCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'T'#39' /*AND D.C_CODI NOT LIKE '#39'%' +
        '*%'#39'*/'
      '        JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '        WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>' +
        ':DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '        ORDER BY T.C_FISIOTERAPEUTA, D.ORDRE, T.C_PRESTACIO DESC' +
        ','
      
        '                 F.NOMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.' +
        'HORA'
      
        '        INTO :CODI, :FREQ, :TERAPEUTA, :ACTIVITAT, :ORDRE, :HC, ' +
        ':PACIENT, :PRESTACIO, :HORA, :CENTREFAC'
      '        DO BEGIN'
      
        '            IF (F_RIGHT(ACTIVITAT,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F' +
        '_LEFT(ACTIVITAT,F_STRINGLENGTH(ACTIVITAT)-1);'
      
        '                                                     ACT_FICT=AC' +
        'TIVITAT;'
      '                                          END;'
      '                                          ELSE ACT_FICT=NULL;'
      ''
      '            IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '            SUSPEND;'
      '        END;'
      '        '
      
        '        FOR SELECT DISTINCT T.C_TERAPEUTA_RESP, T.C_FREQUENCIA, ' +
        'M.METGE, A.C_ACTIVITAT, D.ORDRE, A.C_HISTORIA,'
      
        '                            F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.A' +
        'PELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      
        '        FROM AGENDAPACIENT A                                    ' +
        '                  /*"TODAY"+:DIA*/'
      
        '        JOIN TRACTAMENTS T   ON A.C_TRACTAMENT=T.C_TRACTAMENT AN' +
        'D (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALT' +
        'A>=:DATA_)'
      '        JOIN METGES M        ON T.C_TERAPEUTA_RESP=M.CODI'
      
        '        JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D.TIP' +
        'USCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'R'#39
      '        JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '        WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>' +
        ':DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      
        '        ORDER BY T.C_TERAPEUTA_RESP, D.ORDRE, T.C_PRESTACIO DESC' +
        ','
      
        '                 F.NOMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.' +
        'HORA'
      
        '        INTO :CODI, :FREQ, :TERAPEUTA, :ACTIVITAT, :ORDRE, :HC, ' +
        ':PACIENT, :PRESTACIO, :HORA, :CENTREFAC'
      '        DO BEGIN'
      
        '            IF (F_RIGHT(ACTIVITAT,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F' +
        '_LEFT(ACTIVITAT,F_STRINGLENGTH(ACTIVITAT)-1);'
      
        '                                                     ACT_FICT=AC' +
        'TIVITAT;'
      '                                          END;'
      '                                          ELSE ACT_FICT=NULL;'
      ''
      '            IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '            SUSPEND;'
      '        END;'
      '    END;'
      '    ELSE BEGIN'
      '        ACTIVITAT=C_ACTIVITAT; ORDRE=1;'
      '        ACTF=C_ACTIVITAT||'#39'*'#39'; ACT2=NULL;'
      ''
      
        '        SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39'ACTIVI' +
        'TATFI'#39' AND C_CODI=:C_ACTIVITAT INTO :RCODI;'
      ''
      '        IF (RCODI='#39'F'#39') THEN'
      '        BEGIN'
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUT' +
        'A, T.C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AN' +
        'D M.C_GRUP='#39'FI'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.N' +
        'OMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '            '
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.' +
        'C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C' +
        '_GRUP='#39'FI'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.N' +
        'OMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '        END;'
      '        ELSE IF (RCODI='#39'T'#39') THEN'
      '        BEGIN'
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.' +
        'C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C' +
        '_GRUP='#39'TO'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '            '
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUT' +
        'A, T.C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AN' +
        'D M.C_GRUP='#39'TO'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '        END;'
      '        ELSE IF (RCODI='#39'E'#39') THEN'
      '        BEGIN'
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.' +
        'C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            LEFT JOIN METGES   M ON T.C_TERAPEUTA=M.CODI AND M.C' +
        '_GRUP='#39'TO'#39
      
        '            JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D' +
        '.TIPUSCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'E'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      
        '                IF (F_RIGHT(ACT2,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F_' +
        'LEFT(ACT2,F_STRINGLENGTH(ACT2)-1);'
      
        '                                                    ACT_FICT=ACT' +
        '2;'
      '                                              END;'
      '                                              ELSE BEGIN'
      
        '                                                    ACTIVITAT=AC' +
        'T2;'
      
        '                                                    ACT_FICT=NUL' +
        'L;'
      '                                              END;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '            '
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUT' +
        'A, T.C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            LEFT JOIN METGES   M ON T.C_FISIOTERAPEUTA=M.CODI AN' +
        'D M.C_GRUP='#39'TO'#39
      
        '            JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D' +
        '.TIPUSCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'E'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      
        '                IF (F_RIGHT(ACT2,1)='#39'*'#39') THEN BEGIN ACTIVITAT=F_' +
        'LEFT(ACT2,F_STRINGLENGTH(ACT2)-1);'
      
        '                                                    ACT_FICT=ACT' +
        '2;'
      '                                              END;'
      '                                              ELSE BEGIN'
      
        '                                                    ACTIVITAT=AC' +
        'T2;'
      
        '                                                    ACT_FICT=NUL' +
        'L;'
      '                                              END;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '        END'
      '        ELSE IF (RCODI='#39'R'#39') THEN'
      '        BEGIN'
      
        '            FOR SELECT DISTINCT T.C_TERAPEUTA_RESP, T.C_FREQUENC' +
        'IA, M.METGE, A.C_ACTIVITAT, D.ORDRE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS T   ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      '            JOIN METGES M        ON T.C_TERAPEUTA_RESP=M.CODI'
      
        '            JOIN CODICAMPSALFA D ON A.C_ACTIVITAT=D.C_CODI AND D' +
        '.TIPUSCODI='#39'ACTIVITATFI'#39' AND D.R_CODI='#39'R'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND   ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITA' +
        'T=:ACTF))'
      
        '            ORDER BY T.C_TERAPEUTA_RESP, D.ORDRE, T.C_PRESTACIO ' +
        'DESC,'
      
        '                     F.NOMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI' +
        ', A.HORA'
      
        '            INTO :CODI, :FREQ, :TERAPEUTA, :ACTIVITAT, :ORDRE, :' +
        'HC, :PACIENT, :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      
        '                IF (F_RIGHT(ACTIVITAT,1)='#39'*'#39') THEN BEGIN ACTIVIT' +
        'AT=F_LEFT(ACTIVITAT,F_STRINGLENGTH(ACTIVITAT)-1);'
      
        '                                                         ACT_FIC' +
        'T=ACTIVITAT;'
      '                                              END;'
      
        '                                              ELSE ACT_FICT=NULL' +
        ';'
      ''
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '        END'
      '        ELSE BEGIN'
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUT' +
        'A, T.C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AN' +
        'D M.C_GRUP='#39'FI'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=' +
        ':ACTF))'
      
        '            ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.N' +
        'OMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '            '
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.' +
        'C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C' +
        '_GRUP='#39'FI'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=' +
        ':ACTF))'
      
        '            ORDER BY T.C_FISIOTERAPEUTA, T.C_PRESTACIO DESC, F.N' +
        'OMBRE, F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      ''
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_TERAPEUTA, T.' +
        'C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            JOIN METGES        M ON T.C_TERAPEUTA=M.CODI AND M.C' +
        '_GRUP='#39'TO'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=' +
        ':ACTF))'
      
        '            ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '            '
      
        '            FOR SELECT DISTINCT A.C_ACTIVITAT, T.C_FISIOTERAPEUT' +
        'A, T.C_FREQUENCIA, M.METGE, A.C_HISTORIA,'
      
        '                                F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'|' +
        '|F.APELLIDO2, T.C_PRESTACIO, A.HORA, T.C_CENTREFAC'
      '            FROM AGENDAPACIENT A'
      
        '            JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND (T.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DATA_)'
      
        '            JOIN METGES        M ON T.C_FISIOTERAPEUTA=M.CODI AN' +
        'D M.C_GRUP='#39'TO'#39
      '            JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '            WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DA' +
        'TAF>:DATA_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :H' +
        'F)'
      
        '            AND ((A.C_ACTIVITAT=:C_ACTIVITAT) OR (A.C_ACTIVITAT=' +
        ':ACTF))'
      
        '            ORDER BY T.C_TERAPEUTA, T.C_PRESTACIO DESC, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, A.DATAI, A.HORA'
      
        '            INTO :ACT2, :CODI, :FREQ, :TERAPEUTA, :HC, :PACIENT,' +
        ' :PRESTACIO, :HORA, :CENTREFAC'
      '            DO BEGIN'
      '                IF (ACT2=C_ACTIVITAT) THEN ACT_FICT=NULL;'
      '                                      ELSE ACT_FICT=ACTF;'
      '                IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' # '#39';'
      '                SUSPEND;'
      '            END;'
      '        END;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 419
    Top = 217
  end
  object ListGym: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListGym'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_ACTIVITAT VARCHAR(15),OPCIO CHAR(1),DIA INTEGER)  /* DIA: -1:' +
        'AHIR, 0:AVUI, 1:DEM'#192' */'
      
        'RETURNS (TIPUS      INTEGER,       /* 0-Activitat; 1-Hora; 2-Ter' +
        'apeuta; 3-Pacients */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      
        '         HORA       VARCHAR(22),  /* ERA DE 6, A L'#39'AFEGIR ACTIVI' +
        'TAT PASSA A 21 (15+6+1espai blanc)*/'
      '         TERAPEUTA  VARCHAR(20),'
      '         PACIENT    VARCHAR(92),'
      '         MOSTRAR    VARCHAR(100),'
      '         PRESTACIO  CHAR(4),'
      '         CF         VARCHAR(2),'
      '         NUM        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACT_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACT_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TER_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TER_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE ACT_F      VARCHAR(16);'
      '  DECLARE VARIABLE CF_ACT     VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE R_CODI     VARCHAR(10);'
      '  DECLARE VARIABLE MAX_ANT    INTEGER;'
      '  DECLARE VARIABLE H          INTEGER;'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      ''
      '  ESPAIS40='#39'                                        '#39';'
      ''
      
        '  IF (C_ACTIVITAT<>'#39#39') THEN    /* Nom'#233's per activitats "sueltas"' +
        ' */'
      '  BEGIN'
      
        '      TER_ACT='#39#39'; TER_ANT='#39#39'; HOR_ACT=0; HOR_ANT=0; NUM=NULL; CO' +
        'NTA=1; ACT_ANT=NULL; ACT_ACT=NULL;'
      
        '      TIPUS=0; ACTIVITAT=:C_ACTIVITAT; HORA=NULL; TERAPEUTA=NULL' +
        '; PACIENT=NULL; PRESTACIO=NULL; ACT_FICT=NULL; CF=NULL; SUSPEND;'
      '      '
      
        '      FOR SELECT CAST(P.HC AS VARCHAR(8))||'#39' '#39'||P.PACIENT,P.PACI' +
        'ENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC,P.ACTIVITAT,MIN(P.HORA)'
      
        '      FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO,:DIA' +
        ') P'
      
        '      JOIN DRETSPRESTA DP ON P.PRESTACIO=DP.C_PRESTACIO AND DP.C' +
        '_DRET='#39'P115'#39
      
        '      GROUP BY P.HC,P.PACIENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC' +
        ',P.ACTIVITAT'
      '      ORDER BY 7,6,3 DESC,2'
      
        '      INTO :PAC_ACT,:PACI,:PRE_ACT,:ACT_F,:CF_ACT,:ACT_ACT,:HOR_' +
        'ACT'
      '      DO BEGIN'
      
        '          /* per cada canvi d'#39'activitat i/o hora canviem tipus *' +
        '/'
      '          IF ((HOR_ACT<>HOR_ANT) OR (ACT_ACT<>ACT_ANT)) THEN'
      '          BEGIN'
      
        '              IF (ACT_ACT <> ACT_ANT) /* Si el canvi '#233's d'#39'activi' +
        'tat */'
      
        '              THEN SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSC' +
        'ODI='#39'ACTIVITATFI'#39' AND C_CODI=:ACT_ANT INTO :R_CODI;'
      ''
      
        '              IF ((R_CODI='#39'E'#39') AND (F_MODULO(HOR_ANT,2)=1) AND (' +
        'HOR_ANT<>11)) THEN   /* Nom'#233's buits per R_CODI='#39'E'#39' i hores en pu' +
        'nt. A les 13h no hi ha buits */'
      
        '              BEGIN                                             ' +
        '                     /* usem HOR_ANT pq si s'#243'n diferents mirem l' +
        #39'anterior i si no, '#233's que s'#243'n iguals */'
      '                  /* Buits */'
      
        '                  SELECT N_CODI2 FROM CODICAMPSALFA WHERE TIPUSC' +
        'ODI='#39'ACTIVITATFI'#39' AND C_CODI=:ACT_ANT INTO :MAX_ANT;'
      '                  IF (MAX_ANT IS NULL) THEN MAX_ANT=0;'
      ''
      '                  WHILE (CONTA <= MAX_ANT) DO'
      '                  BEGIN'
      
        '                      TIPUS=3; TERAPEUTA='#39#39'; PACIENT=NULL; PREST' +
        'ACIO=NULL; ACT_FICT=NULL; MOSTRAR = '#39'    '#39'||ACT_ANT||'#39' LLIURE'#39'; ' +
        'NUM=CONTA; CF=NULL; SUSPEND;'
      '                      CONTA=CONTA+1;'
      '                  END;'
      '              END;'
      '              '
      '              IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '              ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '              ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '              ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '              ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '              ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '              ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '              ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '              ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '              ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '              ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '              ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '              ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '              ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '              ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '              ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '              ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '              ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '              ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '              ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '              ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '              ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '              ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '              ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '              ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '              ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      ''
      
        '              SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39 +
        'ACTIVITATFI'#39' AND C_CODI=:ACT_ACT INTO :R_CODI;'
      '              IF (R_CODI='#39'E'#39') THEN HORA=HORA||'#39' '#39'||ACT_ACT;'
      '                              ELSE HORA=HORA;'
      '              ACTIVITAT=ACT_ACT;'
      '              '
      
        '              TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NUL' +
        'L; ACT_FICT=NULL; MOSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; CF' +
        '=NULL; SUSPEND; HORA=NULL;'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; PRESTACIO=' +
        'PRE_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT; CONTA=1; NUM=C' +
        'ONTA; CF=CF_ACT; SUSPEND;'
      '              CONTA=CONTA+1;'
      '          END;'
      '          ELSE BEGIN'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; HORA=NULL; PACIENT=PAC_ACT;' +
        ' PRESTACIO=PRE_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT;'
      
        '              NUM=CONTA; CF=CF_ACT; ACTIVITAT=ACT_ACT; SUSPEND; ' +
        'CONTA=CONTA+1;'
      '          END;'
      '          HOR_ANT=HOR_ACT;'
      '          ACT_ANT=ACT_ACT;'
      '          H=HOR_ACT+1;'
      '      END;'
      
        '      /* mirem els buits de la '#250'ltima activitat de l'#39#250'ltim regis' +
        'tre */'
      
        '      SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39'ACTIVITA' +
        'TFI'#39' AND C_CODI=:ACT_ACT INTO :R_CODI;'
      '      '
      
        '      IF ((R_CODI='#39'E'#39') AND (F_MODULO(HOR_ACT,2)=1) AND (HOR_ACT<' +
        '>11)) THEN   /* Nom'#233's buits per R_CODI='#39'E'#39' i hores en punt. A le' +
        's 13h no hi ha buits */'
      
        '      BEGIN                                                     ' +
        '             /* usem HOR_ANT pq si s'#243'n diferents mirem l'#39'anterio' +
        'r i si no, '#233's que s'#243'n iguals */'
      '          /* Buits */'
      
        '          SELECT N_CODI2 FROM CODICAMPSALFA WHERE TIPUSCODI='#39'ACT' +
        'IVITATFI'#39' AND C_CODI=:ACT_ACT INTO :MAX_ANT;'
      '          IF (MAX_ANT IS NULL) THEN MAX_ANT=0;'
      ''
      '          WHILE (CONTA <= MAX_ANT) DO'
      '          BEGIN'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NUL' +
        'L; ACT_FICT=NULL; MOSTRAR = '#39'    '#39'||ACT_ACT||'#39' LLIURE'#39'; NUM=CONT' +
        'A; CF=NULL; SUSPEND;'
      '              CONTA=CONTA+1;'
      '          END;'
      '      END;'
      '  END;'
      '  '
      'END'
      ''
      
        '          /* IF (R_CODI='#39'E'#39') THEN   /* Nom'#233's buits per R_CODI='#39'E' +
        #39' *'
      '          BEGIN'
      '            WHILE ((H<HOR_ACT) AND (H<=HF)) DO'
      '            BEGIN'
      
        '              /* BUITS:  E-BIKE de 10 a 13:30 + 15 a 17 ==> 10, ' +
        '11, 12, 15 i 17'
      
        '                         CARDIO de 10 a 11              ==> 10  ' +
        '                *'
      ''
      
        '              IF (F_MODULO(H,2)=1) THEN  /* Nom'#233's buits a les ho' +
        'res en punt *'
      '              BEGIN'
      '                  IF      (H=1)  THEN HORA_='#39'H08_00'#39';'
      '                  ELSE IF (H=2)  THEN HORA_='#39'H08_30'#39';'
      '                  ELSE IF (H=3)  THEN HORA_='#39'H09_00'#39';'
      '                  ELSE IF (H=4)  THEN HORA_='#39'H09_30'#39';'
      '                  ELSE IF (H=5)  THEN HORA_='#39'H10_00'#39';'
      '                  ELSE IF (H=6)  THEN HORA_='#39'H10_30'#39';'
      '                  ELSE IF (H=7)  THEN HORA_='#39'H11_00'#39';'
      '                  ELSE IF (H=8)  THEN HORA_='#39'H11_30'#39';'
      '                  ELSE IF (H=9)  THEN HORA_='#39'H12_00'#39';'
      '                  ELSE IF (H=10) THEN HORA_='#39'H12_30'#39';'
      '                  ELSE IF (H=11) THEN HORA_='#39'H13_00'#39';'
      '                  ELSE IF (H=12) THEN HORA_='#39'H13_30'#39';'
      '                  ELSE IF (H=13) THEN HORA_='#39'H14_00'#39';'
      '                  ELSE IF (H=14) THEN HORA_='#39'H14_30'#39';'
      '                  ELSE IF (H=15) THEN HORA_='#39'H15_00'#39';'
      '                  ELSE IF (H=16) THEN HORA_='#39'H15_30'#39';'
      '                  ELSE IF (H=17) THEN HORA_='#39'H16_00'#39';'
      '                  ELSE IF (H=18) THEN HORA_='#39'H16_30'#39';'
      '                  ELSE IF (H=19) THEN HORA_='#39'H17_00'#39';'
      '                  ELSE IF (H=20) THEN HORA_='#39'H17_30'#39';'
      '                  ELSE IF (H=21) THEN HORA_='#39'H18_00'#39';'
      '                  ELSE IF (H=22) THEN HORA_='#39'H18_30'#39';'
      '                  ELSE IF (H=23) THEN HORA_='#39'H19_00'#39';'
      '                  ELSE IF (H=24) THEN HORA_='#39'H19_30'#39';'
      '                  ELSE IF (H=25) THEN HORA_='#39'H20_00'#39';'
      '                  ELSE IF (H=26) THEN HORA_='#39'H20_30'#39';'
      ''
      '                  /* Buits *'
      
        '                  FOR SELECT C_CODI, N_CODI2 FROM CODICAMPSALFA ' +
        'WHERE TIPUSCODI='#39'ACTIVITATFI'#39' AND N_CODI2>0 AND R_CODI='#39'E'#39
      '                  AND NOT (N_CODI LIKE '#39'%*%'#39')'
      '                  ORDER BY C_CODI'
      '                  INTO :ACT_MAX, :MAX_ANT'
      '                  DO BEGIN'
      '                      IF (((ACT_MAX='#39'CARDIO'#39') AND (H=5)) OR'
      
        '                          ((ACT_MAX='#39'E-BIKE'#39') AND ((H=5) OR (H=7' +
        ') OR (H=9) OR (H=15) OR (H=17))) OR'
      
        '                          ((ACT_MAX<>'#39'CARDIO'#39') AND (ACT_MAX<>'#39'E-' +
        'BIKE'#39'))'
      '                         )'
      '                      THEN BEGIN'
      '                          IF (MAX_ANT IS NULL) THEN MAX_ANT=0;'
      ''
      '                          HORA=HORA_||'#39' '#39'||ACT_MAX;'
      '                          ACTIVITAT=ACT_MAX; CONTA=1;'
      
        '                          TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; P' +
        'RESTACIO=NULL; ACT_FICT=NULL; MOSTRAR=ESPAIS40||HORA||ESPAIS40; ' +
        'NUM=NULL; CF=NULL; SUSPEND; HORA=NULL;'
      ''
      '                          WHILE (CONTA <= MAX_ANT) DO'
      '                          BEGIN'
      
        '                              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=NUL' +
        'L; PRESTACIO=NULL; ACT_FICT=NULL; MOSTRAR = '#39'    '#39'||ACT_MAX||'#39' L' +
        'LIURE'#39'; NUM=CONTA; CF=NULL; SUSPEND;'
      '                              CONTA=CONTA+1;'
      '                          END;'
      '                      END;'
      '                  END;'
      '              END;'
      ''
      '              H=H+1;'
      '            END;'
      '          END;  */'
      ''
      '')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 388
    Top = 268
  end
  object ListGridNew: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListGridNew'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1),DIA INTEGER) /* DIA: -1:' +
        'AHIR, 0:AVUI, 1:DEM'#192' */'
      'RETURNS (ACTIVITAT VARCHAR(15),'
      '         ACT_FICT  VARCHAR(16),'
      '         TERAPEUTA VARCHAR(20),'
      '         PACI      VARCHAR(92),'
      '         PACIENT   VARCHAR(82),'
      '         PRESTA    VARCHAR(4),'
      '         CF        VARCHAR(2),'
      '         HORA      INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACTI_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTI_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TERA_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TERA_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE PACI_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PACI_ANT    VARCHAR(92);'
      '  DECLARE VARIABLE PACIENT_ACT VARCHAR(82);'
      '  DECLARE VARIABLE PACIENT_ANT VARCHAR(82);'
      '  DECLARE VARIABLE PRES_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE PRES_ANT    VARCHAR(4);'
      '  DECLARE VARIABLE H_ACT       INTEGER;'
      '  DECLARE VARIABLE H_ANT       INTEGER;'
      '  DECLARE VARIABLE PRIMER      SMALLINT;'
      '  DECLARE VARIABLE CF_ACT      VARCHAR(4);'
      '  DECLARE VARIABLE CF_ANT      VARCHAR(4);'
      'BEGIN'
      '    IF (DIA IS NULL) THEN DIA=0;'
      
        '    ACTI_ANT='#39#39'; ACTF_ANT='#39#39'; TERA_ANT='#39#39'; PACI_ANT='#39#39'; PACIENT_' +
        'ANT='#39#39'; PRES_ANT='#39#39'; H_ANT=0; PRIMER=0; CF_ANT='#39#39';'
      '    '
      
        '    FOR SELECT P.ACTIVITAT,P.ACT_FICT,P.TERAPEUTA, CAST(P.HC AS ' +
        'VARCHAR(8))||'#39' '#39'||P.PACIENT, P.PACIENT, P.PRESTACIO, P.HORA, P.C' +
        'ENTREFAC'
      
        '    FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO,:DIA) ' +
        'P'
      
        '    JOIN DRETSPRESTA DP ON P.PRESTACIO=DP.C_PRESTACIO AND DP.C_D' +
        'RET='#39'P115'#39
      
        '    /*WHERE PRESTACIO IN('#39'1004'#39','#39'2014'#39','#39'2023'#39','#39'2008'#39') /-OR (PRES' +
        'TACIO='#39'2008'#39' AND CENTREFAC IN ('#39'00'#39','#39'50'#39'))-/ */'
      '    ORDER BY 1,2,3,4,5,6,7'
      
        '    INTO :ACTI_ACT, :ACTF_ACT, :TERA_ACT, :PACI_ACT, :PACIENT_AC' +
        'T, :PRES_ACT, :H_ACT, :CF_ACT'
      '    DO BEGIN'
      '        IF (PRIMER=0) THEN'
      '        BEGIN'
      '            PRIMER=1;'
      
        '            ACTI_ANT=ACTI_ACT; ACTF_ANT=ACTF_ACT; TERA_ANT=TERA_' +
        'ACT; PACI_ANT=PACI_ACT; PACIENT_ANT=PACIENT_ACT;'
      '            PRES_ANT=PRES_ACT; H_ANT=H_ACT; CF_ANT=CF_ACT;'
      '        END;'
      ''
      
        '        IF (NOT ((ACTI_ANT=ACTI_ACT) AND (TERA_ANT=TERA_ACT) AND' +
        ' (PACI_ANT=PACI_ACT) AND (H_ANT=H_ACT-1))) THEN'
      '        BEGIN'
      
        '            ACTIVITAT=ACTI_ACT; ACT_FICT=ACTF_ACT; TERAPEUTA=TER' +
        'A_ACT; PACIENT=PACIENT_ACT; PACI=PACI_ACT; PRESTA=PRES_ACT; HORA' +
        '=H_ACT; CF=CF_ACT;'
      '            SUSPEND;'
      '        END;'
      ''
      
        '        ACTI_ANT=ACTI_ACT; ACTF_ANT=ACTF_ACT; TERA_ANT=TERA_ACT;' +
        ' PACI_ANT=PACI_ACT; PACIENT_ANT=PACIENT_ACT;'
      '        PRES_ANT=PRES_ACT; H_ANT=H_ACT; CF_ANT=CF_ACT;'
      '    END;'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 445
    Top = 265
  end
  object ListGrid: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListGrid'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_ACTIVITAT VARCHAR(15), OPCIO CHAR(1), DIA INTEGER)  /* DIA: -' +
        '1:AHIR, 0:AVUI, 1:DEMA */'
      'RETURNS (HORA      VARCHAR(6),'
      '         ACTIVITAT VARCHAR(15),'
      '         ACT_FICT  VARCHAR(16),'
      '         TERAPEUTA VARCHAR(20),'
      '         TPRINT    VARCHAR(20),  /* terapeuta a pintar */'
      '         HC        VARCHAR(92),'
      '         PRESTACIO VARCHAR(4),'
      '         CF        VARCHAR(2),'
      '         ORDRE     INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE H          INTEGER;'
      '  DECLARE VARIABLE H_ANT      INTEGER;'
      '  DECLARE VARIABLE ACTI       VARCHAR(15);'
      '  DECLARE VARIABLE ACTI_ANT   VARCHAR(15);'
      '  DECLARE VARIABLE ACTF       VARCHAR(15);'
      '  DECLARE VARIABLE ACTF_ANT   VARCHAR(15);'
      '  DECLARE VARIABLE TERA       VARCHAR(20);'
      '  DECLARE VARIABLE TERA_ANT   VARCHAR(15);'
      '  DECLARE VARIABLE TERA_BUIT  VARCHAR(20);'
      '  DECLARE VARIABLE PACI       VARCHAR(92);'
      '  DECLARE VARIABLE PRES       VARCHAR(4);'
      '  DECLARE VARIABLE CFAC       VARCHAR(2);'
      '  DECLARE VARIABLE HFETA      INTEGER;'
      '  DECLARE VARIABLE HINI       INTEGER;'
      '  DECLARE VARIABLE HFIN       INTEGER;'
      '  DECLARE VARIABLE ORDR       INTEGER;'
      '  DECLARE VARIABLE PACIENT    VARCHAR(82);'
      '  DECLARE VARIABLE ASSIGNATS  INTEGER;     /*  PARTE 57751 */'
      '  DECLARE VARIABLE MAXPAC     INTEGER;     /*  PARTE 57751 */'
      '  DECLARE VARIABLE I          INTEGER;     /*  PARTE 57751 */'
      '  DECLARE VARIABLE J          INTEGER;     /*  PARTE 57751 */'
      '  DECLARE VARIABLE CACTIVITAT VARCHAR(15); /*  PARTE 57751 */'
      '  DECLARE VARIABLE HORA_ANT   VARCHAR(6);  /*  PARTE 57751 */'
      '  DECLARE VARIABLE CODI       VARCHAR(5);'
      '  DECLARE VARIABLE TERA_BUIT_ANT VARCHAR(20);'
      '  DECLARE VARIABLE TEPAC      INTEGER;'
      '  DECLARE VARIABLE DATA_      DATE;'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      
        '  /* 8.11.2012: patri diu que noms mostrem fins a hora 17h, i.e.' +
        ' HF=19. Per tant, canvio HF=26 per HF=19 */'
      
        '  /* 26.10.2016: Patri diu que vol fins les 19h ==> canvio HF a ' +
        '26 de nou */'
      '  IF      (OPCIO='#39'M'#39') THEN BEGIN HINI=1;  HFIN=14; END;'
      '  ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HINI=15; HFIN=26; END;'
      '                      ELSE BEGIN HINI=1;  HFIN=26; END;'
      '  /* Primer actualitzem els TEPACIENTS de la taula HORARIGYM */'
      
        '  EXECUTE PROCEDURE P_HORARIGYM_TEPACIENTS(:C_ACTIVITAT,:OPCIO,:' +
        'DIA);'
      ''
      '  SELECT "TODAY" FROM CONFIG WHERE 1=1 INTO :DATA_;'
      '  DATA_ = DATA_ + :DIA;'
      ''
      
        '  FOR SELECT DISTINCT ACTIVITAT FROM P_TRACTAMENTS_LISTACTIVITAT' +
        'S(:C_ACTIVITAT,:OPCIO,:DIA)'
      '  WHERE ACTIVITAT NOT LIKE '#39'%*%'#39
      '  ORDER BY ACTIVITAT'
      '  INTO :CACTIVITAT'
      '  DO BEGIN'
      '    HFETA=HINI;'
      
        '    ORDR=1; H_ANT=0; ACTI_ANT='#39#39'; ACTF_ANT='#39#39'; TERA_ANT='#39#39'; TPRI' +
        'NT='#39#39'; ASSIGNATS=1; J=0; HORA_ANT='#39#39';'
      ''
      
        '/*    FOR SELECT ACTIVITAT,ACT_FICT,TERAPEUTA, CAST(HC AS VARCHA' +
        'R(8))||'#39' '#39'||PACIENT, PACIENT, PRESTACIO, MIN(HORA)'
      
        '    FROM P_TRACTAMENTS_LISTACTIVITATS(:CACTIVITAT,:OPCIO) WHERE ' +
        'PRESTACIO IN('#39'1004'#39','#39'2014'#39','#39'2023'#39')'
      
        '    GROUP BY ACTIVITAT,ACT_FICT,TERAPEUTA,HC,PACIENT,PRESTACIO O' +
        'RDER BY /-6,1,2,5 DESC,4-/ 7,1,3,6 DESC,5 */'
      
        '    FOR SELECT ACTIVITAT,ACT_FICT,TERAPEUTA,PACI,PACIENT,PRESTA,' +
        'HORA,CF'
      '    FROM P_TRACTAMENTS_LISTGRIDNEW(:CACTIVITAT,:OPCIO,:DIA)'
      '    ORDER BY 7,1,3,6 DESC,5'
      '    INTO :ACTI, :ACTF, :TERA, :PACI, :PACIENT, :PRES, :H, :CFAC'
      '    DO BEGIN'
      '      WHILE (HFETA<H) DO'
      '      BEGIN'
      
        '          IF      (HFETA=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (HFETA=' +
        '2)  THEN HORA='#39'H08_30'#39'; ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      
        '          ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (HFETA=' +
        '5)  THEN HORA='#39'H10_00'#39'; ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      
        '          ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (HFETA=' +
        '8)  THEN HORA='#39'H11_30'#39'; ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      
        '          ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39'; ELSE IF (HFETA=' +
        '11) THEN HORA='#39'H13_00'#39'; ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      
        '          ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39'; ELSE IF (HFETA=' +
        '14) THEN HORA='#39'H14_30'#39'; ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      
        '          ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39'; ELSE IF (HFETA=' +
        '17) THEN HORA='#39'H16_00'#39'; ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      
        '          ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39'; ELSE IF (HFETA=' +
        '20) THEN HORA='#39'H17_30'#39'; ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      
        '          ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39'; ELSE IF (HFETA=' +
        '23) THEN HORA='#39'H19_00'#39'; ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      
        '          ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39'; ELSE IF (HFETA=' +
        '26) THEN HORA='#39'H20_30'#39';'
      ''
      '          IF (HORA<>HORA_ANT) THEN ORDR=0;'
      '          TERA_BUIT='#39#39'; TPRINT='#39#39'; TERA_BUIT_ANT='#39#39';'
      ''
      '          MAXPAC=NULL;'
      '          SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA C'
      
        '          WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT' +
        ' NULL AND C.R_CODI IN('#39'F'#39','#39'T'#39','#39'R'#39') AND C.C_CODI=:ACTI_ANT'
      '          INTO :MAXPAC;'
      '          IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '          IF ((MAXPAC=1) OR (F_MODULO(H_ANT,2)=1)) THEN /* 10.1.' +
        '2013 - I: Noms mirar buits si l'#39'hora s en punt o t 1 activitat c' +
        'ada mitja hora */'
      
        '          BEGIN  /* Abans de pintar el proper terapeuta, caldria' +
        ' pintar els BUITS de l'#39'anterior */'
      
        '                 /* cal mirar si en HORARIGYM el terapeuta TERA_' +
        'ANT t activitat ACT_ANT a l'#39'hora H_ANT  */'
      '            J=0;'
      
        '            SELECT H.C_METGE,H.TEPACIENTS,COUNT(*) FROM HORARIGY' +
        'M H JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      
        '            WHERE M.METGE=:TERA_ANT AND H.C_ACTIVITAT=:ACTI_ANT ' +
        'AND H.HORA=:H_ANT AND (H.TEPACIENTS < :MAXPAC)'
      
        '            AND (H.DATAINICI<=:DATA_) AND H.DATAFI IS NULL GROUP' +
        ' BY H.C_METGE,H.TEPACIENTS INTO :CODI,:TEPAC,:J;'
      '            IF (J IS NULL) THEN J=0;'
      ''
      '            IF (J>0) THEN'
      '            BEGIN'
      '              /*IF (TERA=TERA_ANT) THEN TPRINT=TERA;  10.1.2013'
      
        '                                 ELSE */ IF (ORDR=0) THEN TPRINT' +
        '=TERA_ANT;'
      
        '                                                     ELSE TPRINT' +
        '='#39#39';'
      ''
      
        '              I=TEPAC/*ASSIGNATS*/; HC='#39' '#39'/*'#39'BUIT'#39'*/; PRESTACIO=' +
        'NULL; CF=NULL; ACTIVITAT=ACTI_ANT; ACT_FICT=ACTF_ANT; TERAPEUTA=' +
        'TERA_ANT;'
      '              IF (I=MAXPAC) THEN J=0;'
      '              WHILE (I<MAXPAC) DO'
      '              BEGIN'
      '                  ORDR=ORDR+1;'
      '                  ORDRE=ORDR; SUSPEND;'
      '                  I=I+1; HORA_ANT=HORA;'
      
        '                  /* actualitzo el TEPACIENTS per a que no es re' +
        'peteixi el BUIT al canvi d'#39'hora */'
      '                  UPDATE HORARIGYM SET TEPACIENTS=TEPACIENTS+1'
      
        '                  WHERE C_METGE=:CODI AND C_ACTIVITAT=:ACTI_ANT ' +
        'AND HORA=:H_ANT'
      '                  AND   (DATAINICI<=:DATA_) AND DATAFI IS NULL;'
      '              END;'
      '            END;'
      
        '          END; /* 10.1.2013 - F: Noms mirar buits si l'#39'hora s en' +
        ' punt o t 1 activitat cada mitja hora */'
      ''
      
        '          /* Quan hi ha un canvi d'#39'hora cal afegir els terapeute' +
        's que tenen BUITS, els que no tenen cap'
      
        '          hora assignada d'#39'aquesta activitat per que s tenen a l' +
        #39'HORARIGYM hora enregistrada */'
      '          IF (ORDR=0) THEN ORDR=1;'
      '                      ELSE ORDR=ORDR+1;'
      ''
      '          MAXPAC=NULL;'
      '          SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA C'
      
        '          WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT' +
        ' NULL AND C.R_CODI IN('#39'F'#39','#39'T'#39','#39'R'#39')'
      '          AND C.C_CODI=:ACTI'
      '          INTO :MAXPAC;'
      '          IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '          IF ((MAXPAC=1) OR (F_MODULO(HFETA,2)=1)) THEN BEGIN /*' +
        ' 10.1.2013 - I: Noms mirar buits si l'#39'hora s en punt o t 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      
        '            FOR SELECT DISTINCT H.C_METGE, M.METGE, H.TEPACIENTS' +
        ' FROM HORARIGYM H'
      '            JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      
        '            WHERE H.C_ACTIVITAT=:ACTI AND H.HORA=:HFETA AND (H.T' +
        'EPACIENTS < :MAXPAC)'
      '            AND (H.DATAINICI<=:DATA_) AND H.DATAFI IS NULL'
      '            ORDER BY M.METGE'
      '            INTO :CODI, :TERA_BUIT, :I'
      '            DO BEGIN'
      
        '              ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPEUTA=TERA_BUIT' +
        '; HC='#39' '#39'/*'#39'BUIT'#39'*/; PRESTACIO=NULL; CF=NULL;'
      '              WHILE (I<MAXPAC) DO'
      '              BEGIN'
      
        '                  IF ((TERA_BUIT<>TPRINT) AND (TERA_BUIT<>TERA_B' +
        'UIT_ANT)) THEN TPRINT=TERA_BUIT;'
      
        '                                                                ' +
        '          ELSE TPRINT='#39#39';'
      '                  ORDRE=ORDR;'
      '                  SUSPEND;'
      ''
      
        '                  /* actualitzo el TEPACIENTS per a que no es re' +
        'peteixi el BUIT al canvi d'#39'hora */'
      '                  UPDATE HORARIGYM SET TEPACIENTS=TEPACIENTS+1'
      
        '                  WHERE C_METGE=:CODI AND C_ACTIVITAT=:ACTI AND ' +
        'HORA=:HFETA'
      '                  AND   (DATAINICI<=:DATA_) AND DATAFI IS NULL;'
      ''
      
        '                  I=I+1; ORDR=ORDR+1; HORA_ANT=HORA; TERA_BUIT_A' +
        'NT=TERA_BUIT;'
      '              END;'
      '            END;'
      
        '          END; /* 10.1.2013 - F: Noms mirar buits si l'#39'hora s en' +
        ' punt o t 1 activitat cada mitja hora */'
      ''
      
        '          ACTIVITAT=NULL; ACT_FICT=NULL; TERAPEUTA=NULL; TPRINT=' +
        'NULL; HC=NULL; PRESTACIO=NULL; CF=NULL; ORDRE=NULL; SUSPEND; HFE' +
        'TA=HFETA+1; HORA_ANT=HORA;'
      '      END;'
      '      IF (HFETA=H) THEN'
      '      BEGIN'
      
        '          IF      (H=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (H=2)  THEN' +
        ' HORA='#39'H08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      
        '          ELSE IF (H=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (H=5)  THEN' +
        ' HORA='#39'H10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      
        '          ELSE IF (H=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (H=8)  THEN' +
        ' HORA='#39'H11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      
        '          ELSE IF (H=10) THEN HORA='#39'H12_30'#39'; ELSE IF (H=11) THEN' +
        ' HORA='#39'H13_00'#39'; ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      
        '          ELSE IF (H=13) THEN HORA='#39'H14_00'#39'; ELSE IF (H=14) THEN' +
        ' HORA='#39'H14_30'#39'; ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      
        '          ELSE IF (H=16) THEN HORA='#39'H15_30'#39'; ELSE IF (H=17) THEN' +
        ' HORA='#39'H16_00'#39'; ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      
        '          ELSE IF (H=19) THEN HORA='#39'H17_00'#39'; ELSE IF (H=20) THEN' +
        ' HORA='#39'H17_30'#39'; ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      
        '          ELSE IF (H=22) THEN HORA='#39'H18_30'#39'; ELSE IF (H=23) THEN' +
        ' HORA='#39'H19_00'#39'; ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      
        '          ELSE IF (H=25) THEN HORA='#39'H20_00'#39'; ELSE IF (H=26) THEN' +
        ' HORA='#39'H20_30'#39';'
      ''
      
        '          IF ((H=H_ANT) AND (ACTI=ACTI_ANT)) THEN ORDR=ORDR+1; E' +
        'LSE ORDR=1;'
      ''
      '          TERA_BUIT='#39#39'; TERA_BUIT_ANT='#39#39';'
      
        '          IF ((H=H_ANT) AND (ACTI=ACTI_ANT) AND (TERA=TERA_ANT))' +
        ' THEN BEGIN'
      '              TPRINT='#39#39'; ASSIGNATS=ASSIGNATS+1;'
      '          END;'
      '          ELSE BEGIN'
      '            MAXPAC=NULL;'
      
        '            SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA' +
        ' C'
      
        '            WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS N' +
        'OT NULL AND C.R_CODI IN('#39'F'#39','#39'T'#39','#39'R'#39')'
      '            AND C.C_CODI=:ACTI_ANT'
      '            INTO :MAXPAC;'
      '            IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '            IF ((MAXPAC=1) OR (F_MODULO(H_ANT,2)=1)) THEN BEGIN ' +
        '/* 10.1.2013 - I: Noms mirar buits si l'#39'hora s en punt o t 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      '              J=0;'
      
        '              /* Abans de pintar el proper terapeuta, caldria pi' +
        'ntar els BUITS de l'#39'anterior */'
      
        '              IF ((H=H_ANT) AND (ACTI=ACTI_ANT) AND (TERA<>TERA_' +
        'ANT)) THEN'
      '              BEGIN'
      
        '                   /* cal mirar si en HORARIGYM el terapeuta TER' +
        'A_ANT t activitat ACT_ANT a l'#39'hora H_ANT */'
      
        '                   SELECT H.C_METGE,H.TEPACIENTS,COUNT(*) FROM H' +
        'ORARIGYM H JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      
        '                   WHERE M.METGE=:TERA_ANT AND H.C_ACTIVITAT=:AC' +
        'TI_ANT AND H.HORA=:H_ANT AND(H.TEPACIENTS < :MAXPAC)'
      
        '                   AND (H.DATAINICI<=:DATA_) AND H.DATAFI IS NUL' +
        'L'
      '                   GROUP BY H.C_METGE,H.TEPACIENTS'
      '                   INTO :CODI, :TEPAC, :J;'
      '                   IF (J IS NULL) THEN J=0;'
      ''
      '                   IF (J>0) THEN'
      '                   BEGIN'
      '                       IF (TERA=TERA_ANT) THEN BEGIN'
      
        '                           ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPE' +
        'UTA=TERA; TPRINT=TERA;'
      '                       END;'
      '                       ELSE TPRINT='#39#39';'
      ''
      
        '                       I=TEPAC/*ASSIGNATS*/; HC='#39' '#39'/*'#39'BUIT'#39'*/; P' +
        'RESTACIO=NULL; CF=NULL;'
      '                       IF (I=MAXPAC) THEN J=0;'
      '                       WHILE (I<MAXPAC) DO'
      '                       BEGIN'
      
        '                           ORDRE=ORDR; SUSPEND; I=I+1; ORDR=ORDR' +
        '+1; HORA_ANT=HORA;'
      
        '                           /* actualitzo el TEPACIENTS per a que' +
        ' no es repeteixi el BUIT al canvi d'#39'hora */'
      
        '                           UPDATE HORARIGYM SET TEPACIENTS=TEPAC' +
        'IENTS+1'
      
        '                           WHERE C_METGE=:CODI AND C_ACTIVITAT=:' +
        'ACTI_ANT AND HORA=:H_ANT'
      
        '                           AND   (DATAINICI<=:DATA_) AND DATAFI ' +
        'IS NULL;'
      '                       END;'
      '                   END;'
      '              END;'
      
        '            END; /* 10.1.2013 - I: Noms mirar buits si l'#39'hora s ' +
        'en punt o t 1 activitat cada mitja hora */'
      
        '            IF ((TERA=TERA_ANT) AND (J<>0)) THEN TPRINT='#39#39'; ELSE' +
        ' TPRINT=TERA;'
      '            ASSIGNATS=1;'
      '          END;'
      
        '          ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPEUTA=TERA; HC=PACI' +
        '; PRESTACIO=PRES; ORDRE=ORDR; CF=CFAC; SUSPEND; HORA_ANT=HORA;'
      '      END;'
      '      H_ANT=H; ACTI_ANT=ACTI; ACTF_ANT=ACTF; TERA_ANT=TERA;'
      '    END;'
      ''
      '    MAXPAC=NULL;'
      '    SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA C'
      
        '    WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NULL ' +
        'AND C.R_CODI IN('#39'F'#39','#39'T'#39','#39'R'#39')'
      '    AND C.C_CODI=:ACTI'
      '    INTO :MAXPAC;'
      '    IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '    IF ((MAXPAC=1) OR (F_MODULO(H,2)=1)) THEN BEGIN /* 10.1.2013' +
        ' - I: Noms mirar buits si l'#39'hora s en punt o t 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      
        '      /* Cal mirar si el terapeuta de l'#39'ltim registre t BUIT'#39's *' +
        '/'
      '      J=0; ACTF=NULL; ACTF_ANT=NULL; ACT_FICT=NULL;'
      
        '      SELECT H.C_METGE,H.TEPACIENTS,COUNT(*) FROM HORARIGYM H JO' +
        'IN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      '      WHERE M.METGE=:TERA AND H.C_ACTIVITAT=:ACTI AND H.HORA=:H'
      '      AND (H.DATAINICI<=:DATA_) AND H.DATAFI IS NULL'
      '      GROUP BY H.C_METGE,H.TEPACIENTS'
      '      INTO :CODI, :TEPAC, :J;'
      '      IF (J IS NULL) THEN J=0;'
      ''
      '      IF (J>0) THEN'
      '      BEGIN'
      
        '        I=TEPAC/*ASSIGNATS*/; HC='#39' '#39'/*'#39'BUIT'#39'*/; PRESTACIO=NULL; ' +
        'TPRINT='#39#39'; CF=NULL;'
      '        IF (I=MAXPAC) THEN J=0;'
      '        WHILE (I<MAXPAC) DO'
      '        BEGIN'
      '            ORDR=ORDR+1;'
      '            ORDRE=ORDR; SUSPEND;'
      ''
      
        '            /* actualitzo el TEPACIENTS per a que no es repeteix' +
        'i el BUIT al canvi d'#39'hora */'
      '            UPDATE HORARIGYM SET TEPACIENTS=TEPACIENTS+1'
      
        '            WHERE C_METGE=:CODI AND C_ACTIVITAT=:ACTI AND HORA=:' +
        'H'
      '            AND   (DATAINICI<=:DATA_) AND DATAFI IS NULL;'
      ''
      '            I=I+1; HORA_ANT=HORA;'
      '        END;'
      '      END;'
      
        '    END; /* 10.1.2013 - I: Noms mirar buits si l'#39'hora s en punt ' +
        'o t 1 activitat cada mitja hora */'
      ''
      '    WHILE (HFETA<=HFIN) DO'
      '    BEGIN'
      
        '      IF      (HFETA=1)  THEN HORA='#39'H08_00'#39'; ELSE IF (HFETA=2)  ' +
        'THEN HORA='#39'H08_30'#39'; ELSE IF (HFETA=3)  THEN HORA='#39'H09_00'#39';'
      
        '      ELSE IF (HFETA=4)  THEN HORA='#39'H09_30'#39'; ELSE IF (HFETA=5)  ' +
        'THEN HORA='#39'H10_00'#39'; ELSE IF (HFETA=6)  THEN HORA='#39'H10_30'#39';'
      
        '      ELSE IF (HFETA=7)  THEN HORA='#39'H11_00'#39'; ELSE IF (HFETA=8)  ' +
        'THEN HORA='#39'H11_30'#39'; ELSE IF (HFETA=9)  THEN HORA='#39'H12_00'#39';'
      
        '      ELSE IF (HFETA=10) THEN HORA='#39'H12_30'#39'; ELSE IF (HFETA=11) ' +
        'THEN HORA='#39'H13_00'#39'; ELSE IF (HFETA=12) THEN HORA='#39'H13_30'#39';'
      
        '      ELSE IF (HFETA=13) THEN HORA='#39'H14_00'#39'; ELSE IF (HFETA=14) ' +
        'THEN HORA='#39'H14_30'#39'; ELSE IF (HFETA=15) THEN HORA='#39'H15_00'#39';'
      
        '      ELSE IF (HFETA=16) THEN HORA='#39'H15_30'#39'; ELSE IF (HFETA=17) ' +
        'THEN HORA='#39'H16_00'#39'; ELSE IF (HFETA=18) THEN HORA='#39'H16_30'#39';'
      
        '      ELSE IF (HFETA=19) THEN HORA='#39'H17_00'#39'; ELSE IF (HFETA=20) ' +
        'THEN HORA='#39'H17_30'#39'; ELSE IF (HFETA=21) THEN HORA='#39'H18_00'#39';'
      
        '      ELSE IF (HFETA=22) THEN HORA='#39'H18_30'#39'; ELSE IF (HFETA=23) ' +
        'THEN HORA='#39'H19_00'#39'; ELSE IF (HFETA=24) THEN HORA='#39'H19_30'#39';'
      
        '      ELSE IF (HFETA=25) THEN HORA='#39'H20_00'#39'; ELSE IF (HFETA=26) ' +
        'THEN HORA='#39'H20_30'#39';'
      ''
      '      /* ORDR=ORDR+1; */ TERA_BUIT='#39#39'; TERA_BUIT_ANT='#39#39';'
      '      IF (HORA=HORA_ANT) THEN ORDR=ORDR+1; ELSE ORDR=1;'
      ''
      '      MAXPAC=NULL;'
      '      SELECT CAST(C.N_CODI2 AS INTEGER) FROM CODICAMPSALFA C'
      
        '      WHERE C.TIPUSCODI = '#39'ACTIVITATFI'#39' AND C.N_CODI2 IS NOT NUL' +
        'L AND C.R_CODI IN('#39'F'#39','#39'T'#39','#39'R'#39')'
      '      AND C.C_CODI=:ACTI'
      '      INTO :MAXPAC;'
      '      IF (MAXPAC IS NULL) THEN MAXPAC=0;'
      ''
      
        '      IF ((MAXPAC=1) OR (F_MODULO(HFETA,2)=1)) THEN BEGIN /* 10.' +
        '1.2013 - I: Noms mirar buits si l'#39'hora s en punt o t 1'
      
        '                                                                ' +
        '                activitat cada mitja hora */'
      
        '        /* Quan hi ha un canvi d'#39'hora cal afegir els terapeutes ' +
        'que tenen BUITS , els que no tenen cap'
      
        '        hora assignada d'#39'aquesta activitat per que s tenen a l'#39'H' +
        'ORARIGYM hora enregistrada */'
      '        TPRINT='#39#39';'
      
        '        FOR SELECT DISTINCT H.C_METGE, M.METGE, H.TEPACIENTS FRO' +
        'M HORARIGYM H'
      '        JOIN METGES M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      
        '        WHERE H.C_ACTIVITAT=:ACTI AND H.HORA=:HFETA AND (H.TEPAC' +
        'IENTS < :MAXPAC)'
      '        AND (H.DATAINICI<=:DATA_) AND H.DATAFI IS NULL'
      '        ORDER BY M.METGE'
      '        INTO :CODI, :TERA_BUIT, :I'
      '        DO BEGIN'
      
        '          ACTIVITAT=ACTI; ACT_FICT=ACTF; TERAPEUTA=TERA_BUIT; HC' +
        '='#39' '#39'/*'#39'BUIT'#39'*/; PRESTACIO=NULL; CF=NULL;'
      '          WHILE (I<MAXPAC) DO'
      '          BEGIN'
      
        '              IF ((TERA_BUIT<>TPRINT) AND (TERA_BUIT<>TERA_BUIT_' +
        'ANT)) THEN TPRINT=TERA_BUIT;'
      
        '                                                                ' +
        '      ELSE TPRINT='#39#39';'
      '              ORDRE=ORDR;'
      '              SUSPEND;'
      ''
      
        '              /* actualitzo el TEPACIENTS per a que no es repete' +
        'ixi el BUIT al canvi d'#39'hora */'
      '              UPDATE HORARIGYM SET TEPACIENTS=TEPACIENTS+1'
      
        '              WHERE C_METGE=:CODI AND C_ACTIVITAT=:ACTI AND HORA' +
        '=:HFETA'
      '              AND   (DATAINICI<=:DATA_) AND DATAFI IS NULL;'
      ''
      
        '              I=I+1; ORDR=ORDR+1; HORA_ANT=HORA; TERA_BUIT_ANT=T' +
        'ERA_BUIT;'
      '          END;'
      '        END;'
      
        '      END; /* 10.1.2013 - I: Noms mirar buits si l'#39'hora s en pun' +
        't o t 1 activitat cada mitja hora */'
      ''
      
        '      ACTIVITAT=NULL; ACT_FICT=NULL; TERAPEUTA=NULL; TPRINT=NULL' +
        '; HC=NULL; PRESTACIO=NULL; ORDRE=NULL; CF=NULL; SUSPEND;'
      '      HFETA=HFETA+1; HORA_ANT=HORA;'
      '    END;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 446
    Top = 314
  end
  object ListGym_senseBuits: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListGym'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_ACTIVITAT VARCHAR(15),OPCIO CHAR(1),DIA INTEGER)  /* DIA: -1:' +
        'AHIR, 0:AVUI, 1:DEM'#192' */'
      
        'RETURNS (TIPUS      INTEGER,       /* 0-Activitat; 1-Hora; 2-Ter' +
        'apeuta; 3-Pacients */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      
        '         HORA       VARCHAR(22),  /* ERA DE 6, A L'#39'AFEGIR ACTIVI' +
        'TAT PASSA A 21 (15+6+1espai blanc)*/'
      '         TERAPEUTA  VARCHAR(20),'
      '         PACIENT    VARCHAR(92),'
      '         MOSTRAR    VARCHAR(100),'
      '         PRESTACIO  CHAR(4),'
      '         CF         VARCHAR(2),'
      '         NUM        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACT_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACT_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TER_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TER_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE ACT_F      VARCHAR(16);'
      '  DECLARE VARIABLE CF_ACT     VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE R_CODI     VARCHAR(10);'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      ''
      '  ESPAIS40='#39'                                        '#39';'
      ''
      
        '  IF (C_ACTIVITAT<>'#39#39') THEN    /* Nom'#233's per activitats "sueltas"' +
        ' */'
      '  BEGIN'
      
        '      SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39'ACTIVITA' +
        'TFI'#39' AND C_CODI=:C_ACTIVITAT INTO :R_CODI;'
      '  '
      
        '      TER_ACT='#39#39'; TER_ANT='#39#39'; HOR_ACT=0; HOR_ANT=0; NUM=NULL; CO' +
        'NTA=1; ACT_ANT=NULL; ACT_ACT=NULL;'
      
        '      TIPUS=0; ACTIVITAT=:C_ACTIVITAT; HORA=NULL; TERAPEUTA=NULL' +
        '; PACIENT=NULL; PRESTACIO=NULL; ACT_FICT=NULL; CF=NULL; SUSPEND;'
      '      '
      
        '      FOR SELECT /*TERAPEUTA,*/CAST(P.HC AS VARCHAR(8))||'#39' '#39'||P.' +
        'PACIENT,P.PACIENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC,P.ACTIVITAT' +
        ',MIN(P.HORA)'
      
        '      FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO,:DIA' +
        ') P'
      
        '      JOIN DRETSPRESTA DP ON P.PRESTACIO=DP.C_PRESTACIO AND DP.C' +
        '_DRET='#39'P115'#39
      
        '      /*WHERE PRESTACIO IN('#39'1004'#39','#39'2014'#39','#39'2023'#39','#39'2008'#39') /-OR (PR' +
        'ESTACIO="2008" AND CENTREFAC IN ("00","50"))-/ */'
      
        '      GROUP BY /*TERAPEUTA,*/P.HC,P.PACIENT,P.PRESTACIO,P.ACT_FI' +
        'CT,P.CENTREFAC,P.ACTIVITAT'
      '      ORDER BY 7,6,3 DESC,2'
      
        '      INTO /*:TER_ACT,*/:PAC_ACT,:PACI,:PRE_ACT,:ACT_F,:CF_ACT,:' +
        'ACT_ACT,:HOR_ACT'
      '      DO BEGIN'
      
        '          /* per cada canvi d'#39'activitat i/o hora canviem tipus *' +
        '/'
      '          IF ((HOR_ACT<>HOR_ANT) OR (ACT_ACT<>ACT_ANT)) THEN'
      '          BEGIN'
      '              IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '              ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '              ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '              ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '              ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '              ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '              ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '              ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '              ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '              ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '              ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '              ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '              ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '              ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '              ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '              ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '              ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '              ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '              ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '              ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '              ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '              ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '              ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '              ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '              ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '              ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      ''
      '              IF (R_CODI='#39'E'#39') THEN HORA=HORA||'#39' '#39'||ACT_ACT;'
      '                              ELSE HORA=HORA;'
      '              ACTIVITAT=ACT_ACT;'
      '              '
      
        '              TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NUL' +
        'L; ACT_FICT=NULL; MOSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; CF' +
        '=NULL; SUSPEND; HORA=NULL;'
      
        '              /*TIPUS=2; TERAPEUTA=TER_ACT; HORA=NULL; PACIENT=N' +
        'ULL; PRESTACIO=NULL; MOSTRAR=TERAPEUTA; CF=NULL; SUSPEND;*/'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; PRESTACIO=' +
        'PRE_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT; CONTA=1; NUM=C' +
        'ONTA; CF=CF_ACT; SUSPEND;'
      '              CONTA=CONTA+1;'
      '          END;'
      '          ELSE BEGIN'
      '              /*IF (TER_ACT<>TER_ANT) THEN'
      '              BEGIN'
      '                  IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '                  ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '                  ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '                  ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '                  ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '                  ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '                  ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '                  ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '                  ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '                  ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '                  ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '                  ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '                  ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '                  ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '                  ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '                  ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '                  ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '                  ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '                  ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '                  ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '                  ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '                  ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '                  ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '                  ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '                  ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '                  ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      
        '                  TIPUS=2; TERAPEUTA=TER_ACT; HORA=NULL; PACIENT' +
        '=NULL; PRESTACIO=NULL; MOSTRAR=TERAPEUTA; CF=NULL; SUSPEND;'
      
        '                  TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; PRESTA' +
        'CIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; CF=CF_ACT; SUSPEND;'
      '              END;'
      '              ELSE BEGIN  */'
      
        '                  TIPUS=3; TERAPEUTA='#39#39'; HORA=NULL; PACIENT=PAC_' +
        'ACT; PRESTACIO=PRE_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT;'
      
        '                  NUM=CONTA; CF=CF_ACT; ACTIVITAT=ACT_ACT; SUSPE' +
        'ND; CONTA=CONTA+1;'
      '              /*END;*/'
      '          END;'
      '          HOR_ANT=HOR_ACT; /*TER_ANT=TER_ACT;*/'
      '          ACT_ANT=ACT_ACT;'
      '      END;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 388
    Top = 326
  end
  object LaboMarxa: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'LaboMarxa'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA INTEGER)  /* DIA: -1:AHIR, 0:AVUI, 1:DEM */'
      
        'RETURNS (TIPUS      INTEGER,       /* 0-Activitat; 1-Hora; 2-Ter' +
        'apeuta; 3-Pacients */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      '         HORA       VARCHAR(6),'
      '         TERAPEUTA  VARCHAR(20),'
      '         PACIENT    VARCHAR(92),'
      '         MOSTRAR    VARCHAR(100),'
      '         PRESTACIO  CHAR(4),'
      '         CF         VARCHAR(2),'
      '         NUM        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACT        VARCHAR(15);'
      '  DECLARE VARIABLE TER_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TER_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE CF_ACT     VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE DOW        INTEGER;'
      '  DECLARE VARIABLE FREQ       VARCHAR(30);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE CONTA_BIPE INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE CONTA_PLA  INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE MAX_BIPE   INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE MAX_PLA    INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE I          INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE H          INTEGER;  /* PARTE 58237 */'
      '  DECLARE VARIABLE DATA_      DATE;'
      '  DECLARE VARIABLE ARA_       DATE;'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      '  ESPAIS40='#39'                                        '#39';'
      '  ACTIVITAT='#39'LABO.MARXA'#39';'
      ''
      
        '  SELECT F_DAYOFWEEK("TODAY"), "TODAY", "NOW" FROM CONFIG WHERE ' +
        '1=1 INTO :DOW, :DATA_, :ARA_;'
      '  DOW=DOW+DIA;                /* DIA: -1:AHIR, 0:AVUI, 1:DEM */'
      '  IF (DOW=1) THEN DOW=7;      /* DIUMENGE */'
      '             ELSE DOW=DOW-1;'
      ''
      '  DATA_ = DATA_ + DIA;'
      '  ARA_  = ARA_  + DIA;'
      ''
      
        '  ACT='#39#39'; TER_ACT='#39#39'; TER_ANT='#39#39'; HOR_ACT=0; HOR_ANT=0; NUM=NULL' +
        '; CONTA=1;'
      
        '  CONTA_BIPE=0; CONTA_PLA=0; MAX_BIPE=0; MAX_PLA=0; H=1; /* PART' +
        'E 58237 */'
      
        '  TIPUS=0; HORA=NULL; TERAPEUTA=NULL; PACIENT=NULL; PRESTACIO=NU' +
        'LL; CF=NULL; SUSPEND;'
      ''
      
        '  FOR SELECT M.METGE,CAST(A.C_HISTORIA AS VARCHAR(8))||'#39' '#39'||F.NO' +
        'MCOMPLET,F.NOMCOMPLET,T.C_FREQUENCIA,T.C_PRESTACIO,A.C_ACTIVITAT' +
        ',T.C_CENTREFAC,'
      '             MIN(A.HORA)'
      '  FROM AGENDAPACIENT A'
      
        '  JOIN CODICAMPSALFA C ON A.C_ACTIVITAT=C.C_CODI AND C.TIPUSCODI' +
        '='#39'ACTIVITATFI'#39' AND C.N_CODI2='#39'99'#39
      
        '  JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T.D' +
        'ATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:DA' +
        'TA_)'
      
        '  JOIN METGES        M ON T.C_FISIO_LABO_MARXA=M.CODI  /* Canvia' +
        't T.C_FISIOTERAPEUTA per T.C_FISIO_LABO_MARXA*/'
      '  JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      
        '  WHERE (A.DATAI<=:ARA_) AND (A.DATAF IS NULL OR A.DATAF>:ARA_) ' +
        'AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN 1 AND 26) /* 26.10.201' +
        '6: Patri diu que vol fins les 19h ==> canvio HF a 26 de nou */'
      
        '  GROUP BY M.METGE, A.C_HISTORIA, F.NOMCOMPLET, T.C_FREQUENCIA, ' +
        'T.C_PRESTACIO, A.C_ACTIVITAT, T.C_CENTREFAC'
      '  ORDER BY 8,1,5 DESC,3'
      
        '  INTO :TER_ACT,:PAC_ACT,:PACI,:FREQ,:PRE_ACT,:ACT,:CF_ACT,:HOR_' +
        'ACT'
      '  DO BEGIN'
      '      ACT_FICT=NULL;'
      
        '      /* PARTE 58237: per les hores anteriors en les que no hi h' +
        'a agendapacient, mirar si hi ha buits */'
      '      WHILE (H<HOR_ACT) DO'
      '      BEGIN'
      '          MAX_BIPE=0; MAX_PLA=0;'
      
        '          SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.' +
        'BIPED.'#39'    AND C_CODI=:H INTO :MAX_BIPE;'
      '          IF (MAX_BIPE IS NULL) THEN MAX_BIPE=0;'
      
        '          SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.' +
        'PLA INCL.'#39' AND C_CODI=:H INTO :MAX_PLA;'
      '          IF (MAX_PLA IS NULL) THEN MAX_PLA=0;'
      ''
      '          IF      (H=1)  THEN HORA='#39'H08_00'#39';'
      '          ELSE IF (H=2)  THEN HORA='#39'H08_30'#39';'
      '          ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      '          ELSE IF (H=4)  THEN HORA='#39'H09_30'#39';'
      '          ELSE IF (H=5)  THEN HORA='#39'H10_00'#39';'
      '          ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      '          ELSE IF (H=7)  THEN HORA='#39'H11_00'#39';'
      '          ELSE IF (H=8)  THEN HORA='#39'H11_30'#39';'
      '          ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      '          ELSE IF (H=10) THEN HORA='#39'H12_30'#39';'
      '          ELSE IF (H=11) THEN HORA='#39'H13_00'#39';'
      '          ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      '          ELSE IF (H=13) THEN HORA='#39'H14_00'#39';'
      '          ELSE IF (H=14) THEN HORA='#39'H14_30'#39';'
      '          ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      '          ELSE IF (H=16) THEN HORA='#39'H15_30'#39';'
      '          ELSE IF (H=17) THEN HORA='#39'H16_00'#39';'
      '          ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      '          ELSE IF (H=19) THEN HORA='#39'H17_00'#39';'
      '          ELSE IF (H=20) THEN HORA='#39'H17_30'#39';'
      '          ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      '          ELSE IF (H=22) THEN HORA='#39'H18_30'#39';'
      '          ELSE IF (H=23) THEN HORA='#39'H19_00'#39';'
      '          ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      '          ELSE IF (H=25) THEN HORA='#39'H20_00'#39';'
      '          ELSE IF (H=26) THEN HORA='#39'H20_30'#39';'
      ''
      '          IF ((CONTA_BIPE<MAX_BIPE) OR (CONTA_PLA<MAX_PLA)) THEN'
      '          BEGIN'
      
        '               TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NU' +
        'LL; MOSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL;  CF=NULL;'
      '               IF (H<>HOR_ANT) THEN BEGIN CONTA=0; SUSPEND; END;'
      ''
      '               TIPUS=4; HORA=NULL; NUM=NULL;'
      '               I=CONTA_BIPE+1;'
      '               WHILE (I<=MAX_BIPE) DO'
      '               BEGIN'
      
        '                   PACIENT='#39'BIPE LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIEN' +
        'T; SUSPEND;'
      '                   I=I+1;'
      '               END;'
      '               I=CONTA_PLA+1;'
      '               WHILE (I<=MAX_PLA) DO'
      '               BEGIN'
      
        '                   PACIENT='#39'PLA LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT' +
        '; SUSPEND;'
      '                   I=I+1;'
      '               END;'
      '          END;'
      '          CONTA_BIPE=0; CONTA_PLA=0; H=H+1;'
      '      END;'
      '      /* PARTE 58237 - F */'
      ''
      '      /* per cada canvi de terapeuta i/o hora canviem tipus*/'
      '      IF (HOR_ACT<>HOR_ANT) THEN'
      '      BEGIN'
      '          IF (H<>HOR_ACT) THEN'
      '          BEGIN'
      
        '              /* PARTE 58237: Al canviar d'#39'hora cal afegir buits' +
        ' de l'#39'hora anterior i desprs inicialitzar comptadors BIPE i PLA ' +
        '*/'
      '              MAX_BIPE=0; MAX_PLA=0;'
      
        '              SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LIST' +
        'GYM.BIPED.'#39'    AND C_CODI=:HOR_ANT INTO :MAX_BIPE;'
      '              IF (MAX_BIPE IS NULL) THEN MAX_BIPE=0;'
      
        '              SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LIST' +
        'GYM.PLA INCL.'#39' AND C_CODI=:HOR_ANT INTO :MAX_PLA;'
      '              IF (MAX_PLA IS NULL) THEN MAX_PLA=0;'
      ''
      
        '              TIPUS=4; TERAPEUTA=NULL; PRESTACIO=NULL; NUM=NULL;' +
        ' CF=NULL;'
      '              I=CONTA_BIPE+1;'
      '              WHILE (I<=MAX_BIPE) DO'
      '              BEGIN'
      
        '                  PACIENT='#39'BIPE LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT' +
        '; SUSPEND;'
      '                  I=I+1;'
      '              END;'
      '              I=CONTA_PLA+1;'
      '              WHILE (I<=MAX_PLA) DO'
      '              BEGIN'
      
        '                  PACIENT='#39'PLA LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT;' +
        ' SUSPEND;'
      '                  I=I+1;'
      '              END;'
      '          END;'
      
        '          H=HOR_ACT; /* H=99; /* aix noms s pq no hi entri la pr' +
        'imera vegada */'
      '          CONTA_BIPE=0; CONTA_PLA=0;'
      '          /* PARTE 58237 - F */'
      ''
      '          IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '          ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '          ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '          ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '          ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '          ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '          ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '          ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '          ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '          ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '          ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '          ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '          ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '          ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '          ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '          ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '          ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '          ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '          ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '          ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '          ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '          ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '          ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '          ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '          ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '          ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      
        '          TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NULL; M' +
        'OSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; CF=NULL; SUSPEND;'
      
        '          TIPUS=2; TERAPEUTA=TER_ACT; HORA=NULL; PACIENT=NULL; P' +
        'RESTACIO=NULL; MOSTRAR=TERAPEUTA; NUM=NULL; CF=NULL; SUSPEND;'
      
        '          TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; CONTA=1; NUM=C' +
        'ONTA;'
      ''
      
        '          /* Ho poso abans del # pq al programa s'#39'espera que el ' +
        '# estigui a la ltima posici */'
      
        '          IF      ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AREA*'#39 +
        '))    THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '          ELSE IF ((ACT='#39'BIPEDEST. PL.'#39')  OR (ACT='#39'BIPEDEST. PL.' +
        '*'#39'))  THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '          ELSE IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL. ARE' +
        'A*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      
        '          ELSE IF ((ACT='#39'PLA INCL.PLANT'#39') OR (ACT='#39'PLA INCL.PLAN' +
        'T*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      ''
      '          IF (F_RIGHT(ACT,1)='#39'*'#39') THEN ACT_FICT=ACT;'
      '                                  ELSE ACT_FICT=NULL;'
      ''
      '          IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' #'#39';'
      ''
      
        '          /* PARTE 58237 */              /* parte 64595 - compta' +
        'r ficticis com a que ocupen 1 buit */'
      
        '          IF ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AREA*'#39'))   ' +
        ' THEN CONTA_BIPE=CONTA_BIPE+1;'
      
        '          IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL. AREA*'#39'))' +
        ' THEN CONTA_PLA=CONTA_PLA+1;'
      ''
      
        '          PRESTACIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; CF=CF_ACT;' +
        ' SUSPEND;'
      '      END;'
      '      ELSE BEGIN'
      '          IF (TER_ACT<>TER_ANT) THEN'
      '          BEGIN'
      '              IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '              ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '              ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '              ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '              ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '              ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '              ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '              ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '              ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '              ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '              ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '              ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '              ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '              ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '              ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '              ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '              ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '              ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '              ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '              ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '              ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '              ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '              ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '              ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '              ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '              ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      
        '              TIPUS=2; TERAPEUTA=TER_ACT; HORA=NULL; PACIENT=NUL' +
        'L; PRESTACIO=NULL; MOSTRAR=TERAPEUTA; NUM=NULL; CF=NULL; SUSPEND' +
        ';'
      '              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT;'
      ''
      
        '              IF      ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AR' +
        'EA*'#39'))    THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '              ELSE IF ((ACT='#39'BIPEDEST. PL.'#39')  OR (ACT='#39'BIPEDEST.' +
        ' PL.*'#39'))  THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '              ELSE IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL.' +
        ' AREA*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      
        '              ELSE IF ((ACT='#39'PLA INCL.PLANT'#39') OR (ACT='#39'PLA INCL.' +
        'PLANT*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      ''
      '              IF (F_RIGHT(ACT,1)='#39'*'#39') THEN ACT_FICT=ACT;'
      '                                      ELSE ACT_FICT=NULL;'
      ''
      
        '              IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' #'#39'; CON' +
        'TA=1; NUM=CONTA;'
      ''
      
        '              /* PARTE 58237 */          /* parte 64595 - compta' +
        'r ficticis com a que ocupen 1 buit */'
      
        '              IF ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AREA*'#39')' +
        ')    THEN CONTA_BIPE=CONTA_BIPE+1;'
      
        '              IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL. AREA' +
        '*'#39')) THEN CONTA_PLA=CONTA_PLA+1;'
      ''
      
        '              PRESTACIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; CF=CF_' +
        'ACT; SUSPEND;'
      '          END;'
      '          ELSE BEGIN'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; HORA=NULL; PACIENT=PAC_ACT;' +
        ' CONTA=CONTA+1; NUM=CONTA;'
      ''
      
        '              IF      ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AR' +
        'EA*'#39'))    THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '              ELSE IF ((ACT='#39'BIPEDEST. PL.'#39')  OR (ACT='#39'BIPEDEST.' +
        ' PL.*'#39'))  THEN PACIENT=PACIENT||'#39' (BIPE)'#39';'
      
        '              ELSE IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL.' +
        ' AREA*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      
        '              ELSE IF ((ACT='#39'PLA INCL.PLANT'#39') OR (ACT='#39'PLA INCL.' +
        'PLANT*'#39')) THEN PACIENT=PACIENT||'#39' (PLA)'#39';'
      ''
      '              IF (F_RIGHT(ACT,1)='#39'*'#39') THEN ACT_FICT=ACT;'
      '                                      ELSE ACT_FICT=NULL;'
      ''
      '              IF (FREQ<>'#39'XXXXX'#39') THEN PACIENT=PACIENT||'#39' #'#39';'
      ''
      
        '              /* PARTE 58237 */                /* parte 64595 - ' +
        'comptar ficticis com a que ocupen 1 buit */'
      
        '              IF ((ACT='#39'BIPED. AREA'#39')    OR (ACT='#39'BIPED. AREA*'#39')' +
        ')    THEN CONTA_BIPE=CONTA_BIPE+1;'
      
        '              IF ((ACT='#39'PLA INCL. AREA'#39') OR (ACT='#39'PLA INCL. AREA' +
        '*'#39')) THEN CONTA_PLA=CONTA_PLA+1;'
      ''
      
        '              PRESTACIO=PRE_ACT; MOSTRAR='#39'    '#39'||PACIENT; CF=CF_' +
        'ACT; SUSPEND;'
      '          END;'
      '      END;'
      '      HOR_ANT=HOR_ACT; TER_ANT=TER_ACT;'
      '  END;'
      ''
      '  /* PARTE 58237: tractem ltima hora tractada */'
      '  MAX_BIPE=0; MAX_PLA=0;'
      
        '  SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.BIPED.'#39' ' +
        '   AND C_CODI=:HOR_ANT INTO :MAX_BIPE;'
      '  IF (MAX_BIPE IS NULL) THEN MAX_BIPE=0;'
      
        '  SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.PLA INCL' +
        '.'#39' AND C_CODI=:HOR_ANT INTO :MAX_PLA;'
      '  IF (MAX_PLA IS NULL) THEN MAX_PLA=0;'
      ''
      '  TIPUS=4; TERAPEUTA=NULL; PRESTACIO=NULL; CF=NULL;'
      '  I=CONTA_BIPE+1; NUM=NULL;'
      '  WHILE (I<=MAX_BIPE) DO'
      '  BEGIN'
      '      PACIENT='#39'BIPE LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT; SUSPEND;'
      '      I=I+1;'
      '  END;'
      '  I=CONTA_PLA+1;'
      '  WHILE (I<=MAX_PLA) DO'
      '  BEGIN'
      '      PACIENT='#39'PLA LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT; SUSPEND;'
      '      I=I+1;'
      '  END;'
      ''
      
        '  /* PARTE 58237: per les hores posteriors en les que no hi ha a' +
        'gendapacient, mirar si hi ha buits */'
      '  H=HOR_ACT+1; CONTA_BIPE=0; CONTA_PLA=0;'
      '  WHILE (H<=26) DO'
      '  BEGIN'
      '      MAX_BIPE=0; MAX_PLA=0;'
      
        '      SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.BIPE' +
        'D.'#39'    AND C_CODI=:H INTO :MAX_BIPE;'
      '      IF (MAX_BIPE IS NULL) THEN MAX_BIPE=0;'
      
        '      SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'LISTGYM.PLA ' +
        'INCL.'#39' AND C_CODI=:H INTO :MAX_PLA;'
      '      IF (MAX_PLA IS NULL) THEN MAX_PLA=0;'
      ''
      '      IF      (H=1)  THEN HORA='#39'H08_00'#39';'
      '      ELSE IF (H=2)  THEN HORA='#39'H08_30'#39';'
      '      ELSE IF (H=3)  THEN HORA='#39'H09_00'#39';'
      '      ELSE IF (H=4)  THEN HORA='#39'H09_30'#39';'
      '      ELSE IF (H=5)  THEN HORA='#39'H10_00'#39';'
      '      ELSE IF (H=6)  THEN HORA='#39'H10_30'#39';'
      '      ELSE IF (H=7)  THEN HORA='#39'H11_00'#39';'
      '      ELSE IF (H=8)  THEN HORA='#39'H11_30'#39';'
      '      ELSE IF (H=9)  THEN HORA='#39'H12_00'#39';'
      '      ELSE IF (H=10) THEN HORA='#39'H12_30'#39';'
      '      ELSE IF (H=11) THEN HORA='#39'H13_00'#39';'
      '      ELSE IF (H=12) THEN HORA='#39'H13_30'#39';'
      '      ELSE IF (H=13) THEN HORA='#39'H14_00'#39';'
      '      ELSE IF (H=14) THEN HORA='#39'H14_30'#39';'
      '      ELSE IF (H=15) THEN HORA='#39'H15_00'#39';'
      '      ELSE IF (H=16) THEN HORA='#39'H15_30'#39';'
      '      ELSE IF (H=17) THEN HORA='#39'H16_00'#39';'
      '      ELSE IF (H=18) THEN HORA='#39'H16_30'#39';'
      '      ELSE IF (H=19) THEN HORA='#39'H17_00'#39';'
      '      ELSE IF (H=20) THEN HORA='#39'H17_30'#39';'
      '      ELSE IF (H=21) THEN HORA='#39'H18_00'#39';'
      '      ELSE IF (H=22) THEN HORA='#39'H18_30'#39';'
      '      ELSE IF (H=23) THEN HORA='#39'H19_00'#39';'
      '      ELSE IF (H=24) THEN HORA='#39'H19_30'#39';'
      '      ELSE IF (H=25) THEN HORA='#39'H20_00'#39';'
      '      ELSE IF (H=26) THEN HORA='#39'H20_30'#39';'
      ''
      
        '      IF (((CONTA_BIPE<MAX_BIPE) OR (CONTA_PLA<MAX_PLA)) AND ((M' +
        'AX_BIPE>0) OR (MAX_PLA>0))) THEN'
      '      BEGIN'
      
        '          TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NULL; M' +
        'OSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; CF=NULL; SUSPEND;'
      '          TIPUS=4; HORA=NULL; CONTA=0; NUM=NULL;'
      '          I=CONTA_BIPE+1;'
      '          WHILE (I<=MAX_BIPE) DO'
      '          BEGIN'
      
        '              PACIENT='#39'BIPE LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT; SU' +
        'SPEND;'
      '              I=I+1;'
      '          END;'
      '          I=CONTA_PLA+1;'
      '          WHILE (I<=MAX_PLA) DO'
      '          BEGIN'
      
        '              PACIENT='#39'PLA LLIURE'#39'; MOSTRAR='#39'    '#39'||PACIENT; SUS' +
        'PEND;'
      '              I=I+1;'
      '          END;'
      '      END;'
      '      H=H+1;'
      '  END;'
      '  /* PARTE 58237 - F */'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 393
    Top = 384
  end
  object tePacients: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'tePacients'
    ForceNombreDB = False
    Body.Strings = (
      
        '(ACTIVITAT VARCHAR(15),OPCIO CHAR(1), DIA INTEGER)  /* DIA: -1:A' +
        'HIR, 0:AVUI, 1:DEM */'
      'AS'
      ' DECLARE VARIABLE HINI        INTEGER;'
      ' DECLARE VARIABLE HFIN        INTEGER;'
      ' DECLARE VARIABLE C_METGE     VARCHAR(5);'
      ' DECLARE VARIABLE C_ACTIVITAT VARCHAR(15);'
      ' DECLARE VARIABLE HORA        INTEGER;'
      ' DECLARE VARIABLE AUX         INTEGER;'
      ' DECLARE VARIABLE DOW         INTEGER;  /* DAY OF WEEK */'
      ' DECLARE VARIABLE ACT2        VARCHAR(15);'
      ' DECLARE VARIABLE DATA_       DATE;'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      ''
      
        '  /* 26.10.2016: Patri diu que vol fins les 19h ==> canvio HF a ' +
        '26 de nou */'
      '  IF      (OPCIO='#39'M'#39') THEN BEGIN HINI=1;  HFIN=14; END;'
      '  ELSE IF (OPCIO='#39'T'#39') THEN BEGIN HINI=15; HFIN=26; END;'
      '                      ELSE BEGIN HINI=1;  HFIN=26; END;'
      ''
      
        '  SELECT F_DAYOFWEEK("TODAY"), "TODAY" FROM CONFIG WHERE 1=1 INT' +
        'O :DOW, :DATA_;'
      '  DOW=DOW+DIA;                /* DIA: -1:AHIR, 0:AVUI, 1:DEM */'
      '  IF (DOW=1) THEN DOW=7;      /* DIUMENGE */'
      '             ELSE DOW=DOW-1;'
      ''
      '  DATA_ = DATA_ + DIA;'
      ''
      '  FOR SELECT H.C_METGE, H.C_ACTIVITAT, H.HORA FROM HORARIGYM H'
      
        '  JOIN CODICAMPSALFA C ON H.C_ACTIVITAT=C.C_CODI AND C.TIPUSCODI' +
        '='#39'ACTIVITATFI'#39' AND C.R_CODI IN('#39'F'#39','#39'T'#39','#39'R'#39')'
      '  WHERE (H.C_ACTIVITAT=:ACTIVITAT OR :ACTIVITAT = '#39#39')'
      '  AND   (H.HORA BETWEEN :HINI AND :HFIN)'
      '  AND   (H.DATAINICI<=:DATA_ AND H.DATAFI IS NULL)'
      '  ORDER BY H.C_METGE, H.C_ACTIVITAT, H.HORA'
      '  INTO :C_METGE, :C_ACTIVITAT, :HORA'
      '  DO BEGIN'
      '      ACT2=C_ACTIVITAT||'#39'*'#39';'
      '      SELECT COUNT(*) FROM AGENDAPACIENT A'
      '      JOIN  TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '      WHERE (T.C_FISIOTERAPEUTA = :C_METGE OR T.C_TERAPEUTA = :C' +
        '_METGE)'
      
        '      AND   ((A.C_ACTIVITAT = :C_ACTIVITAT) OR (A.C_ACTIVITAT = ' +
        ':ACT2))'
      '      AND   A.HORA = :HORA'
      '      AND   A.DATAF IS NULL'
      '      AND   A.DIA_SEMANA = :DOW'
      '      AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:DATA_)'
      '      INTO :AUX;'
      ''
      '      IF (AUX IS NULL) THEN AUX=0;'
      ''
      '      UPDATE HORARIGYM SET TEPACIENTS=:AUX'
      '      WHERE C_METGE     = :C_METGE'
      '      AND   C_ACTIVITAT = :C_ACTIVITAT'
      '      AND   HORA        = :HORA'
      '      AND   DATAINICI  <= :DATA_'
      '      AND   DATAFI IS NULL;'
      '  END;'
      ''
      'END')
    Dic1 = HorariGym
    Dic1Name = 'HorariGym'
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
    Left = 409
    Top = 432
  end
  object EliminarDuplicats: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EliminarDuplicats'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '    DECLARE VARIABLE C_HISTORIA   INTEGER;'
      '    DECLARE VARIABLE DIA_SEMANA   INTEGER;'
      '    DECLARE VARIABLE HORA         INTEGER;'
      '    DECLARE VARIABLE C_ACTIVITAT  VARCHAR(15);'
      '    DECLARE VARIABLE QUANTS       INTEGER;'
      '    DECLARE VARIABLE ID           INTEGER;'
      'BEGIN'
      
        '    FOR SELECT C_HISTORIA, DIA_SEMANA, HORA, C_ACTIVITAT, COUNT(' +
        '*)'
      '    FROM AGENDAPACIENT'
      '    WHERE DATAF IS NULL'
      '    GROUP BY C_HISTORIA, DIA_SEMANA, HORA, C_ACTIVITAT'
      '    HAVING COUNT(*) > 1'
      '    INTO :C_HISTORIA, :DIA_SEMANA, :HORA, :C_ACTIVITAT, :QUANTS'
      '    DO BEGIN'
      '        SELECT ID FROM AGENDAPACIENT'
      '        WHERE C_HISTORIA  = :C_HISTORIA'
      '        AND   DIA_SEMANA  = :DIA_SEMANA'
      '        AND   HORA        = :HORA'
      '        AND   C_ACTIVITAT = :C_ACTIVITAT'
      '        ORDER BY ID DESC'
      '        ROWS 1'
      '        INTO :ID;'
      '        '
      
        '        IF (ID <> 0) THEN DELETE FROM AGENDAPACIENT WHERE ID=:ID' +
        ';'
      '    END;'
      'END')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic1Name = 'AgendaPacient_NO_FER_CHECK'
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
    Left = 160
    Top = 424
  end
  object Carregues: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Carregues'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (DIA_SETMANA VARCHAR(3),'
      '         ACTIVITAT   VARCHAR(15),'
      '         TERAPEUTA   VARCHAR(20),'
      '         BUITS       INTEGER)'
      'AS'
      ' DECLARE VARIABLE C_TERAPEUTA VARCHAR(5);'
      ' DECLARE VARIABLE DIAS        INTEGER;'
      ' DECLARE VARIABLE DIA_FET     INTEGER;'
      ' DECLARE VARIABLE HORA        INTEGER;'
      ' DECLARE VARIABLE H           SMALLINT;'
      ' DECLARE VARIABLE DANT        INTEGER;'
      'BEGIN'
      '      '
      
        ' FOR SELECT DISTINCT H.C_METGE, M.METGE, H.C_ACTIVITAT FROM HORA' +
        'RIGYM H'
      ' JOIN METGES M ON H.C_METGE=M.CODI'
      
        ' WHERE (H.DATAFI IS NULL OR H.DATAFI>="TODAY")                  ' +
        '                 /* Manel no vol NPC_DIRIG*/'
      
        ' AND    H.C_ACTIVITAT STARTING WITH '#39'NPC'#39' AND (NOT H.C_ACTIVITAT' +
        ' LIKE '#39'%*%'#39') AND (H.C_ACTIVITAT<>'#39'NPC_DIRIG'#39')'
      ' ORDER BY H.C_ACTIVITAT, H.C_METGE'
      ' INTO :C_TERAPEUTA, :TERAPEUTA, :ACTIVITAT'
      ' DO BEGIN'
      '     DIA_FET=0; BUITS=0;'
      '     FOR SELECT DISTINCT A.DIA_SEMANA,A.HORA'
      '     FROM AGENDAPACIENT A'
      
        '     JOIN TRACTAMENTS T  ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY")'
      
        '     JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO  AND DP' +
        '.C_DRET='#39'P117'#39
      '     WHERE (A.C_ACTIVITAT=:ACTIVITAT) AND F_MODULO(A.HORA,2)=1'
      '     AND   (A.DATAF IS NULL OR A.DATAF>"TODAY")'
      
        '     AND   ((T.C_FISIOTERAPEUTA=:C_TERAPEUTA)  OR (T.C_TERAPEUTA' +
        '=:C_TERAPEUTA) OR (T.C_FISIO_AR=:C_TERAPEUTA) OR'
      
        '            (T.C_MUSICOTERAPEUTA=:C_TERAPEUTA) OR (T.C_PSICOLEG=' +
        ':C_TERAPEUTA)  OR (T.C_LOGOPEDA=:C_TERAPEUTA))'
      '     ORDER BY 1,2'
      '     INTO :DIAS,:HORA'
      '     DO BEGIN'
      '         IF      (DIAS=1) THEN DIA_SETMANA='#39'DLL'#39';'
      '         ELSE IF (DIAS=2) THEN DIA_SETMANA='#39'DM'#39';'
      '         ELSE IF (DIAS=3) THEN DIA_SETMANA='#39'DX'#39';'
      '         ELSE IF (DIAS=4) THEN DIA_SETMANA='#39'DJ'#39';'
      '         ELSE IF (DIAS=5) THEN DIA_SETMANA='#39'DV'#39';'
      '         DANT=DIAS; H=HORA;'
      ''
      '         IF (DIA_FET < DIAS) THEN'
      '         BEGIN'
      '             SELECT COUNT(*)'
      '             FROM HORARIGYM H'
      
        '             WHERE H.C_ACTIVITAT=:ACTIVITAT AND H.C_METGE=:C_TER' +
        'APEUTA'
      '             AND (H.DATAFI IS NULL OR H.DATAFI>="TODAY")'
      '             AND F_MODULO(H.HORA,2)=1'
      '             AND (:DIAS<>3 OR H.HORA<>11)'
      '             /*AND H.HORA NOT IN (SELECT DISTINCT A.HORA*/'
      '             AND NOT EXISTS (SELECT *'
      '                                FROM AGENDAPACIENT A'
      
        '                                JOIN TRACTAMENTS  T ON A.C_TRACT' +
        'AMENT=T.C_TRACTAMENT AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="T' +
        'ODAY")'
      
        '                                JOIN DRETSPRESTA DP ON T.C_PREST' +
        'ACIO=DP.C_PRESTACIO  AND DP.C_DRET='#39'P117'#39
      
        '                                WHERE (A.C_ACTIVITAT=:ACTIVITAT)' +
        ' AND A.DIA_SEMANA=:DIAS  AND A.HORA=H.HORA'
      
        '                                AND   (A.DATAF IS NULL OR A.DATA' +
        'F>"TODAY")'
      
        '                                AND   ((T.C_FISIOTERAPEUTA=:C_TE' +
        'RAPEUTA)  OR (T.C_TERAPEUTA=:C_TERAPEUTA) OR (T.C_FISIO_AR=:C_TE' +
        'RAPEUTA) OR'
      
        '                                       (T.C_MUSICOTERAPEUTA=:C_T' +
        'ERAPEUTA) OR (T.C_PSICOLEG=:C_TERAPEUTA)  OR (T.C_LOGOPEDA=:C_TE' +
        'RAPEUTA)))'
      '             INTO :BUITS;'
      '             IF (BUITS IS NULL) THEN BUITS=0;'
      '             SUSPEND;'
      '         END;'
      '         DIA_FET=DIAS;'
      '     END;'
      ' END;'
      ''
      'END')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic1Name = 'AgendaPacient_NO_FER_CHECK'
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
    Left = 522
    Top = 199
  end
  object CarreguesOrdre: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CarreguesOrdre'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (DIA_SETMANA VARCHAR(3),'
      '         ACTIVITAT   VARCHAR(15),'
      '         TERAPEUTA   VARCHAR(20),'
      '         BUITS       INTEGER,'
      '         ORDRE       INTEGER)'
      'AS'
      ' DECLARE VARIABLE ACT_ANT VARCHAR(15);'
      ' DECLARE VARIABLE DIA_ANT VARCHAR(3);'
      'BEGIN'
      '      '
      ' ACT_ANT=NULL; DIA_ANT=NULL; ORDRE=0;'
      
        ' FOR SELECT DIA_SETMANA, ACTIVITAT, TERAPEUTA, BUITS FROM P_AGEN' +
        'DAPACIENT_CARREGUES'
      ' WHERE BUITS > 0'
      ' ORDER BY DIA_SETMANA, ACTIVITAT, TERAPEUTA'
      ' INTO :DIA_SETMANA, :ACTIVITAT, :TERAPEUTA, :BUITS'
      ' DO BEGIN'
      
        '     IF ((DIA_SETMANA<>DIA_ANT) OR (ACTIVITAT<>ACT_ANT)) THEN OR' +
        'DRE=1;'
      
        '                                                         ELSE OR' +
        'DRE=ORDRE+1;'
      '     '
      '     SUSPEND;'
      '     ACT_ANT=ACTIVITAT;'
      '     DIA_ANT=DIA_SETMANA;'
      ' END;'
      ''
      'END')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic1Name = 'AgendaPacient_NO_FER_CHECK'
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
    Left = 525
    Top = 253
  end
  object NoAvisen: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NoAvisen'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO CHAR(4))'
      'AS'
      '  DECLARE VARIABLE C_ASSISTENCIA INTEGER;'
      '  DECLARE VARIABLE DATA          DATE;'
      '  DECLARE VARIABLE CONTADOR      INTEGER;'
      'BEGIN'
      
        '  /* Aquesta procedure s'#39'ha d'#39'executar de matinada, a partir de ' +
        'les 00:00 perqu tracta tots els registres <'#39'TODAY'#39
      
        '     Noms es fa per prestacions NPC                             ' +
        '                                                    */'
      ''
      '  IF (OPCIO = '#39'AHIR'#39') THEN'
      '  BEGIN'
      '    DATA="YESTERDAY";'
      ''
      '    FOR SELECT A.C_ASSISTENCIA'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN PRESTACION  P ON T.C_PRESTACIO=P.C_PRESTACIO AND P.ESEA' +
        'SE='#39'C'#39
      
        '    WHERE A.C_TIPUSASS=-1 AND A.DATA=:DATA                      ' +
        '             /*ABANS: A.DATA<"TODAY" AND A.DATA>='#39'1.4.2017'#39'*/'
      '    ORDER BY A.C_ASSISTENCIA'
      '    INTO :C_ASSISTENCIA'
      '    DO BEGIN'
      '      UPDATE ASSISTENCIAGIMNAS'
      '      SET C_TIPUSASS=10, C_METGE=NULL'
      '      WHERE C_ASSISTENCIA=:C_ASSISTENCIA;'
      '    END;'
      ''
      
        '      /* afegirm la data a la taula ABSENTISMENPCDATES si no hi ' +
        's - Marquem com a processada la DATA a ABSENTISMENPCDATES */'
      '      CONTADOR=0;'
      
        '      SELECT COUNT(*) FROM ABSENTISMENPCDATES WHERE DATA=:DATA I' +
        'NTO :CONTADOR;'
      
        '      IF (CONTADOR=0) THEN INSERT INTO ABSENTISMENPCDATES(DATA,P' +
        'ROCESSADA,DATA_PROCESSADA) VALUES(:DATA,'#39'S'#39',"NOW");'
      
        '                      ELSE UPDATE ABSENTISMENPCDATES SET PROCESS' +
        'ADA='#39'S'#39',DATA_PROCESSADA="NOW" WHERE DATA=:DATA;'
      '  END;'
      ''
      '  IF (OPCIO = '#39'PEND'#39') THEN'
      '  BEGIN'
      '    FOR SELECT DATA FROM ABSENTISMENPCDATES'
      '    WHERE PROCESSADA IS NULL OR PROCESSADA = '#39'N'#39
      '    AND DATA < "TODAY"'
      '    INTO :DATA'
      '    DO BEGIN'
      ''
      '      FOR SELECT A.C_ASSISTENCIA'
      '      FROM ASSISTENCIAGIMNAS A'
      '      JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '      JOIN PRESTACION  P ON T.C_PRESTACIO=P.C_PRESTACIO AND P.ES' +
        'EASE='#39'C'#39
      '      WHERE A.C_TIPUSASS=-1 AND A.DATA=:DATA'
      '      ORDER BY A.C_ASSISTENCIA'
      '      INTO :C_ASSISTENCIA'
      '      DO BEGIN'
      '        UPDATE ASSISTENCIAGIMNAS'
      '        SET C_TIPUSASS=10, C_METGE=NULL'
      '        WHERE C_ASSISTENCIA=:C_ASSISTENCIA;'
      '      END;'
      ''
      ''
      
        '      /* afegirm la data a la taula ABSENTISMENPCDATES si no hi ' +
        's - Marquem com a processada la DATA a ABSENTISMENPCDATES */'
      '      CONTADOR=0;'
      
        '      SELECT COUNT(*) FROM ABSENTISMENPCDATES WHERE DATA=:DATA I' +
        'NTO :CONTADOR;'
      
        '      IF (CONTADOR=0) THEN INSERT INTO ABSENTISMENPCDATES(DATA,P' +
        'ROCESSADA,DATA_PROCESSADA) VALUES(:DATA,'#39'S'#39',"NOW");'
      
        '                      ELSE UPDATE ABSENTISMENPCDATES SET PROCESS' +
        'ADA='#39'S'#39',DATA_PROCESSADA="NOW" WHERE DATA=:DATA;'
      ''
      '    END;'
      '  END;'
      ''
      'END')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'AssistenciaGimnas'
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
    Left = 232
    Top = 424
  end
  object AbsentismeNPCDates: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Processada'
        NombreDB = 'Processada'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data processada'
        NombreDB = 'Data_processada'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
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
          'Data')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'AbsentismeNPCDates'
    NombreTabla = 'AbsentismeNPCDates'
    Organiza = tbBase
    CamposVer.Strings = (
      'Data'
      'Processada')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 320
    Top = 424
  end
  object Resum2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Resum2'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_ DATE, DOW INTEGER, HI INTEGER, HF INTEGER)'
      'RETURNS (H            INTEGER,'
      '         HORA         VARCHAR(6),'
      '         C_ACTIVITAT  VARCHAR(15),'
      '         C_TERAPEUTA  VARCHAR(5),'
      '         TERAPEUTA    VARCHAR(20),'
      '         PACIENT      VARCHAR(62),'
      '         C_TIPUSASS   SMALLINT,'
      '         C_HISTORIA   INTEGER,'
      '         C_TRACTAMENT INTEGER,'
      '         C_PRESTACIO  VARCHAR(4)'
      ')'
      'AS'
      ''
      'BEGIN'
      
        '    /* '#201's la continuaci'#243' de la procedure P_TRACTAMENTS_RESUMDIAR' +
        'I, perqu'#232' all'#224' no hi cap (peta al crear-la) */'
      ''
      '    /* NPC_NPS */'
      '    C_ACTIVITAT='#39'NPC_NPS'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_PSICOLEG)' +
        ' AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_PSICOLEG=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_PSICOLEG)' +
        ' AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'PS'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      ''
      '    /* NPC_LOGO */'
      '    C_ACTIVITAT='#39'NPC_LOGO'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_LOGOPEDA)' +
        ' AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_LOGOPEDA=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_LOGOPEDA)' +
        ' AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'LO'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      '      '
      '    /* NPC_MT */'
      '    C_ACTIVITAT='#39'NPC_MT'#39';'
      ''
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_MUSICOTER' +
        'APEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, A.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO'
      '    FROM AGENDAPACIENT A'
      
        '    JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND (T' +
        '.DATA_INGRES<=:DATA_) AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA>=:' +
        'DATA_)'
      '    JOIN METGES        M ON T.C_MUSICOTERAPEUTA=M.CODI'
      '    JOIN FILIACIO      F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    LEFT JOIN SUPLENTS S ON T.C_TRACTAMENT=S.C_TRACTAMENT AND S.' +
        'C_GRUP=M.C_GRUP AND S.HORA=A.HORA AND S.DATA=:DATA_'
      
        '    WHERE (A.DATAI<=:DATA_) AND (A.DATAF IS NULL OR A.DATAF>:DAT' +
        'A_) AND A.DIA_SEMANA=:DOW AND (A.HORA BETWEEN :HI AND :HF)'
      '    AND   ((A.C_ACTIVITAT=:C_ACTIVITAT))'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO'
      '    DO BEGIN'
      '        TERAPEUTA=NULL; C_TIPUSASS=-1; HORA=NULL;'
      
        '        SELECT METGE FROM METGES WHERE CODI=:C_TERAPEUTA INTO :T' +
        'ERAPEUTA;'
      
        '        SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRACTAM' +
        'ENT=:C_TRACTAMENT AND DATA=:DATA_ INTO :C_TIPUSASS;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END'
      ''
      '    /* ASSIST'#200'NCIES FORA DE FREQ'#220#200'NCIA */'
      
        '    FOR SELECT DISTINCT CAST(F_STRNULL(S.C_SUPLENT,T.C_MUSICOTER' +
        'APEUTA) AS VARCHAR(5)),'
      
        '                        F.NOMBRE||'#39' '#39'||F.APELLIDO1||'#39' '#39'||F.APELL' +
        'IDO2, AP.HORA, A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTACIO, A.C_' +
        'TIPUSASS, M.METGE'
      '    FROM ASSISTENCIAGIMNAS A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      '    JOIN FILIACIO    F ON A.C_HISTORIA=F.NUM_HIST'
      
        '    JOIN SUPLENTS    S ON A.C_TRACTAMENT=S.C_TRACTAMENT AND S.DA' +
        'TA=A.DATA AND S.C_GRUP='#39'MS'#39
      '    JOIN METGES      M ON S.C_SUPLENT=M.CODI'
      
        '    JOIN AGENDAPACIENT AP ON A.C_TRACTAMENT=AP.C_TRACTAMENT AND ' +
        'AP.DATAI<=:DATA_ AND (AP.DATAF IS NULL OR AP.DATAF>=:DATA_) AND ' +
        '(AP.HORA BETWEEN :HI AND :HF) AND AP.DIA_SEMANA<>:DOW'
      '                          AND AP.C_ACTIVITAT=:C_ACTIVITAT'
      
        '    WHERE A.DATA = :DATA_ AND A.C_TIPUSASS in (2,4) AND S.HORA=A' +
        'P.HORA'
      '    ORDER BY 2,3'
      
        '    INTO :C_TERAPEUTA, :PACIENT, :H, :C_HISTORIA, :C_TRACTAMENT,' +
        ' :C_PRESTACIO, :C_TIPUSASS, :TERAPEUTA'
      '    DO BEGIN'
      '        HORA=NULL;'
      '        IF (C_TIPUSASS IS NULL) THEN C_TIPUSASS = -1;'
      ''
      
        '        IF      (H=1)  THEN HORA='#39'08:00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08:30'#39'; ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10:00'#39'; ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11:30'#39'; ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12:30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13:00'#39'; ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14:00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14:30'#39'; ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15:30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16:00'#39'; ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17:00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17:30'#39'; ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18:30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19:00'#39'; ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20:00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20:30'#39';'
      ''
      '        SUSPEND;'
      '    END;'
      '    '
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
    Left = 408
    Top = 480
  end
  object ListResta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListResta'
    ForceNombreDB = False
    Body.Strings = (
      
        '(OPCIO CHAR(1),DIA INTEGER)        /* DIA: -1:AHIR, 0:AVUI, 1:DE' +
        'M'#192' */'
      
        'RETURNS (TIPUS      INTEGER,       /* 0-Activitat; 1-Hora; 2-Ter' +
        'apeuta; 3-Pacients */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      
        '         HORA       VARCHAR(22),  /* ERA DE 6, A L'#39'AFEGIR ACTIVI' +
        'TAT PASSA A 21 (15+6+1espai blanc)*/'
      '         TERAPEUTA  VARCHAR(20),'
      '         PACIENT    VARCHAR(92),'
      '         MOSTRAR    VARCHAR(100),'
      '         PRESTACIO  CHAR(4),'
      '         CF         VARCHAR(2),'
      '         NUM        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACT_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACT_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TER_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TER_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE ACT_F      VARCHAR(16);'
      '  DECLARE VARIABLE CF_ACT     VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE R_CODI     VARCHAR(10);'
      '  DECLARE VARIABLE MAX_ANT    INTEGER;'
      '  DECLARE VARIABLE H          INTEGER;'
      '  DECLARE VARIABLE C_ACTIVITAT VARCHAR(15);'
      '  DECLARE VARIABLE N_CODI      VARCHAR(60);'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      ''
      '  ESPAIS40='#39'                                        '#39';'
      ''
      
        '  FOR SELECT C_CODI, N_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39 +
        'ACTIVITATFI'#39' AND R_CODI='#39'L'#39
      '  ORDER BY C_CODI'
      '  INTO :C_ACTIVITAT, :N_CODI'
      '  DO BEGIN'
      
        '      TER_ACT='#39#39'; TER_ANT='#39#39'; HOR_ACT=0; HOR_ANT=0; NUM=NULL; CO' +
        'NTA=1; ACT_ANT=NULL; ACT_ACT=NULL; MOSTRAR=N_CODI;'
      
        '      TIPUS=0; ACTIVITAT=:C_ACTIVITAT; HORA=NULL; TERAPEUTA=NULL' +
        '; PACIENT=NULL; PRESTACIO=NULL; ACT_FICT=NULL; CF=NULL; SUSPEND;'
      '      '
      
        '      FOR SELECT CAST(P.HC AS VARCHAR(8))||'#39' '#39'||P.PACIENT,P.PACI' +
        'ENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC,P.ACTIVITAT,MIN(P.HORA)'
      
        '      FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO,:DIA' +
        ') P'
      
        '      JOIN DRETSPRESTA DP ON P.PRESTACIO=DP.C_PRESTACIO AND DP.C' +
        '_DRET='#39'P115'#39
      
        '      GROUP BY P.HC,P.PACIENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC' +
        ',P.ACTIVITAT'
      '      ORDER BY 7,6,3 DESC,2'
      
        '      INTO :PAC_ACT,:PACI,:PRE_ACT,:ACT_F,:CF_ACT,:ACT_ACT,:HOR_' +
        'ACT'
      '      DO BEGIN'
      
        '          /* per cada canvi d'#39'activitat i/o hora canviem tipus *' +
        '/'
      '          IF ((HOR_ACT<>HOR_ANT) OR (ACT_ACT<>ACT_ANT)) THEN'
      '          BEGIN'
      
        '              IF (ACT_ACT <> ACT_ANT) /* Si el canvi '#233's d'#39'activi' +
        'tat */'
      
        '              THEN SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSC' +
        'ODI='#39'ACTIVITATFI'#39' AND C_CODI=:ACT_ANT INTO :R_CODI;'
      ''
      
        '              IF ((R_CODI='#39'E'#39') AND (F_MODULO(HOR_ANT,2)=1) AND (' +
        'HOR_ANT<>11)) THEN   /* Nom'#233's buits per R_CODI='#39'E'#39' i hores en pu' +
        'nt. A les 13h no hi ha buits */'
      
        '              BEGIN                                             ' +
        '                     /* usem HOR_ANT pq si s'#243'n diferents mirem l' +
        #39'anterior i si no, '#233's que s'#243'n iguals */'
      '                  /* Buits */'
      
        '                  SELECT N_CODI2 FROM CODICAMPSALFA WHERE TIPUSC' +
        'ODI='#39'ACTIVITATFI'#39' AND C_CODI=:ACT_ANT INTO :MAX_ANT;'
      '                  IF (MAX_ANT IS NULL) THEN MAX_ANT=0;'
      ''
      '                  WHILE (CONTA <= MAX_ANT) DO'
      '                  BEGIN'
      
        '                      TIPUS=3; TERAPEUTA='#39#39'; PACIENT=NULL; PREST' +
        'ACIO=NULL; ACT_FICT=NULL; MOSTRAR = '#39'    '#39'||ACT_ANT||'#39' LLIURE'#39'; ' +
        'NUM=CONTA; CF=NULL; SUSPEND;'
      '                      CONTA=CONTA+1;'
      '                  END;'
      '              END;'
      '              '
      '              IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '              ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '              ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '              ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '              ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '              ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '              ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '              ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '              ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '              ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '              ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '              ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '              ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '              ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '              ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '              ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '              ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '              ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '              ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '              ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '              ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '              ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '              ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '              ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '              ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '              ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      ''
      
        '              SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39 +
        'ACTIVITATFI'#39' AND C_CODI=:ACT_ACT INTO :R_CODI;'
      '              IF (R_CODI='#39'E'#39') THEN HORA=HORA||'#39' '#39'||ACT_ACT;'
      '                              ELSE HORA=HORA;'
      '              ACTIVITAT=ACT_ACT;'
      '              '
      
        '              TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NUL' +
        'L; ACT_FICT=NULL; MOSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; CF' +
        '=NULL; SUSPEND; HORA=NULL;'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; PRESTACIO=' +
        'PRE_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT; CONTA=1; NUM=C' +
        'ONTA; CF=CF_ACT; SUSPEND;'
      '              CONTA=CONTA+1;'
      '          END;'
      '          ELSE BEGIN'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; HORA=NULL; PACIENT=PAC_ACT;' +
        ' PRESTACIO=PRE_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT;'
      
        '              NUM=CONTA; CF=CF_ACT; ACTIVITAT=ACT_ACT; SUSPEND; ' +
        'CONTA=CONTA+1;'
      '          END;'
      '          HOR_ANT=HOR_ACT;'
      '          ACT_ANT=ACT_ACT;'
      '          H=HOR_ACT+1;'
      '      END;'
      '  END;'
      '  '
      'END'
      '')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 460
    Top = 380
  end
  object ListInfer: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListInfer'
    ForceNombreDB = False
    Body.Strings = (
      
        '(DIA DATE, PLANTA VARCHAR(4), TORN SMALLINT) /* TORN: 1-MAT'#205'; 2-' +
        'TARDA */'
      'RETURNS (LLIT        VARCHAR(3),'
      '         HORA        VARCHAR(5),'
      '         ACTIVITAT   VARCHAR(15),'
      '         COLOR       VARCHAR(10)'
      '        )'
      'AS'
      ' DECLARE VARIABLE DOW INTEGER;'
      ' DECLARE VARIABLE H   INTEGER;'
      ' DECLARE VARIABLE HI  INTEGER;'
      ' DECLARE VARIABLE HF  INTEGER;'
      ' DECLARE VARIABLE CONTA INTEGER;'
      ' DECLARE VARIABLE HC  INTEGER;'
      'BEGIN'
      '  SELECT F_DAYOFWEEK(:DIA) FROM CONFIG WHERE 1=1 INTO :DOW;'
      '  IF (DOW=1) THEN DOW=7;      /* DIUMENGE */'
      '             ELSE DOW=DOW-1;'
      '             '
      '  IF (F_LEFT(PLANTA, 2) <> '#39'UH'#39') THEN PLANTA = NULL;'
      '             '
      '  IF (TORN = 1) THEN BEGIN HI=0;  HF=13; END;'
      '                ELSE BEGIN HI=14; HF=26; END;'
      '                '
      '  FOR SELECT DISTINCT T.C_HISTORIA, T.C_LLIT'
      '  FROM TRACTAMENTS T'
      
        '  JOIN DRETSPRESTA  DP ON T.C_PRESTACIO=DP.C_PRESTACIO AND DP.C_' +
        'DRET='#39'P180'#39
      
        '  WHERE (T.DATA_INGRES<=:DIA) AND (T.DATA_ALTA IS NULL OR T.DATA' +
        '_ALTA>=:DIA) AND (T.C_PLANTA=:PLANTA OR :PLANTA IS NULL)'
      '  ORDER BY T.C_LLIT'
      '  INTO :HC, :LLIT'
      '  DO BEGIN'
      '      FOR SELECT HORA, C_ACTIVITAT'
      '      FROM AGENDAPACIENT'
      '      WHERE C_HISTORIA = :HC'
      
        '      AND (DATAI<=:DIA) AND (DATAF IS NULL OR DATAF>:DIA) AND DI' +
        'A_SEMANA=:DOW AND (HORA BETWEEN :HI AND :HF)'
      '      ORDER BY HORA'
      '      INTO :H, :ACTIVITAT'
      '      DO BEGIN'
      '        IF      (H=1)  THEN HORA='#39'08:00'#39';'
      '        ELSE IF (H=2)  THEN HORA='#39'08:30'#39';'
      '        ELSE IF (H=3)  THEN HORA='#39'09:00'#39';'
      '        ELSE IF (H=4)  THEN HORA='#39'09:30'#39';'
      '        ELSE IF (H=5)  THEN HORA='#39'10:00'#39';'
      '        ELSE IF (H=6)  THEN HORA='#39'10:30'#39';'
      '        ELSE IF (H=7)  THEN HORA='#39'11:00'#39';'
      '        ELSE IF (H=8)  THEN HORA='#39'11:30'#39';'
      '        ELSE IF (H=9)  THEN HORA='#39'12:00'#39';'
      '        ELSE IF (H=10) THEN HORA='#39'12:30'#39';'
      '        ELSE IF (H=11) THEN HORA='#39'13:00'#39';'
      '        ELSE IF (H=12) THEN HORA='#39'13:30'#39';'
      '        ELSE IF (H=13) THEN HORA='#39'14:00'#39';'
      '        ELSE IF (H=14) THEN HORA='#39'14:30'#39';'
      '        ELSE IF (H=15) THEN HORA='#39'15:00'#39';'
      '        ELSE IF (H=16) THEN HORA='#39'15:30'#39';'
      '        ELSE IF (H=17) THEN HORA='#39'16:00'#39';'
      '        ELSE IF (H=18) THEN HORA='#39'16:30'#39';'
      '        ELSE IF (H=19) THEN HORA='#39'17:00'#39';'
      '        ELSE IF (H=20) THEN HORA='#39'17:30'#39';'
      '        ELSE IF (H=21) THEN HORA='#39'18:00'#39';'
      '        ELSE IF (H=22) THEN HORA='#39'18:30'#39';'
      '        ELSE IF (H=23) THEN HORA='#39'19:00'#39';'
      '        ELSE IF (H=24) THEN HORA='#39'19:30'#39';'
      '        ELSE IF (H=25) THEN HORA='#39'20:00'#39';'
      '        ELSE IF (H=26) THEN HORA='#39'20:30'#39';'
      ''
      
        '        SELECT COUNT(*) FROM CODICAMPSALFA WHERE TIPUSCODI='#39'ACTI' +
        'VITATUN'#39' AND C_CODI=:ACTIVITAT INTO :CONTA;'
      '        IF (CONTA IS NULL) THEN CONTA=0;'
      '        IF (CONTA > 0)     THEN COLOR=NULL;'
      '                           ELSE COLOR='#39'$00CCCCFF'#39';'
      ''
      '        SUSPEND;'
      '      END;'
      '  END;'
      'END')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic2 = wDataBasics.Tractaments
    Dic1Name = 'AgendaPacient_NO_FER_CHECK'
    Dic2Name = 'wDataBasics.Tractaments'
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
    Left = 320
    Top = 480
  end
  object marcatge_biostar: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'marcatge_biostar'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA INTEGER,'
      '      ID_BIOSTAR VARCHAR(30),'
      '      ID_DISPOSITIU VARCHAR(30),'
      '      E_DATA DATE,'
      '      EXECUTA CHAR(1)'
      ')'
      'RETURNS ('
      '   RESPOSTA       VARCHAR(30),'
      '   C_TRACTAMENT   INTEGER,'
      '   C_FREQ         VARCHAR(7),'
      '   FORAFREQ       CHAR(1),'
      '   C_TIPUSASS     SMALLINT,'
      '   NOU_ESTAT      SMALLINT,'
      '   COMENT         VARCHAR(30)'
      ')'
      'AS'
      '      DECLARE VARIABLE DATA          DATE;'
      '      DECLARE VARIABLE I_FREQ        VARCHAR(7);'
      '      DECLARE VARIABLE C_ASSISTENCIA INTEGER;'
      '      DECLARE VARIABLE ES_HAVINGUT   CHAR(1);'
      'BEGIN'
      ''
      '      RESPOSTA = '#39#39';'
      ''
      '      DATA = F_SoloFecha(E_DATA);'
      ''
      
        '      /* Busquem el tractament ambulatori actiu i la seva freq'#252#232 +
        'ncia */'
      ''
      '      SELECT T.C_TRACTAMENT, T.C_FREQUENCIA, F.CODI2'
      '      FROM   TRACTAMENTS T'
      '      JOIN   TORNAMB F ON T.C_FREQUENCIA = F.CODI'
      
        '      JOIN   DRETSPRESTA P ON T.C_PRESTACIO = P.C_PRESTACIO AND ' +
        'P.C_DRET = "P111"'
      '      WHERE  T.C_HISTORIA = :c_historia'
      '      AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= :E_DATA)'
      '      INTO  :C_TRACTAMENT, :C_FREQ, :I_FREQ;'
      ''
      
        '      /* Si no trobem tractament actiu, retornem error i sortim ' +
        '*/'
      '      IF (C_TRACTAMENT IS NULL) THEN'
      '      BEGIN'
      '          RESPOSTA = "PACIENT SENSE AMBULATORI ACTIU";'
      '          SUSPEND;'
      '          EXIT;'
      '      END;'
      '      '
      '      /* Mirem si est'#224' venint fora de freq'#252#232'ncia */'
      
        '      IF (F_SubStr(F_DiaDeLaSemana(:DATA), I_FREQ) > 0) THEN FOR' +
        'AFREQ = "N";'
      
        '                                                        ELSE FOR' +
        'AFREQ = "S";'
      ''
      '      /* Mirem si existeix ja registre d'#39'assist'#232'ncia per avui */'
      ''
      '      C_TIPUSASS = NULL;'
      ''
      '      SELECT A.C_ASSISTENCIA, A.C_TIPUSASS, C.LLISTATCUINA'
      '      FROM   ASSISTENCIAGIMNAS A'
      '      JOIN   CODISASSISTENCIA C ON A.C_TIPUSASS = C.C_TIPUSASS'
      '      WHERE  A.C_TRACTAMENT = :C_TRACTAMENT'
      '      AND    A.DATA = :DATA'
      '      INTO  :C_ASSISTENCIA, :C_TIPUSASS, :ES_HAVINGUT;'
      ''
      '      IF (C_ASSISTENCIA IS NULL) THEN'
      '      BEGIN'
      '            IF (FORAFREQ = "S") THEN NOU_ESTAT = 22;'
      '                                ELSE NOU_ESTAT = 1;'
      ''
      '            IF (EXECUTA = '#39'S'#39')'
      '            THEN'
      
        '                  INSERT INTO ASSISTENCIAGIMNAS (C_ASSISTENCIA, ' +
        'DATA, C_HISTORIA, C_TRACTAMENT, C_TIPUSASS, FORAFREQ, FREQUENCIA' +
        ', ID_BIOSTAR, ID_DISPOSITIU_BIOSTAR)'
      
        '                  VALUES (GEN_ID(CONTA_ASSISTENCIA, 1), :DATA, :' +
        'C_HISTORIA, :C_TRACTAMENT, :NOU_ESTAT, :FORAFREQ, :C_FREQ, :ID_B' +
        'IOSTAR, :ID_DISPOSITIU);'
      '      END;'
      ''
      
        '      /* Altrament, hem de fer un update, excepte si ja hi havia' +
        ' assist'#232'ncia "s'#237'" registrada, que no la modificarem */'
      
        '      ELSE IF ((C_TIPUSASS = -1) OR (ES_HAVINGUT = "N")) THEN  /' +
        '* "no assignat" o "no ha vingut" */'
      '      BEGIN'
      '            COMENT = NULL;'
      ''
      
        '            IF (FORAFREQ = "S") THEN NOU_ESTAT = 22;            ' +
        ' /* Ha vingut fora de freq'#252#232'ncia. Queda pendent de validar */'
      ''
      '            ELSE BEGIN'
      
        '                IF (C_TIPUSASS = -1) THEN NOU_ESTAT = 1;     /* ' +
        'Ha vingut */'
      '                                     ELSE BEGIN'
      
        '                                          NOU_ESTAT = 21;    /* ' +
        'Ha vingut per'#242' alg'#250' havia indicat que no => queda pendent de val' +
        'idar */'
      
        '                                          COMENT = C_TIPUSASS ||' +
        ' '#39' (C_TipusAss anterior) '#39';  /* Guardo estat anterior */'
      '                                     END;'
      '            END;'
      ''
      '            IF (COMENT IS NULL) THEN COMENT = '#39#39';'
      '            '
      '            IF (EXECUTA = '#39'S'#39')'
      '            THEN'
      '                  UPDATE ASSISTENCIAGIMNAS'
      '                  SET    C_TIPUSASS = :NOU_ESTAT,'
      '                         FORAFREQ = :FORAFREQ,'
      '                         FREQUENCIA = :C_FREQ,'
      '                         ID_BIOSTAR = :ID_BIOSTAR,'
      '                         ID_DISPOSITIU_BIOSTAR = :ID_DISPOSITIU,'
      
        '                         J_LLARGA = :COMENT || F_StrNull(J_LLARG' +
        'A, '#39#39')'
      '                  WHERE  C_ASSISTENCIA = :C_ASSISTENCIA;'
      '      END;'
      ''
      '      RESPOSTA = "OK";'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = AssistenciaGimnas
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
    Left = 41
    Top = 496
  end
  object marcatge_biostar_BCN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'marcatge_biostar_BCN'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA INTEGER,'
      '      ID_BIOSTAR VARCHAR(30),'
      '      ID_DISPOSITIU VARCHAR(30),'
      '      E_DATA DATE,'
      '      EXECUTA CHAR(1),'
      '      FUNCIO SMALLINT'
      ')'
      'RETURNS ('
      '   RESPOSTA       VARCHAR(30),'
      '   C_TRACTAMENT   INTEGER,'
      '   C_FREQ         VARCHAR(7),'
      '   FORAFREQ       CHAR(1),'
      '   C_TIPUSASS     SMALLINT,'
      '   NOU_ESTAT      SMALLINT,'
      '   COMENT         VARCHAR(30)'
      ')'
      'AS'
      '      DECLARE VARIABLE DATA          DATE;'
      '      DECLARE VARIABLE C_DRET        VARCHAR(10);'
      '      DECLARE VARIABLE C_ASSISTENCIA INTEGER;'
      '      DECLARE VARIABLE ES_HAVINGUT   CHAR(1);'
      '      DECLARE VARIABLE FLAG_ON       CHAR(1);'
      'BEGIN'
      ''
      
        '      SELECT ESTAT FROM CONFIGBLOQ WHERE CAMP = '#39'AssGymBiostarON' +
        #39' INTO :FLAG_ON;'
      '      IF (FLAG_ON IS NULL) THEN FLAG_ON = 0;'
      '      '
      '      IF (FLAG_ON = 0) THEN'
      '      BEGIN'
      '        RESPOSTA = '#39#39';'
      ''
      '        DATA = F_SoloFecha(E_DATA);'
      '      '
      
        '        IF      (FUNCIO = 1) THEN C_DRET = '#39'P107'#39';   /* Rehabili' +
        'taci'#243' GBCN */'
      
        '        ELSE IF (FUNCIO = 2) THEN C_DRET = '#39'P224'#39';   /* Musicote' +
        'r'#224'pia GBCN */'
      
        '        ELSE IF (FUNCIO = 3) THEN C_DRET = '#39'P222'#39';   /* Neuropsi' +
        'cologia GBCN */'
      
        '        ELSE IF (FUNCIO = 4) THEN C_DRET = '#39'P225'#39';   /* Logop'#232'di' +
        'a GBCN */'
      ''
      ''
      
        '        /* Busquem els tractaments ambulatoris actius amb freq'#252#232 +
        'ncia el dia del marcatge */'
      ''
      '        FOR SELECT T.C_TRACTAMENT, T.C_FREQUENCIA'
      '          FROM   TRACTAMENTS T'
      '          JOIN   TORNAMB F ON T.C_FREQUENCIA = F.CODI'
      
        '          JOIN   DRETSPRESTA P ON T.C_PRESTACIO = P.C_PRESTACIO ' +
        'AND P.C_DRET = :C_DRET'
      '          WHERE  T.C_HISTORIA = :c_historia'
      '          AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= :E_DATA)'
      '          AND    F_SubStr(F_DiaDeLaSemana(:DATA), F.CODI2) > 0'
      '          INTO  :C_TRACTAMENT, :C_FREQ'
      '        DO BEGIN'
      ''
      '            FORAFREQ = "N";'
      ''
      
        '            /* Mirem si existeix ja registre d'#39'assist'#232'ncia per a' +
        'vui */'
      ''
      '            C_TIPUSASS = NULL;'
      ''
      '            SELECT A.C_ASSISTENCIA, A.C_TIPUSASS, C.LLISTATCUINA'
      '            FROM   ASSISTENCIAGIMNAS A'
      
        '            JOIN   CODISASSISTENCIA C ON A.C_TIPUSASS = C.C_TIPU' +
        'SASS'
      '            WHERE  A.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    A.DATA = :DATA'
      '            INTO  :C_ASSISTENCIA, :C_TIPUSASS, :ES_HAVINGUT;'
      ''
      '            IF (C_ASSISTENCIA IS NULL) THEN'
      '            BEGIN'
      '                  NOU_ESTAT = 1;'
      ''
      '                  IF (EXECUTA = '#39'S'#39')'
      '                  THEN'
      
        '                        INSERT INTO ASSISTENCIAGIMNAS (C_ASSISTE' +
        'NCIA, DATA, C_HISTORIA, C_TRACTAMENT, C_TIPUSASS, FORAFREQ, FREQ' +
        'UENCIA, ID_BIOSTAR, ID_DISPOSITIU_BIOSTAR)'
      
        '                        VALUES (GEN_ID(CONTA_ASSISTENCIA, 1), :D' +
        'ATA, :C_HISTORIA, :C_TRACTAMENT, :NOU_ESTAT, :FORAFREQ, :C_FREQ,' +
        ' :ID_BIOSTAR, :ID_DISPOSITIU);'
      '            END;'
      ''
      
        '            /* Altrament, hem de fer un update, excepte si ja hi' +
        ' havia assist'#232'ncia "s'#237'" registrada, que no la modificarem */'
      
        '            ELSE IF ((C_TIPUSASS = -1) OR (ES_HAVINGUT = "N")) T' +
        'HEN  /* "no assignat" o "no ha vingut" */'
      '            BEGIN'
      '            '
      '                  COMENT = NULL;'
      '                  '
      '                  IF (C_TIPUSASS = -1) THEN BEGIN'
      
        '                                            NOU_ESTAT =  1;   /*' +
        ' Ha vingut */'
      '                                            COMENT = '#39#39';'
      '                                       END;'
      '                                       ELSE BEGIN'
      
        '                                            NOU_ESTAT = 21;   /*' +
        ' Ha vingut per'#242' alg'#250' havia indicat que no => queda pendent de va' +
        'lidar */'
      
        '                                            COMENT = C_TIPUSASS ' +
        '|| '#39' (C_TipusAss anterior) '#39';  /* Guardo estat anterior */'
      '                                       END;'
      '                                       '
      '                  IF (COMENT IS NULL) THEN COMENT = '#39#39';'
      ''
      '                  IF (EXECUTA = '#39'S'#39')'
      '                  THEN'
      '                        UPDATE ASSISTENCIAGIMNAS'
      '                        SET    C_TIPUSASS = :NOU_ESTAT,'
      '                               FORAFREQ = :FORAFREQ,'
      '                               FREQUENCIA = :C_FREQ,'
      '                               ID_BIOSTAR = :ID_BIOSTAR,'
      
        '                               ID_DISPOSITIU_BIOSTAR = :ID_DISPO' +
        'SITIU,'
      
        '                               J_LLARGA = :COMENT || F_StrNull(J' +
        '_LLARGA, '#39#39')'
      '                        WHERE  C_ASSISTENCIA = :C_ASSISTENCIA;'
      '            END;'
      ''
      '            RESPOSTA = "OK";'
      '            SUSPEND;'
      '        END;'
      '      '
      ''
      
        '        /* Si no trobem cap tractament amb freq'#252#232'ncia aquest dia' +
        ', mirem si n'#39'hi ha algun altre d'#39'actiu */'
      '        IF (C_TRACTAMENT IS NULL) THEN'
      '        BEGIN'
      '            FOR SELECT T.C_TRACTAMENT, T.C_FREQUENCIA'
      '                FROM   TRACTAMENTS T'
      '                JOIN   TORNAMB F ON T.C_FREQUENCIA = F.CODI'
      
        '                JOIN   DRETSPRESTA P ON T.C_PRESTACIO = P.C_PRES' +
        'TACIO AND P.C_DRET = :C_DRET'
      '                WHERE  T.C_HISTORIA = :c_historia'
      
        '                AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= :E_' +
        'DATA)'
      
        '                AND    F_SubStr(F_DiaDeLaSemana(:DATA), F.CODI2)' +
        ' = 0'
      '                INTO  :C_TRACTAMENT, :C_FREQ'
      '            DO BEGIN'
      ''
      '                  FORAFREQ = "S";'
      ''
      
        '                  /* Mirem si existeix ja registre d'#39'assist'#232'ncia' +
        ' per avui */'
      ''
      '                  C_TIPUSASS = NULL;'
      ''
      
        '                  SELECT A.C_ASSISTENCIA, A.C_TIPUSASS, C.LLISTA' +
        'TCUINA'
      '                  FROM   ASSISTENCIAGIMNAS A'
      
        '                  JOIN   CODISASSISTENCIA C ON A.C_TIPUSASS = C.' +
        'C_TIPUSASS'
      '                  WHERE  A.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    A.DATA = :DATA'
      
        '                  INTO  :C_ASSISTENCIA, :C_TIPUSASS, :ES_HAVINGU' +
        'T;'
      ''
      '                  IF (C_ASSISTENCIA IS NULL) THEN'
      '                  BEGIN'
      '                        NOU_ESTAT = 22;'
      ''
      '                        IF (EXECUTA = '#39'S'#39')'
      '                        THEN'
      
        '                              INSERT INTO ASSISTENCIAGIMNAS (C_A' +
        'SSISTENCIA, DATA, C_HISTORIA, C_TRACTAMENT, C_TIPUSASS, FORAFREQ' +
        ', FREQUENCIA, ID_BIOSTAR, ID_DISPOSITIU_BIOSTAR)'
      
        '                              VALUES (GEN_ID(CONTA_ASSISTENCIA, ' +
        '1), :DATA, :C_HISTORIA, :C_TRACTAMENT, :NOU_ESTAT, :FORAFREQ, :C' +
        '_FREQ, :ID_BIOSTAR, :ID_DISPOSITIU);'
      '                  END;'
      ''
      
        '                  /* Altrament, hem de fer un update, excepte si' +
        ' ja hi havia assist'#232'ncia "s'#237'" registrada, que no la modificarem ' +
        '*/'
      
        '                  ELSE IF ((C_TIPUSASS = -1) OR (ES_HAVINGUT = "' +
        'N")) THEN  /* "no assignat" o "no ha vingut" */'
      '                  BEGIN'
      '                  '
      
        '                        NOU_ESTAT = 22;             /* Ha vingut' +
        ' fora de freq'#252#232'ncia. Queda pendent de validar */'
      ''
      '                        IF (EXECUTA = '#39'S'#39')'
      '                        THEN'
      '                              UPDATE ASSISTENCIAGIMNAS'
      '                              SET    C_TIPUSASS = :NOU_ESTAT,'
      '                                     FORAFREQ = :FORAFREQ,'
      '                                     FREQUENCIA = :C_FREQ,'
      '                                     ID_BIOSTAR = :ID_BIOSTAR,'
      
        '                                     ID_DISPOSITIU_BIOSTAR = :ID' +
        '_DISPOSITIU'
      
        '                                    WHERE  C_ASSISTENCIA = :C_AS' +
        'SISTENCIA;'
      '                  END;'
      '                  '
      '                  RESPOSTA = "OK";'
      '                  SUSPEND;'
      '            END;'
      '        END'
      '      '
      '      '
      '        /* Si no trobem cap tractament actiu, retornem error */'
      '        IF (C_TRACTAMENT IS NULL) THEN'
      '        BEGIN'
      '          RESPOSTA = "PACIENT SENSE AMBULATORI ACTIU";'
      '          SUSPEND;'
      '        END;'
      '      END;'
      '      '
      '      ELSE BEGIN'
      '          RESPOSTA = "OK";'
      '          SUSPEND;'
      '      END;'
      'END')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'AssistenciaGimnas'
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
    Left = 147
    Top = 496
  end
  object Processa: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Processa'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT  INTEGER;'
      '  DECLARE VARIABLE TEDRETPRESTA  SMALLINT;'
      '  DECLARE VARIABLE ES_UNESPA     CHAR(1);'
      '  DECLARE VARIABLE DATA_SINISTRE DATE;'
      '  DECLARE VARIABLE C_HISTORIA    INTEGER;'
      '  DECLARE VARIABLE NUM_SESSIONS  INTEGER;'
      '  DECLARE VARIABLE EMAIL         VARCHAR(250);'
      '  DECLARE VARIABLE DATAUNESPATALL2021 DATE;'
      'BEGIN'
      '      /*'
      
        '      1. Insertar registre a UNESPA_SESSIONS per tots aquells tr' +
        'actaments que no hi siguin i que tinguin dret P172, siguin UNESP' +
        'A i data_sinistre >=01.07.2021 a filiacio'
      
        '      2. Eliminar registre de tots aquells que estiguin a UNESPA' +
        '_SESSIONS i ja no tinguin o be dret P172, o be client no UNESPA ' +
        'o b'#233' data_sinistre <01.07.2021'
      
        '      3. Pels que tenen NUM_SESSIONS null, comptar assistencies ' +
        'gimn'#224's (c_tipusass a CODISASSISTENCIA amb ACTIU='#39'S'#39' i ASSISTENCI' +
        'A='#39'S'#39'). si '#233's >= X, informar camp NUM_SESSIONS i insertar regist' +
        're'
      
        '         a AVISOS_CORREUS pq s'#39'envi'#239' correu a admissions i al me' +
        'tge coordinador conforme ja ha fet X sessions i UNESPA nom'#233's en ' +
        'cobreix 70'
      '      */'
      ''
      
        '      SELECT DATA FROM UNESPADATES WHERE ID="TALL_2021" INTO :DA' +
        'TAUNESPATALL2021;'
      
        '      IF (DATAUNESPATALL2021 IS NULL) THEN DATAUNESPATALL2021 = ' +
        '0;'
      ''
      
        '      /* 2. Primer esborrem que sin'#243' tornarem a tractar els acab' +
        'ats d'#39'insertar en el putn 1. */'
      
        '      FOR SELECT US.C_TRACTAMENT, DP.C_PRESTACIO, T.DATA_SINISTR' +
        'E, C.ES_UNESPA'
      '      FROM UNESPA_SESSIONS US'
      
        '      JOIN TRACTAMENTS      T  ON US.C_TRACTAMENT = T.C_TRACTAME' +
        'NT'
      
        '      LEFT JOIN DRETSPRESTA DP ON T.C_PRESTACIO = DP.C_PRESTACIO' +
        ' AND DP.C_DRET = "P172"'
      '      LEFT JOIN FILIACIO    F  ON T.C_HISTORIA  = F.NUM_HIST'
      
        '      LEFT JOIN CLIENTS     C  ON T.C_CENTREFAC = C.C_CENTREFAC ' +
        'AND T.C_CLIENT = C.C_CLIENT'
      '      WHERE US.NUM_SESSIONS IS NULL'
      
        '      AND ((DP.C_PRESTACIO IS NULL) OR (T.DATA_SINISTRE < :DATAU' +
        'NESPATALL2021) OR (C.ES_UNESPA<>'#39'S'#39'))'
      
        '      INTO :C_TRACTAMENT, :TEDRETPRESTA, :DATA_SINISTRE, :ES_UNE' +
        'SPA'
      '      DO BEGIN'
      
        '          IF ((TEDRETPRESTA IS NULL) OR (DATA_SINISTRE < DATAUNE' +
        'SPATALL2021) OR (ES_UNESPA<>'#39'S'#39')) THEN DELETE FROM UNESPA_SESSIO' +
        'NS WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '      END'
      ''
      '      /* 1. */'
      '      FOR SELECT T.C_TRACTAMENT'
      '      FROM TRACTAMENTS T'
      '      JOIN FILIACIO    F  ON T.C_HISTORIA  = F.NUM_HIST'
      
        '      JOIN DRETSPRESTA DP ON T.C_PRESTACIO = DP.C_PRESTACIO AND ' +
        'DP.C_DRET = "P172"'
      
        '      JOIN CLIENTS     C  ON T.C_CENTREFAC = C.C_CENTREFAC AND T' +
        '.C_CLIENT = C.C_CLIENT'
      
        '      LEFT JOIN UNESPA_SESSIONS US ON T.C_TRACTAMENT = US.C_TRAC' +
        'TAMENT'
      '      WHERE C.ES_UNESPA = '#39'S'#39
      '      AND T.DATA_SINISTRE >= :DATAUNESPATALL2021'
      '      AND US.C_TRACTAMENT IS NULL'
      '      ORDER BY T.C_TRACTAMENT'
      '      INTO :C_TRACTAMENT'
      '      DO BEGIN'
      
        '          INSERT INTO UNESPA_SESSIONS(C_TRACTAMENT) VALUES(:C_TR' +
        'ACTAMENT);'
      '      END'
      ''
      '      /* 3. */'
      
        '      FOR SELECT US.C_TRACTAMENT, F.NUM_HIST, M.EMAIL, COUNT(DIS' +
        'TINCT A.C_ASSISTENCIA)'
      '      FROM UNESPA_SESSIONS US'
      
        '      JOIN ASSISTENCIAGIMNAS A  ON US.C_TRACTAMENT = A.C_TRACTAM' +
        'ENT'
      
        '      JOIN CODISASSISTENCIA  CA ON A.C_TIPUSASS = CA.C_TIPUSASS ' +
        'AND CA.ACTIU = '#39'S'#39' AND CA.ASSISTENCIA = '#39'S'#39
      '      JOIN FILIACIO          F  ON A.C_HISTORIA = F.NUM_HIST'
      
        '      JOIN TRACTAMENTS       T  ON US.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT'
      '      JOIN METGES            M  ON T.C_COORDINADOR = M.CODI'
      '      WHERE US.NUM_SESSIONS IS NULL'
      '      GROUP BY US.C_TRACTAMENT, F.NUM_HIST, M.EMAIL'
      '      INTO :C_TRACTAMENT, :C_HISTORIA, :EMAIL, :NUM_SESSIONS'
      '      DO BEGIN'
      '          IF (NUM_SESSIONS >= 60) THEN'
      '          BEGIN'
      
        '              INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, ' +
        'ASSUMPTE, COS, DESTINATARI)'
      
        '                                 VALUES (       "NOW",      13, ' +
        #39'Av'#237's de tractaments UNESPA acabant les sessions autoritzades. '#39 +
        ','
      
        '                                                                ' +
        '          '#39'El pacient '#39' || :C_HISTORIA || '#39' ha realitzat '#39' || :N' +
        'UM_SESSIONS || '#39' sessions.'#39','
      '                                         :EMAIL);'
      ''
      
        '              UPDATE UNESPA_SESSIONS SET NUM_SESSIONS = :NUM_SES' +
        'SIONS WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '          END'
      '      END'
      'END')
    Dic1 = Unespa_Sessions
    Dic1Name = 'Unespa_Sessions'
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
    Left = 40
    Top = 552
  end
  object Unespa_Sessions: TDic
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
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero de sessions'
        NombreDB = 'NUM_SESSIONS'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
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
          'Id de tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Tractaments'
        NombreDB = 'Tractaments'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Id de tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Unespa_Sessions'
    NombreTabla = 'Unespa_Sessions'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id de tractament'
      'N'#250'mero de sessions')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 112
    Top = 552
  end
  object AssPeriode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AssPeriode'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DATA_INICI      DATE,'
      '  DATA_FI         DATE,'
      '  SHOWUNASSIGNED  CHAR(1)'
      ')'
      'RETURNS ('
      '  NOM              VARCHAR(100),'
      '  C_Assistencia    INTEGER,'
      '  C_Historia       INTEGER,'
      '  J_Curta          VARCHAR(40),'
      '  NOM_ASSISTENCIA  VARCHAR(50),'
      '  ASSISTENCIA      VARCHAR(1),'
      '  C_TipusAss       INTEGER,'
      '  Data             DATE,'
      '  Frequencia       VARCHAR(7),'
      '  MetgeCoordinador VARCHAR(3),'
      '  ForaFreq         VARCHAR(1),'
      '  C_Tractament     INTEGER,'
      '  PrestacioGimnas  VARCHAR(4),'
      '  GrupPresta       VARCHAR(15),'
      '  C_Metge          VARCHAR(5),'
      '  C_Centrefac      VARCHAR(2),'
      '  Dinar            CHAR(1),'
      '  Usuari_Valida    VARCHAR(5),'
      '  Data_Valida      DATE,'
      '  J_Llarga         VARCHAR(3000)'
      ')'
      ''
      'AS'
      '  DECLARE VARIABLE XAPELLIDO1 VARCHAR (25);'
      '  DECLARE VARIABLE XAPELLIDO2 VARCHAR (25);'
      '  DECLARE VARIABLE NUM_ASS INTEGER;'
      '  DECLARE VARIABLE NEW_FREQ VARCHAR (7);'
      '  DECLARE VARIABLE SHOW INTEGER;'
      'BEGIN'
      ''
      '  IF ((DATA_INICI IS NULL) OR (DATA_FI IS NULL)) THEN EXIT;'
      ''
      
        '  FOR SELECT C_ASSISTENCIA, C_HISTORIA, J_CURTA, C_TIPUSASS, DAT' +
        'A, FORAFREQ, FREQUENCIA, C_TRACTAMENT, C_Metge, Dinar, Usuari_Va' +
        'lida, Data_Valida, J_Llarga'
      '      FROM   ASSISTENCIAGIMNAS'
      '      WHERE  DATA between :DATA_INICI AND :DATA_FI'
      
        '      INTO  :C_ASSISTENCIA, :C_HISTORIA, :J_CURTA, :C_TIPUSASS, ' +
        ':DATA, :FORAFREQ, :FREQUENCIA, :C_TRACTAMENT, :C_Metge, :Dinar, ' +
        ':Usuari_Valida, :Data_Valida, :J_Llarga'
      '  DO BEGIN'
      ''
      '    SHOW = 0;'
      ''
      
        '    IF ((C_TIPUSASS = -1) AND (SHOWUNASSIGNED = "S")) THEN SHOW ' +
        '= 1;'
      '    IF (C_TIPUSASS <> -1) THEN SHOW = 1;'
      ''
      '    IF (SHOW = 1) THEN'
      '    BEGIN'
      ''
      '      SELECT NOMCOMPLET'
      '      FROM   FILIACIO'
      '      WHERE  :C_HISTORIA = NUM_HIST'
      '      INTO  :NOM;'
      '      '
      
        '      SELECT T.C_COORDINADOR, T.C_PRESTACIO, C.N_CODI, T.C_CENTR' +
        'EFAC'
      '      FROM   TRACTAMENTS T'
      '      JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      
        '      LEFT OUTER JOIN CODICAMPS C ON P.GRUP = C.C_CODI AND C.TIP' +
        'USCODI = '#39'PRESTACIO.GRUP'#39
      '      WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      
        '      INTO  :METGECOORDINADOR, :PRESTACIOGIMNAS, :GRUPPRESTA, :C' +
        '_CENTREFAC;'
      ''
      '      IF (FREQUENCIA = "") THEN FREQUENCIA = "DIA FIX";'
      '      ELSE BEGIN'
      '   '
      
        '            IF (F_MID(FREQUENCIA,0,1) = "X") THEN NEW_FREQ = "1"' +
        ';'
      
        '                                             ELSE NEW_FREQ = "-"' +
        ';'
      ''
      
        '            IF (F_MID(FREQUENCIA,1,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "2";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,2,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "3";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,3,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "4";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,4,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "5";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,5,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "6";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      
        '            IF (F_MID(FREQUENCIA,6,1) = "X") THEN NEW_FREQ = NEW' +
        '_FREQ || "7";'
      
        '                                             ELSE NEW_FREQ = NEW' +
        '_FREQ || "-";'
      ''
      '            FREQUENCIA = NEW_FREQ;'
      ''
      '      END'
      ''
      '      SELECT NOM, ASSISTENCIA'
      '      FROM   CODISASSISTENCIA'
      '      WHERE  C_TIPUSASS = :C_TIPUSASS'
      '      INTO  :NOM_ASSISTENCIA, :ASSISTENCIA;'
      ''
      '      SUSPEND;'
      ''
      '    END;'
      ''
      '  END;'
      'END;')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'assistenciagimnas'
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
    ModiFecha = 36720.6782318287
    Left = 144
    Top = 56
  end
  object ListEBikes_Esborrada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListEBikes'
    ForceNombreDB = False
    Body.Strings = (
      
        '(OPCIO CHAR(1),DIA INTEGER)        /* DIA: -1:AHIR, 0:AVUI, 1:DE' +
        'M'#192' */'
      
        'RETURNS (TIPUS      INTEGER,       /* 0-Activitat; 1-Hora; 2-Ter' +
        'apeuta; 3-Pacients */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      
        '         HORA       VARCHAR(22),  /* ERA DE 6, A L'#39'AFEGIR ACTIVI' +
        'TAT PASSA A 21 (15+6+1espai blanc)*/'
      '         TERAPEUTA  VARCHAR(20),'
      '         PACIENT    VARCHAR(92),'
      '         MOSTRAR    VARCHAR(100),'
      '         PRESTACIO  CHAR(4),'
      '         CF         VARCHAR(2),'
      '         NUM        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACT_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACT_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TER_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TER_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE ACT_F      VARCHAR(16);'
      '  DECLARE VARIABLE CF_ACT     VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE R_CODI     VARCHAR(10);'
      '  DECLARE VARIABLE MAX_ANT    INTEGER;'
      '  DECLARE VARIABLE H          INTEGER;'
      '  DECLARE VARIABLE C_ACTIVITAT VARCHAR(15);'
      '  DECLARE VARIABLE N_CODI      VARCHAR(60);'
      'BEGIN'
      '  IF (DIA IS NULL) THEN DIA=0;'
      ''
      '  ESPAIS40='#39'                                        '#39';'
      ''
      
        '  FOR SELECT C_CODI, N_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39 +
        'ACTIVITATFI'#39' AND R_CODI='#39'K'#39
      '  ORDER BY C_CODI'
      '  INTO :C_ACTIVITAT, :N_CODI'
      '  DO BEGIN'
      
        '      TER_ACT='#39#39'; TER_ANT='#39#39'; HOR_ACT=0; HOR_ANT=0; NUM=NULL; CO' +
        'NTA=1; ACT_ANT=NULL; ACT_ACT=NULL; MOSTRAR=N_CODI;'
      
        '      TIPUS=0; ACTIVITAT=:C_ACTIVITAT; HORA=NULL; TERAPEUTA=NULL' +
        '; PACIENT=NULL; PRESTACIO=NULL; ACT_FICT=NULL; CF=NULL; SUSPEND;'
      '      '
      
        '      FOR SELECT CAST(P.HC AS VARCHAR(8))||'#39' '#39'||P.PACIENT,P.PACI' +
        'ENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC,P.ACTIVITAT,MIN(P.HORA)'
      
        '      FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO,:DIA' +
        ') P'
      
        '      JOIN DRETSPRESTA DP ON P.PRESTACIO=DP.C_PRESTACIO AND DP.C' +
        '_DRET='#39'P115'#39
      
        '      GROUP BY P.HC,P.PACIENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC' +
        ',P.ACTIVITAT'
      '      ORDER BY 7,6,3 DESC,2'
      
        '      INTO :PAC_ACT,:PACI,:PRE_ACT,:ACT_F,:CF_ACT,:ACT_ACT,:HOR_' +
        'ACT'
      '      DO BEGIN'
      
        '          /* per cada canvi d'#39'activitat i/o hora canviem tipus *' +
        '/'
      '          IF ((HOR_ACT<>HOR_ANT) OR (ACT_ACT<>ACT_ANT)) THEN'
      '          BEGIN'
      
        '              IF (ACT_ACT <> ACT_ANT) /* Si el canvi '#233's d'#39'activi' +
        'tat */'
      
        '              THEN SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSC' +
        'ODI='#39'ACTIVITATFI'#39' AND C_CODI=:ACT_ANT INTO :R_CODI;'
      ''
      
        '              IF ((R_CODI='#39'E'#39') AND (F_MODULO(HOR_ANT,2)=1) AND (' +
        'HOR_ANT<>11)) THEN   /* Nom'#233's buits per R_CODI='#39'E'#39' i hores en pu' +
        'nt. A les 13h no hi ha buits */'
      
        '              BEGIN                                             ' +
        '                     /* usem HOR_ANT pq si s'#243'n diferents mirem l' +
        #39'anterior i si no, '#233's que s'#243'n iguals */'
      '                  /* Buits */'
      
        '                  SELECT N_CODI2 FROM CODICAMPSALFA WHERE TIPUSC' +
        'ODI='#39'ACTIVITATFI'#39' AND C_CODI=:ACT_ANT INTO :MAX_ANT;'
      '                  IF (MAX_ANT IS NULL) THEN MAX_ANT=0;'
      ''
      '                  WHILE (CONTA <= MAX_ANT) DO'
      '                  BEGIN'
      
        '                      TIPUS=3; TERAPEUTA='#39#39'; PACIENT=NULL; PREST' +
        'ACIO=NULL; ACT_FICT=NULL; MOSTRAR = '#39'    '#39'||ACT_ANT||'#39' LLIURE'#39'; ' +
        'NUM=CONTA; CF=NULL; SUSPEND;'
      '                      CONTA=CONTA+1;'
      '                  END;'
      '              END;'
      '              '
      '              IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '              ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '              ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '              ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '              ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '              ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '              ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '              ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '              ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '              ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '              ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '              ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '              ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '              ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '              ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '              ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '              ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '              ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '              ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '              ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '              ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '              ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '              ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '              ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '              ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '              ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      ''
      
        '              SELECT R_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39 +
        'ACTIVITATFI'#39' AND C_CODI=:ACT_ACT INTO :R_CODI;'
      '              IF (R_CODI='#39'E'#39') THEN HORA=HORA||'#39' '#39'||ACT_ACT;'
      '                              ELSE HORA=HORA;'
      '              ACTIVITAT=ACT_ACT;'
      '              '
      
        '              TIPUS=1; TERAPEUTA='#39#39'; PACIENT=NULL; PRESTACIO=NUL' +
        'L; ACT_FICT=NULL; MOSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; CF' +
        '=NULL; SUSPEND; HORA=NULL;'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; PACIENT=PAC_ACT; PRESTACIO=' +
        'PRE_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT; CONTA=1; NUM=C' +
        'ONTA; CF=CF_ACT; SUSPEND;'
      '              CONTA=CONTA+1;'
      '          END;'
      '          ELSE BEGIN'
      
        '              TIPUS=3; TERAPEUTA='#39#39'; HORA=NULL; PACIENT=PAC_ACT;' +
        ' PRESTACIO=PRE_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT;'
      
        '              NUM=CONTA; CF=CF_ACT; ACTIVITAT=ACT_ACT; SUSPEND; ' +
        'CONTA=CONTA+1;'
      '          END;'
      '          HOR_ANT=HOR_ACT;'
      '          ACT_ANT=ACT_ACT;'
      '          H=HOR_ACT+1;'
      '      END;'
      '  END;'
      '  '
      'END'
      '')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 564
    Top = 532
  end
  object ListEBikesNew: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListEBikesNew'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO CHAR(1),DIA INTEGER)  /* DIA: -1:AHIR, 0:AVUI, 1:DEM'#192' */'
      
        'RETURNS (TIPUS      INTEGER,       /* 0-Activitat; 1-Hora; 2-Ter' +
        'apeuta; 3-Pacients */'
      '         ACTIVITAT  VARCHAR(15),'
      '         ACT_FICT   VARCHAR(16),'
      
        '         HORA       VARCHAR(22),  /* ERA DE 6, A L'#39'AFEGIR ACTIVI' +
        'TAT PASSA A 21 (15+6+1espai blanc)*/'
      '         PACIENT    VARCHAR(92),'
      '         TERAPEUTA  VARCHAR(20),'
      '         MOSTRAR    VARCHAR(100),'
      '         PRESTACIO  CHAR(4),'
      '         CF         VARCHAR(2),'
      '         NUM        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE C_ACTIVITAT VARCHAR(15);'
      '  DECLARE VARIABLE ACT_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACT_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE ACT_F      VARCHAR(16);'
      '  DECLARE VARIABLE CF_ACT     VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      'BEGIN'
      '      IF (DIA IS NULL) THEN DIA=0;'
      ''
      '      ESPAIS40='#39'                                        '#39';'
      ''
      
        '      TERAPEUTA = '#39#39'; HOR_ACT=0; HOR_ANT=0; NUM=NULL; CONTA=1; A' +
        'CT_ANT=NULL; ACT_ACT=NULL;'
      
        '      TIPUS=0; ACTIVITAT=NULL; HORA=NULL; PACIENT=NULL; PRESTACI' +
        'O=NULL; ACT_FICT=NULL; CF=NULL;'
      '      '
      
        '      FOR SELECT HC, NOMPACIENT, PRESTACIO, ACT_FICT, CF, C_ACTI' +
        'VITAT, HORA'
      '      FROM P_TRACTAMENTS_EBIKES(:OPCIO, :DIA)'
      '      ORDER BY 7,6,3 DESC,2'
      
        '      INTO :PAC_ACT,:PACI,:PRE_ACT,:ACT_F,:CF_ACT,:ACT_ACT,:HOR_' +
        'ACT'
      '      DO BEGIN'
      
        '          /* per cada canvi d'#39'activitat i/o hora canviem tipus *' +
        '/'
      '          IF ((HOR_ACT<>HOR_ANT) OR (ACT_ACT<>ACT_ANT)) THEN'
      '          BEGIN'
      '              IF      (HOR_ACT=1)  THEN HORA='#39'H08_00'#39';'
      '              ELSE IF (HOR_ACT=2)  THEN HORA='#39'H08_30'#39';'
      '              ELSE IF (HOR_ACT=3)  THEN HORA='#39'H09_00'#39';'
      '              ELSE IF (HOR_ACT=4)  THEN HORA='#39'H09_30'#39';'
      '              ELSE IF (HOR_ACT=5)  THEN HORA='#39'H10_00'#39';'
      '              ELSE IF (HOR_ACT=6)  THEN HORA='#39'H10_30'#39';'
      '              ELSE IF (HOR_ACT=7)  THEN HORA='#39'H11_00'#39';'
      '              ELSE IF (HOR_ACT=8)  THEN HORA='#39'H11_30'#39';'
      '              ELSE IF (HOR_ACT=9)  THEN HORA='#39'H12_00'#39';'
      '              ELSE IF (HOR_ACT=10) THEN HORA='#39'H12_30'#39';'
      '              ELSE IF (HOR_ACT=11) THEN HORA='#39'H13_00'#39';'
      '              ELSE IF (HOR_ACT=12) THEN HORA='#39'H13_30'#39';'
      '              ELSE IF (HOR_ACT=13) THEN HORA='#39'H14_00'#39';'
      '              ELSE IF (HOR_ACT=14) THEN HORA='#39'H14_30'#39';'
      '              ELSE IF (HOR_ACT=15) THEN HORA='#39'H15_00'#39';'
      '              ELSE IF (HOR_ACT=16) THEN HORA='#39'H15_30'#39';'
      '              ELSE IF (HOR_ACT=17) THEN HORA='#39'H16_00'#39';'
      '              ELSE IF (HOR_ACT=18) THEN HORA='#39'H16_30'#39';'
      '              ELSE IF (HOR_ACT=19) THEN HORA='#39'H17_00'#39';'
      '              ELSE IF (HOR_ACT=20) THEN HORA='#39'H17_30'#39';'
      '              ELSE IF (HOR_ACT=21) THEN HORA='#39'H18_00'#39';'
      '              ELSE IF (HOR_ACT=22) THEN HORA='#39'H18_30'#39';'
      '              ELSE IF (HOR_ACT=23) THEN HORA='#39'H19_00'#39';'
      '              ELSE IF (HOR_ACT=24) THEN HORA='#39'H19_30'#39';'
      '              ELSE IF (HOR_ACT=25) THEN HORA='#39'H20_00'#39';'
      '              ELSE IF (HOR_ACT=26) THEN HORA='#39'H20_30'#39';'
      ''
      '              HORA=HORA||'#39' '#39'||ACT_ACT;'
      '              ACTIVITAT=ACT_ACT;'
      
        '              TIPUS=1; PACIENT=NULL; PRESTACIO=NULL; ACT_FICT=NU' +
        'LL; MOSTRAR=ESPAIS40||HORA||ESPAIS40; NUM=NULL; CF=NULL; SUSPEND' +
        '; HORA=NULL;'
      
        '              TIPUS=3; PACIENT=PAC_ACT; PRESTACIO=PRE_ACT; ACT_F' +
        'ICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT; CONTA=1; NUM=CONTA; CF=CF_AC' +
        'T; SUSPEND;'
      '              CONTA=CONTA+1;'
      '          END;'
      '          ELSE BEGIN'
      
        '              TIPUS=3; HORA=NULL; PACIENT=PAC_ACT; PRESTACIO=PRE' +
        '_ACT; ACT_FICT=ACT_F; MOSTRAR='#39'    '#39'||PACIENT;'
      
        '              NUM=CONTA; CF=CF_ACT; ACTIVITAT=ACT_ACT; SUSPEND; ' +
        'CONTA=CONTA+1;'
      '          END;'
      '          HOR_ANT=HOR_ACT;'
      '          ACT_ANT=ACT_ACT;'
      '      END;'
      ''
      'END'
      '')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 468
    Top = 532
  end
  object P_EBIKES: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EBIKES'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO CHAR(1),DIA INTEGER)  /* DIA: -1:AHIR, 0:AVUI, 1:DEM'#192' */'
      'RETURNS (HC           VARCHAR(92),'
      '         NOMPACIENT   VARCHAR(92),'
      '         PRESTACIO    CHAR(4),'
      '         ACT_FICT     VARCHAR(16),'
      '         CF           VARCHAR(2),'
      '         C_ACTIVITAT  VARCHAR(15),'
      '         HORA         INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACT_ACT    VARCHAR(15);'
      '  DECLARE VARIABLE ACT_ANT    VARCHAR(15);'
      '  DECLARE VARIABLE TER_ACT    VARCHAR(20);'
      '  DECLARE VARIABLE TER_ANT    VARCHAR(20);'
      '  DECLARE VARIABLE HOR_ACT    INTEGER;'
      '  DECLARE VARIABLE HOR_ANT    INTEGER;'
      '  DECLARE VARIABLE PAC_ACT    VARCHAR(92);'
      '  DECLARE VARIABLE PRE_ACT    VARCHAR(4);'
      '  DECLARE VARIABLE ACT_F      VARCHAR(16);'
      '  DECLARE VARIABLE CF_ACT     VARCHAR(4);'
      '  DECLARE VARIABLE ESPAIS40   VARCHAR(40);'
      '  DECLARE VARIABLE PACI       VARCHAR(82);'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE R_CODI     VARCHAR(10);'
      '  DECLARE VARIABLE MAX_ANT    INTEGER;'
      '  DECLARE VARIABLE H          INTEGER;'
      'BEGIN'
      '    IF (DIA IS NULL) THEN DIA=0;'
      '    '
      
        '    FOR SELECT C_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39'ACTIVI' +
        'TATFI'#39' AND R_CODI='#39'K'#39
      '    ORDER BY C_CODI'
      '    INTO :C_ACTIVITAT'
      '    DO BEGIN'
      
        '      FOR SELECT CAST(P.HC AS VARCHAR(8))||'#39' '#39'||P.PACIENT,P.PACI' +
        'ENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC,P.ACTIVITAT,MIN(P.HORA)'
      
        '      FROM P_TRACTAMENTS_LISTACTIVITATS(:C_ACTIVITAT,:OPCIO,:DIA' +
        ') P'
      
        '      JOIN DRETSPRESTA DP ON P.PRESTACIO=DP.C_PRESTACIO AND DP.C' +
        '_DRET='#39'P115'#39
      
        '      GROUP BY P.HC,P.PACIENT,P.PRESTACIO,P.ACT_FICT,P.CENTREFAC' +
        ',P.ACTIVITAT'
      '      ORDER BY 7,6,3 DESC,2'
      
        '      INTO :HC,:NOMPACIENT,:PRESTACIO,:ACT_FICT,:CF,:C_ACTIVITAT' +
        ',:HORA'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      '    END;'
      'END'
      '')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Tractaments'
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
    Left = 396
    Top = 532
  end
  object Formacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Formacio'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HORA       INTEGER,'
      '         DIA_SEMANA VARCHAR(3),'
      '         PACIENT    VARCHAR(92),'
      '         CF         VARCHAR(2),'
      '         PRESTA     CHAR(4),'
      '         ACT        VARCHAR(15),'
      '         ORDRE      INTEGER)'
      'AS'
      ' DECLARE VARIABLE H    SMALLINT;'
      ' DECLARE VARIABLE DANT INTEGER;'
      ' DECLARE VARIABLE DIAS INTEGER;'
      ' DECLARE VARIABLE HC   VARCHAR(10);'
      ' DECLARE VARIABLE NOM  VARCHAR(80);'
      'BEGIN'
      '    H=1;'
      '    WHILE (H<=26) DO'
      '    BEGIN'
      '        DANT=0; ORDRE=1; HORA=H;'
      
        '        FOR SELECT DISTINCT A.DIA_SEMANA,A.C_HISTORIA,F.NOMCOMPL' +
        'ET,T.C_CENTREFAC,T.C_PRESTACIO,A.C_ACTIVITAT'
      
        '        FROM AGENDAPACIENT A LEFT JOIN FILIACIO F ON A.C_HISTORI' +
        'A=F.NUM_HIST'
      
        '        JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND ' +
        '(T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY")'
      
        '        JOIN CODICAMPSALFA C ON C.TIPUSCODI='#39'ACTIVITATAS'#39' AND A.' +
        'C_ACTIVITAT=C.C_CODI AND C.R_CODI='#39'A'#39
      '        WHERE (A.DATAF IS NULL OR A.DATAF>"TODAY") AND A.HORA=:H'
      '        ORDER BY A.DIA_SEMANA,F.NOMCOMPLET'
      '        INTO :DIAS,:HC,:NOM,:CF,:PRESTA,:ACT'
      '        DO BEGIN'
      '            PACIENT=HC||'#39' '#39'||NOM;'
      '            IF (DANT=DIAS) THEN ORDRE=ORDRE+1;'
      '                           ELSE ORDRE=1;'
      '            IF      (DIAS=1) THEN DIA_SEMANA='#39'DLL'#39';'
      '            ELSE IF (DIAS=2) THEN DIA_SEMANA='#39'DM'#39';'
      '            ELSE IF (DIAS=3) THEN DIA_SEMANA='#39'DX'#39';'
      '            ELSE IF (DIAS=4) THEN DIA_SEMANA='#39'DJ'#39';'
      '            ELSE IF (DIAS=5) THEN DIA_SEMANA='#39'DV'#39';'
      '            SUSPEND;'
      '            DANT=DIAS;'
      '        END;'
      '        H=H+1;'
      '    END;'
      'END')
    Dic1 = AgendaPacient_NO_FER_CHECK
    Dic1Name = 'AgendaPacient_NO_FER_CHECK'
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
    Left = 336
    Top = 216
  end
  object NoHaVingutAuto: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NoHaVingutAuto'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (FET CHAR(1))'
      'AS'
      'BEGIN'
      '      update ASSISTENCIAGIMNAS A'
      '      set A.C_TIPUSASS = 13'
      '      where A.DATA = "TODAY"'
      '      and A.C_TIPUSASS = -1'
      '      and exists (select T.C_TRACTAMENT from TRACTAMENTS T'
      '                  where T.C_TRACTAMENT = A.C_TRACTAMENT'
      '                  and T.C_PRESTACIO = "2014"'
      
        '                  and (T.DATA_ALTA is Null or T.DATA_ALTA >= "TO' +
        'DAY"));'
      '                  '
      '      FET = '#39'S'#39';'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'AssistenciaGimnas'
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
    Left = 448
    Top = 104
  end
  object T_AssistenciaGimnas_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE H INTEGER;'
      '  DECLARE VARIABLE M INTEGER;'
      ''
      'BEGIN'
      ''
      
        '  IF ((NEW.HORA_ASSISTENCIA IS NULL) AND (NEW.C_TIPUSASS <> -1) ' +
        'AND (NEW.C_TIPUSASS <> 13)) THEN'
      '  BEGIN'
      '    H = CAST(EXTRACT(HOUR FROM CURRENT_TIMESTAMP) AS INTEGER);'
      '    M = CAST(EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) AS INTEGER);'
      '    '
      '    NEW.HORA_ASSISTENCIA = '#39#39';'
      ''
      
        '    IF (H < 10) THEN NEW.HORA_ASSISTENCIA = NEW.HORA_ASSISTENCIA' +
        ' || '#39'0'#39';'
      
        '    NEW.HORA_ASSISTENCIA = NEW.HORA_ASSISTENCIA || CAST(H AS VAR' +
        'CHAR(2)) || '#39':'#39';'
      ''
      
        '    IF (M < 10) THEN NEW.HORA_ASSISTENCIA = NEW.HORA_ASSISTENCIA' +
        ' || '#39'0'#39';'
      
        '    NEW.HORA_ASSISTENCIA = NEW.HORA_ASSISTENCIA || CAST(M AS VAR' +
        'CHAR(2));'
      '  END'
      'END')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'AssistenciaGimnas'
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
    Top = 550
  end
  object T_AssistenciaGimnas_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE H INTEGER;'
      '  DECLARE VARIABLE M INTEGER;'
      ''
      'BEGIN'
      ''
      
        '  IF ((NEW.HORA_ASSISTENCIA IS NULL) AND (NEW.C_TIPUSASS <> -1) ' +
        'AND (NEW.C_TIPUSASS <> 13)) THEN'
      '  BEGIN'
      '    H = CAST(EXTRACT(HOUR FROM CURRENT_TIMESTAMP) AS INTEGER);'
      '    M = CAST(EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) AS INTEGER);'
      '    '
      '    NEW.HORA_ASSISTENCIA = '#39#39';'
      ''
      
        '    IF (H < 10) THEN NEW.HORA_ASSISTENCIA = NEW.HORA_ASSISTENCIA' +
        ' || '#39'0'#39';'
      
        '    NEW.HORA_ASSISTENCIA = NEW.HORA_ASSISTENCIA || CAST(H AS VAR' +
        'CHAR(2)) || '#39':'#39';'
      ''
      
        '    IF (M < 10) THEN NEW.HORA_ASSISTENCIA = NEW.HORA_ASSISTENCIA' +
        ' || '#39'0'#39';'
      
        '    NEW.HORA_ASSISTENCIA = NEW.HORA_ASSISTENCIA || CAST(M AS VAR' +
        'CHAR(2));'
      '  END'
      'END')
    Dic1 = AssistenciaGimnas
    Dic1Name = 'AssistenciaGimnas'
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
    Left = 299
    Top = 534
  end
end
