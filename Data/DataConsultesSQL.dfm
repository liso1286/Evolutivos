object wDataConsultesSQL: TwDataConsultesSQL
  OldCreateOrder = False
  Left = 373
  Top = 184
  Height = 640
  Width = 877
  object PlaIctus: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PlaIctus'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA    INTEGER,'
      '         NOMCOMPLET  VARCHAR(80),'
      '         DATA_NAIX   DATE,'
      '         DATA_LESIO  DATE,'
      '         PRESTACIO   VARCHAR(4),'
      '         C_TRACTAMENT INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA   DATE,'
      '         COORDINADOR VARCHAR(5),'
      '         PROCEDENCIA VARCHAR(40),'
      '         HOSP_ORIGEN VARCHAR(62),'
      '         DESTINACIO  VARCHAR(40),'
      '         HOSP_DESTI  VARCHAR(62),'
      '         BARTHEL_ENT CHAR(15),'
      '         BARTHEL_SOR CHAR(15),'
      '         ESCALA_NIHSS_INGRES INTEGER,'
      '         ETIOLOGIA VARCHAR(100),'
      '         C_ETIOLOGIA VARCHAR(15),'
      '         N_ETIOLOGIA VARCHAR(255),'
      '         IDREGISTRE INTEGER'
      '         )'
      'AS'
      ' DECLARE VARIABLE CLAU         INTEGER;'
      'BEGIN'
      '      '
      
        ' FOR SELECT F.NUM_HIST, F.NOMCOMPLET, F.FECHA_NAC, F.DATA_LESSIO' +
        ', T.C_TRACTAMENT,'
      
        '            T.C_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_COORD' +
        'INADOR,'
      
        '            CO.N_CODI, HO.N_HOSPITAL, C.N_CODI, HD.N_HOSPITAL, F' +
        '.N_ETIOLOGIA, F.C_ETIOLOGIA, I.N_ICD, E.IDREGISTRE'
      ' FROM TRACTAMENTS T'
      ' LEFT OUTER JOIN FILIACIO  F  ON T.C_HISTORIA=F.NUM_HIST'
      
        ' LEFT OUTER JOIN HOSPITAL  HO ON T.C_HOSPITALORIGEN=HO.C_HOSPITA' +
        'L'
      ' LEFT OUTER JOIN HOSPITAL  HD ON T.C_HOSPITALDESTI=HD.C_HOSPITAL'
      
        ' LEFT OUTER JOIN CODICAMPS C  ON T.C_DESTINACIO=C.C_CODI AND C.T' +
        'IPUSCODI='#39'DESTINACIO'#39
      
        ' LEFT OUTER JOIN CODICAMPS CO ON T.C_ORIGEN=CO.C_CODI AND CO.TIP' +
        'USCODI='#39'ORIGEN'#39
      ' LEFT OUTER JOIN CODIICD   I  ON F.C_ETIOLOGIA = I.C_ICD'
      
        ' LEFT OUTER JOIN ESPERA    E  ON T.C_TRACTAMENT = E.C_TRACTAMENT' +
        'DESTI'
      ' WHERE (F.C_UNITATMEDICA BETWEEN 14 AND 18) /* nom'#233's ICTUS */'
      
        ' AND   (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI OR T.' +
        'DATA_ALTA IS NULL))'
      
        ' INTO :HISTORIA, :NOMCOMPLET, :DATA_NAIX, :DATA_LESIO, :C_TRACTA' +
        'MENT, :PRESTACIO, :DATA_INGRES, :DATA_ALTA,'
      
        '      :COORDINADOR, :PROCEDENCIA, :HOSP_ORIGEN, :DESTINACIO, :HO' +
        'SP_DESTI, :ETIOLOGIA, :C_ETIOLOGIA, :N_ETIOLOGIA, :IDREGISTRE'
      ' DO BEGIN'
      '     BARTHEL_ENT='#39#39'; BARTHEL_SOR='#39#39'; ESCALA_NIHSS_INGRES=NULL;'
      '     /* Busquem primera escala BARTEL del tractament */'
      '     SELECT C.CLAU, L.D_ITEM FROM ESCALESLIN L'
      '     JOIN ESCALESCAP C ON L.CLAU=C.CLAU'
      '     WHERE C.C_TRACTAMENT=:C_TRACTAMENT'
      '     AND   L.C_ITEM=125 AND C.ANULAT='#39'N'#39
      '     ORDER BY C.DATA'
      '     ROWS 1'
      '     INTO :CLAU, :BARTHEL_ENT;'
      ''
      '     /* Busquem '#250'ltima escala BARTEL del tractament */'
      '     SELECT L.D_ITEM FROM ESCALESLIN L'
      '     JOIN ESCALESCAP C ON L.CLAU=C.CLAU'
      '     WHERE C.C_TRACTAMENT=:C_TRACTAMENT'
      '     AND   L.C_ITEM=125 AND C.ANULAT='#39'N'#39
      '     AND   L.CLAU<>:CLAU'
      '     ORDER BY C.DATA DESC'
      '     ROWS 1'
      '     INTO :BARTHEL_SOR;'
      '     '
      '     /* Busquem la primera escala NIHSS del tractament */'
      '     SELECT L.D_ITEM FROM ESCALESLIN L'
      '     JOIN ESCALESCAP C ON L.CLAU=C.CLAU'
      '     WHERE C.C_TRACTAMENT=:C_TRACTAMENT'
      '     AND   L.C_ITEM=672 AND C.ANULAT='#39'N'#39
      '     ORDER BY C.DATA'
      '     ROWS 1'
      '     INTO :ESCALA_NIHSS_INGRES;'
      ''
      '     SUSPEND;'
      ' END;'
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
    Left = 26
    Top = 16
  end
  object gimnas: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'gimnas'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE)'
      'RETURNS (HISTORIA      INTEGER,'
      '         PRESTACIO     VARCHAR(4),'
      '         DATA_INGRES   DATE,'
      '         DATA_ALTA     DATE,'
      '         DATA          DATE,'
      '         DIA           INTEGER,'
      '         ACTIVITAT     VARCHAR(15),'
      '         VEGADES       INTEGER)'
      'AS'
      '    DECLARE VARIABLE FESTA INTEGER;'
      'BEGIN'
      ''
      '    DATA=DATAI;'
      ''
      '    WHILE (DATA <= DATAF) DO'
      '    BEGIN'
      '      SELECT F_DAYOFWEEK(:DATA) FROM CONFIG ROWS 1 INTO :DIA;'
      '      /* Retorna el dia americ'#224': 1=DG, 2=DLL, ... cal restar 1*/'
      '      IF (DIA=1) THEN DIA = 7;'
      '                 ELSE DIA = DIA - 1;'
      '      '
      '      /* si '#233's festiu no ha de comptar */'
      '      SELECT COUNT(*) FROM FESTIUS'
      '      WHERE DATA = :DATA'
      '      INTO :FESTA;'
      ''
      '      IF (FESTA = 0) THEN'
      '      BEGIN'
      
        '          FOR SELECT T.C_HISTORIA, T.C_PRESTACIO, T.DATA_INGRES,' +
        ' T.DATA_ALTA'
      '          FROM TRACTAMENTS T'
      
        '          JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO AND' +
        ' P.TIPUS IN(1,3)'
      
        '          WHERE (T.DATA_INGRES <= :DATA AND (T.DATA_ALTA >= :DAT' +
        'A OR T.DATA_ALTA IS NULL))'
      '          ORDER BY  T.C_PRESTACIO, T.C_HISTORIA, T.DATA_INGRES'
      '          INTO :HISTORIA, :PRESTACIO, :DATA_INGRES, :DATA_ALTA'
      '          DO BEGIN'
      '              FOR SELECT C_ACTIVITAT, COUNT(*)/COUNT(*)'
      '              FROM AGENDAPACIENT'
      '              WHERE C_HISTORIA = :HISTORIA'
      
        '              AND ((:DATA BETWEEN DATAI AND DATAF AND DATAF IS N' +
        'OT NULL) OR (DATAF IS NULL AND DATAI <= :DATA))'
      '              AND DIA_SEMANA = :DIA'
      '              GROUP BY C_ACTIVITAT'
      '              ORDER BY C_ACTIVITAT'
      '              INTO :ACTIVITAT, :VEGADES'
      '              DO BEGIN'
      '                  SUSPEND;'
      '              END;'
      '          END;'
      '      END;'
      ''
      '      DATA = DATA + 1;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Tract_Resum
    Dic1Name = 'tract_resum'
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
    Left = 26
    Top = 72
  end
  object HistBuides: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HistBuides'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAE DATE)'
      'RETURNS (C_HISTORIA         INTEGER,'
      '         NOMCOMPLET         VARCHAR(80),'
      '         DATA_CONTACTE      DATE,'
      '         DATA_ULTIMCONTACTE DATE,'
      '         C_PRESTACIO        CHAR(4),'
      '         DATA_INGRES        DATE,'
      '         DATA_ALTA          DATE,'
      '         C_COORDINADOR      VARCHAR(5)'
      '         )'
      'AS'
      'BEGIN'
      ''
      
        '  FOR SELECT F.NUM_HIST, F.NOMCOMPLET, F.DATA_CONTACTE, F.DATA_U' +
        'LTIMCONTACTE'
      '  FROM FILIACIO F'
      
        '  WHERE F.NUM_HIST NOT IN (SELECT H.C_HISTORIA FROM HISTORIA H W' +
        'HERE H.C_HISTORIA=F.NUM_HIST)'
      '  AND F.DATA_ULTIMCONTACTE>=:DATAE'
      
        '  INTO :C_HISTORIA, :NOMCOMPLET, :DATA_CONTACTE, :DATA_ULTIMCONT' +
        'ACTE'
      '  DO BEGIN'
      
        '      C_PRESTACIO=NULL; DATA_INGRES=NULL; DATA_ALTA=NULL; C_COOR' +
        'DINADOR=NULL;'
      ''
      '      SELECT C_PRESTACIO, DATA_INGRES, DATA_ALTA, C_COORDINADOR'
      '      FROM TRACTAMENTS'
      '      WHERE C_HISTORIA=:C_HISTORIA'
      '      ORDER BY DATA_INGRES DESC'
      '      ROWS 1'
      
        '      INTO :C_PRESTACIO, :DATA_INGRES, :DATA_ALTA, :C_COORDINADO' +
        'R;'
      '      '
      '      SUSPEND;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tract_Resum
    Dic1Name = 'wDataBasics.Tract_Resum'
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
    Left = 88
    Top = 16
  end
  object PacientsNous: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PacientsNous'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (NUM_HIST       INTEGER,'
      '         NOMCOMPLET     VARCHAR(80),'
      '         C_UNITATMEDICA SMALLINT,'
      '         N_UNITATM      VARCHAR(30),'
      '         C_ORIGEN       SMALLINT,'
      '         N_ORIGEN       VARCHAR(40),'
      '         C_CAUSA        SMALLINT,'
      '         N_CAUSA        VARCHAR(40),'
      '         C_CAUSA_DETALL SMALLINT,'
      '         N_CAUSA_DETALL VARCHAR(40),'
      '         CAUSA_ALTRES   VARCHAR(30),'
      '         UM_ANTIGA      SMALLINT,'
      '         N_UM_ANTIGA    VARCHAR(40),'
      '         DATA_CONTACTE  DATE,'
      '         PAIS           VARCHAR(3),'
      '         POBLACIO       VARCHAR(44),'
      '         PROVINCIA      VARCHAR(44),'
      '         CODIGO         VARCHAR(5),'
      '         DNI            VARCHAR(9),'
      '         SOE            VARCHAR(12),'
      '         SEXO           CHAR(1),'
      '         FECHA_NAC      DATE,'
      '         EDAT           INTEGER,'
      '         TELEFONO       VARCHAR(10),'
      '         H_1A_ATENCIO   VARCHAR(62),'
      '         RIC            VARCHAR(15),'
      '         N_RIC          VARCHAR(100),'
      '         GLF            VARCHAR(15),'
      '         N_GLF          VARCHAR(100),'
      '         DATA_LESSIO    DATE,'
      '         C_CENTREFAC    VARCHAR(2),'
      '         SMS            CHAR(1),'
      '         CORRESPONDENCIA CHAR(1),'
      '         EMAIL          VARCHAR(60)'
      '         )'
      'AS'
      'BEGIN'
      '      '
      
        ' FOR select distinct f.num_hist,f.nomcomplet,f.C_UNITATMEDICA, u' +
        '1.n_unitatm, F.c_origen, CO.N_CODI, f.c_causa, CC.N_CODI,'
      
        '          f.c_causa_detall, cd.n_codi, F.CAUSA_ALTRES, f.um_anti' +
        'ga, u2.n_codi, F.data_contacte, f.pais,'
      
        '          f.poblacio,f.provincia,f.codigo,f.dni,f.soe, f.sexo, f' +
        '.fecha_nac, f.edat,F.TELEFONO, h1.n_hospital,'
      
        '          f.ric, r.n_ric, f.glf, g.n_glf, f.data_lessio, f.sms, ' +
        'f.correspondencia, F.EMAIL'
      ' from filiacio F'
      ' left join tractaments t on t.c_historia = f.num_hist'
      ' left join unitatm u1 on f.c_unitatmedica = u1.c_unitatm'
      
        ' left join CODICAMPS u2 on  f.um_antiga = u2.c_codi and u2.tipus' +
        'codi = '#39'UM_ANTIGA'#39
      
        ' left join codicamps co on f.c_origen=co.c_codi and co.tipuscodi' +
        ' ='#39'ORIGEN_FILIACIO'#39
      
        ' left join codicamps cc on f.c_causa=cc.c_codi and cc.tipuscodi ' +
        '='#39'CAUSA'#39
      
        ' left join codicamps cd on f.c_causa_detall=cd.c_codi and cd.tip' +
        'uscodi ='#39'CAUSA_DETALL'#39
      ' left join HOSPITAL h1 on f.c_hospital = h1.c_hospital'
      ' left join ric r on f.ric=r.ric'
      ' left join glf g on f.glf=g.glf'
      ' Where F.data_contacte between :DATAI and :DATAF'
      ' ORDER BY F.C_UNITATMEDICA'
      
        ' INTO :NUM_HIST, :NOMCOMPLET, :C_UNITATMEDICA, :N_UNITATM, :C_OR' +
        'IGEN, :N_ORIGEN, :C_CAUSA, :N_CAUSA,'
      
        '      :C_CAUSA_DETALL, :N_CAUSA_DETALL, :CAUSA_ALTRES, :UM_ANTIG' +
        'A, :N_UM_ANTIGA, :DATA_CONTACTE, :PAIS,'
      
        '      :POBLACIO, :PROVINCIA, :CODIGO, :DNI, :SOE, :SEXO, :FECHA_' +
        'NAC, :EDAT, :TELEFONO, :H_1A_ATENCIO,'
      
        '      :RIC, :N_RIC, :GLF, :N_GLF, :DATA_LESSIO, :SMS, :CORRESPON' +
        'DENCIA, :EMAIL'
      ' DO BEGIN'
      '     /* El primer tractament determina si '#233's 04 o no */'
      
        '     SELECT C_CENTREFAC FROM TRACTAMENTS WHERE C_HISTORIA=:NUM_H' +
        'IST ORDER BY C_TRACTAMENT ROWS 1 INTO :C_CENTREFAC;'
      '     '
      '     SUSPEND;'
      ' END;'
      'END')
    Dic1 = wDataBasics.Filiacio
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
    Left = 160
    Top = 16
  end
  object JOINT_1: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'JOINT_1'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO INTEGER, DATAI DATE, DATAF DATE)'
      'RETURNS (TITOL       VARCHAR(50),'
      '         C_HISTORIA  DOUBLE PRECISION,'
      '         DATA        DATE'
      '         )'
      'AS'
      '  DECLARE VARIABLE PERCENTATGE DOUBLE PRECISION;'
      '  DECLARE VARIABLE NUMERADOR   DOUBLE PRECISION;'
      '  DECLARE VARIABLE DENOMINADOR DOUBLE PRECISION;'
      '  DECLARE VARIABLE C_INTERCON  INTEGER;'
      'BEGIN'
      
        '  IF (OPCIO=1) THEN       /* Pacients amb tractament antitromb'#242't' +
        'ic a l'#39'alta */'
      '  BEGIN'
      
        '    /* NUMERADOR: PACIENTS TIR (primer ingr'#233's) ICTUS ISQU'#200'MICS >' +
        '=18ANYS QUE HAN CURSAT ALTA EN EL PER'#205'ODE INDICAT AMB ALMENYS UN' +
        ' DELS SEG'#220'ENTS'
      
        '                  TRACTAMENTS FARMACOL'#210'GICS (CODI 605990, 841056' +
        ', 686580, 605873, 654177,766279, 870345, 691704, 639484, 639492,' +
        ' 837773)'
      
        '                  CADUCATS/SUSPESOS EN LA MATEIXA DATA QUE EL PA' +
        'CIENT ES ALTA. EXCLOURE ALTES MOTIU EXITUS */'
      '    SELECT COUNT(DISTINCT T.C_HISTORIA) FROM TRACTAMENTS T'
      
        '    JOIN FILIACIO F       ON T.C_HISTORIA=F.NUM_HIST AND F.C_UNI' +
        'TATMEDICA IN (15,16,17,18) AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        '= '#39'X1'#39
      '    JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT'
      
        '                          AND O.C_PRODUCTE  IN(605990,841056,686' +
        '580,605873,654177,766279,870345,691704,639484,639492,837773)'
      
        '                          AND O.C_ESTAT='#39'C'#39' AND O.DATA_SUSPENSIO' +
        '= T.DATA_ALTA||'#39' 23:55:00'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF AND T.C_DESTINAC' +
        'IO <> 6 AND T.C_PRESTACIO='#39'1004'#39
      '    INTO :NUMERADOR;'
      '    TITOL='#39'** Numerador **'#39'; C_HISTORIA=NUMERADOR; SUSPEND;'
      ''
      
        '    /*DENOMINADOR: PACIENTS TIR (primer ingr'#233's) ICTUS ISQU'#200'MICS ' +
        '>=18ANYS QUE HAN CURSAT ALTA EN EL PER'#205'ODE INDICAT. EXCLOURE ALT' +
        'ES MOTIU EXITUS */'
      '    SELECT COUNT(DISTINCT T.C_HISTORIA) FROM TRACTAMENTS T'
      
        '    JOIN FILIACIO F    ON T.C_HISTORIA = F.NUM_HIST AND F.C_UNIT' +
        'ATMEDICA IN (15,16,17,18) AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET = '#39 +
        'X1'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF AND T.C_DESTINAC' +
        'IO <> 6  AND T.C_PRESTACIO='#39'1004'#39
      '    INTO :DENOMINADOR;'
      '    TITOL='#39'** Denominador **'#39'; C_HISTORIA=DENOMINADOR; SUSPEND;'
      ''
      
        '    IF (DENOMINADOR>0) THEN PERCENTATGE=F_DIVISA(NUMERADOR/DENOM' +
        'INADOR,4)*100;'
      '    C_HISTORIA=NULL; TITOL=NULL; DATA=NULL;'
      '    TITOL='#39'** Percentatge **'#39'; C_HISTORIA=PERCENTATGE; SUSPEND;'
      ''
      '    /* Llistat de pacients - numerador */'
      '    TITOL='#39'** Numerador detall ** '#39';'
      '    FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '    JOIN FILIACIO F       ON T.C_HISTORIA=F.NUM_HIST AND F.C_UNI' +
        'TATMEDICA IN (15,16,17,18) AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        '= '#39'X1'#39
      '    JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT'
      
        '                          AND O.C_PRODUCTE  IN(605990,841056,686' +
        '580,605873,654177,766279,870345,691704,639484,639492,837773)'
      
        '                          AND O.C_ESTAT='#39'C'#39' AND O.DATA_SUSPENSIO' +
        '= T.DATA_ALTA||'#39' 23:55:00'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF AND T.C_DESTINAC' +
        'IO <> 6 AND T.C_PRESTACIO='#39'1004'#39
      '    INTO :C_HISTORIA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      '    '
      '    /* Llistat de pacients - denominador */'
      '    TITOL='#39'** Denominador detall ** '#39';'
      '    FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '    JOIN FILIACIO F    ON T.C_HISTORIA = F.NUM_HIST AND F.C_UNIT' +
        'ATMEDICA IN (15,16,17,18) AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET = '#39 +
        'X1'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF AND T.C_DESTINAC' +
        'IO <> 6  AND T.C_PRESTACIO='#39'1004'#39
      '    INTO :C_HISTORIA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    /* LLISTAT DE PACIENTS que no compleixen */'
      '    NUMERADOR=NULL; DENOMINADOR=NULL; PERCENTATGE=NULL;'
      '    TITOL='#39'** No acompliment detall **'#39';'
      
        '    FOR SELECT DISTINCT T.C_HISTORIA, MIN(T.DATA_INGRES) FROM TR' +
        'ACTAMENTS T'
      
        '    JOIN FILIACIO F    ON T.C_HISTORIA = F.NUM_HIST AND F.C_UNIT' +
        'ATMEDICA IN (15,16,17,18) AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET = '#39 +
        'X1'#39
      '    LEFT JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT'
      
        '                               AND O.C_PRODUCTE  IN(605990,84105' +
        '6,686580,605873,654177,766279,870345,691704,639484,639492,837773' +
        ')'
      
        '                               AND O.C_ESTAT='#39'C'#39' AND O.DATA_SUSP' +
        'ENSIO= T.DATA_ALTA||'#39' 23:55:00'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF  AND T.C_DESTINA' +
        'CIO <> 6  AND T.C_PRESTACIO='#39'1004'#39
      '    AND   O.C_ORDREMEDICA IS NULL'
      '    GROUP BY T.C_HISTORIA'
      '    ORDER BY T.C_HISTORIA'
      '    INTO :C_HISTORIA, :DATA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END'
      '  END'
      
        '  ELSE IF (OPCIO=2) THEN  /* Pacients amb tractament estatines a' +
        ' l'#39'alta */'
      '  BEGIN'
      
        '    /* NUMERADOR: PACIENTS TIR (primer ingr'#233's) ICTUS ISQU'#200'MICS >' +
        '=18ANYS QUE HAN CURSAT ALTA EN EL PER'#205'ODE INDICAT AMB ALMENYS UN' +
        ' DELS SEG'#220'ENTS TRACTAMENTS FARMACOL'#210'GICS'
      
        '                  (CODI 605097, 615435, 636506, 739060) CADUCATS' +
        '/SUSPESOS EN LA MATEIXA DATA QUE EL PACIENT ES ALTA.'
      
        '                  EXCLOUREM LES ALTES PER EXITUS D'#39'AQUESTA POBLA' +
        'CI'#211'. */'
      '    SELECT COUNT(DISTINCT T.C_HISTORIA) FROM TRACTAMENTS T'
      
        '    JOIN FILIACIO F       ON T.C_HISTORIA=F.NUM_HIST AND F.C_UNI' +
        'TATMEDICA IN (15,16,17,18) AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET = '#39 +
        'X1'#39
      '    JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT'
      
        '                          AND O.C_PRODUCTE  IN(605097,615435,636' +
        '506,739060)'
      
        '                          AND O.C_ESTAT='#39'C'#39' AND O.DATA_SUSPENSIO' +
        '= T.DATA_ALTA||'#39' 23:55:00'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF  AND T.C_DESTINA' +
        'CIO <> 6  AND T.C_PRESTACIO='#39'1004'#39
      '    INTO :NUMERADOR;'
      '    TITOL='#39'** Numerador **'#39'; C_HISTORIA=NUMERADOR; SUSPEND;'
      ''
      
        '    /*DENOMINADOR:  PACIENTS TIR ICTUS ISQU'#200'MICS >=18ANYS QUE HA' +
        'N CURSAT ALTA EN EL PER'#205'ODE INDICAT. EXCLOUREM LES ALTES PER EXI' +
        'TUS D'#39'AQUESTA POBLACI'#211'.  */'
      '    SELECT COUNT(DISTINCT T.C_HISTORIA) FROM TRACTAMENTS T'
      
        '    JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND F.C_UNITATM' +
        'EDICA IN (15,16,17,18)  AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET = '#39 +
        'X1'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF  AND T.C_DESTINA' +
        'CIO <> 6  AND T.C_PRESTACIO='#39'1004'#39
      '    INTO :DENOMINADOR;'
      '    TITOL='#39'** Denominador **'#39'; C_HISTORIA=DENOMINADOR; SUSPEND;'
      ''
      
        '    IF (DENOMINADOR>0) THEN PERCENTATGE=F_DIVISA(NUMERADOR/DENOM' +
        'INADOR,4)*100;'
      '    C_HISTORIA=NULL; TITOL=NULL; DATA=NULL;'
      '    TITOL='#39'** Percentatge **'#39'; C_HISTORIA=PERCENTATGE; SUSPEND;'
      ''
      '    /* Llistat de pacients - numerador */'
      '    TITOL='#39'** Numerador detall ** '#39';'
      '    FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '    JOIN FILIACIO F       ON T.C_HISTORIA=F.NUM_HIST AND F.C_UNI' +
        'TATMEDICA IN (15,16,17,18) AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET = '#39 +
        'X1'#39
      '    JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT'
      
        '                          AND O.C_PRODUCTE  IN(605097,615435,636' +
        '506,739060)'
      
        '                          AND O.C_ESTAT='#39'C'#39' AND O.DATA_SUSPENSIO' +
        '= T.DATA_ALTA||'#39' 23:55:00'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF  AND T.C_DESTINA' +
        'CIO <> 6  AND T.C_PRESTACIO='#39'1004'#39
      '    INTO :C_HISTORIA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      '    '
      '    /* Llistat de pacients - denominador */'
      '    TITOL='#39'** Denominador detall ** '#39';'
      '    FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '    JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND F.C_UNITATM' +
        'EDICA IN (15,16,17,18)  AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET = '#39 +
        'X1'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF  AND T.C_DESTINA' +
        'CIO <> 6  AND T.C_PRESTACIO='#39'1004'#39
      '    INTO :C_HISTORIA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    /* LLISTAT DE PACIENTS */'
      '    TITOL='#39'** No acompliment detall **'#39';'
      '    NUMERADOR=NULL; DENOMINADOR=NULL; PERCENTATGE=NULL;'
      
        '    FOR SELECT T.C_HISTORIA, MIN(T.DATA_INGRES) FROM TRACTAMENTS' +
        ' T'
      
        '    JOIN FILIACIO F       ON T.C_HISTORIA=F.NUM_HIST AND F.C_UNI' +
        'TATMEDICA IN (15,16,17,18) AND F.EDAT>=18'
      
        '    JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        '= '#39'X1'#39
      '    LEFT JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT'
      
        '                               AND O.C_PRODUCTE  IN(605097,61543' +
        '5,636506,739060)'
      
        '                               AND O.C_ESTAT='#39'C'#39' AND O.DATA_SUSP' +
        'ENSIO= T.DATA_ALTA||'#39' 23:55:00'#39
      
        '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF  AND T.C_DESTINA' +
        'CIO <> 6  AND T.C_PRESTACIO='#39'1004'#39
      '    AND   O.C_ORDREMEDICA IS NULL'
      '    GROUP BY T.C_HISTORIA'
      '    ORDER BY T.C_HISTORIA'
      '    INTO :C_HISTORIA, :DATA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END'
      '  END'
      '  ELSE IF (OPCIO=3) THEN  /*  */'
      '  BEGIN'
      
        '      /* NUMERADOR:   pacients amb resultat cr'#237'tic en el perode ' +
        'indicat i amb anotaci'#243' al curs c'#237'lnic per part de LABORATORI'
      
        '         DENOMINADOR: pacients amb resultat cr'#237'tic en el perode ' +
        'indicat  */'
      ''
      '      NUMERADOR=NULL; DENOMINADOR=NULL; PERCENTATGE=NULL;'
      '      SELECT COUNT(DISTINCT A.C_INTERCON) FROM ANACABE A'
      '      JOIN ANALIT AN ON A.NILAB = AN.NILAB AND A.DATA = AN.DATA'
      '      WHERE AN.PATO = "BB"'
      '      AND   A.DATA BETWEEN :DATAI AND :DATAF'
      '      INTO :DENOMINADOR;'
      
        '      TITOL='#39'** Denominador **'#39'; C_HISTORIA=DENOMINADOR; SUSPEND' +
        ';'
      ''
      '      SELECT COUNT(DISTINCT A.C_INTERCON) FROM ANACABE A'
      '      JOIN ANALIT AN  ON A.NILAB = AN.NILAB AND A.DATA = AN.DATA'
      
        '      JOIN HISTORIA H ON A.NUM_HIST=H.C_HISTORIA AND H.C_GRUP='#39'L' +
        'A'#39' AND H.QUEES=7'
      '      WHERE AN.PATO = "BB"'
      '      AND   A.DATA BETWEEN :DATAI AND :DATAF'
      '      INTO :NUMERADOR;'
      '      TITOL='#39'** Numerador **'#39'; C_HISTORIA=NUMERADOR; SUSPEND;'
      ''
      
        '      IF (DENOMINADOR>0) THEN PERCENTATGE=F_DIVISA(NUMERADOR/DEN' +
        'OMINADOR,4)*100;'
      '      C_HISTORIA=NULL; TITOL=NULL; DATA=NULL;'
      
        '      TITOL='#39'** Percentatge **'#39'; C_HISTORIA=PERCENTATGE; SUSPEND' +
        ';'
      ''
      '      /* Llistat de pacients - numerador */'
      '      TITOL='#39'** Numerador detall ** '#39';'
      
        '      FOR SELECT DISTINCT A.C_INTERCON, A.NUM_HIST, A.DATA FROM ' +
        'ANACABE A'
      '      JOIN ANALIT AN  ON A.NILAB = AN.NILAB AND A.DATA = AN.DATA'
      
        '      JOIN HISTORIA H ON A.NUM_HIST=H.C_HISTORIA AND H.C_GRUP='#39'L' +
        'A'#39' AND H.QUEES=7'
      '      WHERE AN.PATO = "BB"'
      '      AND   A.DATA BETWEEN :DATAI AND :DATAF'
      '      INTO :C_INTERCON, :C_HISTORIA, :DATA'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      '      '
      '      /* Llistat de pacients - denominador */'
      '      TITOL='#39'** Denominador detall ** '#39';'
      
        '      FOR SELECT DISTINCT A.C_INTERCON, A.NUM_HIST, A.DATA FROM ' +
        'ANACABE A'
      '      JOIN ANALIT AN ON A.NILAB = AN.NILAB AND A.DATA = AN.DATA'
      '      WHERE AN.PATO = "BB"'
      '      AND   A.DATA BETWEEN :DATAI AND :DATAF'
      '      INTO :C_INTERCON, :C_HISTORIA, :DATA'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      
        '      TITOL='#39'-- Resultats crtics sense anotaci'#243' --'#39'; C_HISTORIA=' +
        'NULL; DATA=NULL; SUSPEND;'
      '      /* LLISTAT DE PACIENTS QUE NO COMPLEIXEN */'
      '      TITOL='#39'** No acompliment detall **'#39';'
      '      NUMERADOR=NULL; DENOMINADOR=NULL; PERCENTATGE=NULL;'
      '      FOR SELECT DISTINCT A.NUM_HIST, A.DATA FROM ANACABE A'
      
        '      JOIN ANALIT AN       ON A.NILAB = AN.NILAB AND A.DATA = AN' +
        '.DATA'
      '      JOIN FILIACIO F      ON A.NUM_HIST=F.NUM_HIST'
      
        '      LEFT JOIN HISTORIA H ON A.NUM_HIST=H.C_HISTORIA AND H.C_GR' +
        'UP='#39'LA'#39' AND H.QUEES=7'
      '      WHERE AN.PATO = "BB"'
      '      AND   A.DATA BETWEEN :DATAI AND :DATAF'
      '      AND   H.C_ANOTACIO IS NULL'
      '      INTO :C_HISTORIA, :DATA'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END'
      '  END'
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
    Left = 26
    Top = 192
  end
  object SC_Proces: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'SC_Proces'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO INTEGER, DATAI DATE, DATAF DATE)'
      'RETURNS (REGISTRE          VARCHAR(12),'
      '         OBJECTIU          INTEGER,'
      '         HISTORIA          INTEGER,'
      '         PRESTACIO         CHAR(4),'
      '         COORDINADOR       VARCHAR(20),'
      '         DATA_INGRES       DATE,'
      '         DATA_ALTA         DATE,'
      '         DATA_NAIX         DATE,'
      '         EDAT_A_LALTA      INTEGER,'
      '         PROCES            INTEGER,'
      '         FI_PROCES         CHAR(1),'
      '         NUM_SESSIO        INTEGER,'
      '         DATA_SESSIO       DATE'
      '         )'
      'AS'
      '  DECLARE VARIABLE TRACTAMENT  INTEGER;'
      '  DECLARE VARIABLE TOTAL1      INTEGER;'
      '  DECLARE VARIABLE TOTAL2IMES  INTEGER;'
      '  DECLARE VARIABLE CONTA       INTEGER;'
      '  DECLARE VARIABLE DENOMINADOR DOUBLE PRECISION;'
      '  DECLARE VARIABLE DIES_INGRES DOUBLE PRECISION;'
      'BEGIN'
      '    TOTAL1=0;TOTAL2IMES=0;'
      '    '
      
        '    IF (OPCIO=1) THEN   /* primers INGRESSOS TIR AMB DATA_ALTA E' +
        'N EL PER'#205'ODE INDICAT */'
      '    BEGIN'
      
        '      FOR SELECT DISTINCT T.C_HISTORIA, T.C_PRESTACIO, T.C_PROCE' +
        'S, T.DATA_ALTA, T.DATA_INGRES, T.FI_PROCES, F.FECHA_NAC, M.METGE' +
        ','
      
        '                          F_TRUNCAR((T.DATA_ALTA - F.FECHA_NAC)/' +
        '365), T.C_TRACTAMENT, P.C_OBJECTIU'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU  D  ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET ' +
        '= '#39'X1'#39
      '      JOIN FILIACIO    F  ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN VMETGES     M  ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN OBJPRESTA   P  ON P.C_TRACTAMENT= T.C_TRACTAMENT AND ' +
        'P.TANCAT <> 2            /* SC no anul'#183'lada          */'
      
        '      JOIN OBJPROPERES PP ON P.C_OBJECTIU = PP.C_OBJECTIU AND PP' +
        '.COMENTARI IS NOT NULL   /* Amb comentari sessi'#243' fet */'
      '      WHERE T.C_PRESTACIO='#39'1004'#39
      '      AND   T.C_PROCES IS NOT NULL'
      '      AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '      AND   (T.DATA_ALTA - T.DATA_INGRES) > 20                  ' +
        '                               /* 3 Setmanes ingressats       */'
      
        '      AND   (SELECT COUNT(*) FROM TRACTAMENTS T2                ' +
        '                               /* No s'#39'han de tenir en compte */'
      
        '             JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39'                   /* els que tenen un ingr'#233's TIR */'
      
        '             WHERE T2.C_HISTORIA = T.C_HISTORIA                 ' +
        '                               /* d'#39'igual C_PROCES anterior   */'
      '             AND   T2.C_TRACTAMENT < T.C_TRACTAMENT'
      '             AND   T2.C_PROCES = T.C_PROCES'
      '             AND   T2.C_PRESTACIO = '#39'1004'#39') = 0'
      '      ORDER BY T.C_HISTORIA, T.DATA_INGRES'
      
        '      INTO :HISTORIA, :PRESTACIO, :PROCES, :DATA_ALTA, :DATA_ING' +
        'RES, :FI_PROCES, :DATA_NAIX, :COORDINADOR,'
      '           :EDAT_A_LALTA, :TRACTAMENT, :OBJECTIU'
      '      DO BEGIN'
      
        '          /* Nom'#233's volem la '#250'ltima sessi'#243' conjunta per'#242' volem sa' +
        'ber quina ha estat en n'#250'mero */'
      '          NUM_SESSIO=0;'
      '          SELECT COUNT(*) FROM OBJPROPERES'
      
        '          WHERE C_OBJECTIU=:OBJECTIU AND COMENTARI IS NOT NULL  ' +
        '                              /* Amb comentari sessi'#243' fet */'
      '          INTO  :NUM_SESSIO;'
      '          '
      '          IF (NUM_SESSIO IS NULL) THEN NUM_SESSIO=0;'
      '          '
      '          IF (NUM_SESSIO>0) THEN'
      '          BEGIN'
      '              REGISTRE='#39'COMPLEIX'#39';'
      '              IF (NUM_SESSIO=1) THEN TOTAL1=TOTAL1+1;'
      '                                ELSE TOTAL2IMES=TOTAL2IMES+1;'
      '                                  '
      
        '              SELECT MAX(DATA_SESSIO) FROM OBJPROPERES WHERE C_O' +
        'BJECTIU=:OBJECTIU AND COMENTARI IS NOT NULL'
      '              INTO :DATA_SESSIO;'
      '          END;'
      '          ELSE BEGIN'
      '              REGISTRE='#39'NO COMPLEIX'#39';'
      '              NUM_SESSIO=0;'
      '              DATA_SESSIO=NULL;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '      '
      '      OBJECTIU=NULL;'
      
        '      FOR SELECT DISTINCT T.C_HISTORIA, T.C_PRESTACIO, T.C_PROCE' +
        'S, T.DATA_ALTA, T.DATA_INGRES, T.FI_PROCES, F.FECHA_NAC, M.METGE' +
        ','
      
        '                          F_TRUNCAR((T.DATA_ALTA - F.FECHA_NAC)/' +
        '365), T.C_TRACTAMENT'
      '      FROM TRACTAMENTS    T'
      
        '      JOIN DRETSMOTIU     D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRE' +
        'T = '#39'X1'#39
      '      JOIN FILIACIO       F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN VMETGES        M ON T.C_COORDINADOR = M.CODI'
      
        '      LEFT JOIN OBJPRESTA P ON P.C_TRACTAMENT= T.C_TRACTAMENT AN' +
        'D P.TANCAT <> 2'
      
        '      WHERE T.C_PRESTACIO='#39'1004'#39' AND P.C_OBJECTIU IS NULL       ' +
        '                               /* sense SC no anul'#183'lada    */'
      '      AND   T.C_PROCES IS NOT NULL'
      '      AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '      AND   (T.DATA_ALTA - T.DATA_INGRES) > 20                  ' +
        '                               /* 3 Setmanes ingressats    */'
      
        '      AND   (SELECT COUNT(*) FROM TRACTAMENTS T2                ' +
        '                               /* No s'#39'han de tenir en compte */'
      
        '             JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39'                   /* els que tenen un ingr'#233's TIR */'
      
        '             WHERE T2.C_HISTORIA = T.C_HISTORIA                 ' +
        '                               /* d'#39'igual C_PROCES anterior   */'
      '             AND   T2.C_TRACTAMENT < T.C_TRACTAMENT'
      '             AND   T2.C_PROCES = T.C_PROCES'
      '             AND   T2.C_PRESTACIO = '#39'1004'#39') = 0'
      '      ORDER BY T.C_HISTORIA, T.DATA_INGRES'
      
        '      INTO :HISTORIA, :PRESTACIO, :PROCES, :DATA_ALTA, :DATA_ING' +
        'RES, :FI_PROCES, :DATA_NAIX, :COORDINADOR,'
      '           :EDAT_A_LALTA, :TRACTAMENT'
      '      DO BEGIN'
      '          NUM_SESSIO=0;'
      '          REGISTRE='#39'NO COMPLEIX'#39';'
      '          DATA_SESSIO=NULL;'
      '          SUSPEND;'
      '      END;'
      '      '
      
        '      FOR SELECT DISTINCT T.C_HISTORIA, T.C_PRESTACIO, T.C_PROCE' +
        'S, T.DATA_ALTA, T.DATA_INGRES, T.FI_PROCES, F.FECHA_NAC, M.METGE' +
        ','
      
        '                          F_TRUNCAR((T.DATA_ALTA - F.FECHA_NAC)/' +
        '365), T.C_TRACTAMENT, P.C_OBJECTIU'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU  D  ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET ' +
        '= '#39'X1'#39
      '      JOIN FILIACIO    F  ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN VMETGES     M  ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN OBJPRESTA   P  ON P.C_TRACTAMENT= T.C_TRACTAMENT AND ' +
        'P.TANCAT <> 2                 /* SC no anul'#183'lada            */'
      '      WHERE T.C_PRESTACIO='#39'1004'#39
      '      AND   T.C_PROCES IS NOT NULL'
      '      AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '      AND   (T.DATA_ALTA - T.DATA_INGRES) > 20                  ' +
        '                               /* 3 Setmanes ingressats    */'
      
        '      AND   (SELECT COUNT(*) FROM TRACTAMENTS T2                ' +
        '                               /* No s'#39'han de tenir en compte */'
      
        '             JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39'                   /* els que tenen un ingr'#233's TIR */'
      
        '             WHERE T2.C_HISTORIA = T.C_HISTORIA                 ' +
        '                               /* d'#39'igual C_PROCES anterior   */'
      '             AND   T2.C_TRACTAMENT < T.C_TRACTAMENT'
      '             AND   T2.C_PROCES = T.C_PROCES'
      '             AND   T2.C_PRESTACIO = '#39'1004'#39') = 0'
      '      ORDER BY T.C_HISTORIA, T.DATA_INGRES'
      
        '      INTO :HISTORIA, :PRESTACIO, :PROCES, :DATA_ALTA, :DATA_ING' +
        'RES, :FI_PROCES, :DATA_NAIX, :COORDINADOR,'
      '           :EDAT_A_LALTA, :TRACTAMENT, :OBJECTIU'
      '      DO BEGIN'
      
        '          NUM_SESSIO=0; /* No volem els que tenen almenys una se' +
        'ssi'#243' amb el comentari ple */'
      
        '          SELECT COUNT(*) FROM OBJPROPERES WHERE C_OBJECTIU=:OBJ' +
        'ECTIU'
      '          AND COMENTARI IS NOT NULL'
      '          INTO :NUM_SESSIO;'
      '          IF (NUM_SESSIO IS NULL) THEN NUM_SESSIO=0;'
      '          '
      '          IF (NUM_SESSIO=0) THEN'
      '          BEGIN'
      '              REGISTRE='#39'NO COMPLEIX'#39';'
      '              DATA_SESSIO=NULL;'
      '              SUSPEND;'
      '          END;'
      '      END;'
      ''
      '      /* Imprimim totals */'
      
        '      HISTORIA=NULL; PRESTACIO=NULL; PROCES=NULL; DATA_INGRES=NU' +
        'LL; DATA_ALTA=NULL; NUM_SESSIO=NULL; DATA_SESSIO=NULL;'
      
        '      EDAT_A_LALTA=NULL; DIES_INGRES=NULL; DATA_NAIX=NULL; FI_PR' +
        'OCES=NULL; COORDINADOR=NULL;'
      ''
      '      REGISTRE = '#39'TOTAL 1'#170#39';  OBJECTIU = TOTAL1;     SUSPEND;'
      '      REGISTRE = '#39'TOTAL >1'#170#39'; OBJECTIU = TOTAL2IMES; SUSPEND;'
      ''
      '      REGISTRE = '#39'DENOMINADOR'#39';'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU  D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET =' +
        ' '#39'X1'#39
      '      WHERE  T.C_PRESTACIO='#39'1004'#39
      '      AND    T.C_PROCES IS NOT NULL'
      '      AND    T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '      AND    (T.DATA_ALTA - T.DATA_INGRES) > 20 /* 3 Setmanes in' +
        'gressats */'
      
        '      AND   (SELECT COUNT(*) FROM TRACTAMENTS T2                ' +
        '                               /* No s'#39'han de tenir en compte */'
      
        '             JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39'                   /* els que tenen un ingr'#233's TIR */'
      
        '             WHERE T2.C_HISTORIA = T.C_HISTORIA                 ' +
        '                               /* d'#39'igual C_PROCES anterior   */'
      '             AND   T2.C_TRACTAMENT < T.C_TRACTAMENT'
      '             AND   T2.C_PROCES = T.C_PROCES'
      '             AND   T2.C_PRESTACIO = '#39'1004'#39') = 0'
      '      INTO :OBJECTIU;'
      '      SUSPEND;'
      '    END;'
      
        '    ELSE BEGIN /* AMBULATORIS TIR QUE NO H'#192'GIN ESTAT INGRESSATS ' +
        'ABANS PER TIR (MATEIX PROCES) */'
      '      DENOMINADOR = 0;'
      
        '      FOR SELECT T.C_HISTORIA, T.C_PRESTACIO, T.C_PROCES, T.DATA' +
        '_ALTA, T.DATA_INGRES, T.FI_PROCES, T.C_TRACTAMENT, M.METGE,'
      
        '                 F_TRUNCAR((T.DATA_ALTA - F.FECHA_NAC)/365), T.D' +
        'ATA_ALTA - T.DATA_INGRES, F.FECHA_NAC'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU  D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET =' +
        ' '#39'X1'#39
      '      JOIN FILIACIO    F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN VMETGES     M ON T.C_COORDINADOR = M.CODI'
      '      WHERE  T.C_PRESTACIO IN ('#39'2014'#39','#39'2008'#39')'
      '      AND    T.C_PROCES IS NOT NULL'
      '      AND    T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '      ORDER  BY T.C_HISTORIA, T.DATA_INGRES'
      
        '      INTO :HISTORIA, :PRESTACIO, :PROCES, :DATA_ALTA, :DATA_ING' +
        'RES, :FI_PROCES, :TRACTAMENT, :COORDINADOR,'
      '           :EDAT_A_LALTA, :DIES_INGRES, :DATA_NAIX'
      '      DO BEGIN'
      
        '          /* Primer mirem que no tingui cap 1004 TIR anterior di' +
        'ns el mateix proc'#233's */'
      '          CONTA = 0;'
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '          JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRE' +
        'T = '#39'X1'#39
      '          WHERE T.C_HISTORIA = :HISTORIA'
      '          AND   T.C_TRACTAMENT < :TRACTAMENT'
      '          AND   T.C_PROCES = :PROCES'
      '          AND   T.C_PRESTACIO IN('#39'1004'#39','#39'2008'#39','#39'2014'#39')'
      '          INTO :CONTA;'
      '          IF (CONTA IS NULL) THEN CONTA=0;'
      '          '
      '          OBJECTIU=0; DATA_SESSIO=NULL;'
      '          IF (CONTA=0) THEN'
      '          BEGIN'
      '              DENOMINADOR=DENOMINADOR+1;'
      '              NUM_SESSIO=0;'
      '          '
      '              FOR SELECT PP.C_OBJECTIU, PP.DATA_SESSIO'
      '              FROM OBJPRESTA   P'
      
        '              JOIN OBJPROPERES PP ON P.C_OBJECTIU = PP.C_OBJECTI' +
        'U'
      
        '              WHERE P.C_TRACTAMENT= :TRACTAMENT AND P.TANCAT <> ' +
        '2'
      '              AND PP.COMENTARI IS NOT NULL'
      '              INTO :OBJECTIU, :DATA_SESSIO'
      '              DO BEGIN'
      '                  REGISTRE='#39'COMPLEIX'#39';'
      '                  NUM_SESSIO = NUM_SESSIO + 1;'
      '                  IF (NUM_SESSIO = 1) THEN TOTAL1=TOTAL1+1;'
      
        '                                      ELSE TOTAL2IMES=TOTAL2IMES' +
        '+1;'
      '                  SUSPEND;'
      '              END;'
      '              '
      '              /* No ha trobat cap sessi'#243' */'
      '              IF (NUM_SESSIO=0) THEN'
      '              BEGIN'
      '                  REGISTRE='#39'NO COMPLEIX'#39';'
      '                  SUSPEND;'
      '              END;'
      '          END;'
      '      END;'
      ''
      '      /* Imprimim totals */'
      
        '      HISTORIA=NULL; PRESTACIO=NULL; PROCES=NULL; DATA_INGRES=NU' +
        'LL; DATA_ALTA=NULL; NUM_SESSIO=NULL; DATA_SESSIO=NULL;'
      
        '      EDAT_A_LALTA=NULL; DIES_INGRES=NULL; DATA_NAIX=NULL; FI_PR' +
        'OCES=NULL; COORDINADOR=NULL;'
      ''
      '      REGISTRE = '#39'TOTAL 1'#170#39';    OBJECTIU = TOTAL1;      SUSPEND;'
      '      REGISTRE = '#39'TOTAL >1'#170#39';   OBJECTIU = TOTAL2IMES;  SUSPEND;'
      '      REGISTRE = '#39'DENOMINADOR'#39'; OBJECTIU = DENOMINADOR; SUSPEND;'
      '    END;'
      'END')
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
    Modi = False
    Left = 26
    Top = 128
  end
  object Bea: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Bea'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA     INTEGER,'
      '         DATA_NAIX    DATE,'
      '         DATA_LESIO   DATE,'
      '         SEXE         CHAR(1),'
      '         ETIOLOGIA    VARCHAR(255),'
      '         GLASGOW      SMALLINT,'
      '         DIES         INTEGER,'
      '         FIM_ALTA     CHAR(15)'
      '         )'
      'AS'
      ' DECLARE VARIABLE PROCES INTEGER;'
      'BEGIN'
      ''
      
        '    /* Cap d'#39'aquestes hist'#242'ries t'#233' m'#233's d'#39'una lessi'#243' successiva p' +
        'er lo que puc agafar directament la de FILIACIO */'
      
        '    FOR SELECT f.num_hist, f.fecha_nac, f.data_lessio, f.sexo, c' +
        '.n_icd, f.glasgow'
      '    from filiacio f'
      '    left join codiicd c on f.c_etiologia = c.c_icd'
      '    where f.num_hist'
      
        '    IN (19610,16081,16136,17306,17398,16538,17752,18136,18254,18' +
        '789,18996,19221,19445,19491,17846,18702,19406,19499,15408,'
      
        '        19931,18674,17130,19104,15349,16081,16244,16204,18389,16' +
        '934,17315,19211,16282,16240,16104,15945,15680,18651,16642,16629)'
      '    ORDER BY F.NUM_HIST'
      
        '    INTO :HISTORIA, :DATA_NAIX, :DATA_LESIO, :SEXE, :ETIOLOGIA, ' +
        ':GLASGOW'
      '    DO BEGIN'
      '        DIES=0;'
      '        FIM_ALTA=0;'
      '        '
      '        /* Hem de sumar els dies d'#39'ingr'#233's del proc'#233's */'
      '        SELECT T.C_PROCES FROM TRACTAMENTS T'
      
        '        JOIN DRETSMOTIU D ON T.C_MOTIU=D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      '        WHERE T.C_HISTORIA=:HISTORIA AND T.C_PRESTACIO='#39'1004'#39
      '        ORDER BY T.C_PROCES DESC ROWS 1'
      '        INTO :PROCES;'
      '        '
      
        '        SELECT SUM(T.DATA_ALTA - T.DATA_INGRES) FROM TRACTAMENTS' +
        ' T'
      
        '        JOIN DRETSMOTIU D ON T.C_MOTIU=D.C_MOTIU AND D.C_DRET ='#39 +
        'X1'#39
      '        WHERE T.C_HISTORIA=:HISTORIA AND T.C_PRESTACIO='#39'1004'#39
      '        AND   T.C_PROCES=:PROCES'
      '        INTO :DIES;'
      '        '
      '        SELECT L.D_ITEM FROM ESCALESLIN L'
      
        '        JOIN ESCALESCAP C ON L.CLAU=C.CLAU AND C.C_ESCALA=1 AND ' +
        'C.C_HISTORIA=:HISTORIA'
      '        WHERE L.C_ITEM=28'
      '        ORDER BY C.DATA DESC ROWS 1'
      '        INTO :FIM_ALTA;'
      ''
      '        SUSPEND;'
      '    END;'
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
    Left = 776
    Top = 16
  end
  object Llit: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Llit'
    ForceNombreDB = False
    Body.Strings = (
      '(HISTORIA INTEGER, DATA DATE)'
      'RETURNS (LLIT VARCHAR(3),'
      '         HC   INTEGER)'
      'AS'
      ' DECLARE VARIABLE LLIT_AUX VARCHAR(3);'
      ' DECLARE VARIABLE DATAINGR DATE;'
      ' DECLARE VARIABLE DATAALTA DATE;'
      'BEGIN'
      
        '    /* Tornar el llit on estava el pacient donat a la data donad' +
        'a */'
      '    HC = :HISTORIA;'
      '    LLIT = NULL;'
      '    '
      '    /* Recuperem el del tractament el dia donat */'
      '    SELECT C_LLIT, DATA_INGRES, DATA_ALTA FROM TRACTAMENTS'
      '    WHERE C_HISTORIA = :HISTORIA AND C_LLIT IS NOT NULL'
      
        '    AND (DATA_INGRES <= :DATA) AND (DATA_ALTA IS NULL OR DATA_AL' +
        'TA>=F_SOLOFECHA(:DATA))'
      '    INTO :LLIT, :DATAINGR, :DATAALTA;'
      ''
      ''
      
        '    /* Mirem si hi ha algun canvi de llit enregistrat Nom'#233's en e' +
        'l cas en que el pacient estigu'#233's ingressat */'
      '    IF (LLIT IS NOT NULL) THEN'
      '    BEGIN'
      '      LLIT_AUX = NULL;'
      '      SELECT LLIT_ANTIC FROM LOGCANVISLLIT'
      '      WHERE C_HISTORIA = :HISTORIA'
      '      AND   DATA > :DATA AND DATA >= :DATAINGR'
      
        '      AND   (DATA <= F_SOLOFECHA(:DATAALTA) OR :DATAALTA IS NULL' +
        ')'
      '      ORDER BY DATA'
      '      ROWS 1'
      '      INTO :LLIT_AUX;'
      '    '
      '      IF (LLIT_AUX IS NOT NULL) THEN LLIT = LLIT_AUX;'
      '    END;'
      ''
      '    SUSPEND;'
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
    Left = 328
    Top = 16
  end
  object JCI_SP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'JCI_SP'
    ForceNombreDB = False
    Body.Strings = (
      '(ID INTEGER, DATAI DATE, DATAF DATE)'
      'RETURNS (TITOL       VARCHAR(60),'
      '         TOTAL       INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE NUMERADOR   INTEGER;'
      '  DECLARE VARIABLE DENOMINADOR INTEGER;'
      '  DECLARE VARIABLE TRACTAMENT  INTEGER;'
      '  DECLARE VARIABLE HISTORIA    INTEGER;'
      '  DECLARE VARIABLE NOCUMPLEIX  SMALLINT;'
      '  DECLARE VARIABLE CONTA       INTEGER;'
      '  DECLARE VARIABLE DATA_INGRES DATE;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      '  DECLARE VARIABLE DATA1       DATE;'
      '  DECLARE VARIABLE DATA2       DATE;'
      '  DECLARE VARIABLE DATAFI      DATE;'
      'BEGIN'
      '   NUMERADOR=0;'
      ''
      '   /* SP-1: RESUM Metge/essa mensual en el Curs Cl'#237'nic (CC)'
      '            DENOMINADOR: 1004 per TIR (X1) o cirurgia (X4)'
      
        '            NUMERADOR:   1004 per TIR (X1) o cirurgia (X4) que t' +
        'enen almenys 1 anotaci'#243' al mes del grup ME,RE amb QUEES=11'
      
        '     Criteris d'#39'exclusi'#243' (tant per numerador com per denominador' +
        '): pacients amb estades inferiors a 30 dies                 */'
      '   IF (ID=1) THEN'
      '   BEGIN'
      
        '       FOR SELECT T.C_TRACTAMENT, T.DATA_INGRES, T.DATA_ALTA, T.' +
        'C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN ('#39'X1'#39','#39'X4'#39')'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND  (T.DATA_ALTA - T.DATA_INGRES >= 30)'
      '       INTO :TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :HISTORIA'
      '       DO BEGIN'
      
        '           /* Ha de tenir mnim una anotaci'#243' QUEEES=11 al mes en ' +
        'el per'#237'ode indicat */'
      '           IF (DATA_INGRES>DATAI)    THEN DATA1=DATA_INGRES;'
      '                                     ELSE DATA1=DATAI;'
      ''
      '           IF (DATA_ALTA IS NULL)    THEN DATAFI=DATAF;'
      '           ELSE IF (DATA_ALTA<DATAF) THEN DATAFI=DATA_ALTA;'
      '                                     ELSE DATAFI=DATAF;'
      ''
      '           DATA2=DATA1+30;'
      '           NOCUMPLEIX=0; CONTA=0;'
      '           WHILE ((DATA2<=DATAFI) AND (NOCUMPLEIX=0)) DO'
      '           BEGIN'
      '               SELECT COUNT(*) FROM HISTORIA'
      
        '               WHERE C_TRACTAMENT=:TRACTAMENT AND QUEES=11 AND C' +
        '_GRUP IN('#39'ME'#39','#39'RE'#39')'
      '               AND DATA BETWEEN :DATA1 AND :DATA2||'#39' 23:59:59'#39
      '               INTO :CONTA;'
      ''
      '               IF (CONTA=0) THEN NOCUMPLEIX=1;'
      ''
      '               DATA1=DATA1+30;'
      '               DATA2=DATA1+30;'
      '           END'
      '           /* '#250'ltim per'#237'ode desde DATA1 a DATAFI */'
      '           SELECT COUNT(*) FROM HISTORIA'
      
        '           WHERE C_TRACTAMENT=:TRACTAMENT AND QUEES=11 AND C_GRU' +
        'P IN('#39'ME'#39','#39'RE'#39')'
      '           AND DATA BETWEEN :DATA1 AND :DATAFI||'#39' 23:59:59'#39
      '           INTO :CONTA;'
      ''
      '           IF (CONTA=0) THEN NOCUMPLEIX=1;'
      ''
      '           IF (NOCUMPLEIX=0) THEN'
      '           BEGIN'
      '               NUMERADOR=NUMERADOR+1;'
      
        '               TITOL='#39'Numerador detall'#39'; TOTAL=HISTORIA; SUSPEND' +
        ';'
      '           END;'
      '           ELSE BEGIN'
      
        '               TITOL='#39'Pacient sense anotacions mensuals de metge' +
        's'#39'; TOTAL=HISTORIA; SUSPEND;'
      '           END;'
      '       END'
      '       TITOL='#39'Numerador'#39'; TOTAL=NUMERADOR; SUSPEND;'
      ''
      '       TITOL='#39'Denominador'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN ('#39'X1'#39','#39'X4'#39')'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND  (T.DATA_ALTA - T.DATA_INGRES >= 30)'
      '       INTO :DENOMINADOR;'
      '       TOTAL=DENOMINADOR;'
      '       SUSPEND;'
      '       '
      '       TITOL='#39'Denominador detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN ('#39'X1'#39','#39'X4'#39')'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND  (T.DATA_ALTA - T.DATA_INGRES >= 30)'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '   END'
      ''
      '   /* SP-2: RESUM Infermeria mensual en el Curs Cl'#237'nic (CC)'
      '            DENOMINADOR: 1004 per TIR (X1) o cirurgia (X4)'
      
        '            NUMERADOR:   1004 per TIR (X1) o cirurgia (X4) que t' +
        'enen almenys 1 anotaci'#243' al mes del grup UN,AI amb QUEES=11'
      
        '     Criteris d'#39'exclusi'#243' (tant per numerador com per denominador' +
        '): pacients amb estades inferiors a 30 dies                 */'
      '   IF (ID=2) THEN'
      '   BEGIN'
      
        '       FOR SELECT T.C_TRACTAMENT, T.DATA_INGRES, T.DATA_ALTA, T.' +
        'C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN ('#39'X1'#39','#39'X4'#39')'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND  (T.DATA_ALTA - T.DATA_INGRES >= 30)'
      '       INTO :TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :HISTORIA'
      '       DO BEGIN'
      
        '           /* Ha de tenir mnim una anotaci'#243' QUEEES=11 al mes en ' +
        'el per'#237'ode indicat */'
      '           IF (DATA_INGRES>DATAI)    THEN DATA1=DATA_INGRES;'
      '                                     ELSE DATA1=DATAI;'
      ''
      '           IF (DATA_ALTA IS NULL)    THEN DATAFI=DATAF;'
      '           ELSE IF (DATA_ALTA<DATAF) THEN DATAFI=DATA_ALTA;'
      '                                     ELSE DATAFI=DATAF;'
      ''
      '           DATA2=DATA1+30;'
      '           NOCUMPLEIX=0; CONTA=0;'
      '           WHILE ((DATA2<=DATAFI) AND (NOCUMPLEIX=0)) DO'
      '           BEGIN'
      '               SELECT COUNT(*) FROM HISTORIA'
      
        '               WHERE C_TRACTAMENT=:TRACTAMENT AND QUEES=11 AND C' +
        '_GRUP IN('#39'UN'#39','#39'AI'#39')'
      '               AND DATA BETWEEN :DATA1 AND :DATA2||'#39' 23:59:59'#39
      '               INTO :CONTA;'
      ''
      '               IF (CONTA=0) THEN NOCUMPLEIX=1;'
      ''
      '               DATA1=DATA1+30;'
      '               DATA2=DATA1+30;'
      '           END'
      ''
      '           /* '#250'ltim per'#237'ode desde DATA1 a DATAFI */'
      '           SELECT COUNT(*) FROM HISTORIA'
      
        '           WHERE C_TRACTAMENT=:TRACTAMENT AND QUEES=11 AND C_GRU' +
        'P IN('#39'UN'#39','#39'AI'#39')'
      '           AND DATA BETWEEN :DATA1 AND :DATAFI||'#39' 23:59:59'#39
      '           INTO :CONTA;'
      ''
      '           IF (CONTA=0) THEN NOCUMPLEIX=1;'
      ''
      '           IF (NOCUMPLEIX=0) THEN'
      '           BEGIN'
      '               NUMERADOR=NUMERADOR+1;'
      
        '               TITOL='#39'Numerador detall'#39'; TOTAL=HISTORIA; SUSPEND' +
        ';'
      '           END;'
      '           ELSE BEGIN'
      
        '               TITOL='#39'Pacient sense anotacions mensuals de metge' +
        's'#39'; TOTAL=HISTORIA; SUSPEND;'
      '           END'
      '       END'
      '       TITOL='#39'Numerador'#39'; TOTAL=NUMERADOR; SUSPEND;'
      ''
      '       TITOL='#39'Denominador'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN ('#39'X1'#39','#39'X4'#39')'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND  (T.DATA_ALTA - T.DATA_INGRES >= 30)'
      '       INTO :DENOMINADOR;'
      '       TOTAL=DENOMINADOR;'
      '       SUSPEND;'
      '       '
      '       TITOL='#39'Denominador detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN ('#39'X1'#39','#39'X4'#39')'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND  (T.DATA_ALTA - T.DATA_INGRES >= 30)'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '   END'
      ''
      '   /* SP-4: PLANIFICACI'#211' DEL PROC'#201'S NEUROREHABILITADOR - Agenda'
      '            DENOMINADOR: 1004 per TIR'
      
        '            NUMERADOR:   1004 per TIR sense cap activitat a l'#39'ag' +
        'endapacient'
      '            DENOMINADOR: 1004 per TIR ictus (unitatm = 14..18)'
      
        '            NUMERADOR:   1004 per TIR ictus (unitatm = 14..18) s' +
        'ense cap activitat a l'#39'agendapacient     */'
      '   IF (ID=4) THEN'
      '   BEGIN'
      '       TITOL='#39'Numerador'#39';'
      '       SELECT COUNT(DISTINCT T.C_HISTORIA) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       LEFT JOIN AGENDAPACIENT A ON T.C_HISTORIA=A.C_HISTORIA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   A.ID IS NULL'
      '       INTO :NUMERADOR;'
      '       TOTAL=NUMERADOR;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Denominador'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :DENOMINADOR;'
      '       TOTAL=DENOMINADOR;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Denominador detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '       '
      '       IF (NUMERADOR > 0) THEN'
      '       BEGIN'
      
        '           TITOL='#39'Numerador detall - pacients sense agenda'#39'; TOT' +
        'AL=NULL; SUSPEND;'
      
        '           FOR SELECT DISTINCT '#39'D.Ingr'#233's '#39'||T.DATA_INGRES,T.C_HI' +
        'STORIA FROM TRACTAMENTS T'
      
        '           JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_D' +
        'RET='#39'X1'#39
      
        '           LEFT JOIN AGENDAPACIENT A ON T.C_HISTORIA=A.C_HISTORI' +
        'A'
      '           WHERE T.C_PRESTACIO='#39'1004'#39
      '           AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '           AND   A.ID IS NULL'
      '           INTO :TITOL, :TOTAL'
      '           DO BEGIN'
      '               SUSPEND;'
      '           END'
      '       END'
      ''
      
        '       TITOL='#39'-------------------------------------'#39'; TOTAL=NULL' +
        '; SUSPEND;'
      ''
      '       TITOL='#39'Numerador ICTUS'#39';'
      '       SELECT COUNT(DISTINCT T.C_HISTORIA) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST AND F.C_UNI' +
        'TATMEDICA IN (14,15,16,17,18)'
      '       LEFT JOIN AGENDAPACIENT A ON T.C_HISTORIA=A.C_HISTORIA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   A.ID IS NULL'
      '       INTO :NUMERADOR;'
      '       TOTAL=NUMERADOR;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Denominador ICTUS'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST AND F.C_UNI' +
        'TATMEDICA IN (14,15,16,17,18)'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :DENOMINADOR;'
      '       TOTAL=DENOMINADOR;'
      '       SUSPEND;'
      '       '
      '       TITOL='#39'Denominador ICTUS detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST AND F.C_UNI' +
        'TATMEDICA IN (14,15,16,17,18)'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      '       IF (NUMERADOR > 0) THEN'
      '       BEGIN'
      
        '           TITOL='#39'Numerador ICTUS detall - pacients sense agenda' +
        #39'; TOTAL=NULL; SUSPEND;'
      
        '           FOR SELECT DISTINCT '#39'   D.Ingr'#233's '#39'||T.DATA_INGRES,T.C' +
        '_HISTORIA FROM TRACTAMENTS T'
      
        '           JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_D' +
        'RET='#39'X1'#39
      
        '           JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST AND F.C' +
        '_UNITATMEDICA IN (14,15,16,17,18)'
      
        '           LEFT JOIN AGENDAPACIENT A ON T.C_HISTORIA=A.C_HISTORI' +
        'A'
      '           WHERE T.C_PRESTACIO='#39'1004'#39
      '           AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '           AND   A.ID IS NULL'
      '           INTO :TITOL, :TOTAL'
      '           DO BEGIN'
      '               SUSPEND;'
      '           END'
      '       END'
      '   END'
      ''
      '   /* SP-5: TASQUES - Consten les tasques d'#39'infermeria'
      '            DENOMINADOR: 1004 per TIR (X1) i cirurgia (X4)'
      
        '            NUMERADOR:   1004 per TIR (X1) i cirurgia (X4) sense' +
        ' cap tasca d'#39'infermeria INFERTASQUES */'
      '   IF (ID=5) THEN'
      '   BEGIN'
      '       TITOL='#39'Numerador'#39';'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN('#39'X1'#39','#39'X4'#39')'
      '       LEFT JOIN INFERTASQUES I ON T.C_TRACTAMENT=I.C_TRACTAMENT'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   I.C_TASCA IS NULL'
      '       INTO :NUMERADOR;'
      '       TOTAL=NUMERADOR;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Denominador'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN('#39'X1'#39','#39'X4'#39')'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :DENOMINADOR;'
      '       TOTAL=DENOMINADOR;'
      '       SUSPEND;'
      '       '
      '       TITOL='#39'Denominador detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET ' +
        'IN('#39'X1'#39','#39'X4'#39')'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      '       IF (NUMERADOR > 0) THEN'
      '       BEGIN'
      
        '           TITOL='#39'Numerador detall - pacients sense tasques d'#39#39'i' +
        'nfermeria'#39'; TOTAL=NULL; SUSPEND;'
      
        '           FOR SELECT DISTINCT '#39'D.Ingr'#233's '#39'||T.DATA_INGRES,T.C_HI' +
        'STORIA FROM TRACTAMENTS T'
      
        '           JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_D' +
        'RET IN('#39'X1'#39','#39'X4'#39')'
      
        '           LEFT JOIN INFERTASQUES I ON T.C_TRACTAMENT=I.C_TRACTA' +
        'MENT'
      '           WHERE T.C_PRESTACIO='#39'1004'#39
      '           AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '           AND   I.C_TASCA IS NULL'
      '           INTO :TITOL, :TOTAL'
      '           DO BEGIN'
      '               SUSPEND;'
      '           END'
      '       END'
      '   END'
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
    Left = 336
    Top = 192
  end
  object JCI_EP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'JCI_EP'
    ForceNombreDB = False
    Body.Strings = (
      '(ID INTEGER, DATAI DATE, DATAF DATE)'
      'RETURNS (TITOL     VARCHAR(125),'
      '         TOTAL     INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'BEGIN'
      '   TOTAL=0; C_TRACTAMENT=NULL;'
      ''
      
        '   /* EP-1: EDUCACI'#211' -  Avaluaci'#243' de necessitats per a realitzar' +
        ' educaci'#243' sanitaria'
      '                        TOTAL ALTES PER TIR: 1004 per TIR (X1)'
      
        '                        TOTAL EDUCACIO SANITARIA: 1004 per TIR (' +
        'X1) alta en el per'#237'ode indicat amb com a m'#237'nim un parametre a ED' +
        'UCAP'
      '                                                  no anullat */'
      '   IF (ID=1) THEN'
      '   BEGIN'
      '       TITOL='#39'Total altes TIR'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Altes TIR amb educaci'#243' sanit'#224'ria'#39';'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN EDUCAP E      ON T.C_HISTORIA=E.C_HISTORIA AND E.EST' +
        'AT>=0 AND E.DATA_DETECCIO <= T.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Total altes TIR detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '       '
      '       TITOL='#39'Altes TIR amb educaci'#243' sanit'#224'ria detall'#39';'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN EDUCAP E      ON T.C_HISTORIA=E.C_HISTORIA AND E.EST' +
        'AT>=0 AND E.DATA_DETECCIO <= T.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      
        '       TITOL='#39'--- Detall dels que no tenen educaci'#243' ------------' +
        '-----------------------------'#39'; TOTAL=NULL; SUSPEND;'
      '       TITOL='#39'Pacient sense educaci'#243#39'; C_TRACTAMENT=NULL;'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      
        '       JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DR' +
        'ET='#39'X1'#39
      
        '       LEFT JOIN EDUCAP E    ON T.C_HISTORIA=E.C_HISTORIA AND E.' +
        'ESTAT>=0 AND E.DATA_DETECCIO <= T.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   E.C_EDUCAP IS NULL'
      '       ORDER BY T.C_HISTORIA'
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END'
      '   END'
      ''
      '   /* EP-2: EDUCACI'#211' -  Inclou educaci'#243' sobre medicaci'#243
      
        '                        TOTAL ALTES TIR: 1004 per TIR que marxen' +
        ' amb SINTROM (c_prod=605873, 654177, 999565) a l'#39'alta'
      
        '                                         i.e. data_caducitat = d' +
        'ata_alta 23:55:00'
      
        '                        TOTAL: 1004 per TIR que marxen amb SINTR' +
        'OM (c_prod=605873, 654177, 999565) a l'#39'alta'
      
        '                               i.e. data_caducitat = data_alta 2' +
        '3:55:00'
      
        '                               Que tenen document CODICAMPS.TIPU' +
        'SCODI='#39'DOCSINFER'#39' amb C_CODI=7-Informaci'#243' de medicaments  */'
      '   IF (ID=2) THEN'
      '   BEGIN'
      '       TITOL='#39'Total altes TIR amb SINTROM a l'#39#39'alta'#39';'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT AN' +
        'D O.C_PRODUCTE IN(605873,654177,999565)'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   O.DATA_SUSPENSIO = T.DATA_ALTA||'#39' 23:55:00'#39
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      
        '       TITOL='#39'Total altes TIR amb SINTROM a l'#39#39'alta amb educaci'#243 +
        #39';'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT AN' +
        'D O.C_PRODUCTE IN(605873,654177,999565)'
      
        '       JOIN DOCSINFER DI ON T.C_TRACTAMENT=DI.C_TRACTAMENT AND D' +
        'I.C_DOC=7'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   O.DATA_SUSPENSIO = T.DATA_ALTA||'#39' 23:55:00'#39
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Total altes TIR amb SINTROM a l'#39#39'alta detall'#39';'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT AN' +
        'D O.C_PRODUCTE IN(605873,654177,999565)'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   O.DATA_SUSPENSIO = T.DATA_ALTA||'#39' 23:55:00'#39
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      
        '       TITOL='#39'Total altes TIR amb SINTROM a l'#39#39'alta amb educaci'#243 +
        ' detall'#39';'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT AN' +
        'D O.C_PRODUCTE IN(605873,654177,999565)'
      
        '       JOIN DOCSINFER DI ON T.C_TRACTAMENT=DI.C_TRACTAMENT AND D' +
        'I.C_DOC=7'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   O.DATA_SUSPENSIO = T.DATA_ALTA||'#39' 23:55:00'#39
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      
        '       TITOL='#39'--- Detall dels que no tenen educaci'#243' ------------' +
        '-----------------------------'#39'; TOTAL=NULL; SUSPEND;'
      '       TITOL='#39'Pacient sense educaci'#243#39';'
      '       FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DR' +
        'ET='#39'X1'#39
      
        '       JOIN ORDRESMEDIQUES O ON T.C_TRACTAMENT=O.C_TRACTAMENT AN' +
        'D O.C_PRODUCTE IN(605873,654177,999565)'
      
        '       LEFT JOIN DOCSINFER DI ON T.C_TRACTAMENT=DI.C_TRACTAMENT ' +
        'AND DI.C_DOC=7'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   O.DATA_SUSPENSIO = T.DATA_ALTA||'#39' 23:55:00'#39
      '       AND   DI.ID IS NULL'
      '       ORDER BY T.C_HISTORIA'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END'
      '   END'
      ''
      '   /* EP-3: EDUCACI'#211' -  Inclou educaci'#243' sobre equipament m'#232'dic'
      '                        TOTAL INGRESSATS PER TIR: 1004 per TIR'
      
        '                        TOTAL: 1004 per TIR amb VM a l'#39'alta que ' +
        'tinguin EDUCAP.C_PARAM=205,206 per estat TIPUSCODI = '#39'EDU_ESTAT'#39 +
        ' */'
      '   IF (ID=3) THEN'
      '   BEGIN'
      '       TITOL='#39'Total altes TIR amb VM a l'#39#39'alta'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN REGISTRESINFER R ON T.C_TRACTAMENT=R.C_TRACTAMENT AN' +
        'D R.T_REG=3 AND R.C_MOTIU=7  /* ventilaci mecnica a l'#39'alta  */'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Altes TIR amb VM a l'#39#39'alta amb educaci'#243#39';'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DR' +
        'ET='#39'X1'#39
      
        '       JOIN REGISTRESINFER R ON T.C_TRACTAMENT=R.C_TRACTAMENT AN' +
        'D R.T_REG=3 AND R.C_MOTIU=7  /* ventilaci mecnica a l'#39'alta  */'
      
        '       JOIN EDUCAP E         ON T.C_HISTORIA=E.C_HISTORIA AND E.' +
        'C_PARAM IN (205,206,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T' +
        '.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      '       '
      '       TITOL='#39'Total altes TIR amb VM a l'#39#39'alta detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN REGISTRESINFER R ON T.C_TRACTAMENT=R.C_TRACTAMENT AN' +
        'D R.T_REG=3 AND R.C_MOTIU=7  /* ventilaci mecnica a l'#39'alta  */'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      '       TITOL='#39'Altes TIR amb VM a l'#39#39'alta amb educaci'#243' detall'#39';'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      
        '       JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DR' +
        'ET='#39'X1'#39
      
        '       JOIN REGISTRESINFER R ON T.C_TRACTAMENT=R.C_TRACTAMENT AN' +
        'D R.T_REG=3 AND R.C_MOTIU=7  /* ventilaci mecnica a l'#39'alta  */'
      
        '       JOIN EDUCAP E         ON T.C_HISTORIA=E.C_HISTORIA AND E.' +
        'C_PARAM IN (205,206,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T' +
        '.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      
        '       TITOL='#39'--- Detall dels que no tenen educaci'#243' ------------' +
        '-----------------------------'#39'; TOTAL=NULL; SUSPEND;'
      '       TITOL='#39'Pacient sense educaci'#243#39';'
      '       FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DR' +
        'ET='#39'X1'#39
      
        '       JOIN REGISTRESINFER R ON T.C_TRACTAMENT=R.C_TRACTAMENT AN' +
        'D R.T_REG=3 AND R.C_MOTIU=7'
      
        '       LEFT JOIN EDUCAP E    ON T.C_HISTORIA=E.C_HISTORIA AND E.' +
        'C_PARAM IN (205,206,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T' +
        '.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   E.C_EDUCAP IS NULL'
      '       ORDER BY T.C_HISTORIA'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END'
      '   END'
      ''
      '   /* EP-7 EDUCACI'#211'- Prevenci'#243' i control de la infecci'#243
      '                     TOTAL ALTES PER TIR: 1004 per TIR'
      
        '                     TOTAL 1004 per TIR amb EDUCAP.c_param=268,2' +
        '99 per estat TIPUSCODI = '#39'EDU_ESTAT'#39' */'
      '   IF (ID=7) THEN'
      '   BEGIN'
      '       TITOL='#39'Total altes TIR'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN  DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET' +
        '='#39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Altes TIR amb prevenci'#243' i control infecci'#243#39';'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DR' +
        'ET='#39'X1'#39
      
        '       JOIN EDUCAP E         ON T.C_HISTORIA=E.C_HISTORIA AND E.' +
        'C_PARAM IN (268,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T.DAT' +
        'A_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      '       '
      '       TITOL='#39'Total altes TIR detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN  DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET' +
        '='#39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      
        '       TITOL='#39'Altes TIR amb prevenci'#243' i control infecci'#243' detall'#39 +
        ';'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      
        '       JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DR' +
        'ET='#39'X1'#39
      
        '       JOIN EDUCAP E         ON T.C_HISTORIA=E.C_HISTORIA AND E.' +
        'C_PARAM IN (268,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T.DAT' +
        'A_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      
        '       TITOL='#39'--- Detall dels que no tenen educaci'#243' ------------' +
        '-----------------------------'#39'; TOTAL=NULL; SUSPEND;'
      '       TITOL='#39'Pacient sense educaci'#243#39';'
      '       FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM  ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET' +
        '='#39'X1'#39
      
        '       LEFT JOIN EDUCAP E  ON T.C_HISTORIA=E.C_HISTORIA AND E.C_' +
        'PARAM IN (268,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T.DATA_' +
        'ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   E.C_EDUCAP IS NULL'
      '       ORDER BY T.C_HISTORIA'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END'
      '   END'
      ''
      '   /* EP-8 EDUCACI'#211'- Prevenci'#243' de caigudes'
      '           TOTAL ALTES PER TIR: 1004 per TIR'
      
        '           TOTAL 1004 per TIR amb EDUCAP.c_param=264,299 per est' +
        'at TIPUSCODI = '#39'EDU_ESTAT'#39' */'
      '   IF (ID=8) THEN'
      '   BEGIN'
      '       TITOL='#39'Total altes TIR'#39';'
      '       SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Altes TIR amb prevenci'#243' caigudes'#39';'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM  ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET' +
        '='#39'X1'#39
      
        '       JOIN EDUCAP E       ON T.C_HISTORIA=E.C_HISTORIA AND E.C_' +
        'PARAM IN (264,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T.DATA_' +
        'ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      '       '
      '       TITOL='#39'Total altes TIR detall'#39';'
      '       FOR SELECT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      '       TITOL='#39'Altes TIR amb prevenci'#243' caigudes detall'#39';'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      
        '       JOIN DRETSMOTIU DM  ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET' +
        '='#39'X1'#39
      
        '       JOIN EDUCAP E       ON T.C_HISTORIA=E.C_HISTORIA AND E.C_' +
        'PARAM IN (264,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T.DATA_' +
        'ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      ''
      
        '       TITOL='#39'--- Detall dels que no tenen educaci'#243' ------------' +
        '-----------------------------'#39'; TOTAL=NULL; SUSPEND;'
      '       TITOL='#39'Pacient sense educaci'#243#39';'
      '       FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       LEFT JOIN EDUCAP E ON T.C_HISTORIA=E.C_HISTORIA AND E.C_P' +
        'ARAM IN (264,299) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= T.DATA_A' +
        'LTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   E.C_EDUCAP IS NULL'
      '       ORDER BY T.C_HISTORIA'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END'
      '   END'
      ''
      '   /* EP-9 EDUCACI'#211'- al pacient amb ICTUS'
      
        '           TOTAL ALTES PER TIR ICTUS: 1004 ingressats per TIR qu' +
        'e siguin ICTUS (UNITATM.C_GRUP noms D)'
      
        '           TOTAL INGRESSAT TIR ICTUS 1a VEGADA que tinguin docum' +
        'ent:'
      
        '                      '#39'donar informaci'#243' del DC, les seves reperc' +
        'ussions i pautes d'#39'intervenci'#243' EDUCAP.C_PARAM=409'
      
        '                      '#39'informaci'#243' sobre la malaltia'#39' EDUCAP.C_PA' +
        'RAM=602,699'
      
        '                      '#39'programa educatiu grupal'#39' EDUCAP.C_PARAM=' +
        '610,699                                               */'
      '   IF (ID=9) THEN'
      '   BEGIN'
      '       TITOL='#39'Total altes TIR ICTUS'#39';'
      
        '       /* Volem comptar les altes de 1004 per TIR de pacients IC' +
        'TUS per noms els que s'#243'n el primer ingr'#233's */'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      '       JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST'
      
        '       JOIN UNITATM    U  ON F.C_UNITATMEDICA=U.C_UNITATM AND U.' +
        'C_GRUP='#39'D'#39
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   (SELECT COUNT(*) FROM TRACTAMENTS T2'
      
        '              WHERE T2.C_HISTORIA = T.C_HISTORIA AND T2.C_PRESTA' +
        'CIO='#39'1004'#39' AND T2.DATA_INGRES<T.DATA_INGRES)=0'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Total altes TIR 1er ICTUS amb EDUCACI'#211#39';'
      '       SELECT COUNT(DISTINCT T.C_TRACTAMENT) FROM TRACTAMENTS T'
      '       JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST'
      
        '       JOIN UNITATM    U  ON F.C_UNITATMEDICA=U.C_UNITATM AND U.' +
        'C_GRUP='#39'D'#39
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN EDUCAP E      ON T.C_HISTORIA=E.C_HISTORIA AND E.C_P' +
        'ARAM IN (409,602,610,699) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= ' +
        'T.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   (SELECT COUNT(*) FROM TRACTAMENTS T2'
      
        '              WHERE T2.C_HISTORIA = T.C_HISTORIA AND T2.C_PRESTA' +
        'CIO='#39'1004'#39' AND T2.DATA_INGRES<T.DATA_INGRES)=0'
      '       INTO :TOTAL;'
      '       SUSPEND;'
      ''
      '       TITOL='#39'Total altes TIR ICTUS detall'#39';'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      '       JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST'
      
        '       JOIN UNITATM    U  ON F.C_UNITATMEDICA=U.C_UNITATM AND U.' +
        'C_GRUP='#39'D'#39
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   (SELECT COUNT(*) FROM TRACTAMENTS T2'
      
        '              WHERE T2.C_HISTORIA = T.C_HISTORIA AND T2.C_PRESTA' +
        'CIO='#39'1004'#39' AND T2.DATA_INGRES<T.DATA_INGRES)=0'
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '       '
      '       TITOL='#39'Total altes TIR 1er ICTUS amb EDUCACI'#211' detall'#39';'
      
        '       FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA FROM TRA' +
        'CTAMENTS T'
      '       JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST'
      
        '       JOIN UNITATM    U  ON F.C_UNITATMEDICA=U.C_UNITATM AND U.' +
        'C_GRUP='#39'D'#39
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       JOIN EDUCAP E      ON T.C_HISTORIA=E.C_HISTORIA AND E.C_P' +
        'ARAM IN (409,602,610,699) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= ' +
        'T.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   (SELECT COUNT(*) FROM TRACTAMENTS T2'
      
        '              WHERE T2.C_HISTORIA = T.C_HISTORIA AND T2.C_PRESTA' +
        'CIO='#39'1004'#39' AND T2.DATA_INGRES<T.DATA_INGRES)=0'
      '       INTO :C_TRACTAMENT, :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '       '
      
        '       TITOL='#39'--- Detall dels que no tenen educaci'#243' ------------' +
        '-----------------------------'#39'; TOTAL=NULL; SUSPEND;'
      '       TITOL='#39'Pacient sense educaci'#243#39';'
      '       FOR SELECT DISTINCT T.C_HISTORIA FROM TRACTAMENTS T'
      '       JOIN FILIACIO   F  ON T.C_HISTORIA=F.NUM_HIST'
      
        '       JOIN UNITATM    U  ON F.C_UNITATMEDICA=U.C_UNITATM AND U.' +
        'C_GRUP IN('#39'D'#39')'
      
        '       JOIN DRETSMOTIU DM ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRET=' +
        #39'X1'#39
      
        '       LEFT JOIN EDUCAP E ON T.C_HISTORIA=E.C_HISTORIA AND E.C_P' +
        'ARAM IN (409,602,610,699) AND E.ESTAT>=0 AND E.DATA_DETECCIO <= ' +
        'T.DATA_ALTA'
      '       WHERE T.C_PRESTACIO='#39'1004'#39
      '       AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '       AND   (SELECT COUNT(*) FROM TRACTAMENTS T2'
      
        '              WHERE T2.C_HISTORIA = T.C_HISTORIA AND T2.C_PRESTA' +
        'CIO='#39'1004'#39' AND T2.DATA_INGRES<T.DATA_INGRES)=0'
      '       AND   E.C_EDUCAP IS NULL'
      '       ORDER BY T.C_HISTORIA'
      '       INTO :TOTAL'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END'
      '   END'
      ''
      'END'
      '')
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
    Left = 384
    Top = 192
  end
  object JOINT2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'JOINT2'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO SMALLINT, DATAI TIMESTAMP, DATAF TIMESTAMP)'
      'RETURNS (TIPUS         SMALLINT,'
      '         TITOL         VARCHAR(35),'
      '         QUANTS        INTEGER,'
      '         HISTORIA      INTEGER,'
      '         TRACTAMENT    INTEGER,'
      '         SORTIDA_QUIRO DATE)'
      'AS'
      '  DECLARE VARIABLE C_INTERV     INTEGER;'
      '  DECLARE VARIABLE C_HISTORIA   INTEGER;'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '  DECLARE VARIABLE DATA_INGRES  DATE;'
      '  DECLARE VARIABLE EDAT         INTEGER;'
      '  DECLARE VARIABLE TEMPSD       DATE;'
      '  DECLARE VARIABLE DATA_DOLOR   DATE;'
      '  DECLARE VARIABLE DEN_1ADULTS  INTEGER;'
      '  DECLARE VARIABLE DEN_1INFANT  INTEGER;'
      '  DECLARE VARIABLE NUM_1ADULTS  INTEGER;'
      '  DECLARE VARIABLE NUM_1INFANT  INTEGER;'
      '  DECLARE VARIABLE DEN_2ADULTS  INTEGER;'
      '  DECLARE VARIABLE DEN_2INFANT  INTEGER;'
      '  DECLARE VARIABLE NUM_2ADULTS  INTEGER;'
      '  DECLARE VARIABLE NUM_2INFANT  INTEGER;'
      '  DECLARE VARIABLE CONTA        INTEGER;'
      '  DECLARE VARIABLE ITEMS_SI     SMALLINT;'
      '  DECLARE VARIABLE VALOR        VARCHAR(15);'
      '  DECLARE VARIABLE DATA_VALOR   DATE;'
      '  DECLARE VARIABLE DOLOR        CHAR(1);'
      '  DECLARE VARIABLE TEVALOR_S    SMALLINT;'
      '  DECLARE VARIABLE TEESCALA     SMALLINT;'
      'BEGIN'
      '  IF (OPCIO=1) THEN'
      '  BEGIN'
      '      /* DENOMINADORS:'
      
        '          1 - ADULTS   (>16) : pacients intervinguts en el per'#237'o' +
        'de indicat i amb C_ITEM=35 entrat (ja sigui S o N) durant les pr' +
        'imeres 24 hores'
      
        '                              despr'#233's de la sortida de la interv' +
        'enci'#243' - TEMPSD + CMA'#39's amb enquesta realitzada i data intervenci' +
        #243' en el per'#237'ode indicat'
      
        '                              (pacients >16anys al sortir de la ' +
        'intervenci'#243')'
      
        '          1 - INFANTIL (<=16): pacients intervinguts en el per'#237'o' +
        'de indicat i amb C_ITEM=35 entrat (ja sigui S o N) durant les pr' +
        'imeres 24 hores'
      
        '                              despr'#233's de la sortida de la interv' +
        'enci'#243' - TEMPSD + CMA'#39's amb enquesta realitzada i data intervenci' +
        #243' en el per'#237'ode indicat'
      
        '                              (pacients <=16anys al sortir de la' +
        ' intervenci'#243')'
      
        '          2 - ADULTS   (>16) : pacients intervinguts en el per'#237'o' +
        'de indicat i amb C_ITEM=35 entrat (ja sigui S o N) durant les pr' +
        'imeres 24 hores'
      
        '                              despr'#233's de la sortida de la interv' +
        'enci'#243' (pacients >16anys al sortir de la intervenci'#243')'
      
        '          2 - INFANTIL (<=16): pacients intervinguts en el per'#237'o' +
        'de indicat i amb C_ITEM=35 entrat (ja sigui S o N) durant les pr' +
        'imeres 24 hores'
      
        '                              despr'#233's de la sortida de la interv' +
        'enci'#243' - TEMPSD (pacients <=16anys al sortir de la intervenci'#243')'
      ''
      
        '         NUMERADORS:  (L'#39'edat es calcula respecte a TEMPSD - dat' +
        'a sortida de la intervenci'#243')'
      
        '          1 - ADULTS   (>16) : dels del denominador, que tinguin' +
        ' una escala EVA, CARES o NUM'#200'RICA amb valor >3. Edat> 16 + CMA a' +
        'mb enquesta amb dolor='#39'S'#39
      
        '          1 - INFANTIL (<=16): dels del denominador, que tinguin' +
        ' una escala EVA, CARES o NUM'#200'RICA amb valor >3. Edat<=16 + CMA a' +
        'mb enquesta amb dolor='#39'S'#39
      
        '              -- L'#39'escala ha d'#39'estar dins les primeres 24 hores ' +
        'despr'#233's de la sortida de la intervenci'#243' (tempsd) --'
      
        '          2 - ADULTS   (>16) : dels del denominador, que tinguin' +
        ' dues escales consecutives EVA, CARES o NUM'#200'RICA amb valor >3. E' +
        'dat> 16'
      
        '          2 - INFANTIL (<=16): dels del denominador, que tinguin' +
        ' dues escales consecutives EVA, CARES o NUM'#200'RICA amb valor >3. E' +
        'dat<=16'
      
        '              -- les dues escales han d'#39'estar dins les primeres ' +
        '24 hores despr'#233's de la sortida de la intervenci'#243' (tempsd) --'
      ''
      
        '         Exclusions : pacients amb C_ITEM=35 valor S que no tene' +
        'n entrada escala (EVA, CARES o NUM'#200'RICA) pq s'#243'n el seu dolor no ' +
        #233's valorable degut a la'
      '                      naturalesa del pacient'
      ''
      '      */'
      ''
      
        '      DEN_1ADULTS=0; DEN_1INFANT=0; DEN_2ADULTS=0; DEN_2INFANT=0' +
        '; NUM_1ADULTS=0; NUM_1INFANT=0; NUM_2ADULTS=0; NUM_2INFANT=0;'
      
        '      FOR SELECT B.C_INTERV, T.C_HISTORIA, T.C_TRACTAMENT, T.DAT' +
        'A_INGRES, F_DIVISA((B.TEMPSD - F.FECHA_NAC)/365,0), B.TEMPSD, MI' +
        'N(I.DATA)'
      '      FROM BQUIRURGIC B'
      '      JOIN TRACTAMENTS T   ON B.C_TRACTAMENT=T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '      JOIN INFERDADES I    ON T.C_TRACTAMENT=I.C_TRACTAMENT AND ' +
        'I.C_ITEM=35 AND I.ANULAT="N" AND I.DATA_VALOR BETWEEN B.TEMPSD A' +
        'ND B.TEMPSD+1'
      
        '      WHERE B.DATA_ENTRADA BETWEEN :DATAI AND :DATAF||'#39' 23:59:59' +
        #39
      
        '      GROUP BY B.C_INTERV, T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_' +
        'INGRES, B.TEMPSD, F.FECHA_NAC'
      
        '      INTO :C_INTERV, :C_HISTORIA, :C_TRACTAMENT, :DATA_INGRES, ' +
        ':EDAT, :TEMPSD, :DATA_DOLOR'
      '      DO BEGIN'
      '        TEVALOR_S=0; TEESCALA=0;'
      
        '        SELECT COUNT(*) FROM INFERDADES WHERE C_TRACTAMENT=:C_TR' +
        'ACTAMENT'
      
        '        AND C_ITEM=35 AND ANULAT="N" AND DATA_VALOR BETWEEN :TEM' +
        'PSD AND :TEMPSD+1 AND VALOR="S"'
      '        INTO :TEVALOR_S;'
      '        IF (TEVALOR_S IS NULL) THEN TEVALOR_S=0;'
      '        '
      '        IF (TEVALOR_S>0) THEN'
      '        BEGIN'
      
        '          SELECT COUNT(*) FROM INFERDADES WHERE C_TRACTAMENT=:C_' +
        'TRACTAMENT'
      
        '          AND C_ITEM>1000 AND ANULAT="N" AND DATA_VALOR BETWEEN ' +
        ':TEMPSD AND :TEMPSD+1'
      '          INTO :TEESCALA;'
      '          IF (TEESCALA IS NULL) THEN TEESCALA=0;'
      '        END;'
      '      '
      '        IF ((TEVALOR_S=0) OR (TEESCALA>0)) THEN'
      '        BEGIN'
      '          IF (EDAT>16) THEN'
      '          BEGIN'
      '              DEN_1ADULTS=DEN_1ADULTS+1;'
      
        '              TITOL='#39'Denominador 1 - Adults detall'#39'; QUANTS=NULL' +
        '; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=TE' +
        'MPSD; TIPUS=1; SUSPEND;'
      '              DEN_2ADULTS=DEN_2ADULTS+1;'
      
        '              TITOL='#39'Denominador 2 - Adults detall'#39'; QUANTS=NULL' +
        '; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=TE' +
        'MPSD; TIPUS=1; SUSPEND;'
      '              '
      '              /* Numerador 1 - adults */'
      '              CONTA=0;'
      
        '              SELECT COUNT(*) FROM INFERDADES WHERE C_TRACTAMENT' +
        '=:C_TRACTAMENT'
      
        '              AND C_ITEM>1000 AND ANULAT="N" AND DATA_VALOR BETW' +
        'EEN :TEMPSD AND :TEMPSD+1 AND (VALOR>'#39'3'#39' OR VALOR='#39'10'#39')'
      '              INTO :CONTA;'
      ''
      '              IF (CONTA IS NULL) THEN CONTA=0;'
      '              IF (CONTA > 0) THEN'
      '              BEGIN'
      '                  NUM_1ADULTS=NUM_1ADULTS+1;'
      
        '                  TITOL='#39'Numerador 1 - Adults detall'#39'; QUANTS=NU' +
        'LL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=' +
        'TEMPSD; TIPUS=1; SUSPEND;'
      '              END;'
      ''
      '              /* Numerador 2 - adults */'
      '              ITEMS_SI=0;'
      
        '              FOR SELECT VALOR, DATA_VALOR FROM INFERDADES WHERE' +
        ' C_TRACTAMENT=:C_TRACTAMENT'
      
        '              AND C_ITEM=35 AND ANULAT="N" AND DATA_VALOR BETWEE' +
        'N :TEMPSD AND :TEMPSD+1'
      '              ORDER BY DATA_VALOR, ID'
      '              INTO :VALOR, :DATA_VALOR'
      '              DO BEGIN'
      '                  IF (VALOR='#39'S'#39') THEN'
      '                  BEGIN'
      '                      CONTA=0;'
      
        '                      SELECT COUNT(*) FROM INFERDADES WHERE C_TR' +
        'ACTAMENT=:C_TRACTAMENT'
      
        '                      AND C_ITEM>1000 AND ANULAT="N" AND (VALOR>' +
        #39'3'#39' OR VALOR='#39'10'#39') AND DATA_VALOR=:DATA_VALOR'
      '                      INTO :CONTA;'
      ''
      '                      IF (CONTA IS NULL) THEN CONTA=0;'
      
        '                      IF (CONTA>0)       THEN ITEMS_SI=ITEMS_SI+' +
        '1;'
      '                  END;'
      '                  ELSE BEGIN'
      '                      IF (ITEMS_SI<2) THEN ITEMS_SI=0;'
      '                  END;'
      '              END;'
      '              IF (ITEMS_SI>=2) THEN'
      '              BEGIN'
      '                  NUM_2ADULTS=NUM_2ADULTS+1;'
      
        '                  TITOL='#39'Numerador 2 - Adults detall'#39'; QUANTS=NU' +
        'LL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=' +
        'TEMPSD; TIPUS=1; SUSPEND;'
      '              END;'
      '          END'
      '          ELSE IF (EDAT<=16) THEN'
      '          BEGIN'
      '              DEN_1INFANT=DEN_1INFANT+1;'
      
        '              TITOL='#39'Denominador 1 - Infantil detall'#39'; QUANTS=NU' +
        'LL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=' +
        'TEMPSD; TIPUS=1; SUSPEND;'
      '              DEN_2INFANT=DEN_2INFANT+1;'
      
        '              TITOL='#39'Denominador 2 - Infantil detall'#39'; QUANTS=NU' +
        'LL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=' +
        'TEMPSD; TIPUS=1; SUSPEND;'
      '              '
      '              /* Numerador 1 - infantil */'
      '              CONTA=0;'
      
        '              SELECT COUNT(*) FROM INFERDADES WHERE C_TRACTAMENT' +
        '=:C_TRACTAMENT'
      
        '              AND C_ITEM>1000 AND ANULAT="N" AND DATA_VALOR BETW' +
        'EEN :TEMPSD AND :TEMPSD+1 AND (VALOR>'#39'3'#39' OR VALOR='#39'10'#39')'
      '              INTO :CONTA;'
      ''
      '              IF (CONTA IS NULL) THEN CONTA=0;'
      '              IF (CONTA > 0) THEN'
      '              BEGIN'
      '                  NUM_1INFANT=NUM_1INFANT+1;'
      
        '                  TITOL='#39'Numerador 1 - Infantil detall'#39'; QUANTS=' +
        'NULL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIR' +
        'O=TEMPSD; TIPUS=1; SUSPEND;'
      '              END;'
      ''
      '              /* Numerador 2 - infantil */'
      '              ITEMS_SI=0;'
      
        '              FOR SELECT VALOR, DATA_VALOR FROM INFERDADES WHERE' +
        ' C_TRACTAMENT=:C_TRACTAMENT'
      
        '              AND C_ITEM=35 AND ANULAT="N" AND DATA_VALOR BETWEE' +
        'N :TEMPSD AND :TEMPSD+1'
      '              ORDER BY DATA_VALOR, ID'
      '              INTO :VALOR, :DATA_VALOR'
      '              DO BEGIN'
      '                  IF (VALOR='#39'S'#39') THEN'
      '                  BEGIN'
      '                      CONTA=0;'
      
        '                      SELECT COUNT(*) FROM INFERDADES WHERE C_TR' +
        'ACTAMENT=:C_TRACTAMENT'
      
        '                      AND C_ITEM>1000 AND ANULAT="N" AND (VALOR>' +
        #39'3'#39' OR VALOR='#39'10'#39') AND DATA_VALOR=:DATA_VALOR'
      '                      INTO :CONTA;'
      ''
      '                      IF (CONTA IS NULL) THEN CONTA=0;'
      
        '                      IF (CONTA>0)       THEN ITEMS_SI=ITEMS_SI+' +
        '1;'
      '                  END;'
      '                  ELSE BEGIN'
      '                      IF (ITEMS_SI<2) THEN ITEMS_SI=0;'
      '                  END;'
      '              END;'
      '              IF (ITEMS_SI>=2) THEN'
      '              BEGIN'
      '                  NUM_2INFANT=NUM_2INFANT+1;'
      
        '                  TITOL='#39'Numerador 2 - Infantil detall'#39'; QUANTS=' +
        'NULL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIR' +
        'O=TEMPSD; TIPUS=1; SUSPEND;'
      '              END;'
      '          END;'
      '        END;'
      '      END'
      ''
      '      /* afegim les CMA amb entrevista realitzada */'
      
        '      FOR SELECT B.C_INTERV, T.C_HISTORIA, T.C_TRACTAMENT, T.DAT' +
        'A_INGRES, F_DIVISA((B.TEMPSD - F.FECHA_NAC)/365,0), B.TEMPSD, E.' +
        'DOLOR'
      '      FROM BQUIRURGIC B'
      '      JOIN ENQUESTACMA E   ON B.C_INTERV=E.C_INTERV'
      '      JOIN TRACTAMENTS T   ON B.C_TRACTAMENT=T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '      WHERE B.DATA_ENTRADA BETWEEN :DATAI AND :DATAF||'#39' 23:59:59' +
        #39
      
        '      INTO :C_INTERV, :C_HISTORIA, :C_TRACTAMENT, :DATA_INGRES, ' +
        ':EDAT, :TEMPSD, :DOLOR'
      '      DO BEGIN'
      '          IF (EDAT>16) THEN'
      '          BEGIN'
      '              DEN_1ADULTS=DEN_1ADULTS+1;'
      
        '              TITOL='#39'Denominador 1 - Adults detall'#39'; QUANTS=NULL' +
        '; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=TE' +
        'MPSD; TIPUS=1; SUSPEND;'
      '              '
      '              /* Numerador 1 - adults */'
      '              IF (DOLOR='#39'S'#39') THEN'
      '              BEGIN'
      '                  NUM_1ADULTS=NUM_1ADULTS+1;'
      
        '                  TITOL='#39'Numerador 1 - Adults detall'#39'; QUANTS=NU' +
        'LL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=' +
        'TEMPSD; TIPUS=1; SUSPEND;'
      '              END;'
      '          END;'
      '          ELSE BEGIN'
      '              DEN_1INFANT=DEN_1INFANT+1;'
      
        '              TITOL='#39'Denominador 1 - Infantil detall'#39'; QUANTS=NU' +
        'LL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIRO=' +
        'TEMPSD; TIPUS=1; SUSPEND;'
      ''
      '              IF (DOLOR='#39'S'#39') THEN'
      '              BEGIN'
      '                  NUM_1INFANT=NUM_1INFANT+1;'
      
        '                  TITOL='#39'Numerador 1 - Infantil detall'#39'; QUANTS=' +
        'NULL; HISTORIA=C_HISTORIA; TRACTAMENT=C_TRACTAMENT; SORTIDA_QUIR' +
        'O=TEMPSD; TIPUS=1; SUSPEND;'
      '              END;'
      '          END;'
      '      END;'
      ''
      
        '      HISTORIA=NULL; TRACTAMENT=NULL; SORTIDA_QUIRO=NULL; TIPUS=' +
        '0;'
      
        '      TITOL='#39'Denominador 1 - Adults'#39';   QUANTS=DEN_1ADULTS;  SUS' +
        'PEND;'
      
        '      TITOL='#39'Denominador 1 - Infantil'#39'; QUANTS=DEN_1INFANT;  SUS' +
        'PEND;'
      
        '      TITOL='#39'Numerador 1 - Adults'#39';     QUANTS=NUM_1ADULTS;  SUS' +
        'PEND;'
      
        '      TITOL='#39'Numerador 1 - Infantil'#39';   QUANTS=NUM_1INFANT;  SUS' +
        'PEND;'
      
        '      TITOL='#39'Denominador 2 - Adults'#39';   QUANTS=DEN_2ADULTS;  SUS' +
        'PEND;'
      
        '      TITOL='#39'Denominador 2 - Infantil'#39'; QUANTS=DEN_2INFANT;  SUS' +
        'PEND;'
      
        '      TITOL='#39'Numerador 2 - Adults'#39';     QUANTS=NUM_2ADULTS;  SUS' +
        'PEND;'
      
        '      TITOL='#39'Numerador 2 - Infantil'#39';   QUANTS=NUM_2INFANT;  SUS' +
        'PEND;'
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
    Left = 80
    Top = 192
  end
  object JOINT3: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'JOINT3'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO INTEGER, DATAI DATE, DATAF DATE)'
      'RETURNS (TITOL       VARCHAR(50),'
      '         TOTAL       DOUBLE PRECISION'
      '         )'
      'AS'
      '  DECLARE VARIABLE NUMERADORC    DOUBLE PRECISION;'
      '  DECLARE VARIABLE DENOMINADORC  DOUBLE PRECISION;'
      '  DECLARE VARIABLE NUMERADORI    DOUBLE PRECISION;'
      '  DECLARE VARIABLE DENOMINADORI  DOUBLE PRECISION;'
      '  DECLARE VARIABLE C_HISTORIA    INTEGER;'
      '  DECLARE VARIABLE C_TRACTAMENT  INTEGER;'
      '  DECLARE VARIABLE DATA_LESIO    DATE;'
      '  DECLARE VARIABLE DATA_INGRES   DATE;'
      '  DECLARE VARIABLE DATA_ENTRADA  DATE;'
      '  DECLARE VARIABLE TEMPSD        DATE;'
      '  DECLARE VARIABLE C_ORDREMEDICA INTEGER;'
      '  DECLARE VARIABLE C_INTERV      INTEGER;'
      '  DECLARE VARIABLE CONTA         INTEGER;'
      '  DECLARE VARIABLE CONTA2        INTEGER;'
      '  DECLARE VARIABLE ASIA          CHAR(1);'
      '  DECLARE VARIABLE ASIANV        CHAR(1);'
      'BEGIN'
      
        '  /* 5-02-350_I-VTE-1. Acompliment de la profilaxis tromboemb'#242'li' +
        'ca en la lesi'#243' medular a l'#39'ingr'#233's.'
      '  '
      
        '  Criteris d'#39'inclusi'#243': S'#39'inclouran tots els pacients '#250'nics major' +
        's de 18 anys el dia de l'#39'ingr'#233's, que han estat ingressats per pr' +
        'imera vegada per TIR amb motiu de lesi'#243' medular i en els que l'#39'i' +
        'ngres a l'#39'Institut Guttmann es produeix durant les primeres 7/11' +
        ' setmanes (lesions incompletes/lesions completes)'
      
        '                       des de la data en que es produeix la lesi' +
        #243'.'
      
        '  Criteris d'#39'exclusi'#243': S'#39'exclouran tots els pacients que durant ' +
        'les primeres 8 setmanes desde la data de lesi'#243' porten tractament' +
        ' amb:  Sintrom(605873), Sitrom (654177), Warfarina (766279), War' +
        'farina (870345), o Enoxoparina 60 (6725931)'
      
        '                    o Enoxoparina 80 (837773) o Heparina 100 (83' +
        '7773) o f'#224'rmacs anti factor X activat Dabigatran 110 (654800), D' +
        'ebigatran 150 (683358)'
      
        '                    i Ribaroxaban (654732). Excloure 1a ASIA de ' +
        'l'#39'ingr'#233's = D i els que la tenen NO VALORABLE.'
      
        '  Numerador: s'#39'inclouran tots els pacients que tenen pautada a l' +
        #39'ingr'#233's i durant les primeres 8 setmanes (LM incompletes) i prim' +
        'eres 12 setmanes (LM completes) desde la lesi'#243' o b'#233' Enoxoparina ' +
        '20 (639484) o Enoxoparina 40 (639492) i que est'#225' signada almenys' +
        ' una administraci'#243' di'#224'ria.'
      
        '  Denominador: S'#39'inclouran tots els pacients > =18 anys '#250'nics in' +
        'gressats per primera vegada per TIR amb motiu de lesi'#243' medular i' +
        ' en els que l'#39'ingres a l'#39'Institut Guttmann es produeix durant le' +
        's primeres 8 setmanes des de la data en que es produeix la lesi'#243 +
        '.  */'
      ''
      '  IF (OPCIO=1) THEN'
      '  BEGIN'
      
        '      /* DENOMINADOR: Pacients '#250'nics >=18a a l'#39'ingr'#233's que s'#243'n in' +
        'gressos TIR - LM amb ingr'#233's en les primeres 7/11 setmanes despr'#233 +
        's de la lesi'#243'. Excloure 1a ASIA de l'#39'ingr'#233's = D i els que la ten' +
        'en NO VALORABLE.'
      
        '         NUMERADOR: Pacients '#250'nics >=18a a l'#39'ingr'#233's que s'#243'n ingr' +
        'essos TIR - LM amb ingr'#233's en les primeres 7/11 setmanes despr'#233's ' +
        'de la lesi'#243
      
        '                    sense cap tractament Sintrom(605873), Sitrom' +
        ' (654177), Warfarina (766279), Warfarina (870345), o Enoxoparina' +
        ' 60 (6725931)'
      
        '                    o Enoxoparina 80 (837773) o Heparina 100 (83' +
        '7773) o f'#224'rmacs anti factor X activat Dabigatran 110 (654800), D' +
        'ebigatran 150 (683358)'
      
        '                    i Ribaroxaban (654732) durant les 8/12 prime' +
        'res setmanes; amb algun d'#39'aquests medicaments pautat'
      
        '                    durant les primeres 12 setmanes desde la les' +
        'i'#243': o b'#233' Enoxoparina 20 (639484) o Enoxoparina 40 (639492) i que' +
        ' est'#225' signada'
      
        '                    almenys una administraci'#243' di'#224'ria. Excloure 1' +
        'a ASIA de l'#39'ingr'#233's = D i els que la tenen NO VALORABLE.*/'
      '      NUMERADORC=0; DENOMINADORC=0;'
      
        '      FOR SELECT T.C_HISTORIA,T.C_TRACTAMENT,LS.DATA_LESIO,MIN(T' +
        '.DATA_INGRES) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F             ON T.C_HISTORIA=F.NUM_HIST'
      
        '      JOIN LESIONS_SUCCESSIVES LS ON T.C_HISTORIA=LS.C_HISTORIA ' +
        'AND T.C_PROCES=LS.C_PROCES AND LS.C_UNITATM IN (1,3) /* complete' +
        's 12 setmanes */'
      
        '      JOIN DRETSMOTIU DM          ON T.C_MOTIU=DM.C_MOTIU AND DM' +
        '.C_DRET = '#39'X1'#39
      
        '      WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF AND T.C_PRESTA' +
        'CIO='#39'1004'#39
      '      AND ((T.DATA_INGRES - F.FECHA_NAC)/365)>=18'
      '      AND ((T.DATA_INGRES - LS.DATA_LESIO)/7)<=11'
      
        '      AND (T.DATA_ALTA - T.DATA_INGRES)>1  /* M'#201'S D'#39'UN DIA INGRE' +
        'SSAT */'
      '      GROUP BY T.C_HISTORIA,T.C_TRACTAMENT,LS.DATA_LESIO'
      '      INTO :C_HISTORIA, :C_TRACTAMENT, :DATA_LESIO, :DATA_INGRES'
      '      DO BEGIN'
      '          ASIA=NULL; ASIANV=NULL;'
      '          SELECT A.ASIA,C.ANULAT FROM ESCALESCAP C'
      '          LEFT JOIN ESCASIA A  ON C.CLAU=A.ID'
      '          WHERE C.C_TRACTAMENT=:C_TRACTAMENT  AND C.C_ESCALA=8'
      '          ORDER BY C.DATA ROWS 1'
      '          INTO :ASIA, :ASIANV;'
      '          IF (ASIA IS NULL) THEN ASIA='#39' '#39';'
      '          IF (ASIANV='#39'V'#39')   THEN ASIA='#39'D'#39';'
      ''
      '          IF (ASIA<>'#39'D'#39') THEN'
      '          BEGIN'
      '            CONTA=NULL;'
      '            SELECT COUNT(*) FROM ORDRESMEDIQUES'
      '            WHERE C_TRACTAMENT=:C_TRACTAMENT'
      
        '            AND   C_PRODUCTE IN(605873,654177,766279,870345,6725' +
        '931,837773,654800,683358,654732)'
      '            AND   ((DATA_PAUTAT - :DATA_LESIO)/7)<=12'
      '            INTO :CONTA;'
      '            IF (CONTA IS NULL) THEN CONTA=0;'
      '            IF (CONTA=0) THEN'
      '            BEGIN'
      '              DENOMINADORC=DENOMINADORC+1;'
      
        '              TITOL='#39' Denominador detall'#39'; TOTAL=C_HISTORIA; SUS' +
        'PEND;'
      '              '
      
        '              /* A m'#233's a m'#233's han de tenir durant les primeres 12' +
        ' setmanes desde la lesi'#243
      
        '                 o b'#233' Enoxoparina 20 (639484) o Enoxoparina 40 (' +
        '639492) i que est'#225' signada almenys una administraci'#243' di'#224'ria. */'
      '              C_ORDREMEDICA=0;'
      '              SELECT C_ORDREMEDICA FROM ORDRESMEDIQUES'
      '              WHERE C_TRACTAMENT=:C_TRACTAMENT'
      '              AND   C_PRODUCTE IN(639484,639492)'
      '              AND   ((DATA_PAUTAT - :DATA_LESIO)/7)<=12'
      '              ROWS 1'
      '              INTO :C_ORDREMEDICA;'
      '              IF (C_ORDREMEDICA IS NULL) THEN C_ORDREMEDICA=0;'
      ''
      '              IF (C_ORDREMEDICA>0) THEN'
      '              BEGIN'
      '                  /* Cal que la medicaci'#243' estigui signada */'
      '                  CONTA2=NULL;'
      
        '                  SELECT COUNT(*) FROM OMADMINISTRACIO WHERE C_O' +
        'RDREMEDICA=:C_ORDREMEDICA AND ADMINISTRACIO='#39'S'#39
      '                  INTO :CONTA2;'
      '                  IF (CONTA2 IS NULL) THEN CONTA2=0;'
      '                  '
      '                  IF (CONTA2>0) THEN BEGIN'
      '                      NUMERADORC=NUMERADORC+1;'
      
        '                      TITOL='#39' Numerador detall'#39'; TOTAL=C_HISTORI' +
        'A; SUSPEND;'
      '                  END;'
      '                  ELSE BEGIN'
      
        '                      TITOL='#39'No cumpleix detall'#39'; TOTAL=C_HISTOR' +
        'IA; SUSPEND;'
      '                  END;'
      '              END;'
      '              ELSE BEGIN'
      
        '                  TITOL='#39'No cumpleix detall'#39'; TOTAL=C_HISTORIA; ' +
        'SUSPEND;'
      '              END;'
      '            END;'
      '          END;'
      '      END;'
      ''
      '      NUMERADORI=0; DENOMINADORI=0;'
      
        '      FOR SELECT T.C_HISTORIA,T.C_TRACTAMENT,LS.DATA_LESIO,MIN(T' +
        '.DATA_INGRES) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F       ON T.C_HISTORIA=F.NUM_HIST'
      
        '      JOIN LESIONS_SUCCESSIVES LS ON T.C_HISTORIA=LS.C_HISTORIA ' +
        'AND T.C_PROCES=LS.C_PROCES AND LS.C_UNITATM IN (2,4) /* incomple' +
        'tes 8 setmanes */'
      
        '      JOIN DRETSMOTIU DM    ON T.C_MOTIU=DM.C_MOTIU AND DM.C_DRE' +
        'T = '#39'X1'#39
      
        '      WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF AND T.C_PRESTA' +
        'CIO='#39'1004'#39
      '      AND ((T.DATA_INGRES - F.FECHA_NAC)/365)>=18'
      '      AND ((T.DATA_INGRES - LS.DATA_LESIO)/7)<=7'
      
        '      AND (T.DATA_ALTA - T.DATA_INGRES)>1  /* M'#201'S D'#39'UN DIA INGRE' +
        'SSAT */'
      '      GROUP BY T.C_HISTORIA,T.C_TRACTAMENT,LS.DATA_LESIO'
      '      INTO :C_HISTORIA, :C_TRACTAMENT, :DATA_LESIO, :DATA_INGRES'
      '      DO BEGIN'
      '          ASIA=NULL; ASIANV=NULL;'
      '          SELECT A.ASIA,C.ANULAT FROM ESCALESCAP C'
      '          LEFT JOIN ESCASIA A  ON C.CLAU=A.ID'
      '          WHERE C.C_TRACTAMENT=:C_TRACTAMENT  AND C.C_ESCALA=8'
      '          ORDER BY C.DATA ROWS 1'
      '          INTO :ASIA, :ASIANV;'
      '          IF (ASIA IS NULL) THEN ASIA='#39' '#39';'
      '          IF (ASIANV='#39'V'#39')   THEN ASIA='#39'D'#39';'
      ''
      '          IF (ASIA<>'#39'D'#39') THEN'
      '          BEGIN'
      '            CONTA=NULL;'
      '            SELECT COUNT(*) FROM ORDRESMEDIQUES'
      '            WHERE C_TRACTAMENT=:C_TRACTAMENT'
      
        '            AND   C_PRODUCTE IN(605873,654177,766279,870345,6725' +
        '931,837773,654800,683358,654732)'
      '            AND   ((DATA_PAUTAT - :DATA_LESIO)/7)<=8'
      '            INTO :CONTA;'
      '            IF (CONTA IS NULL) THEN CONTA=0;'
      '            IF (CONTA=0) THEN'
      '            BEGIN'
      '              DENOMINADORi=DENOMINADORi+1;'
      
        '              TITOL='#39' Denominador detall'#39'; TOTAL=C_HISTORIA; SUS' +
        'PEND;'
      ''
      
        '              /* A m'#233's a m'#233's han de tenir durant les primeres 12' +
        ' setmanes desde la lesi'#243
      
        '                 o b'#233' Enoxoparina 20 (639484) o Enoxoparina 40 (' +
        '639492) i que est'#225' signada almenys una administraci'#243' di'#224'ria. */'
      '              C_ORDREMEDICA=0;'
      '              SELECT C_ORDREMEDICA FROM ORDRESMEDIQUES'
      '              WHERE C_TRACTAMENT=:C_TRACTAMENT'
      '              AND   C_PRODUCTE IN(639484,639492)'
      '              AND   ((DATA_PAUTAT - :DATA_LESIO)/7)<=8'
      '              ROWS 1'
      '              INTO :C_ORDREMEDICA;'
      '              IF (C_ORDREMEDICA IS NULL) THEN C_ORDREMEDICA=0;'
      ''
      '              IF (C_ORDREMEDICA>0) THEN'
      '              BEGIN'
      '                  /* Cal que la medicaci'#243' estigui signada */'
      '                  CONTA2=NULL;'
      
        '                  SELECT COUNT(*) FROM OMADMINISTRACIO WHERE C_O' +
        'RDREMEDICA=:C_ORDREMEDICA AND ADMINISTRACIO='#39'S'#39
      '                  INTO :CONTA2;'
      '                  IF (CONTA2 IS NULL) THEN CONTA2=0;'
      ''
      '                  IF (CONTA2>0) THEN BEGIN'
      '                      NUMERADORi=NUMERADORi+1;'
      
        '                      TITOL='#39' Numerador detall'#39'; TOTAL=C_HISTORI' +
        'A; SUSPEND;'
      '                  END;'
      '                  ELSE BEGIN'
      
        '                      TITOL='#39'No cumpleix detall'#39'; TOTAL=C_HISTOR' +
        'IA; SUSPEND;'
      '                  END;'
      '              END;'
      '              ELSE BEGIN'
      
        '                  TITOL='#39'No cumpleix detall'#39'; TOTAL=C_HISTORIA; ' +
        'SUSPEND;'
      '              END;'
      '            END;'
      '          END;'
      '      END;'
      ''
      
        '      TITOL='#39' Numerador'#39';   TOTAL=NUMERADORC+NUMERADORI;     SUS' +
        'PEND;'
      
        '      TITOL='#39' Denominador'#39'; TOTAL=DENOMINADORC+DENOMINADORI; SUS' +
        'PEND;'
      '      IF ((DENOMINADORC+DENOMINADORI)>0) THEN'
      '      BEGIN'
      
        '          TOTAL=F_DIVISA((NUMERADORC+NUMERADORI)/(DENOMINADORC+D' +
        'ENOMINADORI),4)*100;'
      '          TITOL='#39' Percentatge'#39';'
      '          SUSPEND;'
      '      END;'
      '  END;'
      '  '
      
        '  /* 5-03-394_I-SCIP_VTE1. Acompliment de la profilaxis tromboem' +
        'b'#242'lica en pacients de cirurgia pl'#224'stica en els que la profilaxis' +
        ' est'#224' recomanada'
      ''
      
        '     Criteris d'#39'inclusi'#243': Pacients d'#39'edats iguals o majors a 18 ' +
        'anys que han estat intervinguts quir'#250'rgicament de: Penjall Fasci' +
        'ocutani (codi 86.74.02) o b'#233' Penjall Miocutani (codi 86.74.03) i' +
        ' b'#233' Penjall Muscular (codi: 83.82) o b'#233'Penjall dermogras (codi: ' +
        '86.74.01)'
      
        '     Criteris d'#39'exclusi'#243': la resta d'#39'intervencions de cirurgia p' +
        'l'#224'stica'
      
        '     Denominador: Pacients que han estat intervinguts quir'#250'rgica' +
        'ment de: Penjall Fasciocutani (codi : 86.74.02) o b'#233' Penjall Mio' +
        'cutani (codi: 86.74.03) o b'#233' Penjall Muscular (codi : 83.82) o b' +
        #233'Penjall dermogras (codi : 86.74.01) o b'#233' colgajo TFL (83.82)'
      
        '     Numerador: Pacients als que se'#39'ls ha pautat almenys una dos' +
        'is de: Enoxoparina 20 (639484) o Enoxoparina 40 (639492) en algu' +
        'n moment durant les 72h previes a l'#39'hora de l'#39'inici de la interv' +
        'enci'#243' quir'#250'rgica o b'#233' ja estava pautada'
      ''
      
        '     DENOMINADOR: Pacients >=18a intervinguts per 86.74.02 o 86.' +
        '74.03 o 83.82 o 86.74.01'
      
        '     NUMERADOR: Pacients >=18a intervinguts per 86.74.02 o 86.74' +
        '.03 o 83.82 o 86.74.01, amb alguna pauta de Enoxoparina 20 (6394' +
        '84) o Enoxoparina 40 (639492)'
      
        '                feta durant les 72h previes a l'#39'hora de l'#39'inici ' +
        'de la intervenci'#243' quir'#250'rgica (DATA_ENTRADA) i les 24h posteriors' +
        ' a la sortida de la intervenci'#243' */'
      ''
      '  ELSE IF (OPCIO=2) THEN'
      '  BEGIN'
      '      NUMERADORC=0; DENOMINADORC=0;'
      
        '      FOR SELECT DISTINCT B.C_INTERV, B.DATA_ENTRADA, B.TEMPSD, ' +
        'B.C_HISTORIA FROM BQUIRURGIC B'
      '      JOIN FILIACIO F ON B.C_HISTORIA=F.NUM_HIST'
      
        '      WHERE ( (B.G_PROCEDIMENT IN('#39'86.74.02'#39','#39'86.74.03'#39','#39'83.82'#39',' +
        #39'86.74.01'#39')) OR'
      
        '              (B.C_INTERV IN (SELECT BP.C_INTERV FROM BQPROCEDIM' +
        'ENTS BP WHERE B.C_INTERV=BP.C_INTERV'
      
        '                              AND BP.G_PROCEDIMENT IN('#39'86.74.02'#39 +
        ','#39'86.74.03'#39','#39'83.82'#39','#39'86.74.01'#39')))'
      '            )'
      '      AND ((B.DATA_ENTRADA - F.FECHA_NAC)/365)>=18'
      '      AND B.ESTAT <> 40'
      '      AND B.DATA_ENTRADA BETWEEN :DATAI AND :DATAF'
      '      INTO :C_INTERV, :DATA_ENTRADA, :TEMPSD, :C_HISTORIA'
      '      DO BEGIN'
      '           DENOMINADORC=DENOMINADORC+1;'
      
        '           TITOL='#39'Denominador detall'#39'; TOTAL=C_HISTORIA; SUSPEND' +
        ';'
      '           '
      '           CONTA=NULL;'
      '           SELECT COUNT(*) FROM ORDRESMEDIQUES'
      
        '           WHERE C_HISTORIA=:C_HISTORIA AND C_PRODUCTE IN (63948' +
        '4,639492)'
      
        '           AND  DATA_PAUTAT BETWEEN (:DATA_ENTRADA-3) AND (:TEMP' +
        'SD+1.5) /* Entre 72H (3dies) abans de l'#39'entrada a quir'#242'fan i 36H' +
        ' despr'#233's de la sortida de la intervenci'#243' */'
      '           INTO :CONTA;'
      '           '
      '           IF (CONTA IS NULL) THEN CONTA=0;'
      '           IF (CONTA>0) THEN BEGIN'
      '               NUMERADORC=NUMERADORC+1;'
      
        '               TITOL='#39'Numerador detall'#39'; TOTAL=C_HISTORIA; SUSPE' +
        'ND;'
      '           END;'
      '      END;'
      '  '
      '      TITOL='#39'Numerador'#39';   TOTAL=NUMERADORC;   SUSPEND;'
      '      TITOL='#39'Denominador'#39'; TOTAL=DENOMINADORC; SUSPEND;'
      '      IF ((DENOMINADORC)>0) THEN'
      '      BEGIN'
      '          TOTAL=F_DIVISA(NUMERADORC/DENOMINADORC,4)*100;'
      '          TITOL='#39'Percentatge'#39';'
      '          SUSPEND;'
      '      END;'
      '  '
      '  '
      '  END;'
      '  '
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
    Left = 144
    Top = 192
  end
  object JOINT3B: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'JOINT3B'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO INTEGER, DATAI DATE, DATAF DATE)'
      'RETURNS (TITOL       VARCHAR(50),'
      '         TOTAL       DOUBLE PRECISION'
      '         )'
      'AS'
      '  DECLARE VARIABLE NUMERADOR     DOUBLE PRECISION;'
      '  DECLARE VARIABLE DENOMINADOR   DOUBLE PRECISION;'
      '  DECLARE VARIABLE C_HISTORIA    INTEGER;'
      '  DECLARE VARIABLE C_TRACTAMENT  INTEGER;'
      '  DECLARE VARIABLE DATA_LESIO    DATE;'
      '  DECLARE VARIABLE FECHA_LESIO   DATE;'
      '  DECLARE VARIABLE DATA_INGRES   DATE;'
      '  DECLARE VARIABLE DATA_ENTRADA  DATE;'
      '  DECLARE VARIABLE TEMPSD        DATE;'
      '  DECLARE VARIABLE C_ORDREMEDICA INTEGER;'
      '  DECLARE VARIABLE C_INTERV      INTEGER;'
      '  DECLARE VARIABLE CONTA         INTEGER;'
      '  DECLARE VARIABLE CONTA2        INTEGER;'
      'BEGIN'
      
        '  /* 5-03-394_I-SCIP_VTE1. Acompliment pauta profilaxis tromboem' +
        'b'#242'lica en intervinguts per bomba'
      ''
      
        '     Criteris d'#39'inclusi'#243': Pacients d'#39'edats iguals o majors a 18 ' +
        'anys que han estat intervinguts quir'#250'rgicament de (Bomba de bacl' +
        'of'#232' (12); Implant de bomba de baclof'#232' (126); Recanvi de bomba de' +
        ' baclof'#232' (127); Retirada de bomba de baclof'#232' (128); Recanvi de b' +
        'omba de baclof'#232' (129).'
      
        '     Criteris d'#39'exclusi'#243': S'#39'exclouran tots els pacients que dura' +
        'nt les primeres 8 setmanes desde la data de lesi'#243' porten tractam' +
        'ent amb: Sintrom(605873), Sitrom (654177), Warfarina (766279), W' +
        'arfarina (870345),  o Enoxoparina 60 (6725931)  o Clexane 100 (8' +
        '37773) o  Dabigatran 110 (654800), Dabigatran 150 (683358) o Rib' +
        'aroxaban (654732)'
      
        '     Denominador: Pacients que han estat intervinguts quir'#250'rgica' +
        'ment de:  (Bomba de baclof'#232' (12); Implant de bomba de baclof'#232' (1' +
        '26); Recanvi de bomba de baclof'#232' (127); Retirada de bomba de bac' +
        'lof'#232' (128); Recanvi de bomba de baclof'#232' (129).'
      
        '     Numerador: Pacients als que se'#39'ls ha pautat almenys una dos' +
        'is de: Enoxoparina 10/20 (639484) o Enoxoparina 40 (639492) en a' +
        'lgun moment entre les les 72h previes a l'#39'hora de l'#39'inici de la ' +
        'intervenci'#243' quir'#250'rgica i les 36 hores posteriors a la sortida de' +
        ' la intervenci'#243'.'
      ''
      
        '     DENOMINADOR: >=18a tractat per BOMBA, amb una internveci'#243' e' +
        'n el per'#237'ode indicat no anul'#183'lada sense tractament de Sintrom(60' +
        '5873), Sitrom (654177), Warfarina (766279), Warfarina (870345), ' +
        'o Enoxoparina 60 (6725931) o Clexane 100 (837773) o Dabigatran 1' +
        '10 (654800), Dabigatran 150 (683358) o Ribaroxaban (654732) dura' +
        'nt les primeres 8 setmanes des de la data de lesi'#243
      
        '     NUMERADOR: dels del denominador, pacients amb pauta de Enox' +
        'oparina 10/20 (639484) o Enoxoparina 40 (639492) entre les 72h a' +
        'bans de la intervenci'#243' i les 36h despr'#233's de la finalitzaci'#243' de l' +
        'a intervenci'#243'. */'
      ''
      '  IF (OPCIO=1) THEN'
      '  BEGIN'
      '      NUMERADOR=0; DENOMINADOR=0;'
      
        '      FOR SELECT DISTINCT B.C_INTERV, B.DATA_ENTRADA, B.TEMPSD, ' +
        'B.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, F.DATA_LESSIO FROM ' +
        'TRACTAMENTS T'
      
        '      JOIN BQUIRURGIC B ON T.C_TRACTAMENT=B.C_TRACTAMENT  AND (B' +
        '.ESTAT <> 40)'
      '      JOIN FILIACIO F   ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.C_MOTIU IN(12,126,127,128,129)'
      '      AND ((B.DATA_ENTRADA - F.FECHA_NAC)/365)>=18'
      '      AND B.DATA_ENTRADA BETWEEN :DATAI AND :DATAF'
      
        '      INTO :C_INTERV, :DATA_ENTRADA, :TEMPSD, :C_HISTORIA, :C_TR' +
        'ACTAMENT, :DATA_INGRES, :FECHA_LESIO'
      '      DO BEGIN'
      '          SELECT MAX(DATA_LESIO) FROM LESIONS_SUCCESSIVES'
      '          WHERE C_HISTORIA=:C_HISTORIA'
      '          AND DATA_LESIO<=:DATA_INGRES'
      '          INTO :DATA_LESIO;'
      '          IF (DATA_LESIO IS NULL) THEN DATA_LESIO=:FECHA_LESIO;'
      ''
      '          CONTA=NULL;'
      '          SELECT COUNT(*) FROM ORDRESMEDIQUES'
      '          WHERE C_TRACTAMENT=:C_TRACTAMENT'
      
        '          AND   C_PRODUCTE IN(605873,654177,766279,870345,672593' +
        '1,837773,654800,683358,654732)'
      '          AND   ((DATA_PAUTAT - :DATA_LESIO)/7)<=8'
      '          INTO :CONTA;'
      '          IF (CONTA IS NULL) THEN CONTA=0;'
      '          IF (CONTA=0) THEN'
      '          BEGIN'
      '              DENOMINADOR=DENOMINADOR+1;'
      
        '              TITOL='#39' Denominador detall'#39'; TOTAL=C_HISTORIA; SUS' +
        'PEND;'
      ''
      '              CONTA=NULL;'
      '              SELECT COUNT(*) FROM ORDRESMEDIQUES'
      
        '              WHERE C_HISTORIA=:C_HISTORIA AND C_PRODUCTE IN (63' +
        '9484,639492)'
      
        '              AND  DATA_PAUTAT BETWEEN (:DATA_ENTRADA-3) AND (:T' +
        'EMPSD+1.5) /* Entre 72H (3dies) abans de l'#39'entrada a quir'#242'fan i ' +
        '36H despr'#233's de la sortida de la intervenci'#243' */'
      '              INTO :CONTA;'
      ''
      '              IF (CONTA IS NULL) THEN CONTA=0;'
      '              IF (CONTA>0) THEN BEGIN'
      '                  NUMERADOR=NUMERADOR+1;'
      
        '                  TITOL='#39' Numerador detall'#39'; TOTAL=C_HISTORIA; S' +
        'USPEND;'
      '              END;'
      '              ELSE BEGIN'
      
        '                  TITOL='#39'No cumpleix detall'#39'; TOTAL=C_HISTORIA; ' +
        'SUSPEND;'
      '              END;'
      '          END;'
      '      END;'
      '  '
      '      TITOL='#39' Numerador'#39';   TOTAL=NUMERADOR;   SUSPEND;'
      '      TITOL='#39' Denominador'#39'; TOTAL=DENOMINADOR; SUSPEND;'
      '      IF ((DENOMINADOR)>0) THEN'
      '      BEGIN'
      '          TOTAL=F_DIVISA(NUMERADOR/DENOMINADOR,4)*100;'
      '          TITOL='#39' Percentatge'#39';'
      '          SUSPEND;'
      '      END;'
      '  END;'
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
    Left = 208
    Top = 192
  end
  object JOINT4: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'JOINT4'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE)'
      'RETURNS (TITOL    VARCHAR(50),'
      '         TOTAL    DOUBLE PRECISION)'
      'AS'
      ' DECLARE VARIABLE DEN  INTEGER;'
      ' DECLARE VARIABLE NUM  INTEGER;'
      ' DECLARE VARIABLE MES  INTEGER;'
      ' DECLARE VARIABLE MESI INTEGER;'
      ' DECLARE VARIABLE MESF INTEGER;'
      'BEGIN'
      ''
      
        '    /* REVISAR LES DATES PQ LES GU'#192'RDIES VAN FINS LES 8H O LES 9' +
        'H DEPENENT DEL DIA SI ES LABORABLE O CAP DE SETMANA/FESTIU */'
      
        '    SELECT COUNT(*) FROM HANDOVER WHERE DATA BETWEEN :DATAI AND ' +
        ':DATAF||'#39' 23:59:59'#39' INTO :DEN;'
      '    TITOL='#39'N'#186' total de Hand Over'#39'; TOTAL=DEN; SUSPEND;'
      '    '
      
        '    SELECT COUNT(*) FROM HANDOVER WHERE DATA BETWEEN :DATAI AND ' +
        ':DATAF||'#39' 23:59:59'#39
      '    AND MOTIU IS NOT NULL INTO :NUM;'
      
        '    TITOL='#39'N'#186' de Hand Over amb motiu informat'#39'; TOTAL=NUM; SUSPE' +
        'ND;'
      '    '
      
        '    IF (DEN>0) THEN TOTAL=F_DIVISA((NUM/DEN),2)*100; ELSE TOTAL=' +
        '0;'
      '    TITOL='#39'Percentatge amb motiu informat'#39'; SUSPEND;'
      ''
      
        '    SELECT COUNT(*) FROM HANDOVER WHERE DATA BETWEEN :DATAI AND ' +
        ':DATAF||'#39' 23:59:59'#39
      '    AND C_ANOTACIO=0 INTO :NUM;'
      '    TITOL='#39'N'#186' d'#39#39'incid'#232'ncies de gu'#224'rdia'#39'; TOTAL=NUM; SUSPEND;'
      '    '
      
        '    IF (DEN>0) THEN TOTAL=F_DIVISA((NUM/DEN),2)*100; ELSE TOTAL=' +
        '0;'
      '    TITOL='#39'Percentatge incid'#232'ncies de gu'#224'rdia'#39'; SUSPEND;'
      ''
      
        '    SELECT COUNT(*) FROM HANDOVER WHERE DATA BETWEEN :DATAI AND ' +
        ':DATAF||'#39' 23:59:59'#39
      '    AND C_ANOTACIO<>0 INTO :NUM;'
      '    TITOL='#39'N'#186' valoracions canvis medicaci'#243#39'; TOTAL=NUM; SUSPEND;'
      ''
      
        '    IF (DEN>0) THEN TOTAL=F_DIVISA((NUM/DEN),2)*100; ELSE TOTAL=' +
        '0;'
      '    TITOL='#39'Percentatge valoracions canvis medicaci'#243#39'; SUSPEND;'
      ''
      '    /* n'#186' Hand Over per mes */'
      
        '    SELECT F_MONTH(:DATAI), F_MONTH(:DATAF) FROM CONFIG WHERE 1=' +
        '1 INTO :MESI, :MESF;'
      ''
      '    TITOL='#39'--- Per mesos ---'#39'; TOTAL=NULL; SUSPEND;'
      '    MES=MESI;'
      '    WHILE (MES<=MESF) DO'
      '    BEGIN'
      '        SELECT COUNT(*) FROM HANDOVER'
      '        WHERE F_MONTH(DATA)=:MES'
      '        INTO :TOTAL;'
      '    '
      '        IF      (MES=1)  THEN TITOL='#39'Gener '#39';'
      '        ELSE IF (MES=2)  THEN TITOL='#39'Febrer '#39';'
      '        ELSE IF (MES=3)  THEN TITOL='#39'Mar'#231' '#39';'
      '        ELSE IF (MES=4)  THEN TITOL='#39'Abril '#39';'
      '        ELSE IF (MES=5)  THEN TITOL='#39'Maig '#39';'
      '        ELSE IF (MES=6)  THEN TITOL='#39'Juny '#39';'
      '        ELSE IF (MES=7)  THEN TITOL='#39'Juliol '#39';'
      '        ELSE IF (MES=8)  THEN TITOL='#39'Agost '#39';'
      '        ELSE IF (MES=9)  THEN TITOL='#39'Setembre '#39';'
      '        ELSE IF (MES=10) THEN TITOL='#39'Octubre '#39';'
      '        ELSE IF (MES=11) THEN TITOL='#39'Novembre '#39';'
      '        ELSE IF (MES=12) THEN TITOL='#39'Desembre '#39';'
      ''
      '        MES=MES+1;'
      '        SUSPEND;'
      '    END;'
      '    '
      
        '    /* Falta afegir pacients cr'#237'tics (calcular-lo a cada dia!!) ' +
        '*/'
      ''
      'END')
    Dic1 = wDataCurs.HandOver
    Dic1Name = 'wDataCurs.HandOver'
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
    Left = 272
    Top = 192
  end
  object Sol_Ingres_TMP: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'PK'
        NombreDB = 'PK'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'IDRegistre'
        NombreDB = 'IDRegistre'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_SOLINGRESTMP'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C_Historia'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom'
        NombreDB = 'Nom'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cognom1'
        NombreDB = 'Cognom1'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cognom2'
        NombreDB = 'Cognom2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data_Solicitud'
        NombreDB = 'Data_Solicitud'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'Metge'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resposta'
        NombreDB = 'Resposta'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data_Resposta'
        NombreDB = 'Data_Resposta'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data_Finalitzacio'
        NombreDB = 'Data_Finalitzacio'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
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
          'PK')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Sol_Ingres_TMP'
    NombreTabla = 'Sol_Ingres_TMP'
    Organiza = tbBase
    CamposVer.Strings = (
      'IDRegistre')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 656
    Top = 16
  end
  object ControlPrealtesNR: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ControlPrealtesNR'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_PROCES INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  NOMCOMPLET VARCHAR(80),'
      '  C_UNITATM SMALLINT,'
      '  N_UNITATM VARCHAR(30),'
      '  C_PERFIL SMALLINT,'
      '  N_PERFIL VARCHAR(40),'
      '  C_PRESTACIO VARCHAR(4),'
      '  C_COORDINADOR VARCHAR(5),'
      '  D_INICI_PROCES DATE,'
      '  D_INICI_TRACT DATE,'
      '  D_PREALTA DATE,'
      '  DURADA_MAX INTEGER,'
      '  DIES_SOBREPASSA INTEGER,'
      '  DIES_SOBREPASSARA INTEGER,'
      '  DATA_SESSIO DATE,'
      '  SESSIO_CONJUNTA VARCHAR(40)'
      '  )'
      'AS'
      '  DECLARE VARIABLE SEVERITAT  SMALLINT;'
      '  DECLARE VARIABLE C_OBJECTIU INTEGER;'
      'BEGIN'
      '      '
      '      /* Tractaments NeuroRehabilitadors */'
      '      '
      
        '      FOR   SELECT T.C_TRACTAMENT, T.C_PROCES, T.C_HISTORIA, F.N' +
        'OMCOMPLET, F.C_UNITATMEDICA, U.N_UNITATM, F.SEVERITAT,'
      
        '                   T.C_PRESTACIO, T.C_COORDINADOR, T.DATA_INGRES' +
        ', T.DATA_PREALTA'
      '            FROM   TRACTAMENTS T'
      '            JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '            JOIN   UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      '            JOIN   DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU'
      
        '            WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY"' +
        ')    /* Tractaments actius           */'
      
        '            AND   (T.C_PRESTACIO = '#39'1004'#39' OR T.C_PRESTACIO = '#39'20' +
        '14'#39') /* ingressos i ambulatoris      */'
      
        '            AND    D.C_DRET = '#39'X1'#39'                              ' +
        '     /* amb motiu TIR   => Proc'#233's NR */'
      
        '            AND    T.C_CENTREFAC = '#39'04'#39'                         ' +
        '     /* del SCS         => Proc'#233's NR */'
      
        '            AND    T.DATA_INGRES < "TODAY"-15                   ' +
        '     /* iniciats fa m'#233's de 15 dies   */'
      
        '            INTO  :C_TRACTAMENT, :C_PROCES, :C_HISTORIA, :NOMCOM' +
        'PLET, :C_UNITATM, :N_UNITATM, :SEVERITAT,'
      
        '                  :C_PRESTACIO, :C_COORDINADOR, :D_INICI_TRACT, ' +
        ':D_PREALTA'
      '      DO BEGIN'
      ''
      '            C_OBJECTIU = NULL;'
      '            DATA_SESSIO = NULL;'
      '            SESSIO_CONJUNTA = '#39#39';'
      '            DIES_SOBREPASSA = NULL;'
      '            DIES_SOBREPASSARA = NULL;'
      ''
      '            /* Data d'#39'inici del proc'#233's */'
      
        '            SELECT DATA_INICI FROM PROCESNR WHERE C_PROCES = :C_' +
        'PROCES INTO :D_INICI_PROCES;'
      ''
      
        '            /* Perfil NR del pacient i durada m'#224'xima del proc'#233's ' +
        '*/'
      '            SELECT U.C_PERFIL, P.N_PERFIL, P.DURADA'
      '            FROM   UM_PERFILNR U'
      '            JOIN   PERFILSNR P ON U.C_PERFIL = P.C_PERFIL'
      '            WHERE  U.C_UNITATMEDICA = :C_UNITATM'
      '            AND    U.SEVERITAT = :SEVERITAT'
      '            INTO  :C_PERFIL, :N_PERFIL, :DURADA_MAX;'
      ''
      ''
      '            /* Busquem Sessi'#243' Conjunta */'
      '            SELECT MAX(C_OBJECTIU)'
      '            FROM   OBJPRESTA'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            INTO  :C_OBJECTIU;'
      ''
      
        '            IF (C_OBJECTIU IS NULL) THEN  SESSIO_CONJUNTA = '#39'NO ' +
        'creada'#39';'
      ''
      '            /* Busquem la data de primera sessi'#243' */'
      '            ELSE BEGIN'
      ''
      '                  SELECT MIN(DATA_SESSIO)'
      '                  FROM   OBJPROPERES'
      '                  WHERE  C_OBJECTIU = :C_OBJECTIU'
      '                  INTO  :DATA_SESSIO;'
      ''
      
        '                  IF (DATA_SESSIO IS NULL) THEN SESSIO_CONJUNTA ' +
        '= '#39'Pendent de programar'#39';'
      ''
      
        '                  ELSE IF (DATA_SESSIO >= "TODAY") THEN SESSIO_C' +
        'ONJUNTA = '#39'Pendent de celebrar'#39';'
      '            END;'
      '            '
      '            /* Mirem si ja est'#224' sobrepassant la durada */'
      
        '            DIES_SOBREPASSA = "TODAY" - D_INICI_PROCES - (30 * D' +
        'URADA_MAX);'
      
        '            IF (DIES_SOBREPASSA < 0) THEN DIES_SOBREPASSA = NULL' +
        ';'
      ''
      
        '            /* Retornem el registre si no t'#233' prealta i:   ja s'#39'h' +
        'a celebrat la sessi'#243' conjunta'
      
        '                                                          o b'#233' f' +
        'a m'#233's de 30 dies de l'#39'inici del proc'#233's'
      
        '                                                          o b'#233' s' +
        'i ja est'#224' sobrepassant el l'#237'mit */'
      ''
      '            IF (D_PREALTA IS NULL) THEN'
      '            BEGIN'
      '                  IF (DATA_SESSIO < "TODAY") THEN SUSPEND;'
      '                  '
      
        '                  ELSE IF ((DATA_SESSIO IS NULL) AND (D_INICI_PR' +
        'OCES + 30 < "TODAY")) THEN SUSPEND;'
      '                  '
      
        '                  ELSE IF ((DIES_SOBREPASSA IS NOT NULL) AND (DI' +
        'ES_SOBREPASSA > 0)) THEN SUSPEND;'
      '            END;'
      ''
      '            /* Tamb'#233' si la prealta sobrepassa el l'#237'mit'
      '               o b'#233' si ja est'#224' sobrepassant el l'#237'mit */'
      '            ELSE BEGIN'
      '            '
      
        '                  DIES_SOBREPASSARA = D_PREALTA - D_INICI_PROCES' +
        ' - (30 * DURADA_MAX);'
      
        '                  IF (DIES_SOBREPASSARA < 0) THEN DIES_SOBREPASS' +
        'ARA = NULL;'
      '                  '
      
        '                  IF ((DIES_SOBREPASSARA IS NOT NULL) AND (DIES_' +
        'SOBREPASSARA > 0)) THEN SUSPEND;'
      '                  '
      
        '                  ELSE IF ((DIES_SOBREPASSA IS NOT NULL) AND (DI' +
        'ES_SOBREPASSA > 0)) THEN SUSPEND;'
      '            END;'
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
    Left = 248
    Top = 16
  end
  object VM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'VM'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (TIPUS          SMALLINT,'
      '         TITOL          VARCHAR(15),'
      '         HISTORIA       INTEGER,'
      '         C_UNITATMEDICA SMALLINT,'
      '         UNITATMEDICA   VARCHAR(30),'
      '         C_GRUP         CHAR(1),'
      '         GRUP           VARCHAR(30),'
      '         DATA_INGRES    DATE,'
      '         DATA_ALTA      DATE,'
      '         DATAINICI_REAL DATE,'
      '         C_TIPUS        SMALLINT,'
      '         MODALITAT      VARCHAR(40),'
      '         DATAFINAL_REAL DATE,'
      '         C_MOTIU        SMALLINT,'
      '         MOTIU_FI       VARCHAR(40),'
      '         DATA_COMUNICAT DATE,'
      '         FACTOR         VARCHAR(30)'
      '         )'
      'AS'
      '  DECLARE VARIABLE DENOMINADOR    INTEGER;'
      '  DECLARE VARIABLE NUMERADOR      INTEGER;'
      '  DECLARE VARIABLE COMUNICATS     INTEGER;'
      '  DECLARE VARIABLE C_TRACTAMENT   INTEGER;'
      '  DECLARE VARIABLE FACT_PREDIS_E  CHAR(1);'
      '  DECLARE VARIABLE C_FACTOR       CHAR(2);'
      '  DECLARE VARIABLE CONTA          SMALLINT;'
      'BEGIN'
      '  NUMERADOR = 0; DENOMINADOR = 0; COMUNICATS = 0;'
      
        '  FOR SELECT R.C_HISTORIA, R.C_TRACTAMENT, F.C_UNITATMEDICA, U.N' +
        '_UNITATM, U.C_GRUP, U.N_GRUP, T.DATA_INGRES, T.DATA_ALTA,'
      
        '             R.DATAINICI_REAL, R.C_TIPUS, CC1.N_CODI, R.DATAFINA' +
        'L_REAL, R.C_MOTIU, CC2.N_CODI'
      '  FROM REGISTRESINFER R'
      '  INNER JOIN TRACTAMENTS T ON R.C_TRACTAMENT = T.C_TRACTAMENT'
      '  INNER JOIN FILIACIO F    ON R.C_HISTORIA = F.NUM_HIST'
      '  INNER JOIN UNITATM U     ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '  LEFT JOIN CODICAMPS CC1  ON R.C_TIPUS=CC1.C_CODI AND CC1.TIPUS' +
        'CODI='#39'INFER.VM_TIPUS'#39
      
        '  LEFT JOIN CODICAMPS CC2  ON R.C_MOTIU=CC2.C_CODI AND CC2.TIPUS' +
        'CODI='#39'INFER.VM_MOTIU'#39
      '  WHERE R.T_REG=3 /* 3-ventilaci'#243' mec'#224'nica*/'
      '  AND R.DATAINICI_REAL BETWEEN :DATAI AND :DATAF'
      '  ORDER BY R.DATAINICI_REAL'
      
        '  INTO :HISTORIA, :C_TRACTAMENT, :C_UNITATMEDICA, :UNITATMEDICA,' +
        ' :C_GRUP, :GRUP, :DATA_INGRES, :DATA_ALTA,'
      
        '       :DATAINICI_REAL, :C_TIPUS, :MODALITAT, :DATAFINAL_REAL, :' +
        'C_MOTIU, :MOTIU_FI'
      '  DO BEGIN'
      '      DENOMINADOR = DENOMINADOR + 1;'
      
        '      TIPUS=2; TITOL='#39'Denominador'#39'; DATA_COMUNICAT=NULL; FACTOR=' +
        'NULL; SUSPEND;'
      ''
      '      /* Numerador: que tingui algun dels diagn'#242'stics ??? */'
      '      CONTA=0;'
      '      SELECT COUNT(*) FROM DIAGNOSTICS'
      '      WHERE C_TRACTAMENT=:C_TRACTAMENT'
      
        '      AND (C_DIAGNOSTIC IN('#39'997.31'#39') OR G_DIAGNOSTIC IN('#39'997.31'#39 +
        '))'
      '      INTO :CONTA;'
      '      IF (CONTA IS NULL) THEN CONTA=0;'
      '      '
      '      IF (CONTA>0) THEN'
      '      BEGIN'
      '          NUMERADOR = NUMERADOR + 1;'
      '          TIPUS=1; TITOL='#39'Numerador'#39'; SUSPEND;'
      '      END;'
      '      '
      
        '      /* a part vol que llistem els comunicats epidemiol'#242'gics re' +
        'spiratoris (nom'#233's externs?)*/'
      
        '      FOR SELECT OMC.DATA, OMC.FACT_PREDIS_E, OMF.C_FACTOR, FP.N' +
        '_FACTOR FROM OMCOMUNICATS OMC'
      '      JOIN OMFACTPREDIS OMF ON OMC.C_COMUNICAT=OMF.C_COMUNICAT'
      '      JOIN FACTPREDIS FP    ON OMF.C_FACTOR = FP.C_FACTOR'
      
        '      WHERE OMC.C_HISTORIA=:HISTORIA AND OMC.C_TRACTAMENT=:C_TRA' +
        'CTAMENT'
      '      AND OMC.TIPUS_INFECCIO='#39'RE'#39
      '      AND OMC.DATA BETWEEN :DATAINICI_REAL AND :DATAFINAL_REAL'
      '      INTO :DATA_COMUNICAT, :FACT_PREDIS_E, :C_FACTOR, :FACTOR'
      '      DO BEGIN'
      '          COMUNICATS = COMUNICATS + 1;'
      '          TIPUS=3; TITOL='#39'Comunicat'#39'; SUSPEND;'
      '      END;'
      '  END;'
      ''
      
        '  HISTORIA=NULL; C_UNITATMEDICA=NULL; UNITATMEDICA=NULL; C_GRUP=' +
        'NULL; GRUP=NULL; DATA_INGRES=NULL;'
      
        '  DATA_ALTA=NULL;  DATAINICI_REAL=NULL; C_TIPUS=NULL; MODALITAT=' +
        'NULL; DATAFINAL_REAL=NULL; C_MOTIU=NULL;'
      '  MOTIU_FI=NULL; DATA_COMUNICAT=NULL; FACTOR=NULL;'
      '  TIPUS=4; TITOL='#39'# Numerador'#39';   HISTORIA=NUMERADOR;   SUSPEND;'
      '  TIPUS=5; TITOL='#39'# Denominador'#39'; HISTORIA=DENOMINADOR; SUSPEND;'
      '  TIPUS=6; TITOL='#39'# Comunicats'#39';  HISTORIA=COMUNICATS;  SUSPEND;'
      'END')
    Dic1 = wDataInfermeria.RegistresInfer
    Dic1Name = 'wDataInfermeria.RegistresInfer'
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
    Left = 26
    Top = 264
  end
  object CS_FIM_ING: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CS_FIM_ING'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (TIPUS     SMALLINT,'
      '         TITOL     VARCHAR(25),'
      '         TOTAL     DOUBLE PRECISION'
      '         )'
      'AS'
      ' DECLARE VARIABLE xxxxxx tipoxxxxx;'
      'BEGIN'
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, T.DA' +
        'TA_ALTA, T.C_PROCES'
      '    FROM TRACTAMENTS T'
      '    WHERE T.C_PROCES IS NOT NULL'
      
        '    AND T.FI_PROCES='#39'S'#39' AND T.DATA_ALTA BETWEEN :DATAI AND :DATA' +
        'F'
      '    ORDER BY T.C_PROCES'
      
        '    INTO :C_HISTORIA, :C_TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :' +
        'C_PROCES'
      '    DO BEGIN'
      ''
      '    '
      '    END;'
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
    Left = 312
    Top = 72
  end
  object SC_PROCES_30DIES: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'SC_Proces_30D'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO INTEGER, DATAI DATE, DATAF DATE)'
      'RETURNS (REGISTRE          VARCHAR(12),'
      '         OBJECTIU          INTEGER,'
      '         HISTORIA          INTEGER,'
      '         PRESTACIO         CHAR(4),'
      '         COORDINADOR       VARCHAR(20),'
      '         DATA_INGRES       DATE,'
      '         DATA_ALTA         DATE,'
      '         DATA_NAIX         DATE,'
      '         EDAT_A_LALTA      INTEGER,'
      '         PROCES            INTEGER,'
      '         FI_PROCES         CHAR(1),'
      '         NUM_SESSIO        INTEGER,'
      '         DATA_SESSIO       DATE'
      '         )'
      'AS'
      '  DECLARE VARIABLE TRACTAMENT     INTEGER;'
      '  DECLARE VARIABLE TOTAL1         INTEGER;'
      '  DECLARE VARIABLE TOTAL2IMES     INTEGER;'
      '  DECLARE VARIABLE CONTA          INTEGER;'
      '  DECLARE VARIABLE DENOMINADOR    DOUBLE PRECISION;'
      '  DECLARE VARIABLE DIES_INGRES    DOUBLE PRECISION;'
      '  DECLARE VARIABLE DATA_COMENTARI DATE;'
      'BEGIN'
      '    TOTAL1=0;TOTAL2IMES=0;'
      '    '
      
        '    IF (OPCIO=1) THEN   /* primers INGRESSOS TIR AMB DATA_ALTA E' +
        'N EL PER'#205'ODE INDICAT */'
      '    BEGIN'
      
        '      FOR SELECT DISTINCT T.C_HISTORIA, T.C_PRESTACIO, T.C_PROCE' +
        'S, T.DATA_ALTA, T.DATA_INGRES, T.FI_PROCES, F.FECHA_NAC, M.METGE' +
        ','
      
        '                          F_TRUNCAR((T.DATA_ALTA - F.FECHA_NAC)/' +
        '365), T.C_TRACTAMENT, P.C_OBJECTIU'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU  D  ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET ' +
        '= '#39'X1'#39
      '      JOIN FILIACIO    F  ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN VMETGES     M  ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN OBJPRESTA   P  ON P.C_TRACTAMENT= T.C_TRACTAMENT AND ' +
        'P.TANCAT <> 2            /* SC no anul'#183'lada          */'
      
        '      JOIN OBJPROPERES PP ON P.C_OBJECTIU = PP.C_OBJECTIU AND PP' +
        '.COMENTARI IS NOT NULL   /* Amb comentari sessi'#243' fet */'
      '      WHERE T.C_PRESTACIO='#39'1004'#39
      '      AND   T.C_PROCES IS NOT NULL'
      '      AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '      AND   (T.DATA_ALTA - T.DATA_INGRES) > 20                  ' +
        '                               /* 3 Setmanes ingressats       */'
      
        '      AND   (PP.DATA_ANOTA - T.DATA_INGRES) <= 30               ' +
        '                               /* Comentari entrat en els primer' +
        's 30 dies */'
      
        '      AND   (SELECT COUNT(*) FROM TRACTAMENTS T2                ' +
        '                               /* No s'#39'han de tenir en compte */'
      
        '             JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39'                   /* els que tenen un ingr'#233's TIR */'
      
        '             WHERE T2.C_HISTORIA = T.C_HISTORIA                 ' +
        '                               /* d'#39'igual C_PROCES anterior   */'
      '             AND   T2.C_TRACTAMENT < T.C_TRACTAMENT'
      '             AND   T2.C_PROCES = T.C_PROCES'
      '             AND   T2.C_PRESTACIO = '#39'1004'#39') = 0'
      '      ORDER BY T.C_HISTORIA, T.DATA_INGRES'
      
        '      INTO :HISTORIA, :PRESTACIO, :PROCES, :DATA_ALTA, :DATA_ING' +
        'RES, :FI_PROCES, :DATA_NAIX, :COORDINADOR,'
      '           :EDAT_A_LALTA, :TRACTAMENT, :OBJECTIU'
      '      DO BEGIN'
      
        '          /* Nom'#233's volem la '#250'ltima sessi'#243' conjunta per'#242' volem sa' +
        'ber quina ha estat en n'#250'mero */'
      '          NUM_SESSIO=0;'
      '          SELECT COUNT(*) FROM OBJPROPERES'
      
        '          WHERE C_OBJECTIU=:OBJECTIU AND COMENTARI IS NOT NULL  ' +
        '/* Amb comentari sessi'#243' fet */'
      
        '          AND ((DATA_ANOTA - :DATA_INGRES) <= 30)               ' +
        '/* en els 30 primers dies   */'
      '          INTO  :NUM_SESSIO;'
      '          '
      '          IF (NUM_SESSIO IS NULL) THEN NUM_SESSIO=0;'
      '          '
      '          IF (NUM_SESSIO>0) THEN'
      '          BEGIN'
      '              REGISTRE='#39'COMPLEIX'#39';'
      '              IF (NUM_SESSIO=1) THEN TOTAL1=TOTAL1+1;'
      '                                ELSE TOTAL2IMES=TOTAL2IMES+1;'
      '                                  '
      
        '              SELECT DATA_ANOTA, MAX(DATA_SESSIO) FROM OBJPROPER' +
        'ES WHERE C_OBJECTIU=:OBJECTIU AND COMENTARI IS NOT NULL   /* Amb' +
        ' comentari sessi'#243' fet */'
      
        '              AND ((DATA_ANOTA - :DATA_INGRES) <= 30) GROUP BY D' +
        'ATA_ANOTA                                                 /* en ' +
        'els 30 primers dies   */'
      '              INTO :DATA_COMENTARI, :DATA_SESSIO;'
      '          END;'
      '          ELSE BEGIN'
      '              REGISTRE='#39'NO COMPLEIX'#39';'
      '              NUM_SESSIO=0;'
      '              DATA_SESSIO=NULL; DATA_COMENTARI=NULL;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '      '
      '      OBJECTIU=NULL;'
      
        '      FOR SELECT DISTINCT T.C_HISTORIA, T.C_PRESTACIO, T.C_PROCE' +
        'S, T.DATA_ALTA, T.DATA_INGRES, T.FI_PROCES, F.FECHA_NAC, M.METGE' +
        ','
      
        '                          F_TRUNCAR((T.DATA_ALTA - F.FECHA_NAC)/' +
        '365), T.C_TRACTAMENT'
      '      FROM TRACTAMENTS    T'
      
        '      JOIN DRETSMOTIU     D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRE' +
        'T = '#39'X1'#39
      '      JOIN FILIACIO       F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN VMETGES        M ON T.C_COORDINADOR = M.CODI'
      
        '      LEFT JOIN OBJPRESTA P ON P.C_TRACTAMENT= T.C_TRACTAMENT AN' +
        'D P.TANCAT <> 2'
      
        '      WHERE T.C_PRESTACIO='#39'1004'#39' AND P.C_OBJECTIU IS NULL       ' +
        '                               /* sense SC no anul'#183'lada    */'
      '      AND   T.C_PROCES IS NOT NULL'
      '      AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '      AND   (T.DATA_ALTA - T.DATA_INGRES) > 20                  ' +
        '                               /* 3 Setmanes ingressats    */'
      
        '      AND   (SELECT COUNT(*) FROM TRACTAMENTS T2                ' +
        '                               /* No s'#39'han de tenir en compte */'
      
        '             JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39'                   /* els que tenen un ingr'#233's TIR */'
      
        '             WHERE T2.C_HISTORIA = T.C_HISTORIA                 ' +
        '                               /* d'#39'igual C_PROCES anterior   */'
      '             AND   T2.C_TRACTAMENT < T.C_TRACTAMENT'
      '             AND   T2.C_PROCES = T.C_PROCES'
      '             AND   T2.C_PRESTACIO = '#39'1004'#39') = 0'
      '      ORDER BY T.C_HISTORIA, T.DATA_INGRES'
      
        '      INTO :HISTORIA, :PRESTACIO, :PROCES, :DATA_ALTA, :DATA_ING' +
        'RES, :FI_PROCES, :DATA_NAIX, :COORDINADOR,'
      '           :EDAT_A_LALTA, :TRACTAMENT'
      '      DO BEGIN'
      '          NUM_SESSIO=0;'
      '          REGISTRE='#39'NO COMPLEIX'#39';'
      '          DATA_SESSIO=NULL; DATA_COMENTARI=NULL;'
      '          SUSPEND;'
      '      END;'
      '      '
      
        '      FOR SELECT DISTINCT T.C_HISTORIA, T.C_PRESTACIO, T.C_PROCE' +
        'S, T.DATA_ALTA, T.DATA_INGRES, T.FI_PROCES, F.FECHA_NAC, M.METGE' +
        ','
      
        '                          F_TRUNCAR((T.DATA_ALTA - F.FECHA_NAC)/' +
        '365), T.C_TRACTAMENT, P.C_OBJECTIU'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU  D  ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET ' +
        '= '#39'X1'#39
      '      JOIN FILIACIO    F  ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN VMETGES     M  ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN OBJPRESTA   P  ON P.C_TRACTAMENT= T.C_TRACTAMENT AND ' +
        'P.TANCAT <> 2                 /* SC no anul'#183'lada            */'
      '      WHERE T.C_PRESTACIO='#39'1004'#39
      '      AND   T.C_PROCES IS NOT NULL'
      '      AND   T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '      AND   (T.DATA_ALTA - T.DATA_INGRES) > 20                  ' +
        '                               /* 3 Setmanes ingressats    */'
      
        '      AND   (SELECT COUNT(*) FROM TRACTAMENTS T2                ' +
        '                               /* No s'#39'han de tenir en compte */'
      
        '             JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39'                   /* els que tenen un ingr'#233's TIR */'
      
        '             WHERE T2.C_HISTORIA = T.C_HISTORIA                 ' +
        '                               /* d'#39'igual C_PROCES anterior   */'
      '             AND   T2.C_TRACTAMENT < T.C_TRACTAMENT'
      '             AND   T2.C_PROCES = T.C_PROCES'
      '             AND   T2.C_PRESTACIO = '#39'1004'#39') = 0'
      '      ORDER BY T.C_HISTORIA, T.DATA_INGRES'
      
        '      INTO :HISTORIA, :PRESTACIO, :PROCES, :DATA_ALTA, :DATA_ING' +
        'RES, :FI_PROCES, :DATA_NAIX, :COORDINADOR,'
      '           :EDAT_A_LALTA, :TRACTAMENT, :OBJECTIU'
      '      DO BEGIN'
      
        '          NUM_SESSIO=0; /* No volem els que tenen almenys una se' +
        'ssi'#243' amb el comentari ple en els primers 30 dies */'
      
        '          SELECT COUNT(*) FROM OBJPROPERES WHERE C_OBJECTIU=:OBJ' +
        'ECTIU'
      
        '          AND COMENTARI IS NOT NULL                             ' +
        '                               /* Comentari de la sessi'#243' fet */'
      
        '          AND ((DATA_ANOTA - :DATA_INGRES) <= 30)               ' +
        '                               /* en els 30 primers dies     */'
      '          INTO :NUM_SESSIO;'
      '          IF (NUM_SESSIO IS NULL) THEN NUM_SESSIO=0;'
      '          '
      '          IF (NUM_SESSIO=0) THEN'
      '          BEGIN'
      '              REGISTRE='#39'NO COMPLEIX'#39';'
      '              DATA_SESSIO=NULL; DATA_COMENTARI=NULL;'
      '              SUSPEND;'
      '          END;'
      '      END;'
      ''
      '      /* Imprimim totals */'
      
        '      HISTORIA=NULL; PRESTACIO=NULL; PROCES=NULL; DATA_INGRES=NU' +
        'LL; DATA_ALTA=NULL; NUM_SESSIO=NULL; DATA_SESSIO=NULL; DATA_COME' +
        'NTARI=NULL;'
      
        '      EDAT_A_LALTA=NULL; DIES_INGRES=NULL; DATA_NAIX=NULL; FI_PR' +
        'OCES=NULL; COORDINADOR=NULL;'
      ''
      '      REGISTRE = '#39'TOTAL 1'#170#39';  OBJECTIU = TOTAL1;     SUSPEND;'
      '      REGISTRE = '#39'TOTAL >1'#170#39'; OBJECTIU = TOTAL2IMES; SUSPEND;'
      ''
      '      REGISTRE = '#39'DENOMINADOR'#39';'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU  D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET =' +
        ' '#39'X1'#39
      '      WHERE  T.C_PRESTACIO='#39'1004'#39
      '      AND    T.C_PROCES IS NOT NULL'
      '      AND    T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '      AND    (T.DATA_ALTA - T.DATA_INGRES) > 20 /* 3 Setmanes in' +
        'gressats */'
      
        '      AND   (SELECT COUNT(*) FROM TRACTAMENTS T2                ' +
        '                               /* No s'#39'han de tenir en compte */'
      
        '             JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C' +
        '_DRET = '#39'X1'#39'                   /* els que tenen un ingr'#233's TIR */'
      
        '             WHERE T2.C_HISTORIA = T.C_HISTORIA                 ' +
        '                               /* d'#39'igual C_PROCES anterior   */'
      '             AND   T2.C_TRACTAMENT < T.C_TRACTAMENT'
      '             AND   T2.C_PROCES = T.C_PROCES'
      '             AND   T2.C_PRESTACIO = '#39'1004'#39') = 0'
      '      INTO :OBJECTIU;'
      '      SUSPEND;'
      '    END;'
      
        '    ELSE BEGIN /* AMBULATORIS TIR QUE NO H'#192'GIN ESTAT INGRESSATS ' +
        'ABANS PER TIR (MATEIX PROCES) */'
      '      DENOMINADOR = 0;'
      
        '      FOR SELECT T.C_HISTORIA, T.C_PRESTACIO, T.C_PROCES, T.DATA' +
        '_ALTA, T.DATA_INGRES, T.FI_PROCES, T.C_TRACTAMENT, M.METGE,'
      
        '                 F_TRUNCAR((T.DATA_ALTA - F.FECHA_NAC)/365), T.D' +
        'ATA_ALTA - T.DATA_INGRES, F.FECHA_NAC'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU  D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET =' +
        ' '#39'X1'#39
      '      JOIN FILIACIO    F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN VMETGES     M ON T.C_COORDINADOR = M.CODI'
      '      WHERE  T.C_PRESTACIO IN ('#39'2014'#39','#39'2008'#39')'
      '      AND    T.C_PROCES IS NOT NULL'
      '      AND    T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '      ORDER  BY T.C_HISTORIA, T.DATA_INGRES'
      
        '      INTO :HISTORIA, :PRESTACIO, :PROCES, :DATA_ALTA, :DATA_ING' +
        'RES, :FI_PROCES, :TRACTAMENT, :COORDINADOR,'
      '           :EDAT_A_LALTA, :DIES_INGRES, :DATA_NAIX'
      '      DO BEGIN'
      
        '          /* Primer mirem que no tingui cap 1004 TIR anterior di' +
        'ns el mateix proc'#233's */'
      '          CONTA = 0;'
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '          JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRE' +
        'T = '#39'X1'#39
      '          WHERE T.C_HISTORIA = :HISTORIA'
      '          AND   T.C_TRACTAMENT < :TRACTAMENT'
      '          AND   T.C_PROCES = :PROCES'
      '          AND   T.C_PRESTACIO IN('#39'1004'#39','#39'2008'#39','#39'2014'#39')'
      '          INTO :CONTA;'
      '          IF (CONTA IS NULL) THEN CONTA=0;'
      '          '
      '          OBJECTIU=0; DATA_SESSIO=NULL; DATA_COMENTARI=NULL;'
      '          IF (CONTA=0) THEN'
      '          BEGIN'
      '              DENOMINADOR=DENOMINADOR+1;'
      '              NUM_SESSIO=0;'
      '          '
      
        '              FOR SELECT PP.C_OBJECTIU, PP.DATA_SESSIO, PP.DATA_' +
        'ANOTA'
      '              FROM OBJPRESTA   P'
      
        '              JOIN OBJPROPERES PP ON P.C_OBJECTIU = PP.C_OBJECTI' +
        'U'
      
        '              WHERE P.C_TRACTAMENT= :TRACTAMENT AND P.TANCAT <> ' +
        '2'
      '              AND PP.COMENTARI IS NOT NULL'
      
        '              AND (PP.DATA_ANOTA - :DATA_INGRES) <= 30          ' +
        '                                   /* Comentari entrat en els pr' +
        'imers 30 dies */'
      '              INTO :OBJECTIU, :DATA_SESSIO, :DATA_COMENTARI'
      '              DO BEGIN'
      '                  REGISTRE='#39'COMPLEIX'#39';'
      '                  NUM_SESSIO = NUM_SESSIO + 1;'
      '                  IF (NUM_SESSIO = 1) THEN TOTAL1=TOTAL1+1;'
      
        '                                      ELSE TOTAL2IMES=TOTAL2IMES' +
        '+1;'
      '                  SUSPEND;'
      '              END;'
      '              '
      '              /* No ha trobat cap sessi'#243' */'
      '              IF (NUM_SESSIO=0) THEN'
      '              BEGIN'
      '                  REGISTRE='#39'NO COMPLEIX'#39';'
      '                  SUSPEND;'
      '              END;'
      '          END;'
      '      END;'
      ''
      '      /* Imprimim totals */'
      
        '      HISTORIA=NULL; PRESTACIO=NULL; PROCES=NULL; DATA_INGRES=NU' +
        'LL; DATA_ALTA=NULL; NUM_SESSIO=NULL; DATA_SESSIO=NULL; DATA_COME' +
        'NTARI=NULL;'
      
        '      EDAT_A_LALTA=NULL; DIES_INGRES=NULL; DATA_NAIX=NULL; FI_PR' +
        'OCES=NULL; COORDINADOR=NULL;'
      ''
      '      REGISTRE = '#39'TOTAL 1'#170#39';    OBJECTIU = TOTAL1;      SUSPEND;'
      '      REGISTRE = '#39'TOTAL >1'#170#39';   OBJECTIU = TOTAL2IMES;  SUSPEND;'
      '      REGISTRE = '#39'DENOMINADOR'#39'; OBJECTIU = DENOMINADOR; SUSPEND;'
      '    END;'
      'END')
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
    Modi = False
    Left = 124
    Top = 128
  end
  object Polimedicacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Polimedicacio'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA_TALL DATE)'
      'RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  DATA_NAIX       DATE,'
      '  SEXE            CHAR(1),'
      '  DATA_LESIO      DATE,'
      '  C_GRUP_UM       CHAR(1),'
      '  N_GRUP_UM       VARCHAR(30),'
      '  DATA_INGRES     DATE,'
      '  C_MOTIU         SMALLINT,'
      '  N_MOTIU         VARCHAR(20),'
      '  /* Escales */'
      '  DATA_ASIA       DATE,'
      '  ASIA            CHAR(1),'
      '  NIV_NEU         VARCHAR(3),'
      '  DATA_FIM        DATE,'
      '  FIM_COG         VARCHAR(15),'
      '  FIM_MOT         VARCHAR(15),'
      '  FIM_TOT         VARCHAR(15),'
      '  DATA_NIHSS      DATE,'
      '  NIHSS           VARCHAR(15),'
      '  DATA_BARTHEL    DATE,'
      '  BARTHEL         VARCHAR(15),'
      '  DATA_RANCHO     DATE,'
      '  RANCHO          VARCHAR(15),'
      '  DATA_DRS        DATE,'
      '  DRS             VARCHAR(15),'
      '  DATA_GLASGOW    DATE,'
      '  GLASGOW         VARCHAR(15),'
      ''
      '  /* Diagn'#242'stics */'
      '  N_DIAG          VARCHAR(40),'
      '  C_ICD           VARCHAR(15),'
      '  N_ICD           VARCHAR(255),'
      '  /* Medicaci'#243' */'
      '  GTN             CHAR(7),'
      '  PPI_ACTIU       VARCHAR(80),'
      '  C_FAM_GTN       CHAR(4),'
      '  N_FAM_GTN       VARCHAR(80)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_TRACTAMENT    INTEGER;'
      'BEGIN'
      ''
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, F.FECHA_NAC, F.SE' +
        'XO, T.DATA_INGRES, U.C_GRUP, U.N_GRUP, F.DATA_LESSIO, T.C_MOTIU,' +
        ' C.PARAMS'
      '          FROM   TRACTAMENTS T'
      '          JOIN   FILIACIO    F ON T.C_HISTORIA = F.NUM_HIST'
      '          JOIN   UNITATM     U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '          JOIN   CODICAMPS   C ON T.C_MOTIU = C.C_CODI AND C.TIP' +
        'USCODI = '#39'MOTIU'#39
      '          WHERE  T.DATA_INGRES <= :DIA_TALL'
      
        '          AND   (T.DATA_ALTA   >= :DIA_TALL OR T.DATA_ALTA IS NU' +
        'LL)'
      '          AND    T.C_PRESTACIO = '#39'1004'#39
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :DATA_NAIX, :SEXE, :' +
        'DATA_INGRES, :C_GRUP_UM, :N_GRUP_UM, :DATA_LESIO, :C_MOTIU, :N_M' +
        'OTIU'
      '      DO BEGIN'
      '      '
      
        '            DATA_ASIA    = NULL;   ASIA    = NULL;   NIV_NEU = N' +
        'ULL;'
      
        '            DATA_FIM     = NULL;   FIM_COG = NULL;   FIM_MOT = N' +
        'ULL;   FIM_TOT = NULL;'
      '            DATA_NIHSS   = NULL;   NIHSS   = NULL;'
      '            DATA_BARTHEL = NULL;   BARTHEL = NULL;'
      '            DATA_RANCHO  = NULL;   RANCHO  = NULL;'
      '            DATA_DRS     = NULL;   DRS     = NULL;'
      '            DATA_GLASGOW = NULL;   GLASGOW = NULL;'
      ''
      
        '            N_DIAG = NULL;    GTN       = NULL; C_FAM_GTN = NULL' +
        ';'
      
        '            C_ICD  = NULL;    PPI_ACTIU = NULL; N_FAM_GTN = NULL' +
        ';'
      '            N_ICD  = NULL;'
      ''
      
        '            /* ESCALES segons grup d'#39'UM: l'#39#250'ltima entrada (anter' +
        'ior al dia del tall) */'
      '            '
      '            /* LM */'
      '            IF ((C_GRUP_UM = '#39'A'#39') OR (C_GRUP_UM = '#39'B'#39')) THEN'
      '            BEGIN'
      '                  /* ASIA */'
      '                  SELECT E.DATA, A.ASIA, A.NIVELL_NEURO'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   ESCASIA    A ON E.CLAU = A.ID'
      '                  WHERE  E.C_ESCALA = 8'
      '                  AND    E.C_HISTORIA = :C_HISTORIA'
      '                  AND    E.DATA <= :DIA_TALL + 15'
      '                  AND    E.ANULAT = '#39'N'#39
      '                  ORDER  BY C_ENTRADA DESC'
      '                  ROWS   1'
      '                  INTO  :DATA_ASIA, ASIA, :NIV_NEU;'
      '            END;'
      '            '
      '            /* Ictus */'
      '            IF (C_GRUP_UM = '#39'D'#39') THEN'
      '            BEGIN'
      '                  /* NIHSS */'
      '                  SELECT E.DATA, L.D_ITEM'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   ESCALESLIN L ON E.CLAU = L.CLAU'
      '                  WHERE  E.C_ESCALA = 73'
      '                  AND    E.C_HISTORIA = :C_HISTORIA'
      '                  AND    E.DATA <= :DIA_TALL + 15'
      '                  AND    E.ANULAT = '#39'N'#39
      '                  AND    L.C_ITEM = 672'
      '                  ORDER  BY C_ENTRADA DESC'
      '                  ROWS   1'
      '                  INTO  :DATA_NIHSS, :NIHSS;'
      ''
      '                  /* BARTHEL */'
      '                  SELECT E.DATA, L.D_ITEM'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   ESCALESLIN L ON E.CLAU = L.CLAU'
      '                  WHERE  E.C_ESCALA = 3'
      '                  AND    E.C_HISTORIA = :C_HISTORIA'
      '                  AND    E.DATA <= :DIA_TALL + 15'
      '                  AND    E.ANULAT = '#39'N'#39
      '                  AND    L.C_ITEM = 125'
      '                  ORDER  BY C_ENTRADA DESC'
      '                  ROWS   1'
      '                  INTO  :DATA_BARTHEL, :BARTHEL;'
      '            END;'
      '            '
      '            /* TCE */'
      '            IF (C_GRUP_UM = '#39'C'#39') THEN'
      '            BEGIN'
      '                  /* LCFS (Rancho) */'
      '                  SELECT E.DATA, L.D_ITEM'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   ESCALESLIN L ON E.CLAU = L.CLAU'
      '                  WHERE  E.C_ESCALA = 6'
      '                  AND    E.C_HISTORIA = :C_HISTORIA'
      '                  AND    E.DATA <= :DIA_TALL + 15'
      '                  AND    E.ANULAT = '#39'N'#39
      '                  AND    L.C_ITEM = 71'
      '                  ORDER  BY C_ENTRADA DESC'
      '                  ROWS   1'
      '                  INTO  :DATA_RANCHO, :RANCHO;'
      ''
      '                  /* DRS */ /* C_Escala =  7   C_Item =  84 */'
      '                  SELECT E.DATA, L.D_ITEM'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   ESCALESLIN L ON E.CLAU = L.CLAU'
      '                  WHERE  E.C_ESCALA = 7'
      '                  AND    E.C_HISTORIA = :C_HISTORIA'
      '                  AND    E.DATA <= :DIA_TALL + 15'
      '                  AND    E.ANULAT = '#39'N'#39
      '                  AND    L.C_ITEM = 84'
      '                  ORDER  BY C_ENTRADA DESC'
      '                  ROWS   1'
      '                  INTO  :DATA_DRS, :DRS;'
      '                  '
      
        '                  /* GLASGOW */  /* Busquem el de la darrera les' +
        'ions successiva abans del dia de tall */'
      '                  SELECT GLASGOW, DATA_REGISTRE'
      '                  FROM   LESIONS_SUCCESSIVES'
      '                  WHERE  C_HISTORIA = :C_HISTORIA'
      '                  AND    DATA_LESIO <= :DIA_TALL'
      '                  ORDER  BY DATA_LESIO DESC'
      '                  ROWS   1'
      '                  INTO  :GLASGOW, :DATA_GLASGOW;'
      '            END;'
      '            '
      '            /* A m'#233's, per a tothom excepte per a TCE */'
      '            ELSE BEGIN'
      '                  /* FIM Cognitiu */'
      '                  SELECT E.DATA, L.D_ITEM'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   ESCALESLIN L ON E.CLAU = L.CLAU'
      '                  WHERE  E.C_ESCALA = 1'
      '                  AND    E.C_HISTORIA = :C_HISTORIA'
      '                  AND    E.DATA <= :DIA_TALL + 15'
      '                  AND    E.ANULAT = '#39'N'#39
      '                  AND    L.C_ITEM = 946'
      '                  ORDER  BY C_ENTRADA DESC'
      '                  ROWS   1'
      '                  INTO  :DATA_FIM, :FIM_COG;'
      ''
      '                  /* FIM Motor */'
      '                  SELECT L.D_ITEM'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   ESCALESLIN L ON E.CLAU = L.CLAU'
      '                  WHERE  E.C_ESCALA = 1'
      '                  AND    E.C_HISTORIA = :C_HISTORIA'
      '                  AND    E.DATA <= :DIA_TALL + 15'
      '                  AND    E.ANULAT = '#39'N'#39
      '                  AND    L.C_ITEM = 361'
      '                  ORDER  BY C_ENTRADA DESC'
      '                  ROWS   1'
      '                  INTO  :FIM_MOT;'
      ''
      '                  /* FIM Total */'
      '                  SELECT L.D_ITEM'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   ESCALESLIN L ON E.CLAU = L.CLAU'
      '                  WHERE  E.C_ESCALA = 1'
      '                  AND    E.C_HISTORIA = :C_HISTORIA'
      '                  AND    E.DATA <= :DIA_TALL + 15'
      '                  AND    E.ANULAT = '#39'N'#39
      '                  AND    L.C_ITEM = 28'
      '                  ORDER  BY C_ENTRADA DESC'
      '                  ROWS   1'
      '                  INTO  :FIM_TOT;'
      '            END;'
      ''
      '            SUSPEND;'
      ''
      
        '            DATA_NAIX = NULL;   DATA_LESIO = NULL;   DATA_INGRES' +
        ' = NULL;'
      
        '            SEXE = NULL;        C_GRUP_UM  = NULL;   C_MOTIU = N' +
        'ULL;'
      
        '                                N_GRUP_UM  = NULL;   N_MOTIU = N' +
        'ULL;'
      '                              '
      
        '            DATA_ASIA    = NULL;   ASIA    = NULL;   NIV_NEU = N' +
        'ULL;'
      
        '            DATA_FIM     = NULL;   FIM_COG = NULL;   FIM_MOT = N' +
        'ULL;   FIM_TOT = NULL;'
      '            DATA_NIHSS   = NULL;   NIHSS   = NULL;'
      '            DATA_BARTHEL = NULL;   BARTHEL = NULL;'
      '            DATA_RANCHO  = NULL;   RANCHO  = NULL;'
      '            DATA_DRS     = NULL;   DRS     = NULL;'
      '            DATA_GLASGOW = NULL;   GLASGOW = NULL;'
      ''
      '            /* Diagn'#242'stics a l'#39'ingr'#233's */'
      
        '            FOR SELECT DISTINCT D.N_DIAGNOSTIC, D.G_DIAGNOSTIC, ' +
        'C.N_ICD'
      '                FROM   DIAGNOSTICS D'
      
        '                LEFT   OUTER JOIN CODIICD C ON D.G_DIAGNOSTIC = ' +
        'C.C_ICD'
      '                WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '                AND    D.TIPUS = '#39'I'#39
      '                INTO  :N_DIAG, :C_ICD, :N_ICD'
      '            DO BEGIN'
      '                  SUSPEND;'
      '            END;'
      ''
      '            N_DIAG = NULL;'
      '            C_ICD  = NULL;'
      '            N_ICD  = NULL;'
      '            '
      '            /* Medicaci'#243' vigent */'
      
        '            FOR SELECT F_StrNull(O.GTN, P.GTN), F_StrNull(G.N_GT' +
        'N, O.N_MEDICAMENT_FG),'
      
        '                       F_Left(F_StrNull(O.GTN, P.GTN), 4), F_Str' +
        'Null(FO.N_FAMILIA4, FP.N_FAMILIA4)'
      '                FROM   ORDRESMEDIQUES O'
      
        '                LEFT   OUTER JOIN GTN          G ON O.GTN = G.GT' +
        'N'
      
        '                LEFT   OUTER JOIN PRODUCTES    P ON O.C_PRODUCTE' +
        ' = P.C_PROD'
      
        '                LEFT   OUTER JOIN FAMILIAGTN4 FO ON C_FAMILIA4 =' +
        ' F_Left(O.GTN,4)'
      
        '                LEFT   OUTER JOIN FAMILIAGTN4 FP ON C_FAMILIA4 =' +
        ' F_Left(P.GTN, 4)'
      '                WHERE  O.C_TRACTAMENT = :C_TRACTAMENT'
      '                AND    O.DATA_INICI <= :DIA_TALL'
      
        '                AND   (O.DATA_SUSPENSIO >= :DIA_TALL OR O.DATA_S' +
        'USPENSIO IS NULL)'
      '                INTO  :GTN, :PPI_ACTIU, :C_FAM_GTN, :N_FAM_GTN'
      '            DO BEGIN'
      '                  SUSPEND;'
      '            END;'
      ''
      '      END;'
      'END')
    Dic1 = wDataOMdics.OrdresMediques
    Dic1Name = 'OrdresMediques'
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
    Left = 82
    Top = 264
  end
  object Estupefaents: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EPF'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_I DATE, DATA_F DATE)'
      'RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  NOM_COMPLET     VARCHAR(80),'
      '  C_OM            INTEGER,'
      '  GTN             CHAR(7),'
      '  PPI_ACTIU       VARCHAR(80),'
      '  DOSI            FLOAT,'
      '  UM              VARCHAR(4),'
      '  FREQ            VARCHAR(4),'
      '  VIA             CHAR(3),'
      '  DATA_INICI      DATE,'
      
        '  NUM_PRESES      INTEGER,    /* Total de preses a administrar (' +
        '= no_admin + preses_reg) */'
      
        '  ADMIN_NO        INTEGER,    /* Preses no administrades (admini' +
        'straci'#243' = N) */'
      
        '  ADMIN_FH        INTEGER,    /* Preses administrades fora d'#39'hor' +
        'a */'
      
        '  PRESES_NO_REG   INTEGER     /* Preses sense administraci'#243' regi' +
        'strada */'
      ')'
      'AS'
      '/*      DECLARE VARIABLE C_OM         INTEGER; */'
      '      DECLARE VARIABLE ID           INTEGER;'
      '      DECLARE VARIABLE DATA_PRESA   DATE;'
      '      DECLARE VARIABLE ADMINISTRAT  CHAR(1);'
      '      DECLARE VARIABLE C_MOTIU      INTEGER;'
      
        '      DECLARE VARIABLE PRESES_REG   INTEGER;  /* Preses amb admi' +
        'nistraci'#243' registrada */'
      'BEGIN'
      ''
      '      /* Prescripcions d'#39'estupefaents del per'#237'ode indicat */'
      
        '      /* Em baso en el GTN del producte assignat per Farm'#224'cia, a' +
        ' l'#39'hora de determinar si '#233's estupefaent'
      
        '        (aix'#237' incloc les pautes fora guia per descriptiu lliure ' +
        '*/'
      
        '      FOR SELECT O.C_ORDREMEDICA, O.C_HISTORIA, F.NOMCOMPLET, O.' +
        'GTN, G.N_GTN, O.DOSI, O.UNITAT_MESURA, O.C_FREQUENCIA, O.C_VIA, ' +
        'O.DATA_INICI'
      '          FROM   ORDRESMEDIQUES O'
      '          JOIN   PRODUCTES P ON O.C_PRODUCTE = P.C_PROD'
      '          JOIN   GTN       G ON P.GTN = G.GTN'
      '          JOIN   FILIACIO  F ON O.C_HISTORIA = F.NUM_HIST'
      '          WHERE  G.ESESTUPEFAENT = '#39'S'#39
      
        '          AND  ((O.DATA_INICI < O.DATA_SUSPENSIO) OR (DATA_SUSPE' +
        'NSIO IS NULL))'
      
        '          AND  ((O.DATA_SUSPENSIO >= :DATA_I) OR (DATA_SUSPENSIO' +
        ' IS NULL))'
      '          AND    O.DATA_INICI <= :DATA_F'
      '          AND    G.GTN <> '#39'N01AH06'#39
      '          AND    G.GTN <> '#39'N01AH01'#39
      '          AND    O.C_FREQUENCIA <> '#39'SI'#39
      '          AND    O.C_FREQUENCIA <> '#39'DU'#39
      
        '          INTO  :C_OM, :C_HISTORIA, :NOM_COMPLET, :GTN, :PPI_ACT' +
        'IU, :DOSI, :UM, :FREQ, :VIA, :DATA_INICI'
      '      DO BEGIN'
      ''
      '            PRESES_REG = 0;'
      '            ADMIN_NO   = 0;'
      '            ADMIN_FH   = 0;'
      '            '
      '            /* Busco la darrera administraci'#243' de cada presa */'
      '            FOR SELECT MAX(ID), DATA_PRESA'
      '                FROM   OMADMINISTRACIO'
      '                WHERE  C_ORDREMEDICA = :C_OM'
      '                AND    DATA_PRESA BETWEEN :DATA_I AND :DATA_F'
      '                GROUP  BY DATA_PRESA'
      '                INTO  :ID, :DATA_PRESA'
      '            DO BEGIN'
      ''
      
        '                  /* Busco l'#39'administraci'#243' S/N/A i el motiu, cor' +
        'responents a la darrera administraci'#243' */'
      '                  SELECT ADMINISTRACIO, C_MOTIU'
      '                  FROM   OMADMINISTRACIO'
      '                  WHERE  ID = :ID'
      '                  INTO  :ADMINISTRAT, :C_MOTIU;'
      ''
      '                  IF (C_MOTIU IS NULL) THEN C_MOTIU = 0;'
      '                  '
      
        '                  /* Excloc dels c'#242'mputs les preses administrade' +
        's per passi */'
      '                  IF (C_MOTIU NOT IN (250, 251, 252)) THEN'
      '                  BEGIN'
      
        '                        IF (ADMINISTRAT <> '#39'A'#39') THEN PRESES_REG ' +
        '= PRESES_REG + 1;  /* Les anul'#183'lades constaran a les "no registr' +
        'ades" */'
      ''
      
        '                        IF ((ADMINISTRAT = '#39'S'#39') AND (C_MOTIU <> ' +
        '0)) THEN ADMIN_FH = ADMIN_FH + 1;'
      
        '                        ELSE IF (ADMINISTRAT = '#39'N'#39') THEN ADMIN_N' +
        'O = ADMIN_NO + 1;'
      '                  END;'
      '            END;'
      '            '
      
        '            /* Preses no indicades (ni administrades ni no admin' +
        'istrades */'
      '            SELECT COUNT(*)'
      '            FROM   OMADMPRESES'
      '            WHERE  C_OM = :C_OM'
      '            AND    DATA_PRESA BETWEEN :DATA_I AND :DATA_F'
      '            INTO  :PRESES_NO_REG;'
      '            '
      '            NUM_PRESES = PRESES_REG + PRESES_NO_REG;'
      ''
      '            SUSPEND;'
      '      END;'
      'END')
    Dic1 = wDataOMdics.OrdresMediques
    Dic1Name = 'OrdresMediques'
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
    Top = 264
  end
  object Rehab_Infantil_Setmanal: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RI_SETMANAL'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (DIA_SETMANA     VARCHAR(8),'
      '         GRUP            VARCHAR(16),'
      '         RESPONSABLE     VARCHAR(20),'
      '         ACTIVITAT       VARCHAR(15),'
      '         HORA            VARCHAR(5),'
      '         PACIENT         VARCHAR(80)'
      '         )'
      'AS'
      '  DECLARE VARIABLE DIA     INTEGER;'
      '  DECLARE VARIABLE C_METGE VARCHAR(5);'
      '  DECLARE VARIABLE H       INTEGER;'
      '  DECLARE VARIABLE QDIA    SMALLINT;'
      'BEGIN'
      '  DIA = 1; QDIA = 1;'
      '  WHILE (DIA <= 7) DO'
      '  BEGIN'
      '      /* FISIOS */'
      '      GRUP = '#39'FISIOTERAPEUTES'#39';'
      
        '      FOR SELECT F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT, MIN(A.HOR' +
        'A)'
      '      FROM TRACTAMENTS   T'
      '      JOIN FILIACIO      F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      JOIN AGENDAPACIENT A ON T.C_HISTORIA = A.C_HISTORIA AND (A' +
        '.DATAF IS NULL OR A.DATAF >= "TODAY") AND A.DIA_SEMANA = :DIA'
      '      JOIN METGES        M ON T.C_FISIOTERAPEUTA = M.CODI'
      
        '      JOIN CODICAMPSALFA C ON A.C_ACTIVITAT = C.C_CODI AND C.TIP' +
        'USCODI = '#39'ACTIVITATFI'#39' AND C.C_GRUP = M.C_GRUP'
      
        '      WHERE T.C_PRESTACIO = '#39'2008'#39' AND (T.DATA_ALTA IS NULL OR T' +
        '.DATA_ALTA >= "TODAY")'
      '      AND (NOT A.C_ACTIVITAT LIKE '#39'%*%'#39')'
      
        '      AND (NOT (A.C_ACTIVITAT IN('#39'MULTISENSORIAL'#39','#39'INF.T.O.AREA'#39 +
        ')))'
      '      GROUP BY F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT'
      '      ORDER BY 2,3,4,1'
      '      INTO :PACIENT, :RESPONSABLE, :ACTIVITAT, :H'
      '      DO BEGIN'
      
        '        IF      (H=1)  THEN HORA='#39'08_00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'09_00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09_30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'10_30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11_00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'12_00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12_30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13_00'#39'; ELSE IF (H=12) THEN HORA='#39'13_30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14_00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14_30'#39'; ELSE IF (H=15) THEN HORA='#39'15_00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15_30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16_00'#39'; ELSE IF (H=18) THEN HORA='#39'16_30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17_00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17_30'#39'; ELSE IF (H=21) THEN HORA='#39'18_00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18_30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19_00'#39'; ELSE IF (H=24) THEN HORA='#39'19_30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20_00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20_30'#39';'
      ''
      '        IF      (QDIA > 1) THEN DIA_SETMANA = '#39#39';'
      '        ELSE BEGIN'
      '          IF      (DIA= 1) THEN DIA_SETMANA = '#39'DILLUNS'#39';'
      '          ELSE IF (DIA= 2) THEN DIA_SETMANA = '#39'DIMARTS'#39';'
      '          ELSE IF (DIA= 3) THEN DIA_SETMANA = '#39'DIMECRES'#39';'
      '          ELSE IF (DIA= 4) THEN DIA_SETMANA = '#39'DIJOUS'#39';'
      '          ELSE IF (DIA= 5) THEN DIA_SETMANA = '#39'DIVENDES'#39';'
      '          ELSE IF (DIA= 6) THEN DIA_SETMANA = '#39'DISSABTE'#39';'
      '          ELSE IF (DIA= 7) THEN DIA_SETMANA = '#39'DIUMENGE'#39';'
      '        END;'
      ''
      '        QDIA = QDIA + 1;'
      '        IF ((ACTIVITAT<>'#39'TAE'#39') OR (DIA<>4)) THEN SUSPEND;'
      '      END;'
      ''
      '      /* TERAPEUTES */'
      '      GRUP = '#39'TERAPEUTES'#39';'
      
        '      FOR SELECT F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT, MIN(A.HOR' +
        'A)'
      '      FROM TRACTAMENTS   T'
      '      JOIN FILIACIO      F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      JOIN AGENDAPACIENT A ON T.C_HISTORIA = A.C_HISTORIA AND (A' +
        '.DATAF IS NULL OR A.DATAF >= "TODAY") AND A.DIA_SEMANA = :DIA'
      '      JOIN METGES        M ON T.C_TERAPEUTA = M.CODI'
      
        '      JOIN CODICAMPSALFA C ON A.C_ACTIVITAT = C.C_CODI AND C.TIP' +
        'USCODI = '#39'ACTIVITATFI'#39
      
        '      WHERE T.C_PRESTACIO = '#39'2008'#39' AND (T.DATA_ALTA IS NULL OR T' +
        '.DATA_ALTA >= "TODAY")'
      '      AND (NOT A.C_ACTIVITAT LIKE '#39'%*%'#39')'
      
        '      AND (A.C_ACTIVITAT IN('#39'MULTISENSORIAL'#39','#39'PSICOMOTRICITAT'#39','#39 +
        'INF.T.O.AREA'#39') OR (A.C_ACTIVITAT='#39'TAE'#39' AND A.DIA_SEMANA=4))'
      '      GROUP BY F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT'
      '      ORDER BY 2,3,4,1'
      '      INTO :PACIENT, :RESPONSABLE, :ACTIVITAT, :H'
      '      DO BEGIN'
      
        '        IF      (H=1)  THEN HORA='#39'08_00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'09_00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09_30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'10_30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11_00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'12_00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12_30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13_00'#39'; ELSE IF (H=12) THEN HORA='#39'13_30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14_00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14_30'#39'; ELSE IF (H=15) THEN HORA='#39'15_00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15_30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16_00'#39'; ELSE IF (H=18) THEN HORA='#39'16_30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17_00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17_30'#39'; ELSE IF (H=21) THEN HORA='#39'18_00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18_30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19_00'#39'; ELSE IF (H=24) THEN HORA='#39'19_30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20_00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20_30'#39';'
      ''
      '        IF      (QDIA > 1) THEN DIA_SETMANA = '#39#39';'
      '        ELSE BEGIN'
      '          IF      (DIA= 1) THEN DIA_SETMANA = '#39'DILLUNS'#39';'
      '          ELSE IF (DIA= 2) THEN DIA_SETMANA = '#39'DIMARTS'#39';'
      '          ELSE IF (DIA= 3) THEN DIA_SETMANA = '#39'DIMECRES'#39';'
      '          ELSE IF (DIA= 4) THEN DIA_SETMANA = '#39'DIJOUS'#39';'
      '          ELSE IF (DIA= 5) THEN DIA_SETMANA = '#39'DIVENDES'#39';'
      '          ELSE IF (DIA= 6) THEN DIA_SETMANA = '#39'DISSABTE'#39';'
      '          ELSE IF (DIA= 7) THEN DIA_SETMANA = '#39'DIUMENGE'#39';'
      '        END;'
      ''
      '        QDIA = QDIA + 1;'
      '        SUSPEND;'
      '      END;'
      ''
      '      /* LOGOPEDES */'
      '      GRUP = '#39'LOGOPEDES'#39';'
      
        '      FOR SELECT F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT, MIN(A.HOR' +
        'A)'
      '      FROM TRACTAMENTS   T'
      '      JOIN FILIACIO      F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      JOIN AGENDAPACIENT A ON T.C_HISTORIA = A.C_HISTORIA AND (A' +
        '.DATAF IS NULL OR A.DATAF >= "TODAY") AND A.DIA_SEMANA = :DIA'
      '      JOIN METGES        M ON T.C_LOGOPEDA = M.CODI'
      
        '      JOIN CODICAMPSALFA C ON A.C_ACTIVITAT = C.C_CODI AND C.TIP' +
        'USCODI = '#39'ACTIVITATLO'#39
      
        '      WHERE T.C_PRESTACIO = '#39'2008'#39' AND (T.DATA_ALTA IS NULL OR T' +
        '.DATA_ALTA >= "TODAY")  AND C.C_GRUP = M.C_GRUP'
      '      AND (NOT A.C_ACTIVITAT LIKE '#39'%*%'#39')'
      '      GROUP BY F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT'
      '      ORDER BY 2,3,4,1'
      '      INTO :PACIENT, :RESPONSABLE, :ACTIVITAT, :H'
      '      DO BEGIN'
      
        '        IF      (H=1)  THEN HORA='#39'08_00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'09_00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09_30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'10_30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11_00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'12_00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12_30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13_00'#39'; ELSE IF (H=12) THEN HORA='#39'13_30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14_00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14_30'#39'; ELSE IF (H=15) THEN HORA='#39'15_00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15_30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16_00'#39'; ELSE IF (H=18) THEN HORA='#39'16_30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17_00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17_30'#39'; ELSE IF (H=21) THEN HORA='#39'18_00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18_30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19_00'#39'; ELSE IF (H=24) THEN HORA='#39'19_30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20_00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20_30'#39';'
      ''
      '        IF      (QDIA > 1) THEN DIA_SETMANA = '#39#39';'
      '        ELSE BEGIN'
      '          IF      (DIA= 1) THEN DIA_SETMANA = '#39'DILLUNS'#39';'
      '          ELSE IF (DIA= 2) THEN DIA_SETMANA = '#39'DIMARTS'#39';'
      '          ELSE IF (DIA= 3) THEN DIA_SETMANA = '#39'DIMECRES'#39';'
      '          ELSE IF (DIA= 4) THEN DIA_SETMANA = '#39'DIJOUS'#39';'
      '          ELSE IF (DIA= 5) THEN DIA_SETMANA = '#39'DIVENDES'#39';'
      '          ELSE IF (DIA= 6) THEN DIA_SETMANA = '#39'DISSABTE'#39';'
      '          ELSE IF (DIA= 7) THEN DIA_SETMANA = '#39'DIUMENGE'#39';'
      '        END;'
      ''
      '        QDIA = QDIA + 1;'
      '        SUSPEND;'
      '      END;'
      '      '
      '     /* PSIC'#210'LEGS */'
      '     GRUP = '#39'PSICOLEGS'#39';'
      
        '      FOR SELECT F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT, MIN(A.HOR' +
        'A)'
      '      FROM TRACTAMENTS   T'
      '      JOIN FILIACIO      F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      JOIN AGENDAPACIENT A ON T.C_HISTORIA = A.C_HISTORIA AND (A' +
        '.DATAF IS NULL OR A.DATAF >= "TODAY") AND A.DIA_SEMANA = :DIA'
      '      JOIN METGES        M ON T.C_PSICOLEG = M.CODI'
      
        '      JOIN CODICAMPSALFA C ON A.C_ACTIVITAT = C.C_CODI AND C.TIP' +
        'USCODI = '#39'ACTIVITATPS'#39
      
        '      WHERE T.C_PRESTACIO = '#39'2008'#39' AND (T.DATA_ALTA IS NULL OR T' +
        '.DATA_ALTA >= "TODAY") AND C.C_GRUP = M.C_GRUP'
      '      AND (NOT A.C_ACTIVITAT LIKE '#39'%*%'#39')'
      '      GROUP BY F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT'
      '      ORDER BY 2,3,4,1'
      '      INTO :PACIENT, :RESPONSABLE, :ACTIVITAT, :H'
      '      DO BEGIN'
      
        '        IF      (H=1)  THEN HORA='#39'08_00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'09_00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09_30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'10_30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11_00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'12_00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12_30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13_00'#39'; ELSE IF (H=12) THEN HORA='#39'13_30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14_00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14_30'#39'; ELSE IF (H=15) THEN HORA='#39'15_00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15_30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16_00'#39'; ELSE IF (H=18) THEN HORA='#39'16_30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17_00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17_30'#39'; ELSE IF (H=21) THEN HORA='#39'18_00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18_30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19_00'#39'; ELSE IF (H=24) THEN HORA='#39'19_30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20_00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20_30'#39';'
      ''
      '        IF      (QDIA > 1) THEN DIA_SETMANA = '#39#39';'
      '        ELSE BEGIN'
      '          IF      (DIA= 1) THEN DIA_SETMANA = '#39'DILLUNS'#39';'
      '          ELSE IF (DIA= 2) THEN DIA_SETMANA = '#39'DIMARTS'#39';'
      '          ELSE IF (DIA= 3) THEN DIA_SETMANA = '#39'DIMECRES'#39';'
      '          ELSE IF (DIA= 4) THEN DIA_SETMANA = '#39'DIJOUS'#39';'
      '          ELSE IF (DIA= 5) THEN DIA_SETMANA = '#39'DIVENDES'#39';'
      '          ELSE IF (DIA= 6) THEN DIA_SETMANA = '#39'DISSABTE'#39';'
      '          ELSE IF (DIA= 7) THEN DIA_SETMANA = '#39'DIUMENGE'#39';'
      '        END;'
      ''
      '        QDIA = QDIA + 1;'
      '        SUSPEND;'
      '      END;'
      ''
      '      /* MUSICOTER'#192'PIA */'
      '      GRUP = '#39'MUSICOTERAPEUTES'#39';'
      
        '      FOR SELECT F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT, MIN(A.HOR' +
        'A)'
      '      FROM TRACTAMENTS   T'
      '      JOIN FILIACIO      F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      JOIN AGENDAPACIENT A ON T.C_HISTORIA = A.C_HISTORIA AND (A' +
        '.DATAF IS NULL OR A.DATAF >= "TODAY") AND A.DIA_SEMANA = :DIA'
      '      JOIN METGES        M ON T.C_MUSICOTERAPEUTA = M.CODI'
      
        '      JOIN CODICAMPSALFA C ON A.C_ACTIVITAT = C.C_CODI AND C.TIP' +
        'USCODI = '#39'ACTIVITATMS'#39
      
        '      WHERE T.C_PRESTACIO = '#39'2008'#39' AND (T.DATA_ALTA IS NULL OR T' +
        '.DATA_ALTA >= "TODAY") AND C.C_GRUP = M.C_GRUP'
      '      AND (NOT A.C_ACTIVITAT LIKE '#39'%*%'#39')'
      '      GROUP BY F.NOMCOMPLET, M.METGE, A.C_ACTIVITAT'
      '      ORDER BY 2,3,4,1'
      '      INTO :PACIENT, :RESPONSABLE, :ACTIVITAT, :H'
      '      DO BEGIN'
      
        '        IF      (H=1)  THEN HORA='#39'08_00'#39'; ELSE IF (H=2)  THEN HO' +
        'RA='#39'08_30'#39'; ELSE IF (H=3)  THEN HORA='#39'09_00'#39';'
      
        '        ELSE IF (H=4)  THEN HORA='#39'09_30'#39'; ELSE IF (H=5)  THEN HO' +
        'RA='#39'10_00'#39'; ELSE IF (H=6)  THEN HORA='#39'10_30'#39';'
      
        '        ELSE IF (H=7)  THEN HORA='#39'11_00'#39'; ELSE IF (H=8)  THEN HO' +
        'RA='#39'11_30'#39'; ELSE IF (H=9)  THEN HORA='#39'12_00'#39';'
      
        '        ELSE IF (H=10) THEN HORA='#39'12_30'#39'; ELSE IF (H=11) THEN HO' +
        'RA='#39'13_00'#39'; ELSE IF (H=12) THEN HORA='#39'13_30'#39';'
      
        '        ELSE IF (H=13) THEN HORA='#39'14_00'#39'; ELSE IF (H=14) THEN HO' +
        'RA='#39'14_30'#39'; ELSE IF (H=15) THEN HORA='#39'15_00'#39';'
      
        '        ELSE IF (H=16) THEN HORA='#39'15_30'#39'; ELSE IF (H=17) THEN HO' +
        'RA='#39'16_00'#39'; ELSE IF (H=18) THEN HORA='#39'16_30'#39';'
      
        '        ELSE IF (H=19) THEN HORA='#39'17_00'#39'; ELSE IF (H=20) THEN HO' +
        'RA='#39'17_30'#39'; ELSE IF (H=21) THEN HORA='#39'18_00'#39';'
      
        '        ELSE IF (H=22) THEN HORA='#39'18_30'#39'; ELSE IF (H=23) THEN HO' +
        'RA='#39'19_00'#39'; ELSE IF (H=24) THEN HORA='#39'19_30'#39';'
      
        '        ELSE IF (H=25) THEN HORA='#39'20_00'#39'; ELSE IF (H=26) THEN HO' +
        'RA='#39'20_30'#39';'
      ''
      '        IF      (QDIA > 1) THEN DIA_SETMANA = '#39#39';'
      '        ELSE BEGIN'
      '          IF      (DIA= 1) THEN DIA_SETMANA = '#39'DILLUNS'#39';'
      '          ELSE IF (DIA= 2) THEN DIA_SETMANA = '#39'DIMARTS'#39';'
      '          ELSE IF (DIA= 3) THEN DIA_SETMANA = '#39'DIMECRES'#39';'
      '          ELSE IF (DIA= 4) THEN DIA_SETMANA = '#39'DIJOUS'#39';'
      '          ELSE IF (DIA= 5) THEN DIA_SETMANA = '#39'DIVENDES'#39';'
      '          ELSE IF (DIA= 6) THEN DIA_SETMANA = '#39'DISSABTE'#39';'
      '          ELSE IF (DIA= 7) THEN DIA_SETMANA = '#39'DIUMENGE'#39';'
      '        END;'
      ''
      '        QDIA = QDIA + 1;'
      '        SUSPEND;'
      '      END;'
      ''
      '      DIA = DIA + 1;'
      '      QDIA = 1;'
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
    Left = 208
    Top = 72
  end
  object MaterialesSAP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'MaterialesSAP'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (RAMO                     CHAR(1),'
      '         TIPO_MATERIAL            VARCHAR(4),'
      '         CENTRO                   VARCHAR(4),'
      '         ALMACEN                  VARCHAR(4),'
      '         DESCIPCION_MATERIAL      VARCHAR(30),'
      '         UNIDAD_MEDIDA_BASE       VARCHAR(4),'
      '         GRUPO_ARTICULOS          VARCHAR(8),'
      '         GRUPO_TIPO_POSICION      VARCHAR(4),'
      '         CLAVE_IDIOMA             CHAR(2),'
      '         CODIGO_EAN               VARCHAR(13),'
      '         ESESTRANGER              CHAR(1),'
      '         CODI_PRODUCTE            INTEGER,'
      '         CODI_AEMPS               INTEGER,'
      '         UNIDAD_MEDIDA_PEDIDO     VARCHAR(4),'
      '         CONVERSION_UNIDAD_MEDIDA DOUBLE PRECISION,'
      '         GRUPO_COMPRAS            CHAR(3),'
      '         STATUS                   VARCHAR(1),'
      '         TEXTO_PEDIDO_COMPRAS     VARCHAR(100),'
      '         IVA                      DOUBLE PRECISION,'
      '         LOTE                     CHAR(1),'
      '         PREUBIONEXO              DOUBLE PRECISION,'
      '         DESCUENTO                DOUBLE PRECISION,'
      '         BONIFICACION             DOUBLE PRECISION,'
      '         PUNTO_PEDIDO_CENTRO      INTEGER,'
      '         STOCK_MAX                INTEGER,'
      '         PLAZO_ENTREGA            CHAR(1),'
      '         PUNTO_PEDIDO             INTEGER,'
      '         UBICACION                VARCHAR(10),'
      '         TIPO_VALORACION_FARMACIA CHAR(1),'
      '         CLASE_VALORACION         VARCHAR(11),'
      '         INDENTIFICADOR_CONTROL_PRECIOS CHAR(1),'
      '         CANTIDAD_BASE            CHAR(1),'
      '         PRECIO                   DOUBLE PRECISION,'
      '         CODIGO_SCS               VARCHAR(6),'
      '         CATEGORIA_VALORACION     CHAR(4),'
      '         CODGIO_NACIONAL          VARCHAR(10),'
      '         DESCIPCION_MATERIAL2     VARCHAR(30)'
      '         )'
      'AS'
      ' DECLARE VARIABLE CODICOMPTABLE INTEGER;'
      'BEGIN'
      ''
      
        ' RAMO = '#39'P'#39'; TIPO_MATERIAL = '#39'ZFAR'#39'; CENTRO = '#39'HBDN'#39'; GRUPO_TIPO' +
        '_POSICION  = '#39'ZLEI'#39'; CLAVE_IDIOMA = '#39'CA'#39';  GRUPO_COMPRAS ='#39'FAR'#39';' +
        ' TIPO_VALORACION_FARMACIA = '#39'F'#39'; INDENTIFICADOR_CONTROL_PRECIOS ' +
        '= '#39'V'#39';'
      
        ' LOTE = '#39#39'; STOCK_MAX = NULL; PLAZO_ENTREGA = '#39#39'; CANTIDAD_BASE ' +
        '= '#39'1'#39'; UNIDAD_MEDIDA_BASE = '#39'UN'#39'; UNIDAD_MEDIDA_PEDIDO = '#39'ENV'#39';'
      '      '
      ' /* MAGATZEM BADALONA AUTOCONSUM */'
      ' ALMACEN = '#39'0001'#39'; CLASE_VALORACION = '#39'FARM-PROPIO'#39';'
      ' '
      ' GRUPO_ARTICULOS = '#39'FAR-0001'#39'; CLASE_VALORACION = '#39'FARM-PROPIO'#39';'
      
        ' FOR SELECT N_REG, EAN, ESESTRANGER, C_PROD, AEMPS, F_DIVISA(C_E' +
        'NVASCLINIC,0), C_ESTAT, UBI,'
      
        '            N_PROD, PERIVA, PREUBIONEXO, PERDTE, BONI, STOCKALER' +
        'TA, STOCKALERTA, PREUMITG, C_SERVEI, CODICOMPTABLE, STOCKMAXIM_P' +
        'TL, C_NACIONAL, N_REG2'
      ' FROM PRODUCTES WHERE TIPUSPROD='#39'M'#39
      
        ' INTO :DESCIPCION_MATERIAL, :CODIGO_EAN, :ESESTRANGER, :CODI_PRO' +
        'DUCTE, :CODI_AEMPS, :CONVERSION_UNIDAD_MEDIDA, :STATUS, :UBICACI' +
        'ON,'
      
        '      :TEXTO_PEDIDO_COMPRAS, :IVA, :PREUBIONEXO, :DESCUENTO, :BO' +
        'NIFICACION, :PUNTO_PEDIDO_CENTRO, :PUNTO_PEDIDO, :PRECIO, :CODIG' +
        'O_SCS, :CODICOMPTABLE, :STOCK_MAX, :CODGIO_NACIONAL, :DESCIPCION' +
        '_MATERIAL2'
      ' DO BEGIN'
      
        '     IF      (CODICOMPTABLE = 6000) THEN CATEGORIA_VALORACION = ' +
        #39'Z600'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6001) THEN CATEGORIA_VALORACION = ' +
        #39'Z601'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6002) THEN CATEGORIA_VALORACION = ' +
        #39'Z602'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6003) THEN CATEGORIA_VALORACION = ' +
        #39'Z603'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6004) THEN CATEGORIA_VALORACION = ' +
        #39'Z604'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6005) THEN CATEGORIA_VALORACION = ' +
        #39'Z605'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6006) THEN CATEGORIA_VALORACION = ' +
        #39'Z606'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6007) THEN CATEGORIA_VALORACION = ' +
        #39'Z607'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6009) THEN CATEGORIA_VALORACION = ' +
        #39'Z609'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6010) THEN CATEGORIA_VALORACION = ' +
        #39'Z610'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6012) THEN CATEGORIA_VALORACION = ' +
        #39'Z612'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6014) THEN CATEGORIA_VALORACION = ' +
        #39'Z614'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6015) THEN CATEGORIA_VALORACION = ' +
        #39'Z615'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6018) THEN CATEGORIA_VALORACION = ' +
        #39'Z618'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6019) THEN CATEGORIA_VALORACION = ' +
        #39'Z619'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6011) THEN CATEGORIA_VALORACION = ' +
        #39'Z611'#39';  /* per medicaci'#243' no hi haur'#224' mai de venta */'
      
        '     ELSE IF (CODICOMPTABLE = 6013) THEN CATEGORIA_VALORACION = ' +
        #39'Z613'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6017) THEN CATEGORIA_VALORACION = ' +
        #39'Z617'#39';'
      ''
      '     SUSPEND;'
      ' END;'
      ' '
      ' GRUPO_ARTICULOS = '#39'INC-0001'#39';'
      
        ' FOR SELECT N_REG, EAN, ESESTRANGER, C_PROD, AEMPS, F_DIVISA(C_E' +
        'NVASCLINIC,0), C_ESTAT, UBI,'
      
        '            N_PROD, PERIVA, PREUBIONEXO, PERDTE, BONI, STOCKALER' +
        'TA, STOCKALERTA, PREUMITG, C_SERVEI, CODICOMPTABLE, STOCKMAXIM_P' +
        'TL, C_NACIONAL, N_REG2'
      ' FROM PRODUCTES WHERE TIPUSPROD='#39'P'#39
      
        ' INTO :DESCIPCION_MATERIAL, :CODIGO_EAN, :ESESTRANGER, :CODI_PRO' +
        'DUCTE, :CODI_AEMPS, :CONVERSION_UNIDAD_MEDIDA, :STATUS, :UBICACI' +
        'ON,'
      
        '      :TEXTO_PEDIDO_COMPRAS, :IVA, :PREUBIONEXO, :DESCUENTO, :BO' +
        'NIFICACION, :PUNTO_PEDIDO_CENTRO, :PUNTO_PEDIDO, :PRECIO, :CODIG' +
        'O_SCS, :CODICOMPTABLE, :STOCK_MAX, :CODGIO_NACIONAL, :DESCIPCION' +
        '_MATERIAL2'
      ' DO BEGIN'
      
        '     IF      (CODICOMPTABLE = 6000) THEN CATEGORIA_VALORACION = ' +
        #39'Z600'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6001) THEN CATEGORIA_VALORACION = ' +
        #39'Z601'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6002) THEN CATEGORIA_VALORACION = ' +
        #39'Z602'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6003) THEN CATEGORIA_VALORACION = ' +
        #39'Z603'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6004) THEN CATEGORIA_VALORACION = ' +
        #39'Z604'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6005) THEN CATEGORIA_VALORACION = ' +
        #39'Z605'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6006) THEN CATEGORIA_VALORACION = ' +
        #39'Z606'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6007) THEN CATEGORIA_VALORACION = ' +
        #39'Z607'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6009) THEN CATEGORIA_VALORACION = ' +
        #39'Z609'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6010) THEN CATEGORIA_VALORACION = ' +
        #39'Z610'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6012) THEN CATEGORIA_VALORACION = ' +
        #39'Z612'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6014) THEN CATEGORIA_VALORACION = ' +
        #39'Z614'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6015) THEN CATEGORIA_VALORACION = ' +
        #39'Z615'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6018) THEN CATEGORIA_VALORACION = ' +
        #39'Z618'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6019) THEN CATEGORIA_VALORACION = ' +
        #39'Z619'#39';'
      '     ELSE IF (CODICOMPTABLE = 6011) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z711'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z611'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE IF (CODICOMPTABLE = 6013) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z713'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z613'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE IF (CODICOMPTABLE = 6017) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z717'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z617'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '/*     ELSE BEGIN*/'
      '         SUSPEND;'
      '/*     END;*/'
      ' END;'
      ' '
      
        ' /* MAGATZEM PTL AUTOCONSUM  - 31-1-2019: NO VOLEN FER SERVIR EL' +
        ' MAGATZEM PTL => NO ENVIO CAP PRODUCTE - PARTE 6226'
      ' ALMACEN = '#39'0002'#39'; CLASE_VALORACION = '#39'FARM-PROPIO'#39';'
      ''
      ' GRUPO_ARTICULOS = '#39'FAR-0001'#39';'
      
        ' FOR SELECT N_REG, EAN, ESESTRANGER, C_PROD, AEMPS, F_DIVISA(C_E' +
        'NVASCLINIC,0), C_ESTAT, UBI,'
      
        '            N_PROD, PERIVA, PREUBIONEXO, PERDTE, BONI, STOCKALER' +
        'TA, STOCKALERTA, PREUMITG, C_SERVEI, CODICOMPTABLE, STOCKMAXIM_P' +
        'TL, C_NACIONAL, N_REG2'
      ' FROM PRODUCTES WHERE TIPUSPROD='#39'M'#39' AND PTL='#39'S'#39
      
        ' INTO :DESCIPCION_MATERIAL, :CODIGO_EAN, :ESESTRANGER, :CODI_PRO' +
        'DUCTE, :CODI_AEMPS, :CONVERSION_UNIDAD_MEDIDA, :STATUS, :UBICACI' +
        'ON,'
      
        '      :TEXTO_PEDIDO_COMPRAS, :IVA, :PREUBIONEXO, :DESCUENTO, :BO' +
        'NIFICACION, :PUNTO_PEDIDO_CENTRO, :PUNTO_PEDIDO, :PRECIO, :CODIG' +
        'O_SCS, :CODICOMPTABLE, :STOCK_MAX, :CODGIO_NACIONAL, :DESCIPCION' +
        '_MATERIAL2'
      ' DO BEGIN'
      
        '     IF      (CODICOMPTABLE = 6000) THEN CATEGORIA_VALORACION = ' +
        #39'Z600'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6001) THEN CATEGORIA_VALORACION = ' +
        #39'Z601'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6002) THEN CATEGORIA_VALORACION = ' +
        #39'Z602'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6003) THEN CATEGORIA_VALORACION = ' +
        #39'Z603'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6004) THEN CATEGORIA_VALORACION = ' +
        #39'Z604'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6005) THEN CATEGORIA_VALORACION = ' +
        #39'Z605'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6006) THEN CATEGORIA_VALORACION = ' +
        #39'Z606'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6007) THEN CATEGORIA_VALORACION = ' +
        #39'Z607'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6009) THEN CATEGORIA_VALORACION = ' +
        #39'Z609'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6010) THEN CATEGORIA_VALORACION = ' +
        #39'Z610'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6012) THEN CATEGORIA_VALORACION = ' +
        #39'Z612'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6014) THEN CATEGORIA_VALORACION = ' +
        #39'Z614'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6015) THEN CATEGORIA_VALORACION = ' +
        #39'Z615'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6018) THEN CATEGORIA_VALORACION = ' +
        #39'Z618'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6019) THEN CATEGORIA_VALORACION = ' +
        #39'Z619'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6011) THEN CATEGORIA_VALORACION = ' +
        #39'Z611'#39';  /* per medicaci'#243' no hi haur'#224' mai de venta *'
      
        '     ELSE IF (CODICOMPTABLE = 6013) THEN CATEGORIA_VALORACION = ' +
        #39'Z613'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6017) THEN CATEGORIA_VALORACION = ' +
        #39'Z617'#39';'
      '     SUSPEND;'
      ' END;'
      ''
      ' GRUPO_ARTICULOS = '#39'INC-0001'#39';'
      
        ' FOR SELECT N_REG, EAN, ESESTRANGER, C_PROD, AEMPS, F_DIVISA(C_E' +
        'NVASCLINIC,0), C_ESTAT, UBI,'
      
        '            N_PROD, PERIVA, PREUBIONEXO, PERDTE, BONI, STOCKALER' +
        'TA, STOCKALERTA, PREUMITG, C_SERVEI, CODICOMPTABLE, STOCKMAXIM_P' +
        'TL, C_NACIONAL, N_REG2'
      ' FROM PRODUCTES WHERE TIPUSPROD='#39'P'#39' AND PTL='#39'S'#39
      
        ' INTO :DESCIPCION_MATERIAL, :CODIGO_EAN, :ESESTRANGER, :CODI_PRO' +
        'DUCTE, :CODI_AEMPS, :CONVERSION_UNIDAD_MEDIDA, :STATUS, :UBICACI' +
        'ON,'
      
        '      :TEXTO_PEDIDO_COMPRAS, :IVA, :PREUBIONEXO, :DESCUENTO, :BO' +
        'NIFICACION, :PUNTO_PEDIDO_CENTRO, :PUNTO_PEDIDO, :PRECIO, :CODIG' +
        'O_SCS, :CODICOMPTABLE, :STOCK_MAX, :CODGIO_NACIONAL, :DESCIPCION' +
        '_MATERIAL2'
      ' DO BEGIN'
      
        '     IF      (CODICOMPTABLE = 6000) THEN CATEGORIA_VALORACION = ' +
        #39'Z600'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6001) THEN CATEGORIA_VALORACION = ' +
        #39'Z601'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6002) THEN CATEGORIA_VALORACION = ' +
        #39'Z602'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6003) THEN CATEGORIA_VALORACION = ' +
        #39'Z603'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6004) THEN CATEGORIA_VALORACION = ' +
        #39'Z604'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6005) THEN CATEGORIA_VALORACION = ' +
        #39'Z605'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6006) THEN CATEGORIA_VALORACION = ' +
        #39'Z606'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6007) THEN CATEGORIA_VALORACION = ' +
        #39'Z607'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6009) THEN CATEGORIA_VALORACION = ' +
        #39'Z609'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6010) THEN CATEGORIA_VALORACION = ' +
        #39'Z610'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6012) THEN CATEGORIA_VALORACION = ' +
        #39'Z612'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6014) THEN CATEGORIA_VALORACION = ' +
        #39'Z614'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6015) THEN CATEGORIA_VALORACION = ' +
        #39'Z615'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6018) THEN CATEGORIA_VALORACION = ' +
        #39'Z618'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6019) THEN CATEGORIA_VALORACION = ' +
        #39'Z619'#39';'
      '     ELSE IF (CODICOMPTABLE = 6011) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z711'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z611'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE IF (CODICOMPTABLE = 6013) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z713'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z613'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE IF (CODICOMPTABLE = 6017) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z717'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z617'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE BEGIN'
      '         SUSPEND;'
      '     END;'
      ' END;   */'
      ''
      
        ' /* MAGATZEM BARCELONA AUTOCONSUM *        17-1-2019: PARLAT AMB' +
        ' BVG: no enviar res a BCN pq es comporta com un centre de cost.'
      ' ALMACEN = '#39'0003'#39'; CLASE_VALORACION = '#39'FARM-PROPIO'#39';'
      ''
      ' GRUPO_ARTICULOS = '#39'FAR-0001'#39';'
      
        ' FOR SELECT N_REG, EAN, ESESTRANGER, C_PROD, AEMPS, F_DIVISA(C_E' +
        'NVASCLINIC,0), C_ESTAT, UBI,'
      
        '            N_PROD, PERIVA, PREUBIONEXO, PERDTE, BONI, STOCKALER' +
        'TA, STOCKALERTA, PREUMITG, C_SERVEI, CODICOMPTABLE, STOCKMAXIM_P' +
        'TL, C_NACIONAL, N_REG2'
      ' FROM PRODUCTES WHERE TIPUSPROD='#39'M'#39
      
        ' INTO :DESCIPCION_MATERIAL, :CODIGO_EAN, :ESESTRANGER, :CODI_PRO' +
        'DUCTE, :CODI_AEMPS, :CONVERSION_UNIDAD_MEDIDA, :STATUS, :UBICACI' +
        'ON,'
      
        '      :TEXTO_PEDIDO_COMPRAS, :IVA, :PREUBIONEXO, :DESCUENTO, :BO' +
        'NIFICACION, :PUNTO_PEDIDO_CENTRO, :PUNTO_PEDIDO, :PRECIO, :CODIG' +
        'O_SCS, :CODICOMPTABLE, :STOCK_MAX, :CODGIO_NACIONAL, :DESCIPCION' +
        '_MATERIAL2'
      ' DO BEGIN'
      
        '     IF      (CODICOMPTABLE = 6000) THEN CATEGORIA_VALORACION = ' +
        #39'Z600'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6001) THEN CATEGORIA_VALORACION = ' +
        #39'Z601'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6002) THEN CATEGORIA_VALORACION = ' +
        #39'Z602'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6003) THEN CATEGORIA_VALORACION = ' +
        #39'Z603'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6004) THEN CATEGORIA_VALORACION = ' +
        #39'Z604'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6005) THEN CATEGORIA_VALORACION = ' +
        #39'Z605'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6006) THEN CATEGORIA_VALORACION = ' +
        #39'Z606'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6007) THEN CATEGORIA_VALORACION = ' +
        #39'Z607'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6009) THEN CATEGORIA_VALORACION = ' +
        #39'Z609'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6010) THEN CATEGORIA_VALORACION = ' +
        #39'Z610'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6012) THEN CATEGORIA_VALORACION = ' +
        #39'Z612'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6014) THEN CATEGORIA_VALORACION = ' +
        #39'Z614'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6015) THEN CATEGORIA_VALORACION = ' +
        #39'Z615'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6018) THEN CATEGORIA_VALORACION = ' +
        #39'Z618'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6019) THEN CATEGORIA_VALORACION = ' +
        #39'Z619'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6011) THEN CATEGORIA_VALORACION = ' +
        #39'Z611'#39';  /* per medicaci'#243' no hi haur'#224' mai de venta *'
      
        '     ELSE IF (CODICOMPTABLE = 6013) THEN CATEGORIA_VALORACION = ' +
        #39'Z613'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6017) THEN CATEGORIA_VALORACION = ' +
        #39'Z617'#39';'
      '     SUSPEND;'
      ' END;'
      ''
      ' GRUPO_ARTICULOS = '#39'INC-0001'#39';'
      
        ' FOR SELECT N_REG, EAN, ESESTRANGER, C_PROD, AEMPS, F_DIVISA(C_E' +
        'NVASCLINIC,0), C_ESTAT, UBI,'
      
        '            N_PROD, PERIVA, PREUBIONEXO, PERDTE, BONI, STOCKALER' +
        'TA, STOCKALERTA, PREUMITG, C_SERVEI, CODICOMPTABLE, STOCKMAXIM_P' +
        'TL, C_NACIONAL, N_REG2'
      ' FROM PRODUCTES WHERE TIPUSPROD='#39'P'#39
      
        ' INTO :DESCIPCION_MATERIAL, :CODIGO_EAN, :ESESTRANGER, :CODI_PRO' +
        'DUCTE, :CODI_AEMPS, :CONVERSION_UNIDAD_MEDIDA, :STATUS, :UBICACI' +
        'ON,'
      
        '      :TEXTO_PEDIDO_COMPRAS, :IVA, :PREUBIONEXO, :DESCUENTO, :BO' +
        'NIFICACION, :PUNTO_PEDIDO_CENTRO, :PUNTO_PEDIDO, :PRECIO, :CODIG' +
        'O_SCS, :CODICOMPTABLE, :STOCK_MAX, :CODGIO_NACIONAL, :DESCIPCION' +
        '_MATERIAL2'
      ' DO BEGIN'
      
        '     IF      (CODICOMPTABLE = 6000) THEN CATEGORIA_VALORACION = ' +
        #39'Z600'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6001) THEN CATEGORIA_VALORACION = ' +
        #39'Z601'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6002) THEN CATEGORIA_VALORACION = ' +
        #39'Z602'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6003) THEN CATEGORIA_VALORACION = ' +
        #39'Z603'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6004) THEN CATEGORIA_VALORACION = ' +
        #39'Z604'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6005) THEN CATEGORIA_VALORACION = ' +
        #39'Z605'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6006) THEN CATEGORIA_VALORACION = ' +
        #39'Z606'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6007) THEN CATEGORIA_VALORACION = ' +
        #39'Z607'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6009) THEN CATEGORIA_VALORACION = ' +
        #39'Z609'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6010) THEN CATEGORIA_VALORACION = ' +
        #39'Z610'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6012) THEN CATEGORIA_VALORACION = ' +
        #39'Z612'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6014) THEN CATEGORIA_VALORACION = ' +
        #39'Z614'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6015) THEN CATEGORIA_VALORACION = ' +
        #39'Z615'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6018) THEN CATEGORIA_VALORACION = ' +
        #39'Z618'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6019) THEN CATEGORIA_VALORACION = ' +
        #39'Z619'#39';'
      '     ELSE IF (CODICOMPTABLE = 6011) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z711'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z611'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE IF (CODICOMPTABLE = 6013) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z713'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z613'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE IF (CODICOMPTABLE = 6017) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z717'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z617'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE BEGIN'
      '         SUSPEND;'
      '     END;'
      ' END;'
      ''
      ' /* MAGATZEM VENTA */'
      ' ALMACEN = '#39'0013'#39';'
      ''
      ' GRUPO_ARTICULOS = '#39'FAR-0001'#39'; CLASE_VALORACION = '#39'FARM-PROPIO'#39';'
      
        ' FOR SELECT N_REG, EAN, ESESTRANGER, C_PROD, AEMPS, F_DIVISA(C_E' +
        'NVASCLINIC,0), C_ESTAT, UBI,'
      
        '            N_PROD, PERIVA, PREUBIONEXO, PERDTE, BONI, STOCKALER' +
        'TA, STOCKALERTA, PREUMITG, C_SERVEI, CODICOMPTABLE, STOCKMAXIM_P' +
        'TL, C_NACIONAL, N_REG2'
      ' FROM PRODUCTES WHERE TIPUSPROD='#39'M'#39
      
        '/* AND  C_PROD IN('#39'8250'#39','#39'189'#39','#39'8953'#39','#39'190'#39','#39'167'#39','#39'357'#39','#39'199'#39','#39'3' +
        '58'#39','#39'414'#39','#39'354'#39')  Totes les dispensacions de estocs van al '#39'0013' +
        #39' per tant els envio tots encara que elles em donin nom'#233's estoc ' +
        'per uns pocs */'
      
        ' INTO :DESCIPCION_MATERIAL, :CODIGO_EAN, :ESESTRANGER, :CODI_PRO' +
        'DUCTE, :CODI_AEMPS, :CONVERSION_UNIDAD_MEDIDA, :STATUS, :UBICACI' +
        'ON,'
      
        '      :TEXTO_PEDIDO_COMPRAS, :IVA, :PREUBIONEXO, :DESCUENTO, :BO' +
        'NIFICACION, :PUNTO_PEDIDO_CENTRO, :PUNTO_PEDIDO, :PRECIO, :CODIG' +
        'O_SCS, :CODICOMPTABLE, :STOCK_MAX, :CODGIO_NACIONAL, :DESCIPCION' +
        '_MATERIAL2'
      ' DO BEGIN'
      
        '     IF      (CODICOMPTABLE = 6000) THEN CATEGORIA_VALORACION = ' +
        #39'Z600'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6001) THEN CATEGORIA_VALORACION = ' +
        #39'Z601'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6002) THEN CATEGORIA_VALORACION = ' +
        #39'Z602'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6003) THEN CATEGORIA_VALORACION = ' +
        #39'Z603'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6004) THEN CATEGORIA_VALORACION = ' +
        #39'Z604'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6005) THEN CATEGORIA_VALORACION = ' +
        #39'Z605'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6006) THEN CATEGORIA_VALORACION = ' +
        #39'Z606'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6007) THEN CATEGORIA_VALORACION = ' +
        #39'Z607'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6009) THEN CATEGORIA_VALORACION = ' +
        #39'Z609'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6010) THEN CATEGORIA_VALORACION = ' +
        #39'Z610'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6012) THEN CATEGORIA_VALORACION = ' +
        #39'Z612'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6014) THEN CATEGORIA_VALORACION = ' +
        #39'Z614'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6015) THEN CATEGORIA_VALORACION = ' +
        #39'Z615'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6018) THEN CATEGORIA_VALORACION = ' +
        #39'Z618'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6019) THEN CATEGORIA_VALORACION = ' +
        #39'Z619'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6011) THEN CATEGORIA_VALORACION = ' +
        #39'Z611'#39';  /* per medicaci'#243' no hi haur'#224' mai de venta */'
      
        '     ELSE IF (CODICOMPTABLE = 6013) THEN CATEGORIA_VALORACION = ' +
        #39'Z613'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6017) THEN CATEGORIA_VALORACION = ' +
        #39'Z617'#39';'
      '     SUSPEND;'
      ' END;'
      ''
      ' GRUPO_ARTICULOS = '#39'INC-0001'#39';'
      
        ' FOR SELECT N_REG, EAN, ESESTRANGER, C_PROD, AEMPS, F_DIVISA(C_E' +
        'NVASCLINIC,0), C_ESTAT, UBI,'
      
        '            N_PROD, PERIVA, PREUBIONEXO, PERDTE, BONI, STOCKALER' +
        'TA, STOCKALERTA, PREUMITG, C_SERVEI, CODICOMPTABLE, STOCKMAXIM_P' +
        'TL, C_NACIONAL, N_REG2'
      ' FROM PRODUCTES WHERE TIPUSPROD='#39'P'#39
      
        '/* AND  C_PROD IN('#39'8250'#39','#39'189'#39','#39'8953'#39','#39'190'#39','#39'167'#39','#39'357'#39','#39'199'#39','#39'3' +
        '58'#39','#39'414'#39','#39'354'#39') Totes les dispensacions de estocs van al '#39'0013'#39 +
        ' per tant els envio tots encara que elles em donin nom'#233's estoc p' +
        'er uns pocs */'
      
        ' INTO :DESCIPCION_MATERIAL, :CODIGO_EAN, :ESESTRANGER, :CODI_PRO' +
        'DUCTE, :CODI_AEMPS, :CONVERSION_UNIDAD_MEDIDA, :STATUS, :UBICACI' +
        'ON,'
      
        '      :TEXTO_PEDIDO_COMPRAS, :IVA, :PREUBIONEXO, :DESCUENTO, :BO' +
        'NIFICACION, :PUNTO_PEDIDO_CENTRO, :PUNTO_PEDIDO, :PRECIO, :CODIG' +
        'O_SCS, :CODICOMPTABLE, :STOCK_MAX, :CODGIO_NACIONAL, :DESCIPCION' +
        '_MATERIAL2'
      ' DO BEGIN'
      
        '     IF      (CODICOMPTABLE = 6000) THEN CATEGORIA_VALORACION = ' +
        #39'Z600'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6001) THEN CATEGORIA_VALORACION = ' +
        #39'Z601'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6002) THEN CATEGORIA_VALORACION = ' +
        #39'Z602'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6003) THEN CATEGORIA_VALORACION = ' +
        #39'Z603'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6004) THEN CATEGORIA_VALORACION = ' +
        #39'Z604'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6005) THEN CATEGORIA_VALORACION = ' +
        #39'Z605'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6006) THEN CATEGORIA_VALORACION = ' +
        #39'Z606'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6007) THEN CATEGORIA_VALORACION = ' +
        #39'Z607'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6009) THEN CATEGORIA_VALORACION = ' +
        #39'Z609'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6010) THEN CATEGORIA_VALORACION = ' +
        #39'Z610'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6012) THEN CATEGORIA_VALORACION = ' +
        #39'Z612'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6014) THEN CATEGORIA_VALORACION = ' +
        #39'Z614'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6015) THEN CATEGORIA_VALORACION = ' +
        #39'Z615'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6018) THEN CATEGORIA_VALORACION = ' +
        #39'Z618'#39';'
      
        '     ELSE IF (CODICOMPTABLE = 6019) THEN CATEGORIA_VALORACION = ' +
        #39'Z619'#39';'
      '     ELSE IF (CODICOMPTABLE = 6011) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z711'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z611'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE IF (CODICOMPTABLE = 6013) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z713'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z613'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     ELSE IF (CODICOMPTABLE = 6017) THEN'
      '     BEGIN'
      
        '         CATEGORIA_VALORACION = '#39'Z717'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-VENTA'#39';'
      '         SUSPEND;'
      
        '         CATEGORIA_VALORACION = '#39'Z617'#39';  CLASE_VALORACION = '#39'FAR' +
        'M-PROPIO'#39';'
      '     END;'
      '     /*ELSE BEGIN*/'
      '         SUSPEND;'
      '     /*END;*/'
      ' END;'
      ''
      'END')
    Dic1 = wDataProductes.Productes
    Dic1Name = 'wDataProductes.Productes'
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
    Left = 696
    Top = 488
  end
  object MRPSAP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'MRPSAP'
    ForceNombreDB = False
    Body.Strings = (
      '(DINICI DATE, DFINAL DATE)'
      'RETURNS (CODI_PRODUCTE            INTEGER,'
      '         STOCK_ACTUAL_CENTRE      INTEGER,'
      
        '         PUNTO_PEDIDO             INTEGER,  /* ESTOC ALERTA - CA' +
        'LCULADO */'
      
        '         PUNTO_MINIMO             INTEGER,  /* ESTOC MINIMO - CA' +
        'LCULADO */'
      '         CANTIDAD_PENDIENTE       INTEGER,'
      '         DIAS_SEGURIDAD           INTEGER,'
      '         DIAS_REPOSICION          INTEGER,'
      '         CONSUMO_MENSUAL          DOUBLE PRECISION,'
      '         CANTIDAD_A_PEDIR         INTEGER,  /* CALCULADO */'
      '         STOCK_MAXIMO             INTEGER,'
      '         CHECK_AUTOMATIZACION     CHAR(1),'
      '         TIPO_VALORACION          VARCHAR(10),'
      '         ALMACEN                  VARCHAR(4),'
      '         LOTE                     VARCHAR(15),'
      '         FECHA_CADUCIDAD          DATE,'
      '         ERROR                    VARCHAR(70)'
      '         )'
      'AS'
      ' DECLARE VARIABLE STOCKACTUAL_PTL INTEGER;'
      ' DECLARE VARIABLE PTL             CHAR(1);'
      ' DECLARE VARIABLE SUBMAGATZEM     CHAR(1);'
      ' DECLARE VARIABLE STOCKACTUAL     INTEGER;'
      ' DECLARE VARIABLE STOCK_SII       INTEGER;'
      ' DECLARE VARIABLE STOCK_ACUM      INTEGER;'
      ''
      ' DECLARE VARIABLE CONSUM_SII      DOUBLE PRECISION;'
      'BEGIN'
      ''
      
        ' PUNTO_PEDIDO = NULL; PUNTO_MINIMO = NULL; CANTIDAD_A_PEDIR = NU' +
        'LL; DIAS_SEGURIDAD = 3; DIAS_REPOSICION = 2; STOCK_MAXIMO = 0; C' +
        'HECK_AUTOMATIZACION = '#39'X'#39';'
      ' STOCKACTUAL_PTL = 0; STOCKACTUAL = 0;'
      '      '
      
        ' FOR SELECT C_PROD, CANTPENDENT, STOCKACTUAL, STOCKACTUAL_PTL, P' +
        'TL, SUBMAGATZEM'
      ' FROM PRODUCTES'
      ' WHERE C_ESTAT='#39'V'#39
      
        ' INTO :CODI_PRODUCTE, :CANTIDAD_PENDIENTE, :STOCKACTUAL, :STOCKA' +
        'CTUAL_PTL, :PTL, :SUBMAGATZEM'
      ' DO BEGIN'
      '     ERROR = NULL;'
      '     IF (STOCKACTUAL     IS NULL) THEN STOCKACTUAL = 0;'
      '     IF (STOCKACTUAL_PTL IS NULL) THEN STOCKACTUAL_PTL = 0;'
      ' '
      '     STOCK_SII = 0;'
      '     '
      
        '     IF ((CODI_PRODUCTE='#39'8250'#39') OR (CODI_PRODUCTE='#39'189'#39') OR (COD' +
        'I_PRODUCTE='#39'8953'#39') OR (CODI_PRODUCTE='#39'190'#39') OR (CODI_PRODUCTE='#39'1' +
        '67'#39') OR'
      
        '         (CODI_PRODUCTE='#39'357'#39')  OR (CODI_PRODUCTE='#39'199'#39') OR (COD' +
        'I_PRODUCTE='#39'358'#39')  OR (CODI_PRODUCTE='#39'414'#39') OR (CODI_PRODUCTE='#39'3' +
        '54'#39')) THEN'
      '     BEGIN'
      
        '         SELECT STOCK_SII FROM P_MOVIMENTS_SII_STOCK(:CODI_PRODU' +
        'CTE) INTO :STOCK_SII;'
      '         IF (STOCK_SII IS NULL) THEN STOCK_SII = 0;'
      ''
      
        '         /* 24-12-2018: Si hi ha estoc a SII, al magatzem 0001 s' +
        #39'ha de passar STOCKACTUAL - STOCK_SII i el STOCK_SII al 0013'
      
        '            Aix'#242' nom'#233's si '#233's positiu i la difer'#232'ncia tamb'#233' ho '#233's' +
        '. A m'#233's, sempre ha de ser STOCKACTUAL > STOCK_SII ja que a cap m' +
        'agatzem hi pot haver estoc negatiu*/'
      
        '         IF ((STOCK_SII >= 0) AND (STOCKACTUAL >= STOCK_SII)) TH' +
        'EN'
      '         BEGIN'
      '             STOCKACTUAL = STOCKACTUAL - STOCK_SII;'
      '         END'
      '         ELSE BEGIN'
      
        '             IF (STOCK_SII < 0)                THEN ERROR = '#39'EST' +
        'OC SII NEGATIU('#39'||STOCK_SII||'#39'). REVISAR ESTOC'#39';'
      
        '             ELSE IF (STOCKACTUAL < STOCK_SII) THEN ERROR = '#39'EST' +
        'OC SII ('#39'||STOCK_SII||'#39') SUPERIOR A ESTOC ACTUAL('#39'||STOCKACTUAL|' +
        '|'#39'). REVISAR ESTOC'#39';'
      '         END;'
      '     END;'
      '     '
      '     /* CONSUMO_MENSUAL: consum anual/12 */'
      '     CONSUMO_MENSUAL = 0;'
      
        '     /*SELECT F_DIVISA(SUM(STOCK)/12,4) FROM P_MOVIMENTS_AGRUPAS' +
        'ALDOS(:DINICI, :DFINAL, :CODI_PRODUCTE) INTO :CONSUMO_MENSUAL;'
      '     IF (CONSUMO_MENSUAL IS NULL) THEN CONSUMO_MENSUAL=0;'
      ''
      '     /* DUBTES *'
      '     EL CONSUM MENSUAL A QUIN MAGATZEM VA??'
      
        '     I LA CANTITAT PENDENT? -> CAL MIRAR COMANDES PENDENTS I SI ' +
        #201'S VENDA='#39'S'#39' LLAVORS A 0013 ALTRAMENT A 0001/0002?'
      
        '     El tenim global. Es pot saber per centres de cost. El de st' +
        'ocs va al 0013.'
      '     /* ---------------------- */'
      
        '     /*  he de reproduir jo els c'#224'lculs de la  P_MOVIMENTS_AGRUP' +
        'ASALDOS i separar-ho per magatzem / centre de cost. */'
      ''
      
        '     SELECT F_DIVISA(SUM(STOCK)/12,4) - F_DIVISA(SUM(STOCK_SII)/' +
        '12,4), F_DIVISA(SUM(STOCK_SII)/12,4) FROM P_MOVIMENTS_AGRUPASALD' +
        'OSSAP(:DINICI, :DFINAL, :CODI_PRODUCTE) INTO :CONSUMO_MENSUAL, :' +
        'CONSUM_SII;'
      '     IF (CONSUMO_MENSUAL IS NULL) THEN CONSUMO_MENSUAL=0;'
      '     IF (CONSUM_SII      IS NULL) THEN CONSUM_SII=0;'
      ''
      
        '     /* Consum mig (Si d'#243'na 0,xxx , posem 1. Si d'#243'na negatiu, po' +
        'sem 0  <-- Tret de procedure P_PRODUCTES_STOCKALERTA'
      
        '     IF (CONSUMO_MENSUAL < 0)                             THEN C' +
        'ONSUMO_MENSUAL = 0;'
      
        '     IF ((CONSUMO_MENSUAL > 0) AND (CONSUMO_MENSUAL < 1)) THEN C' +
        'ONSUMO_MENSUAL = 1;'
      
        '     IF (CONSUM_SII < 0)                                  THEN C' +
        'ONSUM_SII = 0;'
      
        '     IF ((CONSUM_SII > 0) AND (CONSUM_SII < 1))           THEN C' +
        'ONSUMO_MENSUAL = 1; */'
      ''
      '     TIPO_VALORACION = '#39'FAR-PROPIO'#39';'
      ''
      '     /* 31-1-2019: NO VOLEN RES AL PTL - PARTE 6226'
      '     IF (PTL = '#39'S'#39') THEN'
      '     BEGIN'
      
        '         /* 10/12/2018 Parlo amb Josana i diu que ara ho tenen t' +
        'ot al magatzem Badalona. Acordem que ja est'#224' b'#233' com ho estem fen' +
        't: si '#233's PTL, si no t'#233' submagatzem ho enviem a PTL per'#242' s'#237
      '                       s'#237' en t'#233', ho enviem a Badalona. *'
      
        '         IF (SUBMAGATZEM = '#39'S'#39') THEN /* no tot est'#224' al PTL, hi h' +
        'a estoc al submagatzem *'
      '         BEGIN'
      '             /* la part que hi ha al magatzem PTL *'
      '             STOCK_ACTUAL_CENTRE = STOCKACTUAL_PTL;'
      '             ALMACEN = '#39'0002'#39';'
      '             SUSPEND;'
      '             /* la resta est'#224' al magatzem Badalona *'
      
        '             STOCK_ACTUAL_CENTRE = STOCKACTUAL - STOCKACTUAL_PTL' +
        ';'
      '             ALMACEN = '#39'0001'#39';'
      '         END;'
      
        '         ELSE BEGIN                  /* tot est'#224' al PTL, no hi h' +
        'a estoc al submagatzem *'
      '             STOCK_ACTUAL_CENTRE = STOCKACTUAL;'
      '             ALMACEN = '#39'0002'#39';'
      '         END;'
      '     END;'
      '     ELSE BEGIN'
      '         STOCK_ACTUAL_CENTRE = STOCKACTUAL;'
      '         ALMACEN = '#39'0001'#39';'
      '     END; */'
      '     '
      
        '     /* 31-1-2019: enviar moviments EP'#39's amb data caducitat >='#39'1' +
        '.1.2019'#39' i al final un moviment de regularitzaci'#243'n per a que qua' +
        'dri amb STOCKACTUAL */'
      '     ALMACEN = '#39'0001'#39'; STOCK_ACUM = 0;'
      '     IF (STOCKACTUAL <> 0 ) THEN'
      '     BEGIN'
      '         FOR SELECT M.CANTITAT, M.DATACADUCITAT, L.C_LOTE'
      '         FROM MOVIMENTS M'
      
        '         JOIN ALBALIN   L ON M.C_ALBARA=L.C_ALBARA AND M.C_PROD=' +
        'L.C_PROD'
      '         WHERE M.C_PROD = :CODI_PRODUCTE'
      '         AND   M.T_MOV = '#39'EP'#39
      '         AND   M.DATACADUCITAT >= '#39'1.1.2019'#39
      '         ORDER BY M.DATACADUCITAT'
      '         INTO :STOCK_ACTUAL_CENTRE, :FECHA_CADUCIDAD, :LOTE'
      '         DO BEGIN'
      '             STOCK_ACUM = STOCK_ACUM + STOCK_ACTUAL_CENTRE;'
      '             SUSPEND;'
      '         END;'
      '         IF (STOCK_ACUM <> STOCKACTUAL) THEN'
      '         BEGIN'
      '             STOCK_ACTUAL_CENTRE = STOCKACTUAL - STOCK_ACUM;'
      '             SUSPEND;'
      '         END;'
      '     END'
      '     ELSE BEGIN  /* PER ESTOC 0 NO CAL FER TOT LO ANTERIOR */'
      '         STOCK_ACTUAL_CENTRE = STOCKACTUAL;'
      '         SUSPEND;'
      '     END;'
      ''
      
        '     /* Si t'#233' STOCK_SII tamb'#233' s'#39'ha de comunicar l'#39'estoc de venda' +
        ' */'
      
        '     /* 24-12-2018: Si '#233's <0 no s'#39'hauria d'#39'enviar pq vol dir que' +
        ' no han fet la comanda */'
      
        '     /* 25-1-2019: nom'#233's dels productes que ens diu Farm'#224'cia: 82' +
        '50, 189, 8953, 190, 167, 357, 199, 358, 414, 354 */'
      '     IF ((STOCK_SII > 0) AND (STOCKACTUAL > STOCK_SII) AND'
      
        '         ((CODI_PRODUCTE='#39'8250'#39') OR (CODI_PRODUCTE='#39'189'#39') OR (CO' +
        'DI_PRODUCTE='#39'8953'#39') OR (CODI_PRODUCTE='#39'190'#39') OR (CODI_PRODUCTE='#39 +
        '167'#39') OR'
      
        '          (CODI_PRODUCTE='#39'357'#39')  OR (CODI_PRODUCTE='#39'199'#39') OR (CO' +
        'DI_PRODUCTE='#39'358'#39')  OR (CODI_PRODUCTE='#39'414'#39') OR (CODI_PRODUCTE='#39 +
        '354'#39'))'
      '        ) THEN'
      '     BEGIN'
      '         CANTIDAD_PENDIENTE = 0;'
      '         CONSUMO_MENSUAL = CONSUM_SII;'
      '         TIPO_VALORACION = '#39'FAR-VENTA'#39';'
      '         STOCK_ACTUAL_CENTRE = STOCK_SII;'
      '         ALMACEN = '#39'0013'#39';'
      '         SUSPEND;'
      '     END;'
      ''
      ' END;'
      ''
      'END')
    Dic1 = wDataProductes.Productes
    Dic1Name = 'wDataProductes.Productes'
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
    Top = 488
  end
  object CargaEmpleadosSAP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CargaEmpleadosSAP'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (NOMBRECOMPLETO   VARCHAR(80),'
      '         FECHA_NACIMIENTO DATE,'
      '         SEXO             CHAR(1),'
      '         PAIS             VARCHAR(2),'
      '         CALLE            VARCHAR(40),'
      '         CODIGO_POSTAL    VARCHAR(5),'
      '         MEDICO           CHAR(1),'
      '         ENFERMERO        CHAR(1),'
      '         ESPECIALIDAD     CHAR(2),'
      '         NUM_COLEGIADO    CHAR(6),'
      
        '         TE_AGENDA        CHAR(1)   /* valors S/N     si el prof' +
        'essional t'#233' agenda o no (pot ser coordinador d'#39'un episodi) */'
      ')'
      'AS'
      '  DECLARE VARIABLE C_GRUP CHAR(2);'
      '  DECLARE VARIABLE CODI   VARCHAR(5);'
      '  DECLARE VARIABLE QUANTS INTEGER;'
      'BEGIN'
      '      '
      '  FECHA_NACIMIENTO = '#39'01.01.1900'#39';'
      '  PAIS = NULL;'
      '  CALLE = NULL;'
      '  CODIGO_POSTAL = NULL;'
      '  '
      '  FOR SELECT NOMSENCER, SEXE, NC, C_ESPECIAL, C_GRUP, CODI'
      '  FROM METGES'
      '  WHERE BAIXA='#39'N'#39
      '  AND NOT (CODI LIKE '#39'%99%'#39')'
      '  AND NOT (CODI IN ('#39'P98'#39','#39'94Q'#39','#39'P95'#39'))'
      '  AND C_GRUP IN('#39'AS'#39','#39'EA'#39','#39'FI'#39','#39'LO'#39','#39'ME'#39','#39'MS'#39','#39'PS'#39','#39'TO'#39','#39'UN'#39')'
      
        '  INTO :NOMBRECOMPLETO, :SEXO, :NUM_COLEGIADO, :ESPECIALIDAD, :C' +
        '_GRUP, :CODI'
      '  DO BEGIN'
      '      MEDICO    = NULL;'
      '      ENFERMERO = NULL;'
      
        '      IF ((C_GRUP = '#39'EA'#39') AND (ESPECIALIDAD = '#39'32'#39')) THEN ENFERM' +
        'ERO = '#39'X'#39';'
      
        '      ELSE IF (C_GRUP = '#39'UN'#39')                        THEN ENFERM' +
        'ERO = '#39'X'#39';'
      
        '                                                     ELSE MEDICO' +
        '    = '#39'X'#39';'
      ''
      
        '      SELECT COUNT(*) FROM METGEPRESTA WHERE CODI=:CODI INTO QUA' +
        'NTS;'
      '      IF (QUANTS IS NULL) THEN QUANTS = 0;'
      '      IF (QUANTS = 0) THEN TE_AGENDA = '#39'N'#39';'
      '                      ELSE TE_AGENDA = '#39'S'#39';'
      ''
      '      SUSPEND;'
      '  END;'
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
    Left = 760
    Top = 272
  end
  object CargaPacienteSAP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CargaPacienteSAP'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (CENTRO           CHAR(4),'
      '         SEXO             CHAR(1),'
      '         NOMBRE           CHAR(30),'
      '         APELLIDO1        CHAR(30),'
      '         APELLIDO2        CHAR(30),'
      '         FECHA_NACIMIENTO DATE,'
      '         PAIS_NACIMIENTO  CHAR(3),'
      '         EXITUS           CHAR(1),'
      '         FECHA_EXITUS     DATE,'
      '         HORA_EXITUS      VARCHAR(5),'
      '         TRATAMIENTO      CHAR(1),'
      '         ESTADO_CIVIL     CHAR(2),'
      '         NACIONALIDAD     CHAR(3),'
      '         IDIOMA           CHAR(1),'
      '         NUMERO_SS        CHAR(20),'
      '         LUGAR_NACIMIENTO VARCHAR(44),'
      '         TIPO_DOCUMENTO   CHAR(1),'
      '         NUM_DOCUMENTO    CHAR(20),'
      '         CIP_AUTONOMICO   CHAR(25),'
      '         SNS              CHAR(25),'
      '         PENSIONISTA      CHAR(2),'
      '         TITULAR_BENEFICIARIO CHAR(2),'
      '         COBERTURA        INTEGER,'
      '         CCAA             CHAR(4),'
      '         IMPAGADO         CHAR(2),'
      '         CORRESPONDENCIA  CHAR(1),'
      '         SMS              CHAR(1),'
      '         REVISTA          CHAR(1),'
      '         CODIGO_POSTAL    CHAR(10),'
      '         PAIS             CHAR(3),'
      
        '         POBLACION        CHAR(44),  /* a SAP la volen de 40 per' +
        #242' no m'#39'hi cap. Ho dic per correu */'
      
        '         CALLE            CHAR(65),  /* A SAP la volen de 40 per' +
        #242' no m'#39'hi cap. Ja truncaran ells (li ho dic a l'#39'Olga per correu)' +
        ' */'
      '         RESIDENCIA       VARCHAR(7),'
      '         TELEFONO         CHAR(30),'
      '         EMAIL            CHAR(241),'
      '         FAM1_APELLIDO1   CHAR(30),'
      '         FAM1_NOMBRE      CHAR(30),'
      '         FAM1_PAIS        CHAR(3),'
      '         FAM1_CP          CHAR(10),'
      '         FAM1_POBLACION   CHAR(25),'
      '         FAM1_CALLE       CHAR(30),'
      '         FAM1_TELEFONO    CHAR(16),'
      '         FAM1_GRADO_PARENTESCO CHAR(1),'
      '         FAM1_REPRES_LEGAL     CHAR(1),'
      '         FAM2_APELLIDO1   CHAR(30),'
      '         FAM2_NOMBRE      CHAR(30),'
      '         FAM2_PAIS        CHAR(3),'
      '         FAM2_CP          CHAR(10),'
      '         FAM2_POBLACION   CHAR(25),'
      '         FAM2_CALLE       CHAR(30),'
      '         FAM2_TELEFONO    CHAR(16),'
      '         FAM2_GRADO_PARENTESCO CHAR(1),'
      '         FAM2_REPRES_LEGAL     CHAR(1),'
      '         NHC              INTEGER,'
      '         INCAPACITAT      CHAR(1),'
      '         NOM_TUTOR        VARCHAR(40),'
      '         TELEFON_TUTOR    VARCHAR(30),'
      '         UNITAT           SMALLINT,'
      '         PROVINCIA        VARCHAR(2),'
      '         CODI_DIETA       SMALLINT,'
      '         OBS_DIETA        VARCHAR(40),'
      '         CONSENTIMENT     CHAR(1),'
      '         AMIC             DOUBLE PRECISION,'
      
        '         CARRER           VARCHAR(55), /* TIPUS VIA + NOMVIA -->' +
        ' Camp SAP Carrer (40), Carrer2 (40), En el cas que sigui mes lla' +
        'rg de 40 es pot fer servir el segon camp Carrer2. */'
      
        '         NUMERO           VARCHAR(10), /* NUMERO  -->  Camp SAP ' +
        'Numero */'
      
        '         BLOC_ESCALA      VARCHAR(5), /* BLOC + ESCALA --> Camp ' +
        'SAP Bloc-Escala */'
      
        '         PIS              VARCHAR(5), /* PIS  -->  Camp SAP Pis ' +
        '*/'
      
        '         PORTA            VARCHAR(3)  /* PORTA  --> Camp SAP Por' +
        'ta */'
      ')'
      'AS'
      '  DECLARE VARIABLE ESVIU      CHAR(1);'
      '  DECLARE VARIABLE T_DOC      CHAR(1);'
      '  DECLARE VARIABLE TSI        VARCHAR(14);'
      '  DECLARE VARIABLE TSI_CDI    VARCHAR(25);'
      '  DECLARE VARIABLE TITULAR    CHAR(1);'
      '  DECLARE VARIABLE PENSIONIST CHAR(1);'
      '  DECLARE VARIABLE IMPAGAT    CHAR(1);'
      '  DECLARE VARIABLE TEARROBA   INTEGER;'
      '  DECLARE VARIABLE TESEGONAARROBA INTEGER;'
      '  DECLARE VARIABLE TEBARRA    INTEGER;'
      '  DECLARE VARIABLE TEOBREPARENTESI INTEGER;'
      '  DECLARE VARIABLE TETANCAPARENTESI INTEGER;'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      'BEGIN'
      ''
      '  CENTRO = '#39'IG01'#39';'
      '  HORA_EXITUS = NULL;'
      '  TRATAMIENTO = NULL;'
      '  NACIONALIDAD = NULL;'
      '  FAM1_APELLIDO1 = NULL;'
      '  FAM1_NOMBRE = NULL;'
      '  FAM1_PAIS = NULL;'
      '  FAM1_CP = NULL;'
      '  FAM1_POBLACION = NULL;'
      '  FAM1_CALLE = NULL;'
      '  FAM1_TELEFONO = NULL;'
      '  FAM1_GRADO_PARENTESCO = NULL;'
      '  FAM1_REPRES_LEGAL = NULL;'
      '  FAM2_APELLIDO1 = NULL;'
      '  FAM2_NOMBRE = NULL;'
      '  FAM2_PAIS = NULL;'
      '  FAM2_CP = NULL;'
      '  FAM2_POBLACION = NULL;'
      '  FAM2_CALLE = NULL;'
      '  FAM2_TELEFONO = NULL;'
      '  FAM2_GRADO_PARENTESCO = NULL;'
      '  FAM2_REPRES_LEGAL = NULL;'
      ''
      
        '  /* F.TIPUSVIA||'#39' '#39'||F.NOMVIA, cast(F_LEFT(F.TIPUSVIA||'#39' '#39'||F.N' +
        'OMVIA,40) as varchar(40)), cast(F_right(F.TIPUSVIA||'#39' '#39'||F.NOMVI' +
        'A,15) as varchar(20))'
      
        '     EL F_RIGHT NO VA B'#201' PQ AGAFA LES '#218'LTIMES POSICIONS PLENES, ' +
        'NO LES BUIDES!!! */'
      ''
      
        '  FOR SELECT F.NUM_HIST, F.SEXO, F.NOMBRE, F.APELLIDO1, F.APELLI' +
        'DO2, F.FECHA_NAC, PN.C_ISO2, F.ESVIU, F.MORT, F.ESTADO_CIV, F.ID' +
        'IOMA, F.SOE, F.LUGAR_NAC, F.T_DOC, F.DNI, F.TSI, TSI.CDI,'
      
        '             SNS.CDI, F.PENSIONIST, F.TITULAR, F.NIVELL_COBERTUR' +
        'A, F.CCAA, F.IMPAGAT, F.CORRESPONDENCIA, F.SMS, F.REVISTA, F.COD' +
        'IGO, P.C_ISO2, F.POBLACIO, F.NOMVIA||'#39', '#39'||F.NUMERO, F.TELEFONO,' +
        ' F.EMAIL,'
      
        '             F.TELEFO1_FAM, F.TELEFO2_FAM, F_SubStr('#39'@'#39', F.EMAIL' +
        '), F.INCAPACITAT, F. INCAPACITAT_TUTOR, F.INCAPACITAT_TELEFON, F' +
        '.UNITAT, PROV.C_PROVINCIA, F.RESIDENCIA, F.AMIC, F.C_DIETA, F.OB' +
        'S_DIETA, F.CONSENTIMENT,'
      
        '             F.TIPUSVIA||'#39' '#39'||F.NOMVIA, F.NUMERO, F.BLOC||'#39' '#39'||F' +
        '.ESCALA, F.PIS, F.PORTA, F_SUBSTR('#39'@'#39',F_RIGHT(F.EMAIL,F_STRINGLE' +
        'NGTH(F.EMAIL)-:TEARROBA)), F_SUBSTR('#39'/'#39',F.EMAIL), F_SUBSTR('#39'('#39',F' +
        '.EMAIL), F_SUBSTR('#39')'#39',F.EMAIL)'
      '  FROM FILIACIO F'
      '  LEFT JOIN PAIS PN ON F.PAIS_NAIX=PN.C_PAIS'
      
        '  LEFT JOIN FILI_TDI TSI ON F.NUM_HIST=TSI.C_HISTORIA AND TSI.TD' +
        'I='#39'TSI'#39
      
        '  LEFT JOIN FILI_TDI SNS ON F.NUM_HIST=SNS.C_HISTORIA AND SNS.TD' +
        'I='#39'SNS'#39
      '  LEFT JOIN PAIS P ON F.PAIS=P.C_PAIS'
      '  LEFT JOIN PROVINCIA PROV ON F.PROVINCIA=PROV.N_PROVINCIA'
      '  ORDER BY F.NOMBRE, F.APELLIDO1, F.APELLIDO2'
      
        '  INTO :NHC, :SEXO, :NOMBRE, :APELLIDO1, :APELLIDO2, :FECHA_NACI' +
        'MIENTO, :PAIS_NACIMIENTO, :ESVIU, :FECHA_EXITUS, :ESTADO_CIVIL, ' +
        ':IDIOMA, :NUMERO_SS, :LUGAR_NACIMIENTO, :T_DOC, :NUM_DOCUMENTO, ' +
        ':TSI, :TSI_CDI,'
      
        '       :SNS, :PENSIONIST, :TITULAR, :COBERTURA, :CCAA, :IMPAGAT,' +
        ' :CORRESPONDENCIA, :SMS, :REVISTA, :CODIGO_POSTAL, :PAIS, :POBLA' +
        'CION, :CALLE, :TELEFONO, :EMAIL,'
      
        '       :FAM1_TELEFONO, :FAM2_TELEFONO, :TEARROBA, :INCAPACITAT, ' +
        ':NOM_TUTOR, :TELEFON_TUTOR, :UNITAT, :PROVINCIA, :RESIDENCIA, :A' +
        'MIC, :CODI_DIETA, :OBS_DIETA, :CONSENTIMENT,'
      
        '       :CARRER, :NUMERO, :BLOC_ESCALA, :PIS, :PORTA, :TESEGONAAR' +
        'ROBA, :TEBARRA, :TEOBREPARENTESI, :TETANCAPARENTESI'
      '  DO BEGIN'
      '      IF (ESVIU = '#39'S'#39') THEN EXITUS = NULL;'
      '                       ELSE EXITUS = '#39'X'#39';'
      '                       '
      '      IF      (T_DOC = '#39'C'#39') THEN TIPO_DOCUMENTO = '#39'5'#39';'
      '      ELSE IF (T_DOC = '#39'D'#39') THEN TIPO_DOCUMENTO = '#39'1'#39';'
      '      ELSE IF (T_DOC = '#39'P'#39') THEN TIPO_DOCUMENTO = '#39'2'#39';'
      '      ELSE IF (T_DOC = '#39'N'#39') THEN TIPO_DOCUMENTO = '#39'3'#39';'
      '      ELSE IF (T_DOC = '#39'R'#39') THEN TIPO_DOCUMENTO = '#39'4'#39';'
      '      ELSE IF (T_DOC = '#39'A'#39') THEN TIPO_DOCUMENTO = '#39'6'#39';'
      '                            ELSE TIPO_DOCUMENTO = '#39'0'#39';'
      ''
      '      IF (TSI IS NOT NULL) THEN CIP_AUTONOMICO = TSI;'
      '                           ELSE CIP_AUTONOMICO = TSI_CDI;'
      '                           '
      
        '      IF ((PENSIONIST IS NOT NULL) AND (PENSIONIST = '#39'P'#39')) THEN ' +
        'PENSIONISTA = '#39'SI'#39';'
      
        '                                                           ELSE ' +
        'PENSIONISTA = '#39'NO'#39';'
      ''
      '      IF      (TITULAR = '#39'T'#39') THEN TITULAR_BENEFICIARIO = '#39'TI'#39';'
      '      ELSE IF (TITULAR = '#39'B'#39') THEN TITULAR_BENEFICIARIO = '#39'BE'#39';'
      '                              ELSE TITULAR_BENEFICIARIO = NULL;'
      ''
      '      IF (IMPAGAT = '#39'S'#39') THEN IMPAGADO = '#39'SI'#39';'
      '                         ELSE IMPAGADO = '#39'NO'#39';'
      '  '
      
        '      IF ((TEARROBA = 0) OR (TEBARRA <> 0) OR (TEOBREPARENTESI <' +
        '> 0) OR (TETANCAPARENTESI <> 0)) THEN EMAIL = NULL; /* Perqu'#232' no' +
        ' peti la c'#224'rrega a SAP ha d'#39'haver-hi una '#39'@'#39' i cap / ( o ) */'
      
        '      ELSE BEGIN /* Si t'#233' m'#233's d'#39'un email tampoc l'#39'enviem perqu'#232' ' +
        'peta */'
      '          IF (TESEGONAARROBA <> 0) THEN EMAIL=NULL;'
      '      END;'
      '      '
      
        '      IF (FECHA_NACIMIENTO IS NULL) THEN FECHA_NACIMIENTO='#39'01/01' +
        '/1900'#39'; /* acordat amb ELena Araujo */'
      '      '
      '      IF (AMIC = 0)     THEN AMIC  = NULL;'
      '  '
      '      SUSPEND;'
      '  END;'
      ''
      'END')
    Dic1 = wDataBasics.Filiacio
    Dic1Name = 'wDataBasics.Filiacio'
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
    Top = 320
  end
  object AgrupaSaldosSAP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AgrupaSaldosSAP'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_DESDE  DATE,'
      '  E_HASTA  DATE,'
      '  E_PROD   INTEGER'
      ')'
      'RETURNS'
      '('
      '  MES       INTEGER,'
      '  STOCK     NUMERIC(15, 3),'
      '  STOCK_SII NUMERIC(15, 3),'
      '  VALOR     NUMERIC(15, 3),'
      '  STOCKINI  NUMERIC(15, 3),'
      '  PMINI     NUMERIC(15, 3)'
      ')'
      'AS'
      '  DECLARE VARIABLE DESDE        DATE;'
      '  DECLARE VARIABLE HASTA        DATE;'
      '  DECLARE VARIABLE TMP_PMINI    NUMERIC(15, 3);'
      '  DECLARE VARIABLE TMP_STOCKINI NUMERIC(15, 3);'
      ''
      '  DECLARE VARIABLE STOCK_RESTA  NUMERIC(15, 3);'
      '  DECLARE VARIABLE VALOR_RESTA  NUMERIC(15, 3);'
      '  DECLARE VARIABLE STOCK_SUMA   NUMERIC(15, 3);'
      '  DECLARE VARIABLE VALOR_SUMA   NUMERIC(15, 3);'
      ''
      '  DECLARE VARIABLE CANTITAT     NUMERIC(15, 3);'
      '  DECLARE VARIABLE PMP          NUMERIC(15, 3);'
      ''
      '  DECLARE VARIABLE STOCK_RESTA_SII  NUMERIC(15, 3);'
      '  DECLARE VARIABLE STOCK_SUMA_SII   NUMERIC(15, 3);'
      'BEGIN'
      ''
      
        '/* ----  AGAFEM ELS VALORS EMMAGATZEMATS ALS SALDOS MENSUALS  --' +
        '-- */'
      
        '/* --  (EXCEPTUANT EL MES EN CURS, QUE EL CALCULAREM M'#201'S ABAIX) ' +
        ' --*/'
      ''
      '     STOCK_SII = 0;'
      
        '     FOR SELECT MES, STOCKINI, F_DIVISA(PREUMITGINI, 5), CONSUM,' +
        ' F_DIVISA(VALOR, 5)'
      '         FROM SALDOSMEN'
      '         WHERE C_PROD = :E_PROD'
      '           AND DATA BETWEEN :E_DESDE AND :E_HASTA'
      '     INTO :MES, :STOCKINI, :PMINI, :STOCK, :VALOR'
      '     DO BEGIN'
      ''
      
        '           SELECT CONSUM FROM SALDOSMEN_SII WHERE C_PROD = :E_PR' +
        'OD'
      '           AND MES = :MES AND ANYO = F_YEAR(:E_DESDE)'
      '           INTO :STOCK_SII;'
      '           IF (STOCK_SII IS NULL) THEN STOCK_SII = 0;'
      ''
      '           IF (F_YEAR(:E_DESDE) = F_YEAR("TODAY")) THEN'
      '           BEGIN'
      ''
      '               IF (MES <> F_MONTH("TODAY")) THEN'
      '               BEGIN'
      '                 SUSPEND;'
      '               END;'
      '               ELSE BEGIN'
      
        '                  /* -- ENS GUARDEM AQUESTES DADES QUE SI ENS SE' +
        'R'#192'N '#218'TILS -- */'
      '                  TMP_PMINI    = :PMINI;'
      '                  TMP_STOCKINI = :STOCKINI;'
      '               END;'
      '               '
      '           END ELSE SUSPEND;'
      ''
      '     END;'
      '     '
      '     IF (F_YEAR(:E_DESDE) = F_YEAR("TODAY")) THEN'
      '     BEGIN'
      ''
      '/* ----  CALCULEM ELS CONSUMS DEL MES EN CURS  ---- */'
      ''
      '         MES = F_MONTH("TODAY");'
      ''
      '         SELECT DESDE, HASTA'
      '           FROM TANCAMENTS'
      '          WHERE MES  = F_MONTH("TODAY")'
      '            AND ANYO = F_YEAR("TODAY")'
      '         INTO :DESDE, :HASTA;'
      ''
      '         STOCK_RESTA = 0;'
      '         STOCK_SUMA  = 0;'
      '         VALOR_RESTA = 0;'
      '         VALOR_SUMA  = 0;'
      '         STOCK_RESTA_SII = 0;'
      '         STOCK_SUMA_SII  = 0;'
      ''
      
        '         SELECT SUM(M.CANTITAT), F_DIVISA(SUM(F_DIVISA(M.PREUMIT' +
        'G, 5) * M.CANTITAT), 5)'
      
        '           FROM MOVIMENTS M JOIN TIPUS_MOV TM ON TM.C_TMOVIMENT ' +
        '= M.T_MOV'
      '           WHERE  M.C_PROD  = :E_PROD'
      '             AND (M.DATAMOV BETWEEN :DESDE AND :HASTA)'
      '             AND TM.ACTCONSUMS = "S"'
      '             AND TM.T_OPERACIO = "R"'
      '             AND M.C_CENTRECOST <> '#39'71000'#39
      '         INTO :STOCK_RESTA, :VALOR_RESTA;'
      ''
      '         IF (STOCK_RESTA IS NULL) THEN STOCK_RESTA = 0;'
      '         IF (VALOR_RESTA IS NULL) THEN VALOR_RESTA = 0;'
      '         '
      '         SELECT SUM(M.CANTITAT)'
      
        '           FROM MOVIMENTS M JOIN TIPUS_MOV TM ON TM.C_TMOVIMENT ' +
        '= M.T_MOV'
      '           WHERE  M.C_PROD  = :E_PROD'
      '             AND (M.DATAMOV BETWEEN :DESDE AND :HASTA)'
      '             AND TM.ACTCONSUMS = "S"'
      '             AND TM.T_OPERACIO = "R"'
      '             AND M.C_CENTRECOST = '#39'71000'#39
      '         INTO :STOCK_RESTA_SII;'
      ''
      '         IF (STOCK_RESTA_SII IS NULL) THEN STOCK_RESTA_SII = 0;'
      ''
      
        '         SELECT SUM(M.CANTITAT), F_DIVISA(SUM(F_DIVISA(M.PREUMIT' +
        'G, 5) * M.CANTITAT), 5)'
      
        '           FROM MOVIMENTS M JOIN TIPUS_MOV TM ON TM.C_TMOVIMENT ' +
        '= M.T_MOV'
      '           WHERE  M.C_PROD  = :E_PROD'
      '             AND (M.DATAMOV BETWEEN :DESDE AND :HASTA)'
      '             AND TM.ACTCONSUMS = "S"'
      '             AND TM.T_OPERACIO = "S"'
      '             AND M.C_CENTRECOST <> '#39'71000'#39
      '          INTO :STOCK_SUMA, :VALOR_SUMA;'
      ''
      '         IF (STOCK_SUMA IS NULL) THEN STOCK_SUMA = 0;'
      '         IF (VALOR_SUMA IS NULL) THEN VALOR_SUMA = 0;'
      ''
      '         SELECT SUM(M.CANTITAT)'
      
        '           FROM MOVIMENTS M JOIN TIPUS_MOV TM ON TM.C_TMOVIMENT ' +
        '= M.T_MOV'
      '           WHERE  M.C_PROD  = :E_PROD'
      '             AND (M.DATAMOV BETWEEN :DESDE AND :HASTA)'
      '             AND TM.ACTCONSUMS = "S"'
      '             AND TM.T_OPERACIO = "S"'
      '             AND M.C_CENTRECOST = '#39'71000'#39
      '          INTO :STOCK_SUMA_SII;'
      ''
      '         IF (STOCK_SUMA_SII IS NULL) THEN STOCK_SUMA_SII = 0;'
      ''
      '         STOCK    = STOCK_RESTA - STOCK_SUMA;'
      '         VALOR    = VALOR_RESTA - VALOR_SUMA;'
      '         STOCKINI = TMP_STOCKINI;'
      '         PMINI    = TMP_PMINI;'
      '         STOCK_SII = STOCK_RESTA_SII - STOCK_SUMA_SII;'
      ''
      '         SUSPEND;'
      '    END;'
      ''
      'END')
    Dic1 = wDataProductes.Moviments
    Dic1Name = 'wDataProductes.Moviments'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 1
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 761
    Top = 442
  end
  object ValoracionsSAP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ValoracionsSAP'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (CODICOMPTABLE       VARCHAR(4),'
      '         VALORACIO_PREUMIG   DOUBLE PRECISION,'
      '         VALORACIO_PREUVENDA DOUBLE PRECISION)'
      'AS'
      'BEGIN'
      
        '  FOR SELECT CODICOMPTABLE, SUM(STOCKACTUAL * PREUMITG), SUM(STO' +
        'CKACTUAL * PREUVENDA)'
      '  FROM PRODUCTES'
      '  GROUP BY CODICOMPTABLE'
      '  INTO :CODICOMPTABLE, :VALORACIO_PREUMIG, :VALORACIO_PREUVENDA'
      '  DO BEGIN'
      '      SUSPEND;'
      '  END;'
      'END')
    Dic1 = wDataProductes.Productes
    Dic1Name = 'wDataProductes.Productes'
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
    Top = 536
  end
  object RegInfo: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RegInfo'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (CODIGO_PROVEEDOR     VARCHAR(10),'
      '         NIF_PROVEEDOR        VARCHAR(9),'
      '         CODI_PRODUCTE        INTEGER,'
      '         CANTIDAD_MIN_PEDIDO  INTEGER,'
      '         UNIDAD_MEDIDA_PEDIDO VARCHAR(3),'
      '         PRECIO               DOUBLE PRECISION,'
      '         CLIENTE_GUTTMANN     VARCHAR(15),'
      '         REFERENCIA_MATERIAL_EN_PROVEEDOR VARCHAR(16),'
      '         PORCE_CARGO          DOUBLE PRECISION,'
      '         PORCE_DESCUENTO      DOUBLE PRECISION'
      '        )'
      'AS'
      ' DECLARE VARIABLE EMBALATGE           INTEGER;'
      ' DECLARE VARIABLE C_ENVASCLINIC       INTEGER;'
      ' DECLARE VARIABLE DATA_UCOMPRA        DATE;'
      ' DECLARE VARIABLE PREU_UCOMPRA        DOUBLE PRECISION;'
      ' DECLARE VARIABLE PREU_UNITAT_COMANDA DOUBLE PRECISION;'
      ' DECLARE VARIABLE PRECIO_REDONDEO     DOUBLE PRECISION;'
      'BEGIN'
      ''
      
        '/* select prod.c_provultcom, prov.nif, prod.c_prod, prod.pruniul' +
        'tcom, F_STRNULL(PROD.EMBALATGE, (F_STRNULL(PROD.C_ENVASCLINIC,'#39'1' +
        #39'))) as cantidad_min_pedido, prov.c_client'
      'from productes prod'
      'left join provom prov on prod.c_provultcom=prov.c_prov'
      
        'where prod.c_estat='#39'V'#39' and prod.c_provultcom is not null and pro' +
        'v.nif is not null'
      'order by prod.c_prod*/'
      ''
      '/*'
      
        'select cantitat, preu, perdte, percarrec, preutotal, f_divisa((p' +
        'reu*cantitat * percarrec/100),2) as carrec, f_divisa(preu*cantit' +
        'at*perdte/100,2) as dte,'
      
        '       f_divisa(preutotal - (cantitat*preu + (preu*cantitat*perc' +
        'arrec/100) - (preu*cantitat*perdte/100)),2),'
      
        '       F_DIVISA(PREU - (PREUTOTAL/CANTITAT) * (1+PERCARREC/100) ' +
        '* (1-PERDTE/100),2)'
      'from albalin'
      'where datavalidacio>='#39'1.1.2017'#39
      'order by 9 desc'
      '*/'
      ''
      
        '    FOR SELECT PROD.C_PROV1, PROV.NIF, PROD.C_PROD, F_NUMERICNUL' +
        'L(PROD.EMBALATGE, 0), F_NUMERICNULL(PROD.C_ENVASCLINIC,0), PROV.' +
        'C_CLIENT, PROD.REF'
      '    FROM PRODUCTES PROD'
      '    JOIN PROVOM PROV ON PROD.C_PROV1=PROV.C_PROV'
      '    WHERE PROD.C_ESTAT='#39'V'#39
      '    ORDER BY PROD.C_PROD'
      
        '    INTO :CODIGO_PROVEEDOR, :NIF_PROVEEDOR, :CODI_PRODUCTE, :EMB' +
        'ALATGE, :C_ENVASCLINIC, :CLIENTE_GUTTMANN, :REFERENCIA_MATERIAL_' +
        'EN_PROVEEDOR'
      '    DO BEGIN'
      '        IF (EMBALATGE <> 0) THEN'
      '        BEGIN'
      '            CANTIDAD_MIN_PEDIDO  = EMBALATGE;'
      '            UNIDAD_MEDIDA_PEDIDO = '#39'emb'#39';'
      '        END;'
      '        ELSE BEGIN'
      '            IF (C_ENVASCLINIC <> 0) THEN'
      '            BEGIN'
      '                CANTIDAD_MIN_PEDIDO  = C_ENVASCLINIC;'
      '                UNIDAD_MEDIDA_PEDIDO = '#39'env'#39';'
      '            END;'
      '            ELSE BEGIN'
      '                CANTIDAD_MIN_PEDIDO  = 1;'
      '                UNIDAD_MEDIDA_PEDIDO = '#39'env'#39';'
      '            END;'
      '        END;'
      '        '
      '        PREU_UCOMPRA = NULL;'
      '        DATA_UCOMPRA = NULL;'
      '        PREU_UNITAT_COMANDA = NULL;'
      '        PORCE_CARGO  = NULL;'
      '        PORCE_DESCUENTO = NULL;'
      '        '
      
        '        SELECT /*L.PREU,*/ F_DIVISA(L.PREUTOTAL/L.CANTITAT,2), C' +
        '.DATAALBARA, L.PERCARREC, L.PERDTE'
      '        FROM   ALBALIN L'
      '        JOIN   ALBACAP C ON L.C_ALBARA = C.C_ALBARA'
      '        WHERE  L.C_PROD = :CODI_PRODUCTE'
      '        AND    C.C_PROV = :CODIGO_PROVEEDOR'
      '        AND    C.CONFIRMAT IS NOT NULL'
      '        ORDER  BY C.DATAALBARA DESC'
      '        ROWS 1'
      
        '        INTO  :PREU_UCOMPRA, :DATA_UCOMPRA, :PORCE_CARGO, :PORCE' +
        '_DESCUENTO;'
      ''
      '        PRECIO = PREU_UCOMPRA * CANTIDAD_MIN_PEDIDO;'
      '        '
      '        PRECIO_REDONDEO = F_DIVISA(PRECIO,2);'
      '        IF (PRECIO >= 10.0) THEN PRECIO = F_DIVISA(PRECIO,2);'
      ''
      '        IF (DATA_UCOMPRA IS NOT NULL) THEN SUSPEND;'
      '    END;'
      '    '
      '    REFERENCIA_MATERIAL_EN_PROVEEDOR = NULL;'
      
        '    FOR SELECT PROD.C_PROV2, PROV.NIF, PROD.C_PROD, F_NUMERICNUL' +
        'L(PROD.EMBALATGE,0), F_NUMERICNULL(PROD.C_ENVASCLINIC,0), PROV.C' +
        '_CLIENT, PROD.REF'
      '    FROM PRODUCTES PROD'
      '    JOIN PROVOM PROV ON PROD.C_PROV2=PROV.C_PROV'
      '    WHERE PROD.C_ESTAT='#39'V'#39
      '    ORDER BY PROD.C_PROD'
      
        '    INTO :CODIGO_PROVEEDOR, :NIF_PROVEEDOR, :CODI_PRODUCTE, :EMB' +
        'ALATGE, :C_ENVASCLINIC, :CLIENTE_GUTTMANN, :REFERENCIA_MATERIAL_' +
        'EN_PROVEEDOR'
      '    DO BEGIN'
      '        IF (EMBALATGE <> 0) THEN'
      '        BEGIN'
      '            CANTIDAD_MIN_PEDIDO  = EMBALATGE;'
      '            UNIDAD_MEDIDA_PEDIDO = '#39'emb'#39';'
      '        END;'
      '        ELSE BEGIN'
      '            IF (C_ENVASCLINIC <> 0) THEN'
      '            BEGIN'
      '                CANTIDAD_MIN_PEDIDO  = C_ENVASCLINIC;'
      '                UNIDAD_MEDIDA_PEDIDO = '#39'env'#39';'
      '            END;'
      '            ELSE BEGIN'
      '                CANTIDAD_MIN_PEDIDO  = 1;'
      '                UNIDAD_MEDIDA_PEDIDO = '#39'env'#39';'
      '            END;'
      '        END;'
      ''
      '        PREU_UCOMPRA = NULL;'
      '        DATA_UCOMPRA = NULL;'
      '        PREU_UNITAT_COMANDA = NULL;'
      ''
      
        '        SELECT /*L.PREU,*/ F_DIVISA(L.PREUTOTAL/L.CANTITAT,2), C' +
        '.DATAALBARA, L.PERCARREC, L.PERDTE'
      '        FROM   ALBALIN L'
      '        JOIN   ALBACAP C ON L.C_ALBARA = C.C_ALBARA'
      '        WHERE  L.C_PROD = :CODI_PRODUCTE'
      '        AND    C.C_PROV = :CODIGO_PROVEEDOR'
      '        AND    C.CONFIRMAT IS NOT NULL'
      '        ORDER  BY C.DATAALBARA DESC'
      '        ROWS 1'
      
        '        INTO  :PREU_UCOMPRA, :DATA_UCOMPRA, :PORCE_CARGO, :PORCE' +
        '_DESCUENTO;'
      ''
      '        PRECIO = PREU_UCOMPRA * CANTIDAD_MIN_PEDIDO;'
      ''
      '        PRECIO_REDONDEO = F_DIVISA(PRECIO,2);'
      '        IF (PRECIO >= 10.0) THEN PRECIO = F_DIVISA(PRECIO,2);'
      ''
      '        IF (DATA_UCOMPRA IS NOT NULL) THEN SUSPEND;'
      '    END;'
      '    '
      
        '    FOR SELECT PROD.C_PROVULTCOM, PROV.NIF, PROD.C_PROD, F_NUMER' +
        'ICNULL(PROD.EMBALATGE,0), F_NUMERICNULL(PROD.C_ENVASCLINIC,0), P' +
        'ROV.C_CLIENT, PROD.REF'
      '    FROM PRODUCTES PROD'
      '    JOIN PROVOM PROV ON PROD.C_PROVULTCOM=PROV.C_PROV'
      '    WHERE PROD.C_ESTAT='#39'V'#39
      '    ORDER BY PROD.C_PROD'
      
        '    INTO :CODIGO_PROVEEDOR, :NIF_PROVEEDOR, :CODI_PRODUCTE, :EMB' +
        'ALATGE, :C_ENVASCLINIC, :CLIENTE_GUTTMANN, :REFERENCIA_MATERIAL_' +
        'EN_PROVEEDOR'
      '    DO BEGIN'
      '        IF (EMBALATGE <> 0) THEN'
      '        BEGIN'
      '            CANTIDAD_MIN_PEDIDO  = EMBALATGE;'
      '            UNIDAD_MEDIDA_PEDIDO = '#39'emb'#39';'
      '        END;'
      '        ELSE BEGIN'
      '            IF (C_ENVASCLINIC <> 0) THEN'
      '            BEGIN'
      '                CANTIDAD_MIN_PEDIDO  = C_ENVASCLINIC;'
      '                UNIDAD_MEDIDA_PEDIDO = '#39'env'#39';'
      '            END;'
      '            ELSE BEGIN'
      '                CANTIDAD_MIN_PEDIDO  = 1;'
      '                UNIDAD_MEDIDA_PEDIDO = '#39'env'#39';'
      '            END;'
      '        END;'
      ''
      '        PREU_UCOMPRA = NULL;'
      '        DATA_UCOMPRA = NULL;'
      '        PREU_UNITAT_COMANDA = NULL;'
      ''
      
        '        SELECT /*L.PREU,*/ F_DIVISA(L.PREUTOTAL/L.CANTITAT,2), C' +
        '.DATAALBARA, L.PERCARREC, L.PERDTE'
      '        FROM   ALBALIN L'
      '        JOIN   ALBACAP C ON L.C_ALBARA = C.C_ALBARA'
      '        WHERE  L.C_PROD = :CODI_PRODUCTE'
      '        AND    C.C_PROV = :CODIGO_PROVEEDOR'
      '        AND    C.CONFIRMAT IS NOT NULL'
      '        ORDER  BY C.DATAALBARA DESC'
      '        ROWS 1'
      
        '        INTO  :PREU_UCOMPRA, :DATA_UCOMPRA, :PORCE_CARGO, :PORCE' +
        '_DESCUENTO;'
      ''
      '        PRECIO = PREU_UCOMPRA * CANTIDAD_MIN_PEDIDO;'
      ''
      '        PRECIO_REDONDEO = F_DIVISA(PRECIO,2);'
      '        IF (PRECIO >= 10.0) THEN PRECIO = F_DIVISA(PRECIO,2);'
      ''
      '        IF (DATA_UCOMPRA IS NOT NULL) THEN SUSPEND;'
      '    END;'
      'END')
    Dic1 = wDataProductes.Productes
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
    Top = 536
  end
  object HistoricAsseguradoresPacientSAP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AsseguradoresPacientSAP'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_HISTORIA   INTEGER,'
      
        '         ASSEGURADORA VARCHAR(10),  /* c_centrefac||c_client||'#39'-' +
        #39'||c_delegacio */'
      '         DATA_INICI   DATE,'
      '         DATA_FINAL   DATE'
      '                  )'
      'AS'
      ''
      'BEGIN'
      
        '    FOR SELECT DISTINCT T.C_HISTORIA, T.C_CENTREFAC||T.C_CLIENT|' +
        '|'#39'-'#39'||T.C_DELEGACIO, MIN(T.DATA_INGRES), MAX(T.DATA_ALTA)'
      '    FROM TRACTAMENTS T'
      '    JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '    WHERE T.C_CENTREFAC<>'#39'00'#39
      
        '    GROUP BY T.C_HISTORIA, T.C_CENTREFAC, T.C_CLIENT, T.C_DELEGA' +
        'CIO'
      
        '    ORDER BY T.C_HISTORIA, T.C_CENTREFAC, T.C_CLIENT, T.C_DELEGA' +
        'CIO'
      '    INTO :C_HISTORIA, :ASSEGURADORA, :DATA_INICI, :DATA_FINAL'
      '    DO BEGIN'
      '        IF (ASSEGURADORA IS NOT NULL) THEN SUSPEND;'
      '    END;'
      '    '
      
        '    FOR SELECT DISTINCT T.C_HISTORIA, T.C_CENTREFAC, MIN(T.DATA_' +
        'INGRES), MAX(T.DATA_ALTA)'
      '    FROM TRACTAMENTS T'
      '    JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '    WHERE T.C_CENTREFAC='#39'00'#39
      '    GROUP BY T.C_HISTORIA, T.C_CENTREFAC'
      '    ORDER BY T.C_HISTORIA, T.C_CENTREFAC'
      '    INTO :C_HISTORIA, :ASSEGURADORA, :DATA_INICI, :DATA_FINAL'
      '    DO BEGIN'
      '        IF (ASSEGURADORA IS NOT NULL) THEN SUSPEND;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Filiacio
    Dic2 = wDataBasics.Tractaments
    Dic1Name = 'wDataBasics.Filiacio'
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
    Left = 760
    Top = 376
  end
  object CargaPrestaSAP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CargaPrestaSAP'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (CODI_PRESTACIO    VARCHAR(10),'
      '         TEXT_PRESTACIO    VARCHAR(120),'
      '         DATA_INICI_VALID  DATE,'
      '         DATA_FINAL_VALID  DATE,'
      '         FACT_AMB          CHAR(1),'
      '         FACT_HOSP         CHAR(1),'
      '         TEXT_PRESTACIO_ES VARCHAR(120)'
      '        )'
      'AS'
      '  DECLARE VARIABLE TIPUS SMALLINT;'
      'BEGIN'
      '      '
      '/*'
      #8226'     Codi_prestaci'#243' (char10)'
      #8226'     Text_prestaci'#243' (char120)'
      
        #8226'     Data_inici_valid, si no ve informada, per defecte posarem ' +
        '01.01.1900'
      
        #8226'     Data_final_valid, si no ve informada, per defecte posarem ' +
        '31.12.999'
      
        #8226'     Fact_AMB (Char1), "X" si voleu indicar que aquesta prestac' +
        'i'#243' es facturable per episodis ambulatoris (Consulta Externa o Ur' +
        'g'#232'ncies).'
      
        #8226'     Fact_HOSP (Char1), "X" si voleu indicar que aquesta presta' +
        'ci'#243' es facturable per episodis hospitalitzaci'#243' (ingressats).'
      
        'Aquests dos '#250'ltims, FACT_AMB i FACT_HOSP, no s'#243'n obligatoris ja ' +
        'que no fem la facturaci'#243' a ISH, la fem per SD, per'#242' ens pot serv' +
        'ir per identificar si una prestaci'#243' es de AMB o HOSP, o ambd'#243's.*' +
        '/'
      ''
      '    DATA_INICI_VALID = NULL;'
      '    DATA_FINAL_VALID = NULL;'
      '    '
      
        '    FOR SELECT '#39'T-'#39'||C_PRESTACIO, N_PRESTACIO, TIPUS, N_PRESTACI' +
        'O2 FROM PRESTACION'
      '    ORDER BY C_PRESTACIO'
      
        '    INTO :CODI_PRESTACIO, :TEXT_PRESTACIO, :TIPUS, :TEXT_PRESTAC' +
        'IO_ES'
      '    DO BEGIN'
      ''
      '        FACT_HOSP = '#39#39';'
      '        FACT_AMB  = '#39#39';'
      
        '        IF (TIPUS = 1)                       THEN FACT_HOSP = '#39'X' +
        #39';'
      
        '        ELSE IF ((TIPUS = 2) OR (TIPUS = 3)) THEN FACT_AMB  = '#39'X' +
        #39';'
      ''
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Prestacion
    Dic1Name = 'wDataBasics.Prestacion'
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
    Top = 224
  end
  object CarregaAgendes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CarregaAgendes'
    ForceNombreDB = False
    Body.Strings = (
      
        'RETURNS (TIPUS_PLANIFICACIO          VARCHAR(8),   /* activitats' +
        ', CE, ... */'
      
        '         DESCRIPCIO_OBJ_PLANIFICACIO VARCHAR(15),  /* diuen que ' +
        'ha de ser de 15 per'#242' no em cap m'#233's descripci'#243' que a TIPUS PLANIF' +
        'ICACI'#211' que '#233's de 8!! */'
      
        '         UNITAT_ORGANITZATIVA        CHAR(8),      /* IGCXBCN (C' +
        'onsultes Externes Barcelona) i IGCXBDN (Consultes Externes Badal' +
        'ona) */'
      
        '         TREBALLADOR                 CHAR(10),     /* hauria de ' +
        'ser el codi de l'#39'empleat a SAP per'#242' com que no el tenim acordem ' +
        'passar-li el n'#250'mero de col'#183'legiat */'
      '         SALA_MAQUINA_ESPAI          CHAR(8),'
      
        '         UO_MEDICA                   CHAR(8),      /* no obligat' +
        #242'ria */'
      
        '         AGENDA_GRUPAL               CHAR(2),      /* valors SI/' +
        'NO */'
      '         CAPACITAT_MAXIMA_CITA       INTEGER,'
      
        '         HORA_INICI                  CHAR(8),      /* HH:MM:SS  ' +
        ' */'
      
        '         HORA_FINAL                  CHAR(8),      /* HH:MM:SS  ' +
        ' */'
      
        '         DURADA_CITA                 INTEGER,      /* en minuts ' +
        ' */'
      '         OBJ_PLANIFICACIO            CHAR(8),'
      '         DIA_SETMANA                 VARCHAR(9),'
      '         NOM_PROFESSIONAL            VARCHAR(80),'
      '         DESCRIPCIO_OBJ_PLAN         VARCHAR(35),'
      '         CODI_ESPECIAL               CHAR(2),'
      '         ESPECIALITAT                VARCHAR(20)'
      '         )'
      'AS'
      ' DECLARE VARIABLE C_METGE VARCHAR(5);'
      ' DECLARE VARIABLE DIA     INTEGER;'
      ' DECLARE VARIABLE HDESDE  INTEGER;'
      ' DECLARE VARIABLE MDESDE  INTEGER;'
      ' DECLARE VARIABLE HHASTA  INTEGER;'
      ' DECLARE VARIABLE MHASTA  INTEGER;'
      ' DECLARE VARIABLE ESEASE  CHAR(1);'
      'BEGIN'
      '      UO_MEDICA = NULL;'
      '      SALA_MAQUINA_ESPAI = NULL;'
      '      '
      '      /* Taula HORARIO - assistencials tant de BCN com de BDN */'
      
        '      FOR SELECT H.C_METGE, H.DIA, H.HDESDE, H.MDESDE, H.HHASTA,' +
        ' H.MHASTA, M.NC, M.NOMSENCER, M.C_ESPECIAL, E.N_ESPECIAL'
      '      FROM HORARIO  H'
      '      JOIN METGES   M ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      ORDER BY H.C_METGE, H.DIA, H.HDESDE, H.MDESDE, H.HHASTA, H' +
        '.MHASTA'
      
        '      INTO :C_METGE, :DIA, :HDESDE, :MDESDE, :HHASTA, :MHASTA, :' +
        'TREBALLADOR, :NOM_PROFESSIONAL, :CODI_ESPECIAL, :ESPECIALITAT'
      '      DO BEGIN'
      
        '          FOR SELECT MP.MAX_VISITES, MP.MINUTS, P.ESEASE, P.RESU' +
        'M, F_LEFT(P.N_PRESTACIO, 15), P.N_PRESTACIO'
      '          FROM METGEPRESTA MP'
      
        '          JOIN PRESTACION P ON MP.C_PRESTACIO = P.C_PRESTACIO AN' +
        'D P.TIPUS=2      /* Nom'#233's consulta externa */'
      '          WHERE MP.CODI = :C_METGE'
      
        '          AND ((P.ESEASE<>'#39'C'#39' AND MP.MINUTS > 0) OR (P.ESEASE='#39'C' +
        #39'))             /* EAraujo em diu que si no tenen minuts vol dir' +
        ' que no la fan. Que no les passi */'
      '          ORDER BY MP.C_PRESTACIO'
      
        '          INTO :CAPACITAT_MAXIMA_CITA, :DURADA_CITA, :ESEASE, :T' +
        'IPUS_PLANIFICACIO, :DESCRIPCIO_OBJ_PLANIFICACIO, :DESCRIPCIO_OBJ' +
        '_PLAN'
      '          DO BEGIN'
      
        '              /* S'#39'ha de mirar per la prestaci'#243' de METGEPRESTA. ' +
        'Si PRESTACION.ESEASE='#39'C'#39' llavors '#233's  IGCXBCN, altrament IGCXBDN ' +
        '*/'
      
        '              IF (ESEASE='#39'C'#39') THEN UNITAT_ORGANITZATIVA = '#39'IGCXB' +
        'CN'#39';'
      
        '                              ELSE UNITAT_ORGANITZATIVA = '#39'IGCXB' +
        'DN'#39';'
      '      '
      '              AGENDA_GRUPAL = '#39'N'#39';'
      '      '
      
        '              IF (MDESDE = 0) THEN HORA_INICI = HDESDE||'#39':0'#39'||MD' +
        'ESDE||'#39':00'#39';'
      
        '                              ELSE HORA_INICI = HDESDE||'#39':'#39'||MDE' +
        'SDE||'#39':00'#39';'
      
        '              IF (MHASTA = 0) THEN HORA_FINAL = HHASTA||'#39':0'#39'||MH' +
        'ASTA||'#39':00'#39';'
      
        '                              ELSE HORA_FINAL = HHASTA||'#39':'#39'||MHA' +
        'STA||'#39':00'#39';'
      ''
      '              IF      (DIA = 1) THEN DIA_SETMANA = '#39'DILLUNS'#39';'
      '              ELSE IF (DIA = 2) THEN DIA_SETMANA = '#39'DIMARTS'#39';'
      '              ELSE IF (DIA = 3) THEN DIA_SETMANA = '#39'DIMECRES'#39';'
      '              ELSE IF (DIA = 4) THEN DIA_SETMANA = '#39'DIJOUS'#39';'
      '              ELSE IF (DIA = 5) THEN DIA_SETMANA = '#39'DIVENDRES'#39';'
      '              ELSE IF (DIA = 6) THEN DIA_SETMANA = '#39'DISSABTE'#39';'
      '              ELSE IF (DIA = 7) THEN DIA_SETMANA = '#39'DIUMENGE'#39';'
      ''
      
        '              IF (CAPACITAT_MAXIMA_CITA = 0) THEN CAPACITAT_MAXI' +
        'MA_CITA = NULL;'
      
        '              IF (DURADA_CITA           = 0) THEN DURADA_CITA   ' +
        '        = NULL;'
      ''
      '              OBJ_PLANIFICACIO = UNITAT_ORGANITZATIVA;'
      '              SUSPEND;'
      '          END;'
      '      END;'
      '      '
      '      CAPACITAT_MAXIMA_CITA = NULL;'
      
        '      DURADA_CITA = 30; /* totes les activitats s'#243'n de 30'#39' ara p' +
        'er ara */'
      ''
      
        '      /* Taula HORARIGYM - fisios, terapeutes, ... tant de BCN c' +
        'om de BDN */'
      
        '      FOR SELECT H.C_METGE, F_LEFT(H.C_ACTIVITAT,8), F_LEFT(H.C_' +
        'ACTIVITAT,15), H.C_ACTIVITAT, M.NC, CA.N_CODI2, M.NOMSENCER, M.C' +
        '_ESPECIAL, E.N_ESPECIAL, MIN(H.HORA), MAX(H.HORA)'
      '      FROM HORARIGYM     H'
      '      JOIN METGES        M  ON H.C_METGE=M.CODI AND M.BAIXA='#39'N'#39
      '      JOIN ESPECIAL      E  ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN CODICAMPSALFA CA ON H.C_ACTIVITAT=CA.C_CODI AND CA.TI' +
        'PUSCODI='#39'ACTIVITATFI'#39
      
        '      GROUP BY H.C_METGE, H.C_ACTIVITAT, M.NC, CA.N_CODI2, M.NOM' +
        'SENCER, M.C_ESPECIAL, E.N_ESPECIAL'
      '      ORDER BY H.C_METGE, H.C_ACTIVITAT, H.HORA'
      
        '      INTO :C_METGE, :TIPUS_PLANIFICACIO, :DESCRIPCIO_OBJ_PLANIF' +
        'ICACIO, :DESCRIPCIO_OBJ_PLAN, :TREBALLADOR, :CAPACITAT_MAXIMA_CI' +
        'TA, :NOM_PROFESSIONAL, :CODI_ESPECIAL, :ESPECIALITAT, :HDESDE, :' +
        'HHASTA'
      '      DO BEGIN'
      '          IF      (HDESDE = 1)  THEN HORA_INICI = '#39'08:00:00'#39';'
      '          ELSE IF (HDESDE = 2)  THEN HORA_INICI = '#39'08:30:00'#39';'
      '          ELSE IF (HDESDE = 3)  THEN HORA_INICI = '#39'09:00:00'#39';'
      '          ELSE IF (HDESDE = 4)  THEN HORA_INICI = '#39'09:30:00'#39';'
      '          ELSE IF (HDESDE = 5)  THEN HORA_INICI = '#39'10:00:00'#39';'
      '          ELSE IF (HDESDE = 6)  THEN HORA_INICI = '#39'10:30:00'#39';'
      
        '          ELSE IF (HDESDE = 7)        THEN HORA_INICI = '#39'11:00:0' +
        '0'#39';'
      '          ELSE IF (HDESDE = 8)  THEN HORA_INICI = '#39'11:30:00'#39';'
      '          ELSE IF (HDESDE = 9)  THEN HORA_INICI = '#39'12:00:00'#39';'
      '          ELSE IF (HDESDE = 10) THEN HORA_INICI = '#39'12:30:00'#39';'
      '          ELSE IF (HDESDE = 11) THEN HORA_INICI = '#39'13:00:00'#39';'
      '          ELSE IF (HDESDE = 12) THEN HORA_INICI = '#39'13:30:00'#39';'
      '          ELSE IF (HDESDE = 13) THEN HORA_INICI = '#39'14:00:00'#39';'
      '          ELSE IF (HDESDE = 14) THEN HORA_INICI = '#39'14:30:00'#39';'
      '          ELSE IF (HDESDE = 15) THEN HORA_INICI = '#39'15:00:00'#39';'
      '          ELSE IF (HDESDE = 16) THEN HORA_INICI = '#39'15:30:00'#39';'
      '          ELSE IF (HDESDE = 17) THEN HORA_INICI = '#39'16:00:00'#39';'
      '          ELSE IF (HDESDE = 18) THEN HORA_INICI = '#39'16:30:00'#39';'
      '          ELSE IF (HDESDE = 19) THEN HORA_INICI = '#39'17:00:00'#39';'
      '          ELSE IF (HDESDE = 20) THEN HORA_INICI = '#39'17:30:00'#39';'
      '          ELSE IF (HDESDE = 21) THEN HORA_INICI = '#39'18:00:00'#39';'
      '          ELSE IF (HDESDE = 22) THEN HORA_INICI = '#39'18:30:00'#39';'
      '          ELSE IF (HDESDE = 23) THEN HORA_INICI = '#39'19:00:00'#39';'
      '          ELSE IF (HDESDE = 24) THEN HORA_INICI = '#39'19:30:00'#39';'
      '          ELSE IF (HDESDE = 25) THEN HORA_INICI = '#39'20:00:00'#39';'
      '          ELSE IF (HDESDE = 26) THEN HORA_INICI = '#39'20:30:00'#39';'
      ''
      '          IF      (HHASTA = 1)  THEN HORA_FINAL = '#39'08:00:00'#39';'
      '          ELSE IF (HHASTA = 2)  THEN HORA_FINAL = '#39'08:30:00'#39';'
      '          ELSE IF (HHASTA = 3)  THEN HORA_FINAL = '#39'09:00:00'#39';'
      '          ELSE IF (HHASTA = 4)  THEN HORA_FINAL = '#39'09:30:00'#39';'
      '          ELSE IF (HHASTA = 5)  THEN HORA_FINAL = '#39'10:00:00'#39';'
      '          ELSE IF (HHASTA = 6)  THEN HORA_FINAL = '#39'10:30:00'#39';'
      '          ELSE IF (HHASTA = 7)  THEN HORA_FINAL = '#39'11:00:00'#39';'
      '          ELSE IF (HHASTA = 8)  THEN HORA_FINAL = '#39'11:30:00'#39';'
      '          ELSE IF (HHASTA = 9)  THEN HORA_FINAL = '#39'12:00:00'#39';'
      '          ELSE IF (HHASTA = 10) THEN HORA_FINAL = '#39'12:30:00'#39';'
      '          ELSE IF (HHASTA = 11) THEN HORA_FINAL = '#39'13:00:00'#39';'
      '          ELSE IF (HHASTA = 12) THEN HORA_FINAL = '#39'13:30:00'#39';'
      '          ELSE IF (HHASTA = 13) THEN HORA_FINAL = '#39'14:00:00'#39';'
      '          ELSE IF (HHASTA = 14) THEN HORA_FINAL = '#39'14:30:00'#39';'
      '          ELSE IF (HHASTA = 15) THEN HORA_FINAL = '#39'15:00:00'#39';'
      '          ELSE IF (HHASTA = 16) THEN HORA_FINAL = '#39'15:30:00'#39';'
      '          ELSE IF (HHASTA = 17) THEN HORA_FINAL = '#39'16:00:00'#39';'
      '          ELSE IF (HHASTA = 18) THEN HORA_FINAL = '#39'16:30:00'#39';'
      '          ELSE IF (HHASTA = 19) THEN HORA_FINAL = '#39'17:00:00'#39';'
      '          ELSE IF (HHASTA = 20) THEN HORA_FINAL = '#39'17:30:00'#39';'
      '          ELSE IF (HHASTA = 21) THEN HORA_FINAL = '#39'18:00:00'#39';'
      '          ELSE IF (HHASTA = 22) THEN HORA_FINAL = '#39'18:30:00'#39';'
      '          ELSE IF (HHASTA = 23) THEN HORA_FINAL = '#39'19:00:00'#39';'
      '          ELSE IF (HHASTA = 24) THEN HORA_FINAL = '#39'19:30:00'#39';'
      '          ELSE IF (HHASTA = 25) THEN HORA_FINAL = '#39'20:00:00'#39';'
      '          ELSE IF (HHASTA = 26) THEN HORA_FINAL = '#39'20:30:00'#39';'
      '          '
      
        '          IF      (DESCRIPCIO_OBJ_PLANIFICACIO='#39'1 MOVILITZACI'#211#39')' +
        ' THEN TIPUS_PLANIFICACIO='#39'1MOVILIT'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'AVD PLANTA'#39')    ' +
        ' THEN TIPUS_PLANIFICACIO='#39'AVDPLNTA'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'BIPED. AREA'#39')   ' +
        ' THEN TIPUS_PLANIFICACIO='#39'BIPEAREA'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'GRUP D.C.'#39')     ' +
        ' THEN TIPUS_PLANIFICACIO='#39'GRUP DC'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'GRUP L.M.'#39')     ' +
        ' THEN TIPUS_PLANIFICACIO='#39'GRUP LM'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'GRUP TO UH-4'#39')  ' +
        ' THEN TIPUS_PLANIFICACIO='#39'G TO UH4'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'GRUP TO UH-5'#39')  ' +
        ' THEN TIPUS_PLANIFICACIO='#39'G TO UH5'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'HIDROTERAPIA'#39')  ' +
        ' THEN TIPUS_PLANIFICACIO='#39'HIDRO'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'INDIVID FT'#39')    ' +
        ' THEN TIPUS_PLANIFICACIO='#39'IND FT'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'INDIVID TO'#39')    ' +
        ' THEN TIPUS_PLANIFICACIO='#39'IND TO'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'INFO. OCUP.'#39')   ' +
        ' THEN TIPUS_PLANIFICACIO='#39'INF OCUP'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'LABO.MARXA'#39')    ' +
        ' THEN TIPUS_PLANIFICACIO='#39'LABMARXA'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'SORTIDA URBANA'#39')' +
        ' THEN TIPUS_PLANIFICACIO='#39'SORT URB'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'T.O. AREA'#39')     ' +
        ' THEN TIPUS_PLANIFICACIO='#39'TO AREA'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'TCE INDIVID FT'#39')' +
        ' THEN TIPUS_PLANIFICACIO='#39'TCEINDFT'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'TCE INDIVID TO'#39')' +
        ' THEN TIPUS_PLANIFICACIO='#39'TCEINDTO'#39';'
      
        '          ELSE IF (DESCRIPCIO_OBJ_PLANIFICACIO='#39'TRANSF. AREA'#39')  ' +
        ' THEN TIPUS_PLANIFICACIO='#39'TRANSF.A'#39';'
      '          '
      
        '          IF (F_LEFT(TIPUS_PLANIFICACIO,3) = '#39'NPC'#39') THEN UNITAT_' +
        'ORGANITZATIVA = '#39'HOSPBCN'#39';'
      
        '                                                    ELSE UNITAT_' +
        'ORGANITZATIVA = '#39'HOSPBDN'#39';'
      '      '
      
        '          IF (CAPACITAT_MAXIMA_CITA = 0)  THEN CAPACITAT_MAXIMA_' +
        'CITA = NULL;'
      
        '          IF (CAPACITAT_MAXIMA_CITA = 99) THEN CAPACITAT_MAXIMA_' +
        'CITA = NULL;  /* Labo marxa t'#233' un tractament especial pq hi t'#233' u' +
        'n 99 */'
      
        '          IF ((CAPACITAT_MAXIMA_CITA IS NOT NULL) AND (CAPACITAT' +
        '_MAXIMA_CITA > 1)) THEN AGENDA_GRUPAL = '#39'S'#39';'
      
        '                                                                ' +
        '                   ELSE AGENDA_GRUPAL = '#39'N'#39';'
      '          '
      '          OBJ_PLANIFICACIO = UNITAT_ORGANITZATIVA;'
      '          '
      
        '          /* L'#39'horari que tenim actualment a HORARIGYM '#233's de DLL' +
        ' a DV per tant s'#39'han d'#39'insertar 5 dies */'
      '          DIA = 1;'
      '          WHILE (DIA <= 5) DO'
      '          BEGIN'
      '              IF      (DIA = 1) THEN DIA_SETMANA = '#39'DILLUNS'#39';'
      '              ELSE IF (DIA = 2) THEN DIA_SETMANA = '#39'DIMARTS'#39';'
      '              ELSE IF (DIA = 3) THEN DIA_SETMANA = '#39'DIMECRES'#39';'
      '              ELSE IF (DIA = 4) THEN DIA_SETMANA = '#39'DIJOUS'#39';'
      '              ELSE IF (DIA = 5) THEN DIA_SETMANA = '#39'DIVENDRES'#39';'
      '          '
      '              SUSPEND;'
      '              DIA=DIA+1;'
      '          END;'
      '      END;'
      '      '
      'END')
    Dic1 = wDataGimnas.HorariGym
    Dic1Name = 'wDataGimnas.HorariGym'
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
    Left = 96
    Top = 72
  end
  object PesTalla_LM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PesTalla_LM'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '   C_HISTORIA INTEGER,'
      '   PES VARCHAR(15),'
      '   DATA_PES DATE,'
      '   ORIGEN_PES VARCHAR(20),'
      '   TALLA INTEGER,'
      '   DATA_TALLA DATE,'
      '   ORIGEN_TALLA VARCHAR(20))'
      'AS'
      '      DECLARE VARIABLE PES_I VARCHAR(15);'
      '      DECLARE VARIABLE TALLA_I INTEGER;'
      '      DECLARE VARIABLE PES_P FLOAT;'
      '      DECLARE VARIABLE TALLA_P INTEGER;'
      '      DECLARE VARIABLE PES_V FLOAT;'
      '      DECLARE VARIABLE TALLA_V INTEGER;'
      '      DECLARE VARIABLE DATA_PES_I DATE;'
      '      DECLARE VARIABLE DATA_PES_P DATE;'
      '      DECLARE VARIABLE DATA_PES_V DATE;'
      '      DECLARE VARIABLE DATA_TALLA_I DATE;'
      '      DECLARE VARIABLE DATA_TALLA_P DATE;'
      '      DECLARE VARIABLE DATA_TALLA_V DATE;'
      'BEGIN'
      '      FOR SELECT NUM_HIST'
      '          FROM   FILIACIO'
      
        '          WHERE  UNITAT = 1    /* C_UNITATMEDICA between 1 and 4' +
        ' */'
      '          AND    ESVIU = '#39'S'#39
      '          AND    DATA_ULTIMCONTACTE + (5*365) >= "TODAY"'
      '         INTO   :C_HISTORIA'
      '      DO BEGIN'
      '      '
      '            PES = '#39#39';    PES_I = '#39#39';    PES_P = 0;    PES_V = 0;'
      '            TALLA = 0;  TALLA_I = 0;  TALLA_P = 0;  TALLA_V = 0;'
      ''
      
        '            DATA_PES = NULL;    DATA_PES_I = NULL;    DATA_PES_P' +
        ' = NULL;    DATA_PES_V = NULL;'
      
        '            DATA_TALLA = NULL;  DATA_TALLA_I = NULL;  DATA_TALLA' +
        '_P = NULL;  DATA_TALLA_V = NULL;'
      ''
      
        '            /* '#250'ltim pes registrat a la gr'#224'fica els darrers 5 an' +
        'ys */'
      '            SELECT VALOR, DATA_VALOR'
      '            FROM   INFERDADES I'
      
        '            JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT'
      '            WHERE  T.C_HISTORIA = :C_HISTORIA'
      '            AND    I.C_ITEM = 19'
      '            AND    I.DATA_VALOR + (5*365) >= "TODAY"'
      '            AND    I.ANULAT = '#39'N'#39
      '            ORDER  BY DATA_VALOR DESC'
      '            ROWS   1'
      '            INTO  :PES_I, :DATA_PES_I;'
      '            '
      '            IF (PES_I <> '#39#39') THEN'
      '            BEGIN'
      '                  /* '#250'ltima talla registrada a la gr'#224'fica */'
      '                  SELECT VALOR, DATA_VALOR'
      '                  FROM   INFERDADES I'
      
        '                  JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_T' +
        'RACTAMENT'
      '                  WHERE  T.C_HISTORIA = :C_HISTORIA'
      '                  AND    I.C_ITEM = 18'
      '                  AND    I.ANULAT = '#39'N'#39
      '                  ORDER  BY DATA_VALOR DESC'
      '                  ROWS   1'
      '                  INTO  :TALLA_I, :DATA_TALLA_I;'
      '            END;'
      '                  '
      '                  '
      
        '            /* '#250'ltim pes registrat al full preoperatori els darr' +
        'ers 5 anys */'
      '            SELECT PES, DATA_ULTMODI'
      '            FROM   PREOPERATORI'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      
        '            AND    ESTAT_INTERV <> -1 AND ESTAT_INTERV <> 7  /* ' +
        'excloem fulls anul'#183'lats */'
      '            AND    PES IS NOT NULL'
      '            AND    DATA_ULTMODI + (5*365) >= "TODAY"'
      '            ORDER  BY DATA_ULTMODI DESC'
      '            ROWS   1'
      '            INTO  :PES_P, :DATA_PES_P;'
      '            '
      '            IF (PES_P > 0) THEN'
      '            BEGIN'
      
        '                  /* '#250'ltima talla registrada en un preoperatori ' +
        'els darrers 5 anys */'
      '                  SELECT TALLA, DATA_ULTMODI'
      '                  FROM   PREOPERATORI'
      '                  WHERE  C_HISTORIA = :C_HISTORIA'
      
        '                  AND    ESTAT_INTERV <> -1 AND ESTAT_INTERV <> ' +
        '7  /* excloem fulls anul'#183'lats */'
      '                  AND    TALLA IS NOT NULL'
      '                  AND    DATA_ULTMODI + (5*365) >= "TODAY"'
      '                  ORDER  BY DATA_ULTMODI DESC'
      '                  ROWS   1'
      '                  INTO  :TALLA_P, :DATA_TALLA_P;'
      '            END;'
      '            '
      ''
      
        '            /* '#250'ltim pes registrat al VIP d'#39'infermeria els darre' +
        'rs 5 anys */'
      '            SELECT I.PES, I.DATA'
      '            FROM   VIPINFER I'
      
        '            JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT'
      '            WHERE  T.C_HISTORIA = :C_HISTORIA'
      '            AND    I.DATA + (5*365) >= "TODAY"'
      '            AND    I.PES IS NOT NULL'
      '            ORDER  BY I.DATA DESC'
      '            ROWS   1'
      '            INTO  :PES_V, :DATA_PES_V;'
      ''
      '            IF (PES_V > 0) THEN'
      '            BEGIN'
      
        '                  /* '#250'ltima talla registrada al VIP d'#39'infermeria' +
        ' dels darrers 5 anys */'
      '                  SELECT I.TALLA, I.DATA'
      '                  FROM   VIPINFER I'
      
        '                  JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_T' +
        'RACTAMENT'
      '                  WHERE  T.C_HISTORIA = :C_HISTORIA'
      '                  AND    I.DATA + (5*365) >= "TODAY"'
      '                  AND    I.TALLA IS NOT NULL'
      '                  ORDER  BY I.DATA DESC'
      '                  ROWS   1'
      '                  INTO  :TALLA_V, :DATA_TALLA_V;'
      '            END;'
      ''
      
        '            IF (((PES_I <> '#39#39') OR (PES_P IS NOT NULL) OR (PES_V ' +
        'IS NOT NULL))'
      
        '            AND ((TALLA_I IS NOT NULL) OR (TALLA_P IS NOT NULL) ' +
        'OR (TALLA_V IS NOT NULL)))'
      '            THEN BEGIN'
      '                  /* Ens quedem les dades m'#233's recents */'
      ''
      
        '                  DATA_PES = F_MAXDATEBVG(F_MAXDATEBVG(DATA_PES_' +
        'I, DATA_PES_P), DATA_PES_V);'
      
        '                  IF      (DATA_PES = DATA_PES_I) THEN BEGIN PES' +
        ' = PES_I; ORIGEN_PES = '#39'Gr'#224'fica Infer'#39'; END;'
      
        '                  ELSE IF (DATA_PES = DATA_PES_P) THEN BEGIN PES' +
        ' = F_FloatToStr(F_Divisa(PES_P,1)); ORIGEN_PES = '#39'Full preoperat' +
        'ori'#39'; END;'
      
        '                  ELSE IF (DATA_PES = DATA_PES_V) THEN BEGIN PES' +
        ' = F_FloatToStr(F_Divisa(PES_V,1)); ORIGEN_PES = '#39'Revisi'#243' inferm' +
        'eria'#39'; END;'
      '            '
      
        '                  DATA_TALLA = F_MAXDATEBVG(F_MAXDATEBVG(DATA_TA' +
        'LLA_I, DATA_TALLA_P), DATA_TALLA_V);'
      
        '                  IF      (DATA_TALLA = DATA_TALLA_I) THEN BEGIN' +
        ' TALLA = TALLA_I; ORIGEN_TALLA = '#39'Gr'#224'fica Infer'#39'; END;'
      
        '                  ELSE IF (DATA_TALLA = DATA_TALLA_P) THEN BEGIN' +
        ' TALLA = TALLA_P; ORIGEN_TALLA = '#39'Full preoperatori'#39'; END;'
      
        '                  ELSE IF (DATA_TALLA = DATA_TALLA_V) THEN BEGIN' +
        ' TALLA = TALLA_V; ORIGEN_TALLA = '#39'Revisi'#243' infermeria'#39'; END;'
      ''
      '                  PES = F_LRTrim(PES);'
      
        '                  IF ((PES = '#39#39') OR (PES = '#39'0'#39')) THEN PES = NULL' +
        ';'
      '                  IF (TALLA = 0) THEN TALLA = NULL;'
      ''
      
        '                  /* Retornem el registre si hi ha tota la infor' +
        'mac'#243' */'
      
        '                  IF ((PES IS NOT NULL) AND (TALLA IS NOT NULL))' +
        ' THEN SUSPEND;'
      '            END;'
      '      END;'
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
    Left = 26
    Top = 388
  end
  object CaptacioAmics: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CAPTACIOAMICS'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '  NOMCOMPLET VARCHAR(80),'
      '  TELEFON VARCHAR(10),'
      '  NOM_TUTOR VARCHAR(80),'
      '  TELEFON_TUTOR VARCHAR(30),'
      '  EDAT INTEGER,'
      '  PROVINCIA VARCHAR(44),'
      '  UNITAT VARCHAR(40),'
      '  IDIOMA VARCHAR(40),'
      '  ULTIM_CONTACTE DATE,'
      '  EN_TRACTAMENT_REHAB CHAR(1)'
      ')'
      'AS'
      '      DECLARE VARIABLE c_historia INTEGER;'
      '      DECLARE VARIABLE compta INTEGER;'
      'BEGIN'
      ''
      
        '  for select distinct T.C_HISTORIA, F.NOMCOMPLET, F.TELEFONO, L.' +
        'PP_NOM, L.PP_TELEFON, F.EDAT, F.PROVINCIA, U.N_CODI, I.N_CODI, F' +
        '.DATA_ULTIMCONTACTE'
      '      from TRACTAMENTS T'
      '      join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      
        '      join CODICAMPS U on F.UNITAT = U.C_CODI and U.TIPUSCODI = ' +
        '"UNITATS"'
      
        '      join CODICAMPS I on F.IDIOMA = I.C_CODI and I.TIPUSCODI = ' +
        '"IDIOMA"'
      
        '      left outer join LEGALINF L on F.NUM_HIST = L.C_HISTORIA an' +
        'd L.PP_NOM <> "DGAIA"'
      '      where T.DATA_ALTA < "1.1.2020"'
      '      and (T.C_PRESTACIO = "1004" or T.C_PRESTACIO = "2014")'
      '      and F.PAIS = 34'
      '      and (F.EDAT <= 15 or (F.EDAT between 40 and 70))'
      '      and F.ESVIU = "S"'
      '      and F.BLOQUEIG is null'
      '      and F.CORRESPONDENCIA = "S"'
      '      and F.INCAPACITAT = "N"'
      '      and (F.AMIC IS NULL or F.AMIC = 0)'
      
        '      into  :c_historia, :nomcomplet, :telefon, :nom_tutor, :tel' +
        'efon_tutor, :edat, :provincia, :unitat, :idioma, :ULTIM_CONTACTE'
      '  do begin'
      ''
      '        COMPTA = 0;'
      '        '
      '        select COUNT(*)'
      '        from   TRACTAMENTS T'
      
        '        join   DRETSMOTIU M on T.C_MOTIU = M.C_MOTIU and M.C_DRE' +
        'T = "X2"'
      '        where  T.C_HISTORIA = :c_historia'
      '        and    T.DATA_ALTA is NULL'
      '        into  :compta;'
      '        '
      '        IF (compta = 0) THEN EN_TRACTAMENT_REHAB = "N";'
      '                        ELSE EN_TRACTAMENT_REHAB = "S";'
      ''
      '        SUSPEND;'
      '  end'
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
    Left = 26
    Top = 332
  end
  object DiagsProcsAH: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Llit'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_INICI DATE, DATA_FINAL DATE)'
      'RETURNS (ID INTEGER,'
      '         C_TRACTAMENT INTEGER,'
      '         C_HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA   DATE,'
      '         N_CLIENT VARCHAR(40),'
      '         N_UNITATM VARCHAR(30),'
      '         GRD INTEGER,'
      '         NIVELLSEVERITAT INTEGER,'
      '         PES VARCHAR(30),'
      '         CMBD_PPAL VARCHAR(15),'
      '         DESC_ICD_PPAL VARCHAR(255),'
      '         CMBD_SECUND VARCHAR(15),'
      '         DESC_ICD_SEC VARCHAR(255),'
      '         POACMB CHAR(1),'
      '         CLASSECMB CHAR(1),'
      '         C_PROCEDIMENT VARCHAR(15),'
      '         PROCEDIMENT_ICD VARCHAR(255),'
      
        '         CSUR VARCHAR(2) /* SI/NO em falten criteris -> pregunta' +
        'r Marta Carceller */'
      '         )'
      'AS'
      ' DECLARE VARIABLE C_PRESTACIO CHAR(4);'
      ' DECLARE VARIABLE N_PRESTACIO VARCHAR(35);'
      ' DECLARE VARIABLE PPAL_METGE VARCHAR(40);'
      ' DECLARE VARIABLE ORDRECMB SMALLINT;'
      ' DECLARE VARIABLE SEC_METGE VARCHAR(40);'
      ' DECLARE VARIABLE PROCEDIMENT_METGE VARCHAR(40);'
      ' DECLARE VARIABLE ORDRE SMALLINT;'
      ' DECLARE VARIABLE TRACTAMENT_ANTERIOR INTEGER;'
      'BEGIN'
      ''
      '    ID = 1; TRACTAMENT_ANTERIOR = NULL;'
      
        '    FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, PR.N' +
        '_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, C.N_CLIENT, U.N_UNITATM,' +
        ' TC.GRD, TC.NIVELLSEVERITAT, TC.PES,'
      
        '               T.C_DIAGNOSTICALTA, I.N_ICD, T.N_DIAGNOSTICALTA, ' +
        'D.C_DIAGNOSTIC, I2.N_ICD, D.POACMB, D.CLASSECMB, D.ORDRECMB, D.N' +
        '_DIAGNOSTIC'
      '    FROM TRACTAMENTS T'
      
        '    JOIN DRETSPRESTA P on T.C_PRESTACIO = P.C_PRESTACIO AND P.C_' +
        'DRET = '#39'P143'#39
      '    JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '    LEFT OUTER JOIN UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      '    LEFT OUTER JOIN CODIICD I ON T.C_DIAGNOSTICALTA = I.C_ICD'
      
        '    LEFT OUTER JOIN DIAGNOSTICS D ON T.C_TRACTAMENT = D.C_TRACTA' +
        'MENT AND D.TIPUS = '#39'A'#39
      '    LEFT OUTER JOIN CODIICD I2 ON D.C_DIAGNOSTIC = I2.C_ICD'
      
        '    LEFT OUTER JOIN CLIENTS C ON T.C_CENTREFAC = C_C_CENTREFAC A' +
        'ND T.C_CLIENT = C.C_CLIENT'
      
        '    LEFT OUTER JOIN TRACT_CODIFICACIO TC ON T.C_TRACTAMENT = TC.' +
        'C_TRACTAMENT'
      
        '    LEFT OUTER JOIN PRESTACION PR ON T.C_PRESTACIO = PR.C_PRESTA' +
        'CIO'
      '    WHERE T.DATA_ALTA BETWEEN :DATA_INICI AND :DATA_FINAL'
      '    AND T.C_ESTATFAC <> 55'
      '    ORDER BY T.C_TRACTAMENT, D.ORDRE'
      
        '    INTO :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :N_PRESTACIO,' +
        ' :DATA_INGRES, :DATA_ALTA, :N_CLIENT, :N_UNITATM, :GRD, :NIVELLS' +
        'EVERITAT, :PES, :CMBD_PPAL, :DESC_ICD_PPAL,'
      
        '         :PPAL_METGE, :CMBD_SECUND, :DESC_ICD_SEC, :POACMB, :CLA' +
        'SSECMB, :ORDRECMB, :SEC_METGE'
      '    DO BEGIN'
      
        '        IF (TRACTAMENT_ANTERIOR IS NULL) THEN TRACTAMENT_ANTERIO' +
        'R = C_TRACTAMENT;'
      '        '
      
        '        FOR SELECT PROC.C_PROCEDIMENT, PROC.N_PROCEDIMENT, IP.N_' +
        'ICD, PROC.ORDRE'
      '        FROM TPROCEDIMENTS PROC'
      
        '        LEFT OUTER JOIN CODIICD IP ON PROC.C_PROCEDIMENT = IP.C_' +
        'ICD'
      
        '        WHERE PROC.C_TRACTAMENT = :C_TRACTAMENT AND PROC.TIPUS='#39 +
        'A'#39
      '        ORDER BY PROC.ORDRE'
      
        '        INTO :C_PROCEDIMENT, :PROCEDIMENT_METGE, :PROCEDIMENT_IC' +
        'D, :ORDRE'
      '        DO BEGIN'
      '        '
      '        END;'
      ''
      ''
      ''
      ''
      '        SUSPEND;'
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
    Left = 488
    Top = 16
  end
  object FaltenFacilitadors: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FaltenFacilitadors'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA DATE)'
      'RETURNS (C_HISTORIA      INTEGER,'
      '         NOM             VARCHAR(80),'
      '         C_PRESTACIO     CHAR(4),'
      '         DATA_INGRES     DATE,'
      '         DATA_ALTA       DATE,'
      '         METGE_1A_VISITA VARCHAR(5))'
      'AS'
      '      DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '      DECLARE VARIABLE DIFERENCIA   DOUBLE PRECISION;'
      'BEGIN'
      '    IF (DATA IS NULL) THEN DATA = "TODAY";'
      '      '
      
        '    FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, T.DATA_INGRES, T.DATA' +
        '_ALTA, T.C_PRESTACIO, T.C_TRACTAMENT'
      '    FROM TRACTAMENTS T'
      '    JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '    where t.c_prestacio in(2929,2930,2022,3300,4008,4009,4103,43' +
        '03,4503,4153,4403,4123,4133,4703,4803,4903,4113,4603)'
      '    and T.C_ESTATFAC <> 55'
      '    and t.data_ingres >=:DATA'
      '    and t.id_facilitador is null'
      '    order by t.c_historia, t.data_ingres, t.c_prestacio'
      
        '    INTO :C_HISTORIA, :NOM, :DATA_INGRES, :DATA_ALTA, :C_PRESTAC' +
        'IO, :C_TRACTAMENT'
      '    DO BEGIN'
      '        METGE_1A_VISITA = '#39#39';'
      '        '
      '        SELECT C_COORDINADOR, MIN(:DATA_INGRES - DATA_INGRES)'
      '        FROM TRACTAMENTS'
      '        WHERE C_HISTORIA = :C_HISTORIA'
      '        AND   C_TRACTAMENT < :C_TRACTAMENT'
      '        AND   C_ESTATFAC <> 55'
      '        AND   (C_PRESTACIO = '#39'3001'#39' OR C_PRESTACIO='#39'3002'#39')'
      '        GROUP BY C_COORDINADOR'
      '        ROWS 1'
      '        INTO :METGE_1A_VISITA, :DIFERENCIA;'
      '      '
      '        SUSPEND;'
      '    END;'
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
    Left = 416
    Top = 288
  end
end
