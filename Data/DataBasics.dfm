object wDataBasics: TwDataBasics
  OldCreateOrder = False
  Left = 372
  Top = 217
  Height = 711
  Width = 1261
  object Login: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Login'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      Codi CHAR (5), '
      '      DigCon CHAR (2), '
      '      Nom CHAR (3) ,'
      '      Extra CHAR(10)'
      ')'
      'RETURNS ('
      '      Estat Integer'
      ') '
      '/*'
      '      0,10: OK'
      '      1,11: NO AUTORITZAT'
      '      2,12: CLAU INCORRECTA'
      '      3,13: INHABILITAT'
      '*/'
      'AS'
      '      DECLARE VARIABLE TROVATS INTEGER;'
      '      DECLARE VARIABLE INHABILITAT DATE;'
      '      DECLARE VARIABLE BAIXA CHAR;'
      '      DECLARE VARIABLE ESEXTRA CHAR(1);'
      ''
      'BEGIN'
      '      ESTAT = 0;'
      '      TROVATS = NULL;'
      ''
      '      SELECT ESUSEREXTRA'
      '      FROM METGES'
      '      WHERE CODI = :CODI'
      '      INTO :ESEXTRA;'
      ''
      '      IF (ESEXTRA="S") THEN '
      '      BEGIN      '
      '            IF (EXTRA IS NULL) '
      '            THEN ESTAT=20;'
      '            ELSE BEGIN'
      ''
      '                  ESTAT = 10;'
      '                  TROVATS = NULL;'
      ''
      '                  SELECT 1, HINHABILITAT'
      '                  FROM METGEEXTRA'
      '                  WHERE CODI = :CODI'
      '                  AND   C_EXTRA = :EXTRA'
      '                  AND (:DIGCON IS NULL OR DIGCON = :DIGCON)'
      '                  AND (:NOM IS NULL OR NOM = :NOM)'
      '                  AND (BAIXA IS NULL OR BAIXA <>"B")'
      '                  INTO :TROVATS, :INHABILITAT;'
      ''
      '                  IF (TROVATS IS NULL)'
      '                  THEN BEGIN'
      '                        IF ((DIGCON IS NULL) AND (NOM IS NULL))'
      '                        THEN ESTAT = 11;'
      '                        ELSE ESTAT = 12;'
      '                  END'
      
        '                  ELSE IF (NOT(INHABILITAT IS NULL)) THEN ESTAT ' +
        '= 13;'
      ''
      '            END'
      '      END'
      '      ELSE BEGIN'
      ''
      '            SELECT 1, HINHABILITAT'
      '            FROM METGES'
      '            WHERE CODI = :CODI'
      '            AND (:DIGCON IS NULL OR DIGCON = :DIGCON)'
      '            AND (:NOM IS NULL OR NOM = :NOM)'
      '            AND (BAIXA IS NULL OR BAIXA <>"B")'
      '            INTO :TROVATS, :INHABILITAT;'
      ''
      '            IF (TROVATS IS NULL)'
      '            THEN BEGIN'
      '                  IF ((DIGCON IS NULL) AND (NOM IS NULL))'
      '                  THEN ESTAT = 1;'
      '                  ELSE ESTAT = 2;'
      '            END'
      '            ELSE IF (NOT(INHABILITAT IS NULL)) THEN ESTAT = 3;'
      '      END'
      ''
      ''
      ''
      ''
      ''
      '      SUSPEND;'
      'END'
      ''
      ''
      ''
      ' '
      ' '
      ' ')
    Select.Strings = (
      'SELECT * FROM P_METGES_LOGIN("UBN","BO","LIS",NULL)')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    ModiFecha = 37076.7607777431
    Left = 141
    Top = 243
  end
  object Grups: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Grup'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Color'
        NombreDB = 'Color'
        Longitud = 10
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'TipusECB'
        NombreDB = 'TipusECB'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tipusecb'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 
          'indica a quins ECB ha de sortir (0 TOTS, 2 TIR, 5 EASE, 3 altres' +
          ')'
      end>
    Indices = <
      item
        Nombre = 'Grup'
        NombreDB = 'Grup'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'di Grup')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipusecb'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'TipusECB')
        CopiarOrigen.Strings = (
          'TipusECB')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'TIPUSECB.VISUALITZA'#39
      end>
    Nombre = 'Grups Metges'
    NombreTabla = 'Grups'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di Grup'
      'Descripci'#243)
    IndiceVer = 'Grup'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945039815
    Left = 29
    Top = 307
  end
  object Especial: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Especialitat'
        NombreDB = 'C_Especial'
        Longitud = 2
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'N_Especial'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus Inteconsulta'
        NombreDB = 'C_Tipus'
        Longitud = 10
        Consulta = 'Tipus'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'INTERCON'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Area'
        NombreDB = 'C_Area'
        Longitud = 3
        Consulta = 'Areas'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '***'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus intercon 2'
        NombreDB = 'C_Tipus2'
        Longitud = 10
        Consulta = 'Tipus2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus intercon 3'
        NombreDB = 'C_Tipus3'
        Longitud = 10
        Consulta = 'Tipus3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi SCS'
        NombreDB = 'CodiSCS'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Servei assistencial hospitalari (CMBD)'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RespondreAltresEspe'
        NombreDB = 'RespondreAltresEspe'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Responsable'
        NombreDB = 'Responsable'
        Longitud = 5
        Consulta = 'Resp'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Dret Especialitat Contesta'
        NombreDB = 'dretespe'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'indica quin dret E** pot contestar interconsultes d'#39'aquesta espe' +
          'cialitat'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Dret Metge Contesta'
        NombreDB = 'dretmetge'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'indica quin dret M** pot contestar interconsultes d'#39'aquesta espe' +
          'cialitat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = #39'N'#39': actiu; '#39'B'#39': baixa.'
        ValidChars = 'NBX'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi SIRE'
        NombreDB = 'CodiSIRE'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Especialitat SIRE/eCAP'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi servei HC3'
        NombreDB = 'C_SERVEI_HC3'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Servei assistencial hospitalari HC3 '
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipologia SCS'
        NombreDB = 'TipSCS'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Tipologia professional SCS'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Posici'#243' ICD freq'#252'ent'
        NombreDB = 'ICDFreq'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        Consulta = 'freq'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Posici'#243' al camp c_freq'#252'ent de CodisICD'
      end
      item
        Aplica = kcMODELS
        Nombre = 'D'#237'git N'#250'm. Col. SCS'
        NombreDB = 'Digit_NC_SCS'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'd'#237'git inicial del n'#250'mero de col'#183'legiat llarg'
      end>
    Indices = <
      item
        Nombre = 'Especial'
        NombreDB = 'Especial'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Especialitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'TipusInterCon'
        NombreDB = 'TipusInterCon'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipus Inteconsulta')
        Tipo = tiForaneo
        ForaneoDic = wDataIntercon.IC_Tipus
        ForaneoCampos.Strings = (
          'Tipus')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Area'
        NombreDB = 'Area'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Area')
        Tipo = tiForaneo
        ForaneoDic = Areas
        ForaneoCampos.Strings = (
          'C'#243'di Area')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Desc'
        NombreDB = 'Desc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Descripci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Tipus'
        Master = wDataIntercon.IC_Tipus
        BuscaOrigen.Strings = (
          'Tipus Inteconsulta')
        CopiarOrigen.Strings = (
          'Tipus Inteconsulta')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end
      item
        Nombre = 'Areas'
        Master = Areas
        BuscaOrigen.Strings = (
          'Area')
        CopiarOrigen.Strings = (
          'Area')
        CopiarMaster.Strings = (
          'C'#243'di Area')
        BuscaMaster.Strings = (
          'C'#243'di Area')
      end
      item
        Nombre = 'Tipus2'
        Master = wDataIntercon.IC_Tipus
        BuscaOrigen.Strings = (
          'Tipus intercon 2')
        CopiarOrigen.Strings = (
          'Tipus intercon 2')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end
      item
        Nombre = 'Tipus3'
        Master = wDataIntercon.IC_Tipus
        BuscaOrigen.Strings = (
          'Tipus intercon 3')
        CopiarOrigen.Strings = (
          'Tipus intercon 3')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end
      item
        Nombre = 'Resp'
        Master = Metges
        BuscaOrigen.Strings = (
          'Responsable')
        CopiarOrigen.Strings = (
          'Responsable')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'freq'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Posici'#243' ICD freq'#252'ent')
        CopiarOrigen.Strings = (
          'Posici'#243' ICD freq'#252'ent')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'CODIICD.FREQUENT'#39
      end>
    Nombre = 'Especialitats'
    NombreTabla = 'Especial'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Especialitat'
      'Descripci'#243
      'Tipus Inteconsulta'
      'D'#237'git N'#250'm. Col. SCS')
    IndiceVer = 'Especial'
    Navegar = False
    Nivel = 3
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945505787
    Left = 29
    Top = 363
  end
  object Titulacions: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Unitat'
        NombreDB = 'C_Unitat'
        Longitud = 3
        Consulta = 'Unitat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        AutoContador.Tipo = tcGenerator
        AutoContador.Generator = 'CONTAUNITAT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Titolaci'#243
        NombreDB = 'Titol'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Per signar l'#39'informe'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Titulaci'#243'n'
        NombreDB = 'Titulo'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Per signar l'#39'informe'
      end>
    Indices = <
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'dig Usuari'
          'C'#243'di Unitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Metge'
        NombreDB = 'Metge'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'dig Usuari')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Unitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C'#243'di Unitat')
        CopiarOrigen.Strings = (
          'C'#243'di Unitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "UNITATS"'
      end>
    Nombre = 'Titulacions Metges'
    NombreTabla = 'Titulacions'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'dig Usuari'
      'C'#243'di Unitat'
      'Titolaci'#243
      'Titulaci'#243'n')
    IndiceVer = 'Usuari'
    Navegar = False
    Nivel = 7
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945752662
    Left = 535
    Top = 243
  end
  object Prestacion: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Prestacio'
        NombreDB = 'C_Prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'N_Prestacio'
        Longitud = 35
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243' 2'
        NombreDB = 'N_Prestacio2'
        Longitud = 35
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resum'
        NombreDB = 'Resum'
        Longitud = 8
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Facturar'
        NombreDB = 'Facturar'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 2
        Consulta = 'TipusPresta'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = '1.Hostpialitzacio, 2.Consulta Externa, 3.Ambulatori, 4.Varis'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi Facturacio'
        NombreDB = 'CodiFacturacio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DescripcioSCS'
        NombreDB = 'DescripcioSCS'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'EsEase'
        NombreDB = 'EsEase'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Planta'
        NombreDB = 'Planta'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'per les prestacions q no tenen planta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Subgrup'
        NombreDB = 'Subgrup'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Per la facturaci'#243' SCS: '#39'0'#39' com 1004; '#39'1'#39' com '#39'2004'#39
      end
      item
        Aplica = kcCodigo
        Nombre = 'No SCS'
        NombreDB = 'NoSCS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = #39'N'#39': s'#237' es pot facturar a SCS; '#39'S'#39':no es pot facturar a SCS'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi concepte Tesis'
        NombreDB = 'C_CONCEPTE_TESIS'
        Longitud = 8
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi prestaci'#243' mare'
        NombreDB = 'C_Prestacio_Mare'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          'Nom'#233's ple per les prestacions que tenen mare (visites successive' +
          's)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'Grup'
        Longitud = 2
        Consulta = 'GrupPresta'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cl'#237'nica BCN'
        NombreDB = 'Clinica'
        Longitud = 2
        Consulta = 'clinica'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre'
        NombreDB = 'Centre'
        Longitud = 1
        zType = tcIB_Char
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
          'C'#243'di Prestacio')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'esease'
        NombreDB = 'esease'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'EsEase')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'centre'
        NombreDB = 'centre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Centre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'TipusPresta'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TipusCodi = "TIPUSPRESTA"'
      end
      item
        Nombre = 'GrupPresta'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Grup')
        CopiarOrigen.Strings = (
          'Grup')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'PRESTACIO.GRUP'#39
      end
      item
        Nombre = 'Clinica'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Cl'#237'nica BCN')
        CopiarOrigen.Strings = (
          'Cl'#237'nica BCN')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'BCN.CLINICA'#39
      end
      item
        Nombre = 'centre'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Centre')
        CopiarOrigen.Strings = (
          'Centre')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'PRESTA.CENTRE'#39
      end>
    Nombre = 'Prestaci'#243
    NombreTabla = 'Prestacion'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di Prestacio'
      'Descripci'#243
      'Descripci'#243' 2'
      'Resum'
      'Tipus'
      'EsEase'
      'No SCS'
      'Grup'
      'Centre')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945050231
    Left = 29
    Top = 428
  end
  object Filiacio_Resum: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Hist'#242'ria'
        NombreDB = 'NUM_HIST'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTANUMHIST'
        Comentario = 'Primaria, es integer'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom 1'
        NombreDB = 'APELLIDO1'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom 2'
        NombreDB = 'APELLIDO2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'NOMBRE'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom complet'
        NombreDB = 'NomComplet'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        zBlobSubTipo = 'TEXT'
        Comentario = 'calculat de noms'
        ComputedBy = 
          '( CAST (  F_STRNULL(FILIACIO.APELLIDO1,"*")   || " " ||   F_STRN' +
          'ULL(FILIACIO.APELLIDO2,"*")   || ", " ||   F_STRNULL(FILIACIO.NO' +
          'MBRE,"*")   AS VARCHAR(80) ))'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dni'
        NombreDB = 'DNI'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nomvia'
        NombreDB = 'NOMVIA'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a'
        NombreDB = 'ADRESA'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tel'#233'fon'
        NombreDB = 'TELEFONO'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'email'
        NombreDB = 'email'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Adre'#231'a electr'#243'nica'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipusvia'
        NombreDB = 'TIPUSVIA'
        Longitud = 4
        Consulta = 'TipusVia'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a tipus via'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Postal'
        NombreDB = 'CODIGO'
        Longitud = 5
        Consulta = 'CP'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Codig Postal, consulta a CPostal'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Numero'
        NombreDB = 'NUMERO'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Bloc'
        NombreDB = 'BLOC'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Escala'
        NombreDB = 'ESCALA'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pis'
        NombreDB = 'PIS'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Porta'
        NombreDB = 'PORTA'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Poblaci'#243
        NombreDB = 'POBLACIO'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a poblacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Provincia'
        NombreDB = 'PROVINCIA'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'consulta a provincia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Residencia'
        NombreDB = 'RESIDENCIA'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'es un codi numeric, lligat amb taula provincia, (mirar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pais'
        NombreDB = 'PAIS'
        Longitud = 3
        Consulta = 'Pais'
        zType = tcIB_Varchar
        zNotNull = False
        zDefault = '34'
        Comentario = 'Consulta a pais'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Sexe'
        NombreDB = 'SEXO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'nulable per si no se sap:  D=Dona, H=Home, no cal crear una taul' +
          'a de sexes'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Naix.'
        NombreDB = 'FECHA_NAC'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Lloc Naix.'
        NombreDB = 'LUGAR_NAC'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Civil'
        NombreDB = 'ESTADO_CIV'
        Longitud = 2
        Consulta = 'EstatCivil'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta EstadoCivil'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Edat'
        NombreDB = 'Edat'
        Longitud = 2
        zType = tcIB_Integer
        zNotNull = False
        ComputedBy = 
          '(F_DIFERENCEINYEARS  ( f_datenull(filiacio.mort,"TODAY") ,filiac' +
          'io.fecha_NAc ))'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Soe'
        NombreDB = 'SOE'
        Longitud = 12
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Soe o TSI'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tsi'
        NombreDB = 'TSI'
        Longitud = 14
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Titular'
        NombreDB = 'TITULAR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = '- 0 1 B S T t null, no se que son'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pensionista'
        NombreDB = 'PENSIONIST'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'not null, P=Pensionista, el reste no es pensionista'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Idioma'
        NombreDB = 'IDIOMA'
        Longitud = 2
        Consulta = 'Idioma'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'not null default=0, consulta idioma, 0,1,2 (0=NO HO SABEN)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Telefo1 Fam'
        NombreDB = 'TELEFO1_FAM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripcio1'
        NombreDB = 'DESCRIPCIO1'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Telefo2 Fam'
        NombreDB = 'TELEFO2_FAM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripcio2'
        NombreDB = 'DESCRIPCIO2'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Amic'
        NombreDB = 'AMIC'
        Longitud = 8
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = False
        Comentario = 'consulta i fk amb amics, esta ara en dbf, pasar a ib'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Defunci'#243
        NombreDB = 'MORT'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Data defuncio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EsViu'
        NombreDB = 'EsViu'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usra'
        NombreDB = 'USRA'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        Consulta = 'Parent'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'N'#186' USRA, foranea i consulta amb taula parent'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat'
        NombreDB = 'UNITAT'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        Consulta = 'Unitat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta i fk amb taula unitats, not null, 0=no assignat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Bloqueig'
        NombreDB = 'Bloqueig'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'historia bloqueixada, es vip, en curs clinic'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Objectius'
        NombreDB = 'Objectius'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'n'#186' de objectius que se li han fet, 0, 1 o mes'
      end
      item
        Aplica = kcFecha
        Nombre = '1'#186' Contacte'
        NombreDB = 'Data_Contacte'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'l'#39'omple el triger de tractaments'
      end
      item
        Aplica = kcFecha
        Nombre = 'Ultim Contacte'
        NombreDB = 'Data_UltimContacte'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'l'#39'omple el triger de tractaments'
      end
      item
        Aplica = kcFecha
        Nombre = 'Ultima1'
        NombreDB = 'Ultima1'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'computed per fer pirula a exe historials de desicom'
        ComputedBy = '(filiacio.data_ultimcontacte)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Dieta'
        NombreDB = 'C_Dieta'
        Longitud = 2
        Consulta = 'Dieta'
        zType = tcIB_Smallint
        zNotNull = False
        zDefault = '-1'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions Dieta'
        NombreDB = 'Obs_Dieta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Consentiment Informat'
        NombreDB = 'ConsentimentInf'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat m'#232'dica'
        NombreDB = 'c_Unitatmedica'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        Consulta = 'UnitatM'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'UM antiga'
        NombreDB = 'UM_antiga'
        Longitud = 3
        Consulta = 'UMantiga'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hospital primera atenci'#243
        NombreDB = 'C_HOSPITAL'
        Longitud = 8
        Consulta = 'Hospital'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Consentiment'
        NombreDB = 'Consentiment'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'consentiment informat signat'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Tipus de document'
        NombreDB = 'T_DOC'
        Longitud = 1
        Consulta = 'TipusDoc'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell de cobertura RCA'
        NombreDB = 'Nivell_cobertura'
        Longitud = 3
        Consulta = 'cobertura'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N'#250'm. del Servicio Nacional de Salud'
        NombreDB = 'SNS'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pais naixement'
        NombreDB = 'PAIS_NAIX'
        Longitud = 3
        Consulta = 'PaisNaix'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comunitat aut'#242'noma'
        NombreDB = 'CCAA'
        Longitud = 15
        Consulta = 'CCAA'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Comunitat aut'#242'noma de la tarjeta sanit'#224'ria'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pais document'
        NombreDB = 'PAIS_DOC'
        Longitud = 3
        Consulta = 'PaisDoc'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Rebre REVISTA'
        NombreDB = 'REVISTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'OBSOLET (ara CORRESPONDENCIA)'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Comunicar LLIT a visites'
        NombreDB = 'Autoritza_llit'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Rebre SMS'
        NombreDB = 'SMS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Rebre correspond'#232'ncia'
        NombreDB = 'CORRESPONDENCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Autoritza ENQUESTES'
        NombreDB = 'Autoritza_enquestes'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Autoritza PROJECTES INVESTIGACI'#211
        NombreDB = 'Autoritza_investigacio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Cognoms'
        NombreDB = 'Apellidos'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Cognom 1'
          'Cognom 2'
          'Nom')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Bloqueig'
        NombreDB = 'Bloqueig'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria'
          'Bloqueig')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'TipusVia'
        Master = wDataCodis.CodiVia
        BuscaOrigen.Strings = (
          'Tipusvia')
        CopiarOrigen.Strings = (
          'Tipusvia')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'Pais'
        Master = wDataCodis.Pais
        BuscaOrigen.Strings = (
          'Pais')
        CopiarOrigen.Strings = (
          'Pais')
        CopiarMaster.Strings = (
          'Codi Pa'#237's')
        BuscaMaster.Strings = (
          'Codi Pa'#237's')
      end
      item
        Nombre = 'EstatCivil'
        Master = wDataCodis.EstatCivil
        BuscaOrigen.Strings = (
          'Estat Civil')
        CopiarOrigen.Strings = (
          'Estat Civil')
        CopiarMaster.Strings = (
          'Estat Civil')
        BuscaMaster.Strings = (
          'Estat Civil')
      end
      item
        Nombre = 'Idioma'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Idioma')
        CopiarOrigen.Strings = (
          'Idioma')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "IDIOMA"'
      end
      item
        Nombre = 'Parent'
        Master = Parent
        BuscaOrigen.Strings = (
          'Usra')
        CopiarOrigen.Strings = (
          'Usra')
        CopiarMaster.Strings = (
          'Numpar')
        BuscaMaster.Strings = (
          'Numpar')
      end
      item
        Nombre = 'Unitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Unitat')
        CopiarOrigen.Strings = (
          'Unitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "UNITATS"'
        ValidateValue = True
      end
      item
        Nombre = 'CP'
        Master = wDataCodis.Poblacio
        BuscaOrigen.Strings = (
          'Codi Postal')
        CopiarOrigen.Strings = (
          'Codi Postal'
          'Provincia'
          'Poblaci'#243
          'Residencia')
        CopiarMaster.Strings = (
          'Codi Postal'
          'Prov'#237'ncia'
          'Poblaci'#243
          'N'#186' Residencia')
        BuscaMaster.Strings = (
          'Codi Postal')
      end
      item
        Nombre = 'poblacio'
        Master = wDataCodis.Poblacio
        BuscaOrigen.Strings = (
          'Poblaci'#243)
        CopiarOrigen.Strings = (
          'Poblaci'#243
          'Provincia'
          'Codi Postal'
          'Residencia')
        CopiarMaster.Strings = (
          'Poblaci'#243
          'Prov'#237'ncia'
          'Codi Postal'
          'N'#186' Residencia')
        BuscaMaster.Strings = (
          'Poblaci'#243)
        ValidateValue = True
      end
      item
        Nombre = 'Provincia'
        Master = wDataCodis.Provincia
        BuscaOrigen.Strings = (
          'Provincia')
        CopiarOrigen.Strings = (
          'Provincia')
        CopiarMaster.Strings = (
          'Prov'#237'ncia')
        BuscaMaster.Strings = (
          'Prov'#237'ncia')
        ValidateValue = True
      end
      item
        Nombre = 'Dieta'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codi Dieta')
        CopiarOrigen.Strings = (
          'Codi Dieta'
          'Observacions Dieta')
        CopiarMaster.Strings = (
          'C'#243'di'
          'Descripci'#243)
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DIETES"'
        ValidateValue = True
      end
      item
        Nombre = 'UnitatM'
        Master = wDataCodis.UnitatM
        BuscaOrigen.Strings = (
          'Unitat m'#232'dica')
        CopiarOrigen.Strings = (
          'Unitat m'#232'dica')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'UMantiga'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'UM antiga')
        CopiarOrigen.Strings = (
          'UM antiga')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'tipuscodi ='#39'UM_ANTIGA'#39
      end
      item
        Nombre = 'Hospital'
        Master = wDataCodis.Hospital
        BuscaOrigen.Strings = (
          'Hospital primera atenci'#243)
        CopiarOrigen.Strings = (
          'Hospital primera atenci'#243)
        CopiarMaster.Strings = (
          'N'#186' Hospital')
        BuscaMaster.Strings = (
          'N'#186' Hospital')
      end
      item
        Nombre = 'TipusDoc'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Tipus de document')
        CopiarOrigen.Strings = (
          'Tipus de document')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'tipuscodi = '#39'TIPUSDOCUMENT'#39
      end
      item
        Nombre = 'PaisNaix'
        Master = wDataCodis.Pais
        BuscaOrigen.Strings = (
          'Pais naixement')
        CopiarOrigen.Strings = (
          'Pais naixement')
        CopiarMaster.Strings = (
          'Codi Pa'#237's')
        BuscaMaster.Strings = (
          'Codi Pa'#237's')
      end
      item
        Nombre = 'CCAA'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Comunitat aut'#242'noma')
        CopiarOrigen.Strings = (
          'Comunitat aut'#242'noma')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'CCAA'#39
      end
      item
        Nombre = 'cobertura'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Nivell de cobertura RCA')
        CopiarOrigen.Strings = (
          'Nivell de cobertura RCA')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'COBERTURA.RCA'#39
      end
      item
        Nombre = 'PaisDoc'
        Master = wDataCodis.Pais
        BuscaOrigen.Strings = (
          'Pais document')
        CopiarOrigen.Strings = (
          'Pais document')
        CopiarMaster.Strings = (
          'Codi Pa'#237's')
        BuscaMaster.Strings = (
          'Codi Pa'#237's')
      end>
    Nombre = 'Filiacio Resum'
    NombreTabla = 'FILIACIO'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist'#242'ria'
      'Nom complet'
      'Edat'
      'Unitat'
      'Unitat m'#232'dica'
      'N'#250'm. del Servicio Nacional de Salud'
      'Pais naixement')
    IndiceVer = 'Historia'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 37201.7155799769
    Left = 406
    Top = 12
  end
  object FiliFac: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Fac'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_HISTORIA INTEGER'
      ')'
      'RETURNS ('
      '  C_CentreFac VARCHAR (2),'
      '  C_Client    VARCHAR (3),'
      '  C_Delegacio VARCHAR (4),'
      '  N_CentreFac VARCHAR (20),'
      '  N_Client    VARCHAR (40),'
      '  N_Delegacio VARCHAR (50),'
      '  Metge_Mutua VARCHAR (40),'
      '  Telf_Metge_Mutua VARCHAR(10))'
      'AS'
      'BEGIN'
      
        '      /* ABRIL 2018: acordem amb Elena Araujo (parte 3067 GLPI) ' +
        'fer el seg'#252'ent: mostrar el finan'#231'ador del tractament actiu. Si n' +
        #39'hi ha m'#233's d'#39'un actiu alhora, mostrar el de l'#39#250'ltim per data d'#39'i' +
        'ngr'#233's.'
      
        '                     Si no n'#39'hi ha cap, mostrar la de l'#39#250'ltim pe' +
        'r data d'#39'alta.'
      ''
      ''
      
        '      /* Busquem les dades de facturaci'#243' de l'#39#250'ltim tractament d' +
        'e prestacions NO PRIVADES *'
      
        '      FOR SELECT T.C_CENTREFAC, T.C_CLIENT, T.C_DELEGACIO, T.MET' +
        'GE_MUTUA, T.TELF_METGE_MUTUA'
      '          FROM   TRACTAMENTS T'
      '          JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '          WHERE  T.C_HISTORIA = :E_HISTORIA'
      '          AND    P.NOSCS = "N"'
      '          AND    T.C_ESTATFAC <> 50'
      '          ORDER  BY T.DATA_INGRES DESC'
      
        '          INTO  :C_CENTREFAC, :C_CLIENT, :C_DELEGACIO, :METGE_MU' +
        'TUA, :TELF_METGE_MUTUA'
      '      DO BEGIN'
      ''
      '            SELECT N_CENTREFAC'
      '            FROM   CENTREFAC'
      '            WHERE  C_CENTREFAC = :C_CENTREFAC'
      '            INTO  :N_CENTREFAC;'
      ''
      '            SELECT N_CLIENT'
      '            FROM   CLIENTS'
      '            WHERE  C_CENTREFAC = :C_CENTREFAC'
      '            AND    C_CLIENT = :C_CLIENT'
      '            INTO  :N_CLIENT;'
      ''
      '            SELECT N_DELEGACIO'
      '            FROM   DELEGACIONS'
      '            WHERE  C_CENTREFAC = :C_CENTREFAC'
      '            AND    C_CLIENT = :C_CLIENT'
      '            AND    C_DELEGACIO = :C_DELEGACIO'
      '            INTO  :N_DELEGACIO;'
      ''
      ''
      '            SUSPEND;'
      ''
      '            EXIT;'
      '      END'
      '      */'
      ''
      '      C_CENTREFAC=NULL;'
      '      '
      
        '      SELECT T.C_CENTREFAC, T.C_CLIENT, T.C_DELEGACIO, T.METGE_M' +
        'UTUA, T.TELF_METGE_MUTUA'
      '      FROM   TRACTAMENTS T'
      '      JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '      WHERE  T.C_HISTORIA = :E_HISTORIA'
      '      AND    P.NOSCS = "N"'
      '      AND    T.C_ESTATFAC <> 50 AND T.C_ESTATFAC <> 55'
      '      AND    (T.DATA_ALTA IS NULL OR T.DATA_ALTA>="TODAY")'
      '      ORDER  BY T.DATA_INGRES DESC'
      '      ROWS 1'
      
        '      INTO  :C_CENTREFAC, :C_CLIENT, :C_DELEGACIO, :METGE_MUTUA,' +
        ' :TELF_METGE_MUTUA;'
      '      '
      '      IF (C_CENTREFAC IS NULL) THEN'
      '      BEGIN'
      
        '          SELECT T.C_CENTREFAC, T.C_CLIENT, T.C_DELEGACIO, T.MET' +
        'GE_MUTUA, T.TELF_METGE_MUTUA'
      '          FROM   TRACTAMENTS T'
      '          JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '          WHERE  T.C_HISTORIA = :E_HISTORIA'
      '          AND    P.NOSCS = "N"'
      '          AND    T.C_ESTATFAC <> 50 AND T.C_ESTATFAC <> 55'
      
        '          AND    (T.DATA_ALTA IS NOT NULL AND T.DATA_ALTA<"TODAY' +
        '")'
      '          ORDER  BY T.DATA_ALTA DESC'
      '          ROWS 1'
      
        '          INTO  :C_CENTREFAC, :C_CLIENT, :C_DELEGACIO, :METGE_MU' +
        'TUA, :TELF_METGE_MUTUA;'
      '      END;'
      '      '
      '      IF (C_CENTREFAC IS NOT NULL) THEN'
      '      BEGIN'
      '          SELECT N_CENTREFAC'
      '          FROM   CENTREFAC'
      '          WHERE  C_CENTREFAC = :C_CENTREFAC'
      '          INTO  :N_CENTREFAC;'
      ''
      '          SELECT N_CLIENT'
      '          FROM   CLIENTS'
      '          WHERE  C_CENTREFAC = :C_CENTREFAC'
      '          AND    C_CLIENT = :C_CLIENT'
      '          INTO  :N_CLIENT;'
      ''
      '          SELECT N_DELEGACIO'
      '          FROM   DELEGACIONS'
      '          WHERE  C_CENTREFAC = :C_CENTREFAC'
      '          AND    C_CLIENT = :C_CLIENT'
      '          AND    C_DELEGACIO = :C_DELEGACIO'
      '          INTO  :N_DELEGACIO;'
      ''
      '          SUSPEND;'
      '      END;'
      ''
      'END'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Select.Strings = (
      ''
      'SELECT *  FROM P_FILIACIO_FAC (5566)'
      '/*'
      ''
      'SELECT DISTINCT(C_CENTREFAC)'
      'FROM TRACTAMENTS WHERE C_HISTORIA = 5566'
      ''
      '*/')
    Dic1 = Filiacio
    Dic1Name = 'Filiacio'
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
    ModiFecha = 37110.5738980093
    Left = 464
    Top = 64
  end
  object Parent: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Numpar'
        NombreDB = 'NUMPAR'
        Longitud = 4
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Num Hist'
        NombreDB = 'NUM_HIST'
        Longitud = 4
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'NOM'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = '1'#186' Cognom'
        NombreDB = 'COGNOM1'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = '2'#186' Cognom'
        NombreDB = 'COGNOM2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Adreca'
        NombreDB = 'ADRECA'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'CODI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Poblacio'
        NombreDB = 'POBLACIO'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Provincia'
        NombreDB = 'PROVINCIA'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Telefon'
        NombreDB = 'TELEFON'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Datanac'
        NombreDB = 'DATANAC'
        Longitud = 8
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Parent'
        NombreDB = 'Parent'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Numpar')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Histo'
        NombreDB = 'Histo'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Num Hist')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Parent'
    NombreTabla = 'PARENT'
    Organiza = tbBase
    CamposVer.Strings = (
      'Numpar'
      'Num Hist'
      'Nom'
      '1'#186' Cognom'
      '2'#186' Cognom')
    IndiceVer = 'Parent'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945062963
    Left = 156
    Top = 177
  end
  object Areas: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Area'
        NombreDB = 'C_Area'
        Longitud = 3
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Area'
        NombreDB = 'N_Area'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Objectiu'
        NombreDB = 'Objectiu'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 5
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = #192'rea escales'
        NombreDB = 'E_Area'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Area'
        NombreDB = 'Area'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'di Area')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Areas de especialitats'
    NombreTabla = 'Areas'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di Area'
      'Area'
      'Objectiu'
      'Ordre'
      #192'rea escales')
    IndiceVer = 'Area'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.494506875
    Left = 152
    Top = 307
  end
  object Tractaments: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,###;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTATRACTAMENT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Historia'
        NombreDB = 'C_Historia'
        Longitud = 5
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Prestacio'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243' Origen'
        NombreDB = 'C_PrestacioOrigen'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Prestacio original que s'#39'ha creat per si es canvia 2001,2002'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora'
        NombreDB = 'Hora'
        Longitud = 5
        MaskDisplay = 'hh":"mm'
        MaskEdit = '!99:99;1; '
        zType = tcIB_Char
        zNotNull = True
        zDefault = '00:00'
        Comentario = '??'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        Consulta = 'Coordinador'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data PreAlta'
        NombreDB = 'Data_PreAlta'
        Longitud = 11
        MaskDisplay = 'dd"/"mm"/"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge PreAlta'
        NombreDB = 'C_MetgePreAlta'
        Longitud = 5
        Consulta = 'MetgePreAlta'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Alta'
        NombreDB = 'Data_Alta'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora alta'
        NombreDB = 'Hora_Alta'
        Longitud = 5
        MaskDisplay = 'hh:mm'
        MaskEdit = '!99:99;1; '
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge Alta'
        NombreDB = 'C_MetgeAlta'
        Longitud = 5
        Consulta = 'MetgeAlta'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Durada'
        NombreDB = 'Durada'
        Longitud = 4
        zType = tcIB_Double
        zNotNull = False
        Comentario = 'Dias de durada'
        ComputedBy = 
          '(( f_datenull(tractaments.data_alta,"TODAY")-tractaments.data_in' +
          'gres)+1)'
      end
      item
        Aplica = kcMemo
        Nombre = 'Comentari Admisions'
        NombreDB = 'Comentari'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu'
        NombreDB = 'C_Motiu'
        Longitud = 3
        Consulta = 'Motiu'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Motiu, es copia de llista de espera al filiar'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Procedencia/Origen'
        NombreDB = 'C_Origen'
        Longitud = 3
        Consulta = 'Origen'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Procedencia u origen (al filiar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hospital'
        NombreDB = 'C_HospitalOrigen'
        Longitud = 3
        Consulta = 'HtalOrigen'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '-1'
        Comentario = 'Hospital de origen, al filiar'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Car'#224'cter'
        NombreDB = 'C_Caracter'
        Longitud = 3
        Consulta = 'Caracter'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Caracter o tipus_ingres (al filiar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Solicitud / Causa'
        NombreDB = 'C_Solicitud'
        Longitud = 3
        Consulta = 'Solicitud'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '1'
        Comentario = 'Solicitud o causa (al filiar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Llit'
        NombreDB = 'C_LLit'
        Longitud = 3
        Consulta = 'Llit'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'llit (al filiar o modificar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Planta'
        NombreDB = 'C_Planta'
        Longitud = 15
        Consulta = 'Planta'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'planta o unitat infermeria (al filiar o modificar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Destinacio'
        NombreDB = 'C_Destinacio'
        Longitud = 3
        Consulta = 'Destinacio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Destinacio al donar d'#39'alta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hospital Desti'
        NombreDB = 'C_HospitalDesti'
        Longitud = 3
        Consulta = 'HtalDestinacio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '-1'
        Comentario = 'Hospital desti'
      end
      item
        Aplica = kcMemo
        Nombre = 'Informe Alta'
        NombreDB = 'InformeAlta'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
        Comentario = 'Texte informe d'#39'alta'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat informe alta'
        NombreDB = 'EstatInformeAlta'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'Per informes de alta en curs clinic (hi ha trigger)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comentari Mege'
        NombreDB = 'ComentariMetge'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'A la prealta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comentari Infermeria'
        NombreDB = 'ComentariInfermeria'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'A la prealta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codificaci'#243' Entrada'
        NombreDB = 'Entrada'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codificacio Entrada pel SCS'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codificaci'#243' Sortida'
        NombreDB = 'Sortida'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codificacio Sortida pel SCS'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia'
        NombreDB = 'C_Frequencia'
        Longitud = 7
        Consulta = 'Frequencia'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Gimnas'
      end
      item
        Aplica = kcFecha
        Nombre = 'Dia Fixe'
        NombreDB = 'DiaFixe'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Gimnas'
      end
      item
        Aplica = kcMODELS
        Nombre = 'FisioTerapeuta'
        NombreDB = 'C_FisioTerapeuta'
        Longitud = 5
        Consulta = 'Fisioterapeuta'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge Fisio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Terapeuta'
        NombreDB = 'C_Terapeuta'
        Longitud = 5
        Consulta = 'Terapeuta'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge Terapeuta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Cas'
        NombreDB = 'C_Cas'
        Longitud = 3
        Consulta = 'NumCas'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Consulta Taula CodiCas'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Complicacions'
        NombreDB = 'Complicacions'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codis concatenats'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Proces origen'
        NombreDB = 'C_ProcesOrigen'
        Longitud = 3
        Consulta = 'ProcesOrigen'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Consulta CodiProcesOrigen'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Graus Frankel'
        NombreDB = 'Frankel'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Graus Frankel'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi E'
        NombreDB = 'C_Codi_E'
        Longitud = 6
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9 Codi E'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal E '
        NombreDB = 'N_Codi_E'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9 Literal Codi E'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Diag.Neuro.Ingr'#233's'
        NombreDB = 'C_DiagnosticNeurologicIngres'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal Diag.Neuro.Ingr'#233's'
        NombreDB = 'N_DiagnosticNeurologicIngres'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Diag.Principal Ingr'#233's'
        NombreDB = 'C_DiagnosticIngres'
        Longitud = 15
        Consulta = 'IcdIngresC'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Subcodi Diag. principal ingr'#233's'
        NombreDB = 'G_DiagnosticIngres'
        Longitud = 15
        Consulta = 'IcdIngres'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal Diag.Principal Ingr'#233's'
        NombreDB = 'N_DiagnosticIngres'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Diag.Neuro.Alta'
        NombreDB = 'C_DiagnosticNeurologicAlta'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal Diag.Neuro.Alta'
        NombreDB = 'N_DiagnosticNeurologicAlta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Diag.Principal Alta'
        NombreDB = 'C_DiagnosticAlta'
        Longitud = 15
        Consulta = 'IcdAltaC'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Subcodi Diag. principal alta'
        NombreDB = 'G_DiagnosticAlta'
        Longitud = 15
        Consulta = 'IcdAlta'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal Diag.Principal Alta'
        NombreDB = 'N_DiagnosticAlta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comodin'
        NombreDB = 'Comodin'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Vegada'
        NombreDB = 'Vegada'
        Longitud = 3
        Consulta = 'vegada'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Per codificar els ambulatoris'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Centre'
        NombreDB = 'C_CentreFac'
        Longitud = 2
        Consulta = 'Centre'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Client'
        NombreDB = 'C_Client'
        Longitud = 3
        Consulta = 'Client'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Delegaci'#243
        NombreDB = 'C_Delegacio'
        Longitud = 4
        Consulta = 'Delegacio'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Caduca Perm'#237's'
        NombreDB = 'CaducaPermis'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumPorcentaje
        Nombre = '% Pacient'
        NombreDB = 'PercentatgePacient'
        Longitud = 5
        MaskDisplay = '#,##0.###" %";; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Refer'#232'ncia'
        NombreDB = 'Referencia'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Responsable Infermeria'
        NombreDB = 'C_Infermeria'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Responsable Auxiliar  Cl'#237'nica'
        NombreDB = 'C_Auxiliar'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Responsable Psicologia'
        NombreDB = 'C_Psicoleg'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Responsable Trevall Social'
        NombreDB = 'C_TrevallSocial'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Es un provisional'
        NombreDB = 'EsProvisional'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = '1 s'#237
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge Passi'
        NombreDB = 'C_MetgePassi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge que li ha donat el pasi o que li ha denegat el passi'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Infermera Passi'
        NombreDB = 'C_InfermeraPassi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Infermera que ha donat el passi al pacient'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Pot Fer Passis'
        NombreDB = 'Passi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'S= pot fer passi, N= No pot fer passi'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ambul'#224'ncia'
        NombreDB = 'Ambulancia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Facturaci'#243
        NombreDB = 'C_EstatFac'
        Longitud = 10
        Consulta = 'EstatFac'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Espera Programada'
        NombreDB = 'C_EsperaProgramada'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Id de la espera programada en la prealta, estat=10'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Stock'
        NombreDB = 'C_Stock'
        Longitud = 3
        Consulta = 'stock'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'confirmstock'
        NombreDB = 'confirmstock'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Nota de C'#224'rrec per que no peti res antic'
        NombreDB = 'NotaCarrec'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nota de C'#224'rre'
        NombreDB = 'NovaNotaCarrec'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Equip assistencial'
        NombreDB = 'C_EquipAssist'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Responsable Logopeda'
        NombreDB = 'c_logopeda'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge Informe d'#39'Alta'
        NombreDB = 'C_Metge_InfAlta'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi de Proc'#233's'
        NombreDB = 'C_Proces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Fi de proc'#233's'
        NombreDB = 'Fi_Proces'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge proc'#233's'
        NombreDB = 'Metge_Proces'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E2'
        NombreDB = 'C_Codi_E2'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Starting with "E"'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal E2'
        NombreDB = 'N_Codi_E2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Starting with "E"'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E3'
        NombreDB = 'C_Codi_E3'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Starting with "E"'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal E3'
        NombreDB = 'N_Codi_E3'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Starting with "E"'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Residencia'
        NombreDB = 'c_Residencia'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Copiat de filiacio'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Sinistre'
        NombreDB = 'Data_Sinistre'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Matricula Vehicle'
        NombreDB = 'Matricula_Vehicle'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'SIFCO'
        NombreDB = 'SIFCO'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'FISS'
        NombreDB = 'FISS'
        Longitud = 14
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E4'
        NombreDB = 'C_Codi_E4'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal E4'
        NombreDB = 'N_Codi_E4'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E5'
        NombreDB = 'C_Codi_E5'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal E5'
        NombreDB = 'N_Codi_E5'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resid'#232'ncia PADES'
        NombreDB = 'N_RESIDENCIA'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Actua PADES'
        NombreDB = 'ACTUA_PADES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hccc id informe alta'
        NombreDB = 'hccc_informe_alta'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E metges'
        NombreDB = 'G_CODI_E'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E2 metges'
        NombreDB = 'G_CODI_E2'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E3 metges'
        NombreDB = 'G_CODI_E3'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E4 metges'
        NombreDB = 'G_CODI_E4'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E5 metges'
        NombreDB = 'G_CODI_E5'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi fisio labo marxa'
        NombreDB = 'c_fisio_labo_marxa'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hccc id informe alta infermeria'
        NombreDB = 'hccc_infalta_infer'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Pes Mig CMG'
        NombreDB = 'PM'
        Longitud = 10
        MaskDisplay = '#,##0.0000;;0.0000'
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Pes Mig DRG'
        NombreDB = 'PMDRG'
        Longitud = 10
        MaskDisplay = '#,##0.0000;;0.0000'
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi auxilar fisioterapia'
        NombreDB = 'c_fisio_ar'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fi contractat'
        NombreDB = 'Data_fi_contractat'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data no renovacio'
        NombreDB = 'Data_no_renovacio'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Destinaci'#243' continu'#239'tat externa'
        NombreDB = 'DESTI_CONT_EXT'
        Longitud = 4
        Consulta = 'DESTI_CONT_EXT'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Destinaci'#243' continu'#239'tat interna'
        NombreDB = 'DESTI_CONT_INT'
        Longitud = 4
        Consulta = 'DESTI_CONT_INT'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Percentatge beca'
        NombreDB = 'BECA'
        Longitud = 10
        zType = tcIB_Float
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Musicoterapeuta'
        NombreDB = 'C_MUSICOTERAPEUTA'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Identificador CMBD AEA'
        NombreDB = 'CMBD_AEA'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Republicar HC3'
        NombreDB = 'REPUBLICAR_HC3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus d'#39'habitaci'#243
        NombreDB = 'T_HABITACIO'
        Longitud = 2
        Consulta = 'TipHab'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero identificador de garant'
        NombreDB = 'ID_GARANT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Garant'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N'#250'mero de pressupost'
        NombreDB = 'PRESSUPOST'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus de sessi'#243
        NombreDB = 'T_SESSIO'
        Longitud = 3
        Consulta = 'TSessio'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Facilitador'
        NombreDB = 'ID_FACILITADOR'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Facilitador'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Pacient ve de la UCI?'
        NombreDB = 'UCI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom metge m'#250'tua'
        NombreDB = 'METGE_MUTUA'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tel'#232'fon metge m'#250'tua'
        NombreDB = 'TELF_METGE_MUTUA'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VersioCIM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM SubCodi'
        NombreDB = 'VersioCIM_G'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Publicaci'#243' CMDB'
        NombreDB = 'Publicacio_CMDB'
        Longitud = 3
        Consulta = 'PublicaCMDB'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Confian'#231'a diagn'#242'stic principal ingr'#233's'
        NombreDB = 'ConfiancaDPI'
        Longitud = 10
        MaskDisplay = '#,##0.0000;;0.0000'
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Confian'#231'a diagn'#242'stic principal alta'
        NombreDB = 'ConfiancaDPA'
        Longitud = 10
        MaskDisplay = '#,##0.0000;;0.0000'
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Identificador WS DP ingr'#233's'
        NombreDB = 'ID_DPI'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Identificador WS DP alta'
        NombreDB = 'ID_DPA'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Visita cada X setmanes'
        NombreDB = 'CADA_X_SETMANES'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Cada X setmanes es generar'#224' una visita de seguiment (dret P22)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Motiu dia prealta'
        NombreDB = 'Motiu_Dia_Prealta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Si la prealta no '#233's el dia que toca a la UH'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Motiu canvi prealta'
        NombreDB = 'Motiu_Canvi_Prealta'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Si canvien data prealta durant els 7 dies anteriors'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Terapeuta responsable'
        NombreDB = 'C_Terapeuta_Resp'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacionsi secret'#224'ria m'#232'dica'
        NombreDB = 'Obs_Secre'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'per a l'#39'informe d'#39'alta'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Codificat - revisat'
        NombreDB = 'Codificat_Revisat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Si valor='#39'S'#39', s'#39'envia al CatSalut'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus de freq'#252#232'ncia'
        NombreDB = 'C_FREQUENCIA_TIPUS'
        Longitud = 3
        Consulta = 'TipusFrequencia'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora inici rehabilitacio'
        NombreDB = 'HORA_INI_REHAB'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora final rehabilitaci'#243
        NombreDB = 'HORA_FIN_REHAB'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Dies consumits UNESPA'
        NombreDB = 'DiesConsumits'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi prescriptor'
        NombreDB = 'C_Prescriptor'
        Longitud = 5
        Consulta = 'Prescriptor'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi MEF'
        NombreDB = 'C_MEF'
        Longitud = 5
        Consulta = 'MEF'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi trasport'
        NombreDB = 'C_TRANSPORT_SANITARI'
        Longitud = 3
        Consulta = 'TransportSanitari'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Modalitat'
        NombreDB = 'C_Modalitat'
        Longitud = 2
        Consulta = 'modalitat'
        zType = tcIB_Smallint
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Tractament'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Basic'
        NombreDB = 'Basic'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Historia'
          'Prestaci'#243
          'Data Ingr'#233's'
          'Estat informe alta')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataIngres'
        NombreDB = 'DataIngres'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data Ingr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataIngresDesc'
        NombreDB = 'DataIngresDesc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data Ingr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'DataPreAlta'
        NombreDB = 'DataPreAlta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data PreAlta')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataAlta'
        NombreDB = 'DataAlta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data Alta')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'EstaFacu'
        NombreDB = 'EstatFactu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Estat Facturaci'#243
          'N'#186' Centre'
          'N'#186' Tractament')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Prestacion'
        NombreDB = 'Prestacion'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Prestaci'#243)
        Tipo = tiForaneo
        ForaneoDic = Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Historia')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Coordinador'
        NombreDB = 'Coordinador'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Coordinador')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Centre'
        NombreDB = 'Centre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'N'#186' Centre')
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.CentreFac
        ForaneoCampos.Strings = (
          'N'#186' Centre')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Client'
        NombreDB = 'Client'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.Clients
        ForaneoCampos.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Delegacio'
        NombreDB = 'Delegacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.Delega
        ForaneoCampos.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fk_llit'
        NombreDB = 'fk_llit'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Llit')
        Tipo = tiForaneo
        ForaneoDic = wDataAdmisio.Llits
        ForaneoCampos.Strings = (
          'N'#186' Llit')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fk_planta'
        NombreDB = 'fk_planta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Planta')
        Tipo = tiForaneo
        ForaneoDic = wDataAdmisio.Plantas
        ForaneoCampos.Strings = (
          'N'#186' Planta')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Proces'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi de Proc'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'TractamentD'
        NombreDB = 'C_TractamentD'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Tractament')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'Freq'
        NombreDB = 'Freq'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Freq'#252#232'ncia')
        Tipo = tiForaneo
        ForaneoDic = wDataGimnas.TornAmb
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'PrestaOrigen'
        NombreDB = 'PrestaOrigen'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Prestaci'#243' Origen')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'EsperaProg'
        NombreDB = 'EsperaProg'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Espera Programada')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'N'#186' Historia')
        CopiarOrigen.Strings = (
          'N'#186' Historia')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Prestacio'
        Master = Prestacion
        BuscaOrigen.Strings = (
          'Prestaci'#243)
        CopiarOrigen.Strings = (
          'Prestaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di Prestacio')
        BuscaMaster.Strings = (
          'C'#243'di Prestacio')
      end
      item
        Nombre = 'Coordinador'
        Master = Metges
        BuscaOrigen.Strings = (
          'Coordinador')
        CopiarOrigen.Strings = (
          'Coordinador')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgePreAlta'
        Master = Metges
        BuscaOrigen.Strings = (
          'Metge PreAlta')
        CopiarOrigen.Strings = (
          'Metge PreAlta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgeAlta'
        Master = Metges
        BuscaOrigen.Strings = (
          'Metge Alta')
        CopiarOrigen.Strings = (
          'Metge Alta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Motiu'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Motiu')
        CopiarOrigen.Strings = (
          'Motiu')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "MOTIU" and ORDRE >= 0'
        ValidateValue = True
      end
      item
        Nombre = 'Origen'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Procedencia/Origen')
        CopiarOrigen.Strings = (
          'Procedencia/Origen')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "ORIGEN" and ORDRE >= 0'
        ValidateValue = True
      end
      item
        Nombre = 'HtalOrigen'
        Master = wDataCodis.Hospital
        BuscaOrigen.Strings = (
          'Hospital')
        CopiarOrigen.Strings = (
          'Hospital')
        CopiarMaster.Strings = (
          'N'#186' Hospital')
        BuscaMaster.Strings = (
          'N'#186' Hospital')
        WhereFiltro = 'ACTIU='#39'S'#39
      end
      item
        Nombre = 'Caracter'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Car'#224'cter')
        CopiarOrigen.Strings = (
          'Car'#224'cter')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "CARACTER"'
        ValidateValue = True
      end
      item
        Nombre = 'Solicitud'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Solicitud / Causa')
        CopiarOrigen.Strings = (
          'Solicitud / Causa')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "SOLICITUD"'
        ValidateValue = True
      end
      item
        Nombre = 'Destinacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Destinacio')
        CopiarOrigen.Strings = (
          'Destinacio')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DESTINACIO" and R_CODI="CMBD"'
        ValidateValue = True
      end
      item
        Nombre = 'HtalDestinacio'
        Master = wDataCodis.Hospital
        BuscaOrigen.Strings = (
          'Hospital Desti')
        CopiarOrigen.Strings = (
          'Hospital Desti')
        CopiarMaster.Strings = (
          'N'#186' Hospital')
        BuscaMaster.Strings = (
          'N'#186' Hospital')
        WhereFiltro = 'ACTIU='#39'S'#39
      end
      item
        Nombre = 'Frequencia'
        Master = wDataGimnas.TornAmb
        BuscaOrigen.Strings = (
          'Freq'#252#232'ncia')
        CopiarOrigen.Strings = (
          'Freq'#252#232'ncia')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'Fisioterapeuta'
        Master = Metges
        BuscaOrigen.Strings = (
          'FisioTerapeuta')
        CopiarOrigen.Strings = (
          'FisioTerapeuta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Terapeuta'
        Master = Metges
        BuscaOrigen.Strings = (
          'Terapeuta')
        CopiarOrigen.Strings = (
          'Terapeuta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'NumCas'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'N'#186' Cas')
        CopiarOrigen.Strings = (
          'N'#186' Cas')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "NUMCAS"'
        ValidateValue = True
      end
      item
        Nombre = 'ProcesOrigen'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Proces origen')
        CopiarOrigen.Strings = (
          'Proces origen')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "PROCESORIGEN"'
        ValidateValue = True
      end
      item
        Nombre = 'IcdAlta'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'Subcodi Diag. principal alta')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'Subcodi Diag. principal alta')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM SubCodi')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'Centre'
        Master = wDataFactu.CentreFac
        BuscaOrigen.Strings = (
          'N'#186' Centre')
        CopiarOrigen.Strings = (
          'N'#186' Centre')
        CopiarMaster.Strings = (
          'N'#186' Centre')
        BuscaMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Client'
        Master = wDataFactu.Clients
        BuscaOrigen.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        CopiarOrigen.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        FiltroOrigen.Strings = (
          'N'#186' Centre')
        FiltroMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Delegacio'
        Master = wDataFactu.Delega
        BuscaOrigen.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        CopiarOrigen.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243
          '% Pacient')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243
          '% Pacient')
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        FiltroOrigen.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        FiltroMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        WhereFiltro = 'ACTIU = "S"'
        RefreshOnCascade = True
      end
      item
        Nombre = 'IcdIngres'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'Subcodi Diag. principal ingr'#233's')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'Subcodi Diag. principal ingr'#233's')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM SubCodi')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'Llit'
        Master = wDataAdmisio.Llits
        BuscaOrigen.Strings = (
          'Llit')
        CopiarOrigen.Strings = (
          'Llit'
          'Planta')
        CopiarMaster.Strings = (
          'N'#186' Llit'
          'N'#186' Planta')
        BuscaMaster.Strings = (
          'N'#186' Llit')
        FiltroOrigen.Strings = (
          'Planta')
        FiltroMaster.Strings = (
          'N'#186' Planta')
      end
      item
        Nombre = 'Planta'
        Master = wDataAdmisio.Plantas
        BuscaOrigen.Strings = (
          'Planta')
        CopiarOrigen.Strings = (
          'Planta')
        CopiarMaster.Strings = (
          'N'#186' Planta')
        BuscaMaster.Strings = (
          'N'#186' Planta')
      end
      item
        Nombre = 'Provisional'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Es un provisional')
        CopiarOrigen.Strings = (
          'Es un provisional')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "PROVISIONAL"'
        ValidateValue = True
      end
      item
        Nombre = 'Stock'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C'#243'di Stock')
        CopiarOrigen.Strings = (
          'C'#243'di Stock')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "STOCK"'
      end
      item
        Nombre = 'vegada'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Vegada')
        CopiarOrigen.Strings = (
          'Vegada')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "VEGADAAMBULATO"'
      end
      item
        Nombre = 'EstatFac'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat Facturaci'#243)
        CopiarOrigen.Strings = (
          'Estat Facturaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATFACTU"'
        RefreshOnCascade = True
      end
      item
        Nombre = 'EquipAssist'
        Master = wDataBarbara.EquipsAssist_OBSOLET
        BuscaOrigen.Strings = (
          'C Equip assistencial')
        CopiarOrigen.Strings = (
          'C Equip assistencial')
        CopiarMaster.Strings = (
          'C Equip')
        BuscaMaster.Strings = (
          'C Equip')
        ValidateValue = True
      end
      item
        Nombre = 'DESTI_CONT_EXT'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Destinaci'#243' continu'#239'tat externa')
        CopiarOrigen.Strings = (
          'Destinaci'#243' continu'#239'tat externa')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'DESTI_CONT_EXT'#39
      end
      item
        Nombre = 'DESTI_CONT_INT'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Destinaci'#243' continu'#239'tat interna')
        CopiarOrigen.Strings = (
          'Destinaci'#243' continu'#239'tat interna')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'DESTI_CONT_INT'#39
      end
      item
        Nombre = 'TipHab'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus d'#39'habitaci'#243)
        CopiarOrigen.Strings = (
          'Tipus d'#39'habitaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'TIPUS_HABITACIO'#39
      end
      item
        Nombre = 'Garant'
        Master = wDataAdmisio.Garants
        BuscaOrigen.Strings = (
          'N'#250'mero identificador de garant')
        CopiarOrigen.Strings = (
          'N'#250'mero identificador de garant')
        CopiarMaster.Strings = (
          'N'#186' Garant')
        BuscaMaster.Strings = (
          'N'#186' Garant')
      end
      item
        Nombre = 'TSessio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus de sessi'#243)
        CopiarOrigen.Strings = (
          'Tipus de sessi'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'T_SESSIO'#39
      end
      item
        Nombre = 'Facilitador'
        Master = wDataAdmisio.Facilitadors
        BuscaOrigen.Strings = (
          'Facilitador')
        CopiarOrigen.Strings = (
          'Facilitador')
        CopiarMaster.Strings = (
          'N'#186' Facilitador')
        BuscaMaster.Strings = (
          'N'#186' Facilitador')
      end
      item
        Nombre = 'IcdIngresC'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi Diag.Principal Ingr'#233's')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi Diag.Principal Ingr'#233's')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'IcdAltaC'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi Diag.Principal Alta')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi Diag.Principal Alta')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'PublicaCMDB'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Publicaci'#243' CMDB')
        CopiarOrigen.Strings = (
          'Publicaci'#243' CMDB')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'PUBLICACIO_CMDB'#39
      end
      item
        Nombre = 'TipusFrequencia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus de freq'#252#232'ncia')
        CopiarOrigen.Strings = (
          'Tipus de freq'#252#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'FREQUENCIA.TIPUS'#39
      end
      item
        Nombre = 'Prescriptor'
        Master = Metges
        BuscaOrigen.Strings = (
          'Codi prescriptor')
        CopiarOrigen.Strings = (
          'Codi prescriptor')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MEF'
        Master = Metges
        BuscaOrigen.Strings = (
          'Codi MEF')
        CopiarOrigen.Strings = (
          'Codi MEF')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'TransportSanitari'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codi trasport')
        CopiarOrigen.Strings = (
          'Codi trasport')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'TRANSPORT_SANITARI'#39
      end
      item
        Nombre = 'modalitat'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Modalitat')
        CopiarOrigen.Strings = (
          'Modalitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "ATENCIO.MODALITAT" and ORDRE >= 0'
        ValidateValue = True
      end>
    Nombre = 'Tractament de Filiacions'
    NombreTabla = 'Tractaments'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Tractament'
      'N'#186' Historia'
      'Prestaci'#243
      'Data Ingr'#233's'
      'Data Alta'
      'Data PreAlta'
      'Coordinador'
      'Codi Diag.Principal Alta'
      'Literal Diag.Principal Alta'
      '% Pacient'
      'Refer'#232'ncia'
      'N'#186' Centre'
      'N'#186' Client'
      'N'#186' Delegaci'#243
      'Estat Facturaci'#243
      'Vegada'
      'Motiu'
      'Fi de proc'#233's'
      'Metge proc'#233's'
      'Planta'
      'Estat informe alta'
      'Codi Diag.Principal Ingr'#233's'
      'Subcodi Diag. principal ingr'#233's'
      'Literal Diag.Principal Ingr'#233's'
      'Subcodi Diag. principal alta'
      'Residencia'
      'Resid'#232'ncia PADES'
      'Actua PADES'
      'Data Sinistre'
      'Codi de Proc'#233's')
    IndiceVer = 'Tractament'
    Navegar = False
    Nivel = 7
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945848843
    Left = 29
    Top = 492
  end
  object TractList: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      'SELECT'
      
        'T.C_Tractament, T.C_Historia, T.C_Prestacio, T.Data_Ingres, T.C_' +
        'Coordinador,'
      'T.Data_Alta, T.Data_PreAlta, T.C_LLit, T.C_Planta, T.Durada,'
      
        'T.EstatInformeAlta, T.C_Motiu, T.EsProvisional, T.C_PrestacioOri' +
        'gen, T.Vegada,'
      'P.N_Prestacio, P.Resum, P.Tipus, '
      'M.Metge, M.Cognom, M.Tracte, M.C_Grup, M.C_Especial,'
      
        'F.NOMCOMPLET, F.SEXO, F.Bloqueig, F.IDIOMA, F.UNITAT, F.ESVIU, F' +
        '.EDAT, '
      'T.C_PROCES, T.FI_PROCES'
      ''
      
        'FROM ((TRACTAMENTS T JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PR' +
        'ESTACIO)'
      'JOIN METGES M ON M.CODI = T.C_COORDINADOR)'
      'JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      'where P.TIPUS <> 4'
      ' '
      ' ')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37076.7607779745
    Left = 661
    Top = 492
  end
  object TractActius: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'Actius'
    ForceNombreDB = False
    Body.Strings = (
      'select *'
      'from     V_TRACTAMENTS_LIST'
      'where  DATA_INGRES <= "TODAY"'
      'and      (DATA_ALTA IS NULL OR DATA_ALTA>="TODAY")'
      'AND    TIPUS <> 4')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37076.760778206
    Left = 732
    Top = 444
  end
  object MetgesActius: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'Actius'
    ForceNombreDB = False
    Body.Strings = (
      'SELECT'
      
        'M.Codi, M.Tracte, M.Metge, M.Cognom, M.C_Grup, M.C_Especial, M.N' +
        'C, M.NMETGERECEPTA,'
      'E.N_Especial,'
      'G.N_Grup'
      'FROM (METGES M JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL )'
      'JOIN GRUPS G ON M.C_GRUP = G.C_GRUP'
      'WHERE M.BAIXA = "N"')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    ModiFecha = 37076.7607784375
    Left = 392
    Top = 243
  end
  object vMetges: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'Codi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'Metge'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom'
        NombreDB = 'Cognom'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Col'#183'legiat'
        NombreDB = 'NC'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Numero de Colegiat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tracte'
        NombreDB = 'Tracte'
        Longitud = 4
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Dr, Drta, Dts, etc...'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '**'
        Comentario = 'Grup al que pertany FK amb Grups'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' grup'
        NombreDB = 'N_Grup'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi especiallitat'
        NombreDB = 'C_Especial'
        Longitud = 2
        Consulta = 'Especial'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '**'
        Comentario = 'Especialitat, FK amb Especialitats'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Especialitat'
        NombreDB = 'N_Especial'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom complet'
        NombreDB = 'Nomsencer'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Grup'
        Master = Grups
        BuscaOrigen.Strings = (
          'Grup')
        CopiarOrigen.Strings = (
          'Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end
      item
        Nombre = 'Especial'
        Master = Especial
        BuscaOrigen.Strings = (
          'Codi especiallitat')
        CopiarOrigen.Strings = (
          'Codi especiallitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end>
    Nombre = 'Metges Virtual Actius'
    NombreTabla = 'V_METGES_ACTIUS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Nom'
      'Cognom'
      'N'#250'm. Col'#183'legiat'
      'Tracte'
      'Grup'
      'Descripci'#243' grup'
      'Codi especiallitat'
      'Especialitat')
    IndiceVer = 'Usuari'
    Navegar = False
    Nivel = 5
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 36949.5296234722
    Left = 821
    Top = 243
  end
  object AssignaNumero: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AssignaNumero'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS '
      '('
      '  NEWCODE INTEGER'
      ')'
      'AS'
      'BEGIN'
      ''
      '  /*SELECT MAX(NUM_HIST) + 1'
      '  FROM [FILIACIO] '
      '  INTO :NEWCODE; */'
      '  '
      '  NEWCODE = GEN_ID(CONTANUMHIST,1);'
      ''
      '  SUSPEND;'
      ''
      'END'
      ''
      '')
    Select.Strings = (
      'SELECT * FROM P_FILIACIO_ASSIGNANUMERO')
    Dic1 = Filiacio
    Dic1Name = 'Filiacio'
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
    ModiFecha = 37076.7607785532
    Left = 253
    Top = 64
  end
  object PrestaComp: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Prestacio'
        NombreDB = 'C_Prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Compatible'
        NombreDB = 'C_PrestaComp'
        Longitud = 4
        Consulta = 'prestacomp'
        zType = tcIB_Varchar
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'di Prestacio'
          'Compatible')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Presta'
        NombreDB = 'Presta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'di Prestacio')
        Tipo = tiForaneo
        ForaneoDic = Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'PrestaComp'
        Master = Prestacion
        BuscaOrigen.Strings = (
          'Compatible')
        CopiarOrigen.Strings = (
          'Compatible')
        CopiarMaster.Strings = (
          'C'#243'di Prestacio')
        BuscaMaster.Strings = (
          'C'#243'di Prestacio')
        FiltroOrigen.Strings = (
          'C'#243'di Prestacio')
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
      end>
    Nombre = 'Prestacio Compatible'
    NombreTabla = 'PrestaComp'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di Prestacio'
      'Compatible')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4944384954
    Left = 208
    Top = 428
  end
  object Ins: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Ins'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE TMP          DATE;'
      '  DECLARE VARIABLE ANTERIORS    INTEGER;'
      '  '
      '/*  DECLARE VARIABLE C_PLA        INTEGER; */'
      ''
      '/*  DECLARE VARIABLE C_TRACT_ANT INTEGER;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      '  DECLARE VARIABLE TENIA_OM    SMALLINT; */'
      ''
      '  DECLARE VARIABLE ESLET       INTEGER;'
      '  DECLARE VARIABLE LET         INTEGER;'
      ''
      '  DECLARE VARIABLE DATA        DATE;'
      '  DECLARE VARIABLE ID          INTEGER;'
      '  DECLARE VARIABLE FESTA       INTEGER;'
      '  DECLARE VARIABLE DIES        INTEGER;'
      '  DECLARE VARIABLE SUMA        INTEGER;'
      '  DECLARE VARIABLE ESNPC       SMALLINT;'
      '  '
      '  DECLARE VARIABLE C_PAIS      VARCHAR(3);'
      '  DECLARE VARIABLE CONTA       INTEGER;'
      '  '
      '  DECLARE VARIABLE TEDRETPRESTA SMALLINT;'
      '  DECLARE VARIABLE HIES         INTEGER;'
      '  DECLARE VARIABLE ES_UNESPA    CHAR(1);'
      '  DECLARE VARIABLE DATAUNESPATALL2021 DATE;'
      '  DECLARE VARIABLE VERSIOCIM    INTEGER;'
      'BEGIN'
      ''
      '   IF (USER<>"REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /* ************************************************* */'
      '      /* *** ACTUALITZEM FILIACI'#211': 1r i '#218'LTIM CONTACTE *** */'
      '      /* ************************************************* */'
      '      '
      '      /* Salut laboral no compta com a contacte */'
      '      IF (NEW.C_PRESTACIO <> '#39'0000'#39') THEN'
      '      BEGIN'
      '          TMP = NULL;'
      '      '
      '          SELECT DATA_CONTACTE'
      '          FROM   FILIACIO'
      '          WHERE  NUM_HIST = NEW.C_HISTORIA'
      '          INTO  :TMP;'
      ''
      
        '          /* Si data_contacte no est'#224' informat, vol dir que '#233's e' +
        'l primer tractament del pacient */'
      '          IF (TMP IS NULL) THEN   UPDATE FILIACIO'
      '                                  SET DATA_CONTACTE = "TODAY"'
      
        '                                  WHERE NUM_HIST = NEW.C_HISTORI' +
        'A;'
      ''
      
        '          /* Altrament, mirem si hi ha tractaments anteriors (po' +
        'dria ser que no, en cas que aprofitessin una hist'#242'ria "provision' +
        'al provisional" */'
      '          ELSE BEGIN'
      ''
      
        '              SELECT COUNT(*) FROM TRACTAMENTS WHERE C_HISTORIA ' +
        '= NEW.C_HISTORIA AND DATA_INGRES < NEW.DATA_INGRES INTO :ANTERIO' +
        'RS;'
      ''
      '              IF (ANTERIORS = 0) THEN   UPDATE FILIACIO'
      
        '                                        SET    DATA_CONTACTE = N' +
        'EW.DATA_INGRES'
      
        '                                        WHERE  NUM_HIST = NEW.C_' +
        'HISTORIA'
      
        '                                        AND  ((ANTICSTRACTAMENTS' +
        ' IS NULL) OR (F_LRTrim(F_Left(F_BlobAsPChar(ANTICSTRACTAMENTS), ' +
        '50)) = '#39#39'));'
      '          END;'
      ''
      '          UPDATE FILIACIO'
      '          SET    Data_UltimContacte = "TODAY"'
      '          WHERE  NUM_HIST = NEW.C_HISTORIA;'
      ''
      '      END;'
      '      '
      '      '
      '      /* ************************************************ */'
      '      /* **** DIAGN'#210'STICS I PROCEDIMENTS AUTOM'#192'TICS ***** */'
      '      /* ************************************************ */'
      ''
      
        '      SELECT ESTAT FROM CONFIGBLOQ WHERE CAMP = '#39'CIM_VERSIOCIM'#39' ' +
        'INTO :VERSIOCIM;'
      ''
      
        '      /* Si tenim procediments o diagn'#242'stics secundaris autom'#224'ti' +
        'cs segons motiu, els bolquem on correspongui */'
      
        '      INSERT INTO DIAGNOSTICS (C_TRACTAMENT, TIPUS, ORDRECMB, C_' +
        'DIAGNOSTIC, N_DIAGNOSTIC, CONFIANCA, VERSIOCIM)'
      
        '      SELECT NEW.C_TRACTAMENT, "I", C.ORDRE, C.C_ICD, COALESCE(N' +
        'ULLIF(I.N_GUTTMANN, '#39#39'), M.N_CODI), 100, C.VERSIOCIM'
      '      FROM   CODICAMPS M'
      
        '      JOIN   ICDCODICAMPS C ON M.TIPUSCODI = C.TIPUSCODI AND M.C' +
        '_CODI = C.C_CODI AND C.TIPUSICD = '#39'D'#39' AND C.VERSIOCIM = :VERSIOC' +
        'IM AND C.ORDRE > 1'
      '      JOIN   CODIICD I ON C.C_ICD = I.C_ICD'
      '      WHERE  C.TIPUSCODI = '#39'MOTIU'#39
      '      AND    C.C_CODI = NEW.C_MOTIU;'
      ''
      
        '      /* ... *//*Potser cal posar el dispositiu del procediment!' +
        ' */'
      
        '      INSERT INTO TPROCEDIMENTS (C_TRACTAMENT, TIPUS, ORDRE, C_P' +
        'ROCEDIMENT, N_PROCEDIMENT, CONFIANCA, VERSIOCIM)'
      
        '      SELECT NEW.C_TRACTAMENT, "A", C.ORDRE, C.C_ICD, COALESCE(N' +
        'ULLIF(I.N_GUTTMANN, '#39#39'), M.N_CODI), 100, C.VERSIOCIM'
      '      FROM   CODICAMPS M'
      
        '      JOIN   ICDCODICAMPS C ON M.TIPUSCODI = C.TIPUSCODI AND M.C' +
        '_CODI = C.C_CODI AND C.TIPUSICD = '#39'P'#39' AND C.VERSIOCIM = :VERSIOC' +
        'IM'
      '      JOIN   CODIICD I ON C.C_ICD = I.C_ICD'
      '      WHERE  C.TIPUSCODI = '#39'MOTIU'#39
      '      AND    C.C_CODI = NEW.C_MOTIU;'
      ''
      '      '
      '/* JA NO TENIM LES ORDRES M'#200'DIQUES AL CURS'
      ''
      '      /* ********************** */'
      
        '      /* *** OM AMBULATORIS *** */  /* Si filien un ambulatori a' +
        'mb menys de 7 dies des de l'#39#250'ltima alta de 1004 o 2014 */'
      
        '      /* ********************** */  /* el posem a pendent de bol' +
        'car ordres m'#232'diques'
      '      '
      '      IF (NEW.C_PRESTACIO = '#39'2014'#39') THEN'
      '      BEGIN'
      '            C_TRACT_ANT = 0;'
      '            DATA_ALTA = NULL;'
      '            '
      '            SELECT C_TRACTAMENT, DATA_ALTA'
      '            FROM   TRACTAMENTS'
      '            WHERE  C_HISTORIA = NEW.C_HISTORIA'
      '            AND   (C_PRESTACIO = '#39'1004'#39' OR C_PRESTACIO = '#39'2014'#39')'
      '            AND    C_TRACTAMENT <> NEW.C_TRACTAMENT'
      '            ORDER  BY DATA_ALTA DESC'
      '            ROWS   1'
      '            INTO  :C_TRACT_ANT, DATA_ALTA;'
      '            '
      
        '            /* Si han passat menys de 7 dies des de l'#39#250'ltima alt' +
        'a de 1004 o 2014'
      
        '               i l'#39#250'ltima prestaci'#243' t'#233' ordres m'#232'diques caducades' +
        ' a l'#39'alta,'
      '               insertem el nou tractament a OM_AMBULATORIS'
      
        '            IF ((:DATA_ALTA IS NOT NULL) AND (NEW.DATA_INGRES - ' +
        ':DATA_ALTA <= 7))  THEN'
      '            BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM   ORDRESMEDIQUES'
      '                  WHERE  C_TRACTAMENT = :C_TRACT_ANT'
      '                  AND    C_ESTAT = '#39'C'#39
      
        '                  AND    DATA_CADUCITAT = :DATA_ALTA + 23/24 + 5' +
        '5/1440'
      '                  INTO  :TENIA_OM;'
      ''
      
        '                  IF (TENIA_OM > 0) THEN  INSERT INTO OM_AMBULAT' +
        'ORIS (C_TRACTAMENT, C_TRACTAMENT_ANT, ESTAT)'
      
        '                                          VALUES (NEW.C_TRACTAME' +
        'NT, :C_TRACT_ANT, 0);'
      '            END;'
      '      '
      '      END;'
      '      */'
      '      '
      '      /* *********************/'
      
        '      /* *** SEM'#192'FOR LET *** */   /* en filiar una prestaci'#243' amb' +
        ' LET activat, inicialitzem el sem'#224'for LET a "sense LET", si no e' +
        'stava informat */'
      '      /* ******************* */'
      ''
      '      /* Prestacions amb sem'#224'for LET */'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P199'#39' INTO :ESLET;'
      '      IF (ESLET > 0) THEN'
      '      BEGIN'
      
        '            /* Si el pacient no t'#233' cap registre LET (amb estat i' +
        'nformat), l'#39'inicialitzem a SENSE LET */'
      
        '            SELECT C_ESTAT FROM P_SEMAFORS_ESTAT(NEW.C_HISTORIA,' +
        ' '#39'LET'#39') INTO :LET;'
      '            IF ((LET = 0) OR (LET IS NULL))'
      '            THEN'
      
        '                  INSERT INTO SEMAFORS (ID, C_HISTORIA, TIPUS, C' +
        '_ESTAT, DATA, INFO, DATA_REG)'
      
        '                  VALUES (GEN_ID(G_SEMAFORS, 1), NEW.C_HISTORIA,' +
        ' "LET", 1, NEW.DATA_INGRES, "Registre autom'#224'tic a l'#39'ingr'#233's", "NO' +
        'W");'
      '      END;'
      ''
      ''
      '      /* ********************** */'
      
        '      /* *** AGENDAPACIENT  *** */  /* Si filien 1004,2014,... a' +
        'ctualitzem el C_TRACTAMENT de les activitats actives a AGENDAPAC' +
        'IENT */'
      '      /* ********************** */'
      '      ESNPC=0;'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET='#39'P117'#39' AND C' +
        '_PRESTACIO=NEW.C_PRESTACIO INTO :ESNPC;'
      
        '                                                                ' +
        '       /* NEW.C_PRESTACIO = '#39'2023'#39' */'
      
        '      IF ((NEW.C_PRESTACIO = '#39'1004'#39') OR (NEW.C_PRESTACIO = '#39'2014' +
        #39') OR (ESNPC>0) OR'
      
        '          ((NEW.C_PRESTACIO='#39'9999'#39') AND ((NEW.C_PRESTACIOORIGEN=' +
        #39'1004'#39') OR (NEW.C_PRESTACIOORIGEN='#39'2014'#39')))) THEN'
      '      BEGIN'
      
        '           UPDATE AGENDAPACIENT SET C_TRACTAMENT=NEW.C_TRACTAMEN' +
        'T'
      '           WHERE  C_HISTORIA=NEW.C_HISTORIA'
      '           AND   (DATAF IS NULL OR DATAF>="TODAY")'
      
        '           AND   (C_TRACTAMENT IS NULL OR (C_TRACTAMENT=0)); /* ' +
        'OR C_TRACTAMENT<>NEW.C_TRACTAMENT); -  16.1.2017 */'
      '      END;'
      '      '
      '      '
      '      /* ****************************** */'
      '      /* *** GNPT - SESSIONSPERIODE *** */'
      '      /* ****************************** */'
      ''
      
        '      /* Si s 1004 o 2014 i se li informa el C_LOGOPEDA/C_PSICOL' +
        'EG cal insertar registre a SESSIONSPERIODE */'
      
        '      IF (((NEW.C_PRESTACIO = '#39'1004'#39') OR (NEW.C_PRESTACIO = '#39'201' +
        '4'#39') OR (NEW.C_PRESTACIO = '#39'2008'#39')) AND ((NEW.C_LOGOPEDA IS NOT N' +
        'ULL) OR (NEW.C_PSICOLEG IS NOT NULL))) THEN'
      '      BEGIN'
      
        '          INSERT INTO SESSIONSPERIODE(C_TRACTAMENT) VALUES(NEW.C' +
        '_TRACTAMENT);'
      '      END;'
      '      '
      '      /* ****************************** */'
      '      /* ***  INGRESSOS D'#39'ANDORRA   *** */'
      '      /* ****************************** */'
      ''
      
        '      /* Si '#233's 1004 i el pacient '#233's d'#39'Andorra, l'#39'insertem a INGR' +
        'ESANDORRA, si no hi '#233's ja */'
      '      IF (NEW.C_PRESTACIO = '#39'1004'#39') THEN'
      '      BEGIN'
      
        '          SELECT PAIS FROM FILIACIO WHERE NUM_HIST = NEW.C_HISTO' +
        'RIA INTO :C_PAIS;'
      ''
      '          IF (C_PAIS = '#39'376'#39') THEN'
      '          BEGIN'
      
        '              SELECT COUNT(*) FROM IngresAndorra WHERE C_HISTORI' +
        'A=NEW.C_HISTORIA AND C_TRACTAMENT=NEW.C_TRACTAMENT INTO :CONTA;'
      ''
      '              IF (CONTA = 0) THEN'
      '              BEGIN'
      
        '                  INSERT INTO IngresAndorra(C_HISTORIA, C_TRACTA' +
        'MENT) VALUES(NEW.C_HISTORIA, NEW.C_TRACTAMENT);'
      '              END;'
      '          END;'
      '      END;'
      '      '
      
        '      /* Per prestacions amb dret P172, client UNESPA i data les' +
        'i'#243' >= 1.7.2021, insertem registre a UNESPA_SESSIONS */'
      '      TEDRETPRESTA = 0;'
      '      '
      '      SELECT COUNT(*)'
      '      FROM   DRETSPRESTA'
      '      WHERE  C_PRESTACIO = NEW.C_PRESTACIO'
      '      AND    C_DRET = "P172"'
      '      INTO  :TEDRETPRESTA;'
      ''
      '      IF (TEDRETPRESTA <> 0) THEN'
      '      BEGIN'
      
        '          SELECT DATA FROM UNESPADATES WHERE ID="TALL_2021" INTO' +
        ' :DATAUNESPATALL2021;'
      
        '          IF (DATAUNESPATALL2021 IS NULL) THEN DATAUNESPATALL202' +
        '1 = 0;'
      '      '
      '          ES_UNESPA = '#39'N'#39';'
      
        '          SELECT ES_UNESPA FROM CLIENTS WHERE C_CENTREFAC = NEW.' +
        'C_CENTREFAC AND C_CLIENT = NEW.C_CLIENT INTO :ES_UNESPA;'
      '          IF (ES_UNESPA IS NULL) THEN ES_UNESPA = '#39'N'#39';'
      ''
      '          IF (ES_UNESPA = '#39'S'#39') THEN'
      '          BEGIN'
      
        '               IF ((NEW.DATA_SINISTRE IS NOT NULL) AND (NEW.DATA' +
        '_SINISTRE >= DATAUNESPATALL2021)) THEN'
      '               BEGIN'
      
        '                   INSERT INTO UNESPA_SESSIONS(C_TRACTAMENT) VAL' +
        'UES(NEW.C_TRACTAMENT);'
      '               END;'
      '          END;'
      '      END;'
      ''
      '   END'
      'END')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37160.7846842477
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 158
    Top = 492
  end
  object Update: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Update'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE ERA_REVISIO SMALLINT;'
      '  DECLARE VARIABLE ES_REVISIO  SMALLINT;'
      '  DECLARE VARIABLE ERA_INGRESECO SMALLINT;'
      '  DECLARE VARIABLE ES_INGRESECO  SMALLINT;'
      ''
      '  DECLARE VARIABLE CONTADOR INTEGER;'
      '  DECLARE VARIABLE PRESTACIO VARCHAR(4);'
      '  declare variable temp integer;'
      ''
      '  DECLARE VARIABLE OBLIGA_ESCALES INTEGER;'
      '  DECLARE VARIABLE TRACT_INI_PROCES INTEGER;'
      '  DECLARE VARIABLE TIPUS CHAR(1);'
      '  DECLARE VARIABLE D DATE;'
      '  DECLARE VARIABLE ID INTEGER;'
      '  DECLARE VARIABLE C_ESCALA INTEGER;'
      '  '
      '  DECLARE VARIABLE DATA_CONTACTE DATE;'
      '  DECLARE VARIABLE ULTIM_CONTACTE DATE;'
      ''
      '  DECLARE VARIABLE DATA_PREALTA DATE;'
      '  DECLARE VARIABLE DIA          SMALLINT;'
      '  DECLARE VARIABLE VISITA2003   DATE;'
      '  DECLARE VARIABLE ESFESTIU     INTEGER;'
      ''
      '  DECLARE VARIABLE M1 SMALLINT;'
      '  DECLARE VARIABLE M2 SMALLINT;'
      ''
      '  DECLARE VARIABLE P1 VARCHAR(4);'
      '  DECLARE VARIABLE P2 VARCHAR(4);'
      ''
      '  DECLARE VARIABLE SOLICITA  VARCHAR(3000);'
      '  DECLARE VARIABLE MARCA CHAR(1);'
      '  DECLARE VARIABLE C_INTERCON INTEGER;'
      '  DECLARE VARIABLE C_GRUP CHAR(2);'
      '  '
      '  DECLARE VARIABLE UNITAT INTEGER;'
      '  DECLARE VARIABLE EDAT   INTEGER;'
      '  '
      '  DECLARE VARIABLE C_TRACT_ANT INTEGER;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      '  DECLARE VARIABLE HI_ES       SMALLINT;'
      '  DECLARE VARIABLE TENIA_OM    SMALLINT;'
      '  '
      '  DECLARE VARIABLE ESNPC       SMALLINT;'
      '  DECLARE VARIABLE DATA_INICI  DATE;'
      '  DECLARE VARIABLE GNPT_HIES   SMALLINT;'
      '  DECLARE VARIABLE TRACT_NPC   INTEGER;'
      '  DECLARE VARIABLE TRACT_GNPT  INTEGER;'
      '  DECLARE VARIABLE DATA_INICI_GNPT  DATE;'
      '  '
      ''
      '  DECLARE VARIABLE C_PAIS      CHAR(3);'
      '  DECLARE VARIABLE COMPTA      INTEGER;'
      ''
      '  DECLARE VARIABLE TEDRETPRESTA  INTEGER;'
      '  DECLARE VARIABLE ES_UNESPA     CHAR(1);'
      '  DECLARE VARIABLE ERA_UNESPA    CHAR(1);'
      '  DECLARE VARIABLE UNESPA_TALL21 DATE;'
      '  DECLARE VARIABLE DATA_SINISTRE DATE;'
      '  DECLARE VARIABLE D_ALTA        DATE;'
      '  DECLARE VARIABLE PASSIS_FORA   INTEGER;'
      '  '
      '  DECLARE VARIABLE TIPUS_OLD CHAR(1);'
      '  DECLARE VARIABLE TIPUS_NEW CHAR(1);'
      '  '
      '  DECLARE VARIABLE VERSIOCIM    INTEGER;'
      '  DECLARE VARIABLE PRIMER       SMALLINT;'
      '  DECLARE VARIABLE ICD_PPAL     VARCHAR(15);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '      ERA_REVISIO = 0;   ES_REVISIO = 0;'
      '      ERA_INGRESECO = 0;   ES_INGRESECO = 0;'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = OLD.C_MOTI' +
        'U AND C_DRET = '#39'X5'#39' INTO :ERA_REVISIO;'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = NEW.C_MOTI' +
        'U AND C_DRET = '#39'X5'#39' INTO :ES_REVISIO;'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = OLD.C_MOTI' +
        'U AND C_DRET = '#39'X6'#39' INTO :ERA_INGRESECO;'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = NEW.C_MOTI' +
        'U AND C_DRET = '#39'X6'#39' INTO :ES_INGRESECO;'
      ''
      
        '      /* Nom'#233's generarem ECOS per als ingressos que siguin de la' +
        ' unitat administrativa 1 o 5 */'
      
        '      SELECT UNITAT FROM FILIACIO WHERE NUM_HIST = NEW.C_HISTORI' +
        'A INTO :UNITAT;'
      
        '      IF ((UNITAT <> 1) AND (UNITAT <> 5)) THEN ES_INGRESECO = 0' +
        ';'
      ''
      ''
      '      /* ************************************************ */'
      '      /* **** DIAGN'#210'STICS I PROCEDIMENTS AUTOM'#192'TICS ***** */'
      '      /* ************************************************ */'
      '      IF (OLD.C_MOTIU <> NEW.C_MOTIU) THEN'
      '      BEGIN'
      
        '            SELECT ESTAT FROM CONFIGBLOQ WHERE CAMP = '#39'CIM_VERSI' +
        'OCIM'#39' INTO :VERSIOCIM;'
      ''
      
        '            /* Si tenim procediments o diagn'#242'stics secundaris au' +
        'tom'#224'tics segons motiu, els bolquem on correspongui */'
      ''
      
        '            /* Primer eliminem els automatitzats pel motiu anter' +
        'ior */'
      '            DELETE FROM DIAGNOSTICS'
      '            WHERE C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            AND   TIPUS = "I"'
      
        '            AND   C_DIAGNOSTIC IN (SELECT C_ICD FROM ICDCODICAMP' +
        'S WHERE TIPUSCODI = "MOTIU" AND C_CODI = OLD.C_MOTIU AND TIPUSIC' +
        'D = "D");'
      ''
      '            DELETE FROM TPROCEDIMENTS'
      '            WHERE C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            AND   TIPUS = "A"'
      
        '            AND   C_PROCEDIMENT IN (SELECT C_ICD FROM ICDCODICAM' +
        'PS WHERE TIPUSCODI = "MOTIU" AND C_CODI = OLD.C_MOTIU AND TIPUSI' +
        'CD = "P");'
      ''
      '            /* Busquem el 1r diagn'#242'stic autom'#224'tic per motiu */'
      '            SELECT C.C_ICD'
      '            FROM   CODICAMPS M'
      
        '            JOIN   ICDCODICAMPS C ON M.TIPUSCODI = C.TIPUSCODI A' +
        'ND M.C_CODI = C.C_CODI AND C.TIPUSICD = '#39'D'#39' AND C.VERSIOCIM = :V' +
        'ERSIOCIM AND C.ORDRE = 1'
      '            JOIN   CODIICD I ON C.C_ICD = I.C_ICD'
      '            WHERE  C.TIPUSCODI = '#39'MOTIU'#39
      '            AND    C.C_CODI = NEW.C_MOTIU'
      '            INTO  :ICD_PPAL;'
      
        '            /* Si n'#39'hi ha, i coincideix amb el diagn'#242'stic ppal d' +
        'el tractament, no el bolcarem a diagn'#242'stics secundaris */'
      
        '            IF ((ICD_PPAL IS NOT NULL) AND (ICD_PPAL = NEW.C_DIA' +
        'GNOSTICINGRES)) THEN PRIMER = 2;'
      
        '                                                                ' +
        '                ELSE PRIMER = 1;'
      '            '
      
        '            INSERT INTO DIAGNOSTICS (C_TRACTAMENT, TIPUS, ORDREC' +
        'MB, C_DIAGNOSTIC, N_DIAGNOSTIC, CONFIANCA, VERSIOCIM)'
      
        '            SELECT NEW.C_TRACTAMENT, "I", C.ORDRE, C.C_ICD, COAL' +
        'ESCE(NULLIF(I.N_GUTTMANN, '#39#39'), M.N_CODI), 100, C.VERSIOCIM'
      '            FROM   CODICAMPS M'
      
        '            JOIN   ICDCODICAMPS C ON M.TIPUSCODI = C.TIPUSCODI A' +
        'ND M.C_CODI = C.C_CODI AND C.TIPUSICD = '#39'D'#39' AND C.VERSIOCIM = :V' +
        'ERSIOCIM AND C.ORDRE >= :PRIMER'
      '            JOIN   CODIICD I ON C.C_ICD = I.C_ICD'
      '            WHERE  C.TIPUSCODI = '#39'MOTIU'#39
      '            AND    C.C_CODI = NEW.C_MOTIU;'
      ''
      
        '            /* ... *//*Potser cal posar el dispositiu del proced' +
        'iment! */'
      
        '            INSERT INTO TPROCEDIMENTS (C_TRACTAMENT, TIPUS, ORDR' +
        'E, C_PROCEDIMENT, N_PROCEDIMENT, CONFIANCA, VERSIOCIM)'
      
        '            SELECT NEW.C_TRACTAMENT, "A", C.ORDRE, C.C_ICD, COAL' +
        'ESCE(NULLIF(I.N_GUTTMANN, '#39#39'), M.N_CODI), 100, C.VERSIOCIM'
      '            FROM   CODICAMPS M'
      
        '            JOIN   ICDCODICAMPS C ON M.TIPUSCODI = C.TIPUSCODI A' +
        'ND M.C_CODI = C.C_CODI AND C.TIPUSICD = '#39'P'#39' AND C.VERSIOCIM = :V' +
        'ERSIOCIM'
      '            JOIN   CODIICD I ON C.C_ICD = I.C_ICD'
      '            WHERE  C.TIPUSCODI = '#39'MOTIU'#39
      '            AND    C.C_CODI = NEW.C_MOTIU;'
      '      END;'
      ''
      ''
      '      /* ************************************************ */'
      '      /* *** PROC'#201'S REHABILITADOR -> ESCALES PENDENTS *** */'
      '      /* ************************************************ */'
      ''
      '      /* Si un tractament deixa de ser rehabilitador  */'
      
        '      IF ((OLD.C_PROCES IS NOT NULL) AND (NEW.C_PROCES IS NULL))' +
        ' THEN'
      '      BEGIN'
      
        '            /* traiem les Escales Pendents d'#39'aquest tractament *' +
        '/'
      
        '            DELETE FROM ESCALESPENDENTS WHERE C_TRACTAMENT = NEW' +
        '.C_TRACTAMENT;'
      '            '
      
        '            /* si '#233's un ingr'#233's, insertem a Escales Pendents NoTI' +
        'R les que calgui */'
      
        '            IF (NEW.C_PRESTACIO = '#39'1004'#39') THEN EXECUTE PROCEDURE' +
        ' P_ESCALESPENDENTS_INSERTA_NOTIR(NEW.C_TRACTAMENT);'
      '      END'
      ''
      
        '      /* Si la prestaci'#243' deixa de ser una revisi'#243' (o ingr'#233's per ' +
        'revisi'#243' o valoraci'#243' especialitzada) */'
      
        '      IF (((ERA_REVISIO > 0) AND (ES_REVISIO = 0) AND (NEW.C_PRE' +
        'STACIO <> '#39'6004'#39'))'
      
        '      OR  ((OLD.C_PRESTACIO = '#39'6004'#39') AND (NEW.C_PRESTACIO <> '#39'6' +
        '004'#39') AND (ES_REVISIO = 0))) THEN'
      '      BEGIN'
      '            /* traiem les Escales Pendents corresponents */'
      
        '            DELETE FROM ESCALESPENDENTS WHERE C_TRACTAMENT = NEW' +
        '.C_TRACTAMENT AND TIPUS = '#39'S'#39';'
      '            '
      
        '            /* si '#233's un ingr'#233's, insertem a Escales Pendents NoTI' +
        'R les que calgui */'
      
        '            IF (NEW.C_PRESTACIO = '#39'1004'#39') THEN EXECUTE PROCEDURE' +
        ' P_ESCALESPENDENTS_INSERTA_NOTIR(NEW.C_TRACTAMENT);'
      '      END'
      ''
      
        '      /* Si un ingr'#233's per revisi'#243' passa a ser ingr'#233's per rehabil' +
        'itaci'#243', passem les escales '#39'S'#39' a '#39'I'#39' */'
      
        '      IF ((OLD.C_PRESTACIO = '#39'1004'#39') AND (ERA_REVISIO > 0) AND (' +
        'NEW.C_PRESTACIO = '#39'1004'#39') AND (NEW.C_PROCES IS NOT NULL))'
      
        '      THEN UPDATE ESCALESCAP SET TIPUS = '#39'I'#39' WHERE C_TRACTAMENT ' +
        '= NEW.C_TRACTAMENT AND TIPUS = '#39'S'#39';'
      ''
      
        '      /* Si s'#39'inicia un proc'#233's rehabilitador, insertem les escal' +
        'es obligat'#242'ries a l'#39'ingr'#233's, a EscalesPendents */'
      
        '      IF ((OLD.C_PROCES IS NULL) AND (NEW.C_PROCES IS NOT NULL))' +
        ' THEN'
      '      BEGIN'
      '            /* Traiem les escales pendents No TIR */'
      
        '            DELETE FROM ESCALESPENDENTS WHERE C_TRACTAMENT = NEW' +
        '.C_TRACTAMENT AND TIPUS = '#39'-'#39';'
      ''
      
        '            /* Nom'#233's inserim escales si la prestaci'#243' t'#233' el dret ' +
        'P550 (ja que algunes visites tenen el C_Proces informat quan des' +
        ' de CE es programa un ambulatori) */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' NEW.C_PRESTACIO AND C_DRET = '#39'P550'#39' INTO :OBLIGA_ESCALES;'
      ''
      '            IF (OBLIGA_ESCALES > 0) THEN'
      '            BEGIN'
      '                  TRACT_INI_PROCES = 0;'
      ''
      '                  /* Busquem el 1r tractament del proc'#233's */'
      '                  SELECT C_TRACTAMENT'
      '                  FROM   TRACTAMENTS'
      '                  WHERE  C_PROCES = NEW.C_PROCES'
      '                  ORDER  BY DATA_INGRES'
      '                  ROWS   1'
      '                  INTO  :TRACT_INI_PROCES;'
      ''
      
        '                  /* Si '#233's aquest, insertem les escales pendents' +
        ' */'
      
        '                  IF (NEW.C_TRACTAMENT = TRACT_INI_PROCES) THEN ' +
        'EXECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_I(NEW.C_TRACTAMENT);'
      '            END;'
      '      END'
      ''
      
        '      /* Si la prestaci'#243' passa a ser revisi'#243' (o ingr'#233's per revis' +
        'i'#243' o valoraci'#243' especialitzada) */'
      
        '      IF (((ERA_REVISIO = 0) AND (OLD.C_PRESTACIO <> '#39'6004'#39') AND' +
        ' (ES_REVISIO > 0))'
      
        '      OR  ((OLD.C_PRESTACIO <> '#39'6004'#39') AND (ERA_REVISIO = 0) AND' +
        ' (NEW.C_PRESTACIO = '#39'6004'#39'))) THEN'
      '      BEGIN'
      '            /* Traiem les escales pendents No TIR */'
      
        '            DELETE FROM ESCALESPENDENTS WHERE C_TRACTAMENT = NEW' +
        '.C_TRACTAMENT AND TIPUS = '#39'-'#39';'
      ''
      
        '            /* Primer passem totes les escales entrades a tipus ' +
        'S */'
      
        '            UPDATE ESCALESCAP SET TIPUS = '#39'S'#39' WHERE C_TRACTAMENT' +
        ' = NEW.C_TRACTAMENT AND TIPUS <> '#39'S'#39';'
      '               '
      
        '            /* I despr'#233's insertem les escales pendents correspon' +
        'ents */'
      
        '            EXECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_R(NEW.C_' +
        'TRACTAMENT);'
      '      END'
      ''
      
        '      /* Si canvia FI_PROCES, convertim escales entrades T <-> A' +
        ' i reviserm les pendents */  /* (COALESCE(OLD.C_PROCES,-1) <> CO' +
        'ALESCE(NEW.C_PROCES,-1)) */'
      
        '      IF ( (COALESCE(OLD.FI_PROCES,'#39' '#39') <> COALESCE(NEW.FI_PROCE' +
        'S,'#39' '#39'))'
      '      AND  (NEW.FI_PROCES <> OLD.FI_PROCES))'
      '      THEN BEGIN'
      '          /* Canviem les escales T <-> A */'
      
        '          IF      (NEW.FI_PROCES = '#39'S'#39') THEN BEGIN TIPUS_OLD = '#39 +
        'T'#39'; TIPUS_NEW = '#39'A'#39'; END;'
      
        '          ELSE IF (NEW.FI_PROCES = '#39'N'#39') THEN BEGIN TIPUS_OLD = '#39 +
        'A'#39'; TIPUS_NEW = '#39'T'#39'; END;'
      ''
      
        '          /* Es pot fer un UPDATE massiu de TIPUS_OLD per TIPUS_' +
        'NEW a ESCALESCAP canviant nom'#233's les maj'#250'scules que s'#243'n les oblig' +
        'at'#242'ries (=autom'#224'tiques) */'
      '          UPDATE ESCALESCAP'
      '          SET    TIPUS        = :TIPUS_NEW'
      '          WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '          AND    TIPUS        = :TIPUS_OLD'
      '          AND   (ANULAT <> '#39'D'#39') AND (ANULAT <> '#39'S'#39');'
      '          '
      
        '          EXECUTE PROCEDURE P_TRACTAMENTS_REVISAESCALESALTA(NEW.' +
        'C_TRACTAMENT);'
      '      END;'
      ''
      
        '      /* Si posen o canvien la (pre)alta d'#39'un proc'#233's rehabilitad' +
        'or i falten menys de 15 dies per la nova data'
      
        '          revisem les escales pendents a l'#39'alta (canviem tipus, ' +
        'eliminem o inserim segons correspongui) */'
      '      IF ( (NEW.C_PROCES IS NOT NULL)'
      
        '      AND  (OLD.C_PRESTACIO <> '#39'9999'#39')   /* que no vingui d'#39'un p' +
        'rovisional!! */'
      
        '      AND  (NEW.C_ESTATFAC <> 55)        /* i sempre i quan no e' +
        'stiguin anul'#183'lant l'#39'activitat */'
      
        '      AND  ((COALESCE(OLD.DATA_ALTA,OLD.DATA_PREALTA) <> COALESC' +
        'E(NEW.DATA_ALTA,NEW.DATA_PREALTA))'
      
        '             OR ((COALESCE(OLD.DATA_ALTA,OLD.DATA_PREALTA) IS NU' +
        'LL) AND COALESCE(NEW.DATA_ALTA,NEW.DATA_PREALTA) IS NOT NULL))'
      '           )'
      '      THEN BEGIN'
      
        '            EXECUTE PROCEDURE P_TRACTAMENTS_REVISAESCALESALTA(NE' +
        'W.C_TRACTAMENT);'
      '         '
      '            /* 1. Insertem les pendents a l'#39'alta *'
      
        '            EXECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_A(NEW.C_' +
        'TRACTAMENT);'
      ''
      '            IF      (NEW.FI_PROCES = '#39'S'#39') THEN TIPUS = '#39'A'#39';'
      '            ELSE IF (NEW.FI_PROCES = '#39'N'#39') THEN TIPUS = '#39'T'#39';'
      '                                      '
      
        '            IF      (NEW.DATA_ALTA    IS NOT NULL) THEN D = NEW.' +
        'DATA_ALTA;'
      
        '            ELSE IF (NEW.DATA_PREALTA IS NOT NULL) THEN D = NEW.' +
        'DATA_PREALTA;'
      '               '
      
        '            /* 2. Posem tipus T o A a les escales obligat'#242'ries a' +
        ' l'#39'alta, entrades a '#39'15'#39' dies de l'#39'alta i amb tipus C *'
      
        '            EXECUTE PROCEDURE P_ESCALESCAP_CANVIAESCALESALTA(NEW' +
        '.C_TRACTAMENT, :TIPUS, :D);'
      ''
      
        '            /* 3. Traiem d'#39'escales pendents les que hagin passat' +
        ' a ser de tipus T o A -'
      
        '                  Aix'#242' ho fem amb un Trigger After Update a les ' +
        'taules d'#39'ESCALES */'
      '      END'
      ''
      
        '      /* Si canvien la data d'#39'alta o prealta d'#39'un proc'#233's rehabil' +
        'itador: *'
      '      ELSE IF ( (NEW.C_PROCES IS NOT NULL)'
      
        '           AND  (OLD.C_PRESTACIO <> '#39'9999'#39')   /* que no vingui d' +
        #39'un provisional!! *'
      
        '           AND  (NEW.C_ESTATFAC <> 55)        /* i sempre i quan' +
        ' no estiguin anul'#183'lant l'#39'activitat *'
      
        '           AND ((NEW.DATA_ALTA IS NOT NULL) OR (NEW.DATA_PREALTA' +
        ' IS NOT NULL))'
      '           AND  ( (OLD.DATA_ALTA <> NEW.DATA_ALTA)'
      '                   OR'
      '                  (OLD.DATA_PREALTA <> NEW.DATA_PREALTA) ))'
      '      THEN BEGIN'
      
        '            EXECUTE PROCEDURE P_TRACTAMENTS_REVISAESCALESALTA(NE' +
        'W.C_TRACTAMENT);'
      ''
      ''
      '            /*IF      (NEW.FI_PROCES = '#39'S'#39') THEN TIPUS = '#39'A'#39';'
      '            ELSE IF (NEW.FI_PROCES = '#39'N'#39') THEN TIPUS = '#39'T'#39';'
      ''
      
        '            IF      (NEW.DATA_ALTA    <> OLD.DATA_ALTA   ) THEN ' +
        'D = NEW.DATA_ALTA;'
      
        '            ELSE IF (NEW.DATA_PREALTA <> OLD.DATA_PREALTA) THEN ' +
        'D = NEW.DATA_PREALTA;'
      ''
      
        '            /* 1. Posem tipus T o A a les escales obligat'#242'ries a' +
        ' l'#39'alta que queden m'#233's a prop de la nova data d'#39'alta o prealta, ' +
        'i que estiguin en el rang correcte'
      
        '                  Posem tipus C a les escales de tipus T o A que' +
        ' quedin massa lluny de la nova data d'#39'alta o prealta.*'
      
        '            EXECUTE PROCEDURE P_ESCALESCAP_CANVIAESCALESALTA(NEW' +
        '.C_TRACTAMENT, :TIPUS, :D);   */'
      ''
      
        '            /* 2. Traiem d'#39'escales pendents les que hagin passat' +
        ' a ser de tipus T o A.'
      
        '                  Insertem a escales pendents les que hagin deix' +
        'at de ser de tipus T o A per passar a ser de tipus C.'
      
        '                  Aix'#242' ho fem amb un Trigger After Update a les ' +
        'taules d'#39'ESCALES *'
      '      END  */'
      ''
      '      /* Si anul'#183'len la (pre)alta d'#39'un proc'#233's rehabilitador */'
      '      ELSE IF ( (NEW.C_PROCES IS NOT NULL)'
      
        '           AND  (COALESCE(OLD.DATA_ALTA,OLD.DATA_PREALTA) IS NOT' +
        ' NULL)'
      
        '           AND  (COALESCE(NEW.DATA_ALTA,NEW.DATA_PREALTA) IS    ' +
        ' NULL)'
      '               )'
      '      THEN BEGIN'
      '            /* Canviem el tipus de les escales A i T per C: */'
      '            UPDATE ESCALESCAP'
      '            SET    TIPUS = '#39'C'#39
      '            WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            AND   (Upper(TIPUS) = '#39'T'#39' OR Upper(TIPUS) = '#39'A'#39');'
      ''
      '            /* Traiem les escales pendents a l'#39'alta.'
      
        '               Ho fem despr'#233's de l'#39'update d'#39'EscalesCap pq aqt up' +
        'date dispara un trigger que inserta pendents, i aqu'#237' les esborre' +
        'm pq no ens interessen */'
      '            DELETE FROM ESCALESPENDENTS'
      '            WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            AND   (TIPUS = '#39'A'#39' OR TIPUS = '#39'T'#39');'
      '      END'
      ''
      '      /* Si passa a ser FI de PROC'#201'S: */'
      
        '      /* 22-3-2024 i falten menys de 15 dies per l'#39'alta/prealta ' +
        '*'
      
        '      ELSE IF ( (OLD.C_PROCES IS NOT NULL) AND (NEW.C_PROCES IS ' +
        'NOT NULL)'
      
        '           AND  ((OLD.DATA_ALTA IS NOT NULL) OR (OLD.DATA_PREALT' +
        'A IS NOT NULL))'
      
        '           AND  (OLD.FI_PROCES = '#39'N'#39') AND (NEW.FI_PROCES = '#39'S'#39') ' +
        ') THEN'
      '      BEGIN'
      
        '            /* Traiem les escales pendents de tipus T i insertem' +
        ' les de tipus A *'
      
        '            DELETE FROM ESCALESPENDENTS WHERE C_TRACTAMENT = NEW' +
        '.C_TRACTAMENT AND TIPUS = '#39'T'#39';'
      
        '            EXECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_A(NEW.C_' +
        'TRACTAMENT);  /* no inserta les q ja estan entrades */'
      ''
      
        '            /* Canviem les escales entrades de tipus T per tipus' +
        ' A.'
      
        '               Aix'#242' dispara un trigger que esborra les pendents ' +
        'de tipus A (pq ara passem T'#39's a A'#39's) *'
      
        '            UPDATE ESCALESCAP SET TIPUS = '#39'A'#39' WHERE C_TRACTAMENT' +
        ' = NEW.C_TRACTAMENT AND Upper(TIPUS) = '#39'T'#39' AND ANULAT <> '#39'S'#39' AND' +
        ' ANULAT <> '#39'D'#39';'
      '               '
      
        '            IF      (NEW.DATA_ALTA    IS NOT NULL) THEN D = NEW.' +
        'DATA_ALTA;'
      
        '            ELSE IF (NEW.DATA_PREALTA IS NOT NULL) THEN D = NEW.' +
        'DATA_PREALTA;'
      '               '
      
        '            /* Canviem les escales entrades de tipus C, posterio' +
        'rs a l'#39'alta, per tipus S *'
      '            UPDATE ESCALESCAP'
      '            SET    TIPUS = '#39'S'#39
      '            WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            AND    Upper(TIPUS) = '#39'C'#39
      '            AND    ANULAT <> '#39'S'#39' AND ANULAT <> '#39'D'#39
      '            AND    DATA > :D;'
      '               '
      '      END'
      ''
      '      /* Si deixa de ser FI de PROC'#201'S: *'
      
        '      /* 22-3-2024 i falten menys de 15 dies per l'#39'alta/prealta ' +
        '*'
      
        '      ELSE IF ( (OLD.C_PROCES IS NOT NULL) AND (NEW.C_PROCES IS ' +
        'NOT NULL)'
      
        '           AND  (((OLD.DATA_ALTA IS NOT NULL) AND (OLD.DATA_ALTA' +
        ' <= "TODAY" + 15)) OR ((OLD.DATA_PREALTA IS NOT NULL) AND (OLD.D' +
        'ATA_PREALTA <= "TODAY" + 15)))'
      
        '           AND  (OLD.FI_PROCES = '#39'S'#39') AND (NEW.FI_PROCES = '#39'N'#39') ' +
        ') THEN'
      '      BEGIN'
      
        '            /* Traiem les escales pendents de tipus A i insertem' +
        ' les de tipus T *'
      
        '            DELETE FROM ESCALESPENDENTS WHERE C_TRACTAMENT = NEW' +
        '.C_TRACTAMENT AND TIPUS = '#39'A'#39';'
      
        '            EXECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_A(NEW.C_' +
        'TRACTAMENT);  /* no inserta les q ja estan entrades */'
      ''
      
        '            /* Canviem les escales entrades de tipus A per tipus' +
        ' T.'
      
        '               Aix'#242' dispara un trigger que esborra les pendents ' +
        'de tipus T (pq ara passem A'#39's a T'#39's) *'
      
        '            UPDATE ESCALESCAP SET TIPUS = '#39'T'#39' WHERE C_TRACTAMENT' +
        ' = NEW.C_TRACTAMENT AND Upper(TIPUS) = '#39'A'#39' AND ANULAT <> '#39'S'#39' AND' +
        ' ANULAT <> '#39'D'#39';'
      '               '
      
        '            IF      (NEW.DATA_ALTA    IS NOT NULL) THEN D = NEW.' +
        'DATA_ALTA;'
      
        '            ELSE IF (NEW.DATA_PREALTA IS NOT NULL) THEN D = NEW.' +
        'DATA_PREALTA;'
      ''
      
        '            /* Canviem les escales entrades de tipus C, posterio' +
        'rs a l'#39'alta, per tipus S *'
      '            UPDATE ESCALESCAP'
      '            SET    TIPUS = '#39'C'#39
      '            WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            AND    Upper(TIPUS) = '#39'S'#39
      '            AND    ANULAT <> '#39'S'#39' AND ANULAT <> '#39'D'#39
      '            AND    DATA > :D;    *'
      '      END  */'
      ''
      ''
      '      /* ***************************************** */'
      '      /* *** DIAGN'#210'STIC NEUROL'#210'GIC DE FILIACI'#211' *** */'
      '      /* ***************************************** */'
      '         '
      
        '      /* Modifiquem el codi de diagn'#242'stic neurol'#242'gic de filiaci'#243 +
        ', notificant que '#233's l'#39#250'ltim */'
      '      IF  ((OLD.N_DiagnosticNeurologicIngres IS NULL)'
      '      AND (NEW.N_DiagnosticNeurologicIngres IS NOT NULL)'
      
        '      AND (F_LRTrim(NEW.N_DiagnosticNeurologicIngres) <> '#39#39')) TH' +
        'EN'
      '      BEGIN'
      '            UPDATE FILIACIO'
      
        '            SET    N_DIAGNOSTICNEUROLOGIC = NEW.N_DiagnosticNeur' +
        'ologicIngres'
      '            WHERE  NUM_HIST = NEW.C_HISTORIA;'
      '      END'
      ''
      '      IF  ((OLD.N_DiagnosticNeurologicAlta IS NULL)'
      '      AND (NEW.N_DiagnosticNeurologicAlta IS NOT NULL)'
      '      AND (F_LRTrim(NEW.N_DiagnosticNeurologicAlta) <> '#39#39')) THEN'
      '      BEGIN'
      '            UPDATE FILIACIO'
      
        '            SET    N_DIAGNOSTICNEUROLOGIC = NEW.N_DiagnosticNeur' +
        'ologicAlta'
      '            WHERE  NUM_HIST = NEW.C_HISTORIA;'
      '      END'
      ''
      ''
      '      /* ******************************************** */'
      '      /* *** DATA 1r i '#218'LTIM CONTACTE DE FILIACI'#211' *** */'
      '      /* ******************************************** */'
      ''
      '      /* Si canvia la data d'#39'ingr'#233's */'
      
        '      IF ((NEW.DATA_INGRES <> OLD.DATA_INGRES) AND (NEW.C_PRESTA' +
        'CIO <> '#39'0000'#39')) THEN'
      '      BEGIN'
      '          /* Busquem el 1r tractament */'
      
        '          SELECT MIN(DATA_INGRES) FROM TRACTAMENTS WHERE C_HISTO' +
        'RIA = NEW.C_HISTORIA AND C_TRACTAMENT <> NEW.C_TRACTAMENT AND C_' +
        'PRESTACIO <> '#39'0000'#39' INTO :DATA_CONTACTE;'
      
        '          /* Si la nova data d'#39'ingr'#233's '#233's anterior a la de qualse' +
        'vol altre tractament, ens la guardem com a data de 1r contacte *' +
        '/'
      
        '          IF (NEW.DATA_INGRES < DATA_CONTACTE) THEN DATA_CONTACT' +
        'E = NEW.DATA_INGRES;'
      ''
      
        '          /* Posem la data del 1r tractament a data_Contacte de ' +
        'filiacio (si la hist'#242'ria no t'#233' antics tractaments) */'
      '          UPDATE FILIACIO'
      '          SET    DATA_CONTACTE = :DATA_CONTACTE'
      '          WHERE  NUM_HIST = NEW.C_HISTORIA'
      '          AND    DATA_CONTACTE <> :DATA_CONTACTE'
      
        '          AND  ((ANTICSTRACTAMENTS IS NULL) OR (F_LRTrim(F_Left(' +
        'F_BlobAsPChar(ANTICSTRACTAMENTS), 50)) = '#39#39'));'
      ''
      '          /* Busquem l'#39#250'ltim tractament */'
      
        '          SELECT MAX(DATA_INGRES) FROM TRACTAMENTS WHERE C_HISTO' +
        'RIA = NEW.C_HISTORIA AND C_PRESTACIO <> '#39'0000'#39' INTO :ULTIM_CONTA' +
        'CTE;'
      ''
      
        '          /* Posem la data de l'#39#250'ltim tractament a data_UltimCon' +
        'tacte de filiacio */'
      '          UPDATE FILIACIO'
      '          SET    DATA_ULTIMCONTACTE = :ULTIM_CONTACTE'
      '          WHERE  NUM_HIST = NEW.C_HISTORIA'
      '          AND    DATA_ULTIMCONTACTE <> :ULTIM_CONTACTE;'
      ''
      '      END'
      '         '
      ''
      '      /* ********************** */'
      '      /* *** PLA TERAP'#200'UTIC *** */'
      '      /* ********************** */'
      ''
      
        '      /* En donar d'#39'alta un tractament ambulatori tanquem els pl' +
        'ans terap'#232'utics actius i/o caducats */'
      
        '      IF ((NEW.C_PRESTACIO = '#39'2014'#39') AND (OLD.DATA_ALTA IS NULL)' +
        ' AND (NEW.DATA_ALTA IS NOT NULL))'
      '      THEN  UPDATE SEGUIMENTCAP SET TANCAT = 1'
      
        '            WHERE C_HISTORIA = NEW.C_HISTORIA AND (TANCAT = 0 OR' +
        ' TANCAT = 2);'
      ''
      ''
      '      /* *********** */'
      '      /* *** NPC *** */'
      '      /* *********** */'
      '      '
      '      ESNPC=0;'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET='#39'P117'#39' AND C' +
        '_PRESTACIO=NEW.C_PRESTACIO INTO :ESNPC;'
      ''
      
        '      /* Si anul'#183'len una alta (treuen la data d'#39'alta) d'#39'un tract' +
        'ament amb activitat,'
      
        '         cal posar el tractament a les activitats del gimns acti' +
        'ves */'
      '      IF ((OLD.DATA_ALTA IS NOT NULL)'
      
        '      AND (NEW.DATA_ALTA IS NULL)                               ' +
        '       /* NEW.C_PRESTACIO = '#39'2023'#39' */'
      
        '      AND ((NEW.C_PRESTACIO = '#39'1004'#39') OR (NEW.C_PRESTACIO = '#39'201' +
        '4'#39') OR (ESNPC>0)))'
      '      THEN  UPDATE AGENDAPACIENT'
      '            SET C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            WHERE  C_HISTORIA = NEW.C_HISTORIA'
      '            AND   (DATAF IS NULL OR DATAF >= "TODAY")'
      
        '            AND   (C_TRACTAMENT IS NULL OR (C_TRACTAMENT=0)); /*' +
        ' OR C_TRACTAMENT <> NEW.C_TRACTAMENT); -  16.1.2017 */'
      ''
      ''
      '      /* **************************** */'
      '      /* *** NPC - Altes passades *** */'
      '      /* **************************** */'
      '      '
      
        '      /* En donar d'#39'alta una 2023 amb data anterior a avui, s'#39'ha' +
        'n de desvincular les activitats no finalitzades NPC */'
      
        '      IF ((ESNPC>0) AND (OLD.DATA_ALTA IS NULL) AND (NEW.DATA_AL' +
        'TA IS NOT NULL) AND (NEW.DATA_ALTA < "TODAY")) THEN'
      '      BEGIN'
      '          UPDATE AGENDAPACIENT SET C_TRACTAMENT=NULL'
      '          WHERE  C_HISTORIA   = NEW.C_HISTORIA'
      '          AND   (DATAF IS NULL OR DATAF >= "TODAY")'
      '          AND   (C_TRACTAMENT = NEW.C_TRACTAMENT);'
      '          '
      
        '          /* 12-1-2016: cal mirar si hi ha alguna altre prestaci' +
        #243' amb dret P117 activa per associar les activitats vivies */'
      '          SELECT T.C_TRACTAMENT FROM TRACTAMENTS T'
      
        '          JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO AN' +
        'D DP.C_DRET='#39'P117'#39
      
        '          WHERE T.C_HISTORIA=NEW.C_HISTORIA AND (T.DATA_ALTA IS ' +
        'NULL OR T.DATA_ALTA >= "TODAY")'
      '          ORDER BY T.DATA_INGRES'
      '          ROWS 1'
      '          INTO :TRACT_NPC;'
      '          '
      '          IF (TRACT_NPC IS NOT NULL) THEN'
      '          BEGIN'
      '               UPDATE AGENDAPACIENT SET C_TRACTAMENT=:TRACT_NPC'
      '               WHERE  C_HISTORIA=NEW.C_HISTORIA'
      '               AND   (DATAF IS NULL OR DATAF>="TODAY")'
      
        '               AND   (C_TRACTAMENT IS NULL OR (C_TRACTAMENT=0));' +
        ' /* OR C_TRACTAMENT<>:TRACT_NPC); -  16.1.2017 */'
      '          END'
      '      END'
      ''
      '      /* **************************************** */'
      '      /* *** PROC'#201'S NR - SEGUIMENT AMBULATORI *** */'
      '      /* **************************************** */'
      ''
      
        '      /* En posar o avan'#231'ar l'#39'alta d'#39'un ambulatori, eliminem les' +
        ' visites de seguiment programades posteriors a l'#39'alta */'
      
        '      IF ((NEW.C_PRESTACIO = "2014") AND (NEW.C_PROCES IS NOT NU' +
        'LL) AND (NEW.DATA_ALTA IS NOT NULL)'
      
        '      AND ((OLD.DATA_ALTA IS NULL) OR (NEW.DATA_ALTA < OLD.DATA_' +
        'ALTA)))'
      '      THEN  DELETE FROM ESPERA'
      '            WHERE C_PROCES = NEW.C_PROCES'
      '            AND   C_PRESTACIO = "2003"'
      '            AND   DATA_PREINGRES >= NEW.DATA_ALTA;'
      ''
      
        '      /* Si en insertar la 2014 el proc'#233's queda pendent d'#39'identi' +
        'ficar, no es generaran les visites de seguiment'
      
        '         Per aix'#242' les generem ara si identifiquen el proc'#233's i hi' +
        ' ha pauta ambulat'#242'ria */'
      
        '      IF ( ( (NEW.C_PRESTACIO = "2014") AND (OLD.C_PROCES IS NUL' +
        'L) AND (NEW.C_PROCES IS NOT NULL) )'
      ''
      
        '      /* I en anul'#183'lar o posposar l'#39'alta d'#39'un ambulatori amb Pro' +
        'c'#233'sNR, tornem a generar les visites de seguiment eliminades */'
      
        '      OR (  (NEW.C_PRESTACIO = "2014") AND (NEW.C_PROCES IS NOT ' +
        'NULL) AND (OLD.DATA_ALTA IS NOT NULL) AND'
      
        '           ((NEW.DATA_ALTA IS NULL) OR (NEW.DATA_ALTA > OLD.DATA' +
        '_ALTA)) ) ) THEN'
      ''
      '      BEGIN'
      
        '            /* Si t'#233' pauta NR, programem les visites de seguimen' +
        't fins a la prealta de la pauta */'
      
        '            SELECT DATA_PREALTA FROM PROCESNR_PAUTES WHERE C_PRO' +
        'CES = NEW.C_PROCES AND ESTAT = "V" INTO :DATA_PREALTA;'
      ''
      '            IF (DATA_PREALTA IS NOT NULL) THEN'
      '            BEGIN'
      
        '                  /* Busquem l'#39#250'ltima visita de seguiment no exc' +
        'losa (realitzada o programada) */'
      '                  SELECT DATA_PREINGRES'
      '                  FROM   ESPERA'
      '                  WHERE  C_PROCES = NEW.C_PROCES'
      '                  AND    C_PRESTACIO = "2003"'
      '                  AND    EXCLOS = "N"'
      '                  ORDER  BY DATA_PREINGRES DESC'
      '                  ROWS   1'
      '                  INTO  :VISITA2003;'
      ''
      
        '                  /* Si no trobem l'#39#250'ltima visita de seguiment, ' +
        'les generarem a partir de la data d'#39'ingr'#233's */'
      '                  IF (VISITA2003 IS NULL)'
      
        '                  THEN  SELECT DATA_INGRES FROM TRACTAMENTS WHER' +
        'E C_TRACTAMENT = NEW.C_TRACTAMENT INTO :VISITA2003;'
      ''
      '                  /* Dia de visita del metge a CE: */'
      
        '                  SELECT DIA FROM METGEPRESTA WHERE CODI = NEW.C' +
        '_COORDINADOR AND C_PRESTACIO = "2003" INTO :DIA;'
      
        '                  /* si no trobem el dia que li toca, posarem di' +
        'lluns */'
      '                  IF ((DIA = 0) OR (DIA IS NULL)) THEN DIA = 1;'
      ''
      
        '                  /* La 1a visita ser'#224' 4 setmanes despr'#233's de l'#39#250 +
        'ltima o de l'#39'ingr'#233's */'
      
        '                  VISITA2003 = VISITA2003 - F_DIADELASEMANA(VISI' +
        'TA2003) + DIA + 28;'
      '                  '
      '                  /* No generarem visites passades */'
      
        '                  WHILE (VISITA2003 <= "TODAY") DO VISITA2003 = ' +
        'VISITA2003 + 7;'
      ''
      '                  WHILE (VISITA2003 < DATA_PREALTA) DO'
      '                  BEGIN'
      
        '                        /* Si cau en festiu, mirem la setmana an' +
        'terior */'
      
        '                        SELECT COUNT(*) FROM FESTIUS WHERE DATA ' +
        '= :VISITA2003 INTO :ESFESTIU;'
      
        '                        IF (ESFESTIU > 0) THEN VISITA2003 = VISI' +
        'TA2003 - 7;'
      
        '                        /* Si tamb'#233' cau en festiu, mirem la seg'#252 +
        'ent, successivament */'
      
        '                        SELECT COUNT(*) FROM FESTIUS WHERE DATA ' +
        '= :VISITA2003 INTO :ESFESTIU;'
      '                        WHILE (ESFESTIU > 0) DO'
      '                        BEGIN'
      '                              VISITA2003 = VISITA2003 + 7;'
      
        '                              SELECT COUNT(*) FROM FESTIUS WHERE' +
        ' DATA = :VISITA2003 INTO :ESFESTIU;'
      '                        END'
      ''
      '                        /* Programem la visita de seguiment */'
      '                        IF (VISITA2003 < DATA_PREALTA)'
      
        '                        THEN  INSERT INTO ESPERA (C_ESPERA, C_HI' +
        'STORIA, C_PROCES, C_PRESTACIO, C_MOTIU, DATA_INCLUSIO, DATA_PREI' +
        'NGRES, HORA_PREINGRES,'
      
        '                                                  C_COORDINADOR,' +
        ' NOM, COGNOM1, COGNOM2, C_UNITAT, COMENTARIMETGE, C_ESTAT)'
      
        '                              SELECT GEN_ID(CONTALLISTAESPERA, 1' +
        '), NEW.C_HISTORIA, NEW.C_PROCES, "2003", 79, "TODAY", :VISITA200' +
        '3, "00:00",'
      
        '                                     NEW.C_COORDINADOR, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, F.UNITAT, "PROCES NR - AUTOM'#192'TICA", ' +
        '15'
      '                              FROM   FILIACIO F'
      
        '                              WHERE  F.NUM_HIST = NEW.C_HISTORIA' +
        ';'
      ''
      '                        VISITA2003 = VISITA2003 + 28;'
      '                  END'
      '            END'
      '      END'
      ''
      ''
      
        '      /* *******************************************************' +
        '**************** */'
      
        '      /* *** CANVI DE COORDINADOR   ->  INTERCONSULTES i INFORME' +
        'S AUTOM'#192'TICS *** */'
      
        '      /* *******************************************************' +
        '**************** */'
      ''
      '      IF (OLD.C_COORDINADOR <> NEW.C_COORDINADOR) THEN'
      '      BEGIN'
      
        '            /* Modifiquem el de les interconsultes creades autom' +
        #224'ticament en filiar */'
      ''
      '            /* Ingressos */'
      '            IF (NEW.C_PRESTACIO = '#39'1004'#39') THEN'
      '            BEGIN'
      '                  /* Interconsulta a urologia */'
      
        '                  IF ((ERA_INGRESECO > 0) AND (ES_INGRESECO > 0)' +
        ') THEN'
      '                  BEGIN'
      '                        UPDATE INTERCON'
      '                        SET    C_METGE1 = NEW.C_COORDINADOR'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_TIPUS = '#39'INTERCON'#39
      '                        AND    C_ESPECIAL = '#39'03'#39
      '                        AND    DIAG_INICIAL = '#39' Control ingr'#233's'#39
      '                        AND    C_METGE1 = OLD.C_COORDINADOR;'
      '                  END'
      '                    '
      '                  /* Conciliaci'#243' de medicaci'#243' */'
      '                  UPDATE INTERCON'
      '                  SET    C_METGE1 = NEW.C_COORDINADOR'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ESPECIAL = '#39'57'#39
      '                  AND    C_TIPUS = '#39'CONCILMED'#39
      '                  AND    C_METGE1 = OLD.C_COORDINADOR;'
      '                  '
      '                  /* Valoraci'#243' domicili EASE */'
      '                  UPDATE INTERCON'
      '                  SET    C_METGE1 = NEW.C_COORDINADOR'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ESPECIAL = '#39'33'#39
      '                  AND    C_TIPUS = '#39'EASE'#39
      '                  AND    DIAG_INICIAL = '#39'LM-TIR'#39
      '                  AND    C_METGE1 = OLD.C_COORDINADOR;'
      '            END'
      ''
      '            /* Revisions */'
      '            IF (NEW.C_PRESTACIO = '#39'2004'#39') THEN'
      '            BEGIN'
      '                  /* Ecografia */'
      '                  UPDATE INTERCON'
      '                  SET    C_METGE1 = NEW.C_COORDINADOR'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ESPECIAL = '#39'03'#39
      '                  AND    C_TIPUS = '#39'ECOS'#39
      '                  AND    C_METGE1 = OLD.C_COORDINADOR;'
      '           END'
      '           '
      
        '           /* Modifiquem els informes generats autom'#224'ticament qu' +
        'e estiguin en curs */'
      '           UPDATE INFORMES'
      '           SET    C_USUARI = NEW.C_COORDINADOR'
      '           WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '           AND    C_ESTAT < 6'
      
        '           AND    C_TIPUS IN (SELECT C_TIPUS FROM INFORMES_TIPUS' +
        ' WHERE SOLICITABLE = '#39'A'#39')'
      '           AND    C_USUARI = OLD.C_COORDINADOR;'
      '           '
      '      END'
      ''
      ''
      
        '      /* Si passa a ser un ingr'#233's, generem la interconsulta CONC' +
        'ILMED */'
      
        '      IF ((OLD.C_PRESTACIO <> '#39'1004'#39') AND (OLD.C_PRESTACIO <> '#39'9' +
        '999'#39') AND (NEW.C_PRESTACIO = '#39'1004'#39')) THEN'
      '      BEGIN'
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      
        '            SOLICITA = '#39'Prego valoraci'#243' de la medicaci'#243' una vega' +
        'da pautada, '#39' ||'
      
        '                       '#39'tenint en compte els apartats "Medicaci'#243 +
        ' habitual" i "Medicaci'#243' a l'#180'ingr'#233's" de l'#180'ECB.'#39' || F_NLine();'
      ''
      '            INSERT INTO INTERCON'
      '            (     C_Intercon,'
      '                  C_Historia,'
      '                  C_Tractament,'
      '                  C_Especial,'
      '                  C_Tipus,'
      '                  Urgent,'
      '                  Data1,'
      '                  C_Metge1,'
      '                  Solicita,'
      '                  Estat'
      '            )'
      '            VALUES'
      '            (    :C_INTERCON,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_TRACTAMENT,'
      '                  "57",    /* especialitat Farm'#224'cia */'
      '                  "CONCILMED",'
      '                  "N",'
      '                  "TODAY",'
      '                  NEW.C_COORDINADOR,'
      '                  F_StrBlob(:SOLICITA),'
      '                  16'
      '            );'
      ''
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  C_Intercon,'
      '                  Estat_Intercon'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                  NEW.C_TRACTAMENT,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_PRESTACIO,'
      '                  NEW.DATA_INGRES,'
      '                  NEW.C_COORDINADOR,'
      '                  "NOW",'
      '                  NEW.C_COORDINADOR,'
      '                  :C_GRUP,'
      '                  :SOLICITA,'
      '                  :C_INTERCON,'
      '                  16'
      '            );'
      '      END'
      '      '
      ''
      
        '      /* Si passa a ser un ingr'#233's amb ECO i no ho era, i fa meny' +
        's de 8 dies de l'#39'ingr'#233's, generem la interconsulta ECO */'
      
        '      IF  ( ((OLD.C_PRESTACIO <> '#39'1004'#39') OR  (ERA_INGRESECO = 0)' +
        ')'
      
        '      AND   ((NEW.C_PRESTACIO  = '#39'1004'#39') AND (ES_INGRESECO  > 0)' +
        ')'
      '      AND    (NEW.DATA_INGRES > "TODAY" - 7) )'
      '      THEN BEGIN'
      ''
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      '              '
      
        '            SELECT F_MID(f_BlobAsPChar(ANALITRMP), 0, 1) FROM CO' +
        'NFIG INTO :MARCA;'
      ''
      
        '            SOLICITA = MARCA || '#39' Antecedents: -'#39' || F_NLine() |' +
        '|'
      
        '/*                       MARCA || '#39' Motiu: Ecografia abdominal'#39' ' +
        '|| F_NLine() ||   Gener 2014  es creen com a INTERCON A Urologia' +
        ' en comptes de com a ECOS */'
      
        '                       MARCA || '#39' Motiu: Consulta a Urologia per' +
        ' ingr'#233's'#39' || F_NLine() ||'
      '                       MARCA || '#39' Observacions: -'#39';'
      ''
      '            INSERT INTO INTERCON'
      '                  (     C_Intercon,'
      '                        C_Historia,'
      '                        C_Tractament,'
      '                        C_Especial,'
      '                        C_Tipus,'
      '                        URGENT,'
      '                        Data1,'
      '                        C_Metge1,'
      '                        Diag_Inicial,'
      '                        Solicita,'
      '                        Estat,'
      '                        InformeRX'
      '                  )'
      '            VALUES'
      '                  (     :C_INTERCON,'
      '                        NEW.C_HISTORIA,'
      '                        NEW.C_TRACTAMENT,'
      '                        "03",'
      
        '                        "INTERCON",      /* "ECOS",   Gener 2014' +
        '  es creen com a INTERCON A Urologia en comptes de com a ECOS */'
      '                        "N",'
      '                        NEW.DATA_INGRES,'
      '                        NEW.C_COORDINADOR,'
      '                        " Control ingr'#233's",'
      '                        F_StrBlob(:SOLICITA),'
      
        '                        1,              /* 12,        Gener 2014' +
        '  es creen com a INTERCON A Urologia en comptes de com a ECOS */'
      '                        '#39'N'#39
      '                  );'
      ''
      ''
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            INSERT INTO HISTORIA'
      '                  (     C_Anotacio,'
      '                        C_Tractament,'
      '                        C_Historia,'
      '                        C_Prestacio,'
      '                        Data_Ingres,'
      '                        C_Coordinador,'
      '                        Data,'
      '                        C_Usuari,'
      '                        C_Grup,'
      '                        Anotacio,'
      '                        C_Intercon,'
      '                        Estat_Intercon'
      '                  )'
      '            VALUES'
      '                  (     GEN_ID(CONTAHISTORIA,1),'
      '                        NEW.C_TRACTAMENT,'
      '                        NEW.C_HISTORIA,'
      '                        NEW.C_PRESTACIO,'
      '                        NEW.DATA_INGRES,'
      '                        NEW.C_COORDINADOR,'
      '                        NEW.DATA_INGRES,'
      '                        NEW.C_COORDINADOR,'
      '                        :C_GRUP,'
      '                        :SOLICITA,'
      '                        :C_INTERCON,'
      
        '                        1               /* 12         Gener 2014' +
        '  es creen com a INTERCON A Urologia en comptes de com a ECOS */'
      '                  );'
      '      END'
      ''
      ''
      
        '      /* AGOST 2019: deixem de generar autom'#224'ticament les interc' +
        'onsultes a EASE */'
      
        '      /* Si processen un provisional que passa a ser un ingr'#233's a' +
        'mb motiu TIR de la unitat (administrativa) de lesi'#243' medul'#183'lar'
      
        '         Si a un ingr'#233's li canvien el motiu i/o la unitat i pass' +
        'a a ser 101 i 1, respectivament */'
      '      /* -> generem la interconsulta A EASE'
      
        '      IF (((OLD.C_PRESTACIO = '#39'9999'#39') AND (NEW.C_PRESTACIO = '#39'10' +
        '04'#39') AND (NEW.C_MOTIU = '#39'101'#39') AND (UNITAT = 1))'
      
        '      OR  ((NEW.C_PRESTACIO = '#39'1004'#39') AND (UNITAT  = 1) AND ((OL' +
        'D.C_MOTIU <> NEW.C_MOTIU) AND (NEW.C_MOTIU = '#39'101'#39'))'
      '          )'
      '         ) THEN'
      '      BEGIN'
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      '            SOLICITA = '#39'Valoraci'#243' del domicili '#39' || F_NLine();'
      ''
      '            INSERT INTO INTERCON'
      '            (     C_Intercon,'
      '                  C_Historia,'
      '                  C_Tractament,'
      '                  C_Especial,'
      '                  C_Tipus,'
      '                  Urgent,'
      '                  Data1,'
      '                  C_Metge1,'
      '                  Diag_Inicial,'
      '                  Solicita,'
      '                  Estat'
      '            )'
      '            VALUES'
      '            (    :C_INTERCON,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_TRACTAMENT,'
      '                  "33",    /* especialitat EASE'
      '                  "EASE",'
      '                  "N",'
      '                  "TODAY",'
      '                  NEW.C_COORDINADOR,'
      '                  "LM-TIR",'
      '                  F_StrBlob(:SOLICITA),'
      '                  1'
      '            );'
      ''
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  C_Intercon,'
      '                  Estat_Intercon'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                  NEW.C_TRACTAMENT,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_PRESTACIO,'
      '                  NEW.DATA_INGRES,'
      '                  NEW.C_COORDINADOR,'
      '                  "NOW",'
      '                  NEW.C_COORDINADOR,'
      '                  :C_GRUP,'
      '                  :SOLICITA,'
      '                  :C_INTERCON,'
      '                  1'
      '            );'
      '      END;'
      '      */'
      ''
      '      /* ********************** */'
      '      /* *** CANVIS DE LLIT *** */'
      '      /* ********************** */'
      ''
      
        '      /* Si canvien el llit entre les 9h  i les 13h, ho registre' +
        'm per informar-ne Farm'#224'cia */'
      '      /* 12-01-2016: es treu filtre horari */'
      
        '      IF ((OLD.C_LLIT <> NEW.C_LLIT)) /*AND (F_SoloHora("NOW") >' +
        '= 9) AND (F_SoloHora("NOW") <= 13.3))*/ THEN'
      '      BEGIN'
      
        '            INSERT INTO LOGCANVISLLIT (ID, C_HISTORIA, LLIT_ANTI' +
        'C, LLIT_NOU, DATA)'
      
        '            VALUES (GEN_ID(G_CANVISLLIT, 1), NEW.C_HISTORIA, OLD' +
        '.C_LLIT, NEW.C_LLIT, '#39'NOW'#39');'
      '      END'
      ''
      ''
      '      /* ******************************************** */'
      '      /* *** CANVIS DE MOTIU D'#39'INGR'#201'S I PRESTACI'#211' *** */'
      '      /* ******************************************** */'
      ''
      
        '      IF ((OLD.C_MOTIU <> NEW.C_MOTIU) OR (OLD.C_PRESTACIO <> NE' +
        'W.C_PRESTACIO)) THEN'
      '      BEGIN'
      
        '            /* Ho registrem a un log per controlar diagn'#242'stics a' +
        'utom'#224'tics i tipus d'#39'escales */'
      '            M1 = NULL; M2 = NULL; P1 = NULL; P2 = NULL;'
      '               '
      '            IF (OLD.C_MOTIU <> NEW.C_MOTIU) THEN'
      '            BEGIN'
      '                  M1 = OLD.C_MOTIU;'
      '                  M2 = NEW.C_MOTIU;'
      '            END'
      '            IF (OLD.C_PRESTACIO <> NEW.C_PRESTACIO) THEN'
      '            BEGIN'
      '                  P1 = OLD.C_PRESTACIO;'
      '                  P2 = NEW.C_PRESTACIO;'
      '            END'
      ''
      
        '            INSERT INTO LOGMOTIUS (     ID,     C_TRACTAMENT, MO' +
        'TIU1, MOTIU2, PRESTA1, PRESTA2,  DATA)'
      
        '            VALUES (Gen_ID(G_LOGMOTIUS, 1), NEW.C_TRACTAMENT,   ' +
        ' :M1,    :M2,     :P1,     :P2, "NOW");'
      '      END'
      '      '
      ''
      '      /* ********************** */'
      
        '      /* *** OM AMBULATORIS *** */   /* Si canvia la data d'#39'ingr' +
        #233's d'#39'un ambulatori actiu,'
      
        '      /* ********************** */   /* mirem si hem de posar el' +
        ' tractament a "pendent de bolcar OM"'
      ''
      
        '      IF ((OLD.DATA_INGRES <> NEW.DATA_INGRES) AND (NEW.C_PRESTA' +
        'CIO = '#39'2014'#39') AND (NEW.DATA_ALTA IS NULL)) THEN'
      '      BEGIN'
      ''
      '            /* Mirem si el tractament est'#224' a OM_AMBULATORIS'
      '            HI_ES = 0;'
      
        '            SELECT COUNT(*) FROM OM_AMBULATORIS WHERE C_TRACTAME' +
        'NT = NEW.C_TRACTAMENT INTO :HI_ES;'
      ''
      '            /* Busquem l'#39'ingr'#233's o ambulatori anterior'
      '            C_TRACT_ANT = 0;'
      '            DATA_ALTA = NULL;'
      ''
      '            SELECT C_TRACTAMENT, DATA_ALTA'
      '            FROM   TRACTAMENTS'
      '            WHERE  C_HISTORIA = NEW.C_HISTORIA'
      '            AND   (C_PRESTACIO = '#39'1004'#39' OR C_PRESTACIO = '#39'2014'#39')'
      '            AND    C_TRACTAMENT <> NEW.C_TRACTAMENT'
      '            ORDER  BY DATA_ALTA DESC'
      '            ROWS   1'
      '            INTO  :C_TRACT_ANT, DATA_ALTA;'
      ''
      '            IF (DATA_ALTA IS NOT NULL) THEN'
      '            BEGIN'
      '                  /* Si el registre no est'#224' a OM_AMBULATORIS,'
      
        '                     han passat menys de 7 dies des de l'#39#250'ltima ' +
        'alta de 1004 o 2014'
      
        '                     i l'#39#250'ltima prestaci'#243' t'#233' ordres m'#232'diques cad' +
        'ucades a l'#39'alta,'
      '                     insertem el tractament a OM_AMBULATORIS'
      
        '                  IF ((HI_ES = 0)  AND (NEW.DATA_INGRES - :DATA_' +
        'ALTA <= 7)) THEN'
      '                  BEGIN'
      '                           SELECT COUNT(*)'
      '                           FROM   ORDRESMEDIQUES'
      '                           WHERE  C_TRACTAMENT = :C_TRACT_ANT'
      '                           AND    C_ESTAT = '#39'C'#39
      
        '                           AND    DATA_CADUCITAT = :DATA_ALTA + ' +
        '23/24 + 55/1440'
      '                           INTO  :TENIA_OM;'
      ''
      
        '                           IF (TENIA_OM > 0) THEN  INSERT INTO O' +
        'M_AMBULATORIS (C_TRACTAMENT, C_TRACTAMENT_ANT, ESTAT)'
      
        '                                                   VALUES (NEW.C' +
        '_TRACTAMENT, :C_TRACT_ANT, 0);'
      '                  END'
      ''
      '                  /* Si el registre est'#224' a OM_AMBULATORIS,'
      
        '                     amb el canvi de data deixa de complir-se la' +
        ' condici'#243
      
        '                     i les ordres m'#232'diques encara estan pendents' +
        ' de bolcar,'
      '                     el traiem de la taula'
      
        '                  IF ((HI_ES > 0) AND (NEW.DATA_INGRES - :DATA_A' +
        'LTA > 7)) THEN'
      '                  BEGIN'
      
        '                      DELETE FROM OM_AMBULATORIS WHERE C_TRACTAM' +
        'ENT = NEW.C_TRACTAMENT AND ESTAT <> 1;'
      '                  END'
      '            END'
      ''
      '      END     */'
      ''
      '      /*'
      '      /* *************************************'
      
        '      /* *** INGRESSOS - CENTRE FACTURACI'#211' ***    /* si es canvi' +
        'a el centre de facturacio,'
      
        '      /* *************************************    /* canviem l'#39'e' +
        'stat de facturaci'#243' de les intervencions corresponents'
      ''
      '      /* Si passa a ser ingr'#233's i no '#233's 04  ->  li posem estat 10'
      
        '      IF ((OLD.C_PRESTACIO <> '#39'1004'#39') AND (NEW.C_PRESTACIO = '#39'10' +
        '04'#39')) THEN'
      '      BEGIN'
      
        '          /* Si no era ingr'#233's, ten'#237'em c_estatfac = 50 independen' +
        'tment del centre de facturaci'#243
      '          IF (NEW.C_CENTREFAC <> '#39'04'#39') THEN'
      '          BEGIN'
      '              UPDATE BQUIRURGIC'
      
        '              SET    C_ESTATFAC = 10, C_CENTREFAC = NEW.C_CENTRE' +
        'FAC, C_CLIENT = NEW.C_CLIENT, C_DELEGACIO = NEW.C_DELEGACIO'
      '              WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '              AND    C_ESTATFAC = 50;'
      '          END;'
      
        '          /* Si '#233's 04 no cal fer res ja que segueix sent 50-No f' +
        'acturable'
      '      END;'
      ''
      '      /* Si deixa de ser ingr'#233's  ->  li posem estat 50'
      
        '      IF ((OLD.C_PRESTACIO = '#39'1004'#39') AND (NEW.C_PRESTACIO <> '#39'10' +
        '04'#39')) THEN'
      '      BEGIN'
      
        '          /* Nomes cal canviar els que eren <> '#39'04'#39' ja que els q' +
        'ue eren '#39'04'#39' ja tenien estatfac = 50'
      '          IF (OLD.C_CENTREFAC <> '#39'04'#39') THEN'
      '          BEGIN'
      '              UPDATE BQUIRURGIC'
      
        '              SET    C_ESTATFAC = 50, C_CENTREFAC = NEW.C_CENTRE' +
        'FAC, C_CLIENT = NEW.C_CLIENT, C_DELEGACIO = NEW.C_DELEGACIO'
      '              WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '              AND    C_ESTATFAC = 10;'
      '          END;'
      '      END;'
      '      '
      '      /* Si segueix sent ingr'#233's per'#242' canvia el centrefac'
      
        '      IF ((OLD.C_PRESTACIO = '#39'1004'#39') AND (NEW.C_PRESTACIO = '#39'100' +
        '4'#39')) THEN'
      '      BEGIN'
      
        '          /* si passa a ser privat (m'#250'tua o particular) ->  li p' +
        'osem estat 10'
      
        '          IF (((OLD.C_CENTREFAC = '#39'04'#39') OR (OLD.C_CENTREFAC IS N' +
        'ULL))'
      
        '          AND (NEW.C_CENTREFAC <> '#39'04'#39') AND (NEW.C_CENTREFAC IS ' +
        'NOT NULL)) THEN'
      '          BEGIN'
      '              UPDATE BQUIRURGIC'
      
        '              SET    C_ESTATFAC = 10, C_CENTREFAC = NEW.C_CENTRE' +
        'FAC, C_CLIENT = NEW.C_CLIENT, C_DELEGACIO = NEW.C_DELEGACIO'
      '              WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '              AND    C_ESTATFAC = 50;'
      '          END;'
      '          '
      
        '          /* si deixa de ser privat (m'#250'tua o particular) ->  li ' +
        'posem estat 50'
      
        '          IF ((OLD.C_CENTREFAC <> '#39'04'#39') AND (OLD.C_CENTREFAC IS ' +
        'NOT NULL)'
      
        '          AND ((NEW.C_CENTREFAC = '#39'04'#39') OR (NEW.C_CENTREFAC IS N' +
        'ULL))) THEN'
      '          BEGIN'
      '              UPDATE BQUIRURGIC'
      
        '              SET    C_ESTATFAC = 50, C_CENTREFAC = NEW.C_CENTRE' +
        'FAC, C_CLIENT = NEW.C_CLIENT, C_DELEGACIO = NEW.C_DELEGACIO'
      '              WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '              AND    C_ESTATFAC = 10;'
      '          END;'
      '          '
      ''
      
        '          /* Si canvia de centre de facturaci'#243', client o delegac' +
        'i'#243' tamb'#233' s'#39'ha d'#39'actualitzar'
      
        '          IF ((OLD.C_CENTREFAC <> NEW.C_CENTREFAC) OR (OLD.C_CLI' +
        'ENT<>NEW.C_CLIENT) OR (OLD.C_DELEGACIO<>NEW.C_DELEGACIO)) THEN'
      '          BEGIN'
      '              UPDATE BQUIRURGIC'
      
        '              SET    C_CENTREFAC = NEW.C_CENTREFAC, C_CLIENT = N' +
        'EW.C_CLIENT, C_DELEGACIO = NEW.C_DELEGACIO'
      '              WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '              AND    C_ESTATFAC <> 80;'
      '          END;'
      '          '
      '      END;'
      '      */'
      '      '
      '      /* ****************************** */'
      '      /* *** GNPT - SESSIONSPERIODE *** */'
      '      /* ****************************** */'
      ''
      
        '      /* Si s 1004 o 2014 i se li informa el C_LOGOPEDA/C_PSICOL' +
        'EG cal insertar registre a SESSIONSPERIODE */'
      
        '      IF (((NEW.C_PRESTACIO = '#39'1004'#39') OR (NEW.C_PRESTACIO = '#39'201' +
        '4'#39') OR (NEW.C_PRESTACIO = '#39'2008'#39'))   AND'
      
        '           ( ((OLD.C_LOGOPEDA IS NULL) AND (NEW.C_LOGOPEDA IS NO' +
        'T NULL)) OR'
      
        '             ((OLD.C_PSICOLEG IS NULL) AND (NEW.C_PSICOLEG IS NO' +
        'T NULL))'
      '           ))'
      '      THEN BEGIN'
      '          /* No insertar si ja est'#224' a SESSIONSPERIODE */'
      
        '          SELECT COUNT(*) FROM SESSIONSPERIODE WHERE C_TRACTAMEN' +
        'T=NEW.C_TRACTAMENT INTO :GNPT_HIES;'
      '          IF (GNPT_HIES IS NULL) THEN GNPT_HIES=0;'
      '          IF (GNPT_HIES = 0) THEN'
      '          BEGIN'
      
        '              /* Si t'#233' un perode no finalitzat arrossegar DATA_I' +
        'NICI i finalitzar-lo */'
      
        '              SELECT DATA_INICI, C_TRACTAMENT FROM SESSIONSPERIO' +
        'DE WHERE C_HISTORIA=NEW.C_HISTORIA AND DATA_FI IS NULL AND C_TRA' +
        'CTAMENT<NEW.C_TRACTAMENT'
      '              INTO :DATA_INICI_GNPT, :TRACT_GNPT;'
      ''
      '              IF (TRACT_GNPT IS NOT NULL) THEN'
      '              BEGIN'
      
        '                  INSERT INTO SESSIONSPERIODE(C_TRACTAMENT,C_HIS' +
        'TORIA,DATA_INICI) VALUES(NEW.C_TRACTAMENT,NEW.C_HISTORIA,:DATA_I' +
        'NICI_GNPT);'
      
        '                  UPDATE SESSIONSPERIODE SET DATA_FI="NOW", DATA' +
        '_DATAFI="NOW" WHERE C_TRACTAMENT=:TRACT_GNPT;'
      '              END'
      
        '              ELSE INSERT INTO SESSIONSPERIODE(C_TRACTAMENT,C_HI' +
        'STORIA,DATA_INICI) VALUES(NEW.C_TRACTAMENT,NEW.C_HISTORIA,NEW.DA' +
        'TA_INGRES);'
      '          END'
      '      END'
      ''
      '      /* *********************************** */'
      '      /* *** CANVIS CENTRE DE FACTURACIO *** */'
      '      /* *********************************** */'
      
        '      /* Si hi ha un canvi de centre de facturaci'#243' registrem l'#39'a' +
        'ntic a LOGCF'
      '      IF (NEW.C_CENTREFAC <> OLD.C_CENTREFAC) THEN'
      '      BEGIN'
      
        '          SELECT DATA_FI FROM LOGCF WHERE C_TRACTAMENT = OLD.C_T' +
        'RACTAMENT ORDER BY DATA_INICI DESC ROWS 1 INTO :DATA_INICI;'
      ''
      
        '          IF (DATA_INICI IS NULL)        THEN DATA_INICI = OLD.D' +
        'ATA_INGRES;'
      
        '          ELSE IF (DATA_INICI < "TODAY") THEN DATA_INICI = DATA_' +
        'INICI + 1;'
      ''
      
        '          /* Si es fan diferents canvis de CF el mateix dia, nom' +
        #233's conservem l'#39#250'ltim (=> fem UPDATE)'
      '          IF (DATA_INICI < "TODAY") THEN'
      '          BEGIN'
      
        '             INSERT INTO LOGCF (C_TRACTAMENT, DATA_INICI, DATA_F' +
        'I, C_CENTREFAC, DATA_REGISTRE)'
      
        '             VALUES (OLD.C_TRACTAMENT, :DATA_INICI, "TODAY", OLD' +
        '.C_CENTREFAC, "NOW");'
      '          END'
      '          ELSE BEGIN'
      '             UPDATE LOGCF SET C_CENTREFAC = OLD.C_CENTREFAC'
      
        '             WHERE  C_TRACTAMENT = OLD.C_TRACTAMENT AND DATA_INI' +
        'CI = "TODAY";'
      '          END'
      '      END'
      '      */'
      ''
      '      /* *********************************** */'
      '      /* *** 2008 - VISITES DE SEGUIMENT *** */'
      '      /* *********************************** */'
      ''
      
        '      /* En donar d'#39'alta un tractament infantil excloure les vis' +
        'ites de seguiment pendents */'
      
        '      IF ((NEW.C_PRESTACIO = '#39'2008'#39') AND (OLD.DATA_ALTA IS NULL)' +
        ' AND (NEW.DATA_ALTA IS NOT NULL))'
      
        '      THEN  UPDATE ESPERA SET EXCLOS = '#39'S'#39', DATA_EXCLUSIO = "NOW' +
        '", MOTIUEXCLUSIO = '#39'ALTA TRACTAMENT'#39
      
        '            WHERE C_HISTORIA = NEW.C_HISTORIA AND DATA_PREINGRES' +
        ' >= "TODAY"'
      
        '            AND C_PRESTACIO='#39'2003'#39'            AND C_ESTAT BETWEE' +
        'N 10 AND 30;'
      '            '
      
        '      /* Si es cancel'#183'la l'#39'alta, tornar a deixar les visites de ' +
        'seguiment pendents        */'
      
        '      IF ((NEW.C_PRESTACIO = '#39'2008'#39') AND (OLD.DATA_ALTA IS NOT N' +
        'ULL) AND (NEW.DATA_ALTA IS NULL))'
      
        '      THEN  UPDATE ESPERA SET EXCLOS = '#39'N'#39', DATA_EXCLUSIO = NULL' +
        ', MOTIUEXCLUSIO = NULL'
      
        '            WHERE C_HISTORIA = NEW.C_HISTORIA AND EXCLOS = '#39'S'#39' A' +
        'ND MOTIUEXCLUSIO = '#39'ALTA TRACTAMENT'#39
      
        '            AND C_PRESTACIO='#39'2003'#39'            AND C_ESTAT BETWEE' +
        'N 10 AND 30;'
      ''
      ''
      '      /* ****************************** */'
      '      /* ***  INGRESSOS D'#39'ANDORRA   *** */'
      '      /* ****************************** */'
      ''
      
        '      /* Si passa a 1004 i el pacient '#233's d'#39'Andorra, l'#39'insertem a' +
        ' INGRESANDORRA, si no hi '#233's ja */'
      
        '      IF ((OLD.C_PRESTACIO <> NEW.C_PRESTACIO) AND (NEW.C_PRESTA' +
        'CIO = '#39'1004'#39')) THEN'
      '      BEGIN'
      
        '          SELECT PAIS FROM FILIACIO WHERE NUM_HIST = NEW.C_HISTO' +
        'RIA INTO :C_PAIS;'
      ''
      '          IF (C_PAIS = '#39'376'#39') THEN'
      '          BEGIN'
      
        '              SELECT COUNT(*) FROM IngresAndorra WHERE C_HISTORI' +
        'A=NEW.C_HISTORIA AND C_TRACTAMENT=NEW.C_TRACTAMENT INTO :COMPTA;'
      ''
      '              IF (COMPTA = 0) THEN'
      '              BEGIN'
      
        '                  INSERT INTO IngresAndorra(C_HISTORIA, C_TRACTA' +
        'MENT) VALUES(NEW.C_HISTORIA, NEW.C_TRACTAMENT);'
      '              END'
      '          END'
      '      END'
      '   '
      
        '      /* Si deixa de ser 1004 i hi ha registre a INGRESANDORRA a' +
        'mb DATA_AVIS nul'#183'la, l'#39'esborrem */'
      
        '      IF ((OLD.C_PRESTACIO <> NEW.C_PRESTACIO) AND (OLD.C_PRESTA' +
        'CIO = '#39'1004'#39')) THEN'
      '      BEGIN'
      
        '          SELECT COUNT(*) FROM IngresAndorra WHERE C_HISTORIA=NE' +
        'W.C_HISTORIA AND C_TRACTAMENT=NEW.C_TRACTAMENT AND DATA_AVIS IS ' +
        'NULL INTO :COMPTA;'
      '       '
      '          IF (COMPTA > 0) THEN'
      '          BEGIN'
      
        '              DELETE FROM IngresAndorra WHERE C_HISTORIA=NEW.C_H' +
        'ISTORIA AND C_TRACTAMENT=NEW.C_TRACTAMENT AND DATA_AVIS IS NULL;'
      '          END'
      '      END'
      '   '
      '      /******************/'
      '      /* *** UNESPA *** */'
      '      /******************/'
      ''
      
        '      IF ((OLD.C_PRESTACIO <> NEW.C_PRESTACIO) OR (OLD.C_CLIENT ' +
        '<> NEW.C_CLIENT) OR (OLD.DATA_SINISTRE <> NEW.DATA_SINISTRE)) TH' +
        'EN'
      '      BEGIN'
      '          TEDRETPRESTA = 0;'
      ''
      '          SELECT COUNT(*)'
      '          FROM   DRETSPRESTA'
      '          WHERE  C_PRESTACIO = NEW.C_PRESTACIO'
      '          AND    C_DRET = "P172"'
      '          INTO  :TEDRETPRESTA;'
      ''
      
        '          /* Per prestacions amb dret P172, client UNESPA i data' +
        ' lesi'#243' >= 1.7.2021, insertem registre a UNESPA_SESSIONS */'
      '          IF (TEDRETPRESTA <> 0) THEN'
      '          BEGIN'
      
        '                SELECT DATA FROM UNESPADATES WHERE ID = "TALL_20' +
        '21" INTO :UNESPA_TALL21;'
      
        '                IF (UNESPA_TALL21 IS NULL) THEN UNESPA_TALL21 = ' +
        '0;'
      ''
      '                ERA_UNESPA = '#39'N'#39';'
      
        '                SELECT ES_UNESPA FROM CLIENTS WHERE C_CENTREFAC ' +
        '= OLD.C_CENTREFAC AND C_CLIENT = OLD.C_CLIENT INTO :ERA_UNESPA;'
      '                IF (ERA_UNESPA IS NULL) THEN ERA_UNESPA = '#39'N'#39';'
      ''
      '                ES_UNESPA = '#39'N'#39';'
      
        '                SELECT ES_UNESPA FROM CLIENTS WHERE C_CENTREFAC ' +
        '= NEW.C_CENTREFAC AND C_CLIENT = NEW.C_CLIENT INTO :ES_UNESPA;'
      '                IF (ES_UNESPA IS NULL) THEN ES_UNESPA = '#39'N'#39';'
      ''
      
        '                IF ((ERA_UNESPA <> ES_UNESPA) AND (ES_UNESPA = '#39 +
        'S'#39')) THEN'
      '                BEGIN'
      
        '                      IF ((NEW.DATA_SINISTRE IS NOT NULL) AND (N' +
        'EW.DATA_SINISTRE >= UNESPA_TALL21) AND'
      
        '                         ((OLD.DATA_SINISTRE IS NULL) OR ((OLD.D' +
        'ATA_SINISTRE IS NOT NULL) AND (OLD.DATA_SINISTRE<>NEW.DATA_SINIS' +
        'TRE) AND (OLD.DATA_SINISTRE < UNESPA_TALL21)))'
      '                         ) THEN'
      '                      BEGIN'
      
        '                         INSERT INTO UNESPA_SESSIONS(C_TRACTAMEN' +
        'T) VALUES(NEW.C_TRACTAMENT);'
      '                      END'
      '                END'
      '          END'
      '      END'
      '   '
      
        '      /* Si posposen la prealta d'#39'un pacient UNESPA, avisem a Ad' +
        'missions si algun passi de cap de setmana queda fora del tram fa' +
        'cturable */'
      
        '      /* Si posen la data d'#39'alta i aquesta '#233's posterior a la pre' +
        'alta, tamb'#233' ho comprovem */'
      '      IF  ( (NEW.C_PRESTACIO = '#39'1004'#39')'
      
        '      AND (((OLD.DATA_PREALTA < NEW.DATA_PREALTA) AND (OLD.DATA_' +
        'PREALTA IS NOT NULL) AND (NEW.DATA_PREALTA IS NOT NULL))'
      '        OR'
      
        '           ((NEW.DATA_ALTA IS NOT NULL) AND (OLD.DATA_ALTA IS NU' +
        'LL) AND (NEW.DATA_ALTA > OLD.DATA_PREALTA))) )'
      '      THEN BEGIN'
      ''
      
        '          SELECT ES_UNESPA FROM CLIENTS WHERE C_CENTREFAC = NEW.' +
        'C_CENTREFAC AND C_CLIENT = NEW.C_CLIENT INTO :ES_UNESPA;'
      ''
      
        '          IF (ES_UNESPA = '#39'S'#39') THEN SELECT DATA FROM UNESPADATES' +
        ' WHERE ID = "TALL_2021" INTO :UNESPA_TALL21;'
      ''
      
        '          IF ((ES_UNESPA = '#39'S'#39') AND (NEW.DATA_SINISTRE >= UNESPA' +
        '_TALL21)) THEN'
      '          BEGIN'
      '      '
      
        '              D_ALTA = F_DateNull(NEW.DATA_ALTA, NEW.DATA_PREALT' +
        'A);'
      ''
      '              SELECT COUNT(*)'
      '              FROM   PASSIS'
      '              WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '              AND    F_DateNull(ADM_INICI, INICI) < :D_ALTA - 60'
      '              INTO  :PASSIS_FORA;'
      '           '
      '              IF (PASSIS_FORA > 0)'
      '              THEN'
      
        '                     INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID' +
        '_AVIS, ASSUMPTE, COS)'
      '                     VALUES ("NOW",'
      '                             26,'
      
        '                             "Av'#237's PASSIS DE CAP DE SETMANA - UN' +
        'ESPA",'
      
        '                             "El pacient amb NHC " || NEW.C_HIST' +
        'ORIA || " t'#233' " ||'
      
        '                             :PASSIS_FORA || " passi(s) de cap d' +
        'e setmana que ha(n) quedat fora dels 60 dies anteriors a l'#39#39'alta' +
        ' i potser s'#39'ha(n) d'#39'abonar a la m'#250'tua.");'
      '         END'
      '      END'
      ''
      ''
      '   END; /* IF USER <> REPLICATOR */'
      'END')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37194.7325101852
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 480
    Top = 492
  end
  object Exitus: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Historia'
        NombreDB = 'C_Historia'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'Primaria, es integer'
      end>
    Indices = <
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Historia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Exitus'
    NombreTabla = 'Exitus'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Historia')
    IndiceVer = 'Historia'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4944387269
    Left = 29
    Top = 177
  end
  object AssignNumUSRA: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AssignNumUSRA'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS '
      '('
      '  NEWCODE INTEGER'
      ')'
      'AS'
      'BEGIN'
      ''
      '  SELECT MAX(NumPar) + 1 '
      '  FROM PARENT'
      '  INTO :NEWCODE; '
      ''
      '  SUSPEND;'
      ''
      'END'
      ''
      '')
    Select.Strings = (
      'SELECT * FROM P_PARENT_ASSIGNNUMUSRA')
    Dic1 = Parent
    Dic1Name = 'Parent'
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
    ModiFecha = 37162.5939151852
    Left = 231
    Top = 177
  end
  object Direccion: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Direccion'
    ForceNombreDB = False
    Body.Strings = (
      '('
      ''
      '   TIPUSVIA VARCHAR (4), '
      '   NOMVIA VARCHAR (50), '
      '   NUMERO VARCHAR (10), '
      '   BLOC VARCHAR (2), '
      '   ESCALA VARCHAR (2), '
      '   PIS VARCHAR (5), '
      '   PORTA VARCHAR (3) '
      ''
      ')'
      'RETURNS '
      '('
      ''
      '   DIRECCION VARCHAR(100)'
      ''
      ')'
      'AS'
      ''
      '  DECLARE VARIABLE SEPARADORPISIPORTA VARCHAR(3);'
      '  DECLARE VARIABLE SEPARADORNUMERO    VARCHAR(3);'
      '  DECLARE VARIABLE SEPARADORBLOC      VARCHAR(3);'
      '  DECLARE VARIABLE SEPARADORESCALA    VARCHAR(3);'
      '  DECLARE VARIABLE SEPARADORTIPUSVIA  VARCHAR(3);'
      ''
      'BEGIN'
      '      '
      '      '
      '   TIPUSVIA = F_LRTRIM(TIPUSVIA);'
      '   NOMVIA   = F_LRTRIM(NOMVIA);'
      '   NUMERO   = F_LRTRIM(NUMERO);'
      '   BLOC     = F_LRTRIM(BLOC);'
      '   ESCALA   = F_LRTRIM(ESCALA);'
      '   PIS      = F_LRTRIM(PIS);'
      '   PORTA    = F_LRTRIM(PORTA);'
      ''
      '   IF (TIPUSVIA IS NULL) THEN TIPUSVIA = "";'
      ''
      '   IF (NOMVIA IS NULL  ) THEN NOMVIA   = "";'
      ''
      '   IF ((NUMERO IS NULL) OR (NUMERO = "")) THEN '
      '   BEGIN '
      '     NUMERO = "";'
      '     SEPARADORNUMERO = "";'
      '   END;'
      '   ELSE '
      '   BEGIN '
      '     NUMERO = F_LRTRIM(NUMERO);'
      '     SEPARADORNUMERO = ", ";'
      '   END;'
      '   '
      '   IF ((BLOC IS NULL) OR (BLOC = "")) THEN '
      '   BEGIN '
      '      BLOC = "";'
      '      SEPARADORBLOC = "";'
      '   END;'
      '   ELSE SEPARADORBLOC = " B.";'
      ''
      '   IF ((ESCALA IS NULL) OR (ESCALA = "")) THEN '
      '   BEGIN '
      '       ESCALA = "";'
      '       SEPARADORESCALA = "";'
      '   END;'
      '   ELSE SEPARADORESCALA = " E.";'
      ''
      '   IF (PIS IS NULL  ) THEN PIS = "";'
      '   IF (PORTA IS NULL) THEN PORTA = "";'
      ''
      '   IF ((PIS = "") AND (PORTA = ""))'
      '   THEN SEPARADORPISIPORTA = "";'
      '   ELSE SEPARADORPISIPORTA = "-";'
      '   '
      '   IF ((TIPUSVIA IS NULL) OR (TIPUSVIA = "" ))'
      '   THEN SEPARADORTIPUSVIA = "";'
      '   ELSE SEPARADORTIPUSVIA = ". ";'
      '   '
      '  '
      
        '   DIRECCION = TIPUSVIA||SEPARADORTIPUSVIA||NOMVIA||SEPARADORNUM' +
        'ERO||NUMERO||SEPARADORBLOC||BLOC||SEPARADORESCALA||ESCALA||" "||' +
        'PIS||SEPARADORPISIPORTA||PORTA;'
      ''
      '   SUSPEND;'
      'END')
    Select.Strings = (
      
        'select * from P_FILIACIO_DIRECCION("C", "PADILLA", NULL, "4", "4' +
        '", NULL, NULL)')
    Dic1 = Filiacio
    Dic1Name = 'Filiacio'
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
    ModiFecha = 37165.788951875
    Left = 101
    Top = 64
  end
  object Filiacio: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Historia'
        NombreDB = 'NUM_HIST'
        Longitud = 5
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTANUMHIST'
        Comentario = 'Primaria, es integer'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom 1'
        NombreDB = 'APELLIDO1'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom 2'
        NombreDB = 'APELLIDO2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'NOMBRE'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom complet'
        NombreDB = 'NomComplet'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        zBlobSubTipo = 'TEXT'
        Comentario = 'mantingut de noms'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dni'
        NombreDB = 'DNI'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nomvia'
        NombreDB = 'NOMVIA'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a'
        NombreDB = 'ADRESA'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tel'#233'fon'
        NombreDB = 'TELEFONO'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'email'
        NombreDB = 'email'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Adre'#231'a electr'#243'nica'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipusvia'
        NombreDB = 'TIPUSVIA'
        Longitud = 4
        Consulta = 'TipusVia'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a tipus via'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Postal'
        NombreDB = 'CODIGO'
        Longitud = 5
        Consulta = 'CP'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Codig Postal, consulta a CPostal'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Numero'
        NombreDB = 'NUMERO'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Bloc'
        NombreDB = 'BLOC'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Escala'
        NombreDB = 'ESCALA'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pis'
        NombreDB = 'PIS'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Porta'
        NombreDB = 'PORTA'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Poblaci'#243
        NombreDB = 'POBLACIO'
        Longitud = 44
        Consulta = 'Poblacio'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a poblacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Provincia'
        NombreDB = 'PROVINCIA'
        Longitud = 44
        Consulta = 'Provincia'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'consulta a provincia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Residencia'
        NombreDB = 'RESIDENCIA'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'es un codi numeric, lligat amb taula provincia, (mirar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pais'
        NombreDB = 'PAIS'
        Longitud = 3
        Consulta = 'Pais'
        zType = tcIB_Varchar
        zNotNull = False
        zDefault = '34'
        Comentario = 'Consulta a pais'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Sexe'
        NombreDB = 'SEXO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'nulable per si no se sap:  D=Dona, H=Home, no cal crear una taul' +
          'a de sexes'
        ValidChars = 'HD'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Naix.'
        NombreDB = 'FECHA_NAC'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Lloc Naix.'
        NombreDB = 'LUGAR_NAC'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Civil'
        NombreDB = 'ESTADO_CIV'
        Longitud = 2
        Consulta = 'EstatCivil'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta EstadoCivil'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Soe'
        NombreDB = 'SOE'
        Longitud = 12
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Soe o TSI'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tsi'
        NombreDB = 'TSI'
        Longitud = 14
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Titular'
        NombreDB = 'TITULAR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = '- 0 1 B S T t null, no se que son'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pensionista'
        NombreDB = 'PENSIONIST'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'not null, P=Pensionista, el reste no es pensionista'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Idioma'
        NombreDB = 'IDIOMA'
        Longitud = 2
        Consulta = 'Idioma'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'not null default=0, consulta idioma, 0,1,2 (0=NO HO SABEN)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Telefo1 Fam'
        NombreDB = 'TELEFO1_FAM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripcio1'
        NombreDB = 'DESCRIPCIO1'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Telefo2 Fam'
        NombreDB = 'TELEFO2_FAM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripcio2'
        NombreDB = 'DESCRIPCIO2'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Amic'
        NombreDB = 'AMIC'
        Longitud = 8
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = False
        Comentario = 'consulta i fk amb amics, esta ara en dbf, pasar a ib'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Defunci'#243
        NombreDB = 'MORT'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Data defuncio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EsViu'
        NombreDB = 'EsViu'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Edat'
        NombreDB = 'Edat'
        Longitud = 3
        zType = tcIB_Integer
        zNotNull = False
        ComputedBy = 
          '(cast(F_If(ESVIU, '#39'='#39', '#39'S'#39',  Cast(F_DiferenceInYears("TODAY", FE' +
          'CHA_NAC) as varchar(3200)),  F_If(MORT, '#39'='#39', '#39#39',  '#39'0'#39',  Cast(F_D' +
          'iferenceInYears(MORT, FECHA_NAC) as varchar(3200)) ) )  as Integ' +
          'er))'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usra'
        NombreDB = 'USRA'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        Consulta = 'Parent'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'N'#186' USRA, foranea i consulta amb taula parent'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat'
        NombreDB = 'UNITAT'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        Consulta = 'Unitat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta i fk amb taula unitats, not null, 0=no assignat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat M'#232'dica'
        NombreDB = 'C_UnitatMedica'
        Longitud = 2
        Consulta = 'UnitatMedica'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta a UnitatM'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Bloqueig'
        NombreDB = 'Bloqueig'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'historia bloqueixada, es vip, en curs clinic'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Objectius'
        NombreDB = 'Objectius'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'n'#186' de objectius que se li han fet, 0, 1 o mes'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Etiologia'
        NombreDB = 'C_Etiologia'
        Longitud = 15
        Consulta = 'Etiologia'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Etiologia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal Etiologia'
        NombreDB = 'N_Etiologia'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Etiologia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di E'
        NombreDB = 'C_Codi_E'
        Longitud = 15
        Consulta = 'CodiE'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Starting with "E"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal E'
        NombreDB = 'N_Codi_E'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Starting with "E"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Graus Frankel'
        NombreDB = 'Frankel'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Lessi'#243
        NombreDB = 'Data_Lessio'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Classificaci'#243' Anat'#242'mica'
        NombreDB = 'C_ClasAnat'
        Longitud = 3
        Consulta = 'ClasAnat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '-1'
        Comentario = 'Consulta CodiClasAnat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Fractura Vertebral'
        NombreDB = 'C_FracturaVertebral'
        Longitud = 3
        Consulta = 'FracVert'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiFracturaVertebral'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus Bufeta'
        NombreDB = 'c_TipusBufeta'
        Longitud = 3
        Consulta = 'Bufeta'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiTipusBufeta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Bipedestaci'#243
        NombreDB = 'C_Bipedestacio'
        Longitud = 3
        Consulta = 'Bipedestacio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiBipedestacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Infecci'#243' Urinaria'
        NombreDB = 'C_InfeccioUrinaria'
        Longitud = 3
        Consulta = 'InfUri'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiInformeUrinari'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Disreflexia NeuroVegetativa'
        NombreDB = 'C_Disreflexia'
        Longitud = 3
        Consulta = 'DisNeuro'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiDisreflexia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cadira'
        NombreDB = 'C_Cadira'
        Longitud = 3
        Consulta = 'Cadira'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiCadira'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Funci'#243' Sexual'
        NombreDB = 'C_FuncioSexual'
        Longitud = 3
        Consulta = 'FuncSexual'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiFuncioSexual'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Erecci'#243
        NombreDB = 'C_Ereccio'
        Longitud = 3
        Consulta = 'Ereccio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiEreccio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ejaculaci'#243
        NombreDB = 'C_Ejaculacio'
        Longitud = 3
        Consulta = 'Ejaculacio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiEjaculacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Semen'
        NombreDB = 'C_Semen'
        Longitud = 3
        Consulta = 'Semen'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiSemen'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament Ortop'#233'dic'
        NombreDB = 'C_TractamentOrtopedic'
        Longitud = 3
        Consulta = 'TracOrto'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiTractamentOrtopedic'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Deambulaci'#243
        NombreDB = 'C_Deambulacio'
        Longitud = 3
        Consulta = 'Deambulacio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiDeambulacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Bitutors'
        NombreDB = 'C_Bitutors'
        Longitud = 3
        Consulta = 'Bitutors'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiBitutors'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ajudes'
        NombreDB = 'C_Ajudes'
        Longitud = 3
        Consulta = 'Ajudes'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiAjudes'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Drenatge Urinari'
        NombreDB = 'C_DrenatgeUrinari'
        Longitud = 3
        Consulta = 'DrenUri'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'consulta CodiDrenatgeUrinari'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Alergies'
        NombreDB = 'Alergies'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'literal per la rosa'
      end
      item
        Aplica = kcFecha
        Nombre = '1'#186' Contacte'
        NombreDB = 'Data_Contacte'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'l'#39'omple el triger de tractaments'
      end
      item
        Aplica = kcFecha
        Nombre = 'Ultim Contacte'
        NombreDB = 'Data_UltimContacte'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'l'#39'omple el triger de tractaments'
      end
      item
        Aplica = kcFecha
        Nombre = 'Ultima1'
        NombreDB = 'Ultima1'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 
          'computed per fer pirula a exe historials de desicom.  = data_ult' +
          'imcontacte. No el calculem, ara ja no cal.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comodin'
        NombreDB = 'Comodin'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'comodin per la rosa'
      end
      item
        Aplica = kcMemo
        Nombre = 'Antics Tractaments'
        NombreDB = 'AnticsTractaments'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
        Comentario = 'agafats de filiacio.dbf, per consultar nomes'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Diag.Neurol'#243'gic'
        NombreDB = 'C_DIAGNOSTICNEUROLOGIC'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'l'#39'actualitza el triguer amb l'#39'lutim'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Diag.Neurol'#243'gic'
        NombreDB = 'N_DIAGNOSTICNEUROLOGIC'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'l'#39'actualitza el triguer amb l'#39'lutim'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Dieta'
        NombreDB = 'C_Dieta'
        Longitud = 2
        Consulta = 'Dieta'
        zType = tcIB_Smallint
        zNotNull = False
        zDefault = '-1'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions Dieta'
        NombreDB = 'Obs_Dieta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Voluntats'
        NombreDB = 'Voluntats'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = #201's donant d'#39#242'rgans'
        NombreDB = 'Donant'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcCodigo
        Nombre = 'RCP'
        NombreDB = 'RCP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'S, N o null'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Glasgow'
        NombreDB = 'Glasgow'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumMonetario
        Nombre = 'Pes Cadira'
        NombreDB = 'PesCadira'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'NIHSS'
        NombreDB = 'NIHSS'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi E2'
        NombreDB = 'C_Codi_E2'
        Longitud = 15
        Consulta = 'CodiE2'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Starting with "E"'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal E2'
        NombreDB = 'N_Codi_E2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9, Starting with "E"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Origen UM'
        NombreDB = 'C_ORIGEN'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'OrigenUM'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Causa UM'
        NombreDB = 'C_CAUSA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'CausaUM'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Causa detallada UM'
        NombreDB = 'C_Causa_Detall'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'CausaDetUM'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Altres causes'
        NombreDB = 'CAUSA_ALTRES'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'UM_ANTIGA'
        NombreDB = 'UM_ANTIGA'
        Longitud = 3
        Consulta = 'UMantiga'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dies APT'
        NombreDB = 'Dies_APT'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'es calcula amb la procedure P_Filiacio_DiesAPT'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'GNPT'
        NombreDB = 'Previrnec'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Lateralitat'
        NombreDB = 'c_Lateralitat'
        Longitud = 3
        Consulta = 'Lateralitat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'D'#232'ficit neurol'#242'gic'
        NombreDB = 'G_DeficitNeurologic'
        Longitud = 15
        Consulta = 'deficitneuro'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          's'#39'omplir'#224' a partir de la classificaci'#243' etiol'#242'gica i serveix per ' +
          'codificar les altes'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Efecte tard'#224' (seq'#252'ela)'
        NombreDB = 'G_EfecteTarda'
        Longitud = 15
        Consulta = 'efectetarda'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          's'#39'omplir'#224' a partir de la classificaci'#243' etiol'#242'gica i serveix per ' +
          'codificar les altes'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Incapacitat?'
        NombreDB = 'Incapacitat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Incapacitat Tutor'
        NombreDB = 'Incapacitat_Tutor'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Incapacitat Tel'#232'fon'
        NombreDB = 'Incapacitat_Telefon'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Llei de depend'#232'ncia'
        NombreDB = 'LleiDEP'
        Longitud = 3
        Consulta = 'DEP'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'RIC'
        NombreDB = 'RIC'
        Longitud = 15
        Consulta = 'RIC'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Grup de limitaci'#243' funcional'
        NombreDB = 'GLF'
        Longitud = 15
        Consulta = 'GLF'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hospital primera atencio'
        NombreDB = 'C_HOSPITAL'
        Longitud = 8
        Consulta = 'Hospital'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Causa de la mort'
        NombreDB = 'C_EXITUS'
        Longitud = 15
        Consulta = 'IcdExitus'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Microorganisme Multiresisten'
        NombreDB = 'MR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Tipus de document'
        NombreDB = 'T_DOC'
        Longitud = 1
        Consulta = 'TipusDoc'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell de cobertura RCA'
        NombreDB = 'Nivell_cobertura'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = #201's cr'#237'tic'
        NombreDB = 'CRITIC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'S, N o null'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Severitat'
        NombreDB = 'Severitat'
        Longitud = 2
        Consulta = 'severitat'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'com m'#233's alt, m'#233's sever'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Impagat'
        NombreDB = 'Impagat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'N'#250'm. del Servicio Nacional de Salud'
        NombreDB = 'SNS'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pais naixement'
        NombreDB = 'PAIS_NAIX'
        Longitud = 3
        Consulta = 'PaisNaix'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comunitat autnoma'
        NombreDB = 'CCAA'
        Longitud = 15
        Consulta = 'CCAA'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta de comunitats autnomes'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pais document'
        NombreDB = 'PAIS_DOC'
        Longitud = 3
        Consulta = 'PaisDoc'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre LMS_Activitat'
        NombreDB = 'LMS_Activitat'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Risc de su'#239'cidi'
        NombreDB = 'RISC_SUICIDI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'LMS registre'
        NombreDB = 'LMS_REGISTRE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VersioCIM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM SubCodi'
        NombreDB = 'VersioCIM_G'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Hora dinar'
        NombreDB = 'Hora_Dinar'
        Longitud = 5
        MaskDisplay = 'hh":"mm'
        MaskEdit = '!99:99;1; '
        zType = tcIB_Char
        zNotNull = True
        zDefault = '13:00'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ubicaci'#243' dinar'
        NombreDB = 'C_Ubicacio_Dinar'
        Longitud = 3
        Consulta = 'UbiDinar'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Rebre REVISTA'
        NombreDB = 'REVISTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
        Comentario = 'OBSOLET (incl'#242's a CORRESPONDENCIA)'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Consentiment'
        NombreDB = 'CONSENTIMENT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'consentiment informat signat'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Consentiment Informat'
        NombreDB = 'ConsentimentInf'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Autoritza llit'
        NombreDB = 'Autoritza_llit'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Rebre SMS'
        NombreDB = 'SMS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Rebre correspond'#232'ncia'
        NombreDB = 'Correspondencia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Autoritza enquestes'
        NombreDB = 'Autoritza_enquestes'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Autoritza projectes investigaci'#243
        NombreDB = 'Autoritza_investigacio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'HCE evitar duplicats'
        NombreDB = 'HCE_DEDUPE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Al'#183'l'#232'rgies tot'
        NombreDB = 'ALERGIES_TOT'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Indicador de farm'#224'cia (RCA)'
        NombreDB = 'INDICADOR_FARMACIA'
        Longitud = 15
        Consulta = 'indicadorFarma'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'UNICAS'
        NombreDB = 'UNICAS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Historia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Cognoms'
        NombreDB = 'Apellidos'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Cognom 1'
          'Cognom 2'
          'Nom')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Bloqueig'
        NombreDB = 'Bloqueig'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Bloqueig')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'NomComplet'
        NombreDB = 'NomComplet'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Nom Complet')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'esviu'
        NombreDB = 'esviu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'EsViu')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'data_ultim'
        NombreDB = 'data_ultim'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Ultim Contacte')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'unitat'
        NombreDB = 'unitat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Unitat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'unitatm'
        NombreDB = 'unitatm'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Unitat M'#232'dica')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'TipusVia'
        Master = wDataCodis.CodiVia
        BuscaOrigen.Strings = (
          'Tipusvia')
        CopiarOrigen.Strings = (
          'Tipusvia')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'Pais'
        Master = wDataCodis.Pais
        BuscaOrigen.Strings = (
          'Pais')
        CopiarOrigen.Strings = (
          'Pais')
        CopiarMaster.Strings = (
          'Codi Pa'#237's')
        BuscaMaster.Strings = (
          'Codi Pa'#237's')
      end
      item
        Nombre = 'EstatCivil'
        Master = wDataCodis.EstatCivil
        BuscaOrigen.Strings = (
          'Estat Civil')
        CopiarOrigen.Strings = (
          'Estat Civil')
        CopiarMaster.Strings = (
          'Estat Civil')
        BuscaMaster.Strings = (
          'Estat Civil')
      end
      item
        Nombre = 'Idioma'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Idioma')
        CopiarOrigen.Strings = (
          'Idioma')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "IDIOMA"'
      end
      item
        Nombre = 'Parent'
        Master = Parent
        BuscaOrigen.Strings = (
          'Usra')
        CopiarOrigen.Strings = (
          'Usra')
        CopiarMaster.Strings = (
          'Numpar')
        BuscaMaster.Strings = (
          'Numpar')
      end
      item
        Nombre = 'Unitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Unitat')
        CopiarOrigen.Strings = (
          'Unitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "UNITATS"'
        ValidateValue = True
      end
      item
        Nombre = 'ClasAnat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Classificaci'#243' Anat'#242'mica')
        CopiarOrigen.Strings = (
          'Classificaci'#243' Anat'#242'mica')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "CLASANAT"'
        ValidateValue = True
      end
      item
        Nombre = 'FracVert'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Fractura Vertebral')
        CopiarOrigen.Strings = (
          'Fractura Vertebral')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "FRACVERT"'
        ValidateValue = True
      end
      item
        Nombre = 'Bufeta'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus Bufeta')
        CopiarOrigen.Strings = (
          'Tipus Bufeta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "BUFETA"'
        ValidateValue = True
      end
      item
        Nombre = 'Bipedestacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Bipedestaci'#243)
        CopiarOrigen.Strings = (
          'Bipedestaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "BIPEDESTACIO"'
        ValidateValue = True
      end
      item
        Nombre = 'InfUri'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Infecci'#243' Urinaria')
        CopiarOrigen.Strings = (
          'Infecci'#243' Urinaria')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI= "INFURINARIA"'
        ValidateValue = True
      end
      item
        Nombre = 'DisNeuro'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Disreflexia NeuroVegetativa')
        CopiarOrigen.Strings = (
          'Disreflexia NeuroVegetativa')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DISNEURO"'
        ValidateValue = True
      end
      item
        Nombre = 'Cadira'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Cadira')
        CopiarOrigen.Strings = (
          'Cadira')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "CADIRA"'
        ValidateValue = True
      end
      item
        Nombre = 'FuncSexual'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Funci'#243' Sexual')
        CopiarOrigen.Strings = (
          'Funci'#243' Sexual')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "FUNCSEXUAL"'
        ValidateValue = True
      end
      item
        Nombre = 'Ereccio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Erecci'#243)
        CopiarOrigen.Strings = (
          'Erecci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ERECCIO"'
        ValidateValue = True
      end
      item
        Nombre = 'Ejaculacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Ejaculaci'#243)
        CopiarOrigen.Strings = (
          'Ejaculaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "EJACULACIO"'
        ValidateValue = True
      end
      item
        Nombre = 'Semen'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Semen')
        CopiarOrigen.Strings = (
          'Semen')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "SEMEN"'
        ValidateValue = True
      end
      item
        Nombre = 'TracOrto'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tractament Ortop'#233'dic')
        CopiarOrigen.Strings = (
          'Tractament Ortop'#233'dic')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "TRACORTO"'
        ValidateValue = True
      end
      item
        Nombre = 'Deambulacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Deambulaci'#243)
        CopiarOrigen.Strings = (
          'Deambulaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DEAMBULACIO"'
        ValidateValue = True
      end
      item
        Nombre = 'Bitutors'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Bitutors')
        CopiarOrigen.Strings = (
          'Bitutors')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "BITUTORS"'
        ValidateValue = True
      end
      item
        Nombre = 'Ajudes'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Ajudes')
        CopiarOrigen.Strings = (
          'Ajudes')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "AJUDES"'
        ValidateValue = True
      end
      item
        Nombre = 'DrenUri'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Drenatge Urinari')
        CopiarOrigen.Strings = (
          'Drenatge Urinari')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DRENURI"'
        ValidateValue = True
      end
      item
        Nombre = 'CP'
        Master = wDataCodis.Poblacio
        BuscaOrigen.Strings = (
          'Codi Postal')
        CopiarOrigen.Strings = (
          'Codi Postal'
          'Provincia'
          'Poblaci'#243
          'Residencia')
        CopiarMaster.Strings = (
          'Codi Postal'
          'Prov'#237'ncia'
          'Poblaci'#243
          'N'#186' Residencia')
        BuscaMaster.Strings = (
          'Codi Postal')
      end
      item
        Nombre = 'poblacio'
        Master = wDataCodis.Poblacio
        BuscaOrigen.Strings = (
          'Poblaci'#243)
        CopiarOrigen.Strings = (
          'Poblaci'#243
          'Provincia'
          'Codi Postal'
          'Residencia')
        CopiarMaster.Strings = (
          'Poblaci'#243
          'Prov'#237'ncia'
          'Codi Postal'
          'N'#186' Residencia')
        BuscaMaster.Strings = (
          'Poblaci'#243)
        ValidateValue = True
      end
      item
        Nombre = 'Provincia'
        Master = wDataCodis.Provincia
        BuscaOrigen.Strings = (
          'Provincia')
        CopiarOrigen.Strings = (
          'Provincia')
        CopiarMaster.Strings = (
          'Prov'#237'ncia')
        BuscaMaster.Strings = (
          'Prov'#237'ncia')
        ValidateValue = True
      end
      item
        Nombre = 'Dieta'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codi Dieta')
        CopiarOrigen.Strings = (
          'Codi Dieta'
          'Observacions Dieta')
        CopiarMaster.Strings = (
          'C'#243'di'
          'Descripci'#243)
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DIETES"'
        ValidateValue = True
      end
      item
        Nombre = 'UnitatMedica'
        Master = wDataCodis.UnitatM
        BuscaOrigen.Strings = (
          'Unitat M'#232'dica')
        CopiarOrigen.Strings = (
          'Unitat M'#232'dica')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'OrigenUM'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Origen UM')
        CopiarOrigen.Strings = (
          'Origen UM')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ORIGEN_FILIACIO'#39
      end
      item
        Nombre = 'UMantiga'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'UM_ANTIGA')
        CopiarOrigen.Strings = (
          'UM_ANTIGA')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'tipuscodi = '#39'UM_ANTIGA'#39
      end
      item
        Nombre = 'Lateralitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Lateralitat')
        CopiarOrigen.Strings = (
          'Lateralitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'LATERALITAT'#39
      end
      item
        Nombre = 'CausaUM'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Causa UM')
        CopiarOrigen.Strings = (
          'Causa UM')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'CAUSA'#39
      end
      item
        Nombre = 'CausaDetUM'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Causa detallada UM')
        CopiarOrigen.Strings = (
          'Causa detallada UM')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'CAUSA_DETALL'#39
      end
      item
        Nombre = 'deficitneuro'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'D'#232'ficit neurol'#242'gic')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'D'#232'ficit neurol'#242'gic')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM SubCodi')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'efectetarda'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'Efecte tard'#224' (seq'#252'ela)')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'Efecte tard'#224' (seq'#252'ela)')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM SubCodi')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'DEP'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Llei de depend'#232'ncia')
        CopiarOrigen.Strings = (
          'Llei de depend'#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "LLEIDEP"'
      end
      item
        Nombre = 'RIC'
        Master = wDataCodis.RIC
        BuscaOrigen.Strings = (
          'RIC')
        CopiarOrigen.Strings = (
          'RIC')
        CopiarMaster.Strings = (
          'RIC')
        BuscaMaster.Strings = (
          'RIC')
      end
      item
        Nombre = 'GLF'
        Master = wDataCodis.GLF
        BuscaOrigen.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
        CopiarOrigen.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
        CopiarMaster.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
        BuscaMaster.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
      end
      item
        Nombre = 'Etiologia'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'C'#243'di Etiologia')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'C'#243'di Etiologia')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
        WhereFiltro = 'tipus = "D" and baixa = "N"'
      end
      item
        Nombre = 'Hospital'
        Master = wDataCodis.Hospital
        BuscaOrigen.Strings = (
          'Hospital primera atencio')
        CopiarOrigen.Strings = (
          'Hospital primera atencio')
        CopiarMaster.Strings = (
          'N'#186' Hospital')
        BuscaMaster.Strings = (
          'N'#186' Hospital')
      end
      item
        Nombre = 'IcdExitus'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Causa de la mort')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Causa de la mort')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'CodiE'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'C'#243'di E')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'C'#243'di E')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
        WhereFiltro = 'TIPUS="E"'
      end
      item
        Nombre = 'CodiE2'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi E2')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi E2')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
        WhereFiltro = 'TIPUS="E"'
      end
      item
        Nombre = 'TipusDoc'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Tipus de document')
        CopiarOrigen.Strings = (
          'Tipus de document')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'tipuscodi = '#39'TIPUSDOCUMENT'#39
      end
      item
        Nombre = 'severitat'
        Master = wDataPerfilsNR.SeveritatUM
        BuscaOrigen.Strings = (
          'Unitat M'#232'dica'
          'Severitat')
        CopiarOrigen.Strings = (
          'Severitat')
        CopiarMaster.Strings = (
          'Codi severitat')
        BuscaMaster.Strings = (
          'Codi unitat m'#232'dica'
          'Codi severitat')
        FiltroOrigen.Strings = (
          'Unitat M'#232'dica')
        FiltroMaster.Strings = (
          'Codi unitat m'#232'dica')
      end
      item
        Nombre = 'PaisNaix'
        Master = wDataCodis.Pais
        BuscaOrigen.Strings = (
          'Pais naixement')
        CopiarOrigen.Strings = (
          'Pais naixement')
        CopiarMaster.Strings = (
          'Codi Pa'#237's')
        BuscaMaster.Strings = (
          'Codi Pa'#237's')
      end
      item
        Nombre = 'CCAA'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Comunitat autnoma')
        CopiarOrigen.Strings = (
          'Comunitat autnoma')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'CCAA'#39
      end
      item
        Nombre = 'PaisDoc'
        Master = wDataCodis.Pais
        BuscaOrigen.Strings = (
          'Pais document')
        CopiarOrigen.Strings = (
          'Pais document')
        CopiarMaster.Strings = (
          'Codi Pa'#237's')
        BuscaMaster.Strings = (
          'Codi Pa'#237's')
      end
      item
        Nombre = 'UbiDinar'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Ubicaci'#243' dinar')
        CopiarOrigen.Strings = (
          'Ubicaci'#243' dinar')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI="UBICACIO_DINAR"'
      end
      item
        Nombre = 'IndicadorFarma'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Indicador de farm'#224'cia (RCA)')
        CopiarOrigen.Strings = (
          'Indicador de farm'#224'cia (RCA)')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'RCA.IND_FARMACIA'#39
      end>
    Nombre = 'Filiacio'
    NombreTabla = 'FILIACIO'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Historia'
      'Nom Complet'
      'Sexe'
      'Edat'
      'EsViu'
      'Cognom 1'
      'Cognom 2'
      'Nom'
      'Unitat'
      'Unitat M'#232'dica'
      'Tel'#233'fon'
      'Tsi'
      'Data Naix.'
      'Residencia'
      'Pais'
      'Provincia'
      'Poblaci'#243
      'UM_ANTIGA'
      'Lateralitat'
      'Adre'#231'a'
      'Dni'
      'Codi Postal'
      'Lloc Naix.'
      'Estat Civil'
      'Hospital primera atencio'
      'Causa de la mort'
      'Idioma'
      'Tipus de document'
      'Soe'
      'N'#250'm. del Servicio Nacional de Salud'
      'GNPT')
    IndiceVer = 'Historia'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945160301
    Left = 31
    Top = 12
  end
  object Tract_Resum: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTATRACTAMENT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Hist.'
        NombreDB = 'C_Historia'
        Longitud = 5
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Prestacio'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243' origen'
        NombreDB = 'C_PrestacioOrigen'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Prestacio original que s'#39'ha creat per si es canvia 2001,2002'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora'
        NombreDB = 'Hora'
        Longitud = 5
        MaskDisplay = 'hh":"mm'
        MaskEdit = '99:99'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '00:00'
        Comentario = '??'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        Consulta = 'Coordinador'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data prealta'
        NombreDB = 'Data_PreAlta'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge prealta'
        NombreDB = 'C_MetgePreAlta'
        Longitud = 5
        Consulta = 'MetgePreAlta'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data alta'
        NombreDB = 'Data_Alta'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge alta'
        NombreDB = 'C_MetgeAlta'
        Longitud = 5
        Consulta = 'MetgeAlta'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Durada'
        NombreDB = 'Durada'
        Longitud = 4
        zType = tcIB_Double
        zNotNull = False
        Comentario = 'Dias de durada'
        ComputedBy = 
          '(( f_datenull(tractaments.data_alta,"TODAY")-tractaments.data_in' +
          'gres)+1)'
      end
      item
        Aplica = kcMemo
        Nombre = 'Comentari Admisions'
        NombreDB = 'Comentari'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu'
        NombreDB = 'C_Motiu'
        Longitud = 3
        Consulta = 'Motiu'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Motiu, es copia de llista de espera al filiar'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Proced'#232'ncia / origen'
        NombreDB = 'C_Origen'
        Longitud = 3
        Consulta = 'Origen'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Procedencia u origen (al filiar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hospital'
        NombreDB = 'C_HospitalOrigen'
        Longitud = 3
        Consulta = 'HtalOrigen'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '-1'
        Comentario = 'Hospital de origen, al filiar'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Car'#224'cter'
        NombreDB = 'C_Caracter'
        Longitud = 3
        Consulta = 'Caracter'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Caracter o tipus_ingres (al filiar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Solicitud / causa'
        NombreDB = 'C_Solicitud'
        Longitud = 3
        Consulta = 'Solicitud'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '-1'
        Comentario = 'Solicitud o causa (al filiar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Llit'
        NombreDB = 'C_LLit'
        Longitud = 3
        Consulta = 'Llit'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'llit (al filiar o modificar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Planta'
        NombreDB = 'C_Planta'
        Longitud = 15
        Consulta = 'Planta'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'planta o unitat infermeria (al filiar o modificar)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Destinaci'#243
        NombreDB = 'C_Destinacio'
        Longitud = 3
        Consulta = 'Destinacio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Destinacio al donar d'#39'alta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hospital dest'#237
        NombreDB = 'C_HospitalDesti'
        Longitud = 3
        Consulta = 'HtalDestinacio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '-1'
        Comentario = 'Hospital desti'
      end
      item
        Aplica = kcMemo
        Nombre = 'Informe alta'
        NombreDB = 'InformeAlta'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
        Comentario = 'Texte informe d'#39'alta'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat informe alta'
        NombreDB = 'EstatInformeAlta'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'Per informes de alta en curs clinic (hi ha trigger)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comentari metge'
        NombreDB = 'ComentariMetge'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'A la prealta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comentari infermeria'
        NombreDB = 'ComentariInfermeria'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'A la prealta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Residencia'
        NombreDB = 'C_Residencia'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Copiat de Filiacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codificaci'#243' entrada'
        NombreDB = 'Entrada'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codificacio Entrada pel SCS'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codificaci'#243' sortida'
        NombreDB = 'Sortida'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codificacio Sortida pel SCS'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia'
        NombreDB = 'C_Frequencia'
        Longitud = 7
        Consulta = 'Frequencia'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Gimnas'
      end
      item
        Aplica = kcFecha
        Nombre = 'Dia fix'
        NombreDB = 'DiaFixe'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Gimnas'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Fisioterapeuta'
        NombreDB = 'C_FisioTerapeuta'
        Longitud = 5
        Consulta = 'Fisioterapeuta'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge Fisio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Terapeuta'
        NombreDB = 'C_Terapeuta'
        Longitud = 5
        Consulta = 'Terapeuta'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge Terapeuta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Cas'
        NombreDB = 'C_Cas'
        Longitud = 3
        Consulta = 'NumCas'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Consulta Taula CodiCas'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Complicacions'
        NombreDB = 'Complicacions'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codis concatenats'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Proc'#233's origen'
        NombreDB = 'C_ProcesOrigen'
        Longitud = 3
        Consulta = 'ProcesOrigen'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Consulta CodiProcesOrigen'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Graus Frankel'
        NombreDB = 'Frankel'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Graus Frankel'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi E'
        NombreDB = 'C_Codi_E'
        Longitud = 6
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9 Codi E'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal E '
        NombreDB = 'N_Codi_E'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ICD9 Literal Codi E'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi diag. neur. ingr'#233's'
        NombreDB = 'C_DiagnosticNeurologicIngres'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal diag. neur. ingr'#233's'
        NombreDB = 'N_DiagnosticNeurologicIngres'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi diagn'#242'stic ingr'#233's'
        NombreDB = 'C_DiagnosticIngres'
        Longitud = 15
        Consulta = 'IcdIngres'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal diagn'#242'stic ingr'#233's'
        NombreDB = 'N_DiagnosticIngres'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi diag. neur. alta'
        NombreDB = 'C_DiagnosticNeurologicAlta'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal diag. neur. alta'
        NombreDB = 'N_DiagnosticNeurologicAlta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi diagn'#242'stic alta'
        NombreDB = 'C_DiagnosticAlta'
        Longitud = 15
        Consulta = 'IcdAlta'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal diagn'#242'stic alta'
        NombreDB = 'N_DiagnosticAlta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comod'#237
        NombreDB = 'Comodin'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Vegada'
        NombreDB = 'Vegada'
        Longitud = 3
        Consulta = 'vegada'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Per codificar els ambulatoris'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre facturaci'#243
        NombreDB = 'C_CentreFac'
        Longitud = 2
        Consulta = 'Centre'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Client'
        NombreDB = 'C_Client'
        Longitud = 3
        Consulta = 'Client'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Delegaci'#243
        NombreDB = 'C_Delegacio'
        Longitud = 4
        Consulta = 'Delegacio'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Caduca perm'#237's'
        NombreDB = 'CaducaPermis'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumPorcentaje
        Nombre = '% pacient'
        NombreDB = 'PercentatgePacient'
        Longitud = 5
        MaskDisplay = '#,##0.###" %";; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Refer'#232'ncia'
        NombreDB = 'Referencia'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Infermera'
        NombreDB = 'C_Infermeria'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Auxiliar de cl'#237'nica'
        NombreDB = 'C_Auxiliar'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Psic'#242'leg'
        NombreDB = 'C_Psicoleg'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Treballador social'
        NombreDB = 'C_TrevallSocial'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = #201's provisional'
        NombreDB = 'EsProvisional'
        Longitud = 3
        Consulta = 'Provisional'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge passi'
        NombreDB = 'C_MetgePassi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge que autoritza o denega el passi'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Infermera passi'
        NombreDB = 'C_InfermeraPassi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Infermera que d'#243'na el passi al pacient'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Pot tenir passis'
        NombreDB = 'Passi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'S: pot marxar de passi, N: No pot marxar de passi'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ambul'#224'ncia'
        NombreDB = 'Ambulancia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat facturaci'#243
        NombreDB = 'C_EstatFac'
        Longitud = 10
        Consulta = 'EstatFac'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Espera programada'
        NombreDB = 'C_EsperaProgramada'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Id de la espera programada en la prealta, estat=10'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi stock'
        NombreDB = 'C_Stock'
        Longitud = 3
        Consulta = 'stock'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Confirmaci'#243' stock'
        NombreDB = 'confirmstock'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Nota de c'#224'rrec'
        NombreDB = 'NotaCarrec'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom complet'
        NombreDB = 'Nomcomplet'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VersioCIM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Terapeuta responsable'
        NombreDB = 'C_Terapeuta_Resp'
        Longitud = 5
        Consulta = 'ft'
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Tractament'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataPreAlta'
        NombreDB = 'DataPreAlta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data prealta')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataAlta'
        NombreDB = 'DataAlta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data alta')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Prestacion'
        NombreDB = 'Prestacion'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Prestaci'#243)
        Tipo = tiForaneo
        ForaneoDic = Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist.')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Coordinador'
        NombreDB = 'Coordinador'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Coordinador')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Ingres'
        NombreDB = 'Ingres'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data ingr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Centre'
        NombreDB = 'Centre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Centre facturaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.CentreFac
        ForaneoCampos.Strings = (
          'N'#186' Centre')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Client'
        NombreDB = 'Client'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Centre facturaci'#243
          'Client')
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.Clients
        ForaneoCampos.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Delegacio'
        NombreDB = 'Delegacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Centre facturaci'#243
          'Client'
          'Delegaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.Delega
        ForaneoCampos.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Sortida'
        NombreDB = 'Sortida'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codificaci'#243' sortida')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Basic'
        NombreDB = 'Basic'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist.'
          'Prestaci'#243
          'Data ingr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataIngres'
        NombreDB = 'DataIngres'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data ingr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Llit'
        NombreDB = 'Llit'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Llit')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fk_llit'
        NombreDB = 'fk_llit'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Llit')
        Tipo = tiForaneo
        ForaneoDic = wDataAdmisio.Llits
        ForaneoCampos.Strings = (
          'N'#186' Llit')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fk_planta'
        NombreDB = 'fk_planta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Planta')
        Tipo = tiForaneo
        ForaneoDic = wDataAdmisio.Plantas
        ForaneoCampos.Strings = (
          'N'#186' Planta')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataIngresDesc'
        NombreDB = 'DataIngresDesc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data ingr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'Prestacio'
        NombreDB = 'Prestacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Prestaci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'N'#250'm. Hist.')
        CopiarOrigen.Strings = (
          'N'#250'm. Hist.')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Prestacio'
        Master = Prestacion
        BuscaOrigen.Strings = (
          'Prestaci'#243)
        CopiarOrigen.Strings = (
          'Prestaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di Prestacio')
        BuscaMaster.Strings = (
          'C'#243'di Prestacio')
      end
      item
        Nombre = 'Coordinador'
        Master = Metges
        BuscaOrigen.Strings = (
          'Coordinador')
        CopiarOrigen.Strings = (
          'Coordinador')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgePreAlta'
        Master = Metges
        BuscaOrigen.Strings = (
          'Metge prealta')
        CopiarOrigen.Strings = (
          'Metge prealta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgeAlta'
        Master = Metges
        BuscaOrigen.Strings = (
          'Metge alta')
        CopiarOrigen.Strings = (
          'Metge alta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Motiu'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Motiu')
        CopiarOrigen.Strings = (
          'Motiu')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "MOTIU"'
        ValidateValue = True
      end
      item
        Nombre = 'Origen'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Proced'#232'ncia / origen')
        CopiarOrigen.Strings = (
          'Proced'#232'ncia / origen')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "ORIGEN"'
        ValidateValue = True
      end
      item
        Nombre = 'HtalOrigen'
        Master = wDataCodis.Hospital
        BuscaOrigen.Strings = (
          'Hospital')
        CopiarOrigen.Strings = (
          'Hospital')
        CopiarMaster.Strings = (
          'N'#186' Hospital')
        BuscaMaster.Strings = (
          'N'#186' Hospital')
      end
      item
        Nombre = 'Caracter'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Car'#224'cter')
        CopiarOrigen.Strings = (
          'Car'#224'cter')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "CARACTER"'
        ValidateValue = True
      end
      item
        Nombre = 'Solicitud'
        Master = wDataAdmisio.vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Solicitud / causa')
        CopiarOrigen.Strings = (
          'Solicitud / causa')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "SOLICITUD"'
        ValidateValue = True
      end
      item
        Nombre = 'Destinacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Destinaci'#243)
        CopiarOrigen.Strings = (
          'Destinaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DESTINACIO"'
        ValidateValue = True
      end
      item
        Nombre = 'HtalDestinacio'
        Master = wDataCodis.Hospital
        BuscaOrigen.Strings = (
          'Hospital dest'#237)
        CopiarOrigen.Strings = (
          'Hospital dest'#237)
        CopiarMaster.Strings = (
          'N'#186' Hospital')
        BuscaMaster.Strings = (
          'N'#186' Hospital')
      end
      item
        Nombre = 'Frequencia'
        Master = wDataGimnas.TornAmb
        BuscaOrigen.Strings = (
          'Freq'#252#232'ncia')
        CopiarOrigen.Strings = (
          'Freq'#252#232'ncia')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'Fisioterapeuta'
        Master = Metges
        BuscaOrigen.Strings = (
          'Fisioterapeuta')
        CopiarOrigen.Strings = (
          'Fisioterapeuta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Terapeuta'
        Master = Metges
        BuscaOrigen.Strings = (
          'Terapeuta')
        CopiarOrigen.Strings = (
          'Terapeuta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'NumCas'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'N'#250'm. Cas')
        CopiarOrigen.Strings = (
          'N'#250'm. Cas')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "NUMCAS"'
        ValidateValue = True
      end
      item
        Nombre = 'ProcesOrigen'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Proc'#233's origen')
        CopiarOrigen.Strings = (
          'Proc'#233's origen')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "PROCESORIGEN"'
        ValidateValue = True
      end
      item
        Nombre = 'IcdAlta'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi diagn'#242'stic ingr'#233's')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi diagn'#242'stic ingr'#233's')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'Centre'
        Master = wDataFactu.CentreFac
        BuscaOrigen.Strings = (
          'Centre facturaci'#243)
        CopiarOrigen.Strings = (
          'Centre facturaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Centre')
        BuscaMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Client'
        Master = wDataFactu.Clients
        BuscaOrigen.Strings = (
          'Centre facturaci'#243
          'Client')
        CopiarOrigen.Strings = (
          'Centre facturaci'#243
          'Client')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        FiltroOrigen.Strings = (
          'Centre facturaci'#243)
        FiltroMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Delegacio'
        Master = wDataFactu.Delega
        BuscaOrigen.Strings = (
          'Centre facturaci'#243
          'Client'
          'Delegaci'#243)
        CopiarOrigen.Strings = (
          'Centre facturaci'#243
          'Client'
          'Delegaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        FiltroOrigen.Strings = (
          'Centre facturaci'#243
          'Client')
        FiltroMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        WhereFiltro = 'ACTIU = "S"'
        RefreshOnCascade = True
      end
      item
        Nombre = 'IcdIngres'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi diagn'#242'stic ingr'#233's')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi diagn'#242'stic ingr'#233's')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'Llit'
        Master = wDataAdmisio.Llits
        BuscaOrigen.Strings = (
          'Llit')
        CopiarOrigen.Strings = (
          'Llit'
          'Planta')
        CopiarMaster.Strings = (
          'N'#186' Llit'
          'N'#186' Planta')
        BuscaMaster.Strings = (
          'N'#186' Llit')
        FiltroOrigen.Strings = (
          'Planta')
        FiltroMaster.Strings = (
          'N'#186' Planta')
      end
      item
        Nombre = 'Planta'
        Master = wDataAdmisio.Plantas
        BuscaOrigen.Strings = (
          'Planta')
        CopiarOrigen.Strings = (
          'Planta')
        CopiarMaster.Strings = (
          'N'#186' Planta')
        BuscaMaster.Strings = (
          'N'#186' Planta')
      end
      item
        Nombre = 'Provisional'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          #201's provisional')
        CopiarOrigen.Strings = (
          #201's provisional')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "PROVISIONAL"'
        ValidateValue = True
      end
      item
        Nombre = 'Stock'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codi stock')
        CopiarOrigen.Strings = (
          'Codi stock')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "STOCK"'
      end
      item
        Nombre = 'vegada'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Vegada')
        CopiarOrigen.Strings = (
          'Vegada')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "VEGADAAMBULATO"'
      end
      item
        Nombre = 'EstatFac'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat facturaci'#243)
        CopiarOrigen.Strings = (
          'Estat facturaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATFACTU"'
      end
      item
        Nombre = 'ft'
        Master = Metges
        BuscaOrigen.Strings = (
          'Terapeuta responsable')
        CopiarOrigen.Strings = (
          'Terapeuta responsable')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Tractament de Filiacions Resum'
    NombreTabla = 'Tractaments'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Tractament'
      'N'#250'm. Hist.'
      'Prestaci'#243
      'Data ingr'#233's'
      'Data alta'
      'Data prealta'
      'Coordinador'
      'Codi diagn'#242'stic alta'
      'Literal diagn'#242'stic alta'
      '% pacient'
      'Refer'#232'ncia'
      'Estat facturaci'#243
      'Versi'#243' CIM')
    IndiceVer = 'Tractament'
    Navegar = False
    Nivel = 7
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 37201.7158259259
    Left = 1004
    Top = 492
  end
  object VegadaBI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'VegadaBI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE ULTIMTRACT INTEGER;'
      '  DECLARE VARIABLE ULTIMAPRESTA VARCHAR(5);'
      '  DECLARE VARIABLE DIES INTEGER;'
      ''
      '  DECLARE VARIABLE PotInformeAlta SMALLINT;'
      '  '
      
        '  DECLARE VARIABLE POT_PROCES INTEGER;          /* Indica si el ' +
        'tractament pot tenir proc'#233's (P35 + X1) */'
      '  DECLARE VARIABLE MOTIU_OK INTEGER;'
      
        '  DECLARE VARIABLE POT_PROCESNR INTEGER;        /* Indica si el ' +
        'tractament pot tenir proc'#233's NR (P33 + t'#233' protocol NR) */'
      '  DECLARE VARIABLE TEPROTOCOLNR INTEGER;'
      
        '  DECLARE VARIABLE ES_MOTIUTIR INTEGER;         /* Indica si el ' +
        'motiu del tractament '#233's TIR (X7) */'
      '  '
      
        '  DECLARE VARIABLE C_PROCES INTEGER;            /* Darrer proc'#233's' +
        ' */'
      
        '  DECLARE VARIABLE C_MOTIU_P INTEGER;           /* Motiu del dar' +
        'rer proc'#233's */'
      '  DECLARE VARIABLE FI_PROCES_ANT CHAR(1);'
      '  DECLARE VARIABLE DATA_ALTA_ANT DATE;'
      '  DECLARE VARIABLE C_TRACTAMENT_ANT INTEGER;'
      '  DECLARE VARIABLE C_PRESTACIO_ANT VARCHAR(4);'
      '  DECLARE VARIABLE C_CENTREFAC_ANT VARCHAR(2);'
      
        '/*  DECLARE VARIABLE POT_PROCESNR_ANT INTEGER;    /* Indica si e' +
        'l darrer tractament del proc'#233's pot tenir proc'#233's NR (P33 + t'#233' pro' +
        'tocol NR) <-- no ens cal!! */'
      
        '  DECLARE VARIABLE TEPROTOCOLNR_ANT INTEGER;    /* Indica si el ' +
        'darrer tractament del proc'#233's t'#233' protocol NR */'
      ''
      
        '  DECLARE VARIABLE ES_MOTIUTIR_P INTEGER;       /* Indica si el ' +
        'darrer proc'#233's '#233's TIR */'
      
        '  DECLARE VARIABLE NOU_PROCES CHAR(1);          /* Indica si cal' +
        ' generar un nou proc'#233's */'
      
        '  DECLARE VARIABLE ACTUALITZA_DI CHAR(1);       /* Indica si cal' +
        ' actualitzar la data d'#39'inici del proc'#233's */'
      '  DECLARE VARIABLE COMPLICACIONS INTEGER;'
      ''
      
        '  DECLARE VARIABLE TE_TIR_ANT INTEGER;          /* Si hi ha un p' +
        'roc'#233's TIR anterior (entra nou proc'#233's TIR) -> buidem lesi'#243' pq ent' +
        'rin nova lesi'#243' */'
      ''
      
        '  DECLARE VARIABLE DATA_INICI DATE;             /* Inicialitzaci' +
        #243' de la pauta NR ambulat'#242'ria */'
      '  DECLARE VARIABLE DIES_DIF INTEGER;'
      '  DECLARE VARIABLE SETMANES INTEGER;'
      ''
      '  DECLARE VARIABLE DIAGNEUROING VARCHAR(40);'
      '  '
      '  DECLARE VARIABLE SESSIONS     INTEGER;'
      '  DECLARE VARIABLE J            INTEGER;'
      '  DECLARE VARIABLE DATA         DATE;'
      '  DECLARE VARIABLE FESTA        INTEGER;'
      '  DECLARE VARIABLE DDS          INTEGER;'
      '  '
      '  DECLARE VARIABLE VERSIOCIM    INTEGER;'
      ''
      '  DECLARE VARIABLE PREALTA_4M SMALLINT;'
      'BEGIN'
      ''
      '  IF (USER <> '#39'REPLICATOR'#39') THEN'
      '  BEGIN'
      '      NEW.C_COORDINADOR = UPPER(NEW.C_COORDINADOR);'
      ''
      
        '      SELECT ESTAT FROM CONFIGBLOQ WHERE CAMP = '#39'CIM_VERSIOCIM'#39' ' +
        'INTO :VERSIOCIM;'
      ''
      '      /* Per ambulatoris, calculem el camp VEGADA */'
      
        '      IF ((NEW.C_PRESTACIO = '#39'2014'#39') OR (NEW.C_PRESTACIO = '#39'2008' +
        #39')) THEN'
      '      BEGIN'
      ''
      '         ULTIMAPRESTA = NULL;'
      '         ULTIMTRACT = NULL;'
      ''
      
        '         SELECT T.C_TRACTAMENT, T.C_PRESTACIO, NEW.DATA_INGRES -' +
        ' T.DATA_ALTA'
      '         FROM   TRACTAMENTS T'
      
        '         JOIN   CODICAMPS C ON C.TIPUSCODI = '#39'ESTATFACTU'#39' AND C.' +
        'C_CODI = T.C_ESTATFAC AND C.R_CODI <> 9'
      '         WHERE  C_HISTORIA = NEW.C_HISTORIA'
      '         AND    T.DATA_INGRES < NEW.DATA_INGRES'
      '         AND    T.C_PRESTACIO IN ('#39'1004'#39', '#39'2014'#39', '#39'2008'#39')'
      '         ORDER  BY DATA_INGRES DESC'
      '         ROWS   1'
      '         INTO  :ULTIMTRACT, :ULTIMAPRESTA, :DIES;'
      ''
      ''
      '         IF (ULTIMAPRESTA = '#39'1004'#39') THEN NEW.VEGADA = 1;'
      
        '         IF ((ULTIMAPRESTA = '#39'2014'#39') OR (ULTIMAPRESTA = '#39'2008'#39'))' +
        ' THEN'
      '         BEGIN'
      '               IF (DIES <= 5) THEN NEW.VEGADA = 1;'
      '               ELSE NEW.VEGADA = 2;'
      '         END;'
      '         '
      
        '         /* Si ve d'#39'un altre tractament, arrosseguem el diagn'#242'st' +
        'ic ingr'#233's (ja que no ompliran l'#39'ECB) */'
      
        '         IF (NEW.VEGADA = 1) THEN SELECT G_DIAGNOSTICINGRES, C_D' +
        'IAGNOSTICINGRES, N_DIAGNOSTICINGRES, VERSIOCIM_G, VERSIOCIM, CON' +
        'FIANCADPI'
      '                                  FROM   TRACTAMENTS'
      
        '                                  WHERE  C_TRACTAMENT = :ULTIMTR' +
        'ACT'
      
        '                                  INTO   NEW.G_DIAGNOSTICINGRES,' +
        ' NEW.C_DIAGNOSTICINGRES, NEW.N_DIAGNOSTICINGRES, NEW.VERSIOCIM_G' +
        ', NEW.VERSIOCIM, NEW.CONFIANCADPI;'
      ''
      
        '         /* Quan assignem el proc'#233's, si '#233's un nou proc'#233's posarem' +
        ' Vegada = 0                 <--- en aquet mateix trigger, m'#233's av' +
        'all'
      
        '            Quan identifiquin proc'#233's, si '#233's nou, posarem Vegada ' +
        '= 0                                                   <--- per c' +
        'odi'
      
        '            Quan insertin una nova lesi'#243', preguntarem si inicia ' +
        'un nou proc'#233's i en cas afirmatiu, posarem Vegada = 0  <--- per c' +
        'odi'
      '         */'
      '      END;'
      '      '
      ''
      '      /* Per Int. Maj. Ambulat'#242'ries posem destinaci'#243' 1 */'
      '      IF (NEW.C_PRESTACIO = '#39'2005'#39') THEN NEW.C_DESTINACIO = 1;'
      ''
      
        '      /* Si el motiu ho requereix, automatitzem la data de preal' +
        'ta per d'#39'aqu'#237' a 4 mesos - Plataforma GNPT */'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_DRET = '#39'X10'#39' AND C' +
        '_MOTIU = NEW.C_MOTIU INTO :PREALTA_4M;'
      
        '      IF (PREALTA_4M > 0) THEN NEW.DATA_PREALTA = NEW.DATA_INGRE' +
        'S + 120;'
      '      '
      
        '      /* Si tenim un diagn'#242'stic autom'#224'tic en funci'#243' del motiu, e' +
        'l posem.'
      
        '         De moment passem nom'#233's el diagn'#242'stic principal. Ho fem ' +
        #250'nicament si encara no l'#39'hem determinat (en aquest mateix trigge' +
        'r) */'
      
        '      IF ((NEW.C_MOTIU <> 0) AND (NEW.C_DIAGNOSTICINGRES IS NULL' +
        ')) THEN'
      '      BEGIN'
      
        '            SELECT C.C_ICD, COALESCE(NULLIF(I.N_GUTTMANN, '#39#39'), M' +
        '.N_CODI), C.VERSIOCIM, 100  /* si a CodiICD no hi ha literal gut' +
        'tmann, hi posem la descripci'#243' del motiu */'
      '            FROM   CODICAMPS M'
      
        '            JOIN ICDCODICAMPS C ON M.TIPUSCODI = C.TIPUSCODI AND' +
        ' M.C_CODI = C.C_CODI AND C.TIPUSICD = '#39'D'#39' AND C.VERSIOCIM = :VER' +
        'SIOCIM AND C.ORDRE = 1'
      '            JOIN CODIICD I ON C.C_ICD = I.C_ICD'
      '            WHERE  C.TIPUSCODI = '#39'MOTIU'#39
      '            AND    C.C_CODI = NEW.C_MOTIU'
      
        '            INTO   NEW.C_DIAGNOSTICINGRES, NEW.N_DIAGNOSTICINGRE' +
        'S, NEW.VERSIOCIM, NEW.CONFIANCADPI;'
      '      END;'
      ''
      
        '      /* Inicialitzem ESTATINFORMEALTA si la prestaci'#243' ha de ten' +
        'ir informe d'#39'alta */'
      '      IF (NEW.ESTATINFORMEALTA = 0) THEN'
      '      BEGIN'
      '            SELECT COUNT(*)'
      '            FROM   DRETSPRESTA'
      '            WHERE  C_PRESTACIO = NEW.C_PRESTACIO'
      '            AND    C_DRET = "P300"'
      '            INTO  :PotInformeAlta;'
      '            '
      
        '            IF (PotInformeAlta <> 0) THEN NEW.ESTATINFORMEALTA =' +
        ' 1;'
      '      END;'
      ''
      ''
      '      /*******************************************/'
      
        '      /******** PROC'#201'S REHABILITADOR i NR ********/   /* Assigna' +
        'ci'#243' del proc'#233's que li correspongui (nou, antic o cap) */'
      
        '      /*******************************************/   /* Inicial' +
        'itzaci'#243' de la prealta, la freq'#252#232'ncia i Fi_Proces per als ambulat' +
        'oris amb protocol NR */'
      ''
      
        '      /* Mirem si la prestaci'#243' pot tenir Proc'#233's (drets de presta' +
        'ci'#243' i motiu) */'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P35'#39' INTO :POT_PROCES;'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU  WHERE C_MOTIU     = NEW.C' +
        '_MOTIU     AND C_DRET = '#39'X1'#39'  INTO :MOTIU_OK;'
      ''
      '      POT_PROCES = POT_PROCES * MOTIU_OK;'
      ''
      
        '      /* Mirem si la prestaci'#243' pot tenir Proc'#233's NR (drets de pre' +
        'staci'#243' i protocol assignat segons centrefac i motiu) */'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P33'#39' INTO :POT_PROCESNR;'
      
        '      SELECT COUNT(*) FROM PROTOCOLS_PROCESNR WHERE C_CENTREFAC ' +
        '= NEW.C_CENTREFAC AND C_MOTIU = NEW.C_MOTIU INTO :TEPROTOCOLNR;'
      '      POT_PROCESNR = POT_PROCESNR * TEPROTOCOLNR;'
      ''
      '      /* I ens guardem si el tractament '#233's TIR */'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU  WHERE C_MOTIU = NEW.C_MOT' +
        'IU AND C_DRET = '#39'X7'#39' INTO :ES_MOTIUTIR;  /* Tractament TIR */'
      ''
      '      NEW.C_PROCES = NULL;'
      '      NEW.FI_PROCES = NULL;'
      ''
      '      /* ASSIGNACI'#211' DE PROC'#201'S */'
      '      IF (POT_PROCES > 0) THEN'
      '      BEGIN'
      
        '            IF ((NEW.C_PRESTACIO = "1004") OR (NEW.C_PRESTACIO =' +
        ' "7200")) THEN NEW.FI_PROCES = '#39'N'#39';'
      
        '                                                                ' +
        '          ELSE NEW.FI_PROCES = '#39'S'#39'; /* 2014 i 2008 */'
      ''
      
        '            /* Si el tractament que inicia '#233's TIR, hem de mirar ' +
        'si hem d'#39'assignar-li un proc'#233's anterior o comen'#231'ar-ne un de nou.' +
        ' (Tant si '#233's NR com si no).'
      
        '               Altrament, ser'#224' un proc'#233's nou, per'#242' pot ser que s' +
        #39'hagi inicialitzat en fer la programaci'#243' des de CE o des d'#39'una a' +
        'lta de tractament.'
      '               Per tant:'
      '               '
      
        '            /* Busquem l'#39#250'ltim proc'#233's del pacient - que estigui ' +
        'assignat a algun tractament no anul'#183'lat */'
      '            C_PROCES = NULL;'
      '            '
      
        '            SELECT P.C_PROCES, P.C_MOTIU, T.FI_PROCES, T.DATA_AL' +
        'TA, T.C_TRACTAMENT, T.C_PRESTACIO, C_CENTREFAC'
      '            FROM   PROCESNR P'
      '            JOIN   TRACTAMENTS T ON P.C_PROCES = T.C_PROCES'
      
        '            JOIN   CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.' +
        'TIPUSCODI = "ESTATFACTU" and X.R_CODI <> 9'
      '            WHERE  P.C_HISTORIA = NEW.C_HISTORIA'
      '            ORDER BY T.DATA_ALTA DESC'
      '            ROWS   1'
      
        '            INTO  :C_PROCES, :C_MOTIU_P, :FI_PROCES_ANT, :DATA_A' +
        'LTA_ANT, :C_TRACTAMENT_ANT, :C_PRESTACIO_ANT, :C_CENTREFAC_ANT;'
      '            '
      '            /* Si no hi ha cap proc'#233's anterior -> nou proc'#233's */'
      '            IF (C_PROCES IS NULL) THEN NOU_PROCES = '#39'S'#39';'
      '            '
      '            ELSE BEGIN'
      '                  /* Mirem si aquest '#250'ltim proc'#233's '#233's TIR */'
      
        '                  SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU ' +
        '= :C_MOTIU_P AND C_DRET = '#39'X7'#39' INTO :ES_MOTIUTIR_P;'
      ''
      
        '                  /* Mirem si aquest '#250'ltim proc'#233's t'#233' protocol NR' +
        ' */'
      
        '/*                  SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRE' +
        'STACIO = :C_PRESTACIO_ANT AND C_DRET = '#39'P33'#39' INTO :POT_PROCESNR_' +
        'ANT; */'
      
        '                  SELECT COUNT(*) FROM PROTOCOLS_PROCESNR WHERE ' +
        'C_CENTREFAC = :C_CENTREFAC_ANT AND C_MOTIU = :C_MOTIU_P INTO :TE' +
        'PROTOCOLNR_ANT;'
      
        '/*                  POT_PROCESNR_ANT = POT_PROCESNR_ANT * TEPROT' +
        'OCOLNR_ANT; */ /* si mirem tamb'#233' si la prestacio_ant pot tenir p' +
        'roc'#233's, no ca'#231'arem les 2001!! */'
      ''
      
        '                  /* Si el protocol NR (~ motiu) del darrer proc' +
        #233's no concorda amb el del tractament que inicia -> nou proc'#233's */'
      
        '                  IF      ((ES_MOTIUTIR = 0) AND (NEW.C_MOTIU <>' +
        ' C_MOTIU_P)) THEN NOU_PROCES = '#39'S'#39';   /* tractament que inicia n' +
        'o '#233's TIR, i '#250'ltim proc'#233's t'#233' diferent motiu */'
      
        '                  ELSE IF ((ES_MOTIUTIR > 0) AND (ES_MOTIUTIR_P ' +
        '= 0))        THEN NOU_PROCES = '#39'S'#39';   /* tractament que inicia '#233 +
        's TIR per'#242' '#250'ltim proc'#233's no */'
      
        '                  ELSE IF  (TEPROTOCOLNR_ANT <> POT_PROCESNR)   ' +
        '             THEN NOU_PROCES = '#39'S'#39';   /* tractament que incia no' +
        ' t'#233' protocol i l'#39'anterior s'#237' o al rev'#233's */'
      ''
      
        '                  /* Si el motiu/protocol del darrer proc'#233's conc' +
        'orda amb el que comen'#231'a, mirem altres condicions */'
      '                  ELSE BEGIN'
      
        '                        /* NO TIR: Si el darrer tractament final' +
        'itza proc'#233's o '#233's massa antic -> nou proc'#233's.'
      
        '                                   Altrament -> mateix proc'#233's i ' +
        'actualitzarem data d'#39'inici del proc'#233's amb la d'#39'inici del tractam' +
        'ent actual */'
      '                        IF (ES_MOTIUTIR = 0) THEN'
      '                        BEGIN'
      
        '                              IF ((FI_PROCES_ANT = "S") OR (DATA' +
        '_ALTA_ANT < "TODAY" - 90)) THEN BEGIN NOU_PROCES = "S"; ACTUALIT' +
        'ZA_DI = "N"; END;'
      
        '                                                                ' +
        '                           ELSE BEGIN NOU_PROCES = "N"; ACTUALIT' +
        'ZA_DI = "S"; END;'
      '                        END'
      ''
      '                        /* TIR'
      
        '                             1.- si fa m'#233's de 3 mesos de l'#39#250'ltim' +
        'a alta -> nou proc'#233's'
      
        '                             2.- altrament, si hi ha hagut algun' +
        ' tractament per cirurgia entremig -> nou proc'#233's'
      
        '                             3.- altrament, si '#250'ltim proc'#233's no f' +
        'inalitzat -> mateix proc'#233's'
      
        '                             4.- altrament, ('#250'ltim proc'#233's finali' +
        'tzat fa menys de 3 mesos) deixem proc'#233's buit perqu'#232' l'#39'identifiqu' +
        'in */'
      
        '                             /* 2026: Deixo de mirar tema de nov' +
        'a lesi'#243' perqu'#232' dubto que l'#39'entrin abans i coincideixi que ha pas' +
        'sat poc temps des del darrer proc'#233's. */'
      '                        ELSE BEGIN'
      
        '                              /* 1. proc'#233's anterior massa antic*' +
        '/'
      
        '                              IF (DATA_ALTA_ANT < "TODAY" - 90) ' +
        'THEN BEGIN NOU_PROCES = "S"; ACTUALITZA_DI = "N"; END;'
      ''
      '                              ELSE BEGIN'
      '                                    SELECT COUNT(*)'
      '                                    FROM   TRACTAMENTS T'
      
        '                                    JOIN   CODICAMPS X on T.C_ES' +
        'TATFAC = X.C_CODI and X.TIPUSCODI = "ESTATFACTU" and X.R_CODI <>' +
        ' 9'
      
        '                                    JOIN   DRETSMOTIU D ON T.C_M' +
        'OTIU = D.C_MOTIU'
      
        '                                    WHERE  T.C_HISTORIA = NEW.C_' +
        'HISTORIA'
      
        '                                    AND    T.C_PRESTACIO = "1004' +
        '"'
      
        '                                    AND    D.C_DRET IN ('#39'X3'#39','#39'X4' +
        #39')    /* Complicaci'#243' o cirurgia */'
      
        '                                    AND    T.DATA_INGRES > :DATA' +
        '_ALTA_ANT'
      '                                    INTO  :COMPLICACIONS;'
      ''
      
        '                                    /* 2. han passat coses entre' +
        'mig */'
      
        '                                    IF (COMPLICACIONS > 0) THEN ' +
        'BEGIN NOU_PROCES = "S"; ACTUALITZA_DI = "N"; END;'
      ''
      
        '                                    /* 3. proc'#233's anterior recent' +
        ' i no finalitzat */'
      
        '                                    ELSE IF (FI_PROCES_ANT = "N"' +
        ') THEN BEGIN NOU_PROCES = "N"; ACTUALITZA_DI = "N"; END;'
      '                        '
      
        '                                    /* 4. proc'#233's anterior recent' +
        ' per'#242' finalitzat -> deixem proc'#233's buit */'
      
        '                                    ELSE BEGIN NOU_PROCES = "X";' +
        ' ACTUALITZA_DI = "N"; END;'
      '                              END;'
      '                        END;'
      '                  END;'
      '            END;'
      '            '
      '            /* Nou proc'#233's */'
      '            IF (NOU_PROCES = "S") THEN'
      '            BEGIN'
      '                  /* Finalitzem el proc'#233's anterior */'
      
        '                  UPDATE TRACTAMENTS SET FI_PROCES = "S" WHERE C' +
        '_TRACTAMENT = :C_TRACTAMENT_ANT;'
      ''
      
        '                  /* Generem un nou proc'#233's i posem vegada 0 al t' +
        'ractament que inicia */'
      '                  NEW.C_PROCES = GEN_ID(G_PROCES, 1);'
      '                  NEW.VEGADA = 0;'
      '                  '
      
        '                  /* Afegim el proc'#233's  a la taula de processos N' +
        'R (fins el 06.2026 nom'#233's l'#39'hi afeg'#237'em si era NR, per'#242' ara els hi' +
        ' posarem tots pq ja mirem si t'#233' protocol NR o no per activar les' +
        ' pautes */'
      
        '                  INSERT INTO PROCESNR (C_PROCES, C_HISTORIA, DA' +
        'TA_INICI, C_MOTIU)'
      
        '                  VALUES (NEW.C_PROCES, NEW.C_HISTORIA, NEW.DATA' +
        '_INGRES, NEW.C_MOTIU);'
      ''
      
        '                  /* Si '#233's un proc'#233's TIR i no '#233's el 1r proc'#233's TI' +
        'R del pacient,'
      
        '                     eliminem les dades de la lesi'#243' perqu'#232' el me' +
        'tge identifiqui una nova lesi'#243' successiva */'
      '                  IF (ES_MOTIUTIR > 0) THEN'
      '                  BEGIN'
      '                        SELECT COUNT(*)'
      '                        FROM PROCESNR P'
      
        '                        JOIN TRACTAMENTS T ON P.C_PROCES = T.C_P' +
        'ROCES'
      
        '                        JOIN CODICAMPS X on T.C_ESTATFAC = X.C_C' +
        'ODI and X.TIPUSCODI = "ESTATFACTU" and X.R_CODI <> 9'
      
        '                        JOIN DRETSMOTIU D ON P.C_MOTIU = D.C_MOT' +
        'IU AND D.C_DRET = '#39'X7'#39
      '                        WHERE P.C_HISTORIA = NEW.C_HISTORIA'
      '                        AND P.C_PROCES <> NEW.C_PROCES'
      '                        INTO :TE_TIR_ANT;'
      '                        '
      '                        IF (TE_TIR_ANT > 0)'
      '                        THEN'
      '                              UPDATE FILIACIO'
      
        '                              SET    DATA_LESSIO = NULL, C_LATER' +
        'ALITAT = NULL, C_UNITATMEDICA = 0, SEVERITAT = NULL,'
      
        '                                     C_ORIGEN = NULL, C_CAUSA = ' +
        'NULL, C_CAUSA_DETALL = NULL, CAUSA_ALTRES = NULL,'
      
        '                                     RIC = NULL, GLF = NULL, NIH' +
        'SS = NULL, GLASGOW = NULL, DIES_APT = NULL,'
      
        '                                     N_DIAGNOSTICNEUROLOGIC = NU' +
        'LL, C_ETIOLOGIA = NULL, N_ETIOLOGIA = NULL,'
      
        '                                     G_DEFICITNEUROLOGIC = NULL,' +
        ' G_EFECTETARDA = NULL'
      '                              WHERE  NUM_HIST = NEW.C_HISTORIA;'
      '                  END;'
      '            END;'
      '            '
      '            /* Assignaci'#243' de proc'#233's existent */'
      '            ELSE IF (NOU_PROCES = "N") THEN'
      '            BEGIN'
      '                  NEW.C_PROCES = :C_PROCES;'
      ''
      
        '                  /* Si hem d'#39'actualitzar la data d'#39'inici del pr' +
        'oc'#233's (ie: el proc'#233's ja existia per'#242' inicia amb aquest ambulatori' +
        ' entrant - passa quan es genera la programaci'#243' des de CE o CMA),'
      
        '                     potser cal actualitzar la pauta i moure les' +
        ' setmanes de la programaci'#243' */'
      '                  IF (ACTUALITZA_DI = "S") THEN'
      '                  BEGIN'
      
        '                        SELECT DATA_INICI FROM PROCESNR WHERE C_' +
        'PROCES = NEW.C_PROCES INTO :DATA_INICI;'
      ''
      
        '                        /* Actualitzem la data d'#39'inici del proc'#233 +
        's amb la de l'#39'ambulatori */'
      
        '                        /* Tamb'#233' actualitzem la pauta vigent: tr' +
        'actament i data inici */'
      '                        IF (DATA_INICI <> NEW.DATA_INGRES) THEN'
      '                        BEGIN'
      
        '                              UPDATE PROCESNR SET DATA_INICI = N' +
        'EW.DATA_INGRES WHERE C_PROCES = NEW.C_PROCES ;'
      
        '                              UPDATE PROCESNR_PAUTES SET DATA_IN' +
        'ICI = NEW.DATA_INGRES WHERE C_PROCES = NEW.C_PROCES AND ESTAT = ' +
        '"V";'
      '                        END;'
      ''
      
        '                        /* Si la data d'#39'inici de l'#39'ambulatori ca' +
        'u en una setmana diferent de la prevista, movem les pautes i tam' +
        'b'#233' la data de prealta */'
      '                        DIES_DIF = NEW.DATA_INGRES - DATA_INICI;'
      
        '                        IF ((DIES_DIF < 0) OR (DIES_DIF > 6)) TH' +
        'EN  /* La data_inici prevista '#233's sempre un dilluns. Si la defini' +
        'tiva '#233's anterior o b'#233' m'#233's de 6 dies despr'#233's, '#233's que hem canviat ' +
        'de setmana. */'
      '                        BEGIN'
      
        '                              IF (DIES_DIF  < 0) THEN SETMANES =' +
        ' F_TRUNCATE(DIES_DIF/7)-1;'
      
        '                                                 ELSE SETMANES =' +
        ' F_TRUNCATE(DIES_DIF /7);'
      ''
      
        '                              UPDATE PROCESNR_TORNS SET DIA_INIC' +
        'I = DIA_INICI + (7*:SETMANES) + 2000 WHERE C_PROCES = NEW.C_PROC' +
        'ES ;  /* Afegim 2000 dies perqu'#232' no falli la PK */'
      
        '                              UPDATE PROCESNR_TORNS SET DIA_INIC' +
        'I = DIA_INICI                 - 2000 WHERE C_PROCES = NEW.C_PROC' +
        'ES ;  /* i els traiem despr'#233's */'
      
        '                              UPDATE PROCESNR_PAUTES SET DATA_PR' +
        'EALTA = DATA_PREALTA + (7*:SETMANES) WHERE C_PROCES = NEW.C_PROC' +
        'ES ;'
      '                        END;'
      '                  END;'
      '            END;'
      '      END;'
      ''
      '      /* Si filien un ambulatori amb pauta NR programada: */'
      
        '      IF ((NEW.C_PRESTACIO = '#39'2014'#39') AND (NEW.C_PROCES IS NOT NU' +
        'LL)) THEN'
      '      BEGIN'
      
        '            /* assignem la prealta del proc'#233's a l'#39'ambulatori que' +
        ' filien */'
      '            SELECT DATA_PREALTA'
      '            FROM   PROCESNR_PAUTES'
      '            WHERE  C_PROCES = NEW.C_PROCES'
      
        '            AND    ESTAT = "V"                      /* existeix ' +
        'una '#250'nica pauta vigent */'
      
        '            AND    DATA_PREALTA > NEW.DATA_INGRES   /* nom'#233's si ' +
        'la prealta '#233's posterior a l'#39'ingr'#233's */'
      '            INTO   NEW.DATA_PREALTA;'
      '            '
      
        '            /* assignem la freq'#252#232'ncia que li correspon segons el' +
        ' torn ambulatori de la pauta */'
      '            SELECT TORN'
      '            FROM   PROCESNR_TORNS'
      '            WHERE  C_PROCES = NEW.C_PROCES'
      
        '            AND    NEW.DATA_INGRES BETWEEN DIA_INICI AND DIA_INI' +
        'CI + 7   /* Setmana de la data d'#39'ingr'#233's */'
      
        '            ROWS   1                                            ' +
        '         /* De fet nom'#233's hauria de sortir una l'#237'nia */'
      '            INTO   NEW.C_FREQUENCIA;'
      '      END;'
      ''
      ''
      
        '      /* Inicialitzem el DIAGN'#210'STIC NEUROL'#210'GIC A L'#39'INGR'#201'S amb el' +
        ' de Filiaci'#243' */'
      
        '      SELECT N_DIAGNOSTICNEUROLOGIC FROM FILIACIO WHERE NUM_HIST' +
        ' = NEW.C_HISTORIA INTO :DIAGNEUROING;'
      '      NEW.N_DIAGNOSTICNEUROLOGICINGRES = :DIAGNEUROING;'
      '  END;'
      '  '
      '  /* ******************************** */'
      '  /* *** NPC - DURADA TRACTAMENTS *** */'
      '  /* ******************************** */'
      
        '  SELECT NUM_MAX_SESSIONS FROM PRESTASESSIONS WHERE C_PRESTACIO=' +
        'NEW.C_PRESTACIO INTO :SESSIONS;'
      '  IF (SESSIONS IS NULL) THEN SESSIONS=0;'
      ''
      
        '  /* Cal tenir en compte la freq'#252#232'ncia. Si no est'#224' informada, no' +
        ' fem res a l'#39'insert. Ho farem a l'#39'update. */'
      '  IF ((SESSIONS > 0) AND (NEW.C_FREQUENCIA IS NOT NULL)) THEN'
      '  BEGIN'
      '      DATA = NEW.DATA_INGRES;'
      '      J = 1;'
      '      WHILE (J <= SESSIONS) DO'
      '      BEGIN'
      
        '          SELECT COUNT(*) FROM FESTIUS WHERE DATA = :DATA INTO :' +
        'FESTA;'
      '          IF (FESTA IS NULL) THEN FESTA = 0;'
      '          '
      
        '          DDS = F_DIADELASEMANA(:DATA) - 1;  /* Els car'#224'cters co' +
        'mencen a la posici'#243' 0 */'
      
        '          IF  ((F_MID(NEW.C_FREQUENCIA, DDS, 1) = '#39'X'#39') AND (FEST' +
        'A=0)) THEN J = J + 1;'
      '          '
      
        '          IF (J <= SESSIONS) THEN DATA = DATA + 1;  /* Si ja hem' +
        ' comptat totes les sessions no hem d'#39'aban'#231'ar m'#233's */'
      '      END;'
      ''
      '      NEW.DATA_PREALTA = DATA;'
      '  END;'
      '  '
      '  /* 1-1-2018 COMEN'#199'A CIM-10 */'
      
        '  IF (NEW.C_DIAGNOSTICINGRES IS NOT NULL) THEN NEW.VERSIOCIM   =' +
        ' :VERSIOCIM;'
      
        '  IF (NEW.G_DIAGNOSTICINGRES IS NOT NULL) THEN NEW.VERSIOCIM_G =' +
        ' :VERSIOCIM;'
      ''
      
        '  IF (F_LRTRIM(NEW.C_FREQUENCIA) = '#39#39') THEN NEW.C_FREQUENCIA = N' +
        'ULL;'
      'END')
    Dic1 = Tractaments
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
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 100
    Top = 492
  end
  object VegadaBU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'VegadaBU'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE ULTIMAPRESTA VARCHAR(5);'
      ''
      '  DECLARE VARIABLE PotInformeAlta SMALLINT;'
      '  '
      
        '  DECLARE VARIABLE POT_PROCES_old INTEGER;          /* Indica si' +
        ' el tractament podia tenir proc'#233's (P35 + X1) */'
      '  DECLARE VARIABLE MOTIU_OK_old INTEGER;'
      
        '  DECLARE VARIABLE POT_PROCESNR_old INTEGER;        /* Indica si' +
        ' el tractament podia tenir proc'#233's NR (P33 + t'#233' protocol NR) */'
      '  DECLARE VARIABLE TEPROTOCOLNR_old INTEGER;'
      
        '  DECLARE VARIABLE ES_MOTIUTIR_old INTEGER;         /* Indica si' +
        ' el motiu del tractament era TIR (X7) */'
      ''
      
        '  DECLARE VARIABLE POT_PROCES_new INTEGER;          /* Indica si' +
        ' el tractament pot tenir proc'#233's (P35 + X1) */'
      '  DECLARE VARIABLE MOTIU_OK_new INTEGER;'
      
        '  DECLARE VARIABLE POT_PROCESNR_new INTEGER;        /* Indica si' +
        ' el tractament pot tenir proc'#233's NR (P33 + t'#233' protocol NR) */'
      '  DECLARE VARIABLE TEPROTOCOLNR_new INTEGER;'
      
        '  DECLARE VARIABLE ES_MOTIUTIR_new INTEGER;         /* Indica si' +
        ' el motiu del tractament '#233's TIR (X7) */'
      ''
      '  DECLARE VARIABLE ELIMINAPROCES INTEGER;'
      '  '
      
        '  DECLARE VARIABLE C_PROCES INTEGER;            /* Darrer proc'#233's' +
        ' */'
      
        '  DECLARE VARIABLE C_MOTIU_P INTEGER;           /* Motiu del dar' +
        'rer proc'#233's */'
      '  DECLARE VARIABLE FI_PROCES_ANT CHAR(1);'
      '  DECLARE VARIABLE DATA_ALTA_ANT DATE;'
      '  DECLARE VARIABLE C_TRACTAMENT_ANT INTEGER;'
      '  DECLARE VARIABLE C_PRESTACIO_ANT VARCHAR(4);'
      '  DECLARE VARIABLE C_CENTREFAC_ANT VARCHAR(2);'
      
        '/*  DECLARE VARIABLE POT_PROCESNR_ANT INTEGER;    /* Indica si e' +
        'l darrer tractament del proc'#233's pot tenir proc'#233's NR (P33 + t'#233' pro' +
        'tocol NR) <-- no ens cal!! */'
      
        '  DECLARE VARIABLE TEPROTOCOLNR_ANT INTEGER;      /* Indica si e' +
        'l darrer tractament del proc'#233's t'#233' protocol NR */'
      '  '
      
        '  DECLARE VARIABLE ES_MOTIUTIR_P INTEGER;       /* Indica si el ' +
        'darrer proc'#233's '#233's TIR */'
      
        '  DECLARE VARIABLE NOU_PROCES CHAR(1);          /* Indica si cal' +
        ' generar un nou proc'#233's */'
      
        '  DECLARE VARIABLE ACTUALITZA_DI CHAR(1);       /* Indica si cal' +
        ' actualitzar la data d'#39'inici del proc'#233's */'
      '  DECLARE VARIABLE COMPLICACIONS INTEGER;'
      ''
      
        '  DECLARE VARIABLE TE_TIR_ANT INTEGER;          /* Si hi ha un p' +
        'roc'#233's TIR anterior (entra nou proc'#233's TIR) -> buidem lesi'#243' pq ent' +
        'rin nova lesi'#243' */'
      ''
      
        '  DECLARE VARIABLE DATA_INICI DATE;             /* Inicialitzaci' +
        #243' de la pauta NR ambulat'#242'ria */'
      '  DECLARE VARIABLE DIES_DIF INTEGER;'
      '  DECLARE VARIABLE SETMANES INTEGER;'
      ''
      '  DECLARE VARIABLE DIES INTEGER;'
      '  '
      '  DECLARE VARIABLE OLDCMA SMALLINT;'
      '  DECLARE VARIABLE NEWCMA SMALLINT;'
      '  '
      '  DECLARE VARIABLE PREALTA_4M SMALLINT;'
      ''
      '  DECLARE VARIABLE VERSIOCIM    INTEGER;'
      '  DECLARE VARIABLE OLD_N_DIAGINGRES VARCHAR(40);'
      'BEGIN'
      '  IF (USER <> '#39'REPLICATOR'#39') THEN'
      '  BEGIN'
      
        '      SELECT ESTAT FROM CONFIGBLOQ WHERE CAMP = '#39'CIM_VERSIOCIM'#39' ' +
        'INTO :VERSIOCIM;'
      ''
      '      IF (NEW.C_PRESTACIO <> OLD.C_PRESTACIO) THEN'
      '      BEGIN'
      '      '
      '            /* VEGADA */'
      
        '            IF ((NEW.C_PRESTACIO = '#39'2014'#39') OR (NEW.C_PRESTACIO =' +
        ' '#39'2008'#39')) THEN'
      '            BEGIN'
      '                  ULTIMAPRESTA = null;'
      ''
      
        '                  FOR SELECT T.C_PRESTACIO, NEW.DATA_INGRES - T.' +
        'DATA_ALTA'
      '                      FROM TRACTAMENTS T'
      
        '                      JOIN   CODICAMPS C ON C.TIPUSCODI = '#39'ESTAT' +
        'FACTU'#39' AND C.C_CODI = T.C_ESTATFAC AND C.R_CODI <> 9'
      '                      WHERE C_HISTORIA = NEW.C_HISTORIA'
      '                      AND :ULTIMAPRESTA IS NULL'
      '                      AND T.DATA_INGRES < NEW.DATA_INGRES'
      
        '                      AND T.C_PRESTACIO IN ('#39'1004'#39', '#39'2014'#39', '#39'200' +
        '8'#39')'
      '                      ORDER BY DATA_INGRES DESC'
      '                      INTO :ULTIMAPRESTA, :DIES'
      '                  DO BEGIN'
      
        '                        IF (ULTIMAPRESTA = '#39'1004'#39' ) THEN NEW.VEG' +
        'ADA = 1;'
      
        '                        IF ((ULTIMAPRESTA = '#39'2014'#39' ) OR (ULTIMAP' +
        'RESTA = '#39'2008'#39')) THEN'
      '                        BEGIN'
      '                            IF (DIES <= 5) THEN NEW.VEGADA = 1;'
      '                            ELSE NEW.VEGADA = 2;'
      '                        END;'
      '                  END'
      ''
      '               /* Juliol 2015'
      
        '                  Quan assignem el proc'#233's, si '#233's un nou proc'#233's p' +
        'osarem Vegada = 0                 <--- en aquet mateix trigger, ' +
        'm'#233's avall'
      
        '                  Quan identifiquin proc'#233's, si '#233's nou, posarem V' +
        'egada = 0                                                   <---' +
        ' per codi'
      
        '                  Quan insertin una nova lesi'#243', preguntarem si i' +
        'nicia un nou proc'#233's i en cas afirmatiu, posarem Vegada = 0  <---' +
        ' per codi'
      '               */'
      '            END;'
      '            '
      '            /* ENQUESTA CMA */'
      '            '
      '            OLDCMA = 0;'
      '            NEWCMA = 0;'
      '            '
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET = '#39'P38' +
        #39' AND C_PRESTACIO = OLD.C_PRESTACIO INTO :OLDCMA;'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET = '#39'P38' +
        #39' AND C_PRESTACIO = NEW.C_PRESTACIO INTO :NEWCMA;'
      ''
      '            /* Si passa a tenir dret d'#39'enquesta */'
      '            IF ((OLDCMA = 0) AND (NEWCMA = 1))'
      '            THEN UPDATE BQUIRURGIC'
      '                 SET    ESTAT_CMA = 0'
      '                 WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                 AND    ESTAT_CMA IS NULL;'
      '                 '
      '            /* Si deixa de tenir dret d'#39'enquesta */'
      '            ELSE IF ((OLDCMA = 1) AND (NEWCMA = 0))'
      '            THEN UPDATE BQUIRURGIC'
      '                 SET ESTAT_CMA = NULL'
      '                 WHERE C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                 AND ESTAT_CMA = 0;'
      '      END;'
      '      '
      '      /* Si canvien el motiu */'
      '      IF (OLD.C_MOTIU <> NEW.C_MOTIU) THEN'
      '      BEGIN'
      
        '            /* Si el motiu ho requereix, automatitzem la data de' +
        ' prealta per d'#39'aqu'#237' a 4 mesos (si no l'#39'han indicada i encara no ' +
        'han passat els 4 mesos) - Programa GNPT */'
      
        '            SELECT COUNT(*) FROM DRETSMOTIU WHERE C_DRET = '#39'X10'#39 +
        ' AND C_MOTIU = NEW.C_MOTIU INTO :PREALTA_4M;'
      
        '            IF ((PREALTA_4M > 0) AND (OLD.DATA_PREALTA IS NULL) ' +
        'AND (NEW.DATA_PREALTA IS NULL) AND (NEW.DATA_INGRES + 120 > "TOD' +
        'AY")) THEN NEW.DATA_PREALTA = NEW.DATA_INGRES + 120;'
      '            '
      
        '            /* Si tenim un diagn'#242'stic autom'#224'tic en funci'#243' del no' +
        'u motiu i no n'#39'han posat un altre manualment, posem l'#39'autom'#224'tic.'
      
        '               Si no hi ha diagn'#242'stic autom'#224'tic en funci'#243' del no' +
        'u motiu i no n'#39'han posat un altre manualment, traiem l'#39'autom'#224'tic' +
        ' que hi pogu'#233's haver. */'
      ''
      
        '            /* Busquem el que li tocaria amb el motiu anterior *' +
        '/'
      '            SELECT M.N_CODI'
      '            FROM   CODICAMPS M'
      
        '            JOIN   ICDCODICAMPS C ON M.TIPUSCODI = C.TIPUSCODI A' +
        'ND M.C_CODI = C.C_CODI AND C.TIPUSICD = '#39'D'#39' AND C.VERSIOCIM = :V' +
        'ERSIOCIM AND C.ORDRE = 1'
      '            WHERE  M.TIPUSCODI = "MOTIU"'
      '            AND    M.C_CODI = OLD.C_MOTIU'
      '            INTO  :OLD_N_DIAGINGRES;'
      '            '
      
        '            IF (OLD_N_DIAGINGRES IS NULL) THEN OLD_N_DIAGINGRES ' +
        '= '#39#39';'
      ''
      
        '            /* I si no s'#39'ha modificat, li posem el que li toca a' +
        'ra (ho mirem per literal: si l'#39'han escrit manualment, mantenim e' +
        'l que han posat (l'#39'autom'#224'tic s'#39'afegir'#224' com a secundari, al trigg' +
        'er Update) */'
      '            IF ( (OLD_N_DIAGINGRES = OLD.N_DIAGNOSTICINGRES)'
      
        '            OR  ((OLD_N_DIAGINGRES = '#39#39') AND (OLD.N_DIAGNOSTICIN' +
        'GRES IS NULL)) ) THEN'
      '            BEGIN'
      ''
      
        '                  SELECT C.C_ICD, COALESCE(NULLIF(I.N_GUTTMANN, ' +
        #39#39'), M.N_CODI)  /* si a CodiICD no hi ha literal guttmann, hi po' +
        'sem la descripci'#243' del motiu */'
      '                  FROM   CODICAMPS M'
      
        '                  JOIN   ICDCODICAMPS C ON M.TIPUSCODI = C.TIPUS' +
        'CODI AND M.C_CODI = C.C_CODI AND C.TIPUSICD = '#39'D'#39' AND C.VERSIOCI' +
        'M = :VERSIOCIM AND C.ORDRE = 1'
      '                  JOIN   CODIICD I ON C.C_ICD = I.C_ICD'
      '                  WHERE  M.TIPUSCODI = '#39'MOTIU'#39
      '                  AND    M.C_CODI = NEW.C_MOTIU'
      
        '                  INTO   NEW.C_DIAGNOSTICINGRES, NEW.N_DIAGNOSTI' +
        'CINGRES;'
      '                  '
      
        '                  /* Si tenim un codi de diagn'#242'stic, li posem co' +
        'nfian'#231'a 100; altrament, la buidem */'
      
        '                  IF ((NEW.C_DIAGNOSTICINGRES IS NOT NULL) AND (' +
        'NEW.C_DIAGNOSTICINGRES <> '#39#39')) THEN BEGIN NEW.CONFIANCADPI = 100' +
        ';  NEW.VERSIOCIM = 10; END;'
      
        '                                                                ' +
        '                               ELSE NEW.CONFIANCADPI = NULL;'
      '            END'
      '      END;'
      '         '
      
        '      /* Actualitzem ESTATINFORMEALTA si hi ha canvi de prestaci' +
        #243' i la nova n'#39'ha de tenir */'
      
        '      IF ((NEW.ESTATINFORMEALTA = 0) AND (NEW.C_PRESTACIO <> OLD' +
        '.C_PRESTACIO)) THEN'
      '      BEGIN'
      '            SELECT COUNT(*)'
      '            FROM   DRETSPRESTA'
      '            WHERE  C_PRESTACIO = NEW.C_PRESTACIO'
      '            AND    C_DRET = "P300"'
      '            INTO  :PotInformeAlta;'
      '            '
      
        '            IF (PotInformeAlta <> 0) THEN NEW.ESTATINFORMEALTA =' +
        ' 1;'
      '      END;'
      
        '      /* Actualitzem ESTATINFORMEALTA si hi ha canvi de prestaci' +
        #243' i la nova no n'#39'ha de tenir */'
      '      IF ((NEW.ESTATINFORMEALTA = 1) AND'
      
        '          ((NEW.C_PRESTACIO <> OLD.C_PRESTACIO) OR (NEW.C_MOTIU ' +
        '<> OLD.C_MOTIU))) THEN'
      '      BEGIN'
      '            SELECT COUNT(*)'
      '            FROM   DRETSPRESTA'
      '            WHERE  C_PRESTACIO = NEW.C_PRESTACIO'
      '            AND    C_DRET = "P300"'
      '            INTO  :PotInformeAlta;'
      ''
      
        '            IF (PotInformeAlta = 0) THEN   /* Algunes prestacion' +
        's (EASE) han de tenir informe d'#39'alta en funci'#243' del motiu */'
      '            BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM   DRETSMOTIU'
      '                  WHERE  C_MOTIU = NEW.C_MOTIU'
      '                  AND    C_DRET = "X12"'
      '                  INTO  :PotInformeAlta;'
      '            END'
      ''
      
        '            IF (PotInformeAlta = 0) THEN NEW.ESTATINFORMEALTA = ' +
        '0;'
      '      END;'
      ''
      ''
      ''
      
        '      /* **************************** */   /* A. Traiem C_Proces' +
        ' si deixa de ser-ho */'
      
        '      /* *** PROC'#201'S REHABILITADOR *** */   /* B. Posem  C_Proces' +
        ' si passa a ser-ho (mirem anterior proc'#233's per decidir si '#233's nou)' +
        ' */'
      
        '      /* **************************** */   /* C. Si '#233's un ambula' +
        'tori que passa a tenir proc'#233's NR, li assignem la PreAlta i la Fr' +
        'eq'#252#232'ncia segons la pauta */'
      '      '
      
        '      /* Ho fem nom'#233's per tractaments actius i si canvia alguna ' +
        'dada que afecti la definici'#243' del proc'#233's (prestaci'#243', motiu o cent' +
        're de facturaci'#243') */'
      
        '      IF (((NEW.DATA_ALTA IS NULL) OR (NEW.DATA_ALTA >= "TODAY")' +
        ')'
      
        '      AND ((NEW.C_MOTIU <> OLD.C_MOTIU) OR (NEW.C_PRESTACIO <> O' +
        'LD.C_PRESTACIO) OR (NEW.C_CENTREFAC <> OLD.C_CENTREFAC))) THEN'
      '      BEGIN'
      
        '            /* Mirem si en la situaci'#243' anterior podia tenir Proc' +
        #233's (drets de prestaci'#243' i motiu) */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' OLD.C_PRESTACIO AND C_DRET = '#39'P35'#39' INTO :POT_PROCES_old;'
      
        '            SELECT COUNT(*) FROM DRETSMOTIU  WHERE C_MOTIU     =' +
        ' OLD.C_MOTIU     AND C_DRET = '#39'X1'#39'  INTO :MOTIU_OK_old;'
      ''
      '            POT_PROCES_old = POT_PROCES_old * MOTIU_OK_old;'
      ''
      
        '            /* Mirem si en la situaci'#243' anterior podia tenir Proc' +
        #233's NR (drets de prestaci'#243' i protocol assignat segons centrefac i' +
        ' motiu) */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' OLD.C_PRESTACIO AND C_DRET = '#39'P33'#39' INTO :POT_PROCESNR_old;'
      
        '            SELECT COUNT(*) FROM PROTOCOLS_PROCESNR WHERE C_CENT' +
        'REFAC = OLD.C_CENTREFAC AND C_MOTIU = OLD.C_MOTIU INTO :TEPROTOC' +
        'OLNR_old;'
      
        '            POT_PROCESNR_old = POT_PROCESNR_old * TEPROTOCOLNR_o' +
        'ld;'
      ''
      
        '            /* I ens guardem si el tractament anterior era TIR *' +
        '/'
      
        '            SELECT COUNT(*) FROM DRETSMOTIU  WHERE C_MOTIU = OLD' +
        '.C_MOTIU AND C_DRET = '#39'X7'#39' INTO :ES_MOTIUTIR_old;'
      ''
      ''
      
        '            /* Mirem si en la situaci'#243' actual pot tenir Proc'#233's (' +
        'drets de prestaci'#243' i motiu) */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' NEW.C_PRESTACIO AND C_DRET = '#39'P35'#39' INTO :POT_PROCES_new;'
      
        '            SELECT COUNT(*) FROM DRETSMOTIU  WHERE C_MOTIU     =' +
        ' NEW.C_MOTIU     AND C_DRET = '#39'X1'#39'  INTO :MOTIU_OK_new;'
      ''
      '            POT_PROCES_new = POT_PROCES_new * MOTIU_OK_new;'
      ''
      
        '            /* Mirem si en la situaci'#243' actual pot tenir Proc'#233's N' +
        'R (drets de prestaci'#243' i protocol assignat segons centrefac i mot' +
        'iu) */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' NEW.C_PRESTACIO AND C_DRET = '#39'P33'#39' INTO :POT_PROCESNR_new;'
      
        '            SELECT COUNT(*) FROM PROTOCOLS_PROCESNR WHERE C_CENT' +
        'REFAC = NEW.C_CENTREFAC AND C_MOTIU = NEW.C_MOTIU INTO :TEPROTOC' +
        'OLNR_new;'
      
        '            POT_PROCESNR_new = POT_PROCESNR_new * TEPROTOCOLNR_n' +
        'ew;'
      ''
      '            /* I ens guardem si ara el tractament '#233's TIR */'
      
        '            SELECT COUNT(*) FROM DRETSMOTIU  WHERE C_MOTIU = NEW' +
        '.C_MOTIU AND C_DRET = '#39'X7'#39' INTO :ES_MOTIUTIR_new;'
      ''
      '            /* A. Si deixa de ser tenir proc'#233's, el traiem */'
      
        '            IF ((POT_PROCES_old > 0) and (POT_PROCES_new = 0)) T' +
        'HEN'
      '            BEGIN'
      '                  NEW.C_PROCES = NULL;'
      '                  NEW.FI_PROCES = NULL;'
      '                  '
      
        '                  /* L'#39'eliminem de ProcesNR si era l'#39#250'nic tracta' +
        'ment amb aquest proc'#233's */'
      
        '                  SELECT COUNT(*) FROM TRACTAMENTS WHERE C_PROCE' +
        'S = OLD.C_PROCES AND C_TRACTAMENT <> NEW.C_TRACTAMENT INTO :ELIM' +
        'INAPROCES;'
      '                  IF (ELIMINAPROCES = 0) THEN'
      '                  BEGIN'
      
        '                        DELETE FROM PROCESNR_TORNS WHERE C_PROCE' +
        'S = OLD.C_PROCES;'
      
        '                        DELETE FROM PROCESNR_PAUTES WHERE C_PROC' +
        'ES = OLD.C_PROCES;'
      
        '                        DELETE FROM PROCESNR WHERE C_PROCES = OL' +
        'D.C_PROCES;'
      '                  END;'
      '            END;'
      '            '
      
        '            /* B. Si passa a tenir proc'#233's, l'#39'hi hem d'#39'assignar *' +
        '/'
      
        '            ELSE IF ((POT_PROCES_old = 0) AND (POT_PROCES_new > ' +
        '0)) THEN'
      '            BEGIN'
      
        '                  IF ((NEW.C_PRESTACIO = "1004") OR (NEW.C_PREST' +
        'ACIO = "7200")) THEN NEW.FI_PROCES = '#39'N'#39';'
      
        '                                                                ' +
        '                ELSE NEW.FI_PROCES = '#39'S'#39'; /* 2014 i 2008 */'
      ''
      
        '                  /* Si el tractament que inicia '#233's TIR, hem de ' +
        'mirar si hem d'#39'assignar-li un proc'#233's anterior o comen'#231'ar-ne un d' +
        'e nou. (Tant si '#233's NR com si no).'
      
        '                     Altrament, ser'#224' un proc'#233's nou, per'#242' pot ser' +
        ' que s'#39'hagi inicialitzat en fer la programaci'#243' des de CE o des d' +
        #39'una alta de tractament.'
      '                     Per tant:'
      '                     '
      
        '                  /* Busquem l'#39#250'ltim proc'#233's del pacient - que es' +
        'tigui assignat a algun tractament no anul'#183'lat */'
      
        '                  SELECT P.C_PROCES, P.C_MOTIU, T.FI_PROCES, T.D' +
        'ATA_ALTA, T.C_TRACTAMENT, T.C_PRESTACIO, C_CENTREFAC'
      '                  FROM   PROCESNR P'
      
        '                  JOIN   TRACTAMENTS T ON P.C_PROCES = T.C_PROCE' +
        'S'
      
        '                  JOIN   CODICAMPS X on T.C_ESTATFAC = X.C_CODI ' +
        'and X.TIPUSCODI = "ESTATFACTU" and X.R_CODI <> 9'
      '                  WHERE  P.C_HISTORIA = NEW.C_HISTORIA'
      '                  ORDER BY T.DATA_ALTA DESC'
      '                  ROWS   1'
      
        '                  INTO  :C_PROCES, :C_MOTIU_P, :FI_PROCES_ANT, :' +
        'DATA_ALTA_ANT, :C_TRACTAMENT_ANT, :C_PRESTACIO_ANT, :C_CENTREFAC' +
        '_ANT;'
      ''
      
        '                  /* Si no hi ha cap proc'#233's anterior -> nou proc' +
        #233's */'
      '                  IF (C_PROCES IS NULL) THEN NOU_PROCES = '#39'S'#39';'
      ''
      '                  ELSE BEGIN'
      '                  '
      
        '                        /* Mirem si aquest '#250'ltim proc'#233's '#233's TIR *' +
        '/'
      
        '                        SELECT COUNT(*) FROM DRETSMOTIU WHERE C_' +
        'MOTIU = :C_MOTIU_P AND C_DRET = '#39'X7'#39' INTO :ES_MOTIUTIR_P;'
      ''
      
        '                        /* Mirem si aquest '#250'ltim proc'#233's t'#233' proto' +
        'co NR */'
      
        '/*                        SELECT COUNT(*) FROM DRETSPRESTA WHERE' +
        ' C_PRESTACIO = :C_PRESTACIO_ANT AND C_DRET = '#39'P33'#39' INTO :POT_PRO' +
        'CESNR_ANT; */'
      
        '                        SELECT COUNT(*) FROM PROTOCOLS_PROCESNR ' +
        'WHERE C_CENTREFAC = :C_CENTREFAC_ANT AND C_MOTIU = :C_MOTIU_P IN' +
        'TO :TEPROTOCOLNR_ANT;'
      
        '/*                        POT_PROCESNR_ANT = POT_PROCESNR_ANT * ' +
        'TEPROTOCOLNR_ANT; */ /* si mirem tamb'#233' si la prestacio_ant pot t' +
        'enir proc'#233's, no ca'#231'arem les 2001!! */'
      ''
      
        '                        /* Si el protocol NR (~ motiu) del darre' +
        'r proc'#233's no concorda amb el del tractament que inicia -> nou pro' +
        'c'#233's */'
      
        '                        IF      ((ES_MOTIUTIR_new = 0) AND (NEW.' +
        'C_MOTIU <> C_MOTIU_P)) THEN NOU_PROCES = '#39'S'#39';   /* tractament qu' +
        'e inicia no '#233's TIR, i '#250'ltim proc'#233's t'#233' diferent motiu */'
      
        '                        ELSE IF ((ES_MOTIUTIR_new > 0) AND (ES_M' +
        'OTIUTIR_P = 0))        THEN NOU_PROCES = '#39'S'#39';   /* tractament qu' +
        'e inicia '#233's TIR per'#242' '#250'ltim proc'#233's no */'
      
        '                        ELSE IF  (TEPROTOCOLNR_ANT <> POT_PROCES' +
        'NR_new)                THEN NOU_PROCES = '#39'S'#39';   /* tractament qu' +
        'e incia no t'#233' protocol i l'#39'anterior s'#237' o al rev'#233's */'
      ''
      
        '                        /* Si el motiu/protocol del darrer proc'#233 +
        's concorda amb el que comen'#231'a, mirem altres condicions */'
      '                        ELSE BEGIN'
      
        '                              /* NO TIR: Si el darrer tractament' +
        ' finalitza proc'#233's o '#233's massa antic -> nou proc'#233's.'
      
        '                                         Altrament -> mateix pro' +
        'c'#233's i actualitzarem data d'#39'inici del proc'#233's amb la d'#39'inici del t' +
        'ractament actual  */'
      '                              IF (ES_MOTIUTIR_new = 0) THEN'
      '                              BEGIN'
      
        '                                    IF ((FI_PROCES_ANT = "S") OR' +
        ' (DATA_ALTA_ANT < "TODAY" - 90)) THEN BEGIN NOU_PROCES = "S"; AC' +
        'TUALITZA_DI = "N"; END;'
      
        '                                                                ' +
        '                                 ELSE BEGIN NOU_PROCES = "N"; AC' +
        'TUALITZA_DI = "S"; END;'
      '                              END'
      ''
      '                              /* TIR'
      
        '                                   1.- si fa m'#233's de 3 mesos de l' +
        #39#250'ltima alta -> nou proc'#233's'
      
        '                                   2.- altrament, si hi ha hagut' +
        ' algun tractament per cirurgia entremig -> nou proc'#233's'
      
        '                                   3.- altrament, si '#250'ltim proc'#233 +
        's no finalitzat -> mateix proc'#233's'
      
        '                                   4.- altrament, ('#250'ltim proc'#233's ' +
        'finalitzat fa menys de 3 mesos) deixem proc'#233's buit perqu'#232' l'#39'iden' +
        'tifiquin */'
      
        '                                   /* 2026: Deixo de mirar tema ' +
        'de nova lesi'#243' perqu'#232' dubto que l'#39'entrin abans i coincideixi que ' +
        'ha passat poc temps des del darrer proc'#233's. */'
      '                              ELSE BEGIN'
      
        '                                    /* 1. proc'#233's anterior massa ' +
        'antic*/'
      
        '                                    IF (DATA_ALTA_ANT < "TODAY" ' +
        '- 90) THEN BEGIN NOU_PROCES = "S"; ACTUALITZA_DI = "N"; END;'
      ''
      '                                    ELSE BEGIN'
      '                                          SELECT COUNT(*)'
      '                                          FROM   TRACTAMENTS T'
      
        '                                          JOIN   CODICAMPS X on ' +
        'T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI = "ESTATFACTU" and X.R_C' +
        'ODI <> 9'
      
        '                                          JOIN   DRETSMOTIU D ON' +
        ' T.C_MOTIU = D.C_MOTIU'
      
        '                                          WHERE  T.C_HISTORIA = ' +
        'NEW.C_HISTORIA'
      
        '                                          AND    T.C_PRESTACIO =' +
        ' "1004"'
      
        '                                          AND    D.C_DRET IN ('#39'X' +
        '3'#39','#39'X4'#39')    /* Complicaci'#243' o cirurgia */'
      
        '                                          AND    T.DATA_INGRES >' +
        ' :DATA_ALTA_ANT'
      '                                          INTO  :COMPLICACIONS;'
      ''
      
        '                                          /* 2. han passat coses' +
        ' entremig */'
      
        '                                          IF (COMPLICACIONS > 0)' +
        ' THEN BEGIN NOU_PROCES = "S"; ACTUALITZA_DI = "N"; END;'
      ''
      
        '                                          /* 3. proc'#233's anterior ' +
        'recent i no finalitzat */'
      
        '                                          ELSE IF (FI_PROCES_ANT' +
        ' = "N") THEN BEGIN NOU_PROCES = "N"; ACTUALITZA_DI = "N"; END;'
      ''
      
        '                                          /* 4. proc'#233's anterior ' +
        'recent per'#242' finalitzat -> deixem proc'#233's buit */'
      
        '                                          ELSE BEGIN NOU_PROCES ' +
        '= "X"; ACTUALITZA_DI = "N"; END;'
      '                                    END;'
      '                              END;'
      '                        END;'
      '                  END;'
      '                  '
      '                  /* Nou proc'#233's */'
      '                  IF (NOU_PROCES = "S") THEN'
      '                  BEGIN'
      '                        /* Finalitzem el proc'#233's anterior */'
      
        '                        UPDATE TRACTAMENTS SET FI_PROCES = "S" W' +
        'HERE C_TRACTAMENT = :C_TRACTAMENT_ANT;'
      ''
      
        '                        /* Generem un nou proc'#233's i posem vegada ' +
        '0 al tractament que inicia */'
      '                        NEW.C_PROCES = GEN_ID(G_PROCES, 1);'
      '                        NEW.VEGADA = 0;'
      ''
      
        '                        /* Afegim el proc'#233's  a la taula de proce' +
        'ssos NR (fins el 06.2026 nom'#233's l'#39'hi afeg'#237'em si era NR, per'#242' ara ' +
        'els hi posarem tots pq ja mirem si t'#233' protocol NR o no per activ' +
        'ar les pautes */'
      
        '                        INSERT INTO PROCESNR (C_PROCES, C_HISTOR' +
        'IA, DATA_INICI, C_MOTIU)'
      
        '                        VALUES (NEW.C_PROCES, NEW.C_HISTORIA, NE' +
        'W.DATA_INGRES, NEW.C_MOTIU);'
      ''
      
        '                        /* Si '#233's un proc'#233's TIR i no '#233's el 1r pro' +
        'c'#233's TIR del pacient,'
      
        '                           eliminem les dades de la lesi'#243' perqu'#232 +
        ' el metge identifiqui una nova lesi'#243' successiva */'
      '                        IF (ES_MOTIUTIR_new > 0) THEN'
      '                        BEGIN'
      '                              SELECT COUNT(*)'
      '                              FROM PROCESNR P'
      
        '                              JOIN TRACTAMENTS T ON P.C_PROCES =' +
        ' T.C_PROCES'
      
        '                              JOIN CODICAMPS X on T.C_ESTATFAC =' +
        ' X.C_CODI and X.TIPUSCODI = "ESTATFACTU" and X.R_CODI <> 9'
      
        '                              JOIN DRETSMOTIU D ON P.C_MOTIU = D' +
        '.C_MOTIU AND D.C_DRET = '#39'X7'#39
      
        '                              WHERE P.C_HISTORIA = NEW.C_HISTORI' +
        'A'
      '                              AND P.C_PROCES <> NEW.C_PROCES'
      '                              INTO :TE_TIR_ANT;'
      ''
      '                              IF (TE_TIR_ANT > 0)'
      '                              THEN'
      '                                    UPDATE FILIACIO'
      
        '                                    SET    DATA_LESSIO = NULL, C' +
        '_LATERALITAT = NULL, C_UNITATMEDICA = 0, SEVERITAT = NULL,'
      
        '                                           C_ORIGEN = NULL, C_CA' +
        'USA = NULL, C_CAUSA_DETALL = NULL, CAUSA_ALTRES = NULL,'
      
        '                                           RIC = NULL, GLF = NUL' +
        'L, NIHSS = NULL, GLASGOW = NULL, DIES_APT = NULL,'
      
        '                                           N_DIAGNOSTICNEUROLOGI' +
        'C = NULL, C_ETIOLOGIA = NULL, N_ETIOLOGIA = NULL,'
      
        '                                           G_DEFICITNEUROLOGIC =' +
        ' NULL, G_EFECTETARDA = NULL'
      
        '                                    WHERE  NUM_HIST = NEW.C_HIST' +
        'ORIA;'
      '                        END;'
      '                  END;'
      ''
      '                  /* Assignaci'#243' de proc'#233's existent */'
      '                  ELSE IF (NOU_PROCES = "N") THEN'
      '                  BEGIN'
      '                        NEW.C_PROCES = :C_PROCES;'
      ''
      
        '                        /* Si hem d'#39'actualitzar la data d'#39'inici ' +
        'del proc'#233's (ie: el proc'#233's ja existia per'#242' inicia amb aquest ambu' +
        'latori entrant - passa quan es genera la programaci'#243' des de CE o' +
        ' CMA),'
      
        '                           potser cal actualitzar la pauta i mou' +
        're les setmanes de la programaci'#243' */'
      '                        IF (ACTUALITZA_DI = "S") THEN'
      '                        BEGIN'
      
        '                              SELECT DATA_INICI FROM PROCESNR WH' +
        'ERE C_PROCES = NEW.C_PROCES INTO :DATA_INICI;'
      ''
      
        '                              /* Actualitzem la data d'#39'inici del' +
        ' proc'#233's amb la de l'#39'ambulatori */'
      
        '                              /* Tamb'#233' actualitzem la pauta vige' +
        'nt: tractament i data inici */'
      
        '                              IF (DATA_INICI <> NEW.DATA_INGRES)' +
        ' THEN'
      '                              BEGIN'
      
        '                                    UPDATE PROCESNR SET DATA_INI' +
        'CI = NEW.DATA_INGRES WHERE C_PROCES = NEW.C_PROCES ;'
      
        '                                    UPDATE PROCESNR_PAUTES SET D' +
        'ATA_INICI = NEW.DATA_INGRES WHERE C_PROCES = NEW.C_PROCES AND ES' +
        'TAT = "V";'
      '                              END;'
      '                              '
      
        '                              /* Si la data d'#39'inici de l'#39'ambulat' +
        'ori cau en una setmana diferent de la prevista, movem les pautes' +
        ' i tamb'#233' la data de prealta */'
      
        '                              DIES_DIF = NEW.DATA_INGRES - DATA_' +
        'INICI;'
      
        '                              IF ((DIES_DIF < 0) OR (DIES_DIF > ' +
        '6)) THEN  /* La data_inici prevista '#233's sempre un dilluns. Si la ' +
        'definitiva '#233's anterior o b'#233' m'#233's de 6 dies despr'#233's, '#233's que hem ca' +
        'nviat de setmana. */'
      '                              BEGIN'
      
        '                                    IF (DIES_DIF  < 0) THEN SETM' +
        'ANES = F_TRUNCATE(DIES_DIF/7)-1;'
      
        '                                                       ELSE SETM' +
        'ANES = F_TRUNCATE(DIES_DIF /7);'
      ''
      
        '                                    UPDATE PROCESNR_TORNS SET DI' +
        'A_INICI = DIA_INICI + (7*:SETMANES) + 2000 WHERE C_PROCES = NEW.' +
        'C_PROCES ;  /* Afegim 2000 dies perqu'#232' no falli la PK */'
      
        '                                    UPDATE PROCESNR_TORNS SET DI' +
        'A_INICI = DIA_INICI                 - 2000 WHERE C_PROCES = NEW.' +
        'C_PROCES ;  /* i els traiem despr'#233's */'
      
        '                                    UPDATE PROCESNR_PAUTES SET D' +
        'ATA_PREALTA = DATA_PREALTA + (7*:SETMANES) WHERE C_PROCES = NEW.' +
        'C_PROCES ;'
      '                              END;'
      '                        END;'
      '                  END;'
      '            END;'
      ''
      '      '
      
        '            /* C. Si '#233's un ambulatori que (despr'#233's de totes els ' +
        'c'#224'lculs anteriors) passa a tenir proc'#233's NR: */'
      
        '            IF ((NEW.C_PRESTACIO = '#39'2014'#39') AND (OLD.C_PROCES IS ' +
        'NULL) AND (NEW.C_PROCES IS NOT NULL)) THEN'
      '            BEGIN'
      
        '                  /* Si no t'#233' prealta, li assignem la del proc'#233's' +
        ' si existeix (i '#233's posterior a la data d'#39'ingr'#233's) */'
      '                  IF (NEW.DATA_PREALTA IS NULL)'
      '                  THEN'
      '                        SELECT DATA_PREALTA'
      '                        FROM   PROCESNR_PAUTES'
      '                        WHERE  C_PROCES = NEW.C_PROCES'
      
        '                        AND    ESTAT = "V"                      ' +
        '  /* existeix una '#250'nica pauta vigent */'
      
        '                        AND    DATA_PREALTA > NEW.DATA_INGRES   ' +
        '  /* nom'#233's si la prealta '#233's posterior a l'#39'ingr'#233's */'
      '                        INTO   NEW.DATA_PREALTA;'
      ''
      
        '                  /* actualitzem la freq'#252#232'ncia que li correspon ' +
        'segons el torn ambulatori de la pauta (si n'#39'hi ha) */'
      '                  SELECT TORN'
      '                  FROM   PROCESNR_TORNS'
      '                  WHERE  C_PROCES = NEW.C_PROCES'
      
        '                  AND    "TODAY" BETWEEN DIA_INICI AND DIA_INICI' +
        ' + 7   /* Setmana actual */'
      
        '                  ROWS   1                                      ' +
        '       /* De fet nom'#233's hi haur'#224' una l'#237'nia */'
      '                  INTO   NEW.C_FREQUENCIA;'
      '            END;'
      '      END;'
      '  END'
      'END'
      '')
    Dic1 = Tractaments
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
    ModiFecha = 37558.7436208681
    Accion1 = taANTES
    Accion2 = taUPDATE
    Left = 346
    Top = 492
  end
  object OmpleVegada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OmpleVegada'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '  DECLARE VARIABLE ULTIMAPRESTA   VARCHAR(5);'
      '  DECLARE VARIABLE TIPUSPRESTA    SMALLINT;'
      '  '
      '  DECLARE VARIABLE NEW_HISTORIA   INTEGER;'
      '  DECLARE VARIABLE NEW_DATAINGRES DATE;'
      '  DECLARE VARIABLE NEW_TRACTAMENT INTEGER;'
      '  DECLARE VARIABLE NEW_VEGADA     INTEGER;'
      'BEGIN'
      ''
      
        '   FOR SELECT T.C_HISTORIA, T.DATA_INGRES, T.C_TRACTAMENT, P.TIP' +
        'US'
      '   FROM TRACTAMENTS T'
      '   JOIN PRESTACION  P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '   WHERE P.TIPUS = 3'
      
        '   INTO :NEW_HISTORIA, :NEW_DATAINGRES, :NEW_TRACTAMENT, :TIPUSP' +
        'RESTA'
      '   DO BEGIN'
      '         ULTIMAPRESTA = NULL;'
      '         '
      '         FOR SELECT P.C_PRESTACIO, P.TIPUS'
      
        '         FROM TRACTAMENTS T JOIN PRESTACION P ON T.C_PRESTACIO  ' +
        '= P.C_PRESTACIO'
      '         WHERE C_HISTORIA = :NEW_HISTORIA'
      '         AND :ULTIMAPRESTA IS NULL'
      '         AND T.DATA_INGRES <= :NEW_DATAINGRES'
      '         ORDER BY DATA_INGRES DESC'
      '         INTO :ULTIMAPRESTA, :TIPUSPRESTA'
      '         DO BEGIN'
      ''
      '               IF (ULTIMAPRESTA = '#39'1004'#39') THEN NEW_VEGADA = 1;'
      '               IF (TIPUSPRESTA  = 3     ) THEN NEW_VEGADA = 2;'
      ''
      '               UPDATE TRACTAMENTS'
      '               SET VEGADA = :NEW_VEGADA'
      '               WHERE C_TRACTAMENT = :NEW_TRACTAMENT;'
      ''
      '         END'
      '   END'
      'END;')
    Dic1 = Tractaments
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
    Left = 322
    Top = 544
  end
  object AreasPresta: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Area'
        NombreDB = 'C_Area'
        Longitud = 3
        Consulta = 'Area'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Prestacio'
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Presta'
        zType = tcIB_Varchar
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'di Area'
          'C'#243'di Prestacio')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Area'
        NombreDB = 'Area'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'di Area')
        Tipo = tiForaneo
        ForaneoDic = Areas
        ForaneoCampos.Strings = (
          'C'#243'di Area')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Presta'
        NombreDB = 'Presta'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'di Prestacio')
        Tipo = tiForaneo
        ForaneoDic = Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Area'
        Master = Areas
        BuscaOrigen.Strings = (
          'C'#243'di Area')
        CopiarOrigen.Strings = (
          'C'#243'di Area')
        CopiarMaster.Strings = (
          'C'#243'di Area')
        BuscaMaster.Strings = (
          'C'#243'di Area')
      end
      item
        Nombre = 'Presta'
        Master = Prestacion
        BuscaOrigen.Strings = (
          'C'#243'di Prestacio')
        CopiarOrigen.Strings = (
          'C'#243'di Prestacio')
        CopiarMaster.Strings = (
          'C'#243'di Prestacio')
        BuscaMaster.Strings = (
          'C'#243'di Prestacio')
      end>
    Nombre = 'Areas per prestacions'
    NombreTabla = 'AreasPresta'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di Area'
      'C'#243'di Prestacio')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945163773
    Left = 120
    Top = 428
  end
  object VEscalesAltes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'VEscalesAltes'
    ForceNombreDB = False
    Body.Strings = (
      '( DATA1 DATE,'
      '  DATA2 DATE,'
      '  C_GRUP SMALLINT,'
      '  PRESTACIO VARCHAR(4),'
      '  X SMALLINT'
      ') RETURNS ('
      '  C_HISTORIA INTEGER,'
      '  NOMCOMPLET VARCHAR(80),'
      '  DATA_INGRES DATE,'
      '  DATA_ALTA DATE,'
      '  C_COORDINADOR VARCHAR(5),'
      '  UNITAT SMALLINT,'
      '  C_MOTIU SMALLINT,'
      '  R_ESCALA VARCHAR(15),'
      '  N_ITEM VARCHAR(40),'
      '  D_ITEM1 VARCHAR(200),'
      '  D_ITEM2 VARCHAR(200),'
      '  D_ITEM3 VARCHAR(200),'
      '  DATA_INGRES_A DATE,'
      '  DATA_ALTA_A DATE,'
      '  ANYS INTEGER'
      ') AS'
      '      DECLARE VARIABLE I SMALLINT;'
      '      DECLARE VARIABLE C_ESCALA SMALLINT;'
      '      DECLARE VARIABLE NUM_ENTRADES SMALLINT;'
      '      DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '      DECLARE VARIABLE C_ITEM SMALLINT;'
      '      DECLARE VARIABLE CLAU INTEGER;'
      '      DECLARE VARIABLE MIN_ENTRADA INTEGER;'
      '      DECLARE VARIABLE MAX_ENTRADA INTEGER;'
      '      DECLARE VARIABLE MIN_ANULAT CHAR(1);'
      '      DECLARE VARIABLE MAX_ANULAT CHAR(1);'
      '      DECLARE VARIABLE DATA_ALTA1 DATE;'
      '      DECLARE VARIABLE C_TRACTAMENT_A INTEGER;'
      '      DECLARE VARIABLE MAX_ENTRADA_A INTEGER;'
      '      DECLARE VARIABLE MAX_ANULAT_A CHAR(1);'
      '      DECLARE VARIABLE ANULAT CHAR(1);'
      'BEGIN'
      ''
      '  /* Ingressos */'
      '  IF (PRESTACIO <> '#39'2004'#39') THEN'
      '  BEGIN'
      ''
      '      /* Per cada alta entre les dates */'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPLET, T.D' +
        'ATA_INGRES, T.DATA_ALTA, T.C_COORDINADOR, F.UNITAT, T.C_MOTIU'
      '            FROM TRACTAMENTS T'
      '            JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '           WHERE T.C_PRESTACIO = :PRESTACIO'
      '             AND T.DATA_ALTA BETWEEN :DATA1 AND :DATA2'
      
        '            INTO :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :DATA_' +
        'INGRES, :DATA_ALTA, :C_COORDINADOR, :UNITAT, :C_MOTIU'
      '      DO BEGIN'
      ''
      '            R_ESCALA = '#39#39';'
      '            N_ITEM   = '#39#39';'
      '            D_ITEM1  = '#39#39';'
      '            D_ITEM2  = '#39#39';'
      '            D_ITEM3  = '#39#39';'
      '            ANYS = NULL;'
      '            DATA_INGRES_A = NULL;'
      '            DATA_ALTA_A = NULL;'
      '            '
      '            SUSPEND;'
      '            '
      
        '            /* Busquem si hi ha un tractament ambulatori posteri' +
        'or a l'#39'ingr'#233's */'
      '            C_TRACTAMENT_A = 0;'
      '            '
      '            SELECT MIN(TA.C_TRACTAMENT)'
      '            FROM   TRACTAMENTS TA'
      '            WHERE  TA.C_HISTORIA = :C_HISTORIA'
      '            AND    TA.C_PRESTACIO = '#39'2014'#39
      '            AND    TA.DATA_INGRES > :DATA_INGRES'
      '            INTO   :C_TRACTAMENT_A;'
      ''
      
        '            /* Posem les variables a null pq no es repeteixin a ' +
        'cada registre */'
      '            C_HISTORIA    = NULL;'
      '            NOMCOMPLET    = '#39#39';'
      '            DATA_INGRES   = NULL;'
      '            DATA_ALTA     = NULL;'
      '            C_COORDINADOR = '#39#39';'
      '            UNITAT        = NULL;'
      '            C_MOTIU       = NULL;'
      ''
      '            /* Per cada escala del grup */'
      '            FOR SELECT C_ESCALA, R_ESCALA'
      '                FROM   ESCALES'
      '                WHERE  C_GRUP = :C_GRUP'
      
        '                AND    C_ESCALA <> 0 AND C_ESCALA <> 22 AND C_ES' +
        'CALA <> 28'
      '                ORDER  BY C_ESCALA'
      '                INTO  :C_ESCALA, :R_ESCALA'
      '            DO BEGIN'
      ''
      '                  MIN_ENTRADA = NULL;'
      '                  MAX_ENTRADA = NULL;'
      ''
      
        '                  IF ((C_ESCALA <> 29) AND (C_ESCALA <> 30)) THE' +
        'N'
      '                  BEGIN'
      
        '                        /* Busquem la primera entrada de l'#39'ingr'#233 +
        's */'
      '                        SELECT MIN(C_ENTRADA)'
      '                        FROM   ESCALESCAP'
      '                        WHERE  C_ESCALA = :C_ESCALA'
      '                        AND    C_TRACTAMENT = :C_TRACTAMENT'
      '                        AND    C_ENTRADA >= 0'
      '                        AND    (ANULAT = "N" OR ANULAT = "V")'
      '                        INTO   :MIN_ENTRADA;'
      ''
      '                        SELECT ANULAT'
      '                        FROM ESCALESCAP'
      '                        WHERE C_ESCALA = :C_ESCALA'
      '                        AND C_TRACTAMENT = :C_TRACTAMENT'
      '                        AND C_ENTRADA = :MIN_ENTRADA'
      '                        INTO :MIN_ANULAT;'
      ''
      
        '                        /* Busquem l'#39#250'ltima entrada de l'#39'ingr'#233's ' +
        '*/'
      '                        SELECT MAX(C_ENTRADA)'
      '                        FROM   ESCALESCAP'
      '                        WHERE  C_ESCALA = :C_ESCALA'
      '                        AND    C_TRACTAMENT = :C_TRACTAMENT'
      '                        AND    C_ENTRADA > :MIN_ENTRADA'
      '                        AND    (ANULAT = "N" OR ANULAT = "V")'
      '                        INTO   :MAX_ENTRADA;'
      ''
      '                        SELECT ANULAT'
      '                        FROM ESCALESCAP'
      '                        WHERE C_ESCALA = :C_ESCALA'
      '                        AND C_TRACTAMENT = :C_TRACTAMENT'
      '                        AND C_ENTRADA = :MAX_ENTRADA'
      '                        INTO :MAX_ANULAT;'
      ''
      '                        N_ITEM = '#39#39';'
      '                        D_ITEM1 = '#39#39';'
      '                        D_ITEM2 = '#39#39';'
      '                        D_ITEM3 = '#39#39';'
      '                              '
      '                        FOR SELECT I1.C_ITEM, I1.N_ITEM'
      '                            FROM   ESCALESITEMS I1'
      '                            WHERE  I1.C_ESCALA = :C_ESCALA'
      '                            ORDER  BY C_ITEM'
      '                            INTO  :C_ITEM, :N_ITEM'
      '                        DO BEGIN'
      ''
      '                              D_ITEM1 = '#39#39';'
      '                                    '
      
        '                              SELECT CAST(L1.D_ITEM AS VARCHAR(2' +
        '00))'
      '                              FROM   ESCALESLIN L1'
      
        '                              JOIN   ESCALESCAP C1 ON (L1.CLAU =' +
        ' C1.CLAU'
      
        '                                                       AND C1.C_' +
        'TRACTAMENT = :C_TRACTAMENT'
      
        '                                                       AND C1.C_' +
        'ESCALA = :C_ESCALA'
      
        '                                                       AND C1.AN' +
        'ULAT = "N")'
      '                              WHERE  L1.C_ITEM = :C_ITEM'
      '                              AND    C1.C_ENTRADA = :MIN_ENTRADA'
      '                              INTO  :D_ITEM1;'
      '                              '
      
        '                              IF (MIN_ANULAT = "V") THEN D_ITEM1' +
        ' = "NV";'
      ''
      '                              D_ITEM2 = '#39#39';'
      ''
      
        '                              SELECT CAST(L2.D_ITEM AS VARCHAR(2' +
        '00))'
      '                              FROM   ESCALESLIN L2'
      
        '                              JOIN   ESCALESCAP C2 ON (L2.CLAU =' +
        ' C2.CLAU'
      
        '                                                       AND C2.C_' +
        'TRACTAMENT = :C_TRACTAMENT'
      
        '                                                       AND C2.C_' +
        'ESCALA = :C_ESCALA'
      
        '                                                       AND C2.AN' +
        'ULAT = "N")'
      '                              WHERE  L2.C_ITEM = :C_ITEM'
      '                              AND    C2.C_ENTRADA = :MAX_ENTRADA'
      '                              INTO   :D_ITEM2;'
      ''
      
        '                              IF (MAX_ANULAT = "V") THEN D_ITEM2' +
        ' = "NV";'
      ''
      
        '                              /* Si hi ha un tractament ambulato' +
        'ri posterior a l'#39'ingr'#233's */'
      '                              IF (C_TRACTAMENT_A <> 0) THEN'
      '                              BEGIN'
      
        '                                    SELECT TA.DATA_INGRES, TA.DA' +
        'TA_ALTA'
      '                                    FROM   TRACTAMENTS TA'
      
        '                                    WHERE  TA.C_TRACTAMENT = :C_' +
        'TRACTAMENT_A'
      
        '                                    INTO   :DATA_INGRES_A, :DATA' +
        '_ALTA_A;'
      '                                          '
      
        '                                    /* Busquem l'#39#250'ltima entrada ' +
        'de l'#39'ambulatori */'
      '                                    SELECT MAX(C_ENTRADA)'
      '                                    FROM   ESCALESCAP'
      '                                    WHERE  C_ESCALA = :C_ESCALA'
      
        '                                    AND    C_TRACTAMENT = :C_TRA' +
        'CTAMENT_A'
      
        '                                    AND    (ANULAT = "N" OR ANUL' +
        'AT = "V")'
      '                                    INTO   :MAX_ENTRADA_A;'
      ''
      '                                    SELECT ANULAT'
      '                                    FROM ESCALESCAP'
      '                                    WHERE C_ESCALA = :C_ESCALA'
      
        '                                    AND C_TRACTAMENT = :C_TRACTA' +
        'MENT_A'
      
        '                                    AND C_ENTRADA = :MAX_ENTRADA' +
        '_A'
      '                                    INTO :MAX_ANULAT_A;'
      ''
      '                                    D_ITEM3 = '#39#39';'
      ''
      
        '                                    SELECT CAST(L3.D_ITEM AS VAR' +
        'CHAR(200))'
      '                                    FROM   ESCALESLIN L3'
      
        '                                    JOIN   ESCALESCAP C3 ON (L3.' +
        'CLAU = C3.CLAU'
      
        '                                                             AND' +
        ' C3.C_TRACTAMENT = :C_TRACTAMENT_A'
      
        '                                                             AND' +
        ' C3.C_ESCALA = :C_ESCALA'
      
        '                                                             AND' +
        ' C3.ANULAT = "N")'
      '                                    WHERE  L3.C_ITEM = :C_ITEM'
      
        '                                    AND    C3.C_ENTRADA = :MAX_E' +
        'NTRADA_A'
      '                                    INTO   :D_ITEM3;'
      '                                    '
      
        '                                    IF (MAX_ANULAT_A = "V") THEN' +
        ' D_ITEM3 = "NV";'
      ''
      '                              END;'
      ''
      '                              IF (D_ITEM3 = '#39#39') THEN'
      '                              BEGIN'
      '                                  DATA_INGRES_A = NULL;'
      '                                  DATA_ALTA_A   = NULL;'
      '                              END;'
      '                              '
      
        '                              IF ((D_ITEM1 <> '#39#39') OR (D_ITEM2 <>' +
        ' '#39#39') OR (D_ITEM3 <> '#39#39')) THEN SUSPEND;'
      ''
      '                        END;'
      '                  END;'
      ''
      '                  /* Enquestes de TRS */'
      ''
      '                  ELSE BEGIN'
      '                        /* Busquem la primera entrada */'
      '                        SELECT MIN(C_ENTRADA)'
      '                        FROM   ESCALESTRS'
      '                        WHERE  C_ESCALA = :C_ESCALA'
      '                        AND    C_TRACTAMENT = :C_TRACTAMENT'
      '                        AND    C_ENTRADA >= 0'
      '                        AND    ANULAT = "N"'
      '                        INTO  :MIN_ENTRADA;'
      ''
      '                        /* Busquem l'#39#250'ltima entrada */'
      '                        SELECT MAX(C_ENTRADA)'
      '                        FROM   ESCALESTRS'
      '                        WHERE  C_ESCALA = :C_ESCALA'
      '                        AND    C_TRACTAMENT = :C_TRACTAMENT'
      '                        AND    C_ENTRADA > :MIN_ENTRADA'
      '                        AND    ANULAT = "N"'
      '                        INTO   :MAX_ENTRADA;'
      ''
      ''
      '                        FOR SELECT N_ITEM, D_ITEM, D_ITEM2'
      
        '                              FROM P_TRACTAMENTS_ESCALESTRS1(:C_' +
        'TRACTAMENT, :C_ESCALA, :MIN_ENTRADA, :MAX_ENTRADA)'
      '                              INTO :N_ITEM, :D_ITEM1, :D_ITEM2'
      '                        DO BEGIN'
      
        '                              IF (NOT D_ITEM1 IS NULL) THEN SUSP' +
        'END;'
      '                        END;'
      ''
      '                        FOR SELECT N_ITEM, D_ITEM, D_ITEM2'
      
        '                              FROM P_TRACTAMENTS_ESCALESTRS2(:C_' +
        'TRACTAMENT, :C_ESCALA, :MIN_ENTRADA, :MAX_ENTRADA)'
      '                              INTO :N_ITEM, :D_ITEM1, :D_ITEM2'
      '                        DO BEGIN'
      
        '                              IF (NOT D_ITEM1 IS NULL) THEN SUSP' +
        'END;'
      '                        END;'
      ''
      '                  END;'
      '            END;'
      '      END;'
      '  END;'
      ''
      
        '  /* Revisions entre dates,                 /* aix'#242' ja no -> que' +
        ' no hagin estat ingressats en menys de X anys */'
      
        '  /* posem el n'#250'mero d'#39'anys des de l'#39#250'ltima vegada q va ingressa' +
        'r per motiu Rehab */'
      '  IF (PRESTACIO = '#39'2004'#39') THEN'
      '  BEGIN'
      ''
      
        '      /* Per revisi'#243' entre les dates            /* aix'#242' ja no ->' +
        ' no ingresada en X anys */'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPLET, T.D' +
        'ATA_INGRES, T.DATA_ALTA, T.C_COORDINADOR, F.UNITAT /*, T.C_MOTIU' +
        ' */'
      '            FROM TRACTAMENTS T'
      '            JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '           WHERE T.C_PRESTACIO = :PRESTACIO'
      '             AND T.DATA_ALTA BETWEEN :DATA1 AND :DATA2'
      '/*             AND T.C_HISTORIA NOT IN (SELECT T1.C_HISTORIA'
      '                                        FROM TRACTAMENTS T1'
      
        '                                       WHERE T1.C_HISTORIA = T.C' +
        '_HISTORIA'
      
        '                                         AND T1.C_PRESTACIO = '#39'1' +
        '004'#39
      
        '                                         AND T.DATA_ALTA - T1.DA' +
        'TA_ALTA < :X * 365) */'
      
        '            INTO :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :DATA_' +
        'INGRES, :DATA_ALTA, :C_COORDINADOR, :UNITAT /*, :C_MOTIU */'
      '      DO BEGIN'
      ''
      
        '            SELECT MAX(T.DATA_ALTA), F_Divisa((:DATA_ALTA - MAX(' +
        'T.DATA_ALTA)) / 365, 0)'
      '              FROM TRACTAMENTS T'
      
        '              JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39
      '             WHERE T.C_HISTORIA = :C_HISTORIA'
      '               AND T.C_PRESTACIO = '#39'1004'#39
      '               AND T.DATA_ALTA < :DATA_ALTA'
      '              INTO :DATA_ALTA1, :ANYS;'
      '            '
      '            IF (DATA_ALTA1 IS NULL) THEN ANYS = NULL;'
      '            '
      '            SELECT C_MOTIU FROM TRACTAMENTS'
      
        '            WHERE DATA_ALTA = :DATA_ALTA1 AND C_PRESTACIO = '#39'100' +
        '4'#39' AND C_HISTORIA = :C_HISTORIA'
      '            INTO :C_MOTIU;'
      '            '
      '            R_ESCALA = '#39#39';'
      '            N_ITEM   = '#39#39';'
      '            D_ITEM1  = '#39#39';'
      '            D_ITEM2  = '#39#39';'
      ''
      '            SUSPEND;'
      ''
      '/*            ANYS          = NULL; */'
      '            C_HISTORIA    = NULL;'
      '            NOMCOMPLET    = '#39#39';'
      '            DATA_INGRES   = NULL;'
      '            DATA_ALTA     = NULL;'
      '            C_COORDINADOR = '#39#39';'
      '            UNITAT        = NULL;'
      '            C_MOTIU       = NULL;'
      ''
      '            /* Per cada escala del grup */'
      '            FOR SELECT C_ESCALA, R_ESCALA'
      '                FROM   ESCALES'
      '                WHERE  C_GRUP = :C_GRUP'
      
        '                AND    C_ESCALA <> 0 AND C_ESCALA <> 22 AND C_ES' +
        'CALA <> 28'
      '                ORDER  BY C_ESCALA'
      '                INTO  :C_ESCALA, :R_ESCALA'
      '            DO BEGIN'
      ''
      '                  MIN_ENTRADA = NULL;'
      '                  MAX_ENTRADA = NULL;'
      ''
      
        '                  IF ((C_ESCALA <> 29) AND (C_ESCALA <> 30)) THE' +
        'N'
      '                  BEGIN'
      '                        /* Busquem la primera entrada */'
      '                        SELECT MIN(C_ENTRADA)'
      '                          FROM ESCALESCAP'
      '                         WHERE C_ESCALA = :C_ESCALA'
      '                           AND C_TRACTAMENT = :C_TRACTAMENT'
      '                           AND C_ENTRADA >= 0'
      '                           AND (ANULAT = "N" OR ANULAT = "V")'
      '                          INTO :MIN_ENTRADA;'
      ''
      '                        /* Busquem l'#39#250'ltima entrada */'
      '                        SELECT MAX(C_ENTRADA)'
      '                          FROM ESCALESCAP'
      '                         WHERE C_ESCALA = :C_ESCALA'
      '                           AND C_TRACTAMENT = :C_TRACTAMENT'
      '                           AND C_ENTRADA > :MIN_ENTRADA'
      '                           AND (ANULAT = "N" OR ANULAT = "V")'
      '                          INTO :MAX_ENTRADA;'
      ''
      '                        FOR SELECT CLAU, ANULAT'
      '                            FROM   ESCALESCAP'
      '                            WHERE  C_ESCALA = :C_ESCALA'
      '                            AND    C_TRACTAMENT = :C_TRACTAMENT'
      '                            AND    C_ENTRADA = :MIN_ENTRADA'
      
        '                            AND    (ANULAT = "N" OR ANULAT = "V"' +
        ')'
      '                            INTO   :CLAU, :ANULAT'
      '                        DO BEGIN'
      ''
      '                              N_ITEM = '#39#39';'
      '                              D_ITEM1 = '#39#39';'
      '                              D_ITEM2 = '#39#39';'
      ''
      
        '                              FOR SELECT I1.C_ITEM, I1.N_ITEM, C' +
        'AST(L1.D_ITEM AS VARCHAR(200))'
      '                                  FROM   ESCALESLIN L1'
      
        '                                  JOIN   ESCALESITEMS I1 ON L1.C' +
        '_ITEM = I1.C_ITEM'
      '                                  WHERE  L1.CLAU = :CLAU'
      '                                  ORDER  BY 1'
      
        '                                  INTO  :C_ITEM, :N_ITEM, :D_ITE' +
        'M1'
      '                              DO BEGIN'
      ''
      
        '                                    IF (ANULAT = "V") THEN D_ITE' +
        'M1 = '#39'NV'#39';'
      '                                    '
      '                                    D_ITEM2 = '#39#39';'
      ''
      
        '                                    SELECT CAST(L3.D_ITEM AS VAR' +
        'CHAR(200))'
      '                                    FROM   ESCALESLIN L3'
      
        '                                    JOIN   ESCALESCAP C3 ON (L3.' +
        'CLAU = C3.CLAU'
      
        '                                                             AND' +
        ' C3.C_TRACTAMENT = :C_TRACTAMENT'
      
        '                                                             AND' +
        ' C3.C_ESCALA = :C_ESCALA'
      
        '                                                             AND' +
        ' C3.ANULAT = "N")'
      '                                    WHERE  L3.C_ITEM = :C_ITEM'
      
        '                                    AND    C3.C_ENTRADA = :MAX_E' +
        'NTRADA'
      '                                    INTO   :D_ITEM2;'
      ''
      '                                    ANULAT = '#39#39';'
      '                                    '
      '                                    SELECT ANULAT'
      '                                    FROM   ESCALESCAP'
      '                                    WHERE  C_ESCALA = :C_ESCALA'
      
        '                                    AND    C_TRACTAMENT = :C_TRA' +
        'CTAMENT'
      
        '                                    AND    C_ENTRADA = :MAX_ENTR' +
        'ADA'
      
        '                                    AND    (ANULAT = "N" OR ANUL' +
        'AT = "V")'
      '                                    INTO   :ANULAT;'
      '                                    '
      
        '                                    IF (ANULAT = "V") THEN D_ITE' +
        'M2 = '#39'NV'#39';'
      ''
      '                                    SUSPEND;'
      ''
      '                              END;'
      '                        END;'
      '                  END;'
      ''
      '                  /* Enquestes de TRS */'
      ''
      '                  ELSE BEGIN'
      '                        /* Busquem la primera entrada */'
      '                        SELECT MIN(C_ENTRADA)'
      '                          FROM ESCALESTRS'
      '                         WHERE C_ESCALA = :C_ESCALA'
      '                           AND C_TRACTAMENT = :C_TRACTAMENT'
      '                           AND C_ENTRADA >= 0'
      '                           AND ANULAT = "N"'
      '                          INTO :MIN_ENTRADA;'
      ''
      '                        /* Busquem l'#39#250'ltima entrada */'
      '                        SELECT MAX(C_ENTRADA)'
      '                          FROM ESCALESTRS'
      '                         WHERE C_ESCALA = :C_ESCALA'
      '                           AND C_TRACTAMENT = :C_TRACTAMENT'
      '                           AND C_ENTRADA > :MIN_ENTRADA'
      '                           AND ANULAT = "N"'
      '                          INTO :MAX_ENTRADA;'
      ''
      '                        FOR SELECT N_ITEM, D_ITEM, D_ITEM2'
      
        '                              FROM P_TRACTAMENTS_ESCALESTRS1(:C_' +
        'TRACTAMENT, :C_ESCALA, :MIN_ENTRADA, :MAX_ENTRADA)'
      '                              INTO :N_ITEM, :D_ITEM1, :D_ITEM2'
      '                        DO BEGIN'
      
        '                              IF (NOT D_ITEM1 IS NULL) THEN SUSP' +
        'END;'
      '                        END;'
      ''
      '                        FOR SELECT N_ITEM, D_ITEM, D_ITEM2'
      
        '                              FROM P_TRACTAMENTS_ESCALESTRS2(:C_' +
        'TRACTAMENT, :C_ESCALA, :MIN_ENTRADA, :MAX_ENTRADA)'
      '                              INTO :N_ITEM, :D_ITEM1, :D_ITEM2'
      '                        DO BEGIN'
      
        '                              IF (NOT D_ITEM1 IS NULL) THEN SUSP' +
        'END;'
      '                        END;'
      ''
      '                  END;'
      '            END;'
      '      END;'
      '  END;'
      ''
      'END'
      ''
      ''
      '')
    Dic1 = Tractaments
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
    Left = 100
    Top = 544
  end
  object EscalesTRS1: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscalesTRS1'
    ForceNombreDB = False
    Body.Strings = (
      '( C_TRACTAMENT INTEGER,'
      '  C_ESCALA INTEGER,'
      '  MIN_ENTRADA INTEGER,'
      '  MAX_ENTRADA INTEGER'
      ') RETURNS ('
      '  N_ITEM CHAR(40),'
      '  D_ITEM CHAR(200),'
      '  D_ITEM2 CHAR(200)'
      ') AS  BEGIN'
      '      '
      '      N_ITEM = '#39'Estudis'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 1 AND V.C_VALORACIO = E.E' +
        'STUDIS'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 1 AND V.C_VALORACIO = E.E' +
        'STUDIS'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Tipus escolaritat'#39'; D_ITEM = NULL; D_ITEM2 = NUL' +
        'L;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 16 AND V.C_VALORACIO = E.' +
        'ESCOLA_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 16 AND V.C_VALORACIO = E.' +
        'ESCOLA_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Estudis en curs'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 17 AND V.C_VALORACIO = E.' +
        'ESTUDIS_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 17 AND V.C_VALORACIO = E.' +
        'ESTUDIS_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral abans lesi'#243#39'; D_ITEM = NULL; D_' +
        'ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABA1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABA1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral abans lesi'#243#39'; D_ITEM = NULL; D_' +
        'ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABA2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABA2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral abans lesi'#243#39'; D_ITEM = NULL; D_' +
        'ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABA3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABA3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral abans lesi'#243#39'; D_ITEM = NULL; D_' +
        'ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 3 AND V.C_VALORACIO = E.S' +
        'ITLABAON'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 3 AND V.C_VALORACIO = E.S' +
        'ITLABAON'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral abans lesi'#243#39'; D_ITEM = NULL; D_' +
        'ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 4 AND V.C_VALORACIO = E.S' +
        'ITLABAQ'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 4 AND V.C_VALORACIO = E.S' +
        'ITLABAQ'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral despr'#233's lesi'#243#39'; D_ITEM = NULL; ' +
        'D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABD1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABD1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral despr'#233's lesi'#243#39'; D_ITEM = NULL; ' +
        'D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABD2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABD2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral despr'#233's lesi'#243#39'; D_ITEM = NULL; ' +
        'D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABD3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 2 AND V.C_VALORACIO = E.S' +
        'ITLABD3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral despr'#233's lesi'#243#39'; D_ITEM = NULL; ' +
        'D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 3 AND V.C_VALORACIO = E.S' +
        'ITLABDON'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 3 AND V.C_VALORACIO = E.S' +
        'ITLABDON'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Situaci'#243' laboral despr'#233's lesi'#243#39'; D_ITEM = NULL; ' +
        'D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 4 AND V.C_VALORACIO = E.S' +
        'ITLABDQ'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 4 AND V.C_VALORACIO = E.S' +
        'ITLABDQ'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Resid'#232'ncia habitual'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 5 AND V.C_VALORACIO = E.R' +
        'ESIHAB'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 5 AND V.C_VALORACIO = E.R' +
        'ESIHAB'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Residencia habitual'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 19 AND V.C_VALORACIO = E.' +
        'RESIHAB_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 19 AND V.C_VALORACIO = E.' +
        'RESIHAB_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 6 AND V.C_VALORACIO = E.H' +
        'ABIALTA1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 6 AND V.C_VALORACIO = E.H' +
        'ABIALTA1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 6 AND V.C_VALORACIO = E.H' +
        'ABIALTA2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 6 AND V.C_VALORACIO = E.H' +
        'ABIALTA2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '         INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 6 AND V.C_VALORACIO = E.H' +
        'ABIALTA3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 6 AND V.C_VALORACIO = E.H' +
        'ABIALTA3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 20 AND V.C_VALORACIO = E.' +
        'HABIALTA_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 20 AND V.C_VALORACIO = E.' +
        'HABIALTA_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 20 AND V.C_VALORACIO = E.' +
        'HABIALTA_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 20 AND V.C_VALORACIO = E.' +
        'HABIALTA_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 20 AND V.C_VALORACIO = E.' +
        'HABIALTA_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 20 AND V.C_VALORACIO = E.' +
        'HABIALTA_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge actual'#39'; D_ITEM = NULL; D_ITEM2 = NULL' +
        ';'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 7 AND V.C_VALORACIO = E.H' +
        'ABIACTU1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 7 AND V.C_VALORACIO = E.H' +
        'ABIACTU1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge actual'#39'; D_ITEM = NULL; D_ITEM2 = NULL' +
        ';'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 7 AND V.C_VALORACIO = E.H' +
        'ABIACTU2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 7 AND V.C_VALORACIO = E.H' +
        'ABIACTU2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge actual'#39'; D_ITEM = NULL; D_ITEM2 = NULL' +
        ';'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 7 AND V.C_VALORACIO = E.H' +
        'ABIACTU3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 7 AND V.C_VALORACIO = E.H' +
        'ABIACTU3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge actual'#39'; D_ITEM = NULL; D_ITEM2 = NULL' +
        ';'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 21 AND V.C_VALORACIO = E.' +
        'HABIACTU_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 21 AND V.C_VALORACIO = E.' +
        'HABIACTU_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL)  THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge actual'#39'; D_ITEM = NULL; D_ITEM2 = NULL' +
        ';'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 21 AND V.C_VALORACIO = E.' +
        'HABIACTU_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 21 AND V.C_VALORACIO = E.' +
        'HABIACTU_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Habitatge actual'#39'; D_ITEM = NULL; D_ITEM2 = NULL' +
        ';'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 21 AND V.C_VALORACIO = E.' +
        'HABIACTU_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 21 AND V.C_VALORACIO = E.' +
        'HABIACTU_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Subsidi'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 9 AND V.C_VALORACIO = E.S' +
        'UBSIDI1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 9 AND V.C_VALORACIO = E.S' +
        'UBSIDI1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Subsidi'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 9 AND V.C_VALORACIO = E.S' +
        'UBSIDI2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 9 AND V.C_VALORACIO = E.S' +
        'UBSIDI2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Subsidi'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 9 AND V.C_VALORACIO = E.S' +
        'UBSIDI3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 9 AND V.C_VALORACIO = E.S' +
        'UBSIDI3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Subsidi'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 22 AND V.C_VALORACIO = E.' +
        'SUBSIDI_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 22 AND V.C_VALORACIO = E.' +
        'SUBSIDI_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Subsidi'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 22 AND V.C_VALORACIO = E.' +
        'SUBSIDI_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 22 AND V.C_VALORACIO = E.' +
        'SUBSIDI_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Subsidi'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 22 AND V.C_VALORACIO = E.' +
        'SUBSIDI_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 22 AND V.C_VALORACIO = E.' +
        'SUBSIDI_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL)  THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Activitats'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 8 AND V.C_VALORACIO = E.A' +
        'CTIVITATS1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 8 AND V.C_VALORACIO = E.A' +
        'CTIVITATS1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL)  THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Activitats'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 8 AND V.C_VALORACIO = E.A' +
        'CTIVITATS2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 8 AND V.C_VALORACIO = E.A' +
        'CTIVITATS2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Activitats'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 8 AND V.C_VALORACIO = E.A' +
        'CTIVITATS3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 8 AND V.C_VALORACIO = E.A' +
        'CTIVITATS3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Activitats'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 24 AND V.C_VALORACIO = E.' +
        'ACTIVITATS_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 24 AND V.C_VALORACIO = E.' +
        'ACTIVITATS_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Activitats'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 24 AND V.C_VALORACIO = E.' +
        'ACTIVITATS_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 24 AND V.C_VALORACIO = E.' +
        'ACTIVITATS_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Activitats'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 24 AND V.C_VALORACIO = E.' +
        'ACTIVITATS_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 24 AND V.C_VALORACIO = E.' +
        'ACTIVITATS_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      'END'
      ''
      ''
      '/*'
      '  ENQUESTES DE TREBALL SOCIAL'
      
        '  CAMP                        N_ITEM                        GRUP' +
        ' DE VALORACIONS'
      ''
      '  ESTUDIS CHAR(5),            Estudis                       1'
      '  ESCOLA_I CHAR(5),           Tipus escolaritat             16'
      '  ESTUDIS_I CHAR(5),          Estudis en curs               17'
      ''
      '  SITLABA1 CHAR(5),           Situaci'#243' laboral abans        2'
      '  SITLABA2 CHAR(5),           Situaci'#243' laboral abans        2'
      '  SITLABA3 CHAR(5),           Situaci'#243' laboral abans        2'
      '  SITLABAON CHAR(5),          Situaci'#243' laboral abans        3'
      '  SITLABAQ CHAR(5),           Situaci'#243' laboral abans        4'
      '  SITLABD1 CHAR(5),           Situaci'#243' laboral despr'#233's      2'
      '  SITLABD2 CHAR(5),           Situaci'#243' laboral despr'#233's      2'
      '  SITLABD3 CHAR(5),           Situaci'#243' laboral despr'#233's      2'
      '  SITLABDON CHAR(5),          Situaci'#243' laboral despr'#233's      3'
      '  SITLABDQ CHAR(5),           Situaci'#243' laboral despr'#233's      4'
      ''
      '  RESIHAB CHAR(5),            Resid'#232'ncia habitual           5'
      '  RESIHAB_I CHAR(5),          Resid'#232'ncia habitual           19'
      ''
      '  HABIALTA CHAR(5),           Habitatge a l'#39'alta            6'
      '  HABIALTA CHAR(5),           Habitatge a l'#39'alta            6'
      '  HABIALTA CHAR(5),           Habitatge a l'#39'alta            6'
      '  HABIALTA_I1 CHAR(5),        Habitatge a l'#39'alta            20'
      '  HABIALTA_I2 CHAR(5),        Habitatge a l'#39'alta            20'
      '  HABIALTA_I3 CHAR(5),        Habitatge a l'#39'alta            20'
      ''
      '  HABIACTU1 CHAR(5),          Habitatge actual              7'
      '  HABIACTU2 CHAR(5),          Habitatge actual              7'
      '  HABIACTU3 CHAR(5),          Habitatge actual              7'
      '  HABIACTU_I CHAR(5),         Habitatge actual              21'
      '  HABIACTU_I2 CHAR(5),        Habitatge actual              21'
      '  HABIACTU_I3 CHAR(5),        Habitatge actual              21'
      ''
      '  SUBSIDI1 CHAR(5),           Subsidi / Pensi'#243'              9'
      '  SUBSIDI2 CHAR(5),           Subsidi / Pensi'#243'              9'
      '  SUBSIDI3 CHAR(5),           Subsidi / Pensi'#243'              9'
      '  SUBSIDI_I CHAR(5),          Subsidi / Pensi'#243'              22'
      '  SUBSIDI_I2 CHAR(5),         Subsidi / Pensi'#243'              22'
      '  SUBSIDI_I3 CHAR(5),         Subsidi / Pensi'#243'              22'
      ''
      '  ACTIVITATS1 CHAR(5),        Activitats                    8'
      '  ACTIVITATS2 CHAR(5),        Activitats                    8'
      '  ACTIVITATS3 CHAR(5),        Activitats                    8'
      '  ACTIVITATS_I1 CHAR(5),      Activitats                    24'
      '  ACTIVITATS_I2 CHAR(5),      Activitats                    24'
      '  ACTIVITATS_I3 CHAR(5),      Activitats                    24'
      '*/')
    Dic1 = Tractaments
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
    Top = 544
  end
  object EscalesTRS2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscalesTRS2'
    ForceNombreDB = False
    Body.Strings = (
      '( C_TRACTAMENT INTEGER,'
      '  C_ESCALA INTEGER,'
      '  MIN_ENTRADA INTEGER,'
      '  MAX_ENTRADA INTEGER'
      ') RETURNS ('
      '  N_ITEM CHAR(40),'
      '  D_ITEM CHAR(200),'
      '  D_ITEM2 CHAR(200)'
      ') AS  BEGIN'
      ''
      '      N_ITEM = '#39'Accessibilitat'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 10 AND V.C_VALORACIO = E.' +
        'ACCESS'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 10 AND V.C_VALORACIO = E.' +
        'ACCESS'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Interior vivenda'#39'; D_ITEM = NULL; D_ITEM2 = NULL' +
        ';'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 11 AND V.C_VALORACIO = E.' +
        'INTERIOR'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 11 AND V.C_VALORACIO = E.' +
        'INTERIOR'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Mobilitat'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 12 AND V.C_VALORACIO = E.' +
        'MOBILITAT1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 12 AND V.C_VALORACIO = E.' +
        'MOBILITAT1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Mobilitat'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 12 AND V.C_VALORACIO = E.' +
        'MOBILITAT2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 12 AND V.C_VALORACIO = E.' +
        'MOBILITAT2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Mobilitat'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 12 AND V.C_VALORACIO = E.' +
        'MOBILITAT3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 12 AND V.C_VALORACIO = E.' +
        'MOBILITAT3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Mobilitat'#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 23 AND V.C_VALORACIO = E.' +
        'MOBILITAT_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 23 AND V.C_VALORACIO = E.' +
        'MOBILITAT_I'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL)  THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'ingr'#233's'#39'; D_ITEM = NULL; D_ITEM2' +
        ' = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVINGRE1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVINGRE1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'ingr'#233's'#39'; D_ITEM = NULL; D_ITEM2' +
        ' = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVINGRE2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVINGRE2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'ingr'#233's'#39'; D_ITEM = NULL; D_ITEM2' +
        ' = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVINGRE3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVINGRE3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'ingr'#233's'#39'; D_ITEM = NULL; D_ITEM2' +
        ' = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVINGRE_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVINGRE_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'ingr'#233's'#39'; D_ITEM = NULL; D_ITEM2' +
        ' = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVINGRE_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVINGRE_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'ingr'#233's'#39'; D_ITEM = NULL; D_ITEM2' +
        ' = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVINGRE_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVINGRE_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 =' +
        ' NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVALTA1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVALTA1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 =' +
        ' NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVALTA2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVALTA2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 =' +
        ' NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVALTA3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 13 AND V.C_VALORACIO = E.' +
        'CONVALTA3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 =' +
        ' NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVALTA_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVALTA_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 =' +
        ' NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVALTA_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVALTA_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Conviv'#232'ncia a l'#39#39'alta'#39'; D_ITEM = NULL; D_ITEM2 =' +
        ' NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVALTA_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 18 AND V.C_VALORACIO = E.' +
        'CONVALTA_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Serveis que preveu utilitzar'#39'; D_ITEM = NULL; D_' +
        'ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 14 AND V.C_VALORACIO = E.' +
        'SERVEIS1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 14 AND V.C_VALORACIO = E.' +
        'SERVEIS1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Serveis que preveu utilitzar'#39'; D_ITEM = NULL; D_' +
        'ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 14 AND V.C_VALORACIO = E.' +
        'SERVEIS2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 14 AND V.C_VALORACIO = E.' +
        'SERVEIS2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Serveis que preveu utilitzar'#39'; D_ITEM = NULL; D_' +
        'ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 14 AND V.C_VALORACIO = E.' +
        'SERVEIS3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 14 AND V.C_VALORACIO = E.' +
        'SERVEIS3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Figura assistencial'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 15 AND V.C_VALORACIO = E.' +
        'FIGASSIST1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 15 AND V.C_VALORACIO = E.' +
        'FIGASSIST1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Figura assistencial'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 25 AND V.C_VALORACIO = E.' +
        'FIGASSIST_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 25 AND V.C_VALORACIO = E.' +
        'FIGASSIST_I1'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Dedicaci'#243#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 26 AND V.C_VALORACIO = E.' +
        'DEDICACIO'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 26 AND V.C_VALORACIO = E.' +
        'DEDICACIO'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Figura assistencial'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 15 AND V.C_VALORACIO = E.' +
        'FIGASSIST2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 15 AND V.C_VALORACIO = E.' +
        'FIGASSIST2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Figura assistencial'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 25 AND V.C_VALORACIO = E.' +
        'FIGASSIST_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 25 AND V.C_VALORACIO = E.' +
        'FIGASSIST_I2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Dedicaci'#243#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 26 AND V.C_VALORACIO = E.' +
        'DEDICACIO2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 26 AND V.C_VALORACIO = E.' +
        'DEDICACIO2'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Figura assistencial'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 15 AND V.C_VALORACIO = E.' +
        'FIGASSIST3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 15 AND V.C_VALORACIO = E.' +
        'FIGASSIST3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      
        '      N_ITEM = '#39'Figura assistencial'#39'; D_ITEM = NULL; D_ITEM2 = N' +
        'ULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 25 AND V.C_VALORACIO = E.' +
        'FIGASSIST_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 25 AND V.C_VALORACIO = E.' +
        'FIGASSIST_I3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      N_ITEM = '#39'Dedicaci'#243#39'; D_ITEM = NULL; D_ITEM2 = NULL;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 26 AND V.C_VALORACIO = E.' +
        'DEDICACIO3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MIN_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM;'
      '      SELECT V.N_VALORACIO FROM ESCALESTRS E'
      
        '        JOIN ESCALESVTRS V ON V.GRUP = 26 AND V.C_VALORACIO = E.' +
        'DEDICACIO3'
      
        '       WHERE E.C_ESCALA = :C_ESCALA AND E.C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND E.C_ENTRADA = :MAX_ENTRADA AND E.ANULAT = "N"'
      '        INTO :D_ITEM2;'
      ''
      '      IF (NOT D_ITEM IS NULL) THEN SUSPEND;'
      ''
      '      '
      '        SUSPEND;'
      'END'
      ''
      '/*'
      '  ENQUESTES DE TREBALL SOCIAL'
      '  CAMP                        N_ITEM'
      '  '
      '  ACCESS CHAR(5),             Accessibilitat                10'
      '  INTERIOR CHAR(5),           Interior vivenda              11'
      '  MOBILITAT1 CHAR(5),         Mobilitat                     12'
      '  MOBILITAT2 CHAR(5),         Mobilitat                     12'
      '  MOBILITAT3 CHAR(5),         Mobilitat                     12'
      '  MOBILITAT_I CHAR(5),        Mobilitat                     23'
      ''
      '  CONVINGRE1 CHAR(5),         Conviv'#232'ncia a l'#39'ingr'#233's        13'
      '  CONVINGRE2 CHAR(5),         Conviv'#232'ncia a l'#39'ingr'#233's        13'
      '  CONVINGRE3 CHAR(5),         Conviv'#232'ncia a l'#39'ingr'#233's        13'
      '  CONVINGRE_I1 CHAR(5),       Conviv'#232'ncia a l'#39'ingr'#233's        18'
      '  CONVINGRE_I2 CHAR(5),       Conviv'#232'ncia a l'#39'ingr'#233's        18'
      '  CONVINGRE_I3 CHAR(5),       Conviv'#232'ncia a l'#39'ingr'#233's        18'
      ''
      '  CONVALTA1 CHAR(5),          Conviv'#232'ncia a l'#39'alta          13'
      '  CONVALTA2 CHAR(5),          Conviv'#232'ncia a l'#39'alta          13'
      '  CONVALTA3 CHAR(5),          Conviv'#232'ncia a l'#39'alta          13'
      '  CONVALTA_I1 CHAR(5),        Conviv'#232'ncia a l'#39'alta          18'
      '  CONVALTA_I2 CHAR(5),        Conviv'#232'ncia a l'#39'alta          18'
      '  CONVALTA_I3 CHAR(5),        Conviv'#232'ncia a l'#39'alta          18'
      ''
      '  SERVEIS1 CHAR(5),           Serveis q preveu utilitzar    14'
      '  SERVEIS2 CHAR(5),           Serveis q preveu utilitzar    14'
      '  SERVEIS3 CHAR(5),           Serveis q preveu utilitzar    14'
      ''
      '  FIGASSIST1 CHAR(5),         Figura assistencial           15'
      '  FIGASSIST_I1 CHAR(5),       Figura assistencial           25'
      '  DEDICACIO CHAR(5),          Dedicaci'#243'                     26'
      '  FIGASSIST2 CHAR(5),         Figura assistencial           15'
      '  FIGASSIST_I2 CHAR(5),       Figura assistencial           25'
      '  DEDICACIO2 CHAR(5),         Dedicaci'#243'                     26'
      '  FIGASSIST3 CHAR(5),         Figura assistencial           15'
      '  FIGASSIST_I3 CHAR(5),       Figura assistencial           25'
      '  DEDICACIO3 CHAR(5),         Dedicaci'#243'                     26'
      '*/')
    Dic1 = Tractaments
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
    Left = 248
    Top = 544
  end
  object Telefons: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'id'
        NombreDB = 'id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria'
        NombreDB = 'c_historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tel'#232'fons de contacte'
        NombreDB = 'telefons'
        Longitud = 254
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data de modificaci'#243
        NombreDB = 'data_modif'
        Longitud = 10
        MaskDisplay = 'dd"/"mm"/"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari modificaci'#243
        NombreDB = 'usuari_modif'
        Longitud = 5
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
          'id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'historia'
        NombreDB = 'historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'data_modif'
        NombreDB = 'data_modif'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data de modificaci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end>
    Consultas = <>
    Nombre = 'Tel'#232'fons de contacte'
    NombreTabla = 'TELEFONS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Hist'#242'ria'
      'Tel'#232'fons de contacte'
      'Data de modificaci'#243
      'Usuari modificaci'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 328
    Top = 177
  end
  object ACTU_borra: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ACTU'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS'
      '(C_HISTORIA  INTEGER,'
      ' NOMCOMPLET  VARCHAR(80),'
      ' C_NEURO_NOU VARCHAR(15),'
      ' N_NEURO     VARCHAR(40),'
      ' C_PRESTACIO CHAR(4),'
      ' DATA_INGRES DATE,'
      ' C_NEUROING  VARCHAR(15),'
      ' C_NEUROALT  VARCHAR(15))'
      'AS'
      'BEGIN'
      ''
      '      FOR SELECT NUM_HIST, NOMCOMPLET, N_DIAGNOSTICNEUROLOGIC'
      '          FROM   FILIACIO'
      '          WHERE  C_DIAGNOSTICNEUROLOGIC IS NULL'
      '          ORDER  BY NUM_HIST'
      '          INTO   :C_HISTORIA, :NOMCOMPLET, :N_NEURO'
      '      DO BEGIN'
      '      '
      '            C_NEURO_NOU = NULL;'
      '            C_NEUROING  = NULL;'
      '            C_NEUROALT  = NULL;'
      '            C_PRESTACIO = NULL;'
      '            DATA_INGRES = NULL;'
      '         '
      
        '            /* Busquem els diagn'#242'stics neurol'#242'gics no buits de l' +
        #39#250'ltim ingr'#233's */'
      
        '            SELECT C_DIAGNOSTICNEUROLOGICINGRES, C_DIAGNOSTICNEU' +
        'ROLOGICALTA, DATA_INGRES, C_PRESTACIO'
      '            FROM   TRACTAMENTS'
      '            WHERE  C_HISTORIA  = :C_HISTORIA'
      '            AND    C_PRESTACIO = "1004"'
      
        '            AND    ((C_DIAGNOSTICNEUROLOGICINGRES IS NOT NULL AN' +
        'D C_DIAGNOSTICNEUROLOGICINGRES <> '#39#39')'
      
        '                OR  (C_DIAGNOSTICNEUROLOGICALTA   IS NOT NULL AN' +
        'D C_DIAGNOSTICNEUROLOGICALTA   <> '#39#39'))'
      '            ORDER BY DATA_INGRES DESC'
      '            ROWS 1'
      
        '            INTO  :C_NEUROING, :C_NEUROALT, :DATA_INGRES, :C_PRE' +
        'STACIO;'
      '         '
      
        '            /* agafem el diagn'#242'stic neurol'#242'gic de l'#39'alta prefere' +
        'ntment */'
      
        '            IF      ((C_NEUROALT <> '#39#39') AND (C_NEUROALT IS NOT N' +
        'ULL)) THEN C_NEURO_NOU = C_NEUROALT;'
      
        '            ELSE IF ((C_NEUROING <> '#39#39') AND (C_NEUROING IS NOT N' +
        'ULL)) THEN C_NEURO_NOU = C_NEUROING;'
      '            '
      '            '
      
        '            /* Si no en trobem, busquem els diagn'#242'stics neurol'#242'g' +
        'ics no buits de l'#39#250'ltim tractament */'
      '            IF (C_NEURO_NOU IS NULL) THEN'
      '            BEGIN'
      
        '                  SELECT C_DIAGNOSTICNEUROLOGICINGRES, C_DIAGNOS' +
        'TICNEUROLOGICALTA, DATA_INGRES, C_PRESTACIO'
      '                  FROM   TRACTAMENTS'
      '                  WHERE  C_HISTORIA  = :C_HISTORIA'
      
        '                  AND    ((C_DIAGNOSTICNEUROLOGICINGRES IS NOT N' +
        'ULL AND C_DIAGNOSTICNEUROLOGICINGRES <> '#39#39')'
      
        '                      OR  (C_DIAGNOSTICNEUROLOGICALTA   IS NOT N' +
        'ULL AND C_DIAGNOSTICNEUROLOGICALTA   <> '#39#39'))'
      '                  ORDER BY DATA_INGRES DESC'
      '                  ROWS 1'
      
        '                  INTO  :C_NEUROING, :C_NEUROALT, :DATA_INGRES, ' +
        ':C_PRESTACIO;'
      ''
      
        '                  /* agafem el diagn'#242'stic neurol'#242'gic de l'#39'alta p' +
        'referentment */'
      
        '                  IF      ((C_NEUROALT <> '#39#39') AND (C_NEUROALT IS' +
        ' NOT NULL)) THEN C_NEURO_NOU = C_NEUROALT;'
      
        '                  ELSE IF ((C_NEUROING <> '#39#39') AND (C_NEUROING IS' +
        ' NOT NULL)) THEN C_NEURO_NOU = C_NEUROING;'
      '            END;'
      '            '
      
        '            /* Posem el diagn'#242'stic neurol'#242'gic trobat a Filiaci'#243',' +
        ' si no est'#224' buit */'
      '            IF (C_NEURO_NOU IS NOT NULL) THEN'
      '            BEGIN'
      '/*                  UPDATE FILIACIO'
      '                  SET    C_DIAGNOSTICNEUROLOGIC = :C_NEURO_NOU'
      '                  WHERE  NUM_HIST = :C_HISTORIA;*/'
      ''
      '                  SUSPEND;'
      '            END;'
      '            '
      '      END;'
      'END'
      '')
    Dic1 = Filiacio
    Dic1Name = 'filiacio'
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
    Top = 64
  end
  object Intercon_Especialitat: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ESPECIALITAT'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFIN DATE)'
      'RETURNS (ESPECIALITAT VARCHAR(20),'
      '         TOTAL_ESPECIALITAT INTEGER,'
      '         N_METGE VARCHAR(20),'
      '         TOTAL_METGE INTEGER)'
      'AS'
      '      DECLARE VARIABLE ACUMULADOR_METGES INTEGER;'
      '      DECLARE VARIABLE ESPECIALITAT_AUX CHAR(2);'
      '      DECLARE VARIABLE COMPT_ESPE_AUX INTEGER;'
      'BEGIN'
      '     /* inicialitzo les variables*/'
      '     ACUMULADOR_METGES = 0;'
      '     N_METGE = '#39#39';'
      '     TOTAL_METGE = NULL;'
      ''
      '     FOR SELECT E.N_ESPECIAL, I.C_ESPECIAL, COUNT(*)'
      
        '         FROM INTERCON I JOIN ESPECIAL E ON I.C_ESPECIAL = E.C_E' +
        'SPECIAL'
      '         WHERE I.DATA1 BETWEEN :DATAINI AND :DATAFIN'
      '         GROUP BY E.N_ESPECIAL, I.C_ESPECIAL'
      
        '         INTO :ESPECIALITAT, :ESPECIALITAT_AUX, :TOTAL_ESPECIALI' +
        'TAT'
      '     DO BEGIN'
      '         /* mostrem l'#39'especialitat */'
      '         SUSPEND;'
      ''
      '         ESPECIALITAT = '#39#39';'
      '         COMPT_ESPE_AUX = TOTAL_ESPECIALITAT;'
      '         TOTAL_ESPECIALITAT = NULL;'
      '         '
      
        '         /* per cada metge de l'#39'especialitat amb interconsulta e' +
        'ntre les dates seleccionades*/'
      '         FOR   SELECT M.METGE, COUNT(*)'
      
        '               FROM INTERCON I JOIN METGES M ON I.C_METGE2 = M.C' +
        'ODI'
      '               WHERE I.C_ESPECIAL = :ESPECIALITAT_AUX'
      '               AND I.DATA1 BETWEEN :DATAINI AND :DATAFIN'
      '               GROUP BY M.METGE'
      '               INTO :N_METGE, :TOTAL_METGE'
      '         DO BEGIN'
      
        '               ACUMULADOR_METGES = ACUMULADOR_METGES + TOTAL_MET' +
        'GE;'
      ''
      '               /* mostrem el metge */'
      '               SUSPEND;'
      '         END'
      '         N_METGE = '#39'PENDENTS'#39';'
      '         TOTAL_METGE = COMPT_ESPE_AUX - ACUMULADOR_METGES;'
      '         IF (TOTAL_METGE > 0) THEN SUSPEND;'
      ''
      '         N_METGE = '#39#39';'
      '         TOTAL_METGE = NULL;'
      '         ACUMULADOR_METGES = 0;'
      '     END'
      'END')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'Intercon'
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
    Left = 112
    Top = 363
  end
  object P_Metges: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'METGES'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (N_METGE VARCHAR(20),'
      '         DIA DATE,'
      '         NUM_VISITES INTEGER)'
      'AS'
      '      DECLARE VARIABLE DATA_AUX DATE;'
      '      DECLARE VARIABLE CODI_METGE  VARCHAR(5);'
      'BEGIN'
      '      FOR   SELECT M.METGE, T.C_COORDINADOR, COUNT(*)'
      '            FROM TRACTAMENTS T JOIN METGES M'
      '            ON T.C_COORDINADOR = M.CODI'
      '            WHERE T.DATA_INGRES >= :DATA1'
      '            AND T.DATA_INGRES <= :DATA2'
      
        '            AND ( T.C_PRESTACIO = 2001 OR T.C_PRESTACIO = 2002 O' +
        'R'
      
        '                  T.C_PRESTACIO = 2003 OR T.C_PRESTACIO = 2004 O' +
        'R'
      
        '                  T.C_PRESTACIO = 2006 OR T.C_PRESTACIO = 2010 O' +
        'R'
      
        '                  T.C_PRESTACIO = 2011 OR T.C_PRESTACIO = 2012 O' +
        'R'
      '                  T.C_PRESTACIO = 2013   )'
      '            GROUP BY M.METGE, T.C_COORDINADOR'
      '            INTO :N_METGE,:CODI_METGE,:NUM_VISITES'
      '      DO BEGIN'
      '            IF (NUM_VISITES > 1) THEN'
      '            BEGIN'
      '                  DATA_AUX = DATA1;'
      '                  WHILE (DATA_AUX <= DATA2) DO'
      '                  BEGIN'
      '                        SELECT COUNT(*)'
      '                        FROM TRACTAMENTS'
      '                        WHERE C_COORDINADOR = :CODI_METGE'
      '                        AND DATA_INGRES = :DATA_AUX'
      
        '                        AND (C_PRESTACIO = 2001 OR C_PRESTACIO =' +
        ' 2002 OR'
      
        '                                  C_PRESTACIO = 2003 OR C_PRESTA' +
        'CIO = 2004 OR'
      
        '                                  C_PRESTACIO = 2006 OR C_PRESTA' +
        'CIO = 2010 OR'
      
        '                                  C_PRESTACIO = 2011 OR C_PRESTA' +
        'CIO = 2012 OR'
      '                                  C_PRESTACIO = 2013   )'
      '                        INTO :NUM_VISITES;'
      '                        '
      '                        IF (NUM_VISITES > 1) THEN'
      '                        BEGIN'
      '                              DIA = DATA_AUX;'
      '                              SUSPEND;'
      '                              N_METGE = '#39#39';'
      '                        END'
      '                        DATA_AUX = DATA_AUX + 1;'
      '                  END'
      '            END'
      '      END'
      'END')
    Dic1 = Tractaments
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
    Left = 392
    Top = 544
  end
  object Exitusesp: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Historia'
        NombreDB = 'c_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'filiacio'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus prova'
        NombreDB = 'Tipusprova'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Intervencio'
        NombreDB = 'C_interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat'
        NombreDB = 'Estat'
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
          'Tipus prova'
          'N'#186' Intervencio')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Filiacio'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'N'#186' Historia')
        CopiarOrigen.Strings = (
          'N'#186' Historia')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end>
    Nombre = 'Exitusesp'
    NombreTabla = 'Exitusesp'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Historia'
      'Tipus prova'
      'N'#186' Intervencio'
      'Estat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 85
    Top = 177
  end
  object ANY2000: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ANY2000'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (  HISTORIA INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  DATA_INGRES DATE,'
      '  DATA_ULTIMCONTACTE DATE'
      ')'
      'AS'
      'BEGIN'
      
        '  FOR SELECT DISTINCT T.C_HISTORIA, F.DATA_ULTIMCONTACTE FROM TR' +
        'ACTAMENTS T'
      '  JOIN FILIACIO F ON F.NUM_HIST = T.C_HISTORIA'
      '  WHERE T.DATA_INGRES > '#39'29.06.1999'#39
      '  AND T.DATA_INGRES < '#39'01.01.2001'#39
      '  AND F.DATA_ULTIMCONTACTE IS NULL'
      
        '  ORDER BY F.DATA_ULTIMCONTACTE DESC, T.C_HISTORIA, T.C_TRACTAME' +
        'NT DESC'
      '  INTO :HISTORIA, :DATA_ULTIMCONTACTE'
      '  DO BEGIN'
      
        '        SELECT F.DATA_ULTIMCONTACTE, T.C_TRACTAMENT, T.DATA_INGR' +
        'ES FROM'
      
        '        TRACTAMENTS T JOIN FILIACIO F ON F.NUM_HIST = T.C_HISTOR' +
        'IA'
      '        WHERE F.NUM_HIST = :HISTORIA'
      '        ORDER BY T.DATA_INGRES DESC, T.C_TRACTAMENT DESC'
      '        ROWS 1'
      '        INTO :DATA_ULTIMCONTACTE, :C_TRACTAMENT, :DATA_INGRES;'
      '        SUSPEND;'
      ' /*       UPDATE FILIACIO SET'
      '        DATA_ULTIMCONTACTE = :DATA_INGRES'
      '        WHERE NUM_HIST = :HISTORIA; */'
      '  END'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'filiacio'
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
    Left = 632
    Top = 64
  end
  object UltimContacte: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ULTIMCONTACTE'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (  HISTORIA INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  DATA_INGRES DATE,'
      '  DATA_ALTA DATE,'
      '  DATA_ULTIMCONTACTE DATE'
      ')'
      'AS'
      'BEGIN'
      '  FOR SELECT NUM_HIST FROM FILIACIO'
      '           ORDER BY NUM_HIST'
      '           INTO :HISTORIA'
      '  DO BEGIN'
      
        '        SELECT  F.DATA_ULTIMCONTACTE, T.C_TRACTAMENT, T.DATA_ALT' +
        'A, T.DATA_INGRES FROM'
      
        '        TRACTAMENTS T JOIN FILIACIO F ON F.NUM_HIST = T.C_HISTOR' +
        'IA'
      '        WHERE F.NUM_HIST = :HISTORIA'
      '        ORDER BY T.C_TRACTAMENT DESC'
      '        ROWS 1'
      
        '        INTO :DATA_ULTIMCONTACTE, :C_TRACTAMENT, :DATA_ALTA, :DA' +
        'TA_INGRES;'
      '        IF ((DATA_ALTA <> DATA_ULTIMCONTACTE)'
      
        '        OR ((DATA_ALTA IS NULL) AND (DATA_INGRES <> DATA_ULTIMCO' +
        'NTACTE))) THEN'
      '        BEGIN'
      '            SUSPEND;'
      '            /* UPDATE FILIACIO SET'
      '            DATA_ULTIMCONTACTE = :DATA_ALTA'
      '            WHERE NUM_HIST = :HISTORIA;  */'
      '        END;'
      '  END'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'filiacio'
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
    Left = 172
    Top = 64
  end
  object TSI: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'TSI'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA  INTEGER,'
      '         APELLIDO1 VARCHAR(20),'
      '         APELLIDO2 VARCHAR(20),'
      '         NOMBRE    VARCHAR(20),'
      '         SEXE      VARCHAR(20),'
      '         DATA_NAIXEMENT DATE,'
      '         TSI       VARCHAR(14),'
      '         ERROR     VARCHAR(5))'
      'AS'
      '      DECLARE VARIABLE TSI_ANT   VARCHAR(14);'
      '      DECLARE VARIABLE TSI_4     CHAR(4);'
      '      DECLARE VARIABLE TSI_SEX   CHAR(1);'
      '      DECLARE VARIABLE TSI_NAIX  CHAR(6);'
      '      DECLARE VARIABLE COGNOMS   CHAR(4);'
      '      DECLARE VARIABLE DATA_NAIX CHAR(6);'
      '      DECLARE VARIABLE LONG_TSI  INTEGER;'
      'BEGIN'
      ''
      
        '  /* EN EL CAMP ERROR HI POSAREM EL TIPUS D'#39'ERROR QUE T'#201' EL REGI' +
        'STRE O RES EN EL CAS DE QUE SIGUI TOT CORRECTE:'
      '     - L --> TSI T'#201' LONGITUD <> 14'
      '     - R --> TSI REPETIT'
      '     - C --> TSI NO T'#201' COGNOMS OK'
      '     - N --> TSI NO T'#201' DATA NAIXEMENT OK'
      '     - S --> TSI NO T'#201' SEXE OK'
      ''
      
        '  hi ha function del main d'#39'admissions que calcula el TSI com se' +
        'gueix:'
      '  '
      '  Result := copy(Apellido1,0,2);'
      '  Result := Result + copy(Apellido2,0,2);'
      
        '  IF Sexo = '#39'H'#39' THEN Result := Result + '#39'0'#39' ELSE Result := Resul' +
        't + '#39'1'#39';'
      
        '  if DataNaixement <> 0 then Result := Result + formatDateTime('#39 +
        'yymmdd'#39', DataNaixement);  */'
      ''
      '  TSI_ANT = NULL; ERROR = '#39#39';'
      ''
      
        '  FOR SELECT NUM_HIST, APELLIDO1, APELLIDO2, NOMBRE, SEXO, FECHA' +
        '_NAC, TSI, F_STRINGLENGTH(TSI),'
      
        '/*      CAST(F_LEFT(TSI,4) AS CHAR(4)),CAST(F_MID(TSI,4,1) AS CH' +
        'AR(1)),CAST(F_MID(TSI,5,6) AS CHAR(6)),'
      
        '      CAST(F_LEFT(APELLIDO1,2) AS CHAR(2))||CAST(F_LEFT(APELLIDO' +
        '2,2) AS CHAR(2)),'
      
        '      CAST(F_RIGHT(F_YEAR(FECHA_NAC),2) AS CHAR(2))||CAST(f_mid(' +
        'f_datetostr(fecha_nac),3,2) AS CHAR(2))||CAST(f_mid(f_datetostr(' +
        'fecha_nac),0,2) AS CHAR(2)) */'
      '      F_LEFT(TSI,4), F_MID(TSI,4,1), F_MID(TSI,5,6),'
      '      F_LEFT(APELLIDO1,2) || F_LEFT(APELLIDO2,2),'
      
        '      F_RIGHT(F_YEAR(FECHA_NAC),2) || F_Mid(f_datetostr(fecha_na' +
        'c),3,2) || f_mid(f_datetostr(fecha_nac),0,2)'
      '  FROM FILIACIO'
      '  WHERE (TSI IS NOT NULL)'
      '  AND F_STRINGLENGTH(TSI) > 0'
      '  ORDER BY TSI'
      
        '  INTO :HISTORIA, :APELLIDO1, :APELLIDO2, :NOMBRE, :SEXE, :DATA_' +
        'NAIXEMENT, :TSI, :LONG_TSI, :TSI_4, :TSI_SEX, :TSI_NAIX, :COGNOM' +
        'S, :DATA_NAIX'
      '  DO BEGIN'
      '    /* COMPROVAR QUE EL TSI T'#201' LONGITUD = 14*/'
      '    IF (LONG_TSI <> 14) THEN ERROR='#39'L'#39';'
      '  '
      '    /* COMPROVAR QUE EL TSI NO EST'#192' REPETIT */'
      '    IF (TSI = TSI_ANT) THEN ERROR=ERROR||'#39'R'#39';'
      ''
      '    /* COMPROVAR QUE EL TSI T'#201' ELS COGNOMS OK */'
      '    IF (TSI_4 <> COGNOMS) THEN ERROR=ERROR||'#39'C'#39';'
      '    '
      '    /* COMPROVAR QUE EL TSI T'#201' SEXE OK */'
      
        '    IF (SEXE = '#39'D'#39') THEN IF (TSI_SEX <> '#39'1'#39') THEN ERROR=ERROR||'#39 +
        'S'#39';'
      
        '    IF (SEXE = '#39'H'#39') THEN IF (TSI_SEX <> '#39'0'#39') THEN ERROR=ERROR||'#39 +
        'S'#39';'
      ''
      '    /* COMPROVAR QUE EL TSI T'#201' DATA NAIXEMENT OK */'
      '    IF (TSI_NAIX <> DATA_NAIX) THEN ERROR=ERROR||'#39'N'#39';'
      ''
      '    SUSPEND;'
      '    TSI_ANT = TSI;'
      '    ERROR = '#39#39';'
      '  END;'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'FILIACIO'
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
    Left = 580
    Top = 64
  end
  object PReferencia: TDic
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
        Nombre = 'C_HISTORIA'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'NOM'
        NombreDB = 'NOM'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'TELEFON'
        NombreDB = 'TELEFON'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'VINCULACIO'
        NombreDB = 'VINCULACIO'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_USUARI'
        NombreDB = 'C_USUARI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'DATA'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
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
      end>
    Consultas = <>
    Nombre = 'PREFERENCIA'
    NombreTabla = 'PREFERENCIA'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 400
    Top = 177
  end
  object NHC_SALTA: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NHC_SALTA'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA INTEGER,'
      '         NOM VARCHAR(80),'
      '         EDAT INTEGER,'
      '         SEXE CHAR(1),'
      '         PAIS VARCHAR(3),'
      '         UNITAT_MEDICA SMALLINT,'
      '         UM_ANTIGA SMALLINT'
      '         )'
      'AS'
      '      DECLARE VARIABLE COMPTA INTEGER;'
      'BEGIN'
      '  COMPTA=1;  /* LA PRIMERA HIST'#210'RIA '#201'S LA N'#186' 1 */'
      
        '  FOR SELECT num_hist,nomcomplet,edat,sexo,pais,c_unitatmedica,u' +
        'm_antiga'
      '      FROM FILIACIO'
      '      ORDER BY NUM_HIST'
      
        '      INTO :HISTORIA,:NOM,:EDAT,:SEXE,:PAIS,:UNITAT_MEDICA, :UM_' +
        'ANTIGA'
      '  DO BEGIN'
      '      IF (COMPTA <> HISTORIA) THEN SUSPEND;'
      '      COMPTA=COMPTA+1;'
      '  END;'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'filiacio'
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
    Left = 332
    Top = 64
  end
  object TractEASE: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'TRACTAMENT'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'HISTORIA'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Filiacio'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'DATA_INGRES'
        NombreDB = 'DATA_INGRES'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'DATA_ALTA'
        NombreDB = 'DATA_ALTA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'PROCEDENCIA'
        NombreDB = 'PROCEDENCIA'
        Longitud = 8
        Consulta = 'Procedencia'
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'CIRC. ALTA'
        NombreDB = 'CIRALTA'
        Longitud = 8
        Consulta = 'Ciralta'
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'UP DESTI'
        NombreDB = 'UP_DESTI'
        Longitud = 5
        Consulta = 'UPDesti'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'PROG. ESPECIFIC'
        NombreDB = 'PROG_ESPECIFIC'
        Longitud = 8
        Consulta = 'Progespecif'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'R'#200'GIM ECON'#210'MIC'
        NombreDB = 'REGIM_ECONOMIC'
        Longitud = 15
        Consulta = 'RegimEconomic'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC PRINCIPAL'
        NombreDB = 'C_DIAG_P'
        Longitud = 15
        Consulta = 'DP'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 1'
        NombreDB = 'C_DIAG_S1'
        Longitud = 15
        Consulta = 'DS1'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 2'
        NombreDB = 'C_DIAG_S2'
        Longitud = 15
        Consulta = 'DS2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 3'
        NombreDB = 'C_DIAG_S3'
        Longitud = 15
        Consulta = 'DS3'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 4'
        NombreDB = 'C_DIAG_S4'
        Longitud = 15
        Consulta = 'DS4'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 5'
        NombreDB = 'C_DIAG_S5'
        Longitud = 15
        Consulta = 'DS5'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 6'
        NombreDB = 'C_DIAG_S6'
        Longitud = 15
        Consulta = 'DS6'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 7'
        NombreDB = 'C_DIAG_S7'
        Longitud = 15
        Consulta = 'DS7'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 8'
        NombreDB = 'C_DIAG_S8'
        Longitud = 15
        Consulta = 'DS8'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DIAGN'#210'STIC SECUNDARI 9'
        NombreDB = 'C_DIAG_S9'
        Longitud = 15
        Consulta = 'DS9'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CAUSA EXTERNA 1'
        NombreDB = 'CE1'
        Longitud = 15
        Consulta = 'CE1'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CAUSA EXTERNA 2'
        NombreDB = 'CE2'
        Longitud = 15
        Consulta = 'CE2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CAUSA EXTERNA 3'
        NombreDB = 'CE3'
        Longitud = 15
        Consulta = 'CE3'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CAUSA EXTERNA 4'
        NombreDB = 'CE4'
        Longitud = 15
        Consulta = 'CE4'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CAUSA EXTERNA 5'
        NombreDB = 'CE5'
        Longitud = 15
        Consulta = 'CE5'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROCEDIMENT PRINCIPAL'
        NombreDB = 'PP'
        Longitud = 15
        Consulta = 'PP'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROCEDIMENT SECUNDARI 1'
        NombreDB = 'PS1'
        Longitud = 15
        Consulta = 'PS1'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROCEDIMENT SECUNDARI 2'
        NombreDB = 'PS2'
        Longitud = 15
        Consulta = 'PS2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROCEDIMENT SECUNDARI 3'
        NombreDB = 'PS3'
        Longitud = 15
        Consulta = 'PS3'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROCEDIMENT SECUNDARI 4'
        NombreDB = 'PS4'
        Longitud = 15
        Consulta = 'PS4'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROCEDIMENT SECUNDARI 5'
        NombreDB = 'PS5'
        Longitud = 15
        Consulta = 'PS5'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROCEDIMENT SECUNDARI 6'
        NombreDB = 'PS6'
        Longitud = 15
        Consulta = 'PS6'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROCEDIMENT SECUNDARI 7'
        NombreDB = 'PS7'
        Longitud = 15
        Consulta = 'PS7'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROEDIMENT EXTERN 1'
        NombreDB = 'PX1'
        Longitud = 15
        Consulta = 'PX1'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PROEDIMENT EXTERN 2'
        NombreDB = 'PX2'
        Longitud = 15
        Consulta = 'PX2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC PRINCIPAL'
        NombreDB = 'N_DIAG_P'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 1'
        NombreDB = 'N_DIAG_S1'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 2'
        NombreDB = 'N_DIAG_S2'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 3'
        NombreDB = 'N_DIAG_S3'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 4'
        NombreDB = 'N_DIAG_S4'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 5'
        NombreDB = 'N_DIAG_S5'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 6'
        NombreDB = 'N_DIAG_S6'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 7'
        NombreDB = 'N_DIAG_S7'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 8'
        NombreDB = 'N_DIAG_S8'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N DIAGN'#210'STIC SECUNDARI 9'
        NombreDB = 'N_DIAG_S9'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N CAUSA EXTERNA 1'
        NombreDB = 'N_CE1'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N CAUSA EXTERNA 2'
        NombreDB = 'N_CE2'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N CAUSA EXTERNA 3'
        NombreDB = 'N_CE3'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N CAUSA EXTERNA 4'
        NombreDB = 'N_CE4'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N CAUSA EXTERNA 5'
        NombreDB = 'N_CE5'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT PRINCIPAL'
        NombreDB = 'N_PP'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT SECUNDARI 1'
        NombreDB = 'N_PS1'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT SECUNDARI 2'
        NombreDB = 'N_PS2'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT SECUNDARI 3'
        NombreDB = 'N_PS3'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT SECUNDARI 4'
        NombreDB = 'N_PS4'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT SECUNDARI 5'
        NombreDB = 'N_PS5'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT SECUNDARI 6'
        NombreDB = 'N_PS6'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT SECUNDARI 7'
        NombreDB = 'N_PS7'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT EXTERN 1'
        NombreDB = 'N_PX1'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N PROCEDIMENT EXTERN 2'
        NombreDB = 'N_PX2'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC PRINCIPAL'
        NombreDB = 'G_DIAG_P'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 1'
        NombreDB = 'G_DIAG_S1'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 2'
        NombreDB = 'G_DIAG_S2'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 3'
        NombreDB = 'G_DIAG_S3'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 4'
        NombreDB = 'G_DIAG_S4'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 5'
        NombreDB = 'G_DIAG_S5'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 6'
        NombreDB = 'G_DIAG_S6'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 7'
        NombreDB = 'G_DIAG_S7'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 8'
        NombreDB = 'G_DIAG_S8'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G DIAGN'#210'STIC SECUNDARI 9'
        NombreDB = 'G_DIAG_S9'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G CAUSA EXTERNA 1'
        NombreDB = 'G_CE1'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G CAUSA EXTERNA 2'
        NombreDB = 'G_CE2'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G CAUSA EXTERNA 3'
        NombreDB = 'G_CE3'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G CAUSA EXTERNA 4'
        NombreDB = 'G_CE4'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G CAUSA EXTERNA 5'
        NombreDB = 'G_CE5'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT PRINCIPAL'
        NombreDB = 'G_PP'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT SECUNDARI 1'
        NombreDB = 'G_PS1'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT SECUNDARI 2'
        NombreDB = 'G_PS2'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT SECUNDARI 3'
        NombreDB = 'G_PS3'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT SECUNDARI 4'
        NombreDB = 'G_PS4'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT SECUNDARI 5'
        NombreDB = 'G_PS5'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT SECUNDARI 6'
        NombreDB = 'G_PS6'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT SECUNDARI 7'
        NombreDB = 'G_PS7'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT EXTERN 1'
        NombreDB = 'G_PX1'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'G PROCEDIMENT EXTERN 2'
        NombreDB = 'G_PX2'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari '#250'ltima modificaci'#243
        NombreDB = 'C_USER_ULT'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltima modificaci'#243
        NombreDB = 'DATA_ULT'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy" "hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Acci'#243' '#250'ltima modificaci'#243
        NombreDB = 'ACCIO_ULT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'IU'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'TRACTAMENT')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Filiacio'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'HISTORIA')
        CopiarOrigen.Strings = (
          'HISTORIA')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Procedencia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'PROCEDENCIA')
        CopiarOrigen.Strings = (
          'PROCEDENCIA')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'PROCEDENCIA_SS'#39
      end
      item
        Nombre = 'Ciralta'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'CIRC. ALTA')
        CopiarOrigen.Strings = (
          'CIRC. ALTA')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'CIRCALTA_SS'#39
      end
      item
        Nombre = 'ProgEspecif'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'PROG. ESPECIFIC')
        CopiarOrigen.Strings = (
          'PROG. ESPECIFIC')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'PROGRESPECIFIC_SS'#39
      end
      item
        Nombre = 'DP'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC PRINCIPAL')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC PRINCIPAL')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'DS1'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 1')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 1')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'DS2'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 2')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 2')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'DS3'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 3')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 3')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'UPDesti'
        Master = wDataFactu.Delega
        BuscaOrigen.Strings = (
          'UP DESTI')
        CopiarOrigen.Strings = (
          'UP DESTI')
        CopiarMaster.Strings = (
          'N'#186' Delegaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Delegaci'#243)
        WhereFiltro = 'c_centrefac = '#39'04'#39' and c_client = '#39'UP'#39' and actiu='#39'S'#39
      end
      item
        Nombre = 'DS4'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 4')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 4')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'DS5'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 5')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 5')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'DS6'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 6')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 6')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'DS7'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 7')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 7')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'DS8'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 8')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 8')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'DS9'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 9')
        CopiarOrigen.Strings = (
          'DIAGN'#210'STIC SECUNDARI 9')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'CE1'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'CAUSA EXTERNA 1')
        CopiarOrigen.Strings = (
          'CAUSA EXTERNA 1')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'CE2'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'CAUSA EXTERNA 2')
        CopiarOrigen.Strings = (
          'CAUSA EXTERNA 2')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'CE3'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'CAUSA EXTERNA 3')
        CopiarOrigen.Strings = (
          'CAUSA EXTERNA 3')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'CE4'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'CAUSA EXTERNA 4')
        CopiarOrigen.Strings = (
          'CAUSA EXTERNA 4')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'CE5'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'CAUSA EXTERNA 5')
        CopiarOrigen.Strings = (
          'CAUSA EXTERNA 5')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="D"'
      end
      item
        Nombre = 'PP'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROCEDIMENT PRINCIPAL')
        CopiarOrigen.Strings = (
          'PROCEDIMENT PRINCIPAL')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PS1'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 1')
        CopiarOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 1')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PS2'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 2')
        CopiarOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 2')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PS3'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 3')
        CopiarOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 3')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PS4'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 4')
        CopiarOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 4')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PS5'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 5')
        CopiarOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 5')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PS6'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 6')
        CopiarOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 6')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PS7'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 7')
        CopiarOrigen.Strings = (
          'PROCEDIMENT SECUNDARI 7')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PX1'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROEDIMENT EXTERN 1')
        CopiarOrigen.Strings = (
          'PROEDIMENT EXTERN 1')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'PX2'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'PROEDIMENT EXTERN 2')
        CopiarOrigen.Strings = (
          'PROEDIMENT EXTERN 2')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'BAIXA = "N" AND TIPUS="P"'
      end
      item
        Nombre = 'RegimEconomic'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'R'#200'GIM ECON'#210'MIC')
        CopiarOrigen.Strings = (
          'R'#200'GIM ECON'#210'MIC')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'REGIM_ECONOMIC'#39
      end>
    Nombre = 'TRACTEASE'
    NombreTabla = 'TRACTEASE'
    Organiza = tbBase
    CamposVer.Strings = (
      'TRACTAMENT'
      'HISTORIA'
      'DATA_INGRES'
      'DATA_ALTA'
      'PROCEDENCIA'
      'CIRC. ALTA'
      'UP DESTI'
      'PROG. ESPECIFIC'
      'DIAGN'#210'STIC PRINCIPAL'
      'DIAGN'#210'STIC SECUNDARI 1'
      'DIAGN'#210'STIC SECUNDARI 2'
      'DIAGN'#210'STIC SECUNDARI 3'
      'DIAGN'#210'STIC SECUNDARI 4'
      'DIAGN'#210'STIC SECUNDARI 5'
      'DIAGN'#210'STIC SECUNDARI 6'
      'DIAGN'#210'STIC SECUNDARI 7'
      'DIAGN'#210'STIC SECUNDARI 8'
      'DIAGN'#210'STIC SECUNDARI 9'
      'CAUSA EXTERNA 1'
      'CAUSA EXTERNA 2'
      'CAUSA EXTERNA 3'
      'CAUSA EXTERNA 4'
      'CAUSA EXTERNA 5'
      'PROCEDIMENT PRINCIPAL'
      'PROCEDIMENT SECUNDARI 1'
      'PROCEDIMENT SECUNDARI 2'
      'PROCEDIMENT SECUNDARI 3'
      'PROCEDIMENT SECUNDARI 4'
      'PROCEDIMENT SECUNDARI 5'
      'PROCEDIMENT SECUNDARI 6'
      'PROCEDIMENT SECUNDARI 7'
      'PROEDIMENT EXTERN 1'
      'PROEDIMENT EXTERN 2'
      'N DIAGN'#210'STIC PRINCIPAL'
      'N DIAGN'#210'STIC SECUNDARI 1'
      'N DIAGN'#210'STIC SECUNDARI 2'
      'N DIAGN'#210'STIC SECUNDARI 3'
      'N DIAGN'#210'STIC SECUNDARI 4'
      'N DIAGN'#210'STIC SECUNDARI 5'
      'N DIAGN'#210'STIC SECUNDARI 6'
      'N DIAGN'#210'STIC SECUNDARI 7'
      'N DIAGN'#210'STIC SECUNDARI 8'
      'N DIAGN'#210'STIC SECUNDARI 9'
      'N CAUSA EXTERNA 1'
      'N CAUSA EXTERNA 2'
      'N CAUSA EXTERNA 3'
      'N CAUSA EXTERNA 4'
      'N CAUSA EXTERNA 5'
      'N PROCEDIMENT PRINCIPAL'
      'N PROCEDIMENT SECUNDARI 1'
      'N PROCEDIMENT SECUNDARI 2'
      'N PROCEDIMENT SECUNDARI 3'
      'N PROCEDIMENT SECUNDARI 4'
      'N PROCEDIMENT SECUNDARI 5'
      'N PROCEDIMENT SECUNDARI 6'
      'N PROCEDIMENT SECUNDARI 7'
      'N PROCEDIMENT EXTERN 1'
      'N PROCEDIMENT EXTERN 2'
      'G DIAGN'#210'STIC PRINCIPAL'
      'G DIAGN'#210'STIC SECUNDARI 1'
      'G DIAGN'#210'STIC SECUNDARI 2'
      'G DIAGN'#210'STIC SECUNDARI 3'
      'G DIAGN'#210'STIC SECUNDARI 4'
      'G DIAGN'#210'STIC SECUNDARI 5'
      'G DIAGN'#210'STIC SECUNDARI 6'
      'G DIAGN'#210'STIC SECUNDARI 7'
      'G DIAGN'#210'STIC SECUNDARI 8'
      'G DIAGN'#210'STIC SECUNDARI 9'
      'G CAUSA EXTERNA 1'
      'G CAUSA EXTERNA 2'
      'G CAUSA EXTERNA 3'
      'G CAUSA EXTERNA 4'
      'G CAUSA EXTERNA 5'
      'G PROCEDIMENT PRINCIPAL'
      'G PROCEDIMENT SECUNDARI 1'
      'G PROCEDIMENT SECUNDARI 2'
      'G PROCEDIMENT SECUNDARI 3'
      'G PROCEDIMENT SECUNDARI 4'
      'G PROCEDIMENT SECUNDARI 5'
      'G PROCEDIMENT SECUNDARI 6'
      'G PROCEDIMENT SECUNDARI 7'
      'G PROCEDIMENT EXTERN 1'
      'G PROCEDIMENT EXTERN 2')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 29
    Top = 608
  end
  object FinalitzaProces: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FinalitzaProces'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      '   DECLARE VARIABLE C_PROCES INTEGER;'
      '   DECLARE VARIABLE FI_PROCES CHAR(1);'
      '   DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '   DECLARE VARIABLE DATA_ALTA DATE;'
      'BEGIN'
      ''
      '      /* Recorrem els processos agafant l'#39'estat m'#224'xim'
      
        '        (si est'#224' finalitzat el m'#224'xim c_proces ser'#224' una '#39'S'#39', altr' +
        'ament ser'#224' una '#39'N'#39'. '#201's a dir:  '#39'S'#39' > '#39'N'#39') */'
      '      FOR SELECT MAX(T.FI_PROCES), T.C_PROCES'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   DRETSPRESTA P ON T.C_PRESTACIO = P.C_PRESTACIO ' +
        'AND P.C_DRET = '#39'P35'#39
      
        '          JOIN   DRETSMOTIU  M ON T.C_MOTIU = M.C_MOTIU AND M.C_' +
        'DRET = '#39'X1'#39
      '          WHERE  T.C_PROCES IS NOT NULL'
      
        '          AND    T.DATA_ALTA >= "TODAY" - 60  /* Nom'#233's cal mirar' +
        ' les '#250'ltimes altes (2 '#250'ltims mesos), perqu'#232' les m'#233's antigues ja ' +
        's'#39'hauran processat */'
      '          GROUP  BY T.C_PROCES'
      '          INTO  :FI_PROCES, :C_PROCES'
      '      DO BEGIN'
      ''
      '            /* Per cada proc'#233's no finalitzat */'
      '            IF (FI_PROCES = '#39'N'#39') THEN'
      '            BEGIN'
      '            '
      
        '                  /* Busquem l'#39#250'ltim tractament rehabilitador de' +
        'l proc'#233's */'
      '                  SELECT T.C_TRACTAMENT, T.DATA_ALTA'
      '                  FROM   TRACTAMENTS T'
      
        '                  JOIN   DRETSPRESTA P ON T.C_PRESTACIO = P.C_PR' +
        'ESTACIO AND P.C_DRET = '#39'P35'#39
      
        '                  JOIN   DRETSMOTIU  M ON T.C_MOTIU = M.C_MOTIU ' +
        'AND M.C_DRET = '#39'X1'#39
      '                  WHERE  T.C_PROCES = :C_PROCES'
      '                  ORDER BY T.DATA_INGRES DESC'
      '                  ROWS 1'
      '                  INTO :C_TRACTAMENT, :DATA_ALTA;'
      '                  '
      
        '                  /* Si han passat m'#233's de 30 dies des de l'#39'alta ' +
        'de l'#39#250'ltim tractament rehabilitador, li finalitzem el proc'#233's */'
      
        '                  IF ((DATA_ALTA IS NOT NULL) AND (DATA_ALTA < "' +
        'TODAY" - 30))'
      '                  THEN UPDATE TRACTAMENTS'
      
        '                       SET    FI_PROCES = '#39'S'#39', METGE_PROCES = NU' +
        'LL'
      '                       WHERE  C_TRACTAMENT = :C_TRACTAMENT;'
      ''
      '            END;'
      '      END;'
      ''
      'END')
    Dic1 = Tractaments
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
    Modi = False
    Left = 460
    Top = 544
  end
  object ualta: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'ualta'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE RCP_HIST   CHAR(1);'
      '  DECLARE VARIABLE QUANTS     INTEGER;'
      '  DECLARE VARIABLE JAHIES     INTEGER;'
      '  DECLARE VARIABLE C_INTERCON INTEGER;'
      '  DECLARE VARIABLE SOLICITA   VARCHAR(3000);'
      '  DECLARE VARIABLE C_GRUP     CHAR(2);'
      'BEGIN'
      '      IF (USER<>"REPLICATOR") THEN'
      '      BEGIN'
      '            /* Si anul'#183'len o posposen una alta */'
      
        '            IF ( (OLD.DATA_ALTA IS NOT NULL) AND ((NEW.DATA_ALTA' +
        ' IS NULL) OR'
      
        '                                                 ((NEW.DATA_ALTA' +
        ' > OLD.DATA_ALTA) AND (NEW.DATA_ALTA >= "TODAY"))) )'
      '            THEN BEGIN'
      
        '                  /* Reactivem els registres finalitzats per alt' +
        'a, si n'#39'hi ha */'
      
        '                  EXECUTE PROCEDURE P_REGISTRESINFER_REACTIVA(NE' +
        'W.C_TRACTAMENT, OLD.DATA_ALTA);'
      '            END;'
      ''
      '      END'
      'END')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37194.7325101852
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 539
    Top = 492
  end
  object Embaras: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'id'
        NombreDB = 'id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'c_historia'
        NombreDB = 'c_historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'filiacio'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'data inici embar'#224's'
        NombreDB = 'Inici_embaras'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'data'
        NombreDB = 'data'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'c_usuari'
        NombreDB = 'c_usuari'
        Longitud = 5
        Consulta = 'usuari'
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
          'id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'c_historia')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'filiacio'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'c_historia')
        CopiarOrigen.Strings = (
          'c_historia')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'usuari'
        Master = Metges
        BuscaOrigen.Strings = (
          'c_usuari')
        CopiarOrigen.Strings = (
          'c_usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Embaras'
    NombreTabla = 'Embaras'
    Organiza = tbBase
    CamposVer.Strings = (
      'id'
      'c_historia'
      'data inici embar'#224's'
      'data'
      'c_usuari')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 876
    Top = 179
  end
  object Caduca_OM_Eliminat: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Caduca_OM'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_ESTAT VARCHAR(1);'
      'BEGIN'
      
        '      /* Les OM generades (estat = v) caduquen una setmana despr' +
        #233's de l'#39'alta, per programador */'
      ''
      '      IF (USER <> '#39'REPLICATOR'#39') THEN'
      '      BEGIN'
      '            /* Si fan una alta: */'
      
        '            IF ((OLD.DATA_ALTA IS NULL) AND (NEW.DATA_ALTA IS NO' +
        'T NULL)) THEN'
      '            BEGIN'
      
        '                  /* Posem la nova data de suspensi'#243' a les ordre' +
        's m'#232'diques vigents del tractament */'
      
        '                  /* i despr'#233's caduquem les que toqui (la proced' +
        'ure que caduca tamb'#233' recalcula la durada de les -1 */'
      ''
      '                  /* OM8888 */'
      '                  IF (OLD.C_PRESTACIO = '#39'8888'#39') THEN'
      '                  BEGIN'
      '                        UPDATE ORDRESMEDIQUES'
      
        '                        SET    DATA_SUSPENSIO = NEW.DATA_ALTA   ' +
        '                /* Les caduquem al principi del dia de l'#39'alta */'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND   (C_ESTAT = '#39'L'#39' OR C_ESTAT = '#39'V'#39')'
      '                        AND    C_FREQUENCIA <> '#39'DU'#39';'
      '                  END;'
      ''
      '                  /* Resta d'#39'ordres m'#232'diques */'
      '                  ELSE BEGIN'
      '                        UPDATE ORDRESMEDIQUES'
      
        '                        SET    DATA_SUSPENSIO = NEW.DATA_ALTA ||' +
        ' " 23:55:00"    /* les caduquem al final del dia de l'#39'alta */'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ESTAT = '#39'V'#39';'
      '                  END;'
      '                  '
      '                  /* Caduquem les que toqui */'
      
        '                  EXECUTE PROCEDURE P_ORDRESMEDIQUES_CADUCA(0, N' +
        'EW.C_HISTORIA);'
      ''
      ''
      '                  /* Ordres infermeria */'
      '                  UPDATE ORDRESINFERMERIA'
      
        '                  SET    DATA_SUSPENSIO = NEW.DATA_ALTA || " 23:' +
        '55:00"          /* les caduquem al final del dia de l'#39'alta */'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ESTAT = '#39'V'#39';'
      ''
      '                  /* Caduquem les que toqui */'
      
        '                  EXECUTE PROCEDURE P_ORDRESINFERMERIA_CADUCA(0,' +
        ' NEW.C_HISTORIA);'
      '            END;'
      ''
      '            /* Si anul'#183'len una alta: */'
      
        '            ELSE IF ((OLD.DATA_ALTA IS NOT NULL) AND (NEW.DATA_A' +
        'LTA IS NULL)) THEN'
      '            BEGIN'
      '                  /* OM QUE ENCARA NO HAN CADUCAT */'
      
        '                  /* Traiem la data de suspensi'#243' de les OM vigen' +
        'ts */'
      '            '
      '                  /* Ordres m'#232'diques */'
      '                  UPDATE ORDRESMEDIQUES'
      '                  SET    DATA_SUSPENSIO = NULL'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    (C_ESTAT = '#39'V'#39' or C_ESTAT = '#39'L'#39');'
      ''
      '                  /* Ordres infermeria */'
      '                  UPDATE ORDRESINFERMERIA'
      '                  SET    DATA_SUSPENSIO = NULL'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ESTAT = '#39'V'#39';'
      '                  '
      '                  '
      '                  /* RECUPEREM LES OM CADUCADES PER ALTA */'
      
        '                  /* Traiem data suspensi'#243', posem estat vigent o' +
        ' latent. La data de caducitat '#233's calculada, no cal tocar-la */'
      ''
      '                  /* OM2014 */'
      '                  IF (OLD.C_PRESTACIO = '#39'2014'#39') THEN'
      '                  BEGIN'
      '                        /* DU: les recuperem */'
      '                        UPDATE ORDRESMEDIQUES'
      '                        SET    C_ESTAT = '#39'V'#39','
      '                               DATA_SUSPENSIO = NULL'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ESTAT = '#39'C'#39
      
        '                        AND    DATA_SUSPENSIO = OLD.DATA_ALTA ||' +
        ' " 23:55:00"'
      '                        AND    C_FREQUENCIA = '#39'DU'#39';'
      ''
      
        '                        /* <> DU: les recuperem i els tornem a p' +
        'osar durada = -1  */'
      '                        UPDATE ORDRESMEDIQUES'
      '                        SET    DURADA = -1,'
      '                               C_ESTAT = '#39'V'#39','
      '                               DATA_SUSPENSIO = NULL'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ESTAT = '#39'C'#39
      
        '                        AND    DATA_SUSPENSIO = OLD.DATA_ALTA ||' +
        ' " 23:55:00"'
      '                        AND    C_FREQUENCIA <> '#39'DU'#39';'
      '                  END;'
      ''
      '                  /* OM8888 */'
      '                  ELSE IF (OLD.C_PRESTACIO = '#39'8888'#39') THEN'
      '                  BEGIN'
      
        '                        IF (NEW.C_MOTIU = 53) THEN C_ESTAT = "V"' +
        ';'
      
        '                                              ELSE C_ESTAT = "L"' +
        ';'
      '                        '
      
        '                        /* <> DU: els tornem a posar durada = -1' +
        '. */'
      '                        UPDATE ORDRESMEDIQUES'
      '                        SET    DURADA = -1,'
      '                               C_ESTAT = :C_ESTAT,'
      '                               DATA_SUSPENSIO = NULL'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ESTAT = '#39'C'#39
      '                        AND    DATA_SUSPENSIO = OLD.DATA_ALTA'
      '                        AND    C_FREQUENCIA <> '#39'DU'#39';'
      '                        '
      
        '                        /* No hi ha DU de 8888 (nom'#233's la de l'#39'In' +
        'terfer'#243' de la pacient 8804, q '#233's manual) */'
      '                  END;'
      ''
      '                  /* Resta d'#39'ordres m'#232'diques */'
      '                  ELSE BEGIN'
      '                        UPDATE ORDRESMEDIQUES'
      '                        SET    C_ESTAT = '#39'V'#39','
      '                               DATA_SUSPENSIO = NULL'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ESTAT = '#39'C'#39
      
        '                        AND    DATA_SUSPENSIO = OLD.DATA_ALTA ||' +
        ' " 23:55:00";'
      '                  END;'
      ''
      '                  /* Ordres infermeria */'
      '                  UPDATE ORDRESINFERMERIA'
      '                  SET    C_ESTAT = '#39'V'#39','
      '                         DATA_SUSPENSIO = NULL'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ESTAT = '#39'C'#39
      
        '                  AND    DATA_SUSPENSIO = OLD.DATA_ALTA || " 23:' +
        '55:00";'
      '            END;'
      '            '
      '            /* Si modifiquen una alta: */'
      
        '            ELSE IF ((OLD.DATA_ALTA IS NOT NULL) AND (OLD.DATA_A' +
        'LTA <> NEW.DATA_ALTA)) THEN'
      '            BEGIN'
      
        '                  /* Posem la nova data de suspensi'#243' a les ordre' +
        's m'#232'diques vigents del tractament */'
      '                  /* i despr'#233's caduquem les que toqui */'
      ''
      '                  /* OM8888 latents i vigents */'
      
        '                  /* data de suspensi'#243' = principi del dia de l'#39'a' +
        'lta */'
      '                  IF (OLD.C_PRESTACIO = '#39'8888'#39') THEN'
      '                  BEGIN'
      '                        UPDATE ORDRESMEDIQUES'
      '                        SET    DATA_SUSPENSIO = NEW.DATA_ALTA'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND   (C_ESTAT = '#39'V'#39' OR C_ESTAT = '#39'L'#39');'
      '                  END'
      '                  '
      '                  /* Resta d'#39'OM vigents */'
      '                  ELSE BEGIN'
      '                        UPDATE ORDRESMEDIQUES'
      
        '                        SET    DATA_SUSPENSIO = NEW.DATA_ALTA ||' +
        ' " 23:55:00"'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ESTAT = '#39'V'#39';'
      '                  END;'
      ''
      
        '                  EXECUTE PROCEDURE P_ORDRESMEDIQUES_CADUCA(0, N' +
        'EW.C_HISTORIA);'
      ''
      '                  /* Ordres infermeria vigents */'
      '                  UPDATE ORDRESINFERMERIA'
      
        '                  SET    DATA_SUSPENSIO = NEW.DATA_ALTA || " 23:' +
        '55:00"'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ESTAT = '#39'V'#39';'
      ''
      
        '                  EXECUTE PROCEDURE P_ORDRESINFERMERIA_CADUCA(0,' +
        ' NEW.C_HISTORIA);'
      ''
      ''
      '                  /* Si la posposen: */'
      
        '                  IF ((NEW.DATA_ALTA > OLD.DATA_ALTA) AND (NEW.D' +
        'ATA_ALTA >= "TODAY")) THEN'
      '                  BEGIN'
      
        '                        /* Recuperem les ordres m'#232'diques caducad' +
        'es per alta: */'
      
        '                        /* Posem estat = V o L, i els posem la n' +
        'ova data d'#39'alta com a data de suspensi'#243'.'
      
        '                           La data de caducitat '#233's calculada, no' +
        ' cal tocar-la */'
      ''
      '                        /* OM2014 */'
      
        '                        /* A m'#233's, tornem a posar durada -1 a les' +
        ' OM ambulat'#242'ries que tornen a quedar vigents */'
      '                        IF (OLD.C_PRESTACIO = '#39'2014'#39') THEN'
      '                        BEGIN'
      '                              /* DU */'
      '                              UPDATE ORDRESMEDIQUES'
      '                              SET    C_ESTAT = '#39'V'#39','
      
        '                                     DATA_SUSPENSIO = NEW.DATA_A' +
        'LTA || " 23:55:00"'
      
        '                              WHERE  C_TRACTAMENT = NEW.C_TRACTA' +
        'MENT'
      '                              AND    C_ESTAT = '#39'C'#39
      '                              AND    C_FREQUENCIA = '#39'DU'#39
      
        '                              AND    DATA_SUSPENSIO = OLD.DATA_A' +
        'LTA || " 23:55:00";'
      ''
      
        '                              /* <> DU: A m'#233's, recalculem la dur' +
        'ada de les OM ambulat'#242'ries caducades per alta */'
      '                              UPDATE ORDRESMEDIQUES'
      '                              SET    C_ESTAT = '#39'V'#39','
      
        '                                     DATA_SUSPENSIO = NEW.DATA_A' +
        'LTA || " 23:55:00",'
      '                                     DURADA = -1'
      
        '                              WHERE  C_TRACTAMENT = NEW.C_TRACTA' +
        'MENT'
      '                              AND    C_ESTAT = '#39'C'#39
      '                              AND    C_FREQUENCIA <> '#39'DU'#39
      
        '                              AND    DATA_SUSPENSIO = OLD.DATA_A' +
        'LTA || " 23:55:00";'
      '                        END;'
      ''
      '                        /* OM8888 */'
      
        '                        /* data de suspensi'#243' = principi del dia ' +
        'de l'#39'alta */'
      
        '                        /* A m'#233's, tornem a posar durada -1 a les' +
        ' OM de prestacions 8888 que tornen a quedar latents */'
      '                        IF (OLD.C_PRESTACIO = '#39'8888'#39') THEN'
      '                        BEGIN'
      '                              UPDATE ORDRESMEDIQUES'
      '                              SET    C_ESTAT = '#39'L'#39','
      
        '                                     DATA_SUSPENSIO = NEW.DATA_A' +
        'LTA,'
      '                                     DURADA = -1'
      
        '                              WHERE  C_TRACTAMENT = NEW.C_TRACTA' +
        'MENT'
      '                              AND    C_ESTAT = '#39'C'#39
      
        '                              AND    DATA_SUSPENSIO = OLD.DATA_A' +
        'LTA;'
      '                              '
      
        '                              /* Caduquem si toca, pq aquestes c' +
        'aduquen al principi del dia de l'#39'alta i estem mirant >= "TODAY" ' +
        '*/'
      
        '                              EXECUTE PROCEDURE P_ORDRESMEDIQUES' +
        '_CADUCA(0, NEW.C_HISTORIA);'
      '                        END;'
      ''
      '                        /* Resta d'#39'ordres m'#232'diques */'
      '                        ELSE BEGIN'
      '                              UPDATE ORDRESMEDIQUES'
      '                              SET    C_ESTAT = '#39'V'#39','
      
        '                                     DATA_SUSPENSIO = NEW.DATA_A' +
        'LTA || " 23:55:00"'
      
        '                              WHERE  C_TRACTAMENT = NEW.C_TRACTA' +
        'MENT'
      '                              AND    C_ESTAT = '#39'C'#39
      
        '                              AND    DATA_SUSPENSIO = OLD.DATA_A' +
        'LTA || " 23:55:00";'
      '                        END;'
      ''
      '                        /* Ordres infermeria */'
      '                        UPDATE ORDRESINFERMERIA'
      '                        SET    C_ESTAT = '#39'V'#39','
      
        '                               DATA_SUSPENSIO = NEW.DATA_ALTA ||' +
        ' " 23:55:00"'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ESTAT = '#39'C'#39
      
        '                        AND    DATA_SUSPENSIO = OLD.DATA_ALTA ||' +
        ' " 23:55:00";'
      '                  END;'
      '                  '
      
        '                  /* Altrament, posem la nova data de suspensi'#243' ' +
        'a les que havien caducat per alta (per'#242' no les recuperem). */'
      
        '                  /* Aix'#242' ho fem per si despr'#233's anul'#183'len l'#39'alta,' +
        ' poder-les recuperar. */'
      '                  ELSE BEGIN'
      ''
      '                        /* OM8888 */'
      
        '                        /* data de suspensi'#243' = principi del dia ' +
        'de l'#39'alta */'
      
        '                        /* A m'#233's, recalculem la durada de les OM' +
        ' de prestacions 8888 caducades per alta */'
      '                        IF (OLD.C_PRESTACIO = '#39'8888'#39') THEN'
      '                        BEGIN'
      '                              UPDATE ORDRESMEDIQUES'
      
        '                              SET    DATA_SUSPENSIO = NEW.DATA_A' +
        'LTA,'
      
        '                                     DURADA = NEW.DATA_ALTA - DA' +
        'TA_INICI'
      
        '                              WHERE  C_TRACTAMENT = NEW.C_TRACTA' +
        'MENT'
      '                              AND    C_ESTAT = '#39'C'#39
      
        '                              AND    DATA_SUSPENSIO = OLD.DATA_A' +
        'LTA;'
      '                        END;'
      ''
      '                        /* OM2014 */'
      '                        IF (OLD.C_PRESTACIO = '#39'2014'#39') THEN'
      '                        BEGIN'
      '                              /* DU */'
      '                              UPDATE ORDRESMEDIQUES'
      
        '                              SET    DATA_SUSPENSIO = NEW.DATA_A' +
        'LTA || " 23:55:00"'
      
        '                              WHERE  C_TRACTAMENT = NEW.C_TRACTA' +
        'MENT'
      '                              AND    C_ESTAT = '#39'C'#39
      '                              AND    C_FREQUENCIA = '#39'DU'#39
      
        '                              AND    DATA_SUSPENSIO = OLD.DATA_A' +
        'LTA || " 23:55:00";'
      ''
      
        '                              /* <> DU: A m'#233's, recalculem la dur' +
        'ada de les OM ambulat'#242'ries caducades per alta */'
      '                              UPDATE ORDRESMEDIQUES'
      
        '                              SET    DATA_SUSPENSIO = NEW.DATA_A' +
        'LTA || " 23:55:00",'
      
        '                                     DURADA = NEW.DATA_ALTA - DA' +
        'TA_INICI + 1'
      
        '                              WHERE  C_TRACTAMENT = NEW.C_TRACTA' +
        'MENT'
      '                              AND    C_ESTAT = '#39'C'#39
      '                              AND    C_FREQUENCIA <> '#39'DU'#39
      
        '                              AND    DATA_SUSPENSIO = OLD.DATA_A' +
        'LTA || " 23:55:00";'
      '                        END;'
      ''
      '                        /* Resta d'#39'ordres m'#232'diques */'
      '                        ELSE BEGIN'
      '                              UPDATE ORDRESMEDIQUES'
      
        '                              SET    DATA_SUSPENSIO = NEW.DATA_A' +
        'LTA || " 23:55:00"'
      
        '                              WHERE  C_TRACTAMENT = NEW.C_TRACTA' +
        'MENT'
      '                              AND    C_ESTAT = '#39'C'#39
      
        '                              AND    DATA_SUSPENSIO = OLD.DATA_A' +
        'LTA || " 23:55:00";'
      '                        END;'
      ''
      '                        /* Ordres infermeria */'
      '                        UPDATE ORDRESINFERMERIA'
      
        '                        SET    DATA_SUSPENSIO = NEW.DATA_ALTA ||' +
        ' " 23:55:00"'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ESTAT = '#39'C'#39
      
        '                        AND    DATA_SUSPENSIO = OLD.DATA_ALTA ||' +
        ' " 23:55:00";'
      ''
      '                  END;'
      '            END;'
      ''
      '      END;'
      'END'
      '')
    Dic1 = Tractaments
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 1138
    Top = 428
  end
  object RevisaAltes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RevisaAltes'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      '   DECLARE VARIABLE AVUI          DATE;'
      '   DECLARE VARIABLE ID            INTEGER;'
      '   DECLARE VARIABLE DATA_ALTA     DATE;'
      '   DECLARE VARIABLE DES_DE        DATE;'
      '   DECLARE VARIABLE C_TRACT       INTEGER;'
      '   DECLARE VARIABLE TREG          INTEGER;'
      '   DECLARE VARIABLE TRACT_NPC     INTEGER;'
      '   DECLARE VARIABLE C_HISTORIA    INTEGER;'
      '   DECLARE VARIABLE C_COORDINADOR VARCHAR(5);'
      '   DECLARE VARIABLE JAHIES        INTEGER;'
      '   DECLARE VARIABLE C_GRUP        CHAR(2);'
      '   DECLARE VARIABLE DATA_INGRES   DATE;'
      '   DECLARE VARIABLE DATA_PREALTA  DATE;'
      '   DECLARE VARIABLE C_INTERCON    INTEGER;'
      '   DECLARE VARIABLE SOLICITA      VARCHAR(3000);'
      '   DECLARE VARIABLE compta        integer;'
      '   DECLARE VARIABLE subcompta     integer;'
      'BEGIN'
      
        '      /* Procedure al programador. Passar'#224' cada nit a les 00:45h' +
        ', per exemple */'
      ''
      '      ret = '#39#39';'
      '      compta = 0;'
      ''
      '      /********* UPP'#39's *********/'
      
        '      /* Recorrem les UPP'#39's actives de tractaments que han estat' +
        ' alta la darrera setmana */'
      '      compta=0;'
      '      FOR SELECT U.ID, T.DATA_ALTA'
      '          FROM   UPPCAP U'
      
        '          JOIN   TRACTAMENTS T ON U.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  U.ESTAT = 1'
      '          AND    T.DATA_ALTA < "TODAY"'
      '          AND    (T.DATA_ALTA >= "TODAY"-7)'
      
        '          AND    NOT EXISTS (SELECT B.C_HISTORIA FROM TRACTAMENT' +
        'S B                        /* Abril 2019: descartem els pacients' +
        ' */'
      
        '                             WHERE B.C_HISTORIA = T.C_HISTORIA A' +
        'ND B.C_PRESTACIO = '#39'1004'#39'  /*             que tenen un altre ing' +
        'r'#233's actiu */'
      
        '                             AND (B.DATA_ALTA IS NULL OR B.DATA_' +
        'ALTA >= "TODAY"))'
      '          INTO  :ID, :DATA_ALTA'
      '      DO BEGIN'
      
        '            /*... i les finalitzem amb motiu 1: "Alta" i estat 3' +
        ': "no resolta a l'#39'alta" */'
      '            UPDATE UPPCAP'
      '            SET    ESTAT = 3,'
      '                   MOTIU_FINALITZACIO = 1,'
      '                   DATA_FINALITZA = :DATA_ALTA,'
      '                   DATA_FINALITZA_AUTO = "NOW"'
      '            WHERE  ID = :ID;'
      ''
      '            compta = compta+1;'
      '      END;'
      '      '
      '      ret = ret||compta||'#39' upp, '#39';'
      '      compta=0;'
      ''
      '      /********* REGISTRES INFERMERIA *********/'
      
        '      /* Finalitzem amb motiu alta els registres d'#39'infermeria ac' +
        'tius i els sem'#224'fors ISO i MR corresponents de pacients que hagin' +
        ' estat alta la darrera setmana */'
      '      AVUI = "TODAY";'
      '      DES_DE = AVUI-7;'
      
        '      EXECUTE PROCEDURE P_REGISTRESINFER_FINALITZA(:DES_DE, "YES' +
        'TERDAY");'
      ''
      '      /********* SEM'#192'FOR LET *********/'
      
        '      /* Passem a "no informat" els LET de pacients que s'#243'n alta' +
        ' */'
      
        '      /* Si falla la procedure al programador, s'#39'ha de cridar aq' +
        'uesta (ResetREC) amb el par'#224'metre DATA que calgui per cada dia a' +
        'fectat */'
      
        '      select compta from P_SEMAFORS_RESETLET("YESTERDAY") into :' +
        'subcompta;'
      '      ret = ret|| subcompta ||'#39' let, '#39';'
      '      compta=0;'
      ''
      '      /********* SEM'#192'FOR REC *********/'
      
        '      /* Passem a "no informat" els REC de pacients que s'#243'n alta' +
        ' */'
      
        '      /* Si falla la procedure al programador, s'#39'ha de cridar aq' +
        'uesta (ResetREC) amb el par'#224'metre DATA que calgui per cada dia a' +
        'fectat */'
      
        '      SELECT COMPTA FROM P_SEMAFORS_RESETREC("YESTERDAY") INTO :' +
        'subcompta;'
      '      ret = ret||subcompta||'#39' rec, '#39';'
      '      compta=0;'
      ''
      '      /********* NPC *********/'
      '      /* Revisem les altes per finalitzar activitats gimn'#224's */'
      '      compta=0;'
      '      FOR SELECT DISTINCT A.C_HISTORIA, A.C_TRACTAMENT'
      '      FROM AGENDAPACIENT A'
      
        '      JOIN TRACTAMENTS   T ON A.C_TRACTAMENT=T.C_TRACTAMENT AND ' +
        'T.DATA_ALTA < '#39'TODAY'#39
      
        '      JOIN DRETSPRESTA  DP ON T.C_PRESTACIO=DP.C_PRESTACIO  AND ' +
        'DP.C_DRET='#39'P117'#39
      '      WHERE A.DATAF IS NULL OR A.DATAF >='#39'TODAY'#39
      '      ORDER BY C_HISTORIA'
      '      INTO :ID, :C_TRACT'
      '      DO BEGIN'
      
        '          /* parte 63663: desassociem les activitats del gimn'#224's ' +
        'actives */'
      '          UPDATE AGENDAPACIENT SET C_TRACTAMENT=NULL'
      '          WHERE  C_HISTORIA=:ID'
      '          AND   (DATAF IS NULL OR DATAF>="TODAY")'
      '          AND   (C_TRACTAMENT=:C_TRACT);'
      '          '
      
        '          /* 8-2-2016: cal mirar si hi ha alguna altre prestaci'#243 +
        ' amb dret P117 activa per associar-hi les activitats vivies */'
      '          TRACT_NPC = 0;'
      '          SELECT T.C_TRACTAMENT FROM TRACTAMENTS T'
      
        '          JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO AN' +
        'D DP.C_DRET='#39'P117'#39
      
        '          WHERE T.C_HISTORIA=:ID AND (T.DATA_ALTA IS NULL OR T.D' +
        'ATA_ALTA >= "TODAY")'
      '          ORDER BY T.DATA_INGRES'
      '          ROWS 1'
      '          INTO :TRACT_NPC;'
      ''
      '          IF (TRACT_NPC IS NOT NULL) THEN'
      '          BEGIN'
      '               UPDATE AGENDAPACIENT SET C_TRACTAMENT=:TRACT_NPC'
      '               WHERE  C_HISTORIA=:ID'
      '               AND   (DATAF IS NULL OR DATAF>="TODAY")'
      
        '               AND   (C_TRACTAMENT IS NULL OR C_TRACTAMENT<>:TRA' +
        'CT_NPC);'
      '          END;'
      '          '
      '         compta=compta+1;'
      '      END;'
      ''
      '      ret = ret||compta||'#39' gimnas, '#39';'
      '      compta=0;'
      ''
      '      /********* CONCILIACI'#211' MEDICACI'#211' A L'#39'ALTA *********/'
      
        '      /* La generem per a tots els ingressos amb data_prealta/da' +
        'ta_alta els propers 7 dies */'
      
        '      FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, T.' +
        'DATA_PREALTA, T.DATA_ALTA, T.C_COORDINADOR, M.C_GRUP FROM TRACTA' +
        'MENTS T'
      '      JOIN METGES      M  ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN DRETSMETGES DM ON T.C_COORDINADOR = DM.C_USUARI AND D' +
        'M.C_DRET = '#39'M209'#39
      '      WHERE T.C_PRESTACIO = '#39'1004'#39
      
        '      AND  ((T.DATA_ALTA IS NULL     AND (T.DATA_PREALTA >= "TOD' +
        'AY") AND (T.DATA_PREALTA <= "TODAY" + 7)) OR'
      
        '            (T.DATA_ALTA IS NOT NULL AND (T.DATA_ALTA    >= "TOD' +
        'AY") AND (T.DATA_ALTA    <= "TODAY" + 7)))'
      '      ORDER BY T.C_HISTORIA'
      
        '      INTO :C_HISTORIA, :C_TRACT, :DATA_INGRES, :DATA_PREALTA, :' +
        'DATA_ALTA, :C_COORDINADOR, :C_GRUP'
      '      DO BEGIN'
      '          /* Mirar primer que no t'#233' ja la interconsulta */'
      ''
      '          SELECT COUNT(*) FROM INTERCON'
      
        '          WHERE  C_ESPECIAL='#39'57'#39' AND C_TIPUS='#39'CONCILMED'#39' AND C_H' +
        'ISTORIA=:C_HISTORIA AND C_TRACTAMENT=:C_TRACT AND NOT (ESTAT BET' +
        'WEEN 80 AND 89)'
      
        '          AND    TENOTES = '#39'A'#39'  /* Marca exclusiva de les CONCIL' +
        'MED a l'#39'alta per saber que ja la t'#233' i no tornar-li a crear */'
      '          INTO :JAHIES;'
      '          IF (JAHIES IS NULL) THEN JAHIES=0;'
      '          IF (JAHIES = 0) THEN'
      '          BEGIN'
      '              C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      
        '              SOLICITA = '#39'Sol'#183'licito revisi'#243' del tractament farm' +
        'acol'#242'gic a l'#8217'alta, '#39' ||'
      
        '                         '#39'tenint en compte la medicaci'#243' vigent a' +
        ' l'#8217'HCE i la prescrita a l'#8217'alta.'#39' || F_NLine();'
      ''
      '              INSERT INTO INTERCON'
      '              (     C_Intercon,'
      '                    C_Historia,'
      '                    C_Tractament,'
      '                    C_Especial,'
      '                    C_Tipus,'
      '                    Urgent,'
      '                    Data1,'
      '                    C_Metge1,'
      '                    Solicita,'
      '                    Estat,'
      '                    TeNotes'
      '              )'
      '              VALUES'
      '              (    :C_INTERCON,'
      '                   :C_HISTORIA,'
      '                   :C_TRACT,'
      '                    "57",    /* especialitat Farm'#224'cia */'
      '                    "CONCILMED",'
      '                    "N",'
      '                    "TODAY",'
      '                   :C_COORDINADOR,'
      '                    F_StrBlob(:SOLICITA),'
      '                    16,'
      '                    '#39'A'#39
      '              );'
      ''
      
        '              SELECT C_GRUP FROM METGES WHERE CODI = :C_COORDINA' +
        'DOR INTO :C_GRUP;'
      ''
      '              INSERT INTO HISTORIA'
      '              ('
      '                    C_Anotacio,'
      '                    C_Tractament,'
      '                    C_Historia,'
      '                    C_Prestacio,'
      '                    Data_Ingres,'
      '                    C_Coordinador,'
      '                    Data,'
      '                    C_Usuari,'
      '                    C_Grup,'
      '                    Anotacio,'
      '                    C_Intercon,'
      '                    Estat_Intercon'
      '              )'
      '              VALUES'
      '              ('
      '                    GEN_ID(CONTAHISTORIA,1),'
      '                    :C_TRACT,'
      '                    :C_HISTORIA,'
      '                    '#39'1004'#39','
      '                    :DATA_INGRES,'
      '                    :C_COORDINADOR,'
      '                    "NOW",'
      '                    :C_COORDINADOR,'
      '                    :C_GRUP,'
      '                    :SOLICITA,'
      '                    :C_INTERCON,'
      '                    16'
      '              );'
      '              compta=compta+1;'
      '          END;'
      '      END;'
      '      ret = ret||compta||'#39' conciliacio, '#39';'
      '      compta=0;'
      ''
      '      suspend;'
      ''
      'END'
      ''
      ''
      ''
      '/*'
      '      /********* A'#207'LLAMENTS *********'
      
        '      /*  TIPUSCODI                          MOTIU     T_REG    ' +
        '        PARTE 57273'
      '      SONDASP                                1         6'
      
        '      CANULA,CATETER,PEG,POLSERA,A'#207'LLAMENTS  2         1,2,4,9,1' +
        '1'
      '      DRENATGE, SONDAVP                      3         7,10'
      '      LLIT, SONDAN                           4         5,8'
      
        '      VENTILACI'#243' MEC'#224'NICA                    7         3        ' +
        '   *'
      
        '      /* Recorrem els tractaments amb registre actiu que han est' +
        'at alta... *'
      '      FOR SELECT A.ID, T.DATA_ALTA, A.T_REG'
      '          FROM   REGISTRESINFER A'
      
        '          JOIN   TRACTAMENTS T ON A.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  A.DATAFINAL_REAL IS NULL'
      '          AND    (T.DATA_ALTA < "TODAY")'
      
        '          AND    (T.DATA_ALTA >= "TODAY"-7)  /* Juny 2021: Mirem' +
        ' altes de fins a 7 dies enrere; no es donaran casos tan enll'#224' pe' +
        'r'#242' pot fallar la procedure *'
      
        '          AND    NOT EXISTS (SELECT B.C_HISTORIA FROM TRACTAMENT' +
        'S B                        /* Abril 2019: descartem els pacients' +
        ' *'
      
        '                             WHERE B.C_HISTORIA = T.C_HISTORIA A' +
        'ND B.C_PRESTACIO = '#39'1004'#39'  /*             que tenen un ingr'#233's ac' +
        'tiu *'
      
        '                             AND (B.DATA_ALTA IS NULL OR B.DATA_' +
        'ALTA >= "TODAY"))'
      '          INTO  :ID, :DATA_ALTA, :TREG'
      '      DO BEGIN'
      
        '            /*... i els finalitzem l'#39'a'#239'llament actiu, amb motiu ' +
        '2: "alta - trasllat" *'
      
        '            IF ((TREG=1) OR (TREG=2) OR (TREG=4) OR (TREG=9) OR ' +
        '(TREG=11) OR (TREG=19))'
      '            THEN UPDATE REGISTRESINFER'
      
        '                 SET DATAFINAL_REAL=:DATA_ALTA, DATAFINAL_AUTO="' +
        'NOW",C_MOTIU=2'
      '                 WHERE  ID=:ID;'
      ''
      '            ELSE IF (TREG=3)'
      '            THEN UPDATE REGISTRESINFER'
      
        '                 SET DATAFINAL_REAL=:DATA_ALTA, DATAFINAL_AUTO="' +
        'NOW",C_MOTIU=7'
      '                 WHERE  ID=:ID;'
      ''
      '            ELSE IF ((TREG=5) OR (TREG=8))'
      '            THEN UPDATE REGISTRESINFER'
      
        '                 SET DATAFINAL_REAL=:DATA_ALTA, DATAFINAL_AUTO="' +
        'NOW",C_MOTIU=4'
      '                 WHERE  ID=:ID;'
      ''
      '            ELSE IF ((TREG=6) OR (TREG=15) OR (TREG=16))'
      '            THEN UPDATE REGISTRESINFER'
      
        '                 SET DATAFINAL_REAL=:DATA_ALTA, DATAFINAL_AUTO="' +
        'NOW",C_MOTIU=1'
      '                 WHERE  ID=:ID;'
      ''
      '            ELSE IF ((TREG=7) OR (TREG=10))'
      '            THEN UPDATE REGISTRESINFER'
      
        '                 SET DATAFINAL_REAL=:DATA_ALTA, DATAFINAL_AUTO="' +
        'NOW",C_MOTIU=3'
      '                 WHERE  ID=:ID;'
      '      END;'
      '      '
      '*/')
    Dic1 = Tractaments
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
    Modi = False
    Left = 534
    Top = 544
  end
  object Codifica_2onSemestre2008: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Codifica'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (HISTORIA     INTEGER,'
      '         DATA_INGRES  DATE,'
      '         DATA_ALTA    DATE,'
      '         TRACTAMENT   INTEGER,'
      '         C_DIAG_P     VARCHAR(15),'
      '         N_DIAG_P     VARCHAR(90),'
      '         UM           SMALLINT,'
      '         CE           VARCHAR(30),'
      '         C_TRACTAMENT INTEGER,'
      '         DIAG_INGRES  VARCHAR(40),'
      '         SINDROME_I   VARCHAR(40),'
      '         DIAG_ALTA    VARCHAR(40),'
      '         SINDROME_A   VARCHAR(40),'
      '         NDIAGS1      VARCHAR(40),'
      '         NDIAGS2      VARCHAR(40),'
      '         NDIAGS3      VARCHAR(40),'
      '         NDIAGS4      VARCHAR(40)'
      '         )'
      'AS'
      'BEGIN'
      
        '    FOR SELECT C_HISTORIA, F.C_UNITATMEDICA, C_TRACTAMENT, DATA_' +
        'INGRES, DATA_ALTA, C_DIAG_P, N_DIAG_P'
      '    FROM TRACTEASE T'
      '    JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '    WHERE DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '    AND ((C_DIAG_P IS NULL) OR (C_DIAG_P = '#39'001'#39'))'
      '    ORDER BY DATA_ALTA, DATA_INGRES'
      
        '    INTO :HISTORIA, :UM, :TRACTAMENT, :DATA_INGRES, :DATA_ALTA, ' +
        ':C_DIAG_P, :N_DIAG_P'
      '    DO BEGIN'
      '        /* INICIALITZEM VARIABLES */'
      '        C_TRACTAMENT=NULL;CE=NULL;'
      
        '        DIAG_INGRES=NULL;SINDROME_I=NULL;DIAG_ALTA=NULL;SINDROME' +
        '_A=NULL;'
      '        NDIAGS1=NULL;NDIAGS2=NULL;NDIAGS3=NULL;NDIAGS4=NULL;'
      '        '
      '        /* BUSQUEM LA CLASSIFICACI'#211' ETIOL'#210'GICA */'
      
        '        SELECT N_UNITATM FROM UNITATM WHERE C_UNITATM = :UM AND ' +
        'C_UNITATM <> 0'
      '        INTO :CE;'
      '        '
      '        /* BUSQUEM L'#39'INGR'#201'S ACTIU O L'#39#218'LTIM TRACTAMENT */'
      
        '        SELECT C_TRACTAMENT, N_DIAGNOSTICINGRES,N_DIAGNOSTICNEUR' +
        'OLOGICINGRES,N_DIAGNOSTICALTA,N_DIAGNOSTICNEUROLOGICALTA'
      '        FROM TRACTAMENTS'
      '        WHERE C_HISTORIA = :HISTORIA'
      '        AND C_PRESTACIO = '#39'1004'#39
      '        AND (DATA_ALTA IS NULL OR (DATA_ALTA >= "TODAY"))'
      '        ORDER BY DATA_INGRES DESC'
      '        ROWS 1'
      
        '        INTO :C_TRACTAMENT, :DIAG_INGRES, :SINDROME_I, :DIAG_ALT' +
        'A, :SINDROME_A;'
      '        '
      '        IF (C_TRACTAMENT IS NULL) THEN'
      '        BEGIN'
      
        '            SELECT C_TRACTAMENT, N_DIAGNOSTICINGRES,N_DIAGNOSTIC' +
        'NEUROLOGICINGRES,N_DIAGNOSTICALTA,N_DIAGNOSTICNEUROLOGICALTA'
      '            FROM TRACTAMENTS'
      '            WHERE C_HISTORIA = :HISTORIA'
      '            AND C_PRESTACIO = '#39'1004'#39
      '            ORDER BY DATA_INGRES DESC'
      '            ROWS 1'
      
        '            INTO :C_TRACTAMENT, :DIAG_INGRES, :SINDROME_I, :DIAG' +
        '_ALTA, :SINDROME_A;'
      '        END;'
      ''
      
        '        /* OMPLO EN ORDRE ELS DIAGN'#210'STICS SENSE QUE QUEDI CAP PR' +
        'EVI EN BLANC */'
      '        IF (DIAG_INGRES IS NOT NULL) THEN'
      '        BEGIN'
      '            NDIAGS1 = DIAG_INGRES;'
      '            IF (SINDROME_I IS NOT NULL) THEN'
      '            BEGIN'
      '                NDIAGS2 = SINDROME_I;'
      '                IF (DIAG_ALTA IS NOT NULL) THEN'
      '                BEGIN'
      '                    NDIAGS3 = DIAG_ALTA;'
      
        '                    IF (SINDROME_A IS NOT NULL) THEN NDIAGS4 = S' +
        'INDROME_A;'
      '                END;'
      
        '                ELSE IF (SINDROME_A IS NOT NULL) THEN NDIAGS3 = ' +
        'SINDROME_A;'
      '            END;'
      '            ELSE BEGIN'
      '                IF (DIAG_ALTA IS NOT NULL) THEN'
      '                BEGIN'
      '                    NDIAGS2 = DIAG_ALTA;'
      
        '                    IF (SINDROME_A IS NOT NULL) THEN NDIAGS3 = S' +
        'INDROME_A;'
      '                END;'
      
        '                ELSE IF (SINDROME_A IS NOT NULL) THEN NDIAGS2 = ' +
        'SINDROME_A;'
      '            END;'
      '        END;'
      '        ELSE BEGIN'
      '            IF (SINDROME_I IS NOT NULL) THEN'
      '            BEGIN'
      '                NDIAGS1 = SINDROME_I;'
      '                IF (DIAG_ALTA IS NOT NULL) THEN'
      '                BEGIN'
      '                    NDIAGS2 = DIAG_ALTA;'
      
        '                    IF (SINDROME_A IS NOT NULL) THEN NDIAGS3 = S' +
        'INDROME_A;'
      '                END;'
      
        '                ELSE IF (SINDROME_A IS NOT NULL) THEN NDIAGS2 = ' +
        'SINDROME_A;'
      '            END;'
      '            ELSE BEGIN'
      '                IF (DIAG_ALTA IS NOT NULL) THEN'
      '                BEGIN'
      '                    NDIAGS1 = DIAG_ALTA;'
      
        '                    IF (SINDROME_A IS NOT NULL) THEN NDIAGS2 = S' +
        'INDROME_A;'
      '                END;'
      
        '                ELSE IF (SINDROME_A IS NOT NULL) THEN NDIAGS1 = ' +
        'SINDROME_A;'
      '            END;'
      '        END;'
      ''
      '        IF (NDIAGS1 IS NOT NULL) THEN'
      '        BEGIN'
      
        '            UPDATE TRACTEASE SET C_DIAG_P = NULL, G_DIAG_P=NULL,' +
        ' N_DIAG_P = UPPER(:CE), N_DIAG_S1 = UPPER(:NDIAGS1),'
      
        '                                 N_DIAG_S2 = UPPER(:NDIAGS2), N_' +
        'DIAG_S3 = UPPER(:NDIAGS3), N_DIAG_S4 = UPPER(:NDIAGS4)'
      '            WHERE C_TRACTAMENT = :TRACTAMENT;'
      ''
      '            SUSPEND;'
      '        END;'
      ''
      '    END;'
      'END')
    Dic1 = TractEASE
    Dic1Name = 'tractease'
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
    Left = 128
    Top = 608
  end
  object Bloquejos: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 8
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'usuari'
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
          'N'#250'm. Hist'#242'ria'
          'Usuari')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'hist'
        NombreDB = 'hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usuari'
        NombreDB = 'usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'hist'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'N'#250'm. Hist'#242'ria')
        CopiarOrigen.Strings = (
          'N'#250'm. Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'usuari'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari')
        CopiarOrigen.Strings = (
          'Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Bloquejos'
    NombreTabla = 'Bloquejos'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist'#242'ria'
      'Usuari')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 29
    Top = 64
  end
  object LogFili: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'USUARI'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'Metges'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'DATA'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'QUE'
        NombreDB = 'QUE'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'HISTORIA'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Filiacio'
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
          'DATA'
          'USUARI')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metges'
        Master = Metges
        BuscaOrigen.Strings = (
          'USUARI')
        CopiarOrigen.Strings = (
          'USUARI')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Filiacio'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'HISTORIA')
        CopiarOrigen.Strings = (
          'HISTORIA')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
        WhereFiltro = 'ESVIU = '#39'S'#39
      end>
    Nombre = 'LogFiliacio'
    NombreTabla = 'LogFiliacio'
    Organiza = tbBase
    CamposVer.Strings = (
      'USUARI'
      'DATA'
      'QUE')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 464
    Top = 12
  end
  object Entrada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Entrada'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      Codi   CHAR(5),'
      '      Extra  CHAR(10),'
      '      Clau   VARCHAR(40),'
      '      Acces  INTEGER'
      ')'
      'RETURNS'
      '('
      
        '      E_Gracia      Smallint,   /* Entrades de gr'#224'cia restants  ' +
        '  */'
      '      Estat         Integer,    /* -1: USER EXTRA - DEMANEM CODI'
      '                                    0: OK'
      '                                    1: NO AUTORITZAT'
      '                                    2: CLAU INCORRECTA'
      '                                    3: INHABILITAT'
      
        '                                    4: BLOQUEJAT                ' +
        '  */'
      
        '      Minuts        Smallint    /* minuts des de la inhabilitaci' +
        #243
      
        '                                   < 0   : poden habilitar-se en' +
        'trant correctament per'#242' han tornat a entrar malament'
      
        '                                   > 30  : poden habilitar-se en' +
        'trant correctament'
      '                                   1..29 : han d'#39'esperar'
      '                                */'
      ')'
      'AS'
      '      DECLARE VARIABLE TROBATS       INTEGER;'
      '      DECLARE VARIABLE ESEXTRA       CHAR(1);'
      '      DECLARE VARIABLE CLAUPAS       VARCHAR(40);'
      '      DECLARE VARIABLE HINHABILITAT  DATE;'
      '      DECLARE VARIABLE E_INCORRECTES SMALLINT;'
      'BEGIN'
      ''
      '      /* Mirem si '#233's un user extra. */'
      
        '      SELECT ESUSEREXTRA FROM METGES WHERE CODI = :Codi INTO :ES' +
        'EXTRA;'
      ''
      '      IF (ESEXTRA = "S") THEN'
      '      BEGIN      '
      
        '            /* Si no hem passat el codi d'#39'user extra, sortim per' +
        ' demanar-lo */'
      '            IF (Extra IS NULL) THEN ESTAT = -1;'
      '            '
      
        '            /* Busquem usuari extra amb el codi extra introdu'#239't ' +
        '*/'
      '            ELSE BEGIN'
      ''
      '                  TROBATS = NULL;'
      ''
      
        '                  SELECT       1,  CLAUPAS,  HINHABILITAT,  E_IN' +
        'CORRECTES,  E_GRACIA'
      '                  FROM   METGEEXTRA'
      '                  WHERE  CODI = :Codi'
      '                  AND    C_EXTRA = :Extra'
      '                  AND   (BAIXA   IS NULL OR BAIXA <> "B")'
      
        '                  INTO  :TROBATS, :CLAUPAS, :HINHABILITAT, :E_IN' +
        'CORRECTES, :E_GRACIA;'
      '                  '
      '            END'
      '      END'
      '      '
      '      ELSE BEGIN'
      ''
      '            TROBATS = NULL;'
      '            '
      
        '            SELECT      1,  CLAUPAS,  HINHABILITAT,  E_INCORRECT' +
        'ES,  E_GRACIA'
      '            FROM   METGES'
      '            WHERE  CODI = :Codi'
      '            AND   (BAIXA   IS NULL OR BAIXA <> "B")'
      
        '            INTO :TROBATS, :CLAUPAS, :HINHABILITAT, :E_INCORRECT' +
        'ES, :E_GRACIA;'
      '      END'
      ''
      ''
      '      /* Si '#233's extra i hem de demanar el codi, ja hem acabat */'
      '      IF (ESTAT = -1) THEN E_GRACIA = 0;'
      '      '
      '      /* Si no trobem l'#39'usuari (o est'#224' de baixa) */'
      
        '      ELSE IF (TROBATS IS NULL) THEN  ESTAT = 1;                ' +
        '                    /* 1  usuari no autoritzat   */'
      ''
      '      /* A partir de 6 entrades incorrectes */'
      
        '      ELSE IF (E_INCORRECTES >= 6) THEN  ESTAT = 4;             ' +
        '                    /* 4  usuari bloquejat       */'
      ''
      '      /* De 3 a 5 entrades incorrectes */'
      '      ELSE IF (E_INCORRECTES >= 3)  THEN'
      '      BEGIN'
      '            /* Si fa m'#233's de 30 minuts de la inhabilitaci'#243' */'
      '            IF (HINHABILITAT < "NOW" - 1/48) THEN'
      '            BEGIN'
      '                  /* Si encara no han entrat la clau,'
      
        '                     l'#39'usuari est'#224' inhabilitat per'#242' poden habili' +
        'tar-lo */'
      
        '                  IF (Clau IS NULL) THEN ESTAT = 0;             ' +
        '                     /* 0  ok                     */'
      '                  '
      '                  /* Si entren correctament */'
      '                  ELSE IF (CLAUPAS = Clau) THEN'
      '                  BEGIN'
      '                        /* resetegem entrades incorrectes */'
      '                        E_INCORRECTES = 0;'
      '                        '
      '                        /* habilitem usuari  */'
      
        '                        IF (ESEXTRA = "S") THEN UPDATE METGEEXTR' +
        'A'
      
        '                                                SET    HINHABILI' +
        'TAT  = NULL,'
      
        '                                                       AINHABILI' +
        'TAT  = NULL,'
      
        '                                                       E_INCORRE' +
        'CTES = :E_INCORRECTES,'
      
        '                                                       E_GRACIA ' +
        '= -1                  /* per for'#231'ar que canvi'#239'n la clau de pas *' +
        '/'
      
        '                                                WHERE  CODI = :C' +
        'odi'
      
        '                                                AND    C_EXTRA =' +
        ' :Extra;'
      '                        '
      '                        ELSE                    UPDATE METGES'
      
        '                                                SET    HINHABILI' +
        'TAT  = NULL,'
      
        '                                                       AINHABILI' +
        'TAT  = NULL,'
      
        '                                                       E_INCORRE' +
        'CTES = :E_INCORRECTES,'
      
        '                                                       E_GRACIA ' +
        '= -1                  /* per for'#231'ar que canvi'#239'n la clau de pas *' +
        '/'
      
        '                                                WHERE  CODI = :C' +
        'odi;'
      '                        '
      
        '                        /* Actualitzem les entrades de gr'#224'cia (p' +
        'ar'#224'metre de sortida) */'
      '                        E_GRACIA = -1;'
      ''
      '                        /* ho registrem al log */'
      
        '                        EXECUTE PROCEDURE P_LOGINHABILITATS_REGI' +
        'STRA(:Codi, :Extra, "H");'
      '                        '
      '                        /* tot correcte */'
      
        '                        ESTAT = 0;                              ' +
        '                    /* 0  ok                     */'
      '                  END;'
      '                  '
      '                  /* Si es tornen a equivocar */'
      '                  ELSE BEGIN'
      ''
      
        '                        /* incrementem les entrades incorrectes ' +
        '*/'
      '                        E_INCORRECTES = E_INCORRECTES + 1;'
      '                        '
      
        '                        IF (ESEXTRA = "S") THEN UPDATE METGEEXTR' +
        'A'
      
        '                                                SET    E_INCORRE' +
        'CTES = :E_INCORRECTES'
      
        '                                                WHERE  CODI = :C' +
        'odi'
      
        '                                                AND    C_EXTRA =' +
        ' :Extra;'
      ''
      '                        ELSE                    UPDATE METGES'
      
        '                                                SET    E_INCORRE' +
        'CTES = :E_INCORRECTES'
      
        '                                                WHERE  CODI = :C' +
        'odi;'
      ''
      
        '                        /* si '#233's la 6ena incorrecta, bloquegem l' +
        #39'usuari: */'
      '                        IF (E_INCORRECTES = 6) THEN'
      '                        BEGIN'
      '                            /* ho registrem al LOG: */'
      
        '                            EXECUTE PROCEDURE P_LOGINHABILITATS_' +
        'REGISTRA(:Codi, :Extra, "B");'
      ''
      
        '                            ESTAT = 4;                          ' +
        '                    /* 4  usuari bloquejat       */'
      '                        END;'
      '                        '
      
        '                        /* altrament l'#39'usuari segueix inhabilita' +
        't */'
      
        '                        ELSE BEGIN                              ' +
        '                    /* 3  usuari inhabilitat     */'
      '                              ESTAT = 3;'
      
        '                              MINUTS = 30 - F_Truncar(("NOW" - H' +
        'INHABILITAT) * 24 * 60);         /* ser'#224' negatiu */'
      '                        END;'
      '                  END;'
      '            END;'
      '            '
      
        '            /* Si no ha passat la mitja hora, l'#39'usuari segueix i' +
        'nhabilitat */'
      
        '            ELSE BEGIN                                          ' +
        '                    /* 3  usuari inhabilitat     */'
      '                  ESTAT = 3;'
      
        '                  MINUTS = 30 - F_Truncar(("NOW" - HINHABILITAT)' +
        ' * 24 * 60);              /* estar'#224' entre 0 i 30 */'
      '            END;'
      '      END;'
      ''
      '      /* Si la clau de pas no coincideix */'
      '      ELSE IF (CLAUPAS <> Clau) THEN'
      '      BEGIN'
      '            /* Incrementem les entrades incorrectes */'
      '            E_INCORRECTES = E_INCORRECTES + 1;'
      '            '
      '            /* si '#233's la 3era incorrecta, inhabilitem l'#39'usuari */'
      '            IF (E_INCORRECTES = 3) THEN'
      '            BEGIN'
      '                  /* inhabilitem usuari: */'
      '                  IF (ESEXTRA = "S") THEN UPDATE METGEEXTRA'
      
        '                                          SET    HINHABILITAT  =' +
        ' "NOW",'
      
        '                                                 AINHABILITAT  =' +
        ' :Acces,'
      
        '                                                 E_INCORRECTES =' +
        ' :E_INCORRECTES'
      '                                          WHERE  CODI = :Codi'
      
        '                                          AND    C_EXTRA = :Extr' +
        'a;'
      '                                          '
      '                  ELSE                    UPDATE METGES'
      
        '                                          SET    HINHABILITAT  =' +
        ' "NOW",'
      
        '                                                 AINHABILITAT  =' +
        ' :Acces,'
      
        '                                                 E_INCORRECTES =' +
        ' :E_INCORRECTES'
      '                                          WHERE  CODI = :Codi;'
      ''
      '                  /* ho registrem al LOG: */'
      
        '                  EXECUTE PROCEDURE P_LOGINHABILITATS_REGISTRA(:' +
        'Codi, :Extra, "I");'
      ''
      
        '                  ESTAT = 3;                                    ' +
        '                    /* 3  usuari inhabilitat     */'
      
        '                  MINUTS = 30;                                  ' +
        '                          /* 30 minuts, just ara */'
      '            END;'
      '            '
      '            /* altrament, encara tenen oportunitats */'
      '            ELSE BEGIN'
      '            '
      '                  /* actualitzem les entrades incorrectes */'
      '                  IF (ESEXTRA = "S") THEN UPDATE METGEEXTRA'
      
        '                                          SET    E_INCORRECTES =' +
        ' :E_INCORRECTES'
      '                                          WHERE  CODI = :Codi'
      
        '                                          AND    C_EXTRA = :Extr' +
        'a;'
      ''
      '                  ELSE                    UPDATE METGES'
      
        '                                          SET    E_INCORRECTES =' +
        ' :E_INCORRECTES'
      '                                          WHERE  CODI = :Codi;'
      ''
      
        '                  ESTAT = 2;                                    ' +
        '                     /* 2  clau de pas incorrecta */'
      '            END;'
      '      END;'
      ''
      '      /* Tot correcte */'
      '      ELSE BEGIN'
      '      '
      '            /* resetegem entrades incorrectes */'
      '            E_INCORRECTES = 0;'
      '            '
      
        '            IF (ESEXTRA = "S") THEN UPDATE METGEEXTRA SET E_INCO' +
        'RRECTES = :E_INCORRECTES WHERE CODI = :Codi AND C_EXTRA = :Extra' +
        ';'
      
        '                               ELSE UPDATE METGES     SET E_INCO' +
        'RRECTES = :E_INCORRECTES WHERE  CODI = :Codi;'
      '                               '
      
        '            ESTAT = 0;                                          ' +
        '                     /* 0  ok                     */'
      '      END;'
      '      '
      ''
      '      SUSPEND;'
      ''
      'END'
      ''
      ''
      ''
      ' '
      ' '
      ' ')
    Select.Strings = (
      'SELECT * FROM P_METGES_LOGIN("UBN","BO","LIS",NULL)')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    ModiFecha = 37076.7607777431
    Left = 197
    Top = 243
  end
  object MetgeExtra: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig Usuari'
        NombreDB = 'Codi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'PK, '#233's el primer codi per construir la clau de pas'
      end
      item
        Aplica = kcCodigo
        Nombre = 'C'#243'dig Extra'
        NombreDB = 'C_Extra'
        Longitud = 10
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'codi d'#39'usuari extra'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge'
        NombreDB = 'Metge'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Descripci'#243' del metge'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognoms'
        NombreDB = 'Cognom'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Altra descripci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'Nom'
        Longitud = 3
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #250'ltim codi per construir la clau de pas, '#233's personlitzable per u' +
          'suari.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DigCon'
        NombreDB = 'DigCon'
        Longitud = 2
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'segon codi per construir la clau de pas.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'Grup'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = False
        zDefault = '**'
        Comentario = 'Grup al que pertany; FK a Grups'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Especialitat'
        NombreDB = 'Cespe'
        Longitud = 2
        Consulta = 'Especial'
        zType = tcIB_Char
        zNotNull = False
        zDefault = '**'
        Comentario = 'Especialitat; FK a Especialitats'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        zDefault = 'N'
        Comentario = 'Metge Actiu: N o buit , de baixa: B'
      end
      item
        Aplica = kcFecha
        Nombre = 'Ultim Canvi Clau'
        NombreDB = 'UltimCanviClau'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora Inhabilitat'
        NombreDB = 'HInhabilitat'
        Longitud = 10
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Data en qu'#232' s'#39'ha inhabilitat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Acces Inhabilitat'
        NombreDB = 'AInhabilitat'
        Longitud = 8
        Consulta = 'Acces'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Acc'#233's des d'#39'on s'#39'ha inhabilitat'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau de pas'
        NombreDB = 'ClauPas'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'clau de pas llarga'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau de pas anterior'
        NombreDB = 'ClauPas_1'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'guardem les 2 '#250'ltimes claus...'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau de pas anterior 2'
        NombreDB = 'ClauPas_2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = '...perqu'#232' no les puguin repetir'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Entrades incorrectes'
        NombreDB = 'E_Incorrectes'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'n'#250'mero d'#39'entrades incorrectes'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Entrades de gr'#224'cia'
        NombreDB = 'E_Gracia'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 
          'si <> 0 => canvi de password [> 0: caducitat, -1: usuari inhabil' +
          'itat, -2: reset manual]'
      end>
    Indices = <
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'dig Usuari'
          'C'#243'dig Extra')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grups'
        NombreDB = 'Grups'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Grup')
        Tipo = tiForaneo
        ForaneoDic = Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Especial'
        NombreDB = 'Especial'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Especialitat')
        Tipo = tiForaneo
        ForaneoDic = Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Metge'
        NombreDB = 'Metge'
        EsVirtual = True
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'dig Usuari')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Grup'
        Master = Grups
        BuscaOrigen.Strings = (
          'Grup')
        CopiarOrigen.Strings = (
          'Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end
      item
        Nombre = 'Especial'
        Master = Especial
        BuscaOrigen.Strings = (
          'Especialitat')
        CopiarOrigen.Strings = (
          'Especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end
      item
        Nombre = 'Acces'
        Master = wDataConfig.Accesos
        BuscaOrigen.Strings = (
          'Acces Inhabilitat')
        CopiarOrigen.Strings = (
          'Acces Inhabilitat')
        CopiarMaster.Strings = (
          'Codi Acces')
        BuscaMaster.Strings = (
          'Codi Acces')
      end>
    Nombre = 'MetgeExtra'
    NombreTabla = 'MetgeExtra'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'dig Extra'
      'Metge'
      'Cognoms'
      'Nom'
      'DigCon'
      'Grup'
      'Especialitat'
      'Baixa'
      'C'#243'dig Usuari')
    IndiceVer = 'Usuari'
    Navegar = False
    Nivel = 7
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945766551
    Left = 464
    Top = 243
  end
  object Metges: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig Usuari'
        NombreDB = 'Codi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'PK, '#233's el primer codi per construir la clau de pas'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge'
        NombreDB = 'Metge'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Descripci'#243' del metge'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognoms'
        NombreDB = 'Cognom'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Altra descripci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Colegiat'
        NombreDB = 'NC'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'N'#250'mero de Col'#183'legiat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'Nom'
        Longitud = 3
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #250'ltim codi per construir la clau de pas, '#233's personlitzable per u' +
          'suari'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'Tracte'
        Longitud = 4
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Dr, Drta, Dts, etc...'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DigCon'
        NombreDB = 'DigCon'
        Longitud = 2
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'segon codi per construir la clau de pas'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '**'
        Comentario = 'Grup al que pertany; FK a Grups'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Especialitat'
        NombreDB = 'C_Especial'
        Longitud = 2
        Consulta = 'Especial'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '**'
        Comentario = 'Especialitat; FK a Especialitats'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Horari'
        NombreDB = 'Horari'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Informatiu'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia1'
        NombreDB = 'Dia1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Informatiu'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia2'
        NombreDB = 'Dia2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Informatiu'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Planta'
        NombreDB = 'Planta'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Informatiu "1" o esta buit'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Metge Actiu: N o buit , de baixa: B'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltima baixa'
        NombreDB = 'DATA_BAIXA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Ultim Canvi Clau'
        NombreDB = 'UltimCanviClau'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora Inhabilitat'
        NombreDB = 'HInhabilitat'
        Longitud = 10
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Data en qu'#232' s'#39'ha inhabilitat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Acces Inhabilitat'
        NombreDB = 'AInhabilitat'
        Longitud = 8
        Consulta = 'Acces'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Acc'#233's des d'#39'on s'#39'ha inhabilitat'
      end
      item
        Aplica = kcSiNo
        Nombre = 'EsUserExtra'
        NombreDB = 'EsUserExtra'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nomsencer'
        NombreDB = 'Nomsencer'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Supervisor'
        NombreDB = 'C_Supervisor'
        Longitud = 5
        Consulta = 'Supervisor'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge Responsable (pels metges residents)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'DNI'
        NombreDB = 'DNI'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus document'
        NombreDB = 'T_DOC'
        Longitud = 2
        Consulta = 't_doc'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Primer Cognom'
        NombreDB = 'Cognom1'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Perfil professional'
        NombreDB = 'Perfil'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Extensi'#243' de la clau'
        NombreDB = 'Extensio'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nombre'
        NombreDB = 'Nombre'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'E-mail'
        NombreDB = 'EMAIL'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau de pas e-mail'
        NombreDB = 'EMAIL_CLAU'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau de pas'
        NombreDB = 'ClauPas'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'clau de pas llarga'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau de pas anterior'
        NombreDB = 'ClauPas_1'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'guardem les 2 '#250'ltimes claus...'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau de pas anterior 2'
        NombreDB = 'ClauPas_2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = '...perqu'#232' no les puguin repetir'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Entrades incorrectes'
        NombreDB = 'E_Incorrectes'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'n'#250'mero d'#39'entrades incorrectes'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Entrades de gr'#224'cia'
        NombreDB = 'E_Gracia'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 
          'si <> 0 => canvi de password [> 0: caducitat, -1: usuari inhabil' +
          'itat, -2: reset manual]'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat administrativa'
        NombreDB = 'UNITAT'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Sexe'
        NombreDB = 'Sexe'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'nulable per si no se sap:D=Dona, H=Home'
        ValidChars = 'DH'
      end
      item
        Aplica = kcCaracter
        Nombre = 'N'#186' metge recepta'
        NombreDB = 'NMetgeRecepta'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = '1+08+NC+d'#237'git de control'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi unitat metge'
        NombreDB = 'C_Unitat'
        Longitud = 2
        Consulta = 'UnitatMetge'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi provincia'
        NombreDB = 'C_PROV'
        Longitud = 2
        Consulta = 'Provincies'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. hist'#242'ria cl'#237'nica'
        NombreDB = 'NHC'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'DataFoto'
        NombreDB = 'DataFoto'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Foto'
        NombreDB = 'Foto'
        Longitud = 40
        zType = tcIB_Blob
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ID'
        NombreDB = 'ID'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_METGES'
      end>
    Indices = <
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'dig Usuari')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grups'
        NombreDB = 'Grups'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Grup')
        Tipo = tiForaneo
        ForaneoDic = Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Especial'
        NombreDB = 'Especial'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Especialitat')
        Tipo = tiForaneo
        ForaneoDic = Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Nom'
        NombreDB = 'Nom'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Metge')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Grup'
        Master = Grups
        BuscaOrigen.Strings = (
          'Grup')
        CopiarOrigen.Strings = (
          'Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end
      item
        Nombre = 'Especial'
        Master = Especial
        BuscaOrigen.Strings = (
          'Especialitat')
        CopiarOrigen.Strings = (
          'Especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end
      item
        Nombre = 'Acces'
        Master = wDataConfig.Accesos
        BuscaOrigen.Strings = (
          'Acces Inhabilitat')
        CopiarOrigen.Strings = (
          'Acces Inhabilitat')
        CopiarMaster.Strings = (
          'Codi Acces')
        BuscaMaster.Strings = (
          'Codi Acces')
      end
      item
        Nombre = 'Supervisor'
        Master = Metges
        BuscaOrigen.Strings = (
          'Supervisor')
        CopiarOrigen.Strings = (
          'Supervisor')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 't_doc'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus document')
        CopiarOrigen.Strings = (
          'Tipus document')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "HCCC.TIPUS_DOC"'
      end
      item
        Nombre = 'UnitatMetge'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codi unitat metge')
        CopiarOrigen.Strings = (
          'Codi unitat metge')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI="UNITATMETGE"'
      end
      item
        Nombre = 'Provincies'
        Master = wDataCodis.Provincia
        BuscaOrigen.Strings = (
          'Codi provincia')
        CopiarOrigen.Strings = (
          'Codi provincia')
        CopiarMaster.Strings = (
          'Codi Prov'#237'ncia')
        BuscaMaster.Strings = (
          'Codi Prov'#237'ncia')
      end>
    Nombre = 'Metges'
    NombreTabla = 'Metges'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'dig Usuari'
      'Metge'
      'Cognoms'
      'Tractament'
      'Grup'
      'Especialitat'
      'Baixa'
      'Acces Inhabilitat'
      'EsUserExtra'
      'Nomsencer'
      'Unitat administrativa'
      'Nombre'
      'Primer Cognom'
      'N'#186' Colegiat'
      'N'#186' metge recepta'
      'E-mail'
      'N'#250'm. hist'#242'ria cl'#237'nica'
      'DataFoto')
    IndiceVer = 'Usuari'
    Navegar = False
    Nivel = 5
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945599653
    Left = 29
    Top = 244
  end
  object Gracia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Gracia'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      '      DECLARE VARIABLE CODI VARCHAR(5);'
      'BEGIN'
      ''
      '    UPDATE METGES'
      '    SET    E_GRACIA = 1'
      '    WHERE  ESUSEREXTRA = "N"'
      '    AND    BAIXA = "N"'
      
        '    AND    CODI NOT IN (SELECT C_USUARI FROM DRETSMETGES WHERE C' +
        '_DRET = '#39'M999'#39')'
      '    AND    ULTIMCANVICLAU + 90 < "TODAY"'
      '    AND    HINHABILITAT IS NULL'
      '    AND    E_GRACIA = 0;'
      ''
      '    UPDATE METGEEXTRA'
      '    SET    E_GRACIA = 1'
      '    WHERE  BAIXA = "N"'
      '    AND    ULTIMCANVICLAU + 90 < "TODAY"'
      '    AND    HINHABILITAT IS NULL'
      '    AND    E_GRACIA = 0;'
      ''
      'END'
      ''
      ''
      ''
      ' '
      ' '
      ' ')
    Select.Strings = (
      'SELECT * FROM P_METGES_LOGIN("UBN","BO","LIS",NULL)')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    ModiFecha = 37076.7607777431
    Left = 253
    Top = 243
  end
  object DCA: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'PK i FK a Filiaci'#243
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Lesi'#243
        NombreDB = 'C_Linia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Campo = 'N'#250'm. Hist'#242'ria'
        Comentario = 'PK i FK a Lesions successives, amb C_Hist'#242'ria'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus ICTUS'
        NombreDB = 'Tipus_ICTUS'
        Longitud = 2
        Consulta = 'TipusICTUS'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'segons si '#233's hemorr'#224'gia o infart'
      end
      item
        Aplica = kcMODELS
        Nombre = 'TCE H Epidural'
        NombreDB = 'TCE_HEpidural'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'TCE HSD'
        NombreDB = 'TCE_HSD'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'TCE HSA'
        NombreDB = 'TCE_HSA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'TCE H Parenquimat'#243's'
        NombreDB = 'TCE_HParenq'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'TCE Contusi'#243
        NombreDB = 'TCE_Contusio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'TCE H Intraventricular'
        NombreDB = 'TCE_HIntrav'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Lesi'#243' axonal difusa'
        NombreDB = 'Lesio_Axonal'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0, 1, 2 o 3'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Drenatge extern'
        NombreDB = 'Drenatge_Extern'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'V'#224'lvula VP'
        NombreDB = 'Valvula_VP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Craneotomia'
        NombreDB = 'Craneotomia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Crisi comicial'
        NombreDB = 'Crisi_Comicial'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus d'#39'imatge'
        NombreDB = 'Tipus_Imatge'
        Longitud = 2
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'RM o TC'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Localitzaci'#243
        NombreDB = 'Localitzacio'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1: no disponible, 2: no procedeix'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Frontal D'
        NombreDB = 'Frontal_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Frontal E'
        NombreDB = 'Frontal_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Parietal D'
        NombreDB = 'Parietal_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Parietal E'
        NombreDB = 'Parietal_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Temporal D'
        NombreDB = 'Temporal_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Temporal E'
        NombreDB = 'Temporal_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Occipital D'
        NombreDB = 'Occipital_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Occipital E'
        NombreDB = 'Occipital_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T'#224'lem D'
        NombreDB = 'Talem_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T'#224'lem E'
        NombreDB = 'Talem_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ventricle D'
        NombreDB = 'Ventricle_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ventricle E'
        NombreDB = 'Ventricle_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Gangli basal D'
        NombreDB = 'Gangli_Basal_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Gangli basal E'
        NombreDB = 'Gangli_Basal_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tronc enc'#232'fal'
        NombreDB = 'Tronc_Encefal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cerebel'
        NombreDB = 'Cerebel'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria'
          'N'#250'm. Lesi'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'hist'
        NombreDB = 'hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'lesio'
        NombreDB = 'lesio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria'
          'N'#250'm. Lesi'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataCurs.LesionsSucc
        ForaneoCampos.Strings = (
          'N'#250'm. Hist.'
          'N'#250'm. lesi'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'TipusICTUS'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus ICTUS')
        CopiarOrigen.Strings = (
          'Tipus ICTUS')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DCA_TIPUS_ICTUS'#39
      end
      item
        Nombre = 'LesioAxDif'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Lesi'#243' axonal difusa')
        CopiarOrigen.Strings = (
          'Lesi'#243' axonal difusa')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DCA_LESIO_AXONAL'#39
      end>
    Nombre = 'DCA'
    NombreTabla = 'DCA'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist'#242'ria'
      'Tipus ICTUS'
      'TCE H Epidural'
      'TCE HSD'
      'TCE HSA'
      'TCE H Parenquimat'#243's'
      'TCE Contusi'#243
      'TCE H Intraventricular'
      'Lesi'#243' axonal difusa'
      'Drenatge extern'
      'V'#224'lvula VP'
      'Craneotomia'
      'Crisi comicial'
      'Tipus d'#39'imatge'
      'Localitzaci'#243
      'Frontal D'
      'Frontal E'
      'Parietal D'
      'Parietal E'
      'Temporal D'
      'Temporal E'
      'Occipital D'
      'Occipital E'
      'T'#224'lem D'
      'T'#224'lem E'
      'Ventricle D'
      'Ventricle E'
      'Gangli basal D'
      'Gangli basal E'
      'Tronc enc'#232'fal'
      'Cerebel'
      'N'#250'm. Lesi'#243)
    IndiceVer = 'Historia'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    Left = 512
    Top = 12
  end
  object LogUM: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Hist'#242'ria'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'historia'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'DATA'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'METGE'
        Longitud = 5
        Consulta = 'metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'UM antiga'
        NombreDB = 'UM_ANTIGA'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        Consulta = 'um_old'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'UM nova'
        NombreDB = 'UM_NOVA'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        Consulta = 'um_new'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Qui'
        NombreDB = 'Qui'
        Longitud = 5
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '11'
        Comentario = 'unitats: elena, desenes: diego'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria'
          'Data')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'historia'
        NombreDB = 'historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'um_old'
        NombreDB = 'um_old'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'UM antiga')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.UnitatM
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'um_new'
        NombreDB = 'um_new'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'UM nova')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.UnitatM
        ForaneoCampos.Strings = (
          'Codi')
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
          'Metge')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'historia'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'N'#250'm. Hist'#242'ria')
        CopiarOrigen.Strings = (
          'N'#250'm. Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'um_old'
        Master = wDataCodis.UnitatM
        BuscaOrigen.Strings = (
          'UM antiga')
        CopiarOrigen.Strings = (
          'UM antiga')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'um_new'
        Master = wDataCodis.UnitatM
        BuscaOrigen.Strings = (
          'UM nova')
        CopiarOrigen.Strings = (
          'UM nova')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'metge'
        Master = Metges
        BuscaOrigen.Strings = (
          'Metge')
        CopiarOrigen.Strings = (
          'Metge')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'LogUM'
    NombreTabla = 'LogUM'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist'#242'ria'
      'Data'
      'Metge'
      'UM antiga'
      'UM nova'
      'Qui')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 752
    Top = 64
  end
  object LogCanvisLlit: TDic
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
        Nombre = 'N'#250'm. Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Llit antic'
        NombreDB = 'Llit_antic'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Llit nou'
        NombreDB = 'Llit_nou'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data canvi'
        NombreDB = 'Data'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ordre'
        NombreDB = 'ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Llit antic')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogCanvisLlit'
    NombreTabla = 'LogCanvisLlit'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'N'#250'm. Hist'#242'ria'
      'Llit antic'
      'Llit nou'
      'Data canvi')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 376
    Top = 428
  end
  object GrupsLletres: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCodigo
        Nombre = 'Grup'
        NombreDB = 'C_GRUP'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'Lletra'
        NombreDB = 'LLETRA'
        Longitud = 3
        Consulta = 'Lletra'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Activa'
        NombreDB = 'ACTIVA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Nom'#233's 1 activa per grup'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Especialitat'
        NombreDB = 'C_ESPECIAL'
        Longitud = 2
        Consulta = 'Especial'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '**'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Necessita supervisor?'
        NombreDB = 'SUPERVISOR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Grup supervisor'
        NombreDB = 'C_GRUP_SUP'
        Longitud = 2
        Consulta = 'GrupS'
        zType = tcIB_Char
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
          'Grup'
          'Lletra'
          'Especialitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Grup'
        Master = Grups
        BuscaOrigen.Strings = (
          'Grup')
        CopiarOrigen.Strings = (
          'Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end
      item
        Nombre = 'Lletra'
        Master = LletresDePas
        BuscaOrigen.Strings = (
          'Lletra')
        CopiarOrigen.Strings = (
          'Lletra')
        CopiarMaster.Strings = (
          'Lletra')
        BuscaMaster.Strings = (
          'Lletra')
      end
      item
        Nombre = 'Especial'
        Master = Especial
        BuscaOrigen.Strings = (
          'Especialitat')
        CopiarOrigen.Strings = (
          'Especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end
      item
        Nombre = 'GrupS'
        Master = Grups
        BuscaOrigen.Strings = (
          'Grup')
        CopiarOrigen.Strings = (
          'Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end>
    Nombre = 'GrupsLletres'
    NombreTabla = 'GrupsLletres'
    Organiza = tbBase
    CamposVer.Strings = (
      'Grup'
      'Lletra'
      'Activa'
      'Especialitat')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 318
    Top = 307
  end
  object LletresDePas: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCodigo
        Nombre = 'Lletra'
        NombreDB = 'LLETRA'
        Longitud = 3
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ultim n'#186' inici'
        NombreDB = 'ULT_INICI'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'De 0 a 98 (X00 a X98)'
        ValidChars = '0..98'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ultim n'#186' mig davant'
        NombreDB = 'ULT_MIG_DAVANT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'De 0 a 9 (NX0 a NX9)'
        ValidChars = '0..9'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ultim n'#186' mig final'
        NombreDB = 'ULT_MIG_FINAL'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'De 0 a 9 (NX0 a 9XN)'
        ValidChars = '0..9'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ultim n'#186' final'
        NombreDB = 'ULT_FINAL'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'De 0 a 99 (00X a 98X)'
        ValidChars = '0..98'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Lletra')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Lletres'
    NombreTabla = 'Lletres'
    Organiza = tbBase
    CamposVer.Strings = (
      'Lletra'
      'Ultim n'#186' inici'
      'Ultim n'#186' mig davant'
      'Ultim n'#186' mig final'
      'Ultim n'#186' final')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 385
    Top = 307
  end
  object LogClaus: TDic
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
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'User'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau'
        NombreDB = 'CLAU'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Acci'#243
        NombreDB = 'ACCIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'A:alta; B:baixa'
        ValidChars = 'A,B,R'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Perfil similar a'
        NombreDB = 'PERFIL'
        Longitud = 5
        Consulta = 'Com'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari AD'
        NombreDB = 'LOGIN'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Donat d'#39'alta als sms'
        NombreDB = 'ALTA_SMS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'User'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari')
        CopiarOrigen.Strings = (
          'Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Metge'
        Master = Metges
        BuscaOrigen.Strings = (
          'Clau')
        CopiarOrigen.Strings = (
          'Clau')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Com'
        Master = Metges
        BuscaOrigen.Strings = (
          'Perfil similar a')
        CopiarOrigen.Strings = (
          'Perfil similar a')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'LogClaus'
    NombreTabla = 'LogClaus'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'Data'
      'Usuari'
      'Clau'
      'Acci'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 444
    Top = 307
  end
  object FaltaCE: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FaltaCE'
    ForceNombreDB = False
    Body.Strings = (
      '(METGE VARCHAR(5))'
      'RETURNS (HISTORIA     INTEGER,'
      '         NOMPACIENT   VARCHAR(80),'
      '         DATA_LESSIO  DATE,'
      '         UNITATMEDICA VARCHAR(30),'
      '         ORIGEN       VARCHAR(20),'
      '         CAUSA        VARCHAR(40),'
      '         CAUSA_DETALL VARCHAR(40)'
      '         )'
      'AS'
      '  DECLARE VARIABLE SEGUEIX     SMALLINT;'
      '  DECLARE VARIABLE COORDINADOR VARCHAR(5);'
      'BEGIN'
      ''
      
        '    FOR SELECT DISTINCT  T.C_HISTORIA, F.NOMCOMPLET, F.DATA_LESS' +
        'IO, U.N_UNITATM, CO.N_CODI, CC.N_CODI, CD.N_CODI'
      '        FROM             TRACTAMENTS T'
      
        '        LEFT OUTER JOIN  FILIACIO    F ON T.C_HISTORIA = F.NUM_H' +
        'IST'
      
        '        LEFT OUTER JOIN  UNITATM     U ON F.C_UNITATMEDICA = U.C' +
        '_UNITATM'
      
        '        LEFT OUTER JOIN  CODICAMPS  CO ON F.C_ORIGEN = CO.C_CODI' +
        '       AND CO.TIPUSCODI = '#39'ORIGEN_FILIACIO'#39
      
        '        LEFT OUTER JOIN  CODICAMPS  CC ON F.C_CAUSA = CC.C_CODI ' +
        '       AND CC.TIPUSCODI = '#39'CAUSA'#39
      
        '        LEFT OUTER JOIN  CODICAMPS  CD ON F.C_CAUSA_DETALL = CD.' +
        'C_CODI AND CD.TIPUSCODI = '#39'CAUSA_DETALL'#39
      ''
      
        '        WHERE     (T.DATA_ALTA >= "TODAY"-180) AND (T.DATA_ALTA ' +
        '< "TODAY")                                                      ' +
        '    /* pacients en tractament els '#250'ltims 6 mesos (i no actius) *' +
        '/'
      
        '        AND  (    (F.DATA_LESSIO IS NULL)                       ' +
        '                                                                ' +
        '    /* falta data lesi'#243'     */'
      
        '              OR  (F.C_UNITATMEDICA IN (0,23))                  ' +
        '                                                                ' +
        '    /* o falta UM o UM=altres */'
      
        '              OR ((F.C_UNITATMEDICA IN (1,2,3,4,7,8,10,11,12,14,' +
        '15,16,17,18,19)) AND ((F.C_ORIGEN IS NULL) OR (F.C_CAUSA IS NULL' +
        '))) /* o falta origen o causa */'
      
        '              OR ((F.C_CAUSA > 0) AND (CC.R_CODI = '#39'TDETALL'#39') AN' +
        'D (F.C_CAUSA_DETALL IS NULL))                                   ' +
        '    /* o falta causa detall */'
      
        '              OR ((F.GLF IS NULL) OR (F.GLF = '#39#39'))              ' +
        '                                                                ' +
        '    /* o falta GLF */'
      '              )'
      
        '        INTO  :HISTORIA, :NOMPACIENT, :DATA_LESSIO, :UNITATMEDIC' +
        'A, :ORIGEN, :CAUSA, :CAUSA_DETALL'
      ''
      '    DO BEGIN'
      ''
      
        '          /* Busquem l'#39#250'ltim tractament per 1004, 2014, 2008 o 2' +
        '004 del pacient,'
      
        '             que tingui per coordinador un metge d'#39'especialitat ' +
        'amb dret E22 */'
      
        '          /* Si no en trobem cap, busquem l'#39#250'ltim tractament ind' +
        'ependentment de la prestaci'#243' */'
      ''
      '          COORDINADOR = '#39#39';'
      ''
      '          SELECT T.C_COORDINADOR'
      '          FROM   TRACTAMENTS T'
      '          JOIN   METGES M  ON T.C_COORDINADOR = M.CODI'
      '          JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '          JOIN   DRETSESPECIAL D ON E.C_ESPECIAL = D.C_ESPECIAL'
      '          WHERE  T.C_HISTORIA = :HISTORIA'
      
        '          AND   (T.C_PRESTACIO = '#39'1004'#39' OR T.C_PRESTACIO = '#39'2014' +
        #39' OR T.C_PRESTACIO = '#39'2008'#39' OR T.C_PRESTACIO = '#39'2004'#39')'
      '          AND    D.C_DRET = '#39'E22'#39
      '          ORDER  BY T.DATA_ALTA DESC'
      '          ROWS   1'
      '          INTO  :COORDINADOR;'
      ''
      '          IF (COORDINADOR = '#39#39')'
      '          THEN    SELECT T.C_COORDINADOR'
      '                  FROM   TRACTAMENTS T'
      '                  JOIN   METGES M  ON T.C_COORDINADOR = M.CODI'
      
        '                  JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECI' +
        'AL'
      
        '                  JOIN   DRETSESPECIAL D ON E.C_ESPECIAL = D.C_E' +
        'SPECIAL'
      '                  WHERE  T.C_HISTORIA = :HISTORIA'
      '                  AND    D.C_DRET = '#39'E22'#39
      '                  ORDER  BY T.DATA_ALTA DESC'
      '                  ROWS   1'
      '                  INTO  :COORDINADOR;'
      ''
      '          IF (COORDINADOR = METGE) THEN SUSPEND;'
      ''
      '    END;'
      'END;')
    Dic1 = Tractaments
    Dic1Name = 'TRACTAMENTS'
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
    Left = 928
    Top = 544
  end
  object DCA_Pendent: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'PK i FK a Filiaci'#243
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Lesi'#243
        NombreDB = 'C_Linia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Campo = 'N'#250'm. Hist'#242'ria'
        Comentario = 'PK i FK a Lesions successives, amb C_Hist'#242'ria'
      end>
    Indices = <
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria'
          'N'#250'm. Lesi'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'hist'
        NombreDB = 'hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Lesio'
        NombreDB = 'Lesio'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'#242'ria'
          'N'#250'm. Lesi'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataCurs.LesionsSucc
        ForaneoCampos.Strings = (
          'N'#250'm. Hist.'
          'N'#250'm. lesi'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'DCA_Pendent'
    NombreTabla = 'DCA_Pendent'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist'#242'ria'
      'N'#250'm. Lesi'#243)
    IndiceVer = 'Historia'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    Left = 568
    Top = 12
  end
  object DcaUPMAU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'UPMAU'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE IDX         INTEGER;'
      '  DECLARE VARIABLE PREVIRNEC   INTEGER;'
      'BEGIN'
      ''
      '      IF (USER<>"REPLICATOR") THEN '
      '      BEGIN'
      
        '          SELECT PREVIRNEC FROM FILIACIO WHERE NUM_HIST = NEW.C_' +
        'HISTORIA INTO :PREVIRNEC;'
      '          '
      
        '          /* Sempre que facin alguna modificaci'#243' insertem regist' +
        're */'
      '          IF (PREVIRNEC IS NOT NULL) THEN'
      '          BEGIN'
      '                SELECT MAX(ID)+1 FROM UPMTEMP INTO :IDX;'
      '                IF (IDX IS NULL) THEN IDX=1;'
      
        '                INSERT INTO UPMTEMP (ID,C_HISTORIA,PREVIRNEC,DAT' +
        'A,TAULA,ACCIO) VALUES (:IDX,NEW.C_HISTORIA,:PREVIRNEC,"NOW",'#39'str' +
        'uctural_results'#39',2);'
      '          END;'
      '      END;'
      ''
      'END')
    Dic1 = DCA
    Dic1Name = 'DCA'
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
    Left = 700
    Top = 12
  end
  object DcaUPMAI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'UPMAI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE IDX         INTEGER;'
      '  DECLARE VARIABLE PREVIRNEC   INTEGER;'
      'BEGIN'
      ''
      '      IF (USER<>"REPLICATOR") THEN'
      '      BEGIN'
      
        '          SELECT PREVIRNEC FROM FILIACIO WHERE NUM_HIST = NEW.C_' +
        'HISTORIA INTO :PREVIRNEC;'
      ''
      
        '          /* Sempre que facin alguna modificaci'#243' insertem regist' +
        're */'
      '          IF (PREVIRNEC IS NOT NULL) THEN'
      '          BEGIN'
      '                SELECT MAX(ID)+1 FROM UPMTEMP INTO :IDX;'
      '                IF (IDX IS NULL) THEN IDX=1;'
      
        '                INSERT INTO UPMTEMP (ID,C_HISTORIA,PREVIRNEC,DAT' +
        'A,TAULA,ACCIO) VALUES (:IDX,NEW.C_HISTORIA,:PREVIRNEC,"NOW",'#39'str' +
        'uctural_results'#39',1);'
      '          END;'
      '      END;'
      ''
      'END')
    Dic1 = DCA
    Dic1Name = 'DCA'
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
    Left = 636
    Top = 12
  end
  object MetgesVirtual: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'Codi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'Metge'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'inicial + 1r cognom'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '**'
        Comentario = 'Grup al que pertany; FK a Grups'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Especialitat'
        NombreDB = 'C_Especial'
        Longitud = 2
        Consulta = 'Especial'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '**'
        Comentario = 'Especialitat; FK a Especialitats'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'N'
        Comentario = 'N: actiu, B: baixa'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Col.'
        NombreDB = 'NC'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'N'#250'mero de Col'#183'legiat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tracte'
        NombreDB = 'Tracte'
        Longitud = 4
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Dr, Drta, Dts, etc...'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom complet'
        NombreDB = 'Nomsencer'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Supervisor'
        NombreDB = 'C_Supervisor'
        Longitud = 5
        Consulta = 'Supervisor'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge Responsable (pels metges residents)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'e-mail'
        NombreDB = 'email'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grups'
        NombreDB = 'Grups'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Grup')
        Tipo = tiForaneo
        ForaneoDic = Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Especial'
        NombreDB = 'Especial'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Especialitat')
        Tipo = tiForaneo
        ForaneoDic = Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Nom'
        NombreDB = 'Nom'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Nom')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Grup'
        Master = Grups
        BuscaOrigen.Strings = (
          'Grup')
        CopiarOrigen.Strings = (
          'Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end
      item
        Nombre = 'Especial'
        Master = Especial
        BuscaOrigen.Strings = (
          'Especialitat')
        CopiarOrigen.Strings = (
          'Especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end
      item
        Nombre = 'Supervisor'
        Master = MetgesVirtual
        BuscaOrigen.Strings = (
          'Supervisor')
        CopiarOrigen.Strings = (
          'Supervisor')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end>
    Nombre = 'Usuaris'
    NombreTabla = 'Metges'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Nom'
      'Grup'
      'Especialitat'
      'Baixa'
      'N'#250'm. Col.'
      'Tracte'
      'Nom complet'
      'Supervisor'
      'e-mail')
    IndiceVer = 'Usuari'
    Navegar = False
    Nivel = 5
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945599653
    Left = 881
    Top = 243
  end
  object Filiacio_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE TEMP INTEGER;'
      '  DECLARE VARIABLE UPPS        INTEGER;'
      '  DECLARE VARIABLE OLD_GRUP CHAR(1);'
      '  DECLARE VARIABLE NEW_GRUP CHAR(1);'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '  DECLARE VARIABLE C_PROCES INTEGER;'
      '  DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      '  DECLARE VARIABLE DRETMOTIU CHAR(10);'
      '  DECLARE VARIABLE ES_ALTA INTEGER;'
      ''
      '  DECLARE VARIABLE C_INTERCON    INTEGER;'
      '  DECLARE VARIABLE C_COORDINADOR VARCHAR(5);'
      '  DECLARE VARIABLE DATA_INGRES   DATE;'
      '  DECLARE VARIABLE MARCA         CHAR(1);'
      '  DECLARE VARIABLE SOLICITA      VARCHAR(3000);'
      '  '
      '  DECLARE VARIABLE C_CENTREFAC   VARCHAR(2);'
      '  DECLARE VARIABLE C_CENTREFAC2  VARCHAR(2);'
      '  DECLARE VARIABLE C_CLIENT2     VARCHAR(3);'
      '  DECLARE VARIABLE C_DELEGA2     VARCHAR(4);'
      '  DECLARE VARIABLE C_ESTATFAC2   SMALLINT;'
      '  DECLARE VARIABLE APORTACIOPACIENT CHAR(1);'
      '  DECLARE VARIABLE PREU2         DOUBLE PRECISION;'
      ''
      '  DECLARE VARIABLE IDX           INTEGER;'
      '  DECLARE VARIABLE C_GRUP        CHAR(2);'
      '  '
      '  DECLARE VARIABLE CONTA         INTEGER;'
      '  DECLARE VARIABLE DATA_FI       DATE;'
      '  '
      '  DECLARE VARIABLE PUBLICAR  CHAR(1);'
      '  DECLARE VARIABLE C_ESPERA  INTEGER;'
      '  DECLARE VARIABLE ESTAT_UNC VARCHAR(1);'
      '  DECLARE VARIABLE ACCIO_UNC VARCHAR(1);'
      '  DECLARE VARIABLE NOVA_ACCIO_UNC VARCHAR(1);'
      'BEGIN'
      ''
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      
        '      /* *******************************************************' +
        '************ */'
      
        '      /* ************  TELEFON, NOM, UNITAT, TSI -> ESPERA  ****' +
        '************ */'
      
        '      /* *******************************************************' +
        '************ */'
      ''
      
        '      /* Si canvien dades de Filiaci'#243', les canviem a les llistes' +
        ' d'#39'espera actives */'
      '      IF (  (NEW.TELEFONO   <> OLD.TELEFONO)'
      '         OR (NEW.NOMBRE     <> OLD.NOMBRE)'
      '         OR (NEW.APELLIDO1  <> OLD.APELLIDO1)'
      '         OR (NEW.APELLIDO2  <> OLD.APELLIDO2)'
      '         OR (NEW.UNITAT     <> OLD.UNITAT)'
      '         OR (NEW.TSI        <> OLD.TSI)'
      '         OR ((OLD.TSI IS NULL) AND (NEW.TSI IS NOT NULL))'
      '         OR ((NEW.TSI IS NULL) AND (OLD.TSI IS NOT NULL))'
      '         ) THEN'
      '      BEGIN'
      
        '            UPDATE ESPERA E  SET E.COGNOM1  = F_LRTRIM(NEW.APELL' +
        'IDO1),'
      
        '                                 E.COGNOM2  = F_LRTRIM(NEW.APELL' +
        'IDO2),'
      
        '                                 E.NOM      = F_LRTRIM(NEW.NOMBR' +
        'E),'
      '                                 E.C_UNITAT = NEW.UNITAT,'
      '                                 E.TELEFON  = NEW.TELEFONO,'
      '                                 E.CIP      = NEW.TSI'
      '            WHERE  E.C_HISTORIA = NEW.NUM_HIST'
      '            AND    E.C_ESTAT BETWEEN 0 AND 89;'
      '      END;'
      ''
      
        '      /* *******************************************************' +
        '************ */'
      
        '      /* ****************  CANVIS ESVIU    "S" <--> "N"  *******' +
        '************ */'
      
        '      /* *******************************************************' +
        '************ */'
      ''
      '      /* Si es mor */'
      '      IF ((OLD.ESVIU = "S") AND (NEW.ESVIU = "N")) THEN'
      '      BEGIN'
      
        '            /* Insertem la hist'#242'ria a la Taula EXITUS (primer mi' +
        'rem que no hi sigui) */'
      '            TEMP = 0;'
      
        '            SELECT COUNT(*) FROM EXITUS WHERE C_HISTORIA = NEW.N' +
        'UM_HIST INTO :TEMP;'
      
        '            IF (TEMP = 0) THEN INSERT INTO EXITUS (C_Historia) V' +
        'ALUES (NEW.NUM_HIST);'
      ''
      '            IF (NEW.MORT IS NULL) THEN DATA_FI = "TODAY";'
      '                                  ELSE DATA_FI = NEW.MORT;'
      ''
      
        '            /* Si t'#233' un episodi actiu de Nutrici'#243' Enteral, el fi' +
        'nalitzem */'
      '            UPDATE NE_EPISODIS'
      '            SET    DATA_FI = :DATA_FI, MOTIU_FI = "Exitus"'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND DATA_FI IS NULL' +
        ';'
      ''
      
        '            /* Si t'#233' una prescripci'#243' de Resource espessant activ' +
        'a, la finalitzem */'
      '            UPDATE RESOURCEE'
      '            SET    DATA_FI = :DATA_FI, MOTIU_FI = "Exitus"'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND DATA_FI IS NULL' +
        ';'
      ''
      '            /* Traiem l'#39'autoritzaci'#243' d'#39'interfer'#243
      
        '            DELETE FROM AutoritzaInterf WHERE C_HISTORIA = NEW.N' +
        'UM_HIST; */'
      ''
      
        '            /* Si t'#233' un tractament de l'#39'EM actiu, el finalitzem ' +
        '*/'
      '            UPDATE EM_AUTORITZACIO'
      
        '            SET    DATA_FINALITZACIO = :DATA_FI, MOTIU_FINALITZA' +
        'CIO = " Exitus "'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND DATA_FINALITZAC' +
        'IO IS NULL;'
      ''
      '            /* Donem d'#39'alta els TRACTAMENTS 8888 actius */'
      
        '            UPDATE TRACTAMENTS SET DATA_ALTA = :DATA_FI, C_DESTI' +
        'NACIO = 6'
      
        '            WHERE C_HISTORIA = NEW.NUM_HIST AND C_PRESTACIO = "8' +
        '888" AND DATA_ALTA IS NULL;'
      ''
      
        '            /* Si t'#233' un a'#239'llament el finalitzem amb motiu 3-Exit' +
        'us */'
      '            UPDATE REGISTRESINFER'
      
        '            SET    DATAFINAL_REAL = :DATA_FI, DATAFINAL_AUTO = "' +
        'NOW", C_MOTIU = 3'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND T_REG=2 AND DAT' +
        'AFINAL_REAL IS NULL;'
      ''
      
        '            /* Si t'#233' una POLSERA la finalitzem amb motiu 3-Exitu' +
        's */'
      '            UPDATE REGISTRESINFER'
      
        '            SET    DATAFINAL_REAL = :DATA_FI, DATAFINAL_AUTO = "' +
        'NOW", C_MOTIU = 3'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND T_REG=11 AND DA' +
        'TAFINAL_REAL IS NULL;'
      ''
      
        '            /* Si t'#233' una UPP en curs la posem a estat 3-UPP no r' +
        'esolta a l'#39'alta. En pot tenir m'#233's d'#39'una. */'
      '            UPDATE UPPCAP'
      
        '            SET    ESTAT= 3, MOTIU_FINALITZACIO = 2, DATA_FINALI' +
        'TZA = :DATA_FI, USER_FINALITZA = NULL'
      '            WHERE  C_HISTORIA = NEW.NUM_HIST AND ESTAT = 1;'
      '      END;'
      ''
      '      /* Si "ressucita" */'
      '      IF ((OLD.ESVIU = "N") AND (NEW.ESVIU = "S")) THEN'
      '      BEGIN'
      ''
      
        '            /* Traiem la hist'#242'ria de la taula EXITUS (si hi era)' +
        ' */'
      '            DELETE FROM EXITUS WHERE C_HISTORIA = NEW.NUM_HIST;'
      ''
      
        '            /* Si t'#233' un episodi de Nutrici'#243' Enteral finalitzat a' +
        'utom'#224'ticament per exitus, el reactivem */'
      '            UPDATE NE_EPISODIS'
      '            SET    DATA_FI = NULL, MOTIU_FI = NULL'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND MOTIU_FI = "Exi' +
        'tus" and C_METGE_FI IS NULL;'
      ''
      
        '            /* Si t'#233' un episodi de Nutrici'#243' Enteral finalitzat a' +
        'utom'#224'ticament per exitus, el reactivem */'
      '            UPDATE RESOURCEE'
      '            SET    DATA_FI = NULL, MOTIU_FI = NULL'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND MOTIU_FI = "Exi' +
        'tus" and C_METGE_FI IS NULL;'
      ''
      
        '            /* Si t'#233' un tractament de l'#39'EM finalitzat autom'#224'tica' +
        'ment per exitus, el recuperem  */'
      '            UPDATE EM_AUTORITZACIO'
      
        '            SET    DATA_FINALITZACIO = NULL, MOTIU_FINALITZACIO ' +
        '= NULL'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND MOTIU_FINALITZA' +
        'CIO = " Exitus ";'
      ''
      
        '            /* Si t'#233' un a'#239'llament finalitzat autom'#224'ticament amb ' +
        'motiu 3-Exitus, el tornem a activar */'
      '            UPDATE REGISTRESINFER'
      
        '            SET    DATAFINAL_REAL = NULL, DATAFINAL_AUTO = NULL,' +
        ' C_MOTIU = NULL'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND T_REG = 2 AND C' +
        '_MOTIU = 3 AND C_USUARI_FINAL IS NULL;'
      ''
      
        '            /* Si t'#233' un POLSERA finalitzat autom'#224'ticament amb mo' +
        'tiu 3-Exitus, el tornem a activar  */'
      '            UPDATE REGISTRESINFER'
      
        '            SET    DATAFINAL_REAL = NULL, DATAFINAL_AUTO = NULL,' +
        ' C_MOTIU = NULL'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND T_REG = 11 AND ' +
        'C_MOTIU = 3 AND C_USUARI_FINAL IS NULL;'
      ''
      
        '            /* si era exitus i ho canvien busquem les UPP'#39's amb ' +
        'estat 3 que no tinguin USER_FINALITZA (s'#243'n els autom'#224'tics) */'
      '            UPDATE UPPCAP'
      
        '            SET    ESTAT = 1, MOTIU_FINALITZACIO = NULL, DATA_FI' +
        'NALITZA = NULL'
      
        '            WHERE  C_HISTORIA = NEW.NUM_HIST AND ESTAT = 3 AND U' +
        'SER_FINALITZA IS NULL;'
      '      END;'
      ''
      ''
      
        '      /* *******************************************************' +
        '************ */'
      
        '      /* ****************  UM, FECHA_NAC -> ESCALES PENDENTS  **' +
        '************ */'
      
        '      /* *******************************************************' +
        '************ */'
      ''
      
        '      /* Si modifiquen la unitat m'#232'dica, traiem les escales pend' +
        'ents que hi havia i insertem les escales pendents que toquen seg' +
        'ons la nova UM */'
      '      /* Si li canvien o li posen la data de naixement, tamb'#233' */'
      
        '      /* Hem de mirar si t'#233' data d'#39'alta o de prealta, i en aques' +
        't cas insertar les escales pendents a l'#39'alta que correspongui */'
      '      IF (  (OLD.FECHA_NAC <> NEW.FECHA_NAC)'
      
        '      OR   ((OLD.FECHA_NAC IS NULL) AND (NEW.FECHA_NAC IS NOT NU' +
        'LL))'
      '      OR   (OLD.C_UNITATMEDICA <> NEW.C_UNITATMEDICA) ) THEN'
      '      BEGIN'
      ''
      
        '            SELECT C_GRUP FROM UNITATM WHERE C_UNITATM = OLD.C_U' +
        'NITATMEDICA INTO :OLD_GRUP;'
      
        '            SELECT C_GRUP FROM UNITATM WHERE C_UNITATM = NEW.C_U' +
        'NITATMEDICA INTO :NEW_GRUP;'
      ''
      '            IF (OLD_GRUP IS NULL) THEN OLD_GRUP = '#39#39';'
      '            IF (NEW_GRUP IS NULL) THEN NEW_GRUP = '#39#39';'
      ''
      '            IF ( (OLD_GRUP <> NEW_GRUP)'
      
        '            OR   ((OLD.FECHA_NAC IS NULL) AND (NEW.FECHA_NAC IS ' +
        'NOT NULL))'
      '            OR   (OLD.FECHA_NAC <> NEW.FECHA_NAC) ) THEN'
      '            BEGIN'
      '                  /* Primer hem de buscar la prestaci'#243' */'
      
        '                  SELECT T.C_PROCES, T.C_TRACTAMENT, T.C_PRESTAC' +
        'IO, D.C_DRET'
      '                  FROM   TRACTAMENTS T'
      
        '                  JOIN   DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU A' +
        'ND (D.C_DRET = "X1" OR D.C_DRET = "X5")'
      '                  WHERE  T.C_HISTORIA = NEW.NUM_HIST'
      
        '                  AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "' +
        'TODAY")'
      
        '                  INTO  :C_PROCES, :C_TRACTAMENT, :C_PRESTACIO, ' +
        ':DRETMOTIU;'
      ''
      ''
      '                  /* Si '#233's proc'#233's */'
      '                  IF (C_PROCES IS NOT NULL) THEN'
      '                  BEGIN'
      
        '                        /* Esborrem les escales pendents obligat' +
        #242'ries per la U.M. antiga */'
      
        '                        DELETE FROM ESCALESPENDENTS WHERE C_PROC' +
        'ES = :C_PROCES;'
      ''
      
        '                        /* Insertem les escales pendents obligat' +
        #242'ries per la nova U.M. */'
      
        '                        EXECUTE PROCEDURE P_ESCALESPENDENTS_INSE' +
        'RTA_I(:C_TRACTAMENT);'
      ''
      
        '                        /* Si t'#233' data d'#39'alta o prealta hem d'#39'ins' +
        'ertar les pendents obligat'#242'ries a l'#39'alta (T o A) per la nova U.M' +
        '. *'
      '                        SELECT COUNT(*) FROM TRACTAMENTS'
      '                        WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      
        '                        AND   (DATA_ALTA IS NOT NULL OR DATA_PRE' +
        'ALTA IS NOT NULL)'
      '                        INTO  :ES_ALTA;'
      ''
      
        '                        IF (ES_ALTA > 0) THEN EXECUTE PROCEDURE ' +
        'P_ESCALESPENDENTS_INSERTA_A(:C_TRACTAMENT); */'
      '                        '
      
        '                        /* 22-3-2025 Si falten menys de 15 dies ' +
        'per l'#39'alta/prealta, insertem les pendents obligat'#242'ries a l'#39'alta ' +
        '(T o A) */'
      '                        SELECT COUNT(*) FROM TRACTAMENTS'
      '                        WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      
        '                        AND   ((DATA_ALTA    IS NOT NULL AND (DA' +
        'TA_ALTA    >= "TODAY" - 15))'
      
        '                          OR   (DATA_PREALTA IS NOT NULL AND (DA' +
        'TA_PREALTA >= "TODAY" - 15)))'
      '                        INTO  :ES_ALTA;'
      '                        '
      
        '                        IF (ES_ALTA > 0) THEN EXECUTE PROCEDURE ' +
        'P_TRACTAMENTS_REVISAESCALESALTA(:C_TRACTAMENT);'
      '                  END;'
      ''
      '                  /* Si '#233's revisi'#243' */'
      '                  ELSE IF (DRETMOTIU = "X5") THEN'
      '                  BEGIN'
      
        '                        /* Esborrem les escales pendents obligat' +
        #242'ries per la U.M. antiga */'
      
        '                        DELETE FROM ESCALESPENDENTS WHERE C_TRAC' +
        'TAMENT = :C_TRACTAMENT;'
      ''
      
        '                        /* Insertem les escales pendents obligat' +
        #242'ries per la nova U.M. */'
      
        '                        EXECUTE PROCEDURE P_ESCALESPENDENTS_INSE' +
        'RTA_R(:C_TRACTAMENT);'
      '                  END;'
      ''
      '            END;'
      '      END;'
      ''
      ''
      ''
      
        '      /* *******************************************************' +
        '***** */'
      
        '      /* *** ECOS si UNITAT 1 o 5,  PER A INGRESSSOS AMB MOTIU X' +
        '6 *** */'
      
        '      /* *******************************************************' +
        '***** */'
      ''
      
        '      /* Si la Unitat passa a ser 1 o 5, generem INTERCONSULTA d' +
        #39'Ecografia Abdominal per als ingressos actius amb motiu X6 */'
      
        '      IF ( (OLD.UNITAT <> 5) AND (OLD.UNITAT <> 1) AND ((NEW.UNI' +
        'TAT = 1) OR (NEW.UNITAT = 5)) ) THEN'
      '      BEGIN'
      
        '            /* Busquem tractament actiu que compleixi les condic' +
        'ions */'
      ''
      '            C_TRACTAMENT = 0;'
      ''
      
        '            SELECT T.C_TRACTAMENT, T.C_COORDINADOR, T.DATA_INGRE' +
        'S'
      '            FROM   TRACTAMENTS T'
      
        '            JOIN   DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X6'#39
      '            WHERE  T.C_HISTORIA = NEW.NUM_HIST'
      '            AND    T.C_PRESTACIO = '#39'1004'#39
      '            AND    T.DATA_INGRES >= "TODAY" - 7'
      
        '            AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= '#39'TODAY'#39 +
        ')'
      '            INTO  :C_TRACTAMENT, :C_COORDINADOR, :DATA_INGRES;'
      ''
      '            IF (C_TRACTAMENT IS NULL) THEN C_TRACTAMENT = 0;'
      ''
      '            IF (C_TRACTAMENT > 0) THEN'
      '            BEGIN'
      
        '                  SELECT F_MID(f_BlobAsPChar(ANALITRMP), 0, 1) F' +
        'ROM CONFIG INTO :MARCA;'
      ''
      '                  C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      
        '                  SOLICITA = MARCA || '#39' Antecedents: -'#39' || F_NLi' +
        'ne() ||'
      
        '                             MARCA || '#39' Motiu: Ecografia abdomin' +
        'al'#39' || F_NLine() ||'
      '                             MARCA || '#39' Observacions: -'#39';'
      ''
      '                  INSERT INTO INTERCON'
      '                  (     C_Intercon,'
      '                        C_Historia,'
      '                        C_Tractament,'
      '                        C_Especial,'
      '                        C_Tipus,'
      '                        URGENT,'
      '                        Data1,'
      '                        C_Metge1,'
      '                        Diag_Inicial,'
      '                        Solicita,'
      '                        Estat,'
      '                        InformeRX'
      '                  )'
      '                  VALUES'
      '                  (     :C_INTERCON,'
      '                        NEW.NUM_HIST,'
      '                        :C_TRACTAMENT,'
      '                        "03",'
      
        '                        "INTERCON",    /* Novembre 2022: El gene' +
        'r de 2014 vam canviar ECOS per INTERCON */'
      '                        "N",'
      '                        "TODAY",'
      '                        :C_COORDINADOR,'
      '                        " Control ingr'#233's",'
      '                        F_StrBlob(:SOLICITA),'
      
        '                        1,            /* Novembre 2022: El gener' +
        ' de 2014 vam canviar ECOS per INTERCON */'
      '                        '#39'N'#39
      '                  );'
      ''
      ''
      '                  INSERT INTO HISTORIA'
      '                  ('
      '                        C_Anotacio,'
      '                        C_Tractament,'
      '                        C_Historia,'
      '                        C_Prestacio,'
      '                        Data_Ingres,'
      '                        C_Coordinador,'
      '                        Data,'
      '                        C_Usuari,'
      '                        C_Grup,'
      '                        Anotacio,'
      '                        C_Intercon,'
      '                        Estat_Intercon'
      '                  )'
      '                  VALUES'
      '                  ('
      '                        GEN_ID(CONTAHISTORIA,1),'
      '                        :C_TRACTAMENT,'
      '                        NEW.NUM_HIST,'
      '                        "1004",'
      '                        :DATA_INGRES,'
      '                        :C_COORDINADOR,'
      '                        "NOW",'
      '                        :C_COORDINADOR,'
      '                        "ME",'
      '                        :SOLICITA,'
      '                        :C_INTERCON,'
      '                        12'
      '                  );'
      '            END;'
      '      END;'
      ''
      
        '      /* Si la Unitat deixa de ser 1 o 5, eliminem la INTERCONSU' +
        'LTA d'#39'Ecografia Abdominal generada, si no s'#39'ha fet */'
      
        '      IF ( ((OLD.UNITAT = 1) OR (OLD.UNITAT = 5)) AND (NEW.UNITA' +
        'T <> 1) AND (NEW.UNITAT <> 5) ) THEN'
      '      BEGIN'
      '            C_INTERCON = 0;'
      ''
      '            /* Busquem la ECO */'
      '            SELECT I.C_INTERCON'
      '            FROM   INTERCON I'
      
        '            JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT'
      '            WHERE  T.C_HISTORIA = NEW.NUM_HIST'
      '            AND    T.C_PRESTACIO = "1004"'
      
        '            AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY"' +
        ')    /* de l'#39'ingr'#233's actiu */'
      
        '            AND    I.C_TIPUS = "INTERCON"                       ' +
        '     /* Novembre 2022: El gener de 2014 vam canviar ECOS per INT' +
        'ERCON */'
      
        '            AND    I.DIAG_INICIAL = " Control ingr'#233's"           ' +
        '     /* generada autom'#224'ticament en l'#39'ingr'#233's */'
      
        '            AND    I.DATA_PROVA IS NULL                         ' +
        '     /* que encara no estigui feta */'
      '            INTO  :C_INTERCON;'
      ''
      '            IF (C_INTERCON IS NULL) THEN C_INTERCON = 0;'
      ''
      '            IF (C_INTERCON <> 0) THEN'
      '            BEGIN'
      
        '                  DELETE FROM HISTORIA WHERE C_INTERCON = :C_INT' +
        'ERCON;     /* eliminem l'#39'anotaci'#243' de la sol'#183'licitud autom'#224'tica *' +
        '/'
      
        '                  DELETE FROM INTERCON WHERE C_INTERCON = :C_INT' +
        'ERCON;     /* eliminem la interconsulta */'
      '            END;'
      '      END;'
      '      '
      
        '      /* Si el pacient passa a la unitat 1, si t'#233' un 1004 motiu ' +
        '101 s'#39'ha de generar la interconsulta LM-TIR */'
      
        '      /* 12-12-2019: des de l'#39'agost del 2019 que ja no es genere' +
        'n des dels triggers de tractaments. Asteriscar-ho aqu'#237' tamb'#233' *'
      '      IF ((OLD.UNITAT<>1) AND (NEW.UNITAT=1)) THEN'
      '      BEGIN'
      '        C_TRACTAMENT=0;'
      ''
      
        '        SELECT T.C_TRACTAMENT, T.C_COORDINADOR, T.DATA_INGRES, T' +
        '.C_PRESTACIO, M.C_GRUP'
      '        FROM TRACTAMENTS T'
      '        JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '        WHERE C_HISTORIA=NEW.NUM_HIST AND DATA_ALTA IS NULL AND ' +
        'C_MOTIU=101'
      
        '        INTO :C_TRACTAMENT, :C_COORDINADOR, :DATA_INGRES, :C_PRE' +
        'STACIO, :C_GRUP;'
      '        '
      '        IF (C_TRACTAMENT IS NULL) THEN C_TRACTAMENT = 0;'
      ''
      '        IF (C_TRACTAMENT > 0) THEN'
      '        BEGIN'
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      '            SOLICITA = '#39'Valoraci'#243' del domicili '#39' || F_NLine();'
      ''
      '            INSERT INTO INTERCON'
      '            (     C_Intercon,'
      '                  C_Historia,'
      '                  C_Tractament,'
      '                  C_Especial,'
      '                  C_Tipus,'
      '                  Urgent,'
      '                  Data1,'
      '                  C_Metge1,'
      '                  Diag_Inicial,'
      '                  Solicita,'
      '                  Estat'
      '            )'
      '            VALUES'
      '            (    :C_INTERCON,'
      '                  NEW.NUM_HIST,'
      '                 :C_TRACTAMENT,'
      '                  "33",    /* especialitat EASE *'
      '                  "EASE",'
      '                  "N",'
      '                  "TODAY",'
      '                 :C_COORDINADOR,'
      '                  "LM-TIR",'
      '                  F_StrBlob(:SOLICITA),'
      '                  1'
      '            );'
      ''
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  C_Intercon,'
      '                  Estat_Intercon'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                 :C_TRACTAMENT,'
      '                  NEW.NUM_HIST,'
      '                 :C_PRESTACIO,'
      '                 :DATA_INGRES,'
      '                 :C_COORDINADOR,'
      '                  "NOW",'
      '                 :C_COORDINADOR,'
      '                 :C_GRUP,'
      '                 :SOLICITA,'
      '                 :C_INTERCON,'
      '                  1'
      '            );'
      '        END;'
      '      END;   */'
      ''
      ''
      
        '      /* ***************************************************** *' +
        '/'
      
        '      /* ***************  LESIONS SUCCESSIVES  *************** *' +
        '/'
      
        '      /* ***************************************************** *' +
        '/'
      ''
      
        '      /* Hi ha alguns camps de Lesions Successives que s'#39'entren ' +
        'des de llocs diferents (tot i que la majoria s'#39'entren nom'#233's a la' +
        ' Fitxa UM)'
      
        '         Per aix'#242' centralitzem aqu'#237' l'#39'actualitazci'#243' d'#39'aquestes d' +
        'ades a la lesi'#243' actual de LesionsSuccessives */'
      
        '      IF  (((NEW.DATA_LESSIO IS NOT NULL) OR (NEW.C_UNITATMEDICA' +
        ' IS NOT NULL))'
      
        '      AND  (((NEW.C_LATERALITAT          IS NOT NULL) AND ((OLD.' +
        'C_LATERALITAT          IS NULL) OR (OLD.C_LATERALITAT          <' +
        '> NEW.C_LATERALITAT))         ) OR'
      
        '            ((NEW.DIES_APT               IS NOT NULL) AND ((OLD.' +
        'DIES_APT               IS NULL) OR (OLD.DIES_APT               <' +
        '> NEW.DIES_APT))              ) OR'
      
        '            ((NEW.N_DIAGNOSTICNEUROLOGIC IS NOT NULL) AND ((OLD.' +
        'N_DIAGNOSTICNEUROLOGIC IS NULL) OR (OLD.N_DIAGNOSTICNEUROLOGIC <' +
        '> NEW.N_DIAGNOSTICNEUROLOGIC))) OR'
      
        '            ((NEW.C_ETIOLOGIA            IS NOT NULL) AND ((OLD.' +
        'C_ETIOLOGIA            IS NULL) OR (OLD.C_ETIOLOGIA            <' +
        '> NEW.C_ETIOLOGIA))           ) OR'
      
        '            ((NEW.N_ETIOLOGIA            IS NOT NULL) AND ((OLD.' +
        'N_ETIOLOGIA            IS NULL) OR (OLD.N_ETIOLOGIA            <' +
        '> NEW.N_ETIOLOGIA))           ) OR'
      
        '            ((NEW.G_EFECTETARDA          IS NOT NULL) AND ((OLD.' +
        'G_EFECTETARDA          IS NULL) OR (OLD.G_EFECTETARDA          <' +
        '> NEW.G_EFECTETARDA))         ) OR'
      
        '            ((NEW.G_DEFICITNEUROLOGIC    IS NOT NULL) AND ((OLD.' +
        'G_DEFICITNEUROLOGIC    IS NULL) OR (OLD.G_DEFICITNEUROLOGIC    <' +
        '> NEW.G_DEFICITNEUROLOGIC))   )'
      '           )'
      '          )'
      '      THEN BEGIN'
      '          /* Lesi'#243' actual de LESIONS_SUCCESSIVES */'
      
        '          SELECT MAX(C_LINIA) FROM LESIONS_SUCCESSIVES WHERE C_H' +
        'ISTORIA = NEW.NUM_HIST INTO :IDX;'
      ''
      '          IF (IDX = 0)'
      '          THEN'
      
        '                INSERT INTO LESIONS_SUCCESSIVES (C_HISTORIA, C_L' +
        'INIA, C_LATERALITAT, DIES_APT, N_DIAGNOSTICNEUROLOGIC,'
      
        '                                                 C_ETIOLOGIA, N_' +
        'ETIOLOGIA, G_EFECTETARDA,'
      
        '                                                 G_DEFICITNEUROL' +
        'OGIC, VERSIOCIM, VERSIOCIM_G)'
      
        '                VALUES (NEW.NUM_HIST, 1, NEW.C_LATERALITAT, NEW.' +
        'DIES_APT, NEW.N_DIAGNOSTICNEUROLOGIC,'
      
        '                        NEW.C_ETIOLOGIA, NEW.N_ETIOLOGIA, NEW.G_' +
        'EFECTETARDA,'
      
        '                        NEW.G_DEFICITNEUROLOGIC, NEW.VERSIOCIM, ' +
        'NEW.VERSIOCIM_G);'
      ''
      '          ELSE'
      '                UPDATE LESIONS_SUCCESSIVES'
      
        '                SET C_LATERALITAT = NEW.C_LATERALITAT, DIES_APT ' +
        '= NEW.DIES_APT, N_DIAGNOSTICNEUROLOGIC = NEW.N_DIAGNOSTICNEUROLO' +
        'GIC,'
      
        '                    C_ETIOLOGIA = NEW.C_ETIOLOGIA, N_ETIOLOGIA =' +
        ' NEW.N_ETIOLOGIA, G_EFECTETARDA = NEW.G_EFECTETARDA,'
      
        '                    G_DEFICITNEUROLOGIC = NEW.G_DEFICITNEUROLOGI' +
        'C, VERSIOCIM = NEW.VERSIOCIM, VERSIOCIM_G = NEW.VERSIOCIM_G'
      '                WHERE C_HISTORIA= NEW.NUM_HIST'
      '                AND   C_LINIA = :IDX;'
      '      END;'
      ''
      '      /* ****************************** */'
      '      /* ***  INGRESSOS D'#39'ANDORRA   *** */'
      '      /* ****************************** */'
      ''
      
        '      /* Si el nou pa'#237's del pacient '#233's Andorra i est'#224' ingressat ' +
        '1004, l'#39'insertem a INGRESANDORRA, si no hi '#233's ja */'
      '      IF (((OLD.PAIS) <> (NEW.PAIS)) AND (NEW.PAIS='#39'376'#39')) THEN'
      '      BEGIN'
      '          SELECT C_PRESTACIO, C_TRACTAMENT FROM TRACTAMENTS'
      '          WHERE C_HISTORIA=NEW.NUM_HIST'
      '          AND C_PRESTACIO = '#39'1004'#39
      '          AND (DATA_ALTA IS NULL OR (DATA_ALTA>="TODAY"))'
      '          INTO  :C_PRESTACIO,:C_TRACTAMENT;'
      '          '
      '          IF (C_PRESTACIO IS NULL) THEN C_PRESTACIO = '#39#39';'
      ''
      '          IF (C_PRESTACIO='#39'1004'#39') THEN'
      '          BEGIN'
      
        '              SELECT COUNT(*) FROM IngresAndorra WHERE C_HISTORI' +
        'A=NEW.NUM_HIST AND C_TRACTAMENT=:C_TRACTAMENT INTO :CONTA;'
      '              '
      '              IF (CONTA=0) THEN'
      '              BEGIN'
      
        '                  INSERT INTO IngresAndorra(C_HISTORIA, C_TRACTA' +
        'MENT) VALUES(NEW.NUM_HIST, :C_TRACTAMENT);'
      '              END;'
      '          END;'
      '      END;'
      '      '
      
        '     /* Si deixa de ser d'#39'Andorra i hi ha registre a INGRESANDOR' +
        'RA amb DATA_AVIS nul'#183'la, l'#39'esborrem */'
      '     IF (((OLD.PAIS) <> (NEW.PAIS)) AND (OLD.PAIS='#39'376'#39')) THEN'
      '     BEGIN'
      
        '         SELECT COUNT(*) FROM IngresAndorra WHERE C_HISTORIA=NEW' +
        '.NUM_HIST AND DATA_AVIS IS NULL INTO :CONTA;'
      ''
      '         IF (CONTA > 0) THEN'
      '         BEGIN'
      
        '             DELETE FROM IngresAndorra WHERE C_HISTORIA=NEW.NUM_' +
        'HIST AND DATA_AVIS IS NULL;'
      '         END;'
      '     END;'
      '     '
      
        '     /* Activar/Desactivar l'#39'indicador d'#39'aportaci'#243' pacient de le' +
        's ortesis encara no entregades en funci'#243' de l'#39'indicador de farm'#224 +
        'cia del pacient */'
      
        '     IF ((NEW.INDICADOR_FARMACIA <> '#39#39') AND (OLD.INDICADOR_FARMA' +
        'CIA <> NEW.INDICADOR_FARMACIA)) THEN'
      '     BEGIN'
      
        '         FOR SELECT DISTINCT I.C_INTERCON, C.APORTACIOSERVEI, T.' +
        'C_CENTREFAC'
      '         FROM INTERCONORTESISLIN L'
      '         JOIN INTERCON I ON L.C_INTERCON = I.C_INTERCON'
      '         JOIN TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMENT'
      '         LEFT JOIN CODIORTESIS C ON L.C_ORTESIS = C.C_ORTESIS'
      '         WHERE I.C_HISTORIA = NEW.NUM_HIST AND I.ESTAT < 46'
      '         ORDER BY C_INTERCON'
      '         INTO :C_INTERCON, :PREU2, :C_CENTREFAC'
      '         DO BEGIN'
      
        '             IF ((NEW.INDICADOR_FARMACIA = '#39'TSI 001'#39') OR (PREU2 ' +
        '= 0) OR (C_CENTREFAC IS NULL) OR (C_CENTREFAC <> '#39'04'#39')) THEN'
      '             BEGIN'
      '                 APORTACIOPACIENT = '#39'N'#39';'
      '                 C_CENTREFAC2 = NULL;'
      '                 C_ESTATFAC2 = 50;'
      '             END'
      '             ELSE BEGIN'
      '                 APORTACIOPACIENT = '#39'S'#39';'
      '                 C_CENTREFAC2 = '#39'00'#39';'
      '                 C_ESTATFAC2 = 10;'
      '             END;'
      ''
      '             UPDATE INTERCONORTESISLIN'
      
        '             SET APORTACIOPACIENT = :APORTACIOPACIENT, C_CENTREF' +
        'AC2 = :C_CENTREFAC2, C_CLIENT2 = NULL, C_DELEGA2 = NULL, C_ESTAT' +
        'FAC2 = :C_ESTATFAC2, PREU2 = :PREU2'
      '             WHERE C_INTERCON = :C_INTERCON;'
      '         END;'
      '     END;'
      '     '
      
        '     /* UNICAS: si un pacient deixa de ser UNICAS s'#39'han de despu' +
        'blicar les seves cites i altrament si passa a ser UNICAS s'#39'han d' +
        'e publicar les seves cites */'
      
        '     IF ((OLD.UNICAS IS NULL AND NEW.UNICAS IS NOT NULL) OR (OLD' +
        '.UNICAS IS NOT NULL AND NEW.UNICAS IS NULL) OR (OLD.UNICAS <> NE' +
        'W.UNICAS)) THEN'
      '     BEGIN'
      '         IF       (NEW.UNICAS = '#39'S'#39') THEN PUBLICAR = '#39'S'#39';'
      
        '         ELSE IF ((NEW.UNICAS IS NULL) OR (NEW.UNICAS = '#39'N'#39') OR ' +
        'NEW.UNICAS = '#39#39') THEN PUBLICAR = '#39'N'#39';'
      '     '
      '         FOR SELECT E.C_ESPERA, E.ESTAT_UNC, E.ACCIO_UNC'
      '         FROM ESPERA E'
      
        '         JOIN DRETSPRESTA DP ON E.C_PRESTACIO=DP.C_PRESTACIO AND' +
        ' DP.C_DRET = "P264"'
      '         WHERE E.C_HISTORIA = NEW.NUM_HIST'
      '         AND E.EXCLOS = '#39'N'#39' AND E.C_ESTAT BETWEEN 30 AND 39'
      '         AND E.DATA_PREINGRES > "TODAY"'
      '         ORDER BY E.C_ESPERA'
      '         INTO :C_ESPERA, :ESTAT_UNC, :ACCIO_UNC'
      '         DO BEGIN'
      '             NOVA_ACCIO_UNC = NULL;'
      '             /* Si s'#39'ha de publicar: */'
      '             IF (PUBLICAR = "S") THEN'
      '             BEGIN'
      '                   /* Si est'#224' publicada  ->  no fer res'
      
        '                      Altrament          ->  s'#39'haur'#224' d'#39'afegir a ' +
        'UNICAS si no ho est'#224' */'
      
        '                   IF (ESTAT_UNC IS NULL)     THEN NOVA_ACCIO_UN' +
        'C = "A";'
      
        '                   ELSE IF ((ESTAT_UNC <> "P") AND (ACCIO_UNC = ' +
        #39#39')) THEN NOVA_ACCIO_UNC = "A";'
      '                   '
      '                   IF (NOVA_ACCIO_UNC IS NOT NULL) THEN'
      '                   BEGIN'
      
        '                       UPDATE ESPERA SET ACCIO_UNC = :NOVA_ACCIO' +
        '_UNC WHERE C_ESPERA = :C_ESPERA;'
      '                   END;'
      '             END;'
      '             /* Si s'#39'ha de despublicar */'
      '             ELSE IF (PUBLICAR = "N") THEN'
      '             BEGIN'
      
        '                   /* Si est'#224' publicada  ->  s'#39'haur'#224' de donar de' +
        ' baixa'
      
        '                      Altrament, si est'#224' marcada per publicar  -' +
        '>  s'#39'ha de treure la marca */'
      
        '                   IF (ESTAT_UNC = "P") THEN NOVA_ACCIO_UNC = "B' +
        '";'
      
        '                                        ELSE IF (ACCIO_UNC = "A"' +
        ') THEN NOVA_ACCIO_UNC = "";'
      
        '                   UPDATE ESPERA SET ACCIO_UNC = :NOVA_ACCIO_UNC' +
        ' WHERE C_ESPERA = :C_ESPERA;'
      '             END;'
      '         END;'
      '     END;'
      ''
      '   END;'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'filiacio'
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
    Left = 312
    Top = 12
  end
  object Filiacio_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BU'
    ForceNombreDB = False
    Body.Strings = (
      '/*'
      'DECLARE VARIABLE NOMBRE    VARCHAR(20);'
      'DECLARE VARIABLE APELLIDO1 VARCHAR(20);'
      'DECLARE VARIABLE APELLIDO2 VARCHAR(20);'
      '*/'
      'DECLARE VARIABLE OLDTIPUSVIA  VARCHAR(4);'
      'DECLARE VARIABLE OLDNOMVIA    VARCHAR(50);'
      'DECLARE VARIABLE OLDNUMERO    VARCHAR(10);'
      'DECLARE VARIABLE OLDBLOC      VARCHAR(2);'
      'DECLARE VARIABLE OLDESCALA    VARCHAR(2);'
      'DECLARE VARIABLE OLDPIS       VARCHAR(5);'
      'DECLARE VARIABLE OLDPORTA     VARCHAR(3);'
      ''
      'DECLARE VARIABLE NEWTIPUSVIA  VARCHAR(4);'
      'DECLARE VARIABLE NEWNOMVIA    VARCHAR(50);'
      'DECLARE VARIABLE NEWNUMERO    VARCHAR(10);'
      'DECLARE VARIABLE NEWBLOC      VARCHAR(2);'
      'DECLARE VARIABLE NEWESCALA    VARCHAR(2);'
      'DECLARE VARIABLE NEWPIS       VARCHAR(5);'
      'DECLARE VARIABLE NEWPORTA     VARCHAR(3);'
      'BEGIN'
      ''
      ''
      '   IF (USER<>"REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      IF (NEW.BLOQUEIG = "N") THEN NEW.BLOQUEIG = NULL;'
      ''
      ''
      
        '      /* *******************************************************' +
        '************ */'
      
        '      /* ****************  ACTUALITZEM NOMCOMPLET  *************' +
        '************ */'
      
        '      /* *******************************************************' +
        '************ */'
      ''
      
        '      IF ((NEW.NOMBRE = '#39#39') OR (NEW.NOMBRE IS NULL) OR (NEW.APEL' +
        'LIDO1 = '#39#39') OR (NEW.APELLIDO1 IS NULL)) THEN EXCEPTION E_FILIACI' +
        'O_NOMPLE;'
      ''
      
        '      IF ((NEW.NOMBRE <> OLD. NOMBRE) OR (NEW.APELLIDO1 <> OLD.A' +
        'PELLIDO1) OR (NEW.APELLIDO2 <> OLD.APELLIDO2)) THEN'
      '      BEGIN'
      '            /*'
      
        '            IF ((NEW.NOMBRE    = '#39#39') OR (NEW.NOMBRE    IS NULL))' +
        ' THEN NOMBRE    = '#39'-'#39';    ELSE NOMBRE    = NEW.NOMBRE;'
      
        '            IF ((NEW.APELLIDO1 = '#39#39') OR (NEW.APELLIDO1 IS NULL))' +
        ' THEN APELLIDO1 = '#39'-'#39';    ELSE APELLIDO1 = NEW.APELLIDO1;'
      '            */'
      
        '            IF ((NEW.APELLIDO2 = '#39#39') OR (NEW.APELLIDO2 IS NULL))' +
        ' THEN NEW.APELLIDO2 = '#39'-'#39';'
      ''
      
        '            NEW.NOMCOMPLET = NEW.APELLIDO1 || '#39' '#39' || NEW.APELLID' +
        'O2 || '#39', '#39' || NEW.NOMBRE;'
      '      END;'
      ''
      ''
      
        '      /* *******************************************************' +
        '************ */'
      
        '      /* ****************  ACTUALITZEM ADRE'#199'A  *****************' +
        '************ */'
      
        '      /* *******************************************************' +
        '************ */'
      ''
      
        '      IF (OLD.TIPUSVIA IS NULL) THEN OLDTIPUSVIA = '#39#39';   ELSE OL' +
        'DTIPUSVIA = OLD.TIPUSVIA;'
      
        '      IF (OLD.NOMVIA   IS NULL) THEN OLDNOMVIA   = '#39#39';   ELSE OL' +
        'DNOMVIA   = OLD.NOMVIA;'
      
        '      IF (OLD.NUMERO   IS NULL) THEN OLDNUMERO   = '#39#39';   ELSE OL' +
        'DNUMERO   = OLD.NUMERO;'
      
        '      IF (OLD.BLOC     IS NULL) THEN OLDBLOC     = '#39#39';   ELSE OL' +
        'DBLOC     = OLD.BLOC;'
      
        '      IF (OLD.ESCALA   IS NULL) THEN OLDESCALA   = '#39#39';   ELSE OL' +
        'DESCALA   = OLD.ESCALA;'
      
        '      IF (OLD.PIS      IS NULL) THEN OLDPIS      = '#39#39';   ELSE OL' +
        'DPIS      = OLD.PIS;'
      
        '      IF (OLD.PORTA    IS NULL) THEN OLDPORTA    = '#39#39';   ELSE OL' +
        'DPORTA    = OLD.PORTA;'
      ''
      
        '      IF (NEW.TIPUSVIA IS NULL) THEN NEWTIPUSVIA = '#39#39';   ELSE NE' +
        'WTIPUSVIA = NEW.TIPUSVIA;'
      
        '      IF (NEW.NOMVIA   IS NULL) THEN NEWNOMVIA   = '#39#39';   ELSE NE' +
        'WNOMVIA   = NEW.NOMVIA;'
      
        '      IF (NEW.NUMERO   IS NULL) THEN NEWNUMERO   = '#39#39';   ELSE NE' +
        'WNUMERO   = NEW.NUMERO;'
      
        '      IF (NEW.BLOC     IS NULL) THEN NEWBLOC     = '#39#39';   ELSE NE' +
        'WBLOC     = NEW.BLOC;'
      
        '      IF (NEW.ESCALA   IS NULL) THEN NEWESCALA   = '#39#39';   ELSE NE' +
        'WESCALA   = NEW.ESCALA;'
      
        '      IF (NEW.PIS      IS NULL) THEN NEWPIS      = '#39#39';   ELSE NE' +
        'WPIS      = NEW.PIS;'
      
        '      IF (NEW.PORTA    IS NULL) THEN NEWPORTA    = '#39#39';   ELSE NE' +
        'WPORTA    = NEW.PORTA;'
      ''
      
        '      IF ((NEWTIPUSVIA <> OLDTIPUSVIA)  OR  (NEWNOMVIA <> OLDNOM' +
        'VIA)  OR  (NEWNUMERO <> OLDNUMERO)  OR  (NEWBLOC <> OLDBLOC)'
      
        '      OR  (NEWESCALA   <> OLDESCALA)    OR  (NEWPIS    <> OLDPIS' +
        ')     OR  (NEWPORTA  <> OLDPORTA)) THEN'
      '      BEGIN'
      '      '
      
        '            SELECT DIRECCION FROM P_FILIACIO_DIRECCION(:NEWTIPUS' +
        'VIA,'
      
        '                                                       :NEWNOMVI' +
        'A ,'
      
        '                                                       :NEWNUMER' +
        'O,'
      '                                                       :NEWBLOC,'
      
        '                                                       :NEWESCAL' +
        'A,'
      '                                                       :NEWPIS,'
      
        '                                                       :NEWPORTA' +
        ')'
      '            INTO NEW.ADRESA;'
      '      END;'
      '           '
      '      /* SI EL CAMP PENSIONISTA '#201'S NUL, EL POSEM BLANC */'
      '      IF (NEW.PENSIONIST IS NULL) THEN NEW.PENSIONIST = '#39#39';'
      ''
      '   END;'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'filiacio'
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
    Left = 232
    Top = 12
  end
  object Filiacio_BeforeI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE TEMPHIST INTEGER;'
      '  /*'
      '  DECLARE VARIABLE NOM     VARCHAR(20);'
      '  DECLARE VARIABLE COGNOM1 VARCHAR(20);'
      '  DECLARE VARIABLE COGNOM2 VARCHAR(20);'
      '  */'
      '  DECLARE VARIABLE TIPUSPRESTA  INTEGER;'
      '  DECLARE VARIABLE ULTIMAPRESTA INTEGER;'
      ''
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /* NEW.BLOQUEIG = NULL; */'
      '      NEW.C_ClasAnat = -1;'
      ''
      ''
      '      /* ************************************************* */'
      '      /* ************ COMPOSEM EL NOM COMPLET ************ */'
      '      /* ************************************************* */'
      ''
      '      /*'
      
        '      IF ((NEW.NOMBRE    = '#39#39') OR (NEW.NOMBRE    IS NULL)) THEN ' +
        'NEW.NOMBRE = '#39'-'#39';'
      
        '      IF ((NEW.APELLIDO1 = '#39#39') OR (NEW.APELLIDO1 IS NULL)) THEN ' +
        'NEW.APELLIDO1 = '#39'-'#39';'
      '      */'
      
        '      IF ((NEW.NOMBRE = '#39#39') OR (NEW.NOMBRE IS NULL) OR (NEW.APEL' +
        'LIDO1 = '#39#39') OR (NEW.APELLIDO1 IS NULL)) THEN EXCEPTION E_FILIACI' +
        'O_NOMPLE;'
      '      '
      
        '      IF ((NEW.APELLIDO2 = '#39#39') OR (NEW.APELLIDO2 IS NULL)) THEN ' +
        'NEW.APELLIDO2 = '#39'-'#39';'
      ''
      
        '      NEW.NOMCOMPLET = NEW.APELLIDO1 || '#39' '#39' || NEW.APELLIDO2 || ' +
        #39', '#39' || NEW.NOMBRE;'
      ''
      ''
      '      /* ************************************************* */'
      '      /* ********** ASSIGNEM N'#218'MERO D'#39'HIST'#210'RIA *********** */'
      '      /* ************************************************* */'
      ''
      '      IF (NEW.NUM_HIST IS NULL) THEN'
      '      BEGIN'
      '            SELECT NEWCODE'
      '            FROM P_FILIACIO_ASSIGNANUMERO'
      '            INTO :TEMPHIST;'
      '      '
      '            NEW.NUM_HIST = TEMPHIST;'
      '      END;'
      '      '
      ''
      '      /* ************************************************* */'
      '      /* *************** COMPOSEM L'#39'ADRE'#199'A *************** */'
      '      /* ************************************************* */'
      ''
      '      SELECT DIRECCION'
      
        '      FROM   P_FILIACIO_DIRECCION(NEW.TIPUSVIA, NEW.NOMVIA, NEW.' +
        'NUMERO, NEW.BLOC, NEW.ESCALA, NEW.PIS, NEW.PORTA)'
      '      INTO   NEW.ADRESA;'
      '      '
      '      '
      '     /* SI EL CAMP PENSIONISTA '#201'S NUL, EL POSEM BLANC */'
      '     IF (NEW.PENSIONIST IS NULL) THEN NEW.PENSIONIST = '#39#39';'
      '     '
      '   END;'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'Filiacio'
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
    ModiFecha = 37194.7325096065
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 93
    Top = 12
  end
  object TractCMB: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Generator = 'CONTATRACTAMENT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Hist.'
        NombreDB = 'C_Historia'
        Longitud = 5
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data alta'
        NombreDB = 'Data_Alta'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge alta'
        NombreDB = 'C_MetgeAlta'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Durada'
        NombreDB = 'Durada'
        Longitud = 4
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu'
        NombreDB = 'C_Motiu'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat informe alta'
        NombreDB = 'EstatInformeAlta'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi diagn'#242'stic alta'
        NombreDB = 'C_DiagnosticAlta'
        Longitud = 15
        Consulta = 'IcdAlta'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal diagn'#242'stic alta'
        NombreDB = 'N_DiagnosticAlta'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Subcodi diagn'#242'stic alta'
        NombreDB = 'G_DiagnosticAlta'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VersioCIM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM SubCodi'
        NombreDB = 'VersioCIM_G'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Confian'#231'a diagn'#242'stic principal alta'
        NombreDB = 'ConfiancaDPA'
        Longitud = 10
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Codificat - revisat'
        NombreDB = 'Codificat_Revisat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Si valor='#39'S'#39', es pot enviar al CatSalut'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Tractament'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'IcdAlta'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi diagn'#242'stic alta')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi diagn'#242'stic alta')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end>
    Nombre = 'Tractaments_CMB'
    NombreTabla = 'Tractaments'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Tractament'
      'N'#250'm. Hist.'
      'Prestaci'#243
      'Data ingr'#233's'
      'Coordinador'
      'Data alta'
      'Metge alta'
      'Durada'
      'Motiu'
      'Estat informe alta'
      'Codi diagn'#242'stic alta'
      'Literal diagn'#242'stic alta'
      'Subcodi diagn'#242'stic alta'
      'Versi'#243' CIM'
      'Versi'#243' CIM SubCodi'
      'Confian'#231'a diagn'#242'stic principal alta')
    IndiceVer = 'Tractament'
    Navegar = False
    Nivel = 7
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 37201.7158259259
    Left = 933
    Top = 492
  end
  object Alergies: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Hist.'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK Filiacio'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'L'#237'nia'
        NombreDB = 'Linia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'Medicamentosa'
        NombreDB = 'Medicamentosa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'Indica si l'#39'al'#183'l'#232'rgia '#233's medicamentosa o no'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codificaci'#243
        NombreDB = 'Codificacio'
        Longitud = 2
        Consulta = 'codificacio'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0: no conegudes, 1: codifica farm'#224'cia, 2: codificada'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi al'#183'lergogen'
        NombreDB = 'C_Alergogen'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'alergogen'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'FK Alergogens'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'Descripcio'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'si no codificada'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari'
        NombreDB = 'Comentari'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'VB'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        Longitud = 5
        Consulta = 'usuari1'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data baixa'
        NombreDB = 'Data_B'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari baixa'
        NombreDB = 'Usuari_B'
        Longitud = 5
        Consulta = 'usuari2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Estat resident'
        NombreDB = 'Estat_R'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'VB'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data resident'
        NombreDB = 'Data_R'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari resident'
        NombreDB = 'Usuari_R'
        Longitud = 5
        Consulta = 'usuari3'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Farm'#224'cia'
        NombreDB = 'Data_F'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari Farm'#224'cia'
        NombreDB = 'Usuari_F'
        Longitud = 5
        Consulta = 'usuari4'
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
          'N'#250'm. Hist.'
          'L'#237'nia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'hist'
        NombreDB = 'hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist.')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'alergogen'
        NombreDB = 'alergogen'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi al'#183'lergogen')
        Tipo = tiForaneo
        ForaneoDic = wDataProductes.Alergogens
        ForaneoCampos.Strings = (
          'Codi al'#183'lergogen')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'medicamentosa'
        NombreDB = 'medicamentosa'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Medicamentosa')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'codificacio'
        NombreDB = 'codificacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codificaci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'estat'
        NombreDB = 'estat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Estat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'data'
        NombreDB = 'data'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usuari1'
        NombreDB = 'usuari1'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usuari2'
        NombreDB = 'usuari2'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari baixa')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usuari3'
        NombreDB = 'usuari3'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari resident')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usuari4'
        NombreDB = 'usuari4'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari Farm'#224'cia')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ordre'
        NombreDB = 'ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist.'
          'Estat'
          'Medicamentosa')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end>
    Consultas = <
      item
        Nombre = 'hist'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'N'#250'm. Hist.')
        CopiarOrigen.Strings = (
          'N'#250'm. Hist.')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'usuari1'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari')
        CopiarOrigen.Strings = (
          'Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'usuari2'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari baixa')
        CopiarOrigen.Strings = (
          'Usuari baixa')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'usuari3'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari resident')
        CopiarOrigen.Strings = (
          'Usuari resident')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'usuari4'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari Farm'#224'cia')
        CopiarOrigen.Strings = (
          'Usuari Farm'#224'cia')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'alergogen'
        Master = wDataProductes.Alergogens
        BuscaOrigen.Strings = (
          'Codi al'#183'lergogen')
        CopiarOrigen.Strings = (
          'Codi al'#183'lergogen')
        CopiarMaster.Strings = (
          'Codi al'#183'lergogen')
        BuscaMaster.Strings = (
          'Codi al'#183'lergogen')
      end
      item
        Nombre = 'codificacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codificaci'#243)
        CopiarOrigen.Strings = (
          'Codificaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ALRG.CODIFICACIO'#39
      end>
    Nombre = 'Alergies'
    NombreTabla = 'Alergies'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist.'
      'L'#237'nia'
      'Medicamentosa'
      'Codificaci'#243
      'Codi al'#183'lergogen'
      'Descripci'#243
      'Comentari'
      'Estat')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 29
    Top = 122
  end
  object PesMig: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PM'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (METGE       VARCHAR(5),'
      '         N_METGE     VARCHAR(20),'
      '         C_HISTORIA  INTEGER,'
      '         PACIENT     VARCHAR(80),'
      '         C_PRESTACIO VARCHAR(4),'
      '         TRACTAMENT  INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA   DATE,'
      '         PESMIGCMG   DOUBLE PRECISION,'
      '         PESMIGDRG   DOUBLE PRECISION,'
      '         RIC         VARCHAR(15),'
      '         N_RIC       VARCHAR(100),'
      '         GLF         VARCHAR(15),'
      '         N_GLF       VARCHAR(100)'
      '/*         COMORBA     VARCHAR(15),'
      '         COMORBB     VARCHAR(15),'
      '         COMORBC     VARCHAR(15),'
      '         COMORBD     VARCHAR(15),'
      '         COMORBE     VARCHAR(15),'
      '         COMORBF     VARCHAR(15),'
      '         COMORBG     VARCHAR(15),'
      '         COMORBH     VARCHAR(15),'
      '         COMORBI     VARCHAR(15),'
      '         COMORBJ     VARCHAR(15),'
      '         COMPLICAA   VARCHAR(15),'
      '         COMPLICAB   VARCHAR(15),'
      '         COMPLICAC   VARCHAR(15),'
      '         COMPLICAD   VARCHAR(15),'
      '         COMPLICAE   VARCHAR(15),'
      '         COMPLICAF   VARCHAR(15)  */'
      '         )'
      'AS'
      ' DECLARE VARIABLE SUMA         DOUBLE PRECISION;'
      ' DECLARE VARIABLE SUMADRG      DOUBLE PRECISION;'
      ' DECLARE VARIABLE SUMATOT      DOUBLE PRECISION;'
      ' DECLARE VARIABLE SUMATOTDRG   DOUBLE PRECISION;'
      ' DECLARE VARIABLE QUANTS       INTEGER;'
      ' DECLARE VARIABLE QUANTSTOT    INTEGER;'
      ' DECLARE VARIABLE QUANTSTOTDRG INTEGER;'
      ' DECLARE VARIABLE PRIMER       SMALLINT;'
      ' DECLARE VARIABLE CODI         VARCHAR(5);'
      ' DECLARE VARIABLE MET          VARCHAR(20);'
      ' DECLARE VARIABLE CONTA_DIAG   INTEGER;'
      ' DECLARE VARIABLE AUX          INTEGER;'
      ' DECLARE VARIABLE PROCES       INTEGER;'
      ' DECLARE VARIABLE C_DIAGNOSTIC VARCHAR(15);'
      ' DECLARE VARIABLE DESTI        SMALLINT;'
      'BEGIN'
      ''
      
        '  SUMATOT=0; SUMA=0; SUMATOTDRG=0; SUMADRG=0; QUANTSTOT=0; QUANT' +
        'S=0; QUANTSTOTDRG=0;'
      
        '  FOR SELECT T.C_COORDINADOR, M.METGE, SUM(T.PM), SUM(T.PMDRG) F' +
        'ROM TRACTAMENTS T'
      '  LEFT JOIN METGES M ON T.C_COORDINADOR=M.CODI'
      
        '  WHERE (T.DATA_ALTA BETWEEN :DATAI AND :DATAF) AND ((T.PM >= 0)' +
        ' OR (T.PMDRG >= 0))'
      '  GROUP BY T.C_COORDINADOR, M.METGE'
      '  INTO :METGE, :N_METGE, :SUMA, :SUMADRG'
      '  DO BEGIN'
      '      PRIMER=0; MET=N_METGE; CODI=METGE;'
      '      IF (SUMA IS NULL)    THEN SUMA=0;'
      '      IF (SUMADRG IS NULL) THEN SUMADRG=0;'
      '      '
      
        '      FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, T.DATA_INGRES, T.DA' +
        'TA_ALTA, T.PM , T.PMDRG,'
      
        '                 T.C_PRESTACIO, T.C_TRACTAMENT, T.C_PROCES, T.C_' +
        'DESTINACIO, F.RIC, F.GLF'
      '      FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '      WHERE (T.DATA_ALTA BETWEEN :DATAI AND :DATAF) AND ((T.PM >' +
        '= 0) OR (T.PMDRG >= 0))'
      '      AND   (T.C_COORDINADOR=:METGE)'
      
        '      ORDER BY T.C_HISTORIA, T.DATA_INGRES, T.DATA_ALTA, T.C_PRE' +
        'STACIO'
      
        '      INTO :C_HISTORIA, :PACIENT, :DATA_INGRES, :DATA_ALTA, :PES' +
        'MIGCMG, :PESMIGDRG, :C_PRESTACIO, :TRACTAMENT,'
      '           :PROCES, :DESTI, :RIC, :GLF'
      '      DO BEGIN'
      
        '          /* COMORBILITATS - Escala 51 item 416: valor 2-estat v' +
        'egetatiu. Pot tenir m'#233's d'#39'una entrada. Agafem la primera no anul' +
        #183'lada entrada.'
      '          AUX=0;'
      
        '          SELECT L.D_ITEM FROM ESCALESLIN L JOIN ESCALESCAP C ON' +
        ' L.CLAU = C.CLAU AND C.ANULAT='#39'N'#39
      
        '          WHERE L.C_ITEM=416 AND C.C_TRACTAMENT=:TRACTAMENT ORDE' +
        'R BY L.CLAU ROWS 1 INTO :AUX;'
      ''
      
        '          -- si es posa 1 a COMA_VEGETAL, s'#39'ha de lligar a un IC' +
        'D a les comorbiditats --'
      '          CONTA_DIAG=1;'
      
        '          COMORBA=NULL;COMORBB=NULL;COMORBC=NULL;COMORBD=NULL;CO' +
        'MORBE=NULL;COMORBF=NULL;COMORBG=NULL;COMORBH=NULL;COMORBI=NULL;C' +
        'OMORBJ=NULL;'
      '          IF (AUX=2) THEN'
      '          BEGIN'
      '              COMORBA='#39'780.03'#39';'
      '              CONTA_DIAG=CONTA_DIAG +1;'
      '          END;'
      ''
      '          FOR SELECT DISTINCT C_DIAGNOSTIC FROM DIAGNOSTICS D'
      
        '          JOIN TRACTAMENTS T ON D.C_TRACTAMENT=T.C_TRACTAMENT AN' +
        'D T.C_PROCES=:PROCES'
      '          WHERE C_DIAGNOSTIC <> '#39#39' AND CLASSECMB='#39'K'#39
      '          ORDER BY D.C_TRACTAMENT DESC, D.ORDRE'
      '          INTO :C_DIAGNOSTIC'
      '          DO BEGIN'
      
        '              IF (CONTA_DIAG=1)                               TH' +
        'EN BEGIN COMORBA = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      
        '              IF ((CONTA_DIAG=2) AND (COMORBA<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBB = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=3) AND (COMORBA<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBB<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBC = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=4) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBC<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBD = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=5) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBD<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBE = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=6) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      '                                 AND (COMORBD<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBE<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBF = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=7) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      '                                 AND (COMORBD<>C_DIAGNOSTIC)'
      '                                 AND (COMORBE<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBF<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBG = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=8) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      '                                 AND (COMORBD<>C_DIAGNOSTIC)'
      '                                 AND (COMORBE<>C_DIAGNOSTIC)'
      '                                 AND (COMORBF<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBG<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBH = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=9) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      '                                 AND (COMORBD<>C_DIAGNOSTIC)'
      '                                 AND (COMORBE<>C_DIAGNOSTIC)'
      '                                 AND (COMORBF<>C_DIAGNOSTIC)'
      '                                 AND (COMORBG<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBH<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBI = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=10) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                  AND (COMORBB<>C_DIAGNOSTIC)'
      '                                  AND (COMORBC<>C_DIAGNOSTIC)'
      '                                  AND (COMORBD<>C_DIAGNOSTIC)'
      '                                  AND (COMORBE<>C_DIAGNOSTIC)'
      '                                  AND (COMORBF<>C_DIAGNOSTIC)'
      '                                  AND (COMORBG<>C_DIAGNOSTIC)'
      '                                  AND (COMORBH<>C_DIAGNOSTIC)'
      
        '                                  AND (COMORBI<>C_DIAGNOSTIC)) T' +
        'HEN BEGIN COMORBJ = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '          CONTA_DIAG=CONTA_DIAG +1; END;'
      '          END'
      ''
      '          IF (CONTA_DIAG<10) THEN'
      '          BEGIN'
      '            FOR SELECT DISTINCT G_DIAGNOSTIC FROM DIAGNOSTICS D'
      
        '            JOIN TRACTAMENTS T ON D.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T AND T.C_PROCES = :PROCES'
      '            WHERE G_DIAGNOSTIC <> '#39#39' AND CLASSE='#39'K'#39
      '            ORDER BY D.C_TRACTAMENT DESC, D.ORDRE'
      '            INTO :C_DIAGNOSTIC'
      '            DO BEGIN'
      
        '              IF (CONTA_DIAG=1)                               TH' +
        'EN BEGIN COMORBA = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      
        '              IF ((CONTA_DIAG=2) AND (COMORBA<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBB = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=3) AND (COMORBA<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBB<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBC = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=4) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBC<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBD = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=5) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBD<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBE = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=6) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      '                                 AND (COMORBD<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBE<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBF = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=7) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      '                                 AND (COMORBD<>C_DIAGNOSTIC)'
      '                                 AND (COMORBE<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBF<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBG = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=8) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      '                                 AND (COMORBD<>C_DIAGNOSTIC)'
      '                                 AND (COMORBE<>C_DIAGNOSTIC)'
      '                                 AND (COMORBF<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBG<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBH = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=9) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                 AND (COMORBB<>C_DIAGNOSTIC)'
      '                                 AND (COMORBC<>C_DIAGNOSTIC)'
      '                                 AND (COMORBD<>C_DIAGNOSTIC)'
      '                                 AND (COMORBE<>C_DIAGNOSTIC)'
      '                                 AND (COMORBF<>C_DIAGNOSTIC)'
      '                                 AND (COMORBG<>C_DIAGNOSTIC)'
      
        '                                 AND (COMORBH<>C_DIAGNOSTIC)) TH' +
        'EN BEGIN COMORBI = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '         CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=10) AND (COMORBA<>C_DIAGNOSTIC)'
      '                                  AND (COMORBB<>C_DIAGNOSTIC)'
      '                                  AND (COMORBC<>C_DIAGNOSTIC)'
      '                                  AND (COMORBD<>C_DIAGNOSTIC)'
      '                                  AND (COMORBE<>C_DIAGNOSTIC)'
      '                                  AND (COMORBF<>C_DIAGNOSTIC)'
      '                                  AND (COMORBG<>C_DIAGNOSTIC)'
      '                                  AND (COMORBH<>C_DIAGNOSTIC)'
      
        '                                  AND (COMORBI<>C_DIAGNOSTIC)) T' +
        'HEN BEGIN COMORBJ = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '          CONTA_DIAG=CONTA_DIAG +1; END;'
      '            END'
      '          END;'
      ''
      '          /* COMPLICACIONS'
      '          CONTA_DIAG=1;'
      
        '          COMPLICAA=NULL; COMPLICAB=NULL; COMPLICAC=NULL; COMPLI' +
        'CAD=NULL; COMPLICAE=NULL; COMPLICAF=NULL;'
      '          IF (DESTI=15) THEN'
      '          BEGIN'
      '              COMPLICAA='#39'V64.2'#39';'
      '              CONTA_DIAG=CONTA_DIAG +1;'
      '          END;'
      ''
      '          FOR SELECT DISTINCT D.C_DIAGNOSTIC FROM DIAGNOSTICS D'
      
        '          JOIN TRACTAMENTS T ON D.C_TRACTAMENT = T.C_TRACTAMENT ' +
        'AND T.C_PROCES = :PROCES'
      
        '          WHERE D.TIPUS='#39'A'#39' AND D.C_DIAGNOSTIC <> '#39#39' AND CLASSEC' +
        'MB='#39'C'#39
      '          ORDER BY D.C_TRACTAMENT DESC, D.ORDRE'
      '          INTO :C_DIAGNOSTIC'
      '          DO BEGIN'
      
        '              IF (CONTA_DIAG=1)                                 ' +
        'THEN BEGIN COMPLICAA = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '           CONTA_DIAG=CONTA_DIAG +1; END;'
      
        '              IF ((CONTA_DIAG=2) AND (COMPLICAA<>C_DIAGNOSTIC)) ' +
        'THEN BEGIN COMPLICAB = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '           CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=3) AND (COMPLICAA<>C_DIAGNOSTIC)'
      
        '                                 AND (COMPLICAB<>C_DIAGNOSTIC)) ' +
        'THEN BEGIN COMPLICAC = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '           CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=4) AND (COMPLICAA<>C_DIAGNOSTIC)'
      '                                 AND (COMPLICAB<>C_DIAGNOSTIC)'
      
        '                                 AND (COMPLICAC<>C_DIAGNOSTIC)) ' +
        'THEN BEGIN COMPLICAD = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '           CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=5) AND (COMPLICAA<>C_DIAGNOSTIC)'
      '                                 AND (COMPLICAB<>C_DIAGNOSTIC)'
      '                                 AND (COMPLICAC<>C_DIAGNOSTIC)'
      
        '                                 AND (COMPLICAD<>C_DIAGNOSTIC)) ' +
        'THEN BEGIN COMPLICAE = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '           CONTA_DIAG=CONTA_DIAG +1; END;'
      '              IF ((CONTA_DIAG=6) AND (COMPLICAA<>C_DIAGNOSTIC)'
      '                                 AND (COMPLICAB<>C_DIAGNOSTIC)'
      '                                 AND (COMPLICAC<>C_DIAGNOSTIC)'
      '                                 AND (COMPLICAD<>C_DIAGNOSTIC)'
      
        '                                 AND (COMPLICAE<>C_DIAGNOSTIC)) ' +
        'THEN BEGIN COMPLICAF = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '           CONTA_DIAG=CONTA_DIAG +1; END;'
      '          END;'
      '          IF (CONTA_DIAG<6) THEN'
      '          BEGIN'
      
        '              FOR SELECT DISTINCT D.G_DIAGNOSTIC FROM DIAGNOSTIC' +
        'S D'
      
        '              JOIN TRACTAMENTS T ON D.C_TRACTAMENT=T.C_TRACTAMEN' +
        'T AND T.C_PROCES=:PROCES'
      
        '              WHERE D.G_DIAGNOSTIC <>'#39#39' AND D.CLASSE='#39'C'#39' AND D.T' +
        'IPUS='#39'A'#39
      '              ORDER BY D.C_TRACTAMENT DESC, D.ORDRE'
      '              INTO :C_DIAGNOSTIC'
      '              DO BEGIN'
      
        '                  IF (CONTA_DIAG=1)                             ' +
        '    THEN BEGIN COMPLICAA = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '               CONTA_DIAG=CONTA_DIAG +1; END;'
      
        '                  IF ((CONTA_DIAG=2) AND (COMPLICAA<>C_DIAGNOSTI' +
        'C)) THEN BEGIN COMPLICAB = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '               CONTA_DIAG=CONTA_DIAG +1; END;'
      
        '                  IF ((CONTA_DIAG=3) AND (COMPLICAA<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAB<>C_DIAGNOSTI' +
        'C)) THEN BEGIN COMPLICAC = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '               CONTA_DIAG=CONTA_DIAG +1; END;'
      
        '                  IF ((CONTA_DIAG=4) AND (COMPLICAA<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAB<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAC<>C_DIAGNOSTI' +
        'C)) THEN BEGIN COMPLICAD = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '               CONTA_DIAG=CONTA_DIAG +1; END;'
      
        '                  IF ((CONTA_DIAG=5) AND (COMPLICAA<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAB<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAC<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAD<>C_DIAGNOSTI' +
        'C)) THEN BEGIN COMPLICAE = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '               CONTA_DIAG=CONTA_DIAG +1; END;'
      
        '                  IF ((CONTA_DIAG=6) AND (COMPLICAA<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAB<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAC<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAD<>C_DIAGNOSTI' +
        'C)'
      
        '                                     AND (COMPLICAE<>C_DIAGNOSTI' +
        'C)) THEN BEGIN COMPLICAF = C_DIAGNOSTIC;'
      
        '                                                                ' +
        '               CONTA_DIAG=CONTA_DIAG +1; END;'
      '              END;'
      '          END;   */'
      ''
      
        '          IF (RIC IS NOT NULL) THEN SELECT N_RIC FROM RIC WHERE ' +
        'RIC=:RIC INTO :N_RIC;'
      
        '          IF (GLF IS NOT NULL) THEN SELECT N_GLF FROM GLF WHERE ' +
        'GLF=:GLF INTO :N_GLF;'
      ''
      '          SUSPEND;'
      '          IF (PRIMER=0) THEN'
      '          BEGIN'
      '              METGE='#39#39'; N_METGE='#39#39';'
      '              PRIMER=1;'
      '          END;'
      '      END;'
      
        '      PACIENT='#39'MITJANA '#39'||MET; C_HISTORIA=NULL; C_PRESTACIO='#39#39'; ' +
        'DATA_INGRES=NULL; DATA_ALTA=NULL; RIC='#39#39'; GLF='#39#39'; N_RIC='#39#39'; N_GL' +
        'F='#39#39';'
      '      TRACTAMENT=NULL;'
      
        '      /*COMORBA=NULL;COMORBB=NULL;COMORBC=NULL;COMORBD=NULL;COMO' +
        'RBE=NULL;COMORBF=NULL;COMORBG=NULL;COMORBH=NULL;COMORBI=NULL;COM' +
        'ORBJ=NULL;'
      
        '      COMPLICAA=NULL;COMPLICAB=NULL;COMPLICAC=NULL;COMPLICAD=NUL' +
        'L;COMPLICAE=NULL;COMPLICAF=NULL;*/'
      ''
      
        '      SELECT COUNT(*) FROM TRACTAMENTS T WHERE (T.DATA_ALTA BETW' +
        'EEN :DATAI AND :DATAF) AND (T.PM >= 0) AND (T.C_COORDINADOR=:COD' +
        'I)'
      '      INTO :QUANTS;'
      '      IF (QUANTS IS NULL) THEN QUANTS=0;'
      '      IF (QUANTS>0) THEN PESMIGCMG=F_DIVISA(SUMA/QUANTS,4);'
      '                    ELSE PESMIGCMG=0;'
      '      QUANTSTOT=QUANTSTOT+QUANTS;'
      '      SUMATOT=SUMATOT+SUMA;'
      '      '
      
        '      SELECT COUNT(*) FROM TRACTAMENTS T WHERE (T.DATA_ALTA BETW' +
        'EEN :DATAI AND :DATAF) AND (T.PMDRG >= 0) AND (T.C_COORDINADOR=:' +
        'CODI)'
      '      INTO :QUANTS;'
      '      IF (QUANTS IS NULL) THEN QUANTS=0;'
      '      IF (QUANTS>0) THEN PESMIGDRG=F_DIVISA(SUMADRG/QUANTS,4);'
      '                    ELSE PESMIGDRG=0;'
      '      QUANTSTOTDRG=QUANTSTOTDRG+QUANTS;'
      '      SUMATOTDRG=SUMATOTDRG+SUMADRG;'
      ''
      '      SUSPEND;'
      '      SUMA=0; SUMADRG=0; QUANTS=0;'
      '  END;'
      '  IF ((SUMATOT>0) OR (SUMATOTDRG>0)) THEN'
      '  BEGIN'
      '      METGE='#39#39'; N_METGE='#39'MITJANA'#39'; PACIENT='#39#39'; TRACTAMENT=NULL;'
      
        '      C_HISTORIA=NULL; C_PRESTACIO='#39#39'; DATA_INGRES=NULL; DATA_AL' +
        'TA=NULL; RIC='#39#39'; GLF='#39#39'; N_RIC='#39#39'; N_GLF='#39#39';'
      
        '      IF (QUANTSTOT>0)    THEN PESMIGCMG=F_DIVISA(SUMATOT/QUANTS' +
        'TOT,4);'
      '                          ELSE PESMIGCMG=0;'
      
        '      IF (QUANTSTOTDRG>0) THEN PESMIGDRG=F_DIVISA(SUMATOTDRG/QUA' +
        'NTSTOTDRG,4);'
      '                          ELSE PESMIGDRG=0;'
      '      SUSPEND;'
      '  END;'
      'END')
    Dic1 = Tractaments
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
    Left = 978
    Top = 544
  end
  object P_Alergies_Comprova: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Comprova'
    ForceNombreDB = False
    Body.Strings = (
      '(TOTS CHAR(1))'
      'RETURNS (C_HISTORIA INTEGER,'
      '         ALERGIES_FILIACIO VARCHAR(250),'
      '         ALERGIES_COMPOSAT VARCHAR(250))'
      'AS'
      '  DECLARE VARIABLE ALERGIA       VARCHAR(50);'
      '  DECLARE VARIABLE MEDICAMENTOSA VARCHAR(1);'
      '  DECLARE VARIABLE CODIFICACIO   SMALLINT;'
      '  DECLARE VARIABLE COMENTARI     VARCHAR(250);'
      '  DECLARE VARIABLE ALERGIES_M    VARCHAR(250);'
      '  DECLARE VARIABLE ALERGIES_A    VARCHAR(250);'
      '  DECLARE VARIABLE COMENTARI_M    VARCHAR(250);'
      '  DECLARE VARIABLE COMENTARI_A    VARCHAR(250);'
      ''
      'BEGIN'
      
        '      /* Comprovaque el literal de Filiaci'#243' es correspongui amb ' +
        'les al'#183'l'#232'rgies codificades */'
      '      '
      '      FOR SELECT DISTINCT C_HISTORIA'
      '            FROM ALERGIES'
      '           INTO :C_HISTORIA'
      '      DO BEGIN'
      '            SELECT ALERGIES'
      '              FROM FILIACIO'
      '             WHERE NUM_HIST = :C_HISTORIA'
      '             INTO :ALERGIES_FILIACIO;'
      '            '
      '            ALERGIES_COMPOSAT = '#39#39';'
      '            ALERGIA = '#39#39';'
      '            MEDICAMENTOSA = '#39#39';'
      '            ALERGIES_M = '#39#39';'
      '            ALERGIES_A = '#39#39';'
      '            COMENTARI_M = '#39#39';'
      '            COMENTARI_A = '#39#39';'
      '            '
      
        '            FOR SELECT DESCRIPCIO, MEDICAMENTOSA, CODIFICACIO, C' +
        'OMENTARI'
      '                  FROM ALERGIES'
      '                 WHERE C_HISTORIA = :C_HISTORIA'
      '                   AND ESTAT = '#39'V'#39
      '                 ORDER BY MEDICAMENTOSA DESC, CODIFICACIO'
      
        '                 INTO :ALERGIA, :MEDICAMENTOSA, :CODIFICACIO, :C' +
        'OMENTARI'
      '            DO BEGIN'
      '                  IF (ALERGIA   IS NULL) THEN ALERGIA   = '#39#39';'
      '                  IF (COMENTARI IS NULL) THEN COMENTARI = '#39#39';'
      ''
      '                  IF (MEDICAMENTOSA = '#39'S'#39') THEN'
      '                  BEGIN'
      
        '                        IF (ALERGIES_M <> '#39#39') THEN ALERGIES_M = ' +
        'ALERGIES_M || '#39', '#39' || ALERGIA;'
      
        '                                              ELSE ALERGIES_M = ' +
        'ALERGIA;'
      ''
      
        '                        IF (CODIFICACIO = 0)  THEN COMENTARI_M =' +
        ' COMENTARI;'
      '                  END;'
      '                  '
      '                  ELSE BEGIN'
      
        '                        IF (ALERGIES_A <> '#39#39') THEN ALERGIES_A = ' +
        'ALERGIES_A || '#39', '#39' || ALERGIA;'
      
        '                                              ELSE ALERGIES_A = ' +
        'ALERGIA;'
      ''
      
        '                        IF (CODIFICACIO = 0)  THEN COMENTARI_A =' +
        ' COMENTARI;'
      '                  END;'
      '            END;'
      '            '
      '            '
      '            COMENTARI = '#39#39';'
      '            '
      
        '            /* Si hi ha comentaris de "no conegudes"  (=> hi ha ' +
        'al'#183'l'#232'rgies no conegudes): */'
      '            if ((COMENTARI_M <> '#39#39') or (COMENTARI_A <> '#39#39')) then'
      '            begin'
      
        '                  /* Si s'#243'n totes no conegudes => concatenem com' +
        'entaris */'
      
        '                  if ((ALERGIES_M = '#39'NO CONEGUDES'#39') and (ALERGIE' +
        'S_A = '#39'NO CONEGUDES'#39')) then'
      '                  begin'
      '                        if (COMENTARI_A <> '#39#39') then'
      '                        begin'
      
        '                            if (COMENTARI_M <> '#39#39') then COMENTAR' +
        'I = COMENTARI_M || '#39', '#39' || COMENTARI_A;'
      
        '                                                   else COMENTAR' +
        'I = COMENTARI_A;'
      '                        end'
      '                        else COMENTARI = COMENTARI_M;'
      '                        '
      
        '                        ALERGIES_COMPOSAT = '#39'NO CONEGUDES'#39' || '#39' ' +
        '('#39' || COMENTARI || '#39')'#39';'
      '                  end'
      ''
      
        '                  /* Si nom'#233's med. no conegudes => Mostrem comen' +
        'tari med. + altres al'#183'lergies */'
      
        '                  else if (COMENTARI_M <> '#39#39') then ALERGIES_COMP' +
        'OSAT = COMENTARI_M || '#39'. '#39' || ALERGIES_A;'
      ''
      
        '                  /* Si nom'#233's altres no conegudes => Mostrem al'#183 +
        'l'#232'rgies med. + comentari altres */'
      
        '                  else if (COMENTARI_A <> '#39#39') then ALERGIES_COMP' +
        'OSAT = ALERGIES_M || '#39'. '#39' || COMENTARI_A;'
      '            end'
      '            '
      '            /* Altrament, composem nom'#233's les al'#183'l'#232'rgies */'
      '            else begin'
      ''
      
        '                  IF      (ALERGIES_M = '#39'NO CONEGUDES'#39') THEN ALE' +
        'RGIES_COMPOSAT = ALERGIES_A;'
      
        '                  ELSE IF (ALERGIES_A = '#39'NO CONEGUDES'#39') THEN ALE' +
        'RGIES_COMPOSAT = ALERGIES_M;'
      
        '                                                        ELSE ALE' +
        'RGIES_COMPOSAT = ALERGIES_M ||'#39', '#39' || ALERGIES_A;'
      '                                      '
      
        '                  IF (ALERGIES_COMPOSAT = '#39#39') THEN ALERGIES_COMP' +
        'OSAT = '#39'NO CONEGUDES'#39';'
      '            end'
      '            '
      '            '
      
        '            IF ((UPPER(ALERGIES_COMPOSAT) <> UPPER(ALERGIES_FILI' +
        'ACIO)) OR (TOTS = '#39'S'#39')) THEN SUSPEND;'
      '      END;'
      'END')
    Dic1 = Alergies
    Dic1Name = 'Alergies'
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
    Left = 188
    Top = 122
  end
  object ControlNPT: TDic
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
      end
      item
        Aplica = kcFecha
        Nombre = 'Data control'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus control'
        NombreDB = 'TIPUS'
        Longitud = 40
        Consulta = 'CONTROL'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari '#250'ltim canvi'
        NombreDB = 'C_USUARI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltim canvi'
        NombreDB = 'DATA_MODI'
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
          'Identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Tract'
        NombreDB = 'Tract'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'CONTROL'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus control')
        CopiarOrigen.Strings = (
          'Tipus control')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'NPT.CONTROL'#39
      end>
    Nombre = 'ControlNPT'
    NombreTabla = 'ControlNPT'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Hist'#242'ria cl'#237'nica'
      'Tractament'
      'Data control'
      'Tipus control'
      'Usuari '#250'ltim canvi'
      'Data '#250'ltim canvi')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 320
    Top = 608
  end
  object ContinuaNPT: TDic
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
      end
      item
        Aplica = kcMODELS
        Nombre = 'Continu'#239'tat'
        NombreDB = 'CONTINUITAT'
        Longitud = 40
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        Consulta = 'CONTINUA'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari '#250'ltim canvi'
        NombreDB = 'C_USUARI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltim canvi'
        NombreDB = 'DATA_MODI'
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
          'Identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Tract'
        NombreDB = 'Tract'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'CONTINUA'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Continu'#239'tat')
        CopiarOrigen.Strings = (
          'Continu'#239'tat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'NPT.CONTINUITAT'#39
      end>
    Nombre = 'ContinuaNPT'
    NombreTabla = 'ContinuaNPT'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Hist'#242'ria cl'#237'nica'
      'Tractament'
      'Continu'#239'tat'
      'Usuari '#250'ltim canvi'
      'Data '#250'ltim canvi')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 384
    Top = 608
  end
  object ControlNPT_Init: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Init'
    ForceNombreDB = False
    Body.Strings = (
      '(HIST INTEGER)'
      'RETURNS (HISTORIA     INTEGER,'
      '         TRACTAMENT   INTEGER,'
      '         DATA_INGRES  DATE,'
      '         DATA_PREALTA DATE,'
      '         DATA_ALTA    DATE,'
      '         COORDINADOR  VARCHAR(5)'
      '        )'
      'AS'
      '  DECLARE VARIABLE DATA  DATE;'
      '  DECLARE VARIABLE DIES  INTEGER;'
      '  DECLARE VARIABLE FESTA INTEGER;'
      '  DECLARE VARIABLE ID    INTEGER;'
      '  DECLARE VARIABLE CONTA INTEGER;'
      '  DECLARE VARIABLE FREQ  VARCHAR(15);'
      '  DECLARE VARIABLE DOW   INTEGER;'
      '  DECLARE VARIABLE SUMA  INTEGER;'
      'BEGIN'
      '  IF (HIST IS NULL) THEN'
      '  BEGIN'
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, T.DA' +
        'TA_PREALTA, T.DATA_ALTA, T.C_COORDINADOR, T.C_FREQUENCIA'
      '    FROM TRACTAMENTS T'
      
        '    WHERE T.C_PRESTACIO='#39'2024'#39' AND (T.DATA_ALTA IS NULL OR (T.DA' +
        'TA_ALTA>="TODAY"))'
      '    ORDER BY 1,2'
      
        '    INTO :HISTORIA, :TRACTAMENT, :DATA_INGRES, :DATA_PREALTA, :D' +
        'ATA_ALTA, :COORDINADOR, :FREQ'
      '    DO BEGIN'
      
        '        /* ACTUALITZEM DATA_PREALTA (+12 SETMANES) SI EST BUIDA ' +
        '*/'
      '      IF (DATA_PREALTA IS NULL) THEN'
      '      BEGIN'
      '          DATA_PREALTA=DATA_INGRES+83;'
      
        '          UPDATE TRACTAMENTS SET DATA_PREALTA=:DATA_PREALTA WHER' +
        'E C_TRACTAMENT=:TRACTAMENT;'
      '      END;'
      ''
      '      IF (FREQ = '#39'XXXXX'#39') THEN SUMA = 14;'
      '                          ELSE SUMA = 30;'
      ''
      '      DATA=DATA_INGRES+SUMA;'
      ''
      
        '      /* S'#39'ha de tenir en compte el primer dia de freqncia -----' +
        '-------------------------------------*'
      
        '      DOW=F_DAYOFWEEK(:DATA);               /* DOW: 1-DG, 2-DLL,' +
        ' 3-DM, 4-DX, 5-DJ, 6-DV, 7-DSS         *'
      
        '      IF ((DOW=1) OR (DOW=7)) THEN DOW=2;   /* DSS i DG els pass' +
        'em a dilluns                           *'
      
        '      DOW=DOW-1;                            /* "Converteixo" DOW' +
        ' a DIES: 1-DLL, 2-DM, 3-DX, 4-DJ, 5-DV *'
      ''
      
        '      /* busco a partir de C_FREQUENCIA el primer dia que li toc' +
        'a venir                                *'
      
        '      /* Si li toca venir el mateix dia de l'#39'ingrs no fem res, a' +
        'ltrament ens movem de dia             *'
      '      DIES=0;'
      
        '      WHILE (FREQ[DOW+DIES]<>'#39'X'#39') DO   <-- AIX NO HO PUC FER!!! ' +
        'ho faig per programa'
      '      BEGIN'
      '          DIES=DIES+1;'
      '      END;'
      '      DATA=DATA+DIES;'
      
        '      /* -------------------------------------------------------' +
        '---------------------------------------*/'
      ''
      '      WHILE (DATA<DATA_PREALTA) DO'
      '      BEGIN'
      '          DIES=0;'
      
        '          SELECT COUNT(*) FROM FESTIUS WHERE DATA=:DATA INTO :FE' +
        'STA;'
      '          IF (FESTA IS NULL) THEN FESTA=0;'
      '          WHILE (FESTA>0) DO'
      '          BEGIN'
      
        '              /* DOW: 1-DG, 2-DLL, 3-DM, 4-DX, 5-DJ, 6-DV, 7-DSS' +
        ' */'
      '              DATA=DATA+1; DIES=DIES+1;'
      
        '              IF (F_DAYOFWEEK(:DATA)=7)      THEN BEGIN DATA=DAT' +
        'A+2; DIES=DIES+2; END;'
      
        '              ELSE IF (F_DAYOFWEEK(:DATA)=1) THEN BEGIN DATA=DAT' +
        'A+1; DIES=DIES+1; END;'
      ''
      
        '              SELECT COUNT(*) FROM FESTIUS WHERE DATA=:DATA INTO' +
        ' :FESTA;'
      '              IF (FESTA IS NULL) THEN FESTA=0;'
      '          END;'
      ''
      '          /* Abans d'#39'insertar registre, comprovar que no hi s */'
      
        '          SELECT COUNT(*) FROM CONTROLNPT WHERE C_TRACTAMENT=:TR' +
        'ACTAMENT AND DATA=:DATA INTO :CONTA;'
      '          IF (CONTA IS NULL) THEN CONTA=0;'
      '          IF (CONTA=0) THEN'
      '          BEGIN'
      '              ID=GEN_ID(G_CONTROLNPT,1);'
      
        '              INSERT INTO CONTROLNPT(ID,C_HISTORIA,C_TRACTAMENT,' +
        'DATA,TIPUS) VALUES (:ID,:HISTORIA,:TRACTAMENT,:DATA,-1);'
      '          END;'
      ''
      
        '          DATA=DATA+SUMA-DIES;    /* controls cada X dies segons' +
        ' freqncia */'
      '      END;'
      ''
      '      SUSPEND;'
      '    END;'
      '  END;'
      '  ELSE BEGIN'
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, T.DA' +
        'TA_PREALTA, T.DATA_ALTA, T.C_COORDINADOR, T.C_FREQUENCIA'
      '    FROM TRACTAMENTS T'
      
        '    WHERE T.C_PRESTACIO='#39'2024'#39' AND (T.DATA_ALTA IS NULL OR (T.DA' +
        'TA_ALTA>="TODAY"))'
      '    AND T.C_HISTORIA = :HIST'
      '    ORDER BY 1,2'
      
        '    INTO :HISTORIA, :TRACTAMENT, :DATA_INGRES, :DATA_PREALTA, :D' +
        'ATA_ALTA, :COORDINADOR, :FREQ'
      '    DO BEGIN'
      
        '        /* ACTUALITZEM DATA_PREALTA (+12 SETMANES) SI EST BUIDA ' +
        '*/'
      '      IF (DATA_PREALTA IS NULL) THEN'
      '      BEGIN'
      '          DATA_PREALTA=DATA_INGRES+83;'
      
        '          UPDATE TRACTAMENTS SET DATA_PREALTA=:DATA_PREALTA WHER' +
        'E C_TRACTAMENT=:TRACTAMENT;'
      '      END;'
      ''
      '      IF (FREQ = '#39'XXXXX'#39') THEN SUMA = 14;'
      '                          ELSE SUMA = 30;'
      ''
      '      DATA=DATA_INGRES+SUMA;'
      ''
      '      WHILE (DATA<DATA_PREALTA) DO'
      '      BEGIN'
      '          DIES=0;'
      
        '          SELECT COUNT(*) FROM FESTIUS WHERE DATA=:DATA INTO :FE' +
        'STA;'
      '          IF (FESTA IS NULL) THEN FESTA=0;'
      '          WHILE (FESTA>0) DO'
      '          BEGIN'
      
        '              /* DOW: 1-DG, 2-DLL, 3-DM, 4-DX, 5-DJ, 6-DV, 7-DSS' +
        ' */'
      '              DATA=DATA+1; DIES=DIES+1;'
      
        '              IF (F_DAYOFWEEK(:DATA)=7)      THEN BEGIN DATA=DAT' +
        'A+2; DIES=DIES+2; END;'
      
        '              ELSE IF (F_DAYOFWEEK(:DATA)=1) THEN BEGIN DATA=DAT' +
        'A+1; DIES=DIES+1; END;'
      ''
      
        '              SELECT COUNT(*) FROM FESTIUS WHERE DATA=:DATA INTO' +
        ' :FESTA;'
      '              IF (FESTA IS NULL) THEN FESTA=0;'
      '          END;'
      ''
      '          /* Abans d'#39'insertar registre, comprovar que no hi s */'
      
        '          SELECT COUNT(*) FROM CONTROLNPT WHERE C_TRACTAMENT=:TR' +
        'ACTAMENT AND DATA=:DATA INTO :CONTA;'
      '          IF (CONTA IS NULL) THEN CONTA=0;'
      '          IF (CONTA=0) THEN'
      '          BEGIN'
      '              ID=GEN_ID(G_CONTROLNPT,1);'
      
        '              INSERT INTO CONTROLNPT(ID,C_HISTORIA,C_TRACTAMENT,' +
        'DATA,TIPUS) VALUES (:ID,:HISTORIA,:TRACTAMENT,:DATA,-1);'
      '          END;'
      ''
      
        '          DATA=DATA+SUMA-DIES;    /* controls cada X dies segons' +
        ' freqncia */'
      '      END;'
      ''
      '      SUSPEND;'
      '    END;'
      '  END;'
      'END')
    Dic1 = ControlNPT
    Dic1Name = 'ControlNPT'
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
    Left = 456
    Top = 608
  end
  object AlergiesAlarma: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Hist'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Metge'
        Longitud = 5
        Consulta = 'metge'
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'pot ser metge o Farm'#224'cia'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'GTN'
        NombreDB = 'GTN'
        Longitud = 7
        Consulta = 'gtn'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'principi actiu que pretenia pautar el metge'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Produte'
        NombreDB = 'C_Producte'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'prod'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'producte que pretenia assignar Farm'#224'cia'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi al'#183'lergogen'
        NombreDB = 'C_Alergogen'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'alergogen'
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
          'N'#250'm. Hist'
          'Data'
          'Usuari')
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
          'Usuari')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'hist'
        NombreDB = 'hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'gtn'
        NombreDB = 'gtn'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'GTN')
        Tipo = tiForaneo
        ForaneoDic = wDataProductes.GTN
        ForaneoCampos.Strings = (
          'Grup Terap'#232'utic Nacional')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'prod'
        NombreDB = 'prod'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Produte')
        Tipo = tiForaneo
        ForaneoDic = wDataProductes.Productes
        ForaneoCampos.Strings = (
          'Codi Producte')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'alergogen'
        NombreDB = 'alergogen'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi al'#183'lergogen')
        Tipo = tiForaneo
        ForaneoDic = wDataProductes.Alergogens
        ForaneoCampos.Strings = (
          'Codi al'#183'lergogen')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'data'
        NombreDB = 'data'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'metge'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari')
        CopiarOrigen.Strings = (
          'Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'hist'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'N'#250'm. Hist')
        CopiarOrigen.Strings = (
          'N'#250'm. Hist')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'gtn'
        Master = wDataProductes.GTN
        BuscaOrigen.Strings = (
          'GTN')
        CopiarOrigen.Strings = (
          'GTN')
        CopiarMaster.Strings = (
          'Grup Terap'#232'utic Nacional')
        BuscaMaster.Strings = (
          'Grup Terap'#232'utic Nacional')
      end
      item
        Nombre = 'alergogen'
        Master = wDataProductes.Alergogens
        BuscaOrigen.Strings = (
          'Codi al'#183'lergogen')
        CopiarOrigen.Strings = (
          'Codi al'#183'lergogen')
        CopiarMaster.Strings = (
          'Codi al'#183'lergogen')
        BuscaMaster.Strings = (
          'Codi al'#183'lergogen')
      end
      item
        Nombre = 'prod'
        Master = wDataProductes.Productes
        BuscaOrigen.Strings = (
          'Produte')
        CopiarOrigen.Strings = (
          'Produte')
        CopiarMaster.Strings = (
          'Codi Producte')
        BuscaMaster.Strings = (
          'Codi Producte')
      end>
    Nombre = 'AlergiesAlarma'
    NombreTabla = 'AlergiesAlarma'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist'
      'Usuari'
      'Data'
      'GTN'
      'Produte'
      'Codi al'#183'lergogen')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 94
    Top = 122
  end
  object MetgesSIIG: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'SIIG'
    ForceNombreDB = False
    Body.Strings = (
      
        'SELECT CODI,METGE,COGNOM,TRACTE,C_GRUP,C_ESPECIAL,NOMSENCER,BAIX' +
        'A,DATA_BAIXA,EMAIL '
      'FROM METGES')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    ModiFecha = 37076.7607784375
    Left = 320
    Top = 243
  end
  object AreaGrupEsp: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C. '#192'rea'
        NombreDB = 'C_Area'
        Longitud = 3
        Consulta = 'area'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'C. Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'grup'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'C. Especialitat'
        NombreDB = 'C_Especialitat'
        Longitud = 2
        Consulta = 'espe'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 5
        zType = tcIB_Smallint
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
          'C. Grup'
          'C. Especialitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'area'
        NombreDB = 'area'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C. '#192'rea')
        Tipo = tiForaneo
        ForaneoDic = Areas
        ForaneoCampos.Strings = (
          'C'#243'di Area')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'grup'
        NombreDB = 'grup'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C. Grup')
        Tipo = tiForaneo
        ForaneoDic = Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'espe'
        NombreDB = 'espe'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C. Especialitat')
        Tipo = tiForaneo
        ForaneoDic = Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'area'
        Master = Areas
        BuscaOrigen.Strings = (
          'C. '#192'rea')
        CopiarOrigen.Strings = (
          'C. '#192'rea')
        CopiarMaster.Strings = (
          'C'#243'di Area')
        BuscaMaster.Strings = (
          'C'#243'di Area')
      end
      item
        Nombre = 'grup'
        Master = Grups
        BuscaOrigen.Strings = (
          'C. Grup')
        CopiarOrigen.Strings = (
          'C. Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end
      item
        Nombre = 'espe'
        Master = Especial
        BuscaOrigen.Strings = (
          'C. Especialitat')
        CopiarOrigen.Strings = (
          'C. Especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end>
    Nombre = #192'rees segons grup i especialitat'
    NombreTabla = 'AreaGrupEsp'
    Organiza = tbBase
    CamposVer.Strings = (
      'C. '#192'rea'
      'C. Grup'
      'C. Especialitat'
      'Ordre')
    IndiceVer = 'Area'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.494506875
    Left = 233
    Top = 307
  end
  object Fili_DadesFac: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Historia'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_CentreFac'
        NombreDB = 'C_CentreFac'
        Longitud = 2
        Consulta = 'centrefac'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_Client'
        NombreDB = 'C_Client'
        Longitud = 3
        Consulta = 'client'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_Delegacio'
        NombreDB = 'C_Delegacio'
        Longitud = 4
        Consulta = 'delegacio'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'data'
        NombreDB = 'data'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'usuari'
        NombreDB = 'usuari'
        Longitud = 5
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
          'C_Historia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fk'
        NombreDB = 'fk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Historia')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'centrefac'
        Master = wDataFactu.CentreFac
        BuscaOrigen.Strings = (
          'C_CentreFac')
        CopiarOrigen.Strings = (
          'C_CentreFac')
        CopiarMaster.Strings = (
          'N'#186' Centre')
        BuscaMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'client'
        Master = wDataFactu.Clients
        BuscaOrigen.Strings = (
          'C_CentreFac'
          'C_Client')
        CopiarOrigen.Strings = (
          'C_CentreFac'
          'C_Client')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        FiltroOrigen.Strings = (
          'C_CentreFac')
        FiltroMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'delegacio'
        Master = wDataFactu.Delega
        BuscaOrigen.Strings = (
          'C_CentreFac'
          'C_Client'
          'C_Delegacio')
        CopiarOrigen.Strings = (
          'C_CentreFac'
          'C_Client'
          'C_Delegacio')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        FiltroOrigen.Strings = (
          'C_CentreFac'
          'C_Client'
          'C_Delegacio')
        FiltroMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
      end>
    Nombre = 'Fili_DadesFac'
    NombreTabla = 'Fili_DadesFac'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Historia'
      'C_CentreFac'
      'C_Client'
      'C_Delegacio')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 480
    Top = 176
  end
  object LogAltes: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'Data_Registre'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari registre'
        NombreDB = 'C_Usuari'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data alta'
        NombreDB = 'Data_Alta'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anotaci'#243
        NombreDB = 'C_Anotacio'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'anotaci'#243' que genera o anul'#183'la l'#39'alta (alta hospital'#224'ria efectiva' +
          ')'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Tractament'
          'Data registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tract'
        NombreDB = 'tract'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Tractament')
        Tipo = tiForaneo
        ForaneoDic = Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usuari'
        NombreDB = 'usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari registre')
        Tipo = tiForaneo
        ForaneoDic = Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogAltes'
    NombreTabla = 'LogAltes'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Tractament'
      'Data registre'
      'Usuari registre'
      'Data alta')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 1072
    Top = 492
  end
  object Fili_TDI: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Hist'#242'ria'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus de document identificatiu'
        NombreDB = 'TDI'
        Longitud = 20
        Consulta = 'TDI'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi de document identificatiu'
        NombreDB = 'CDI'
        Longitud = 25
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
          'N'#186' Hist'#242'ria'
          'Tipus de document identificatiu')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Fili'
        NombreDB = 'Fili'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Fili_Res'
        NombreDB = 'Fili_Res'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = Filiacio_Resum
        ForaneoCampos.Strings = (
          'N'#250'm. Hist'#242'ria')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'TDI'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Tipus de document identificatiu')
        CopiarOrigen.Strings = (
          'Tipus de document identificatiu')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'CMBD.TDI'#39
      end>
    Nombre = 'FILI_TDI'
    NombreTabla = 'FILI_TDI'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Hist'#242'ria'
      'Tipus de document identificatiu'
      'Codi de document identificatiu')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 764
    Top = 12
  end
  object Inicia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inicia'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_HISTORIA INTEGER,'
      '         SNS        VARCHAR(25),'
      '         TDI        CHAR(20))'
      'AS'
      '  DECLARE VARIABLE CURT CHAR(8);'
      'BEGIN'
      '  FOR SELECT NUM_HIST, SNS, F_LEFT(SNS,8) FROM FILIACIO'
      '  WHERE SNS IS NOT NULL'
      '  ORDER BY NUM_HIST'
      '  INTO :C_HISTORIA, :SNS, :CURT'
      '  DO BEGIN'
      '      IF (CURT='#39'BBBBBBBB'#39') THEN TDI='#39'SNS'#39';'
      '                           ELSE TDI='#39'ACA'#39';'
      ''
      
        '      INSERT INTO FILI_TDI(C_HISTORIA, TDI, CDI) VALUES(:C_HISTO' +
        'RIA, :TDI, :SNS);'
      ''
      '      SUSPEND;'
      '  END;'
      'END')
    Dic1 = Fili_TDI
    Dic1Name = 'Fili_TDI'
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
    Left = 694
    Top = 168
  end
  object LogCF: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'DATA_INICI'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
        Comentario = 
          'display dd"-"mm"-"yyyy hh":"nn":"ss edit !99/99/9999 99:99:99;1;' +
          ' '
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fi'
        NombreDB = 'DATA_FI'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 
          'display dd"-"mm"-"yyyy hh":"nn":"ss edit !99/99/9999 99:99:99;1;' +
          ' '
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre de facturaci'#243
        NombreDB = 'C_CENTREFAC'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'DATA_REGISTRE'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 
          'display dd"-"mm"-"yyyy hh":"nn":"ss edit !99/99/9999 99:99:99;1;' +
          ' '
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi tractament'
          'Data inici')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'TRACT'
        NombreDB = 'TRACT'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi tractament')
        Tipo = tiForaneo
        ForaneoDic = Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tract'
        Master = Tractaments
        BuscaOrigen.Strings = (
          'Codi tractament')
        CopiarOrigen.Strings = (
          'Codi tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end>
    Nombre = 'LogCF'
    NombreTabla = 'LogCF'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi tractament'
      'Data inici'
      'Data fi'
      'Centre de facturaci'#243
      'Data registre')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 1135
    Top = 492
  end
  object LogCF_List: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      
        '(DATAI DATE, DATAF DATE)   /* TRACTAMENTS ATESOS EN UN PER'#205'ODE *' +
        '/'
      
        'RETURNS (TIPUS        SMALLINT,   /* 0 - sense canvis; 1 - amb c' +
        'anvis */'
      '         C_HISTORIA   INTEGER,'
      '         C_PRESTACIO  CHAR(4),'
      '         DATA_INGRES  DATE,'
      '         DATA_ALTA    DATE,'
      '         C_CENTREFAC  CHAR(2),'
      '         DATA_DESDE   DATE,'
      '         DATA_FINS    DATE'
      '         )'
      'AS'
      '  DECLARE VARIABLE CF_ACT       CHAR(2);'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'BEGIN'
      ''
      
        ' FOR SELECT C_TRACTAMENT, C_PRESTACIO, C_HISTORIA, DATA_INGRES, ' +
        'DATA_ALTA, C_CENTREFAC'
      ' FROM TRACTAMENTS'
      
        ' WHERE DATA_INGRES <= :DATAF AND (DATA_ALTA >= :DATAI OR DATA_AL' +
        'TA IS NULL)'
      ' ORDER BY C_TRACTAMENT'
      
        ' INTO :C_TRACTAMENT, :C_PRESTACIO, :C_HISTORIA, :DATA_INGRES, :D' +
        'ATA_ALTA, :CF_ACT'
      ' DO BEGIN'
      '     TIPUS=0;'
      '     FOR SELECT DATA_INICI, DATA_FI, C_CENTREFAC FROM LOGCF'
      '     WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '     ORDER BY DATA_INICI'
      '     INTO :DATA_DESDE, :DATA_FINS, :C_CENTREFAC'
      '     DO BEGIN'
      '         TIPUS=1;'
      '         SUSPEND;'
      '     END;'
      '     '
      '     /* Centrefac actual */'
      '     IF (DATA_DESDE IS NULL) THEN DATA_DESDE=DATA_INGRES;'
      '                             ELSE DATA_DESDE=DATA_FINS;'
      '     C_CENTREFAC=CF_ACT; DATA_FINS=DATA_ALTA;'
      '     SUSPEND;'
      ' END;'
      'END')
    Dic1 = LogCF
    Dic1Name = 'LogCF'
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
    Left = 1059
    Top = 544
  end
  object PrestaSessions: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Prestacio'
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Presta'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero m'#224'xim de sessions'
        NombreDB = 'Num_Max_Sessions'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'di Prestacio')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Presta'
        NombreDB = 'Presta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'di Prestacio')
        Tipo = tiForaneo
        ForaneoDic = Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Presta'
        Master = Prestacion
        BuscaOrigen.Strings = (
          'C'#243'di Prestacio')
        CopiarOrigen.Strings = (
          'C'#243'di Prestacio')
        CopiarMaster.Strings = (
          'C'#243'di Prestacio')
        BuscaMaster.Strings = (
          'C'#243'di Prestacio')
      end>
    Nombre = 'Prestacio Sessions'
    NombreTabla = 'PrestaSessions'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di Prestacio'
      'N'#250'mero m'#224'xim de sessions')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4944384954
    Left = 288
    Top = 428
  end
  object NensWISCV: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero WISC-V'
        NombreDB = 'NUM_WISCV'
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
          'Hist'#242'ria cl'#237'nica')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'Hist'#242'ria cl'#237'nica')
        CopiarOrigen.Strings = (
          'Hist'#242'ria cl'#237'nica')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end>
    Nombre = 'NensWISCV'
    NombreTabla = 'NensWISCV'
    Organiza = tbBase
    CamposVer.Strings = (
      'Hist'#242'ria cl'#237'nica'
      'N'#250'mero WISC-V')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 824
    Top = 13
  end
  object TractCMB_CE: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Generator = 'CONTATRACTAMENT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Hist.'
        NombreDB = 'C_Historia'
        Longitud = 5
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data alta'
        NombreDB = 'Data_Alta'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge alta'
        NombreDB = 'C_MetgeAlta'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Durada'
        NombreDB = 'Durada'
        Longitud = 4
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu'
        NombreDB = 'C_Motiu'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi diagn'#242'stic ingr'#233's'
        NombreDB = 'C_DiagnosticIngres'
        Longitud = 15
        Consulta = 'IcdIngres'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal diagn'#242'stic ingr'#233's'
        NombreDB = 'N_DiagnosticIngres'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Subcodi diagn'#242'stic ingr'#233's'
        NombreDB = 'G_DiagnosticIngres'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VersioCIM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Codificat - revisat'
        NombreDB = 'Codificat_Revisat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Si valor='#39'S'#39', s'#39'envia al CatSalut'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Tractament'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'IcdIngres'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi diagn'#242'stic ingr'#233's')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi diagn'#242'stic ingr'#233's')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end>
    Nombre = 'Tractaments_CMB_CE'
    NombreTabla = 'Tractaments'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Tractament'
      'N'#250'm. Hist.'
      'Prestaci'#243
      'Data ingr'#233's'
      'Coordinador'
      'Data alta'
      'Metge alta'
      'Durada'
      'Motiu'
      'Codi diagn'#242'stic ingr'#233's'
      'Literal diagn'#242'stic ingr'#233's'
      'Subcodi diagn'#242'stic ingr'#233's'
      'Versi'#243' CIM')
    IndiceVer = 'Tractament'
    Navegar = False
    Nivel = 7
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 37201.7158259259
    Left = 749
    Top = 608
  end
  object IngresAndorra: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero d'#39'hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi de tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Tract'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data ensenyat a l'#39'alarma'
        NombreDB = 'DATA_AVIS'
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
          'N'#250'mero d'#39'hist'#242'ria cl'#237'nica'
          'Codi de tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = Filiacio
        BuscaOrigen.Strings = (
          'N'#250'mero d'#39'hist'#242'ria cl'#237'nica')
        CopiarOrigen.Strings = (
          'N'#250'mero d'#39'hist'#242'ria cl'#237'nica')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Tract'
        Master = Tractaments
        BuscaOrigen.Strings = (
          'Codi de tractament')
        CopiarOrigen.Strings = (
          'Codi de tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end>
    Nombre = 'IngresAndorra'
    NombreTabla = 'IngresAndorra'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'mero d'#39'hist'#242'ria cl'#237'nica')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 826
    Top = 608
  end
  object IngresAndorra_Avis: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Avis'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_HISTORIA  INTEGER,'
      '         NOMCOMPLET  VARCHAR(80),'
      '         DATA_INGRES DATE'
      '         )'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'BEGIN'
      
        '  FOR SELECT I.C_HISTORIA, F.NOMCOMPLET, I.C_TRACTAMENT, T.DATA_' +
        'INGRES FROM INGRESANDORRA I'
      '  JOIN FILIACIO    F ON I.C_HISTORIA=F.NUM_HIST'
      '  JOIN TRACTAMENTS T ON I.C_TRACTAMENT=T.C_TRACTAMENT'
      '  WHERE I.DATA_AVIS IS NULL'
      '  INTO :C_HISTORIA, :NOMCOMPLET, :C_TRACTAMENT, :DATA_INGRES'
      '  DO BEGIN'
      '       SUSPEND;'
      '       '
      
        '       UPDATE INGRESANDORRA SET DATA_AVIS = "NOW" WHERE C_HISTOR' +
        'IA=:C_HISTORIA AND C_TRACTAMENT=:C_TRACTAMENT;'
      '  END;'
      'END')
    Dic1 = IngresAndorra
    Dic1Name = 'IngresAndorra'
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
    Left = 912
    Top = 608
  end
  object LogDuplicats: TDic
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
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'DATA'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari registre'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Nom PC'
        NombreDB = 'NomPC'
        Longitud = 20
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Primer cognom'
        NombreDB = 'Cognom1'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Segon cognom'
        NombreDB = 'Cognom2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi de la llista d'#39'espera'
        NombreDB = 'C_ESPERA'
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
          'Identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metge'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari registre')
        CopiarOrigen.Strings = (
          'Usuari registre')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'LogDuplicats'
    NombreTabla = 'LogDuplicats'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Data registre'
      'Usuari registre'
      'Nom PC'
      'Primer cognom'
      'Segon cognom')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 896
    Top = 12
  end
  object acessosMetges: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'accessosMetges'
    ForceNombreDB = False
    Body.Strings = (
      '(LOGIN VARCHAR(40))'
      'AS'
      '  DECLARE VARIABLE ACCES     INTEGER;'
      '  DECLARE VARIABLE CODI      VARCHAR(5);'
      '  DECLARE VARIABLE NOMSENCER VARCHAR(40);'
      '  DECLARE VARIABLE C_DRET    CHAR(10);'
      'BEGIN'
      
        '    SELECT MAX(C_ACCES) + 1 FROM ACCESOS WHERE C_ACCES < 800 INT' +
        'O ACCES;'
      ''
      '    SELECT CODI, NOMSENCER FROM METGES'
      '    WHERE EMAIL STARTING WITH :LOGIN'
      '    INTO :CODI, :NOMSENCER;'
      ''
      
        '    INSERT INTO ACCESOS (C_ACCES, DESCRIPCIO, C_LOGIN) VALUES(:A' +
        'CCES, :NOMSENCER, :LOGIN);'
      ''
      '    FOR SELECT C_DRET FROM DRETSACCES WHERE C_ACCES = 82'
      '    INTO :C_DRET'
      '    DO BEGIN'
      
        '        INSERT INTO DRETSACCES (C_ACCES, C_DRET) VALUES(:ACCES, ' +
        ':C_DRET);'
      '    END;'
      ''
      'END')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    Left = 608
    Top = 240
  end
  object ControlAmbulatoris: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ControlAmbulatoris'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      
        'RETURNS (TIPUS            SMALLINT,  /* 0-PRESTACIO 2014 1-PREST' +
        'ACIONS 2003*/'
      '         ID               SMALLINT,'
      '         C_HISTORIA       INTEGER,'
      '         NOM              VARCHAR(80),'
      '         C_PRESTACIO      CHAR(4),'
      '         DATA_INGRES      DATE,'
      '         DATA_ALTA        DATE,'
      '         C_COORDINADOR    VARCHAR(5),'
      '         COMPLEIX         CHAR(1),'
      '         DIES             INTEGER,'
      '         QUANTES_2003     INTEGER,'
      '         QUANTES_2014     INTEGER'
      '        )'
      'AS'
      '  DECLARE VARIABLE DATA_INGRES_2014   DATE;'
      '  DECLARE VARIABLE DATA_ALTA_2014     DATE;'
      '  DECLARE VARIABLE DATA_ALTA_TREBALL  DATE;'
      '  DECLARE VARIABLE C_COORDINADOR_2014 VARCHAR(5);'
      '  DECLARE VARIABLE HC_2014            INTEGER;'
      '  DECLARE VARIABLE NOM_2014           VARCHAR(80);'
      'BEGIN'
      '    ID=1;'
      
        '    FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, T.DATA_INGRES, T.DATA' +
        '_ALTA, T.C_COORDINADOR'
      '    FROM  TRACTAMENTS T'
      '    JOIN  FILIACIO    F ON T.C_HISTORIA=F.NUM_HIST'
      '    WHERE T.C_PRESTACIO = '#39'2014'#39
      
        '    AND   T.DATA_INGRES BETWEEN :DATAI AND :DATAF               ' +
        '     /* Dels 2014 iniciats en aquest per'#237'ode         */'
      
        '    AND   T.DATA_INGRES < '#39'TODAY'#39' - 30                          ' +
        '     /* els que ja fa m'#233's de 30 dies que han iniciat */'
      '    ORDER BY T.DATA_INGRES, F.NOMCOMPLET'
      
        '    INTO :HC_2014, :NOM_2014, :DATA_INGRES_2014, :DATA_ALTA_2014' +
        ', :C_COORDINADOR_2014'
      '    DO BEGIN'
      '        C_HISTORIA=NULL; NOM=NULL; QUANTES_2014 = NULL;'
      
        '        IF (DATA_ALTA_2014 IS NULL) THEN DATA_ALTA_TREBALL = '#39'TO' +
        'DAY'#39';'
      
        '                                    ELSE DATA_ALTA_TREBALL = DAT' +
        'A_ALTA_2014;'
      ''
      '        /* Primer llisto les 2003 */'
      
        '        TIPUS = 1; C_PRESTACIO = '#39'2003'#39'; QUANTES_2003=0; COMPLEI' +
        'X=NULL;'
      
        '        FOR SELECT DATA_INGRES, DATA_ALTA, C_COORDINADOR FROM TR' +
        'ACTAMENTS'
      '        WHERE C_HISTORIA = :HC_2014'
      '        AND   C_PRESTACIO = '#39'2003'#39
      
        '        AND   DATA_INGRES BETWEEN :DATA_INGRES_2014 AND :DATA_AL' +
        'TA_TREBALL'
      '        INTO  :DATA_INGRES, :DATA_ALTA, :C_COORDINADOR'
      '        DO BEGIN'
      '            QUANTES_2003 = QUANTES_2003 + 1;'
      '            SUSPEND;'
      '        END;'
      '      '
      
        '        /* Al final lilstem la 2014 perqu'#232' abans no sabem si COM' +
        'PLEIX o no */'
      '        TIPUS = 0; C_PRESTACIO = '#39'2014'#39';'
      '        C_HISTORIA = HC_2014; NOM = NOM_2014;'
      
        '        DATA_INGRES = :DATA_INGRES_2014; DATA_ALTA = DATA_ALTA_2' +
        '014; C_COORDINADOR = C_COORDINADOR_2014;'
      ''
      '        /* Cada 28 dies hi ha d'#39'haver una 2003 */'
      '        DIES = DATA_ALTA_TREBALL - DATA_INGRES_2014;'
      '        QUANTES_2014 = F_TRUNCAR(DIES/28);'
      ''
      '        IF (QUANTES_2003 < QUANTES_2014) THEN COMPLEIX = '#39'N'#39';'
      '                                         ELSE COMPLEIX = '#39'S'#39';'
      '        SUSPEND;'
      '        ID=ID+1;'
      '    END;'
      'END')
    Dic1 = Tractaments
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
    Left = 549
    Top = 608
  end
  object TractActius_Presta: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'Actius_Presta'
    ForceNombreDB = False
    Body.Strings = (
      'select'
      
        'T.C_Tractament, T.C_Historia, T.C_Prestacio, T.Data_Ingres, T.C_' +
        'Coordinador,'
      'T.Data_Alta, T.Data_PreAlta, T.C_LLit, T.C_Planta, T.Durada,'
      
        'T.EstatInformeAlta, T.C_Motiu, T.EsProvisional, T.C_PrestacioOri' +
        'gen, T.Vegada,'
      'P.N_Prestacio, P.Resum, P.Tipus, P.EsEASE, P.Facturar,'
      'M.Metge, M.Cognom, M.Tracte, M.C_Grup, M.C_Especial,'
      
        'F.NomComplet, F.Sexo, F.Bloqueig, F.Idioma, F.Unitat, F.EsViu, F' +
        '.Edat, '
      'T.C_Proces, T.FI_Proces, T.C_CentreFac'
      'from TRACTAMENTS T '
      'join  PRESTACION     P on T.C_PRESTACIO = P.C_PRESTACIO'
      'join  METGES             M on M.CODI = T.C_COORDINADOR'
      'join  FILIACIO              F on T.C_HISTORIA = F.NUM_HIST'
      'where  T.DATA_INGRES <= "TODAY"'
      'and     (T.DATA_ALTA is Null or T.DATA_ALTA>="TODAY")'
      'and     P.TIPUS <> 4')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37076.760778206
    Left = 732
    Top = 492
  end
  object DiesAPT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DiesAPT'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_HISTORIA INTEGER, DIESAPT INTEGER)'
      'AS'
      '      DECLARE VARIABLE GOAT VARCHAR(15);'
      '      DECLARE VARIABLE GOAT_I INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      '      DECLARE VARIABLE DATA_NAIX DATE;'
      '      DECLARE VARIABLE DATA_LESIO DATE;'
      '      DECLARE VARIABLE POSICIO INTEGER;'
      '      DECLARE VARIABLE VEGADA INTEGER;'
      'BEGIN'
      
        '      /* Per cada Hist'#242'ria de la Unitat M'#232'dica 10 (TCE) que no t' +
        'ingui DiesAPT, els calculem */'
      
        '      /* 31-05-2021: sempre i quan hagin entrat l'#39'escala GOAT el' +
        's '#250'ltims 7 dies!! */'
      '      FOR SELECT F.NUM_HIST, F.FECHA_NAC, F.DATA_LESSIO'
      '          FROM   ESCALESCAP C'
      '          JOIN   FILIACIO F ON C.C_HISTORIA = F.NUM_HIST'
      '          WHERE  C.C_ESCALA = 4'
      '          AND    C.DATA >= '#39'TODAY'#39' - 7'
      '          AND    F.C_UNITATMEDICA = 10'
      '          AND    F.EDAT >= 16'
      '          AND    F.DIES_APT IS NULL'
      '          AND    F.DATA_LESSIO IS NOT NULL'
      '          INTO  :C_HISTORIA, :DATA_NAIX, :DATA_LESIO'
      '      DO BEGIN'
      '      '
      '            VEGADA = 0;'
      '            '
      '            FOR SELECT L.D_ITEM, C.DATA'
      '                FROM   ESCALESLIN L'
      '                JOIN   ESCALESCAP C ON L.CLAU = C.CLAU'
      
        '                JOIN   TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRA' +
        'CTAMENT'
      '                WHERE  T.C_HISTORIA = :C_HISTORIA'
      '                AND    C.C_ESCALA = 4'
      '                AND    C.ANULAT = '#39'N'#39
      
        '                AND    DATA >= :DATA_LESIO    /* valors introdu'#239 +
        'ts a partir de la lesi'#243', per si n'#39'ha tingut m'#233's d'#39'una */'
      '                ORDER  BY C.DATA'
      '                INTO  :GOAT, :DATA'
      '            DO BEGIN'
      '            '
      
        '                  IF ((DATA - DATA_NAIX) >= 5840) THEN   /* majo' +
        'rs de 16 anys en el moment de passar l'#39'escala */'
      '                  BEGIN'
      '                  '
      '                        POSICIO = F_Substr('#39'*'#39', GOAT);'
      ''
      '                        /* Versi'#243' d'#39'elecci'#243' m'#250'ltiple */'
      '                        IF (POSICIO > 0)'
      '                        THEN BEGIN'
      
        '                              /* Traiem l'#39'* per fer els c'#224'lculs ' +
        '*/'
      
        '                              GOAT = F_Mid(GOAT, 0, POSICIO-1) |' +
        '| F_Mid(GOAT, POSICIO, F_StringLength(GOAT)-1);'
      '                              GOAT_I = GOAT;'
      
        '                              IF (GOAT_I >= 61) THEN VEGADA = VE' +
        'GADA + 1;'
      '                                                ELSE VEGADA = 0;'
      '                        END;'
      '                        /* Versi'#243' est'#224'ndard */'
      '                        ELSE BEGIN'
      '                            GOAT_I = GOAT;'
      
        '                            IF (GOAT_I >= 75) THEN VEGADA = VEGA' +
        'DA + 1;'
      '                                              ELSE VEGADA = 0;'
      '                        END;'
      ''
      
        '                        IF (VEGADA = 2) THEN DIESAPT = F_Truncar' +
        '(DATA - DATA_LESIO);'
      '                  END;'
      '            END;'
      ''
      '            IF (VEGADA >= 2) THEN'
      '            BEGIN'
      
        '                  UPDATE FILIACIO SET DIES_APT = :DIESAPT WHERE ' +
        'NUM_HIST = :C_HISTORIA;'
      '                  SUSPEND;'
      '            END;'
      '      END;'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'Filiacio'
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
    Left = 690
    Top = 64
  end
  object Tract_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ULTIMA DATE;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      
        '      /* En eliminar un tractament, actualitzem la data d'#39#250'ltim ' +
        'contacte de Filiaci'#243' */'
      '      '
      '      SELECT MAX(DATA_INGRES) FROM TRACTAMENTS'
      '      WHERE C_HISTORIA = OLD.C_HISTORIA'
      '      AND   C_PRESTACIO <> '#39'0000'#39
      '      INTO :ULTIMA;'
      '      '
      '      IF (ULTIMA IS NOT NULL)'
      '      THEN'
      
        '            UPDATE FILIACIO SET DATA_ULTIMCONTACTE = :ULTIMA WHE' +
        'RE NUM_HIST = OLD.C_HISTORIA;'
      '      '
      '   END;'
      '     '
      'END')
    Dic1 = Tractaments
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
    Accion1 = taDESPUES
    Accion2 = taDELETE
    Left = 32
    Top = 544
  end
  object CEincompleta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CEincompleta'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (C_HISTORIA     INTEGER,'
      '         NOMCOMPLET     VARCHAR(80),'
      '         C_UNITATMEDICA SMALLINT,'
      '         UNITATMEDICA   VARCHAR(30),'
      '         DATA_LESIO     DATE,'
      '         DATA_INGRES    DATE,'
      '         DATA_ALTA      DATE,'
      '         C_PRESTACIO    VARCHAR(4),'
      '         C_COORDINADOR  VARCHAR(5)'
      '         )'
      'AS'
      ' DECLARE VARIABLE ESEASE         CHAR(1);'
      ' DECLARE VARIABLE TRACTAR        CHAR(1);'
      ' DECLARE VARIABLE COMPTADOR      INTEGER;'
      ' DECLARE VARIABLE BAIXA          CHAR(1);'
      'BEGIN'
      ''
      
        '   FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, F.C_UNITATMEDICA, U.N_' +
        'UNITATM, COUNT(*)'
      '   FROM TRACTAMENTS T'
      '   JOIN FILIACIO    F ON T.C_HISTORIA  = F.NUM_HIST'
      '   JOIN PRESTACION  P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '   JOIN UNITATM     U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '   WHERE (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI OR ' +
        'T.DATA_ALTA IS NULL))'
      '   AND    P.TIPUS >= 0 AND P.TIPUS < 4 AND P.FACTURAR = '#39'S'#39
      
        '   GROUP BY T.C_HISTORIA, F.NOMCOMPLET, F.C_UNITATMEDICA, U.N_UN' +
        'ITATM'
      
        '   INTO :C_HISTORIA, :NOMCOMPLET, :C_UNITATMEDICA, :UNITATMEDICA' +
        ', :COMPTADOR'
      '   DO BEGIN'
      
        '       C_COORDINADOR = NULL; DATA_INGRES = NULL; DATA_ALTA = NUL' +
        'L; C_PRESTACIO = NULL; ESEASE = '#39'N'#39';'
      '       '
      '       /* Primer comprovem si li falta completar la UM */'
      '       COMPTADOR = 0;'
      ''
      '       IF (C_UNITATMEDICA = 0) THEN TRACTAR = '#39'S'#39';'
      '       ELSE BEGIN'
      '         SELECT COUNT(*) FROM FILIACIO F'
      '         WHERE F.NUM_HIST = :C_HISTORIA'
      
        '         AND ( (F.GLF IS NULL OR F.DATA_LESSIO IS NULL)         ' +
        '                                               OR'
      
        '               (F.C_UNITATMEDICA IN(1,2,3,4,7,8,10,11,12,14,15,1' +
        '6,17,18,19) AND (F.C_ORIGEN=0 OR F.C_CAUSA=0)) OR'
      
        '               (F.C_CAUSA_DETALL = 0 AND (SELECT COUNT(*) FROM C' +
        'ODICAMPS CC'
      
        '                                          WHERE CC.TIPUSCODI="CA' +
        'USA_DETALL"'
      
        '                                          AND CC.C_CODI STARTING' +
        ' WITH F.C_CAUSA'
      
        '                                          AND F_STRINGLENGTH(CC.' +
        'C_CODI) = F_STRINGLENGTH(F.C_CAUSA)+2)=0)      OR'
      
        '               (F.SEVERITAT IS NULL AND (F.C_UNITATMEDICA IN(14,' +
        '15,16,17,18) OR F.GLF IN("04.1211","04.1221","04.2211","04.2221"' +
        ')))'
      '             )'
      '         INTO :COMPTADOR;'
      '         IF (COMPTADOR IS NULL) THEN COMPTADOR = 0;'
      '       '
      '         IF (COMPTADOR > 0) THEN'
      '         BEGIN'
      
        '           /* Si UM<>0 i el pacient no ha tingut cap tractament ' +
        'amb un MEtge (G22 i E22) en el per'#237'ode [DATAI, DATAF], no s'#39'ha d' +
        'e llistar */'
      '           COMPTADOR = 0;'
      '           SELECT COUNT(*) FROM TRACTAMENTS T'
      '           JOIN METGES        M  ON T.C_COORDINADOR = M.CODI'
      
        '           JOIN DRETSGRUPS    DG ON M.C_GRUP = DG.C_GRUP AND DG.' +
        'C_DRET = '#39'G22'#39
      
        '           JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL' +
        ' AND DE.C_DRET = '#39'E22'#39
      
        '           JOIN PRESTACION    P  ON T.C_PRESTACIO = P.C_PRESTACI' +
        'O'
      '           WHERE T.C_HISTORIA = :C_HISTORIA'
      
        '           AND  (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DA' +
        'TAI OR T.DATA_ALTA IS NULL))'
      
        '           AND   P.TIPUS >= 0 AND P.TIPUS < 4 AND P.FACTURAR = '#39 +
        'S'#39
      '           INTO :COMPTADOR;'
      '           '
      
        '           IF ((COMPTADOR IS NOT NULL) AND (COMPTADOR > 0)) THEN' +
        ' TRACTAR = '#39'S'#39';'
      
        '                                                            ELSE' +
        ' TRACTAR = '#39'N'#39';'
      '         END;'
      '         ELSE TRACTAR = '#39'N'#39';'
      '       END;'
      ''
      '       IF (TRACTAR = '#39'S'#39') THEN'
      '       BEGIN'
      
        '         /* Primer buscar el tractament m'#233's recent NO EASE d'#39'un ' +
        'coordinador amb drets G22 i E22 */'
      
        '         SELECT T.C_COORDINADOR, T.C_PRESTACIO, M.BAIXA, T.DATA_' +
        'ALTA, MAX(T.DATA_INGRES)'
      '         FROM TRACTAMENTS   T'
      '         JOIN PRESTACION    P  ON T.C_PRESTACIO = P.C_PRESTACIO'
      '         JOIN METGES        M  ON T.C_COORDINADOR = M.CODI'
      
        '         JOIN DRETSGRUPS    DG ON M.C_GRUP = DG.C_GRUP AND DG.C_' +
        'DRET = '#39'G22'#39
      
        '         JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL A' +
        'ND DE.C_DRET = '#39'E22'#39
      '         WHERE T.C_HISTORIA = :C_HISTORIA'
      
        '         AND (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI' +
        ' OR T.DATA_ALTA IS NULL))'
      '         AND  P.TIPUS > 0 AND P.TIPUS < 4 AND P.FACTURAR = '#39'S'#39
      
        '         GROUP BY T.C_COORDINADOR, T.C_PRESTACIO, M.BAIXA, T.DAT' +
        'A_ALTA'
      '         ORDER BY 5 DESC'
      '         ROWS 1'
      
        '         INTO :C_COORDINADOR, :C_PRESTACIO, :BAIXA, :DATA_ALTA, ' +
        ':DATA_INGRES;'
      ''
      '         IF (DATA_INGRES IS NOT NULL) THEN'
      '         BEGIN'
      '             IF (BAIXA='#39'B'#39') THEN C_COORDINADOR = '#39'P06'#39';'
      '         END;'
      
        '         /* Si no n'#39'hi ha cap, buscar el tractament m'#233's recent E' +
        'ASE */'
      '         ELSE BEGIN'
      
        '           SELECT T.C_COORDINADOR, T.C_PRESTACIO, T.DATA_ALTA, M' +
        'AX(T.DATA_INGRES)'
      '           FROM TRACTAMENTS T'
      '           JOIN PRESTACION  P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '           WHERE T.C_HISTORIA = :C_HISTORIA'
      
        '           AND (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DAT' +
        'AI OR T.DATA_ALTA IS NULL))'
      '           AND  P.TIPUS = 0'
      '           GROUP BY T.C_COORDINADOR, T.C_PRESTACIO, T.DATA_ALTA'
      '           ORDER BY 4 DESC'
      '           ROWS 1'
      
        '           INTO :C_COORDINADOR, :C_PRESTACIO, :DATA_ALTA, :DATA_' +
        'INGRES;'
      '           '
      '           IF (DATA_INGRES IS NOT NULL) THEN'
      
        '           /* El coordinador per aquestes prestacions ser'#224'/n el/' +
        's que tingui/n el dret M63 */'
      '           BEGIN'
      '               ESEASE = '#39'S'#39';'
      
        '               IF (C_PRESTACIO = '#39'7000'#39') THEN  /* La 8000 no es ' +
        'suspendr'#224' */'
      '               BEGIN'
      '                   FOR SELECT DM.C_USUARI'
      '                   FROM DRETSMETGES DM'
      
        '                   JOIN METGES M ON DM.C_USUARI=M.CODI AND M.BAI' +
        'XA='#39'N'#39
      '                   WHERE DM.C_DRET = '#39'M63'#39
      '                   INTO :C_COORDINADOR'
      '                   DO BEGIN'
      '                       SUSPEND;'
      '                   END;'
      ''
      
        '                   /* Si no n'#39'hi hagu'#233's cap d'#39'actiu, ho passem a' +
        ' la DM2 */'
      '                   IF (C_COORDINADOR IS NULL) THEN'
      '                   BEGIN'
      '                       C_COORDINADOR = '#39'DM2'#39';'
      '                       SUSPEND;'
      '                   END;'
      '               END;'
      '           END;'
      ''
      
        '           /* Si no n'#39'hi ha cap, buscar el tractament m'#233's recent' +
        ' NO EASE d'#39'un coordinador amb drets G58 o M166. Nom'#233's pels pacie' +
        'nts en els que els falta la UM,'
      
        '              que '#233's el que poden codificar aquests professional' +
        's */'
      '           ELSE IF (DATA_INGRES IS NULL) THEN'
      '           BEGIN'
      '             IF (C_UNITATMEDICA=0) THEN'
      '             BEGIN'
      
        '               SELECT T.C_COORDINADOR, T.C_PRESTACIO, M.BAIXA, T' +
        '.DATA_ALTA, MAX(T.DATA_INGRES)'
      '               FROM TRACTAMENTS   T'
      
        '               JOIN PRESTACION    P  ON T.C_PRESTACIO = P.C_PRES' +
        'TACIO'
      '               JOIN METGES        M  ON T.C_COORDINADOR = M.CODI'
      '               WHERE T.C_HISTORIA = :C_HISTORIA'
      
        '               AND (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= ' +
        ':DATAI OR T.DATA_ALTA IS NULL))'
      
        '               AND  P.TIPUS > 0 AND P.TIPUS < 4  AND P.FACTURAR ' +
        '= '#39'S'#39
      
        '               AND (((SELECT COUNT(*) FROM DRETSGRUPS  DG WHERE ' +
        'DG.C_GRUP = M.C_GRUP AND DG.C_DRET = '#39'G58'#39' )>0) OR'
      
        '                    ((SELECT COUNT(*) FROM DRETSMETGES DM WHERE ' +
        'DM.C_USUARI=M.CODI   AND DM.C_DRET = '#39'M166'#39')>0)'
      '                   )'
      
        '               GROUP BY T.C_COORDINADOR, T.C_PRESTACIO, M.BAIXA,' +
        ' T.DATA_ALTA'
      '               ORDER BY 5 DESC'
      '               ROWS 1'
      
        '               INTO :C_COORDINADOR, :C_PRESTACIO, :BAIXA, :DATA_' +
        'ALTA, :DATA_INGRES;'
      '             END;'
      '             '
      '             IF (DATA_INGRES IS NOT NULL) THEN'
      '             BEGIN'
      '                 IF (BAIXA ='#39'B'#39') THEN C_COORDINADOR = '#39'P06'#39';'
      '             END;'
      
        '             /* Si no n'#39'hi ha cap, l'#39'associem a la P06 sense tra' +
        'ctament */'
      '             ELSE BEGIN'
      '                 C_COORDINADOR = '#39'P06'#39';'
      '                 DATA_INGRES   = NULL;'
      '             END;'
      '           END;'
      '         END;'
      ''
      '         IF (ESEASE = '#39'N'#39') THEN SUSPEND;'
      '       END;'
      '   END;'
      'END')
    Dic1 = Tractaments
    Dic2 = Filiacio
    Dic1Name = 'Tractaments'
    Dic2Name = 'Filiacio'
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
    Left = 968
    Top = 12
  end
  object LogHorariRehab: TDic
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
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'User'
        zType = tcIB_Varchar
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
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora inici rehabilitaci'#243
        NombreDB = 'HORA_INI_REHAB'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Hora final rehabilitaci'#243
        NombreDB = 'HORA_FIN_REHAB'
        Longitud = 5
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
          'Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'User'
        Master = Metges
        BuscaOrigen.Strings = (
          'Usuari')
        CopiarOrigen.Strings = (
          'Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'LogHorariRehab'
    NombreTabla = 'LogHorariRehab'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'Data'
      'Usuari'
      'Tractament'
      'Hora inici rehabilitaci'#243
      'Hora final rehabilitaci'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 244
    Top = 608
  end
  object TractActius_SenseL: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'Actius_SenseL'
    ForceNombreDB = False
    Body.Strings = (
      'select'
      
        'T.C_Tractament, T.C_Historia, T.C_Prestacio, T.Data_Ingres, T.C_' +
        'Coordinador,'
      'T.Data_Alta, T.Data_PreAlta, T.C_LLit, T.C_Planta, T.Durada,'
      
        'T.EstatInformeAlta, T.C_Motiu, T.EsProvisional, T.C_PrestacioOri' +
        'gen, T.Vegada,'
      'P.N_Prestacio, P.Resum, P.Tipus, P.EsEASE, P.Facturar,'
      'M.Metge, M.Cognom, M.Tracte, M.C_Grup, M.C_Especial,'
      
        'F.NomComplet, F.Sexo, F.Bloqueig, F.Idioma, F.Unitat, F.EsViu, F' +
        '.Edat, '
      'T.C_Proces, T.FI_Proces, T.C_CentreFac'
      'from TRACTAMENTS T '
      'join  PRESTACION     P on T.C_PRESTACIO = P.C_PRESTACIO'
      'join  METGES             M on M.CODI = T.C_COORDINADOR'
      'join  FILIACIO              F on T.C_HISTORIA = F.NUM_HIST'
      'where T.DATA_INGRES <= "TODAY"'
      'and     (T.DATA_ALTA is Null or T.DATA_ALTA>="TODAY")'
      'and     P.TIPUS <> 4 '
      'and     P.TIPUS <> 6')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37076.760778206
    Left = 732
    Top = 396
  end
  object Filiacio_BeforeI_OLD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE TEMPHIST INTEGER;'
      ''
      '  DECLARE VARIABLE NOM     VARCHAR(20);'
      '  DECLARE VARIABLE COGNOM1 VARCHAR(20);'
      '  DECLARE VARIABLE COGNOM2 VARCHAR(20);'
      ''
      '  DECLARE VARIABLE TIPUSPRESTA  INTEGER;'
      '  DECLARE VARIABLE ULTIMAPRESTA INTEGER;'
      ''
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      NEW.BLOQUEIG = NULL;'
      '      NEW.C_ClasAnat = -1;'
      ''
      ''
      '      /* ************************************************* */'
      '      /* ********** ASSIGNEM N'#218'MERO D'#39'HIST'#210'RIA *********** */'
      '      /* ************************************************* */'
      ''
      '      IF (NEW.NUM_HIST IS NULL) THEN'
      '      BEGIN'
      '            SELECT NEWCODE'
      '            FROM P_FILIACIO_ASSIGNANUMERO'
      '            INTO :TEMPHIST;'
      ''
      '            NEW.NUM_HIST = TEMPHIST;'
      '      END;'
      ''
      ''
      '      /* ************************************************* */'
      '      /* ************ COMPOSEM EL NOM COMPLET ************ */'
      '      /* ************************************************* */'
      ''
      
        '      IF ((NEW.NOMBRE    = '#39#39') OR (NEW.NOMBRE    IS NULL)) THEN ' +
        'NOM     = '#39'-'#39'; ELSE NOM = NEW.NOMBRE;'
      
        '      IF ((NEW.APELLIDO1 = '#39#39') OR (NEW.APELLIDO1 IS NULL)) THEN ' +
        'COGNOM1 = '#39'-'#39'; ELSE COGNOM1 = NEW.APELLIDO1;'
      
        '      IF ((NEW.APELLIDO2 = '#39#39') OR (NEW.APELLIDO2 IS NULL)) THEN ' +
        'COGNOM2 = '#39'-'#39'; ELSE COGNOM2 = NEW.APELLIDO2;'
      ''
      '      NEW.NOMCOMPLET = COGNOM1 || '#39' '#39' || COGNOM2 || '#39', '#39' || NOM;'
      ''
      ''
      ''
      '      /* ************************************************* */'
      '      /* *************** COMPOSEM L'#39'ADRE'#199'A *************** */'
      '      /* ************************************************* */'
      ''
      '      SELECT DIRECCION'
      
        '      FROM   P_FILIACIO_DIRECCION(NEW.TIPUSVIA, NEW.NOMVIA, NEW.' +
        'NUMERO, NEW.BLOC, NEW.ESCALA, NEW.PIS, NEW.PORTA)'
      '      INTO   NEW.ADRESA;'
      '      '
      '      '
      '     /* SI EL CAMP PENSIONISTA '#201'S NUL, EL POSEM BLANC */'
      '     IF (NEW.PENSIONIST IS NULL) THEN NEW.PENSIONIST = '#39#39';'
      '     '
      '   END;'
      'END')
    Dic1 = Filiacio
    Dic1Name = 'Filiacio'
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
    ModiFecha = 37194.7325096065
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 565
    Top = 124
  end
  object E_NomPle: THYSqlException
    Projecto = wData.Projecte
    NombreDB = 'Filiacio_NomPle'
    ForceNombreDB = False
    Body.Strings = (
      'EL NOM I EL PRIMER COGNOM HAN D'#180'ESTAR INFORMATS')
    Dic1 = Filiacio
    Dic1Name = 'Filiacio'
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
    Top = 12
  end
  object AvisAltesSms: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AvisAltesSms'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA DATE)'
      'RETURNS (RET VARCHAR(100))'
      'AS'
      '  DECLARE VARIABLE DATA_ALTA    DATE;'
      '  DECLARE VARIABLE CODI         VARCHAR(5);'
      '  DECLARE VARIABLE TRACTE       CHAR(4);'
      '  DECLARE VARIABLE METGE        VARCHAR(20);'
      '  DECLARE VARIABLE NOMSENCER    VARCHAR(40);'
      '  DECLARE VARIABLE ESPECIALITAT VARCHAR(20);'
      '  DECLARE VARIABLE ENVIAR       SMALLINT;'
      '  DECLARE VARIABLE COS          VARCHAR(3000);'
      'BEGIN'
      ''
      '  ENVIAR = 0;'
      
        '  COS = "S'#39#39'han activat els seg'#252'ents professionals que tenen vis' +
        'ita programada (no exclosa) d'#39#39'una prestaci'#243' per la que s'#39#39'ha d'#39 +
        #39'enviar recordatori via SMS: " || F_NLine();'
      '  '
      
        '  FOR SELECT DISTINCT L.DATA, M.CODI, M.TRACTE, M.METGE, M.NOMSE' +
        'NCER, ES.N_ESPECIAL'
      '  FROM METGES      M'
      '  JOIN LOGCLAUS    L  ON L.CLAU=M.CODI'
      
        '/*  JOIN ESPERA      E  ON M.CODI=E.C_COORDINADOR AND (E.C_ESTAT' +
        ' BETWEEN 20 AND 29 OR E.C_ESTAT=95) AND E.EXCLOS='#39'N'#39' */ /*bvg*/'
      '  JOIN ESPERA      E  ON M.CODI = E.C_COORDINADOR'
      '  JOIN ESPECIAL    ES ON M.C_ESPECIAL=ES.C_ESPECIAL'
      
        '  JOIN DRETSPRESTA DP ON E.C_PRESTACIO=DP.C_PRESTACIO AND DP.C_D' +
        'RET IN('#39'P169'#39','#39'P171'#39','#39'P184'#39')'
      '  WHERE  E.C_ESTAT BETWEEN 20 AND 29      /*bvg*/'
      '  AND    E.EXCLOS = '#39'N'#39'                   /*bvg*/'
      '  AND    E.DATA_PREINGRES >= "TODAY" + 1  /*bvg*/'
      '  AND    E.DATA_PREINGRES <= "TODAY" + 8  /*bvg*/'
      '  AND    L.ACCIO='#39'A'#39
      '  AND    M.BAIXA='#39'N'#39
      '  AND    L.ALTA_SMS = '#39'N'#39
      '  ORDER  BY L.DATA'
      
        '  INTO :DATA_ALTA, :CODI, :TRACTE, :METGE, :NOMSENCER, :ESPECIAL' +
        'ITAT'
      '  DO BEGIN'
      '     ENVIAR = 1;'
      '  '
      '     COS = COS ||'
      
        '           :DATA_ALTA || " " || :CODI || " " || :TRACTE || " " |' +
        '| :METGE || " " || :NOMSENCER || " " || :ESPECIALITAT'
      '           || F_NLine();'
      '  END;'
      '  '
      '  IF (ENVIAR = 1)'
      
        '  THEN INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS,        ' +
        '                                   ASSUMPTE,  COS)'
      
        '              VALUES             (       "NOW",      34, '#39'Av'#237's a' +
        'lta de professionals amb visita programada'#39', :COS);'
      '  RET = '#39'ENVIAR = '#39'||ENVIAR;'
      'END')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    Left = 760
    Top = 240
  end
  object Anula_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Anula_BU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE OLD_ANULAT VARCHAR(2);'
      'DECLARE VARIABLE NEW_ANULAT VARCHAR(2);'
      'DECLARE VARIABLE PRESTA_DE_DIA_UNIC INTEGER;'
      'DECLARE VARIABLE ID_INFORME INTEGER;'
      'DECLARE VARIABLE ULT_ACCIO INTEGER;'
      'DECLARE VARIABLE NOU_ESTAT INTEGER;'
      'DECLARE VARIABLE ARXIU     VARCHAR(100);'
      'DECLARE VARIABLE DIAUNIC   INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '      IF (NEW.C_ESTATFAC <> OLD.C_ESTATFAC) THEN'
      '      BEGIN'
      
        '            SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI = "ESTA' +
        'TFACTU" AND C_CODI = OLD.C_ESTATFAC INTO :OLD_ANULAT;'
      
        '            SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI = "ESTA' +
        'TFACTU" AND C_CODI = NEW.C_ESTATFAC INTO :NEW_ANULAT;'
      '          '
      '            IF (OLD_ANULAT <> NEW_ANULAT) THEN'
      '            BEGIN'
      '                  /* Si anul'#183'len un tractament */'
      '                  IF (NEW_ANULAT = 9) THEN'
      '                  BEGIN'
      
        '                        /* Posem alta = ingr'#233's-1 perqu'#232' no surti' +
        ' als llistats de tractaments actius, prestacions compatibles, et' +
        'c. */'
      '                        NEW.DATA_ALTA = NEW.DATA_INGRES -1;'
      ''
      
        '                        /* Posem prealta = ingr'#233's-1 (si estava i' +
        'nformada) perqu'#232' no surti als llistats */'
      
        '                        IF (NEW.DATA_PREALTA IS NOT NULL) THEN N' +
        'EW.DATA_PREALTA = NEW.DATA_INGRES -1;'
      ''
      
        '                        /* Traiem la marca d'#39'informe d'#39'alta pend' +
        'ent */'
      
        '                        IF (NEW.ESTATINFORMEALTA > 0) THEN NEW.E' +
        'STATINFORMEALTA = 0;'
      ''
      
        '                        /* Anul'#183'lem la sol'#183'licitud d'#39'informe d'#39'a' +
        'lta si existia*/'
      '                        SELECT I.ID_INFORME'
      '                        FROM   INFORMES I'
      
        '                        JOIN   INFORMES_TIPUS T ON I.C_TIPUS = T' +
        '.C_TIPUS AND T.ORDRE = 1 AND I.C_ESTAT <> 9'
      '                        WHERE  I.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        INTO  :ID_INFORME;'
      '                              '
      '                        IF (ID_INFORME IS NOT NULL) THEN'
      '                        BEGIN'
      
        '                              UPDATE INFORMES I SET C_ESTAT = 9 ' +
        'WHERE ID_INFORME = :ID_INFORME;'
      ''
      
        '                              INSERT INTO INFORMES_REG (ID_INFOR' +
        'ME, ACCIO, COMENTARI, DATA)'
      
        '                              VALUES (:ID_INFORME, 9, "Tractamen' +
        't anul'#183'lat", "NOW");'
      '                        END;'
      ''
      
        '                        /* Posem com a "no procedeix" les escale' +
        's pendents que s'#39'haguessin generat */'
      
        '                        UPDATE ESCALESPENDENTS SET ESTAT = 99 WH' +
        'ERE C_TRACTAMENT = NEW.C_TRACTAMENT AND ESTAT < 5;'
      '                        '
      
        '                        /* Si simplement anul'#183'len un tractament ' +
        '(ie: no '#233's canvi de visita a ingr'#233's ni viceversa),'
      
        '                           tornem a posar "activa" l'#39'agenda o l'#39 +
        'espera programada */'
      '                        IF (NEW.C_ESTATFAC = 55) THEN'
      '                        BEGIN'
      
        '                            UPDATE ESPERA SET C_ESTAT = 20 WHERE' +
        ' C_TRACTAMENTDESTI = NEW.C_TRACTAMENT AND C_ESTAT = 90;'
      
        '                            UPDATE ESPERA SET C_ESTAT = 30 WHERE' +
        ' C_TRACTAMENTDESTI = NEW.C_TRACTAMENT AND C_ESTAT = 95;'
      '                        END'
      '                  END'
      ''
      ''
      '                  /* Si des-anul'#183'len un tractament */'
      '                  IF (OLD_ANULAT = 9) THEN'
      '                  BEGIN'
      
        '                        /* Si '#233's prestaci'#243' de dia '#250'nic, posem da' +
        'ta_alta = data_ingres. Atrament, traiem la data d'#39'alta */'
      
        '                        SELECT COUNT(*) FROM DRETSPRESTA WHERE C' +
        '_DRET = '#39'P'#39' AND C_PRESTACIO = NEW.C_PRESTACIO INTO :DIAUNIC;'
      
        '                        IF (DIAUNIC > 0) THEN NEW.DATA_ALTA = NE' +
        'W.DATA_INGRES;'
      
        '                                         ELSE NEW.DATA_ALTA = NU' +
        'LL;'
      ''
      
        '                        /* Traiem la data de prealta, si estava ' +
        'informada */'
      
        '                        IF (OLD.DATA_PREALTA IS NOT NULL) THEN N' +
        'EW.DATA_PREALTA = NULL;'
      ''
      
        '                        /* Recuperem la sol'#183'licitud d'#39'informe d'#39 +
        'alta anul'#183'lada, si n'#39'hi ha */'
      '                        SELECT I.ID_INFORME, I.ARXIU, R.ACCIO'
      '                        FROM   INFORMES I'
      
        '                        JOIN   INFORMES_TIPUS T ON I.C_TIPUS = T' +
        '.C_TIPUS AND T.ORDRE = 1'
      
        '                        JOIN   INFORMES_REG R ON I.ID_INFORME = ' +
        'R.ID_INFORME'
      '                        WHERE  I.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    I.C_ESTAT = 9'
      
        '                        AND   (R.ACCIO BETWEEN 1 AND 6 OR R.ACCI' +
        'O = 55)'
      '                        ORDER  BY R.LINIA DESC'
      '                        ROWS   1'
      '                        INTO  :ID_INFORME, :ARXIU, :ULT_ACCIO;'
      ''
      '                        IF (ARXIU IS NULL) THEN ARXIU = '#39#39';'
      ''
      '                        IF (ID_INFORME IS NOT NULL) THEN'
      '                        BEGIN'
      
        '                              IF      (ULT_ACCIO =  1) THEN NOU_' +
        'ESTAT =  0;   /* sol'#183'licitud            -> pendent de fer */'
      
        '                              ELSE IF (ULT_ACCIO =  2) THEN NOU_' +
        'ESTAT =  1;   /* complimentaci'#243' d'#39#237'tems -> omplint '#237'tems */'
      
        '                              ELSE IF (ULT_ACCIO =  3) THEN NOU_' +
        'ESTAT =  3;   /* marcat com a fet       -> pendent de corregir *' +
        '/'
      
        '                              ELSE IF (ULT_ACCIO =  4) THEN NOU_' +
        'ESTAT =  4;   /* marcat com a corregit  -> pendent validar */'
      
        '                              ELSE IF (ULT_ACCIO =  5) THEN NOU_' +
        'ESTAT =  6;   /* validaci'#243'              -> pendent finalitzar/pu' +
        'blicar */'
      
        '                              ELSE IF (ULT_ACCIO =  6) THEN NOU_' +
        'ESTAT = 10;   /* finalitzaci'#243'           -> finalizat */'
      
        '                              ELSE IF (ULT_ACCIO = 55) THEN NOU_' +
        'ESTAT =  5;   /* validaci'#243' fellow       -> pendent validar (supe' +
        'rvisor) */'
      '                                                  '
      
        '                              IF ((NOU_ESTAT IN (0,1)) AND (ARXI' +
        'U <> '#39#39')) THEN NOU_ESTAT = 2; /* pendent de fer o omplint '#237'tems,' +
        ' per'#242' existeix arxiu -> en edici'#243' */'
      ''
      
        '                              UPDATE INFORMES I SET C_ESTAT = :N' +
        'OU_ESTAT WHERE ID_INFORME = :ID_INFORME;'
      ''
      
        '                              INSERT INTO INFORMES_REG (ID_INFOR' +
        'ME, ACCIO, COMENTARI, DATA)'
      
        '                              VALUES (:ID_INFORME, 16, "Tractame' +
        'nt des-anul'#183'lat", "NOW");'
      '                        END;'
      ''
      
        '                        /* Recuperem les escales pendents marcad' +
        'es com a "no procedeix per anul'#183'laci'#243'" */'
      
        '                        UPDATE ESCALESPENDENTS SET ESTAT = 0 WHE' +
        'RE C_TRACTAMENT = NEW.C_TRACTAMENT AND ESTAT = 99;'
      ''
      
        '                        /* Si simplement des-anul'#183'len un tractam' +
        'ent (ie: no era canvi de visita a ingr'#233's ni viceversa),'
      
        '                           tornem a matar l'#39'agenda o l'#39'espera pr' +
        'ogramada */'
      '                        IF (OLD.C_ESTATFAC = 55) THEN'
      '                        BEGIN'
      
        '                            UPDATE ESPERA SET C_ESTAT = 90 WHERE' +
        ' C_TRACTAMENTDESTI = NEW.C_TRACTAMENT AND C_ESTAT = 20;'
      
        '                            UPDATE ESPERA SET C_ESTAT = 95 WHERE' +
        ' C_TRACTAMENTDESTI = NEW.C_TRACTAMENT AND C_ESTAT = 30;'
      '                        END'
      '                  END'
      '            END'
      ''
      '            '
      '      END'
      '   END'
      'END')
    Dic1 = Tractaments
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
    Accion1 = taANTES
    Accion2 = taUPDATE
    Left = 408
    Top = 492
  end
  object EspecialProf: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Especialitat'
        NombreDB = 'C_Especial'
        Longitud = 2
        Consulta = 'esp'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Idioma'
        NombreDB = 'C_Idioma'
        Longitud = 2
        Consulta = 'Idioma'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Titol'
        NombreDB = 'Titol'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'prima'
        NombreDB = 'prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Especialitat'
          'Idioma')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'esp'
        NombreDB = 'esp'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Codi Especialitat')
        Tipo = tiForaneo
        ForaneoDic = Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Idioma'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Idioma')
        CopiarOrigen.Strings = (
          'Idioma')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "IDIOMA"'
      end
      item
        Nombre = 'esp'
        Master = Especial
        BuscaOrigen.Strings = (
          'Codi Especialitat')
        CopiarOrigen.Strings = (
          'Codi Especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end>
    Nombre = 'EspecialProf'
    NombreTabla = 'Especial_Prof'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Especialitat'
      'Idioma'
      'Titol')
    IndiceVer = 'prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 201
    Top = 363
  end
  object InsIntercon: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'InsIntercon'
    ForceNombreDB = False
    Body.Strings = (
      '      DECLARE VARIABLE SEXE CHAR(1);'
      '      DECLARE VARIABLE EDAT INTEGER;'
      '      DECLARE VARIABLE UNITAT INTEGER;'
      '      DECLARE VARIABLE UM INTEGER;'
      ''
      '      DECLARE VARIABLE ES_REVISIO SMALLINT;'
      '      DECLARE VARIABLE FER_ECO SMALLINT;'
      ''
      '      DECLARE VARIABLE OBLIGA_ESCALES INTEGER;'
      '      DECLARE VARIABLE TRACTINI_PROCES INTEGER;'
      '      DECLARE VARIABLE C_MOTIU SMALLINT;'
      '      DECLARE VARIABLE C_DESTINACIO SMALLINT;'
      ''
      '      DECLARE VARIABLE C_GRUP CHAR(2);'
      '      DECLARE VARIABLE DATAHORA DATE;'
      '      DECLARE VARIABLE C_INTERCON INTEGER;'
      '      DECLARE VARIABLE SOLICITA  VARCHAR(3000);'
      '      DECLARE VARIABLE MARCA CHAR(1);'
      '      '
      '      DECLARE VARIABLE ESPECIAL VARCHAR(2);'
      '      DECLARE VARIABLE PERFIL   VARCHAR(5);'
      ''
      '      DECLARE VARIABLE DESCRIPCIO VARCHAR(254);'
      '      DECLARE VARIABLE CODI_APA   VARCHAR(10);'
      '      '
      '      DECLARE VARIABLE DATA_PREVISTA DATE;'
      '      '
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '      SELECT SEXO, EDAT, UNITAT, C_UNITATMEDICA FROM FILIACIO WH' +
        'ERE NUM_HIST = NEW.C_HISTORIA INTO :SEXE, :EDAT, :UNITAT, :UM;'
      ''
      ''
      '      /* Mirem els drets del motiu */'
      '      ES_REVISIO = 0;'
      '      FER_ECO    = 0;'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = NEW.C_MOTI' +
        'U AND C_DRET = "X5" INTO :ES_REVISIO;'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = NEW.C_MOTI' +
        'U AND C_DRET = "X6" INTO :FER_ECO;'
      ''
      
        '      /* Nom'#233's generarem ECOS per als ingressos que siguin de la' +
        ' unitat administrativa 1 o 5 */'
      '      IF ((UNITAT <> 1) AND (UNITAT <> 5)) THEN FER_ECO = 0;'
      ''
      ''
      '      /* ************************************************ */'
      '      /* *** PROC'#201'S REHABILITADOR -> ESCALES PENDENTS *** */'
      '      /* ************************************************ */'
      ''
      '      /* Si s'#39'inicia un proc'#233's rehabilitador'
      
        '         o b'#233' reingressa per proc'#233's rehabilitador agut, i havia ' +
        'estat alta per trasllat'
      
        '         insertem les escales obligat'#242'ries a l'#39'ingr'#233's, a Escales' +
        'Pendents */'
      '      IF (NEW.C_PROCES IS NOT NULL) THEN'
      '      BEGIN'
      
        '            /* Nom'#233's ho farem si la prestaci'#243' t'#233' el dret P550 (j' +
        'a que algunes visites tenen el C_Proces informat quan des de CE ' +
        'es programa un ambulatori) */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' NEW.C_PRESTACIO AND C_DRET = '#39'P550'#39' INTO :OBLIGA_ESCALES;'
      ''
      '            IF (OBLIGA_ESCALES > 0) THEN'
      '            BEGIN'
      '                  TRACTINI_PROCES = 0;'
      ''
      '                  /* Busquem el 1r tractament del proc'#233's */'
      '                  SELECT C_TRACTAMENT, C_MOTIU'
      '                  FROM   TRACTAMENTS'
      '                  WHERE  C_PROCES = NEW.C_PROCES'
      '                  ORDER  BY DATA_INGRES'
      '                  ROWS   1'
      
        '                  INTO  :TRACTINI_PROCES, :C_MOTIU;  /* Ens guar' +
        'dem el motiu del 1r ingr'#233's del proc'#233's */'
      ''
      
        '                  /* Si '#233's aquest, insertem les escales pendents' +
        ' a l'#39'ingr'#233's */'
      
        '                  IF (NEW.C_TRACTAMENT = TRACTINI_PROCES) THEN E' +
        'XECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_I(NEW.C_TRACTAMENT);'
      '            '
      
        '                  /* Altrament, mirem si '#233's un reingr'#233's per tras' +
        'llat: */'
      '                  ELSE IF (NEW.C_PRESTACIO = '#39'1004'#39') THEN'
      '                  BEGIN'
      '                        SELECT C_DESTINACIO'
      '                        FROM   TRACTAMENTS'
      '                        WHERE  C_HISTORIA = NEW.C_HISTORIA'
      '                        AND    C_PRESTACIO = '#39'1004'#39
      '                        AND    DATA_INGRES < NEW.DATA_INGRES'
      '                        ORDER BY DATA_INGRES DESC'
      '                        ROWS 1'
      '                        INTO :C_DESTINACIO;'
      '            '
      
        '                        /* Si '#233's reingr'#233's d'#39'un PROC'#201'S INICIALMEN' +
        'T AGUT que va ser ALTA PER TRASLLAT, insertem novament escales p' +
        'endents a l'#39'ingr'#233's */'
      
        '                        /* Reingr'#233's: menys de 7 dies entre alta ' +
        'i reingr'#233's, per'#242' aqu'#237' ho considerarem reingr'#233's si pertany al mat' +
        'eix proc'#233's (30 dies) */'
      
        '                        /*           (De fet, si no pertany al m' +
        'ateix proc'#233's, ser'#224' un proc'#233's nou, i llavors tamb'#233' obligar'#224' a ent' +
        'rar les escales "I") */'
      
        '                        IF ((C_MOTIU = '#39'101'#39') AND (C_DESTINACIO ' +
        '= 2)) THEN EXECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_I(NEW.C_T' +
        'RACTAMENT);'
      '                  END;'
      '            END;'
      '      END;'
      ''
      
        '      /* Si es filia una revisi'#243' (o un ingr'#233's per revisi'#243' o valo' +
        'raci'#243' especialitzada), insertem les escales pendents corresponen' +
        'ts */'
      
        '      ELSE IF ((ES_REVISIO > 0) OR (NEW.C_PRESTACIO = '#39'6004'#39')) T' +
        'HEN EXECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_R(NEW.C_TRACTAME' +
        'NT);'
      '      '
      ''
      
        '      /* *******************************************************' +
        '********************* */'
      
        '      /* *** HOSPITALITZACI'#211' DE PACIENTS > 70 ANYS  -->  ESCALES' +
        ' PENDENTS CMBD-AH *** */'
      
        '      /* *******************************************************' +
        '********************* */'
      ''
      
        '      /* Per a ingressos sense proc'#233's, mirem si ha de tenir esca' +
        'les NoTIR */'
      '      ELSE IF (NEW.C_PRESTACIO = '#39'1004'#39') THEN'
      '      BEGIN'
      
        '            EXECUTE PROCEDURE P_ESCALESPENDENTS_INSERTA_NOTIR(NE' +
        'W.C_TRACTAMENT);'
      '      END;'
      
        '      /* Si s'#39'ha de fer tamb'#233' per a CMA i Hospital de dia, ho ca' +
        'nviarem per'
      '      ELSE BEGIN'
      
        '            SELECT TIPUS FROM PRESTACION WHERE C_PRESTACIO = NEW' +
        '.C_PRESTACIO INTO :TIPUS_PRESTA;'
      ''
      
        '            IF (TIPUS_PRESTA = 1) THEN EXECUTE PROCEDURE P_ESCAL' +
        'ESPENDENTS_INSERTA_A_NOTIR(NEW.C_TRACTAMENT);'
      '      END;'
      '      */'
      ''
      '      '
      '      /* ************************************ */'
      '      /* *** LINK A L'#39'ESTUDI CL'#205'NIC B'#192'SIC *** */'
      '      /* ************************************ */'
      ''
      '      IF ((NEW.C_PRESTACIO = "2014") AND (NEW.VEGADA <> 1))'
      '      THEN BEGIN'
      '   '
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            DATAHORA = "NOW";'
      '            DATAHORA = DATAHORA - 1/86400;'
      '      '
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  /* EsECB   ---*/'
      '                  QueEs     /*++*/'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                  NEW.C_TRACTAMENT,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_PRESTACIO,'
      '                  NEW.DATA_INGRES,'
      '                  NEW.C_COORDINADOR,'
      '                  :DATAHORA,'
      '                  NEW.C_COORDINADOR,'
      '                  :C_GRUP,'
      '                  "ESTUDI CL'#205'NIC B'#192'SIC",'
      '                  /* "S"     ---*/'
      '                  3         /*++*/'
      '            );'
      ''
      '      END;'
      ''
      ''
      
        '      /* *******************************************************' +
        '***** */'
      
        '      /* *** REVISIONS   ->   PETICIONS: ANAL'#205'TICA, RX, ECOGRAFI' +
        'A *** */   /* FEBRER 2013: NO DISPAREM "RX" ni "ANAL'#205'TIQUES" PER' +
        ' REVISIONS */'
      
        '      /* *******************************************************' +
        '***** */   /* ABRIL  2013: TORNEM A DISPARAR "ANAL'#205'TIQUES" PER R' +
        'EVISIONS   */'
      
        '                                                                ' +
        '           /* 23 MAIG 2017: CANVI DE LABORATORI UNILABS A APA   ' +
        '           */'
      ''
      '      IF (NEW.C_PRESTACIO = "2004") THEN'
      '      BEGIN'
      ''
      
        '            /* --- PETICI'#211' D'#39'ANAL'#205'TIQUES PER A UNA REVISI'#211' --- *' +
        '/'
      
        '            /* ----------------------------------------------- *' +
        '/'
      ''
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      ''
      '            SOLICITA='#39#39';'
      
        '            FOR SELECT CAST(f_REPLACETEXT('#39','#39','#39#39',A.DESCRIPCIO) A' +
        'S VARCHAR(254)) FROM CODRSANA_APA A'
      
        '            JOIN CODRSANA_GRUPS G ON A.CODI=G.CODIFILL AND G.MAR' +
        'CADO='#39'S'#39
      '            WHERE G.CODI='#39'G010'#39
      
        '            AND  (A.DATA_INI_ACTIVO <= "TODAY" AND (A.DATA_FIN_A' +
        'CTIVO >= "TODAY" OR A.DATA_FIN_ACTIVO IS NULL))'
      '            INTO :DESCRIPCIO'
      '            DO BEGIN'
      '                SOLICITA=SOLICITA||DESCRIPCIO||F_CRLF();'
      '            END;'
      ''
      '            /* HOMES > 50: gen'#232'rica + PSA */'
      '            IF ((SEXE = '#39'H'#39') AND (EDAT >= 50)) THEN'
      '            BEGIN'
      ''
      
        '                FOR SELECT CAST(f_REPLACETEXT('#39','#39','#39#39',A.DESCRIPCI' +
        'O) AS VARCHAR(254)) FROM CODRSANA_APA A'
      
        '                JOIN CODRSANA_GRUPS G ON A.CODI=G.CODIFILL AND G' +
        '.MARCADO='#39'S'#39
      '                WHERE G.CODI='#39'G011'#39
      
        '                AND  (A.DATA_INI_ACTIVO <= "TODAY" AND (A.DATA_F' +
        'IN_ACTIVO >= "TODAY" OR A.DATA_FIN_ACTIVO IS NULL))'
      '                INTO :DESCRIPCIO'
      '                DO BEGIN'
      '                    SOLICITA=SOLICITA||DESCRIPCIO||F_CRLF();'
      '                END;'
      '            END;'
      ''
      '            INSERT INTO INTERCON'
      '            (     C_Intercon,'
      '                  C_Historia,'
      '                  C_Tractament,'
      '                  C_Especial,'
      '                  C_Tipus,'
      '                  URGENT,'
      '                  Data1,'
      '                  C_Metge1,'
      '                  Solicita,'
      '                  Data_Prevista,'
      '                  Estat,'
      '                  Tipus_anal'
      '            )'
      '            VALUES'
      '            (     :C_INTERCON,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_TRACTAMENT,'
      '                  "13",'
      '                  "ANAL",'
      '                  "N",'
      '                  "TODAY",'
      '                  NEW.C_COORDINADOR,'
      '                  F_StrBlob(:SOLICITA),'
      '                  "TODAY",'
      '                  5,'
      '                  3  /* Altres */'
      '            );'
      ''
      ''
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  C_Intercon,'
      '                  Estat_Intercon'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                  NEW.C_TRACTAMENT,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_PRESTACIO,'
      '                  NEW.DATA_INGRES,'
      '                  NEW.C_COORDINADOR,'
      '                  "NOW",'
      '                  NEW.C_COORDINADOR,'
      '                  :C_GRUP,'
      '                  :SOLICITA,'
      '                  :C_INTERCON,'
      '                  5'
      '            );'
      '            '
      '            FOR SELECT G.CODIFILL FROM CODRSANA_APA A'
      
        '            JOIN CODRSANA_GRUPS G ON A.CODI=G.CODIFILL AND G.MAR' +
        'CADO='#39'S'#39
      '            WHERE G.CODI='#39'G010'#39
      
        '            AND  (A.DATA_INI_ACTIVO <= "TODAY" AND (A.DATA_FIN_A' +
        'CTIVO >= "TODAY" OR A.DATA_FIN_ACTIVO IS NULL))'
      '            INTO :CODI_APA'
      '            DO BEGIN'
      
        '                INSERT INTO ANALIT_SOLICITUD (CODI, DATA, C_INTE' +
        'RCON)'
      '                VALUES (:CODI_APA, "NOW", :C_INTERCON);'
      '            END;'
      '            '
      '            /* HOMES > 50: gen'#232'rica + PSA */'
      '            IF ((SEXE = '#39'H'#39') AND (EDAT >= 50)) THEN'
      '            BEGIN'
      '                FOR SELECT G.CODIFILL FROM CODRSANA_APA A'
      
        '                JOIN CODRSANA_GRUPS G ON A.CODI=G.CODIFILL AND G' +
        '.MARCADO='#39'S'#39
      '                WHERE G.CODI='#39'G011'#39
      
        '                AND  (A.DATA_INI_ACTIVO <= "TODAY" AND (A.DATA_F' +
        'IN_ACTIVO >= "TODAY" OR A.DATA_FIN_ACTIVO IS NULL))'
      '                INTO :CODI_APA'
      '                DO BEGIN'
      
        '                    INSERT INTO ANALIT_SOLICITUD (CODI, DATA, C_' +
        'INTERCON)'
      '                    VALUES (:CODI_APA, "NOW", :C_INTERCON);'
      '                END;'
      '            END;'
      ''
      '            /* --- PETICI'#211' D'#39'ECOGRAFIA PER A UNA REVISI'#211' --- */'
      '            /* --------------------------------------------- */'
      ''
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      
        '            SELECT F_MID(f_BlobAsPChar(ANALITRMP), 0, 1) FROM CO' +
        'NFIG INTO :MARCA;'
      ''
      
        '            SOLICITA = MARCA || '#39' Antecedents: -'#39' || F_NLine() |' +
        '|'
      
        '                       MARCA || '#39' Motiu: Ecografia abdominal'#39' ||' +
        ' F_NLine() ||'
      '                       MARCA || '#39' Observacions: -'#39';'
      ''
      '            DATA_PREVISTA = "TODAY";'
      '            DATA_PREVISTA = DATA_PREVISTA + 1/2;'
      ''
      '            INSERT INTO INTERCON'
      '            (     C_Intercon,'
      '                  C_Historia,'
      '                  C_Tractament,'
      '                  C_Especial,'
      '                  C_Tipus,'
      '                  URGENT,'
      '                  Data1,'
      '                  C_Metge1,'
      '                  Solicita,'
      '                  Data_Prevista,'
      '                  Estat,'
      '                  InformeRX'
      '            )'
      '            VALUES'
      '            (     :C_INTERCON,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_TRACTAMENT,'
      '                  "03",'
      '                  "ECOS",'
      '                  "N",'
      '                  "TODAY",'
      '                  NEW.C_COORDINADOR,'
      '                  F_StrBlob(:SOLICITA),'
      '                  :DATA_PREVISTA,'
      '                  12,'
      '                  '#39'N'#39
      '            );'
      ''
      ''
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  C_Intercon,'
      '                  Estat_Intercon'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                  NEW.C_TRACTAMENT,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_PRESTACIO,'
      '                  NEW.DATA_INGRES,'
      '                  NEW.C_COORDINADOR,'
      '                  "NOW",'
      '                  NEW.C_COORDINADOR,'
      '                  :C_GRUP,'
      '                  :SOLICITA,'
      '                  :C_INTERCON,'
      '                  12'
      '            );'
      ''
      '      END;'
      ''
      ''
      '      /* ***************************************** */'
      
        '      /* *** URO PER A INGRESSSOS AMB MOTIU X6 *** */     /* TRA' +
        'CTAMENT REHABILITADOR, REVISIONS O VALORACIONS. UNITATS ADMINIST' +
        'RATIVES 1 i 5 */'
      
        '      /* ***************************************** */     /* ie:' +
        ' tots excepte complicaci'#243' i cirurgia           */'
      
        '                                                          /* GEN' +
        'ER 2014: en comptes d'#39'una ECO, disparem una INTERCON a Urologia ' +
        '*/'
      
        '                                                          /* ABR' +
        'IL 2016: tamb'#233' disparem Intercon Urologia per a ambulatoris TIR ' +
        'sense ingr'#233's previ */'
      ''
      '      IF ( (FER_ECO > 0)'
      '      AND ((NEW.C_PRESTACIO = '#39'1004'#39')'
      '           OR'
      
        '          ((NEW.C_PRESTACIO = '#39'2014'#39') AND (NEW.VEGADA = 0))) ) T' +
        'HEN'
      '      BEGIN'
      ''
      
        '            SELECT F_MID(f_BlobAsPChar(ANALITRMP), 0, 1) FROM CO' +
        'NFIG INTO :MARCA;'
      '            '
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      
        '            SOLICITA = MARCA || '#39' Antecedents: -'#39' || F_NLine() |' +
        '|'
      
        '                       MARCA || '#39' Motiu: Consulta a Urologia per' +
        ' ingr'#233's '#39' || F_NLine() ||'
      '                       MARCA || '#39' Observacions: -'#39';'
      ''
      '            INSERT INTO INTERCON'
      '            (     C_Intercon,'
      '                  C_Historia,'
      '                  C_Tractament,'
      '                  C_Especial,'
      '                  C_Tipus,'
      '                  URGENT,'
      '                  Data1,'
      '                  C_Metge1,'
      '                  Diag_Inicial,'
      '                  Solicita,'
      '                  Estat,'
      '                  InformeRX'
      '            )'
      '            VALUES'
      '            (     :C_INTERCON,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_TRACTAMENT,'
      '                  "03",'
      
        '                  "INTERCON",       /* "ECOS",       Gener 2014:' +
        ' enc omptes d'#39'ECO, disparem INTERCON Urologia */'
      '                  "N",'
      '                  "TODAY",'
      '                  NEW.C_COORDINADOR,'
      '                  " Control ingr'#233's",'
      '                  F_StrBlob(:SOLICITA),'
      
        '                  1,               /* 12,            Gener 2014:' +
        ' enc omptes d'#39'ECO, disparem INTERCON Urologia */'
      '                  '#39'N'#39
      '            );'
      ''
      ''
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  C_Intercon,'
      '                  Estat_Intercon'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                  NEW.C_TRACTAMENT,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_PRESTACIO,'
      '                  NEW.DATA_INGRES,'
      '                  NEW.C_COORDINADOR,'
      '                  "NOW",'
      '                  NEW.C_COORDINADOR,'
      '                  :C_GRUP,'
      '                  :SOLICITA,'
      '                  :C_INTERCON,'
      
        '                  1                /* 12             Gener 2014:' +
        ' en comptes d'#39'ECO, disparem INTERCON Urologia */'
      '            );'
      '      END;'
      ''
      ''
      
        '      /* *******************************************************' +
        '********* */'
      
        '      /* *** VISITA PREOPERATORI  ->  PETICI'#211' ANAL'#205'TICA PERFIL P' +
        'REOP. *** */'
      
        '      /* *******************************************************' +
        '********* */'
      ''
      '      IF (NEW.C_MOTIU = '#39'61'#39') THEN'
      '      BEGIN'
      
        '            SELECT C_GRUP, C_ESPECIAL FROM METGES WHERE CODI = N' +
        'EW.C_COORDINADOR INTO :C_GRUP, :ESPECIAL;'
      ''
      
        '            IF (ESPECIAL = '#39'03'#39') THEN PERFIL = '#39'G006'#39';  /* Per a' +
        ' urologia es demanen tamb'#233' proves d'#39'orina */'
      '                                 ELSE PERFIL = '#39'G009'#39';'
      ''
      
        '            /* Creem interconsulta amb la descripci'#243' de les prov' +
        'es del perfil */'
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      '            SOLICITA='#39#39';'
      '            '
      
        '            FOR SELECT CAST(F_ReplaceText('#39','#39', '#39#39', A.DESCRIPCIO)' +
        ' AS VARCHAR(254))'
      '                FROM   CODRSANA_APA A'
      
        '                JOIN   CODRSANA_GRUPS G ON A.CODI = G.CODIFILL A' +
        'ND G.MARCADO = '#39'S'#39
      '                /* WHERE  G.CODI = '#39'G009'#39' */'
      '                WHERE  G.CODI = :PERFIL'
      
        '                AND   (A.DATA_INI_ACTIVO <= "TODAY" AND (A.DATA_' +
        'FIN_ACTIVO >= "TODAY" OR A.DATA_FIN_ACTIVO IS NULL))'
      '                INTO  :DESCRIPCIO'
      '            DO BEGIN'
      '                  SOLICITA = SOLICITA || DESCRIPCIO || F_CRLF();'
      '            END;'
      '            '
      
        '            INSERT INTO INTERCON (C_Intercon, C_Historia, C_Trac' +
        'tament, C_Especial, C_Tipus, Urgent, Data1, C_Metge1, Solicita, ' +
        'Data_Prevista, Estat)'
      
        '            VALUES (:C_INTERCON, NEW.C_HISTORIA, NEW.C_TRACTAMEN' +
        'T, "13", "ANAL", "N", "TODAY", NEW.C_COORDINADOR, F_StrBlob(:SOL' +
        'ICITA), "TODAY", 5);'
      ''
      '            /* Afegim anotaci'#243' al curs cl'#237'nic */'
      
        '            INSERT INTO HISTORIA (C_Anotacio, C_Tractament, C_Hi' +
        'storia, C_Prestacio, Data_Ingres, C_Coordinador, Data, C_Usuari,' +
        ' C_Grup, Anotacio, C_Intercon, Estat_Intercon)'
      
        '            VALUES (GEN_ID(CONTAHISTORIA,1), NEW.C_TRACTAMENT, N' +
        'EW.C_HISTORIA, NEW.C_PRESTACIO, NEW.DATA_INGRES, NEW.C_COORDINAD' +
        'OR, "NOW", NEW.C_COORDINADOR, :C_GRUP, :SOLICITA, :C_INTERCON, 5' +
        ');'
      ''
      
        '            /* Inserim les proves a Analit_Solicitud (ho hem de ' +
        'fer despr'#233's d'#39'haver generat la interconsulta */'
      '            FOR SELECT G.CODIFILL'
      '                FROM   CODRSANA_APA A'
      
        '                JOIN   CODRSANA_GRUPS G ON A.CODI = G.CODIFILL A' +
        'ND G.MARCADO = '#39'S'#39
      '                /* WHERE  G.CODI = '#39'G009'#39' */'
      '                WHERE  G.CODI = :PERFIL'
      
        '                AND   (A.DATA_INI_ACTIVO <= "TODAY" AND (A.DATA_' +
        'FIN_ACTIVO >= "TODAY" OR A.DATA_FIN_ACTIVO IS NULL))'
      '                INTO  :CODI_APA'
      '            DO BEGIN'
      
        '                  INSERT INTO ANALIT_SOLICITUD (CODI, DATA, C_IN' +
        'TERCON)'
      '                  VALUES (:CODI_APA, "NOW", :C_INTERCON);'
      '            END;'
      '      END'
      '            '
      '            '
      
        '      /* *******************************************************' +
        '*** */'
      
        '      /* *** INTERCONSULTA A FARM'#192'CIA: CONCILIACI'#211' DE MEDICACI'#211' ' +
        '*** */'
      
        '      /* *******************************************************' +
        '*** */'
      ''
      '      /* Per a tots els ingressos i ingressos provisionals: */'
      '      IF ( (NEW.C_PRESTACIO = '#39'1004'#39')'
      
        '      OR  ((NEW.C_PRESTACIO = '#39'9999'#39') AND (NEW.C_PRESTACIOORIGEN' +
        ' = '#39'1004'#39')) ) THEN'
      '      BEGIN'
      '      '
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      
        '            SOLICITA = '#39'Sol'#183'licito valoraci'#243' de la medicaci'#243' una' +
        ' vegada pautada, '#39' ||'
      
        '                       '#39'tenint en compte els apartats "Medicaci'#243 +
        ' habitual" i "Medicaci'#243' a l'#180'ingr'#233's" de l'#180'ECB.'#39' || F_NLine();'
      ''
      '            INSERT INTO INTERCON'
      '            (     C_Intercon,'
      '                  C_Historia,'
      '                  C_Tractament,'
      '                  C_Especial,'
      '                  C_Tipus,'
      '                  Urgent,'
      '                  Data1,'
      '                  C_Metge1,'
      '                  Solicita,'
      '                  Estat'
      '            )'
      '            VALUES'
      '            (    :C_INTERCON,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_TRACTAMENT,'
      '                  "57",    /* especialitat Farm'#224'cia */'
      '                  "CONCILMED",'
      '                  "N",'
      '                  "TODAY",'
      '                  NEW.C_COORDINADOR,'
      '                  F_StrBlob(:SOLICITA),'
      '                  16'
      '            );'
      ''
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  C_Intercon,'
      '                  Estat_Intercon'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                  NEW.C_TRACTAMENT,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_PRESTACIO,'
      '                  NEW.DATA_INGRES,'
      '                  NEW.C_COORDINADOR,'
      '                  "NOW",'
      '                  NEW.C_COORDINADOR,'
      '                  :C_GRUP,'
      '                  :SOLICITA,'
      '                  :C_INTERCON,'
      '                  16'
      '            );'
      '      END;'
      '      '
      '      '
      '      /* **************************************************** */'
      
        '      /* *** INTERCONSULTA A EASE: VALORACI'#211' DEL DOMICILI *** */' +
        '      /* AGOST 2019: JA NO ES GENEREN AUTOM'#192'TICAMENT */'
      '      /* **************************************************** */'
      ''
      
        '      /* Ingressos TIR de la unitat (administrativa) de lesi'#243' me' +
        'dul'#183'lar'
      
        '      IF ((NEW.C_PRESTACIO = '#39'1004'#39') AND (NEW.C_MOTIU = '#39'101'#39') A' +
        'ND (UNITAT = 1)) THEN'
      '      BEGIN'
      ''
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      '            SOLICITA = '#39'Valoraci'#243' del domicili '#39' || F_NLine();'
      ''
      '            INSERT INTO INTERCON'
      '            (     C_Intercon,'
      '                  C_Historia,'
      '                  C_Tractament,'
      '                  C_Especial,'
      '                  C_Tipus,'
      '                  Urgent,'
      '                  Data1,'
      '                  C_Metge1,'
      '                  Diag_Inicial,'
      '                  Solicita,'
      '                  Estat,'
      '                  C_MOTIU'
      '            )'
      '            VALUES'
      '            (    :C_INTERCON,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_TRACTAMENT,'
      '                  "33",    /* especialitat EASE'
      '                  "EASE",'
      '                  "N",'
      '                  "TODAY",'
      '                  NEW.C_COORDINADOR,'
      '                  "LM-TIR",'
      '                  F_StrBlob(:SOLICITA),'
      '                  1,'
      '                  101'
      '            );'
      ''
      
        '            SELECT C_GRUP FROM METGES WHERE CODI = NEW.C_COORDIN' +
        'ADOR INTO :C_GRUP;'
      ''
      '            INSERT INTO HISTORIA'
      '            ('
      '                  C_Anotacio,'
      '                  C_Tractament,'
      '                  C_Historia,'
      '                  C_Prestacio,'
      '                  Data_Ingres,'
      '                  C_Coordinador,'
      '                  Data,'
      '                  C_Usuari,'
      '                  C_Grup,'
      '                  Anotacio,'
      '                  C_Intercon,'
      '                  Estat_Intercon'
      '            )'
      '            VALUES'
      '            ('
      '                  GEN_ID(CONTAHISTORIA,1),'
      '                  NEW.C_TRACTAMENT,'
      '                  NEW.C_HISTORIA,'
      '                  NEW.C_PRESTACIO,'
      '                  NEW.DATA_INGRES,'
      '                  NEW.C_COORDINADOR,'
      '                  "NOW",'
      '                  NEW.C_COORDINADOR,'
      '                  :C_GRUP,'
      '                  :SOLICITA,'
      '                  :C_INTERCON,'
      '                  1'
      '            );'
      ''
      ''
      '      END;'
      '      */'
      '      '
      
        '      /* *******************************************************' +
        '*************** */'
      
        '      /* *** INTERCONSULTES (PROVES) PENDENTS: ACTUALITZEM EL C_' +
        'TRACTAMENT  *** */'
      
        '      /* *******************************************************' +
        '*************** */'
      ''
      
        '      /* Si el pacient ingressa i se li havia demanat una PROVA ' +
        'amb antelaci'#243', si aquesta encara est'#224' pendent de fer,'
      
        '         li actualitzem el c_tractament perqu'#232' puguin veure'#39'n le' +
        's dades (p. ex. la UH on est'#224' el pacient) */'
      
        '      /* Aix'#242' serveix sobretot per les proves demanades en el ma' +
        'rc d'#39'una prestaci'#243' no presencial */'
      '      /*'
      '      IF (NEW.C_PRESTACIO = '#39'1004'#39') THEN'
      '      BEGIN'
      '            FOR SELECT C_INTERCON'
      '                FROM   INTERCON'
      '                WHERE  C_HISTORIA = NEW.C_HISTORIA'
      '                AND    C_TRACTAMENT <> NEW.C_TRACTAMENT'
      
        '                AND    DATA1 >= "TODAY"-60     /* Nom'#233's les dels' +
        ' dos '#250'ltims mesos'
      '                AND    ESTAT < 80              /* No anul'#183'lades'
      
        '                AND    DATA_PROVA IS NULL      /* Amb prova pend' +
        'ent de fer'
      
        '                AND   (C_TIPUS = '#39'RX'#39' OR C_TIPUS = '#39'ANAL'#39' OR C_T' +
        'IPUS = '#39'UROS'#39' OR C_TIPUS = '#39'ECOS'#39' OR C_TIPUS = '#39'EMG'#39' OR C_TIPUS ' +
        '= '#39'PSG'#39')'
      '                INTO  :C_INTERCON'
      '            DO BEGIN'
      '                UPDATE INTERCON'
      '                SET C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                WHERE C_INTERCON = :C_INTERCON;'
      '            END;'
      '      END;'
      '      */'
      '   END;'
      ''
      'END'
      ''
      ''
      '')
    Dic1 = Tractaments
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
    ModiFecha = 37203.4522437616
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 264
    Top = 492
  end
  object MaxEstadesUnespa: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'MaxEstadesUnespa'
    ForceNombreDB = False
    Body.Strings = (
      'returns ('
      '      C_HISTORIA INTEGER,'
      '      DURADA INTEGER'
      '      )'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT    INTEGER;'
      '  DECLARE VARIABLE NOMCOMPLET      VARCHAR(80);'
      '  DECLARE VARIABLE ES_UNESPA       CHAR(1);'
      '  DECLARE VARIABLE DATA_SINISTRE   DATE;'
      '  DECLARE VARIABLE DATA_PREALTA    DATE;'
      '/*  DECLARE VARIABLE C_HISTORIA      INTEGER;'
      '  DECLARE VARIABLE DURADA          INTEGER; */'
      '  DECLARE VARIABLE EMAIL           VARCHAR(250);'
      '  DECLARE VARIABLE DATA_TALL       DATE;'
      '  DECLARE VARIABLE ENVIAT          CHAR(1);'
      '  DECLARE VARIABLE ULTIM_ENVIAMENT DATE;'
      '  DECLARE VARIABLE S_DATA_PREALTA  VARCHAR(10);'
      'BEGIN'
      
        '      /* 30 dies abans del l'#237'mit de durada m'#224'xima de les hospita' +
        'litzacions UNESPA (180 dies), avisem Admissions i el metge coord' +
        'inador */'
      ''
      
        '      SELECT DATA FROM UNESPADATES WHERE ID = "TALL_2021" INTO :' +
        'DATA_TALL ;'
      '      IF (DATA_TALL IS NULL) THEN DATA_TALL = 0;'
      ''
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPLET, T.D' +
        'ATA_PREALTA, T.DURADA, M.EMAIL'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   CLIENTS     C  ON T.C_CENTREFAC = C.C_CENTREFAC' +
        ' AND T.C_CLIENT = C.C_CLIENT'
      '          JOIN   FILIACIO    F  ON T.C_HISTORIA = F.NUM_HIST'
      '          JOIN   METGES      M  ON T.C_COORDINADOR = M.CODI'
      '          WHERE  T.C_PRESTACIO = '#39'1004'#39
      
        '          AND    T.DATA_INGRES + 150 <= "TODAY"                 ' +
        '                   /* No mirem 150 dies exactes per si hi ha can' +
        'vis de prealta posteriors */'
      '          AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA > "TODAY")'
      
        '          AND   (T.DATA_PREALTA IS NULL OR T.DATA_PREALTA >= T.D' +
        'ATA_INGRES + 180)  /* Data d'#39'alta prevista per m'#233's enll'#224' del l'#237'm' +
        'it de 180 dies */'
      '          AND    T.DATA_SINISTRE >= :DATA_TALL'
      '          AND    C.ES_UNESPA = '#39'S'#39
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :DATA_P' +
        'REALTA, :DURADA, :EMAIL'
      '      DO BEGIN'
      '          ULTIM_ENVIAMENT = NULL;'
      '          '
      '          /* Si ja porta 150 dies d'#39'hospitalitzaci'#243
      
        '             i la data d'#39'alta no est'#224' prevista pels propers 7 di' +
        'es (ja hem filtrat pels que la tenen fora del l'#237'mit de 180 dies)'
      '             --> enviem correu d'#39'av'#237's */'
      '          IF  ((DURADA >= 150)'
      
        '          AND ((DATA_PREALTA IS NULL) OR (DATA_PREALTA > "TODAY"' +
        ' + 7))) THEN'
      '          BEGIN'
      
        '              /* Mirem si ja s'#39'ha enviat el correu d'#39'av'#237's, per n' +
        'o tornar-lo a enviar abans de 7 dies de l'#39#250'ltim enviament */'
      '              SELECT ENVIAT, DATA_ENVIAT'
      '              FROM   AVISOS_CORREU'
      '              WHERE  ID_AVIS = 54'
      '              AND   (ENVIAT = "F" OR ENVIAT = "P")'
      '              AND    ASSUMPTE LIKE "%NHC: "|| :C_HISTORIA'
      '              ORDER  BY DATA_ENVIAT DESC'
      '              ROWS   1'
      '              INTO  :ENVIAT, :ULTIM_ENVIAMENT;'
      '              '
      '              IF ((ENVIAT IS NULL)'
      
        '              OR ((ENVIAT = "F") AND (ULTIM_ENVIAMENT + 7 <= "TO' +
        'DAY"))) THEN'
      '              BEGIN'
      
        '                    S_DATA_PREALTA = extract(day from :DATA_PREA' +
        'LTA) || '#39'/'#39' || extract(month from :DATA_PREALTA) || '#39'/'#39' ||  extr' +
        'act(year from :DATA_PREALTA);'
      '              '
      
        '                    /* Enviem correu al coordinador del tractame' +
        'nt */'
      
        '                    /* Tamb'#233' s'#39'enviar'#224' a admissions i al Dr. Fig' +
        'ueroa (aix'#242' est'#224' parametritzat a l'#39'av'#237's) */'
      
        '                    INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_' +
        'AVIS, ASSUMPTE, COS, DESTINATARI)'
      
        '                    VALUES ("NOW", 54, "Av'#237's pacient d'#39'UNESPA qu' +
        'e porta m'#233's de 150 dies d'#39'hospitalitzaci'#243'. NHC: " || :C_HISTORIA' +
        ','
      
        '                            "El pacient " || :C_HISTORIA || " - ' +
        '" || :NOMCOMPLET|| " porta " || :DURADA || " dies hospitalitzat.' +
        '" || F_NLine() ||'
      
        '                            "El m'#224'xim autoritzat per UNESPA s'#243'n ' +
        '180 dies." || F_NLine() ||'
      
        '                            "Alta prevista: " || COALESCE(:S_DAT' +
        'A_PREALTA, '#39'no informada'#39'),'
      '                            :EMAIL);'
      ''
      '                  SUSPEND;'
      '              END;'
      ''
      '          END'
      '      END'
      'END')
    Dic1 = Tractaments
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
    Modi = False
    Left = 854
    Top = 544
  end
  object AvisCaducaPermis: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AvisCaducaPermis'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA DATE)'
      'returns (COS_EMAIL VARCHAR(3000))'
      'AS'
      '  DECLARE VARIABLE CADUCAPERMIS DATE;'
      '  DECLARE VARIABLE C_HISTORIA   INTEGER;'
      '  DECLARE VARIABLE C_PRESTACIO  CHAR(4);'
      '  DECLARE VARIABLE DATA_INGRES  DATE;'
      '  DECLARE VARIABLE ACUMULA VARCHAR(6000);'
      'BEGIN'
      '      IF (DIA IS NULL) THEN DIA = "TODAY";'
      ''
      ''
      '      /* BADALONA - avis 18 */'
      '      COS_EMAIL = '#39#39';'
      '      '
      
        '      FOR SELECT T.CADUCAPERMIS, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'DATA_INGRES'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   PRESTACION  P ON T.C_PRESTACIO = P.C_PRESTACIO ' +
        'AND P.ESEASE = '#39'N'#39
      '          WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA > :DIA)'
      '          AND    T.C_CENTREFAC <> '#39'04'#39
      
        '          AND   (T.CADUCAPERMIS IS NOT NULL) AND (T.CADUCAPERMIS' +
        ' - :DIA = 10)'
      
        '          INTO  :CADUCAPERMIS, :C_HISTORIA, :C_PRESTACIO, :DATA_' +
        'INGRES'
      '      DO BEGIN'
      '      '
      '            ACUMULA = COS_EMAIL ||'
      
        '                      "Pacient " || :C_HISTORIA || " prestaci'#243' "' +
        ' || :C_PRESTACIO || " data ingr'#233's " || F_DateToStr(:DATA_INGRES)' +
        ' || " CADUCA PERM'#205'S " || F_DateToStr(:CADUCAPERMIS) || F_NLine()' +
        ';'
      '                  '
      '            IF (F_STRINGLENGTH(ACUMULA) > 3000) THEN'
      '            BEGIN'
      
        '                  INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AV' +
        'IS, ASSUMPTE, COS)'
      '                  VALUES ("NOW",'
      '                          18,'
      '                          "Av'#237's PERM'#205'S a punt de CADUCAR",'
      '                         :COS_EMAIL);'
      ''
      '                  SUSPEND;'
      '                  COS_EMAIL = '#39#39';'
      '            END'
      '            ELSE  COS_EMAIL = COS_EMAIL ||'
      
        '                              "Pacient " || :C_HISTORIA || " pre' +
        'staci'#243' " || :C_PRESTACIO || " data ingr'#233's " || F_DateToStr(:DATA' +
        '_INGRES) || " CADUCA PERM'#205'S " || F_DateToStr(:CADUCAPERMIS) || F' +
        '_NLine();'
      '      END;'
      '    '
      '      IF (COS_EMAIL <> '#39#39') THEN'
      '      BEGIN'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS)'
      '            VALUES ("NOW",'
      '                    18,'
      '                    "Av'#237's PERM'#205'S a punt de CADUCAR",'
      '                   :COS_EMAIL);'
      '                   '
      '            SUSPEND;'
      '      END'
      '    '
      '      /* BARCELONA - avis 19*/'
      '      COS_EMAIL = '#39#39';'
      '      '
      
        '      FOR SELECT T.CADUCAPERMIS, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'DATA_INGRES'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   PRESTACION  P ON T.C_PRESTACIO = P.C_PRESTACIO ' +
        'AND P.ESEASE = '#39'C'#39
      '          WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA > :DIA)'
      '          AND    T.C_CENTREFAC <> '#39'04'#39
      
        '          AND    T.CADUCAPERMIS IS NOT NULL AND (T.CADUCAPERMIS ' +
        '- :DIA = 10)'
      
        '          INTO  :CADUCAPERMIS, :C_HISTORIA, :C_PRESTACIO, :DATA_' +
        'INGRES'
      '      DO BEGIN'
      '            ACUMULA = COS_EMAIL ||'
      
        '                      "Pacient " || :C_HISTORIA || " prestaci'#243' "' +
        ' || :C_PRESTACIO || " data ingr'#233's " || F_DateToStr(:DATA_INGRES)' +
        ' || " CADUCA PERM'#205'S " || F_DateToStr(:CADUCAPERMIS) || F_NLine()' +
        ';'
      ''
      '            IF (F_STRINGLENGTH(ACUMULA) > 3000) THEN'
      '            BEGIN'
      
        '                  INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AV' +
        'IS, ASSUMPTE, COS)'
      '                  VALUES ("NOW",'
      '                          19,'
      '                          "Av'#237's PERM'#205'S a punt de CADUCAR",'
      '                         :COS_EMAIL);'
      ''
      '                  SUSPEND;'
      '                  COS_EMAIL = '#39#39';'
      '            END'
      '            ELSE COS_EMAIL = COS_EMAIL ||'
      
        '                             "Pacient " || :C_HISTORIA || " pres' +
        'taci'#243' " || :C_PRESTACIO || " data ingr'#233's " || F_DateToStr(:DATA_' +
        'INGRES) || " CADUCA PERM'#205'S " || F_DateToStr(:CADUCAPERMIS) || F_' +
        'NLine();'
      '      END;'
      '    '
      '      IF (COS_EMAIL <> '#39#39') THEN'
      '      BEGIN'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS)'
      '            VALUES ("NOW",'
      '                    19,'
      '                    "Av'#237's PERM'#205'S a punt de CADUCAR",'
      '                   :COS_EMAIL);'
      ''
      '            SUSPEND;'
      '      END;'
      ''
      'END')
    Dic1 = Tractaments
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
    Left = 647
    Top = 608
  end
  object RevisaEscalesAlta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RevisaEscalesAlta'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'AS'
      '  DECLARE VARIABLE C_HISTORIA   INTEGER;'
      '  DECLARE VARIABLE DATA_PREALTA DATE;'
      '  DECLARE VARIABLE DATA_ALTA    DATE;'
      '  DECLARE VARIABLE C_PROCES     INTEGER;'
      '  DECLARE VARIABLE FI_PROCES    CHAR(1);'
      '  DECLARE VARIABLE TIPUS        VARCHAR(1);'
      '  DECLARE VARIABLE DATA         DATE;'
      '  DECLARE VARIABLE DIESESCALESA INTEGER;'
      'BEGIN'
      ''
      
        '    SELECT DIESESCALESA FROM CONFIG WHERE 1=1 INTO :DIESESCALESA' +
        ';'
      ''
      '    C_HISTORIA = NULL;'
      '    '
      
        '    SELECT T.C_HISTORIA, T.C_PROCES, T.FI_PROCES, T.DATA_ALTA, T' +
        '.DATA_PREALTA'
      '    FROM TRACTAMENTS T'
      
        '    JOIN DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACIO AND D.C_' +
        'DRET = '#39'P550'#39'  /* si la prestaci'#243' no t'#233' el dret P550, no fem res' +
        ' (ja que algunes visites tenen el C_Proces informat quan des de ' +
        'CE es programa un ambulatori) */'
      '    WHERE C_TRACTAMENT = :C_TRACTAMENT'
      
        '    INTO :C_HISTORIA, :C_PROCES, :FI_PROCES, :DATA_ALTA, :DATA_P' +
        'REALTA;'
      ''
      '    IF (C_HISTORIA IS NOT NULL) THEN'
      '    BEGIN'
      '        IF      (FI_PROCES = '#39'S'#39') THEN TIPUS = '#39'A'#39';'
      '        ELSE IF (FI_PROCES = '#39'N'#39') THEN TIPUS = '#39'T'#39';'
      '    '
      '        DATA = COALESCE(DATA_ALTA,DATA_PREALTA);'
      '    '
      
        '        /* 1. Canvia el tipus entre C/S i T/A a les escales intr' +
        'odu'#239'des que s'#243'n obligat'#242'ries a l'#39'alta */'
      
        '        EXECUTE PROCEDURE P_ESCALESCAP_CANVIAESCALESALTA(:C_TRAC' +
        'TAMENT, :TIPUS, :DATA);'
      ''
      
        '        /* 2. Esborrem totes les escales pendents d'#39'aquest tract' +
        'ament tipus T i A (pq ho refem tot) */'
      
        '        DELETE FROM ESCALESPENDENTS WHERE C_TRACTAMENT = :C_TRAC' +
        'TAMENT AND (TIPUS = '#39'T'#39' OR TIPUS = '#39'A'#39') AND ESTAT=0;'
      '    '
      '        /* 3. i insertem les pendents a l'#39'alta */'
      
        '        IF (DATA <= "TODAY" + :DIESESCALESA) THEN EXECUTE PROCED' +
        'URE P_ESCALESPENDENTS_INSERTA_A(:C_TRACTAMENT);'
      '    END'
      ''
      'END'
      '')
    Dic1 = Tractaments
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
    Modi = False
    Left = 614
    Top = 544
  end
  object GrupsProf: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'grup'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Idioma'
        NombreDB = 'C_Idioma'
        Longitud = 2
        Consulta = 'Idioma'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ubicacio'
        NombreDB = 'Ubicacio'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'prima'
        NombreDB = 'prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Grup'
          'Idioma')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'grup'
        NombreDB = 'grup'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Codi Grup')
        Tipo = tiForaneo
        ForaneoDic = Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Idioma'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Idioma')
        CopiarOrigen.Strings = (
          'Idioma')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "IDIOMA"'
      end
      item
        Nombre = 'grup'
        Master = Grups
        BuscaOrigen.Strings = (
          'Codi Grup')
        CopiarOrigen.Strings = (
          'Codi Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end>
    Nombre = 'GrupsProf'
    NombreTabla = 'Grups_Prof'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Grup'
      'Idioma'
      'Ubicacio')
    IndiceVer = 'prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 97
    Top = 307
  end
  object T_Metges_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_METGES, 1);'
      '   END'
      'END')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    Left = 88
    Top = 244
  end
  object EscalesAlta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscalesAlta'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '  DECLARE VARIABLE CADUCITATESCALESA INTEGER;'
      'BEGIN'
      
        '    /* Proc'#233's noctur que crida la procedure P_TRACTAMENTS_REVISA' +
        'ESCALESALTA per tots els tractaments amb dret P550 que tenen pre' +
        'alta o alta en +/- 15 dies */'
      ''
      '    ret = '#39#39';'
      '    '
      
        '    SELECT CADUCITATESCALESA FROM CONFIG WHERE 1=1 INTO :CADUCIT' +
        'ATESCALESA;'
      '    '
      '    FOR SELECT T.C_TRACTAMENT'
      '    FROM TRACTAMENTS T'
      
        '    JOIN DRETSPRESTA DP ON T.C_PRESTACIO = DP.C_PRESTACIO AND DP' +
        '.C_DRET = '#39'P550'#39
      
        '    WHERE (COALESCE(T.DATA_ALTA, T.DATA_PREALTA) >= "TODAY" - :C' +
        'ADUCITATESCALESA)'
      
        '    AND   (COALESCE(T.DATA_ALTA, T.DATA_PREALTA) <  "TODAY" + :C' +
        'ADUCITATESCALESA)'
      '    AND   (T.C_ESTATFAC <> 55)'
      '    ORDER BY T.C_TRACTAMENT'
      '    INTO :C_TRACTAMENT'
      '    DO BEGIN'
      
        '        EXECUTE PROCEDURE P_TRACTAMENTS_REVISAESCALESALTA(:C_TRA' +
        'CTAMENT);'
      '    END;'
      'END'
      '')
    Dic1 = Tractaments
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
    Modi = False
    Left = 702
    Top = 544
  end
  object accessosFiTo: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'accessosFiTo'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '  DECLARE VARIABLE ACCES     INTEGER;'
      '  DECLARE VARIABLE LOGIN     VARCHAR(40);'
      '  DECLARE VARIABLE CODI      VARCHAR(5);'
      '  DECLARE VARIABLE NOMSENCER VARCHAR(40);'
      '  DECLARE VARIABLE HIES      SMALLINT;'
      '  DECLARE VARIABLE C_DRET    CHAR(10);'
      'BEGIN'
      '    SELECT MAX(C_ACCES) + 1 FROM ACCESOS INTO ACCES;'
      ''
      
        '    FOR SELECT CODI, NOMSENCER, CAST(F_replacetext('#39'@guttmann.co' +
        'm'#39','#39#39',email) AS VARCHAR(40)) FROM METGES'
      '    WHERE C_GRUP IN ('#39'FI'#39', '#39'TO'#39') AND BAIXA = '#39'N'#39
      '    INTO :CODI, :NOMSENCER, :LOGIN'
      '    DO BEGIN'
      
        '        SELECT COUNT(*) FROM ACCESOS WHERE UPPER(C_LOGIN) = UPPE' +
        'R(:LOGIN) INTO :HIES;'
      '    '
      '        IF (HIES = 0) THEN'
      '        BEGIN'
      
        '            INSERT INTO ACCESOS (C_ACCES, DESCRIPCIO, C_LOGIN) V' +
        'ALUES(:ACCES, :NOMSENCER, :LOGIN);'
      ''
      '            FOR SELECT C_DRET FROM DRETSACCES WHERE C_ACCES = 38'
      '            INTO :C_DRET'
      '            DO BEGIN'
      
        '                INSERT INTO DRETSACCES (C_ACCES, C_DRET) VALUES(' +
        ':ACCES, :C_DRET);'
      '            END;'
      '            ACCES = ACCES + 1;'
      '        END;'
      '    END;'
      ''
      'END')
    Dic1 = Metges
    Dic1Name = 'Metges'
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
    Left = 688
    Top = 240
  end
  object OrigenCMBDAEA: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OrigenCMBDAEA'
    ForceNombreDB = False
    Body.Strings = (
      
        '(DATAI DATE, DATAF DATE, OPCIO SMALLINT)   /* TRACTAMENTS ATESOS' +
        ' EN UN PER'#205'ODE - opcio 0-llistar 1-actualitzar*/'
      'RETURNS (C_HISTORIA    INTEGER,'
      '         C_TRACTAMENT  INTEGER,'
      '         C_PRESTACIO   CHAR(4),'
      '         C_COORDINADOR VARCHAR(5),'
      '         C_ESPECIAL    VARCHAR(2),'
      '         DATA_INGRES   DATE,'
      '         COUNT_ANTERIOR SMALLINT,'
      '         C_ORIGEN      SMALLINT'
      '         )'
      'AS'
      'BEGIN'
      ''
      
        '/* puc fer que si no t'#233' cap altra prestacio abans (i per tant es' +
        ' una 2001 pura) ho mirin a m'#224' a sol'#183' d'#39#39'ingres i altrament sigui' +
        ' 10 pq ser'#224' successiva */'
      ''
      
        ' FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, T.C_PRE' +
        'STACIO, T.C_COORDINADOR, M.C_ESPECIAL'
      ' FROM TRACTAMENTS T'
      ' JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        ' JOIN DRETSPRESTA DP ON T.C_PRESTACIO = DP.C_PRESTACIO AND DP.C_' +
        'DRET = '#39'P165'#39
      ' WHERE T.DATA_INGRES BETWEEN :DATAI AND :DATAF'
      ' AND T.C_ORIGEN = 0'
      ' ORDER BY T.C_TRACTAMENT'
      
        ' INTO :C_HISTORIA, :C_TRACTAMENT, :DATA_INGRES, :C_PRESTACIO, :C' +
        '_COORDINADOR, :C_ESPECIAL'
      ' DO BEGIN'
      '     COUNT_ANTERIOR = 0; C_ORIGEN = 0;'
      '     '
      '     SELECT COUNT(*) FROM TRACTAMENTS'
      '     WHERE C_HISTORIA = :C_HISTORIA'
      '     AND   C_TRACTAMENT < :C_TRACTAMENT'
      '     AND   C_ESTATFAC <> 55'
      '     INTO :COUNT_ANTERIOR;'
      ''
      '     /* si no t'#233' cap prestaci'#243' abans */'
      '     IF (COUNT_ANTERIOR > 0) THEN C_ORIGEN = 10;'
      
        '     IF (OPCIO = 1) THEN UPDATE TRACTAMENTS SET C_ORIGEN=:C_ORIG' +
        'EN WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      ''
      '     SUSPEND;'
      ' END;'
      'END')
    Dic1 = Tractaments
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
    Left = 899
    Top = 368
  end
  object Tract_PrestaRecentsA: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'PrestaRecentsA'
    ForceNombreDB = False
    Body.Strings = (
      'select'
      
        'T.C_Tractament, T.C_Historia, T.C_Prestacio, T.Data_Ingres, T.C_' +
        'Coordinador,'
      'T.Data_Alta, T.Data_PreAlta, T.C_LLit, T.C_Planta, T.Durada,'
      
        'T.EstatInformeAlta, T.C_Motiu, T.EsProvisional, T.C_PrestacioOri' +
        'gen, T.Vegada,'
      'P.N_Prestacio, P.Resum, P.Tipus, P.EsEASE, P.Facturar,'
      'M.Metge, M.Cognom, M.Tracte, M.C_Grup, M.C_Especial,'
      
        'F.NomComplet, F.Sexo, F.Bloqueig, F.Idioma, F.Unitat, F.EsViu, F' +
        '.Edat, '
      'T.C_Proces, T.FI_Proces, T.C_CentreFac'
      'from TRACTAMENTS T '
      'join  PRESTACION     P on T.C_PRESTACIO = P.C_PRESTACIO'
      'join  METGES             M on M.CODI = T.C_COORDINADOR'
      'join  FILIACIO              F on T.C_HISTORIA = F.NUM_HIST'
      
        'join CODICAMPS        X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCO' +
        'DI = "ESTATFACTU" and X.R_CODI <> 9 '
      'join CONFIG               C on  C.CLAU = 1'
      'where T.DATA_INGRES <= "TODAY"'
      
        'and     (T.DATA_ALTA is NULL or T.DATA_ALTA >= "TODAY" - C.DIESP' +
        'RESTARECENTS)'
      'and     P.TIPUS <> 4')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37076.760778206
    Left = 839
    Top = 492
  end
  object PrestaAI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Ins'
    ForceNombreDB = False
    Body.Strings = (
      ''
      'DECLARE VARIABLE COS VARCHAR(500);'
      'BEGIN'
      '     '
      '      /*Enviem correu per notificar nova prestacio*/'
      ''
      
        '      COS = "S'#39'ha creat una nova prestaci'#243' a Interbase: " || NEW' +
        '.C_PRESTACIO || " - " || NEW.N_PRESTACIO;'
      '      '
      
        '      INSERT INTO AVISOS_CORREU (ID_AVIS, DATA_GENERAT, ASSUMPTE' +
        ', COS) VALUES (64,"now","Nova prestaci'#243'",:COS);'
      ''
      '     '
      'END')
    Dic1 = Prestacion
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
    Left = 464
    Top = 432
  end
  object T_LogCF: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'LogCF'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE DATA_INICI  TIMESTAMP;'
      '  DECLARE VARIABLE ULTIMCANVI  TIMESTAMP;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /* *********************************** */'
      '      /* *** CANVIS CENTRE DE FACTURACIO *** */'
      '      /* *********************************** */'
      
        '      /* Si hi ha un canvi de centre de facturaci'#243' registrem l'#39'a' +
        'ntic a LOGCF  */'
      '      IF (NEW.C_CENTREFAC <> OLD.C_CENTREFAC) THEN'
      '      BEGIN'
      '          SELECT DATA_FI, DATA_REGISTRE'
      '          FROM   LOGCF'
      '          WHERE  C_TRACTAMENT = OLD.C_TRACTAMENT'
      '          ORDER BY DATA_REGISTRE /*- DATA_INICI -*/ DESC'
      '          ROWS 1'
      '          INTO :DATA_INICI, :ULTIMCANVI;'
      ''
      
        '          IF (DATA_INICI IS NULL)        THEN DATA_INICI = OLD.D' +
        'ATA_INGRES;'
      
        '/*          ELSE IF (DATA_INICI < "TODAY") THEN DATA_INICI = DAT' +
        'A_INICI + 1; */ /* '#233's OK posar dia inici = dia fi anterior canvi' +
        ', ja que el dia del canvi van coexistir els dos CF */'
      ''
      '          /***'
      
        '          /* Si es fan diferents canvis de CF el mateix dia, nom' +
        #233's conservem l'#39#250'ltim (=> fem UPDATE) *'
      
        '          IF (ULTIMCANVI >= "TODAY") /*-DATA_INICI = "TODAY")-* ' +
        'THEN'
      '          BEGIN'
      '             UPDATE LOGCF'
      '             SET    C_CENTREFAC = OLD.C_CENTREFAC'
      '             WHERE  C_TRACTAMENT = OLD.C_TRACTAMENT'
      
        '             AND    /*- DATA_INICI = "TODAY"; -* DATA_REGISTRE =' +
        ' :ULTIMCANVI;'
      '          END'
      '          ELSE BEGIN'
      
        '             INSERT INTO LOGCF (C_TRACTAMENT, DATA_INICI, DATA_F' +
        'I, C_CENTREFAC, DATA_REGISTRE)'
      
        '             VALUES (OLD.C_TRACTAMENT, :DATA_INICI, "TODAY", OLD' +
        '.C_CENTREFAC, "NOW");'
      '          END'
      '          ***/'
      ''
      
        '          /* De fet, no cal actualitzar-lo... ser'#224' m'#233's '#250'til sabe' +
        'r qu'#232' hi havia abans del 1r canvi, ja que aqt segon haur'#224' estat ' +
        '"ef'#237'mer" */'
      
        '          IF ((ULTIMCANVI IS NULL) OR (ULTIMCANVI < "TODAY")) TH' +
        'EN'
      '          BEGIN'
      
        '             INSERT INTO LOGCF (C_TRACTAMENT, DATA_INICI, DATA_F' +
        'I, C_CENTREFAC, DATA_REGISTRE)'
      
        '             VALUES (OLD.C_TRACTAMENT, :DATA_INICI, "TODAY", OLD' +
        '.C_CENTREFAC, "NOW");'
      '          END'
      '      END'
      '   END;'
      'END')
    Dic1 = Tractaments
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
    Modi = True
    ModiFecha = 37194.7325101852
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 600
    Top = 492
  end
  object InsProces: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'InsProces'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE DATA_PREALTA DATE;'
      '  DECLARE VARIABLE DIA          SMALLINT;'
      '  DECLARE VARIABLE VISITA2003   DATE;'
      '  DECLARE VARIABLE ESFESTIU     INTEGER;'
      '  DECLARE VARIABLE C_PROCESNR   INTEGER;'
      'BEGIN'
      '   IF (USER<>"REPLICATOR") THEN'
      '   BEGIN'
      '   '
      
        '      /* ****************************************** *\    /* En ' +
        'iniciar un tractament ambulatori d'#39'un proc'#233's amb pauta NR progra' +
        'mada:'
      
        '      /* *** PROC'#201'S NR   - SEGUIMENT AMBULATORI *** *|       gen' +
        'erem les visites de seguiment fins a la prealta del proc'#233's'
      
        '      /* ***             - ESCALES PENDENTS     *** *|       i a' +
        'ssociem el nou c_tractament a la pauta programada. */'
      
        '      /* ****************************************** */    /* Tam' +
        'b'#233' insertem les escales pendents a l'#39'alta.'
      
        '                                                             (Ho' +
        ' hem de fer ara perqu'#232' per a processos NR s'#39'inicialitza la data ' +
        'prealta per trigger BI de Tractaments'
      
        '                                                             i l' +
        'lavors no actua el trigger AU quan posen la prealta) */'
      ''
      
        '      IF ((NEW.C_PRESTACIO = '#39'2014'#39') AND (NEW.C_PROCES IS NOT NU' +
        'LL)) THEN'
      '      BEGIN'
      
        '            /* Associem a la pauta vigent l'#39'ambulatori que estan' +
        ' insertant */'
      
        '            UPDATE PROCESNR_PAUTES SET C_TRACTAMENT = NEW.C_TRAC' +
        'TAMENT WHERE C_PROCES = NEW.C_PROCES AND ESTAT = "V";'
      '                  '
      
        '            /* Si t'#233' pauta NR amb data de prealta, programem les' +
        ' visites de seguiment fins a la prealta */'
      
        '            SELECT DATA_PREALTA FROM PROCESNR_PAUTES WHERE C_PRO' +
        'CES = NEW.C_PROCES AND ESTAT = "V" INTO :DATA_PREALTA;'
      ''
      '            IF (DATA_PREALTA IS NOT NULL) THEN'
      '            BEGIN'
      '                  /* Dia de visita del metge a CE: */'
      
        '                  SELECT DIA FROM METGEPRESTA WHERE CODI = NEW.C' +
        '_COORDINADOR AND C_PRESTACIO = "2003" INTO :DIA;'
      
        '                  IF ((DIA = 0) OR (DIA IS NULL)) THEN DIA = 1; ' +
        '  /* si no trobem el dia que li toca, posem dilluns */'
      ''
      
        '                  /* Si venim d'#39'una interrupci'#243' de tractament, p' +
        'rogramem les 2003 a partir de l'#39#250'ltima visita de seguiment */'
      '                  /* Altrament, ho fem a partir de l'#39'ingr'#233's */'
      ''
      
        '                  /* Busquem l'#39#250'ltima visita de seguiment no exc' +
        'losa (realitzada o programada) */'
      '                  SELECT DATA_PREINGRES'
      '                  FROM   ESPERA'
      '                  WHERE  C_PROCES = NEW.C_PROCES'
      '                  AND    C_PRESTACIO = "2003"'
      '                  AND    EXCLOS = "N"'
      '                  ORDER  BY DATA_PREINGRES DESC'
      '                  ROWS   1'
      '                  INTO  :VISITA2003;'
      ''
      
        '                  /* Si en trobem una, ens situem 4 setmanes des' +
        'pr'#233's, i avancem de setmana en setmana fins a l'#39'ambulatori actual' +
        ' */'
      '                  IF (VISITA2003 IS NOT NULL) THEN'
      '                  BEGIN'
      
        '                        VISITA2003 = VISITA2003 + 28 - F_DIADELA' +
        'SEMANA(VISITA2003) + DIA;'
      ''
      
        '                        WHILE (VISITA2003 < NEW.DATA_INGRES) DO ' +
        'VISITA2003 = VISITA2003 + 7;'
      '                  END;'
      
        '                  /* Altrament, generarem les properes 4 setmane' +
        's despr'#233's de la data d'#39'ingr'#233's */'
      
        '                  ELSE VISITA2003 = NEW.DATA_INGRES + 28 - F_DIA' +
        'DELASEMANA(NEW.DATA_INGRES) + DIA;'
      ''
      '                  /* Generem les visites cada 4 setmanes */'
      '                  WHILE (VISITA2003 < DATA_PREALTA) DO'
      '                  BEGIN'
      
        '                        /* Si cau en festiu, mirem la setmana an' +
        'terior */'
      
        '                        SELECT COUNT(*) FROM FESTIUS WHERE DATA ' +
        '= :VISITA2003 INTO :ESFESTIU;'
      
        '                        IF (ESFESTIU > 0) THEN VISITA2003 = VISI' +
        'TA2003 - 7;'
      
        '                        /* Si tamb'#233' cau en festiu, mirem la seg'#252 +
        'ent, successivament */'
      
        '                        SELECT COUNT(*) FROM FESTIUS WHERE DATA ' +
        '= :VISITA2003 INTO :ESFESTIU;'
      '                        WHILE (ESFESTIU > 0) DO'
      '                        BEGIN'
      '                              VISITA2003 = VISITA2003 + 7;'
      
        '                              SELECT COUNT(*) FROM FESTIUS WHERE' +
        ' DATA = :VISITA2003 INTO :ESFESTIU;'
      '                        END;'
      ''
      '                        /* Programem la visita de seguiment */'
      '                        IF (VISITA2003 < DATA_PREALTA)'
      
        '                        THEN  INSERT INTO ESPERA (C_ESPERA, C_HI' +
        'STORIA, C_PROCES, C_PRESTACIO, C_MOTIU, DATA_INCLUSIO, DATA_PREI' +
        'NGRES, HORA_PREINGRES,'
      
        '                                                  C_COORDINADOR,' +
        ' NOM, COGNOM1, COGNOM2, C_UNITAT, COMENTARIMETGE, C_ESTAT)'
      
        '                              SELECT GEN_ID(CONTALLISTAESPERA, 1' +
        '), NEW.C_HISTORIA, NEW.C_PROCES, "2003", 79, "TODAY", :VISITA200' +
        '3, "00:00",'
      
        '                                     NEW.C_COORDINADOR, F.NOMBRE' +
        ', F.APELLIDO1, F.APELLIDO2, F.UNITAT, "PROCES NR - AUTOM'#192'TICA", ' +
        '15'
      '                              FROM   FILIACIO F'
      
        '                              WHERE  F.NUM_HIST = NEW.C_HISTORIA' +
        ';'
      ''
      '                        VISITA2003 = VISITA2003 + 28;'
      '                  END;'
      ''
      
        '                  /* 22-3-2025 Si la data alta/prealta est'#224' info' +
        'rmada i '#233's per d'#39'aqu'#237' a menys de 15 dies, insertar les escales a' +
        ' l'#39'alta */'
      
        '                  IF ((NEW.DATA_ALTA    IS NOT NULL AND (NEW.DAT' +
        'A_ALTA    >= "TODAY" - 15))'
      
        '                   OR (NEW.DATA_PREALTA IS NOT NULL AND (NEW.DAT' +
        'A_PREALTA >= "TODAY" - 15)))'
      
        '                  THEN EXECUTE PROCEDURE P_TRACTAMENTS_REVISAESC' +
        'ALESALTA(NEW.C_TRACTAMENT);'
      '            END;'
      '      END;'
      ''
      
        '      /* *************************************************** *\ ' +
        '   /* En iniciar un tractament ambulatori sense proc'#233's NR */'
      
        '      /* *** 2014 SENSE PROC'#201'S NR - SEGUIMENT AMBULATORI *** *| ' +
        '      generem la primera visita de seguiment a les 4 setmanes */'
      '      /* *************************************************** */'
      ''
      '      IF (NEW.C_PRESTACIO = '#39'2014'#39') THEN'
      '      BEGIN'
      '            /* Mirem si t'#233' proc'#233's NR */'
      
        '            SELECT C_PROCES FROM PROCESNR where C_PROCES = NEW.C' +
        '_PROCES INTO :C_PROCESNR;'
      '            IF (C_PROCESNR IS NULL) THEN C_PROCESNR = 0;'
      ''
      '            IF (C_PROCESNR = 0) THEN'
      '            BEGIN'
      '                  /* Dia de visita del metge a CE: */'
      
        '                  SELECT DIA FROM METGEPRESTA WHERE CODI = NEW.C' +
        '_COORDINADOR AND C_PRESTACIO = "2003" INTO :DIA;'
      
        '                  IF ((DIA = 0) OR (DIA IS NULL)) THEN DIA = 1; ' +
        '  /* si no trobem el dia que li toca, posem dilluns */'
      ''
      
        '                  /* La primera visita de seguiment ser'#224' al cap ' +
        'de 4 setmanes de la data d'#39'ingr'#233's */'
      
        '                  VISITA2003 = NEW.DATA_INGRES + 28 - F_DIADELAS' +
        'EMANA(NEW.DATA_INGRES) + DIA;'
      ''
      
        '                  /* Si cau en festiu, mirem la setmana anterior' +
        ' */'
      
        '                  SELECT COUNT(*) FROM FESTIUS WHERE DATA = :VIS' +
        'ITA2003 INTO :ESFESTIU;'
      
        '                  IF (ESFESTIU > 0) THEN VISITA2003 = VISITA2003' +
        ' - 7;'
      
        '                  /* Si tamb'#233' cau en festiu, mirem la seg'#252'ent, s' +
        'uccessivament */'
      
        '                  SELECT COUNT(*) FROM FESTIUS WHERE DATA = :VIS' +
        'ITA2003 INTO :ESFESTIU;'
      '                  WHILE (ESFESTIU > 0) DO'
      '                  BEGIN'
      '                        VISITA2003 = VISITA2003 + 7;'
      
        '                        SELECT COUNT(*) FROM FESTIUS WHERE DATA ' +
        '= :VISITA2003 INTO :ESFESTIU;'
      '                  END;'
      ''
      '                  /* Programem la visita de seguiment */'
      
        '                  INSERT INTO ESPERA (C_ESPERA, C_HISTORIA, C_PR' +
        'OCES, C_PRESTACIO, C_MOTIU, DATA_INCLUSIO, DATA_PREINGRES, HORA_' +
        'PREINGRES,'
      
        '                                      C_COORDINADOR, NOM, COGNOM' +
        '1, COGNOM2, C_UNITAT, COMENTARIMETGE, C_ESTAT)'
      
        '                  SELECT GEN_ID(CONTALLISTAESPERA, 1), NEW.C_HIS' +
        'TORIA, NEW.C_PROCES, "2003", 79, "TODAY", :VISITA2003, "00:00",'
      
        '                         NEW.C_COORDINADOR, F.NOMBRE, F.APELLIDO' +
        '1, F.APELLIDO2, F.UNITAT, "AMBULATORI - AUTOM'#192'TICA", 15'
      '                  FROM   FILIACIO F'
      '                  WHERE  F.NUM_HIST = NEW.C_HISTORIA;'
      '            END;'
      '      END;'
      '   END;'
      'END')
    Dic1 = Tractaments
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
    Modi = False
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 204
    Top = 492
  end
end
