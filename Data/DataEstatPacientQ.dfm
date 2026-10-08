object wDataEstatPacientQ: TwDataEstatPacientQ
  OldCreateOrder = False
  Left = 794
  Top = 337
  Height = 168
  Width = 381
  object P_ECB: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EstatPacient'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA       INTEGER,'
      '      GRUP             CHAR(2)'
      ')'
      'RETURNS ('
      '      ITEM     VARCHAR(80),'
      
        '      TIPUS    INTEGER,         /* 0-T'#237'tol 1-SubT'#237'tol 2-Detall *' +
        '/'
      '      TEXT     VARCHAR(30000),'
      '      DATA_VALIDACIO DATE,'
      '      ORDRE    INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT  INTEGER;'
      '  DECLARE VARIABLE ESTAT CHAR(1);'
      '  DECLARE VARIABLE TIPUSECB INTEGER;'
      '  DECLARE VARIABLE DATA_DEFINITIU DATE;'
      '  DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      '  DECLARE VARIABLE ECBGRUP INTEGER;'
      '  DECLARE VARIABLE COMPLICACIO INTEGER;'
      '  DECLARE VARIABLE N_ITEM VARCHAR(80);'
      '  DECLARE VARIABLE DATA DATE;'
      '  DECLARE VARIABLE METGE VARCHAR(20);'
      '  DECLARE VARIABLE DATA_R DATE;'
      '  DECLARE VARIABLE METGE_R VARCHAR(20);'
      '  DECLARE VARIABLE C_GRUP VARCHAR(2);'
      '  DECLARE VARIABLE N_GRUP VARCHAR(40);'
      '  DECLARE VARIABLE PROVISIONAL CHAR(1);'
      '  DECLARE VARIABLE C_ITEM INTEGER;'
      'BEGIN'
      '      DATA_VALIDACIO = NULL;'
      '      ORDRE = 2;'
      '      ITEM = '#39'Al.l'#232'rgies i intoler'#224'ncies'#39';'
      '      TIPUS = 2;'
      
        '      SELECT ALERGIES_TOT FROM FILIACIO WHERE NUM_HIST = :C_HIST' +
        'ORIA INTO :TEXT;'
      '      SUSPEND;'
      ''
      ''
      '      SELECT DISTINCT T.C_TRACTAMENT'
      '      FROM TRACTAMENTS T'
      
        '      JOIN ECBCAP E ON T.C_TRACTAMENT = E.C_TRACTAMENT AND T.C_P' +
        'RESTACIO = '#39'1004'#39
      '      WHERE T.C_HISTORIA = :C_HISTORIA'
      '      ORDER BY T.DATA_INGRES DESC'
      '      ROWS 1'
      '      INTO :C_TRACTAMENT;'
      ''
      
        '      SELECT ESTAT, TIPUSECB, DATA_DEFINITIU FROM ECBCAP WHERE C' +
        '_TRACTAMENT = :C_TRACTAMENT INTO :ESTAT, :TIPUSECB, :DATA_DEFINI' +
        'TIU;'
      
        '      SELECT C_PRESTACIO FROM TRACTAMENTS WHERE C_TRACTAMENT = :' +
        'C_TRACTAMENT INTO :C_PRESTACIO;'
      ''
      
        '      /* Si han posat NO PROCEDEIX entrar ECB (ESTAT='#39'N'#39'), no re' +
        'tornem res */'
      '      IF (ESTAT <> '#39'N'#39') THEN'
      '      BEGIN'
      
        '          /* Variable ECBGRUP: Per decidir quins grups llistem; ' +
        'el busquem segons el motiu d'#39'ingr'#233's'
      
        '          /*                   Redu'#239'm els tipus a 3 casos: 2-TIR' +
        ', 5-EASE i 3-altres (revisi'#243', cirurgia, altres ambulatoris...)'
      
        '                              (els tractaments que es passen a a' +
        'qta procedure mai seran EASE)           */'
      ''
      '          IF      (ESTAT = '#39'P'#39') THEN PROVISIONAL = '#39'S'#39';'
      '          ELSE IF (ESTAT = '#39'R'#39') THEN PROVISIONAL = '#39'R'#39';'
      '                                ELSE PROVISIONAL = '#39'N'#39';'
      '          ECBGRUP = NULL;'
      ''
      '          /* 2- TIR */'
      '          SELECT COUNT(*)'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND C_DRE' +
        'T = '#39'X1'#39
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          INTO  :ORDRE;'
      ''
      '          IF (ORDRE > 0) THEN ECBGRUP = 2;  /* TIR */'
      '                         ELSE ECBGRUP = 3;  /* altres */'
      
        '                                            /* Els tractaments E' +
        'ASE no entren en aquesta procedure -- TODO on entren? */'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU'
      '          WHERE T.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND   C_DRET = "X3"'
      
        '          INTO :COMPLICACIO;             /* complicaci'#243' > 0 vol ' +
        'dir que '#233's ingr'#233's per complicaci'#243' */'
      ''
      
        '          ORDRE = 0;    /* compta les anotacions de cada registr' +
        'e que retornem */'
      ''
      
        '          FOR SELECT EI.C_ITEM, EI.N_ITEM, EL.ANOTACIO, EI.C_GRU' +
        'P, G.N_GRUP, EI.TIPUS'
      '          FROM ECBITEMS EI'
      '          LEFT OUTER JOIN ECBLIN EL ON (EI.C_ITEM = EL.C_ITEM'
      
        '                                       AND (EL.PROVISIONAL = :PR' +
        'OVISIONAL OR EL.PROVISIONAL = '#39'*'#39')'
      
        '                                       AND (EL.C_TRACTAMENT = :C' +
        '_TRACTAMENT OR EL.C_TRACTAMENT IS NULL))'
      '          LEFT OUTER JOIN GRUPS G ON EI.C_GRUP = G.C_GRUP'
      ''
      
        '          /* Nom'#233's mostrem els '#237'tems corresponents al Tipus d'#39'EC' +
        'B entrat'
      
        '             per'#242' si encara no tenim el tipus (tipusecb = 0), no' +
        'm'#233's mostrem els t'#237'tols i els '#237'tems plens */'
      
        '          WHERE ((:TIPUSECB <> 0 AND F_MODULO(EI.TIPUSECB, :TIPU' +
        'SECB) = 0)'
      
        '             OR (:TIPUSECB = 0  AND (EL.PROVISIONAL IS NOT NULL ' +
        'OR EI.TIPUS <= 0)))'
      ''
      
        '          /* Nom'#233's mostrem els t'#237'tols, els '#237'tems plens i els que' +
        ' s'#39'han de mostrar buits sempre que no sigui ingr'#233's per complicac' +
        'aci'#243' */'
      
        '          AND    (EI.TIPUS <= 0  OR  EL.PROVISIONAL IS NOT NULL ' +
        ' OR  (EI.MOSTRARSIBUIT = "S" AND :COMPLICACIO = 0))'
      ''
      
        '          /* Nom'#233's mostrem els grups pels quals correspon entrar' +
        ' aquest tipus d'#39'ECB */'
      '          AND    (F_Modulo(G.TIPUSECB, :ECBGRUP) = 0)'
      ''
      '          /* Nom'#233's volem informaci'#243' del MEtge o d'#39'UNfermeria */'
      
        '          AND    (EI.C_GRUP = :GRUP OR :GRUP IS NULL) AND (EI.C_' +
        'GRUP <> '#39'AS'#39')'
      ''
      '          /* No ens calen cap'#231'aleres */'
      '          AND    (EI.TIPUS <> -2)'
      ''
      '          /* Nom'#233's volem certs '#237'tems */'
      '          AND    (NOT EI.C_ITEM IN(3,66,6,71,8,9,68,73))'
      ''
      '          ORDER BY EI.ORDRE'
      '          INTO :C_ITEM, :N_ITEM, :TEXT, :C_GRUP, :N_GRUP, :TIPUS'
      '          DO BEGIN'
      '              IF (TEXT IS NULL) THEN TEXT = '#39#39';'
      ''
      '              IF      (C_ITEM = 2)  THEN N_ITEM = '#39'Antecedents'#39';'
      
        '              ELSE IF (C_ITEM = 4)  THEN N_ITEM = '#39'Malalties pr'#232 +
        'vies'#39';'
      
        '              ELSE IF (C_ITEM = 5)  THEN N_ITEM = '#39'Antecedents q' +
        'uir'#250'rgics'#39';'
      
        '              ELSE IF (C_ITEM = 10) THEN N_ITEM = '#39'Malaltia actu' +
        'al'#39';'
      
        '              ELSE IF (C_ITEM = 11) THEN N_ITEM = '#39'Exploraci'#243' co' +
        'mpleta'#39';'
      ''
      '              /* Posem els t'#237'tols i afegim els textos */'
      ''
      '              /* Ho fem segons el tipus d'#39#237'tem: */'
      
        '              IF ((TIPUS = -1) OR (TIPUS = 0) OR (TIPUS = 1) OR ' +
        '(TIPUS = 3)) THEN ITEM = N_ITEM;'
      ''
      '              ELSE IF (TIPUS = 2) THEN'
      '              BEGIN'
      '                   IF (TEXT <> '#39#39')'
      '                   THEN ITEM = F_LTrim(N_ITEM) || ": ";'
      '                   ELSE ITEM = N_ITEM;'
      '              END;'
      ''
      
        '              /* Ara les al'#183'l'#232'rgies es guardaran a ECBLIN per te' +
        'nir un hist'#242'ric.'
      
        '                 Mostrarem les de l'#39'ECB, per'#242' els antics no en t' +
        'enen, per tant no ensenyarem res */'
      '              ELSE IF (TIPUS = 4) THEN'
      '              BEGIN'
      
        '                  IF (TEXT <> '#39#39') THEN ITEM = F_LTrim(N_ITEM) ||' +
        ' ": ";'
      '              END;'
      ''
      '              IF      (TIPUS = -1) THEN TIPUS = 0; /* T'#205'TOL */'
      
        '              ELSE IF (TIPUS = 0)  THEN TIPUS = 1; /* SUB-T'#205'TOL ' +
        '*/'
      '                                   ELSE TIPUS = 2; /* DETALL */'
      '                                                    '
      
        '              IF (ORDRE = 1) THEN ORDRE = ORDRE + 1; /* Les al'#183'l' +
        #232'rgies tenen l'#39'ordre 2 reservat */'
      ''
      '              ORDRE = ORDRE + 1;'
      ''
      '              SUSPEND;'
      ''
      '          END'
      '          '
      '          ITEM = '#39'Data validaci'#243#39';'
      '          TIPUS = 2;'
      '          TEXT = NULL;'
      '          DATA_VALIDACIO = DATA_DEFINITIU;'
      '          ORDRE = ORDRE + 1;'
      '          SUSPEND;'
      '      END;'
      ''
      'END')
    Dic1 = wDataECBDics.ECBCAP
    Dic2 = wDataECBDics.ECBLIN
    Dic3 = wDataBasics.Filiacio
    Dic1Name = 'wDataECBDics.ECBCAP'
    Dic2Name = 'wDataECBDics.ECBLIN'
    Dic3Name = 'wDataBasics.Filiacio'
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
    Top = 16
  end
  object P_Historia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EstatPacient'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA       INTEGER,'
      '      GRUP             CHAR(2),'
      
        '      QUE              INTEGER    /* 11-Evoluci'#243'; 45-Complicacio' +
        'ns */'
      ')'
      'RETURNS ('
      '      ANOTACIO  VARCHAR(30000),'
      '      DATA      DATE,'
      '      USUARI    VARCHAR(20)'
      ')'
      'AS'
      'BEGIN'
      '    ANOTACIO = NULL;'
      ''
      '    IF (GRUP = '#39'ME'#39') THEN'
      '    BEGIN'
      '        SELECT H.ANOTACIO, H.DATA, M.METGE'
      '        FROM HISTORIA H'
      '        JOIN METGES M ON H.C_USUARI = M.CODI'
      
        '        WHERE H.C_HISTORIA = :C_HISTORIA AND M.C_GRUP IN ("ME","' +
        'RE")'
      '        AND H.QUEES = :QUE'
      '        ORDER BY H.DATA DESC'
      '        ROWS 1'
      '        INTO :ANOTACIO, :DATA, :USUARI;'
      '    END'
      '    ELSE IF (GRUP = '#39'UN'#39') THEN'
      '    BEGIN'
      '        SELECT H.ANOTACIO, H.DATA, M.METGE'
      '        FROM HISTORIA H'
      '        JOIN METGES M ON H.C_USUARI = M.CODI'
      '        WHERE H.C_HISTORIA = :C_HISTORIA AND M.C_GRUP = "UN"'
      '        AND H.QUEES = :QUE'
      '        ORDER BY H.DATA DESC'
      '        ROWS 1'
      '        INTO :ANOTACIO, :DATA, :USUARI;'
      '    END;'
      '    '
      '    IF (ANOTACIO IS NOT NULL) THEN SUSPEND;'
      ''
      'END')
    Dic1 = wDataCurs.Historia
    Dic1Name = 'wDataCurs.Historia'
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
    Left = 116
    Top = 16
  end
  object P_Diagnostics: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EstatPacient'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA       INTEGER,'
      
        '      RETORN           SMALLINT   /* 0- tot junt (un '#250'nic regist' +
        're amb la informaci'#243' a DIAGNOSTICS);'
      
        '                                     1- separat (tants registres' +
        ' com DIAGN'#210'STICS informats al camp DIAGNOSTIC i un '#250'ltim amb la ' +
        'impressi'#243' diagn'#242'stica de l'#39'ECB al camp DIAGNOSTICS)*/'
      ')'
      'RETURNS ('
      '       DIAGNOSTIC  VARCHAR(100),'
      '       DIAGNOSTICS VARCHAR(31000),'
      '       PRINCIPAL   CHAR(1)         /* S - diangostic principal'
      
        '                                      N - diagnostic secundari *' +
        '/'
      ''
      ')'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '  DECLARE VARIABLE ANOTACIO     VARCHAR(30000);'
      '  DECLARE VARIABLE DIAG_NEU     VARCHAR(45);'
      '  DECLARE VARIABLE ETIOLOG      VARCHAR(100);'
      '  DECLARE VARIABLE IDIOMA       SMALLINT;'
      '  DECLARE VARIABLE EDAT        INTEGER;'
      '  DECLARE VARIABLE INFECCIO     VARCHAR(100);'
      '  DECLARE VARIABLE DADES        VARCHAR(100);'
      '  DECLARE VARIABLE DIAGNOSTICD  VARCHAR(40);'
      '  DECLARE VARIABLE TEGERMENS    CHAR(1);'
      '  DECLARE VARIABLE C_INTERCON   INTEGER;'
      '  DECLARE VARIABLE DATA         DATE;'
      '  DECLARE VARIABLE NUM          INTEGER;'
      '  DECLARE VARIABLE ID           INTEGER;'
      '  DECLARE VARIABLE DESC_CA      VARCHAR(100);'
      '  DECLARE VARIABLE DESC_ES      VARCHAR(100);'
      '  DECLARE VARIABLE IMC_MIN      DOUBLE PRECISION;'
      '  DECLARE VARIABLE IMC_MAX      DOUBLE PRECISION;'
      '  DECLARE VARIABLE T_REG        SMALLINT;'
      '  DECLARE VARIABLE PCT          DOUBLE PRECISION;'
      '  DECLARE VARIABLE P1           VARCHAR(5);'
      '  DECLARE VARIABLE P2           VARCHAR(5);'
      'BEGIN'
      '    DIAGNOSTIC = '#39#39';'
      '    DIAGNOSTICS = '#39#39';'
      ''
      '    IF (RETORN IS NULL) THEN RETORN = 0;'
      ''
      '    SELECT DISTINCT T.C_TRACTAMENT'
      '    FROM TRACTAMENTS T'
      '    JOIN ECBCAP E ON T.C_TRACTAMENT = E.C_TRACTAMENT'
      '    WHERE T.C_HISTORIA = :C_HISTORIA AND T.C_PRESTACIO = '#39'1004'#39
      '    ORDER BY T.DATA_INGRES DESC'
      '    ROWS 1'
      '    INTO :C_TRACTAMENT;'
      ''
      '    /* Ho recuperem igual que a P_INFORMES_ITEMS_DIAGS */'
      '    '
      '    /* Diagn'#242'stic neurol'#242'gic i Etiologia */'
      '    SELECT N_DIAGNOSTICNEUROLOGIC, N_ETIOLOGIA, IDIOMA, EDAT'
      '    FROM   FILIACIO'
      '    WHERE  NUM_HIST = :C_HISTORIA'
      '    INTO  :DIAG_NEU, :ETIOLOG, :IDIOMA, :EDAT;'
      ''
      '    IF (DIAG_NEU IS NOT NULL) THEN'
      '    BEGIN'
      '        PRINCIPAL = '#39'S'#39';'
      '        IF (RETORN = 0) THEN DIAGNOSTICS = DIAG_NEU;'
      '        ELSE BEGIN'
      '            DIAGNOSTIC = DIAG_NEU;'
      '            SUSPEND;'
      '        END;'
      '    END;'
      '    '
      '    PRINCIPAL = '#39'N'#39';'
      '    '
      '    IF (ETIOLOG IS NOT NULL) THEN'
      '    BEGIN'
      
        '        IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NLin' +
        'e() || ETIOLOG;'
      '        ELSE BEGIN'
      '            DIAGNOSTIC = ETIOLOG;'
      '            SUSPEND;'
      '        END;'
      '    END;'
      ''
      '    /* Diagn'#242'stic ingr'#233's */'
      '    DIAGNOSTIC = NULL;'
      '    '
      
        '    SELECT N_DIAGNOSTICINGRES FROM TRACTAMENTS WHERE C_TRACTAMEN' +
        'T = :C_TRACTAMENT INTO :DIAGNOSTIC;'
      '    IF (DIAGNOSTIC IS NOT NULL) THEN'
      '    BEGIN'
      
        '        IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NLin' +
        'e() || DIAGNOSTIC;'
      '                        ELSE SUSPEND;'
      '    END;'
      ''
      '    /* Impressi'#243' diagn'#242'stica ECB */'
      '    ANOTACIO = NULL;'
      '    DIAGNOSTIC = NULL;'
      '    '
      '    SELECT ANOTACIO FROM ECBLIN'
      '    WHERE C_ITEM = 68 AND C_TRACTAMENT = :C_TRACTAMENT'
      '    INTO :ANOTACIO;'
      ''
      '    DIAGNOSTICS = DIAGNOSTICS || F_NLine() || ANOTACIO;'
      '    IF (RETORN = 1) THEN'
      '    BEGIN'
      '        SUSPEND;'
      '        DIAGNOSTICS = NULL;'
      '    END;'
      ''
      '    /* Diagn'#242'stics d'#39'ingr'#233's i de proc'#233's */'
      '    DIAGNOSTIC = NULL;'
      '    '
      '    FOR SELECT DISTINCT N_DIAGNOSTIC FROM DIAGNOSTICS'
      '    WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '    AND  (TIPUS = '#39'I'#39' OR TIPUS = '#39'P'#39')'
      '    AND  F_StringLength(N_DIAGNOSTIC) > 1'
      '    AND  Upper(N_DIAGNOSTIC) <> "NO"'
      '    AND  TotUpper(N_DIAGNOSTIC) <> '#39'PROA'#39
      '    ORDER BY ORDRE'
      '    INTO :DIAGNOSTIC'
      '    DO BEGIN'
      
        '        IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NLin' +
        'e() || DIAGNOSTIC;'
      '                        ELSE SUSPEND;'
      '    END;'
      '    '
      '    /* Infeccions */'
      '    DIAGNOSTIC = NULL;'
      '    INFECCIO = NULL;'
      '    DADES = NULL;'
      '    '
      '    FOR SELECT DISTINCT I.N_INFECCIO, G.N_GERMEN'
      '    FROM   OMCOMUNICATS C'
      '    JOIN   TIPUSINFECCIONS I ON I.C_INFECCIO = C.TIPUS_INFECCIO'
      '    JOIN   GERMENS G ON C.GERMEN1 = G.C_GERMEN'
      '    WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '    AND    C.ESTATANTIBIOGRAMA = '#39'AMB'#39
      '    AND    C.GERMEN1 <> '#39#39
      '    AND    C.GERMEN1 <> '#39'12'#39
      '    AND    C.GERMEN1 <> '#39'98'#39
      '    AND    C.GERMEN1 <> '#39'99'#39
      '    UNION'
      '    SELECT DISTINCT I.N_INFECCIO, G.N_GERMEN'
      '    FROM   OMCOMUNICATS C'
      '    JOIN   TIPUSINFECCIONS I ON I.C_INFECCIO = C.TIPUS_INFECCIO'
      '    JOIN   GERMENS G ON C.GERMEN2 = G.C_GERMEN'
      '    WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '    AND    C.ESTATANTIBIOGRAMA = '#39'AMB'#39
      '    AND    C.GERMEN2 <> '#39#39
      '    AND    C.GERMEN2 <> '#39'12'#39
      '    AND    C.GERMEN2 <> '#39'98'#39
      '    AND    C.GERMEN2 <> '#39'99'#39
      '    ORDER  BY 1'
      '    INTO  :INFECCIO, :DADES'
      '    DO BEGIN'
      
        '        IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Infecci'#243'n '#39' || AnsiLo' +
        'wer(INFECCIO) || '#39' por '#39' || AnsiLower(DADES);'
      
        '                        ELSE DIAGNOSTIC = '#39'Infecci'#243' '#39'  || AnsiLo' +
        'wer(INFECCIO) || '#39' per '#39' || AnsiLower(DADES);'
      '                        '
      
        '        IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NLin' +
        'e() || DIAGNOSTIC;'
      '                        ELSE SUSPEND;'
      '    END;'
      '    '
      '    DIAGNOSTIC = NULL;'
      '    C_INTERCON = NULL;'
      '    '
      '    FOR SELECT DISTINCT P.DIAGNOSTICD, P.C_INTERCON'
      '    FROM INTERCON_COMUNICATEPI P'
      '    JOIN INTERCON I ON I.C_INTERCON = P.C_INTERCON'
      '    WHERE P.ENVIAR_DIAG_INFALTA = '#39'S'#39
      '    AND I.C_TRACTAMENT = :C_TRACTAMENT'
      '    INTO :DIAGNOSTIC, :C_INTERCON'
      '    DO BEGIN'
      
        '        IF ((DIAGNOSTIC IS NOT NULL) AND (DIAGNOSTIC <> '#39#39')) THE' +
        'N SUSPEND;'
      '        TEGERMENS = '#39'N'#39';'
      ''
      '        FOR SELECT DISTINCT G.N_GERMEN'
      '        FROM INTERCON_CEPI_GERMEN IG'
      
        '        JOIN INTERCON_COMUNICATEPI P ON IG.C_INTERCON = P.C_INTE' +
        'RCON'
      '        JOIN GERMEN G ON G.C_GERMEN = IG.C_GERMEN'
      
        '        WHERE IG.C_INTERCON = :C_INTERCON AND P.ENVIAR_DIAG_INFA' +
        'LTA = '#39'S'#39
      '        INTO :DADES'
      '        DO BEGIN'
      '            IF (TEGERMENS = '#39'N'#39') THEN'
      '            BEGIN'
      '                IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'G'#233'rmenes: '#39';'
      '                                ELSE DIAGNOSTIC = '#39'G'#232'rmens: '#39';'
      
        '                IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS |' +
        '| F_NLine() || DIAGNOSTIC;'
      '                                ELSE SUSPEND;'
      '                TEGERMENS = '#39'S'#39';'
      '            END;'
      '            DIAGNOSTIC = DADES;'
      
        '            IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_' +
        'NLine() || DIAGNOSTIC;'
      '                            ELSE SUSPEND;'
      '        END;'
      '    END;'
      '    '
      '    /* Covid actiu durant l'#39'ingr'#233's */'
      '    DIAGNOSTIC = NULL;'
      '    DATA = NULL;'
      '    NUM = NULL;'
      '    '
      '    SELECT Count(*)'
      '    FROM   SEMAFORS S'
      
        '    JOIN   TRACTAMENTS T ON S.C_HISTORIA = T.C_HISTORIA AND T.C_' +
        'TRACTAMENT = :C_TRACTAMENT'
      '    WHERE  C_HISTORIA = :C_HISTORIA'
      '    AND    S.TIPUS = '#39'CoV'#39
      '    AND    S.C_ESTAT = 3'
      '    AND    S.DATA >= T.DATA_INGRES'
      '    AND   (S.DATA <= T.DATA_ALTA OR DATA_ALTA IS NULL)'
      '    INTO   NUM;'
      ''
      '    IF (NUM > 0) THEN'
      '    BEGIN'
      
        '        IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Infecci'#243'n por SARS-Co' +
        'V-2'#39';'
      
        '                        ELSE DIAGNOSTIC = '#39'Infecci'#243' per SARS-CoV' +
        '-2'#39';'
      ''
      
        '        IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NLin' +
        'e() || DIAGNOSTIC;'
      '                        ELSE SUSPEND;'
      '    END;'
      '    '
      '    /* Estat vegetatiu - escala GOSE valor 2 durant ingr'#233's */'
      '    DIAGNOSTIC = NULL;'
      '    NUM = NULL;'
      ''
      '    SELECT Count(*)'
      '    FROM   ESCALESCAP C'
      '    JOIN   ESCALESLIN L  ON C.CLAU = L.CLAU'
      '    WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '    AND    C.ANULAT = "N"'
      '    AND    L.C_ITEM = 416'
      '    AND    L.D_ITEM = 2'
      '    INTO  :NUM;'
      ''
      '    IF (NUM > 0) THEN'
      '    BEGIN'
      '          IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Estado vegetativo'#39';'
      '                          ELSE DIAGNOSTIC = '#39'Estat vegetatiu'#39';'
      ''
      
        '          IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NL' +
        'ine() || DIAGNOSTIC;'
      '                          ELSE SUSPEND;'
      '    END;'
      '    '
      '    /* UPP localitzaci'#243' i grau m'#224'xim assolit */'
      '    DIAGNOSTIC = NULL;'
      '    ID = NULL;'
      '    DESC_CA = NULL;'
      '    DESC_ES = NULL;'
      '    NUM = NULL;'
      ''
      '    FOR SELECT   U.ID, C.N_CODI, C.N_CODI2, Max(L.GRAU)'
      '          FROM   UPPCAP    U'
      '          JOIN   UPPLIN    L ON U.ID = L.ID'
      
        '          JOIN   CODICAMPS C ON U.LOCALITZACIO = C.C_CODI AND C.' +
        'TIPUSCODI = '#39'UPP.LOCALITZACIO'#39
      '          WHERE  U.C_TRACTAMENT= :C_TRACTAMENT'
      
        '          AND    U.ESTAT <> 4              /* excloem les anul'#183'l' +
        'ades */'
      '          GROUP  BY U.ID, C.N_CODI, C.N_CODI2'
      '          INTO  :ID, :DESC_CA, :DESC_ES, :NUM'
      '    DO BEGIN'
      ''
      '          IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'LPP '#39' || DESC_ES;'
      '                          ELSE DIAGNOSTIC = '#39'LPP '#39' || DESC_CA;'
      ''
      '          DESC_CA = '#39#39';'
      '          DESC_ES = '#39#39';'
      '          SELECT N_CODI, N_CODI2'
      '          FROM   CODICAMPS'
      '          WHERE  TIPUSCODI = '#39'UPP.GRAU'#39
      '          AND    C_CODI = :NUM'
      '          INTO  :DESC_CA, :DESC_ES;'
      ''
      
        '          IF (IDIOMA = 2) THEN DIAGNOSTIC = DIAGNOSTIC || '#39', de ' +
        'grado '#39' || DESC_ES;'
      
        '                          ELSE DIAGNOSTIC = DIAGNOSTIC || '#39', de ' +
        'grau '#39'  || DESC_CA;'
      ''
      
        '          IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NL' +
        'ine() || DIAGNOSTIC;'
      '                          ELSE SUSPEND;'
      '    END;'
      '    '
      '    /* IMC - Nens: percentil baix o alt */'
      '    DIAGNOSTIC = NULL;'
      '    IMC_MIN = NULL;'
      '    IMC_MAX = NULL;'
      ''
      '    IF (EDAT <= 16) THEN'
      '    BEGIN'
      
        '        SELECT  Min(F_ReplaceText('#39','#39', '#39'.'#39', VALOR)), Max(F_Repla' +
        'ceText('#39','#39', '#39'.'#39', VALOR))'
      '        FROM    INFERDADES'
      '        WHERE   C_TRACTAMENT = :C_TRACTAMENT'
      '        AND     C_ITEM = 57'
      '        AND     ANULAT = '#39'N'#39
      '        INTO   :IMC_MIN, :IMC_MAX;'
      ''
      '        IF (IMC_MIN <= -3) THEN'
      '        BEGIN'
      '              PCT = IMC_MIN;'
      ''
      
        '              IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39#205'ndice de masa ' +
        'corporal (IMC) bajo. '#39';'
      
        '                              ELSE DIAGNOSTIC = '#39#205'ndex de massa ' +
        'corporal (IMC) baix. '#39';'
      '        END;'
      '        ELSE IF (IMC_MAX >= 2) THEN'
      '        BEGIN'
      '              PCT = IMC_MAX;'
      ''
      
        '              IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39#205'ndice de masa ' +
        'corporal (IMC) alto. '#39';'
      
        '                              ELSE DIAGNOSTIC = '#39#205'ndex de massa ' +
        'corporal (IMC) alt. '#39';'
      '        END;'
      ''
      '        IF (DIAGNOSTIC IS NOT NULL) THEN'
      '        BEGIN'
      
        '              SELECT PERCENTIL FROM IMC_PERCENTILS WHERE VALORZ ' +
        '= (SELECT Max(VALORZ) FROM IMC_PERCENTILS WHERE VALORZ <= :PCT) ' +
        'INTO :P1;   /* inferior immediat */'
      
        '              SELECT PERCENTIL FROM IMC_PERCENTILS WHERE VALORZ ' +
        '= (SELECT Min(VALORZ) FROM IMC_PERCENTILS WHERE VALORZ >= :PCT) ' +
        'INTO :P2;   /* superior immediat */'
      ''
      '              IF      (P1 = P2) THEN DADES = P1;'
      
        '              ELSE IF (P1 = '#39#39') THEN DADES = '#39'per sota de '#39'  || ' +
        'P2;'
      
        '              ELSE IF (P2 = '#39#39') THEN DADES = '#39'per sobre de '#39' || ' +
        'P1;'
      
        '                                ELSE DADES = '#39'entre '#39' || P1 || '#39 +
        ' i '#39' || P2;'
      ''
      
        '              DIAGNOSTIC = DIAGNOSTIC || '#39'Percentil: '#39' || F_Floa' +
        'tToStr(PCT) || '#39' ('#39' || DADES || '#39')'#39';'
      '        END;'
      '    END;'
      '    /* IMC baix o alt - Adults */'
      '    ELSE BEGIN'
      
        '          SELECT  Min(F_ReplaceText('#39','#39', '#39'.'#39', VALOR)), Max(F_Rep' +
        'laceText('#39','#39', '#39'.'#39', VALOR))'
      '          FROM    INFERDADES'
      '          WHERE   C_TRACTAMENT = :C_TRACTAMENT'
      
        '          AND     C_ITEM = 20                       /* percentil' +
        ' nens '#237'tem 57 ? */'
      '          AND     ANULAT = '#39'N'#39
      '          INTO   :IMC_MIN, :IMC_MAX;'
      ''
      '          IF (IMC_MIN IS NOT NULL) THEN'
      '          BEGIN'
      '                IF(IMC_MIN < 19) THEN'
      '                BEGIN'
      
        '                    IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39#205'ndice de' +
        ' masa corporal (IMC) bajo: '#39' || F_FloatToStr(IMC_MIN);'
      
        '                                    ELSE DIAGNOSTIC = '#39#205'ndex de ' +
        'massa corporal (IMC) baix. '#39' || F_FloatToStr(IMC_MIN);'
      '                END;'
      '                ELSE IF (IMC_MAX >= 25) THEN'
      '                BEGIN'
      
        '                    IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39#205'ndice de' +
        ' masa corporal (IMC) alto: '#39' || F_FloatToStr(IMC_MAX);'
      
        '                                    ELSE DIAGNOSTIC = '#39#205'ndex de ' +
        'massa corporal (IMC) alt: '#39'  || F_FloatToStr(IMC_MAX);'
      '                END;'
      '          END;'
      '    END;'
      ''
      '    IF (DIAGNOSTIC IS NOT NULL) THEN'
      '    BEGIN'
      
        '        IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NLin' +
        'e() || DIAGNOSTIC;'
      '                        ELSE SUSPEND;'
      '    END;'
      '    '
      '    /* Bomba BCF */'
      '    DIAGNOSTIC = NULL;'
      '    DATA = NULL;'
      '    ID = NULL;'
      ''
      '    SELECT ID_BOMBA, DATA_IMPLANTACIO, NUM_SERIE'
      '    FROM   BCFBOMBES'
      '    WHERE  C_HISTORIA = :C_HISTORIA'
      '    AND    ESTAT = '#39'V'#39
      '    ORDER  BY ID_BOMBA DESC'
      '    ROWS   1'
      '    INTO  :ID, :DATA, :DADES;'
      ''
      '    IF (DADES IS NULL) THEN DADES = '#39#39';'
      '                       ELSE DADES = '#39'N'#250'm. S'#232'rie: '#39' || DADES;'
      ''
      '    IF (ID IS NOT NULL) THEN'
      '    BEGIN'
      ''
      '          IF (DATA IS NOT NULL) THEN'
      '          BEGIN'
      
        '                DIAGNOSTIC = '#39'(Data implantaci'#243': '#39' || F_DateToSt' +
        'r(DATA);'
      
        '                IF (DADES <> '#39#39') THEN DIAGNOSTIC = DIAGNOSTIC ||' +
        #39' '#39'|| DADES;'
      '                DIAGNOSTIC = DIAGNOSTIC ||'#39')'#39';'
      '          END'
      
        '          ELSE IF (DADES <> '#39#39') THEN DIAGNOSTIC = '#39'('#39'||DADES||'#39')' +
        #39';'
      ''
      
        '          DIAGNOSTIC = '#39'Portador/a de bomba de baclof'#232'n '#39' || DIA' +
        'GNOSTIC;'
      ''
      
        '          IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NL' +
        'ine() || DIAGNOSTIC;'
      '                          ELSE SUSPEND;'
      '    END;'
      '    '
      '    /* ESTATS */'
      
        '    /* 15: marcap'#224's diafragm'#224'tic, 16: SARS, 21: f'#237'stula arteriov' +
        'enosa 24: Glucotest */'
      '    DIAGNOSTIC = NULL;'
      '    T_REG = NULL;'
      '    DESC_CA = NULL;'
      '    DESC_ES = NULL;'
      ''
      '    FOR SELECT DISTINCT R.T_REG, T.N_CODI, T.N_CODI2'
      '        FROM   REGISTRESINFER R'
      
        '        JOIN   CODICAMPS T ON T.TIPUSCODI = '#39'INFER.TIPUSREG'#39' AND' +
        ' R.T_REG = T.C_CODI'
      
        '        LEFT   OUTER JOIN CODICAMPS M ON M.TIPUSCODI = T.PARAMS|' +
        '|'#39'_TIPUS'#39' AND R.C_TIPUS = M.C_CODI'
      '        WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '        AND    T.C_CODI IN (3,4,15,16,21,24)'
      '        AND    C_MOTIU <> 99'
      '        ORDER  BY T.ORDRE'
      '        INTO  :T_REG, :DESC_CA, :DESC_ES'
      '    DO BEGIN'
      ''
      '          DIAGNOSTIC = '#39#39';'
      ''
      '          IF (T_REG = 3) THEN'
      '          BEGIN'
      
        '                IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Dependencia d' +
        'e respirador '#39';'
      
        '                                ELSE DIAGNOSTIC = '#39'Depend'#232'ncia d' +
        'e respirador '#39';'
      '          END'
      '          ELSE BEGIN'
      
        '                IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Portador/a de' +
        ' '#39' || AnsiLower(DESC_ES) || '#39' '#39';'
      
        '                                ELSE DIAGNOSTIC = '#39'Portador/a de' +
        ' '#39' || AnsiLower(DESC_CA) || '#39' '#39';'
      '          END'
      ''
      
        '          IF (RETORN = 0) THEN DIAGNOSTICS = DIAGNOSTICS || F_NL' +
        'ine() || DIAGNOSTIC;'
      '                          ELSE SUSPEND;'
      '    END;'
      '    '
      '    '
      '    DIAGNOSTIC = '#39#39';'
      '    IF (RETORN = 0) THEN SUSPEND;'
      'END')
    Dic1 = wDataCurs.Diagnostics
    Dic1Name = 'wDataCurs.Diagnostics'
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
    Top = 16
  end
  object P_Intercon: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EstatPacient'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_HISTORIA INTEGER'
      ')'
      'RETURNS ('
      '       FITXER VARCHAR(250),'
      '       ARXIU  VARCHAR(100),'
      '       TIPUS VARCHAR(5)    /* SANG o ORINA*/'
      ')'
      'AS'
      '  DECLARE VARIABLE RUTA        VARCHAR(100);'
      '  DECLARE VARIABLE GRUP        VARCHAR(2);'
      '  DECLARE VARIABLE ARXIU_SANG  SMALLINT;'
      '  DECLARE VARIABLE ARXIU_ORINA SMALLINT;'
      '  DECLARE VARIABLE PASSOS      INTEGER;'
      '  DECLARE VARIABLE FINAL       INTEGER;'
      '  DECLARE VARIABLE DIR         VARCHAR(50);'
      'BEGIN'
      '    ARXIU_SANG  = 0; /* 0-no retornat encara; 1-retornat */'
      '    ARXIU_ORINA = 0;'
      '    '
      '    /* Calcular la sub-carpeta per hist'#242'ria */'
      '    PASSOS = F_TRUNCAR(C_HISTORIA / 500);'
      '    FINAL =  F_TRUNCAR(((PASSOS + 1) * 500) - 1);'
      
        '    DIR = CAST((PASSOS * 500) AS VARCHAR(10)) || '#39'-'#39' || CAST(FIN' +
        'AL AS VARCHAR(10));'
      '    '
      '    FOR SELECT DISTINCT F.ARXIU, APA.GRUP, D.RUTA'
      '    FROM INTERCON I'
      '    JOIN ANACABE AC ON I.C_INTERCON = AC.C_INTERCON'
      '    JOIN ANALIT AL ON AC.NILAB = AL.NILAB AND AC.DATA = AL.DATA'
      
        '    JOIN CODRSANA_APA APA ON AL.CODI = APA.CODI AND APA.GRUP IN ' +
        '('#39'BI'#39','#39'HE'#39')'
      
        '    JOIN INFORMES F ON I.C_HISTORIA = F.C_HISTORIA AND F.C_TIPUS' +
        ' = '#39'LAB'#39'  AND F.ARXIU LIKE '#39'%'#39'||AC.NILAB||'#39'.pdf'#39
      '    JOIN INFORMES_TIPUS IT ON IT.C_TIPUS = F.C_TIPUS'
      '    JOIN DIRECTORIS D ON IT.RUTA_FI = D.NOM'
      
        '    WHERE I.C_HISTORIA = :C_HISTORIA AND I.C_TIPUS = '#39'ANAL'#39' AND ' +
        'I.ESTAT IN(31,91)'
      '    AND F.ARXIU IS NOT NULL AND F.C_ESTAT = 10'
      '    ORDER BY I.DATA1 DESC'
      '    INTO :ARXIU, :GRUP, :RUTA'
      '    DO BEGIN'
      '        IF ((GRUP = '#39'HE'#39') AND (ARXIU_SANG = 0)) THEN'
      '        BEGIN'
      '            TIPUS = '#39'SANG'#39';'
      '            ARXIU_SANG = 1;'
      '            FITXER = RUTA || '#39'\'#39' || DIR || '#39'\'#39' || ARXIU;'
      '            SUSPEND;'
      '        END;'
      ''
      '        IF ((GRUP = '#39'BI'#39') AND (ARXIU_ORINA =0)) THEN'
      '        BEGIN'
      '            TIPUS = '#39'ORINA'#39';'
      '            ARXIU_ORINA = 1;'
      '            FITXER = RUTA || '#39'\'#39' || DIR || '#39'\'#39' || ARXIU;'
      '            SUSPEND;'
      '        END;'
      '    END;'
      'END')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'wDataIntercon.InterCon'
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
    Left = 268
    Top = 16
  end
  object P_Semafors: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EstatPacient'
    ForceNombreDB = False
    Body.Strings = (
      '(C_HISTORIA INTEGER)'
      ' RETURNS ('
      '  TIPUS           VARCHAR(3),'
      '  N_TIPUS         VARCHAR(60),'
      '  C_ESTAT         INTEGER,'
      '  N_ESTAT         VARCHAR(40),'
      '  DATA            DATE,'
      '  DATA_REG        DATE,'
      '  USUARI_REG      VARCHAR(5),'
      '  ID_REGINFER     INTEGER,'
      '  INFO            VARCHAR(3000),'
      '  BITMAP          VARCHAR(100),'
      '  SQUARE_COLOR    VARCHAR(12),'
      '  FONT_COLOR      VARCHAR(12),'
      '  FONT_STYLE      VARCHAR(12),'
      '  CIRCLE_COLOR    VARCHAR(12)'
      ') AS'
      '    DECLARE VARIABLE Vac_Covid_Mesos INTEGER;'
      '    DECLARE VARIABLE DATA_HINT       DATE;'
      'BEGIN'
      
        '      /* ESTAT ACTUAL DE TOTS ELS SEM'#192'FORS DEL PACIENT INDICAT *' +
        '/'
      ''
      '      FOR SELECT DISTINCT S.TIPUS, C3.N_CODI'
      '          FROM   SEMAFORS S'
      
        '          JOIN   CODICAMPS3 C3 ON S.TIPUS = C3.C_CODI AND C3.TIP' +
        'USCODI ='#39'SEMAFOR.TIPUS'#39
      '          WHERE  S.C_HISTORIA = :C_HISTORIA'
      '          AND    S.C_ESTAT IS NOT NULL'
      '          AND    S.ANULAT = "N"'
      '          INTO  :TIPUS, :N_TIPUS'
      '      DO BEGIN'
      ''
      
        '            /* Llistem les dades de l'#39#250'ltim sem'#224'for registrat (e' +
        'stat actual) */'
      '            '
      '            C_ESTAT=NULL;'
      
        '            SELECT S.C_ESTAT, E.N_ESTAT, S.DATA, S.INFO, S.ID_RE' +
        'GINFER, S.DATA_REG, S.USUARI_REG'
      '            FROM   SEMAFORS S'
      
        '            JOIN   SEMAFORS_ESTATS E ON S.C_ESTAT = E.C_ESTAT AN' +
        'D S.TIPUS = E.TIPUS'
      '            WHERE  S.C_HISTORIA = :C_HISTORIA'
      '            AND    S.TIPUS = :TIPUS'
      '            AND    S.ANULAT = "N"'
      
        '            AND    E.ACTIU  = "S"    /* nom'#233's els que s'#39'han de p' +
        'intar */'
      '            AND    S.C_ESTAT IS NOT NULL'
      '            ORDER  BY DATA DESC, DATA_REG DESC'
      '            ROWS   1'
      
        '            INTO  :C_ESTAT, :N_ESTAT, :DATA, :INFO, :ID_REGINFER' +
        ', :DATA_REG, :USUARI_REG;'
      '            '
      '            IF (C_ESTAT IS NOT NULL) THEN'
      '            BEGIN'
      
        '              BITMAP = NULL; SQUARE_COLOR = NULL; CIRCLE_COLOR =' +
        ' NULL; FONT_COLOR = NULL; FONT_STYLE = NULL;'
      '              IF (TIPUS = '#39'REC'#39') THEN'
      '              BEGIN  /* color del quadrat */'
      
        '                IF      (C_ESTAT = 1) THEN SQUARE_COLOR = '#39'$00FF' +
        'FFFF'#39';     /* blanc    - REC baix (0)  (si no hi ha informaci'#243', ' +
        'no es veu el sem'#224'for) */'
      
        '                ELSE IF (C_ESTAT = 2) THEN SQUARE_COLOR = '#39'$00E5' +
        'E4E4'#39';     /* gris     - REC baix (1-4) */'
      
        '                ELSE IF (C_ESTAT = 3) THEN SQUARE_COLOR = '#39'$00AF' +
        'F0FF'#39';     /* groc     - REC baix-mig (un '#237'tem = 3) */'
      
        '                ELSE IF (C_ESTAT = 4) THEN SQUARE_COLOR = '#39'$008B' +
        'C7FF'#39';     /* taronja  - REC mig (5-6) */'
      
        '                ELSE IF (C_ESTAT = 5) THEN SQUARE_COLOR = '#39'$0081' +
        '95FF'#39';     /* vermell  - REC alt (>=7) */'
      '              END;'
      ''
      '              ELSE IF (TIPUS = '#39'LET'#39') THEN'
      '              BEGIN  /* color del quadrat */'
      
        '                IF      (C_ESTAT = -2) THEN BEGIN SQUARE_COLOR =' +
        ' '#39'$00FFFFFF'#39'; CIRCLE_COLOR = '#39'$001100DD'#39'; END;   /* blanc + bola' +
        ' vermella  - NO RCP (LET no informat) */'
      
        '                ELSE IF (C_ESTAT = -1) THEN BEGIN SQUARE_COLOR =' +
        ' '#39'$00FFFFFF'#39'; CIRCLE_COLOR = '#39'$0001FE93'#39'; END;   /* blanc + bola' +
        ' verda     - RCP S'#205' (LET no informat) */'
      
        '                ELSE IF (C_ESTAT =  0) THEN BEGIN SQUARE_COLOR =' +
        ' '#39'$00FFFFFF'#39'; CIRCLE_COLOR = '#39'$00FFFFFF'#39'; END;   /* blanc       ' +
        '             sense informaci'#243'  <- ACTUA => VERD!!!??? */'
      
        '                ELSE IF (C_ESTAT =  1) THEN BEGIN SQUARE_COLOR =' +
        ' '#39'$0001FE93'#39'; CIRCLE_COLOR = '#39'$0001FE93'#39'; END;   /* verd        ' +
        '           - NO LET: ACTUA */'
      
        '                ELSE IF (C_ESTAT =  2) THEN BEGIN SQUARE_COLOR =' +
        ' '#39'$0001FE93'#39'; CIRCLE_COLOR = '#39'$001100DD'#39'; END;   /* verd + bola ' +
        'vermella   - LET: nom'#233's NO RCP */'
      
        '                ELSE IF (C_ESTAT =  3) THEN BEGIN SQUARE_COLOR =' +
        ' '#39'$001100DD'#39'; CIRCLE_COLOR = '#39'$001100DD'#39'; END;   /* vermell     ' +
        '           - LET i NO RCP */'
      '              END;'
      '              ELSE IF (TIPUS = '#39'MR'#39') THEN'
      '              BEGIN  /* color del quadrat */'
      
        '                IF      (C_ESTAT = 0) THEN BEGIN SQUARE_COLOR = ' +
        #39'$00FFFFFF'#39'; FONT_COLOR = '#39'$00000000'#39'; FONT_STYLE = '#39#39';     END;' +
        '   /* blanc + font negra   - sense informaci'#243' */'
      
        '                ELSE IF (C_ESTAT = 1) THEN BEGIN SQUARE_COLOR = ' +
        #39'$00FF80FF'#39'; FONT_COLOR = '#39'$00F8C107'#39'; FONT_STYLE = '#39'Bold'#39'; END;' +
        '   /* rosa  + font blava   - MR sospit'#243's */'
      
        '                ELSE IF (C_ESTAT = 2) THEN BEGIN SQUARE_COLOR = ' +
        #39'$00FF80FF'#39'; FONT_COLOR = '#39'$00FFFFFF'#39'; FONT_STYLE = '#39'Bold'#39'; END;' +
        '   /* rosa  + font blanca  - MR actiu */'
      
        '                ELSE IF (C_ESTAT = 3) THEN BEGIN SQUARE_COLOR = ' +
        #39'$00FFFFFF'#39'; FONT_COLOR = '#39'$00FF00FF'#39'; FONT_STYLE = '#39'Bold'#39'; END;' +
        '   /* blanc + font rosa    - MR hist'#242'ric */'
      '              END;'
      '              ELSE IF (TIPUS = '#39'CoV'#39') THEN'
      '              BEGIN'
      
        '                IF      (C_ESTAT = 2) THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\SemaforCoVS.bmp'#39';  /* sospit'#243's - bitxo sobre fons blau ' +
        '*/'
      
        '                ELSE IF (C_ESTAT = 3) THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\SemaforCoVA.bmp'#39';  /* actiu    - bitxo sobre fons rosa ' +
        '*/'
      '              END;'
      '              ELSE IF (TIPUS = '#39'ESg'#39') THEN'
      '              BEGIN'
      
        '                IF      (C_ESTAT = 1) THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\ImgESgP.bmp'#39';       /* pacient */'
      
        '                ELSE IF (C_ESTAT = 2) THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\ImgESgPFS.bmp'#39';     /* pacient amb alteraci'#243' funcions s' +
        'uperiors */'
      
        '                ELSE IF (C_ESTAT = 3) THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\ImgESgF.bmp'#39';       /* familiar */'
      '              END;'
      
        '              ELSE IF (TIPUS = '#39'C/A'#39') THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\semaforCR.bmp'#39';'
      
        '              ELSE IF (TIPUS = '#39'RS'#39')  THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\SemaforRS.bmp'#39';'
      
        '              ELSE IF (TIPUS = '#39'RF'#39')  THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\SemaforRF.bmp'#39';'
      
        '              ELSE IF (TIPUS = '#39'CAU'#39') THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\SemaforCAU.bmp'#39';'
      
        '              ELSE IF (TIPUS = '#39'Emb'#39') THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\SemaforEmb.bmp'#39';'
      
        '              ELSE IF (TIPUS = '#39'LLT'#39') THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\SemaforLLT.bmp'#39';'
      
        '              ELSE IF (TIPUS = '#39'ISO'#39') THEN BITMAP = '#39'G:\BIN\Curs' +
        '\imatges\SemaforISO.bmp'#39';'
      ''
      '              SUSPEND;'
      '            END;'
      '      END'
      'END'
      ''
      '')
    Dic1 = wDataCurs.Semafors
    Dic1Name = 'wDataCurs.Semafors'
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
    Left = 116
    Top = 72
  end
end
