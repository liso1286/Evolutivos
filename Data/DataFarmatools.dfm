object wDataFarmatools: TwDataFarmatools
  OldCreateOrder = False
  Left = 326
  Top = 204
  Height = 510
  Width = 1012
  object P_Fili_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FT'
    ForceNombreDB = False
    Body.Strings = (
      '(C_HISTORIA INTEGER)'
      'RETURNS ('
      '  COGNOM1    VARCHAR(20),'
      '  COGNOM2    VARCHAR(20),'
      '  NOM        VARCHAR(20),'
      '  SEXE       CHAR(1),'
      '  DATA_NAIX  DATE,'
      '  TALLA      VARCHAR(15),'
      '  DATA_TALLA DATE,'
      '  PES        VARCHAR(15),'
      '  DATA_PES   DATE,'
      '  UM_CODI    SMALLINT,'
      '  UM_DESC    VARCHAR(30),'
      '  CIP        VARCHAR(14),'
      '  DNI        VARCHAR(10),'
      '  TIPUS_DOC  VARCHAR(1)'
      ')'
      'AS'
      'BEGIN'
      
        '      /* Retorna dades relacionades amb el NHC, per a comunicar-' +
        'les a Farmatools via missatgeria JSON */'
      ''
      '      /* Filiaci'#243' */'
      
        '      SELECT F.NOMBRE, F.APELLIDO1, F.APELLIDO2, F.SEXO, F.FECHA' +
        '_NAC, F.C_UNITATMEDICA, U.N_UNITATM, F.TSI, F.DNI, F.T_DOC'
      '      FROM   FILIACIO F'
      '      LEFT JOIN UNITATM U ON U.C_UNITATM = F.C_UNITATMEDICA'
      '      WHERE  NUM_HIST = :C_HISTORIA'
      
        '      INTO  :NOM, :COGNOM1, :COGNOM2, :SEXE, :DATA_NAIX, :UM_COD' +
        'I, :UM_DESC, :CIP, :DNI, :TIPUS_DOC;'
      ''
      ''
      '      /* Dades de la gr'#224'fica d'#39'infermeria */'
      ''
      '      SELECT VALOR, DATA_VALOR'
      '      FROM   INFERDADES I'
      '      JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE  T.C_HISTORIA = :C_HISTORIA'
      '      AND    I.C_ITEM = 18'
      '      AND    I.ANULAT = "N"'
      '      ORDER  BY I.DATA_VALOR DESC'
      '      ROWS   1'
      '      INTO  :TALLA, :DATA_TALLA;'
      ''
      '      SELECT VALOR, DATA_VALOR'
      '      FROM   INFERDADES I'
      '      JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE  T.C_HISTORIA = :C_HISTORIA'
      '      AND    I.C_ITEM = 19'
      '      AND    I.ANULAT = "N"'
      '      ORDER  BY I.DATA_VALOR DESC'
      '      ROWS   1'
      '      INTO  :PES, :DATA_PES;'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = wDataBasics.Filiacio
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
    Left = 36
    Top = 16
  end
  object P_Tract_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FT'
    ForceNombreDB = False
    Body.Strings = (
      '                       (C_TRACTAMENT INTEGER)'
      'RETURNS ('
      ''
      '  c_historia      INTEGER,'
      ''
      '  PRESTA_CENTRE   CHAR(1),'
      '  PRESTA_CODI     VARCHAR(4),'
      '  PRESTA_DESC     VARCHAR(35),'
      '  PRESTA_TIPUS    SMALLINT,'
      '  C_MOTIU         SMALLINT,'
      '  N_MOTIU         VARCHAR(50),'
      ''
      '  SERVEI_CODI     CHAR(2),      /* especialitat */'
      '  SERVEI_DESC     VARCHAR(20),'
      ''
      '  DIAGNOSTIC      VARCHAR(40),'
      ''
      
        '  UNITAT_CODI     VARCHAR(10),     /* Planta o ubicaci'#243' -> CCEE,' +
        ' UH-1, UH-2, UH-4, UH-5, BQ, RHF */'
      '  UNITAT_DESC     VARCHAR(40),'
      
        '  LLIT            SMALLINT,        /* 0 si buit (no procedeix o ' +
        'encara no est'#224' introdu'#239't) */'
      ''
      '  C_CENTREFAC     VARCHAR(2),'
      '  N_CENTREFAC     VARCHAR(20),'
      ''
      '  COORD_NOM       VARCHAR(20),'
      '  COORD_COGNOM1   VARCHAR(20),'
      '  COORD_COGNOM2   VARCHAR(15),'
      '  COORD_NOMSENCER VARCHAR(40),'
      '  COORD_NUMCOL_RE VARCHAR(9),'
      '  COORD_DNI       VARCHAR(9),'
      '  DATA_INGRES     DATE,'
      '  HORA_INGRES     VARCHAR(5)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_COORDINADOR VARCHAR(5);'
      '      DECLARE VARIABLE PRESTAORIGEN_CODI VARCHAR(4);'
      ''
      'BEGIN'
      ''
      
        '      /* Episodi: prestaci'#243', coordinador, ubicaci'#243', dades factur' +
        'aci'#243' */'
      
        '      SELECT T.C_HISTORIA, T.C_PRESTACIO, P.N_PRESTACIO, P.TIPUS' +
        ', P.CENTRE, T.C_COORDINADOR, T.C_PLANTA, U.N_PLANTA, T.C_LLIT, T' +
        '.C_CENTREFAC, C.N_CENTREFAC, T.N_DIAGNOSTICINGRES, T.C_MOTIU, M.' +
        'N_CODI, T.DATA_INGRES, T.HORA, T.C_PRESTACIOORIGEN'
      '      FROM   TRACTAMENTS T'
      '      JOIN   PRESTACION  P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '      LEFT   OUTER JOIN PLANTES U ON T.C_PLANTA = U.C_PLANTA'
      
        '      LEFT   OUTER JOIN CENTREFAC C ON T.C_CENTREFAC = C.C_CENTR' +
        'EFAC'
      
        '      LEFT   OUTER JOIN CODICAMPS M ON T.C_MOTIU = M.C_CODI AND ' +
        'M.TIPUSCODI = "MOTIU"'
      '      WHERE  T.C_TRACTAMENT = :C_TRACTAMENT'
      
        '      INTO   :C_HISTORIA, :PRESTA_CODI, :PRESTA_DESC, :PRESTA_TI' +
        'PUS, :PRESTA_CENTRE, :C_COORDINADOR, :UNITAT_CODI, :UNITAT_DESC,' +
        ' :LLIT, :C_CENTREFAC, :N_CENTREFAC, :DIAGNOSTIC, :C_MOTIU, N_MOT' +
        'IU, :DATA_INGRES, :HORA_INGRES, :PRESTAORIGEN_CODI;'
      ''
      ''
      '      /* Si es provisional, utilitzarem presta origen*/'
      '      IF  (PRESTA_TIPUS = 9) THEN'
      '      BEGIN'
      '            SELECT P.C_PRESTACIO, P.N_PRESTACIO, P.TIPUS'
      '            FROM PRESTACION P'
      '            WHERE P.C_PRESTACIO = :PRESTAORIGEN_CODI'
      '            INTO :PRESTA_CODI, :PRESTA_DESC, :PRESTA_TIPUS;'
      '      END'
      ''
      ''
      
        '      /* Llit 0 si '#233's hospitalitzaci'#243' i encara no est'#224' assignat ' +
        '*/'
      '      IF (LLIT IS NULL)  THEN LLIT = 0;'
      ''
      
        '      IF      (PRESTA_TIPUS = 2) THEN BEGIN UNITAT_CODI = '#39'CCEE'#39 +
        '; UNITAT_DESC = '#39'CONSULTA EXTERNA'#39'; END'
      
        '      ELSE IF (PRESTA_TIPUS = 3) THEN BEGIN UNITAT_CODI = '#39'RHF'#39';' +
        '  UNITAT_DESC = '#39'REHABILITACI'#211' FUNCIONAL'#39'; END'
      
        '      ELSE IF (PRESTA_TIPUS = 0) THEN BEGIN UNITAT_CODI = '#39'EASE'#39 +
        '; UNITAT_DESC = '#39'EASE'#39'; END'
      
        '      ELSE IF (PRESTA_TIPUS = 5) THEN BEGIN UNITAT_CODI = '#39'GBL'#39';' +
        '  UNITAT_DESC = '#39'GUTTMANN BARCELONA LIFE'#39'; END'
      
        '      ELSE IF (PRESTA_TIPUS = 6) THEN BEGIN UNITAT_CODI = '#39'GUTT'#39 +
        '; UNITAT_DESC = '#39'SALUT LABORAL'#39'; END'
      ''
      ''
      
        '      /* Informaci'#243' del metge coordinador: nom, dni, nc, especia' +
        'litat */'
      
        '      SELECT M.NOMBRE, M.COGNOM1, M.COGNOM, M.NOMSENCER, M.NMETG' +
        'ERECEPTA, M.DNI, M.C_ESPECIAL, E.N_ESPECIAL'
      '      FROM   METGES M'
      '      JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE  CODI = :C_COORDINADOR'
      
        '      INTO  :COORD_NOM, :COORD_COGNOM1, :COORD_COGNOM2, :COORD_N' +
        'OMSENCER, :COORD_NUMCOL_RE, :COORD_DNI, :SERVEI_CODI, :SERVEI_DE' +
        'SC;'
      ''
      '      SUSPEND;'
      'END'
      '')
    Dic1 = wDataBasics.Tract_Resum
    Dic1Name = 'Tract_Resum'
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
    Top = 16
  end
  object P_Diags_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FT'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'RETURNS ('
      '  NHC        INTEGER,'
      '  C_PROVA    VARCHAR(15),   /* identificador tipus dada */'
      '  RESULTAT   VARCHAR(40),   /* codi ICD */'
      '  N_PROVA    VARCHAR(40)    /* descripci'#243' diagn'#242'stic */'
      ')'
      'AS'
      'BEGIN'
      '      /* Comorbiditats detectades a l'#39'ingr'#233's */'
      '      C_PROVA = '#39'DIAGN'#210'STIC'#39';'
      '      '
      '      FOR SELECT T.C_HISTORIA, D.C_DIAGNOSTIC, D.N_DIAGNOSTIC'
      '          FROM   DIAGNOSTICS D'
      
        '          JOIN   TRACTAMENTS T ON D.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  D.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    D.TIPUS = "I"'
      '          AND    D.CLASSE = "K"'
      '          AND    D.N_DIAGNOSTIC IS NOT NULL'
      '          AND    D.N_DIAGNOSTIC <> '#39#39
      '          INTO  :NHC, :RESULTAT, :N_PROVA'
      '      DO'
      '            SUSPEND;'
      'END'
      '')
    Dic1 = wDataCurs.Diagnostics
    Dic1Name = 'Diagnostics'
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
    Top = 72
  end
  object P_Analit_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FT'
    ForceNombreDB = False
    Body.Strings = (
      '(ID INTEGER)'
      'RETURNS ('
      '      NHC           INTEGER,'
      '      C_PROVA       VARCHAR(10),'
      '      N_PROVA       VARCHAR(254),'
      '      RESULTAT      FLOAT,'
      '      DATA_RESULTAT DATE'
      ')'
      'AS'
      'BEGIN'
      ''
      '      /* Resultats d'#39'anal'#237'tiques */'
      
        '      FOR SELECT A.NUM_HIST, L.CODI, C.DESCRIPCIO, L.VALOR, MAX(' +
        'DATA_RECEPCIO)'
      '          FROM   ANALIT L'
      
        '          JOIN   ANACABE A ON L.NILAB = A.NILAB AND L.DATA = A.D' +
        'ATA'
      
        '          JOIN   CODRSANA_APA C ON L.CODI = C.CODI AND C.ENVIAR_' +
        'FT = "S"'
      '          WHERE  A.ID = :ID'
      '          AND    L.VALOR IS NOT NULL'
      '          GROUP  BY A.NUM_HIST, L.CODI, C.DESCRIPCIO, L.VALOR'
      
        '          INTO  :NHC, :C_PROVA, :N_PROVA, :RESULTAT, :DATA_RESUL' +
        'TAT'
      '      DO'
      '            SUSPEND;'
      'END'
      ''
      '')
    Dic1 = wDataAnalit.AnaLit
    Dic1Name = 'Analit'
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
    Left = 184
    Top = 72
  end
  object P_Alergies_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Alergies_FT'
    ForceNombreDB = False
    Body.Strings = (
      '(C_HISTORIA INTEGER, ALERGIES VARCHAR(3000))'
      'RETURNS'
      '(RESPOSTA VARCHAR(100))'
      'AS'
      '      DECLARE VARIABLE conta integer;'
      'BEGIN'
      ''
      '      /* Inserim les al'#183'l'#232'rgies d'#39'un pacient a Filiaci'#243' */'
      '      '
      
        '      select count(*) from filiacio where num_hist=:c_historia i' +
        'nto :conta;'
      '      if (conta=0)'
      '      then resposta = '#39'filiacio no trovada'#39';'
      '      else begin'
      '            /* Omplim camp ALERGIES_TOT */'
      '            UPDATE FILIACIO'
      '            SET    ALERGIES_TOT = :ALERGIES'
      '            WHERE  NUM_HIST = :C_HISTORIA;'
      ''
      
        '            /* Mantenim el camp actual per si se'#39'ns ha escapat c' +
        'anviar-lo en algun lloc. Per'#242' el trunquem a 250 car'#224'cters */'
      '            UPDATE FILIACIO'
      '            SET    ALERGIES = F_Left(:ALERGIES, 250)'
      '            WHERE  NUM_HIST = :C_HISTORIA;'
      ''
      '            RESPOSTA = '#39'ok'#39';'
      '      end'
      '      suspend;'
      'END')
    Dic1 = wDataBasics.Filiacio
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
    Left = 36
    Top = 148
  end
  object P_Anotacio_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Anotacio_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  ANOTACIO VARCHAR(3000),'
      '  TIPUSANOTACIO SMALLINT,'
      '  USUARI_AD VARCHAR(250),'
      '  DATA DATE'
      ')'
      'RETURNS'
      '('
      '  C_ANOTACIO INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_USUARI         VARCHAR(5);'
      '  DECLARE VARIABLE C_GRUP           VARCHAR(2);'
      '  DECLARE VARIABLE C_PRESTACIO      VARCHAR(4);'
      '  DECLARE VARIABLE C_COORDINADOR    VARCHAR(5);'
      '  DECLARE VARIABLE DATA_INGRES      date;'
      'BEGIN'
      ''
      '      /* Dades de l'#39'usuari que fa l'#39'anotaci'#243' */'
      
        '      SELECT CODI, C_GRUP FROM METGES WHERE EMAIL STARTING WITH ' +
        ':USUARI_AD ||'#39'@'#39' INTO :C_USUARI, :C_GRUP;'
      ''
      '      /* Dades del tractament */'
      
        '      SELECT C_PRESTACIO, C_COORDINADOR, DATA_INGRES FROM TRACTA' +
        'MENTS WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :C_PRESTACIO, :C_C' +
        'OORDINADOR, :DATA_INGRES;'
      ''
      '      /* Generem anotaci'#243' */'
      '      C_ANOTACIO = GEN_ID(CONTAHISTORIA, 1);'
      
        '      INSERT INTO HISTORIA (C_ANOTACIO, C_HISTORIA, C_TRACTAMENT' +
        ', C_PRESTACIO, DATA_INGRES, C_COORDINADOR, DATA, C_USUARI, C_GRU' +
        'P, ANOTACIO, QUEES)'
      
        '      VALUES (:C_ANOTACIO, :C_HISTORIA, :C_TRACTAMENT, :C_PRESTA' +
        'CIO, :DATA_INGRES, :C_COORDINADOR, :DATA, :C_USUARI, :C_GRUP, :A' +
        'NOTACIO, :TIPUSANOTACIO);'
      '      '
      '      suspend;'
      'END')
    Dic1 = wDataCurs.Historia
    Dic1Name = 'Historia'
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
    Left = 36
    Top = 204
  end
  object P_CanvisOM_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CanvisOM_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  ANOTACIO VARCHAR(3000),'
      '  USUARI_AD VARCHAR(250),'
      '  DATA DATE'
      ')'
      'RETURNS ('
      '  RESPOSTA VARCHAR(100)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_USUARI   VARCHAR(5);'
      '  DECLARE VARIABLE C_GRUP     VARCHAR(2);'
      '  DECLARE VARIABLE C_COORD    VARCHAR(5);'
      '  DECLARE VARIABLE C_ANOTACIO INTEGER;'
      '  DECLARE VARIABLE GUARDIA    SMALLINT;'
      '  DECLARE VARIABLE TREBALLA   SMALLINT;'
      '  DECLARE VARIABLE H          SMALLINT;'
      '  DECLARE VARIABLE METGE_G    VARCHAR(5);'
      'BEGIN'
      '      /* Dades de l'#39'usuari que fa els canvis */'
      
        '      SELECT CODI, C_GRUP FROM METGES WHERE EMAIL STARTING WITH ' +
        ':USUARI_AD ||'#39'@'#39' INTO :C_USUARI, :C_GRUP;'
      ''
      
        '      /* Si les observacions s'#243'n d'#39'un usuari de farm'#224'cia, en com' +
        'ptes d'#39'una anotaci'#243' al curs hem de disparar una alarma per al me' +
        'tge coordinador del pacient */'
      '      IF (C_GRUP = '#39'FA'#39') THEN'
      '      BEGIN'
      
        '            SELECT C_COORDINADOR FROM TRACTAMENTS WHERE C_TRACTA' +
        'MENT = :C_TRACTAMENT INTO :C_COORD;'
      '            '
      
        '            INSERT INTO ALARMA (C_TIPUSALARMA, DESCRIPCIO, C_TRA' +
        'CTAMENT, C_HISTORIA, C_USUARI)'
      
        '            VALUES (1, F_Left(:ANOTACIO, 250), :C_TRACTAMENT, :C' +
        '_HISTORIA, :C_COORD);'
      '      END'
      '      '
      '      ELSE IF (C_GRUP = '#39'ME'#39') THEN'
      '      BEGIN'
      '            /* Anotaci'#243' al Curs */'
      
        '            SELECT C_ANOTACIO FROM P_HISTORIA_ANOTACIO_FT (:C_HI' +
        'STORIA, :C_TRACTAMENT, :ANOTACIO, 43, :USUARI_AD, :DATA) INTO :C' +
        '_ANOTACIO;'
      ''
      
        '            /* Si el canvi s'#39'ha fet en horari de gu'#224'rdia, hem d'#39 +
        'inserir tamb'#233' un registre al HandOver */'
      
        '            /* 27.01.2025:  Nom'#233's si l'#39'ha fet el metge de gu'#224'rdi' +
        'a */'
      '/*            H = F_Truncar(F_SoloHora('#39'NOW'#39'));*/'
      '            H = EXTRACT(HOUR FROM DATA);'
      '            '
      '            IF ((H >= 9) AND (H <= 23))'
      
        '            THEN SELECT C_METGE FROM CALENDARI_AM WHERE TIPUS = ' +
        '"G" AND DIA = F_SoloFecha(:DATA)   INTO :METGE_G;'
      
        '            ELSE SELECT C_METGE FROM CALENDARI_AM WHERE TIPUS = ' +
        '"G" AND DIA = F_SoloFecha(:DATA)-1 INTO :METGE_G;'
      '            '
      '            IF (METGE_G = C_USUARI) THEN'
      '            BEGIN'
      ''
      '                  /* Mirem si s'#39'ha fet en festiu */'
      
        '                  SELECT COUNT(*) FROM FESTIUS WHERE DATA = F_So' +
        'loFecha(:DATA) INTO :GUARDIA;'
      ''
      '                  IF (GUARDIA = 0) THEN'
      '                  BEGIN'
      
        '                        /* Mirem si s'#39'ha fet en horari laboral d' +
        'e metges */'
      '                        SELECT COUNT(*)'
      '                        FROM HORARIS_FUNCIONS'
      '                        WHERE FUNCIO = 3'
      '                        AND   DIA = F_DiaDeLaSemana(:DATA)'
      
        '                        AND   F_SoloHora(:DATA) BETWEEN HORA_I +' +
        ' MIN_I/100 AND HORA_F + MIN_F/100'
      '                        INTO :TREBALLA;'
      ''
      '                        IF (TREBALLA = 0) THEN GUARDIA = 1;'
      '                  END'
      ''
      '                  IF (GUARDIA > 0)'
      '                  THEN'
      
        '                        INSERT INTO HANDOVER (ID, C_HISTORIA, C_' +
        'TRACTAMENT, MOTIU, REALITZAT, C_METGE, DATA, C_ANOTACIO, TIPUS)'
      '                        VALUES (Gen_ID(G_HANDOVER, 1),'
      '                                :C_HISTORIA,'
      '                                :C_TRACTAMENT,'
      
        '                                "VALORACI'#211' DELS CANVIS EN LA MED' +
        'ICACI'#211'",'
      '                                :ANOTACIO,'
      '                                :C_USUARI,'
      '                                :DATA,'
      '                                :C_ANOTACIO,'
      '                                1);'
      '            END'
      '      END'
      '      '
      '      RESPOSTA = '#39'OK'#39';'
      '      SUSPEND;'
      'END')
    Dic1 = wDataCurs.Historia
    Dic1Name = 'Historia'
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
    Left = 120
    Top = 204
  end
  object P_UnitatM_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FT'
    ForceNombreDB = False
    Body.Strings = (
      '(C_HISTORIA INTEGER, QUE CHAR(2))'
      'RETURNS ('
      '  NHC       INTEGER,'
      '  C_PROVA   VARCHAR(15),   /* identificador tipus dada */'
      '  RESULTAT  VARCHAR(40),   /* codi unitat */'
      '  N_PROVA   VARCHAR(40)    /* descripci'#243' unitat */'
      ')'
      'AS'
      'BEGIN'
      ''
      '      C_PROVA = QUE;'
      '      '
      
        '      IF (QUE = '#39'UM'#39') THEN    SELECT F.NUM_HIST, F.C_UNITATMEDIC' +
        'A, U.N_UNITATM'
      '                              FROM   FILIACIO F'
      
        '                              JOIN   UNITATM U ON F.C_UNITATMEDI' +
        'CA = U.C_UNITATM'
      '                              WHERE  NUM_HIST = :C_HISTORIA'
      '                              INTO  :NHC, :RESULTAT, :N_PROVA;'
      '      '
      
        '      IF (QUE = '#39'UA'#39') THEN    SELECT F.NUM_HIST, F.UNITAT, C.N_C' +
        'ODI'
      '                              FROM   FILIACIO F'
      
        '                              JOIN   CODICAMPS C ON C.TIPUSCODI ' +
        '= '#39'UNITATS'#39' AND F.UNITAT = C.C_CODI'
      '                              WHERE  F.NUM_HIST = :C_HISTORIA'
      '                              INTO  :NHC, :RESULTAT, :N_PROVA;'
      '      SUSPEND;'
      'END'
      ''
      '')
    Dic1 = wDataCodis.UnitatM
    Dic1Name = 'wDataCodis.UnitatM'
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
    Left = 36
    Top = 72
  end
  object T_Fili_BU_Alrg_Tot: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BU_Alrg_Tot'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE FT_ON SMALLINT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      IF ((NEW.ALERGIES <> OLD.ALERGIES)'
      
        '      OR ((OLD.ALERGIES IS NULL) AND (NEW.ALERGIES IS NOT NULL))' +
        ') THEN'
      '      BEGIN'
      
        '            SELECT ESTAT FROM CONFIGBLOQ WHERE CAMP = '#39'FT_ON'#39' IN' +
        'TO :FT_ON;'
      ''
      '            IF (FT_ON = 0) THEN NEW.ALERGIES_TOT = NEW.ALERGIES;'
      '      END'
      '   END'
      'END')
    Dic1 = wDataBasics.Filiacio
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
    Accion1 = taANTES
    Accion2 = taUPDATE
    Left = 274
    Top = 16
  end
  object P_Espasticitat_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Espasticitat_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA   INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  USUARI_AD    VARCHAR(250),'
      '  DATA         DATE,'
      '  QUANTITAT    INTEGER,'
      '  OBSERVACIONS VARCHAR(250),'
      '  ASHWORTH     SMALLINT'
      ')'
      'RETURNS('
      '  C_ANOTACIO INTEGER,'
      '  CLAU       INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_ESCALA   INTEGER;'
      '  DECLARE VARIABLE C_PRESTA   VARCHAR(4);'
      '  DECLARE VARIABLE TIPUS      CHAR(1);'
      '  DECLARE VARIABLE C_USUARI   VARCHAR(5);'
      '  DECLARE VARIABLE C_ENTRADA  INTEGER;'
      '  DECLARE VARIABLE ANOTACIO   VARCHAR(3000);'
      'BEGIN'
      ''
      
        '      /* INFILTRACI'#211' DE TOXINA BOTUL'#205'NICA per ESPASTICITAT -> ES' +
        'CALA ASHWORTH */'
      '      C_ESCALA = 11;'
      ''
      
        '      /* Prestaci'#243' contra la qual es prescriu/administra la toxi' +
        'na */'
      
        '      SELECT C_PRESTACIO FROM TRACTAMENTS WHERE C_TRACTAMENT = :' +
        'C_TRACTAMENT INTO :C_PRESTA;'
      '      '
      '      IF (C_PRESTA = '#39'1004'#39') THEN TIPUS = '#39'C'#39';'
      '                             ELSE TIPUS = '#39'S'#39';'
      '                                '
      '      /* Usuari que registra l'#39'escala */'
      
        '      SELECT CODI FROM METGES WHERE EMAIL STARTING WITH :USUARI_' +
        'AD ||'#39'@'#39' INTO :C_USUARI;'
      ''
      ''
      '      /* Cap'#231'alera */'
      ''
      
        '      SELECT Max(C_ENTRADA) +1 FROM ESCALESCAP WHERE C_HISTORIA ' +
        '= :C_HISTORIA AND C_ESCALA = :C_ESCALA INTO :C_ENTRADA;'
      '      '
      '      if (c_entrada is null) then c_entrada = 1;'
      '      '
      '      CLAU = GEN_ID(G_ESCALESCAP, 1);'
      ''
      
        '      INSERT INTO ESCALESCAP (CLAU, C_ESCALA, C_TRACTAMENT, C_HI' +
        'STORIA, C_ENTRADA, DATA, C_USUARI, TIPUS, DATA_ADM)'
      
        '      VALUES(:CLAU, :C_ESCALA, :C_TRACTAMENT, :C_HISTORIA, :C_EN' +
        'TRADA, :DATA, :C_USUARI, :TIPUS, F_SoloFecha(:DATA));'
      ''
      '      /* L'#237'nies */'
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 107, :ASHWORTH);'
      '      '
      ''
      '      /* Anotaci'#243' al Curs */'
      
        '      ANOTACIO = '#39'Infiltraci'#243' de '#39' || QUANTITAT || '#39' unitats de ' +
        'toxina botul'#237'nica per espasticitat.'#39' ||F_NLine() || OBSERVACIONS' +
        ';'
      ''
      
        '      SELECT C_ANOTACIO FROM P_HISTORIA_ANOTACIO_FT (:C_HISTORIA' +
        ', :C_TRACTAMENT, :ANOTACIO, 41, :USUARI_AD, :DATA) INTO :C_ANOTA' +
        'CIO;'
      ''
      ''
      '      SUSPEND;'
      'END')
    Dic1 = wDataMHDA.ToxinaBotulinica
    Dic1Name = 'ToxinaBotulinica'
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
    Left = 406
    Top = 204
  end
  object P_Sialorrea_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Sialorrea_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA   INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  USUARI_AD    VARCHAR(250),'
      '  DATA         DATE,'
      '  QUANTITAT    INTEGER,'
      '  OBSERVACIONS VARCHAR(250),'
      '  INTENSITAT   SMALLINT,'
      '  FREQUENCIA   SMALLINT'
      ')'
      ''
      'RETURNS('
      '  C_ANOTACIO INTEGER,'
      '  CLAU       INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_ESCALA   INTEGER;'
      '  DECLARE VARIABLE C_PRESTA   VARCHAR(4);'
      '  DECLARE VARIABLE TIPUS      CHAR(1);'
      '  DECLARE VARIABLE C_USUARI   VARCHAR(5);'
      '  DECLARE VARIABLE C_ENTRADA  INTEGER;'
      '  DECLARE VARIABLE ANOTACIO   VARCHAR(3000);'
      'BEGIN'
      ''
      
        '      /* INFILTRACI'#211' DE TOXINA BOTUL'#205'NICA per SIALORREA -> ESCAL' +
        'A SIALORREA */'
      '      C_ESCALA = 103;'
      ''
      
        '      /* Prestaci'#243' contra la qual es prescriu/administra la toxi' +
        'na */'
      
        '      SELECT C_PRESTACIO FROM TRACTAMENTS WHERE C_TRACTAMENT = :' +
        'C_TRACTAMENT INTO :C_PRESTA;'
      ''
      '      IF (C_PRESTA = '#39'1004'#39') THEN TIPUS = '#39'C'#39';'
      '                             ELSE TIPUS = '#39'S'#39';'
      ''
      '      /* Usuari que registra l'#39'escala */'
      
        '      SELECT CODI FROM METGES WHERE EMAIL STARTING WITH :USUARI_' +
        'AD ||'#39'@'#39' INTO :C_USUARI;'
      ''
      ''
      '      /* Cap'#231'alera */'
      ''
      
        '      SELECT Max(C_ENTRADA) +1 FROM ESCALESCAP WHERE C_HISTORIA ' +
        '= :C_HISTORIA AND C_ESCALA = :C_ESCALA INTO :C_ENTRADA;'
      ''
      '      if (c_entrada is null) then c_entrada = 1;'
      '      '
      '      CLAU = GEN_ID(G_ESCALESCAP, 1);'
      
        '      INSERT INTO ESCALESCAP (CLAU, C_ESCALA, C_TRACTAMENT, C_HI' +
        'STORIA, C_ENTRADA, DATA, C_USUARI, TIPUS, DATA_ADM)'
      
        '      VALUES(:CLAU, :C_ESCALA, :C_TRACTAMENT, :C_HISTORIA, :C_EN' +
        'TRADA, :DATA, :C_USUARI, :TIPUS, F_SoloFecha(:DATA));'
      ''
      '      /*L'#237'nies */'
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 1005, :INTENSITAT);'
      ''
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 1006, :FREQUENCIA);'
      '      '
      ''
      '      /* Anotaci'#243' al Curs */'
      
        '      ANOTACIO = '#39'Infiltraci'#243' de '#39' || QUANTITAT || '#39' unitats de ' +
        'toxina botul'#237'nica per sialorrea.'#39' ||F_NLine() || OBSERVACIONS;'
      ''
      
        '      SELECT C_ANOTACIO FROM P_HISTORIA_ANOTACIO_FT (:C_HISTORIA' +
        ', :C_TRACTAMENT, :ANOTACIO, 41, :USUARI_AD, :DATA) INTO :C_ANOTA' +
        'CIO;'
      '      '
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = wDataMHDA.ToxinaBotulinica
    Dic1Name = 'ToxinaBotulinica'
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
    Left = 496
    Top = 204
  end
  object P_EEsofagic_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EEsofagic_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA   INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  USUARI_AD    VARCHAR(250),'
      '  DATA         DATE,'
      '  QUANTITAT    INTEGER,'
      '  OBSERVACIONS VARCHAR(250),'
      '  FOIS         SMALLINT'
      ')'
      'RETURNS('
      '  C_ANOTACIO INTEGER,'
      '  CLAU       INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_ESCALA   INTEGER;'
      '  DECLARE VARIABLE C_PRESTA   VARCHAR(4);'
      '  DECLARE VARIABLE TIPUS      CHAR(1);'
      '  DECLARE VARIABLE C_USUARI   VARCHAR(5);'
      '  DECLARE VARIABLE C_ENTRADA  INTEGER;'
      '  DECLARE VARIABLE ANOTACIO   VARCHAR(3000);'
      'BEGIN'
      ''
      
        '      /* INFILTRACI'#211' DE TOXINA BOTUL'#205'NICA a Esf'#237'nter esof'#224'gic ->' +
        ' ESCALA FOIS */'
      '      C_ESCALA = 106;'
      ''
      
        '      /* Prestaci'#243' contra la qual es prescriu/administra la toxi' +
        'na */'
      
        '      SELECT C_PRESTACIO FROM TRACTAMENTS WHERE C_TRACTAMENT = :' +
        'C_TRACTAMENT INTO :C_PRESTA;'
      ''
      '      IF (C_PRESTA = '#39'1004'#39') THEN TIPUS = '#39'C'#39';'
      '                             ELSE TIPUS = '#39'S'#39';'
      ''
      '      /* Usuari que registra l'#39'escala */'
      
        '      SELECT CODI FROM METGES WHERE EMAIL STARTING WITH :USUARI_' +
        'AD ||'#39'@'#39' INTO :C_USUARI;'
      ''
      ''
      '      /* Cap'#231'alera */'
      '      CLAU = GEN_ID(G_ESCALESCAP, 1);'
      ''
      
        '      SELECT Max(C_ENTRADA) +1 FROM ESCALESCAP WHERE C_HISTORIA ' +
        '= :C_HISTORIA AND C_ESCALA = :C_ESCALA INTO :C_ENTRADA;'
      '      '
      '      if (C_ENTRADA is null) then c_entrada=1;'
      ''
      
        '      INSERT INTO ESCALESCAP (CLAU, C_ESCALA, C_TRACTAMENT, C_HI' +
        'STORIA, C_ENTRADA, DATA, C_USUARI, TIPUS, DATA_ADM)'
      
        '      VALUES(:CLAU, :C_ESCALA, :C_TRACTAMENT, :C_HISTORIA, :C_EN' +
        'TRADA, :DATA, :C_USUARI, :TIPUS, F_SoloFecha(:DATA));'
      ''
      '      /* L'#237'nies */'
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 1035, :FOIS);'
      ''
      ''
      '      /* Anotaci'#243' al Curs */'
      
        '      ANOTACIO = '#39'Infiltraci'#243' de '#39' || QUANTITAT || '#39' unitats de ' +
        'toxina botul'#237'nica a l'#39#39'esf'#237'nter esof'#224'gic. '#39' || F_NLine() || OBSE' +
        'RVACIONS;'
      ''
      
        '      SELECT C_ANOTACIO FROM P_HISTORIA_ANOTACIO_FT (:C_HISTORIA' +
        ', :C_TRACTAMENT, :ANOTACIO, 41, :USUARI_AD, :DATA) INTO :C_ANOTA' +
        'CIO;'
      '      '
      ''
      '      SUSPEND;'
      'END')
    Dic1 = wDataMHDA.ToxinaBotulinica
    Dic1Name = 'ToxinaBotulinica'
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
    Left = 585
    Top = 204
  end
  object P_EAnal_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EAnal_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA   INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  USUARI_AD    VARCHAR(250),'
      '  DATA         DATE,'
      '  QUANTITAT    INTEGER,'
      '  OBSERVACIONS VARCHAR(250),'
      '  EDefecatori  CHAR(1),'
      '  FDures       CHAR(1),'
      '  SensacioEI   CHAR(1),'
      '  SensacioOA   CHAR(1),'
      '  Autodigit    CHAR(1),'
      '  Menys3       CHAR(1)'
      ')'
      'RETURNS('
      '  C_ANOTACIO INTEGER,'
      '  CLAU       INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_ESCALA   INTEGER;'
      '  DECLARE VARIABLE C_PRESTA   VARCHAR(4);'
      '  DECLARE VARIABLE TIPUS      CHAR(1);'
      '  DECLARE VARIABLE C_USUARI   VARCHAR(5);'
      '  DECLARE VARIABLE C_ENTRADA  INTEGER;'
      '  DECLARE VARIABLE ANOTACIO   VARCHAR(3000);'
      'BEGIN'
      ''
      
        '      /* INFILTRACI'#211' DE TOXINA BOTUL'#205'NICA a Esf'#237'nter anal -> ESC' +
        'ALA ROMA */'
      '      C_ESCALA = 54;'
      ''
      
        '      /* Prestaci'#243' contra la qual es prescriu/administra la toxi' +
        'na */'
      
        '      SELECT C_PRESTACIO FROM TRACTAMENTS WHERE C_TRACTAMENT = :' +
        'C_TRACTAMENT INTO :C_PRESTA;'
      ''
      '      IF (C_PRESTA = '#39'1004'#39') THEN TIPUS = '#39'C'#39';'
      '                             ELSE TIPUS = '#39'S'#39';'
      ''
      '      /* Usuari que registra l'#39'escala */'
      
        '      SELECT CODI FROM METGES WHERE EMAIL STARTING WITH :USUARI_' +
        'AD ||'#39'@'#39' INTO :C_USUARI;'
      ''
      ''
      '      /* Cap'#231'alera */'
      '      CLAU = GEN_ID(G_ESCALESCAP, 1);'
      ''
      
        '      SELECT Max(C_ENTRADA) +1 FROM ESCALESCAP WHERE C_HISTORIA ' +
        '= :C_HISTORIA AND C_ESCALA = :C_ESCALA INTO :C_ENTRADA;'
      '      if (C_ENTRADA is null) then c_entrada=1;'
      ''
      ''
      
        '      INSERT INTO ESCALESCAP (CLAU, C_ESCALA, C_TRACTAMENT, C_HI' +
        'STORIA, C_ENTRADA, DATA, C_USUARI, TIPUS, DATA_ADM)'
      
        '      VALUES(:CLAU, :C_ESCALA, :C_TRACTAMENT, :C_HISTORIA, :C_EN' +
        'TRADA, :DATA, :C_USUARI, :TIPUS, F_SoloFecha(:DATA));'
      ''
      '      /* L'#237'nies */'
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 423, :EDefecatori);'
      '      '
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 424, :FDures);'
      '      '
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 425, :SensacioEI);'
      '      '
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 426, :SensacioOA);'
      '      '
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 427, :Autodigit);'
      '      '
      '      INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM)'
      '      VALUES (:CLAU, 428, :Menys3);'
      ''
      ''
      '      /* Anotaci'#243' al Curs */'
      
        '      ANOTACIO = '#39'Infiltraci'#243' de '#39' || QUANTITAT || '#39' unitats de ' +
        'toxina botul'#237'nica a l'#39#39'esf'#237'nter anal. '#39' || F_NLine() || OBSERVAC' +
        'IONS;'
      ''
      
        '      SELECT C_ANOTACIO FROM P_HISTORIA_ANOTACIO_FT (:C_HISTORIA' +
        ', :C_TRACTAMENT, :ANOTACIO, 41, :USUARI_AD, :DATA) INTO :C_ANOTA' +
        'CIO;'
      '      '
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = wDataMHDA.ToxinaBotulinica
    Dic1Name = 'ToxinaBotulinica'
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
    Left = 665
    Top = 204
  end
  object P_Insulina_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Insulina_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_TRACTAMENT INTEGER,'
      '  INSULINA     INTEGER,'
      '  GLICEMIA     INTEGER,'
      '  ID_ADMIN_FT  INTEGER,'
      '  USUARI_AD    VARCHAR(250),'
      '  DATA         DATE'
      ')'
      'returns'
      '('
      '      conta integer'
      ')'
      'AS'
      '  DECLARE VARIABLE C_USUARI VARCHAR(5);'
      '  DECLARE VARIABLE RELACIO  VARCHAR(15);'
      'BEGIN'
      ''
      '      /* Busquem l'#39'usuari */'
      
        '      SELECT CODI FROM METGES WHERE EMAIL STARTING WITH :USUARI_' +
        'AD ||'#39'@'#39' INTO :C_USUARI;'
      ''
      
        '      /* Registrem valor glic'#232'mia a la gr'#224'fica d'#39'infermeria (1 m' +
        'inut abans que l'#39'administraci'#243') */'
      
        '      INSERT INTO INFERDADES (C_TRACTAMENT, C_ITEM, DATA_VALOR, ' +
        'VALOR, USUARI, DATA, ID_ADMIN_FT)'
      
        '      VALUES (:C_TRACTAMENT, 21, :DATA - 1/(24*60), :GLICEMIA, :' +
        'C_USUARI, :DATA, :ID_ADMIN_FT);'
      ''
      '      /* Registrem relaci'#243' glic'#232'mia/insulina */'
      
        '      /* Registrem valor glic'#232'mia a la gr'#224'fica d'#39'infermeria (1 m' +
        'inut abans que l'#39'administraci'#243') */'
      '      RELACIO = GLICEMIA ||'#39' ('#39'|| INSULINA ||'#39')'#39';'
      '      '
      
        '      INSERT INTO INFERDADES (C_TRACTAMENT, C_ITEM, DATA_VALOR, ' +
        'VALOR, USUARI, DATA, ID_ADMIN_FT)'
      
        '      VALUES (:C_TRACTAMENT, 42, :DATA, :RELACIO, :C_USUARI, :DA' +
        'TA, :ID_ADMIN_FT);'
      ''
      ''
      
        '      select count(*) from inferdades where ID_ADMIN_FT = :ID_AD' +
        'MIN_FT into :conta;'
      '      suspend;'
      'END'
      ''
      ''
      '')
    Dic1 = wDataInfermeria.InferDades
    Dic1Name = 'InferDades'
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
    Left = 200
    Top = 148
  end
  object P_PROA_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PROA_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  ID_FT           VARCHAR(20),'
      '  C_HISTORIA      INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      '  C_PROD          VARCHAR(10),'
      '  ATC             VARCHAR(7),'
      '  N_ATC           VARCHAR(250),'
      '  ATC2            VARCHAR(7),'
      '  N_ATC2          VARCHAR(250),'
      '  ATC3            VARCHAR(7),'
      '  N_ATC3          VARCHAR(250),'
      '  N_PROD          VARCHAR(255),'
      '  DOSI            FLOAT,'
      '  C_UM            VARCHAR(15),'
      '  C_PERIODICITAT  VARCHAR(8),'
      '  C_SEQUENCIA     VARCHAR(8),'
      '  C_VIA           VARCHAR(40),'
      '  DATA_INICI      DATE,'
      '  DATA_SUSP       DATE,'
      '  C_MOTIUATB      SMALLINT,'
      '  C_INFECCIO      CHAR(2),'
      '  USUARI_AD       VARCHAR(250),'
      '  DATA            DATE'
      ')'
      'RETURNS'
      '('
      '  C_INTERCON    INTEGER,'
      '  C_PRESCRIPCIO INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_METGE       VARCHAR(5);'
      '  DECLARE VARIABLE N_METGE       VARCHAR(20);'
      '  DECLARE VARIABLE C_GRUP        VARCHAR(2);'
      ''
      '  DECLARE VARIABLE C_PRESTACIO   VARCHAR(4);'
      '  DECLARE VARIABLE DATA_INGRES   DATE;'
      '  DECLARE VARIABLE C_COORDINADOR VARCHAR(5);'
      ''
      '  DECLARE VARIABLE N_MOTIUATB    VARCHAR(40);'
      '  DECLARE VARIABLE N_INFECCIO    VARCHAR(40);'
      '  DECLARE VARIABLE MOTIU_IC      SMALLINT;'
      '  DECLARE VARIABLE PROA          VARCHAR(20);'
      '  DECLARE VARIABLE ESTAT_I       SMALLINT;'
      '  DECLARE VARIABLE ESTAT_C       SMALLINT;'
      '  DECLARE VARIABLE INDICACIO     SMALLINT;'
      ''
      '  DECLARE VARIABLE INFO          VARCHAR(2500);'
      '  DECLARE VARIABLE SOLICITA      VARCHAR(3000);'
      '  '
      '  DECLARE VARIABLE COMPTA        INTEGER;'
      'BEGIN'
      ''
      
        '      /* En prescriure un antibi'#242'tic generem interconsulta PROA ' +
        'i COMUNICAT EPIDEMIOL'#210'GIC,'
      
        '         o associem la prescripci'#243' a un comunicat existent amb e' +
        'l mateix motiu d'#39'antib'#242'tic i tipus d'#39'infecci'#243' (si consta) */'
      ''
      '      /* Dades del metge que fa la prescripci'#243' */'
      
        '      SELECT CODI, METGE, C_GRUP FROM METGES WHERE EMAIL STARTIN' +
        'G WITH :USUARI_AD ||'#39'@'#39' INTO :C_METGE, :N_METGE, :C_GRUP;'
      ''
      
        '      /* Dades del tractament contra el qual s'#39'ha fet la prescri' +
        'pci'#243' */'
      '      SELECT C_PRESTACIO, DATA_INGRES, C_COORDINADOR'
      '      FROM   TRACTAMENTS'
      '      WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '      INTO  :C_PRESTACIO, :DATA_INGRES, :C_COORDINADOR;'
      ''
      '      /* Motiu antibi'#242'tic */'
      
        '      SELECT N_MOTIU FROM MOTIUSANTIBIOTIC WHERE C_MOTIU = :C_MO' +
        'TIUATB INTO :N_MOTIUATB;'
      ''
      '      IF (C_MOTIUATB IN (1,9)) THEN'
      '      BEGIN'
      '            MOTIU_IC = 11;'
      '            PROA = '#39'PROA QUIR'#218'RGIC'#39';'
      
        '            ESTAT_I = 80;      /* intercon anul'#183'lada directament' +
        ' */'
      
        '            ESTAT_C = 9;       /* cepi no procedeix directament ' +
        '*/'
      
        '            INDICACIO = 3;     /* profilaxi quir'#250'rgica / altres ' +
        '*/'
      '      END'
      '      ELSE BEGIN'
      '            MOTIU_IC = 10;'
      '            PROA = '#39'PROA M'#200'DIC'#39';'
      
        '            ESTAT_I = 1;       /* intercon pendent de respondre ' +
        '*/'
      '            ESTAT_C = 1;       /* cepi pendent */'
      '            INDICACIO = NULL;'
      '      END'
      ''
      
        '      /* Busquem Comunicat actiu amb mateix tipus d'#39'infecci'#243', si' +
        ' l'#39'han introdu'#239't */'
      '      C_INTERCON = NULL;'
      ''
      '      IF (C_INFECCIO IS NOT NULL) THEN'
      '      BEGIN'
      '            SELECT C_INTERCON'
      '            FROM   INTERCON_COMUNICATEPI'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    C_MOTIUANTIBIOTIC = :C_MOTIUATB'
      '            AND    TIPUS_INFECCIO = :C_INFECCIO'
      '            AND    ESTAT < 3'
      '            INTO  :C_INTERCON;'
      '            '
      
        '            SELECT N_INFECCIO FROM TIPUSINFECCIONS WHERE C_INFEC' +
        'CIO = :C_INFECCIO INTO :N_INFECCIO;'
      '      END'
      ''
      
        '      INFO =  "Prescripci'#243' de tractament antibi'#242'tic" || COALESCE' +
        '('#39' per '#39' || :N_MOTIUATB, '#39#39') || '#39'.'#39' || F_NLine() ||'
      
        '              COALESCE("Tipus infecci'#243': " || NULLIF(:N_INFECCIO ' +
        '|| '#39'.'#39', '#39#39') || F_NLine(), '#39#39') ||  /* Nom'#233's introdueixen tipus d'#39 +
        'infecci'#243' en cas d'#39'infecci'#243' */'
      '              "Data inici: " || F_DateToStr(:DATA_INICI);'
      '                    '
      '      IF (C_INTERCON IS NULL) THEN'
      '      BEGIN'
      
        '            /* 1. GENEREM INTERCONSULTA PROA A MEDICINA INTERNA ' +
        '*/'
      ''
      
        '            SOLICITA = "Interconsulta " || :PROA || F_NLine() ||' +
        ' :INFO;'
      ''
      '            C_INTERCON = GEN_ID(CONTAINTERCON, 1);'
      ''
      
        '            INSERT INTO INTERCON (C_INTERCON, C_TIPUS, C_ESPECIA' +
        'L, C_MOTIU, ESTAT, C_TRACTAMENT, C_HISTORIA, DATA1, C_METGE1, SO' +
        'LICITA)'
      
        '            VALUES (:C_INTERCON, "PROA", "04", :MOTIU_IC, :ESTAT' +
        '_I, :C_TRACTAMENT, :C_HISTORIA, :DATA, :C_METGE, :SOLICITA);'
      ''
      ''
      
        '            /* Anotaci'#243' al Curs Cl'#237'nic (enlla'#231' amb la interconsu' +
        'lta)*/'
      '            IF (ESTAT_I <> 80)'
      '            THEN'
      
        '                  INSERT INTO HISTORIA (C_ANOTACIO, C_TRACTAMENT' +
        ', C_HISTORIA, C_PRESTACIO, DATA_INGRES, C_COORDINADOR, DATA, C_U' +
        'SUARI, C_GRUP, ANOTACIO, C_INTERCON, ESTAT_INTERCON)'
      
        '                  VALUES (GEN_ID(CONTAHISTORIA,1), :C_TRACTAMENT' +
        ', :C_HISTORIA, :C_PRESTACIO, :DATA_INGRES, :C_COORDINADOR, :DATA' +
        ', :C_METGE, :C_GRUP, :SOLICITA, :C_INTERCON, :ESTAT_I);'
      ''
      ''
      '            /* 2. GENEREM EL COMUNICAT EPIDEMIOL'#210'GIC */'
      ''
      
        '            /* Generem un nou comunicat epidemiol'#242'gic, associat ' +
        'a la interconsulta (relaci'#243' 1:1) */'
      
        '            INSERT INTO INTERCON_COMUNICATEPI (C_INTERCON, C_HIS' +
        'TORIA, C_MOTIUANTIBIOTIC, TIPUS_INFECCIO, ESTAT)'
      
        '            VALUES (:C_INTERCON, :C_HISTORIA, :C_MOTIUATB, :C_IN' +
        'FECCIO, :ESTAT_C);'
      '      END'
      '      '
      '      '
      
        '      /* 3. GUARDEM LA PRESCRIPCI'#211' i l'#39'associem al comunicat epi' +
        'demiol'#242'gic corresponent */'
      '      '
      '      /* Afegim el f'#224'rmac a FT_Producte si no hi era */'
      
        '      SELECT COUNT(*) FROM FT_PRODUCTE WHERE C_PROD = :C_PROD IN' +
        'TO :COMPTA;'
      ''
      
        '      IF (COMPTA = 0) THEN    INSERT INTO FT_PRODUCTE (C_PROD, N' +
        '_PROD, ATC, N_ATC, ATC2, N_ATC2, ATC3, N_ATC3)'
      
        '                              VALUES (:C_PROD, :N_PROD, :ATC, :N' +
        '_ATC, :ATC2, :N_ATC2, :ATC3, :N_ATC3);'
      '                      ELSE    UPDATE FT_PRODUCTE'
      
        '                              SET    N_PROD = :N_PROD, ATC = :AT' +
        'C, N_ATC = :N_ATC, ATC2 = :ATC2, N_ATC2 = :N_ATC2, ATC3 = :ATC3,' +
        ' N_ATC3 = :N_ATC3'
      '                              WHERE  C_PROD= :C_PROD;'
      ''
      
        '      /* Afegim la prescripci'#243' de l'#39'antibi'#242'tic a FT_Prescripcio ' +
        '*/'
      '      C_PRESCRIPCIO = GEN_ID(G_FT_PRESCRIPCIO, 1);'
      ''
      
        '      INSERT INTO FT_PRESCRIPCIO (C_PRESCRIPCIO, C_HISTORIA, C_T' +
        'RACTAMENT, C_PROD, DOSI, C_UM, C_PERIODICITAT, C_SEQUENCIA, C_VI' +
        'A, DATA_INICI,'
      
        '                                  DATA_SUSPENSIO, C_MOTIUANTIBIO' +
        'TIC, TIPUS_INFECCIO, DATA, C_USUARI, ID_FT, ORIGEN)'
      
        '      VALUES (:C_PRESCRIPCIO, :C_HISTORIA, :C_TRACTAMENT, :C_PRO' +
        'D, :DOSI, :C_UM, :C_PERIODICITAT, :C_SEQUENCIA, :C_VIA, :DATA_IN' +
        'ICI,'
      
        '              :DATA_SUSP, :C_MOTIUATB, :C_INFECCIO, :DATA, :C_ME' +
        'TGE, :ID_FT, 1);'
      ''
      
        '      /* Enllacem la prscripci'#243' amb el comunicat, via c_intercon' +
        ' (relaci'#243' n:n) */'
      
        '      INSERT INTO INTERCON_CEPI_PRESCRIPCIO (ID, C_PRESCRIPCIO, ' +
        'C_INTERCON, INDICACIO)'
      
        '      VALUES (GEN_ID(G_CEPI_PRESCRIPCIO, 1), :C_PRESCRIPCIO, :C_' +
        'INTERCON, :INDICACIO);'
      ''
      ''
      '      /* 4. AV'#205'S als responsables del PROA */'
      '      IF (ESTAT_I <> 80)'
      '      THEN'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS)'
      
        '            VALUES ("NOW", 49, "Av'#237's NOVA PAUTA D'#39'ANTIBI'#210'TIC ("|' +
        '|:PROA ||")",'
      
        '                    "S'#39#39'ha pautat un antibi'#242'tic: " || F_NLine() ' +
        '|| F_NLine() ||'
      '                    "NHC: " || :C_HISTORIA || F_NLine() ||'
      '                    :INFO || F_NLine() ||'
      '                    "Metge prescriptor/a: " || :N_METGE );'
      ''
      '       suspend;'
      ''
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
    Left = 382
    Top = 148
  end
  object P_EVA_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EVA_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA   INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  EVA          INTEGER,'
      '  LOCALITZACIO VARCHAR(15),'
      '  USUARI_AD    VARCHAR(250),'
      '  DATA         DATE,'
      '  DATA_ADM     DATE'
      ')'
      'RETURNS'
      '('
      '      C_ENTRADA INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_USUARI  VARCHAR(5);'
      '  DECLARE VARIABLE CLAU      INTEGER;'
      '  DECLARE VARIABLE ANULAT    CHAR(1);'
      '  DECLARE VARIABLE C_LOCALITZACIO VARCHAR(15);'
      'BEGIN'
      ''
      '      /* Busquem l'#39'usuari */'
      
        '      SELECT CODI FROM METGES WHERE EMAIL STARTING WITH :USUARI_' +
        'AD ||'#39'@'#39' INTO :C_USUARI;'
      ''
      '      /* Busquem el descriptiu de la localitzaci'#243' */'
      
        '      SELECT C_CODI FROM CODICAMPSALFA WHERE TIPUSCODI = "EVA.LO' +
        'CALITZACIO" AND R_CODI = :LOCALITZACIO INTO :C_LOCALITZACIO;'
      '      '
      '      /* Registrem l'#39'escala EVA */'
      '      '
      '      CLAU = Gen_ID(G_ESCALESCAP, 1);'
      ''
      
        '      SELECT Max(C_ENTRADA) +1 FROM ESCALESCAP WHERE C_HISTORIA ' +
        '= :C_HISTORIA AND C_ESCALA = 122 INTO :C_ENTRADA;'
      '      IF (C_ENTRADA IS NULL) THEN C_ENTRADA = 0;'
      '    '
      '      IF (EVA = -1) THEN ANULAT = "V";  /* No valorable */'
      '                    ELSE ANULAT = "N";'
      ''
      '      /* Cap'#231'alera */'
      
        '      INSERT INTO ESCALESCAP (CLAU, C_ESCALA, C_HISTORIA, C_TRAC' +
        'TAMENT, DATA, C_ENTRADA, ANULAT, C_USUARI, TIPUS, DATA_ADM)'
      
        '      VALUES (:CLAU, 122, :C_HISTORIA, :C_TRACTAMENT, :DATA, :C_' +
        'ENTRADA, :ANULAT, :C_USUARI, "C", :DATA_ADM);'
      ''
      '      /* L'#237'nies */'
      '      IF (ANULAT = "N") THEN'
      '      BEGIN'
      '            if (C_LOCALITZACIO IS NOT NULL)'
      
        '            THEN INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) V' +
        'ALUES (:CLAU, 1210, :C_LOCALITZACIO);'
      '            '
      
        '            INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) VALUES' +
        ' (:CLAU, 1211, :EVA);'
      
        '            INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) VALUES' +
        ' (:CLAU, 1212, "S");   /* analg'#232'sic administrat*/'
      '      END;'
      ''
      ''
      
        '      /* Registrem el par'#224'metre Dolor a la Gr'#224'fica d'#39'Infermeria ' +
        '*/'
      '      '
      
        '      INSERT INTO INFERDADES (C_TRACTAMENT, C_ITEM, DATA_VALOR, ' +
        'VALOR, USUARI, DATA)'
      
        '      VALUES (:C_TRACTAMENT, 35, :DATA_ADM, cast(:EVA as varchar' +
        '(10))||'#39' - '#39'||F_Left(:C_LOCALITZACIO, 10), :C_USUARI, :DATA);'
      ''
      '      suspend;'
      'END'
      ''
      ''
      '')
    Dic1 = wDataInfermeria.InferDades
    Dic1Name = 'InferDades'
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
    Left = 120
    Top = 148
  end
  object P_InsulinaAnulaFT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'InsulinaAnula_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  ID_ADMIN_FT  INTEGER'
      ')'
      'returns'
      '('
      '      conta integer'
      ')'
      'AS'
      'BEGIN'
      
        '      /* FT no ens pot enviar usuari ni data d'#39'anul'#183'laci'#243' perqu'#232 +
        ' no registra aquestes dades */'
      
        '      /* Anul'#183'lem els valors de glic'#232'mia i relaci'#243' glic'#232'mia/insu' +
        'lina registrats a la gr'#224'fica en administrar la insulina */'
      '      UPDATE INFERDADES'
      '      SET ANULAT = '#39'S'#39','
      '          DATA_ANULAT = '#39'NOW'#39
      '      WHERE C_ITEM IN (21, 42)'
      '      AND   ID_ADMIN_FT = :ID_ADMIN_FT;'
      ''
      ''
      
        '      select count(*) from inferdades  WHERE C_ITEM IN (21, 42) ' +
        ' AND   ID_ADMIN_FT = :ID_ADMIN_FT and anulat='#39'S'#39' into :conta;'
      ''
      ''
      '      suspend;'
      'END'
      ''
      ''
      '')
    Dic1 = wDataInfermeria.InferDades
    Dic1Name = 'InferDades'
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
    Left = 290
    Top = 148
  end
  object P_EVesical_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EVesical_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA   INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  USUARI_AD    VARCHAR(250),'
      '  DATA         DATE,'
      '  QUANTITAT    INTEGER,'
      '  OBSERVACIONS VARCHAR(250)'
      ')'
      'RETURNS('
      '  C_ANOTACIO INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE ANOTACIO   VARCHAR(3000);'
      'BEGIN'
      ''
      
        '      /* INFILTRACI'#211' DE TOXINA BOTUL'#205'NICA a Esf'#237'nter vesical -> ' +
        'nom'#233's anotaci'#243' */'
      ''
      '      /* Anotaci'#243' al Curs */'
      
        '      ANOTACIO = '#39'Infiltraci'#243' de '#39' || QUANTITAT || '#39' unitats de ' +
        'toxina botul'#237'nica a l'#39#39'esf'#237'nter vesical. '#39' || F_NLine() || OBSER' +
        'VACIONS;'
      '      '
      
        '      SELECT C_ANOTACIO FROM P_HISTORIA_ANOTACIO_FT (:C_HISTORIA' +
        ', :C_TRACTAMENT, :ANOTACIO, 41, :USUARI_AD, :DATA) INTO :C_ANOTA' +
        'CIO;'
      '      '
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = wDataMHDA.ToxinaBotulinica
    Dic1Name = 'ToxinaBotulinica'
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
    Left = 743
    Top = 204
  end
  object P_MHDA_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'MHDA_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA   INTEGER,'
      '  C_TRACTAMENT INTEGER,'
      '  USUARI_AD    VARCHAR(250),'
      '  DATA         DATE,'
      '  QUANTITAT    INTEGER,'
      '  N_PRODUCTE   VARCHAR(255),'
      '  OBSERVACIONS VARCHAR(250)'
      ')'
      'RETURNS('
      '  C_ANOTACIO INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE ANOTACIO VARCHAR(3000);'
      'BEGIN'
      ''
      '      /* DISPENSACI'#211' DE MHDA -> anotaci'#243' al Curs Cl'#237'nic */'
      ''
      
        '      ANOTACIO = '#39'Es dispensen '#39' || QUANTITAT || '#39'unitats de '#39' |' +
        '| N_PRODUCTE || '#39'. '#39' || F_NLine() || :OBSERVACIONS;'
      '      '
      
        '      SELECT C_ANOTACIO FROM P_HISTORIA_ANOTACIO_FT (:C_HISTORIA' +
        ', :C_TRACTAMENT, :ANOTACIO, 42, :USUARI_AD,  :DATA) INTO :C_ANOT' +
        'ACIO;'
      ''
      '      suspend;'
      'END')
    Dic1 = wDataCurs.Historia
    Dic1Name = 'Historia'
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
    Left = 318
    Top = 204
  end
  object insPrescripcio: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'insert into FT_PRESCRIPCIO ('
      'C_Prescripcio,'
      'C_Historia,'
      'C_Tractament,'
      'C_Prod,'
      'Dosi,'
      'C_UM,'
      'C_Via,'
      'C_Periodicitat,'
      'C_Sequencia,'
      'Data_Inici,'
      'Origen,'
      'Data'
      ')'
      'values ('
      ':c_prescripcio,'
      ':c_historia,'
      ':c_tractament,'
      ':c_prod,'
      ':dosi,'
      ':c_um,'
      ':c_via,'
      ':c_periodicitat,'
      ':c_sequencia,'
      ':data_inici,'
      ':origen,'
      ':data'
      ')')
    Left = 124
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_prescripcio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_historia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'c_tractament'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_prod'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'dosi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_um'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_via'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_periodicitat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_sequencia'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data_inici'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'origen'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptInput
      end>
  end
  object ws_Prescripcions: TEnviaSoapMsg
    url = 'http://mirth-pre.guttmann.com:9650/services/prescripciones'
    Template.Strings = (
      
        '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap' +
        '/envelope/" xmlns:ws="http://ws.connectors.connect.mirth.com/">'
      '   <soapenv:Header/>'
      '   <soapenv:Body>'
      '      <ws:acceptMessage>'
      '          <arg0>:json</arg0>'
      '      </ws:acceptMessage>'
      '   </soapenv:Body>'
      '</soapenv:Envelope>')
    BasicAuthentication = False
    ContentType = 'text/xml; charset=utf-8'
    Test = False
    Left = 36
    Top = 344
  end
  object FT_Prescripcio: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Prescripcio'
        NombreDB = 'C_PRESCRIPCIO'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'NHC'
        NombreDB = 'C_Historia'
        Longitud = 40
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C_Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 40
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_Producte'
        NombreDB = 'C_Prod'
        Longitud = 10
        Consulta = 'prod'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dosi'
        NombreDB = 'Dosi'
        Longitud = 10
        MaskDisplay = '#,##0.000;; '
        zType = tcIB_Float
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Unitat de mesura'
        NombreDB = 'C_UM'
        Longitud = 15
        Consulta = 'um'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Via administraci'#243
        NombreDB = 'C_Via'
        Longitud = 40
        Consulta = 'via'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Periodicitat'
        NombreDB = 'C_Periodicitat'
        Longitud = 8
        Consulta = 'per'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Seq'#252#232'ncia'
        NombreDB = 'C_Sequencia'
        Longitud = 8
        Consulta = 'seq'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'Data_Inici'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data suspensi'#243
        NombreDB = 'Data_Suspensio'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu antibi'#242'tic'
        NombreDB = 'C_MotiuAntibiotic'
        Longitud = 2
        Consulta = 'motiuatb'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus d'#39'infecci'#243
        NombreDB = 'Tipus_Infeccio'
        Longitud = 2
        Consulta = 'infeccio'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Origen'
        NombreDB = 'Origen'
        Longitud = 2
        Consulta = 'origen'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1: PROA, 2: consulta medicaci'#243' a data x, 3: pla de conting'#232'ncies'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'data de prescripci'#243
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'usr'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'usuari prescriptor'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID prescripci'#243' FT'
        NombreDB = 'ID_FT'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Desc. Via'
        NombreDB = 'N_Via'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Desc. Freq'#252#232'ncia'
        NombreDB = 'N_Freq'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data consulta'
        NombreDB = 'Data_Consulta'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'data de petici'#243' de la informaci'#243' a FT (origen 2 i 3)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions'
        NombreDB = 'Observacions'
        Longitud = 1000
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
          'C_Prescripcio')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'prod'
        NombreDB = 'Prod'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Producte')
        Tipo = tiForaneo
        ForaneoDic = FT_Producte
        ForaneoCampos.Strings = (
          'Producte')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'motiuatb'
        NombreDB = 'Motiu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Motiu antibi'#242'tic')
        Tipo = tiForaneo
        ForaneoDic = wDataOMComun.MotiusAntibiotic
        ForaneoCampos.Strings = (
          'C Motiu Antibi'#242'tic')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usr'
        NombreDB = 'Usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tract'
        NombreDB = 'Tract'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'hist'
        NombreDB = 'Hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'NHC')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ID_FT'
        NombreDB = 'id_ft'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID prescripci'#243' FT')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'infeccio'
        NombreDB = 'infeccio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus d'#39'infecci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataIntercon.TipusInfeccio
        ForaneoCampos.Strings = (
          'Tipus Infecci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'prod'
        Master = FT_Producte
        BuscaOrigen.Strings = (
          'C_Producte')
        CopiarOrigen.Strings = (
          'C_Producte')
        CopiarMaster.Strings = (
          'Producte')
        BuscaMaster.Strings = (
          'Producte')
      end
      item
        Nombre = 'motiuatb'
        Master = wDataIntercon.MotiuAntibiotic
        BuscaOrigen.Strings = (
          'Motiu antibi'#242'tic')
        CopiarOrigen.Strings = (
          'Motiu antibi'#242'tic')
        CopiarMaster.Strings = (
          'C Motiu Antibi'#242'tic')
        BuscaMaster.Strings = (
          'C Motiu Antibi'#242'tic')
      end
      item
        Nombre = 'usr'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Codi usuari')
        CopiarOrigen.Strings = (
          'Codi usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'tract'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'C_Tractament')
        CopiarOrigen.Strings = (
          'C_Tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end
      item
        Nombre = 'hist'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'NHC')
        CopiarOrigen.Strings = (
          'NHC')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'origen'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Origen')
        CopiarOrigen.Strings = (
          'Origen')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'FT.ORIGEN'#39
      end
      item
        Nombre = 'um'
        Master = FT_UnitatMesura
        BuscaOrigen.Strings = (
          'Unitat de mesura')
        CopiarOrigen.Strings = (
          'Unitat de mesura')
        CopiarMaster.Strings = (
          'Unitat mesura')
        BuscaMaster.Strings = (
          'Unitat mesura')
      end
      item
        Nombre = 'via'
        Master = FT_ViaAdmin
        BuscaOrigen.Strings = (
          'Via administraci'#243)
        CopiarOrigen.Strings = (
          'Via administraci'#243)
        CopiarMaster.Strings = (
          'Via administraci'#243)
        BuscaMaster.Strings = (
          'Via administraci'#243)
      end
      item
        Nombre = 'infeccio'
        Master = wDataIntercon.TipusInfeccio
        BuscaOrigen.Strings = (
          'Tipus d'#39'infecci'#243)
        CopiarOrigen.Strings = (
          'Tipus d'#39'infecci'#243)
        CopiarMaster.Strings = (
          'Tipus Infecci'#243)
        BuscaMaster.Strings = (
          'Tipus Infecci'#243)
      end
      item
        Nombre = 'per'
        Master = FT_Periodicitat
        BuscaOrigen.Strings = (
          'Periodicitat')
        CopiarOrigen.Strings = (
          'Periodicitat')
        CopiarMaster.Strings = (
          'Periodicitat')
        BuscaMaster.Strings = (
          'Periodicitat')
      end
      item
        Nombre = 'seq'
        Master = FT_Sequencia
        BuscaOrigen.Strings = (
          'Seq'#252#232'ncia')
        CopiarOrigen.Strings = (
          'Seq'#252#232'ncia')
        CopiarMaster.Strings = (
          'Seq'#252#232'ncia')
        BuscaMaster.Strings = (
          'Seq'#252#232'ncia')
      end>
    Nombre = 'FT Prescripci'#243
    NombreTabla = 'FT_Prescripcio'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Prescripcio'
      'NHC'
      'C_Tractament'
      'C_Producte'
      'Dosi'
      'Unitat de mesura'
      'Periodicitat'
      'Seq'#252#232'ncia'
      'Via administraci'#243
      'Data inici'
      'Data suspensi'#243
      'Motiu antibi'#242'tic'
      'Tipus d'#39'infecci'#243
      'Origen'
      'Data'
      'Codi usuari'
      'ID prescripci'#243' FT')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 36
    Top = 288
  end
  object FT_Producte: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Producte'
        NombreDB = 'C_Prod'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Prod'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ATC'
        NombreDB = 'ATC'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' ATC'
        NombreDB = 'N_ATC'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ATC 2'
        NombreDB = 'ATC2'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' ATC 2'
        NombreDB = 'N_ATC2'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ATC 3'
        NombreDB = 'ATC3'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' ATC 3'
        NombreDB = 'N_ATC3'
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
          'Producte')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'FT Producte'
    NombreTabla = 'FT_Producte'
    Organiza = tbBase
    CamposVer.Strings = (
      'Producte'
      'Descripci'#243
      'ATC'
      'Descripci'#243' ATC'
      'ATC 2'
      'Descripci'#243' ATC 2'
      'ATC 3'
      'Descripci'#243' ATC 3')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 121
    Top = 288
  end
  object FT_Sequencia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Seq'#252#232'ncia'
        NombreDB = 'C_Sequencia'
        Longitud = 6
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' catal'#224
        NombreDB = 'N_Sequencia_CA'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' castell'#224
        NombreDB = 'N_Sequencia_ES'
        Longitud = 255
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
          'Seq'#252#232'ncia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'FT Seq'#252#232'ncia'
    NombreTabla = 'FT_Sequencia'
    Organiza = tbBase
    CamposVer.Strings = (
      'Seq'#252#232'ncia'
      'Descripci'#243' catal'#224
      'Descripci'#243' castell'#224)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 457
    Top = 288
  end
  object FT_UnitatMesura: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Unitat mesura'
        NombreDB = 'C_UM'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' catal'#224
        NombreDB = 'N_UM_CA'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' castell'#224
        NombreDB = 'N_UM_ES'
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
          'Unitat mesura')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'FT Unitat mesura'
    NombreTabla = 'FT_UnitatMesura'
    Organiza = tbBase
    CamposVer.Strings = (
      'Unitat mesura'
      'Descripci'#243' catal'#224
      'Descripci'#243' castell'#224)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 205
    Top = 288
  end
  object FT_ViaAdmin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Via administraci'#243
        NombreDB = 'C_Via'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' catal'#224
        NombreDB = 'N_Via_CA'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' castell'#224
        NombreDB = 'N_Via_ES'
        Longitud = 255
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
          'Via administraci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'FT Via administraci'#243
    NombreTabla = 'FT_ViaAdmin'
    Organiza = tbBase
    CamposVer.Strings = (
      'Via administraci'#243
      'Descripci'#243' catal'#224
      'Descripci'#243' castell'#224)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 290
    Top = 288
  end
  object FT_Periodicitat: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Periodicitat'
        NombreDB = 'C_Periodicitat'
        Longitud = 8
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' catal'#224
        NombreDB = 'N_Periodicitat_CA'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' castell'#224
        NombreDB = 'N_Periodicitat_ES'
        Longitud = 30
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
          'Periodicitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'FT Periodicitat'
    NombreTabla = 'FT_Periodicitat'
    Organiza = tbBase
    CamposVer.Strings = (
      'Periodicitat'
      'Descripci'#243' catal'#224
      'Descripci'#243' castell'#224)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 374
    Top = 288
  end
  object http_BaclofenIT: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'application/json'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 36
    Top = 400
  end
  object P_Metges_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FT'
    ForceNombreDB = False
    Body.Strings = (
      '(ID INTEGER)'
      'RETURNS ('
      '      ID_Login    VARCHAR(250),'
      '      DNI         VARCHAR(10),'
      '      T_DOC       VARCHAR(1),'
      '      C_GRUP      VARCHAR(2),'
      '      C_ESPECIAL  VARCHAR(2),'
      '      NUMCOL      VARCHAR(10),'
      '      NOM         VARCHAR(20),'
      '      COGNOM1     VARCHAR(20),'
      '      COGNOM2     VARCHAR(20),'
      '      NOMSENCER   VARCHAR(80)'
      ')'
      'AS'
      '  DECLARE VARIABLE EMAIL VARCHAR(250);'
      '  DECLARE VARIABLE T_DOC_I SMALLINT;'
      'BEGIN'
      ''
      
        '      SELECT EMAIL, M.NOMBRE, M.COGNOM1, M.COGNOM, M.NOMSENCER, ' +
        'M.NMETGERECEPTA, M.DNI, M.T_DOC, M.C_GRUP, M.C_ESPECIAL'
      '      FROM   METGES M'
      '      JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE  ID = :ID'
      
        '      INTO  :EMAIL, :NOM, :COGNOM1, :COGNOM2, :NOMSENCER, :NUMCO' +
        'L, :DNI, :T_DOC_I, :C_GRUP, :C_ESPECIAL;'
      '      '
      '      /* Agafem usuari AD de l'#39'email */'
      
        '      ID_LOGIN = F_Replacetext('#39'@fake.com'#39', '#39#39', F_Replacetext('#39'@' +
        'guttmann.com'#39', '#39#39', EMAIL));'
      '      '
      '      /* Conversi'#243' DNI smallint -> varchar (D, N, P...) */'
      
        '      SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI = "HCCC.TIPUS' +
        '_DOC" AND C_CODI = :T_DOC_I INTO :T_DOC;'
      '      /*'
      '      IF (T_DOC_I = 1) THEN T_DOC = '#39'D'#39
      '      IF (T_DOC_I = 3) THEN T_DOC = '#39'N'#39
      
        '      IF (T_DOC_I = 5) THEN T_DOC = ??   -> Aix'#242' ho t'#233' nom'#233's el ' +
        'F.MArtins. Preguntar a RH si el seu DOC '#233' sun passaport o una ta' +
        'rgeta comunit'#224'ria...'
      '      */'
      ''
      '      SUSPEND;'
      'END'
      '')
    Dic1 = wDataBasics.Metges
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
    Left = 184
    Top = 16
  end
  object P_Antibiotic_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ANTIBIOTIC'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  ID_FT           VARCHAR(20),'
      '  C_HISTORIA      INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      '  C_PROD          VARCHAR(10),'
      '  ATC             VARCHAR(7),'
      '  N_ATC           VARCHAR(250),'
      '  N_PROD          VARCHAR(255),'
      '  DOSI            FLOAT,'
      '  C_UM            VARCHAR(15),'
      '  C_PERIODICITAT  VARCHAR(8),'
      '  C_SEQUENCIA     VARCHAR(8),'
      '  C_VIA           VARCHAR(40),'
      '  DATA_INICI      DATE,'
      '  DATA_SUSP       DATE,'
      '  C_MOTIUATB      SMALLINT,'
      '  C_INFECCIO      CHAR(2),'
      '  USUARI_AD       VARCHAR(250),'
      '  DATA            DATE'
      ')'
      'RETURNS'
      '('
      '  C_PRESCRIPCIO INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_METGE VARCHAR(5);'
      'BEGIN'
      
        '      /* En modificar la prescripci'#243' d'#39'un antibi'#242'tic a FT, modif' +
        'iquem la prescripci'#243' a IB */'
      ''
      '      /* Dades del metge que fa la modificaci'#243' */'
      
        '      SELECT CODI FROM METGES WHERE EMAIL STARTING WITH :USUARI_' +
        'AD ||'#39'@'#39' INTO :C_METGE;'
      ''
      '      C_PRESCRIPCIO = NULL;'
      ''
      
        '      SELECT max(C_PRESCRIPCIO) FROM FT_PRESCRIPCIO WHERE ID_FT ' +
        '= :ID_FT INTO :C_PRESCRIPCIO;'
      ''
      '      IF (C_PRESCRIPCIO IS NOT NULL)'
      '      THEN'
      
        '            /* Modifiquem la prescripci'#243' de l'#39'antibi'#242'tic a FT_Pr' +
        'escripcio */'
      '            UPDATE FT_PRESCRIPCIO'
      '            SET    DOSI = :DOSI,'
      '                   C_UM = :C_UM,'
      '                   C_PERIODICITAT = :C_PERIODICITAT,'
      '                   C_SEQUENCIA = :C_SEQUENCIA,'
      '                   C_VIA = :C_VIA,'
      '                   DATA_INICI = :DATA_INICI,'
      '                   DATA_SUSPENSIO = :DATA_SUSP,'
      '                   DATA = :DATA,'
      '                   C_USUARI = :C_METGE'
      '            WHERE C_PRESCRIPCIO = :C_PRESCRIPCIO;'
      '            '
      '      SUSPEND;'
      ''
      'END')
    Dic1 = FT_Prescripcio
    Dic1Name = 'FT_Prescripcio'
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
    Left = 472
    Top = 148
  end
  object FT_Facturacio: TDic
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
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_FT_FACTURACIO'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ID dispensaci'#243' FT'
        NombreDB = 'ID_FT'
        Longitud = 20
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C_Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'NHC'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data dispensaci'#243
        NombreDB = 'Data'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi Producte'
        NombreDB = 'C_Prod'
        Longitud = 10
        Consulta = 'prod'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus producte facturable'
        NombreDB = 'C_Tipus'
        Longitud = 3
        Consulta = 'tipusprod'
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'F, FP, S'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Quantitat'
        NombreDB = 'Quantitat'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus moviment'
        NombreDB = 'T_Mov'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I, C'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
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
        Nombre = 'tract'
        NombreDB = 'tract'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
          'NHC')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
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
          'Codi Producte')
        Tipo = tiForaneo
        ForaneoDic = FT_Producte
        ForaneoCampos.Strings = (
          'Producte')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'id_ft'
        NombreDB = 'id_ft'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID dispensaci'#243' FT')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tract'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'C_Tractament')
        CopiarOrigen.Strings = (
          'C_Tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end
      item
        Nombre = 'hist'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'NHC')
        CopiarOrigen.Strings = (
          'NHC')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'prod'
        Master = FT_Producte
        BuscaOrigen.Strings = (
          'Codi Producte')
        CopiarOrigen.Strings = (
          'Codi Producte')
        CopiarMaster.Strings = (
          'Producte')
        BuscaMaster.Strings = (
          'Producte')
      end
      item
        Nombre = 'tipusprod'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Tipus producte facturable')
        CopiarOrigen.Strings = (
          'Tipus producte facturable')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'FT.TIPUSPROD'#39
      end>
    Nombre = 'FT Facturaci'#243
    NombreTabla = 'FT_Facturacio'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'ID dispensaci'#243' FT'
      'C_Tractament'
      'NHC'
      'Data dispensaci'#243
      'Codi Producte'
      'Tipus producte facturable'
      'Quantitat'
      'Tipus moviment')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 608
    Top = 288
  end
  object FT_Facturacio_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_FT_FACTURACIO, ' +
        '1);'
      '   END'
      'END')
    Dic1 = FT_Facturacio
    Dic1Name = 'FT_Facturacio'
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
    Left = 693
    Top = 288
  end
  object P_FT_Facturacio_Ins: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Ins'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  ID_FT         INTEGER,'
      '  NHC           INTEGER,'
      '  C_TRACTAMENT  INTEGER,'
      '  C_PROD        VARCHAR(10),'
      '  C_TIPUS       VARCHAR(2),'
      '  N_PROD        VARCHAR(255),'
      '  DATA_DISP     DATE,'
      '  QUANTITAT     INTEGER,'
      '  T_MOV         CHAR(1)     /* I=insert, C=cancel'#183'laci'#243' */'
      ')'
      'RETURNS'
      '('
      '  ID_FACTURACIO INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE COMPTA INTEGER;'
      'BEGIN'
      ''
      
        '      SELECT COUNT(*) FROM FT_PRODUCTE WHERE C_PROD = :C_PROD IN' +
        'TO :COMPTA;'
      '      '
      '      IF (COMPTA = 0)'
      '      THEN  INSERT INTO FT_PRODUCTE (C_PROD, N_PROD)'
      '            VALUES (:C_PROD, :N_PROD);'
      '      ELSE  UPDATE FT_PRODUCTE'
      '            SET N_PROD = :N_PROD'
      '            WHERE C_PROD = :C_PROD;'
      ''
      '      ID_FACTURACIO = GEN_ID(G_FT_FACTURACIO, 1);'
      '      '
      
        '      INSERT INTO FT_FACTURACIO (ID, ID_FT, C_TRACTAMENT, C_HIST' +
        'ORIA, DATA, C_PROD, C_TIPUS, QUANTITAT, T_MOV)'
      
        '      VALUES (:ID_FACTURACIO, :ID_FT, :C_TRACTAMENT, :NHC, :DATA' +
        '_DISP, :C_PROD, :C_TIPUS, :QUANTITAT, :T_MOV);'
      '      '
      '      suspend;'
      ''
      'END'
      ''
      ''
      '')
    Dic1 = FT_Facturacio
    Dic1Name = 'FT_Facturacio'
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
    Left = 568
    Top = 148
  end
  object P_USR_Inicialitza_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inicialitza_FT'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  ID INTEGER,'
      '  CODI VARCHAR(5),'
      '  NOMSENCER VARCHAR(100)'
      ')'
      'AS'
      'BEGIN'
      '      '
      '      FOR SELECT distinct M.ID, M.CODI, M.NOMSENCER'
      '          FROM METGES M'
      
        '          JOIN V_DRETS_USUARI d ON D.C_USUARI = M.CODI AND (D.C_' +
        'DRET = '#39'G252'#39' OR D.C_DRET = '#39'M319'#39')'
      '          WHERE M.BAIXA = '#39'N'#39
      '          AND M.EMAIL IS NOT NULL'
      
        '          AND M.CODI NOT IN (SELECT D1.C_USUARI FROM DRETSMETGES' +
        ' D1 WHERE D1.C_DRET = '#39'M999'#39')'
      '          INTO :ID, :CODI, :NOMSENCER'
      '      DO BEGIN'
      '            IF (EXECUTA = '#39'S'#39')'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'METGES'#39', :I' +
        'D, '#39'USR'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '                  '
      '            SUSPEND;'
      '      END;'
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
    Left = 386
    Top = 16
  end
  object P_Tract_Inicialitza_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inicialitza_FT'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_PRESTACIO  VARCHAR(4),'
      '  C_COORDINADOR VARCHAR(5),'
      '  DATA_INGRES DATE,'
      '  DATA_ALTA DATE,'
      '  C_MOTIU SMALLINT'
      ')'
      'AS'
      'BEGIN'
      '      '
      '      /* INICIALITZACI'#211' D'#39'EPISODIS A FARMATOOLS */'
      
        '      /* Enviem els tractaments actius amb prestacions enviables' +
        ' a Farmatools (P252) */'
      
        '      /* Excloem els processos de DPE (8888) perqu'#232' n'#39'hi ha molt' +
        's que estan obsolets i ja els aniran creant quan vagin venint a ' +
        'buscar MHDA o Material */'
      
        '      /* Els 8888 d'#39'ingressos actius s'#237' que els enviem, amb l'#39'al' +
        'tra procedure */'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_PRESTACIO, T.C_COORDINADOR,' +
        ' T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   DRETSPRESTA D ON D.C_PRESTACIO = T.C_PRESTACIO ' +
        'AND D.C_DRET = '#39'P252'#39
      '          WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '          AND    T.C_PRESTACIO <> '#39'8888'#39
      
        '          INTO  :C_TRACTAMENT, :C_PRESTACIO, :C_COORDINADOR, :DA' +
        'TA_INGRES, :DATA_ALTA, :C_MOTIU'
      '      DO BEGIN'
      '            IF (EXECUTA = '#39'S'#39')'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS' +
        #39', :C_TRACTAMENT, '#39'ADT_A01'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '                        '
      '            SUSPEND;'
      '      END;'
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
    Left = 506
    Top = 16
  end
  object insProd: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'insert into FT_PRODUCTE (C_Prod, N_Prod)'
      'values (:c_prod, :n_prod)')
    Left = 196
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'c_prod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'n_prod'
        ParamType = ptInput
      end>
  end
  object updProd: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'update FT_PRODUCTE'
      'set       N_Prod = :n_prod'
      'where  C_Prod = :c_prod')
    Left = 244
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'n_prod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_prod'
        ParamType = ptInput
      end>
  end
  object P_InfDades_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FT'
    ForceNombreDB = False
    Body.Strings = (
      '(ID INTEGER, tipus varchar(10) )'
      'RETURNS ('
      '      NHC           INTEGER,'
      '      C_PROVA       VARCHAR(10),'
      '      N_PROVA       VARCHAR(254),'
      '      RESULTAT      FLOAT,'
      '      DATA_RESULTAT DATE'
      ')'
      'AS'
      'BEGIN'
      '      SELECT DATA_VALOR, VALOR, t.C_HISTORIA'
      '      FROM INFERDADES i'
      '      LEFT JOIN TRACTAMENTS t ON t.C_TRACTAMENT = i.C_TRACTAMENT'
      '      WHERE ID = :id'
      '      into :DATA_RESULTAT, :RESULTAT, :nhc;'
      '      c_prova = tipus;'
      '      n_prova = tipus;'
      '      SUSPEND;'
      'END'
      ''
      '')
    Dic1 = wDataInfermeria.InferDades
    Dic1Name = 'Analit'
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
    Left = 274
    Top = 72
  end
  object P_Tract_CreaDPETIR_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CreaDPETIR_FT'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  C_PRESTACIO  VARCHAR(4),'
      '  C_COORDINADOR VARCHAR(5),'
      '  DATA_INGRES DATE,'
      '  DATA_ALTA DATE,'
      '  C_MOTIU SMALLINT,'
      '  C_CENTREFAC VARCHAR(2),'
      '  C_CLIENT VARCHAR(3),'
      '  C_DELEGACIO VARCHAR(4),'
      '  NEW_TRACTAMENT INTEGER,'
      '  NEW_PRESTACIO VARCHAR(4),'
      '  NEW_ESTATFAC INTEGER,'
      '  NEW_MOTIU INTEGER'
      ')'
      'AS'
      'BEGIN'
      ''
      '      NEW_MOTIU = 50;'
      '      NEW_PRESTACIO = '#39'8888'#39';'
      '      NEW_ESTATFAC = 50;'
      ''
      
        '      /* GENERACI'#211' DE TRACTAMENTS 8888 PER A INGRESSOS TIR ACTIU' +
        'S */'
      
        '      /* Creem tractaments 8888 amb motiu 50 (dispensaci'#243' de mat' +
        'erial d'#39'incontin'#232'ncia) per als pacients ingressats actualment pe' +
        'r TIR */'
      '      /* Mateix coordinador i finan'#231'ament que l'#39'ingr'#233's */'
      
        '      /* S'#39'envien a Farmatools autom'#224'ticament a causa del trigge' +
        'r d'#39'insert de tractaments */'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'C_COORDINADOR, T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU, C_CENTREFA' +
        'C, C_CLIENT, C_DELEGACIO'
      '          FROM   TRACTAMENTS T'
      '          WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '          AND    T.C_PRESTACIO = '#39'1004'#39
      '          AND    T.C_MOTIU = 101'
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :C_COO' +
        'RDINADOR, :DATA_INGRES, :DATA_ALTA, :C_MOTIU, :C_CENTREFAC, :C_C' +
        'LIENT, :C_DELEGACIO'
      '      DO BEGIN'
      '            IF (EXECUTA = '#39'S'#39') THEN'
      '            BEGIN'
      '                  NEW_TRACTAMENT = GEN_ID(CONTATRACTAMENT, 1);'
      '                  '
      
        '                  INSERT INTO TRACTAMENTS (C_TRACTAMENT, C_HISTO' +
        'RIA, C_COORDINADOR, C_PRESTACIO, C_MOTIU, DATA_INGRES, C_CENTREF' +
        'AC, C_CLIENT, C_DELEGACIO, C_ESTATFAC)'
      
        '                  VALUES (:NEW_TRACTAMENT, :C_HISTORIA, :C_COORD' +
        'INADOR, :NEW_PRESTACIO, :NEW_MOTIU, :DATA_INGRES, :C_CENTREFAC, ' +
        ':C_CLIENT, :C_DELEGACIO, :NEW_ESTATFAC);'
      '            END'
      ''
      '            SUSPEND;'
      '      END;'
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
    Left = 634
    Top = 16
  end
  object T_Tract_DPE_FT_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'DPE_FT_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'DECLARE VARIABLE EXISTEIX     INTEGER;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* En afegir un tractament d'#39'hospitalitzaci'#243' per TIR, gene' +
        'rem autom'#224'ticament el tractament de recollida de material d'#39'inco' +
        'ntin'#232'ncia, si no existeix. */'
      '      '
      
        '      IF ((NEW.C_PRESTACIO = '#39'1004'#39') AND (NEW.C_MOTIU = 101)) TH' +
        'EN'
      '      BEGIN'
      
        '            SELECT COUNT(*) FROM TRACTAMENTS WHERE C_HISTORIA = ' +
        'NEW.C_HISTORIA AND C_PRESTACIO = '#39'8888'#39' AND C_MOTIU = 50 AND DAT' +
        'A_ALTA IS NULL INTO :EXISTEIX;'
      '            '
      '            IF (EXISTEIX = 0) THEN'
      '            BEGIN'
      '                  C_TRACTAMENT = GEN_ID(CONTATRACTAMENT, 1);'
      ''
      
        '                  INSERT INTO TRACTAMENTS (C_TRACTAMENT, C_HISTO' +
        'RIA, C_COORDINADOR, C_PRESTACIO, C_MOTIU, DATA_INGRES, C_CENTREF' +
        'AC, C_CLIENT, C_DELEGACIO, C_ESTATFAC)'
      
        '                  VALUES (:C_TRACTAMENT, NEW.C_HISTORIA, NEW.C_C' +
        'OORDINADOR, '#39'8888'#39', 50, NEW.DATA_INGRES, NEW.C_CENTREFAC, NEW.C_' +
        'CLIENT, NEW.C_DELEGACIO, 50);'
      '            END'
      '      END'
      '   END'
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
    Accion2 = taINSERT
    Left = 757
    Top = 16
  end
  object T_Tract_DPE_FT_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'DPE_FT_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'DECLARE VARIABLE EXISTEIX     INTEGER;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Si un tractament passa a ser hospitalitzaci'#243' per TIR, g' +
        'enerem autom'#224'ticament el tractament de recollida de material d'#39'i' +
        'ncontin'#232'ncia, si no existia */'
      ''
      '      IF  ( (NEW.C_PRESTACIO = '#39'1004'#39')'
      '      AND   (NEW.C_MOTIU = 101)'
      
        '      AND  ((OLD.C_PRESTACIO <> '#39'1004'#39') OR (OLD.C_MOTIU <> 101))' +
        ' ) THEN'
      '      BEGIN'
      
        '            SELECT COUNT(*) FROM TRACTAMENTS WHERE C_HISTORIA = ' +
        'NEW.C_HISTORIA AND C_PRESTACIO = '#39'8888'#39' AND C_MOTIU = 50 AND DAT' +
        'A_ALTA IS NULL INTO :EXISTEIX;'
      ''
      '            IF (EXISTEIX = 0) THEN'
      '            BEGIN'
      '                  C_TRACTAMENT = GEN_ID(CONTATRACTAMENT, 1);'
      ''
      
        '                  INSERT INTO TRACTAMENTS (C_TRACTAMENT, C_HISTO' +
        'RIA, C_COORDINADOR, C_PRESTACIO, C_MOTIU, DATA_INGRES, C_CENTREF' +
        'AC, C_CLIENT, C_DELEGACIO, C_ESTATFAC)'
      
        '                  VALUES (:C_TRACTAMENT, NEW.C_HISTORIA, NEW.C_C' +
        'OORDINADOR, '#39'8888'#39', 50, NEW.DATA_INGRES, NEW.C_CENTREFAC, NEW.C_' +
        'CLIENT, NEW.C_DELEGACIO, 50);'
      '            END'
      '      END'
      '   END'
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
    Left = 869
    Top = 16
  end
  object P_Unitats_Cancel_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Cancel_FT'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  NUM_HIST INTEGER,'
      '  UA SMALLINT,'
      '  UM SMALLINT'
      ')'
      'AS'
      'BEGIN'
      '      '
      '      /* INICIALITZACI'#211' UA i UM A FARMATOOLS */'
      
        '      /* Enviem els pacients amb tractament actius a FT (P252) *' +
        '/'
      
        '      /* Aix'#242' exclou prestacions 8888 excepte les de material d'#39 +
        'incontin'#232'ncia, que s'#237' que s'#39'han enviat a FT */'
      '      FOR SELECT DISTINCT F.NUM_HIST, F.C_UNITATMEDICA, F.UNITAT'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   DRETSPRESTA D ON D.C_PRESTACIO = T.C_PRESTACIO ' +
        'AND D.C_DRET = '#39'P252'#39
      '          JOIN   FILIACIO F ON F.NUM_HIST = T.C_HISTORIA'
      '          WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '          AND   (T.C_PRESTACIO <> '#39'8888'#39' OR T.C_MOTIU = 50)'
      '          INTO  :NUM_HIST, :UM, :UA'
      '      DO BEGIN'
      '            IF (EXECUTA = '#39'S'#39') THEN'
      '            BEGIN'
      '                  /* Cancel'#183'lem UA i UM anteriors */'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', ' +
        'NUM_HIST, '#39'ORU'#39', '#39'C'#39', '#39'UA'#39', '#39'M'#39');'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', ' +
        'NUM_HIST, '#39'ORU'#39', '#39'C'#39', '#39'UM'#39', '#39'M'#39');'
      '            END'
      '            '
      '            SUSPEND;'
      '      END'
      'END')
    Dic1 = wDataCodis.UnitatM
    Dic1Name = 'wDataCodis.UnitatM'
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
    Left = 386
    Top = 72
  end
  object P_Unitats_Init_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Init_FT'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '  DECLARE VARIABLE NUM_HIST INTEGER;'
      '  DECLARE VARIABLE UA SMALLINT;'
      '  DECLARE VARIABLE UM SMALLINT;'
      'BEGIN'
      '      '
      '      /* INICIALITZACI'#211' UA i UM A FARMATOOLS */'
      
        '      /* Enviem els pacients amb tractament actius a FT (P252) *' +
        '/'
      
        '      /* Aix'#242' exclou prestacions 8888 excepte les de material d'#39 +
        'incontin'#232'ncia, que s'#237' que s'#39'han enviat a FT */'
      '      FOR SELECT DISTINCT F.NUM_HIST, F.C_UNITATMEDICA, F.UNITAT'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   DRETSPRESTA D ON D.C_PRESTACIO = T.C_PRESTACIO ' +
        'AND D.C_DRET = '#39'P252'#39
      '          JOIN   FILIACIO F ON F.NUM_HIST = T.C_HISTORIA'
      '          WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '          AND   (T.C_PRESTACIO <> '#39'8888'#39' OR T.C_MOTIU = 50)'
      '          INTO  :NUM_HIST, :UM, :UA'
      '      DO BEGIN'
      '            /* Enviem UA i UM actuals si no s'#243'n 0 */'
      '            IF (UA <> 0)'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', ' +
        'NUM_HIST, '#39'ORU'#39', '#39'I'#39', '#39'UA'#39', '#39'M'#39');'
      ''
      '            IF (UM <> 0)'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', ' +
        'NUM_HIST, '#39'ORU'#39', '#39'I'#39', '#39'UM'#39', '#39'M'#39');'
      '      END'
      'END')
    Dic1 = wDataCodis.UnitatM
    Dic1Name = 'wDataCodis.UnitatM'
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
    Left = 490
    Top = 72
  end
  object P_Canvis_OM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Canvis'
    ForceNombreDB = False
    Body.Strings = (
      '(COORD VARCHAR(5))'
      'RETURNS ('
      '  ESTAT CHAR(1),'
      '  DATA_PAUTAT DATE,'
      '  DATA_SUSPENSIO DATE,'
      '  NHC INTEGER,'
      '  NOMCOMPLET VARCHAR(80),'
      '  MEDICAMENT VARCHAR(100),'
      '  PRODUCTE VARCHAR(100),'
      '  DOSI FLOAT,'
      '  UNITAT_MESURA VARCHAR(4),'
      '  VIA VARCHAR(3),'
      '  DATA_INICI DATE,'
      '  FREQUENCIA VARCHAR(4),'
      '  HORA_INICI SMALLINT,'
      '  DURADA INTEGER,'
      '  OBSERVACIONS VARCHAR(50)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_OM INTEGER;'
      '      DECLARE VARIABLE COMPTA INTEGER;'
      'BEGIN'
      '      '
      ''
      '  DATA_SUSPENSIO = NULL;'
      '  '
      
        '  FOR SELECT O.C_ESTAT, O.DATA_PAUTAT, O.C_HISTORIA, F.NOMCOMPLE' +
        'T, COALESCE(G.N_GTN, O.N_MEDICAMENT_FG), P.N_PROD,'
      
        '             O.DOSI, O.UNITAT_MESURA, O.C_VIA, O.DATA_INICI, O.C' +
        '_FREQUENCIA, O.HORA_INICI, O.DURADA, O.OBSERVACIONS'
      '      FROM   ORDRESMEDIQUES O'
      '      JOIN   TRACTAMENTS T ON T.C_TRACTAMENT = O.C_TRACTAMENT'
      '      JOIN   METGES M ON M.CODI = T.C_COORDINADOR'
      '      JOIN   FILIACIO F ON F.NUM_HIST = T.C_HISTORIA'
      '      LEFT   OUTER JOIN GTN G ON G.GTN = O.GTN'
      '      LEFT   OUTER JOIN PRODUCTES P ON P.C_PROD = O.C_PRODUCTE'
      '      WHERE  O.C_ESTAT = '#39'V'#39
      '      AND    T.C_COORDINADOR = :COORD'
      '      AND    O.DATA_PAUTAT BETWEEN '#39'29.11.2024'#39' AND '#39'06.12.2024'#39
      '      ORDER  BY O.C_HISTORIA, O.DATA_PAUTAT'
      
        '      INTO  :ESTAT, :DATA_PAUTAT, :NHC, :NOMCOMPLET, :MEDICAMENT' +
        ', :PRODUCTE, :DOSI, :UNITAT_MESURA, :VIA, :DATA_INICI, :FREQUENC' +
        'IA, :HORA_INICI, :DURADA, :OBSERVACIONS'
      '  DO BEGIN'
      '      SUSPEND;'
      '  END;'
      ''
      ''
      '  /* Caducades i suspeses no per modificaci'#243' ni per alta */'
      
        '  FOR SELECT O.C_ORDREMEDICA, O.C_ESTAT, O.DATA_SUSPENSIO, O.DAT' +
        'A_PAUTAT, O.C_HISTORIA, F.NOMCOMPLET, COALESCE(G.N_GTN, O.N_MEDI' +
        'CAMENT_FG), P.N_PROD,'
      
        '             O.DOSI, O.UNITAT_MESURA, O.C_VIA, O.DATA_INICI, O.C' +
        '_FREQUENCIA, O.HORA_INICI, O.DURADA, O.OBSERVACIONS'
      '      FROM   ORDRESMEDIQUES O'
      '      JOIN   TRACTAMENTS T ON O.C_TRACTAMENT = T.C_TRACTAMENT'
      '      JOIN   METGES M ON T.C_COORDINADOR = M.CODI'
      '      JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      LEFT   OUTER JOIN GTN G ON G.GTN = O.GTN'
      '      LEFT   OUTER JOIN PRODUCTES P ON P.C_PROD = O.C_PRODUCTE'
      '      WHERE (O.C_ESTAT = '#39'S'#39' OR O.C_ESTAT = '#39'C'#39')'
      '      AND    T.C_COORDINADOR = :COORD'
      '      AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= '#39'09.12.2024'#39')'
      '      AND    O.C_FREQUENCIA <> '#39'DU'#39
      
        '      AND    O.DATA_SUSPENSIO BETWEEN '#39'29.11.2024'#39' AND '#39'06.12.20' +
        '24'#39
      '      ORDER  BY O.C_HISTORIA, O.DATA_SUSPENSIO'
      
        '      INTO  :C_OM, :ESTAT, :DATA_SUSPENSIO, :DATA_PAUTAT, :NHC, ' +
        ':NOMCOMPLET, :MEDICAMENT, :PRODUCTE, :DOSI, :UNITAT_MESURA, :VIA' +
        ', :DATA_INICI, :FREQUENCIA, :HORA_INICI, :DURADA, :OBSERVACIONS'
      '  DO BEGIN'
      '  '
      '      /* Suspeses */'
      '      IF (ESTAT = '#39'S'#39') THEN'
      '      BEGIN'
      
        '            /* Si alguna OM del pacient, t'#233' la OM en curs com a ' +
        'OM_Suspsea, vol dir que s'#39'ha susp'#232's per modificaci'#243' */'
      
        '            SELECT COUNT(*) FROM ORDRESMEDIQUES WHERE C_HISTORIA' +
        ' = :NHC AND OM_SUSPESA = :C_OM INTO :COMPTA;'
      '      END'
      '      ELSE COMPTA = 0;'
      '      '
      '      IF (COMPTA = 0) THEN SUSPEND;'
      '  END;'
      'END')
    Dic1 = wDataOMdics.OrdresMediques
    Dic1Name = 'wDataOMdics.OrdresMediques'
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
    Left = 872
    Top = 148
  end
  object P_Tract_CreaDPEBCF_FT_Eliminada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CreaDPEBCF_FT'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  NEW_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  NEW_PRESTACIO VARCHAR(4),'
      '  C_COORDINADOR VARCHAR(5),'
      '  DATA_INGRES DATE,'
      '  NEW_MOTIU INTEGER,'
      '  C_CENTREFAC VARCHAR(2),'
      '  C_CLIENT VARCHAR(3),'
      '  C_DELEGACIO VARCHAR(4),'
      '  NEW_ESTATFAC INTEGER'
      ')'
      'AS'
      'BEGIN'
      ''
      '      NEW_MOTIU = 55;'
      '      NEW_PRESTACIO = '#39'8888'#39';'
      '      NEW_ESTATFAC = 50;'
      ''
      
        '      /* GENERACI'#211' DE TRACTAMENTS 8888 PER A PACIENTS QUE V'#201'NEN ' +
        'A RECARREGAR LA BOMBA DE BACLOF'#200'N */'
      
        '      /* Creem tractaments 8888 amb motiu 55 (tractament de l'#39'es' +
        'pasticitat) per als pacients que tenen rec'#224'rrega de baclof'#232'n pre' +
        'vista */'
      
        '      /* Mateix coordinador i finan'#231'ament que el darrer tractame' +
        'nt */'
      
        '      /* S'#39'envien a Farmatools autom'#224'ticament a causa del trigge' +
        'r d'#39'insert de tractaments */'
      
        '      FOR SELECT HISTORIA, C_COORD, VISITA, CENTRE_FAC, CLIENT, ' +
        'DELEGACIO'
      
        '          FROM P_BCFRECARREGUES_ListRecarregues ('#39'10.12.2024'#39', '#39 +
        '31.12.2030'#39')'
      '          WHERE VISITA BETWEEN '#39'10.12.2024'#39' AND '#39'31.12.2030'#39
      
        '          INTO  :C_HISTORIA, :C_COORDINADOR, :DATA_INGRES, :C_CE' +
        'NTREFAC, :C_CLIENT, :C_DELEGACIO'
      '      DO BEGIN'
      '            IF (EXECUTA = '#39'S'#39') THEN'
      '            BEGIN'
      '                  NEW_TRACTAMENT = GEN_ID(CONTATRACTAMENT, 1);'
      '                  '
      
        '                  INSERT INTO TRACTAMENTS (C_TRACTAMENT, C_HISTO' +
        'RIA, C_COORDINADOR, C_PRESTACIO, C_MOTIU, DATA_INGRES, C_CENTREF' +
        'AC, C_CLIENT, C_DELEGACIO, C_ESTATFAC)'
      
        '                  VALUES (:NEW_TRACTAMENT, :C_HISTORIA, :C_COORD' +
        'INADOR, :NEW_PRESTACIO, :NEW_MOTIU, :DATA_INGRES, :C_CENTREFAC, ' +
        ':C_CLIENT, :C_DELEGACIO, :NEW_ESTATFAC);'
      '            END'
      ''
      '            SUSPEND;'
      '      END;'
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
    Left = 634
    Top = 72
  end
  object FT_FormaFar: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi'
        NombreDB = 'C_FormaFar'
        Longitud = 6
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' catal'#224
        NombreDB = 'N_FormaFar_CA'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' castell'#224
        NombreDB = 'N_FormaFar_ES'
        Longitud = 255
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
          'Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'FT Forma Farmac'#232'utica'
    NombreTabla = 'FT_FormaFar'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Descripci'#243' catal'#224
      'Descripci'#243' castell'#224)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 322
    Top = 344
  end
  object FT_Facturacio_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      /* Si cancel'#183'len una dispensaci'#243' facturable, avisem a Fact' +
        'uraci'#243' */'
      '      IF (NEW.T_MOV = '#39'C'#39') THEN'
      '      BEGIN'
      
        '            INSERT INTO AVISOS_CORREU (ID_AVIS, DATA_GENERAT, AS' +
        'SUMPTE, COS)'
      
        '            VALUES (59, "NOW", '#39'DEVOLUCI'#211' FARM'#192'CIA -> Facturaci'#243 +
        #39','
      
        '                    '#39'S'#39#39'ha fet una devoluci'#243' d'#39#39'una dispensaci'#243' ' +
        'de Farm'#224'cia facturable:'#39' || F_NLine() ||'
      '                    '#39'NHC: '#39' || NEW.C_HISTORIA || F_NLine() ||'
      
        '                    '#39'Episodi: '#39' || NEW.C_TRACTAMENT || F_NLine()' +
        ' ||'
      '                    '#39'Producte: '#39' || NEW.C_PROD || F_NLine() ||'
      
        '                    '#39'Quantitat: '#39' || NEW.QUANTITAT  || F_NLine()' +
        ' ||'
      
        '                    '#39'Data devoluci'#243': '#39' || F_DateToSTR(NEW.DATA))' +
        ';'
      '      END'
      '      '
      '      '
      '      /* Nou registre per facturar */'
      '      IF (NEW.T_MOV = '#39'I'#39') THEN'
      '      BEGIN'
      
        '            SELECT C_PRESTACIO FROM TRACTAMENTS WHERE C_TRACTAME' +
        'NT = NEW.C_TRACTAMENT INTO :C_PRESTACIO;'
      ''
      
        '            /* Si est'#224' associat a ingr'#233's, vol dir que '#233's medicac' +
        'i'#243' d'#39'alt cost administrada a pacient privat ingressat */'
      '            IF (C_PRESTACIO = '#39'1004'#39') THEN'
      '            BEGIN'
      
        '                  /* Avisem a Facturaci'#243' perqu'#232' informin/autorit' +
        'zin */'
      
        '                  INSERT INTO AVISOS_CORREU (ID_AVIS, DATA_GENER' +
        'AT, ASSUMPTE, COS)'
      
        '                  VALUES (60, "NOW", '#39'FACTURACI'#211' MEDICACI'#211' PACIE' +
        'NT PRIVAT'#39','
      
        '                          '#39'S'#39#39'ha administrat un medicament d'#39#39'al' +
        't cost a un pacient privat ingressat:'#39' || F_NLine() ||'
      
        '                          '#39'NHC: '#39' || NEW.C_HISTORIA || F_NLine()' +
        ' ||'
      
        '                          '#39'Episodi: '#39' || NEW.C_TRACTAMENT || F_N' +
        'Line() ||'
      
        '                          '#39'Producte: '#39' || NEW.C_PROD || F_NLine(' +
        ') ||'
      
        '                          '#39'Quantitat: '#39' || NEW.QUANTITAT  || F_N' +
        'Line() ||'
      
        '                          '#39'Data administraci'#243': '#39' || F_DateToSTR(' +
        'NEW.DATA));'
      '            END'
      '            '
      '      END'
      '   END'
      'END')
    Dic1 = FT_Facturacio
    Dic1Name = 'FT_Facturacio'
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
    Left = 785
    Top = 288
  end
  object P_PropostaFarma_FT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PropostaFarma_FT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_HISTORIA INTEGER,'
      '  ACTIVA CHAR(1)'
      ')'
      'RETURNS ('
      '  RESPOSTA VARCHAR(100)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_COORD VARCHAR(5);'
      '  DECLARE VARIABLE C_TRACT INTEGER;'
      'BEGIN'
      ''
      '      IF (ACTIVA = "S") THEN'
      '      BEGIN'
      '            SELECT C_COORDINADOR, C_TRACTAMENT'
      '            FROM   TRACTAMENTS'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    C_PRESTACIO = "1004"'
      '            AND   (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY")'
      '            INTO  :C_COORD, :C_TRACT;'
      '            '
      
        '            INSERT INTO ALARMA (C_TIPUSALARMA, DESCRIPCIO, C_TRA' +
        'CTAMENT, C_HISTORIA, C_USUARI)'
      
        '            VALUES (1, "Proposta de farm'#224'cia activa", :C_TRACT, ' +
        ':C_HISTORIA, :C_COORD);'
      '      END;'
      '      '
      '      ELSE BEGIN'
      '            UPDATE ALARMA'
      '            SET    DATA_TANCAMENT = "NOW",'
      
        '                   DESCRIPCIO = '#39'Proposta de farm'#224'cia desactivad' +
        'a'#39
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    C_TIPUSALARMA = 1'
      '            AND    DATA_TANCAMENT IS NULL;'
      '      END'
      ''
      '      RESPOSTA = '#39'OK'#39';'
      '      SUSPEND;'
      'END')
    Dic1 = wDataCurs.Historia
    Dic1Name = 'Alarma'
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
    Left = 224
    Top = 204
  end
  object FT_Contingencia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_FT_CONTINGENCIA'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Historia'
        NombreDB = 'C_HISTORIA'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Medicament'
        NombreDB = 'MEDICAMENT'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dosi'
        NombreDB = 'DOSI'
        Longitud = 4
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Float
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Consulta'
        NombreDB = 'DATA_CONSULTA'
        Longitud = 8
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Observacions'
        NombreDB = 'OBSERVACIONS'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Um'
        NombreDB = 'C_UM'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N Via'
        NombreDB = 'N_VIA'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N Freq'
        NombreDB = 'N_FREQ'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Ft Contingencia Hist'
        NombreDB = 'FT_CONTINGENCIA_HIST'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Historia')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Ft Contingencia Pk'
        NombreDB = 'FT_CONTINGENCIA_PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end
      item
        Nombre = 'Ft Contingencia Tract'
        NombreDB = 'FT_CONTINGENCIA_TRACT'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Ft Contingencia'
    NombreTabla = 'FT_CONTINGENCIA'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'C Historia'
      'C Tractament')
    IndiceVer = 'Ft Contingencia Hist'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 608
    Top = 344
  end
  object AnotaContingencia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'anota'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DATA_CONSULTA DATE,'
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  MEDICAMENT VARCHAR(255) CHARACTER SET NONE,'
      '  DOSI FLOAT,'
      '  C_UM VARCHAR(50) CHARACTER SET NONE,'
      '  N_VIA VARCHAR(50) CHARACTER SET NONE,'
      '  OBS VARCHAR(500) CHARACTER SET NONE,'
      '  OBS_SP VARCHAR(500) CHARACTER SET NONE,'
      '  SP VARCHAR(20) CHARACTER SET NONE,'
      '  C_PERIO VARCHAR(20) CHARACTER SET NONE,'
      '  N_PERIO VARCHAR(200) CHARACTER SET NONE,'
      '  C_SEQUE VARCHAR(20) CHARACTER SET NONE,'
      '  N_SEQUE VARCHAR(200) CHARACTER SET NONE)'
      'RETURNS('
      '  ID INTEGER)'
      'AS'
      '      declare variable n_freq varchar(255);'
      '      declare variable observacions varchar(255);'
      '      declare variable n_sp varchar(100);'
      'begin'
      ''
      '      if (data_consulta is null)'
      '      then data_consulta = '#39'now'#39';'
      ''
      ''
      '      observacions = '#39#39';'
      '      if   (obs_sp = '#39#39')'
      '      then  observacions = obs;'
      '      else if (obs = '#39#39')'
      '            then observacions = obs_sp;'
      '            else observacions = obs_sp || '#39', '#39' || obs;'
      ''
      '      if (observacions <> '#39#39')'
      '      then observacions = observacions || '#39'.'#39';'
      ''
      ''
      '      if (sp='#39's'#39') then'
      '      begin'
      '           if (lower(c_perio) = '#39'si cal'#39')'
      '           then begin'
      '             c_perio = '#39#39';'
      '             n_perio = '#39#39';'
      '           end'
      '           if (lower(c_seque) = '#39'si cal'#39')'
      '           then begin'
      '             c_seque = '#39#39';'
      '             n_seque = '#39#39';'
      '           end'
      '      end'
      ''
      ''
      '     if (c_perio = '#39'irg'#39')'
      '     then c_seque = '#39#39';'
      ''
      '     if (n_perio = '#39#39')'
      '     then n_freq = n_seque;'
      '     else  if (n_seque = '#39#39')'
      '           then n_freq = n_perio;'
      '           else n_freq = n_perio || '#39', '#39' || n_seque;'
      ''
      ''
      '     if (n_freq <> '#39#39')'
      '     then n_freq = n_freq || '#39'. '#39';'
      ''
      '     if (sp = '#39's'#39')'
      '     then begin'
      '            sp = '#39'sp '#39';'
      '            n_sp = '#39'si precisa. '#39';'
      '     end'
      '     else begin'
      '            sp = '#39#39';'
      '            n_sp = '#39#39';'
      '     end'
      ''
      '     id = gen_id(HY$G_FT_CONTINGENCIA, 1);'
      ''
      ''
      '     insert into ft_contingencia'
      '     ('
      '      id,'
      '      c_historia,'
      '      c_tractament,'
      '      medicament,'
      '      dosi,'
      '      c_um,'
      '      n_via,'
      '      n_freq,'
      '      observacions,'
      '      data_consulta'
      '     )'
      '     values'
      '     ('
      '      :id,'
      '      :c_historia,'
      '      :c_tractament,'
      '      :medicament,'
      '      :dosi,'
      '      :c_um,'
      '      :n_via,'
      '      :n_freq,'
      '      :observacions,'
      '      :data_consulta'
      '     );'
      ''
      '      SUSPEND;'
      ''
      'end')
    Dic1 = FT_Contingencia
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
    Left = 704
    Top = 344
  end
end
