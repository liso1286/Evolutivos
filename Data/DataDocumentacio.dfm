object wDataDocumentacio: TwDataDocumentacio
  OldCreateOrder = False
  Left = 246
  Top = 173
  Height = 648
  Width = 893
  object TractList2: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'List2'
    ForceNombreDB = False
    Body.Strings = (
      ' '
      'SELECT'
      
        'T.C_Tractament, T.C_Historia, T.C_Prestacio, T.Data_Ingres, T.C_' +
        'Coordinador,'
      'T.Data_Alta, T.Data_PreAlta, T.C_LLit, T.C_Planta, T.Durada,'
      
        'T.N_DiagnosticIngres, T.C_DiagnosticIngres, T.N_DiagnosticAlta, ' +
        'T.C_DiagnosticAlta,'
      'P.N_Prestacio, P.Resum, P.Tipus,'
      'M.Metge, M.Cognom, M.Tracte, M.C_Grup, M.C_Especial,'
      
        'F.NOMCOMPLET, F.SEXO, F.Bloqueig, F.IDIOMA, F.UNITAT, F.ESVIU, F' +
        '.EDAT'
      ''
      
        'FROM ((TRACTAMENTS T JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PR' +
        'ESTACIO)'
      'JOIN METGES M ON M.CODI = T.C_COORDINADOR)'
      'JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      'where P.TIPUS <> 4')
    Dic1 = wDataBasics.Tractaments
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
    Modi = True
    ModiFecha = 37384.382450625
    Left = 32
    Top = 8
  end
  object P_OrdreRevisions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OrdreRevisions'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  FEINA VARCHAR(10),'
      '  DATAINI DATE,'
      '  DATAFI DATE'
      ')'
      'RETURNS'
      '('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  C_PRESTACIO VARCHAR(4),'
      '  DATA_ALTA DATE,'
      '  SORTIDA INTEGER'
      ')'
      'AS'
      'DECLARE VARIABLE NORDRE INTEGER;'
      'BEGIN'
      '  NORDRE = f_year(DATAINI) * 10000 + 1;'
      ''
      '  IF (FEINA = '#39'COMPROVA'#39') THEN'
      '  BEGIN'
      
        '    FOR SELECT t.C_TRACTAMENT, t.C_HISTORIA, t.C_PRESTACIO, t.DA' +
        'TA_ALTA, t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      '        WHERE  t.C_PRESTACIO = '#39'2004'#39
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA'
      
        '        INTO :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :DATA_ALT' +
        'A, :SORTIDA'
      '      DO BEGIN'
      '        IF ((SORTIDA <> NORDRE) OR (SORTIDA IS NULL)) THEN'
      '        BEGIN'
      '          suspend;'
      '          exit;'
      '        END'
      '        NORDRE = NORDRE + 1;'
      '      END'
      '  END'
      ''
      '  ELSE IF (FEINA = '#39'NUMERA'#39') THEN'
      '  BEGIN'
      
        '    FOR SELECT t.C_TRACTAMENT, t.C_HISTORIA, t.C_PRESTACIO, t.DA' +
        'TA_ALTA, t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      '        WHERE  t.C_PRESTACIO = '#39'2004'#39
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA'
      
        '        INTO :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :DATA_ALT' +
        'A, :SORTIDA'
      '      DO BEGIN'
      '        UPDATE TRACTAMENTS'
      '        SET SORTIDA = :NORDRE'
      '        WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '        NORDRE = NORDRE + 1;'
      '      END'
      '  END'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Top = 212
  end
  object P_OrdreAmbulato: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OrdreAmbulato'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  FEINA VARCHAR(20),'
      '  DATAINI DATE,'
      '  DATAFI DATE'
      ')'
      'RETURNS'
      '('
      '  ORDRE_CORRECTE CHAR(1)'
      ')'
      'AS'
      'DECLARE VARIABLE NORDRE INTEGER;'
      'DECLARE VARIABLE ENTRADA INTEGER;'
      'DECLARE VARIABLE SORTIDA INTEGER;'
      'DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'DECLARE VARIABLE DATA_INGRES DATE;'
      'DECLARE VARIABLE DATA_ALTA DATE;'
      'BEGIN'
      ''
      '  IF (FEINA = '#39'COMPROVA'#39') THEN'
      '  BEGIN'
      ''
      '    NORDRE = f_year(DATAINI) * 10000 + 1;'
      '    ORDRE_CORRECTE = '#39'0'#39';'
      ''
      '    FOR SELECT t.C_TRACTAMENT, t.DATA_INGRES, t.ENTRADA'
      '        FROM   TRACTAMENTS t'
      '        JOIN   PRESTACION p ON t.C_PRESTACIO = p.C_PRESTACIO'
      '        WHERE  p.TIPUS = 3'
      '        AND    t.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_INGRES'
      '        INTO :C_TRACTAMENT, :DATA_INGRES, :ENTRADA'
      '      DO BEGIN'
      '        IF ((ENTRADA <> NORDRE) OR (ENTRADA IS NULL)) THEN'
      '        BEGIN'
      '          ORDRE_CORRECTE = '#39'1'#39';'
      '          suspend;'
      '          exit;'
      '        END'
      '        NORDRE = NORDRE + 1;'
      '      END'
      ''
      '    NORDRE = f_year(DATAINI) * 10000 + 1;'
      '    ORDRE_CORRECTE = '#39'0'#39';'
      ''
      '    FOR SELECT t.C_TRACTAMENT, t.DATA_ALTA, t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      '        JOIN   PRESTACION p ON t.C_PRESTACIO = p.C_PRESTACIO'
      '        WHERE  p.TIPUS = 3'
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA'
      '        INTO :C_TRACTAMENT, :DATA_ALTA, :SORTIDA'
      '      DO BEGIN'
      '        IF ((SORTIDA <> NORDRE) OR (SORTIDA IS NULL)) THEN'
      '        BEGIN'
      '          ORDRE_CORRECTE = '#39'2'#39';'
      '          suspend;'
      '          exit;'
      '        END'
      '        NORDRE = NORDRE + 1;'
      '      END'
      ''
      '    IF (ORDRE_CORRECTE = '#39'0'#39') THEN suspend;'
      '  END'
      ''
      '  ELSE IF (FEINA = '#39'NUMERA ENTRADA'#39') THEN'
      '  BEGIN'
      ''
      '    NORDRE = f_year(DATAINI) * 10000 + 1;'
      ''
      '    FOR SELECT t.C_TRACTAMENT, t.DATA_INGRES, t.ENTRADA'
      '        FROM   TRACTAMENTS t'
      '        JOIN   PRESTACION p ON t.C_PRESTACIO = p.C_PRESTACIO'
      '        WHERE  p.TIPUS = 3'
      '        AND    t.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_INGRES'
      '        INTO :C_TRACTAMENT, :DATA_INGRES, :ENTRADA'
      '      DO BEGIN'
      '        UPDATE TRACTAMENTS'
      '        SET ENTRADA = :NORDRE'
      '        WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '        NORDRE = NORDRE + 1;'
      '      END'
      '  END'
      ''
      '  ELSE IF (FEINA = '#39'NUMERA SORTIDA'#39') THEN'
      '  BEGIN'
      ''
      '    NORDRE = f_year(DATAINI) * 10000 + 1;'
      ''
      '    FOR SELECT t.C_TRACTAMENT, t.DATA_ALTA, t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      '        JOIN   PRESTACION p ON t.C_PRESTACIO = p.C_PRESTACIO'
      '        WHERE  p.TIPUS = 3'
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA'
      '        INTO :C_TRACTAMENT, :DATA_ALTA, :SORTIDA'
      '      DO BEGIN'
      '        UPDATE TRACTAMENTS'
      '        SET SORTIDA = :NORDRE'
      '        WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '        NORDRE = NORDRE + 1;'
      '      END'
      '  END'
      ''
      'END'
      '')
    Dic1 = wDataBasics.Tractaments
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
    Left = 304
    Top = 213
  end
  object P_Visites: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Visites'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_METGE CHAR(5),'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  DATAANY DATE'
      ') RETURNS ('
      '  V1_METGETOTAL INTEGER,'
      '  V1_METGEDATA INTEGER,'
      '  V1_PCTOTAL FLOAT,'
      '  V1_PCDATA FLOAT,'
      '  V2_METGETOTAL INTEGER,'
      '  V2_METGEDATA INTEGER,'
      '  V2_PCTOTAL FLOAT,'
      '  V2_PCDATA FLOAT,'
      '  V3_METGETOTAL INTEGER,'
      '  V3_METGEDATA INTEGER,'
      '  V3_PCTOTAL FLOAT,'
      '  V3_PCDATA FLOAT,'
      '  R_METGETOTAL INTEGER,'
      '  R_METGEDATA INTEGER,'
      '  R_PCTOTAL FLOAT,'
      '  R_PCDATA FLOAT,'
      '  I_METGETOTAL INTEGER,'
      '  I_METGEDATA INTEGER,'
      '  I_PCTOTAL FLOAT,'
      '  I_PCDATA FLOAT,'
      '  T_SENSEDIAG INTEGER,'
      '  T_AMBDIAG INTEGER'
      ') AS      '
      'DECLARE VARIABLE AUX INTEGER; '
      'DECLARE VARIABLE C_PREST CHAR(4);'
      'BEGIN'
      '    C_PREST='#39'2001'#39';'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      
        '    WHERE C_PRESTACIO=:C_PREST AND DATA_INGRES BETWEEN :DATAANY ' +
        'AND :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST '
      '    AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '    INTO :V1_METGETOTAL;'
      ''
      '    IF (AUX=0)'
      '    THEN V1_PCTOTAL=0;'
      '    ELSE V1_PCTOTAL=(V1_METGETOTAL/AUX)*100;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      
        '    WHERE C_PRESTACIO=:C_PREST AND DATA_INGRES BETWEEN :DESDE AN' +
        'D :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE  C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '    AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '    INTO :V1_METGEDATA;'
      ''
      '    IF (AUX=0)'
      '    THEN V1_PCDATA=0;'
      '    ELSE V1_PCDATA=(V1_METGEDATA/AUX)*100;'
      ''
      ''
      '    C_PREST='#39'2002'#39';'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      
        '    WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_PRE' +
        'STACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '    AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR = :C_METGE'
      
        '    AND (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_PREST' +
        'ACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '    AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '    INTO :V2_METGETOTAL;'
      ''
      '    IF (AUX=0)'
      '    THEN V2_PCTOTAL=0;'
      '    ELSE V2_PCTOTAL=(V2_METGETOTAL/AUX)*100;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      
        '    WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_PRE' +
        'STACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '    AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR = :C_METGE'
      
        '    AND (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_PREST' +
        'ACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '    AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '    INTO :V2_METGEDATA;'
      ''
      '    IF (AUX=0)'
      '    THEN V2_PCDATA=0;'
      '    ELSE V2_PCDATA=(V2_METGEDATA/AUX)*100;'
      ''
      '    C_PREST='#39'2003'#39';'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      
        '    WHERE C_PRESTACIO=:C_PREST AND DATA_INGRES BETWEEN :DATAANY ' +
        'AND :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '    AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '    INTO :V3_METGETOTAL;'
      ''
      '    IF (AUX=0)'
      '    THEN V3_PCTOTAL=0;'
      '    ELSE V3_PCTOTAL=(V3_METGETOTAL/AUX)*100;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      
        '    WHERE C_PRESTACIO=:C_PREST AND DATA_INGRES BETWEEN :DESDE AN' +
        'D :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '    AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '    INTO :V3_METGEDATA;'
      ''
      '    IF (AUX=0)'
      '    THEN V3_PCDATA=0;'
      '    ELSE V3_PCDATA=(V3_METGEDATA/AUX)*100;'
      ''
      ''
      '    C_PREST='#39'2004'#39';'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      
        '    WHERE C_PRESTACIO=:C_PREST AND DATA_INGRES BETWEEN :DATAANY ' +
        'AND :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '    AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '    INTO :R_METGETOTAL;'
      ''
      '    IF (AUX=0)'
      '    THEN R_PCTOTAL=0;'
      '    ELSE R_PCTOTAL=(R_METGETOTAL/AUX)*100;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      
        '    WHERE C_PRESTACIO=:C_PREST AND DATA_INGRES BETWEEN :DESDE AN' +
        'D :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '    AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '    INTO :R_METGEDATA;'
      ''
      '    IF (AUX=0)'
      '    THEN R_PCDATA=0;'
      '    ELSE R_PCDATA=(R_METGEDATA/AUX)*100;'
      ''
      ''
      '    C_PREST='#39'2006'#39';'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS '
      
        '    WHERE C_PRESTACIO=:C_PREST AND DATA_INGRES BETWEEN :DATAANY ' +
        'AND :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS '
      '    WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '    AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '    INTO :I_METGETOTAL;'
      ''
      '    IF (AUX=0)'
      '    THEN I_PCTOTAL=0;'
      '    ELSE I_PCTOTAL=(I_METGETOTAL/AUX)*100;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS '
      
        '    WHERE C_PRESTACIO=:C_PREST AND DATA_INGRES BETWEEN :DESDE AN' +
        'D :FINS'
      '    INTO :AUX;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS '
      '    WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '    AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '    INTO :I_METGEDATA;'
      ''
      '    IF (AUX=0)'
      '    THEN I_PCDATA=0;'
      '    ELSE I_PCDATA=(I_METGEDATA/AUX)*100;'
      ''
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR=:C_METGE'
      '    AND C_PRESTACIO IN ('#39'2001'#39','#39'2002'#39','#39'2003'#39','#39'2004'#39','#39'2006'#39')'
      '    AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '    AND (C_DIAGNOSTICINGRES='#39'**'#39' OR C_DIAGNOSTICINGRES IS NULL)'
      '    INTO :T_SENSEDIAG;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE C_COORDINADOR=:C_METGE'
      '    AND C_PRESTACIO IN ('#39'2001'#39','#39'2002'#39','#39'2003'#39','#39'2004'#39','#39'2006'#39')'
      '    AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      
        '    AND (C_DIAGNOSTICINGRES<>'#39'**'#39' AND C_DIAGNOSTICINGRES IS NOT ' +
        'NULL)'
      '    INTO :T_AMBDIAG;'
      ''
      '    suspend;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756565972
    Left = 192
    Top = 7
  end
  object P_Visites2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Visites2'
    ForceNombreDB = False
    Body.Strings = (
      '(C_COORDINADOR CHAR(5),DESDE DATE,FINS DATE)'
      'RETURNS (C_TRACTAMENT INTEGER,'
      'C_HISTORIA INTEGER,'
      'NOMCOMPLET VARCHAR(80),'
      'DATA_INGRES DATE,'
      'C_PRESTACIO VARCHAR(4),'
      'RESUM VARCHAR(8),'
      'N_DIAGNOSTICINGRES VARCHAR(40),'
      'N_ICD VARCHAR(100))'
      'AS'
      'DECLARE VARIABLE AUX VARCHAR(6);    '
      'BEGIN'
      
        '  FOR SELECT t.C_TRACTAMENT,t.C_HISTORIA,t.NOMCOMPLET,t.DATA_ING' +
        'RES,t.C_PRESTACIO,t.RESUM,t.N_DIAGNOSTICINGRES,t.C_DIAGNOSTICING' +
        'RES'
      '      FROM   V_TRACTAMENTS_LIST2 t'
      '      JOIN PRESTACION p ON t.C_PRESTACIO = p.C_PRESTACIO'
      '      WHERE  t.C_COORDINADOR = :C_COORDINADOR'
      '      AND    p.TIPUS=2'
      '      AND    t.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      ORDER BY 4,3,5'
      
        '      INTO   :C_TRACTAMENT,:C_HISTORIA,:NOMCOMPLET,:DATA_INGRES,' +
        ':C_PRESTACIO,:RESUM,:N_DIAGNOSTICINGRES,:AUX'
      '    DO BEGIN'
      '    IF ((AUX IS NULL) OR (AUX='#39'**'#39')) THEN N_ICD='#39#39';'
      '    ELSE SELECT c.N_ICD '
      '         FROM   CODIICD c '
      '         WHERE  c.C_ICD=:AUX '
      '         INTO   :N_ICD;'
      '    suspend;'
      '    END'
      'END;')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756858796
    Left = 256
    Top = 7
  end
  object P_Ambulato: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Ambulato'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_METGE CHAR(5),'
      '  DESDE DATE,'
      '  FINS DATE'
      ')'
      'RETURNS'
      '('
      '  RAMB_ENTRACT1 INTEGER,'
      '  RAMB_ALTES INTEGER,'
      '  RAMB_ENTRACT2 INTEGER,'
      '  RAMB_INICIS INTEGER,'
      '  RAMB_ENTRACT1_PC FLOAT,'
      '  RAMB_ALTES_PC FLOAT,'
      '  RAMB_ENTRACT2_PC FLOAT,'
      '  RAMB_INICIS_PC FLOAT,'
      '  RAMB_ENTRACT1_T INTEGER,'
      '  RAMB_ALTES_T INTEGER,'
      '  RAMB_ENTRACT2_T INTEGER,'
      '  RAMB_INICIS_T INTEGER,'
      ''
      '  RNENS_ENTRACT1 INTEGER,'
      '  RNENS_ALTES INTEGER,'
      '  RNENS_ENTRACT2 INTEGER,'
      '  RNENS_INICIS INTEGER,'
      '  RNENS_ENTRACT1_PC FLOAT,'
      '  RNENS_ALTES_PC FLOAT,'
      '  RNENS_ENTRACT2_PC FLOAT,'
      '  RNENS_INICIS_PC FLOAT,'
      '  RNENS_ENTRACT1_T INTEGER,'
      '  RNENS_ALTES_T INTEGER,'
      '  RNENS_ENTRACT2_T INTEGER,'
      '  RNENS_INICIS_T INTEGER,'
      ''
      '  RFS_ENTRACT1 INTEGER,'
      '  RFS_ALTES INTEGER,'
      '  RFS_ENTRACT2 INTEGER,'
      '  RFS_INICIS INTEGER,'
      '  RFS_ENTRACT1_PC FLOAT,'
      '  RFS_ALTES_PC FLOAT,'
      '  RFS_ENTRACT2_PC FLOAT,'
      '  RFS_INICIS_PC FLOAT,'
      '  RFS_ENTRACT1_T INTEGER,'
      '  RFS_ALTES_T INTEGER,'
      '  RFS_ENTRACT2_T INTEGER,'
      '  RFS_INICIS_T INTEGER,'
      ''
      '  SF_ENTRACT1 INTEGER,'
      '  SF_ALTES INTEGER,'
      '  SF_ENTRACT2 INTEGER,'
      '  SF_INICIS INTEGER,'
      '  SF_ENTRACT1_PC FLOAT,'
      '  SF_ALTES_PC FLOAT,'
      '  SF_ENTRACT2_PC FLOAT,'
      '  SF_INICIS_PC FLOAT,'
      '  SF_ENTRACT1_T FLOAT,'
      '  SF_ALTES_T FLOAT,'
      '  SF_ENTRACT2_T FLOAT,'
      '  SF_INICIS_T FLOAT'
      ''
      ')'
      'AS '
      'DECLARE VARIABLE C_PRESTACIO CHAR(4);'
      'BEGIN'
      
        '/*-----------------------------------------------------Rh Amb---' +
        '-------*/'
      '    C_PRESTACIO='#39'2014'#39';'
      
        '/*--------------------------------------------------------------' +
        '-------*/'
      ''
      '/* En tractament a l'#39'inici del per'#237'ode   --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RAMB_ENTRACT1_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RAMB_ENTRACT1;'
      ''
      '    IF (RAMB_ENTRACT1_T=0)'
      '    THEN RAMB_ENTRACT1_PC=0;'
      '    ELSE RAMB_ENTRACT1_PC=(RAMB_ENTRACT1*100)/RAMB_ENTRACT1_T;'
      ''
      ''
      '/* Altes durant el per'#237'ode               --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RAMB_ALTES_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RAMB_ALTES;'
      ''
      '    IF (RAMB_ALTES_T=0)'
      '    THEN RAMB_ALTES_PC=0;'
      '    ELSE RAMB_ALTES_PC=(RAMB_ALTES*100)/RAMB_ALTES_T;'
      ''
      ''
      '/* En tractament al final del per'#237'ode    --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RAMB_ENTRACT2_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RAMB_ENTRACT2;'
      ''
      '    IF (RAMB_ENTRACT2_T=0)'
      '    THEN RAMB_ENTRACT2_PC=0;'
      '    ELSE RAMB_ENTRACT2_PC=(RAMB_ENTRACT2*100)/RAMB_ENTRACT2_T;'
      ''
      ''
      '/* Comencen tractament durant el per'#237'de  --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RAMB_INICIS_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RAMB_INICIS;'
      ''
      '    IF (RAMB_INICIS_T=0)'
      '    THEN RAMB_INICIS_PC=0;'
      '    ELSE RAMB_INICIS_PC=(RAMB_INICIS*100)/RAMB_INICIS_T;'
      ''
      ''
      
        '/*-----------------------------------------------------Rh Nens--' +
        '-------*/'
      '    C_PRESTACIO='#39'2008'#39';'
      
        '/*--------------------------------------------------------------' +
        '-------*/'
      ''
      '/* En tractament a l'#39'inici del per'#237'ode   --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RNENS_ENTRACT1_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RNENS_ENTRACT1;'
      ''
      '    IF (RNENS_ENTRACT1_T=0)'
      '    THEN RNENS_ENTRACT1_PC=0;'
      
        '    ELSE RNENS_ENTRACT1_PC=(RNENS_ENTRACT1*100)/RNENS_ENTRACT1_T' +
        ';'
      ''
      ''
      '/* Altes durant el per'#237'ode               --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RNENS_ALTES_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RNENS_ALTES;'
      ''
      '    IF (RNENS_ALTES_T=0)'
      '    THEN RNENS_ALTES_PC=0;'
      '    ELSE RNENS_ALTES_PC=(RNENS_ALTES*100)/RNENS_ALTES_T;'
      ''
      ''
      '/* En tractament al final del per'#237'ode    --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RNENS_ENTRACT2_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RNENS_ENTRACT2;'
      ''
      '    IF (RNENS_ENTRACT2_T=0)'
      '    THEN RNENS_ENTRACT2_PC=0;'
      
        '    ELSE RNENS_ENTRACT2_PC=(RNENS_ENTRACT2*100)/RNENS_ENTRACT2_T' +
        ';'
      ''
      ''
      '/* Comencen tractament durant el per'#237'de  --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RNENS_INICIS_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RNENS_INICIS;'
      ''
      '    IF (RNENS_INICIS_T=0)'
      '    THEN RNENS_INICIS_PC=0;'
      '    ELSE RNENS_INICIS_PC=(RNENS_INICIS*100)/RNENS_INICIS_T;'
      ''
      
        '/*-----------------------------------------------------RFS------' +
        '-------*/'
      '    C_PRESTACIO='#39'2007'#39';'
      
        '/*--------------------------------------------------------------' +
        '-------*/'
      ''
      '/* En tractament a l'#39'inici del per'#237'ode   --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RFS_ENTRACT1_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RFS_ENTRACT1;'
      ''
      '    IF (RFS_ENTRACT1_T=0)'
      '    THEN RFS_ENTRACT1_PC=0;'
      '    ELSE RFS_ENTRACT1_PC=(RFS_ENTRACT1*100)/RFS_ENTRACT1_T;'
      ''
      ''
      '/* Altes durant el per'#237'ode               --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RFS_ALTES_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RFS_ALTES;'
      ''
      '    IF (RFS_ALTES_T=0)'
      '    THEN RFS_ALTES_PC=0;'
      '    ELSE RFS_ALTES_PC=(RFS_ALTES*100)/RFS_ALTES_T;'
      ''
      ''
      '/* En tractament al final del per'#237'ode    --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RFS_ENTRACT2_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RFS_ENTRACT2;'
      ''
      '    IF (RFS_ENTRACT2_T=0)'
      '    THEN RFS_ENTRACT2_PC=0;'
      '    ELSE RFS_ENTRACT2_PC=(RFS_ENTRACT2*100)/RFS_ENTRACT2_T;'
      ''
      ''
      '/* Comencen tractament durant el per'#237'de  --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :RFS_INICIS_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :RFS_INICIS;'
      ''
      '    IF (RFS_INICIS_T=0)'
      '    THEN RFS_INICIS_PC=0;'
      '    ELSE RFS_INICIS_PC=(RFS_INICIS*100)/RFS_INICIS_T;'
      ''
      
        '/*-----------------------------------------------------Sessio Fi' +
        's------*/'
      '    C_PRESTACIO='#39'2009'#39';'
      
        '/*--------------------------------------------------------------' +
        '-------*/'
      ''
      '/* En tractament a l'#39'inici del per'#237'ode   --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :SF_ENTRACT1_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :SF_ENTRACT1;'
      ''
      '    IF (SF_ENTRACT1_T=0)'
      '    THEN SF_ENTRACT1_PC=0;'
      '    ELSE SF_ENTRACT1_PC=(SF_ENTRACT1*100)/SF_ENTRACT1_T;'
      ''
      ''
      '/* Altes durant el per'#237'ode               --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :SF_ALTES_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :SF_ALTES;'
      ''
      '    IF (SF_ALTES_T=0)'
      '    THEN SF_ALTES_PC=0;'
      '    ELSE SF_ALTES_PC=(SF_ALTES*100)/SF_ALTES_T;'
      ''
      ''
      '/* En tractament al final del per'#237'ode    --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :SF_ENTRACT2_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :SF_ENTRACT2;'
      ''
      '    IF (SF_ENTRACT2_T=0)'
      '    THEN SF_ENTRACT2_PC=0;'
      '    ELSE SF_ENTRACT2_PC=(SF_ENTRACT2*100)/SF_ENTRACT2_T;'
      ''
      ''
      '/* Comencen tractament durant el per'#237'de  --------------*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :SF_INICIS_T;'
      ''
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :SF_INICIS;'
      ''
      '    IF (SF_INICIS_T=0)'
      '    THEN SF_INICIS_PC=0;'
      '    ELSE SF_INICIS_PC=(SF_INICIS*100)/SF_INICIS_T;'
      ''
      ''
      '    suspend;'
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 32
    Top = 56
  end
  object P_HtalDia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HtalDia'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_METGE CHAR(5),'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  ANYACTUAL DATE'
      ')'
      'RETURNS'
      '('
      '/*metge periode------------------*/'
      '  ENTRACT1 INTEGER,'
      '  ENTRACT2 INTEGER,'
      '  INICIS INTEGER,'
      '  ALTES INTEGER,'
      ''
      '/*metge acumulat anual------------*/'
      '  INICIS_AC INTEGER,'
      '  ALTES_AC INTEGER,'
      ''
      '/*percentatges periode------------*/'
      '  ENTRACT1_PC FLOAT,'
      '  ENTRACT2_PC FLOAT,'
      '  INICIS_PC FLOAT,'
      '  ALTES_PC FLOAT,'
      ''
      '/*percentatges acumulat anual-----*/'
      '  ALTES_AC_PC FLOAT,'
      '  INICIS_AC_PC FLOAT,'
      ''
      '/*totals periode------------------*/'
      '  ENTRACT1_T INTEGER,'
      '  ENTRACT2_T INTEGER,'
      '  INICIS_T INTEGER,'
      '  ALTES_T INTEGER,'
      ''
      '/*totals acumulat anual-----------*/'
      '  INICIS_AC_T INTEGER,'
      '  ALTES_AC_T INTEGER'
      ')'
      'AS '
      'DECLARE VARIABLE C_PRESTACIO CHAR(4);'
      'BEGIN'
      ''
      '    C_PRESTACIO='#39'1008'#39';'
      ''
      '/* En tractament a l'#39'inici del per'#237'ode   --------------*/'
      ''
      '   /*metge*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :ENTRACT1;'
      ''
      '   /*total*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<:DESDE'
      '      AND (DATA_ALTA>=:DESDE OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :ENTRACT1_T;'
      ''
      '   /*percentatge*/'
      '    IF (ENTRACT1_T=0)'
      '    THEN ENTRACT1_PC=0;'
      '    ELSE ENTRACT1_PC=(ENTRACT1*100)/ENTRACT1_T;'
      ''
      ''
      '/* En tractament al final del per'#237'ode    --------------*/'
      ''
      '   /*metge*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :ENTRACT2;'
      ''
      '   /*total*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES<=:FINS'
      '      AND (DATA_ALTA>:FINS OR DATA_ALTA IS NULL)'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :ENTRACT2_T;'
      ''
      '   /*percentatge*/'
      '    IF (ENTRACT2_T=0)'
      '    THEN ENTRACT2_PC=0;'
      '    ELSE ENTRACT2_PC=(ENTRACT2*100)/ENTRACT2_T;'
      ''
      ''
      '/* Comencen tractament durant el per'#237'de  --------------*/'
      ''
      '   /*metge*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :INICIS;'
      ''
      '   /*total*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :INICIS_T;'
      ''
      '   /*percentatge*/'
      '    IF (INICIS_T=0)'
      '    THEN INICIS_PC=0;'
      '    ELSE INICIS_PC=(INICIS*100)/INICIS_T;'
      ''
      '   /*metge acumulat*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :ANYACTUAL AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :INICIS_AC;'
      ''
      '   /*total acumulat*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_INGRES BETWEEN :ANYACTUAL AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :INICIS_AC_T;'
      ''
      '   /*percentatge acumulat*/'
      '    IF (INICIS_AC_T=0)'
      '    THEN INICIS_AC_PC=0;'
      '    ELSE INICIS_AC_PC=(INICIS_AC*100)/INICIS_AC_T;'
      ''
      ''
      '/* Altes durant el per'#237'ode               --------------*/'
      ''
      '   /*metge*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :ALTES;'
      ''
      '   /*total*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :ALTES_T;'
      ''
      '   /*percentatge*/'
      '    IF (ALTES_T=0)'
      '    THEN ALTES_PC=0;'
      '    ELSE ALTES_PC=(ALTES*100)/ALTES_T;'
      ''
      '   /*metge acumulat*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :ANYACTUAL AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '      AND C_COORDINADOR=:C_METGE'
      '    INTO :ALTES_AC;'
      ''
      '   /*total acumulat*/'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :ANYACTUAL AND :FINS'
      '      AND C_PRESTACIO=:C_PRESTACIO'
      '    INTO :ALTES_AC_T;'
      ''
      '   /*percentatge acumulat*/'
      '    IF (ALTES_AC_T=0)'
      '    THEN ALTES_AC_PC=0;'
      '    ELSE ALTES_AC_PC=(ALTES_AC*100)/ALTES_AC_T;'
      ''
      '    suspend;'
      'END'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7757042824
    Left = 192
    Top = 56
  end
  object P_OrdreCirMajAmb: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OrdreCirMajAmb'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  FEINA VARCHAR(10),'
      '  DATAINI DATE,'
      '  DATAFI DATE'
      ')'
      'RETURNS'
      '('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  C_PRESTACIO VARCHAR(4),'
      '  DATA_ALTA DATE,'
      '  SORTIDA INTEGER'
      ')'
      'AS'
      'DECLARE VARIABLE NORDRE INTEGER;'
      'BEGIN'
      '  NORDRE = f_year(DATAINI) * 10000 + 1;'
      ''
      '  IF (FEINA = '#39'COMPROVA'#39') THEN'
      '  BEGIN'
      
        '    FOR SELECT t.C_TRACTAMENT, t.C_HISTORIA, t.C_PRESTACIO, t.DA' +
        'TA_ALTA, t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      '        WHERE  t.C_PRESTACIO = '#39'2005'#39
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA'
      
        '        INTO :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :DATA_ALT' +
        'A, :SORTIDA'
      '      DO BEGIN'
      '        IF ((SORTIDA <> NORDRE) OR (SORTIDA IS NULL)) THEN'
      '        BEGIN'
      '          suspend;'
      '          exit;'
      '        END'
      '        NORDRE = NORDRE + 1;'
      '      END'
      '  END'
      ''
      '  ELSE IF (FEINA = '#39'NUMERA'#39') THEN'
      '  BEGIN'
      
        '    FOR SELECT t.C_TRACTAMENT, t.C_HISTORIA, t.C_PRESTACIO, t.DA' +
        'TA_ALTA, t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      '        WHERE  t.C_PRESTACIO = '#39'2005'#39
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA'
      
        '        INTO :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :DATA_ALT' +
        'A, :SORTIDA'
      '      DO BEGIN'
      '        UPDATE TRACTAMENTS'
      '        SET SORTIDA = :NORDRE, ENTRADA = :NORDRE'
      '        WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '        NORDRE = NORDRE + 1;'
      '      END'
      '  END'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756858796
    Left = 208
    Top = 213
  end
  object P_OrdreIngressos: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OrdreIngressos'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  FEINA VARCHAR(20),'
      '  DATAINI DATE,'
      '  DATAFI DATE'
      ')'
      'RETURNS'
      '('
      '  ORDRE_CORRECTE CHAR(1)'
      ')'
      'AS'
      'DECLARE VARIABLE NORDRE INTEGER;'
      'DECLARE VARIABLE ENTRADA INTEGER;'
      'DECLARE VARIABLE SORTIDA INTEGER;'
      'DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'DECLARE VARIABLE DATA_INGRES DATE;'
      'DECLARE VARIABLE DATA_ALTA DATE;'
      'BEGIN'
      ''
      '  IF (FEINA = '#39'COMPROVA'#39') THEN'
      '  BEGIN'
      ''
      '    NORDRE = f_year(DATAINI) * 10000 + 1;'
      '    ORDRE_CORRECTE = '#39'0'#39';'
      ''
      '    FOR SELECT t.C_TRACTAMENT, t.DATA_INGRES, t.ENTRADA'
      '        FROM   TRACTAMENTS t'
      '        WHERE  t.C_PRESTACIO = '#39'1004'#39
      '        AND    t.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_INGRES, t.C_HISTORIA'
      '        INTO :C_TRACTAMENT, :DATA_INGRES, :ENTRADA'
      '      DO BEGIN'
      '        IF ((ENTRADA <> NORDRE) OR (ENTRADA IS NULL)) THEN'
      '        BEGIN'
      '          ORDRE_CORRECTE = '#39'1'#39';'
      '          suspend;'
      '          exit;'
      '        END'
      '        NORDRE = NORDRE + 1;'
      '      END'
      ''
      '    NORDRE = f_year(DATAINI) * 10000 + 1;'
      '    ORDRE_CORRECTE = '#39'0'#39';'
      ''
      '    FOR SELECT t.C_TRACTAMENT, t.DATA_ALTA, t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      '        WHERE  t.C_PRESTACIO = '#39'1004'#39
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA, t.C_HISTORIA'
      '        INTO :C_TRACTAMENT, :DATA_ALTA, :SORTIDA'
      '      DO BEGIN'
      '        IF ((SORTIDA <> NORDRE) OR (SORTIDA IS NULL)) THEN'
      '        BEGIN'
      '          ORDRE_CORRECTE = '#39'2'#39';'
      '          suspend;'
      '          exit;'
      '        END'
      '        NORDRE = NORDRE + 1;'
      '      END'
      ''
      '    IF (ORDRE_CORRECTE = '#39'0'#39') THEN suspend;'
      '  END'
      ''
      '  ELSE IF (FEINA = '#39'NUMERA ENTRADA'#39') THEN'
      '  BEGIN'
      ''
      '    NORDRE = f_year(DATAINI) * 10000 + 1;'
      ''
      '    FOR SELECT t.C_TRACTAMENT, t.DATA_INGRES, t.ENTRADA'
      '        FROM   TRACTAMENTS t'
      '        WHERE  t.C_PRESTACIO = '#39'1004'#39
      '        AND    t.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_INGRES, t.C_HISTORIA'
      '        INTO :C_TRACTAMENT, :DATA_INGRES, :ENTRADA'
      '      DO BEGIN'
      '        UPDATE TRACTAMENTS'
      '        SET ENTRADA = :NORDRE'
      '        WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '        NORDRE = NORDRE+1;'
      '      END'
      '  END'
      ''
      '  ELSE IF (FEINA = '#39'NUMERA SORTIDA'#39') THEN'
      '  BEGIN'
      ''
      '    NORDRE = f_year(DATAINI) * 10000 + 1;'
      ''
      '    FOR SELECT t.C_TRACTAMENT, t.DATA_ALTA, t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      '        WHERE  t.C_PRESTACIO = '#39'1004'#39
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA, t.C_HISTORIA'
      '        INTO :C_TRACTAMENT, :DATA_ALTA, :SORTIDA'
      '      DO BEGIN'
      '        UPDATE TRACTAMENTS'
      '        SET SORTIDA = :NORDRE'
      '        WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '        NORDRE = NORDRE + 1;'
      '      END'
      '  END'
      ''
      'END'
      ''
      ''
      '')
    Dic1 = wDataBasics.Tractaments
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
    Top = 213
  end
  object P_VisitesUnitats: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'VisitesUnitats'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_UNITAT SMALLINT,'
      '  UNITATS SMALLINT,'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  DATAANY DATE'
      ') RETURNS ('
      '  C_METGE CHAR(5),'
      '  N_METGE VARCHAR(30),'
      '  V1_METGETOTAL INTEGER,'
      '  V1_METGEDATA INTEGER,'
      '  V1_PCTOTAL FLOAT,'
      '  V1_PCDATA FLOAT,'
      '  V2_METGETOTAL INTEGER,'
      '  V2_METGEDATA INTEGER,'
      '  V2_PCTOTAL FLOAT,'
      '  V2_PCDATA FLOAT,'
      '  V3_METGETOTAL INTEGER,'
      '  V3_METGEDATA INTEGER,'
      '  V3_PCTOTAL FLOAT,'
      '  V3_PCDATA FLOAT,'
      '  R_METGETOTAL INTEGER,'
      '  R_METGEDATA INTEGER,'
      '  R_PCTOTAL FLOAT,'
      '  R_PCDATA FLOAT,'
      '  I_METGETOTAL INTEGER,'
      '  I_METGEDATA INTEGER,'
      '  I_PCTOTAL FLOAT,'
      '  I_PCDATA FLOAT'
      ') AS      '
      'DECLARE VARIABLE C_PREST CHAR(4);'
      'DECLARE VARIABLE AUX11 INTEGER;'
      'DECLARE VARIABLE AUX12 INTEGER;'
      'DECLARE VARIABLE AUX21 INTEGER;'
      'DECLARE VARIABLE AUX22 INTEGER;'
      'DECLARE VARIABLE AUX31 INTEGER;'
      'DECLARE VARIABLE AUX32 INTEGER;'
      'DECLARE VARIABLE AUX41 INTEGER;'
      'DECLARE VARIABLE AUX42 INTEGER;'
      'DECLARE VARIABLE AUX61 INTEGER;'
      'DECLARE VARIABLE AUX62 INTEGER;'
      'BEGIN'
      ''
      
        '  IF (UNITATS = 0) THEN        /*-----------------UNITATS ADMINI' +
        'STRATIVES-----------------------*/'
      
        '  BEGIN                        /*.....................generals..' +
        '................................*/ '
      ''
      '      C_PREST = '#39'2001'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX11;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX12;'
      ''
      '      C_PREST = '#39'2002'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX21;'
      '      '
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX22;'
      ''
      '      C_PREST = '#39'2003'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX31;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX32;'
      ''
      '      C_PREST = '#39'2004'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX41;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX42;'
      ''
      '      C_PREST = '#39'2006'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX61;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :AUX62;'
      
        '                               /*.....................particular' +
        's...............................*/'
      ''
      '      FOR SELECT DISTINCT M.CODI, M.METGE'
      '          FROM TRACTAMENTS T'
      '          JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '          JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '          WHERE P.TIPUS = 2'
      '          AND F.UNITAT = :C_UNITAT'
      '          AND T.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          ORDER BY 1'
      '          INTO :C_METGE, :N_METGE'
      '      DO BEGIN'
      ''
      '          C_PREST = '#39'2001'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :V1_METGETOTAL;'
      ''
      '          IF (AUX11 = 0)'
      '          THEN V1_PCTOTAL = 0;'
      '          ELSE V1_PCTOTAL = (V1_METGETOTAL/AUX11)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE  C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_P' +
        'REST'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :V1_METGEDATA;'
      ''
      '          IF (AUX12 = 0)'
      '          THEN V1_PCDATA = 0;'
      '          ELSE V1_PCDATA = (V1_METGEDATA/AUX12)*100;'
      ''
      '      '
      '          C_PREST = '#39'2002'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '          WHERE C_COORDINADOR = :C_METGE'
      
        '          AND (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C' +
        '_PRESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :V2_METGETOTAL;'
      ''
      '          IF (AUX21 = 0)'
      '          THEN V2_PCTOTAL = 0;'
      '          ELSE V2_PCTOTAL = (V2_METGETOTAL/AUX21)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '          WHERE C_COORDINADOR = :C_METGE'
      
        '          AND (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C' +
        '_PRESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :V2_METGEDATA;'
      ''
      '          IF (AUX22 = 0)'
      '          THEN V2_PCDATA = 0;'
      '          ELSE V2_PCDATA = (V2_METGEDATA/AUX22)*100;'
      ''
      ''
      '          C_PREST = '#39'2003'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :V3_METGETOTAL;'
      ''
      '          IF (AUX31 = 0)'
      '          THEN V3_PCTOTAL = 0;'
      '          ELSE V3_PCTOTAL = (V3_METGETOTAL/AUX31)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :V3_METGEDATA;'
      ''
      '          IF (AUX32 = 0)'
      '          THEN V3_PCDATA = 0;'
      '          ELSE V3_PCDATA = (V3_METGEDATA/AUX32)*100;'
      ''
      ''
      '          C_PREST = '#39'2004'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :R_METGETOTAL;'
      ''
      '          IF (AUX41 = 0)'
      '          THEN R_PCTOTAL = 0;'
      '          ELSE R_PCTOTAL = (R_METGETOTAL/AUX41)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :R_METGEDATA;'
      ''
      '          IF (AUX42 = 0)'
      '          THEN R_PCDATA = 0;'
      '          ELSE R_PCDATA = (R_METGEDATA/AUX42)*100;'
      ''
      ''
      '          C_PREST = '#39'2006'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :I_METGETOTAL;'
      ''
      '          IF (AUX61 = 0)'
      '          THEN I_PCTOTAL = 0;'
      '          ELSE I_PCTOTAL = (I_METGETOTAL/AUX61)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.UNITAT = :C_UNITAT'
      '          INTO :I_METGEDATA;'
      ''
      '          IF (AUX62 = 0)'
      '          THEN I_PCDATA = 0;'
      '          ELSE I_PCDATA = (I_METGEDATA/AUX62)*100;'
      ''
      '          suspend;'
      '      END'
      '  END'
      ''
      
        '  ELSE IF (UNITATS = 1) THEN   /*-----------------UNITATS MEDIQU' +
        'ES------------------------------*/'
      
        '  BEGIN                        /*.....................generals..' +
        '................................*/'
      ''
      '      C_PREST = '#39'2001'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX11;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX12;'
      ''
      '      C_PREST = '#39'2002'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX21;'
      '      '
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX22;'
      ''
      '      C_PREST = '#39'2003'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX31;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX32;'
      ''
      '      C_PREST = '#39'2004'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX41;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX42;'
      ''
      '      C_PREST = '#39'2006'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX61;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :AUX62;'
      
        '                               /*.....................particular' +
        's...............................*/'
      ''
      '      FOR SELECT DISTINCT M.CODI, M.METGE'
      '          FROM TRACTAMENTS T'
      '          JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '          JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '          WHERE P.TIPUS = 2'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          AND T.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          ORDER BY 1'
      '          INTO :C_METGE, :N_METGE'
      '      DO BEGIN'
      ''
      '          C_PREST='#39'2001'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :V1_METGETOTAL;'
      ''
      '          IF (AUX11 = 0)'
      '          THEN V1_PCTOTAL = 0;'
      '          ELSE V1_PCTOTAL = (V1_METGETOTAL/AUX11)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE  C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_P' +
        'REST'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :V1_METGEDATA;'
      ''
      '          IF (AUX12 = 0)'
      '          THEN V1_PCDATA = 0;'
      '          ELSE V1_PCDATA = (V1_METGEDATA/AUX12)*100;'
      ''
      '      '
      '          C_PREST = '#39'2002'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '          WHERE C_COORDINADOR = :C_METGE'
      
        '          AND (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C' +
        '_PRESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :V2_METGETOTAL;'
      ''
      '          IF (AUX21 = 0)'
      '          THEN V2_PCTOTAL = 0;'
      '          ELSE V2_PCTOTAL = (V2_METGETOTAL/AUX21)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '          WHERE C_COORDINADOR = :C_METGE'
      
        '          AND (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C' +
        '_PRESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :V2_METGEDATA;'
      ''
      '          IF (AUX22 = 0)'
      '          THEN V2_PCDATA = 0;'
      '          ELSE V2_PCDATA = (V2_METGEDATA/AUX22)*100;'
      ''
      ''
      '          C_PREST = '#39'2003'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :V3_METGETOTAL;'
      ''
      '          IF (AUX31 = 0)'
      '          THEN V3_PCTOTAL = 0;'
      '          ELSE V3_PCTOTAL = (V3_METGETOTAL/AUX31)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :V3_METGEDATA;'
      ''
      '          IF (AUX32 = 0)'
      '          THEN V3_PCDATA = 0;'
      '          ELSE V3_PCDATA = (V3_METGEDATA/AUX32)*100;'
      ''
      ''
      '          C_PREST = '#39'2004'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :R_METGETOTAL;'
      ''
      '          IF (AUX41 = 0)'
      '          THEN R_PCTOTAL = 0;'
      '          ELSE R_PCTOTAL = (R_METGETOTAL/AUX41)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :R_METGEDATA;'
      ''
      '          IF (AUX42 = 0)'
      '          THEN R_PCDATA = 0;'
      '          ELSE R_PCDATA = (R_METGEDATA/AUX42)*100;'
      ''
      ''
      '          C_PREST = '#39'2006'#39';'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :I_METGETOTAL;'
      ''
      '          IF (AUX61 = 0)'
      '          THEN I_PCTOTAL = 0;'
      '          ELSE I_PCTOTAL = (I_METGETOTAL/AUX61)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE C_COORDINADOR = :C_METGE AND C_PRESTACIO = :C_PR' +
        'EST'
      '          AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          AND F.C_UNITATMEDICA = :C_UNITAT'
      '          INTO :I_METGEDATA;'
      ''
      '          IF (AUX62 = 0)'
      '          THEN I_PCDATA = 0;'
      '          ELSE I_PCDATA = (I_METGEDATA/AUX62)*100;'
      ''
      '          suspend;'
      '      END'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756565972
    Left = 336
    Top = 7
  end
  object P_VisitesUnitatsT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'VisitesUnitatsT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_UNITAT SMALLINT,'
      '  UNITATS CHAR(1),'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  DATAANY DATE'
      ') RETURNS ('
      '  V1_UNITAT INTEGER,'
      '  V1_UNITAT_AC INTEGER,'
      '  V1_UNITATPC FLOAT,'
      '  V1_UNITATPC_AC FLOAT,'
      '  V2_UNITAT INTEGER,'
      '  V2_UNITAT_AC INTEGER,'
      '  V2_UNITATPC FLOAT,'
      '  V2_UNITATPC_AC FLOAT,'
      '  V3_UNITAT INTEGER,'
      '  V3_UNITAT_AC INTEGER,'
      '  V3_UNITATPC FLOAT,'
      '  V3_UNITATPC_AC FLOAT,'
      '  R_UNITAT INTEGER,'
      '  R_UNITAT_AC INTEGER,'
      '  R_UNITATPC FLOAT,'
      '  R_UNITATPC_AC FLOAT,'
      '  I_UNITAT INTEGER,'
      '  I_UNITAT_AC INTEGER,'
      '  I_UNITATPC FLOAT,'
      '  I_UNITATPC_AC FLOAT'
      ') AS      '
      'DECLARE VARIABLE C_PREST CHAR(4);'
      'DECLARE VARIABLE AUX INTEGER;'
      'BEGIN'
      ''
      
        '  IF (UNITATS = 0) THEN           /*-----------------UNITATS ADM' +
        'INISTRATIVES-----------------------*/'
      '  BEGIN                     '
      ''
      '      C_PREST = '#39'2001'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :V1_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V1_UNITATPC_AC = 0;'
      '      ELSE V1_UNITATPC_AC = (V1_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :V1_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V1_UNITATPC = 0;'
      '      ELSE V1_UNITATPC = (V1_UNITAT/AUX)*100;'
      ''
      '      C_PREST = '#39'2002'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :V2_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V2_UNITATPC_AC = 0;'
      '      ELSE V2_UNITATPC_AC = (V2_UNITAT_AC/AUX)*100;'
      '      '
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :V2_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V2_UNITATPC = 0;'
      '      ELSE V2_UNITATPC = (V2_UNITAT/AUX)*100;'
      ''
      '      C_PREST = '#39'2003'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :V3_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V3_UNITATPC_AC = 0;'
      '      ELSE V3_UNITATPC_AC = (V3_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :V3_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V3_UNITATPC = 0;'
      '      ELSE V3_UNITATPC = (V3_UNITAT/AUX)*100;'
      ''
      '      C_PREST = '#39'2004'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :R_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN R_UNITATPC_AC = 0;'
      '      ELSE R_UNITATPC_AC = (R_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :R_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE C_PRESTACIO =: C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN R_UNITATPC = 0;'
      '      ELSE R_UNITATPC = (R_UNITAT/AUX)*100;'
      ''
      '      C_PREST = '#39'2006'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :I_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN I_UNITATPC_AC = 0;'
      '      ELSE I_UNITATPC_AC = (I_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.UNITAT = :C_UNITAT'
      '      INTO :I_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN I_UNITATPC = 0;'
      '      ELSE I_UNITATPC = (I_UNITAT/AUX)*100;'
      ''
      '      suspend;'
      '  END'
      ''
      
        '  ELSE IF (UNITATS=1) THEN      /*-----------------UNITATS MEDIQ' +
        'UES------------------------------*/'
      '  BEGIN                       '
      ''
      '      C_PREST = '#39'2001'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :V1_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE T.C_PRESTACIO=:C_PREST AND T.DATA_INGRES BETWEEN :DA' +
        'TAANY AND :FINS '
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V1_UNITATPC_AC = 0;'
      '      ELSE V1_UNITATPC_AC = (V1_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :V1_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V1_UNITATPC = 0;'
      '      ELSE V1_UNITATPC = (V1_UNITAT/AUX)*100;'
      ''
      '      C_PREST = '#39'2002'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :V2_UNITAT_AC;'
      '      '
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V2_UNITATPC_AC = 0;'
      '      ELSE V2_UNITATPC_AC = (V2_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :V2_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE (C_PRESTACIO = '#39'2002'#39' or C_PRESTACIO = '#39'2011'#39' or C_P' +
        'RESTACIO = '#39'2012'#39' or C_PRESTACIO = '#39'2013'#39')'
      '      AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V2_UNITATPC = 0;'
      '      ELSE V2_UNITATPC = (V2_UNITAT/AUX)*100;'
      ''
      '      C_PREST = '#39'2003'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :V3_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE T.C_PRESTACIO=:C_PREST AND T.DATA_INGRES BETWEEN :DA' +
        'TAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V3_UNITATPC_AC = 0;'
      '      ELSE V3_UNITATPC_AC = (V3_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :V3_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN V3_UNITATPC = 0;'
      '      ELSE V3_UNITATPC = (V3_UNITAT/AUX)*100;'
      ''
      '      C_PREST = '#39'2004'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :R_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN R_UNITATPC_AC = 0;'
      '      ELSE R_UNITATPC_AC = (R_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :R_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN R_UNITATPC = 0;'
      '      ELSE R_UNITATPC = (R_UNITAT/AUX)*100;'
      ''
      '      C_PREST = '#39'2006'#39';'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE T.C_PRESTACIO = :C_PREST AND T.DATA_INGRES BETWEEN :' +
        'DATAANY AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX = 0) THEN I_UNITATPC_AC = 0;'
      '      ELSE I_UNITATPC_AC = (I_UNITAT_AC/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DATA' +
        'ANY AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :I_UNITAT_AC;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      AND F.C_UNITATMEDICA = :C_UNITAT'
      '      INTO :I_UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '      WHERE C_PRESTACIO = :C_PREST AND DATA_INGRES BETWEEN :DESD' +
        'E AND :FINS'
      '      INTO :AUX;'
      ''
      '      IF (AUX=0) THEN I_UNITATPC = 0;'
      '      ELSE I_UNITATPC = (I_UNITAT/AUX)*100;'
      ''
      '      suspend;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756565972
    Left = 432
    Top = 7
  end
  object P_HtalDiaUnitats: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HtalDiaUnitats'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_UNITAT SMALLINT,'
      '  UNITATS SMALLINT,'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  DATAANY DATE'
      ') RETURNS ('
      '  C_METGE CHAR(5),'
      '  N_METGE VARCHAR(30),'
      '  METGE_DATA INTEGER,'
      '  METGE_DATA_PC FLOAT,'
      '  METGE_ACU INTEGER,'
      '  METGE_ACU_PC FLOAT'
      ') AS      '
      'DECLARE VARIABLE C_PREST CHAR(4);'
      'DECLARE VARIABLE AUX1 INTEGER;'
      'DECLARE VARIABLE AUX2 INTEGER;'
      'BEGIN'
      ''
      '  C_PREST='#39'1008'#39';'
      ''
      
        '  IF (UNITATS=0) THEN           /*-----------------UNITATS ADMIN' +
        'ISTRATIVES-----------------------*/'
      
        '  BEGIN                        /*.....................generals..' +
        '................................*/ '
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO=:C_PREST AND T.DATA_INGRES BETWEEN :DA' +
        'TAANY AND :FINS '
      '      AND F.UNITAT=:C_UNITAT'
      '      INTO :AUX1;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '      WHERE C_PRESTACIO=:C_PREST AND DATA_ALTA BETWEEN :DESDE AN' +
        'D :FINS'
      '      AND F.UNITAT=:C_UNITAT'
      '      INTO :AUX2;'
      ''
      
        '                               /*.....................particular' +
        's...............................*/'
      ''
      '      FOR SELECT DISTINCT M.CODI, M.METGE'
      '          FROM TRACTAMENTS T'
      '          JOIN METGES M ON T.C_COORDINADOR=M.CODI'
      '          JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '          WHERE T.C_PRESTACIO=:C_PREST'
      '          AND F.UNITAT=:C_UNITAT'
      '          AND T.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          ORDER BY 1'
      '          INTO :C_METGE, :N_METGE'
      '      DO BEGIN'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '          WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST '
      '          AND DATA_ALTA BETWEEN :DATAANY AND :FINS'
      '          AND F.UNITAT=:C_UNITAT'
      '          INTO :METGE_ACU;'
      ''
      '          IF (AUX1=0)'
      '          THEN METGE_ACU_PC=0;'
      '          ELSE METGE_ACU_PC=(METGE_ACU/AUX1)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '          WHERE  C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '          AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '          AND F.UNITAT=:C_UNITAT'
      '          INTO :METGE_DATA;'
      ''
      '          IF (AUX2=0)'
      '          THEN METGE_DATA_PC=0;'
      '          ELSE METGE_DATA_PC=(METGE_DATA/AUX2)*100;'
      ''
      '          suspend;'
      '      END'
      '  END'
      ''
      
        '  ELSE IF (UNITATS=1) THEN      /*-----------------UNITATS M'#200'DIQ' +
        'UES------------------------------*/'
      
        '  BEGIN                        /*.....................generals..' +
        '................................*/'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '      WHERE T.C_PRESTACIO=:C_PREST AND T.DATA_INGRES BETWEEN :DA' +
        'TAANY AND :FINS '
      '      AND F.C_UNITATMEDICA=:C_UNITAT'
      '      INTO :AUX1;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '      WHERE C_PRESTACIO=:C_PREST AND DATA_ALTA BETWEEN :DESDE AN' +
        'D :FINS'
      '      AND F.C_UNITATMEDICA=:C_UNITAT'
      '      INTO :AUX2;'
      ''
      
        '                               /*.....................particular' +
        's...............................*/'
      ''
      '      FOR SELECT DISTINCT M.CODI, M.METGE'
      '          FROM TRACTAMENTS T'
      '          JOIN METGES M ON T.C_COORDINADOR=M.CODI'
      '          JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '          WHERE T.C_PRESTACIO=:C_PREST'
      '          AND F.C_UNITATMEDICA=:C_UNITAT'
      '          AND T.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          ORDER BY 1'
      '          INTO :C_METGE, :N_METGE'
      '      DO BEGIN'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '          WHERE C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST '
      '          AND DATA_ALTA BETWEEN :DATAANY AND :FINS'
      '          AND F.C_UNITATMEDICA=:C_UNITAT'
      '          INTO :METGE_ACU;'
      ''
      '          IF (AUX1=0)'
      '          THEN METGE_ACU_PC=0;'
      '          ELSE METGE_ACU_PC=(METGE_ACU/AUX1)*100;'
      ''
      '          SELECT COUNT(*) FROM TRACTAMENTS T'
      '          JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '          WHERE  C_COORDINADOR=:C_METGE AND C_PRESTACIO=:C_PREST'
      '          AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '          AND F.C_UNITATMEDICA=:C_UNITAT'
      '          INTO :METGE_DATA;'
      ''
      '          IF (AUX2=0)'
      '          THEN METGE_DATA_PC=0;'
      '          ELSE METGE_DATA_PC=(METGE_DATA/AUX2)*100;'
      ''
      '          suspend;'
      '      END'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756565972
    Left = 264
    Top = 56
  end
  object P_HtalDiaUnitatsT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HtalDiaUnitatsT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_UNITAT SMALLINT,'
      '  UNITATS SMALLINT,'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  DATAANY DATE'
      ') RETURNS ('
      '  UNITAT INTEGER,'
      '  UNITAT_PC FLOAT,'
      '  UNITAT_ACU INTEGER,'
      '  UNITAT_ACU_PC FLOAT,'
      '  INICIS INTEGER,'
      '  INICIS_PC FLOAT,'
      '  INICIS_ACU INTEGER,'
      '  INICIS_ACU_PC FLOAT,'
      '  ALTES INTEGER,'
      '  ALTES_PC FLOAT,'
      '  ALTES_ACU INTEGER,'
      '  ALTES_ACU_PC FLOAT'
      ') AS      '
      'DECLARE VARIABLE C_PREST CHAR(4);'
      'DECLARE VARIABLE AUX INTEGER;'
      'BEGIN'
      ''
      
        '  IF (UNITATS=0) THEN           /*-----------------UNITATS ADMIN' +
        'ISTRATIVES-----------------------*/'
      '  BEGIN                     '
      ''
      '      C_PREST='#39'1008'#39';'
      ''
      '/* En tractament entre dates             --------------*/'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.C_PRESTACIO=:C_PREST '
      
        '      AND T.DATA_INGRES<=:FINS AND (T.DATA_ALTA>=:DATAANY OR T.D' +
        'ATA_ALTA IS NULL) '
      '      AND F.UNITAT=:C_UNITAT'
      '      INTO :UNITAT_ACU;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.C_PRESTACIO=:C_PREST'
      
        '      AND T.DATA_INGRES<=:FINS AND (T.DATA_ALTA>=:DATAANY OR T.D' +
        'ATA_ALTA IS NULL) '
      '      INTO :AUX;'
      ''
      '      IF (AUX=0) THEN UNITAT_ACU_PC=0;'
      '      ELSE UNITAT_ACU_PC=(UNITAT_ACU/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.C_PRESTACIO=:C_PREST'
      
        '      AND T.DATA_INGRES<=:FINS AND (T.DATA_ALTA>=:DESDE OR T.DAT' +
        'A_ALTA IS NULL) '
      '      AND F.UNITAT=:C_UNITAT'
      '      INTO :UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.C_PRESTACIO=:C_PREST'
      
        '      AND T.DATA_INGRES<=:FINS AND (T.DATA_ALTA>=:DESDE OR T.DAT' +
        'A_ALTA IS NULL) '
      '      INTO :AUX;'
      ''
      '      IF (AUX=0) THEN UNITAT_PC=0;'
      '      ELSE UNITAT_PC=(UNITAT/AUX)*100;'
      ''
      '/* Comencen tractament durant el per'#237'ode  -------------*/'
      ''
      '      /* unitat */'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      AND F.UNITAT=:C_UNITAT'
      '      INTO :INICIS;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      INTO :AUX;'
      ''
      '      /* percentatge */'
      '      IF (AUX=0) THEN INICIS_PC=0;'
      '      ELSE INICIS_PC=(INICIS*100)/AUX;'
      ''
      '      /* unitat acumulat */'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      AND F.UNITAT=:C_UNITAT'
      '      INTO :INICIS_ACU;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      INTO :AUX;'
      ''
      '      /* percentatge acumulat */'
      '      IF (AUX=0) THEN INICIS_ACU_PC=0;'
      '      ELSE INICIS_ACU_PC=(INICIS_ACU*100)/AUX;'
      ''
      '/* Altes durant el per'#237'ode               --------------*/'
      ''
      '      /* unitat */'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      AND F.UNITAT=:C_UNITAT'
      '      INTO :ALTES;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      INTO :AUX;'
      ''
      '      /* percentatge */'
      '      IF (AUX=0) THEN ALTES_PC=0;'
      '      ELSE ALTES_PC=(ALTES*100)/AUX;'
      ''
      '      /* unitat acumulat */'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.DATA_ALTA BETWEEN :DATAANY AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      AND F.UNITAT=:C_UNITAT'
      '      INTO :ALTES_ACU;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.DATA_ALTA BETWEEN :DATAANY AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      INTO :AUX;'
      ''
      '      /* percentatge acumulat */'
      '      IF (AUX=0) THEN ALTES_ACU_PC=0;'
      '      ELSE ALTES_ACU_PC=(ALTES_ACU*100)/AUX;'
      ''
      '      suspend;'
      '  END'
      ''
      
        '  ELSE IF (UNITATS=1) THEN      /*-----------------UNITATS MEDIQ' +
        'UES------------------------------*/'
      '  BEGIN                       '
      ''
      '      C_PREST='#39'1008'#39';'
      ''
      '/* En tractament entre dates             --------------*/'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.C_PRESTACIO=:C_PREST'
      
        '      AND T.DATA_INGRES<=:FINS AND (T.DATA_ALTA>=:DATAANY OR T.D' +
        'ATA_ALTA IS NULL) '
      '      AND F.C_UNITATMEDICA=:C_UNITAT'
      '      INTO :UNITAT_ACU;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.C_PRESTACIO=:C_PREST'
      
        '      AND T.DATA_INGRES<=:FINS AND (T.DATA_ALTA>=:DATAANY OR T.D' +
        'ATA_ALTA IS NULL) '
      '      INTO :AUX;'
      ''
      '      IF (AUX=0) THEN UNITAT_ACU_PC=0;'
      '      ELSE UNITAT_ACU_PC=(UNITAT_ACU/AUX)*100;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.C_PRESTACIO=:C_PREST'
      
        '      AND T.DATA_INGRES<=:FINS AND (T.DATA_ALTA>=:DATAANY OR T.D' +
        'ATA_ALTA IS NULL) '
      '      AND F.C_UNITATMEDICA=:C_UNITAT'
      '      INTO :UNITAT;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.C_PRESTACIO=:C_PREST'
      
        '      AND T.DATA_INGRES<=:FINS AND (T.DATA_ALTA>=:DATAANY OR T.D' +
        'ATA_ALTA IS NULL) '
      '      INTO :AUX;'
      ''
      '      IF (AUX=0) THEN UNITAT_PC=0;'
      '      ELSE UNITAT_PC=(UNITAT/AUX)*100;'
      ''
      '/* Comencen tractament durant el per'#237'ode  -------------*/'
      ''
      '      /* unitat */'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      AND F.C_UNITATMEDICA=:C_UNITAT'
      '      INTO :INICIS;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      INTO :AUX;'
      ''
      '      /* percentatge */'
      '      IF (AUX=0) THEN INICIS_PC=0;'
      '      ELSE INICIS_PC=(INICIS*100)/AUX;'
      ''
      '      /* unitat acumulat */'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      AND F.C_UNITATMEDICA=:C_UNITAT'
      '      INTO :INICIS_ACU;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      INTO :AUX;'
      ''
      '      /* percentatge acumulat */'
      '      IF (AUX=0) THEN INICIS_ACU_PC=0;'
      '      ELSE INICIS_ACU_PC=(INICIS_ACU*100)/AUX;'
      ''
      '/* Altes durant el per'#237'ode               --------------*/'
      ''
      '      /* unitat */'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      AND F.C_UNITATMEDICA=:C_UNITAT'
      '      INTO :ALTES;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      INTO :AUX;'
      ''
      '      /* percentatge */'
      '      IF (AUX=0) THEN ALTES_PC=0;'
      '      ELSE ALTES_PC=(ALTES*100)/AUX;'
      ''
      '      /* unitat acumulat */'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '      WHERE T.DATA_ALTA BETWEEN :DATAANY AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      AND F.C_UNITATMEDICA=:C_UNITAT'
      '      INTO :ALTES_ACU;'
      ''
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      WHERE T.DATA_ALTA BETWEEN :DATAANY AND :FINS'
      '      AND T.C_PRESTACIO=:C_PREST'
      '      INTO :AUX;'
      ''
      '      /* percentatge acumulat */'
      '      IF (AUX=0) THEN ALTES_ACU_PC=0;'
      '      ELSE ALTES_ACU_PC=(ALTES_ACU*100)/AUX;'
      ''
      '      suspend;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756565972
    Left = 352
    Top = 56
  end
  object P_Ingressos: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Ingressos'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_METGE CHAR(5),'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  DATAANY DATE'
      ')'
      'RETURNS'
      '('
      '  ING INTEGER,'
      '  ING_PCT FLOAT,'
      '  ING_ACU INTEGER,'
      '  ING_ACU_PCT FLOAT,'
      '  '
      '  PROG INTEGER,'
      '  PROG_PCT FLOAT,'
      '  PROG_ACU INTEGER,'
      '  PROG_ACU_PCT FLOAT,'
      '  '
      '  URG INTEGER,'
      '  URG_PCT FLOAT,'
      '  URG_ACU INTEGER,'
      '  URG_ACU_PCT FLOAT,'
      '  '
      '  PRIM INTEGER,'
      '  PRIM_PCT FLOAT,'
      '  PRIM_ACU INTEGER,'
      '  PRIM_ACU_PCT FLOAT,'
      '  '
      '  REING INTEGER,'
      '  REING_PCT FLOAT,'
      '  REING_ACU INTEGER,'
      '  REING_ACU_PCT FLOAT,'
      '  '
      '  TOTAL_SENSE INTEGER,'
      '  TOTAL_AMB INTEGER'
      ')'
      'AS '
      'BEGIN'
      '   '
      '    /* Ingressos              -------------- */'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '      INTO :ING;'
      '    '
      '    IF (ING = 0) THEN ING_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge metge */'
      '         WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      '          INTO :ING_PCT;'
      '        '
      '        ING_PCT = (ING * 100) / ING_PCT;'
      '    END;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '      INTO :ING_ACU;'
      '    '
      '    IF (ING_ACU = 0) THEN ING_ACU_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge acumulat anual metge */'
      '         WHERE DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      '          INTO :ING_ACU_PCT;'
      '        '
      '        ING_ACU_PCT = (ING_ACU * 100) / ING_ACU_PCT;'
      '    END;'
      ''
      '    '
      '    /* Ingressos programats   -------------- */'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND C_CARACTER > 1'
      '      INTO :PROG;'
      '    '
      '    IF (PROG = 0) THEN PROG_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge metge */'
      '         WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      '           AND C_CARACTER > 1'
      '          INTO :PROG_PCT;'
      '        '
      '        PROG_PCT = (PROG * 100) / PROG_PCT;'
      '    END;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND C_CARACTER > 1'
      '      INTO :PROG_ACU;'
      '    '
      '    IF (PROG_ACU = 0) THEN PROG_ACU_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge acumulat anual metge */'
      '         WHERE DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      '           AND C_CARACTER > 1'
      '          INTO :PROG_ACU_PCT;'
      '        '
      '        PROG_ACU_PCT = (PROG_ACU * 100) / PROG_ACU_PCT;'
      '    END;'
      '    '
      ''
      '    /* Ingressos urgents      -------------- */'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND C_CARACTER = 1'
      '      INTO :URG;'
      '    '
      '    IF (URG = 0) THEN URG_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge metge */'
      '         WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      '           AND C_CARACTER = 1'
      '          INTO :URG_PCT;'
      '        '
      '        URG_PCT = (URG * 100) / URG_PCT;'
      '    END;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND C_CARACTER = 1'
      '      INTO :URG_ACU;'
      '    '
      '    IF (URG_ACU = 0) THEN URG_ACU_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge acumulat anual metge */'
      '         WHERE DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      '           AND C_CARACTER = 1'
      '          INTO :URG_ACU_PCT;'
      '        '
      '        URG_ACU_PCT = (URG_ACU * 100) / URG_ACU_PCT;'
      '    END;'
      '    '
      '    '
      '    /* Primers ingressos      --------------*/'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND (C_CAS = 1 OR C_CAS = 2 OR C_CAS = 3 OR C_CAS = 7)'
      '       INTO :PRIM;'
      '    '
      '    IF (PRIM = 0) THEN PRIM_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge metge */'
      '         WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      
        '           AND (C_CAS = 1 OR C_CAS = 2 OR C_CAS = 3 OR C_CAS = 7' +
        ')'
      '          INTO :PRIM_PCT;'
      '        '
      '        PRIM_PCT = (PRIM * 100) / PRIM_PCT;'
      '    END;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND (C_CAS = 1 OR C_CAS = 2 OR C_CAS = 3 OR C_CAS = 7)'
      '      INTO :PRIM_ACU;'
      '    '
      '    IF (PRIM_ACU = 0) THEN PRIM_ACU_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge acumulat anual metge */'
      '         WHERE DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      
        '           AND (C_CAS = 1 OR C_CAS = 2 OR C_CAS = 3 OR C_CAS = 7' +
        ')'
      '          INTO :PRIM_ACU_PCT;'
      '        '
      '        PRIM_ACU_PCT = (PRIM_ACU * 100) / PRIM_ACU_PCT;'
      '    END;'
      '    '
      '    '
      '    /* Reingressos            -------------- */'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND (C_CAS = 4 OR C_CAS = 5 OR C_CAS = 6)'
      '      INTO :REING;'
      '    '
      '    IF (REING = 0) THEN REING_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge metge */'
      '         WHERE DATA_INGRES BETWEEN :DESDE AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      '           AND (C_CAS = 4 OR C_CAS = 5 OR C_CAS = 6)'
      '          INTO :REING_PCT;'
      '        '
      '        REING_PCT = (REING * 100) / REING_PCT;'
      '    END;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual metge */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND (C_CAS = 4 OR C_CAS = 5 OR C_CAS = 6)'
      '      INTO :REING_ACU;'
      '    '
      '    IF (REING_ACU = 0) THEN REING_ACU_PCT = 0;'
      '    ELSE'
      '    BEGIN'
      
        '        SELECT COUNT(*) FROM TRACTAMENTS                        ' +
        '          /* percentatge acumulat anual metge */'
      '         WHERE DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '           AND C_PRESTACIO = '#39'1004'#39
      '           AND (C_CAS = 4 OR C_CAS = 5 OR C_CAS = 6)'
      '          INTO :REING_ACU_PCT;'
      '        '
      '        REING_ACU_PCT = (REING_ACU * 100) / REING_ACU_PCT;'
      '    END;'
      '    '
      '        '
      '    /* Total ingressos sense causa ingr'#233's -- */'
      '    '
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND C_DIAGNOSTICINGRES IS NULL'
      '      INTO :TOTAL_SENSE;'
      '    '
      '    '
      '    /* Total ingressos amb causa ingr'#233's   -- */'
      '        '
      '    TOTAL_AMB = ING - TOTAL_SENSE;'
      '    '
      '    '
      '    suspend;'
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 32
    Top = 107
  end
  object P_IngressosT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'IngressosT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DESDE DATE,'
      '  FINS DATE,'
      '  DATAANY DATE'
      ')'
      'RETURNS'
      '('
      '  ING INTEGER,'
      '  ING_ACU INTEGER,'
      '  '
      '  PROG INTEGER,'
      '  PROG_ACU INTEGER,'
      '  '
      '  URG INTEGER,'
      '  URG_ACU INTEGER,'
      '  '
      '  PRIM INTEGER,'
      '  PRIM_ACU INTEGER,'
      '  '
      '  REING INTEGER,'
      '  REING_ACU INTEGER'
      ')'
      'AS '
      'BEGIN'
      '   '
      '    /* Ingressos              -------------- */'
      '    '
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      INTO :ING;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '      INTO :ING_ACU;'
      '    '
      '    '
      '    /* Ingressos programats   -------------- */'
      '    '
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND C_CARACTER > 1'
      '      INTO :PROG;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND C_CARACTER > 1'
      '      INTO :PROG_ACU;'
      '    '
      '    '
      '    /* Ingressos urgents      -------------- */'
      '    '
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND C_CARACTER = 1'
      '      INTO :URG;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND C_CARACTER = 1'
      '      INTO :URG_ACU;'
      '    '
      '    '
      '    /* Primers ingressos      --------------*/'
      '    '
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND (C_CAS = 1 OR C_CAS = 2 OR C_CAS = 3 OR C_CAS = 7)'
      '       INTO :PRIM;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND (C_CAS = 1 OR C_CAS = 2 OR C_CAS = 3 OR C_CAS = 7)'
      '      INTO :PRIM_ACU;'
      '    '
      '    '
      '    /* Reingressos            -------------- */'
      '    '
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '       AND (C_CAS = 4 OR C_CAS = 5 OR C_CAS = 6)'
      '      INTO :REING;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        '          /* acumulat anual */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '       AND (C_CAS = 4 OR C_CAS = 5 OR C_CAS = 6)'
      '      INTO :REING_ACU;'
      '    '
      '    '
      '    suspend;'
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 100
    Top = 107
  end
  object P_DiagAltes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DiagAltes'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_TRACTAMENT INTEGER'
      ')'
      'RETURNS'
      '('
      '  C_DIAGNOSTIC CHAR(15),'
      '  C_INTERVENCIO CHAR(15),'
      '  DATA_ENTRADA DATE,'
      '  VERSIOCIM    INTEGER'
      ')'
      'AS '
      'DECLARE VARIABLE NUM_DIAG INTEGER;'
      'DECLARE VARIABLE NUM_INTERV INTEGER;'
      'DECLARE VARIABLE I INTEGER;'
      'BEGIN'
      '  '
      '  SELECT COUNT(*) FROM DIAGNOSTICS'
      '   WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '     AND TIPUS = '#39'A'#39
      '    INTO :NUM_DIAG;'
      '  '
      '  SELECT COUNT(*)-1 FROM BQUIRURGIC'
      '   WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '     AND ESTAT BETWEEN 30 AND 32'
      '    INTO :NUM_INTERV;'
      '    '
      '  IF (NUM_DIAG >= NUM_INTERV) THEN'
      '  BEGIN'
      '    '
      '    I = 0;'
      '    '
      '    FOR SELECT C_DIAGNOSTIC, VERSIOCIM FROM DIAGNOSTICS'
      '         WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '           AND TIPUS = '#39'A'#39
      '         ORDER BY ORDRE'
      '          INTO :C_DIAGNOSTIC, :VERSIOCIM'
      '    DO BEGIN'
      '      I = I+1;'
      '      IF (I <= NUM_INTERV) THEN'
      '      BEGIN'
      
        '        SELECT C_PROCEDIMENT, DATA_ENTRADA, VERSIOCIM FROM BQUIR' +
        'URGIC'
      '         WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '           AND ESTAT BETWEEN 30 AND 32'
      '           AND NUM_INTERV = :I+1'
      '          INTO :C_INTERVENCIO, :DATA_ENTRADA, :VERSIOCIM;'
      '      END'
      '      ELSE BEGIN'
      '        C_INTERVENCIO = NULL;'
      '        DATA_ENTRADA = NULL;'
      '      END;'
      '      '
      '      suspend;'
      '    END;'
      '    '
      '  END'
      '  ELSE'
      '  BEGIN'
      '    '
      '    I = 0;'
      '    '
      
        '    FOR SELECT C_PROCEDIMENT, DATA_ENTRADA, VERSIOCIM FROM BQUIR' +
        'URGIC'
      '         WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '           AND NUM_INTERV > 1'
      '         ORDER BY DATA_ENTRADA'
      '          INTO :C_INTERVENCIO, :DATA_ENTRADA, :VERSIOCIM'
      '    DO BEGIN'
      '      I = I+1;'
      '      IF (I <= NUM_DIAG) THEN'
      '      BEGIN'
      '        SELECT C_DIAGNOSTIC, VERSIOCIM FROM DIAGNOSTICS'
      '         WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '           AND TIPUS = '#39'A'#39
      '           AND ORDRE = :I'
      '          INTO :C_DIAGNOSTIC, :VERSIOCIM;'
      '      END'
      '      ELSE C_DIAGNOSTIC = NULL;'
      '      '
      '      suspend;'
      '    END;'
      '    '
      '  END;'
      '  '
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 192
    Top = 107
  end
  object P_Altes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Altes'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_METGE CHAR(5),'
      '  DESDE DATE,'
      '  FINS DATE'
      ')'
      'RETURNS'
      '('
      '  ING_INICIS INTEGER,'
      '  ING_INICIS_PCT FLOAT,'
      '  ING_FINALS INTEGER,'
      '  ING_FINALS_PCT FLOAT,'
      '  ING_MES INTEGER,'
      '  ING_MES_PCT FLOAT,'
      '  ALTES INTEGER,'
      '  ALTES_PCT FLOAT,'
      '  ALTES_INTERV INTEGER,'
      '  '
      '  ESTADES INTEGER,'
      '  ESTADES_MAJ INTEGER,'
      '  ESTADA_M INTEGER,'
      '  ESTADA_M_CORR INTEGER,'
      '  '
      '  AMB_DIAG INTEGER,'
      '  SENSE_DIAG INTEGER,'
      '  '
      '  PLAQUES INTEGER,'
      '  PROM_PLAQUES INTEGER,'
      ''
      '  DETERMINACIONS INTEGER,'
      '  PROM_DETERM INTEGER'
      ')'
      'AS '
      'BEGIN'
      '   '
      '    /* Ingressos              -------------- */'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* ingressats inicis */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      
        '       AND DATA_INGRES < :DESDE AND (DATA_ALTA >= :DESDE OR DATA' +
        '_ALTA IS NULL)'
      '      INTO :ING_INICIS;'
      '    '
      
        '    IF (ING_INICIS = 0) THEN ING_INICIS_PCT = 0;                ' +
        ' /* percentatge */'
      '    ELSE'
      '    BEGIN'
      '        SELECT COUNT(*) FROM TRACTAMENTS'
      '         WHERE C_PRESTACIO = '#39'1004'#39
      
        '           AND DATA_INGRES < :DESDE AND (DATA_ALTA >= :DESDE OR ' +
        'DATA_ALTA IS NULL)'
      '          INTO :ING_INICIS_PCT;'
      '        '
      '        ING_INICIS_PCT = (ING_INICIS * 100) / ING_INICIS_PCT;'
      '    END;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* ingressos mes */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      INTO :ING_MES;'
      '    '
      
        '    IF (ING_MES = 0) THEN ING_MES_PCT = 0;                      ' +
        ' /* percentatge */'
      '    ELSE'
      '    BEGIN'
      '        SELECT COUNT(*) FROM TRACTAMENTS'
      '         WHERE C_PRESTACIO = '#39'1004'#39
      '           AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '          INTO :ING_MES_PCT;'
      '        '
      '        ING_MES_PCT = (ING_MES * 100) / ING_MES_PCT;'
      '    END;'
      '    '
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* ingressats finals */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      
        '       AND DATA_INGRES <= :FINS AND (DATA_ALTA > :FINS OR DATA_A' +
        'LTA IS NULL)'
      '      INTO :ING_FINALS;'
      '    '
      
        '    IF (ING_INICIS = 0) THEN ING_INICIS_PCT = 0;                ' +
        ' /* percentatge */'
      '    ELSE'
      '    BEGIN'
      '        SELECT COUNT(*) FROM TRACTAMENTS'
      '         WHERE C_PRESTACIO = '#39'1004'#39
      
        '           AND DATA_INGRES <= :FINS AND (DATA_ALTA > :FINS OR DA' +
        'TA_ALTA IS NULL)'
      '          INTO :ING_FINALS_PCT;'
      '        '
      '        ING_FINALS_PCT = (ING_FINALS * 100) / ING_FINALS_PCT;'
      '    END;'
      '    '
      '    '
      '    /* Altes                  -------------- */'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* altes mes */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :ALTES;'
      '    '
      
        '    IF (ALTES = 0) THEN ALTES_PCT = 0;                          ' +
        ' /* percentatge */'
      '    ELSE'
      '    BEGIN'
      '        SELECT COUNT(*) FROM TRACTAMENTS'
      '         WHERE C_PRESTACIO = '#39'1004'#39
      '           AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '          INTO :ALTES_PCT;'
      '        '
      '        ALTES_PCT = (ALTES * 100) / ALTES_PCT;'
      '    END;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* altes amb intervenci'#243' */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '       AND C_TRACTAMENT IN (SELECT C_TRACTAMENT FROM BQUIRURGIC)'
      '      INTO :ALTES_INTERV;'
      '    '
      '    '
      '    /* Estades                -------------- */'
      '    '
      
        '    SELECT SUM(DURADA) FROM TRACTAMENTS                         ' +
        ' /* dies estades */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :ESTADES;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* malalts amb estades > 365 */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND DURADA > 365'
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :ESTADES_MAJ;'
      '    '
      
        '    SELECT AVG(DURADA) FROM TRACTAMENTS                         ' +
        ' /* estada mitjana */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :ESTADA_M;'
      '    '
      
        '    SELECT AVG(DURADA) FROM TRACTAMENTS                         ' +
        ' /* estada mitjana corr. */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND DURADA <= 365'
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :ESTADA_M_CORR;'
      '    '
      '    '
      '    /* Diagn'#242'stic de sortida  -------------- */'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* amb diagn'#242'stic de sortida */'
      '     WHERE C_COORDINADOR = :C_METGE'
      '       AND C_PRESTACIO = '#39'1004'#39
      '       AND C_DIAGNOSTICALTA IS NOT NULL '
      '       AND C_DIAGNOSTICALTA <> '#39#39
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :AMB_DIAG;'
      '      '
      
        '    SENSE_DIAG = ALTES - AMB_DIAG;                              ' +
        ' /* sense diagn'#242'stic de sortida */'
      ''
      ''
      '    /* Plaques                -------------- */'
      ''
      
        '    SELECT COUNT(*)                                             ' +
        ' /* plaques */'
      '      FROM RX r'
      '      JOIN TRACTAMENTS t ON r.C_TRACTAMENT = t.C_TRACTAMENT'
      '     WHERE t.C_COORDINADOR = :C_METGE'
      '       AND t.C_PRESTACIO = '#39'1004'#39
      '       AND t.DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :PLAQUES;'
      ''
      
        '    IF (PLAQUES <> 0) THEN PROM_PLAQUES = PLAQUES / ALTES;      ' +
        ' /* promig plaques */'
      '    ELSE PROM_PLAQUES = 0;'
      ''
      ''
      '    /* Determinacions         -------------- */'
      '    '
      
        '    SELECT COUNT(*)                                             ' +
        ' /* determinacions */'
      '      FROM ANALIT l'
      '      JOIN ANACABE a ON (l.NILAB = a.NILAB AND l.DATA = a.DATA)'
      '      JOIN TRACTAMENTS t ON a.C_TRACTAMENT = t.C_TRACTAMENT'
      '     WHERE t.C_COORDINADOR = :C_METGE'
      '       AND t.C_PRESTACIO = '#39'1004'#39
      '       AND t.DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :DETERMINACIONS;'
      ''
      
        '                                                                ' +
        ' /* promig determinacions */'
      
        '    IF (DETERMINACIONS <> 0) THEN PROM_DETERM = DETERMINACIONS /' +
        ' ALTES;'
      '    ELSE PROM_DETERM = 0;'
      '    '
      '    '
      '    suspend;'
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 264
    Top = 107
  end
  object P_AltesT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AltesT'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DESDE DATE,'
      '  FINS DATE'
      ')'
      'RETURNS'
      '('
      '  ING_INICIS INTEGER,'
      '  ING_FINALS INTEGER,'
      '  ING_MES INTEGER,'
      '  ALTES INTEGER,'
      '  '
      '  ESTADA_G INTEGER,'
      '  ESTADA_G_CORR INTEGER '
      ')'
      'AS '
      'BEGIN'
      '   '
      '    /* Ingressos              -------------- */'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* ingressats inicis */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      
        '       AND DATA_INGRES < :DESDE AND (DATA_ALTA >= :DESDE OR DATA' +
        '_ALTA IS NULL)'
      '      INTO :ING_INICIS;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* ingressos mes */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_INGRES BETWEEN :DESDE AND :FINS'
      '      INTO :ING_MES;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* ingressats finals */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      
        '       AND DATA_INGRES <= :FINS AND (DATA_ALTA > :FINS OR DATA_A' +
        'LTA IS NULL)'
      '      INTO :ING_FINALS;'
      '    '
      
        '    SELECT COUNT(*) FROM TRACTAMENTS                            ' +
        ' /* altes mes */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :ALTES;'
      '    '
      
        '    SELECT AVG(DURADA) FROM TRACTAMENTS                         ' +
        ' /* estada mitjana global */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :ESTADA_G;'
      '    '
      
        '    SELECT AVG(DURADA) FROM TRACTAMENTS                         ' +
        ' /* estada mitjana global corr. */'
      '     WHERE C_PRESTACIO = '#39'1004'#39
      '       AND DURADA <= 365'
      '       AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '      INTO :ESTADA_G_CORR;'
      ''
      '    '
      '    suspend;'
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 312
    Top = 107
  end
  object P_OrdreQuirofan: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OrdreQuirofan'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  FEINA VARCHAR(20),'
      '  DATAINI DATE,'
      '  DATAFI DATE'
      ')'
      'RETURNS'
      '('
      '  C_TRACTAMENT INTEGER,'
      '  C_INTERV INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  DATA_ENTRADA DATE,'
      '  NUMERACIO INTEGER'
      ')'
      'AS'
      'DECLARE VARIABLE NORDRE INTEGER;'
      'BEGIN'
      ''
      '  IF (FEINA='#39'COMPROVA'#39') THEN'
      '  BEGIN'
      ''
      '    NORDRE=f_year(DATAINI)*10000 + 1;'
      ''
      
        '    FOR SELECT C_INTERV, DATA_ENTRADA, NUMERACIO, C_TRACTAMENT, ' +
        'C_HISTORIA'
      '        FROM   BQUIRURGIC'
      '        WHERE  DATA_ENTRADA BETWEEN :DATAINI AND :DATAFI'
      '        AND    ESTAT <> 40'
      '        ORDER BY DATA_ENTRADA'
      
        '        INTO :C_INTERV, :DATA_ENTRADA, :NUMERACIO, :C_TRACTAMENT' +
        ', :C_HISTORIA'
      '      DO BEGIN'
      '        IF ((NUMERACIO <> NORDRE) OR (NUMERACIO IS NULL)) THEN'
      '        BEGIN'
      '          suspend;'
      '          exit;'
      '        END'
      '        NORDRE = NORDRE + 1;'
      '      END'
      '  END'
      ''
      '  ELSE IF (FEINA='#39'NUMERA'#39') THEN'
      '  BEGIN'
      ''
      '    NORDRE=f_year(DATAINI)*10000+1;'
      ''
      '    FOR SELECT C_INTERV,DATA_ENTRADA,NUMERACIO'
      '          FROM BQUIRURGIC'
      '         WHERE DATA_ENTRADA BETWEEN :DATAINI AND :DATAFI'
      '           AND ESTAT <> 40'
      '         ORDER BY DATA_ENTRADA'
      '          INTO :C_INTERV,:DATA_ENTRADA,:NUMERACIO'
      '      DO BEGIN'
      '        UPDATE BQUIRURGIC'
      '        SET NUMERACIO=:NORDRE'
      '        WHERE C_INTERV=:C_INTERV;'
      '        NORDRE=NORDRE+1;'
      '      END'
      '  END;'
      ''
      'END'
      '')
    Dic1 = wDataBasics.Tractaments
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
    Left = 480
    Top = 213
  end
  object P_Estades: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Estades'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  UNITAT SMALLINT,'
      '  DESDE DATE,'
      '  FINS DATE'
      ')'
      'RETURNS'
      '('
      '  TITOL CHAR(50),'
      '  PACIENTS INTEGER,'
      '  ESTADES INTEGER'
      ')'
      'AS'
      'DECLARE VARIABLE t_pacients INTEGER;'
      'DECLARE VARIABLE t_estades INTEGER;'
      'BEGIN'
      ''
      '      t_pacients = 0;'
      '      t_estades = 0;'
      ''
      '      TITOL = '#39'Ingressos anteriors al mes i que continuen'#39';'
      '      '
      '      SELECT count(*), count(*) * (:FINS - :DESDE + 1)'
      '        FROM TRACTAMENTS t'
      '        JOIN FILIACIO f on (t.C_HISTORIA = f.NUM_HIST)'
      '       WHERE f.UNITAT = :UNITAT'
      '         AND t.C_PRESTACIO = '#39'1004'#39
      
        '         AND t.DATA_INGRES < :DESDE AND (t.DATA_ALTA > :FINS OR ' +
        't.DATA_ALTA is null)'
      '        INTO :PACIENTS, :ESTADES;'
      '      '
      '      t_pacients = t_pacients + :PACIENTS;'
      '      t_estades = t_estades + :ESTADES;'
      '      '
      '      suspend;     '
      ''
      ''
      '      TITOL = '#39'Ingressos anteriors al mes i que s'#243'n alta'#39';'
      '      '
      '      SELECT count(*), sum(t.DATA_ALTA - :DESDE + 1)'
      '        FROM TRACTAMENTS t'
      '        JOIN FILIACIO f on (t.C_HISTORIA=f.NUM_HIST)'
      '       WHERE f.UNITAT = :UNITAT'
      '         AND t.C_PRESTACIO = '#39'1004'#39
      
        '         AND t.DATA_INGRES < :DESDE AND t.DATA_ALTA between :DES' +
        'DE AND :FINS'
      '        INTO :PACIENTS, :ESTADES;'
      '      '
      '      t_pacients = t_pacients + :PACIENTS;'
      '      t_estades = t_estades + :ESTADES;'
      '      '
      '      suspend;'
      ''
      ''
      
        '      TITOL = '#39'Ingressos que ingressen en el mes i que continuen' +
        #39';'
      '      '
      '      SELECT count(*), sum(:FINS - t.DATA_INGRES + 1)'
      '        FROM TRACTAMENTS t'
      '        JOIN FILIACIO f on (t.C_HISTORIA=f.NUM_HIST)'
      '       WHERE f.UNITAT = :UNITAT'
      '         AND t.C_PRESTACIO = '#39'1004'#39
      
        '         AND t.DATA_INGRES between :DESDE AND :FINS AND (t.DATA_' +
        'ALTA > :FINS OR t.DATA_ALTA is null)'
      '        INTO :PACIENTS, :ESTADES;'
      '      '
      '      t_pacients = t_pacients + :PACIENTS;'
      '      t_estades = t_estades + :ESTADES;'
      '      '
      '      suspend;'
      ''
      ''
      
        '      TITOL = '#39'Ingressos que ingressen en el mes i que s'#243'n alta'#39 +
        ';'
      '      '
      '      SELECT count(*), sum(t.DATA_ALTA - t.DATA_INGRES + 1)'
      '        FROM TRACTAMENTS t'
      '        JOIN FILIACIO f on (t.C_HISTORIA=f.NUM_HIST)'
      '       WHERE f.UNITAT = :UNITAT'
      '         AND t.C_PRESTACIO = '#39'1004'#39
      
        '         AND t.DATA_INGRES between :DESDE AND :FINS AND t.DATA_A' +
        'LTA between :DESDE AND :FINS'
      '        INTO :PACIENTS, :ESTADES;'
      '      '
      '      t_pacients = t_pacients + :PACIENTS;'
      '      t_estades = t_estades + :ESTADES;'
      '      '
      '      suspend;'
      ''
      '/*'
      '      TITOL = '#39'Total'#39';'
      '      PACIENTS = t_pacients;'
      '      ESTADES = t_estades;'
      '      '
      '      suspend;'
      '*/'
      ''
      'END;')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 376
    Top = 107
  end
  object P_Revisions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Revisions'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  UNITAT CHAR(1),'
      '  C_UNITAT SMALLINT,'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  DATAANY DATE'
      ') '
      'RETURNS ('
      '  C_METGE CHAR(5),'
      '  METGE CHAR(15),'
      '  REVISIONS INTEGER,'
      '  REVISIONS_PCT FLOAT,'
      '  ACUMULAT INTEGER,'
      '  ACUMULAT_PCT FLOAT,'
      '  T_REVISIONS INTEGER,'
      '  T_ACUMULAT INTEGER'
      ') AS       '
      'BEGIN'
      '   '
      '   IF (UNITAT = '#39'A'#39') THEN'
      '   BEGIN'
      '      '
      '      SELECT COUNT(*)'
      '        FROM TRACTAMENTS t'
      '        JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '       WHERE t.C_PRESTACIO = '#39'2004'#39
      '         AND t.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '         AND F.UNITAT = :C_UNITAT'
      '        INTO :T_REVISIONS;'
      '      '
      '      SELECT COUNT(*)'
      '        FROM TRACTAMENTS t'
      '        JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '       WHERE t.C_PRESTACIO = '#39'2004'#39
      '         AND t.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '         AND F.UNITAT = :C_UNITAT'
      '        INTO :T_ACUMULAT;'
      '      '
      '      FOR SELECT DISTINCT m.METGE, m.CODI'
      '            FROM TRACTAMENTS t'
      '            JOIN METGES m ON t.C_COORDINADOR = m.CODI'
      '            JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '           WHERE t.C_PRESTACIO = '#39'2004'#39
      '             AND t.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '             AND F.UNITAT = :C_UNITAT'
      '           ORDER BY m.CODI'
      '            INTO :METGE, :C_METGE'
      '      DO BEGIN'
      '            '
      '            SELECT COUNT(*)'
      '            FROM TRACTAMENTS t'
      '            JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '            WHERE t.C_PRESTACIO = '#39'2004'#39
      '            AND t.C_COORDINADOR = :C_METGE'
      '            AND t.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '            AND F.UNITAT = :C_UNITAT'
      '            INTO :REVISIONS;'
      '            '
      '            IF (T_REVISIONS = 0) THEN REVISIONS_PCT = 0;'
      '            ELSE REVISIONS_PCT = REVISIONS*100/T_REVISIONS;'
      '            '
      '            SELECT COUNT(*)'
      '            FROM TRACTAMENTS t'
      '            JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '            WHERE t.C_PRESTACIO = '#39'2004'#39
      '            AND t.C_COORDINADOR = :C_METGE'
      '            AND t.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '            AND F.UNITAT = :C_UNITAT'
      '            INTO :ACUMULAT;'
      '            '
      '            IF (T_ACUMULAT = 0) THEN ACUMULAT_PCT = 0;'
      '            ELSE ACUMULAT_PCT = ACUMULAT*100/T_ACUMULAT;'
      '            '
      '            suspend;'
      '      END;'
      '      '
      '      METGE = '#39'TOTAL'#39';'
      '      C_METGE = '#39#39';'
      '      REVISIONS = :T_REVISIONS;'
      '      ACUMULAT = :T_ACUMULAT;'
      '      '
      '   END;'
      '   '
      '   ELSE IF (UNITAT = '#39'M'#39') THEN'
      '   BEGIN'
      '      '
      '      SELECT COUNT(*)'
      '        FROM TRACTAMENTS t'
      '        JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '       WHERE t.C_PRESTACIO = '#39'2004'#39
      '         AND t.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '         AND F.C_UNITATMEDICA = :C_UNITAT'
      '        INTO :T_REVISIONS;'
      '      '
      '      SELECT COUNT(*)'
      '        FROM TRACTAMENTS t'
      '        JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '       WHERE t.C_PRESTACIO = '#39'2004'#39
      '         AND t.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '         AND F.C_UNITATMEDICA = :C_UNITAT'
      '        INTO :T_ACUMULAT;'
      '      '
      '      FOR SELECT DISTINCT m.METGE, m.CODI'
      '            FROM TRACTAMENTS t'
      '            JOIN METGES m ON t.C_COORDINADOR = m.CODI'
      '            JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '           WHERE t.C_PRESTACIO = '#39'2004'#39
      '             AND t.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '             AND F.C_UNITATMEDICA = :C_UNITAT'
      '           ORDER BY m.CODI'
      '            INTO :METGE, :C_METGE'
      '      DO BEGIN'
      '            '
      '            SELECT COUNT(*)'
      '            FROM TRACTAMENTS t'
      '            JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '            WHERE t.C_PRESTACIO = '#39'2004'#39
      '            AND t.C_COORDINADOR = :C_METGE'
      '            AND t.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '            AND F.C_UNITATMEDICA = :C_UNITAT'
      '            INTO :REVISIONS;'
      '            '
      '            IF (T_REVISIONS = 0) THEN REVISIONS_PCT = 0;'
      '            ELSE REVISIONS_PCT = REVISIONS*100/T_REVISIONS;'
      '            '
      '            SELECT COUNT(*)'
      '            FROM TRACTAMENTS t'
      '            JOIN FILIACIO f ON t.C_HISTORIA = f.NUM_HIST'
      '            WHERE t.C_PRESTACIO = '#39'2004'#39
      '            AND t.C_COORDINADOR = :C_METGE'
      '            AND t.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '            AND F.C_UNITATMEDICA = :C_UNITAT'
      '            INTO :ACUMULAT;'
      '            '
      '            IF (T_ACUMULAT = 0) THEN ACUMULAT_PCT = 0;'
      '            ELSE ACUMULAT_PCT = ACUMULAT*100/T_ACUMULAT;'
      '            '
      '            suspend;'
      '      END;'
      '      '
      '      METGE = '#39'TOTAL'#39';'
      '      C_METGE = '#39#39';'
      '      REVISIONS = :T_REVISIONS;'
      '      ACUMULAT = :T_ACUMULAT;'
      '      '
      '   END;'
      '   '
      '   SELECT COUNT(*)'
      '     FROM TRACTAMENTS t'
      '    WHERE t.C_PRESTACIO = '#39'2004'#39
      '      AND t.DATA_INGRES BETWEEN :DESDE AND :FINS'
      '     INTO :T_REVISIONS;'
      '   '
      '   IF (T_REVISIONS = 0) THEN REVISIONS_PCT = 0;'
      '   ELSE REVISIONS_PCT = REVISIONS*100/T_REVISIONS;'
      '   '
      '   SELECT COUNT(*)'
      '     FROM TRACTAMENTS t'
      '    WHERE t.C_PRESTACIO = '#39'2004'#39
      '      AND t.DATA_INGRES BETWEEN :DATAANY AND :FINS'
      '     INTO :T_ACUMULAT;'
      '   '
      '   IF (T_ACUMULAT = 0) THEN ACUMULAT_PCT = 0;'
      '   ELSE ACUMULAT_PCT = ACUMULAT*100/T_ACUMULAT;'
      '   '
      '   suspend;'
      '   '
      'END')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756565972
    Left = 432
    Top = 56
  end
  object P_Sessions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Sessions'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  ADMMEDMET SMALLINT,'
      '  CODI CHAR(5),'
      '  DESDE DATE,'
      '  FINS DATE'
      ')'
      'RETURNS'
      '('
      '  C_HISTORIA INTEGER,'
      '  NOMCOMPLET CHAR(40),'
      '  '
      '  N_2007 INTEGER,'
      '  N_2008 INTEGER,'
      '  N_2009 INTEGER,'
      '  N_2014 INTEGER,'
      ''
      '  C_UNITATA SMALLINT,'
      '  C_UNITATM SMALLINT,'
      '  C_METGE CHAR(5)'
      ')'
      'AS '
      'BEGIN'
      '  '
      '  IF (ADMMEDMET = 1) THEN'
      '  BEGIN'
      
        '    FOR SELECT DISTINCT t.C_HISTORIA, f.NOMCOMPLET, f.UNITAT, f.' +
        'C_UNITATMEDICA, t.C_COORDINADOR'
      '        FROM TRACTAMENTS t'
      
        '        JOIN ASSISTENCIAGIMNAS a on (t.C_HISTORIA = a.C_HISTORIA' +
        ')'
      '        JOIN FILIACIO f on (t.C_HISTORIA = f.NUM_HIST)'
      '        WHERE t.C_PRESTACIO in ('#39'2007'#39', '#39'2008'#39', '#39'2009'#39', '#39'2014'#39')'
      
        '        AND t.DATA_INGRES <= :FINS and (t.DATA_ALTA >= :DESDE or' +
        ' t.DATA_ALTA is NULL)'
      '        AND a.DATA between :DESDE and :FINS'
      '        AND a.C_TIPUSASS = 1'
      '        AND f.UNITAT = :CODI'
      '        ORDER BY f.NOMCOMPLET'
      
        '        INTO :C_HISTORIA, :NOMCOMPLET, :C_UNITATA, :C_UNITATM, :' +
        'C_METGE'
      '    DO BEGIN'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t ON a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2007'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2007;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2008'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2008;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2009'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2009;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2014'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2014;'
      '      '
      '      suspend;'
      '    END;'
      '  END;'
      '  '
      '  ELSE IF (ADMMEDMET = 2) THEN'
      '  BEGIN'
      
        '    FOR SELECT DISTINCT t.C_HISTORIA, f.NOMCOMPLET, f.UNITAT, f.' +
        'C_UNITATMEDICA, t.C_COORDINADOR'
      '        FROM TRACTAMENTS t'
      
        '        JOIN ASSISTENCIAGIMNAS a on (t.C_HISTORIA = a.C_HISTORIA' +
        ')'
      '        JOIN FILIACIO f ON (t.C_HISTORIA = f.NUM_HIST)'
      '        WHERE t.C_PRESTACIO IN ('#39'2007'#39', '#39'2008'#39', '#39'2009'#39', '#39'2014'#39')'
      
        '        AND t.DATA_INGRES <= :FINS and (t.DATA_ALTA >= :DESDE or' +
        ' t.DATA_ALTA is NULL)'
      '        AND a.DATA between :DESDE and :FINS'
      '        AND a.C_TIPUSASS = 1'
      '        AND f.C_UNITATMEDICA = :CODI'
      '        ORDER BY f.NOMCOMPLET'
      
        '        INTO :C_HISTORIA, :NOMCOMPLET, :C_UNITATA, :C_UNITATM, :' +
        'C_METGE'
      '    DO BEGIN'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2007'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2007;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2008'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2008;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2009'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2009;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2014'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2014;'
      '      '
      '      suspend;'
      '    END;'
      '  END;'
      '  '
      '  ELSE IF (ADMMEDMET = 3) THEN'
      '  BEGIN'
      
        '    FOR SELECT DISTINCT t.C_HISTORIA, f.NOMCOMPLET, f.UNITAT, f.' +
        'C_UNITATMEDICA, t.C_COORDINADOR'
      '        FROM TRACTAMENTS t'
      
        '        JOIN ASSISTENCIAGIMNAS a on (t.C_HISTORIA = a.C_HISTORIA' +
        ')'
      '        JOIN FILIACIO f ON (t.C_HISTORIA = f.NUM_HIST)'
      '        WHERE t.C_PRESTACIO IN ('#39'2007'#39', '#39'2008'#39', '#39'2009'#39', '#39'2014'#39')'
      
        '        AND t.DATA_INGRES <= :FINS and (t.DATA_ALTA >= :DESDE or' +
        ' t.DATA_ALTA is NULL)'
      '        AND a.DATA between :DESDE and :FINS'
      '        AND a.C_TIPUSASS = 1'
      '        AND t.C_COORDINADOR = :CODI'
      '        ORDER BY f.NOMCOMPLET'
      
        '        INTO :C_HISTORIA, :NOMCOMPLET, :C_UNITATA, :C_UNITATM, :' +
        'C_METGE'
      '    DO BEGIN'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2007'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2007;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2008'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2008;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2009'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2009;'
      '      '
      '      SELECT count(*)'
      '      FROM ASSISTENCIAGIMNAS a'
      '      JOIN TRACTAMENTS t on a.C_TRACTAMENT = t.C_TRACTAMENT'
      '      WHERE a.C_HISTORIA = :C_HISTORIA'
      '      AND a.C_TIPUSASS = 1'
      '      AND t.C_PRESTACIO = '#39'2014'#39
      '      AND a.DATA between :DESDE and :FINS'
      '      INTO :N_2014;'
      '      '
      '      suspend;'
      '    END;'
      '  END;'
      '  '
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 96
    Top = 64
  end
  object P_Intervencions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Intervencions'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_METGE CHAR(5),'
      '  DESDE DATE,'
      '  FINS DATE,'
      '  ANY_1 DATE'
      ')'
      'RETURNS'
      '('
      '  INTERV INTEGER,'
      '  INTERV_PCT FLOAT,'
      '  INTERV_ANY INTEGER,'
      '  INTERV_ANY_PCT FLOAT,'
      '  PROGRAMADES INTEGER,'
      '  URGENTS INTEGER,'
      '  DURADA_MITJ FLOAT'
      ')'
      'AS '
      'BEGIN'
      '   '
      '    /* Intervencions              -------------- */'
      ''
      '    SELECT COUNT(*)'
      '      FROM BQUIRURGIC B'
      '     WHERE B.C_CIRURGIA = :C_METGE'
      '       AND B.DATA_ENTRADA BETWEEN :DESDE AND :FINS'
      '       AND B.ESTAT BETWEEN 30 AND 39'
      '      INTO :INTERV;'
      ''
      
        '    IF (INTERV = 0) THEN INTERV_PCT = 0;                      /*' +
        ' percentatge */'
      '    ELSE'
      '    BEGIN'
      '        SELECT COUNT(*)'
      '          FROM BQUIRURGIC B'
      '         WHERE B.DATA_ENTRADA BETWEEN :DESDE AND :FINS'
      '           AND B.ESTAT BETWEEN 30 AND 39'
      '          INTO :INTERV_PCT;'
      ''
      '        INTERV_PCT = (INTERV * 100) / INTERV_PCT;'
      '    END;'
      ''
      ''
      '    /* Intervencions anuals       ------------- */'
      ''
      '    SELECT COUNT(*)'
      '      FROM BQUIRURGIC B'
      '     WHERE B.C_CIRURGIA = :C_METGE'
      '       AND B.DATA_ENTRADA BETWEEN :ANY_1 AND :FINS'
      '       AND B.ESTAT BETWEEN 30 AND 39'
      '      INTO :INTERV_ANY;'
      ''
      
        '    IF (INTERV_ANY = 0) THEN INTERV_ANY_PCT = 0;              /*' +
        ' percentatge */'
      '    ELSE'
      '    BEGIN'
      '        SELECT COUNT(*)'
      '          FROM BQUIRURGIC B'
      '         WHERE B.DATA_ENTRADA BETWEEN :ANY_1 AND :FINS'
      '           AND B.ESTAT BETWEEN 30 AND 39'
      '          INTO :INTERV_ANY_PCT;'
      ''
      '        INTERV_ANY_PCT = (INTERV_ANY * 100) / INTERV_ANY_PCT;'
      '    END;'
      ''
      ''
      '    /* Programades                -------------- */'
      ''
      '    SELECT COUNT(*)'
      '      FROM BQUIRURGIC B'
      '     WHERE B.C_CIRURGIA = :C_METGE'
      '       AND B.DATA_ENTRADA BETWEEN :DESDE AND :FINS'
      '       AND B.C_TIPUSINTERV = 2'
      '       AND B.ESTAT BETWEEN 30 AND 39'
      '      INTO :PROGRAMADES;'
      ''
      '    /* Urgents                    -------------- */'
      ''
      '    SELECT COUNT(*)'
      '      FROM BQUIRURGIC B'
      '     WHERE B.C_CIRURGIA = :C_METGE'
      '       AND B.DATA_ENTRADA BETWEEN :DESDE AND :FINS'
      '       AND B.C_TIPUSINTERV = 1'
      '       AND B.ESTAT BETWEEN 30 AND 39'
      '      INTO :URGENTS;'
      ''
      '    /* Durada mitjana             -------------- */'
      ''
      '    SELECT AVG(B.TEMPSD - B.DATA_ENTRADA)'
      '      FROM BQUIRURGIC B'
      '     WHERE B.C_CIRURGIA = :C_METGE'
      '       AND B.DATA_ENTRADA BETWEEN :DESDE AND :FINS'
      '       AND (B.TEMPSD - B.DATA_ENTRADA) <> 0'
      '       AND B.ESTAT BETWEEN 30 AND 39'
      '      INTO :DURADA_MITJ;'
      ''
      ''
      '    suspend;'
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 32
    Top = 159
  end
  object P_Intervencions_T: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Intervencions_T'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DESDE DATE,'
      '  FINS DATE,'
      '  ANY_1 DATE'
      ')'
      'RETURNS'
      '('
      '  INTERV INTEGER,'
      '  INTERV_ANY INTEGER'
      ')'
      'AS '
      'BEGIN'
      '   '
      '    /* Intervencions              -------------- */'
      ''
      '    SELECT COUNT(*)'
      '      FROM BQUIRURGIC B'
      '     WHERE B.DATA_ENTRADA BETWEEN :DESDE AND :FINS'
      '       AND B.ESTAT BETWEEN 30 AND 39'
      '      INTO :INTERV;'
      ''
      '    /* Intervencions anuals       ------------- */'
      ''
      '    SELECT COUNT(*)'
      '      FROM BQUIRURGIC B'
      '     WHERE B.DATA_ENTRADA BETWEEN :ANY_1 AND :FINS'
      '       AND B.ESTAT BETWEEN 30 AND 39'
      '      INTO :INTERV_ANY;'
      ''
      '    suspend;'
      'END;'
      '')
    Dic1 = wDataBasics.Tractaments
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
    ModiFecha = 36949.7756953704
    Left = 120
    Top = 159
  end
  object Citologies: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Citologia'
        NombreDB = 'C_Citologia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Tractaments'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'filiacio'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
        Consulta = 'metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions'
        NombreDB = 'Observacions'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'cito'
        NombreDB = 'cito'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Citologia')
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
          'C Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tractament'
        NombreDB = 'tractament'
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
      end
      item
        Nombre = 'datahis'
        NombreDB = 'datahis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Hist'#242'ria'
          'Data')
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
      end>
    Consultas = <
      item
        Nombre = 'Tractaments'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'C Tractament')
        CopiarOrigen.Strings = (
          'C Tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end
      item
        Nombre = 'metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'C Metge')
        CopiarOrigen.Strings = (
          'C Metge')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'filiacio'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'C Hist'#242'ria')
        CopiarOrigen.Strings = (
          'C Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
        WhereFiltro = 'sexo = '#39'D'#39
      end>
    Nombre = 'Citologies'
    NombreTabla = 'Citologies'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Citologia'
      'C Tractament'
      'C Hist'#242'ria'
      'Data'
      'C Metge'
      'Observacions')
    IndiceVer = 'cito'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 272
  end
  object ComptaCitolog: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'ComptaCitolog'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '  IF (USER <> "REPLICATOR") THEN'
      '  BEGIN'
      '    IF (NEW.C_CITOLOGIA IS NULL)'
      '    THEN NEW.C_CITOLOGIA = gen_id(G_CITOLOGIES,1);'
      '  END     '
      'END')
    Dic1 = Citologies
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
    ModiFecha = 37509.7805334838
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 96
    Top = 272
  end
  object PROVISIONAL: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Provisional'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '  IF (USER <> "REPLICATOR") THEN'
      '  BEGIN'
      '    IF (NEW.BLOQUEIG = "N") THEN NEW.BLOQUEIG = NULL;'
      '  END     '
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
    Modi = True
    ModiFecha = 37509.7805334838
    Accion1 = taANTES
    Accion2 = taUPDATE
    Left = 112
    Top = 8
  end
  object P_OrdreVisites: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OrdreVisites'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  FEINA VARCHAR(10),'
      '  DATAINI DATE,'
      '  DATAFI DATE'
      ')'
      'RETURNS'
      '('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  C_PRESTACIO VARCHAR(4),'
      '  DATA_ALTA DATE,'
      '  SORTIDA INTEGER'
      ')'
      'AS'
      'DECLARE VARIABLE NORDRE INTEGER;'
      'BEGIN'
      '  NORDRE=f_year(DATAINI)*10000 + 1;'
      ''
      '  IF (FEINA='#39'COMPROVA'#39') THEN'
      '  BEGIN'
      
        '    FOR SELECT t.C_TRACTAMENT,t.C_HISTORIA,t.C_PRESTACIO,t.DATA_' +
        'ALTA,t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      
        '        WHERE  t.C_PRESTACIO IN ('#39'2001'#39','#39'2002'#39','#39'2006'#39', '#39'2011'#39', '#39 +
        '2012'#39', '#39'2013'#39')'
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA'
      
        '        INTO :C_TRACTAMENT,:C_HISTORIA,:C_PRESTACIO,:DATA_ALTA,:' +
        'SORTIDA'
      '      DO BEGIN'
      '        IF (SORTIDA<>NORDRE) THEN '
      '        BEGIN'
      '          suspend;'
      '          exit;'
      '        END'
      '        NORDRE=NORDRE+1;'
      '      END'
      '  END'
      ''
      '  ELSE IF (FEINA='#39'NUMERA'#39') THEN'
      '  BEGIN'
      
        '    FOR SELECT t.C_TRACTAMENT,t.C_HISTORIA,t.C_PRESTACIO,t.DATA_' +
        'ALTA,t.SORTIDA'
      '        FROM   TRACTAMENTS t'
      
        '        WHERE  t.C_PRESTACIO IN ('#39'2001'#39','#39'2002'#39','#39'2006'#39', '#39'2011'#39', '#39 +
        '2012'#39', '#39'2013'#39')'
      '        AND    t.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '        ORDER BY t.DATA_ALTA'
      
        '        INTO :C_TRACTAMENT,:C_HISTORIA,:C_PRESTACIO,:DATA_ALTA,:' +
        'SORTIDA'
      '      DO BEGIN'
      '        UPDATE TRACTAMENTS'
      '        SET SORTIDA=:NORDRE'
      '        WHERE C_TRACTAMENT=:C_TRACTAMENT;'
      '        NORDRE=NORDRE+1;'
      '      END'
      '  END'
      'END')
    Dic1 = wDataBasics.Tractaments
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = True
    Extendido = False
    Organiza = tbBase
    Modi = True
    ModiFecha = 36949.7756858796
    Left = 32
    Top = 212
  end
  object IngresPeriode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'IngresPeriode'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         LMOTIU VARCHAR(40),'
      '         ECB CHAR(1),'
      '         ECB_MOTIU_ASSISTENCIA CHAR(1),'
      '         ECB_MALALTIA_ACTUAL CHAR(1),'
      '         ECB_ASPECTE_GENERAL CHAR(1),'
      '         ECB_INICI_REHAB_FUNCIONAL CHAR(1),'
      '         TIPUSECB SMALLINT,'
      '         TIPUS_ECB VARCHAR(40))'
      'AS'
      '        DECLARE VARIABLE COORD  CHAR(5);'
      '        DECLARE VARIABLE MOT    INTEGER;'
      '        DECLARE VARIABLE ITEM10 INTEGER;'
      '        DECLARE VARIABLE ITEM13 INTEGER;'
      '        DECLARE VARIABLE ITEM67 INTEGER;'
      '        DECLARE VARIABLE ITEM73 INTEGER;'
      '        DECLARE VARIABLE DATA_PROVISIONAL DATE;'
      'BEGIN'
      
        '        FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, ' +
        'T.C_COORDINADOR, T.C_MOTIU, E.DATA_PROVISIONAL, E.TIPUSECB'
      '        FROM TRACTAMENTS T'
      
        '        JOIN ECBCAP E ON T.C_TRACTAMENT = E.C_TRACTAMENT AND E.E' +
        'STAT <> '#39'N'#39
      '        WHERE T.C_PRESTACIO = '#39'1004'#39
      '        AND T.DATA_INGRES >= :DATA1'
      '        AND T.DATA_INGRES <= :DATA2'
      '        ORDER BY T.C_COORDINADOR'
      
        '        INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :COORD, :MOT,' +
        ' :DATA_PROVISIONAL, :TIPUSECB'
      '        DO BEGIN'
      
        '            SELECT METGE FROM METGES WHERE CODI = :COORD INTO :C' +
        'OORDINADOR;'
      
        '            SELECT N_CODI FROM CODICAMPS WHERE TIPUSCODI = '#39'MOTI' +
        'U'#39' AND C_CODI = :MOT INTO :LMOTIU;'
      ''
      
        '            SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE C_' +
        'ITEM = 10 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM10;'
      
        '            SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE C_' +
        'ITEM = 13 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM13;'
      
        '            SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE C_' +
        'ITEM = 67 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM67;'
      ''
      '            /* PARTE 63404 */'
      '            IF ((TIPUSECB=7) OR (TIPUSECB=11)) THEN'
      '            BEGIN'
      
        '                SELECT N_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'TI' +
        'PUSECB'#39' AND C_CODI=:TIPUSECB INTO :TIPUS_ECB;'
      '            END;'
      '            ELSE TIPUS_ECB=NULL;'
      ''
      
        '            /* ITEM 73 POSAT 6.3.2009 => NOM'#201'S MIREM SI ACOMPLEI' +
        'X O NO DES DE LLAVORS */'
      
        '            /* PARTE 63404 - MAIG 2014: PER ECB'#39'S QU'#205'R'#218'RGICS AQU' +
        'EST ITEM NO S'#39'ENTRA PER LO QUE NO S'#39'HA DE MIRAR */'
      
        '            IF ((DATA_PROVISIONAL > '#39'06.03.2009'#39') AND (TIPUSECB<' +
        '>7)) THEN'
      '            BEGIN'
      '              ITEM73=0; /*INICIALITZEM ITEM 73*/'
      
        '              SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE ' +
        'C_ITEM = 73 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM73;'
      
        '              IF (ITEM73 >= 5) THEN ECB_INICI_REHAB_FUNCIONAL = ' +
        #39'S'#39'; ELSE ECB_INICI_REHAB_FUNCIONAL = '#39'N'#39';'
      '            END;'
      '            ELSE BEGIN'
      
        '              ITEM73=5;  /* PER INDICAR QUE S'#205' ACOMPLEIX ECB, CO' +
        'M A M'#205'NIM PER AQUEST ITEM */'
      '              ECB_INICI_REHAB_FUNCIONAL = '#39' '#39';'
      '            END;'
      ''
      
        '            IF (ITEM10 >= 10) THEN ECB_MALALTIA_ACTUAL = '#39'S'#39';   ' +
        '    ELSE ECB_MALALTIA_ACTUAL = '#39'N'#39';'
      
        '            IF (ITEM13 >= 3)  THEN ECB_ASPECTE_GENERAL = '#39'S'#39';   ' +
        '    ELSE ECB_ASPECTE_GENERAL = '#39'N'#39';'
      
        '            IF (ITEM67 >= 10) THEN ECB_MOTIU_ASSISTENCIA = '#39'S'#39'; ' +
        '    ELSE ECB_MOTIU_ASSISTENCIA = '#39'N'#39';'
      ''
      
        '            IF (ITEM10 >= 10 AND ITEM13 >= 3 AND ITEM67 >= 10 AN' +
        'D ITEM73 >= 5) THEN ECB ='#39'S'#39'; ELSE ECB = '#39'N'#39';'
      ''
      '            SUSPEND;'
      '        END;'
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
    Left = 24
    Top = 324
  end
  object IngresMotiu2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'IngresMotiu2'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         HORA_INGRES CHAR(5),'
      '         TREBALL_SOCIAL VARCHAR(20),'
      '         DATA_ECB DATE,'
      '         HORA_ECB CHAR(5),'
      '         ECB CHAR(1),'
      '         MENYS_96H CHAR(1),'
      '         ECB_NIVELL_ESTUDIS CHAR(1),'
      '         ECB_SITUACIO_LABORAL CHAR(1),'
      '         ECB_PROTECCIO_SOCIAL CHAR(1),'
      '         ECB_HABITATGE CHAR(1),'
      '         ECB_DADES_FAMILIARS CHAR(1),'
      '         TIPUSECB SMALLINT,'
      '         TIPUS_ECB VARCHAR(40))'
      'AS'
      '        DECLARE VARIABLE TREB_SOCIAL CHAR(5);'
      '        DECLARE VARIABLE ITEM61 INTEGER;'
      '        DECLARE VARIABLE ITEM62 INTEGER;'
      '        DECLARE VARIABLE ITEM63 INTEGER;'
      '        DECLARE VARIABLE ITEM64 INTEGER;'
      '        DECLARE VARIABLE ITEM65 INTEGER;'
      '        DECLARE VARIABLE CONTA INTEGER;'
      '        DECLARE VARIABLE HORES INTEGER;'
      '        DECLARE VARIABLE DATA_ASSIS DATE;'
      '        DECLARE VARIABLE FESTIUS INTEGER;'
      '        DECLARE VARIABLE DIA     INTEGER;'
      'BEGIN'
      
        '        FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, ' +
        'T.HORA, C.ASSIS, C.DATA_ASSIS, f_solohora(C.DATA_ASSIS),'
      
        '                   F_TRUNCAR(((C.DATA_ASSIS - T.DATA_INGRES||'#39' '#39 +
        '||T.HORA)*24)) AS HORES, C.TIPUSECB'
      '        FROM TRACTAMENTS T'
      
        '        JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET ' +
        '= '#39'X1'#39
      '        JOIN ECBCAP C ON C.C_TRACTAMENT = T.C_TRACTAMENT'
      '        WHERE T.C_PRESTACIO = '#39'1004'#39
      '        AND T.DATA_INGRES >= :DATA1'
      '        AND T.DATA_INGRES <= :DATA2'
      '        AND C.ASSIS <> '#39#39
      '        ORDER BY C.ASSIS'
      
        '        INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :HORA_INGRES,' +
        ' :TREB_SOCIAL, :DATA_ASSIS, :HORA_ECB, :HORES, :TIPUSECB'
      '        DO BEGIN'
      '          /* inicialitzem variables */'
      '          TREBALL_SOCIAL = '#39#39';'
      '          ECB = '#39'N'#39';'
      '          ECB_NIVELL_ESTUDIS = '#39'N'#39';'
      '          ECB_SITUACIO_LABORAL = '#39'N'#39';'
      '          ECB_PROTECCIO_SOCIAL = '#39'N'#39';'
      '          ECB_HABITATGE = '#39'N'#39';'
      '          ECB_DADES_FAMILIARS ='#39'N'#39';'
      '          MENYS_96H = '#39' '#39';'
      '          DIA = NULL;'
      '          '
      
        '          SELECT METGE FROM METGES WHERE CODI = :TREB_SOCIAL INT' +
        'O :TREBALL_SOCIAL;'
      '          '
      '          IF (TREB_SOCIAL <> '#39#39') THEN'
      '          BEGIN'
      '            CONTA = 0;'
      
        '            SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE C_' +
        'ITEM = 61 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM61;'
      
        '            SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE C_' +
        'ITEM = 62 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM62;'
      
        '            SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE C_' +
        'ITEM = 63 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM63;'
      
        '            SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE C_' +
        'ITEM = 64 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM64;'
      
        '            SELECT F_STRINGLENGTH(ANOTACIO) FROM ECBLIN WHERE C_' +
        'ITEM = 65 AND C_TRACTAMENT = :TRACTAMENT INTO :ITEM65;'
      ''
      
        '            /* Per cada dia festiu entre les dues dates restarem' +
        ' 24 hores del total d'#39'hores */'
      
        '            SELECT COUNT(*) FROM FESTIUS WHERE DATA > :DATA_INGR' +
        'ES AND DATA < :DATA_ASSIS INTO :FESTIUS;'
      '            HORES = HORES - 24*FESTIUS;'
      ''
      
        '            /* Cal descompta els dissabtes i diumenges. Si ingre' +
        'ssa en divendres (dia 6), llavors restem 48 hores */'
      '            IF (DIA=6) THEN HORES = HORES - 48;'
      ''
      '            IF (HORES <= 96) THEN MENYS_96H = '#39'S'#39';'
      '            ELSE MENYS_96H = '#39'N'#39';'
      '            '
      
        '            IF ((ITEM61 > 1) OR (TIPUSECB=11)) THEN   /* PARTE 6' +
        '3404: per ECB pedi'#224'tric no s'#39'omple item 61 */'
      '            BEGIN'
      '               CONTA = CONTA + 1;'
      '               ECB_NIVELL_ESTUDIS = '#39'S'#39';'
      '            END;'
      
        '            IF ((ITEM62 > 1) OR (TIPUSECB=11)) THEN   /* PARTE 6' +
        '3404: per ECB pedi'#224'tric no s'#39'omple item 62 */'
      '            BEGIN'
      '                CONTA = CONTA + 1;'
      '                ECB_SITUACIO_LABORAL = '#39'S'#39';'
      '            END;'
      '            IF (ITEM63 > 1) THEN'
      '            BEGIN'
      '                CONTA = CONTA + 1;'
      '                ECB_PROTECCIO_SOCIAL = '#39'S'#39';'
      '            END;'
      '            IF (ITEM64 > 1) THEN'
      '            BEGIN'
      '                CONTA = CONTA + 1;'
      '                ECB_HABITATGE = '#39'S'#39';'
      '            END;'
      '            IF (ITEM65 > 1) THEN'
      '            BEGIN'
      '                CONTA = CONTA + 1;'
      '                ECB_DADES_FAMILIARS ='#39'S'#39';'
      '            END;'
      
        '            IF ((CONTA > 1) AND (MENYS_96H = '#39'S'#39')) THEN ECB ='#39'S'#39 +
        ';'
      '          END;'
      '          '
      '          DATA_ECB = DATA_ASSIS;'
      '          '
      '          /* PARTE 63404 */'
      '          IF ((TIPUSECB=7) OR (TIPUSECB=11)) THEN'
      '          BEGIN'
      
        '              SELECT N_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'TIPU' +
        'SECB'#39' AND C_CODI=:TIPUSECB INTO :TIPUS_ECB;'
      '          END;'
      '          ELSE TIPUS_ECB=NULL;'
      '          '
      '          SUSPEND;'
      '        END;'
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
    Left = 96
    Top = 324
  end
  object SCPeriode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'SCPeriode'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE, AREA CHAR(3))'
      'RETURNS (HISTORIA INTEGER,'
      '         EDAT     INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         PRESTACIO VARCHAR(4),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         MOTIU VARCHAR(40),'
      '         UNITAT_MEDICA VARCHAR(40),'
      '         DATA_1a_SESSIO DATE,'
      '         DATA_1a_VALORACIO DATE,'
      '         METGE VARCHAR(20),'
      '         FETA_1a_V CHAR(1),'
      '         LINIES_1a_V CHAR(1),'
      '         C_ESTAT SMALLINT,'
      '         ESTAT VARCHAR(15)'
      ')'
      'AS'
      '/*      DECLARE VARIABLE ID INTEGER; */'
      '      DECLARE VARIABLE COMPTA INTEGER;'
      '      DECLARE VARIABLE C_OBJECTIU INTEGER;'
      '      DECLARE VARIABLE UM INTEGER;'
      'BEGIN'
      ''
      '      /*'
      
        '      FOR SELECT P.C_HISTORIA, P.C_TRACTAMENT, T.C_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, CC.N_CODI, U.N_UNITATM,'
      
        '                 C.DATA, M.METGE, C.ID, F_STRINGLENGTH(OA.COMENT' +
        'ARI1), F.EDAT'
      '      FROM OBJPRESTA P'
      '      JOIN OBJCAP C ON P.C_OBJECTIU = C.C_OBJECTIU'
      '      JOIN METGES M ON C.C_METGE = M.CODI'
      
        '      LEFT OUTER JOIN OBJAREAS OA ON C.C_OBJECTIU = OA.C_OBJECTI' +
        'U and OA.C_AREA = :AREA'
      '      JOIN TRACTAMENTS T ON P.C_TRACTAMENT = T.C_TRACTAMENT'
      
        '      JOIN CODICAMPS CC ON T.C_MOTIU = CC.C_CODI AND CC.TIPUSCOD' +
        'I = '#39'MOTIU'#39
      '      JOIN FILIACIO F ON P.C_HISTORIA = F.NUM_HIST'
      '      JOIN UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '      WHERE C.TIPUS = '#39'1a V'#39' AND C.C_AREA = :AREA AND P.TIPUS <>' +
        ' 2'
      '      AND C.DATA BETWEEN :DATA1 AND :DATA2'
      '      ORDER BY C.C_METGE'
      
        '      INTO :HISTORIA, :TRACTAMENT, :PRESTACIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :MOTIU, :UNITAT_MEDICA, :DATA_1A_VALORACIO, :METGE, :ID' +
        ', :COMPTA, :EDAT'
      '      DO BEGIN'
      
        '         IF (COMPTA > 0) THEN FETA_1A_V = '#39'S'#39'; ELSE FETA_1A_V = ' +
        #39'N'#39';'
      ''
      '         SELECT COUNT(*) FROM OBJLIN'
      '         WHERE ID = :ID'
      '         INTO :COMPTA;'
      '         '
      
        '         IF (COMPTA > 0) THEN LINIES_1A_V = '#39'S'#39'; ELSE LINIES_1A_' +
        'V = '#39'N'#39';'
      ''
      '         SUSPEND;'
      '      END;'
      '      */'
      '      '
      '      /* NOOOOOOOOOOOOOOOOOOOOOOOOOO!!!!!'
      
        '         No es pot mirar a partir de OBJCAP, perqu'#232' precisament ' +
        'volem saber si hi ha registre a OBJCAP!'
      
        '         A part, OBJCAP.DATA '#233's la data de l'#39'entrada de les dade' +
        's, no pas la data de la sessi'#243'!!!'
      '         '
      '         CONCLUSI'#211':'
      
        '         Partim dels tractaments que tinguin Objectius creats (q' +
        'ue existeixi registre a OBJPRESTA)'
      
        '         i que tinguin la data de la primera sessi'#243' en el per'#237'od' +
        'e sol'#183'licitat.'
      
        '         Llavors mirem si se li ha fet 1a valoraci'#243' (comentari i' +
        '/o l'#237'nies)'
      
        '         Mostrem tamb'#233' les sessions anul'#183'lades, indicant que s'#39'h' +
        'an anul'#183'lat.                              */'
      ''
      
        '      FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, C.N_CODI, F.C_UNITATMEDICA, U.N_UNITAT' +
        'M, F.EDAT,'
      '                 O.C_OBJECTIU, P.DATA_SESSIO, O.TANCAT'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   CODICAMPS   C ON T.C_MOTIU = C.C_CODI AND C.TIP' +
        'USCODI = '#39'MOTIU'#39
      '          JOIN   FILIACIO    F ON T.C_HISTORIA = F.NUM_HIST'
      '          JOIN   UNITATM     U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '          JOIN   OBJPRESTA   O ON T.C_TRACTAMENT = O.C_TRACTAMEN' +
        'T'
      '          JOIN   OBJPROPERES P ON O.C_OBJECTIU = P.C_OBJECTIU'
      
        '          WHERE  P.DATA_SESSIO = (SELECT MIN(DATA_SESSIO) FROM O' +
        'BJPROPERES OO WHERE OO.C_OBJECTIU = P.C_OBJECTIU)'
      '          AND    P.DATA_SESSIO BETWEEN :DATA1 AND :DATA2'
      
        '          INTO  :HISTORIA, :TRACTAMENT, :PRESTACIO, :DATA_INGRES' +
        ', :DATA_ALTA, :MOTIU, :UM, :UNITAT_MEDICA, :EDAT,'
      '                :C_OBJECTIU, :DATA_1a_SESSIO, :C_ESTAT'
      '      DO BEGIN'
      ''
      
        '            /* PARTE 40589: SI '#201'S UM < 10 O 22 O 23, LLAVORS MOS' +
        'TREM PSICO I NO NEURO'
      
        '                            SI '#201'S UM ENTRE 10 I 21, LLAVORS MOST' +
        'REM NEURO I NO PSICO */'
      ''
      
        '            IF (((AREA = '#39'PSI'#39') AND ((UM < 10) OR (UM = 22) OR (' +
        'UM = 23)))  /* 1..9, 22, 23 */'
      
        '            OR  ((AREA = '#39'NEU'#39') AND (UM >= 10) AND (UM <= 21))  ' +
        '            /* 10..21       */'
      '            OR  ((AREA = '#39'INF'#39') AND (PRESTACIO = '#39'1004'#39'))'
      '            OR   (AREA = '#39'MET'#39')'
      '            OR   (AREA = '#39'REH'#39')'
      '            OR   (AREA = '#39'TRS'#39'))'
      '            THEN BEGIN'
      ''
      
        '                  IF      (C_ESTAT = 0) THEN ESTAT = '#39'SC OBERTA'#39 +
        ';'
      
        '                  ELSE IF (C_ESTAT = 1) THEN ESTAT = '#39'SC TANCADA' +
        #39';'
      
        '                  ELSE IF (C_ESTAT = 2) THEN ESTAT = '#39'SC ANUL'#183'LA' +
        'DA'#39';'
      '            '
      '                  COMPTA = 0;'
      '                  DATA_1a_VALORACIO = NULL;'
      '                  METGE = '#39#39';'
      '            '
      '                  SELECT C.DATA, M.METGE'
      '                  FROM   OBJCAP C'
      '                  JOIN   METGES M ON C.C_METGE = M.CODI'
      '                  WHERE  C.C_OBJECTIU = :C_OBJECTIU'
      '                  AND    C.C_AREA = :AREA'
      '                  AND    C.TIPUS = '#39'1a V'#39
      '                  INTO  :DATA_1a_VALORACIO, :METGE;'
      ''
      '                  SELECT COUNT(*)'
      '                  FROM   OBJAREAS'
      '                  WHERE  C_OBJECTIU = :C_OBJECTIU'
      '                  AND    C_AREA = :AREA'
      '                  AND    F_STRINGLENGTH(COMENTARI1) > 0'
      '                  INTO  :COMPTA;'
      ''
      '                  IF (COMPTA > 0) THEN FETA_1a_V = '#39'S'#39';'
      '                                  ELSE FETA_1a_V = '#39'N'#39';'
      ''
      '                  SELECT COUNT(*)'
      '                  FROM   OBJCAP C'
      '                  JOIN   OBJLIN L ON C.ID = L.ID'
      '                  WHERE  C.C_OBJECTIU = :C_OBJECTIU'
      '                  AND    C.C_AREA = :AREA'
      '                  AND    C.TIPUS = '#39'1aV'#39
      '                  INTO  :COMPTA;'
      '            '
      '                  IF (COMPTA > 0) THEN LINIES_1a_V = '#39'S'#39';'
      '                                  ELSE LINIES_1a_V = '#39'N'#39';'
      ''
      '                  SUSPEND;'
      '            END;'
      ''
      '      END;'
      '      '
      'END'
      ''
      '')
    Dic1 = wDataObj.ObjPresta
    Dic1Name = 'objpresta'
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
    Left = 176
    Top = 324
  end
  object Ingres1anotacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Ingres1anotacio'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE, ESPECIALITAT CHAR(2), AVUI DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA   DATE,'
      '         PROFESSIONAL VARCHAR(20),'
      '         ACOMPLEIX CHAR(1))'
      'AS'
      '      DECLARE VARIABLE ANOTA_MES  INTEGER;'
      '      DECLARE VARIABLE ANOTACIONS INTEGER;'
      '      DECLARE VARIABLE EDUCA_MES  INTEGER;'
      '      DECLARE VARIABLE EDUCACIONS INTEGER;'
      '      DECLARE VARIABLE ANOTACIO   INTEGER;'
      '      DECLARE VARIABLE VALIDA_PARCIAL INTEGER;'
      '      DECLARE VARIABLE VALIDA_MES INTEGER;'
      '      DECLARE VARIABLE VALIDACIONS INTEGER;'
      '      DECLARE VARIABLE CONTA      INTEGER;'
      '      DECLARE VARIABLE C_METGE CHAR(5);'
      '      DECLARE VARIABLE INI_MES DATE;'
      '      DECLARE VARIABLE DURADA INTEGER;'
      '      DECLARE VARIABLE DURADA_ALTA INTEGER;'
      '      DECLARE VARIABLE DURADA_AVUI INTEGER;'
      '      DECLARE VARIABLE FI_DURADA DATE;'
      'BEGIN'
      ''
      '  /* PSICOLOGIA */'
      '  IF (ESPECIALITAT = '#39'08'#39') THEN'
      '  BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.' +
        'DATA_ALTA, M.METGE, T.C_PSICOLEG, T.DATA_ALTA - T.DATA_INGRES,'
      '                 "TODAY" - T.DATA_INGRES'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      
        '      JOIN METGES M ON T.C_PSICOLEG = M.CODI AND M.C_ESPECIAL = ' +
        #39'08'#39
      '      WHERE T.C_PRESTACIO = '#39'1004'#39
      '      AND T.DATA_INGRES BETWEEN :DATA1 AND :DATA2'
      '      ORDER BY T.C_PSICOLEG'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :PR' +
        'OFESSIONAL, :C_METGE, :DURADA_ALTA, :DURADA_AVUI'
      '      DO BEGIN'
      '          INI_MES = DATA_INGRES;'
      
        '          ACOMPLEIX = '#39'S'#39'; ANOTACIONS = 0; EDUCACIONS=0; VALIDAC' +
        'IONS = 0; VALIDA_PARCIAL = 0; VALIDA_MES = 0;'
      ''
      '          IF (DATA_ALTA IS NULL) THEN'
      '          BEGIN'
      '              DURADA = DURADA_AVUI;'
      '              FI_DURADA = AVUI;'
      '          END'
      '          ELSE BEGIN'
      '              DURADA = DURADA_ALTA;'
      '              FI_DURADA = DATA_ALTA;'
      '          END;'
      '          '
      '          IF (DURADA <= 30) THEN'
      '          BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'08' +
        #39' AND C_GRUP = '#39'PS'#39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIONS;'
      '              '
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE E.ESTAT >= 0'
      '              AND E.C_TRACTAMENT = :TRACTAMENT'
      '              AND E.C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE */ AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      
        '              AND E.DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '              INTO :EDUCACIONS;'
      '              '
      '              FOR SELECT C_ANOTACIO'
      '              FROM HISTORIA'
      '              WHERE C_TRACTAMENT = :TRACTAMENT AND C_GRUP = '#39'PR'#39
      '              AND C_ESTATVALIDA = 50  /* ANOTACI'#211' VALIDADA */'
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIO'
      '              DO BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM HISTORIAVALIDA'
      
        '                  WHERE C_ANOTACIO = :ANOTACIO /*AND C_METGE_VAL' +
        'IDA = :C_METGE*/'
      
        '                  AND DATA_VALIDA BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '                  INTO :CONTA;'
      '                  VALIDA_PARCIAL=VALIDA_PARCIAL+CONTA;'
      '              END;'
      '              VALIDACIONS=VALIDACIONS+VALIDA_PARCIAL;'
      ''
      
        '              IF (ANOTACIONS+EDUCACIONS+VALIDACIONS < 2) THEN AC' +
        'OMPLEIX = '#39'N'#39';  /* PER PSICOLOGIA M'#205'NIM 2 ANOTACIONS AL MES */'
      '          END;'
      '          '
      '          IF (DURADA > 30) THEN'
      '          BEGIN'
      
        '            WHILE ((INI_MES < AVUI - 30) AND (FI_DURADA >= INI_M' +
        'ES) AND (ACOMPLEIX = '#39'S'#39')) DO'
      '            BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'08' +
        #39' AND C_GRUP = '#39'PS'#39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTA_MES;'
      '              '
      '              ANOTACIONS = ANOTACIONS + ANOTA_MES;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE E.ESTAT >= 0'
      '              AND E.C_TRACTAMENT = :TRACTAMENT'
      '              AND E.C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'08' +
        #39
      
        '              AND E.DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '              INTO :EDUCA_MES;'
      ''
      '              EDUCACIONS = EDUCACIONS + EDUCA_MES;'
      '              '
      
        '              VALIDA_PARCIAL=0;   /* CAL INICIALITZAR-LO A CADA ' +
        'MES */'
      '              FOR SELECT C_ANOTACIO'
      '              FROM HISTORIA'
      '              WHERE C_TRACTAMENT = :TRACTAMENT AND C_GRUP = '#39'PR'#39
      '              AND C_ESTATVALIDA = 50  /* ANOTACI'#211' VALIDADA */'
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIO'
      '              DO BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM HISTORIAVALIDA'
      
        '                  WHERE C_ANOTACIO = :ANOTACIO /*AND C_METGE_VAL' +
        'IDA = :C_METGE*/'
      
        '                  AND DATA_VALIDA BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '                  INTO :CONTA;'
      '                  VALIDA_PARCIAL=VALIDA_PARCIAL+CONTA;'
      '              END;'
      '              VALIDA_MES=/*VALIDA_MES+*/VALIDA_PARCIAL;'
      '              VALIDACIONS = VALIDACIONS + VALIDA_MES;'
      ''
      '              INI_MES = INI_MES + 31;'
      '              '
      
        '              IF (ANOTA_MES+EDUCA_MES+VALIDA_MES < 2) THEN ACOMP' +
        'LEIX = '#39'N'#39';     /* PER PSICOLOGIA M'#205'NIM 2 ANOTACIONS AL MES */'
      '            END;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '  END;'
      '  '
      '  /* NEUROPSICOLOGIA */'
      '  IF (ESPECIALITAT = '#39'15'#39') THEN'
      '  BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.' +
        'DATA_ALTA, M.METGE, T.C_PSICOLEG, T.DATA_ALTA - T.DATA_INGRES,'
      '                 "TODAY" - T.DATA_INGRES'
      '      FROM TRACTAMENTS T'
      
        '      JOIN METGES M ON T.C_PSICOLEG = M.CODI AND M.C_ESPECIAL = ' +
        #39'15'#39
      '      WHERE T.C_PRESTACIO = '#39'1004'#39
      '      AND T.DATA_INGRES >= :DATA1'
      '      AND T.DATA_INGRES <= :DATA2'
      '      ORDER BY T.C_PSICOLEG'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :PR' +
        'OFESSIONAL, :C_METGE, :DURADA_ALTA, :DURADA_AVUI'
      '      DO BEGIN'
      '          INI_MES = DATA_INGRES;'
      
        '          ACOMPLEIX = '#39'S'#39'; ANOTACIONS = 0; EDUCACIONS = 0; VALID' +
        'ACIONS = 0; VALIDA_PARCIAL = 0; VALIDA_MES = 0;'
      ''
      '          IF (DATA_ALTA IS NULL) THEN'
      '          BEGIN'
      '              DURADA = DURADA_AVUI;'
      '              FI_DURADA = AVUI;'
      '          END'
      '          ELSE BEGIN'
      '              DURADA = DURADA_ALTA;'
      '              FI_DURADA = DATA_ALTA;'
      '          END;'
      ''
      '          IF (DURADA <= 30) THEN'
      '          BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE */ AND M.C_ESPECIAL = '#39'1' +
        '5'#39' AND C_GRUP = '#39'PS'#39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIONS;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE E.ESTAT >= 0'
      '              AND E.C_TRACTAMENT = :TRACTAMENT'
      '              AND E.C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL  = '#39'1' +
        '5'#39
      
        '              AND E.DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '              INTO :EDUCACIONS;'
      ''
      '              FOR SELECT C_ANOTACIO'
      '              FROM HISTORIA'
      '              WHERE C_TRACTAMENT = :TRACTAMENT AND C_GRUP = '#39'PR'#39
      '              AND C_ESTATVALIDA = 50  /* ANOTACI'#211' VALIDADA */'
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIO'
      '              DO BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM HISTORIAVALIDA'
      
        '                  WHERE C_ANOTACIO = :ANOTACIO /*AND C_METGE_VAL' +
        'IDA = :C_METGE*/'
      
        '                  AND DATA_VALIDA BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '                  INTO :CONTA;'
      '                  VALIDA_PARCIAL=VALIDA_PARCIAL+CONTA;'
      '              END;'
      '              VALIDACIONS=VALIDACIONS+VALIDA_PARCIAL;'
      ''
      
        '              IF (ANOTACIONS+EDUCACIONS+VALIDACIONS < 2) THEN AC' +
        'OMPLEIX = '#39'N'#39';  /* PER NEUROPSICOLOGIA M'#205'NIM 2 ANOTACIONS AL MES' +
        ' */'
      '          END;'
      ''
      '          IF (DURADA > 30) THEN'
      '          BEGIN'
      
        '            WHILE ((INI_MES < AVUI - 30) AND (FI_DURADA >= INI_M' +
        'ES) AND (ACOMPLEIX = '#39'S'#39')) DO'
      '            BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'15' +
        #39' AND C_GRUP = '#39'PS'#39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTA_MES;'
      ''
      '              ANOTACIONS = ANOTACIONS + ANOTA_MES;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'15' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCA_MES;'
      ''
      '              EDUCACIONS = EDUCACIONS + EDUCA_MES;'
      ''
      
        '              VALIDA_PARCIAL=0;   /* CAL INICIALITZAR-LO A CADA ' +
        'MES */'
      '              FOR SELECT C_ANOTACIO'
      '              FROM HISTORIA'
      '              WHERE C_TRACTAMENT = :TRACTAMENT AND C_GRUP = '#39'PR'#39
      '              AND C_ESTATVALIDA = 50  /* ANOTACI'#211' VALIDADA */'
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIO'
      '              DO BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM HISTORIAVALIDA'
      
        '                  WHERE C_ANOTACIO = :ANOTACIO /*AND C_METGE_VAL' +
        'IDA = :C_METGE*/'
      
        '                  AND DATA_VALIDA BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '                  INTO :CONTA;'
      '                  VALIDA_PARCIAL=VALIDA_PARCIAL+CONTA;'
      '              END;'
      '              VALIDA_MES=/*VALIDA_MES+*/VALIDA_PARCIAL;'
      '              VALIDACIONS = VALIDACIONS + VALIDA_MES;'
      ''
      '              INI_MES = INI_MES + 31;'
      ''
      
        '              IF (ANOTA_MES+EDUCA_MES+VALIDA_MES < 2) THEN ACOMP' +
        'LEIX = '#39'N'#39';    /* PER NEUROPSICOLOGIA M'#205'NIM 2 ANOTACIONS AL MES ' +
        '*/'
      '            END;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '  END;'
      ''
      '  /* TREBALL SOCIAL */'
      '  IF (ESPECIALITAT = '#39'09'#39') THEN'
      '  BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.' +
        'DATA_ALTA, M.METGE, T.C_TREVALLSOCIAL, T.DATA_ALTA - T.DATA_INGR' +
        'ES,'
      '                 "TODAY" - T.DATA_INGRES'
      '      FROM TRACTAMENTS T'
      
        '      JOIN METGES M ON T.C_TREVALLSOCIAL = M.CODI AND M.C_ESPECI' +
        'AL = '#39'09'#39
      '      WHERE T.C_PRESTACIO = '#39'1004'#39
      '      AND T.DATA_INGRES >= :DATA1'
      '      AND T.DATA_INGRES <= :DATA2'
      '      ORDER BY T.C_TREVALLSOCIAL'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :PR' +
        'OFESSIONAL, :C_METGE, :DURADA_ALTA, :DURADA_AVUI'
      '      DO BEGIN'
      '          INI_MES = DATA_INGRES;'
      
        '          ACOMPLEIX = '#39'S'#39'; ANOTACIONS = 0; EDUCACIONS = 0; VALID' +
        'ACIONS = 0; VALIDA_PARCIAL = 0;  VALIDA_MES = 0;'
      ''
      '          IF (DATA_ALTA IS NULL) THEN'
      '          BEGIN'
      '              DURADA = DURADA_AVUI;'
      '              FI_DURADA = AVUI;'
      '          END'
      '          ELSE BEGIN'
      '              DURADA = DURADA_ALTA;'
      '              FI_DURADA = DATA_ALTA;'
      '          END;'
      ''
      '          IF (DURADA <= 30) THEN'
      '          BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'09' +
        #39' AND C_GRUP = '#39'AS'#39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIONS;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'09' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCACIONS;'
      '              '
      '              FOR SELECT C_ANOTACIO'
      '              FROM HISTORIA'
      '              WHERE C_TRACTAMENT = :TRACTAMENT AND C_GRUP = '#39'RS'#39
      '              AND C_ESTATVALIDA = 50  /* ANOTACI'#211' VALIDADA */'
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIO'
      '              DO BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM HISTORIAVALIDA'
      
        '                  WHERE C_ANOTACIO = :ANOTACIO /*AND C_METGE_VAL' +
        'IDA = :C_METGE*/'
      
        '                  AND DATA_VALIDA BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '                  INTO :CONTA;'
      '                  VALIDA_PARCIAL=VALIDA_PARCIAL+CONTA;'
      '              END;'
      '              VALIDACIONS=VALIDACIONS+VALIDA_PARCIAL;'
      ''
      
        '              IF (ANOTACIONS+EDUCACIONS+VALIDACIONS < 1) THEN AC' +
        'OMPLEIX = '#39'N'#39';  /* PER TREBALL SOCIAL M'#205'NIM 1 ANOTACI'#243' AL MES */'
      '          END;'
      ''
      '          IF (DURADA > 30) THEN'
      '          BEGIN'
      
        '            WHILE ((INI_MES < AVUI - 30) AND (FI_DURADA >= INI_M' +
        'ES) AND (ACOMPLEIX = '#39'S'#39')) DO'
      '            BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'09' +
        #39' AND C_GRUP = '#39'AS'#39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTA_MES;'
      ''
      '              ANOTACIONS = ANOTACIONS + ANOTA_MES;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'09' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCA_MES;'
      ''
      '              EDUCACIONS = EDUCACIONS + EDUCA_MES;'
      ''
      
        '              VALIDA_PARCIAL=0;   /* CAL INICIALITZAR-LO A CADA ' +
        'MES */'
      '              FOR SELECT C_ANOTACIO'
      '              FROM HISTORIA'
      '              WHERE C_TRACTAMENT = :TRACTAMENT AND C_GRUP = '#39'RS'#39
      '              AND C_ESTATVALIDA = 50  /* ANOTACI'#211' VALIDADA */'
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIO'
      '              DO BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM HISTORIAVALIDA'
      
        '                  WHERE C_ANOTACIO = :ANOTACIO /*AND C_METGE_VAL' +
        'IDA = :C_METGE*/'
      
        '                  AND DATA_VALIDA BETWEEN :INI_MES AND :INI_MES ' +
        '+ 30'
      '                  INTO :CONTA;'
      '                  VALIDA_PARCIAL=VALIDA_PARCIAL+CONTA;'
      '              END;'
      '              VALIDA_MES=/*VALIDA_MES+*/VALIDA_PARCIAL;'
      '              VALIDACIONS = VALIDACIONS + VALIDA_MES;'
      ''
      '              INI_MES = INI_MES + 31;'
      ''
      
        '              IF (ANOTA_MES+EDUCA_MES+ANOTA_MES < 1) THEN ACOMPL' +
        'EIX = '#39'N'#39';   /* PER TREBALL SOCIAL M'#205'NIM 1 ANOTACI'#243' AL MES */'
      '            END;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '  END;'
      ''
      '  /* LOGOPEDIA */'
      '  IF (ESPECIALITAT = '#39'14'#39') THEN'
      '  BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.' +
        'DATA_ALTA, M.METGE, T.C_LOGOPEDA, T.DATA_ALTA - T.DATA_INGRES,'
      '                 "TODAY" - T.DATA_INGRES'
      '      FROM TRACTAMENTS T'
      
        '      JOIN METGES M ON T.C_LOGOPEDA = M.CODI AND M.C_ESPECIAL = ' +
        #39'14'#39
      '      WHERE T.C_PRESTACIO = '#39'1004'#39
      '      AND T.DATA_INGRES >= :DATA1'
      '      AND T.DATA_INGRES <= :DATA2'
      '      ORDER BY T.C_LOGOPEDA'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :PR' +
        'OFESSIONAL, :C_METGE, :DURADA_ALTA, :DURADA_AVUI'
      '      DO BEGIN'
      '          INI_MES = DATA_INGRES;'
      '          ACOMPLEIX = '#39'S'#39'; ANOTACIONS = 0; EDUCACIONS = 0;'
      ''
      '          IF (DATA_ALTA IS NULL) THEN'
      '          BEGIN'
      '              DURADA = DURADA_AVUI;'
      '              FI_DURADA = AVUI;'
      '          END'
      '          ELSE BEGIN'
      '              DURADA = DURADA_ALTA;'
      '              FI_DURADA = DATA_ALTA;'
      '          END;'
      ''
      '          IF (DURADA <= 30) THEN'
      '          BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'14' +
        #39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIONS;'
      '              '
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'14' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCACIONS;'
      ''
      
        '              IF (ANOTACIONS+EDUCACIONS < 2) THEN ACOMPLEIX = '#39'N' +
        #39';  /* PER LOGOP'#200'DIA M'#205'NIM 2 ANOTACIONS AL MES */'
      '          END;'
      ''
      '          IF (DURADA > 30) THEN'
      '          BEGIN'
      
        '            WHILE ((INI_MES < AVUI - 30) AND (FI_DURADA >= INI_M' +
        'ES) AND (ACOMPLEIX = '#39'S'#39')) DO'
      '            BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'14' +
        #39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTA_MES;'
      ''
      '              ANOTACIONS = ANOTACIONS + ANOTA_MES;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'14' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCA_MES;'
      ''
      '              EDUCACIONS = EDUCACIONS + EDUCA_MES;'
      ''
      '              INI_MES = INI_MES + 31;'
      ''
      
        '              IF (ANOTA_MES+EDUCA_MES < 2) THEN ACOMPLEIX = '#39'N'#39';' +
        '     /* PER LOGOP'#200'DIA M'#205'NIM 2 ANOTACIONS AL MES */'
      '            END;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '  END;'
      ''
      '  /* FISIOTERAPEUTA */'
      '  IF (ESPECIALITAT = '#39'30'#39') THEN'
      '  BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.' +
        'DATA_ALTA, M.METGE, T.C_FISIOTERAPEUTA, T.DATA_ALTA - T.DATA_ING' +
        'RES,'
      '                 "TODAY" - T.DATA_INGRES'
      '      FROM TRACTAMENTS T'
      
        '      JOIN METGES M ON T.C_FISIOTERAPEUTA = M.CODI AND M.C_ESPEC' +
        'IAL = '#39'30'#39
      '      WHERE T.C_PRESTACIO = '#39'1004'#39
      '      AND T.DATA_INGRES >= :DATA1'
      '      AND T.DATA_INGRES <= :DATA2'
      '      ORDER BY T.C_FISIOTERAPEUTA'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :PR' +
        'OFESSIONAL, :C_METGE, :DURADA_ALTA, :DURADA_AVUI'
      '      DO BEGIN'
      '          INI_MES = DATA_INGRES;'
      '          ACOMPLEIX = '#39'S'#39'; ANOTACIONS = 0; EDUCACIONS = 0;'
      ''
      '          IF (DATA_ALTA IS NULL) THEN'
      '          BEGIN'
      '              DURADA = DURADA_AVUI;'
      '              FI_DURADA = AVUI;'
      '          END'
      '          ELSE BEGIN'
      '              DURADA = DURADA_ALTA;'
      '              FI_DURADA = DATA_ALTA;'
      '          END;'
      ''
      '          IF (DURADA <= 30) THEN'
      '          BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'30' +
        #39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIONS;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'30' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCACIONS;'
      ''
      
        '              IF (ANOTACIONS+EDUCACIONS < 1) THEN ACOMPLEIX = '#39'N' +
        #39';  /* PER FISIOTERAPIA 1 ANOTACI'#211' AL MES */'
      '          END;'
      ''
      '          IF (DURADA > 30) THEN'
      '          BEGIN'
      
        '            WHILE ((INI_MES < AVUI - 30) AND (FI_DURADA >= INI_M' +
        'ES) AND (ACOMPLEIX = '#39'S'#39')) DO'
      '            BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'30' +
        #39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTA_MES;'
      ''
      '              ANOTACIONS = ANOTACIONS + ANOTA_MES;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'30' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCA_MES;'
      ''
      '              EDUCACIONS = EDUCACIONS + EDUCA_MES;'
      ''
      '              INI_MES = INI_MES + 31;'
      ''
      
        '              IF (ANOTA_MES+EDUCA_MES < 1) THEN ACOMPLEIX = '#39'N'#39';' +
        '   /* PER FISIOTERAPIA 1 ANOTACI'#211' AL MES */'
      '            END;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '  END;'
      ''
      '  /* TERAPEUTA */'
      '  IF (ESPECIALITAT = '#39'31'#39') THEN'
      '  BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.' +
        'DATA_ALTA, M.METGE, T.C_TERAPEUTA, T.DATA_ALTA - T.DATA_INGRES,'
      '                 "TODAY" - T.DATA_INGRES'
      '      FROM TRACTAMENTS T'
      
        '      JOIN METGES M ON T.C_TERAPEUTA = M.CODI AND M.C_ESPECIAL =' +
        ' '#39'31'#39
      '      WHERE T.C_PRESTACIO = '#39'1004'#39
      '      AND T.DATA_INGRES >= :DATA1'
      '      AND T.DATA_INGRES <= :DATA2'
      '      ORDER BY T.C_TERAPEUTA'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :PR' +
        'OFESSIONAL, :C_METGE, :DURADA_ALTA, :DURADA_AVUI'
      '      DO BEGIN'
      '          INI_MES = DATA_INGRES;'
      '          ACOMPLEIX = '#39'S'#39'; ANOTACIONS = 0; EDUCACIONS = 0;'
      '          '
      '          IF (DATA_ALTA IS NULL) THEN'
      '          BEGIN'
      '              DURADA = DURADA_AVUI;'
      '              FI_DURADA = AVUI;'
      '          END'
      '          ELSE BEGIN'
      '              DURADA = DURADA_ALTA;'
      '              FI_DURADA = DATA_ALTA;'
      '          END;'
      ''
      '          IF (DURADA <= 30) THEN'
      '          BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'31' +
        #39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIONS;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'31' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCACIONS;'
      ''
      
        '              IF (ANOTACIONS+EDUCACIONS < 1) THEN ACOMPLEIX = '#39'N' +
        #39';  /* PER TERAPIA 1 ANOTACI'#211' AL MES */'
      '          END;'
      ''
      '          IF (DURADA > 30) THEN'
      '          BEGIN'
      
        '            WHILE ((INI_MES < AVUI - 30) AND (FI_DURADA >= INI_M' +
        'ES) AND (ACOMPLEIX = '#39'S'#39')) DO'
      '            BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'31' +
        #39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTA_MES;'
      ''
      '              ANOTACIONS = ANOTACIONS + ANOTA_MES;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'31' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCA_MES;'
      ''
      '              EDUCACIONS = EDUCACIONS + EDUCA_MES;'
      ''
      '              INI_MES = INI_MES + 31;'
      ''
      
        '              IF (ANOTA_MES+EDUCA_MES < 1) THEN ACOMPLEIX = '#39'N'#39';' +
        '  /* PER TERAPIA 1 ANOTACI'#211' AL MES */'
      '            END;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '  END;'
      ''
      '  /* INFERMERIA */'
      '  IF (ESPECIALITAT = '#39'32'#39') THEN'
      '  BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.' +
        'DATA_ALTA, M.METGE, T.C_INFERMERIA, T.DATA_ALTA - T.DATA_INGRES,'
      '                 "TODAY" - T.DATA_INGRES'
      '      FROM TRACTAMENTS T'
      
        '      JOIN METGES M ON T.C_INFERMERIA = M.CODI AND M.C_ESPECIAL ' +
        '= '#39'32'#39
      '      WHERE T.C_PRESTACIO = '#39'1004'#39
      '      AND T.DATA_INGRES >= :DATA1'
      '      AND T.DATA_INGRES <= :DATA2'
      '      ORDER BY T.C_INFERMERIA'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :PR' +
        'OFESSIONAL, :C_METGE, :DURADA_ALTA, :DURADA_AVUI'
      '      DO BEGIN'
      '          INI_MES = DATA_INGRES;'
      '          ACOMPLEIX = '#39'S'#39'; ANOTACIONS = 0; EDUCACIONS = 0;'
      ''
      '          IF (DATA_ALTA IS NULL) THEN'
      '          BEGIN'
      '              DURADA = DURADA_AVUI;'
      '              FI_DURADA = AVUI;'
      '          END'
      '          ELSE BEGIN'
      '              DURADA = DURADA_ALTA;'
      '              FI_DURADA = DATA_ALTA;'
      '          END;'
      ''
      '          IF (DURADA <= 30) THEN'
      '          BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'32' +
        #39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTACIONS;'
      '              '
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'32' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCACIONS;'
      ''
      
        '              IF (ANOTACIONS+EDUCACIONS < 1) THEN ACOMPLEIX = '#39'N' +
        #39';  /* PER INFERMERIA 1 ANOTACI'#211' AL MES */'
      '          END;'
      ''
      '          IF (DURADA > 30) THEN'
      '          BEGIN'
      
        '            WHILE ((INI_MES < AVUI - 30) AND (FI_DURADA >= INI_M' +
        'ES) AND (ACOMPLEIX = '#39'S'#39')) DO'
      '            BEGIN'
      '              SELECT COUNT(*) FROM HISTORIA H'
      '              JOIN METGES M ON H.C_USUARI = M.CODI'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'32' +
        #39
      '              AND DATA BETWEEN :INI_MES AND :INI_MES + 30'
      '              INTO :ANOTA_MES;'
      ''
      '              ANOTACIONS = ANOTACIONS + ANOTA_MES;'
      ''
      '              SELECT COUNT(*) FROM EDUCAP E'
      '              JOIN METGES M ON E.C_USUARI = M.CODI'
      '              WHERE ESTAT >= 0'
      '              AND C_TRACTAMENT = :TRACTAMENT'
      '              AND C_HISTORIA = :HISTORIA'
      
        '              /*AND C_USUARI = :C_METGE*/ AND M.C_ESPECIAL = '#39'32' +
        #39
      
        '              AND DATA_DETECCIO BETWEEN :INI_MES AND :INI_MES + ' +
        '30'
      '              INTO :EDUCA_MES;'
      ''
      '              EDUCACIONS = EDUCACIONS + EDUCA_MES;'
      ''
      '              INI_MES = INI_MES + 31;'
      ''
      
        '              IF (ANOTA_MES+EDUCA_MES < 1) THEN ACOMPLEIX = '#39'N'#39';' +
        '  /* PER INFERMERIA 1 ANOTACI'#211' AL MES */'
      '            END;'
      '          END;'
      '          SUSPEND;'
      '      END;'
      '  END;'
      ''
      ''
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
    Left = 344
    Top = 324
  end
  object AltesMotiu2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AltesMotiu2'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         EDAT     INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         PRESTACIO VARCHAR(4),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         FISIOTERAPEUTA VARCHAR(20),'
      '         TERAPEUTA VARCHAR(20),'
      '         INFERMERIA VARCHAR(20),'
      '         PSICOLOGIA VARCHAR(20),'
      '         TREBALL_SOCIAL VARCHAR(20),'
      '         LOGOPEDA VARCHAR(20),'
      '         MOTIU_INGRES VARCHAR(40),'
      '         UNITAT_MEDICA VARCHAR(40),'
      '         AREA VARCHAR(3),'
      '         FETA_1AV CHAR(1),'
      '         LINIES_1AV CHAR(1),'
      '         MOTIU VARCHAR(40),'
      '         DIFERENCIA_DIES INTEGER,'
      '         SESSIONS_CADA_3MESOS CHAR(1),'
      '         CONCLUSIONS_ALTA CHAR(1))'
      'AS'
      '        DECLARE VARIABLE TRACTAMENT_SC INTEGER;'
      '        DECLARE VARIABLE OBJECTIU INTEGER;'
      '        DECLARE VARIABLE DATA_ALTA_ANT DATE;'
      '        DECLARE VARIABLE DATA_INGRES_ANT DATE;'
      '        DECLARE VARIABLE TRACTAMENT_PR INTEGER;'
      '        DECLARE VARIABLE CONTA INTEGER;'
      '        DECLARE VARIABLE DATA_INI DATE;'
      '        DECLARE VARIABLE CONTA_3MESOS INTEGER;'
      '        DECLARE VARIABLE CONTA_CONCLUSIO INTEGER;'
      '        DECLARE VARIABLE UM INTEGER;'
      'BEGIN'
      
        '        FOR SELECT T.C_TRACTAMENT, T.C_PRESTACIO, T.C_HISTORIA, ' +
        'T.DATA_INGRES, T.DATA_ALTA, M.METGE,'
      
        '               M1.METGE, M2.METGE, M3.METGE, M4.METGE, M5.METGE,' +
        ' M6.METGE, CC.N_CODI, U.N_UNITATM, F.C_UNITATMEDICA, F.EDAT'
      '        FROM TRACTAMENTS T'
      
        '        JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET ' +
        '= '#39'X1'#39
      '        LEFT JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '        LEFT JOIN METGES M1 ON T.C_FISIOTERAPEUTA = M1.CODI'
      '        LEFT JOIN METGES M2 ON T.C_TERAPEUTA = M2.CODI'
      '        LEFT JOIN METGES M3 ON T.C_INFERMERIA = M3.CODI'
      '        LEFT JOIN METGES M4 ON T.C_PSICOLEG = M4.CODI'
      '        LEFT JOIN METGES M5 ON T.C_TREVALLSOCIAL = M5.CODI'
      '        LEFT JOIN METGES M6 ON T.C_LOGOPEDA = M6.CODI'
      '        LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '        LEFT JOIN UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '        LEFT JOIN CODICAMPS CC ON T.C_MOTIU = CC.C_CODI AND CC.T' +
        'IPUSCODI = '#39'MOTIU'#39
      '        WHERE /*T.C_PRESTACIO = '#39'1004'#39
      
        '        AND */ T.DATA_ALTA BETWEEN :DATA1 AND :DATA2 AND T.FI_PR' +
        'OCES = '#39'S'#39
      '        ORDER BY /*T.C_COORDINADOR,*/ T.C_HISTORIA'
      
        '        INTO :TRACTAMENT, :PRESTACIO, :HISTORIA, :DATA_INGRES, :' +
        'DATA_ALTA, :COORDINADOR, :FISIOTERAPEUTA, :TERAPEUTA, :INFERMERI' +
        'A,'
      
        '             :PSICOLOGIA, :TREBALL_SOCIAL, :LOGOPEDA, :MOTIU_ING' +
        'RES, :UNITAT_MEDICA, :UM , :EDAT'
      '        DO BEGIN'
      '            /* inicialitzem variables */'
      '            MOTIU = '#39#39';'
      '            DIFERENCIA_DIES = NULL;'
      '            SESSIONS_CADA_3MESOS = '#39'S'#39';'
      '            CONCLUSIONS_ALTA = '#39'S'#39';'
      ''
      '            /* recuperem la '#250'ltima SC del pacient */'
      '            SELECT C_OBJECTIU, C_TRACTAMENT'
      '            FROM OBJPRESTA'
      '            WHERE C_HISTORIA = :HISTORIA'
      '            ORDER BY C_OBJECTIU DESC'
      '            ROWS 1'
      '            INTO :OBJECTIU, :TRACTAMENT_SC;'
      '        '
      '            IF (TRACTAMENT_SC <> TRACTAMENT) THEN'
      '            BEGIN'
      
        '                /* recuperem la data_alta de la prestaci'#243' (amb d' +
        'ret X1) anterior */'
      '                SELECT DATA_ALTA, DATA_INGRES'
      '                FROM TRACTAMENTS T'
      
        '                JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D' +
        '.C_DRET = '#39'X1'#39
      '                WHERE C_HISTORIA = :HISTORIA'
      '                AND  C_TRACTAMENT < :TRACTAMENT'
      '                ORDER BY C_TRACTAMENT DESC'
      '                ROWS 1'
      '                INTO :DATA_ALTA_ANT, :DATA_INGRES_ANT;'
      ''
      '                DATA_INI = DATA_INGRES_ANT;'
      
        '                /* si entre la data d'#39'ingr'#233's de l'#39'actual prestac' +
        'i'#243' i la data d'#39'alta de la prestaci'#243' anterior hi ha m'#233's de 10 die' +
        's'
      '                llavors no serveix la mateixa SC */'
      '                IF (DATA_INGRES - DATA_ALTA_ANT > 10) THEN'
      '                BEGIN'
      '                    FETA_1AV = '#39'N'#39';'
      '                    LINIES_1AV = '#39'N'#39';'
      '                    MOTIU = '#39'NO T'#201' SC PROPERA.'#39';'
      
        '                    DIFERENCIA_DIES = (DATA_INGRES - DATA_ALTA_A' +
        'NT);'
      '                    SESSIONS_CADA_3MESOS = '#39'N'#39';'
      '                    CONCLUSIONS_ALTA = '#39'N'#39';'
      '                    OBJECTIU = NULL;'
      '                END'
      '                ELSE BEGIN'
      '                    TRACTAMENT_PR = TRACTAMENT_SC;'
      '                END;'
      '            END'
      '            ELSE BEGIN'
      '                TRACTAMENT_PR = TRACTAMENT;'
      '                DATA_INI = DATA_INGRES;'
      '            END;'
      ''
      '            IF (OBJECTIU IS NOT NULL) THEN'
      '            BEGIN'
      
        '              /* mirem si t'#233' comentari de 1aV i si t'#233' l'#237'nies de ' +
        '1aV */'
      
        '              FOR SELECT C_AREA,F_STRINGLENGTH(COMENTARI1) FROM ' +
        'OBJAREAS'
      '              WHERE C_OBJECTIU = :OBJECTIU'
      '              ORDER BY C_AREA'
      '              INTO :AREA,:CONTA'
      '              DO BEGIN'
      
        '                IF (CONTA > 0) THEN FETA_1AV = '#39'S'#39'; ELSE FETA_1A' +
        'V = '#39'N'#39';'
      ''
      '                /* MIREM LES L'#205'NIES */'
      '                SELECT COUNT(*) FROM OBJCAP C'
      '                JOIN OBJLIN L ON C.ID = L.ID'
      '                WHERE C.C_OBJECTIU = :OBJECTIU'
      '                AND C.C_AREA = :AREA'
      '                AND C.TIPUS= '#39'1a V'#39
      '                INTO :CONTA;'
      ''
      
        '                IF (CONTA > 0) THEN LINIES_1AV = '#39'S'#39'; ELSE LINIE' +
        'S_1AV = '#39'N'#39';'
      ''
      
        '                /* mirem si hi ha sessions de reevaluaci'#243' cada 3' +
        ' mesos a partir de la data d'#39'ingr'#233's de la prestaci'#243' de la primer' +
        'a sessi'#243
      
        '                i fins a DATA_ALTA del tractament del que s'#39'ha f' +
        'et l'#39'alta */'
      '                IF (SESSIONS_CADA_3MESOS = '#39'S'#39') THEN'
      '                BEGIN'
      
        '                    WHILE ((DATA_INI < DATA_ALTA - 90) AND (SESS' +
        'IONS_CADA_3MESOS = '#39'S'#39')) DO'
      '                    BEGIN'
      '                        SELECT COUNT(*) FROM OBJPROPERES'
      '                        WHERE C_TRACTAMENT = :TRACTAMENT_PR'
      '                        AND DATA_SESSIO >= :DATA_INI'
      '                        AND DATA_SESSIO <= (:DATA_INI + 90)'
      '                        INTO :CONTA_3MESOS;'
      '                    '
      
        '                        IF (CONTA_3MESOS=0) THEN SESSIONS_CADA_3' +
        'MESOS = '#39'N'#39';'
      
        '                        DATA_INI = DATA_INI + 90; /* 90 dies = 3' +
        ' mesos */'
      '                    END;'
      '                END;'
      ''
      '                /* mirem si s'#39'ha fet comentari a l'#39'alta */'
      '                IF (CONCLUSIONS_ALTA = '#39'S'#39') THEN'
      '                BEGIN'
      
        '                    SELECT F_STRINGLENGTH(COMENTARI2) FROM OBJPR' +
        'ESTA'
      '                    WHERE C_HISTORIA = :HISTORIA'
      '                    AND C_TRACTAMENT = :TRACTAMENT_PR'
      '                    INTO :CONTA_CONCLUSIO;'
      '                '
      
        '                    IF (CONTA_CONCLUSIO = 0) THEN CONCLUSIONS_AL' +
        'TA = '#39'N'#39';'
      '                END;'
      
        '                /* PARTE 40589: SI '#201'S UM < 10 O 22 O 23, LLAVORS' +
        ' MOSTREM PSICO I NO NEURO'
      
        '                                SI '#201'S UM ENTRE 10 I 21, LLAVORS ' +
        'MOSTREM NEURO I NO PSICO */'
      
        '                IF (((AREA='#39'PSI'#39') AND ((UM<10) OR (UM=22) OR (UM' +
        '=23)))'
      '                OR ((AREA='#39'NEU'#39') AND (UM>=10) AND (UM<=21))'
      
        '                OR (AREA='#39'INF'#39') OR (AREA='#39'MET'#39') OR (AREA='#39'REH'#39') ' +
        'OR (AREA='#39'TRS'#39'))'
      '                THEN SUSPEND;'
      '            END;'
      '          END;'
      '          ELSE BEGIN'
      '              AREA = NULL;'
      '              SUSPEND;'
      '          END;'
      '        END;  /* END FOR */'
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
    Left = 248
    Top = 324
  end
  object EscCoord: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscalesCoordinador'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         PRESTACIO VARCHAR(35),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         ASIA CHAR(2),'
      '         GOS CHAR(2),'
      '         LCFS CHAR(2),'
      '         DRS CHAR(2),'
      '         KURTZKE CHAR(2),'
      '         EDSS CHAR(2))'
      'AS'
      '      DECLARE VARIABLE UNITATMEDICA INTEGER;'
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      'BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, P.N_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, M.METGE, F.C_UNITATMEDICA'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      '      JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '      WHERE T.DATA_ALTA >= :DATA1'
      '      AND   T.DATA_ALTA <= :DATA2'
      '      AND  (t.c_prestacio = '#39'1004'#39' or t.c_prestacio = '#39'2014'#39')'
      '      AND   T.C_DESTINACIO IN (1,3,4)'
      
        '      AND  (F.C_UNITATMEDICA > 0 AND F.C_UNITATMEDICA <= 4 OR F.' +
        'C_UNITATMEDICA = 10 OR F.C_UNITATMEDICA = 11)'
      '      ORDER BY T.C_COORDINADOR'
      
        '      INTO :TRACTAMENT, :HISTORIA, :PRESTACIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :COORDINADOR, :UNITATMEDICA'
      '      DO BEGIN'
      '          /* inicialitzem variables */'
      '          ASIA    = '#39'NP'#39';'
      '          GOS     = '#39'NP'#39';'
      '          LCFS    = '#39'NP'#39';'
      '          DRS     = '#39'NP'#39';'
      '          KURTZKE = '#39'NP'#39';'
      '          EDSS    = '#39'NP'#39';'
      '      '
      '          /* per unitatmedica < 4 ==> escala ASIA(8) */'
      '          IF (UNITATMEDICA < 4) THEN'
      '          BEGIN'
      '              ASIA = '#39'N'#39';'
      '              FOR SELECT C.C_ENTRADA, C.DATA'
      '              FROM ESCALESCAP C'
      '              JOIN ESCASIA A ON C.CLAU = A.ID'
      '              WHERE C.C_TRACTAMENT >= :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      
        '              AND   (C.DATA >= :DATA_ALTA - 10) AND (C.DATA <= :' +
        'DATA_ALTA + 180)'
      '              AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND   (C.C_ENTRADA > 0) AND (C.C_ESCALA = 8)'
      '              ORDER BY C.C_ENTRADA DESC'
      '              INTO :C_ENTRADA, :DATA'
      '              DO BEGIN'
      
        '                  IF (C_ENTRADA > 0) THEN ASIA = '#39'S'#39'; ELSE ASIA ' +
        '= '#39'N'#39';'
      '              END;'
      '          END;'
      ''
      
        '          /* per unitatm'#232'dica = 10 ==> escales GOS(5), LCFS(6) i' +
        ' DRS(7)*/'
      '          IF (UNITATMEDICA = 10) THEN'
      '          BEGIN'
      '              GOS = '#39'N'#39';'
      '              LCFS = '#39'N'#39';'
      '              DRS = '#39'N'#39';'
      '              FOR SELECT C_ESCALA, C_ENTRADA, DATA'
      '              FROM ESCALESCAP'
      '              WHERE C_TRACTAMENT >= :TRACTAMENT'
      '              AND   C_HISTORIA = :HISTORIA'
      '              AND   C_ESCALA IN(5,6,7,51)'
      '              AND   DATA >= :DATA_ALTA - 10'
      '              AND   DATA <= :DATA_ALTA + 180'
      '              AND   (ANULAT = '#39'N'#39' OR ANULAT = '#39'V'#39')'
      
        '              AND   C_ENTRADA > 0  /* l'#39'entrada 0 ja no la recup' +
        'ero pq ha de tenir m'#237'nim 2 entrades (la 0 a l'#39'ing'#233's i la 1 a l'#39'a' +
        'lta)*/'
      '              ORDER BY C_ESCALA, C_ENTRADA'
      '              INTO :C_ESCALA, :C_ENTRADA, :DATA'
      '              DO BEGIN'
      '                  IF (C_ENTRADA > 0) THEN'
      '                  BEGIN'
      
        '                     IF ((C_ESCALA=5) OR (C_ESCALA=51)) THEN GOS' +
        ' = '#39'S'#39';'
      '                     IF (C_ESCALA=6) THEN LCFS = '#39'S'#39';'
      '                     IF (C_ESCALA=7) THEN DRS = '#39'S'#39';'
      '                  END;'
      '              END;'
      '          END;'
      '          '
      
        '           /* per unitatmedica = 11 ==> escales KURTZKE(9) i EDS' +
        'S(10)*/'
      '          IF (UNITATMEDICA = 11) THEN'
      '          BEGIN'
      '              KURTZKE = '#39'N'#39';'
      '              EDSS = '#39'N'#39';'
      '              FOR SELECT C_ESCALA, C_ENTRADA, DATA'
      '              FROM ESCALESCAP'
      '              WHERE C_TRACTAMENT >= :TRACTAMENT'
      '              AND   C_HISTORIA = :HISTORIA'
      '              AND   DATA >= :DATA_ALTA - 10'
      '              AND   DATA <= :DATA_ALTA + 180'
      '              AND   C_ESCALA IN(9,10)'
      '              AND   (ANULAT = '#39'N'#39' OR ANULAT = '#39'V'#39')'
      
        '              AND   C_ENTRADA > 0   /* l'#39'entrada 0 ja no la recu' +
        'pero pq ha de tenir m'#237'nim 2 entrades (la 0 a l'#39'ing'#233's i la 1 a l'#39 +
        'alta)*/'
      '              ORDER BY C_ESCALA, C_ENTRADA'
      '              INTO :C_ESCALA, :C_ENTRADA, :DATA'
      '              DO BEGIN'
      '                  IF (C_ESCALA > 0) THEN'
      '                  BEGIN'
      '                      IF (C_ESCALA=9) THEN KURTZKE = '#39'S'#39';'
      '                      IF (C_ESCALA=10) THEN EDSS = '#39'S'#39';'
      '                  END;'
      '              END;'
      '          END;'
      '          '
      '          SUSPEND;'
      '      END;'
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
    Left = 421
    Top = 324
  end
  object EscRevi: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscalesRevisions'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         ASIA CHAR(2),'
      '         DRS CHAR(2),'
      '         KURTZKE CHAR(2),'
      '         EDSS CHAR(2))'
      'AS'
      '      DECLARE VARIABLE UNITATMEDICA INTEGER;'
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      'BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, M.' +
        'METGE, F.C_UNITATMEDICA'
      '      FROM TRACTAMENTS T'
      '      JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE T.DATA_INGRES >= :DATA1'
      '      AND   T.DATA_INGRES <= :DATA2'
      
        '      AND   (F.C_UNITATMEDICA > 0 AND F.C_UNITATMEDICA <= 4 OR F' +
        '.C_UNITATMEDICA = 10 OR F.C_UNITATMEDICA = 11)'
      '      AND   T.C_PRESTACIO = '#39'2004'#39
      '      ORDER BY T.C_COORDINADOR'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :COORDINADOR, :' +
        'UNITATMEDICA'
      '      DO BEGIN'
      '          /* inicialitzem variables */'
      '          ASIA    = '#39'NP'#39';'
      '          DRS     = '#39'NP'#39';'
      '          KURTZKE = '#39'NP'#39';'
      '          EDSS    = '#39'NP'#39';'
      ''
      '          /* per unitatmedica < 4 ==> escala ASIA(8) */'
      '          IF (UNITATMEDICA < 4) THEN'
      '          BEGIN'
      '              ASIA = '#39'N'#39';'
      '              FOR SELECT c.C_ENTRADA, c.DATA'
      '              FROM ESCALESCAP C'
      '              JOIN ESCASIA A ON C.CLAU = A.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      
        '              AND   C.C_ENTRADA >= 0    /* m'#237'nim ha de tenir 1 e' +
        'ntrada */'
      '              ORDER BY C.C_ENTRADA DESC'
      '              INTO :C_ENTRADA, :DATA'
      '              DO BEGIN'
      '                  IF (C_ENTRADA >= 0) THEN'
      '                  BEGIN'
      
        '                     IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= ' +
        'DATA_INGRES + 180)) THEN ASIA = '#39'S'#39';'
      '                  END;'
      '              END;'
      '          END;'
      '          '
      
        '          /* per unitatm'#232'dica = 10 ==> escales GOS(5), LCFS(6) i' +
        ' DRS(7)*/'
      '          IF (UNITATMEDICA = 10) THEN'
      '          BEGIN'
      '              DRS = '#39'N'#39';'
      '              FOR SELECT C_ESCALA, C_ENTRADA, DATA'
      '              FROM ESCALESCAP'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND   C_HISTORIA = :HISTORIA'
      '              AND   C_ESCALA = 7'
      '              AND   (ANULAT = '#39'N'#39' OR ANULAT = '#39'V'#39')'
      '              AND   C_ENTRADA >= 0'
      '              ORDER BY C_ESCALA, C_ENTRADA'
      '              INTO :C_ESCALA, :C_ENTRADA, :DATA'
      '              DO BEGIN'
      '                  IF (C_ENTRADA >= 0) THEN'
      '                  BEGIN'
      
        '                      IF ((DATA_INGRES - 10 <= DATA) OR (DATA <=' +
        ' DATA_INGRES + 180)) THEN DRS = '#39'S'#39';'
      '                  END;'
      '              END;'
      '          END;'
      ''
      
        '           /* per unitatmedica = 11 ==> escales KURTZKE(9) i EDS' +
        'S(10)*/'
      '          IF (UNITATMEDICA = 11) THEN'
      '          BEGIN'
      '              KURTZKE = '#39'N'#39';'
      '              EDSS = '#39'N'#39';'
      '              FOR SELECT C_ESCALA, C_ENTRADA, DATA'
      '              FROM ESCALESCAP'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND   C_HISTORIA = :HISTORIA'
      '              AND   C_ESCALA IN(9,10)'
      '              AND   (ANULAT = '#39'N'#39' OR ANULAT = '#39'V'#39')'
      '              AND   C_ENTRADA >= 0'
      '              ORDER BY C_ESCALA, C_ENTRADA'
      '              INTO :C_ESCALA, :C_ENTRADA, :DATA'
      '              DO BEGIN'
      '                  IF (C_ESCALA >= 0) THEN'
      '                  BEGIN'
      '                      IF (C_ESCALA=9) THEN'
      '                      BEGIN'
      
        '                         IF ((DATA_INGRES - 10 <= DATA) OR (DATA' +
        ' <= DATA_INGRES + 180)) THEN KURTZKE = '#39'S'#39';'
      '                      END;'
      '                      IF (C_ESCALA=10) THEN'
      '                      BEGIN'
      
        '                         IF ((DATA_INGRES - 10 <= DATA) OR (DATA' +
        ' <= DATA_INGRES + 180)) THEN EDSS = '#39'S'#39';'
      '                      END;'
      '                  END;'
      '              END;'
      '          END;'
      ''
      '          SUSPEND;'
      '      END;'
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
    Left = 480
    Top = 324
  end
  object PsicoIbpHad: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PSICOIBPHAD'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         PRESTACIO VARCHAR(4),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         IBP CHAR(2),'
      '         USUARI_IBP VARCHAR(5),'
      '         HAD CHAR(2),'
      '         USUARI_HAD VARCHAR(5))'
      'AS'
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      'BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, M.METGE'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      '      JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST  AND (F.C_UNI' +
        'TATMEDICA < 10 OR F.C_UNITATMEDICA IN(22,23)) AND F.EDAT > 16'
      '      JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '      WHERE T.DATA_ALTA >= :DATA1'
      '      AND   T.DATA_ALTA <= :DATA2'
      '      AND   T.C_PRESTACIO = '#39'1004'#39
      '      AND   T.C_DESTINACIO IN(1,3,4)'
      '      ORDER BY T.C_COORDINADOR'
      
        '      INTO :TRACTAMENT, :HISTORIA, :PRESTACIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :COORDINADOR'
      '      DO BEGIN'
      '          /* inicialitzem variables */'
      '          IBP     = '#39'N'#39';'
      '          HAD     = '#39'N'#39';'
      '          USUARI_IBP = '#39#39';'
      '          USUARI_HAD = '#39#39';'
      ''
      '          /* IBP - escala 12 a l'#39'alta */'
      '          FOR SELECT C_ENTRADA, DATA, C_USUARI'
      '          FROM ESCALESCAP'
      '          WHERE C_TRACTAMENT = :TRACTAMENT'
      '          AND   C_HISTORIA = :HISTORIA'
      '          AND   C_ESCALA = 12'
      '          AND   (ANULAT = '#39'N'#39' OR ANULAT = '#39'V'#39')'
      
        '          AND   C_ENTRADA >= 0 /* cal q tingui m'#237'nim 1 entrada *' +
        '/'
      '          ORDER BY C_ENTRADA DESC'
      '          INTO :C_ENTRADA, :DATA, :USUARI_IBP'
      '          DO BEGIN'
      '              IF (C_ENTRADA >= 0) THEN'
      '              BEGIN'
      
        '                 IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA_A' +
        'LTA + 180)) THEN IBP = '#39'S'#39';'
      '              END;'
      '          END;'
      '          '
      '          IF (IBP='#39'N'#39') THEN USUARI_IBP='#39#39';'
      ''
      '          /* HAD - escala 13 a l'#39'ingr'#233's i a l'#39'alta */'
      '          FOR SELECT C_ENTRADA, DATA, C_USUARI'
      '          FROM ESCALESCAP'
      '          WHERE C_TRACTAMENT = :TRACTAMENT'
      '          AND   C_HISTORIA = :HISTORIA'
      '          AND   C_ESCALA = 13'
      '          AND   (ANULAT = '#39'N'#39' OR ANULAT = '#39'V'#39')'
      
        '          AND   C_ENTRADA > 0 /* cal q tingui m'#237'nim 2 entrades *' +
        '/'
      '          ORDER BY C_ENTRADA DESC'
      '          INTO :C_ENTRADA, :DATA, :USUARI_HAD'
      '          DO BEGIN'
      '              IF (C_ENTRADA > 0) THEN'
      '              BEGIN'
      
        '                 IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA_A' +
        'LTA + 180)) THEN HAD = '#39'S'#39';'
      '              END;'
      '          END;'
      ''
      
        '          IF (HAD='#39'N'#39') THEN USUARI_HAD='#39#39';  /* si no verifiquen ' +
        'data podria quedar l'#39'usuari informat incorrectament */'
      ''
      '          SUSPEND;'
      '      END;'
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
    Left = 24
    Top = 380
  end
  object EscLogopeda: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscLogopeda'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         PRESTACIO VARCHAR(4),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         ENTRADA INTEGER,'
      '         ESCALA VARCHAR(10),'
      '         USUARI VARCHAR(5),'
      '         DATA DATE)'
      'AS'
      '  DECLARE VARIABLE C_ESCALA INTEGER;'
      'BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, M.METGE'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      '      JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST  AND (F.C_UNI' +
        'TATMEDICA BETWEEN 10 AND 21)'
      '      JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '      WHERE T.DATA_ALTA >= :DATA1'
      '      AND   T.DATA_ALTA <= :DATA2'
      '      AND   T.C_PRESTACIO = '#39'1004'#39
      '      AND   T.C_DESTINACIO IN(1,3,4)'
      '      ORDER BY T.C_COORDINADOR'
      
        '      INTO :TRACTAMENT, :HISTORIA, :PRESTACIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :COORDINADOR'
      '      DO BEGIN'
      '          /* inicialitzem variables */'
      '          ENTRADA = 0; ESCALA = '#39#39'; USUARI = '#39#39'; DATA = NULL;'
      ''
      '          /* DISARTRIA - escala 28 || LLENGUATGE - escala 36 */'
      '          FOR SELECT C_USUARI, C_ENTRADA, C_ESCALA, DATA'
      '          FROM ESCALESCAP'
      '          WHERE C_TRACTAMENT = :TRACTAMENT'
      '          AND   C_HISTORIA = :HISTORIA'
      '          AND   C_ESCALA IN(28,36)'
      '          AND   (ANULAT <> '#39'S'#39')'
      '          ORDER BY C_ESCALA, C_ENTRADA'
      '          INTO :USUARI, :ENTRADA, :C_ESCALA, :DATA'
      '          DO BEGIN'
      '              IF (C_ESCALA = 28) THEN'
      '              BEGIN'
      '                ESCALA = '#39'DISARTRIA'#39';'
      '                SUSPEND;'
      '              END;'
      '              IF (C_ESCALA = 36) THEN'
      '              BEGIN'
      '                ESCALA = '#39'LLENGUATGE'#39';'
      '                SUSPEND;'
      '              END;'
      '          END;'
      ''
      
        '          IF (ESCALA = '#39#39') THEN SUSPEND; /* SI NO HI HA CAP ENTR' +
        'ADA A CAP ESCALA TAMB'#201' S'#39'HA D'#39'IMPRIMIR */'
      '      END;'
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
    Left = 96
    Top = 380
  end
  object EscTreballS: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'esctreballsocial'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         PRESTACIO VARCHAR(4),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         ESIG_1AV CHAR(2),'
      '         USUARI VARCHAR(5))'
      'AS'
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      'BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, M.METGE'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      '      JOIN METGES M ON T.c_coordinador = M.CODI'
      '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '      WHERE T.DATA_ALTA >= :DATA1'
      '      AND   T.DATA_ALTA <= :DATA2'
      '      AND   T.C_PRESTACIO = '#39'1004'#39
      '      AND   T.C_DESTINACIO IN(1,3,4)'
      '      ORDER BY T.c_coordinador'
      
        '      INTO :TRACTAMENT, :HISTORIA, :PRESTACIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :COORDINADOR'
      '      DO BEGIN'
      '          /* inicialitzem variables */'
      '          ESIG_1AV  = '#39'N'#39';'
      '          USUARI ='#39#39';'
      ''
      '          FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      '          FROM ESCALESCAP C'
      '          JOIN ESCESIG_1AV E ON C.CLAU = E.ID'
      '          WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '          AND   C.C_HISTORIA = :HISTORIA'
      '          AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      
        '          AND   C.C_ENTRADA >= 0 /* cal q tingui m'#237'nim 1 entrada' +
        ' */'
      '          ORDER BY C.C_ENTRADA DESC'
      '          INTO :C_ENTRADA, :DATA, :USUARI'
      '          DO BEGIN'
      '              IF (C_ENTRADA >= 0) THEN'
      '              BEGIN'
      
        '                 IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA_A' +
        'LTA + 180)) THEN ESIG_1AV = '#39'S'#39';'
      '              END;'
      '          END;'
      ''
      
        '          IF (ESIG_1AV='#39'N'#39') THEN USUARI='#39#39'; /* si algun no verif' +
        'ica les dates quedaria l'#39'usuari informat */'
      ''
      '          SUSPEND;'
      '      END;'
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
    Left = 168
    Top = 380
  end
  object ReviTreballS: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ReviTreballSocial'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         ESIG_1AV CHAR(2),'
      '         USUARI_ESIG1AV VARCHAR(5),'
      '         ESIG_1AV_V2 CHAR(2),'
      '         USUARI_ESIG1AV_V2 VARCHAR(5),'
      '         ESIG_SEG CHAR(2),'
      '         USUARI_ESIGSEG VARCHAR(5),'
      '         ESIG_SEG_V2 CHAR(2),'
      '         USUARI_ESIGSEG_V2 VARCHAR(5),'
      '         EFA      CHAR(2),'
      '         USUARI_EFA VARCHAR(5),'
      '         CHART    CHAR(2),'
      '         USUARI_CHART VARCHAR(5),'
      '         ESS      CHAR(2),'
      '         USUARI_ESS VARCHAR(5),'
      '         CIQ      CHAR(2),'
      '         USUARI_CIQ VARCHAR(5))'
      'AS'
      '      DECLARE VARIABLE UNITATMEDICA INTEGER;'
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      'BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, M.' +
        'METGE, F.C_UNITATMEDICA'
      '      FROM TRACTAMENTS T'
      '      JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND F.EDAT > ' +
        '16'
      '      WHERE T.DATA_ALTA >= :DATA1'
      '      AND   T.DATA_ALTA <= :DATA2'
      '      AND   T.C_PRESTACIO = '#39'2004'#39
      
        '      AND ((F.C_UNITATMEDICA <= 4) OR (F.C_UNITATMEDICA IN(10,11' +
        ',13,14,15,16,17,18,19)))'
      '      ORDER BY M.METGE'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :COORDINADOR, :' +
        'UNITATMEDICA'
      '      DO BEGIN'
      '          /* inicialitzem variables */'
      '          ESIG_1AV    = '#39'NP'#39';'
      '          ESIG_1AV_V2 = '#39'NP'#39';'
      '          ESIG_SEG    = '#39'NP'#39';'
      '          ESIG_SEG_V2 = '#39'NP'#39';'
      '          EFA         = '#39'NP'#39';'
      '          CHART       = '#39'NP'#39';'
      '          ESS         = '#39'NP'#39';'
      '          CIQ         = '#39'NP'#39';'
      '          USUARI_ESIG1AV    = '#39#39';'
      '          USUARI_ESIG1AV_V2 = '#39#39';'
      '          USUARI_ESIGSEG    = '#39#39';'
      '          USUARI_ESIGSEG_V2 = '#39#39';'
      '          USUARI_EFA   = '#39#39';'
      '          USUARI_CHART = '#39#39';'
      '          USUARI_ESS   = '#39#39';'
      '          USUARI_CIQ   = '#39#39';'
      ''
      
        '          /* per unitatmedica <= 4 ==> escales ESIG_1AV, ESIG_SE' +
        'G, EFA i CHART */'
      '          IF (UNITATMEDICA <= 4) THEN'
      '          BEGIN'
      '              ESIG_1AV    = '#39'N'#39';'
      '              ESIG_1AV_V2 = '#39'NP'#39';'
      '              ESIG_SEG    = '#39'N'#39';'
      '              ESIG_SEG_V2 = '#39'NP'#39';'
      '              EFA         = '#39'N'#39';'
      '              CHART       = '#39'N'#39';'
      '              '
      '              /* ESCESIG_1AV */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_1AV B ON C.CLAU = B' +
        '.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND   C.C_ENTRADA >= 0'
      '              ORDER BY C_ENTRADA DESC'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIG1AV'
      '              DO BEGIN'
      '                  IF (C_ENTRADA >= 0) THEN'
      '                  BEGIN'
      
        '                     IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= ' +
        'DATA_INGRES + 180)) THEN ESIG_1AV = '#39'S'#39';'
      '                  END;'
      '              END;'
      ''
      
        '              IF (ESIG_1AV='#39'N'#39') THEN USUARI_ESIG1AV='#39#39';  /* si n' +
        'o verifiquen data podria quedar l'#39'usuari informat incorrectament' +
        ' */'
      ''
      '              /* ESCESIG_1AV_V2 */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_1AV_V2 B ON C.CLAU ' +
        '= B.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND   C.C_ENTRADA >= 0'
      '              ORDER BY C_ENTRADA DESC'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIG1AV_V2'
      '              DO BEGIN'
      '                  IF (C_ENTRADA >= 0) THEN'
      '                  BEGIN'
      
        '                     IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= ' +
        'DATA_INGRES + 180)) THEN ESIG_1AV_V2 = '#39'S'#39';'
      '                  END;'
      '              END;'
      ''
      
        '              IF (ESIG_1AV_V2='#39'N'#39') THEN USUARI_ESIG1AV_V2='#39#39';  /' +
        '* si no verifiquen data podria quedar l'#39'usuari informat incorrec' +
        'tament */'
      ''
      '              /* ESCESIG_SEG */'
      '              FOR SELECT c.C_ENTRADA, C.DATA , C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_SEG B ON C.CLAU = B' +
        '.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIGSEG'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN ESIG_SEG = '#39'S'#39';'
      '                 END;'
      '              END;'
      ''
      
        '              IF (ESIG_SEG='#39'N'#39') THEN USUARI_ESIGSEG='#39#39';  /* si n' +
        'o verifiquen data podria quedar l'#39'usuari informat incorrectament' +
        ' */'
      ''
      '              /* ESCESIG_SEG_V2 */'
      '              FOR SELECT c.C_ENTRADA, C.DATA , C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_SEG_V2 B ON C.CLAU ' +
        '= B.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA   = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIGSEG_V2'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN ESIG_SEG_V2 = '#39'S'#39';'
      '                 END;'
      '              END;'
      ''
      
        '              IF (ESIG_SEG_V2='#39'N'#39') THEN USUARI_ESIGSEG_V2='#39#39';  /' +
        '* si no verifiquen data podria quedar l'#39'usuari informat incorrec' +
        'tament */'
      '              '
      '              /* ESCEFA */'
      '              FOR SELECT c.C_ENTRADA, C.DATA, C.C_USUARI'
      '              FROM ESCALESCAP C JOIN ESCEFA B ON C.CLAU = B.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA   = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA , :USUARI_EFA'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN EFA = '#39'S'#39';'
      '                 END;'
      '              END;'
      ''
      
        '              IF (EFA='#39'N'#39') THEN USUARI_EFA='#39#39';  /* si no verifiq' +
        'uen data podria quedar l'#39'usuari informat incorrectament */'
      ''
      '              /* ESCCHART     JULIOL 2014: ja no s'#39'entra'
      '              FOR SELECT C.C_ENTRADA, C.DATA , C.C_USUARI'
      '              FROM ESCALESCAP C JOIN ESCCHART B ON C.CLAU = B.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_CHART'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN CHART = '#39'S'#39';'
      '                 END;'
      '              END;'
      '              */'
      '          END;'
      '          '
      
        '          /* per unitatmedica = 10 o 13 a 19==> escales ESIG_1AV' +
        ', ESIG_1AV_V2, ESIG_SEG, ESIG_SEG_V2 i CIQ */'
      
        '          IF ((UNITATMEDICA = 10) OR ((UNITATMEDICA >= 13) AND (' +
        'UNITATMEDICA <= 19)))'
      '          THEN BEGIN'
      '              ESIG_1AV    = '#39'N'#39';'
      '              ESIG_1AV_V2 = '#39'N'#39';'
      '              ESIG_SEG    = '#39'N'#39';'
      '              ESIG_SEG_V2 = '#39'N'#39';'
      '              CIQ         = '#39'N'#39';'
      '              '
      '              /* ESCESIG_1AV */'
      '              FOR SELECT c.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_1AV B ON C.CLAU = B' +
        '.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND   C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA DESC'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIG1AV'
      '              DO BEGIN'
      '                  IF (C_ENTRADA >= 0) THEN'
      '                  BEGIN'
      
        '                     IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= ' +
        'DATA_INGRES + 180)) THEN ESIG_1AV = '#39'S'#39';'
      '                  END;'
      '              END;'
      '              '
      
        '              IF (ESIG_1AV='#39'N'#39') THEN USUARI_ESIG1AV='#39#39';  /* si n' +
        'o verifiquen data podria quedar l'#39'usuari informat incorrectament' +
        ' */'
      ''
      '              /* ESCESIG_1AV_V2 */'
      '              FOR SELECT c.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_1AV_V2 B ON C.CLAU ' +
        '= B.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND   C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA DESC'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIG1AV_V2'
      '              DO BEGIN'
      '                  IF (C_ENTRADA >= 0) THEN'
      '                  BEGIN'
      
        '                     IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= ' +
        'DATA_INGRES + 180)) THEN ESIG_1AV_V2 = '#39'S'#39';'
      '                  END;'
      '              END;'
      ''
      
        '              IF (ESIG_1AV_V2='#39'N'#39') THEN USUARI_ESIG1AV_V2='#39#39';  /' +
        '* si no verifiquen data podria quedar l'#39'usuari informat incorrec' +
        'tament */'
      ''
      '              /* ESCESIG_SEG */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_SEG B ON C.CLAU = B' +
        '.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIGSEG'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN ESIG_SEG = '#39'S'#39';'
      '                 END;'
      '              END;'
      ''
      
        '              IF (ESIG_SEG='#39'N'#39') THEN USUARI_ESIGSEG='#39#39';  /* si n' +
        'o verifiquen data podria quedar l'#39'usuari informat incorrectament' +
        ' */'
      ''
      '              /* ESCESIG_SEG_V2 */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_SEG_V2 B ON C.CLAU ' +
        '= B.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA   = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIGSEG_V2'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN ESIG_SEG_V2 = '#39'S'#39';'
      '                 END;'
      '              END;'
      ''
      
        '              IF (ESIG_SEG_V2='#39'N'#39') THEN USUARI_ESIGSEG_V2='#39#39';  /' +
        '* si no verifiquen data podria quedar l'#39'usuari informat incorrec' +
        'tament */'
      ''
      '              /* CIQ - escala 34 */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      '              FROM ESCALESCAP C JOIN ESCCIQ B ON C.CLAU = B.CLAU'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA , :USUARI_CIQ'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN CIQ = '#39'S'#39';'
      '                 END;'
      '              END;'
      '              '
      
        '              IF (CIQ='#39'N'#39') THEN USUARI_CIQ='#39#39';  /* si no verifiq' +
        'uen data podria quedar l'#39'usuari informat incorrectament */'
      '          END;'
      ''
      
        '          /* per unitatmedica = 11 ==> escales ESIG_1AV, ESIG_1A' +
        'V_V2, ESIG_SEG, ESIG_SEG_V2, ESS i CIQ */'
      '          IF (UNITATMEDICA = 11)'
      '          THEN BEGIN'
      '              ESIG_1AV    = '#39'N'#39';'
      '              ESIG_1AV_V2 = '#39'N'#39';'
      '              ESIG_SEG    = '#39'N'#39';'
      '              ESIG_SEG_V2 = '#39'N'#39';'
      '              ESS         = '#39'N'#39';'
      '              CIQ         = '#39'N'#39';'
      '              '
      '              /* ESCESIG_1AV */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_1AV B ON C.CLAU = B' +
        '.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND   C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA DESC'
      '              INTO :C_ENTRADA, :DATA , :USUARI_ESIG1AV'
      '              DO BEGIN'
      '                  IF (C_ENTRADA >= 0) THEN'
      '                  BEGIN'
      
        '                     IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= ' +
        'DATA_INGRES + 180)) THEN ESIG_1AV = '#39'S'#39';'
      '                  END;'
      '              END;'
      '              '
      
        '              IF (ESIG_1AV='#39'N'#39') THEN USUARI_ESIG1AV='#39#39';  /* si n' +
        'o verifiquen data podria quedar l'#39'usuari informat incorrectament' +
        ' */'
      ''
      '              /* ESCESIG_1AV_V2 */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_1AV_V2 B ON C.CLAU ' +
        '= B.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND   (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND   C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA DESC'
      '              INTO :C_ENTRADA, :DATA , :USUARI_ESIG1AV_V2'
      '              DO BEGIN'
      '                  IF (C_ENTRADA >= 0) THEN'
      '                  BEGIN'
      
        '                     IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= ' +
        'DATA_INGRES + 180)) THEN ESIG_1AV_V2 = '#39'S'#39';'
      '                  END;'
      '              END;'
      ''
      
        '              IF (ESIG_1AV_V2='#39'N'#39') THEN USUARI_ESIG1AV_V2='#39#39';  /' +
        '* si no verifiquen data podria quedar l'#39'usuari informat incorrec' +
        'tament */'
      ''
      '              /* ESCESIG_SEG */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_SEG B ON C.CLAU = B' +
        '.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIGSEG'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN ESIG_SEG = '#39'S'#39';'
      '                 END;'
      '              END;'
      '              '
      
        '              IF (ESIG_SEG='#39'N'#39') THEN USUARI_ESIGSEG='#39#39';  /* si n' +
        'o verifiquen data podria quedar l'#39'usuari informat incorrectament' +
        ' */'
      ''
      '              /* ESCESIG_SEG_V2 */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      
        '              FROM ESCALESCAP C JOIN ESCESIG_SEG_V2 B ON C.CLAU ' +
        '= B.ID'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESIGSEG_V2'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN ESIG_SEG_V2 = '#39'S'#39';'
      '                 END;'
      '              END;'
      ''
      
        '              IF (ESIG_SEG_V2='#39'N'#39') THEN USUARI_ESIGSEG_V2='#39#39';  /' +
        '* si no verifiquen data podria quedar l'#39'usuari informat incorrec' +
        'tament */'
      ''
      '              /* ESS - escala 31 */'
      '              FOR SELECT C_ENTRADA, DATA, C_USUARI'
      '              FROM ESCALESCAP'
      '              WHERE C_TRACTAMENT = :TRACTAMENT'
      '              AND   C_HISTORIA = :HISTORIA'
      '              AND (ANULAT = '#39'N'#39' OR ANULAT = '#39'V'#39')'
      '              AND C_ESCALA = 31'
      '              AND C_ENTRADA >= 0'
      '              ORDER BY C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_ESS'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN ESS = '#39'S'#39';'
      '                 END;'
      '              END;'
      ''
      
        '              IF (ESS='#39'N'#39') THEN USUARI_ESS='#39#39';  /* si no verifiq' +
        'uen data podria quedar l'#39'usuari informat incorrectament */'
      '              '
      '              /* CIQ - escala 34 */'
      '              FOR SELECT C.C_ENTRADA, C.DATA, C.C_USUARI'
      '              FROM ESCALESCAP C JOIN ESCCIQ B ON C.CLAU = B.CLAU'
      '              WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '              AND   C.C_HISTORIA = :HISTORIA'
      '              AND (C.ANULAT = '#39'N'#39' OR C.ANULAT = '#39'V'#39')'
      '              AND C.C_ENTRADA >= 0'
      '              ORDER BY C.C_ENTRADA'
      '              INTO :C_ENTRADA, :DATA, :USUARI_CIQ'
      '              DO BEGIN'
      '                 IF (C_ENTRADA >= 0) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_INGRES - 10 <= DATA) OR (DATA <= DA' +
        'TA_INGRES + 180)) THEN CIQ = '#39'S'#39';'
      '                 END;'
      '              END;'
      '              '
      
        '              IF (CIQ='#39'N'#39') THEN USUARI_CIQ='#39#39';  /* si no verifiq' +
        'uen data podria quedar l'#39'usuari informat incorrectament */'
      '          END;'
      '          '
      '          SUSPEND;'
      '      END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 240
    Top = 380
  end
  object EscNeuropico2008: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscNeuropsico2008'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         PRESTACIO VARCHAR(4),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         BATERIA CHAR(2),'
      '         USUARI_BATERIA VARCHAR(5)/*,'
      '         BATERIA_INFANTIL CHAR(2),'
      '         USUARI_BATERIA_INF VARCHAR(5),'
      '         DISARTRIA CHAR(2),'
      '         USUARI_DISARTRIA VARCHAR(5),'
      '         DISARTRIA_INFANTIL CHAR(2),'
      '         USUARI_DISARTRIA_INF VARCHAR(5),'
      '         LLENGUATGE CHAR(2),'
      '         USUARI_LLENGUATGE VARCHAR(5)*/)'
      'AS'
      '      DECLARE VARIABLE ANULAT CHAR(1);'
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      '      DECLARE VARIABLE USUARI VARCHAR(5);'
      'BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, M.METGE'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      '      JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND (F.C_UNIT' +
        'ATMEDICA BETWEEN 10 AND 21)'
      '      WHERE T.DATA_ALTA >= :DATA1'
      '      AND   T.DATA_ALTA <= :DATA2'
      '      AND   T.C_PRESTACIO = '#39'1004'#39
      '      AND   T.C_DESTINACIO IN(1,3,4)'
      '      ORDER BY T.C_COORDINADOR'
      
        '      INTO :TRACTAMENT, :HISTORIA, :PRESTACIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :COORDINADOR'
      '      DO BEGIN'
      '          /* inicialitzem variables */'
      '          BATERIA = '#39'N'#39'; USUARI_BATERIA='#39#39';'
      '          /*BATERIA_INFANTIL = '#39'N'#39'; USUARI_BATERIA_INF='#39#39';'
      '          DISARTRIA  = '#39'N'#39'; USUARI_DISARTRIA='#39#39';'
      '          DISARTRIA_INFANTIL  = '#39'N'#39'; USUARI_DISARTRIA_INF='#39#39';'
      '          LLENGUATGE = '#39'N'#39'; USUARI_LLENGUATGE='#39#39';*/'
      ''
      '          /* Escales 28, 36 i 61 a l'#39'alta */'
      
        '/*          FOR SELECT C_ENTRADA, DATA, C_ESCALA, ANULAT, C_USUA' +
        'RI'
      '          FROM ESCALESCAP'
      '          WHERE C_TRACTAMENT = :TRACTAMENT'
      '          AND   C_HISTORIA = :HISTORIA'
      '          AND   C_ESCALA in (28,36,61)'
      '          AND   (ANULAT <> '#39'S'#39')'
      '          ORDER BY C_ENTRADA, C_ESCALA'
      '          INTO :C_ENTRADA, :DATA, :C_ESCALA, :ANULAT, :USUARI'
      '          DO BEGIN'
      '              IF (C_ENTRADA < 0) THEN'
      '              BEGIN'
      
        '                 IF ((C_ESCALA = 28) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN DISARTRIA = '#39'NP'#39';'
      
        '                 IF ((C_ESCALA = 61) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN DISARTRIA_INFANTIL = '#39'NP'#39 +
        ';'
      
        '                 IF ((C_ESCALA = 36) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN LLENGUATGE = '#39'NP'#39';'
      '              END;'
      '              IF (C_ENTRADA >= 0) THEN'
      '              BEGIN'
      '                 IF (C_ESCALA = 28) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      '                     IF (ANULAT = '#39'N'#39') THEN LLENGUATGE = '#39'S'#39';'
      '                     IF (ANULAT = '#39'V'#39') THEN LLENGUATGE = '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN L' +
        'LENGUATGE = '#39'NP'#39';'
      '                   END;'
      '                   USUARI_LLENGUATGE=USUARI;'
      '                 END;'
      '                 IF (C_ESCALA = 28) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      '                     IF (ANULAT = '#39'N'#39') THEN DISARTRIA = '#39'S'#39';'
      '                     IF (ANULAT = '#39'V'#39') THEN DISARTRIA = '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN D' +
        'ISARTRIA = '#39'NP'#39';'
      '                   END;'
      '                   USUARI_DISARTRIA=USUARI;'
      '                 END;'
      '                 IF (C_ESCALA = 61) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      
        '                     IF (ANULAT = '#39'N'#39') THEN DISARTRIA_INFANTIL =' +
        ' '#39'S'#39';'
      
        '                     IF (ANULAT = '#39'V'#39') THEN DISARTRIA_INFANTIL =' +
        ' '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN D' +
        'ISARTRIA_INFANTIL = '#39'NP'#39';'
      '                   END;'
      '                   USUARI_DISARTRIA_INF=USUARI;'
      '                 END;'
      '              END;'
      '          END;   */'
      ''
      '          /*  Escala BATERIA (52) a l'#39'alta */'
      '          C_ESCALA = 52;'
      '          FOR SELECT C.C_ENTRADA, C.DATA, C.ANULAT, C.C_USUARI'
      '          FROM ESCALESCAP C JOIN ESCBATERIA B ON C.CLAU = B.ID'
      '          WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '          AND   C.C_HISTORIA = :HISTORIA'
      '          AND   (C.ANULAT <> '#39'S'#39')'
      '          ORDER BY C.C_ENTRADA'
      '          INTO :C_ENTRADA, :DATA, :ANULAT, :USUARI'
      '          DO BEGIN'
      
        '              IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA_ALTA' +
        ' + 180)) THEN'
      '              BEGIN'
      '                  IF (ANULAT = '#39'N'#39') THEN BATERIA = '#39'S'#39';'
      '                  IF (ANULAT = '#39'V'#39') THEN BATERIA = '#39'NV'#39';'
      
        '                  IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (ANULA' +
        'T = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                  OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN BATE' +
        'RIA = '#39'NP'#39';'
      '              END;'
      '              USUARI_BATERIA=USUARI;'
      '          END;'
      ''
      '          /*  Escala BATERIA_INFANTIL (58) a l'#39'alta */'
      '/*          C_ESCALA = 58;'
      '          FOR SELECT C.C_ENTRADA, C.DATA, C.ANULAT, C.C_USUARI'
      
        '          FROM ESCALESCAP C JOIN ESCBATERIAINF B ON C.CLAU = B.I' +
        'D'
      '          WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '          AND   C.C_HISTORIA = :HISTORIA'
      '          AND   (C.ANULAT <> '#39'S'#39')'
      '          ORDER BY C.C_ENTRADA'
      '          INTO :C_ENTRADA, :DATA, :ANULAT, :USUARI'
      '          DO BEGIN'
      
        '              IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA_ALTA' +
        ' + 180)) THEN'
      '              BEGIN'
      '                  IF (ANULAT = '#39'N'#39') THEN BATERIA_INFANTIL = '#39'S'#39';'
      
        '                  IF (ANULAT = '#39'V'#39') THEN BATERIA_INFANTIL = '#39'NV'#39 +
        ';'
      
        '                  IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (ANULA' +
        'T = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                  OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN BATE' +
        'RIA_INFANTIL = '#39'NP'#39';'
      '              END;'
      '              USUARI_BATERIA_INF=USUARI;'
      '          END;    */'
      ''
      '          SUSPEND;'
      '      END;'
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
    Left = 240
    Top = 436
  end
  object EstudiTS1aV: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EstudiTS1aV'
    ForceNombreDB = False
    Body.Strings = (
      
        '(PRESTACIO VARCHAR(4), DATA1 DATE, DATA2 DATE, DRETMOTIU CHAR(10' +
        '))'
      'RETURNS (C_TRACTAMENT INTEGER,'
      '         C_HISTORIA INTEGER,'
      '         NOMCOMPLET VARCHAR(80),'
      '         NUM_INGRES INTEGER,'
      '         DATA_NAIXEMENT DATE,'
      '         SEXE CHAR(1),'
      '         CODI_POSTAL VARCHAR(5),'
      '         DATA_LESIO DATE,'
      '         C_ETILOGIA VARCHAR(15),'
      '         C_UNITATMEDICA INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         C_PRESTACIO VARCHAR(4),'
      '         C_COORDINADOR CHAR(5),'
      '         C_TREBALLSOCIAL VARCHAR(5),'
      '         C_TRACTAMENT2 INTEGER,'
      '         C_PRESTACIO2 INTEGER,'
      '         DATA_INGRES2 DATE,'
      '         DATA_ALTA2 DATE,'
      '         DATA_TRS DATE,'
      '         ESTUDIS INTEGER,'
      '         LABORAL_I INTEGER,'
      '         LABORALQUI_I INTEGER,'
      '         LABORALON_I INTEGER,'
      '         LABORAL_A INTEGER,'
      '         LABORALQUI_A INTEGER,'
      '         LABORALON_A INTEGER,'
      '         RESIDENCIA_I INTEGER,'
      '         RESIDENCIA_A INTEGER,'
      '         LLAR_A INTEGER,'
      '         CONVIVENCIA_I INTEGER,'
      '         ACCESSIBILITAT INTEGER,'
      '         PENSIO INTEGER,'
      '         MOBILITAT1 CHAR(1),'
      '         MOBILITAT2 CHAR(1),'
      '         MOBILITAT3 CHAR(1),'
      '         MOBILITAT4 CHAR(1),'
      '         MOBILITAT5 CHAR(1),'
      '         MOBILITAT6 CHAR(1),'
      '         MOBILITAT7 CHAR(1),'
      '         MOBILITAT8 CHAR(1),'
      '         FIGURA INTEGER,'
      '         DEDICACIO INTEGER,'
      '         SERVEI1 CHAR(1),'
      '         SERVEI2 CHAR(1),'
      '         SERVEI3 CHAR(1),'
      '         SERVEI4 CHAR(1),'
      '         SERVEI5 CHAR(1),'
      '         SERVEI6 CHAR(1),'
      '         SERVEI7 CHAR(1),'
      '         SERVEI8 CHAR(1),'
      '         SERVEI9 CHAR(1),'
      '         SERVEI10 CHAR(1),'
      '         SERVEI11 CHAR(1))'
      'AS'
      'BEGIN'
      
        '  FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPLET, F.FECHA' +
        '_NAC as DATA_NAIXEMENT, F.SEXO as SEXE, F.CODIGO as CODI_POSTAL,'
      
        '             F.DATA_LESSIO as DATA_LESIO, F.C_ETIOLOGIA, F.C_UNI' +
        'TATMEDICA, T.DATA_INGRES, T.DATA_ALTA, T.C_PRESTACIO,'
      
        '             T.C_COORDINADOR, T.C_TREVALLSOCIAL, T2.C_TRACTAMENT' +
        ' AS TRACTAMENT_2, T2.C_PRESTACIO as C_PRESTACIO_2,'
      
        '             T2.DATA_INGRES as DATA_INGRES_2, T2.DATA_ALTA as DA' +
        'TA_ALTA_2, C.DATA as DATA_TRS, E.ESTUDIS, E.LABORAL_I,'
      
        '             E.LABORALQUI_I,E.LABORALON_I, E.LABORAL_A, E.LABORA' +
        'LQUI_A,E.LABORALON_A, E.RESIDENCIA_I, E.RESIDENCIA_A, E.LLAR_A,'
      
        '             E.CONVIVENCIA_I, E.ACCESSIBILITAT, E.PENSIO, E.MOBI' +
        'LITAT1, E.MOBILITAT2, E.MOBILITAT3, E.MOBILITAT4, E.MOBILITAT5,'
      
        '             E.MOBILITAT6, E.MOBILITAT7, E.MOBILITAT8, E.FIGURA,' +
        ' E.DEDICACIO, E.SERVEI1,  E.SERVEI2, E.SERVEI3, E.SERVEI4, E.SER' +
        'VEI5,'
      
        '             E.SERVEI6, E.SERVEI7, E.SERVEI8, E.SERVEI9, E.SERVE' +
        'I10, E.SERVEI11'
      '  FROM TRACTAMENTS T'
      
        '  JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = :DRE' +
        'TMOTIU'
      
        '  left outer join ESCALESCAP C on C.CLAU = (select MAX(C2.CLAU) ' +
        'from ESCALESCAP C2'
      
        '                                            where C2.C_HISTORIA ' +
        '= T.C_HISTORIA'
      
        '                                            and (C2.ANULAT = "N"' +
        ' or C2.ANULAT = "V")'
      
        '                                            and C2.C_ENTRADA >= ' +
        '0'
      
        '                                            and C2.DATA >= T.DAT' +
        'A_INGRES'
      
        '                                            and C2.DATA -180 <= ' +
        #39'31.03.2007'#39')     /* DATA FINAL DE PER'#205'ODE */'
      '  left outer join ESCESIG_1AV E on E.ID = C.CLAU'
      
        '  left outer join TRACTAMENTS T2 on C.C_TRACTAMENT = T2.C_TRACTA' +
        'MENT'
      '  left outer join FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      '  WHERE T.C_PRESTACIO = :PRESTACIO'
      '  AND T.DATA_ALTA BETWEEN :DATA1 and :DATA2'
      ''
      '  ORDER BY T.C_HISTORIA'
      
        '  INTO :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :DATA_NAIXEMENT,' +
        ' :SEXE, :CODI_POSTAL, :DATA_LESIO, :C_ETILOGIA,'
      
        '       :C_UNITATMEDICA, :DATA_INGRES, :DATA_ALTA, :C_PRESTACIO, ' +
        ':C_COORDINADOR, :C_TREBALLSOCIAL, :C_TRACTAMENT2,'
      
        '       :C_PRESTACIO2, :DATA_INGRES2, :DATA_ALTA2, :DATA_TRS, :ES' +
        'TUDIS, :LABORAL_I, :LABORALQUI_I, :LABORALON_I,'
      
        '       :LABORAL_A, :LABORALQUI_A, :LABORALON_A, :RESIDENCIA_I, :' +
        'RESIDENCIA_A, :LLAR_A, :CONVIVENCIA_I, :ACCESSIBILITAT,'
      
        '       :PENSIO, :MOBILITAT1, :MOBILITAT2, :MOBILITAT3, :MOBILITA' +
        'T4, :MOBILITAT5, :MOBILITAT6, :MOBILITAT7, :MOBILITAT8,'
      
        '       :FIGURA, :DEDICACIO, :SERVEI1, :SERVEI2, :SERVEI3,:SERVEI' +
        '4,:SERVEI5,:SERVEI6,:SERVEI7,:SERVEI8,:SERVEI9,:SERVEI10,'
      '       :SERVEI11'
      '  DO BEGIN'
      '        SELECT COUNT(*) FROM TRACTAMENTS'
      '        WHERE C_HISTORIA   = :C_HISTORIA'
      '        AND   C_PRESTACIO  = :C_PRESTACIO'
      '        AND   DATA_INGRES <= :DATA_INGRES'
      '        INTO :NUM_INGRES;'
      '      '
      '        SUSPEND;'
      '  END;'
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
    Left = 480
    Top = 436
  end
  object PsicoRevi: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'psicorevi'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         UNITATMEDICA SMALLINT,'
      '         EDAT INTEGER,'
      '         IBP CHAR(1),'
      '         USER_IBP VARCHAR(30),'
      '         DATA_IBP DATE,'
      '         SWLS CHAR(1),'
      '         USER_SWLS VARCHAR(30),'
      '         DATA_SWLS DATE,'
      '         PHQ9 CHAR(1),'
      '         USER_PHQ9 VARCHAR(30),'
      '         DATA_PHQ9 DATE,'
      '         ENTREVISTA CHAR(1),'
      '         USER_ENT VARCHAR(30),'
      '         DATA_ENT DATE)'
      'AS'
      'BEGIN'
      
        '    FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_ING' +
        'RES, M.METGE ,F.C_UNITATMEDICA, F.EDAT'
      '    FROM TRACTAMENTS T'
      '    JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      '    JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '    JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND (F.C_UNITAT' +
        'MEDICA < 10 OR F.C_UNITATMEDICA IN(22,23))'
      '                       AND (F.C_UNITATMEDICA > 0)'
      '    WHERE T.DATA_INGRES >= :DATA1 AND T.DATA_INGRES <= :DATA2'
      '    AND   T.C_PRESTACIO = '#39'2004'#39
      '    ORDER BY T.C_TRACTAMENT'
      
        '    INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :COORDINADOR , :U' +
        'NITATMEDICA, :EDAT'
      '    DO BEGIN'
      
        '      USER_IBP = NULL; DATA_IBP = NULL; USER_SWLS = NULL; DATA_S' +
        'WLS = NULL;'
      
        '      USER_PHQ9 = NULL; DATA_PHQ9 = NULL; USER_ENT = NULL; DATA_' +
        'ENT = NULL;'
      ''
      '      /* ESCALA 12 IBP */'
      '      SELECT E.DATA, ME.METGE'
      '      FROM ESCALESCAP E'
      
        '      JOIN METGES ME ON E.C_USUARI = ME.CODI AND ME.C_ESPECIAL =' +
        ' '#39'08'#39
      '      WHERE E.C_TRACTAMENT = :TRACTAMENT'
      '      AND E.C_ESCALA = 12'
      '      AND E.ANULAT <> '#39'S'#39
      '      ORDER BY E.DATA'
      '      ROWS 1'
      '      INTO :DATA_IBP,:USER_IBP;'
      ''
      '      IF (USER_IBP IS NULL) THEN IBP = '#39'N'#39'; ELSE IBP = '#39'S'#39';'
      ''
      '      /* ESCALA 74 SWLS */'
      '      SELECT E.DATA, ME.METGE'
      '      FROM ESCALESCAP E'
      
        '      JOIN METGES ME ON E.C_USUARI = ME.CODI AND ME.C_ESPECIAL =' +
        ' '#39'08'#39
      '      WHERE E.C_TRACTAMENT = :TRACTAMENT'
      '      AND E.C_ESCALA = 74'
      '      AND E.ANULAT <> '#39'S'#39
      '      ORDER BY E.DATA'
      '      ROWS 1'
      '      INTO :DATA_SWLS,:USER_SWLS;'
      ''
      '      IF (USER_SWLS IS NULL) THEN SWLS = '#39'N'#39'; ELSE SWLS = '#39'S'#39';'
      ''
      '      /* ESCALA 75 PHQ_9 */'
      '      SELECT E.DATA, ME.METGE'
      '      FROM ESCALESCAP E'
      
        '      JOIN METGES ME ON E.C_USUARI = ME.CODI AND ME.C_ESPECIAL =' +
        ' '#39'08'#39
      '      WHERE E.C_TRACTAMENT = :TRACTAMENT'
      '      AND E.C_ESCALA = 75'
      '      AND E.ANULAT <> '#39'S'#39
      '      ORDER BY E.DATA'
      '      ROWS 1'
      '      INTO :DATA_PHQ9,:USER_PHQ9;'
      '      '
      '      IF (USER_PHQ9 IS NULL)THEN PHQ9 = '#39'N'#39'; ELSE PHQ9 = '#39'S'#39';'
      ''
      '      /* ESCALA 21 ENQUESTA */'
      '      SELECT E.DATA, ME.METGE'
      '      FROM ESCALESCAP E'
      
        '      JOIN METGES ME ON E.C_USUARI = ME.CODI AND ME.C_ESPECIAL =' +
        ' '#39'08'#39
      '      WHERE E.C_TRACTAMENT = :TRACTAMENT'
      '      AND E.C_ESCALA = 21'
      '      AND E.ANULAT <> '#39'S'#39
      '      ORDER BY E.DATA'
      '      ROWS 1'
      '      INTO :DATA_ENT,:USER_ENT;'
      ''
      
        '      IF (USER_ENT IS NULL) THEN ENTREVISTA = '#39'N'#39'; ELSE ENTREVIS' +
        'TA = '#39'S'#39';'
      ''
      '      SUSPEND;'
      '    END;'
      ''
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
    Left = 392
    Top = 380
  end
  object pArreglaNC: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Arregla_NC'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '            CODI CHAR(5),'
      '            NC CHAR(6),'
      '            NC_nou VARCHAR(6)'
      '    )'
      'AS'
      'BEGIN'
      '      FOR SELECT CODI, NC'
      '           FROM  METGES'
      '           WHERE BAIXA = '#39'N'#39
      '           INTO :CODI, :NC'
      '      DO BEGIN'
      
        '            IF ((NC IS NOT NULL) AND (F_SubStr('#39'.'#39', NC) = 0)) TH' +
        'EN'
      '            BEGIN'
      ''
      
        '                  IF      (F_StringLength(F_LRTrim(NC)) = 5) THE' +
        'N NC_nou = F_Mid(NC, 0, 2) || '#39'.'#39' || F_Mid(NC, 2, 3);'
      
        '                  ELSE IF (F_StringLength(F_LRTrim(NC)) = 4) THE' +
        'N NC_nou = F_Mid(NC, 0, 1) || '#39'.'#39' || F_Mid(NC, 1, 3);'
      '                  '
      
        '                  UPDATE METGES SET NC = :NC_nou WHERE CODI = :C' +
        'ODI;'
      ''
      '            END;'
      '      END;'
      'END')
    Dic1 = wDataBasics.Metges
    Dic1Name = 'metges'
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
    Left = 24
    Top = 436
  end
  object pArreglaTitolsInfer: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Arregla_TitolsInfer'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '  DECLARE VARIABLE CODI VARCHAR(5);'
      '  DECLARE VARIABLE COMPTA INTEGER;'
      'BEGIN'
      '      FOR SELECT CODI'
      '           FROM  METGES'
      '           WHERE C_GRUP = '#39'UN'#39
      '           AND   BAIXA = '#39'N'#39
      '           AND   CODI NOT IN (SELECT C_USUARI FROM TITULACIONS)'
      '           INTO :CODI'
      '      DO BEGIN'
      ''
      
        '            INSERT INTO TITULACIONS (C_USUARI, C_UNITAT, TITOL, ' +
        'TITULO)'
      
        '            VALUES (:CODI, 1, '#39'Dipl. Infermeria'#39', '#39'Dipl. Enferme' +
        'r'#237'a'#39');'
      ''
      
        '            INSERT INTO TITULACIONS (C_USUARI, C_UNITAT, TITOL, ' +
        'TITULO)'
      
        '            VALUES (:CODI, 2, '#39'Dipl. Infermeria'#39', '#39'Dipl. Enferme' +
        'r'#237'a'#39');'
      ''
      
        '            INSERT INTO TITULACIONS (C_USUARI, C_UNITAT, TITOL, ' +
        'TITULO)'
      
        '            VALUES (:CODI, 3, '#39'Dipl. Infermeria'#39', '#39'Dipl. Enferme' +
        'r'#237'a'#39');'
      ''
      '      END'
      'END')
    Dic1 = wDataBasics.Metges
    Dic1Name = 'metges'
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
    Left = 104
    Top = 436
  end
  object trombosi: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'TROMBOSI'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE,DATA2 DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA_LESSIO DATE,'
      '         DATA_INGRES DATE,'
      '         MOTIU SMALLINT,'
      '         CODI_DIAGNOSTIC_INGRES VARCHAR(15),'
      '         DIAGNOSTIC_INGRES VARCHAR(40),'
      '         CODI_DIAGNOSTIC_ALTA VARCHAR(15),'
      '         DIAGNOSTIC_ALTA VARCHAR(40),'
      '         CODI_DIAG_NEUROLOGIC_INGRES VARCHAR(15),'
      '         DIAG_NEUROLOGIC_INGRES VARCHAR(40),'
      '         CODI_DIAGNOSTIC_ALTRES VARCHAR(15),'
      '         DIAGNOSTIC_ALTRES VARCHAR(40),'
      '         UNITAT_MEDICA SMALLINT,'
      '         SINTROM_HEPARINA CHAR(1)'
      '         )'
      'AS'
      '      DECLARE VARIABLE DIES INTEGER;'
      'BEGIN'
      '      '
      
        ' FOR  SELECT DISTINCT T.C_TRACTAMENT, F.NUM_HIST, F.DATA_LESSIO,' +
        ' T.DATA_INGRES, T.C_MOTIU, T.C_DIAGNOSTICINGRES, T.N_DIAGNOSTICI' +
        'NGRES,'
      
        '            T.C_DIAGNOSTICALTA, T.N_DIAGNOSTICALTA, T.C_DIAGNOST' +
        'ICNEUROLOGICINGRES,T.N_DIAGNOSTICNEUROLOGICINGRES,D.C_DIAGNOSTIC' +
        ','
      '            D.N_DIAGNOSTIC, F.C_UNITATMEDICA'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU DM ON T.C_MOTIU = DM.C_MOTIU AND DM.C_DRET' +
        ' = '#39'X1'#39
      '      LEFT OUTER JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '      LEFT OUTER JOIN DIAGNOSTICS D ON T.C_TRACTAMENT = D.C_TRAC' +
        'TAMENT'
      '      LEFT OUTER JOIN LESIONS L ON F.NUM_HIST = L.C_HISTORIA'
      '      WHERE T.DATA_INGRES BETWEEN :DATA1 AND :DATA2'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.C_UNITATMEDICA BETWEEN 1 AND 8'
      
        '      AND ((t.C_DIAGNOSTICINGRES STARTING WITH '#39'415'#39') OR (t.C_DI' +
        'AGNOSTICINGRES STARTING WITH '#39'453'#39') OR'
      
        '           (t.C_DIAGNOSTICALTA STARTING WITH '#39'415'#39') OR (t.C_DIAG' +
        'NOSTICALTA STARTING WITH '#39'453'#39')     or'
      
        '           (d.c_diagnostic STARTING WITH '#39'415'#39') OR (d.c_diagnost' +
        'ic STARTING WITH '#39'453'#39')             or'
      
        '           (l.c_lesio STARTING WITH '#39'415'#39') OR (l.c_lesio STARTIN' +
        'G WITH '#39'453'#39'))'
      '      ORDER BY T.C_TRACTAMENT'
      
        '      INTO :TRACTAMENT, :HISTORIA, :DATA_LESSIO, :DATA_INGRES, :' +
        'MOTIU, :CODI_DIAGNOSTIC_INGRES,'
      
        '           :DIAGNOSTIC_INGRES,:CODI_DIAGNOSTIC_ALTA,:DIAGNOSTIC_' +
        'ALTA,:CODI_DIAG_NEUROLOGIC_INGRES,'
      
        '           :DIAG_NEUROLOGIC_INGRES,:CODI_DIAGNOSTIC_ALTRES,:DIAG' +
        'NOSTIC_ALTRES,:UNITAT_MEDICA'
      ' DO BEGIN'
      '      SELECT SUM(DIES) FROM ORDRESMEDIQUES'
      '      WHERE C_TRACTAMENT = :TRACTAMENT'
      
        '      AND ( C_PRODUCTE IN(605873,999565,837773,639484,840074,639' +
        '492,870345,766279) or'
      
        '            C_PRODUCTE2 IN(605873,999565,837773,639484,840074,63' +
        '9492,870345,766279) )'
      '      INTO :DIES;'
      ' '
      '      IF (DIES > 0) THEN SINTROM_HEPARINA = '#39'S'#39';'
      '      ELSE SINTROM_HEPARINA = '#39'N'#39';'
      '      '
      '      SUSPEND;'
      ' END;'
      ' '
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 24
    Top = 492
  end
  object provesp_periode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'provesp_periode'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE,DATAFI DATE)'
      'RETURNS ('
      '  METGE_COORDINADOR VARCHAR(20),'
      '  PROVA VARCHAR(20),'
      '  C_PRESTACIO VARCHAR(4),'
      '  TIPUS_PRESTACIO VARCHAR(40),'
      '  URGENT CHAR(1),'
      '  C_CENTREFAC VARCHAR(2),'
      '  C_UNITAT VARCHAR(40),'
      '  C_UNITATM VARCHAR(30),'
      '  DESCRIPCIO VARCHAR(20),'
      '  GENER DOUBLE PRECISION,'
      '  FEBRER DOUBLE PRECISION,'
      '  MARC DOUBLE PRECISION,'
      '  ABRIL DOUBLE PRECISION,'
      '  MAIG DOUBLE PRECISION,'
      '  JUNY DOUBLE PRECISION,'
      '  JULIOL DOUBLE PRECISION,'
      '  AGOST DOUBLE PRECISION,'
      '  SETEMBRE DOUBLE PRECISION,'
      '  OCTUBRE DOUBLE PRECISION,'
      '  NOVEMBRE DOUBLE PRECISION,'
      '  DECEMBRE DOUBLE PRECISION,'
      '  TOTAL DOUBLE PRECISION'
      ') AS'
      'DECLARE VARIABLE TIPUS_PRESTA SMALLINT;'
      'declare variable mes integer;'
      'declare variable preu double precision;'
      'declare variable metgenew varchar(20);'
      'declare variable metgeold varchar(20);'
      'declare variable provanew varchar(20);'
      'declare variable provaold varchar(20);'
      'declare variable prestacionew varchar(4);'
      'declare variable prestacioold varchar(4);'
      'declare variable centrefacnew varchar(2);'
      'declare variable centrefacold varchar(2);'
      'declare variable unitatnew varchar(40);'
      'declare variable unitatold varchar(40);'
      'declare variable unitatmnew varchar(30);'
      'declare variable unitatmold varchar(30);'
      'DECLARE VARIABLE TPRESTANEW SMALLINT;'
      'DECLARE VARIABLE TPRESTAOLD SMALLINT;'
      'DECLARE VARIABLE DESCRIPCIOSCSNEW VARCHAR(40);'
      'DECLARE VARIABLE DESCRIPCIOSCSOLD VARCHAR(40);'
      'DECLARE VARIABLE URGENTNEW CHAR(1);'
      'DECLARE VARIABLE URGENTOLD CHAR(1);'
      'declare variable t1 double precision;'
      'declare variable t2 double precision;'
      'declare variable t3 double precision;'
      'declare variable t4 double precision;'
      'declare variable t5 double precision;'
      'declare variable t6 double precision;'
      'declare variable t7 double precision;'
      'declare variable t8 double precision;'
      'declare variable t9 double precision;'
      'declare variable t10 double precision;'
      'declare variable t11 double precision;'
      'declare variable t12 double precision;'
      'declare variable t13 double precision;'
      'declare variable tb1 double precision;'
      'declare variable tb2 double precision;'
      'declare variable tb3 double precision;'
      'declare variable tb4 double precision;'
      'declare variable tb5 double precision;'
      'declare variable tb6 double precision;'
      'declare variable tb7 double precision;'
      'declare variable tb8 double precision;'
      'declare variable tb9 double precision;'
      'declare variable tb10 double precision;'
      'declare variable tb11 double precision;'
      'declare variable tb12 double precision;'
      'declare variable tb13 double precision;'
      'declare variable tt1 double precision;'
      'declare variable tt2 double precision;'
      'declare variable tt3 double precision;'
      'declare variable tt4 double precision;'
      'declare variable tt5 double precision;'
      'declare variable tt6 double precision;'
      'declare variable tt7 double precision;'
      'declare variable tt8 double precision;'
      'declare variable tt9 double precision;'
      'declare variable tt10 double precision;'
      'declare variable tt11 double precision;'
      'declare variable tt12 double precision;'
      'declare variable tt13 double precision;'
      'declare variable ttb1 double precision;'
      'declare variable ttb2 double precision;'
      'declare variable ttb3 double precision;'
      'declare variable ttb4 double precision;'
      'declare variable ttb5 double precision;'
      'declare variable ttb6 double precision;'
      'declare variable ttb7 double precision;'
      'declare variable ttb8 double precision;'
      'declare variable ttb9 double precision;'
      'declare variable ttb10 double precision;'
      'declare variable ttb11 double precision;'
      'declare variable ttb12 double precision;'
      'declare variable ttb13 double precision;'
      'declare variable primer smallint;'
      'begin'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;'
      
        '  AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NULL;DECEMBRE=N' +
        'ULL;'
      
        '  T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11=0;T12=0' +
        ';t13=0;'
      
        '  Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb10=0;T' +
        'b11=0;Tb12=0;tb13=0;'
      ''
      
        '  TT1=0;TT2=0;TT3=0;TT4=0;TT5=0;TT6=0;TT7=0;TT8=0;TT9=0;TT10=0;T' +
        'T11=0;TT12=0;TT13=0;'
      
        '  TTb1=0;TTb2=0;TTb3=0;TTb4=0;TTb5=0;TTb6=0;TTb7=0;TTb8=0;TTb9=0' +
        ';TTb10=0;TTb11=0;TTb12=0;'
      '  tTb13=0;'
      ''
      '  primer=1;'
      
        '  FOR select me.metge,PR.TIPUS,PR.N_PRESTACIO,I.URGENT,cp.n_prov' +
        'aesp, t.c_prestacio,t.c_centrefac,cc.n_codi,um.n_unitatm,intp.pr' +
        'eu,'
      '             f_month(intp.data_prova)'
      '  from intercon i'
      
        '  inner join interconprovaesp intp on i.c_intercon=intp.c_interc' +
        'on'
      '  inner join codiprovaesp cp on intp.c_prova=cp.c_provaesp'
      '  inner join tractaments t on i.c_tractament=t.c_tractament'
      '  INNER JOIN METGES ME ON T.C_COORDINADOR = ME.CODI'
      '  inner join filiacio f on i.c_historia=f.num_hist'
      
        '  left join codicamps cc on f.unitat=cc.c_codi and cc.tipuscodi=' +
        #39'UNITATS'#39
      '  left join unitatm um on f.c_unitatmedica=um.c_unitatm'
      '  LEFT JOIN PRESTACION PR ON T.C_PRESTACIO = PR.C_PRESTACIO'
      
        '  where i.c_especial='#39'12'#39' and intp.data_prova BETWEEN :DATAINI A' +
        'ND :DATAFI'
      '  and intp.data_valida is not null'
      '  and (i.estat in(33,92,93))'
      
        '  order by me.metge,PR.TIPUS,I.URGENT DESC,cp.n_provaesp,t.c_pre' +
        'stacio,t.c_centrefac,cc.n_codi,um.n_unitatm,intp.data_prova'
      
        '  into :metgenew,:TPRESTANEW,:DESCRIPCIOSCSNEW,:URGENTNEW,:prova' +
        'new,:prestacionew,:centrefacnew,:unitatnew,:unitatmnew,:preu,:me' +
        's'
      '  do begin /* 1 */'
      '      if (primer=1) then'
      '      begin'
      '          primer=0;'
      '          metgeold=metgenew;'
      '          provaold=provanew;'
      '          prestacioold=prestacionew;'
      '          centrefacold=centrefacnew;'
      '          unitatold=unitatnew;'
      '          unitatmold=unitatmnew;'
      '          TPRESTAOLD=TPRESTANEW;'
      '          DESCRIPCIOSCSOLD=DESCRIPCIOSCSNEW;'
      '          URGENTOLD=URGENTNEW;'
      '      end'
      '      if (metgenew<>metgeold or provanew<>provaold'
      
        '      or prestacionew<>prestacioold or centrefacnew<>centrefacol' +
        'd'
      '      or unitatnew<>unitatold or unitatmnew<>unitatmold'
      
        '      OR TPRESTAOLD <> TPRESTANEW OR URGENTOLD <> URGENTNEW) the' +
        'n'
      '      begin /* 2 */'
      ''
      ''
      '          /* si a cambiado */'
      '          /* envia los datos actuales sumados */'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Cost'#39';'
      
        '          GENER=:T1; FEBRER=:T2; MARC=:T3; ABRIL=:T4;MAIG=:T5; J' +
        'UNY=:T6; JULIOL=:T7;AGOST=:T8;SETEMBRE=:T9;OCTUBRE=:T10;NOVEMBRE' +
        '=:T11;DECEMBRE=:T12;'
      '          TOTAL=:T13;'
      ''
      
        '          if (GENER is not null) then tt1=tt1+:GENER;         if' +
        ' (FEBRER is not null) then tt2=tt2+:FEBRER;'
      
        '          if (MARC is not null) then tt3=tt3+:MARC;           if' +
        ' (ABRIL is not null) then tt4=tt4+:ABRIL;'
      
        '          if (MAIG is not null) then tt5=:tt5+MAIG;           if' +
        ' (JUNY is not null) then tt6=tt6+:JUNY;'
      
        '          if (JULIOL is not null) then tt7=tt7+:JULIOL;       if' +
        ' (AGOST is not null) then tt8=tt8+:AGOST;'
      
        '          if (SETEMBRE is not null) then tt9=tt9+:SETEMBRE;   if' +
        ' (OCTUBRE is not null) then tt10=tt10+:OCTUBRE;'
      
        '          if (NOVEMBRE is not null) then tt11=tt11+:NOVEMBRE; if' +
        ' (DECEMBRE is not null) then tt12=tt12+:DECEMBRE;'
      '          if (total is not null) then tt13=tt13+:total;'
      ''
      
        '          GENER=f_divisa(t1,2);FEBRER=f_divisa(t2,2);MARC=f_divi' +
        'sa(t3,2);ABRIL=f_divisa(t4,2);'
      
        '          MAIG=f_divisa(t5,2);JUNY=f_divisa(t6,2);JULIOL=f_divis' +
        'a(t7,2);AGOST=f_divisa(t8,2);'
      
        '          SETEMBRE=f_divisa(t9,2);OCTUBRE=f_divisa(t10,2);NOVEMB' +
        'RE=f_divisa(t11,2);DECEMBRE=f_divisa(t12,2);total=f_divisa(t13,2' +
        ');'
      ''
      
        '          prova=provaold;METGE_COORDINADOR=metgeold;c_prestacio=' +
        'prestacioold;c_centrefac=centrefacold;c_unitat=unitatold;c_unita' +
        'tm=unitatmold;'
      '          TIPUS_PRESTACIO=DESCRIPCIOSCSOLD;URGENT=URGENTOLD;'
      ''
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Peticions'#39';'
      
        '          GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;' +
        'JUNY=:Tb6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOV' +
        'EMBRE=:Tb11;'
      '          DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '          if (GENER is not null) then ttb1=ttb1+:GENER;         ' +
        ' if (FEBRER is not null) then ttb2=ttb2+:FEBRER;'
      
        '          if (MARC is not null) then ttb3=ttb3+:MARC;           ' +
        ' if (ABRIL is not null) then ttb4=ttb4+:ABRIL;'
      
        '          if (MAIG is not null) then ttb5=:ttb5+MAIG;           ' +
        ' if (JUNY is not null) then ttb6=ttb6+:JUNY;'
      
        '          if (JULIOL is not null) then ttb7=ttb7+:JULIOL;       ' +
        ' if (AGOST is not null) then ttb8=ttb8+:AGOST;'
      
        '          if (SETEMBRE is not null) then ttb9=ttb9+:SETEMBRE;   ' +
        ' if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;'
      
        '          if (NOVEMBRE is not null) then ttb11=ttb11+:NOVEMBRE; ' +
        ' if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;'
      '          if (total is not null) then ttb13=ttb13+:total;'
      ''
      
        '          GENER=f_divisa(tb1,0);FEBRER=f_divisa(tb2,0);MARC=f_di' +
        'visa(tb3,0);ABRIL=f_divisa(tb4,0);'
      
        '          MAIG=f_divisa(tb5,0);JUNY=f_divisa(tb6,0);JULIOL=f_div' +
        'isa(tb7,0);AGOST=f_divisa(tb8,0);'
      
        '          SETEMBRE=f_divisa(tb9,0);OCTUBRE=f_divisa(tb10,0);NOVE' +
        'MBRE=f_divisa(tb11,0);DECEMBRE=f_divisa(tb12,0);total=f_divisa(t' +
        'b13,0);'
      ''
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Cost/petici'#243#39';'
      
        '          if (tb1>0) then GENER=f_divisa(t1/tb1,2);         if (' +
        'tb2>0) then FEBRER=f_divisa(t2/tb2,2);'
      
        '          if (tb3>0) then MARC=f_divisa(t3/tb3,2);          if (' +
        'tb4>0) then ABRIL=f_divisa(t4/tb4,2);'
      
        '          if (tb5>0) then MAIG=f_divisa(t5/tb5,2);          if (' +
        'tb6>0) then JUNY=f_divisa(t6/tb6,2);'
      
        '          if (tb7>0) then JULIOL=f_divisa(t7/tb7,2);        if (' +
        'tb8>0) then AGOST=f_divisa(t8/tb8,2);'
      
        '          if (tb9>0) then SETEMBRE=f_divisa(t9/tb9,2);      if (' +
        'tb10>0) then OCTUBRE=f_divisa(t10/tb10,2);'
      
        '          if (tb11>0) then NOVEMBRE=f_divisa(t11/tb11,2);   if (' +
        'tb12>0) then DECEMBRE=f_divisa(t12/tb12,2);'
      '          if (tb13>0) then total=f_divisa(t13/tb13,2);'
      ''
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;'
      
        '          T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11' +
        '=0;T12=0;t13=0;'
      
        '          Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;' +
        'Tb10=0;Tb11=0;Tb12=0;tb13=0;'
      ''
      '/* fin de envio del actual */'
      '          metgeold=metgenew;'
      '          provaold=provanew;'
      '          prestacioold=prestacionew;'
      '          centrefacold=centrefacnew;'
      '          unitatold=unitatnew;'
      '          unitatmold=unitatmnew;'
      '          TPRESTAOLD=TPRESTANEW;'
      '          DESCRIPCIOSCSOLD=DESCRIPCIOSCSNEW;'
      '          URGENTOLD=URGENTNEW;'
      '/* si ha cambiado metge o prova */'
      '      end'
      ''
      '/* suma los contadores */'
      '      if (preu is not null) then'
      '      begin'
      '              t13=t13+:preu;'
      '              if (mes=1) then t1=t1+:preu;'
      '              else if (mes=2) then t2=t2+:preu;'
      '              else if (mes=3) then t3=t3+:preu;'
      '              else if (mes=4) then t4=t4+:preu;'
      '              else if (mes=5) then t5=t5+:preu;'
      '              else if (mes=6) then t6=t6+:preu;'
      '              else if (mes=7) then t7=t7+:preu;'
      '              else if (mes=8) then t8=t8+:preu;'
      '              else if (mes=9) then t9=t9+:preu;'
      '              else if (mes=10) then t10=t10+:preu;'
      '              else if (mes=11) then t11=t11+:preu;'
      '              else if (mes=12) then t12=t12+:preu;'
      '      end'
      ''
      '      tb13=tb13+1;'
      '      if (mes=1) then tb1=tb1+1;'
      '      else if (mes=2) then tb2=tb2+1;'
      '      else if (mes=3) then tb3=tb3+1;'
      '      else if (mes=4) then tb4=tb4+1;'
      '      else if (mes=5) then tb5=tb5+1;'
      '      else if (mes=6) then tb6=tb6+1;'
      '      else if (mes=7) then tb7=tb7+1;'
      '      else if (mes=8) then tb8=tb8+1;'
      '      else if (mes=9) then tb9=tb9+1;'
      '      else if (mes=10) then tb10=tb10+1;'
      '      else if (mes=11) then tb11=tb11+1;'
      '      else if (mes=12) then tb12=tb12+1;'
      '  end /* 1 */'
      ''
      '  /* envia los datos ULTIMO REGISTRO */'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;DECEMBRE=NULL;'
      '  TOTAL=NULL;'
      '  DESCRIPCIO='#39'Cost'#39';'
      
        '  GENER=:T1;FEBRER=:T2;MARC=:T3;ABRIL=:T4;MAIG=:T5;JUNY=:T6;JULI' +
        'OL=:T7;AGOST=:T8;SETEMBRE=:T9;OCTUBRE=:T10;NOVEMBRE=:T11;DECEMBR' +
        'E=:T12;'
      '  TOTAL=:T13;'
      ''
      
        '  if (GENER is not null) then tt1=tt1+:GENER;         if (FEBRER' +
        ' is not null) then tt2=tt2+:FEBRER;'
      
        '  if (MARC is not null) then tt3=tt3+:MARC;           if (ABRIL ' +
        'is not null) then tt4=tt4+:ABRIL;'
      
        '  if (MAIG is not null) then tt5=:tt5+MAIG;           if (JUNY i' +
        's not null) then tt6=tt6+:JUNY;'
      
        '  if (JULIOL is not null) then tt7=tt7+:JULIOL;       if (AGOST ' +
        'is not null) then tt8=tt8+:AGOST;'
      
        '  if (SETEMBRE is not null) then tt9=tt9+:SETEMBRE;   if (OCTUBR' +
        'E is not null) then tt10=tt10+:OCTUBRE;'
      
        '  if (NOVEMBRE is not null) then tt11=tt11+:NOVEMBRE; if (DECEMB' +
        'RE is not null) then tt12=tt12+:DECEMBRE;'
      '  if (total is not null) then tt13=tt13+:total;'
      ''
      
        '  GENER=f_divisa(t1,2);FEBRER=f_divisa(t2,2);MARC=f_divisa(t3,2)' +
        ';ABRIL=f_divisa(t4,2);MAIG=f_divisa(t5,2);JUNY=f_divisa(t6,2);'
      
        '  JULIOL=f_divisa(t7,2);AGOST=f_divisa(t8,2);SETEMBRE=f_divisa(t' +
        '9,2);OCTUBRE=f_divisa(t10,2);NOVEMBRE=f_divisa(t11,2);'
      '  DECEMBRE=f_divisa(t12,2);total=f_divisa(t13,2);'
      ''
      '  prova=provaold;'
      '  metge_COORDINADOR=metgeold;'
      '  c_prestacio=prestacioold;'
      '  c_centrefac=centrefacold;'
      '  c_unitat=unitatold;'
      '  c_unitatm=unitatmold;'
      '  TIPUS_PRESTACIO=DESCRIPCIOSCSOLD;'
      '  URGENT=URGENTOLD;'
      ''
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;DECEMBRE=NULL;'
      '  TOTAL=NULL;'
      '  DESCRIPCIO='#39'Peticions'#39';'
      
        '  GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;JUNY=:Tb' +
        '6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOVEMBRE=:T' +
        'b11;DECEMBRE=:Tb12;'
      '  TOTAL=:Tb13;'
      ''
      
        '  if (GENER is not null) then ttb1=ttb1+:GENER;         if (FEBR' +
        'ER is not null) then ttb2=ttb2+:FEBRER;'
      
        '  if (MARC is not null) then ttb3=ttb3+:MARC;           if (ABRI' +
        'L is not null) then ttb4=ttb4+:ABRIL;'
      
        '  if (MAIG is not null) then ttb5=:ttb5+MAIG;           if (JUNY' +
        ' is not null) then ttb6=ttb6+:JUNY;'
      
        '  if (JULIOL is not null) then ttb7=ttb7+:JULIOL;       if (AGOS' +
        'T is not null) then ttb8=ttb8+:AGOST;'
      
        '  if (SETEMBRE is not null) then ttb9=ttb9+:SETEMBRE;   if (OCTU' +
        'BRE is not null) then ttb10=ttb10+:OCTUBRE;'
      
        '  if (NOVEMBRE is not null) then ttb11=ttb11+:NOVEMBRE; if (DECE' +
        'MBRE is not null) then ttb12=ttb12+:DECEMBRE;'
      '  if (total is not null) then ttb13=ttb13+:total;'
      '  '
      
        '  GENER=f_divisa(tb1,0);FEBRER=f_divisa(tb2,0);MARC=f_divisa(tb3' +
        ',0);ABRIL=f_divisa(tb4,0);MAIG=f_divisa(tb5,0);JUNY=f_divisa(tb6' +
        ',0);'
      
        '  JULIOL=f_divisa(tb7,0);AGOST=f_divisa(tb8,0);SETEMBRE=f_divisa' +
        '(tb9,0);OCTUBRE=f_divisa(tb10,0);NOVEMBRE=f_divisa(tb11,0);'
      '  DECEMBRE=f_divisa(tb12,0);total=f_divisa(tb13,0);'
      ''
      '  Suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;DECEMBRE=NULL;'
      '  TOTAL=NULL;'
      '  DESCRIPCIO='#39'Cost/petici'#243#39';'
      ''
      
        '  if (tb1>0) then GENER=f_divisa(t1/tb1,2);       if (tb2>0) the' +
        'n FEBRER=f_divisa(t2/tb2,2);'
      
        '  if (tb3>0) then MARC=f_divisa(t3/tb3,2);        if (tb4>0) the' +
        'n ABRIL=f_divisa(t4/tb4,2);'
      
        '  if (tb5>0) then MAIG=f_divisa(t5/tb5,2);        if (tb6>0) the' +
        'n JUNY=f_divisa(t6/tb6,2);'
      
        '  if (tb7>0) then JULIOL=f_divisa(t7/tb7,2);      if (tb8>0) the' +
        'n AGOST=f_divisa(t8/tb8,2);'
      
        '  if (tb9>0) then SETEMBRE=f_divisa(t9/tb9,2);    if (tb10>0) th' +
        'en OCTUBRE=f_divisa(t10/tb10,2);'
      
        '  if (tb11>0) then NOVEMBRE=f_divisa(t11/tb11,2); if (tb12>0) th' +
        'en DECEMBRE=f_divisa(t12/tb12,2);'
      '  if (tb13>0) then total=f_divisa(t13/tb13,2);'
      ''
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;DECEMBRE=NULL;'
      
        '  T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11=0;T12=0' +
        ';t13=0;'
      
        '  Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb10=0;T' +
        'b11=0;Tb12=0;tb13=0;'
      ''
      '/* fin de envio del ULTIMO REGISTRO */'
      ''
      '/* totales */'
      '  METGE_COORDINADOR='#39'T O T A L S'#39';'
      '  PROVA='#39#39';'
      '  C_PRESTACIO='#39#39';'
      '  C_CENTREFAC='#39#39';'
      '  C_UNITAT='#39#39';'
      '  C_UNITATM='#39#39';'
      '  TIPUS_PRESTACIO='#39#39';'
      '  URGENT='#39#39';'
      '  DESCRIPCIO='#39'Cost'#39';'
      ''
      
        '  GENER=:tt1;FEBRER=:tt2;MARC=:tt3;ABRIL=:tt4;MAIG=:tt5;JUNY=:tt' +
        '6;JULIOL=:tt7;AGOST=:tt8;SETEMBRE=:tt9;OCTUBRE=:tt10;NOVEMBRE=:t' +
        't11;DECEMBRE=:tt12;'
      '  total=:tt13;'
      
        '  GENER=f_divisa(GENER,2); FEBRER=f_divisa(FEBRER,2); MARC=f_div' +
        'isa(MARC,2); ABRIL=f_divisa(ABRIL,2); MAIG=f_divisa(MAIG,2);'
      
        '  JUNY=f_divisa(JUNY,2); JULIOL=f_divisa(JULIOL,2); AGOST=f_divi' +
        'sa(AGOST,2); SETEMBRE=f_divisa(SETEMBRE,2); OCTUBRE=f_divisa(OCT' +
        'UBRE,2);'
      '  NOVEMBRE=f_divisa(NOVEMBRE,2); DECEMBRE=f_divisa(DECEMBRE,2);'
      '  total=f_divisa(total,2);'
      ''
      '  suspend;'
      ''
      '  DESCRIPCIO='#39'Peticions'#39';'
      
        '  GENER=:ttb1;FEBRER=:ttb2;MARC=:ttb3;ABRIL=:ttb4;MAIG=:ttb5;JUN' +
        'Y=:ttb6;JULIOL=:ttb7;AGOST=:ttb8;SETEMBRE=:ttb9;OCTUBRE=:ttb10;N' +
        'OVEMBRE=:ttb11;'
      '  DECEMBRE=:ttb12;'
      '  total=:ttb13;'
      ''
      
        '  GENER=f_divisa(GENER,0); FEBRER=f_divisa(FEBRER,0); MARC=f_div' +
        'isa(MARC,0); ABRIL=f_divisa(ABRIL,0); MAIG=f_divisa(MAIG,0); JUN' +
        'Y=f_divisa(JUNY,0);'
      
        '  JULIOL=f_divisa(JULIOL,0); AGOST=f_divisa(AGOST,0); SETEMBRE=f' +
        '_divisa(SETEMBRE,0); OCTUBRE=f_divisa(OCTUBRE,0); NOVEMBRE=f_div' +
        'isa(NOVEMBRE,0);'
      '  DECEMBRE=f_divisa(DECEMBRE,0);'
      '  total=f_divisa(total,0);'
      ''
      '  suspend;'
      ''
      '  DESCRIPCIO='#39'Cost/petici'#243#39';'
      
        '  if (ttb1>0) then GENER=tt1/ttb1;if (ttb2>0) then FEBRER=tt2/tt' +
        'b2;if (ttb3>0) then MARC=tt3/ttb3;if (ttb4>0) then ABRIL=tt4/ttb' +
        '4;'
      
        '  if (ttb5>0) then MAIG=tt5/ttb5;if (ttb6>0) then JUNY=tt6/ttb6;' +
        'if (ttb7>0) then JULIOL=tt7/ttb7;if (ttb8>0) then AGOST=tt8/ttb8' +
        ';'
      
        '  if (ttb9>0) then SETEMBRE=tt9/ttb9;if (ttb10>0) then OCTUBRE=t' +
        't10/ttb10;if (ttb11>0) then NOVEMBRE=tt11/ttb11;'
      '  if (ttb12>0) then DECEMBRE=tt12/ttb12;'
      '  if (ttb13>0) then total=tt13/ttb13;'
      ''
      
        '  GENER=f_divisa(GENER,2); FEBRER=f_divisa(FEBRER,2); MARC=f_div' +
        'isa(MARC,2); ABRIL=f_divisa(ABRIL,2); MAIG=f_divisa(MAIG,2); JUN' +
        'Y=f_divisa(JUNY,2);'
      
        '  JULIOL=f_divisa(JULIOL,2); AGOST=f_divisa(AGOST,2); SETEMBRE=f' +
        '_divisa(SETEMBRE,2); OCTUBRE=f_divisa(OCTUBRE,2); NOVEMBRE=f_div' +
        'isa(NOVEMBRE,2);'
      '  DECEMBRE=f_divisa(DECEMBRE,2);'
      '  total=f_divisa(total,2);'
      ''
      '  suspend;'
      '/* fin totales */'
      'end'
      '')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'intercon'
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
    Left = 104
    Top = 492
  end
  object anal_periode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'anal_periode'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE,DATAFI DATE)'
      'RETURNS ('
      '  METGE_COORDINADOR VARCHAR(20),'
      '  C_PRESTACIO VARCHAR(4),'
      '  TIPUS_PRESTACIO VARCHAR(40),'
      '  URGENT CHAR(1),'
      '  C_CENTREFAC VARCHAR(2),'
      '  C_UNITAT VARCHAR(40),'
      '  C_UNITATM VARCHAR(30),'
      '  DESCRIPCIO VARCHAR(20),'
      '  GENER DOUBLE PRECISION,'
      '  FEBRER DOUBLE PRECISION,'
      '  MARC DOUBLE PRECISION,'
      '  ABRIL DOUBLE PRECISION,'
      '  MAIG DOUBLE PRECISION,'
      '  JUNY DOUBLE PRECISION,'
      '  JULIOL DOUBLE PRECISION,'
      '  AGOST DOUBLE PRECISION,'
      '  SETEMBRE DOUBLE PRECISION,'
      '  OCTUBRE DOUBLE PRECISION,'
      '  NOVEMBRE DOUBLE PRECISION,'
      '  DECEMBRE DOUBLE PRECISION,'
      '  TOTAL DOUBLE PRECISION)'
      'AS'
      'declare variable mes integer;'
      'declare variable preu double precision;'
      'declare variable metgenew varchar(20);'
      'declare variable metgeold varchar(20);'
      'declare variable prestacionew varchar(4);'
      'declare variable prestacioold varchar(4);'
      'declare variable centrefacnew varchar(2);'
      'declare variable centrefacold varchar(2);'
      'declare variable unitatnew varchar(40);'
      'declare variable unitatold varchar(40);'
      'declare variable unitatmnew varchar(30);'
      'declare variable unitatmold varchar(30);'
      'declare variable nilabnew varchar(8);'
      'declare variable nilabold varchar(8);'
      'declare variable datanew date;'
      'declare variable dataold date;'
      'DECLARE VARIABLE TPRESTANEW SMALLINT;'
      'DECLARE VARIABLE TPRESTAOLD SMALLINT;'
      'DECLARE VARIABLE DESCRIPCIOSCSNEW VARCHAR(40);'
      'DECLARE VARIABLE DESCRIPCIOSCSOLD VARCHAR(40);'
      'DECLARE VARIABLE URGENTNEW CHAR(1);'
      'DECLARE VARIABLE URGENTOLD CHAR(1);'
      'declare variable t1 double precision;'
      'declare variable t2 double precision;'
      'declare variable t3 double precision;'
      'declare variable t4 double precision;'
      'declare variable t5 double precision;'
      'declare variable t6 double precision;'
      'declare variable t7 double precision;'
      'declare variable t8 double precision;'
      'declare variable t9 double precision;'
      'declare variable t10 double precision;'
      'declare variable t11 double precision;'
      'declare variable t12 double precision;'
      'declare variable t13 double precision;'
      'declare variable tb1 double precision;'
      'declare variable tb2 double precision;'
      'declare variable tb3 double precision;'
      'declare variable tb4 double precision;'
      'declare variable tb5 double precision;'
      'declare variable tb6 double precision;'
      'declare variable tb7 double precision;'
      'declare variable tb8 double precision;'
      'declare variable tb9 double precision;'
      'declare variable tb10 double precision;'
      'declare variable tb11 double precision;'
      'declare variable tb12 double precision;'
      'declare variable tb13 double precision;'
      'declare variable tc1 double precision;'
      'declare variable tc2 double precision;'
      'declare variable tc3 double precision;'
      'declare variable tc4 double precision;'
      'declare variable tc5 double precision;'
      'declare variable tc6 double precision;'
      'declare variable tc7 double precision;'
      'declare variable tc8 double precision;'
      'declare variable tc9 double precision;'
      'declare variable tc10 double precision;'
      'declare variable tc11 double precision;'
      'declare variable tc12 double precision;'
      'declare variable tc13 double precision;'
      'declare variable tt1 double precision;'
      'declare variable tt2 double precision;'
      'declare variable tt3 double precision;'
      'declare variable tt4 double precision;'
      'declare variable tt5 double precision;'
      'declare variable tt6 double precision;'
      'declare variable tt7 double precision;'
      'declare variable tt8 double precision;'
      'declare variable tt9 double precision;'
      'declare variable tt10 double precision;'
      'declare variable tt11 double precision;'
      'declare variable tt12 double precision;'
      'declare variable tt13 double precision;'
      'declare variable ttb1 double precision;'
      'declare variable ttb2 double precision;'
      'declare variable ttb3 double precision;'
      'declare variable ttb4 double precision;'
      'declare variable ttb5 double precision;'
      'declare variable ttb6 double precision;'
      'declare variable ttb7 double precision;'
      'declare variable ttb8 double precision;'
      'declare variable ttb9 double precision;'
      'declare variable ttb10 double precision;'
      'declare variable ttb11 double precision;'
      'declare variable ttb12 double precision;'
      'declare variable ttb13 double precision;'
      'declare variable ttc1 double precision;'
      'declare variable ttc2 double precision;'
      'declare variable ttc3 double precision;'
      'declare variable ttc4 double precision;'
      'declare variable ttc5 double precision;'
      'declare variable ttc6 double precision;'
      'declare variable ttc7 double precision;'
      'declare variable ttc8 double precision;'
      'declare variable ttc9 double precision;'
      'declare variable ttc10 double precision;'
      'declare variable ttc11 double precision;'
      'declare variable ttc12 double precision;'
      'declare variable ttc13 double precision;'
      'declare variable primer smallint;'
      ''
      'BEGIN'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;'
      '  DECEMBRE=NULL;'
      
        '  T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11=0;T12=0' +
        ';t13=0;Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb1' +
        '0=0;Tb11=0;'
      
        '  Tb12=0;tb13=0;Tc1=0;Tc2=0;Tc3=0;Tc4=0;Tc5=0;Tc6=0;Tc7=0;Tc8=0;' +
        'Tc9=0;Tc10=0;Tc11=0;Tc12=0;tc13=0;'
      
        '  TT1=0;TT2=0;TT3=0;TT4=0;TT5=0;TT6=0;TT7=0;TT8=0;TT9=0;TT10=0;T' +
        'T11=0;TT12=0;TT13=0;TTb1=0;TTb2=0;TTb3=0;TTb4=0;TTb5=0;TTb6=0;TT' +
        'b7=0;TTb8=0;'
      
        '  TTb9=0;TTb10=0;TTb11=0;TTb12=0;tTb13=0;Ttc1=0;Ttc2=0;Ttc3=0;Tt' +
        'c4=0;Ttc5=0;Ttc6=0;Ttc7=0;Ttc8=0;Ttc9=0;Ttc10=0;Ttc11=0;Ttc12=0;' +
        'ttc13=0;nilabold='#39' '#39';'
      '  dataold="01/01/1900";'
      '  primer=1;'
      ''
      
        '  FOR select  me.metge,t.c_prestacio,PR.TIPUS,PR.N_PRESTACIO,I.U' +
        'RGENT,t.c_centrefac,cc.n_codi,um.n_unitatm,fac.preu,f_month(ana.' +
        'data),'
      '              ana.data,ana.nilab'
      '  from anacabe ana'
      
        '  left join factu fac on ana.data=fac.data and ana.nilab=fac.nil' +
        'ab'
      '  left join filiacio f on ana.num_hist=f.num_hist'
      '  LEFT OUTER JOIN INTERCON I ON ANA.C_INTERCON = I.C_INTERCON'
      '  left join tractaments t on i.c_tractament=t.c_tractament'
      '  LEFT JOIN PRESTACION PR ON T.C_PRESTACIO = PR.C_PRESTACIO'
      '/*  left join tractaments t on ana.c_tractament=t.c_tractament*/'
      '  left join metges me on t.c_coordinador=me.codi'
      
        '  left join codicamps cc on f.unitat=cc.c_codi and cc.tipuscodi=' +
        #39'UNITATS'#39
      '  left join unitatm um on f.c_unitatmedica=um.c_unitatm'
      '/*  LEFT JOIN PRESTACION PR ON T.C_PRESTACIO = PR.C_PRESTACIO*/'
      
        '/*  LEFT OUTER JOIN INTERCON I ON ANA.C_INTERCON = I.C_INTERCON ' +
        '*/'
      '  where ana.data between :dataini and :datafi'
      
        '  order by me.metge,t.c_prestacio,I.URGENT DESC,t.c_centrefac,cc' +
        '.n_codi,um.n_unitatm,fac.preu,ana.data'
      
        '  INTO :metgenew,:prestacionew,:TPRESTANEW,:DESCRIPCIOSCSNEW,:UR' +
        'GENTNEW,:centrefacnew,:unitatnew,:unitatmnew,:preu,:mes,:datanew' +
        ',:nilabnew'
      '  DO begin /* 1 */'
      '      if (primer=1) then'
      '      begin'
      '          primer=0;'
      '          metgeold=metgenew;'
      '          prestacioold=prestacionew;'
      '          centrefacold=centrefacnew;'
      '          unitatold=unitatnew;'
      '          unitatmold=unitatmnew;'
      '          TPRESTAOLD=TPRESTANEW;'
      '          DESCRIPCIOSCSOLD=DESCRIPCIOSCSNEW;'
      '          URGENTOLD=URGENTNEW;'
      '      end'
      ''
      
        '      if (metgenew<>metgeold or prestacionew<>prestacioold o'#176#254'z'#12 +
        'ntrefacnew<>centrefacold or unitatnew<>unitatold'#4'C'#185#14'unitatmnew<>' +
        'unitatmold'
      '      OR URGENTNEW <> URGENTOLD) then'
      '      begin /* 2 */'
      '          /* si a cambiado */'
      '          /* envia los datos actuales sumados */'
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Cost'#39';'
      
        '          GENER=:T1;FEBRER=:T2;MARC=:T3;ABRIL=:T4;MAIG=:T5;JUNY=' +
        ':T6;JULIOL=:T7;AGOST=:T8;SETEMBRE=:T9;OCTUBRE=:T10;NOVEMBRE=:T11' +
        ';'
      '          DECEMBRE=:T12;TOTAL=:T13;'
      ''
      
        '          if (GENER is not null) then tt1=tt1+:GENER;if (FEBRER ' +
        'is not null) then tt2=tt2+:FEBRER;if (MARC is not null) then tt3' +
        '=tt3+:MARC;'
      
        '          if (ABRIL is not null) then tt4=tt4+:ABRIL;if (MAIG is' +
        ' not null) then tt5=:tt5+MAIG;if (JUNY is not null) then tt6=tt6' +
        '+:JUNY;'
      
        '          if (JULIOL is not null) then tt7=tt7+:JULIOL;if (AGOST' +
        ' is not null) then tt8=tt8+:AGOST;if (SETEMBRE is not null) then' +
        ' tt9=tt9+:SETEMBRE;'
      
        '          if (OCTUBRE is not null) then tt10=tt10+:OCTUBRE;if (N' +
        'OVEMBRE is not null) then tt11=tt11+:NOVEMBRE;'
      
        '          if (DECEMBRE is not null) then tt12=tt12+:DECEMBRE;if ' +
        '(total is not null) then tt13=tt13+:total;'
      ''
      
        '          GENER=f_divisa(t1,2);FEBRER=f_divisa(t2,2);MARC=f_divi' +
        'sa(t3,2);ABRIL=f_divisa(t4,2);MAIG=f_divisa(t5,2);JUNY=f_divisa(' +
        't6,2);'
      
        '          JULIOL=f_divisa(t7,2);AGOST=f_divisa(t8,2);SETEMBRE=f_' +
        'divisa(t9,2);OCTUBRE=f_divisa(t10,2);NOVEMBRE=f_divisa(t11,2);'
      '          DECEMBRE=f_divisa(t12,2);total=f_divisa(t13,2);'
      '          metge_COORDINADOR=metgeold;'
      '          c_prestacio=prestacioold;'
      '          c_centrefac=centrefacold;'
      '          c_unitat=unitatold;'
      '          c_unitatm=unitatmold;'
      '          TIPUS_PRESTACIO=DESCRIPCIOSCSOLD;'
      '          URGENT=URGENTOLD;'
      '          suspend;'
      '          '
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Determinacions'#39';'
      
        '          GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;' +
        'JUNY=:Tb6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOV' +
        'EMBRE=:Tb11;'
      '          DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '          if (GENER is not null) then ttb1=ttb1+:GENER;if (FEBRE' +
        'R is not null) then ttb2=ttb2+:FEBRER;if (MARC is not null) then' +
        ' ttb3=ttb3+:MARC;'
      
        '          if (ABRIL is not null) then ttb4=ttb4+:ABRIL;if (MAIG ' +
        'is not null) then ttb5=:ttb5+MAIG; if (JUNY is not null) then tt' +
        'b6=ttb6+:JUNY;'
      
        '          if (JULIOL is not null) then ttb7=ttb7+:JULIOL;if (AGO' +
        'ST is not null) then ttb8=ttb8+:AGOST;if (SETEMBRE is not null) ' +
        'then ttb9=ttb9+:SETEMBRE;'
      
        '          if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;if ' +
        '(NOVEMBRE is not null) then ttb11=ttb11+:NOVEMBRE;'
      
        '          if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;i' +
        'f (total is not null) then ttb13=ttb13+:total;'
      ''
      
        '          GENER=f_divisa(tb1,0);FEBRER=f_divisa(tb2,0);MARC=f_di' +
        'visa(tb3,0);ABRIL=f_divisa(tb4,0);MAIG=f_divisa(tb5,0);JUNY=f_di' +
        'visa(tb6,0);'
      
        '          JULIOL=f_divisa(tb7,0);AGOST=f_divisa(tb8,0);SETEMBRE=' +
        'f_divisa(tb9,0);OCTUBRE=f_divisa(tb10,0);NOVEMBRE=f_divisa(tb11,' +
        '0);'
      '          DECEMBRE=f_divisa(tb12,0);total=f_divisa(tb13,0);'
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Peticions'#39';'
      
        '          GENER=:Tc1;FEBRER=:Tc2;MARC=:Tc3;ABRIL=:Tc4;MAIG=:Tc5;' +
        'JUNY=:Tc6;JULIOL=:Tc7;AGOST=:Tc8;SETEMBRE=:Tc9;OCTUBRE=:Tc10;NOV' +
        'EMBRE=:Tc11;'
      '          DECEMBRE=:Tc12;TOTAL=:Tc13;'
      ''
      
        '          if (GENER is not null) then ttc1=ttc1+:GENER;if (FEBRE' +
        'R is not null) then ttc2=ttc2+:FEBRER;if (MARC is not null) then' +
        ' ttc3=ttc3+:MARC;'
      
        '          if (ABRIL is not null) then ttc4=ttb4+:ABRIL;if (MAIG ' +
        'is not null) then ttc5=:ttc5+MAIG;if (JUNY is not null) then ttc' +
        '6=ttc6+:JUNY;'
      
        '          if (JULIOL is not null) then ttc7=ttc7+:JULIOL;if (AGO' +
        'ST is not null) then ttc8=ttc8+:AGOST;if (SETEMBRE is not null) ' +
        'then ttc9=ttc9+:SETEMBRE;'
      
        '          if (OCTUBRE is not null) then ttc10=ttc10+:OCTUBRE;if ' +
        '(NOVEMBRE is not null) then ttc11=ttc11+:NOVEMBRE;'
      
        '          if (DECEMBRE is not null) then ttc12=ttc12+:DECEMBRE;i' +
        'f (total is not null) then ttc13=ttc13+:total;'
      ''
      
        '          GENER=f_divisa(tc1,0);FEBRER=f_divisa(tc2,0);MARC=f_di' +
        'visa(tc3,0);ABRIL=f_divisa(tc4,0);MAIG=f_divisa(tc5,0);JUNY=f_di' +
        'visa(tc6,0);'
      
        '          JULIOL=f_divisa(tc7,0);AGOST=f_divisa(tc8,0);SETEMBRE=' +
        'f_divisa(tc9,0);OCTUBRE=f_divisa(tc10,0);NOVEMBRE=f_divisa(tc11,' +
        '0);'
      '          DECEMBRE=f_divisa(tc12,0);total=f_divisa(tc13,0);'
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      ''
      '          DESCRIPCIO='#39'Cost/petici'#243#39';'
      ''
      
        '          if (tc1>0) then GENER=f_divisa(t1/tc1,2);if (tc2>0) th' +
        'en FEBRER=f_divisa(t2/tc2,2);if (tc3>0) then MARC=f_divisa(t3/tc' +
        '3,2);'
      
        '          if (tc4>0) then ABRIL=f_divisa(t4/tc4,2);if (tc5>0) th' +
        'en MAIG=f_divisa(t5/tc5,2);if (tc6>0) then JUNY=f_divisa(t6/tc6,' +
        '2);'
      
        '          if (tc7>0) then JULIOL=f_divisa(t7/tc7,2);if (tc8>0) t' +
        'hen AGOST=f_divisa(t8/tc8,2);if (tc9>0) then SETEMBRE=f_divisa(t' +
        '9/tc9,2);'
      
        '          if (tc10>0) then OCTUBRE=f_divisa(t10/tc10,2);if (tc11' +
        '>0) then NOVEMBRE=f_divisa(t11/tc11,2);'
      
        '          if (tc12>0) then DECEMBRE=f_divisa(t12/tc12,2);if (tc1' +
        '3>0) then total=f_divisa(t13/tc13,2);'
      ''
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;DECEMBRE=NULL;'
      
        '          T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11' +
        '=0;T12=0;t13=0;Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;T' +
        'b9=0;Tb10=0;Tb11=0;'
      
        '          Tb12=0;tb13=0;Tc1=0;Tc2=0;Tc3=0;Tc4=0;Tc5=0;Tc6=0;Tc7=' +
        '0;Tc8=0;Tc9=0;Tc10=0;Tc11=0;Tc12=0;tc13=0;'
      ''
      '          /* fin de envio del actual */'
      '          metgeold=metgenew;'
      '          prestacioold=prestacionew;'
      '          centrefacold=centrefacnew;'
      '          unitatold=unitatnew;'
      '          unitatmold=unitatmnew;'
      '          TPRESTAOLD=TPRESTANEW;'
      '          DESCRIPCIOSCSOLD=DESCRIPCIOSCSNEW;'
      '          URGENTOLD=URGENTNEW;'
      '         /* sia cambiado metge o prova */'
      '      end /* fi de 2*/'
      ''
      '      /* suma los contadores */'
      '      if (preu is not null) then'
      '      begin'
      '          t13=t13+:preu;'
      '          if (mes=1) then t1=t1+:preu;'
      '          else if (mes=2) then t2=t2+:preu;'
      '          else if (mes=3) then t3=t3+:preu;'
      '          else if (mes=4) then t4=t4+:preu;'
      '          else if (mes=5) then t5=t5+:preu;'
      '          else if (mes=6) then t6=t6+:preu;'
      '          else if (mes=7) then t7=t7+:preu;'
      '          else if (mes=8) then t8=t8+:preu;'
      '          else if (mes=9) then t9=t9+:preu;'
      '          else if (mes=10) then t10=t10+:preu;'
      '          else if (mes=11) then t11=t11+:preu;'
      '          else if (mes=12) then t12=t12+:preu;'
      '      end'
      ''
      '      tb13=tb13+1;'
      '      if (mes=1) then tb1=tb1+1;'
      '      else if (mes=2) then tb2=tb2+1;'
      '      else if (mes=3) then tb3=tb3+1;'
      '      else if (mes=4) then tb4=tb4+1;'
      '      else if (mes=5) then tb5=tb5+1;'
      '      else if (mes=6) then tb6=tb6+1;'
      '      else if (mes=7) then tb7=tb7+1;'
      '      else if (mes=8) then tb8=tb8+1;'
      '      else if (mes=9) then tb9=tb9+1;'
      '      else if (mes=10) then tb10=tb10+1;'
      '      else if (mes=11) then tb11=tb11+1;'
      '      else if (mes=12) then tb12=tb12+1;'
      ''
      '      if (datanew<>dataold or nilabnew<>nilabold) then'
      '      begin'
      '          tc13=tc13+1;'
      '          if (mes=1) then tc1=tc1+1;'
      '          else if (mes=2) then tc2=tc2+1;'
      '          else if (mes=3) then tc3=tc3+1;'
      '          else if (mes=4) then tc4=tc4+1;'
      '          else if (mes=5) then tc5=tc5+1;'
      '          else if (mes=6) then tc6=tc6+1;'
      '          else if (mes=7) then tc7=tc7+1;'
      '          else if (mes=8) then tc8=tc8+1;'
      '          else if (mes=9) then tc9=tc9+1;'
      '          else if (mes=10) then tc10=tc10+1;'
      '          else if (mes=11) then tc11=tc11+1;'
      '          else if (mes=12) then tc12=tc12+1;'
      '          dataold=datanew;'
      '          nilabold=nilabnew;'
      '      end'
      '  end /* 1 */'
      '  /* envia los datos ULTIMO REGISTRO */'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;'
      '  DECEMBRE=NULL;TOTAL=NULL;'
      '  DESCRIPCIO='#39'Cost'#39';'
      
        '  GENER=:T1;FEBRER=:T2;MARC=:T3;ABRIL=:T4;MAIG=:T5;JUNY=:T6;JULI' +
        'OL=:T7;AGOST=:T8;SETEMBRE=:T9;OCTUBRE=:T10;NOVEMBRE=:T11;'
      '  DECEMBRE=:T12;TOTAL=:T13;'
      ''
      
        '  if (GENER is not null) then tt1=tt1+:GENER;if (FEBRER is not n' +
        'ull) then tt2=tt2+:FEBRER; if (MARC is not null) then tt3=tt3+:M' +
        'ARC;'
      
        '  if (ABRIL is not null) then tt4=tt4+:ABRIL;if (MAIG is not nul' +
        'l) then tt5=:tt5+MAIG;if (JUNY is not null) then tt6=tt6+:JUNY;'
      
        '  if (JULIOL is not null) then tt7=tt7+:JULIOL;if (AGOST is not ' +
        'null) then tt8=tt8+:AGOST;if (SETEMBRE is not null) then tt9=tt9' +
        '+:SETEMBRE;'
      
        '  if (OCTUBRE is not null) then tt10=tt10+:OCTUBRE;if (NOVEMBRE ' +
        'is not null) then tt11=tt11+:NOVEMBRE;'
      
        '  if (DECEMBRE is not null) then tt12=tt12+:DECEMBRE;if (total i' +
        's not null) then tt13=tt13+:total;'
      
        '  GENER=f_divisa(t1,2);FEBRER=f_divisa(t2,2);MARC=f_divisa(t3,2)' +
        ';ABRIL=f_divisa(t4,2);MAIG=f_divisa(t5,2);JUNY=f_divisa(t6,2);'
      
        '  JULIOL=f_divisa(t7,2);AGOST=f_divisa(t8,2);SETEMBRE=f_divisa(t' +
        '9,2);OCTUBRE=f_divisa(t10,2);NOVEMBRE=f_divisa(t11,2);'
      '  DECEMBRE=f_divisa(t12,2);total=f_divisa(t13,2);'
      '    '
      '  metge_coordinador=metgeold;'
      '  c_prestacio=prestacioold;'
      '  c_centrefac=centrefacold;'
      '  c_unitat=unitatold;'
      '  c_unitatm=unitatmold;'
      '  TIPUS_PRESTACIO=DESCRIPCIOSCSOLD;'
      '  URGENT=URGENTOLD;'
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;'
      '  DECEMBRE=NULL;TOTAL=NULL;'
      '  DESCRIPCIO='#39'Determinacions'#39';'
      
        '  GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;JUNY=:Tb' +
        '6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOVEMBRE=:T' +
        'b11;'
      '  DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '  if (GENER is not null) then ttb1=ttb1+:GENER;if (FEBRER is not' +
        ' null) then ttb2=ttb2+:FEBRER;if (MARC is not null) then ttb3=tt' +
        'b3+:MARC;'
      
        '  if (ABRIL is not null) then ttb4=ttb4+:ABRIL;if (MAIG is not n' +
        'ull) then ttb5=:ttb5+MAIG;if (JUNY is not null) then ttb6=ttb6+:' +
        'JUNY;'
      
        '  if (JULIOL is not null) then ttb7=ttb7+:JULIOL;if (AGOST is no' +
        't null) then ttb8=ttb8+:AGOST;if (SETEMBRE is not null) then ttb' +
        '9=ttb9+:SETEMBRE;'
      
        '  if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;if (NOVEMBR' +
        'E is not null) then ttb11=ttb11+:NOVEMBRE;'
      
        '  if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;if (total' +
        ' is not null) then ttb13=ttb13+:total;'
      
        '  GENER=f_divisa(tb1,0);FEBRER=f_divisa(tb2,0);MARC=f_divisa(tb3' +
        ',0);ABRIL=f_divisa(tb4,0);MAIG=f_divisa(tb5,0);JUNY=f_divisa(tb6' +
        ',0);'
      
        '  JULIOL=f_divisa(tb7,0);AGOST=f_divisa(tb8,0);SETEMBRE=f_divisa' +
        '(tb9,0);OCTUBRE=f_divisa(tb10,0);NOVEMBRE=f_divisa(tb11,0);'
      '  DECEMBRE=f_divisa(tb12,0);'
      '  total=f_divisa(tb13,0);'
      ''
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;'
      '  DECEMBRE=NULL;TOTAL=NULL;'
      '  DESCRIPCIO='#39'Peticions'#39';'
      
        '  GENER=:Tc1;FEBRER=:Tc2;MARC=:Tc3;ABRIL=:Tc4;MAIG=:Tc5;JUNY=:Tc' +
        '6;JULIOL=:Tc7;AGOST=:Tc8;SETEMBRE=:Tc9;OCTUBRE=:Tc10;'
      '  NOVEMBRE=:Tc11;DECEMBRE=:Tc12;TOTAL=:Tc13;'
      ''
      
        '  if (GENER is not null) then ttc1=ttc1+:GENER;if (FEBRER is not' +
        ' null) then ttc2=ttc2+:FEBRER;if (MARC is not null) then ttc3=tt' +
        'c3+:MARC;'
      
        '  if (ABRIL is not null) then ttc4=ttb4+:ABRIL;if (MAIG is not n' +
        'ull) then ttc5=:ttc5+MAIG;if (JUNY is not null) then ttc6=ttc6+:' +
        'JUNY;'
      
        '  if (JULIOL is not null) then ttc7=ttc7+:JULIOL;if (AGOST is no' +
        't null) then ttc8=ttc8+:AGOST;if (SETEMBRE is not null) then ttc' +
        '9=ttc9+:SETEMBRE;'
      
        '  if (OCTUBRE is not null) then ttc10=ttc10+:OCTUBRE;if (NOVEMBR' +
        'E is not null) then ttc11=ttc11+:NOVEMBRE;'
      
        '  if (DECEMBRE is not null) then ttc12=ttc12+:DECEMBRE;if (total' +
        ' is not null) then ttc13=ttc13+:total;'
      ''
      
        '  GENER=f_divisa(tc1,0);FEBRER=f_divisa(tc2,0);MARC=f_divisa(tc3' +
        ',0);ABRIL=f_divisa(tc4,0);MAIG=f_divisa(tc5,0);JUNY=f_divisa(tc6' +
        ',0);'
      
        '  JULIOL=f_divisa(tc7,0);AGOST=f_divisa(tc8,0);SETEMBRE=f_divisa' +
        '(tc9,0);OCTUBRE=f_divisa(tc10,0);NOVEMBRE=f_divisa(tc11,0);'
      '  DECEMBRE=f_divisa(tc12,0);total=f_divisa(tc13,0);'
      ''
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;DECEMBRE=NULL;'
      '  TOTAL=NULL;'
      ''
      '  DESCRIPCIO='#39'Cost/petici'#243#39';'
      
        '  if (tc1>0) then GENER=f_divisa(t1/tc1,2);if (tc2>0) then FEBRE' +
        'R=f_divisa(t2/tc2,2);if (tc3>0) then MARC=f_divisa(t3/tc3,2);'
      
        '  if (tc4>0) then ABRIL=f_divisa(t4/tc4,2);if (tc5>0) then MAIG=' +
        'f_divisa(t5/tc5,2);if (tc6>0) then JUNY=f_divisa(t6/tc6,2);'
      
        '  if (tc7>0) then JULIOL=f_divisa(t7/tc7,2);if (tc8>0) then AGOS' +
        'T=f_divisa(t8/tc8,2);if (tc9>0) then SETEMBRE=f_divisa(t9/tc9,2)' +
        ';'
      
        '  if (tc10>0) then OCTUBRE=f_divisa(t10/tc10,2);if (tc11>0) then' +
        ' NOVEMBRE=f_divisa(t11/tc11,2);if (tc12>0) then DECEMBRE=f_divis' +
        'a(t12/tc12,2);'
      '  if (tc13>0) then total=f_divisa(t13/tc13,2);'
      ''
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;DECEMBRE=NULL;'
      
        '  T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11=0;T12=0' +
        ';t13=0;Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb1' +
        '0=0;Tb11=0;'
      
        '  Tb12=0;tb13=0;Tc1=0;Tc2=0;Tc3=0;Tc4=0;Tc5=0;Tc6=0;Tc7=0;Tc8=0;' +
        'Tc9=0;Tc10=0;Tc11=0;Tc12=0;tc13=0;'
      ''
      '  /* fin de envio del ULTIMO REGISTRO */'
      ''
      '  /* totales */'
      '  METGE_COORDINADOR='#39'TOTALS'#39';'
      '  c_prestacio='#39#39';'
      '  c_unitat='#39#39';'
      '  c_unitatm='#39#39';'
      '  descripcio='#39#39';'
      '  c_centrefac='#39#39';'
      '  TIPUS_PRESTACIO='#39#39';'
      '  URGENT='#39#39';'
      '  DESCRIPCIO='#39'Cost'#39';'
      
        '  GENER=:tt1;FEBRER=:tt2;MARC=:tt3;ABRIL=:tt4;MAIG=:tt5;JUNY=:tt' +
        '6;JULIOL=:tt7;AGOST=:tt8;SETEMBRE=:tt9;OCTUBRE=:tt10;NOVEMBRE=:t' +
        't11;DECEMBRE=:tt12;'
      '  total=:tt13;'
      
        '  GENER=f_divisa(GENER,2);FEBRER=f_divisa(FEBRER,2);MARC=f_divis' +
        'a(MARC,2);ABRIL=f_divisa(ABRIL,2);MAIG=f_divisa(MAIG,2);'
      
        '  JUNY=f_divisa(JUNY,2);JULIOL=f_divisa(JULIOL,2);AGOST=f_divisa' +
        '(AGOST,2);SETEMBRE=f_divisa(SETEMBRE,2);'
      
        '  OCTUBRE=f_divisa(OCTUBRE,2);NOVEMBRE=f_divisa(NOVEMBRE,2);DECE' +
        'MBRE=f_divisa(DECEMBRE,2);'
      '  total=f_divisa(total,2);'
      '  suspend;'
      ''
      '  DESCRIPCIO='#39'Determinacions'#39';'
      
        '  GENER=:ttb1;FEBRER=:ttb2;MARC=:ttb3;ABRIL=:ttb4;MAIG=:ttb5;JUN' +
        'Y=:ttb6;JULIOL=:ttb7;AGOST=:ttb8;SETEMBRE=:ttb9;OCTUBRE=:ttb10;N' +
        'OVEMBRE=:ttb11;'
      '  DECEMBRE=:ttb12;total=:ttb13;'
      
        '  GENER=f_divisa(GENER,0);FEBRER=f_divisa(FEBRER,0);MARC=f_divis' +
        'a(MARC,0);ABRIL=f_divisa(ABRIL,0);MAIG=f_divisa(MAIG,0);'
      
        '  JUNY=f_divisa(JUNY,0);JULIOL=f_divisa(JULIOL,0);AGOST=f_divisa' +
        '(AGOST,0);SETEMBRE=f_divisa(SETEMBRE,0);OCTUBRE=f_divisa(OCTUBRE' +
        ',0);'
      '  NOVEMBRE=f_divisa(NOVEMBRE,0);DECEMBRE=f_divisa(DECEMBRE,0);'
      '  total=f_divisa(total,0);'
      '  suspend;'
      ''
      '  DESCRIPCIO='#39'Peticions'#39';'
      
        '  GENER=:ttc1;FEBRER=:ttc2;MARC=:ttc3;ABRIL=:ttc4;MAIG=:ttc5;JUN' +
        'Y=:ttc6;JULIOL=:ttc7;AGOST=:ttc8;SETEMBRE=:ttc9;OCTUBRE=:ttc10;'
      '  NOVEMBRE=:ttc11;DECEMBRE=:ttc12;'
      '  total=:ttc13;'
      
        '  GENER=f_divisa(GENER,0); FEBRER=f_divisa(FEBRER,0); MARC=f_div' +
        'isa(MARC,0); ABRIL=f_divisa(ABRIL,0); MAIG=f_divisa(MAIG,0);'
      
        '  JUNY=f_divisa(JUNY,0); JULIOL=f_divisa(JULIOL,0); AGOST=f_divi' +
        'sa(AGOST,0); SETEMBRE=f_divisa(SETEMBRE,0); OCTUBRE=f_divisa(OCT' +
        'UBRE,0);'
      
        '  NOVEMBRE=f_divisa(NOVEMBRE,0); DECEMBRE=f_divisa(DECEMBRE,0);t' +
        'otal=f_divisa(total,0);'
      '  suspend;'
      ''
      '  DESCRIPCIO='#39'Cost/petici'#243#39';'
      
        '  if (ttc1>0) then GENER=tt1/ttc1; if (ttc2>0) then FEBRER=tt2/t' +
        'tc2; if (ttc3>0) then MARC=tt3/ttc3; if (ttc4>0) then ABRIL=tt4/' +
        'ttc4;'
      
        '  if (ttc5>0) then MAIG=tt5/ttc5; if (ttc6>0) then JUNY=tt6/ttc6' +
        '; if (ttc7>0) then JULIOL=tt7/ttc7; if (ttc8>0) then AGOST=tt8/t' +
        'tc8;'
      
        '  if (ttc9>0) then SETEMBRE=tt9/ttc9; if (ttc10>0) then OCTUBRE=' +
        'tt10/ttc10; if (ttc11>0) then NOVEMBRE=tt11/ttc11;'
      
        '  if (ttc12>0) then DECEMBRE=tt12/ttc12; if (ttc13>0) then total' +
        '=tt13/ttc13;'
      
        '  GENER=f_divisa(GENER,2); FEBRER=f_divisa(FEBRER,2); MARC=f_div' +
        'isa(MARC,2); ABRIL=f_divisa(ABRIL,2); MAIG=f_divisa(MAIG,2);'
      
        '  JUNY=f_divisa(JUNY,2); JULIOL=f_divisa(JULIOL,2); AGOST=f_divi' +
        'sa(AGOST,2); SETEMBRE=f_divisa(SETEMBRE,2); OCTUBRE=f_divisa(OCT' +
        'UBRE,2);'
      '  NOVEMBRE=f_divisa(NOVEMBRE,2); DECEMBRE=f_divisa(DECEMBRE,2);'
      '  total=f_divisa(total,2);'
      '  suspend;'
      ''
      '  /* fin de totales */'
      'END')
    Dic1 = wDataAnalit.AnaCabe
    Dic1Name = 'anacabe'
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
    Left = 192
    Top = 492
  end
  object ecos_periode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ecos_periode'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE,DATAFI DATE)'
      'RETURNS ('
      '  METGE_COORDINADOR VARCHAR(20),'
      '  C_PRESTACIO VARCHAR(4),'
      '  TIPUS_PRESTACIO VARCHAR(40),'
      '  URGENT CHAR(1),'
      '  C_CENTREFAC VARCHAR(2),'
      '  C_UNITAT VARCHAR(40),'
      '  C_UNITATM VARCHAR(30),'
      '  GENER INTEGER,'
      '  FEBRER INTEGER,'
      '  MARC INTEGER,'
      '  ABRIL INTEGER,'
      '  MAIG INTEGER,'
      '  JUNY INTEGER,'
      '  JULIOL INTEGER,'
      '  AGOST INTEGER,'
      '  SETEMBRE INTEGER,'
      '  OCTUBRE INTEGER,'
      '  NOVEMBRE INTEGER,'
      '  DECEMBRE INTEGER,'
      '  TOTAL INTEGER'
      ') AS'
      'declare variable mes integer;'
      'declare variable metgenew varchar(20);'
      'declare variable metgeold varchar(20);'
      'declare variable prestacionew varchar(4);'
      'declare variable prestacioold varchar(4);'
      'declare variable centrefacnew varchar(2);'
      'declare variable centrefacold varchar(2);'
      'declare variable unitatnew varchar(40);'
      'declare variable unitatold varchar(40);'
      'declare variable unitatmnew varchar(30);'
      'declare variable unitatmold varchar(30);'
      'DECLARE VARIABLE TPRESTANEW SMALLINT;'
      'DECLARE VARIABLE TPRESTAOLD SMALLINT;'
      'DECLARE VARIABLE DESCRIPCIOSCSNEW CHAR(40);'
      'DECLARE VARIABLE DESCRIPCIOSCSOLD CHAR(40);'
      'DECLARE VARIABLE URGENTNEW CHAR(1);'
      'DECLARE VARIABLE URGENTOLD CHAR(1);'
      'declare variable tb1 integer;'
      'declare variable tb2 integer;'
      'declare variable tb3 integer;'
      'declare variable tb4 integer;'
      'declare variable tb5 integer;'
      'declare variable tb6 integer;'
      'declare variable tb7 integer;'
      'declare variable tb8 integer;'
      'declare variable tb9 integer;'
      'declare variable tb10 integer;'
      'declare variable tb11 integer;'
      'declare variable tb12 integer;'
      'declare variable tb13 integer;'
      'declare variable ttb1 integer;'
      'declare variable ttb2 integer;'
      'declare variable ttb3 integer;'
      'declare variable ttb4 integer;'
      'declare variable ttb5 integer;'
      'declare variable ttb6 integer;'
      'declare variable ttb7 integer;'
      'declare variable ttb8 integer;'
      'declare variable ttb9 integer;'
      'declare variable ttb10 integer;'
      'declare variable ttb11 integer;'
      'declare variable ttb12 integer;'
      'declare variable ttb13 integer;'
      'declare variable primer smallint;'
      'begin'
      ''
      
        '  GENER=0;FEBRER=0;MARC=0;ABRIL=0;MAIG=0;JUNY=0;JULIOL=0;AGOST=0' +
        ';SETEMBRE=0;OCTUBRE=0;NOVEMBRE=0;DECEMBRE=0;'
      
        '  Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb10=0;T' +
        'b11=0;Tb12=0;tb13=0;TTb1=0;TTb2=0;TTb3=0;TTb4=0;TTb5=0;TTb6=0;TT' +
        'b7=0;TTb8=0;'
      '  TTb9=0;TTb10=0;TTb11=0;TTb12=0;tTb13=0;'
      '  primer=1;'
      ''
      
        '  for select me.metge,t.c_prestacio,PR.TIPUS,PR.DESCRIPCIOSCS,E.' +
        'URGENT,t.c_centrefac,cc.n_codi,um.n_unitatm,f_month(e.data_prova' +
        ')'
      '  from ecouro e'
      '  inner join tractaments t on e.c_tractament=t.c_tractament'
      '  inner join metges me on T.C_COORDINADOR=me.codi'
      '  inner join filiacio f on e.c_historia=f.num_hist'
      
        '  left join codicamps cc on f.unitat=cc.c_codi and cc.tipuscodi=' +
        #39'UNITATS'#39
      '  left join unitatm um on f.c_unitatmedica=um.c_unitatm'
      '  LEFT JOIN PRESTACION PR ON T.C_PRESTACIO = PR.C_PRESTACIO'
      
        '  where e.data_prova BETWEEN :DATAINI AND :DATAFI and e.c_tipus=' +
        #39'ECOS'#39
      
        '  order by me.metge,e.c_tipus,t.c_prestacio,E.URGENT,t.c_centref' +
        'ac,cc.n_codi,um.n_unitatm,e.data_prova'
      
        '  into :metgenew,:prestacionew,:TPRESTANEW,:DESCRIPCIOSCSNEW,:UR' +
        'GENTNEW,:centrefacnew,:unitatnew,:unitatmnew,:mes'
      '  do begin /* 1 */'
      '      if (primer=1) then'
      '      begin'
      '          primer=0;'
      '          metgeold=metgenew;'
      '          prestacioold=prestacionew;'
      '          centrefacold=centrefacnew;'
      '          unitatold=unitatnew;'
      '          unitatmold=unitatmnew;'
      '          TPRESTAOLD=TPRESTANEW;'
      '          DESCRIPCIOSCSOLD=DESCRIPCIOSCSNEW;'
      '          URGENTOLD=URGENTNEW;'
      '      end'
      ''
      
        '      if (metgenew<>metgeold   or prestacionew<>prestacioold or ' +
        'centrefacnew<>centrefacold'
      
        '      or unitatnew<>unitatold or unitatmnew<>unitatmold OR URGEN' +
        'TOLD<>URGENTNEW) then'
      '      begin /* 2 */'
      '          /* si a cambiado */'
      '          /* envia los datos actuales sumados */'
      ''
      
        '          GENER=0;FEBRER=0;MARC=0;ABRIL=0;MAIG=0;JUNY=0;JULIOL=0' +
        ';AGOST=0;SETEMBRE=0;OCTUBRE=0;NOVEMBRE=0;DECEMBRE=0;'
      
        '          GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;' +
        'JUNY=:Tb6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOV' +
        'EMBRE=:Tb11;'
      '          DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '          if (GENER is not null) then ttb1=ttb1+:GENER;if (FEBRE' +
        'R is not null) then ttb2=ttb2+:FEBRER;if (MARC is not null) then' +
        ' ttb3=ttb3+:MARC;'
      
        '          if (ABRIL is not null) then ttb4=ttb4+:ABRIL;if (MAIG ' +
        'is not null) then ttb5=:ttb5+MAIG;if (JUNY is not null) then ttb' +
        '6=ttb6+:JUNY;'
      
        '          if (JULIOL is not null) then ttb7=ttb7+:JULIOL;if (AGO' +
        'ST is not null) then ttb8=ttb8+:AGOST;if (SETEMBRE is not null) ' +
        'then ttb9=ttb9+:SETEMBRE;'
      
        '          if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;if ' +
        '(NOVEMBRE is not null) then ttb11=ttb11+:NOVEMBRE;'
      
        '          if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;i' +
        'f (total is not null) then ttb13=ttb13+:total;'
      
        '/*          GENER=tb1;FEBRER=tb2;MARC=tb3;ABRIL=tb4;MAIG=tb5;JUN' +
        'Y=tb6;JULIOL=tb7;AGOST=tb8;SETEMBRE=tb9;OCTUBRE=tb10;NOVEMBRE=tb' +
        '11;'
      '          DECEMBRE=tb12;total=tb13; est'#224' repetit!!*/'
      '          metge_coordinador=metgeold;'
      '          c_prestacio=prestacioold;'
      '          c_centrefac=centrefacold;'
      '          c_unitat=unitatold;'
      '          c_unitatm=unitatmold;'
      '          TIPUS_PRESTACIO=DESCRIPCIOSCSOLD;'
      '          URGENT=URGENTOLD;'
      '          suspend;'
      ''
      
        '          GENER=0;FEBRER=0;MARC=0;ABRIL=0;MAIG=0;JUNY=0;JULIOL=0' +
        ';AGOST=0;SETEMBRE=0;OCTUBRE=0;NOVEMBRE=0;DECEMBRE=0;'
      
        '          Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;' +
        'Tb10=0;Tb11=0;Tb12=0;tb13=0;'
      ''
      '          /* fin de envio del actual */'
      '          metgeold=metgenew;'
      '          prestacioold=prestacionew;'
      '          centrefacold=centrefacnew;'
      '          unitatold=unitatnew;'
      '          unitatmold=unitatmnew;'
      '          TPRESTAOLD=TPRESTANEW;'
      '          DESCRIPCIOSCSOLD=DESCRIPCIOSCSNEW;'
      '          URGENTOLD=URGENTNEW;'
      '      end /* 2    fin  sia cambiado metge o prova */'
      ''
      '      /* suma los contadores */'
      ''
      '      tb13=tb13+1;'
      '      if (mes=1) then tb1=tb1+1;'
      '      else if (mes=2) then tb2=tb2+1;'
      '      else if (mes=3) then tb3=tb3+1;'
      '      else if (mes=4) then tb4=tb4+1;'
      '      else if (mes=5) then tb5=tb5+1;'
      '      else if (mes=6) then tb6=tb6+1;'
      '      else if (mes=7) then tb7=tb7+1;'
      '      else if (mes=8) then tb8=tb8+1;'
      '      else if (mes=9) then tb9=tb9+1;'
      '      else if (mes=10) then tb10=tb10+1;'
      '      else if (mes=11) then tb11=tb11+1;'
      '      else if (mes=12) then tb12=tb12+1;'
      '  end /* 1 */'
      ''
      '  /* envia los datos ULTIMO REGISTRO */'
      
        '  GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;JUNY=:Tb' +
        '6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOVEMBRE=:T' +
        'b11;'
      '  DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '  if (GENER is not null) then ttb1=ttb1+:GENER;if (FEBRER is not' +
        ' null) then ttb2=ttb2+:FEBRER;if (MARC is not null) then ttb3=tt' +
        'b3+:MARC;'
      
        '  if (ABRIL is not null) then ttb4=ttb4+:ABRIL;if (MAIG is not n' +
        'ull) then ttb5=:ttb5+MAIG;if (JUNY is not null) then ttb6=ttb6+:' +
        'JUNY;'
      
        '  if (JULIOL is not null) then ttb7=ttb7+:JULIOL;if (AGOST is no' +
        't null) then ttb8=ttb8+:AGOST;if (SETEMBRE is not null) then ttb' +
        '9=ttb9+:SETEMBRE;'
      
        '  if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;if (NOVEMBR' +
        'E is not null) then ttb11=ttb11+:NOVEMBRE;'
      
        '  if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;if (total' +
        ' is not null) then ttb13=ttb13+:total;'
      '  '
      '  metge_coordinador=metgeold;'
      '  c_prestacio=prestacioold;'
      '  c_centrefac=centrefacold;'
      '  c_unitat=unitatold;'
      '  c_unitatm=unitatmold;'
      '  TIPUS_PRESTACIO=DESCRIPCIOSCSOLD;'
      '  URGENT=URGENTOLD;'
      '  suspend;'
      ''
      
        '  GENER=0;FEBRER=0;MARC=0;ABRIL=0;MAIG=0;JUNY=0;JULIOL=0;AGOST=0' +
        ';SETEMBRE=0;OCTUBRE=0;NOVEMBRE=0;DECEMBRE=0;'
      
        '  Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb10=0;T' +
        'b11=0;Tb12=0;tb13=0;'
      '  /* fin de envio del ULTIMO REGISTRO */'
      ''
      '  /* totales */'
      '  METGE_COORDINADOR='#39'T O T A L S'#39';'
      '  C_PRESTACIO='#39#39';'
      '  C_CENTREFAC='#39#39';'
      '  C_UNITAT='#39#39';'
      '  C_UNITATM='#39#39';'
      '  TIPUS_PRESTACIO='#39#39';'
      '  URGENT='#39#39';'
      ''
      
        '  GENER=:ttb1;FEBRER=:ttb2;MARC=:ttb3;ABRIL=:ttb4;MAIG=:ttb5;JUN' +
        'Y=:ttb6;JULIOL=:ttb7;AGOST=:ttb8;SETEMBRE=:ttb9;OCTUBRE=:ttb10;N' +
        'OVEMBRE=:ttb11;'
      '  DECEMBRE=:ttb12;total=:ttb13;'
      ''
      '  suspend;'
      ''
      '  /* fin totales */'
      'END')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'intercon'
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
    Left = 264
    Top = 492
  end
  object uros_periode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'uros_periode'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE,DATAFI DATE)'
      'RETURNS ('
      '  METGE_COORDINADOR VARCHAR(20),'
      '  C_PRESTACIO VARCHAR(4),'
      '  TIPUS_PRESTACIO VARCHAR(40),'
      '  URGENT CHAR(1),'
      '  C_CENTREFAC VARCHAR(2),'
      '  C_UNITAT VARCHAR(40),'
      '  C_UNITATM VARCHAR(30),'
      '  GENER INTEGER,'
      '  FEBRER INTEGER,'
      '  MARC INTEGER,'
      '  ABRIL INTEGER,'
      '  MAIG INTEGER,'
      '  JUNY INTEGER,'
      '  JULIOL INTEGER,'
      '  AGOST INTEGER,'
      '  SETEMBRE INTEGER,'
      '  OCTUBRE INTEGER,'
      '  NOVEMBRE INTEGER,'
      '  DECEMBRE INTEGER,'
      '  TOTAL INTEGER'
      ') AS'
      'declare variable mes integer;'
      'declare variable metgenew varchar(20);'
      'declare variable metgeold varchar(20);'
      'declare variable prestacionew varchar(4);'
      'declare variable prestacioold varchar(4);'
      'declare variable centrefacnew varchar(2);'
      'declare variable centrefacold varchar(2);'
      'declare variable unitatnew varchar(40);'
      'declare variable unitatold varchar(40);'
      'declare variable unitatmnew varchar(30);'
      'declare variable unitatmold varchar(30);'
      'DECLARE VARIABLE TPRESTANEW SMALLINT;'
      'DECLARE VARIABLE TPRESTAOLD SMALLINT;'
      'DECLARE VARIABLE DESCRIPCIOSCSNEW CHAR(40);'
      'DECLARE VARIABLE DESCRIPCIOSCSOLD CHAR(40);'
      'DECLARE VARIABLE URGENTNEW CHAR(1);'
      'DECLARE VARIABLE URGENTOLD CHAR(1);'
      'declare variable tb1 integer;'
      'declare variable tb2 integer;'
      'declare variable tb3 integer;'
      'declare variable tb4 integer;'
      'declare variable tb5 integer;'
      'declare variable tb6 integer;'
      'declare variable tb7 integer;'
      'declare variable tb8 integer;'
      'declare variable tb9 integer;'
      'declare variable tb10 integer;'
      'declare variable tb11 integer;'
      'declare variable tb12 integer;'
      'declare variable tb13 integer;'
      'declare variable ttb1 integer;'
      'declare variable ttb2 integer;'
      'declare variable ttb3 integer;'
      'declare variable ttb4 integer;'
      'declare variable ttb5 integer;'
      'declare variable ttb6 integer;'
      'declare variable ttb7 integer;'
      'declare variable ttb8 integer;'
      'declare variable ttb9 integer;'
      'declare variable ttb10 integer;'
      'declare variable ttb11 integer;'
      'declare variable ttb12 integer;'
      'declare variable ttb13 integer;'
      'declare variable primer smallint;'
      'begin'
      ''
      
        '  GENER=0;FEBRER=0;MARC=0;ABRIL=0;MAIG=0;JUNY=0;JULIOL=0;AGOST=0' +
        ';SETEMBRE=0;OCTUBRE=0;NOVEMBRE=0;DECEMBRE=0;'
      
        '  Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb10=0;T' +
        'b11=0;Tb12=0;tb13=0;TTb1=0;TTb2=0;TTb3=0;TTb4=0;TTb5=0;TTb6=0;TT' +
        'b7=0;TTb8=0;'
      '  TTb9=0;TTb10=0;TTb11=0;TTb12=0;tTb13=0;'
      '  primer=1;'
      ''
      
        '  for select me.metge,t.c_prestacio,PR.TIPUS,PR.DESCRIPCIOSCS,E.' +
        'URGENT,t.c_centrefac,cc.n_codi,um.n_unitatm,f_month(e.data_prova' +
        ')'
      '  from ecouro e'
      '  inner join tractaments t on e.c_tractament=t.c_tractament'
      '  inner join metges me on T.C_COORDINADOR=me.codi'
      '  inner join filiacio f on e.c_historia=f.num_hist'
      
        '  left join codicamps cc on f.unitat=cc.c_codi and cc.tipuscodi=' +
        #39'UNITATS'#39
      '  left join unitatm um on f.c_unitatmedica=um.c_unitatm'
      '  LEFT JOIN PRESTACION PR ON T.C_PRESTACIO = PR.C_PRESTACIO'
      
        '  where e.data_prova BETWEEN :DATAINI AND :DATAFI and e.c_tipus=' +
        #39'UROS'#39
      
        '  order by me.metge,e.c_tipus,t.c_prestacio,E.URGENT,t.c_centref' +
        'ac,cc.n_codi,um.n_unitatm,e.data_prova'
      
        '  into :metgenew,:prestacionew,:TPRESTANEW,:DESCRIPCIOSCSNEW,:UR' +
        'GENTNEW,:centrefacnew,:unitatnew,:unitatmnew,:mes'
      '  do begin /* 1 */'
      '      if (primer=1) then'
      '      begin'
      '          primer=0;'
      '          metgeold=metgenew;'
      '          prestacioold=prestacionew;'
      '          centrefacold=centrefacnew;'
      '          unitatold=unitatnew;'
      '          unitatmold=unitatmnew;'
      '          TPRESTAOLD=TPRESTANEW;'
      '          DESCRIPCIOSCSOLD=DESCRIPCIOSCSNEW;'
      '          URGENTOLD=URGENTNEW;'
      '      end'
      ''
      
        '      if (metgenew<>metgeold   or prestacionew<>prestacioold or ' +
        'centrefacnew<>centrefacold'
      
        '      or unitatnew<>unitatold or unitatmnew<>unitatmold OR URGEN' +
        'TOLD<>URGENTNEW) then'
      '      begin /* 2 */'
      '          /* si a cambiado */'
      '          /* envia los datos actuales sumados */'
      ''
      
        '          GENER=0;FEBRER=0;MARC=0;ABRIL=0;MAIG=0;JUNY=0;JULIOL=0' +
        ';AGOST=0;SETEMBRE=0;OCTUBRE=0;NOVEMBRE=0;DECEMBRE=0;'
      
        '          GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;' +
        'JUNY=:Tb6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOV' +
        'EMBRE=:Tb11;'
      '          DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '          if (GENER is not null) then ttb1=ttb1+:GENER;if (FEBRE' +
        'R is not null) then ttb2=ttb2+:FEBRER;if (MARC is not null) then' +
        ' ttb3=ttb3+:MARC;'
      
        '          if (ABRIL is not null) then ttb4=ttb4+:ABRIL;if (MAIG ' +
        'is not null) then ttb5=:ttb5+MAIG;if (JUNY is not null) then ttb' +
        '6=ttb6+:JUNY;'
      
        '          if (JULIOL is not null) then ttb7=ttb7+:JULIOL;if (AGO' +
        'ST is not null) then ttb8=ttb8+:AGOST;if (SETEMBRE is not null) ' +
        'then ttb9=ttb9+:SETEMBRE;'
      
        '          if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;if ' +
        '(NOVEMBRE is not null) then ttb11=ttb11+:NOVEMBRE;'
      
        '          if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;i' +
        'f (total is not null) then ttb13=ttb13+:total;'
      
        '/*          GENER=tb1;FEBRER=tb2;MARC=tb3;ABRIL=tb4;MAIG=tb5;JUN' +
        'Y=tb6;JULIOL=tb7;AGOST=tb8;SETEMBRE=tb9;OCTUBRE=tb10;NOVEMBRE=tb' +
        '11;'
      '          DECEMBRE=tb12;total=tb13; est'#224' repetit!!*/'
      '          metge_coordinador=metgeold;'
      '          c_prestacio=prestacioold;'
      '          c_centrefac=centrefacold;'
      '          c_unitat=unitatold;'
      '          c_unitatm=unitatmold;'
      '          TIPUS_PRESTACIO=DESCRIPCIOSCSOLD;'
      '          URGENT=URGENTOLD;'
      '          suspend;'
      ''
      
        '          GENER=0;FEBRER=0;MARC=0;ABRIL=0;MAIG=0;JUNY=0;JULIOL=0' +
        ';AGOST=0;SETEMBRE=0;OCTUBRE=0;NOVEMBRE=0;DECEMBRE=0;'
      
        '          Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;' +
        'Tb10=0;Tb11=0;Tb12=0;tb13=0;'
      ''
      '          /* fin de envio del actual */'
      '          metgeold=metgenew;'
      '          prestacioold=prestacionew;'
      '          centrefacold=centrefacnew;'
      '          unitatold=unitatnew;'
      '          unitatmold=unitatmnew;'
      '          TPRESTAOLD=TPRESTANEW;'
      '          DESCRIPCIOSCSOLD=DESCRIPCIOSCSNEW;'
      '          URGENTOLD=URGENTNEW;'
      '      end /* 2    fin  sia cambiado metge o prova */'
      ''
      '      /* suma los contadores */'
      ''
      '      tb13=tb13+1;'
      '      if (mes=1) then tb1=tb1+1;'
      '      else if (mes=2) then tb2=tb2+1;'
      '      else if (mes=3) then tb3=tb3+1;'
      '      else if (mes=4) then tb4=tb4+1;'
      '      else if (mes=5) then tb5=tb5+1;'
      '      else if (mes=6) then tb6=tb6+1;'
      '      else if (mes=7) then tb7=tb7+1;'
      '      else if (mes=8) then tb8=tb8+1;'
      '      else if (mes=9) then tb9=tb9+1;'
      '      else if (mes=10) then tb10=tb10+1;'
      '      else if (mes=11) then tb11=tb11+1;'
      '      else if (mes=12) then tb12=tb12+1;'
      '  end /* 1 */'
      ''
      '  /* envia los datos ULTIMO REGISTRO */'
      
        '  GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;JUNY=:Tb' +
        '6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOVEMBRE=:T' +
        'b11;'
      '  DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '  if (GENER is not null) then ttb1=ttb1+:GENER;if (FEBRER is not' +
        ' null) then ttb2=ttb2+:FEBRER;if (MARC is not null) then ttb3=tt' +
        'b3+:MARC;'
      
        '  if (ABRIL is not null) then ttb4=ttb4+:ABRIL;if (MAIG is not n' +
        'ull) then ttb5=:ttb5+MAIG;if (JUNY is not null) then ttb6=ttb6+:' +
        'JUNY;'
      
        '  if (JULIOL is not null) then ttb7=ttb7+:JULIOL;if (AGOST is no' +
        't null) then ttb8=ttb8+:AGOST;if (SETEMBRE is not null) then ttb' +
        '9=ttb9+:SETEMBRE;'
      
        '  if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;if (NOVEMBR' +
        'E is not null) then ttb11=ttb11+:NOVEMBRE;'
      
        '  if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;if (total' +
        ' is not null) then ttb13=ttb13+:total;'
      '  '
      '  metge_coordinador=metgeold;'
      '  c_prestacio=prestacioold;'
      '  c_centrefac=centrefacold;'
      '  c_unitat=unitatold;'
      '  c_unitatm=unitatmold;'
      '  TIPUS_PRESTACIO=DESCRIPCIOSCSOLD;'
      '  URGENT=URGENTOLD;'
      '  suspend;'
      ''
      
        '  GENER=0;FEBRER=0;MARC=0;ABRIL=0;MAIG=0;JUNY=0;JULIOL=0;AGOST=0' +
        ';SETEMBRE=0;OCTUBRE=0;NOVEMBRE=0;DECEMBRE=0;'
      
        '  Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb10=0;T' +
        'b11=0;Tb12=0;tb13=0;'
      '  /* fin de envio del ULTIMO REGISTRO */'
      ''
      '  /* totales */'
      '  METGE_COORDINADOR='#39'T O T A L S'#39';'
      '  C_PRESTACIO='#39#39';'
      '  C_CENTREFAC='#39#39';'
      '  C_UNITAT='#39#39';'
      '  C_UNITATM='#39#39';'
      '  TIPUS_PRESTACIO='#39#39';'
      '  URGENT='#39#39';'
      ''
      
        '  GENER=:ttb1;FEBRER=:ttb2;MARC=:ttb3;ABRIL=:ttb4;MAIG=:ttb5;JUN' +
        'Y=:ttb6;JULIOL=:ttb7;AGOST=:ttb8;SETEMBRE=:ttb9;OCTUBRE=:ttb10;N' +
        'OVEMBRE=:ttb11;'
      '  DECEMBRE=:ttb12;total=:ttb13;'
      ''
      '  suspend;'
      ''
      '  /* fin totales */'
      'END')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'intercon'
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
    Left = 344
    Top = 492
  end
  object interv_periode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'interv_periode'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS ('
      '         C_HISTORIA INTEGER,'
      '         PRESTACIO VARCHAR(4),'
      '         DATA_INTERVENCIO DATE,'
      '         HORA_INTERVENCIO  NUMERIC (15,3),'
      '         ESTAT_INTERVENCIO VARCHAR(40),'
      '         METGE_COORDINADOR VARCHAR(5),'
      '         METGE_PREPARA VARCHAR(5),'
      '         CIRURGIA VARCHAR(5),'
      '         ANESTESIOLEG VARCHAR(5),'
      
        '         ANESTESIOLEG_PREVIST VARCHAR(5),              /* no s'#39'e' +
        'ntra a partir de la integraci'#243' al curs cl'#237'nic */'
      '         METGE_FI VARCHAR(5),'
      '         DIAGNOSTIC VARCHAR(80),'
      '         PREOPERATORI CHAR(1),'
      '/*         ULTIM_PREOPERATORI VARCHAR(40) */'
      '         DATA_AUTORITZACIO DATE,'
      '         DIES_DES_DEL_PREOPERATORI INTEGER,'
      '         DATA_SORTIDA_QUIROFAN DATE,'
      '         HORA_SORTIDA_QUIROFAN NUMERIC(15, 3),'
      '         DATA_FI_INFER         DATE,'
      '         HORA_FI_INFER         NUMERIC(15, 3),'
      '         DATA_FI_METGE         DATE,'
      '         HORA_FI_METGE         NUMERIC(15, 3),'
      '         DATA_COMPLICACIONS_ANESTESIA DATE,'
      '         HORA_COMPLICACIONS_ANESTESIA NUMERIC(15, 3),'
      '         DATA_ANOTA_CURS_ANESTESIOLEG DATE,'
      '         HORA_ANOTA_CURS_ANESTESIOLEG NUMERIC(15, 3)'
      ')'
      'AS'
      '  DECLARE VARIABLE CONTA_PREOP INTEGER;'
      '  DECLARE VARIABLE INTERV      INTEGER;'
      '  DECLARE VARIABLE TRACTAMENT  INTEGER;'
      'BEGIN'
      '      '
      
        '  FOR SELECT t.c_historia, t.c_prestacio, b.entrada, F_SOLOHORA(' +
        'B.ENTRADA), cc.n_codi, t.c_coordinador, b.c_metge_prepara, b.c_c' +
        'irurgia,'
      
        '             b.c_anestesioleg, b.c_metge_fi, b.n_diag_op, B.TEMP' +
        'SD, F_SOLOHORA(B.TEMPSD), B.DATA_INFER_FI, F_SOLOHORA(B.DATA_INF' +
        'ER_FI),'
      
        '             B.DATA_METGE_FI, F_SOLOHORA(B.DATA_METGE_FI), B.C_I' +
        'NTERV, B.C_TRACTAMENT  /*, B.C_ANESTESIOLEG_PREV */'
      '      FROM   bquirurgic b'
      '      JOIN   tractaments t on b.c_tractament = t.c_tractament'
      
        '      JOIN   codicamps cc on b.estat = cc.c_codi and cc.tipuscod' +
        'i = '#39'ESTATQUIROFAN'#39
      
        '      WHERE  b.entrada between :DATAINI and :DATAFI || '#39' 23:59:5' +
        '9'#39
      
        '      INTO  :C_HISTORIA, :PRESTACIO, :DATA_INTERVENCIO, :HORA_IN' +
        'TERVENCIO, :ESTAT_INTERVENCIO, :METGE_COORDINADOR, :METGE_PREPAR' +
        'A, :CIRURGIA,'
      
        '            :ANESTESIOLEG, :METGE_FI,:DIAGNOSTIC, :DATA_SORTIDA_' +
        'QUIROFAN, :HORA_SORTIDA_QUIROFAN, :DATA_FI_INFER, :HORA_FI_INFER' +
        ','
      
        '            :DATA_FI_METGE, :HORA_FI_METGE, :INTERV, :TRACTAMENT' +
        '  /*, :ANESTESIOLEG_PREVIST */'
      '  DO BEGIN'
      '/*'
      '      SELECT COUNT(*) FROM PREOPERATORI'
      '      WHERE C_HISTORIA = :C_HISTORIA'
      '      INTO :CONTA_PREOP;'
      '      '
      '      IF (CONTA_PREOP = 0) THEN'
      '      BEGIN'
      '            PREOPERATORI = '#39'N'#39';'
      '            ULTIM_PREOPERATORI = '#39#39';'
      '      END;'
      '      '
      '      IF (CONTA_PREOP <> 0 ) THEN'
      '      BEGIN'
      '            PREOPERATORI = '#39'S'#39';'
      ''
      '            SELECT CC.N_CODI FROM PREOPERATORI P'
      
        '            JOIN CODICAMPS CC ON P.ESTAT_INTERV = CC.C_CODI AND ' +
        'CC.TIPUSCODI = '#39'ESTATPREOPERA'#39
      '            WHERE P.C_HISTORIA = :C_HISTORIA'
      '            ORDER BY P.ID DESC'
      '            ROWS 1'
      '            INTO :ULTIM_PREOPERATORI;'
      '      END;'
      '*/'
      '      DATA_AUTORITZACIO = NULL;'
      ''
      '      SELECT DATA_AUTORITZACIO'
      '      FROM   PREOPERATORI'
      '      WHERE  C_HISTORIA = :C_HISTORIA'
      '      AND    DATA_AUTORITZACIO < :DATA_INTERVENCIO'
      '      ORDER  BY ID DESC'
      '      ROWS   1'
      '      INTO  :DATA_AUTORITZACIO;'
      ''
      ''
      '      IF (DATA_AUTORITZACIO IS NULL) THEN'
      '      BEGIN'
      '            DIES_DES_DEL_PREOPERATORI = NULL;'
      '            PREOPERATORI = '#39'N'#39';'
      '      END;'
      '      ELSE BEGIN'
      
        '            DIES_DES_DEL_PREOPERATORI = F_TRUNCAR(DATA_INTERVENC' +
        'IO - DATA_AUTORITZACIO);'
      
        '            IF (DIES_DES_DEL_PREOPERATORI > 90) THEN PREOPERATOR' +
        'I = '#39'*'#39';'
      
        '                                                ELSE PREOPERATOR' +
        'I = '#39'S'#39';'
      '      END;'
      ''
      
        '      DATA_COMPLICACIONS_ANESTESIA = NULL; DATA_ANOTA_CURS_ANEST' +
        'ESIOLEG = NULL;'
      
        '      HORA_COMPLICACIONS_ANESTESIA = NULL; HORA_ANOTA_CURS_ANEST' +
        'ESIOLEG = NULL;'
      '      '
      '      SELECT DATA, F_SOLOHORA(DATA) FROM BQANESTESIA'
      '      WHERE C_INTERV = :INTERV'
      
        '      INTO :DATA_COMPLICACIONS_ANESTESIA, :HORA_COMPLICACIONS_AN' +
        'ESTESIA;'
      '      '
      
        '      IF (HORA_COMPLICACIONS_ANESTESIA = 0) THEN HORA_COMPLICACI' +
        'ONS_ANESTESIA = NULL;'
      ''
      '      SELECT DATA, F_SOLOHORA(DATA) FROM HISTORIA H'
      '      JOIN METGES M ON H.C_USUARI = M.CODI'
      '      WHERE C_TRACTAMENT = :TRACTAMENT'
      '      AND DATA >= :DATA_INTERVENCIO'
      '      AND M.C_ESPECIAL = '#39'35'#39
      '      ORDER BY DATA'
      '      ROWS 1'
      
        '      INTO :DATA_ANOTA_CURS_ANESTESIOLEG, :HORA_ANOTA_CURS_ANEST' +
        'ESIOLEG;'
      '      '
      
        '      IF (HORA_ANOTA_CURS_ANESTESIOLEG = 0) THEN HORA_ANOTA_CURS' +
        '_ANESTESIOLEG = NULL;'
      ''
      '      SUSPEND;'
      '      '
      '  END;'
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
    Left = 416
    Top = 492
  end
  object sc_reh: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'sc_reh'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         PRESTACIO VARCHAR(4),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         ANOTADOR VARCHAR(20),'
      '         AREA_1AV CHAR(1),'
      '         AREA_RESULTAT CHAR(1),'
      '         TIPUS_ANOTACIO VARCHAR(5),'
      '         LINIES CHAR(1))'
      'AS'
      ' DECLARE VARIABLE OBJECTIU  INTEGER;'
      ' DECLARE VARIABLE COMENT1   INTEGER; /* 1'#170' VALORACI'#211' PER '#192'REA */'
      ' DECLARE VARIABLE COMENT2   INTEGER; /* RESULTAT PER '#192'REA */'
      ' DECLARE VARIABLE ID        INTEGER;'
      ' DECLARE VARIABLE COMPTALIN INTEGER;'
      'BEGIN'
      '      '
      
        '  FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.DATA' +
        '_INGRES, T.DATA_ALTA, M.METGE, C.C_OBJECTIU, C.TIPUS, F_STRINGLE' +
        'NGTH(OA.COMENTARI1),'
      '             F_STRINGLENGTH(OA.COMENTARI2), C.ID'
      '  FROM TRACTAMENTS T'
      
        '  JOIN OBJPRESTA P ON T.C_TRACTAMENT = P.C_TRACTAMENT AND P.TIPU' +
        'S <> 2'
      '  JOIN OBJCAP C ON P.C_OBJECTIU = C.C_OBJECTIU'
      
        '  JOIN METGES M ON C.C_METGE = M.CODI AND M.C_GRUP IN('#39'FI'#39','#39'TO'#39',' +
        #39'EF'#39')'
      
        '  LEFT OUTER JOIN OBJAREAS OA ON C.C_OBJECTIU = OA.C_OBJECTIU an' +
        'd OA.C_AREA = '#39'REH'#39
      '  WHERE T.DATA_ALTA BETWEEN :DATAINI AND :DATAFI'
      '  ORDER BY T.C_TRACTAMENT, C.TIPUS'
      
        '  INTO :TRACTAMENT,:HISTORIA,:PRESTACIO,:DATA_INGRES,:DATA_ALTA,' +
        ':ANOTADOR,:OBJECTIU,:TIPUS_ANOTACIO,:COMENT1,:COMENT2,:ID'
      '  DO BEGIN'
      '    IF (COMENT1 > 0) THEN AREA_1AV = '#39'S'#39'; ELSE AREA_1AV = '#39'N'#39';'
      
        '    IF (COMENT2 > 0) THEN AREA_RESULTAT = '#39'S'#39'; ELSE AREA_RESULTA' +
        'T = '#39'N'#39';'
      '  '
      '    SELECT COUNT(*) FROM OBJLIN'
      '    WHERE ID = :ID'
      '    INTO COMPTALIN;'
      '    '
      '    IF (COMPTALIN > 0) THEN LINIES = '#39'S'#39'; ELSE LINIES = '#39'N'#39';'
      ''
      '    SUSPEND;'
      '  END;'
      'END')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'intercon'
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
    Left = 32
    Top = 548
  end
  object seguiment_reh: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'seguiment_reh'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         TE_ANOTACIO CHAR(1),'
      '         ANOTADOR VARCHAR(20),'
      '         DATA_ANOTACIO DATE'
      '         )'
      'AS'
      'BEGIN'
      ''
      '  FOR SELECT C_HISTORIA, DATA_INGRES'
      '  FROM TRACTAMENTS'
      '  WHERE C_PRESTACIO = '#39'2003'#39
      '  AND DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '  ORDER BY C_HISTORIA, DATA_INGRES'
      '  INTO :HISTORIA, :DATA_INGRES'
      '  DO BEGIN'
      ''
      '    /* INICIALITZEM VARIABLES */'
      '    TE_ANOTACIO = '#39'N'#39';'
      '    ANOTADOR = NULL;'
      '    DATA_ANOTACIO = NULL;'
      ''
      '    FOR SELECT M.METGE, S.DATA'
      '    FROM SEGUIMENTINF S'
      
        '    JOIN METGES M ON S.C_USUARI = M.CODI AND M.C_GRUP IN('#39'FI'#39','#39'T' +
        'O'#39','#39'EF'#39')'
      '    AND C_HISTORIA = :HISTORIA'
      '    AND DATA BETWEEN (:DATA_INGRES -7) AND :DATA_INGRES'
      '    INTO ANOTADOR, DATA_ANOTACIO'
      '    DO BEGIN'
      
        '      TE_ANOTACIO = '#39'S'#39';     /* IMPRIMIM ELS QUE S'#205' TENEN ANOTAC' +
        'IONS */'
      '      SUSPEND;'
      '    END;'
      '    '
      
        '    IF (TE_ANOTACIO = '#39'N'#39') THEN SUSPEND; /* IMPRIMIM ELS QUE NO ' +
        'TENEN ANOTACIONS */'
      '  END;'
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
    Left = 104
    Top = 548
  end
  object prog4dies: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'prog4dies'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE,DATAFI DATE)'
      'RETURNS ('
      '  TRACTAMENT INTEGER,'
      '  HISTORIA INTEGER,'
      '  METGE_PREPARA VARCHAR(5),'
      '  DATA_ENTRADA DATE,'
      '  DATA_PREPARA DATE,'
      '  CODI_INTERVENCIO SMALLINT,'
      '  TIPUS_INTERVENCIO VARCHAR(40),'
      '  CIRURGIA VARCHAR(5),'
      '  CODI_ESPECIALITAT SMALLINT,'
      '  ESPECIALITAT VARCHAR(40),'
      '  DIFERENCIA_DIES_HABILS INTEGER'
      ') AS'
      '      DECLARE VARIABLE DIES INTEGER;'
      '      DECLARE VARIABLE D DATE;'
      '      DECLARE VARIABLE CONTA INTEGER;'
      'BEGIN'
      ''
      
        '  FOR SELECT B.C_TRACTAMENT, B.C_HISTORIA, B.C_METGE_PREPARA, F_' +
        'SOLOFECHA(B.DATA_ENTRADA), F_SOLOFECHA(B.DATA_PREPARA),B.C_TIPUS' +
        'INTERV,C.N_CODI,'
      '             B.C_CIRURGIA,B.C_ESPECIALITAT,C1.N_CODI'
      '  FROM BQUIRURGIC B'
      
        '  LEFT JOIN CODICAMPS C  ON B.C_TIPUSINTERV = C.C_CODI AND C.TIP' +
        'USCODI = '#39'TIPUSINTERV'#39
      
        '  LEFT JOIN CODICAMPS C1 ON B.C_ESPECIALITAT = C1.C_CODI AND C1.' +
        'TIPUSCODI = '#39'ESPECIALITAT'#39
      '  WHERE B.ESTAT BETWEEN 30 AND 39 /* FINALITZADA */'
      '  AND B.DATA_ENTRADA BETWEEN :DATAINI AND :DATAFI || '#39' 23:59:59'#39
      '  ORDER BY B.C_METGE_PREPARA'
      
        '  INTO :TRACTAMENT,:HISTORIA,:METGE_PREPARA,:DATA_ENTRADA,:DATA_' +
        'PREPARA,:CODI_INTERVENCIO,:TIPUS_INTERVENCIO,'
      '       :CIRURGIA,:CODI_ESPECIALITAT,:ESPECIALITAT'
      '  DO BEGIN'
      '      /* comptem els dies h'#224'bils entre les dues dates */'
      '      D=DATA_PREPARA;'
      '      DIES=0;'
      ''
      '      WHILE (D<DATA_ENTRADA) DO'
      '      BEGIN'
      '          /* DSS I DG NO ELS COMPTEM */'
      '          IF ((F_DAYOFWEEK(D)>=2) AND (F_DAYOFWEEK(D)<=6)) THEN'
      '          BEGIN'
      '              /* MIREM QUE NO SIGUI FESTIU */'
      '              SELECT COUNT(*) FROM FESTIUS'
      '              WHERE DATA = :D'
      '              INTO CONTA;'
      ''
      '              /* SI NO '#201'S FESTIU SUMO 1 A DIES H'#192'BILS*/'
      '              IF (CONTA = 0) THEN DIES=DIES+1;'
      '          END'
      '          D=D+1; /* PASSEM AL DIA SEG'#220'ENT */'
      '      END'
      ''
      '      DIFERENCIA_DIES_HABILS = DIES;'
      ''
      '      SUSPEND;'
      '  END'
      'END')
    Dic1 = wDataBlocQuirurgic.BQuirurgic
    Dic1Name = 'bquirurgic'
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
    Top = 492
  end
  object ReviNeuro: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ReviNeuro'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE,DATA2 DATE)'
      'RETURNS (COORDINADOR VARCHAR(20),'
      '         TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         BATERIA CHAR(1),'
      '         USUARI VARCHAR(20),'
      '         DATA DATE,'
      '         BATERIA_INF CHAR(1),'
      '         USUARI_INF  VARCHAR(20),'
      '         DATA_INF DATE)'
      'AS'
      'BEGIN'
      '      '
      
        '  FOR SELECT M.METGE, T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRE' +
        'S'
      '  FROM TRACTAMENTS T'
      '  JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '  JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND (F.C_UNITATME' +
        'DICA BETWEEN 10 AND 21)  /* NOM'#201'S D.C. */'
      '  WHERE T.DATA_ALTA BETWEEN :DATA1 AND :DATA2'
      '  AND   T.C_PRESTACIO = '#39'2004'#39
      '  ORDER BY T.C_COORDINADOR, T.DATA_INGRES, T.C_TRACTAMENT'
      '  INTO :COORDINADOR, :TRACTAMENT, :HISTORIA, :DATA_INGRES'
      '  DO BEGIN'
      ''
      
        '      USUARI = NULL; DATA = NULL; USUARI_INF = NULL; DATA_INF = ' +
        'NULL;'
      '      '
      '      SELECT C.DATA, ME.METGE'
      '      FROM ESCALESCAP C JOIN ESCBATERIA B ON C.CLAU = B.ID'
      
        '      JOIN METGES ME ON C.C_USUARI = ME.CODI AND ME.C_ESPECIAL =' +
        ' '#39'15'#39
      '      WHERE C_TRACTAMENT = :TRACTAMENT'
      '      AND C.ANULAT <> '#39'S'#39
      '      ORDER BY C.DATA'
      
        '      ROWS 1 /* NOM'#201'S VOL LA PRIMERA ENTRADA D'#39'UN NEUROPSIC'#210'LEG ' +
        '*/'
      '      INTO :DATA,:USUARI;'
      ''
      
        '      IF (USUARI IS NULL) THEN BATERIA = '#39'N'#39'; ELSE BATERIA = '#39'S'#39 +
        ';'
      ''
      '      SELECT C.DATA, ME.METGE'
      '      FROM ESCALESCAP C JOIN ESCBATERIAINF B ON C.CLAU = B.ID'
      
        '      JOIN METGES ME ON C.C_USUARI = ME.CODI AND ME.C_ESPECIAL =' +
        ' '#39'15'#39
      '      WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '      AND C.ANULAT <> '#39'S'#39
      '      ORDER BY C.DATA'
      
        '      ROWS 1 /* NOM'#201'S VOL LA PRIMERA ENTRADA D'#39'UN NEUROPSIC'#210'LEG ' +
        '*/'
      '      INTO :DATA_INF,:USUARI_INF;'
      ''
      
        '      IF (USUARI_INF IS NULL) THEN BATERIA_INF = '#39'N'#39'; ELSE BATER' +
        'IA_INF = '#39'S'#39';'
      ''
      '      SUSPEND;'
      '  END;'
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
    Left = 472
    Top = 380
  end
  object neuroingres: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'neuroingres'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE, OPCIO INTEGER)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         ACOMPLEIX CHAR(1),'
      '         USER_ACOMPLIMENT VARCHAR(5),'
      '         DATA_ACOMPLIMENT DATE,'
      '         ESCALA_BATERIA CHAR(1),'
      '         USUARI_PRIMERA_BATERIA VARCHAR(5),'
      '         DATA_PRIMERA_BATERIA DATE'
      '         )'
      'AS'
      'BEGIN'
      '  /* OPCIONS :  1- AVALUACIO NEUROPSICOLGIA'
      '                2- FAMILIA PSICOLOGIA              */'
      '      '
      
        '  FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.DATA' +
        '_ALTA, M.METGE'
      '  FROM TRACTAMENTS T'
      '  JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = '#39'X1'#39
      '  JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '  JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND (F.C_UNITATME' +
        'DICA BETWEEN 10 AND 21)  /* NOM'#201'S D.C. */'
      '  WHERE T.DATA_INGRES BETWEEN :DATA1 AND :DATA2'
      '  AND T.C_PRESTACIO = '#39'1004'#39
      '  ORDER BY M.METGE'
      
        '  INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :COORDI' +
        'NADOR'
      '  DO BEGIN'
      '      /* INICIALITZEM VAIRABLES */'
      '      ACOMPLEIX='#39'N'#39'; USER_ACOMPLIMENT='#39#39'; DATA_ACOMPLIMENT=NULL;'
      '      USUARI_PRIMERA_BATERIA=NULL; DATA_PRIMERA_BATERIA=NULL;'
      '      '
      '      IF (OPCIO = 1) THEN'
      '      BEGIN'
      
        '        /* PRIMER MIRO SI TENEN ALGUN REGISTRE A ACTIVITATNEURO,' +
        ' EN CAS CONTRARI, MIRO LES ANOTACIONS.'
      '        '
      
        '        L'#39'ACTIVITAT DE NEUROPSICOLOGIA ES VA POSAR EN MARXA A FI' +
        'NALS DE MAR'#199' 2008 PER'#210' NO VA SER'
      
        '        FINS L'#39'ABRIL 2008 QUE HO VAN COMEN'#199'AR A ENTRAR SERIOSAME' +
        'NT TOTS ELS DE NEUROPSICOLOGIA */'
      '        '
      '        SELECT H.C_USUARI, H.DATA'
      '        FROM HISTORIA H'
      
        '        JOIN ACTIVITATNEURO A ON H.C_ANOTACIO = A.C_ANOTACIO AND' +
        ' A.TIPUS = 1  /* SESSIONS D'#39'AVALUACI'#211' */'
      '        WHERE H.C_TRACTAMENT = :TRACTAMENT'
      '        AND H.C_HISTORIA = :HISTORIA AND H.C_GRUP IN ('#39'PR'#39','#39'PS'#39')'
      '        AND A.DATA BETWEEN :DATA_INGRES AND :DATA_INGRES + 15'
      
        '        AND H.ANULAT = '#39'N'#39' AND H.C_ESTATVALIDA NOT BETWEEN 20 AN' +
        'D 30 /* NO ANUL'#183'LATS NI CANCEL'#183'LATS */'
      '        ORDER BY H.DATA'
      '        ROWS 1  /* NOM'#201'S EM QUEDO AMB LA PRIMERA */'
      '        INTO :USER_ACOMPLIMENT, :DATA_ACOMPLIMENT;'
      ''
      
        '        IF ((USER_ACOMPLIMENT <> '#39#39') AND (USER_ACOMPLIMENT IS NO' +
        'T NULL)) THEN ACOMPLEIX = '#39'S'#39';'
      ''
      '        IF (ACOMPLEIX = '#39'N'#39') THEN'
      '        BEGIN'
      '          SELECT H.C_USUARI, H.DATA'
      '          FROM HISTORIA H'
      
        '          JOIN CODICAMPS C ON H.C_ESTATVALIDA = C.C_CODI AND C.T' +
        'IPUSCODI = '#39'VALIDACURS'#39
      '          WHERE H.C_TRACTAMENT = :TRACTAMENT'
      '          AND H.C_HISTORIA = :HISTORIA'
      '          AND H.C_GRUP IN ('#39'PR'#39','#39'PS'#39')'
      '          AND H.DATA BETWEEN :DATA_INGRES AND :DATA_INGRES + 15'
      
        '          AND H.ANULAT = '#39'N'#39' AND H.C_ESTATVALIDA NOT BETWEEN 20 ' +
        'AND 30 /* NO ANUL'#183'LATS NI CANCEL'#183'LATS */'
      
        '          AND ((UPPER(H.ANOTACIO) LIKE '#39'%AVALUACI%NEUROPSICO%'#39') ' +
        ' OR (UPPER(H.ANOTACIO) LIKE '#39'%EXPLORACI%NEUROPSICO%'#39'))'
      '          ORDER BY H.DATA'
      '          ROWS 1  /* NOM'#201'S EM QUEDO AMB LA PRIMERA */'
      '          INTO :USER_ACOMPLIMENT, :DATA_ACOMPLIMENT;'
      ''
      
        '          IF ((USER_ACOMPLIMENT <> '#39#39') AND (USER_ACOMPLIMENT IS ' +
        'NOT NULL)) THEN ACOMPLEIX = '#39'S'#39';'
      '        END;'
      '      END;'
      '      '
      '      IF (OPCIO = 2) THEN'
      '      BEGIN'
      '        SELECT H.C_USUARI, H.DATA'
      '        FROM HISTORIA H'
      
        '        JOIN ACTIVITATNEURO A ON H.C_ANOTACIO = A.C_ANOTACIO AND' +
        ' A.TIPUS = 4  /* VISITA FAM'#205'LIA */'
      '        WHERE H.C_TRACTAMENT = :TRACTAMENT'
      '        AND H.C_HISTORIA = :HISTORIA AND H.C_GRUP IN ('#39'PR'#39','#39'PS'#39')'
      '        AND A.DATA BETWEEN :DATA_INGRES AND :DATA_INGRES + 15'
      
        '        AND H.ANULAT = '#39'N'#39' AND H.C_ESTATVALIDA NOT BETWEEN 20 AN' +
        'D 30 /* NO ANUL'#183'LATS NI CANCEL'#183'LATS */'
      '        ORDER BY H.DATA'
      '        ROWS 1  /* NOM'#201'S EM QUEDO AMB LA PRIMERA */'
      '        INTO :USER_ACOMPLIMENT, :DATA_ACOMPLIMENT;'
      ''
      
        '        IF ((USER_ACOMPLIMENT <> '#39#39') AND (USER_ACOMPLIMENT IS NO' +
        'T NULL)) THEN ACOMPLEIX = '#39'S'#39';'
      ''
      '        IF (ACOMPLEIX = '#39'N'#39') THEN'
      '        BEGIN'
      '          SELECT H.C_USUARI, H.DATA'
      '          FROM HISTORIA H'
      
        '          JOIN CODICAMPS C ON H.C_ESTATVALIDA = C.C_CODI AND C.T' +
        'IPUSCODI = '#39'VALIDACURS'#39
      '          WHERE H.C_HISTORIA = :HISTORIA'
      '          AND H.C_TRACTAMENT = :TRACTAMENT'
      '          AND H.C_GRUP IN ('#39'PR'#39','#39'PS'#39')'
      '          AND H.DATA BETWEEN :DATA_INGRES AND :DATA_INGRES + 15'
      
        '          AND H.ANULAT = '#39'N'#39' AND H.C_ESTATVALIDA NOT BETWEEN 20 ' +
        'AND 30 /* NO ANUL'#183'LATS NI CANCEL'#183'LATS */'
      '          AND (UPPER(H.ANOTACIO) LIKE '#39'%FAMILIA%'#39')'
      '          ORDER BY H.DATA'
      '          ROWS 1  /* NOM'#201'S EM QUEDO AMB LA PRIMERA */'
      '          INTO :USER_ACOMPLIMENT, :DATA_ACOMPLIMENT;'
      ''
      
        '          IF ((USER_ACOMPLIMENT <> '#39#39') AND (USER_ACOMPLIMENT IS ' +
        'NOT NULL)) THEN ACOMPLEIX = '#39'S'#39';'
      '        END;'
      '      END;'
      '      '
      '      /* MIREM SI HAN FET L'#39'ESCALA BATERIA DES DE L'#39'INGR'#201'S */'
      '      SELECT C_USUARI, DATA FROM ESCALESCAP'
      '      WHERE C_ESCALA = 52'
      '      AND C_HISTORIA = :HISTORIA'
      '      AND C_TRACTAMENT = :TRACTAMENT'
      '      AND DATA >= :DATA_INGRES'
      '      ORDER BY DATA'
      '      ROWS 1'
      '      INTO :USUARI_PRIMERA_BATERIA, :DATA_PRIMERA_BATERIA;'
      ''
      
        '      IF (USUARI_PRIMERA_BATERIA IS NOT NULL) THEN ESCALA_BATERI' +
        'A = '#39'S'#39'; ELSE ESCALA_BATERIA = '#39'N'#39';'
      ''
      
        '      SUSPEND;  /* SI NO HI HA CAP ANOTACI'#211' S'#39'HA DE MOSTRAR TAMB' +
        #201' */'
      '  END;'
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
    Left = 320
    Top = 436
  end
  object psicoingres: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'psicoingres'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS (TRACTAMENT INTEGER,'
      '         HISTORIA INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(5),'
      '         USER_PRIMERA_ANOTACIO VARCHAR(5),'
      '         DATA_PRIMERA_ANOTACIO DATE,'
      '         DIES INTEGER,'
      '         ESCALA_HAD CHAR(1),'
      '         USUARI_PRIMERA_HAD VARCHAR(5),'
      '         DATA_PRIMERA_HAD   DATE'
      '         )'
      'AS'
      'BEGIN'
      ''
      
        '  FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_INGRES, T.DATA' +
        '_ALTA, T.C_COORDINADOR'
      '  FROM TRACTAMENTS T'
      '  JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = '#39'X1'#39
      
        '  JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND F.C_UNITATMED' +
        'ICA BETWEEN 1 AND 8  /* NOM'#201'S L.M. */'
      '  WHERE T.DATA_INGRES BETWEEN :DATA1 AND :DATA2'
      '  AND T.C_PRESTACIO = '#39'1004'#39
      '  ORDER BY T.C_COORDINADOR'
      
        '  INTO :TRACTAMENT, :HISTORIA, :DATA_INGRES, :DATA_ALTA, :COORDI' +
        'NADOR'
      '  DO BEGIN'
      '    /* INICIALITZEM VARIABLES */'
      '    USER_PRIMERA_ANOTACIO='#39#39'; DATA_PRIMERA_ANOTACIO=NULL;'
      '    DIES = NULL;'
      '    USUARI_PRIMERA_HAD=NULL; DATA_PRIMERA_HAD=NULL;'
      '  '
      '    SELECT H.C_USUARI, H.DATA'
      '    FROM HISTORIA H'
      
        '    JOIN CODICAMPS C ON H.C_ESTATVALIDA = C.C_CODI AND C.TIPUSCO' +
        'DI = '#39'VALIDACURS'#39
      '    WHERE H.C_HISTORIA = :HISTORIA'
      '    AND H.C_TRACTAMENT = :TRACTAMENT'
      '    AND H.C_GRUP IN ('#39'PR'#39','#39'PS'#39')'
      '    AND H.DATA BETWEEN :DATA_INGRES AND :DATA_INGRES + 15'
      
        '    AND H.ANULAT = '#39'N'#39' AND H.C_ESTATVALIDA NOT BETWEEN 20 AND 30' +
        ' /* NO ANUL'#183'LATS NI CANCEL'#183'LATS */'
      '    ORDER BY H.DATA'
      '    ROWS 1'
      '    INTO :USER_PRIMERA_ANOTACIO, :DATA_PRIMERA_ANOTACIO;'
      '    '
      
        '    IF (DATA_PRIMERA_ANOTACIO IS NOT NULL) THEN DIES = DATA_PRIM' +
        'ERA_ANOTACIO - DATA_INGRES;'
      '    '
      '    SELECT C_USUARI, DATA FROM ESCALESCAP'
      '    WHERE C_ESCALA = 13'
      '    AND DATA >= :DATA_INGRES'
      '    ORDER BY DATA'
      '    ROWS 1'
      '    INTO :USUARI_PRIMERA_HAD, :DATA_PRIMERA_HAD;'
      '    '
      
        '    IF (USUARI_PRIMERA_HAD IS NOT NULL) THEN ESCALA_HAD = '#39'S'#39'; E' +
        'LSE ESCALA_HAD = '#39'N'#39';'
      '    '
      '    SUSPEND;'
      '  END;'
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
    Left = 392
    Top = 436
  end
  object calcul_estades: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CALCUL_ESTADES'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS ('
      '  C_HISTORIA INTEGER,'
      '  NOMCOMPLET VARCHAR(80),'
      '  DATA_INGRES DATE,'
      '  DATA_ALTA DATE,'
      '  C_PRESTACIO VARCHAR(4),'
      '  TIPUS_PRESTACIO INTEGER,'
      '  COORDINADOR VARCHAR(5),'
      '  DNI VARCHAR(9),'
      '  CP VARCHAR(9),'
      '  POBLACIO VARCHAR(44),'
      '  SEXO CHAR(1),'
      '  FECHA_NAC DATE,'
      '  SOE VARCHAR(12),'
      '  PENSIONIST CHAR(1),'
      '  ESVIU CHAR(1),'
      '  EDAT INTEGER,'
      '  DATA_CONTACTE DATE,'
      '  C_ETIOLOGIA VARCHAR(15),'
      '  C_CODI_E VARCHAR(15),'
      '  C_DIAGNOSTICNEUROLOGIC VARCHAR(15),'
      '  N_DIAGNOSTICNEUROLOGIC VARCHAR(40),'
      '  C_UNITATMEDICA SMALLINT,'
      '  N_GRUP VARCHAR(30),'
      '  C_CENTREFAC VARCHAR(2),'
      '  C_DELEGACIO VARCHAR(4),'
      '  PLANTA VARCHAR(15),'
      '  ESTADES INTEGER,'
      '  C_MOTIU     INTEGER,'
      '  MOTIU       VARCHAR(40)'
      ') AS'
      '    DECLARE VARIABLE MDATA1 DATE;'
      '    DECLARE VARIABLE MDATA2 DATE;'
      '    DECLARE VARIABLE MESTADES INTEGER;'
      'BEGIN'
      ''
      
        '  FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, T.DATA_INGRES, T.DATA_A' +
        'LTA, T.C_PRESTACIO, P.TIPUS, T.C_COORDINADOR,'
      
        '             F.DNI, F.CODIGO, F.POBLACIO, F.SEXO , F.FECHA_NAC, ' +
        'F.SOE, F.PENSIONIST, F.ESVIU, F.EDAT, F.DATA_CONTACTE,'
      
        '             F.C_ETIOLOGIA, F.C_CODI_E, F.C_DIAGNOSTICNEUROLOGIC' +
        ', F.N_DIAGNOSTICNEUROLOGIC, F.C_UNITATMEDICA, U.N_GRUP,'
      
        '             T.C_CENTREFAC, T.C_DELEGACIO, T.C_PLANTA, T.C_MOTIU' +
        ', M.N_CODI'
      '  FROM TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '  LEFT JOIN PRESTACION P ON T.C_PRESTACIO=P.C_PRESTACIO'
      '  LEFT JOIN UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '  LEFT JOIN CODICAMPS M ON T.C_MOTIU = M.C_CODI AND M.TIPUSCODI=' +
        #39'MOTIU'#39
      
        '/*  WHERE ((t.data_ingres >= :datai and T.DATA_INGRES <= :DATAF)' +
        ' OR (T.DATA_ALTA >= :DATAI AND T.DATA_INGRES <= :DATAF))'
      '  AND P.TIPUS BETWEEN 1 AND 3 */'
      
        '  WHERE (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI OR T' +
        '.DATA_ALTA IS NULL))'
      '  ORDER BY T.C_HISTORIA, T.DATA_INGRES DESCENDING'
      
        '  INTO :C_HISTORIA ,:NOMCOMPLET ,:DATA_INGRES ,:DATA_ALTA , :C_P' +
        'RESTACIO , :TIPUS_PRESTACIO, :COORDINADOR, :DNI , :CP ,:POBLACIO' +
        ' ,'
      
        '       :SEXO , :FECHA_NAC ,:SOE ,:PENSIONIST ,:ESVIU ,:EDAT , :D' +
        'ATA_CONTACTE ,:C_ETIOLOGIA ,:C_CODI_E ,'
      
        '       :C_DIAGNOSTICNEUROLOGIC ,:N_DIAGNOSTICNEUROLOGIC , :C_UNI' +
        'TATMEDICA , :N_GRUP, :C_CENTREFAC, :C_DELEGACIO, :PLANTA,'
      '       :C_MOTIU, :MOTIU'
      '  DO BEGIN'
      
        '    IF (DATA_INGRES > DATAI) THEN MDATA1=:DATA_INGRES; ELSE MDAT' +
        'A1=:DATAI;'
      
        '    IF (DATA_ALTA < DATAF AND DATA_ALTA IS NOT NULL) THEN MDATA2' +
        '= :DATA_ALTA; ELSE MDATA2 = :DATAF;'
      ''
      '    MESTADES=MDATA2-MDATA1+1;'
      ''
      '    IF (MESTADES = 0) THEN MESTADES=1;'
      '    ESTADES=:MESTADES;'
      ''
      '    SUSPEND;'
      '  END;'
      ''
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
    Left = 448
    Top = 107
  end
  object EscNeuropsico: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscNeuropsico'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE,DATA2 DATE)'
      'RETURNS ('
      '  TRACTAMENT INTEGER,'
      '  HISTORIA INTEGER,'
      '  PRESTACIO VARCHAR(4),'
      '  DATA_INGRES DATE,'
      '  DATA_ALTA DATE,'
      '  COORDINADOR VARCHAR(20),'
      '  BCN CHAR(2),'
      '  USUARI_BCN VARCHAR(5),'
      '  STROOP CHAR(2),'
      '  USUARI_STROOP VARCHAR(5),'
      '  TMT CHAR(2),'
      '  USUARI_TMT VARCHAR(5),'
      '  PASAT CHAR(2),'
      '  USUARI_PASAT VARCHAR(5),'
      '  WCST CHAR(2),'
      '  USUARI_WCST VARCHAR(5),'
      '  TAS CHAR(2),'
      '  USUARI_TAS VARCHAR(5),'
      '  DISARTRIA CHAR(2),'
      '  USUARI_DISARTRIA VARCHAR(5),'
      '  LLENGUATGE CHAR(2),'
      '  USUARI_LLENGUATGE VARCHAR(5),'
      '  VOCABULARI CHAR(2),'
      '  USUARI_VOC VARCHAR(5),'
      '  CPT CHAR(2),'
      '  USUARI_CPT VARCHAR(5)'
      ') AS'
      '      DECLARE VARIABLE ANULAT CHAR(1);'
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      '      DECLARE VARIABLE USUARI VARCHAR(5);'
      'BEGIN'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, M.METGE'
      '      FROM TRACTAMENTS T'
      
        '      JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      '      JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND (F.C_UNIT' +
        'ATMEDICA BETWEEN 10 AND 21)'
      '      JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      '      WHERE T.DATA_ALTA >= :DATA1'
      '      AND   T.DATA_ALTA <= :DATA2'
      '      AND   T.C_PRESTACIO = '#39'1004'#39
      '      AND   T.C_DESTINACIO IN(1,3,4)'
      '      ORDER BY T.C_COORDINADOR'
      
        '      INTO :TRACTAMENT, :HISTORIA, :PRESTACIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :COORDINADOR'
      '      DO BEGIN'
      '          /* inicialitzem variables */'
      '          BCN     = '#39'N'#39'; USUARI_BCN='#39#39';'
      '          STROOP  = '#39'N'#39'; USUARI_STROOP ='#39#39';'
      '          TMT     = '#39'N'#39'; USUARI_TMT='#39#39';'
      '          PASAT   = '#39'N'#39'; USUARI_PASAT='#39#39';'
      '          WCST    = '#39'N'#39'; USUARI_WCST='#39#39';'
      '          TAS     = '#39'N'#39'; USUARI_TAS='#39#39';'
      '          DISARTRIA  = '#39'N'#39'; USUARI_DISARTRIA='#39#39';'
      '          LLENGUATGE = '#39'N'#39'; USUARI_LLENGUATGE='#39#39';'
      '          VOCABULARI = '#39'N'#39'; USUARI_VOC ='#39#39';'
      '          CPT        = '#39'N'#39'; USUARI_CPT='#39#39';'
      ''
      
        '          /* Escala Barcelona (22) a l'#39'alta  JULIOL 2014: ja no ' +
        's'#39'entra'
      '          C_ESCALA = 22;'
      '          C_ENTRADA = NULL;'
      '          FOR SELECT c.DATA, C.ANULAT, C.C_USUARI'
      '          FROM ESCALESCAP C JOIN ESCBARCELONA B ON C.CLAU = B.ID'
      '          WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '          AND   C.C_HISTORIA = :HISTORIA AND (C.ANULAT <> '#39'S'#39')'
      '          ORDER BY C.DATA'
      '          INTO :DATA, :ANULAT, :USUARI_BCN'
      '          DO BEGIN'
      
        '               IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA_ALT' +
        'A + 180)) THEN'
      '               BEGIN'
      '                   IF (ANULAT = '#39'N'#39') THEN BCN = '#39'S'#39';'
      '                   IF (ANULAT = '#39'V'#39') THEN BCN = '#39'NV'#39';'
      
        '                   IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (ANUL' +
        'AT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                   OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN BCN' +
        ' = '#39'NP'#39';'
      '               END;'
      '          END;'
      '          */'
      ''
      '          /* Escales 23 A 28 a l'#39'alta */'
      '          FOR SELECT C_ENTRADA, DATA, C_ESCALA, ANULAT, C_USUARI'
      '          FROM ESCALESCAP'
      '          WHERE C_TRACTAMENT = :TRACTAMENT'
      '          AND   C_HISTORIA = :HISTORIA'
      '          AND   C_ESCALA >= 22'
      '          AND   C_ESCALA <= 28'
      '          AND   (ANULAT <> '#39'S'#39')'
      '          ORDER BY C_ENTRADA, C_ESCALA'
      '          INTO :C_ENTRADA, :DATA, :C_ESCALA, :ANULAT, :USUARI'
      '          DO BEGIN'
      '              IF (C_ENTRADA < 0) THEN'
      '              BEGIN'
      
        '                 IF ((C_ESCALA = 23) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN STROOP = '#39'NP'#39';'
      
        '                 IF ((C_ESCALA = 24) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN TMT = '#39'NP'#39';'
      
        '                 IF ((C_ESCALA = 25) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN PASAT = '#39'NP'#39';'
      
        '                 IF ((C_ESCALA = 26) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN WCST = '#39'NP'#39';'
      
        '                 IF ((C_ESCALA = 27) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN TAS = '#39'NP'#39';'
      
        '                 IF ((C_ESCALA = 28) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN DISARTRIA = '#39'NP'#39';'
      '              END'
      '              IF (C_ENTRADA >= 0) THEN'
      '              BEGIN'
      '                 IF (C_ESCALA = 23) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      '                     IF (ANULAT = '#39'N'#39') THEN STROOP = '#39'S'#39';'
      '                     IF (ANULAT = '#39'V'#39') THEN STROOP = '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN S' +
        'TROOP = '#39'NP'#39';'
      '                   END'
      '                   USUARI_STROOP=USUARI;'
      '                 END'
      '                 IF (C_ESCALA = 24) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      '                     IF (ANULAT = '#39'N'#39') THEN TMT = '#39'S'#39';'
      '                     IF (ANULAT = '#39'V'#39') THEN TMT = '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN T' +
        'MT = '#39'NP'#39';'
      '                   END'
      '                   USUARI_TMT=USUARI;'
      '                 END'
      '                 IF (C_ESCALA = 25) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      '                     IF (ANULAT = '#39'N'#39') THEN PASAT = '#39'S'#39';'
      '                     IF (ANULAT = '#39'V'#39') THEN PASAT = '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN P' +
        'ASAT = '#39'NP'#39';'
      '                   END'
      '                   USUARI_PASAT=USUARI;'
      '                 END'
      '                 IF (C_ESCALA = 26) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      '                     IF (ANULAT = '#39'N'#39') THEN WCST = '#39'S'#39';'
      '                     IF (ANULAT = '#39'V'#39') THEN WCST = '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN W' +
        'CST = '#39'NP'#39';'
      '                   END'
      '                   USUARI_WCST=USUARI;'
      '                 END'
      '                 IF (C_ESCALA = 27) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      '                     IF (ANULAT = '#39'N'#39') THEN TAS = '#39'S'#39';'
      '                     IF (ANULAT = '#39'V'#39') THEN TAS = '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN T' +
        'AS = '#39'NP'#39';'
      '                   END'
      '                   USUARI_TAS=USUARI;'
      '                 END'
      '                 IF (C_ESCALA = 28) THEN'
      '                 BEGIN'
      
        '                   IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DATA' +
        '_ALTA + 180)) THEN'
      '                   BEGIN'
      '                     IF (ANULAT = '#39'N'#39') THEN DISARTRIA = '#39'S'#39';'
      '                     IF (ANULAT = '#39'V'#39') THEN DISARTRIA = '#39'NV'#39';'
      
        '                     IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (AN' +
        'ULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN D' +
        'ISARTRIA = '#39'NP'#39';'
      '                   END'
      '                   USUARI_DISARTRIA=USUARI;'
      '                 END'
      '              END'
      '          END'
      ''
      
        '          /*  Escales LLENGUATGE (36), VOCABULARI (46) I CPT (47' +
        ') a l'#39'alta */'
      '          FOR SELECT C_ENTRADA, DATA, C_ESCALA, ANULAT'
      '          FROM ESCALESCAP'
      '          WHERE C_TRACTAMENT = :TRACTAMENT'
      '          AND   C_HISTORIA = :HISTORIA'
      '          AND   C_ESCALA IN(36,46,47)'
      '          AND   (ANULAT <> '#39'S'#39')'
      '          ORDER BY C_ENTRADA, C_ESCALA'
      '          INTO :C_ENTRADA, :DATA, :C_ESCALA, :ANULAT'
      '          DO BEGIN'
      '              IF (C_ENTRADA < 0) THEN'
      '              BEGIN'
      
        '                 IF ((C_ESCALA = 36) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN LLENGUATGE = '#39'NP'#39';'
      
        '                 IF ((C_ESCALA = 46) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN VOCABULARI = '#39'NP'#39';'
      
        '                 IF ((C_ESCALA = 47) AND ((DATA_ALTA - 10 <= DAT' +
        'A) OR (DATA <= DATA_ALTA + 180))) THEN CPT = '#39'NP'#39';'
      '              END'
      '              IF (C_ENTRADA >= 0) THEN'
      '              BEGIN'
      '                 IF (C_ESCALA = 36) THEN'
      '                 BEGIN'
      
        '                     IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DA' +
        'TA_ALTA + 180)) THEN'
      '                     BEGIN'
      '                       IF (ANULAT = '#39'N'#39') THEN LLENGUATGE = '#39'S'#39';'
      '                       IF (ANULAT = '#39'V'#39') THEN LLENGUATGE = '#39'NV'#39';'
      
        '                       IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (' +
        'ANULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN L' +
        'LENGUATGE = '#39'NP'#39';'
      '                     END'
      '                     USUARI_LLENGUATGE=USUARI;'
      '                 END'
      '                 IF (C_ESCALA = 46) THEN'
      '                 BEGIN'
      
        '                     IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DA' +
        'TA_ALTA + 180)) THEN'
      '                     BEGIN'
      '                       IF (ANULAT = '#39'N'#39') THEN VOCABULARI = '#39'S'#39';'
      '                       IF (ANULAT = '#39'V'#39') THEN VOCABULARI = '#39'NV'#39';'
      
        '                       IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (' +
        'ANULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN V' +
        'OCABULARI = '#39'NP'#39';'
      '                     END'
      '                     USUARI_VOC=USUARI;'
      '                 END'
      '                 IF (C_ESCALA = 47) THEN'
      '                 BEGIN'
      
        '                     IF ((DATA_ALTA - 10 <= DATA) OR (DATA <= DA' +
        'TA_ALTA + 180)) THEN'
      '                     BEGIN'
      '                       IF (ANULAT = '#39'N'#39') THEN CPT = '#39'S'#39';'
      '                       IF (ANULAT = '#39'V'#39') THEN CPT = '#39'NV'#39';'
      
        '                       IF ((ANULAT = '#39'1'#39') OR (ANULAT = '#39'2'#39') OR (' +
        'ANULAT = '#39'3'#39') OR (ANULAT = '#39'4'#39')'
      
        '                     OR (ANULAT = '#39'5'#39') OR (ANULAT = '#39'6'#39')) THEN C' +
        'PT = '#39'NP'#39';'
      '                     END'
      '                     USUARI_CPT=USUARI;'
      '                 END'
      '              END'
      '          END'
      ''
      '          SUSPEND;'
      '      END'
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
    Left = 320
    Top = 380
  end
  object REINGRES: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'REINGRES'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE, ANYS INTEGER, DATA2I DATE, DATA2F DATE)'
      'RETURNS (HISTORIA       INTEGER,'
      '         NOMCOMPLET     VARCHAR(80),'
      '         DATA_INGRES    DATE,'
      '         DATA_ALTA      DATE,'
      '         DATA_RE_INGRES DATE,'
      '         DIES           INTEGER,'
      '         CODI           VARCHAR(10),'
      '         UM             SMALLINT,'
      '         CODI_ORIGEN    SMALLINT,'
      '         ORIGEN         VARCHAR(40),'
      '         CODI_CAUSA     SMALLINT,'
      '         CAUSA          VARCHAR(40),'
      '         CODI_CAUSA_DETALL SMALLINT,'
      '         CAUSA_DETALL   VARCHAR(40),'
      '         UM_ANTIGA      SMALLINT,'
      '         MOTIU          SMALLINT,'
      '         BLOQUEIG       CHAR(1)'
      '         )'
      'AS'
      '  DECLARE VARIABLE DIF_DIES    INTEGER;'
      '  DECLARE VARIABLE HIST_ANT    INTEGER;'
      '  DECLARE VARIABLE DING_ANT    DATE;'
      '  DECLARE VARIABLE DRE_ING_ANT DATE;'
      'BEGIN'
      '  DIF_DIES = ANYS * 365;'
      ''
      '  HIST_ANT = 0;'
      '  DING_ANT = NULL;'
      '  DRE_ING_ANT = NULL;'
      ''
      '  /* T : DADES DEL RE INGRES'
      '     T2: DADES DE L'#39'INGR'#201'S MOTIU 2 */'
      ''
      
        '  FOR SELECT T.C_HISTORIA, F.NOMCOMPLET,T2.DATA_INGRES, T2.DATA_' +
        'ALTA, T.DATA_INGRES, F_DIVISA(T.DATA_INGRES-T2.DATA_ALTA,2), C.R' +
        '_CODI,'
      
        '             F.C_UNITATMEDICA, F.C_ORIGEN, C2.N_CODI, F.C_CAUSA,' +
        ' C3.N_CODI, F.C_CAUSA_DETALL, C4.N_CODI, F.UM_ANTIGA, T.C_MOTIU,' +
        ' F.BLOQUEIG'
      '  FROM TRACTAMENTS T'
      
        '  JOIN CODICAMPS X ON T.C_ESTATFAC = X.C_CODI AND X.TIPUSCODI = ' +
        '"ESTATFACTU" AND X.R_CODI <> 9'
      '  JOIN TRACTAMENTS T2 ON  T.C_HISTORIA = T2.C_HISTORIA'
      '                      AND T2.C_TRACTAMENT <> T.C_TRACTAMENT'
      '                      AND T2.C_PRESTACIO = '#39'1004'#39
      
        '                      AND T2.DATA_ALTA BETWEEN :DATA2I AND :DATA' +
        '2F'
      '                      AND T2.DATA_INGRES < T.DATA_INGRES'
      
        '  JOIN CODICAMPS X2 ON T2.C_ESTATFAC = X2.C_CODI AND X2.TIPUSCOD' +
        'I = "ESTATFACTU" AND X2.R_CODI <> 9'
      
        '  JOIN DRETSMOTIU D ON T2.C_MOTIU = D.C_MOTIU AND D.C_DRET = '#39'X1' +
        #39
      '  JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '  LEFT OUTER JOIN ESPERA E ON T.C_TRACTAMENT=E.C_TRACTAMENTDESTI'
      
        '  LEFT OUTER JOIN CODICAMPS C ON E.C_MOTIU=C.C_CODI AND C.TIPUSC' +
        'ODI='#39'MOTIU'#39
      
        '  LEFT OUTER JOIN CODICAMPS C2 ON F.C_ORIGEN = C2.C_CODI AND C2.' +
        'TIPUSCODI = '#39'ORIGEN_FILIACIO'#39
      
        '  LEFT OUTER JOIN CODICAMPS C3 ON F.C_CAUSA = C3.C_CODI AND C3.T' +
        'IPUSCODI = '#39'CAUSA'#39
      
        '  LEFT OUTER JOIN CODICAMPS C4 ON F.C_CAUSA_DETALL = C4.C_CODI A' +
        'ND C4.TIPUSCODI = '#39'CAUSA_DETALL'#39
      '  WHERE (T.DATA_ALTA BETWEEN :DATAI and :DATAF)'
      '  AND (T.C_PRESTACIO='#39'1004'#39')'
      '  ORDER BY T.C_HISTORIA, T.DATA_INGRES, T2.DATA_INGRES'
      
        '  INTO :HISTORIA, :NOMCOMPLET, :DATA_INGRES, :DATA_ALTA, :DATA_R' +
        'E_INGRES, :DIES, :CODI, :UM, :CODI_ORIGEN, :ORIGEN,'
      
        '       :CODI_CAUSA, :CAUSA, :CODI_CAUSA_DETALL, :CAUSA_DETALL, :' +
        'UM_ANTIGA, :MOTIU, :BLOQUEIG'
      '  DO BEGIN'
      
        '      IF ( (HIST_ANT <> HISTORIA) OR (/*(DATA_INGRES <> DING_ANT' +
        ') AND */(DATA_RE_INGRES <> DRE_ING_ANT)) ) THEN SUSPEND;'
      ''
      '      HIST_ANT = HISTORIA;'
      '      DING_ANT = DATA_INGRES;'
      '      DRE_ING_ANT = DATA_RE_INGRES;'
      '  END;'
      ''
      'END'
      '')
    Dic1 = wDataBasics.Tractaments
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
    Left = 192
    Top = 548
  end
  object FILIACIO_UM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'UM'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAUC DATE)'
      'RETURNS (HISTORIA       INTEGER,'
      '         NOMCOMPLET     VARCHAR(80),'
      '         EDAT           INTEGER,'
      '         PAIS           VARCHAR(3),'
      '         CODI_UM        SMALLINT,'
      '         UM             VARCHAR(40),'
      '         CODI_UM_ANTIGA SMALLINT,'
      '         UM_ANTIGA      VARCHAR(40),'
      '         SEXE           CHAR(1),'
      '         TRACTAMENT     INTEGER,'
      '         PRESTACIO      CHAR(4),'
      '         DATA_INGRES    DATE,'
      '         DATA_ALTA      DATE,'
      '         COORDINADOR    VARCHAR(5)'
      '         )'
      'AS'
      'BEGIN'
      ''
      
        '  FOR SELECT F.NUM_HIST, F.NOMCOMPLET, F.EDAT, F.PAIS, F.C_UNITA' +
        'TMEDICA, U.N_UNITATM, F.UM_ANTIGA, C.N_CODI, F.SEXO'
      '  FROM FILIACIO F'
      '  JOIN UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '  LEFT OUTER JOIN CODICAMPS C ON F.UM_ANTIGA = C.C_CODI AND C.TI' +
        'PUSCODI = '#39'UM_ANTIGA'#39
      '  WHERE F.DATA_ULTIMCONTACTE >= :DATAUC'
      '  ORDER BY F.NUM_HIST'
      
        '  INTO :HISTORIA, :NOMCOMPLET, :EDAT, :PAIS, :CODI_UM, :UM, :COD' +
        'I_UM_ANTIGA, :UM_ANTIGA, :SEXE'
      '  DO BEGIN'
      
        '      /* CADA COP QUE CANVIEM DE REGISTRE, INICIALITZEM LES VARI' +
        'ABLES */'
      
        '      TRACTAMENT = NULL; PRESTACIO = NULL; DATA_INGRES = NULL; D' +
        'ATA_ALTA = NULL; COORDINADOR = NULL;'
      '  '
      
        '      /* busquem l'#39#250'ltim 1004 o 2014 del pacient. Si no en t'#233' ca' +
        'p, agafarem el coordinador de l'#39#250'ltim tractament. */'
      
        '      SELECT T.C_TRACTAMENT, T.C_PRESTACIO, T.DATA_INGRES, T.DAT' +
        'A_ALTA, T.C_COORDINADOR'
      '      FROM TRACTAMENTS T'
      
        '      JOIN CODICAMPS X ON T.C_ESTATFAC = X.C_CODI AND X.TIPUSCOD' +
        'I = "ESTATFACTU" AND X.R_CODI <> 9'
      '      WHERE T.C_HISTORIA = :HISTORIA'
      '      AND T.C_PRESTACIO IN(1004, 2014)'
      '      ORDER BY T.DATA_ALTA DESC'
      '      ROWS 1'
      
        '      INTO :TRACTAMENT, :PRESTACIO, :DATA_INGRES, :DATA_ALTA, :C' +
        'OORDINADOR;'
      '      '
      '      IF (COORDINADOR IS NULL) THEN'
      '      BEGIN'
      
        '          SELECT T.C_TRACTAMENT, T.C_PRESTACIO, T.DATA_INGRES, T' +
        '.DATA_ALTA, T.C_COORDINADOR'
      '          FROM TRACTAMENTS T'
      
        '          JOIN CODICAMPS X ON T.C_ESTATFAC = X.C_CODI AND X.TIPU' +
        'SCODI = "ESTATFACTU" AND X.R_CODI <> 9'
      '          WHERE T.C_HISTORIA = :HISTORIA'
      '          ORDER BY T.DATA_ALTA DESC'
      '          ROWS 1'
      
        '          INTO :TRACTAMENT, :PRESTACIO, :DATA_INGRES, :DATA_ALTA' +
        ', :COORDINADOR;'
      '      END;'
      '      '
      '      SUSPEND;'
      '  END;'
      ''
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
    Left = 264
    Top = 548
  end
  object EstadisticRX: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EstadisticRX'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (METGE_SOLICITANT VARCHAR(20),'
      '         DIA0 INTEGER,'
      '         PERCEN0 DOUBLE PRECISION,'
      '         DIA1_2 INTEGER,'
      '         PERCEN1_2 DOUBLE PRECISION,'
      '         DIA2_3 INTEGER,'
      '         PERCEN2_3 DOUBLE PRECISION,'
      '         DIA3_4 INTEGER,'
      '         PERCEN3_4 DOUBLE PRECISION,'
      '         DIA4_7 INTEGER,'
      '         PERCEN4_7 DOUBLE PRECISION,'
      '         DIA7_30 INTEGER,'
      '         PERCEN7_30 DOUBLE PRECISION,'
      '         DIA31 INTEGER,'
      '         PERCEN31 DOUBLE PRECISION,'
      '         SR  INTEGER,'
      '         PERCEN_SR DOUBLE PRECISION,'
      '         DIA_TOTAL INTEGER,'
      '         PERCEN_TOTAL DOUBLE PRECISION)'
      'AS'
      #9'DECLARE VARIABLE DIES INTEGER;'
      '      DECLARE VARIABLE METGE_ANT VARCHAR(20);'
      '      DECLARE VARIABLE METGE_ACT VARCHAR(20);'
      '      DECLARE VARIABLE DATARESPOSTA DATE;'
      '      DECLARE VARIABLE TOTAL0 INTEGER;'
      '      DECLARE VARIABLE TOTAL1_2 INTEGER;'
      '      DECLARE VARIABLE TOTAL2_3 INTEGER;'
      '      DECLARE VARIABLE TOTAL3_4 INTEGER;'
      '      DECLARE VARIABLE TOTAL4_7 INTEGER;'
      '      DECLARE VARIABLE TOTAL7_30 INTEGER;'
      '      DECLARE VARIABLE TOTAL31 INTEGER;'
      '      DECLARE VARIABLE TOTAL_SR INTEGER;'
      '      DECLARE VARIABLE TOTAL INTEGER;'
      'BEGIN'
      ''
      '   METGE_ANT=NULL;'
      
        '   DIA0=0; PERCEN0=0; DIA1_2=0; PERCEN1_2=0; DIA2_3=0; PERCEN2_3' +
        '=0; DIA3_4=0; PERCEN3_4=0;'
      
        '   DIA4_7=0; PERCEN4_7=0; DIA7_30=0; PERCEN7_30=0; DIA31=0; PERC' +
        'EN31=0; SR=0; PERCEN_SR=0;'
      '   DIA_TOTAL=0; PERCEN_TOTAL=0;'
      ' '
      
        '   TOTAL0=0;TOTAL1_2=0;TOTAL2_3=0;TOTAL3_4=0;TOTAL4_7=0;TOTAL7_3' +
        '0=0;TOTAL31=0;TOTAL_SR=0;TOTAL=0;'
      ' '
      
        '   FOR SELECT M.METGE, F_TRUNCAR(I.DATA2 - I.DATA_PROVA) AS DIES' +
        ', I.DATA2'
      '   FROM INTERCON I'
      '   JOIN METGES M ON I.C_METGE1 = M.CODI'
      '   WHERE I.DATA1 BETWEEN :DATAI AND :DATAF'
      '   AND I.C_TIPUS = '#39'RX'#39
      '   AND I.ESTAT <> 80  /* RX no anul'#183'lada */'
      '   ORDER BY 1,2'
      '   INTO :METGE_ACT, :DIES , :DATARESPOSTA'
      '   DO BEGIN'
      ''
      '       IF ((METGE_ANT = METGE_ACT) OR (METGE_ANT IS NULL)) THEN'
      '       BEGIN'
      '           IF (DATARESPOSTA IS NULL) THEN SR = SR + 1;'
      '           ELSE BEGIN'
      '             IF (DIES = 0) THEN DIA0 = DIA0 + 1;'
      '             IF (DIES = 1) THEN DIA1_2 = DIA1_2 + 1;'
      '             IF (DIES = 2) THEN DIA2_3 = DIA2_3 + 1;'
      '             IF (DIES = 3) THEN DIA3_4 = DIA3_4 + 1;'
      
        '             IF ((DIES >= 4) AND (DIES < 7)) THEN DIA4_7 = DIA4_' +
        '7 + 1;'
      
        '             IF ((DIES >= 7) AND (DIES < 31)) THEN DIA7_30 = DIA' +
        '7_30 + 1;'
      '             IF (DIES >= 31) THEN DIA31 = DIA31 + 1;'
      '           END;'
      '       END;'
      '       ELSE BEGIN'
      '           /* CALCULEM TOTALS I PERCENTATGES */'
      
        '           DIA_TOTAL=DIA0+DIA1_2+DIA2_3+DIA3_4+DIA4_7+DIA7_30+DI' +
        'A31+SR;'
      '           IF (DIA_TOTAL > 0) THEN'
      '           BEGIN'
      '               PERCEN_TOTAL=100.00;'
      
        '               PERCEN0=F_DIVISA((DIA0/DIA_TOTAL)*100,2);PERCEN1_' +
        '2=F_DIVISA((DIA1_2/DIA_TOTAL)*100,2);'
      
        '               PERCEN2_3=F_DIVISA((DIA2_3/DIA_TOTAL)*100,2);PERC' +
        'EN3_4=F_DIVISA((DIA3_4/DIA_TOTAL)*100,2);'
      
        '               PERCEN4_7=F_DIVISA((DIA4_7/DIA_TOTAL)*100,2);PERC' +
        'EN7_30=F_DIVISA((DIA7_30/DIA_TOTAL)*100,2);'
      
        '               PERCEN31=F_DIVISA((DIA31/DIA_TOTAL)*100,2);PERCEN' +
        '_SR=F_DIVISA((SR/DIA_TOTAL)*100,2);'
      '           END;'
      '           METGE_SOLICITANT = METGE_ANT;'
      '           '
      '           SUSPEND;'
      '           '
      '           /* ACUMULO ALS TOTALS DE LES COLUMNES */'
      
        '           TOTAL0=TOTAL0+DIA0;TOTAL1_2=TOTAL1_2+DIA1_2;TOTAL2_3=' +
        'TOTAL2_3+DIA2_3;TOTAL3_4=TOTAL3_4+DIA3_4;TOTAL4_7=TOTAL4_7+DIA4_' +
        '7;'
      
        '           TOTAL7_30=TOTAL7_30+DIA7_30;TOTAL31=TOTAL31+DIA31;TOT' +
        'AL_SR=TOTAL_SR+SR;TOTAL=TOTAL+DIA_TOTAL;'
      '           '
      '           /* INICIALITZEM COMPTADORS CADA CANVI DE METGE */'
      
        '           DIA0=0; PERCEN0=0; DIA1_2=0; PERCEN1_2=0; DIA2_3=0; P' +
        'ERCEN2_3=0; DIA3_4=0; PERCEN3_4=0;'
      
        '           DIA4_7=0; PERCEN4_7=0; DIA7_30=0; PERCEN7_30=0; DIA31' +
        '=0; PERCEN31=0; SR=0; PERCEN_SR=0;'
      '           DIA_TOTAL=0; PERCEN_TOTAL=0;'
      '           '
      
        '           /* EL REGISTRE ACTUAL L'#39'HEM D'#39'ACUMULAR ABANS NO PASSE' +
        'M AL SEG'#220'ENT REGISTRE I EL PERDEM */'
      '           IF (DATARESPOSTA IS NULL) THEN SR = SR + 1;'
      '           ELSE BEGIN'
      '             IF (DIES = 0) THEN DIA0 = DIA0 + 1;'
      '             IF (DIES = 1) THEN DIA1_2 = DIA1_2 + 1;'
      '             IF (DIES = 2) THEN DIA2_3 = DIA2_3 + 1;'
      '             IF (DIES = 3) THEN DIA3_4 = DIA3_4 + 1;'
      
        '             IF ((DIES >= 4) AND (DIES < 7)) THEN DIA4_7 = DIA4_' +
        '7 + 1;'
      
        '             IF ((DIES >= 7) AND (DIES < 31)) THEN DIA7_30 = DIA' +
        '7_30 + 1;'
      '             IF (DIES >= 31) THEN DIA31 = DIA31 + 1;'
      '           END;'
      '       END;'
      '       METGE_ANT = METGE_ACT;'
      '   END;'
      '   /* PINTEM L'#39#218'LTIM REGISTRE */'
      '   DIA_TOTAL=DIA0+DIA1_2+DIA2_3+DIA3_4+DIA4_7+DIA7_30+DIA31+SR;'
      '   IF (DIA_TOTAL > 0) THEN'
      '   BEGIN'
      '       PERCEN_TOTAL=100.00;'
      
        '       PERCEN0=F_DIVISA((DIA0/DIA_TOTAL)*100,2);PERCEN1_2=F_DIVI' +
        'SA((DIA1_2/DIA_TOTAL)*100,2);'
      
        '       PERCEN2_3=F_DIVISA((DIA2_3/DIA_TOTAL)*100,2);PERCEN3_4=F_' +
        'DIVISA((DIA3_4/DIA_TOTAL)*100,2);'
      
        '       PERCEN4_7=F_DIVISA((DIA4_7/DIA_TOTAL)*100,2);PERCEN7_30=F' +
        '_DIVISA((DIA7_30/DIA_TOTAL)*100,2);'
      
        '       PERCEN31=F_DIVISA((DIA31/DIA_TOTAL)*100,2);PERCEN_SR=F_DI' +
        'VISA((SR/DIA_TOTAL)*100,2);'
      '    END;'
      '    METGE_SOLICITANT = METGE_ANT;'
      ''
      '    SUSPEND;'
      ''
      '    /* ACUMULO ALS TOTALS DE LES COLUMNES */'
      
        '    TOTAL0=TOTAL0+DIA0;TOTAL1_2=TOTAL1_2+DIA1_2;TOTAL2_3=TOTAL2_' +
        '3+DIA2_3;TOTAL3_4=TOTAL3_4+DIA3_4;TOTAL4_7=TOTAL4_7+DIA4_7;'
      
        '    TOTAL7_30=TOTAL7_30+DIA7_30;TOTAL31=TOTAL31+DIA31;TOTAL_SR=T' +
        'OTAL_SR+SR;TOTAL=TOTAL+DIA_TOTAL;'
      '    '
      ''
      '    /* PINTEM EL REGISTRE DE TOTALS DE COLUMNES */'
      '    METGE_SOLICITANT='#39'TOTALS'#39';'
      '    IF (TOTAL > 0) THEN'
      '    BEGIN'
      
        '      DIA0   = TOTAL0;   PERCEN0 = F_DIVISA((TOTAL0/TOTAL)*100,2' +
        ');'
      
        '      DIA1_2 = TOTAL1_2; PERCEN1_2 = F_DIVISA((TOTAL1_2/TOTAL)*1' +
        '00,2);'
      
        '      DIA2_3 = TOTAL2_3; PERCEN2_3 = F_DIVISA((TOTAL2_3/TOTAL)*1' +
        '00,2);'
      
        '      DIA3_4 = TOTAL3_4; PERCEN3_4 = F_DIVISA((TOTAL3_4/TOTAL)*1' +
        '00,2);'
      
        '      DIA4_7 = TOTAL4_7; PERCEN4_7 = F_DIVISA((TOTAL4_7/TOTAL)*1' +
        '00,2);'
      
        '      DIA7_30 = TOTAL7_30; PERCEN7_30 = F_DIVISA((TOTAL7_30/TOTA' +
        'L)*100,2);'
      
        '      DIA31 = TOTAL31;   PERCEN31 = F_DIVISA((TOTAL31/TOTAL)*100' +
        ',2);'
      
        '      SR = TOTAL_SR; PERCEN_SR = F_DIVISA((TOTAL_SR/TOTAL)*100,2' +
        ');'
      '      DIA_TOTAL = TOTAL; PERCEN_TOTAL = 100;'
      '    END;'
      '    SUSPEND;'
      'END')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'intercon'
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
    Left = 424
    Top = 548
  end
  object EstadisticAnal: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EstadisticAnal'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE, DIES INTEGER)'
      'RETURNS (GRUP VARCHAR(2),'
      '         CODI VARCHAR(10),'
      '         DESCRIPCIO VARCHAR(254),'
      '         QUANTITAT INTEGER,'
      '         MITJA     DOUBLE PRECISION,'
      '         DESVIACIO DOUBLE PRECISION,'
      '         MAXIM     INTEGER,'
      '         MINIM     INTEGER'
      '         )'
      'AS'
      '      DECLARE VARIABLE DEMORA   INTEGER;'
      '      DECLARE VARIABLE GRUP_ANT VARCHAR(2);'
      '      DECLARE VARIABLE GRUP_ACT VARCHAR(2);'
      '      DECLARE VARIABLE CODI_ANT VARCHAR(10);'
      '      DECLARE VARIABLE CODI_ACT VARCHAR(10);'
      '      DECLARE VARIABLE DESC_ANT VARCHAR(254);'
      '      DECLARE VARIABLE DESC_ACT VARCHAR(254);'
      '      DECLARE VARIABLE MIN_AUX  INTEGER;'
      '      DECLARE VARIABLE MAX_AUX  INTEGER;'
      '      DECLARE VARIABLE AUX      INTEGER;'
      '      DECLARE VARIABLE SUMATORI2 INTEGER;'
      '      DECLARE VARIABLE QGRUP     INTEGER;'
      '      DECLARE VARIABLE NGRUP     INTEGER;'
      '      DECLARE VARIABLE MGRUP     DOUBLE PRECISION;'
      'BEGIN'
      ''
      '   GRUP_ANT=NULL; CODI_ANT=NULL;'
      '   QUANTITAT=0;MITJA=0;DESVIACIO=0;MAXIM=0;MINIM=0;'
      
        '   MIN_AUX=DIES;MAX_AUX=0;AUX=0; SUMATORI2=0; QGRUP=0; NGRUP=0; ' +
        'MGRUP=0;'
      
        '                                                                ' +
        '                       /* 1/8/2017 trec F_SOLOFECHA de A.DATA_RE' +
        'CEPCIO */'
      
        '   FOR SELECT C.GRUP, CAST(C.DESCRIPCIO AS VARCHAR(254)), CAST(A' +
        '.CODI AS VARCHAR(10)), A.DATA_RECEPCIO - AC.DATA'
      '   FROM ANALIT A'
      
        '   LEFT JOIN ANACABE AC ON A.NILAB = AC.NILAB AND A.DATA = AC.DA' +
        'TA'
      
        '   LEFT JOIN CODRSANA C ON A.CODI = C.CODI AND A.DATA < '#39'23.3.20' +
        '17'#39
      '   WHERE AC.DATA BETWEEN :DATAI AND :DATAF'
      '   AND A.DATA_RECEPCIO IS NOT NULL'
      
        '   UNION                                                        ' +
        '                   /* 1/8/2017 trec F_SOLOFECHA de A.DATA_RECEPC' +
        'IO */'
      
        '   SELECT C.GRUP, CAST(C.DESCRIPCIO AS VARCHAR(254)), CAST(A.COD' +
        'I AS VARCHAR(10)), A.DATA_RECEPCIO -  AC.DATA'
      '   FROM ANALIT A'
      
        '   LEFT JOIN ANACABE AC     ON A.NILAB = AC.NILAB AND A.DATA = A' +
        'C.DATA'
      
        '   LEFT JOIN CODRSANA_APA C ON A.CODI = C.CODI AND A.DATA >= '#39'23' +
        '.3.2017'#39
      '   WHERE AC.DATA BETWEEN :DATAI AND :DATAF'
      '   AND A.DATA_RECEPCIO IS NOT NULL'
      '   ORDER BY 1,2,4'
      '   INTO :GRUP_ACT, :DESC_ACT, :CODI_ACT, :DEMORA'
      '   DO BEGIN'
      '       /* ACUMULEM DADES DEL GRUP ACTUAL */'
      '       IF ((DESC_ANT = DESC_ACT) OR (DESC_ANT IS NULL)) THEN'
      '       BEGIN'
      '           /* ACUMULEM DADES DEL CODI ACTUAL */'
      '           QUANTITAT = QUANTITAT + 1;'
      '           IF (DEMORA < MIN_AUX) THEN MIN_AUX = DEMORA;'
      '           IF (DEMORA > MAX_AUX) THEN MAX_AUX = DEMORA;'
      '           AUX = AUX + DEMORA;'
      '           SUMATORI2 = SUMATORI2 + (DEMORA*DEMORA);'
      '       END;'
      '       ELSE BEGIN'
      '           /* CALCULEM I PINTEM CODI */'
      '           MITJA = F_DIVISA(AUX/QUANTITAT,2);'
      
        '           IF (QUANTITAT > 1) THEN DESVIACIO= F_DIVISA(sqrt((SUM' +
        'ATORI2 - QUANTITAT*MITJA*MITJA)/(QUANTITAT - 1)),2);'
      '           ELSE DESVIACIO = 0.00;'
      '           MAXIM = MAX_AUX;'
      '           MINIM = MIN_AUX;'
      '           DESCRIPCIO = DESC_ANT;'
      '           GRUP = GRUP_ANT;'
      '           CODI = CODI_ANT;'
      '           QGRUP = QGRUP + QUANTITAT;'
      '           NGRUP = NGRUP + 1;'
      '           MGRUP = MGRUP + MITJA;'
      '           '
      '           SUSPEND;'
      '           '
      '           /* INICIALITZEM COMPTADORS DE CODI */'
      
        '           QUANTITAT=0; MIN_AUX=DIES; MAX_AUX=0; AUX=0; SUMATORI' +
        '2=0;'
      '           '
      
        '           /* EL REGISTRE ACTUAL L'#39'HEM D'#39'ACUMULAR ABANS NO PASSE' +
        'M AL SEG'#220'ENT I EL PERDEM */'
      '           QUANTITAT = QUANTITAT + 1;'
      '           IF (DEMORA < MIN_AUX) THEN MIN_AUX = DEMORA;'
      '           IF (DEMORA > MAX_AUX) THEN MAX_AUX = DEMORA;'
      '           AUX = AUX + DEMORA;'
      '           SUMATORI2 = SUMATORI2 + (DEMORA*DEMORA);'
      '       END;'
      ''
      '       /* SI HEM CANVIAT DE GRUP PINTEM REGISTRE DE TOTALS */'
      
        '       IF ((GRUP_ANT <> GRUP_ACT) OR ((GRUP_ANT IS NOT NULL) AND' +
        ' (GRUP_ACT IS NULL))) THEN'
      '       BEGIN'
      
        '          CODI='#39'TOTAL'#39'; QUANTITAT = QGRUP; IF (NGRUP > 0) THEN M' +
        'ITJA = F_DIVISA(MGRUP/NGRUP,4);'
      '          DESCRIPCIO = '#39#39'; DESVIACIO = 0; MAXIM = 0; MINIM = 0;'
      '          SUSPEND;'
      '          /* inicialitzem per al grup actual */'
      '          QGRUP = 0; NGRUP=0; MGRUP = 0; QUANTITAT = 1;'
      '       END;'
      '       '
      '       GRUP_ANT = GRUP_ACT;'
      '       CODI_ANT = CODI_ACT;'
      '       DESC_ANT = DESC_ACT;'
      '   END;'
      '   '
      '   /* PINTEM L'#39#218'LTIM REGISTRE */'
      '   MITJA = F_DIVISA(AUX/QUANTITAT,2);'
      
        '   IF (QUANTITAT > 1) THEN DESVIACIO= F_DIVISA(sqrt((SUMATORI2 -' +
        ' QUANTITAT*MITJA*MITJA)/(QUANTITAT - 1)),2);'
      '   ELSE DESVIACIO = 0.00;'
      '   MAXIM = MAX_AUX;'
      '   MINIM = MIN_AUX;'
      '   DESCRIPCIO = DESC_ANT;'
      '   GRUP = GRUP_ANT;'
      '   CODI = CODI_ANT;'
      '   QGRUP = QGRUP + QUANTITAT;'
      '   NGRUP = NGRUP + 1;'
      '   MGRUP = MGRUP + MITJA;'
      '   SUSPEND;'
      ''
      '   /* PINTEM REGISTRE DE TOTALS DEL GRUP '#218'LTIM */'
      
        '   CODI='#39'TOTAL'#39'; QUANTITAT = QGRUP; IF (NGRUP > 0) THEN MITJA = ' +
        'F_DIVISA(MGRUP/NGRUP,4);'
      '   DESCRIPCIO = '#39#39'; DESVIACIO = 0; MAXIM = 0; MINIM = 0;'
      '   SUSPEND;'
      '   '
      'END')
    Dic1 = wDataAnalit.AnaCabe
    Dic1Name = 'anacabe'
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
    Top = 548
  end
  object anestesista: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'anestesista'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DIAGNOSTIC VARCHAR(80),'
      '         PROCEDIMENT VARCHAR(80),'
      
        '         ANESTESIA VARCHAR(40), /* TIPUS D'#39'ANESTESIA: '#39'ANESTESIA' +
        #39' DE CODICAMPS */'
      '         ANESTESISTA VARCHAR(20),'
      
        '         DATA_ENTRADA   DATE,         /* DATA D'#39'ENTRADA A QUIR'#210'F' +
        'AN */'
      '         HORA_ENTRADA   CHAR(5),'
      '         INICI_INTERVENCIO DATE,'
      '         HORA_INICI        CHAR(5),'
      '         ACOMPLEIX_ANT CHAR(1),'
      '         ANOTA_ANTERIOR DATE,'
      '         HORA_ANOTA_ANT    CHAR(5),'
      
        '         FINAL_INTERVENCIO DATE,     /* DATA FINAL INTERVENCI'#211' *' +
        '/'
      '         HORA_FINAL        CHAR(5),'
      '         ACOMPLEIX_POS CHAR(1),'
      '         ANOTA_POSTERIOR DATE,'
      '         HORA_ANOTA_POS    CHAR(5)'
      '         )'
      'AS'
      '      DECLARE VARIABLE C_ANESTESISTA VARCHAR(5);'
      '      DECLARE VARIABLE CONTA INTEGER;'
      'BEGIN'
      '      '
      
        '     FOR SELECT B.C_HISTORIA, B.C_TRACTAMENT, B.N_DIAG_OP, B.N_P' +
        'ROCEDIMENT, F_STRNULL(cc.n_codi, b.t_anestesia), F_STRNULL(A.C_A' +
        'NESTESIOLEG, B.C_ANESTESIOLEG), F_STRNULL(MA.METGE, MB.METGE), B' +
        '.DATA_ENTRADA,'
      
        '                F_SOLOHORA(B.DATA_ENTRADA), B.TEMPSB, F_SOLOHORA' +
        '(B.TEMPSB), B.TEMPSC, F_SOLOHORA(B.TEMPSC)'
      '     FROM BQUIRURGIC B'
      '     LEFT JOIN BQANESTESIA A ON B.C_INTERV=A.C_INTERV'
      '     LEFT JOIN METGES MB ON B.C_ANESTESIOLEG = MB.CODI'
      '     LEFT JOIN METGES MA ON A.C_ANESTESIOLEG = MA.CODI'
      
        '     LEFT JOIN CODICAMPS CC ON A.C_ANESTESIA = CC.C_CODI AND CC.' +
        'TIPUSCODI='#39'ANESTESIA'#39
      '     WHERE B.ESTAT <> '#39'40'#39' /* NO ANUL'#183'LADA */'
      '     AND B.DATA_ENTRADA BETWEEN :DATAI AND :DATAF || '#39' 23:59:59'#39
      '     ORDER BY B.DATA_ENTRADA'
      
        '     INTO :HISTORIA, :TRACTAMENT, :DIAGNOSTIC, :PROCEDIMENT, :AN' +
        'ESTESIA, :C_ANESTESISTA, :ANESTESISTA, :DATA_ENTRADA,'
      
        '          :HORA_ENTRADA, :INICI_INTERVENCIO, :HORA_INICI, :FINAL' +
        '_INTERVENCIO, :HORA_FINAL'
      '     DO BEGIN'
      '         /* INICIALITZEM VARIABLES */'
      
        '         ANOTA_ANTERIOR = NULL; HORA_ANOTA_ANT=NULL; ANOTA_POSTE' +
        'RIOR = NULL;HORA_ANOTA_POS=NULL;'
      ''
      
        '         /* l'#39'anotaci'#243' s'#39'ha de fer des de les 8 del mat'#237' del dia' +
        ' d'#39'intervenci'#243' fins la data d'#39'inici d'#39'intervenci'#243' */'
      '         SELECT DATA, F_SOLOHORA(DATA) FROM HISTORIA'
      '         WHERE C_HISTORIA = :HISTORIA'
      '         AND C_TRACTAMENT = :TRACTAMENT'
      '         AND C_USUARI = :C_ANESTESISTA'
      '         AND ANULAT = '#39'N'#39
      
        '         AND DATA BETWEEN f_solofecha(:DATA_ENTRADA)||'#39' 08:00:00' +
        #39' and :INICI_INTERVENCIO'
      '         ORDER BY DATA DESC'
      '         ROWS 1'
      '         INTO :ANOTA_ANTERIOR, :HORA_ANOTA_ANT;'
      '         '
      '         IF (ANOTA_ANTERIOR IS NULL) THEN ACOMPLEIX_ANT = '#39'N'#39';'
      '         ELSE ACOMPLEIX_ANT = '#39'S'#39';'
      '         '
      
        '         /* mirem si hi ha una anotaci'#243' en les seg'#252'ents 24 hores' +
        ' a la intervenci'#243' */'
      '         SELECT DATA, F_SOLOHORA(DATA) FROM HISTORIA'
      
        '         WHERE C_HISTORIA = :HISTORIA AND C_TRACTAMENT = :TRACTA' +
        'MENT AND C_USUARI = :C_ANESTESISTA'
      
        '         AND ANULAT = '#39'N'#39' AND DATA BETWEEN :INICI_INTERVENCIO AN' +
        'D (:INICI_INTERVENCIO + 1)'
      '         ORDER BY DATA DESC'
      '         ROWS 1'
      '         INTO :ANOTA_POSTERIOR, :HORA_ANOTA_POS;'
      ''
      '         IF (ANOTA_POSTERIOR IS NULL) THEN ACOMPLEIX_POS = '#39'N'#39';'
      '         ELSE ACOMPLEIX_POS = '#39'S'#39';'
      '         '
      
        '         IF ((ANESTESISTA IS NULL) OR (ANESTESISTA='#39#39')) THEN  AN' +
        'ESTESIA=NULL;'
      ''
      '         SUSPEND;'
      '     END;'
      'END')
    Dic1 = wDataBlocQuirurgic.BQuirurgic
    Dic1Name = 'bquirurgic'
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
    Left = 592
    Top = 324
  end
  object pseudomones: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'pseudomones'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA   INTEGER,'
      '         NOM        VARCHAR(80),'
      '         LLIT       VARCHAR(3),'
      '         DATA       DATE,'
      '         TEXTE      VARCHAR(4000)'
      '         )'
      'AS'
      ''
      'BEGIN'
      #9
      #9
      
        '/*  FOR SELECT ANA.NUM_HIST, F.NOMCOMPLET, T.C_LLIT, A.DATA, A.T' +
        'EXTE'
      '  FROM ANALIT A'
      '  JOIN ANACABE ANA ON A.NILAB = ANA.NILAB AND A.DATA=ANA.DATA'
      '  LEFT JOIN FILIACIO F ON ANA.NUM_HIST = F.NUM_HIST'
      
        '  JOIN TRACTAMENTS T ON ANA.C_TRACTAMENT = T.C_TRACTAMENT AND T.' +
        'C_PRESTACIO = '#39'1004'#39
      
        '  WHERE ( (UPPER(A.TEXTE) LIKE '#39'%SEUDOMON%'#39') OR (UPPER(A.TEXTE) ' +
        'LIKE '#39'%SARM%'#39') OR (UPPER(A.TEXTE) LIKE '#39'%(BLEE)%'#39') OR'
      
        '          (UPPER(A.TEXTE) LIKE '#39'%NEUMONIAE%'#39') OR (UPPER(A.TEXTE)' +
        ' LIKE '#39'%ENTEROCOCOS%'#39') OR (UPPER(A.TEXTE) LIKE '#39'%VRE%'#39') )'
      
        '  AND (UPPER(A.TEXTE) NOT LIKE '#39'%NEGATI%'#39') AND (UPPER(A.TEXTE) N' +
        'OT LIKE '#39'%COLI%'#39') AND (UPPER(A.TEXTE) NOT LIKE '#39'%ESCHERICHIA%'#39')'
      '  AND A.DATA BETWEEN :DATAI AND :DATAF'
      '  ORDER BY ANA.NUM_HIST'
      '  INTO :HISTORIA, :NOM, :LLIT, :DATA, :TEXTE*/'
      '  '
      #9' /*'
      
        '  SELECT ANA.NUM_HIST, a.codi, r.descripcio, T.C_LLIT, A.DATA, A' +
        '.TEXTE'
      '  FROM ANALIT A'
      '  JOIN ANACABE ANA ON A.NILAB = ANA.NILAB AND A.DATA=ANA.DATA'
      '  join codrsana r on a.codi=r.codi'
      
        '  JOIN TRACTAMENTS T ON ANA.C_TRACTAMENT = T.C_TRACTAMENT AND T.' +
        'C_PRESTACIO = '#39'1004'#39
      '  WHERE A.DATA BETWEEN '#39'12.08.2008'#39' and '#39'12.08.2008'#39
      
        '  and ( (UPPER(A.TEXTE) LIKE '#39'%SEUDOMON%'#39') OR (UPPER(A.TEXTE) LI' +
        'KE '#39'%SARM%'#39') OR (UPPER(A.TEXTE) LIKE '#39'%(BLEE)%'#39') OR'
      
        '          (UPPER(A.TEXTE) LIKE '#39'%NEUMONIAE%'#39') OR (UPPER(A.TEXTE)' +
        ' LIKE '#39'%ENTEROCOCOS%'#39') OR (UPPER(A.TEXTE) LIKE '#39'%VRE%'#39') )'
      
        '  AND (UPPER(A.TEXTE) NOT LIKE '#39'%NEGATI%'#39') AND (UPPER(A.TEXTE) N' +
        'OT LIKE '#39'%COLI%'#39') AND (UPPER(A.TEXTE) NOT LIKE '#39'%ESCHERICHIA%'#39')'
      '  ORDER BY ANA.NUM_HIST'
      '  */'
      ''
      '  FOR SELECT ANA.NUM_HIST, T.C_LLIT, A.DATA, A.TEXTE'
      '  FROM ANALIT A'
      '  JOIN ANACABE ANA ON A.NILAB = ANA.NILAB AND A.DATA=ANA.DATA'
      '  JOIN CODRSANA R ON A.CODI=R.CODI'
      
        '  JOIN TRACTAMENTS T ON ANA.C_TRACTAMENT = T.C_TRACTAMENT AND T.' +
        'C_PRESTACIO = '#39'1004'#39
      '  WHERE A.DATA BETWEEN :DATAI AND :DATAF'
      
        '  AND ( (UPPER(A.TEXTE) LIKE '#39'%SEUDOMON%'#39') OR (UPPER(A.TEXTE) LI' +
        'KE '#39'%SARM%'#39') OR (UPPER(A.TEXTE) LIKE '#39'%(BLEE)%'#39') OR'
      
        '          (UPPER(A.TEXTE) LIKE '#39'%NEUMONIAE%'#39') OR (UPPER(A.TEXTE)' +
        ' LIKE '#39'%ENTEROCOCOS%'#39') OR (UPPER(A.TEXTE) LIKE '#39'%VRE%'#39') )'
      
        '  AND (UPPER(A.TEXTE) NOT LIKE '#39'%NEGATI%'#39') AND (UPPER(A.TEXTE) N' +
        'OT LIKE '#39'%COLI%'#39') AND (UPPER(A.TEXTE) NOT LIKE '#39'%ESCHERICHIA%'#39')'
      '  ORDER BY ANA.NUM_HIST'
      '  INTO :HISTORIA, :LLIT, :DATA, :TEXTE'
      '  DO BEGIN'
      
        '      SELECT NOMCOMPLET FROM FILIACIO WHERE NUM_HIST = :HISTORIA' +
        ' INTO :NOM;'
      '      SUSPEND;'
      '  END;'
      'END')
    Dic1 = wDataAnalit.AnaLit
    Dic1Name = 'analit'
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
    Left = 592
    Top = 380
  end
  object EDUCAFAM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EDUCAFAM'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         COORDINADOR VARCHAR(20),'
      '         FISIOTERAPEUTA VARCHAR(20),'
      '         TERAPEUTA  VARCHAR(20),'
      '         INFERMERIA VARCHAR(20),'
      '         PSICOLOGIA VARCHAR(20),'
      '         TREBALL_SOCIAL VARCHAR(20),'
      '         LOGOPEDA VARCHAR(20),'
      '         MOTIU_INGRES VARCHAR(40),'
      '         CE   VARCHAR(30),'
      '         AREA VARCHAR(3),'
      '         COMPTADOR INTEGER'
      '         )'
      'AS'
      'BEGIN'
      '      '
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, T.DA' +
        'TA_ALTA, M.METGE, M1.METGE, M2.METGE, M3.METGE, M4.METGE,'
      '               M5.METGE, M6.METGE, CC.N_CODI, U.N_UNITATM'
      '    FROM TRACTAMENTS T'
      
        '    JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = '#39'X' +
        '1'#39
      '    LEFT JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '    LEFT JOIN METGES M1 ON T.C_FISIOTERAPEUTA = M1.CODI'
      '    LEFT JOIN METGES M2 ON T.C_TERAPEUTA = M2.CODI'
      '    LEFT JOIN METGES M3 ON T.C_INFERMERIA = M3.CODI'
      '    LEFT JOIN METGES M4 ON T.C_PSICOLEG = M4.CODI'
      '    LEFT JOIN METGES M5 ON T.C_TREVALLSOCIAL = M5.CODI'
      '    LEFT JOIN METGES M6 ON T.C_LOGOPEDA = M6.CODI'
      '    LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '    LEFT JOIN UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '    LEFT JOIN CODICAMPS CC ON T.C_MOTIU = CC.C_CODI AND CC.TIPUS' +
        'CODI = '#39'MOTIU'#39
      '    WHERE T.C_PRESTACIO = '#39'1004'#39
      '    AND T.DATA_INGRES BETWEEN :DATAI AND :DATAF'
      '    ORDER BY T.C_COORDINADOR'
      
        '    INTO :HISTORIA, :TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :COOR' +
        'DINADOR, :FISIOTERAPEUTA, :TERAPEUTA, :INFERMERIA, :PSICOLOGIA,'
      '         :TREBALL_SOCIAL, :LOGOPEDA, :MOTIU_INGRES, :CE'
      '     DO BEGIN'
      '         FOR SELECT EP.C_AREA, COUNT(*)'
      '         FROM EDUCAP EC'
      '         LEFT JOIN EDUPARAMS EP ON EC.C_PARAM = EP.C_PARAM'
      '         WHERE EC.C_HISTORIA = :HISTORIA'
      '         AND EC.C_TRACTAMENT = :TRACTAMENT'
      '         GROUP BY EP.C_AREA'
      '         INTO :AREA, :COMPTADOR'
      '         DO BEGIN'
      '             SUSPEND;'
      '         END;'
      '     END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 568
    Top = 548
  end
  object AltaEpicrisi: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'altaepicrisi'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (METGE    VARCHAR(20),'
      '         HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA   DATE,'
      '         MOTIU_INGRES VARCHAR(40),'
      '         TE_EPICRISI  CHAR(1)'
      '         )'
      'AS'
      '  DECLARE VARIABLE CONTA INTEGER;'
      'BEGIN'
      '      '
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, T.DA' +
        'TA_ALTA, M.METGE, CC.N_CODI'
      '    FROM TRACTAMENTS T'
      
        '    JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = '#39'X' +
        '4'#39
      '    JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '    JOIN CODICAMPS CC ON T.C_MOTIU = CC.C_CODI AND TIPUSCODI = '#39 +
        'MOTIU'#39
      '    WHERE T.C_PRESTACIO = '#39'1004'#39
      '    AND T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '    ORDER BY M.METGE, T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRE' +
        'S, T.DATA_ALTA'
      
        '    INTO :HISTORIA, :TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :METG' +
        'E, :MOTIU_INGRES'
      '    DO BEGIN'
      '       SELECT COUNT(*) FROM HISTORIA'
      '       WHERE C_TRACTAMENT = :TRACTAMENT'
      '       AND ESEPICRISI = '#39'S'#39
      '       INTO :CONTA;'
      '       '
      
        '       IF (CONTA > 0) THEN TE_EPICRISI = '#39'S'#39'; ELSE TE_EPICRISI =' +
        ' '#39'N'#39';'
      '       SUSPEND;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 568
    Top = 492
  end
  object resumanal_periode: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'resumanal_periode'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE,DATAFI DATE)'
      'RETURNS ('
      '  METGE_COORDINADOR VARCHAR(20),'
      '  DESCRIPCIO VARCHAR(20),'
      '  GENER DOUBLE PRECISION,'
      '  FEBRER DOUBLE PRECISION,'
      '  MARC DOUBLE PRECISION,'
      '  ABRIL DOUBLE PRECISION,'
      '  MAIG DOUBLE PRECISION,'
      '  JUNY DOUBLE PRECISION,'
      '  JULIOL DOUBLE PRECISION,'
      '  AGOST DOUBLE PRECISION,'
      '  SETEMBRE DOUBLE PRECISION,'
      '  OCTUBRE DOUBLE PRECISION,'
      '  NOVEMBRE DOUBLE PRECISION,'
      '  DECEMBRE DOUBLE PRECISION,'
      '  TOTAL DOUBLE PRECISION)'
      'AS'
      'declare variable mes integer;'
      'declare variable preu double precision;'
      'declare variable metgenew varchar(20);'
      'declare variable metgeold varchar(20);'
      'declare variable nilabnew varchar(8);'
      'declare variable nilabold varchar(8);'
      'declare variable datanew date;'
      'declare variable dataold date;'
      'declare variable t1 double precision;'
      'declare variable t2 double precision;'
      'declare variable t3 double precision;'
      'declare variable t4 double precision;'
      'declare variable t5 double precision;'
      'declare variable t6 double precision;'
      'declare variable t7 double precision;'
      'declare variable t8 double precision;'
      'declare variable t9 double precision;'
      'declare variable t10 double precision;'
      'declare variable t11 double precision;'
      'declare variable t12 double precision;'
      'declare variable t13 double precision;'
      'declare variable tb1 double precision;'
      'declare variable tb2 double precision;'
      'declare variable tb3 double precision;'
      'declare variable tb4 double precision;'
      'declare variable tb5 double precision;'
      'declare variable tb6 double precision;'
      'declare variable tb7 double precision;'
      'declare variable tb8 double precision;'
      'declare variable tb9 double precision;'
      'declare variable tb10 double precision;'
      'declare variable tb11 double precision;'
      'declare variable tb12 double precision;'
      'declare variable tb13 double precision;'
      'declare variable tc1 double precision;'
      'declare variable tc2 double precision;'
      'declare variable tc3 double precision;'
      'declare variable tc4 double precision;'
      'declare variable tc5 double precision;'
      'declare variable tc6 double precision;'
      'declare variable tc7 double precision;'
      'declare variable tc8 double precision;'
      'declare variable tc9 double precision;'
      'declare variable tc10 double precision;'
      'declare variable tc11 double precision;'
      'declare variable tc12 double precision;'
      'declare variable tc13 double precision;'
      'declare variable tt1 double precision;'
      'declare variable tt2 double precision;'
      'declare variable tt3 double precision;'
      'declare variable tt4 double precision;'
      'declare variable tt5 double precision;'
      'declare variable tt6 double precision;'
      'declare variable tt7 double precision;'
      'declare variable tt8 double precision;'
      'declare variable tt9 double precision;'
      'declare variable tt10 double precision;'
      'declare variable tt11 double precision;'
      'declare variable tt12 double precision;'
      'declare variable tt13 double precision;'
      'declare variable ttb1 double precision;'
      'declare variable ttb2 double precision;'
      'declare variable ttb3 double precision;'
      'declare variable ttb4 double precision;'
      'declare variable ttb5 double precision;'
      'declare variable ttb6 double precision;'
      'declare variable ttb7 double precision;'
      'declare variable ttb8 double precision;'
      'declare variable ttb9 double precision;'
      'declare variable ttb10 double precision;'
      'declare variable ttb11 double precision;'
      'declare variable ttb12 double precision;'
      'declare variable ttb13 double precision;'
      'declare variable ttc1 double precision;'
      'declare variable ttc2 double precision;'
      'declare variable ttc3 double precision;'
      'declare variable ttc4 double precision;'
      'declare variable ttc5 double precision;'
      'declare variable ttc6 double precision;'
      'declare variable ttc7 double precision;'
      'declare variable ttc8 double precision;'
      'declare variable ttc9 double precision;'
      'declare variable ttc10 double precision;'
      'declare variable ttc11 double precision;'
      'declare variable ttc12 double precision;'
      'declare variable ttc13 double precision;'
      'declare variable primer smallint;'
      ''
      'BEGIN'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;'
      '  DECEMBRE=NULL;'
      
        '  T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11=0;T12=0' +
        ';t13=0;Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb1' +
        '0=0;Tb11=0;'
      
        '  Tb12=0;tb13=0;Tc1=0;Tc2=0;Tc3=0;Tc4=0;Tc5=0;Tc6=0;Tc7=0;Tc8=0;' +
        'Tc9=0;Tc10=0;Tc11=0;Tc12=0;tc13=0;'
      
        '  TT1=0;TT2=0;TT3=0;TT4=0;TT5=0;TT6=0;TT7=0;TT8=0;TT9=0;TT10=0;T' +
        'T11=0;TT12=0;TT13=0;TTb1=0;TTb2=0;TTb3=0;TTb4=0;TTb5=0;TTb6=0;TT' +
        'b7=0;TTb8=0;'
      
        '  TTb9=0;TTb10=0;TTb11=0;TTb12=0;tTb13=0;Ttc1=0;Ttc2=0;Ttc3=0;Tt' +
        'c4=0;Ttc5=0;Ttc6=0;Ttc7=0;Ttc8=0;Ttc9=0;Ttc10=0;Ttc11=0;Ttc12=0;' +
        'ttc13=0;nilabold='#39' '#39';'
      '  dataold="01/01/1900";'
      '  primer=1;'
      ''
      
        '  FOR select  me.metge,fac.preu,f_month(ana.data),ana.data,ana.n' +
        'ilab'
      '  from anacabe ana'
      
        '  left join factu fac on ana.data=fac.data and ana.nilab=fac.nil' +
        'ab'
      '  left join filiacio f on ana.num_hist=f.num_hist'
      '  LEFT OUTER JOIN INTERCON I ON ANA.C_INTERCON = I.C_INTERCON'
      '  left join tractaments t on i.c_tractament=t.c_tractament'
      '  LEFT JOIN PRESTACION PR ON T.C_PRESTACIO = PR.C_PRESTACIO'
      '  left join metges me on t.c_coordinador=me.codi'
      
        '  left join codicamps cc on f.unitat=cc.c_codi and cc.tipuscodi=' +
        #39'UNITATS'#39
      '  left join unitatm um on f.c_unitatmedica=um.c_unitatm'
      '  where ana.data between :dataini and :datafi'
      
        '  order by me.metge,t.c_prestacio,I.URGENT DESC,t.c_centrefac,cc' +
        '.n_codi,um.n_unitatm,fac.preu,ana.data'
      '  INTO :metgenew,:preu,:mes,:datanew,:nilabnew'
      '  DO begin /* 1 */'
      '      if (primer=1) then'
      '      begin'
      '          primer=0;'
      '          metgeold=metgenew;'
      '      end'
      ''
      '      if (metgenew<>metgeold) then'
      '      begin /* 2 */'
      '          /* si a cambiado */'
      '          /* envia los datos actuales sumados */'
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Cost'#39';'
      
        '          GENER=:T1;FEBRER=:T2;MARC=:T3;ABRIL=:T4;MAIG=:T5;JUNY=' +
        ':T6;JULIOL=:T7;AGOST=:T8;SETEMBRE=:T9;OCTUBRE=:T10;NOVEMBRE=:T11' +
        ';'
      '          DECEMBRE=:T12;TOTAL=:T13;'
      ''
      
        '          if (GENER is not null) then tt1=tt1+:GENER;if (FEBRER ' +
        'is not null) then tt2=tt2+:FEBRER;if (MARC is not null) then tt3' +
        '=tt3+:MARC;'
      
        '          if (ABRIL is not null) then tt4=tt4+:ABRIL;if (MAIG is' +
        ' not null) then tt5=:tt5+MAIG;if (JUNY is not null) then tt6=tt6' +
        '+:JUNY;'
      
        '          if (JULIOL is not null) then tt7=tt7+:JULIOL;if (AGOST' +
        ' is not null) then tt8=tt8+:AGOST;if (SETEMBRE is not null) then' +
        ' tt9=tt9+:SETEMBRE;'
      
        '          if (OCTUBRE is not null) then tt10=tt10+:OCTUBRE;if (N' +
        'OVEMBRE is not null) then tt11=tt11+:NOVEMBRE;'
      
        '          if (DECEMBRE is not null) then tt12=tt12+:DECEMBRE;if ' +
        '(total is not null) then tt13=tt13+:total;'
      ''
      
        '          GENER=f_divisa(t1,2);FEBRER=f_divisa(t2,2);MARC=f_divi' +
        'sa(t3,2);ABRIL=f_divisa(t4,2);MAIG=f_divisa(t5,2);JUNY=f_divisa(' +
        't6,2);'
      
        '          JULIOL=f_divisa(t7,2);AGOST=f_divisa(t8,2);SETEMBRE=f_' +
        'divisa(t9,2);OCTUBRE=f_divisa(t10,2);NOVEMBRE=f_divisa(t11,2);'
      '          DECEMBRE=f_divisa(t12,2);total=f_divisa(t13,2);'
      '          metge_COORDINADOR=metgeold;'
      '          suspend;'
      '          '
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Determinacions'#39';'
      
        '          GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;' +
        'JUNY=:Tb6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOV' +
        'EMBRE=:Tb11;'
      '          DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '          if (GENER is not null) then ttb1=ttb1+:GENER;if (FEBRE' +
        'R is not null) then ttb2=ttb2+:FEBRER;if (MARC is not null) then' +
        ' ttb3=ttb3+:MARC;'
      
        '          if (ABRIL is not null) then ttb4=ttb4+:ABRIL;if (MAIG ' +
        'is not null) then ttb5=:ttb5+MAIG; if (JUNY is not null) then tt' +
        'b6=ttb6+:JUNY;'
      
        '          if (JULIOL is not null) then ttb7=ttb7+:JULIOL;if (AGO' +
        'ST is not null) then ttb8=ttb8+:AGOST;if (SETEMBRE is not null) ' +
        'then ttb9=ttb9+:SETEMBRE;'
      
        '          if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;if ' +
        '(NOVEMBRE is not null) then ttb11=ttb11+:NOVEMBRE;'
      
        '          if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;i' +
        'f (total is not null) then ttb13=ttb13+:total;'
      ''
      
        '          GENER=f_divisa(tb1,0);FEBRER=f_divisa(tb2,0);MARC=f_di' +
        'visa(tb3,0);ABRIL=f_divisa(tb4,0);MAIG=f_divisa(tb5,0);JUNY=f_di' +
        'visa(tb6,0);'
      
        '          JULIOL=f_divisa(tb7,0);AGOST=f_divisa(tb8,0);SETEMBRE=' +
        'f_divisa(tb9,0);OCTUBRE=f_divisa(tb10,0);NOVEMBRE=f_divisa(tb11,' +
        '0);'
      '          DECEMBRE=f_divisa(tb12,0);total=f_divisa(tb13,0);'
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      '          DESCRIPCIO='#39'Peticions'#39';'
      
        '          GENER=:Tc1;FEBRER=:Tc2;MARC=:Tc3;ABRIL=:Tc4;MAIG=:Tc5;' +
        'JUNY=:Tc6;JULIOL=:Tc7;AGOST=:Tc8;SETEMBRE=:Tc9;OCTUBRE=:Tc10;NOV' +
        'EMBRE=:Tc11;'
      '          DECEMBRE=:Tc12;TOTAL=:Tc13;'
      ''
      
        '          if (GENER is not null) then ttc1=ttc1+:GENER;if (FEBRE' +
        'R is not null) then ttc2=ttc2+:FEBRER;if (MARC is not null) then' +
        ' ttc3=ttc3+:MARC;'
      
        '          if (ABRIL is not null) then ttc4=ttb4+:ABRIL;if (MAIG ' +
        'is not null) then ttc5=:ttc5+MAIG;if (JUNY is not null) then ttc' +
        '6=ttc6+:JUNY;'
      
        '          if (JULIOL is not null) then ttc7=ttc7+:JULIOL;if (AGO' +
        'ST is not null) then ttc8=ttc8+:AGOST;if (SETEMBRE is not null) ' +
        'then ttc9=ttc9+:SETEMBRE;'
      
        '          if (OCTUBRE is not null) then ttc10=ttc10+:OCTUBRE;if ' +
        '(NOVEMBRE is not null) then ttc11=ttc11+:NOVEMBRE;'
      
        '          if (DECEMBRE is not null) then ttc12=ttc12+:DECEMBRE;i' +
        'f (total is not null) then ttc13=ttc13+:total;'
      ''
      
        '          GENER=f_divisa(tc1,0);FEBRER=f_divisa(tc2,0);MARC=f_di' +
        'visa(tc3,0);ABRIL=f_divisa(tc4,0);MAIG=f_divisa(tc5,0);JUNY=f_di' +
        'visa(tc6,0);'
      
        '          JULIOL=f_divisa(tc7,0);AGOST=f_divisa(tc8,0);SETEMBRE=' +
        'f_divisa(tc9,0);OCTUBRE=f_divisa(tc10,0);NOVEMBRE=f_divisa(tc11,' +
        '0);'
      '          DECEMBRE=f_divisa(tc12,0);total=f_divisa(tc13,0);'
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;'
      '          DECEMBRE=NULL;TOTAL=NULL;'
      ''
      '          DESCRIPCIO='#39'Cost/petici'#243#39';'
      ''
      
        '          if (tc1>0) then GENER=f_divisa(t1/tc1,2);if (tc2>0) th' +
        'en FEBRER=f_divisa(t2/tc2,2);if (tc3>0) then MARC=f_divisa(t3/tc' +
        '3,2);'
      
        '          if (tc4>0) then ABRIL=f_divisa(t4/tc4,2);if (tc5>0) th' +
        'en MAIG=f_divisa(t5/tc5,2);if (tc6>0) then JUNY=f_divisa(t6/tc6,' +
        '2);'
      
        '          if (tc7>0) then JULIOL=f_divisa(t7/tc7,2);if (tc8>0) t' +
        'hen AGOST=f_divisa(t8/tc8,2);if (tc9>0) then SETEMBRE=f_divisa(t' +
        '9/tc9,2);'
      
        '          if (tc10>0) then OCTUBRE=f_divisa(t10/tc10,2);if (tc11' +
        '>0) then NOVEMBRE=f_divisa(t11/tc11,2);'
      
        '          if (tc12>0) then DECEMBRE=f_divisa(t12/tc12,2);if (tc1' +
        '3>0) then total=f_divisa(t13/tc13,2);'
      ''
      '          suspend;'
      ''
      
        '          GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;' +
        'JUNY=NULL;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVE' +
        'MBRE=NULL;DECEMBRE=NULL;'
      
        '          T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11' +
        '=0;T12=0;t13=0;Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;T' +
        'b9=0;Tb10=0;Tb11=0;'
      
        '          Tb12=0;tb13=0;Tc1=0;Tc2=0;Tc3=0;Tc4=0;Tc5=0;Tc6=0;Tc7=' +
        '0;Tc8=0;Tc9=0;Tc10=0;Tc11=0;Tc12=0;tc13=0;'
      ''
      '          /* fin de envio del actual */'
      '          metgeold=metgenew;'
      '         /* sia cambiado metge o prova */'
      '      end /* fi de 2*/'
      ''
      '      /* suma los contadores */'
      '      if (preu is not null) then'
      '      begin'
      '          t13=t13+:preu;'
      '          if (mes=1) then t1=t1+:preu;'
      '          else if (mes=2) then t2=t2+:preu;'
      '          else if (mes=3) then t3=t3+:preu;'
      '          else if (mes=4) then t4=t4+:preu;'
      '          else if (mes=5) then t5=t5+:preu;'
      '          else if (mes=6) then t6=t6+:preu;'
      '          else if (mes=7) then t7=t7+:preu;'
      '          else if (mes=8) then t8=t8+:preu;'
      '          else if (mes=9) then t9=t9+:preu;'
      '          else if (mes=10) then t10=t10+:preu;'
      '          else if (mes=11) then t11=t11+:preu;'
      '          else if (mes=12) then t12=t12+:preu;'
      '      end'
      ''
      '      tb13=tb13+1;'
      '      if (mes=1) then tb1=tb1+1;'
      '      else if (mes=2) then tb2=tb2+1;'
      '      else if (mes=3) then tb3=tb3+1;'
      '      else if (mes=4) then tb4=tb4+1;'
      '      else if (mes=5) then tb5=tb5+1;'
      '      else if (mes=6) then tb6=tb6+1;'
      '      else if (mes=7) then tb7=tb7+1;'
      '      else if (mes=8) then tb8=tb8+1;'
      '      else if (mes=9) then tb9=tb9+1;'
      '      else if (mes=10) then tb10=tb10+1;'
      '      else if (mes=11) then tb11=tb11+1;'
      '      else if (mes=12) then tb12=tb12+1;'
      ''
      '      if (datanew<>dataold or nilabnew<>nilabold) then'
      '      begin'
      '          tc13=tc13+1;'
      '          if (mes=1) then tc1=tc1+1;'
      '          else if (mes=2) then tc2=tc2+1;'
      '          else if (mes=3) then tc3=tc3+1;'
      '          else if (mes=4) then tc4=tc4+1;'
      '          else if (mes=5) then tc5=tc5+1;'
      '          else if (mes=6) then tc6=tc6+1;'
      '          else if (mes=7) then tc7=tc7+1;'
      '          else if (mes=8) then tc8=tc8+1;'
      '          else if (mes=9) then tc9=tc9+1;'
      '          else if (mes=10) then tc10=tc10+1;'
      '          else if (mes=11) then tc11=tc11+1;'
      '          else if (mes=12) then tc12=tc12+1;'
      '          dataold=datanew;'
      '          nilabold=nilabnew;'
      '      end'
      '  end /* 1 */'
      '  /* envia los datos ULTIMO REGISTRO */'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;'
      '  DECEMBRE=NULL;TOTAL=NULL;'
      '  DESCRIPCIO='#39'Cost'#39';'
      
        '  GENER=:T1;FEBRER=:T2;MARC=:T3;ABRIL=:T4;MAIG=:T5;JUNY=:T6;JULI' +
        'OL=:T7;AGOST=:T8;SETEMBRE=:T9;OCTUBRE=:T10;NOVEMBRE=:T11;'
      '  DECEMBRE=:T12;TOTAL=:T13;'
      ''
      
        '  if (GENER is not null) then tt1=tt1+:GENER;if (FEBRER is not n' +
        'ull) then tt2=tt2+:FEBRER; if (MARC is not null) then tt3=tt3+:M' +
        'ARC;'
      
        '  if (ABRIL is not null) then tt4=tt4+:ABRIL;if (MAIG is not nul' +
        'l) then tt5=:tt5+MAIG;if (JUNY is not null) then tt6=tt6+:JUNY;'
      
        '  if (JULIOL is not null) then tt7=tt7+:JULIOL;if (AGOST is not ' +
        'null) then tt8=tt8+:AGOST;if (SETEMBRE is not null) then tt9=tt9' +
        '+:SETEMBRE;'
      
        '  if (OCTUBRE is not null) then tt10=tt10+:OCTUBRE;if (NOVEMBRE ' +
        'is not null) then tt11=tt11+:NOVEMBRE;'
      
        '  if (DECEMBRE is not null) then tt12=tt12+:DECEMBRE;if (total i' +
        's not null) then tt13=tt13+:total;'
      
        '  GENER=f_divisa(t1,2);FEBRER=f_divisa(t2,2);MARC=f_divisa(t3,2)' +
        ';ABRIL=f_divisa(t4,2);MAIG=f_divisa(t5,2);JUNY=f_divisa(t6,2);'
      
        '  JULIOL=f_divisa(t7,2);AGOST=f_divisa(t8,2);SETEMBRE=f_divisa(t' +
        '9,2);OCTUBRE=f_divisa(t10,2);NOVEMBRE=f_divisa(t11,2);'
      '  DECEMBRE=f_divisa(t12,2);total=f_divisa(t13,2);'
      '    '
      '  metge_coordinador=metgeold;'
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;'
      '  DECEMBRE=NULL;TOTAL=NULL;'
      '  DESCRIPCIO='#39'Determinacions'#39';'
      
        '  GENER=:Tb1;FEBRER=:Tb2;MARC=:Tb3;ABRIL=:Tb4;MAIG=:Tb5;JUNY=:Tb' +
        '6;JULIOL=:Tb7;AGOST=:Tb8;SETEMBRE=:Tb9;OCTUBRE=:Tb10;NOVEMBRE=:T' +
        'b11;'
      '  DECEMBRE=:Tb12;TOTAL=:Tb13;'
      ''
      
        '  if (GENER is not null) then ttb1=ttb1+:GENER;if (FEBRER is not' +
        ' null) then ttb2=ttb2+:FEBRER;if (MARC is not null) then ttb3=tt' +
        'b3+:MARC;'
      
        '  if (ABRIL is not null) then ttb4=ttb4+:ABRIL;if (MAIG is not n' +
        'ull) then ttb5=:ttb5+MAIG;if (JUNY is not null) then ttb6=ttb6+:' +
        'JUNY;'
      
        '  if (JULIOL is not null) then ttb7=ttb7+:JULIOL;if (AGOST is no' +
        't null) then ttb8=ttb8+:AGOST;if (SETEMBRE is not null) then ttb' +
        '9=ttb9+:SETEMBRE;'
      
        '  if (OCTUBRE is not null) then ttb10=ttb10+:OCTUBRE;if (NOVEMBR' +
        'E is not null) then ttb11=ttb11+:NOVEMBRE;'
      
        '  if (DECEMBRE is not null) then ttb12=ttb12+:DECEMBRE;if (total' +
        ' is not null) then ttb13=ttb13+:total;'
      
        '  GENER=f_divisa(tb1,0);FEBRER=f_divisa(tb2,0);MARC=f_divisa(tb3' +
        ',0);ABRIL=f_divisa(tb4,0);MAIG=f_divisa(tb5,0);JUNY=f_divisa(tb6' +
        ',0);'
      
        '  JULIOL=f_divisa(tb7,0);AGOST=f_divisa(tb8,0);SETEMBRE=f_divisa' +
        '(tb9,0);OCTUBRE=f_divisa(tb10,0);NOVEMBRE=f_divisa(tb11,0);'
      '  DECEMBRE=f_divisa(tb12,0);'
      '  total=f_divisa(tb13,0);'
      ''
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;'
      '  DECEMBRE=NULL;TOTAL=NULL;'
      '  DESCRIPCIO='#39'Peticions'#39';'
      
        '  GENER=:Tc1;FEBRER=:Tc2;MARC=:Tc3;ABRIL=:Tc4;MAIG=:Tc5;JUNY=:Tc' +
        '6;JULIOL=:Tc7;AGOST=:Tc8;SETEMBRE=:Tc9;OCTUBRE=:Tc10;'
      '  NOVEMBRE=:Tc11;DECEMBRE=:Tc12;TOTAL=:Tc13;'
      ''
      
        '  if (GENER is not null) then ttc1=ttc1+:GENER;if (FEBRER is not' +
        ' null) then ttc2=ttc2+:FEBRER;if (MARC is not null) then ttc3=tt' +
        'c3+:MARC;'
      
        '  if (ABRIL is not null) then ttc4=ttb4+:ABRIL;if (MAIG is not n' +
        'ull) then ttc5=:ttc5+MAIG;if (JUNY is not null) then ttc6=ttc6+:' +
        'JUNY;'
      
        '  if (JULIOL is not null) then ttc7=ttc7+:JULIOL;if (AGOST is no' +
        't null) then ttc8=ttc8+:AGOST;if (SETEMBRE is not null) then ttc' +
        '9=ttc9+:SETEMBRE;'
      
        '  if (OCTUBRE is not null) then ttc10=ttc10+:OCTUBRE;if (NOVEMBR' +
        'E is not null) then ttc11=ttc11+:NOVEMBRE;'
      
        '  if (DECEMBRE is not null) then ttc12=ttc12+:DECEMBRE;if (total' +
        ' is not null) then ttc13=ttc13+:total;'
      ''
      
        '  GENER=f_divisa(tc1,0);FEBRER=f_divisa(tc2,0);MARC=f_divisa(tc3' +
        ',0);ABRIL=f_divisa(tc4,0);MAIG=f_divisa(tc5,0);JUNY=f_divisa(tc6' +
        ',0);'
      
        '  JULIOL=f_divisa(tc7,0);AGOST=f_divisa(tc8,0);SETEMBRE=f_divisa' +
        '(tc9,0);OCTUBRE=f_divisa(tc10,0);NOVEMBRE=f_divisa(tc11,0);'
      '  DECEMBRE=f_divisa(tc12,0);total=f_divisa(tc13,0);'
      ''
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;DECEMBRE=NULL;'
      '  TOTAL=NULL;'
      ''
      '  DESCRIPCIO='#39'Cost/petici'#243#39';'
      
        '  if (tc1>0) then GENER=f_divisa(t1/tc1,2);if (tc2>0) then FEBRE' +
        'R=f_divisa(t2/tc2,2);if (tc3>0) then MARC=f_divisa(t3/tc3,2);'
      
        '  if (tc4>0) then ABRIL=f_divisa(t4/tc4,2);if (tc5>0) then MAIG=' +
        'f_divisa(t5/tc5,2);if (tc6>0) then JUNY=f_divisa(t6/tc6,2);'
      
        '  if (tc7>0) then JULIOL=f_divisa(t7/tc7,2);if (tc8>0) then AGOS' +
        'T=f_divisa(t8/tc8,2);if (tc9>0) then SETEMBRE=f_divisa(t9/tc9,2)' +
        ';'
      
        '  if (tc10>0) then OCTUBRE=f_divisa(t10/tc10,2);if (tc11>0) then' +
        ' NOVEMBRE=f_divisa(t11/tc11,2);if (tc12>0) then DECEMBRE=f_divis' +
        'a(t12/tc12,2);'
      '  if (tc13>0) then total=f_divisa(t13/tc13,2);'
      ''
      '  suspend;'
      ''
      
        '  GENER=NULL;FEBRER=NULL;MARC=NULL;ABRIL=NULL;MAIG=NULL;JUNY=NUL' +
        'L;JULIOL=NULL;AGOST=NULL;SETEMBRE=NULL;OCTUBRE=NULL;NOVEMBRE=NUL' +
        'L;DECEMBRE=NULL;'
      
        '  T1=0;T2=0;T3=0;T4=0;T5=0;T6=0;T7=0;T8=0;T9=0;T10=0;T11=0;T12=0' +
        ';t13=0;Tb1=0;Tb2=0;Tb3=0;Tb4=0;Tb5=0;Tb6=0;Tb7=0;Tb8=0;Tb9=0;Tb1' +
        '0=0;Tb11=0;'
      
        '  Tb12=0;tb13=0;Tc1=0;Tc2=0;Tc3=0;Tc4=0;Tc5=0;Tc6=0;Tc7=0;Tc8=0;' +
        'Tc9=0;Tc10=0;Tc11=0;Tc12=0;tc13=0;'
      ''
      '  /* fin de envio del ULTIMO REGISTRO */'
      ''
      '  /* totales */'
      '  METGE_COORDINADOR='#39'TOTALS'#39';'
      '  DESCRIPCIO='#39'Cost'#39';'
      
        '  GENER=:tt1;FEBRER=:tt2;MARC=:tt3;ABRIL=:tt4;MAIG=:tt5;JUNY=:tt' +
        '6;JULIOL=:tt7;AGOST=:tt8;SETEMBRE=:tt9;OCTUBRE=:tt10;NOVEMBRE=:t' +
        't11;DECEMBRE=:tt12;'
      '  total=:tt13;'
      
        '  GENER=f_divisa(GENER,2);FEBRER=f_divisa(FEBRER,2);MARC=f_divis' +
        'a(MARC,2);ABRIL=f_divisa(ABRIL,2);MAIG=f_divisa(MAIG,2);'
      
        '  JUNY=f_divisa(JUNY,2);JULIOL=f_divisa(JULIOL,2);AGOST=f_divisa' +
        '(AGOST,2);SETEMBRE=f_divisa(SETEMBRE,2);'
      
        '  OCTUBRE=f_divisa(OCTUBRE,2);NOVEMBRE=f_divisa(NOVEMBRE,2);DECE' +
        'MBRE=f_divisa(DECEMBRE,2);'
      '  total=f_divisa(total,2);'
      '  suspend;'
      ''
      '  DESCRIPCIO='#39'Determinacions'#39';'
      
        '  GENER=:ttb1;FEBRER=:ttb2;MARC=:ttb3;ABRIL=:ttb4;MAIG=:ttb5;JUN' +
        'Y=:ttb6;JULIOL=:ttb7;AGOST=:ttb8;SETEMBRE=:ttb9;OCTUBRE=:ttb10;N' +
        'OVEMBRE=:ttb11;'
      '  DECEMBRE=:ttb12;total=:ttb13;'
      
        '  GENER=f_divisa(GENER,0);FEBRER=f_divisa(FEBRER,0);MARC=f_divis' +
        'a(MARC,0);ABRIL=f_divisa(ABRIL,0);MAIG=f_divisa(MAIG,0);'
      
        '  JUNY=f_divisa(JUNY,0);JULIOL=f_divisa(JULIOL,0);AGOST=f_divisa' +
        '(AGOST,0);SETEMBRE=f_divisa(SETEMBRE,0);OCTUBRE=f_divisa(OCTUBRE' +
        ',0);'
      '  NOVEMBRE=f_divisa(NOVEMBRE,0);DECEMBRE=f_divisa(DECEMBRE,0);'
      '  total=f_divisa(total,0);'
      '  suspend;'
      ''
      '  DESCRIPCIO='#39'Peticions'#39';'
      
        '  GENER=:ttc1;FEBRER=:ttc2;MARC=:ttc3;ABRIL=:ttc4;MAIG=:ttc5;JUN' +
        'Y=:ttc6;JULIOL=:ttc7;AGOST=:ttc8;SETEMBRE=:ttc9;OCTUBRE=:ttc10;'
      '  NOVEMBRE=:ttc11;DECEMBRE=:ttc12;'
      '  total=:ttc13;'
      
        '  GENER=f_divisa(GENER,0); FEBRER=f_divisa(FEBRER,0); MARC=f_div' +
        'isa(MARC,0); ABRIL=f_divisa(ABRIL,0); MAIG=f_divisa(MAIG,0);'
      
        '  JUNY=f_divisa(JUNY,0); JULIOL=f_divisa(JULIOL,0); AGOST=f_divi' +
        'sa(AGOST,0); SETEMBRE=f_divisa(SETEMBRE,0); OCTUBRE=f_divisa(OCT' +
        'UBRE,0);'
      
        '  NOVEMBRE=f_divisa(NOVEMBRE,0); DECEMBRE=f_divisa(DECEMBRE,0);t' +
        'otal=f_divisa(total,0);'
      '  suspend;'
      ''
      '  DESCRIPCIO='#39'Cost/petici'#243#39';'
      
        '  if (ttc1>0) then GENER=tt1/ttc1; if (ttc2>0) then FEBRER=tt2/t' +
        'tc2; if (ttc3>0) then MARC=tt3/ttc3; if (ttc4>0) then ABRIL=tt4/' +
        'ttc4;'
      
        '  if (ttc5>0) then MAIG=tt5/ttc5; if (ttc6>0) then JUNY=tt6/ttc6' +
        '; if (ttc7>0) then JULIOL=tt7/ttc7; if (ttc8>0) then AGOST=tt8/t' +
        'tc8;'
      
        '  if (ttc9>0) then SETEMBRE=tt9/ttc9; if (ttc10>0) then OCTUBRE=' +
        'tt10/ttc10; if (ttc11>0) then NOVEMBRE=tt11/ttc11;'
      
        '  if (ttc12>0) then DECEMBRE=tt12/ttc12; if (ttc13>0) then total' +
        '=tt13/ttc13;'
      
        '  GENER=f_divisa(GENER,2); FEBRER=f_divisa(FEBRER,2); MARC=f_div' +
        'isa(MARC,2); ABRIL=f_divisa(ABRIL,2); MAIG=f_divisa(MAIG,2);'
      
        '  JUNY=f_divisa(JUNY,2); JULIOL=f_divisa(JULIOL,2); AGOST=f_divi' +
        'sa(AGOST,2); SETEMBRE=f_divisa(SETEMBRE,2); OCTUBRE=f_divisa(OCT' +
        'UBRE,2);'
      '  NOVEMBRE=f_divisa(NOVEMBRE,2); DECEMBRE=f_divisa(DECEMBRE,2);'
      '  total=f_divisa(total,2);'
      '  suspend;'
      ''
      '  /* fin de totales */'
      'END')
    Dic1 = wDataAnalit.AnaCabe
    Dic1Name = 'anacabe'
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
    Top = 436
  end
  object Uro: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Uro'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA     INTEGER,'
      '         TRACTAMENT   INTEGER,'
      '         DATA_LESSIO  DATE,'
      '         DATA_INGRES  DATE,'
      '         DATA_ALTA    DATE,'
      '         PRESTACIO    VARCHAR(4),'
      '         MOTIU        INTEGER,'
      '         COORDINADOR  VARCHAR(20),'
      '         ANTECEDENTS  CHAR(1),'
      '         VALORACIONS  INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE CONTA INTEGER;'
      'BEGIN'
      #9
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, F.DATA_LESSIO, T.DA' +
        'TA_INGRES, T.DATA_ALTA, T.C_PRESTACIO, T.C_MOTIU, M.METGE'
      '    FROM TRACTAMENTS T'
      '    LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '    JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND T.FI_PROCES = '#39'S'#39
      '    AND F.C_UNITATMEDICA BETWEEN 1 AND 4'
      '    AND (T.DATA_INGRES - F.DATA_LESSIO) < 60 /* 2 MESOS */'
      '    ORDER BY T.DATA_ALTA, T.C_HISTORIA'
      
        '    INTO :HISTORIA, :TRACTAMENT, :DATA_LESSIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :PRESTACIO, :MOTIU, :COORDINADOR'
      '    DO BEGIN'
      
        '        SELECT COUNT(*) FROM UROANTECEDENTS WHERE C_HISTORIA = :' +
        'HISTORIA INTO :CONTA;'
      
        '        IF (CONTA > 0) THEN ANTECEDENTS = '#39'S'#39'; ELSE ANTECEDENTS ' +
        '= '#39'N'#39';'
      '        '
      '        SELECT COUNT(*) FROM UROVALORACIONS'
      '        WHERE C_HISTORIA = :HISTORIA'
      '        AND   C_TRACTAMENT = :TRACTAMENT'
      '        INTO :VALORACIONS;'
      ''
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 480
    Top = 272
  end
  object ECB_medicacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ECB_medicacio'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE)'
      'RETURNS (DATA_INGRES      DATE,'
      '         HISTORIA         INTEGER,'
      '         TRACTAMENT       INTEGER,'
      '         PRESTACIO        VARCHAR(4),'
      '         MOTIU            VARCHAR(40),'
      '         ESTAT            VARCHAR(40),'
      '         MEDICACIO_INGRES VARCHAR(30000),'
      '         DATA_FARMACIA    DATE,'
      '         DIFERENCIA_DIES  INTEGER'
      '         )'
      'AS'
      'BEGIN'
      ''
      
        '  FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_PRESTACIO, T.DATA' +
        '_INGRES, C.N_CODI, A.N_CODI, L.ANOTACIO'
      '  FROM TRACTAMENTS T'
      
        '  JOIN DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACIO AND D.C_DR' +
        'ET = '#39'P89'#39'  /* T'#201' DRET DE TENIR ORDRES M'#200'DIQUES */'
      
        '  JOIN ECBCAP E ON T.C_TRACTAMENT =  E.C_TRACTAMENT AND E.ESTAT ' +
        '<> '#39'N'#39'  /* EL '#39'NO PROCEDEIX'#39' NO */'
      
        '  LEFT JOIN ECBLIN L ON T.C_TRACTAMENT = L.C_TRACTAMENT AND L.C_' +
        'ITEM =71'
      
        '  LEFT JOIN CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIPUSCODI ' +
        '= '#39'MOTIU'#39
      
        '  LEFT JOIN CODICAMPSALFA A ON E.ESTAT = A.C_CODI AND A.TIPUSCOD' +
        'I = '#39'ESTATECB'#39
      '  WHERE T.DATA_INGRES BETWEEN :DATAI AND :DATAF'
      '  ORDER BY T.DATA_INGRES, T.C_HISTORIA, T.C_TRACTAMENT, L.C_ITEM'
      
        '  INTO :HISTORIA, :TRACTAMENT, :PRESTACIO, :DATA_INGRES, :MOTIU,' +
        ' :ESTAT, :MEDICACIO_INGRES'
      '  DO BEGIN'
      '        DATA_FARMACIA = NULL; DIFERENCIA_DIES = NULL;'
      ''
      '        SELECT DATA, F_TRUNCAR(DATA-:DATA_INGRES)'
      '        FROM HISTORIA'
      '        WHERE C_TRACTAMENT = :TRACTAMENT'
      '        AND C_GRUP ='#39'FA'#39
      '        AND DATA >= :DATA_INGRES'
      '        ORDER BY DATA'
      '        ROWS 1'
      '        INTO :DATA_FARMACIA, :DIFERENCIA_DIES;'
      ' '
      '        SUSPEND;'
      '  END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 576
    Top = 68
  end
  object GdbPortal: TDatabase
    AliasName = 'HOLA'
    DatabaseName = 'InternaPortal'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=miope')
    SessionName = 'Default'
    BeforeConnect = GdbPortalBeforeConnect
    Left = 568
    Top = 131
  end
  object ProjectePortal: TDicProjecto
    User_Crea_FieldName = 'user_crea'
    User_Modi_FieldName = 'user_modi'
    Fecha_Crea_FieldName = 'fecha_crea'
    Fecha_Modi_FieldName = 'fecha_modi'
    Versimple = False
    Idioma = Catala
    TituloCorto = 'Guttmann'
    TituloLargo = 'Institut Guttmann'
    Tipo = ttInterbase
    Fecha = 39281
    DataBaseName = 'InternaPortal'
    Organiza = tbBase
    menus = <>
    Grupos = <>
    VerDics = False
    VerStored = False
    Colores.Fondo = clBackground
    Colores.FondoWin = True
    Colores.BarraMenu = clSilver
    Colores.BarraMenuWin = False
    Colores.Ventana = clWhite
    Colores.VentanaWin = False
    Colores.EtiNormal.Charset = DEFAULT_CHARSET
    Colores.EtiNormal.Color = clWindowText
    Colores.EtiNormal.Height = -11
    Colores.EtiNormal.Name = 'MS Sans Serif'
    Colores.EtiNormal.Style = []
    Colores.EtiFocus.Charset = DEFAULT_CHARSET
    Colores.EtiFocus.Color = clWindowText
    Colores.EtiFocus.Height = -11
    Colores.EtiFocus.Name = 'MS Sans Serif'
    Colores.EtiFocus.Style = []
    Colores.EtiF3.Charset = DEFAULT_CHARSET
    Colores.EtiF3.Color = clWindowText
    Colores.EtiF3.Height = -11
    Colores.EtiF3.Name = 'MS Sans Serif'
    Colores.EtiF3.Style = []
    Colores.EtiCalc.Charset = DEFAULT_CHARSET
    Colores.EtiCalc.Color = clWindowText
    Colores.EtiCalc.Height = -11
    Colores.EtiCalc.Name = 'MS Sans Serif'
    Colores.EtiCalc.Style = []
    Colores.EditNormal = clWhite
    Colores.EditFocus = clYellow
    Colores.EditF3 = clAqua
    Colores.EditCalc = clWhite
    Colores.EditNormalF.Charset = DEFAULT_CHARSET
    Colores.EditNormalF.Color = clWindowText
    Colores.EditNormalF.Height = -11
    Colores.EditNormalF.Name = 'MS Sans Serif'
    Colores.EditNormalF.Style = []
    Colores.EditFocusF.Charset = DEFAULT_CHARSET
    Colores.EditFocusF.Color = clWindowText
    Colores.EditFocusF.Height = -11
    Colores.EditFocusF.Name = 'MS Sans Serif'
    Colores.EditFocusF.Style = []
    Colores.EditF3F.Charset = DEFAULT_CHARSET
    Colores.EditF3F.Color = clWindowText
    Colores.EditF3F.Height = -11
    Colores.EditF3F.Name = 'MS Sans Serif'
    Colores.EditF3F.Style = []
    Colores.EditCalcF.Charset = DEFAULT_CHARSET
    Colores.EditCalcF.Color = clWindowText
    Colores.EditCalcF.Height = -11
    Colores.EditCalcF.Name = 'MS Sans Serif'
    Colores.EditCalcF.Style = []
    Colores.Cuadros = clSilver
    Colores.CuadrosF.Charset = DEFAULT_CHARSET
    Colores.CuadrosF.Color = clWindowText
    Colores.CuadrosF.Height = -11
    Colores.CuadrosF.Name = 'MS Sans Serif'
    Colores.CuadrosF.Style = []
    Colores.Panells = clSilver
    Impresora = 0
    SuperCheck = False
    Comodin = '*'
    DecimalSeparator = #0
    TraceOptions.Save_Insert_Values = False
    TraceOptions.Field_Max_Length = 0
    TraceOptions.Max_Decimals = 0
    TraceOptions.Trigger_LogFile = 'c:\IBTrace.log'
    UseDicLog = True
    UseProcLog = False
    DBVersion = tdbInterbase7
    GlobalsList = <>
    Left = 640
    Top = 131
  end
  object Virtual_Esdev: TDic
    CalcNivel = False
    Projecto = ProjectePortal
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
        Aplica = kcFecha
        Nombre = 'Data real'
        NombreDB = 'DATA_REAL'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data incident'
        NombreDB = 'DATA_INCIDENT'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Descripci'#243' de l'#39'incident'
        NombreDB = 'DESCRIPCIO'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = True
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Mesures adoptades'
        NombreDB = 'MESURES'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Afectaci'#243' pacient'
        NombreDB = 'AFECTACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: identificaci'#243
        NombreDB = 'IDENTIFICA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: transport/trasllats'
        NombreDB = 'TRANSPORT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: altres processos administratius'
        NombreDB = 'ALTRESADMIN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: proves diagn'#242'stiques'
        NombreDB = 'PROVESDIAG'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: procediments quir'#250'rgics'
        NombreDB = 'PROCQUIRU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: procediments terap'#232'utics'
        NombreDB = 'PROCTERAP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: documentaci'#243
        NombreDB = 'DOCUMENTACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: infecci'#243' associada a l'#39'assist'#232'ncia sanit'#224'ria'
        NombreDB = 'INFECCIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: medicaci'#243
        NombreDB = 'MEDICACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: sang i productes sanguinis'
        NombreDB = 'SANG'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: dieta - alimentaci'#243
        NombreDB = 'DIETA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: oxigen - gas - vapor'
        NombreDB = 'OXIGEN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: equips / dispositius'
        NombreDB = 'EQUIPS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: comportament alterat / agressiu / abusos'
        NombreDB = 'COMPORTAMENT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: comportament autoagressiu'
        NombreDB = 'AUTOAGRESSIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: accident'
        NombreDB = 'ACCIDENT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: infraestructura / edifici'
        NombreDB = 'INFRAESTRUCTURA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: gesti'#243' organitzativa - recursos'
        NombreDB = 'RECURSOS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: laboratori - anatomia patol'#242'gica'
        NombreDB = 'ANATOMIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'YN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Categoria: altres'
        NombreDB = 'ALTRES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'PK'
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
    Nombre = 'Esdeveniments adversos'
    NombreTabla = 'ESDEVENIMENTS'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Data real'
      'Data incident'
      'Usuari'
      'Hist'#242'ria'
      'Descripci'#243' de l'#39'incident'
      'Mesures adoptades'
      'Afectaci'#243' pacient'
      'Categoria: identificaci'#243
      'Categoria: transport/trasllats'
      'Categoria: altres processos administratius'
      'Categoria: proves diagn'#242'stiques'
      'Categoria: procediments quir'#250'rgics'
      'Categoria: procediments terap'#232'utics'
      'Categoria: documentaci'#243
      'Categoria: infecci'#243' associada a l'#39'assist'#232'ncia sanit'#224'ria'
      'Categoria: medicaci'#243
      'Categoria: sang i productes sanguinis'
      'Categoria: dieta - alimentaci'#243
      'Categoria: oxigen - gas - vapor'
      'Categoria: equips / dispositius'
      'Categoria: comportament alterat / agressiu / abusos'
      'Categoria: comportament autoagressiu'
      'Categoria: accident'
      'Categoria: infraestructura / edifici'
      'Categoria: gesti'#243' organitzativa - recursos'
      'Categoria: laboratori - anatomia patol'#242'gica'
      'Categoria: altres')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 568
    Top = 187
  end
  object Documents: TDic
    CalcNivel = False
    Projecto = ProjectePortal
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi'
        NombreDB = 'C_Doc'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'PK'
      end
      item
        Aplica = kcCaracter
        Nombre = #192'rea'
        NombreDB = 'C_Area'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Doc'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Fitxer catal'#224
        NombreDB = 'F_Doc'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Landscape catal'#224
        NombreDB = 'T_Doc'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'S: Landscape, N: Portrait'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Fitxer castell'#224
        NombreDB = 'F_Doc_Cast'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Landscape castell'#224
        NombreDB = 'T_Doc_Cast'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'S: Landscape, N: Portrait'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
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
      end
      item
        Nombre = 'nom'
        NombreDB = 'nom'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          #192'rea'
          'Descripci'#243)
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
          #192'rea'
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'descripcio'
        NombreDB = 'descripcio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Descripci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Documents'
    NombreTabla = 'DOCUMENTS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Descripci'#243
      #192'rea'
      'Ordre'
      'Baixa'
      'Fitxer catal'#224
      'Landscape catal'#224
      'Fitxer castell'#224
      'Landscape castell'#224)
    IndiceVer = 'area'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 640
    Top = 187
  end
  object P_EstadesMotiu: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ESTADESMOTIU'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DESDE DATE,'
      '  FINS DATE'
      ')'
      'RETURNS'
      '('
      '  C_METGE        VARCHAR(5),'
      '  MOTIU          VARCHAR(10),'
      '  ESTADA_M       DOUBLE PRECISION,'
      '  ESTADA_M_CORR  DOUBLE PRECISION,'
      '  ESTADA_G       DOUBLE PRECISION,'
      '  ESTADA_G_CORR  DOUBLE PRECISION'
      ')'
      'AS '
      '  DECLARE VARIABLE C_MOTIU SMALLINT;'
      'BEGIN'
      ''
      '  FOR SELECT DISTINCT M.CODI FROM VMETGES M'
      '  JOIN TRACTAMENTS T ON T.C_COORDINADOR = M.CODI'
      '  WHERE T.C_PRESTACIO = '#39'1004'#39
      '  AND T.DATA_ALTA BETWEEN :DESDE AND :FINS'
      '  ORDER BY M.CODI'
      '  INTO :C_METGE'
      '  DO BEGIN'
      '    FOR SELECT C_CODI, R_CODI FROM CODICAMPS'
      '    WHERE TIPUSCODI ='#39'MOTIU'#39' AND R_CODI <> '#39#39
      '    ORDER BY C_CODI'
      '    INTO :C_MOTIU, :MOTIU'
      '    DO BEGIN'
      
        '        ESTADA_M=NULL; ESTADA_M_CORR=NULL; ESTADA_G=NULL; ESTADA' +
        '_G_CORR=NULL;'
      '    '
      
        '        SELECT F_DIVISA(AVG(DURADA),2) FROM TRACTAMENTS         ' +
        '                 /* estada mitjana */'
      '        WHERE C_COORDINADOR = :C_METGE'
      '        AND C_PRESTACIO = '#39'1004'#39
      '        AND C_MOTIU = :C_MOTIU'
      '        AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '        INTO :ESTADA_M;'
      ''
      
        '        SELECT F_DIVISA(AVG(DURADA),2) FROM TRACTAMENTS         ' +
        '                 /* estada mitjana corr. */'
      '        WHERE C_COORDINADOR = :C_METGE'
      '        AND C_PRESTACIO = '#39'1004'#39
      '        AND DURADA <= 365 AND C_MOTIU = :C_MOTIU'
      '        AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '        INTO :ESTADA_M_CORR;'
      '    '
      '        SELECT F_DIVISA(AVG(DURADA),2) FROM TRACTAMENTS'
      '        WHERE C_PRESTACIO = '#39'1004'#39
      '        AND C_MOTIU = :C_MOTIU'
      '        AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '        INTO :ESTADA_G;'
      ''
      
        '        SELECT F_DIVISA(AVG(DURADA),2) FROM TRACTAMENTS         ' +
        '                 /* estada mitjana corr. */'
      '        WHERE C_PRESTACIO = '#39'1004'#39
      '        AND DURADA <= 365 AND C_MOTIU = :C_MOTIU'
      '        AND DATA_ALTA BETWEEN :DESDE AND :FINS'
      '        INTO :ESTADA_G_CORR;'
      ''
      
        '        IF ((ESTADA_M <>0) OR (ESTADA_M_CORR <>0) OR (ESTADA_G <' +
        '>0) OR (ESTADA_G_CORR <>0)) THEN'
      '        SUSPEND;'
      '    END;'
      '  END;'
      'END;'
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
    Modi = False
    Left = 272
    Top = 160
  end
  object SessionsGym: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'SessionsGym'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         PROCES   INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA   DATE,'
      '         NUM_SESSIONS INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE TRACT  INTEGER;'
      '  DECLARE VARIABLE PRESTA CHAR(4);'
      'BEGIN'
      #9
      '  FOR SELECT T.C_PROCES'
      '  FROM   TRACTAMENTS T'
      
        '  JOIN   DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET = '#39'X' +
        '1'#39
      '  WHERE  (T.C_PROCES IS NOT NULL)  AND (T.FI_PROCES = '#39'S'#39')'
      '  AND    (T.DATA_ALTA BETWEEN :DATAI AND :DATAF)'
      '  ORDER  BY T.C_HISTORIA, T.DATA_INGRES'
      '  INTO :PROCES'
      '  DO BEGIN'
      
        '      /* Per cada proc'#233's finalitzat en el per'#237'ode indicat, recup' +
        'erem totes les 2014 i en comptem l'#39'assist'#232'ncia al gimn'#224's per a c' +
        'ada una */'
      
        '      FOR SELECT C_HISTORIA, C_TRACTAMENT, DATA_INGRES, DATA_ALT' +
        'A'
      '      FROM TRACTAMENTS'
      '      WHERE C_PROCES = :PROCES AND C_PRESTACIO = '#39'2014'#39
      '      ORDER BY DATA_INGRES'
      '      INTO :HISTORIA, :TRACT, :DATA_INGRES, :DATA_ALTA'
      '      DO BEGIN'
      '          SELECT COUNT(*) FROM ASSISTENCIAGIMNAS'
      
        '          WHERE C_TRACTAMENT = :TRACT AND DATA BETWEEN :DATA_ING' +
        'RES AND :DATA_ALTA'
      '          AND C_TIPUSASS IN(1,2,4,6)'
      '          INTO :NUM_SESSIONS;'
      ''
      '          SUSPEND;'
      '      END;'
      '  END;'
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
    Left = 408
    Top = 272
  end
  object Ictus: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Ictus'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (REG            INTEGER,'
      '         HISTORIA       INTEGER,'
      '         DATA_LESIO     DATE,'
      '         TRACTAMENT     INTEGER,'
      '         MOTIU_INGRES   VARCHAR(40),'
      '         DATA_INGRES    DATE,'
      '         DATA_ALTA      DATE,'
      '         DIES_INGRESSAT DOUBLE PRECISION,'
      '         DIES_LESIONAT  DOUBLE PRECISION,'
      '         SEXE           CHAR(1),'
      '         DATA_NAIXEMENT DATE,'
      '         EDAT_INGRES    DOUBLE PRECISION,'
      '         C_ETIOLOGIA    VARCHAR(15),'
      '         ETIOLOGIA      VARCHAR(255),'
      '         INTERVENCIONS  INTEGER,'
      '         NIHSS_INGRES   CHAR(15),'
      '         NIHSS_ALTA     CHAR(15),'
      '         LCFS_INGRES    CHAR(15),'
      '         LCFS_ALTA      CHAR(15),'
      '         DRS_INGRES     CHAR(15),'
      '         DRS_ALTA       CHAR(15),'
      '         GOSE_INGRES    CHAR(15),'
      '         GOSE_ALTA      CHAR(15)'
      '         )'
      'AS'
      '      DECLARE VARIABLE CLAUI INTEGER;'
      '      DECLARE VARIABLE CLAUA INTEGER;'
      
        '      DECLARE VARIABLE DIM   DOUBLE PRECISION;   /* DIES INGRESS' +
        'AT MITJA */'
      
        '      DECLARE VARIABLE DLM   DOUBLE PRECISION;   /* DIES LESSION' +
        'AT MITJA */'
      
        '      DECLARE VARIABLE EIM   DOUBLE PRECISION;   /* EDAT A L'#39'ING' +
        'RES MITJA */'
      'BEGIN'
      ''
      '  REG=0; DIM=0; DLM=0; EIM=0;'
      '      '
      
        '  FOR SELECT T.C_HISTORIA, F.DATA_LESSIO, T.C_TRACTAMENT, T.DATA' +
        '_INGRES, T.DATA_ALTA, (T.DATA_ALTA - T.DATA_INGRES),'
      
        '             (T.DATA_INGRES - F.DATA_LESSIO), F.SEXO, F.FECHA_NA' +
        'C,F_TRUNCAR((T.DATA_INGRES - F.FECHA_NAC)/365), F.C_ETIOLOGIA,'
      '             C.N_ICD, CC.N_CODI'
      '  FROM TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '  LEFT JOIN CODIICD C ON F.C_ETIOLOGIA = C.C_ICD'
      
        '  LEFT JOIN CODICAMPS CC ON T.C_MOTIU = CC.C_CODI AND CC.TIPUSCO' +
        'DI = '#39'MOTIU'#39
      
        '  WHERE ((F.C_ETIOLOGIA IN('#39'431'#39','#39'434'#39','#39'436'#39')) OR (F.C_ETIOLOGIA' +
        ' LIKE '#39'433.%1'#39') OR (F.C_UNITATMEDICA BETWEEN 14 AND 18))'
      
        '/*  AND   (T.DATA_ALTA BETWEEN :DATAI AND :DATAF)          /*   ' +
        '    alta en un per'#237'ode */'
      
        '  AND   (t.data_ingres <= :DATAF and (t.data_alta >= :DATAI or t' +
        '.data_alta is null))  /* atesos en un per'#237'ode */'
      '  AND   (T.C_PRESTACIO = '#39'1004'#39')'
      '  ORDER BY T.C_HISTORIA, T.DATA_INGRES'
      
        '  INTO :HISTORIA, :DATA_LESIO, :TRACTAMENT, :DATA_INGRES, :DATA_' +
        'ALTA, :DIES_INGRESSAT, :DIES_LESIONAT, :SEXE, :DATA_NAIXEMENT,'
      '       :EDAT_INGRES, :C_ETIOLOGIA, :ETIOLOGIA, :MOTIU_INGRES'
      '  DO BEGIN'
      
        '      REG = REG + 1; DIM = DIM + DIES_INGRESSAT; DLM = DLM + DIE' +
        'S_LESIONAT; EIM = EIM + EDAT_INGRES;'
      '      '
      
        '      SELECT COUNT(*) FROM BQUIRURGIC WHERE C_TRACTAMENT = :TRAC' +
        'TAMENT AND (ESTAT <> 40) INTO :INTERVENCIONS;'
      '      IF (INTERVENCIONS IS NULL) THEN INTERVENCIONS = 0;'
      '      '
      
        '      /* NIHSS_INGRES: busco l'#39'entrada tipus I. Si no hi '#233's, bus' +
        'co l'#39'entrada feta durant els primers 15 dies des de l'#39'ingr'#233's */'
      '      CLAUI=0;'
      
        '      SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=73 AND C_TRACTA' +
        'MENT=:TRACTAMENT AND ANULAT='#39'N'#39' AND TIPUS IN('#39'I'#39','#39'Y'#39','#39'i'#39')'
      '      ORDER BY DATA ROWS 1 INTO :CLAUI;'
      '      IF (CLAUI IS NULL) THEN CLAUI=0;'
      '      IF (CLAUI=0) THEN'
      '      BEGIN'
      
        '          SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=73 AND C_TR' +
        'ACTAMENT=:TRACTAMENT AND ANULAT='#39'N'#39
      
        '          AND DATA BETWEEN :DATA_INGRES AND (:DATA_INGRES + 15) ' +
        'ORDER BY DATA ROWS 1 INTO :CLAUI;'
      '          IF (CLAUI IS NULL) THEN CLAUI=0;'
      '      END;'
      '      '
      
        '      IF (CLAUI<>0) THEN SELECT D_ITEM FROM ESCALESLIN WHERE C_I' +
        'TEM = 672 AND CLAU = :CLAUI INTO :NIHSS_INGRES;'
      '      ELSE NIHSS_INGRES=NULL;'
      ''
      '      /* NIHSS_ALTA */'
      '      CLAUA=0;'
      
        '      SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=73 AND C_TRACTA' +
        'MENT=:TRACTAMENT AND ANULAT='#39'N'#39' AND TIPUS IN('#39'A'#39','#39'E'#39','#39'a'#39','#39'T'#39','#39't'#39 +
        ')'
      '      AND CLAU > :CLAUI ORDER BY DATA ROWS 1 INTO :CLAUA;'
      '      IF (CLAUA IS NULL) THEN CLAUA=0;'
      '      IF (CLAUA=0) THEN'
      '      BEGIN'
      
        '          SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=73 AND C_TR' +
        'ACTAMENT=:TRACTAMENT AND ANULAT='#39'N'#39
      
        '          AND DATA BETWEEN (:DATA_ALTA - 15) AND (:DATA_ALTA + 1' +
        '5) AND CLAU > :CLAUI'
      '          ORDER BY DATA ROWS 1 INTO :CLAUA;'
      '          IF (CLAUA IS NULL) THEN CLAUA=0;'
      '      END;'
      ''
      
        '      IF (CLAUA<>0) THEN SELECT D_ITEM FROM ESCALESLIN WHERE C_I' +
        'TEM = 672 AND CLAU = :CLAUA INTO :NIHSS_ALTA;'
      '      ELSE NIHSS_ALTA=NULL;'
      ''
      
        '      /* LCFS_INGRES: busco l'#39'entrada tipus I. Si no hi '#233's, busc' +
        'o l'#39'entrada feta durant els primers 15 dies des de l'#39'ingr'#233's */'
      '      CLAUI=0;'
      
        '      SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=6 AND C_TRACTAM' +
        'ENT=:TRACTAMENT AND ANULAT='#39'N'#39' AND TIPUS IN('#39'I'#39','#39'Y'#39','#39'i'#39')'
      '      ORDER BY DATA ROWS 1 INTO :CLAUI;'
      '      IF (CLAUI IS NULL) THEN CLAUI=0;'
      '      IF (CLAUI=0) THEN'
      '      BEGIN'
      
        '          SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=6 AND C_TRA' +
        'CTAMENT=:TRACTAMENT AND ANULAT='#39'N'#39
      
        '          AND DATA BETWEEN :DATA_INGRES AND (:DATA_INGRES + 15) ' +
        'ORDER BY DATA ROWS 1 INTO :CLAUI;'
      '          IF (CLAUI IS NULL) THEN CLAUI=0;'
      '      END;'
      ''
      
        '      IF (CLAUI<>0) THEN SELECT D_ITEM FROM ESCALESLIN WHERE C_I' +
        'TEM = 71 AND CLAU = :CLAUI INTO :LCFS_INGRES;'
      '      ELSE LCFS_INGRES=NULL;'
      ''
      '      /* LCFS_ALTA */'
      '      CLAUA=0;'
      
        '      SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=6 AND C_TRACTAM' +
        'ENT=:TRACTAMENT AND ANULAT='#39'N'#39' AND TIPUS IN('#39'A'#39','#39'E'#39','#39'a'#39','#39'T'#39','#39't'#39')'
      '      AND CLAU > :CLAUI ORDER BY DATA ROWS 1 INTO :CLAUA;'
      '      IF (CLAUA IS NULL) THEN CLAUA=0;'
      '      IF (CLAUA=0) THEN'
      '      BEGIN'
      
        '          SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=6 AND C_TRA' +
        'CTAMENT=:TRACTAMENT AND ANULAT='#39'N'#39
      
        '          AND DATA BETWEEN (:DATA_ALTA - 15) AND (:DATA_ALTA + 1' +
        '5) AND CLAU > :CLAUI'
      '          ORDER BY DATA ROWS 1 INTO :CLAUA;'
      '          IF (CLAUA IS NULL) THEN CLAUA=0;'
      '      END;'
      ''
      
        '      IF (CLAUA<>0) THEN SELECT D_ITEM FROM ESCALESLIN WHERE C_I' +
        'TEM = 71 AND CLAU = :CLAUA INTO :LCFS_ALTA;'
      '      ELSE LCFS_ALTA=NULL;'
      ''
      
        '      /* DRS_INGRES: busco l'#39'entrada tipus I. Si no hi '#233's, busco' +
        ' l'#39'entrada feta durant els primers 15 dies des de l'#39'ingr'#233's */'
      '      CLAUI=0;'
      
        '      SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=7 AND C_TRACTAM' +
        'ENT=:TRACTAMENT AND ANULAT='#39'N'#39' AND TIPUS IN('#39'I'#39','#39'Y'#39','#39'i'#39')'
      '      ORDER BY DATA ROWS 1 INTO :CLAUI;'
      '      IF (CLAUI IS NULL) THEN CLAUI=0;'
      '      IF (CLAUI=0) THEN'
      '      BEGIN'
      
        '          SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=7 AND C_TRA' +
        'CTAMENT=:TRACTAMENT AND ANULAT='#39'N'#39
      
        '          AND DATA BETWEEN :DATA_INGRES AND (:DATA_INGRES + 15) ' +
        'ORDER BY DATA ROWS 1 INTO :CLAUI;'
      '          IF (CLAUI IS NULL) THEN CLAUI=0;'
      '      END;'
      ''
      
        '      IF (CLAUI<>0) THEN SELECT D_ITEM FROM ESCALESLIN WHERE C_I' +
        'TEM = 84 AND CLAU = :CLAUI INTO :DRS_INGRES;'
      '      ELSE DRS_INGRES=NULL;'
      ''
      '      /* DRS_ALTA */'
      '      CLAUA=0;'
      
        '      SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=7 AND C_TRACTAM' +
        'ENT=:TRACTAMENT AND ANULAT='#39'N'#39' AND TIPUS IN('#39'A'#39','#39'E'#39','#39'a'#39','#39'T'#39','#39't'#39')'
      '      AND CLAU > :CLAUI ORDER BY DATA ROWS 1 INTO :CLAUA;'
      '      IF (CLAUA IS NULL) THEN CLAUA=0;'
      '      IF (CLAUA=0) THEN'
      '      BEGIN'
      
        '          SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=7 AND C_TRA' +
        'CTAMENT=:TRACTAMENT AND ANULAT='#39'N'#39
      
        '          AND DATA BETWEEN (:DATA_ALTA - 15) AND (:DATA_ALTA + 1' +
        '5) AND CLAU > :CLAUI'
      '          ORDER BY DATA ROWS 1 INTO :CLAUA;'
      '          IF (CLAUA IS NULL) THEN CLAUA=0;'
      '      END;'
      ''
      
        '      IF (CLAUA<>0) THEN SELECT D_ITEM FROM ESCALESLIN WHERE C_I' +
        'TEM = 84 AND CLAU = :CLAUA INTO :DRS_ALTA;'
      '      ELSE DRS_ALTA=NULL;'
      '      '
      
        '      /* GOSE_INGRES: busco l'#39'entrada tipus I. Si no hi '#233's, busc' +
        'o l'#39'entrada feta durant els primers 15 dies des de l'#39'ingr'#233's */'
      '      CLAUI=0;'
      
        '      SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=51 AND C_TRACTA' +
        'MENT=:TRACTAMENT AND ANULAT='#39'N'#39' AND TIPUS IN('#39'I'#39','#39'Y'#39','#39'i'#39')'
      '      ORDER BY DATA ROWS 1 INTO :CLAUI;'
      '      IF (CLAUI IS NULL) THEN CLAUI=0;'
      '      IF (CLAUI=0) THEN'
      '      BEGIN'
      
        '          SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=51 AND C_TR' +
        'ACTAMENT=:TRACTAMENT AND ANULAT='#39'N'#39
      
        '          AND DATA BETWEEN :DATA_INGRES AND (:DATA_INGRES + 15) ' +
        'ORDER BY DATA ROWS 1 INTO :CLAUI;'
      '          IF (CLAUI IS NULL) THEN CLAUI=0;'
      '      END;'
      ''
      
        '      IF (CLAUI<>0) THEN SELECT D_ITEM FROM ESCALESLIN WHERE C_I' +
        'TEM = 416 AND CLAU = :CLAUI INTO :GOSE_INGRES;'
      '      ELSE GOSE_INGRES=NULL;'
      ''
      '      /* GOSE_ALTA */'
      '      CLAUA=0;'
      
        '      SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=51 AND C_TRACTA' +
        'MENT=:TRACTAMENT AND ANULAT='#39'N'#39' AND TIPUS IN('#39'A'#39','#39'E'#39','#39'a'#39','#39'T'#39','#39't'#39 +
        ')'
      '      AND CLAU > :CLAUI ORDER BY DATA ROWS 1 INTO :CLAUA;'
      '      IF (CLAUA IS NULL) THEN CLAUA=0;'
      '      IF (CLAUA=0) THEN'
      '      BEGIN'
      
        '          SELECT CLAU FROM ESCALESCAP WHERE C_ESCALA=51 AND C_TR' +
        'ACTAMENT=:TRACTAMENT AND ANULAT='#39'N'#39
      
        '          AND DATA BETWEEN (:DATA_ALTA - 15) AND (:DATA_ALTA + 1' +
        '5) AND CLAU > :CLAUI'
      '          ORDER BY DATA ROWS 1 INTO :CLAUA;'
      '          IF (CLAUA IS NULL) THEN CLAUA=0;'
      '      END;'
      ''
      
        '      IF (CLAUA<>0) THEN SELECT D_ITEM FROM ESCALESLIN WHERE C_I' +
        'TEM = 416 AND CLAU = :CLAUA INTO :GOSE_ALTA;'
      '      ELSE GOSE_ALTA=NULL;'
      ''
      '      SUSPEND;'
      '  END;'
      '  /* PINTO REGISTRE AMB MITJANES */'
      
        '  HISTORIA=NULL; DATA_LESIO=NULL; TRACTAMENT=NULL; DATA_INGRES=N' +
        'ULL; DATA_ALTA=NULL; SEXE=NULL; DATA_NAIXEMENT=NULL;'
      
        '  C_ETIOLOGIA=NULL; ETIOLOGIA=NULL; INTERVENCIONS=NULL; NIHSS_IN' +
        'GRES=NULL; NIHSS_ALTA=NULL; LCFS_INGRES=NULL; LCFS_ALTA=NULL;'
      
        '  DRS_INGRES=NULL; DRS_ALTA=NULL; GOSE_INGRES=NULL; GOSE_ALTA=NU' +
        'LL;MOTIU_INGRES=NULL;'
      '  DIES_INGRESSAT = F_DIVISA(DIM/REG,2);'
      '  DIES_LESIONAT  = F_DIVISA(DLM/REG,2);'
      '  EDAT_INGRES    = F_DIVISA(EIM/REG,2);'
      '  REG=0;'
      '  SUSPEND;'
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
    Left = 346
    Top = 272
  end
  object Urologia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Urologia'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA      INTEGER,'
      '         TRACTAMENT    INTEGER,'
      '         PRESTACIO     CHAR(4),'
      '         COORDINADOR   VARCHAR(20),'
      '         MOTIU         SMALLINT,'
      '         LMOTIU        VARCHAR(40),'
      '         ETIOLOGIA     VARCHAR(15),'
      '         ICD_ETIOLOGIA VARCHAR(255),'
      '         DATA_INGRES   DATE,'
      '         DATA_ALTA     DATE,'
      '         C_DIAGINGRES  VARCHAR(15),'
      '         ICD_DIAGINGRES VARCHAR(255),'
      '         N_DIAGINGRES   VARCHAR(40),'
      '         C_DIAGALTA     VARCHAR(15),'
      '         ICD_DIAGALTA   VARCHAR(255),'
      '         N_DIAGALTA     VARCHAR(40),'
      '/*         C_DIAGNEUROALTA   VARCHAR(15),*/'
      '         N_DIAGNEUROALTA   VARCHAR(40),'
      '         INFO        VARCHAR(11),'
      '         TIPUS       CHAR(1),'
      '         CODI_ICD    VARCHAR(15),'
      '         LCODI_ICD   VARCHAR(255),'
      '         LITERAL     VARCHAR(80)'
      '         )'
      'AS'
      '  DECLARE VARIABLE INTERV     INTEGER;'
      '  DECLARE VARIABLE ECBS       INTEGER;'
      '  DECLARE VARIABLE ORDRE      SMALLINT;'
      '  DECLARE VARIABLE C_DIAGNEUROALTA VARCHAR(15);'
      '  DECLARE VARIABLE PROC       VARCHAR(15);'
      '  DECLARE VARIABLE NPROC      VARCHAR(80);'
      '  DECLARE VARIABLE ICD_PROC   VARCHAR(255);'
      'BEGIN'
      '      '
      '    /* TRACTAMENTS */'
      
        '    INFO='#39#39'; TIPUS=NULL; ORDRE=NULL; CODI_ICD=NULL; LITERAL=NULL' +
        '; LCODI_ICD=NULL;'
      
        '    FOR SELECT F.C_ETIOLOGIA, T.C_HISTORIA, M.METGE, T.C_TRACTAM' +
        'ENT, T.C_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU, C.N_C' +
        'ODI,'
      
        '               T.C_DIAGNOSTICINGRES, T.N_DIAGNOSTICINGRES, T.C_D' +
        'IAGNOSTICALTA, T.N_DIAGNOSTICALTA,'
      
        '               T.C_DIAGNOSTICNEUROLOGICALTA, T.N_DIAGNOSTICNEURO' +
        'LOGICALTA, E.N_ICD, E2.N_ICD, E3.N_ICD'
      '    FROM TRACTAMENTS T'
      
        '    JOIN METGES M         ON T.C_COORDINADOR = M.CODI AND M.C_ES' +
        'PECIAL = '#39'03'#39
      '    LEFT JOIN FILIACIO F  ON T.C_HISTORIA = F.NUM_HIST'
      
        '    LEFT JOIN CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIPUSCOD' +
        'I = '#39'MOTIU'#39
      '    LEFT JOIN CODIICD E   ON F.C_ETIOLOGIA = E.C_ICD'
      '    LEFT JOIN CODIICD E2  ON T.C_DIAGNOSTICINGRES = E2.C_ICD'
      '    LEFT JOIN CODIICD E3  ON T.C_DIAGNOSTICALTA = E3.C_ICD'
      
        '    WHERE (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI OR' +
        ' T.DATA_ALTA IS NULL))'
      '    AND NOT (T.C_PRESTACIO IN ('#39'2005'#39'))'
      '    ORDER BY T.C_TRACTAMENT'
      
        '    INTO :ETIOLOGIA, :HISTORIA, :COORDINADOR, :TRACTAMENT, :PRES' +
        'TACIO, :DATA_INGRES, :DATA_ALTA, :MOTIU, :LMOTIU, :C_DIAGINGRES,' +
        ' :N_DIAGINGRES,'
      
        '         :C_DIAGALTA, :N_DIAGALTA, :C_DIAGNEUROALTA, :N_DIAGNEUR' +
        'OALTA, :ICD_ETIOLOGIA, :ICD_DIAGINGRES, :ICD_DIAGALTA'
      '    DO BEGIN'
      
        '        /* ECB: mirar que tingui 10-Malaltia actual o 67-Motiu a' +
        'ssist'#232'ncia ple com a m'#237'nim */'
      '        IF (PRESTACIO='#39'1004'#39') THEN'
      '        BEGIN'
      
        '            INFO='#39'ECB'#39'; ECBS=0; TIPUS=NULL; ORDRE=NULL; CODI_ICD' +
        '=NULL; LITERAL=NULL; LCODI_ICD=NULL;'
      '            SELECT COUNT(*) FROM ECBLIN'
      
        '            WHERE C_TRACTAMENT = :TRACTAMENT AND C_ITEM IN(10,67' +
        ')'
      '            INTO :ECBS;'
      '            '
      '            IF (ECBS IS NULL) THEN ECBS=0;'
      '            IF (ECBS>0) THEN SUSPEND;'
      '        END;'
      '        '
      '        /* DIAGN'#210'STICS */'
      
        '        INFO='#39'DIAG'#39'; TIPUS=NULL; ORDRE=NULL; CODI_ICD=NULL; LITE' +
        'RAL=NULL; LCODI_ICD=NULL;'
      
        '        FOR SELECT D.TIPUS, D.ORDRE, D.C_DIAGNOSTIC, D.N_DIAGNOS' +
        'TIC, C.N_ICD FROM DIAGNOSTICS D'
      '        LEFT JOIN CODIICD C ON D.C_DIAGNOSTIC = C.C_ICD'
      '        WHERE C_TRACTAMENT = :TRACTAMENT'
      
        '        AND ((N_DIAGNOSTIC <> '#39#39') OR ((C_METGE <> '#39#39') AND (C_MET' +
        'GE <> '#39'Q91'#39')))'
      '        ORDER BY TIPUS, ORDRE'
      '        INTO :TIPUS, :ORDRE, :CODI_ICD, :LITERAL, :LCODI_ICD'
      '        DO BEGIN'
      '            SUSPEND;'
      '        END;'
      ''
      '        /* PROCEDIMENTS */'
      
        '        INFO='#39'PROC'#39'; TIPUS=NULL; ORDRE=NULL; CODI_ICD=NULL; LITE' +
        'RAL=NULL; LCODI_ICD=NULL;'
      
        '        FOR SELECT P.TIPUS, P.ORDRE, P.C_PROCEDIMENT, P.N_PROCED' +
        'IMENT, C.N_ICD FROM TPROCEDIMENTS P'
      '        LEFT JOIN CODIICD C ON P.C_PROCEDIMENT = C.C_ICD'
      '        WHERE C_TRACTAMENT = :TRACTAMENT'
      
        '        AND ((N_PROCEDIMENT <> '#39#39') OR ((C_METGE <> '#39#39') AND (C_ME' +
        'TGE <> '#39'Q91'#39')))'
      '        ORDER BY TIPUS, ORDRE'
      '        INTO :TIPUS, :ORDRE, :CODI_ICD, :LITERAL, :LCODI_ICD'
      '        DO BEGIN'
      '            SUSPEND;'
      '        END;'
      '    END;'
      '    '
      '    /* INTERVENCIONS */'
      
        '    INFO='#39#39'; TIPUS=NULL; ORDRE=NULL; CODI_ICD=NULL; LITERAL=NULL' +
        '; LCODI_ICD=NULL;'
      
        '    FOR SELECT F.C_ETIOLOGIA, T.C_HISTORIA, M.METGE, T.C_TRACTAM' +
        'ENT, T.C_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU, C.N_C' +
        'ODI,'
      
        '               T.C_DIAGNOSTICINGRES, T.N_DIAGNOSTICINGRES, T.C_D' +
        'IAGNOSTICALTA, T.N_DIAGNOSTICALTA,'
      
        '               T.C_DIAGNOSTICNEUROLOGICALTA, T.N_DIAGNOSTICNEURO' +
        'LOGICALTA, B.C_INTERV, B.C_DIAG_OP, B.N_DIAG_OP, B.C_PROCEDIMENT' +
        ','
      
        '               B.N_PROCEDIMENT, E.N_ICD, E2.N_ICD, E3.N_ICD, E4.' +
        'N_ICD, E5.N_ICD'
      '    FROM TRACTAMENTS T'
      
        '/*    JOIN METGES M         ON T.C_COORDINADOR = M.CODI AND M.C_' +
        'ESPECIAL = '#39'03'#39'*/'
      '    JOIN BQUIRURGIC B     ON T.C_TRACTAMENT = B.C_TRACTAMENT'
      
        '    JOIN METGES M         ON B.C_METGE_FI = M.CODI AND M.C_ESPEC' +
        'IAL = '#39'03'#39
      '    LEFT JOIN FILIACIO F  ON T.C_HISTORIA = F.NUM_HIST'
      
        '    LEFT JOIN CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIPUSCOD' +
        'I = '#39'MOTIU'#39
      '    LEFT JOIN CODIICD E   ON F.C_ETIOLOGIA = E.C_ICD'
      '    LEFT JOIN CODIICD E2  ON T.C_DIAGNOSTICINGRES = E2.C_ICD'
      '    LEFT JOIN CODIICD E3  ON T.C_DIAGNOSTICALTA = E3.C_ICD'
      '    LEFT JOIN CODIICD E4  ON B.C_DIAG_OP = E4.C_ICD'
      '    LEFT JOIN CODIICD E5  ON B.C_PROCEDIMENT = E5.C_ICD'
      
        '    WHERE /*(T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI ' +
        'OR T.DATA_ALTA IS NULL))*/ (B.ENTRADA BETWEEN :DATAI AND :DATAF)'
      '    AND (B.ESTAT <> 40)'
      '    ORDER BY T.C_TRACTAMENT'
      
        '    INTO :ETIOLOGIA, :HISTORIA, :COORDINADOR, :TRACTAMENT, :PRES' +
        'TACIO, :DATA_INGRES, :DATA_ALTA, :MOTIU, :LMOTIU, :C_DIAGINGRES,' +
        ' :N_DIAGINGRES,'
      
        '         :C_DIAGALTA, :N_DIAGALTA, :C_DIAGNEUROALTA, :N_DIAGNEUR' +
        'OALTA, :INTERV, :CODI_ICD, :LITERAL, :PROC, :NPROC, :ICD_ETIOLOG' +
        'IA,'
      '         :ICD_DIAGINGRES, :ICD_DIAGALTA, :LCODI_ICD, :ICD_PROC'
      '    DO BEGIN'
      '        ORDRE=NULL; INFO='#39'DIAG QUIRO'#39';'
      '        SUSPEND;'
      
        '        INFO='#39'PROC QUIRO'#39'; CODI_ICD= PROC; LITERAL=NPROC; LCODI_' +
        'ICD=ICD_PROC;'
      '        SUSPEND;'
      ''
      '        ORDRE=NULL; CODI_ICD=NULL; LITERAL=NULL; LCODI_ICD=NULL;'
      
        '        FOR SELECT P.ORDRE, P.C_PROCEDIMENT, P.N_PROCEDIMENT, C.' +
        'N_ICD FROM BQPROCEDIMENTS P'
      '        LEFT JOIN CODIICD C ON P.C_PROCEDIMENT = C.C_ICD'
      '        WHERE P.C_INTERV = :INTERV'
      '        ORDER BY P.ORDRE'
      '        INTO :ORDRE, :CODI_ICD, :LITERAL, :LCODI_ICD'
      '        DO BEGIN'
      '            SUSPEND;'
      '        END;'
      '    END;'
      '    '
      '    /* INTERCONSULTES */'
      
        '    INFO='#39#39'; TIPUS=NULL; ORDRE=NULL; CODI_ICD=NULL; LITERAL=NULL' +
        '; LCODI_ICD=NULL;'
      
        '    FOR SELECT F.C_ETIOLOGIA, T.C_HISTORIA, M.METGE, T.C_TRACTAM' +
        'ENT, T.C_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU, C.N_C' +
        'ODI,'
      
        '               T.C_DIAGNOSTICINGRES, T.N_DIAGNOSTICINGRES, T.C_D' +
        'IAGNOSTICALTA, T.N_DIAGNOSTICALTA,'
      
        '               T.C_DIAGNOSTICNEUROLOGICALTA, T.N_DIAGNOSTICNEURO' +
        'LOGICALTA, I.C_TIPUS, I.DIAG_DEFINITIU, E.N_ICD, E2.N_ICD, E3.N_' +
        'ICD'
      '    FROM INTERCON I'
      '    JOIN TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMENT'
      '    JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '    LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '    LEFT JOIN CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIPUSCOD' +
        'I = '#39'MOTIU'#39
      '    LEFT JOIN CODIICD E ON F.C_ETIOLOGIA = E.C_ICD'
      '    LEFT JOIN CODIICD E2  ON T.C_DIAGNOSTICINGRES = E2.C_ICD'
      '    LEFT JOIN CODIICD E3  ON T.C_DIAGNOSTICALTA = E3.C_ICD'
      '    WHERE I.DATA1 BETWEEN :DATAI AND :DATAF'
      '    AND   I.C_ESPECIAL IN ('#39'03'#39','#39'37'#39')'
      '    AND   I.ESTAT IN (50,90,95,96)'
      '    ORDER BY T.C_TRACTAMENT'
      
        '    INTO :ETIOLOGIA, :HISTORIA, :COORDINADOR, :TRACTAMENT, :PRES' +
        'TACIO, :DATA_INGRES, :DATA_ALTA, :MOTIU, :LMOTIU, :C_DIAGINGRES,' +
        ' :N_DIAGINGRES,'
      
        '         :C_DIAGALTA, :N_DIAGALTA, :C_DIAGNEUROALTA, :N_DIAGNEUR' +
        'OALTA, :INFO, :LITERAL, :ICD_ETIOLOGIA, :ICD_DIAGINGRES, :ICD_DI' +
        'AGALTA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      '    '
      
        '    /* INTERCONSULTES 2: ANAL, RX i PROVES ESPECIALS demanades p' +
        'er ur'#242'legs */'
      
        '    INFO='#39#39'; TIPUS=NULL; ORDRE=NULL; CODI_ICD=NULL; LITERAL=NULL' +
        '; LCODI_ICD=NULL;'
      
        '    FOR SELECT F.C_ETIOLOGIA, T.C_HISTORIA, M.METGE, T.C_TRACTAM' +
        'ENT, T.C_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU, C.N_C' +
        'ODI,'
      
        '               T.C_DIAGNOSTICINGRES, T.N_DIAGNOSTICINGRES, T.C_D' +
        'IAGNOSTICALTA, T.N_DIAGNOSTICALTA,'
      
        '               T.C_DIAGNOSTICNEUROLOGICALTA, T.N_DIAGNOSTICNEURO' +
        'LOGICALTA, I.C_TIPUS, I.DIAG_DEFINITIU, E.N_ICD, E2.N_ICD, E3.N_' +
        'ICD'
      '    FROM INTERCON I'
      '    JOIN TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMENT'
      '    JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      
        '    JOIN METGES M2 ON I.C_METGE1 = M2.CODI AND M2.C_ESPECIAL = '#39 +
        '03'#39
      '    LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '    LEFT JOIN CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIPUSCOD' +
        'I = '#39'MOTIU'#39
      '    LEFT JOIN CODIICD E ON F.C_ETIOLOGIA = E.C_ICD'
      '    LEFT JOIN CODIICD E2  ON T.C_DIAGNOSTICINGRES = E2.C_ICD'
      '    LEFT JOIN CODIICD E3  ON T.C_DIAGNOSTICALTA = E3.C_ICD'
      '    WHERE I.DATA1 BETWEEN :DATAI AND :DATAF'
      '    AND   I.ESTAT IN (91,92,93)'
      '    ORDER BY T.C_TRACTAMENT'
      
        '    INTO :ETIOLOGIA, :HISTORIA, :COORDINADOR, :TRACTAMENT, :PRES' +
        'TACIO, :DATA_INGRES, :DATA_ALTA, :MOTIU, :LMOTIU, :C_DIAGINGRES,' +
        ' :N_DIAGINGRES,'
      
        '         :C_DIAGALTA, :N_DIAGALTA, :C_DIAGNEUROALTA, :N_DIAGNEUR' +
        'OALTA, :INFO, :LITERAL, :ICD_ETIOLOGIA, :ICD_DIAGINGRES, :ICD_DI' +
        'AGALTA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    '
      '    /* FITXA UROL'#210'GICA ANTECEDENTS */'
      
        '    INFO='#39'ANTECEDENTS'#39'; TIPUS=NULL; ORDRE=NULL; CODI_ICD=NULL; L' +
        'ITERAL=NULL; LCODI_ICD=NULL;'
      
        '    FOR SELECT F.C_ETIOLOGIA, T.C_HISTORIA, M.METGE, T.C_TRACTAM' +
        'ENT, T.C_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU, C.N_C' +
        'ODI,'
      
        '               T.C_DIAGNOSTICINGRES, T.N_DIAGNOSTICINGRES, T.C_D' +
        'IAGNOSTICALTA, T.N_DIAGNOSTICALTA,'
      
        '               T.C_DIAGNOSTICNEUROLOGICALTA, T.N_DIAGNOSTICNEURO' +
        'LOGICALTA, E.N_ICD, E2.N_ICD, E3.N_ICD'
      '    FROM TRACTAMENTS T'
      
        '    JOIN METGES M ON T.C_COORDINADOR = M.CODI AND M.C_ESPECIAL =' +
        ' '#39'03'#39
      '    JOIN UROANTECEDENTS U ON T.C_HISTORIA = U.C_HISTORIA'
      '    LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '    LEFT JOIN CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIPUSCOD' +
        'I = '#39'MOTIU'#39
      '    LEFT JOIN CODIICD E ON F.C_ETIOLOGIA = E.C_ICD'
      '    LEFT JOIN CODIICD E2  ON T.C_DIAGNOSTICINGRES = E2.C_ICD'
      '    LEFT JOIN CODIICD E3  ON T.C_DIAGNOSTICALTA = E3.C_ICD'
      '    WHERE (U.DATA BETWEEN :DATAI AND :DATAF)'
      '    ORDER BY T.C_TRACTAMENT'
      
        '    INTO :ETIOLOGIA, :HISTORIA, :COORDINADOR, :TRACTAMENT, :PRES' +
        'TACIO, :DATA_INGRES, :DATA_ALTA, :MOTIU, :LMOTIU, :C_DIAGINGRES,' +
        ' :N_DIAGINGRES,'
      
        '         :C_DIAGALTA, :N_DIAGALTA, :C_DIAGNEUROALTA, :N_DIAGNEUR' +
        'OALTA, :ICD_ETIOLOGIA, :ICD_DIAGINGRES, :ICD_DIAGALTA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    /* FITXA UROL'#210'GICA VALORACIONS */'
      
        '    INFO='#39'VALORACIONS'#39'; TIPUS=NULL; ORDRE=NULL; CODI_ICD=NULL; L' +
        'ITERAL=NULL; LCODI_ICD=NULL;'
      
        '    FOR SELECT F.C_ETIOLOGIA, T.C_HISTORIA, M.METGE, T.C_TRACTAM' +
        'ENT, T.C_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU, C.N_C' +
        'ODI,'
      
        '               T.C_DIAGNOSTICINGRES, T.N_DIAGNOSTICINGRES, T.C_D' +
        'IAGNOSTICALTA, T.N_DIAGNOSTICALTA,'
      
        '               T.C_DIAGNOSTICNEUROLOGICALTA, T.N_DIAGNOSTICNEURO' +
        'LOGICALTA, E.N_ICD, E2.N_ICD, E3.N_ICD'
      '    FROM TRACTAMENTS T'
      
        '    JOIN METGES M ON T.C_COORDINADOR = M.CODI AND M.C_ESPECIAL =' +
        ' '#39'03'#39
      '    JOIN UROVALORACIONS U ON T.C_TRACTAMENT = U.C_TRACTAMENT'
      '    LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '    LEFT JOIN CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIPUSCOD' +
        'I = '#39'MOTIU'#39
      '    LEFT JOIN CODIICD E ON F.C_ETIOLOGIA = E.C_ICD'
      '    LEFT JOIN CODIICD E2  ON T.C_DIAGNOSTICINGRES = E2.C_ICD'
      '    LEFT JOIN CODIICD E3  ON T.C_DIAGNOSTICALTA = E3.C_ICD'
      '    WHERE (U.DATA BETWEEN :DATAI AND :DATAF)'
      '    ORDER BY T.C_TRACTAMENT'
      
        '    INTO :ETIOLOGIA, :HISTORIA, :COORDINADOR, :TRACTAMENT, :PRES' +
        'TACIO, :DATA_INGRES, :DATA_ALTA, :MOTIU, :LMOTIU, :C_DIAGINGRES,' +
        ' :N_DIAGINGRES,'
      
        '         :C_DIAGALTA, :N_DIAGALTA, :C_DIAGNEUROALTA, :N_DIAGNEUR' +
        'OALTA, :ICD_ETIOLOGIA, :ICD_DIAGINGRES, :ICD_DIAGALTA'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 296
    Top = 272
  end
  object Uro_resum: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Uro_resum'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (TIPUS   VARCHAR(25),'
      '         QUANTS  INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE ECBS       INTEGER;'
      '  DECLARE VARIABLE NECB       INTEGER;'
      '  DECLARE VARIABLE NDIAG      INTEGER;'
      '  DECLARE VARIABLE NPROC      INTEGER;'
      '  DECLARE VARIABLE NDIAGI     INTEGER;'
      '  DECLARE VARIABLE NPROCI     INTEGER;'
      '  DECLARE VARIABLE NDIAGP     INTEGER;'
      '  DECLARE VARIABLE NPROCP     INTEGER;'
      '  DECLARE VARIABLE NDIAGA     INTEGER;'
      '  DECLARE VARIABLE NPROCA     INTEGER;'
      '  DECLARE VARIABLE NDIAGQ     INTEGER;'
      '  DECLARE VARIABLE NPROCQ     INTEGER;'
      '  DECLARE VARIABLE TRACTAMENT INTEGER;'
      '  DECLARE VARIABLE PRESTACIO  VARCHAR(4);'
      '  DECLARE VARIABLE INTERV     INTEGER;'
      'BEGIN'
      '/*'
      '- N'#186' PRESTACIONS PER C_PRESTACI'#243' AMB COORDINADOR UN UR'#242'LEG'
      '- PELS INGRESSOS AMB COORDINADOR UN UR'#242'LEG:'
      '   - # DIAGN'#210'STICS NO QUIR'#218'RGICS'
      '   - # PROCEDIMENTS NO QUIR'#218'RGICS'
      '   - # DIAGN'#210'STICS QUIR'#218'RGIC (1) = N'#186' INTERVENCIONS'
      '   - # PROCEDIMENTS QUIR'#218'RGICS'
      
        '   - # RANQUING DELS DIAGS QUIR'#218'RGICS I PROCS QUIR'#218'RGICS M'#201'S POS' +
        'ATS'
      '   - # ECB'#39'S FETS'
      '- N'#186' INTERCONSULTES CONTESTADES PER UR'#242'LEGS PER TIPUS'
      '- N'#186' ANAL,RX,PROVESP, DEMANADES PER UROS (NO ANUL'#183'LADES)'
      '- # FITXA UROS FETES: QUANTS ANTECEDENTS I QUANTES VALORACIONS'
      '*/'
      ' '
      '    /* TRACTAMENTS */'
      '    TIPUS='#39#39'; QUANTS=NULL;'
      '    FOR SELECT T.C_PRESTACIO, COUNT(*)'
      '    FROM TRACTAMENTS T'
      
        '    JOIN METGES M ON T.C_COORDINADOR = M.CODI AND M.C_ESPECIAL =' +
        ' '#39'03'#39
      
        '    WHERE (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI OR' +
        ' T.DATA_ALTA IS NULL))'
      '    GROUP BY T.C_PRESTACIO'
      '    INTO :TIPUS, :QUANTS'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    /* ECB, DIAGN'#210'STICS, PROCEDIMENTS */'
      
        '    NECB=0; NDIAG=0; NDIAGI=0; NDIAGP=0; NDIAGA=0; NPROC=0; NPRO' +
        'CI=0; NPROCP=0; NPROCA=0;'
      '    FOR SELECT T.C_PRESTACIO, T.C_TRACTAMENT'
      '    FROM TRACTAMENTS T'
      
        '    JOIN METGES M ON T.C_COORDINADOR = M.CODI AND M.C_ESPECIAL =' +
        ' '#39'03'#39
      
        '    WHERE (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI OR' +
        ' T.DATA_ALTA IS NULL))'
      '    ORDER BY T.C_TRACTAMENT, T.C_PRESTACIO'
      '    INTO :PRESTACIO, :TRACTAMENT'
      '    DO BEGIN'
      '        IF (PRESTACIO='#39'1004'#39') THEN'
      '        BEGIN'
      '            ECBS=0;'
      '        '
      '            SELECT COUNT(*) FROM ECBLIN'
      
        '            WHERE C_TRACTAMENT = :TRACTAMENT AND C_ITEM IN(10,67' +
        ')'
      '            INTO :ECBS;'
      ''
      '            IF (ECBS IS NULL) THEN ECBS=0;'
      '            IF (ECBS>0) THEN NECB=NECB+1;'
      '        END;'
      '        '
      '        NDIAG=0;'
      '        FOR SELECT TIPUS, COUNT(*) FROM DIAGNOSTICS'
      '        WHERE C_TRACTAMENT = :TRACTAMENT'
      
        '        AND ((N_DIAGNOSTIC <> '#39#39') OR ((C_METGE <> '#39#39') AND (C_MET' +
        'GE <> '#39'Q91'#39')))'
      '        GROUP BY TIPUS'
      '        INTO :TIPUS, :NDIAG'
      '        DO BEGIN'
      '            IF (NDIAG IS NULL)  THEN NDIAG=0;'
      '            IF      (TIPUS='#39'I'#39') THEN NDIAGI=NDIAGI+NDIAG;'
      '            ELSE IF (TIPUS='#39'P'#39') THEN NDIAGP=NDIAGP+NDIAG;'
      '            ELSE IF (TIPUS='#39'A'#39') THEN NDIAGA=NDIAGA+NDIAG;'
      '        END;'
      '        '
      '        NPROC=0;'
      '        FOR SELECT TIPUS, COUNT(*) FROM TPROCEDIMENTS P'
      '        WHERE C_TRACTAMENT = :TRACTAMENT'
      
        '        AND ((N_PROCEDIMENT <> '#39#39') OR ((C_METGE <> '#39#39') AND (C_ME' +
        'TGE <> '#39'Q91'#39')))'
      '        GROUP BY TIPUS'
      '        INTO :TIPUS, :NPROC'
      '        DO BEGIN'
      '            IF (NPROC IS NULL)  THEN NPROC=0;'
      '            IF      (TIPUS='#39'I'#39') THEN NPROCI=NPROCI+NPROC;'
      '            ELSE IF (TIPUS='#39'P'#39') THEN NPROCP=NPROCP+NPROC;'
      '            ELSE IF (TIPUS='#39'A'#39') THEN NPROCA=NPROCA+NPROC;'
      '        END;'
      '    END;'
      '    TIPUS='#39'ECB'#39';                 QUANTS=NECB;   SUSPEND;'
      '    TIPUS='#39'DIAGN'#210'STICS INGR'#201'S'#39';  QUANTS=NDIAGI; SUSPEND;'
      '    TIPUS='#39'DIAGN'#210'STICS PROC'#201'S'#39';  QUANTS=NDIAGP; SUSPEND;'
      '    TIPUS='#39'DIAGN'#210'STICS ALTA'#39';    QUANTS=NDIAGA; SUSPEND;'
      '    TIPUS='#39'PROCEDIMENTS INGR'#201'S'#39'; QUANTS=NPROCI; SUSPEND;'
      '    TIPUS='#39'PROCEDIMENTS PROC'#201'S'#39'; QUANTS=NPROCP; SUSPEND;'
      '    TIPUS='#39'PROCEDIMENTS ALTA'#39';   QUANTS=NPROCA; SUSPEND;'
      ''
      '    /* INTERVENCIONS */'
      '    NDIAGQ=0; NPROCQ=0; NPROC=0;'
      '    FOR SELECT B.C_INTERV'
      '    FROM BQUIRURGIC B'
      
        '    JOIN METGES M ON B.C_METGE_FI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '3'#39
      
        '    WHERE (B.ENTRADA BETWEEN :DATAI AND :DATAF) AND (B.ESTAT <> ' +
        '40)'
      '    ORDER BY B.C_INTERV'
      '    INTO :INTERV'
      '    DO BEGIN'
      
        '        NDIAGQ=NDIAGQ+1;  /* sumem el diagn'#242'stic principal de la' +
        ' intervenci'#243'  */'
      
        '        NPROCQ=NPROCQ+1;  /* sumem el procediment principal de l' +
        'a intervenci'#243' */'
      ''
      '        SELECT COUNT(*) FROM BQPROCEDIMENTS P'
      '        WHERE C_INTERV = :INTERV'
      '        INTO :NPROC;'
      '        '
      '        IF (NPROC IS NULL) THEN NPROC=0;'
      '        NPROCQ=NPROCQ+NPROC;'
      '    END;'
      '    TIPUS='#39'DIAGN'#210'STICS QUIR'#218'RGICS'#39';  QUANTS=NDIAGQ; SUSPEND;'
      '    TIPUS='#39'PROCEDIMENTS QUIR'#218'RGICS'#39'; QUANTS=NPROCQ; SUSPEND;'
      '    '
      '    /* INTERCONSULTES */'
      '    TIPUS='#39#39'; QUANTS=NULL;'
      '    FOR SELECT I.C_TIPUS, COUNT(*)'
      '    FROM INTERCON I'
      '    JOIN TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMENT'
      '    JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '    WHERE I.DATA1 BETWEEN :DATAI AND :DATAF'
      '    AND   I.C_ESPECIAL IN ('#39'03'#39','#39'37'#39')'
      '    AND   I.ESTAT IN (50,90,95,96)'
      '    GROUP BY I.C_TIPUS'
      '    INTO :TIPUS, :QUANTS'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      '    '
      
        '    /* INTERCONSULTES 2: ANAL, RX i PROVES ESPECIALS demanades p' +
        'er ur'#242'legs */'
      '    TIPUS='#39#39'; QUANTS=NULL;'
      '    FOR SELECT I.C_TIPUS, COUNT(*)'
      '    FROM INTERCON I'
      '    JOIN TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMENT'
      '    JOIN METGES M ON I.C_METGE1 = M.CODI AND M.C_ESPECIAL = '#39'03'#39
      '    WHERE I.DATA1 BETWEEN :DATAI AND :DATAF'
      '    AND   I.ESTAT IN (91,92,93)'
      '    GROUP BY I.C_TIPUS'
      '    INTO :TIPUS, :QUANTS'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    /* FITXA UROL'#210'GICA ANTECEDENTS */'
      '    TIPUS='#39'FITXA URO. ANTECEDENTS'#39'; QUANTS=NULL;'
      '    SELECT COUNT(*)'
      '    FROM UROANTECEDENTS U'
      '    WHERE (DATA BETWEEN :DATAI AND :DATAF)'
      '    INTO :QUANTS;'
      '    '
      '    IF (QUANTS IS NULL) THEN QUANTS=0;'
      '    SUSPEND;'
      ''
      '    /* FITXA UROL'#210'GICA VALORACIONS */'
      '    TIPUS='#39'FITXA URO. VALORACIONS'#39'; QUANTS=NULL;'
      '    SELECT COUNT(*)'
      '    FROM UROVALORACIONS'
      '    WHERE (DATA BETWEEN :DATAI AND :DATAF)'
      '    INTO :QUANTS;'
      ''
      '    IF (QUANTS IS NULL) THEN QUANTS=0;'
      '    SUSPEND;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 232
    Top = 272
  end
  object gine1: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'gine1'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA     INTEGER,'
      '         PRESTACIO    CHAR(4),'
      '         UM           CHAR(1),'
      '         GRUPUM       VARCHAR(30),'
      '         ORDRE        INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE HIST_ANT   INTEGER;'
      '  DECLARE VARIABLE HIST_ACT   INTEGER;'
      '  DECLARE VARIABLE UM_ANT     CHAR(1);'
      '  DECLARE VARIABLE UM_ACT     CHAR(1);'
      '  DECLARE VARIABLE GRUP_ANT   VARCHAR(30);'
      '  DECLARE VARIABLE GRUP_ACT   VARCHAR(30);'
      '  DECLARE VARIABLE PREST_ANT  CHAR(4);'
      '  DECLARE VARIABLE PREST_ACT  CHAR(4);'
      '  DECLARE VARIABLE PRIMER     SMALLINT;'
      'BEGIN'
      #9
      
        '  HIST_ANT=NULL; PREST_ANT=NULL; UM_ANT=NULL; GRUP_ANT=NULL; PRI' +
        'MER=0; ORDRE=0;'
      
        '  FOR SELECT T.C_HISTORIA, T.C_PRESTACIO, U.C_GRUP, U.N_GRUP FRO' +
        'M TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '  LEFT JOIN UNITATM U  ON F.C_UNITATMEDICA=U.C_UNITATM'
      '  WHERE T.C_COORDINADOR ='#39'G07'#39
      '  ORDER BY T.C_HISTORIA, T.C_PRESTACIO, T.DATA_INGRES'
      '  INTO :HIST_ACT, :PREST_ACT, :UM_ACT, :GRUP_ACT'
      '  DO BEGIN'
      '      IF ((PRIMER=0) OR (HIST_ANT = HIST_ACT)) THEN'
      '      BEGIN'
      '          PRIMER=1;'
      '          ORDRE=ORDRE+1;'
      '      END;'
      '      ELSE ORDRE=1;'
      ''
      
        '      HISTORIA=HIST_ACT; PRESTACIO=PREST_ACT; UM=UM_ACT; GRUPUM=' +
        'GRUP_ACT;'
      '      SUSPEND;'
      
        '      HIST_ANT=HIST_ACT; PREST_ANT=PREST_ACT; UM_ANT=UM_ACT; GRU' +
        'P_ANT=GRUP_ACT;'
      '  END;'
      ''
      ''
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
    Left = 176
    Top = 272
  end
  object List: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA   INTEGER,'
      '         DIES       INTEGER,'
      '         TIPUS      VARCHAR(25),'
      '         C_ICD      VARCHAR(15),'
      '         N_ICD      VARCHAR(255)'
      '         )'
      'AS'
      '  DECLARE VARIABLE TRACTAMENT INTEGER;'
      'BEGIN'
      '      '
      
        '  FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_DIAGNOSTICALTA, C' +
        '.N_ICD, T.DATA_INGRES - F.DATA_LESSIO'
      '  FROM TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '  LEFT JOIN CODIICD C ON T.C_DIAGNOSTICALTA = C.C_ICD'
      '  WHERE T.DATA_INGRES - F.DATA_LESSIO <= 15'
      
        '  AND F.DATA_LESSIO IS NOT NULL AND T.C_PRESTACIO IN('#39'1004'#39','#39'100' +
        '8'#39','#39'2014'#39','#39'2005'#39','#39'2008'#39')'
      '  AND T.DATA_INGRES BETWEEN :DATAI AND :DATAF'
      '  AND T.DATA_ALTA IS NOT NULL'
      '  ORDER BY T.C_HISTORIA'
      '  INTO :HISTORIA, :TRACTAMENT, :C_ICD, :N_ICD, :DIES'
      '  DO BEGIN'
      '      /* DIAG. PRINCIPAL IASIST */'
      '      TIPUS = '#39'DIAGNOSTIC PRINCIPAL'#39';'
      '      SUSPEND;'
      '      HISTORIA = NULL; DIES = NULL;'
      ''
      '      /* DIAGS SECUNDARIS IASIST */'
      '      TIPUS = '#39'DIAGNOSTIC SECUNDARI'#39';'
      '      FOR SELECT D.C_DIAGNOSTIC, C.N_ICD'
      '      FROM DIAGNOSTICS D'
      '      LEFT JOIN CODIICD C ON D.C_DIAGNOSTIC = C.C_ICD'
      '      WHERE D.C_TRACTAMENT = :TRACTAMENT AND D.TIPUS = '#39'A'#39
      '      ORDER BY D.ORDRE'
      '      INTO :C_ICD, :N_ICD'
      '      DO BEGIN'
      '          IF (C_ICD <> '#39#39') THEN SUSPEND;'
      '      END;'
      ''
      '      /* PROCEDIMENTS IASIST  */'
      '      TIPUS = '#39'PROCEDIMENTS'#39';'
      '      FOR SELECT P.C_PROCEDIMENT, C.N_ICD'
      '      FROM TPROCEDIMENTS P'
      '      LEFT JOIN CODIICD C ON P.C_PROCEDIMENT = C.C_ICD'
      '      WHERE P.C_TRACTAMENT = :TRACTAMENT AND P.TIPUS = '#39'A'#39
      '      ORDER BY P.ORDRE'
      '      INTO :C_ICD, :N_ICD'
      '      DO BEGIN'
      '          IF (C_ICD <> '#39#39') THEN SUSPEND;'
      '      END;'
      '  END;'
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
    Left = 536
    Top = 272
  end
  object ListFIM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListFIM'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (DATA          DATE,'
      '         TIPUS         CHAR(1),'
      '         ANULAT        CHAR(1),'
      '         DIES          INTEGER,'
      '         PROCES        INTEGER,'
      '         FI_PROCES     CHAR(1),'
      '         HISTORIA      INTEGER,'
      '         TRACTAMENT    INTEGER,'
      '         PRESTACIO     CHAR(4),'
      '         MOTIU         SMALLINT,'
      '         N_MOTIU       VARCHAR(40),'
      '         DATA_INGRES   DATE,'
      '         DATA_ALTA     DATE'
      '         )'
      'AS'
      '  DECLARE VARIABLE DIESING  INTEGER;'
      '  DECLARE VARIABLE DIESALTA INTEGER;'
      'BEGIN'
      
        '  FOR SELECT F_SOLOFECHA(E.DATA), E.TIPUS, E.ANULAT, F_SOLOFECHA' +
        '(E.DATA) - T.DATA_INGRES, F_SOLOFECHA(E.DATA) - T.DATA_ALTA, T.C' +
        '_PROCES, T.FI_PROCES,'
      
        '             T.C_PRESTACIO, T.C_MOTIU, C.N_CODI, T.DATA_INGRES, ' +
        'T.DATA_ALTA, T.C_HISTORIA, T.C_TRACTAMENT'
      '  FROM ESCALESCAP E'
      
        '  JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT AND T.DA' +
        'TA_ALTA BETWEEN :DATAI AND :DATAF'
      
        '  JOIN METGES M ON E.C_USUARI = M.CODI AND (M.C_GRUP = '#39'FI'#39' OR M' +
        '.C_GRUP = '#39'TO'#39')'
      
        '  LEFT JOIN CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIPUSCODI ' +
        '= '#39'MOTIU'#39
      '  WHERE (E.C_ESCALA = 1 OR E.C_ESCALA = 2) AND (E.ANULAT <> '#39'S'#39')'
      '  ORDER BY E.C_HISTORIA, T.C_PROCES, E.C_TRACTAMENT, E.DATA'
      
        '  INTO :DATA, :TIPUS, :ANULAT, :DIESING, :DIESALTA, :PROCES, :FI' +
        '_PROCES, :PRESTACIO, :MOTIU, :N_MOTIU, :DATA_INGRES, :DATA_ALTA,'
      '       :HISTORIA, :TRACTAMENT'
      '  DO BEGIN'
      '      /* ICTAS ictas YKDEZ */'
      
        '/*      IF ((TIPUS = '#39'a'#39') OR (TIPUS = '#39'A'#39') OR (TIPUS = '#39'E'#39') OR (' +
        'TIPUS = '#39't'#39') OR (TIPUS = '#39'T'#39') OR (TIPUS = '#39'D'#39')) THEN DIES = DIES' +
        'ALTA;'
      
        '      ELSE IF ((TIPUS = '#39'i'#39') OR (TIPUS = '#39'I'#39') OR (TIPUS = '#39'Y'#39')) ' +
        '                                              THEN DIES = DIESIN' +
        'G;*/'
      
        '      IF ((TIPUS = '#39'i'#39') OR (TIPUS = '#39'I'#39') OR (TIPUS = '#39'Y'#39')) THEN ' +
        'DIES = DIESING;'
      
        '                                                           ELSE ' +
        'DIES = DIESALTA;'
      '      SUSPEND;'
      '  END;'
      ''
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
    Left = 592
    Top = 272
  end
  object bionexo: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'bionexo'
    ForceNombreDB = False
    Body.Strings = (
      '(MES INTEGER,ANYO INTEGER,DATAI DATE, DATAF DATE)'
      'RETURNS (CODI     INTEGER,'
      '         CANTITAT INTEGER,'
      '         CONSUM   INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE SC   INTEGER;'
      '  DECLARE VARIABLE EC   INTEGER;'
      'BEGIN'
      #9
      '  FOR SELECT M.C_PROD, SUM(M.CANTITAT) FROM MOVIMENTS M'
      '  JOIN PRODUCTES P ON M.C_PROD=P.C_PROD'
      '  WHERE M.DATAMOV BETWEEN :DATAI AND (:DATAF||'#39' 23.59.59'#39')'
      '  /*AND (M.ANULAT='#39'N'#39')*/ AND (M.T_MOV='#39'SC'#39') AND (P.C_ESTAT='#39'V'#39')'
      '  GROUP BY M.C_PROD'
      '  INTO :CODI, :SC'
      '  DO BEGIN'
      
        '    SELECT SUM(CANTITAT) FROM MOVIMENTS WHERE DATAMOV BETWEEN :D' +
        'ATAI AND (:DATAF||'#39' 23.59.59'#39')'
      
        '    /*AND (ANULAT='#39'N'#39')*/ AND (T_MOV='#39'EC'#39') AND (C_PROD=:CODI) INT' +
        'O :EC;'
      '    IF (SC IS NULL) THEN SC=0;'
      '    IF (EC IS NULL) THEN EC=0;'
      '    CANTITAT=SC-EC;'
      ''
      '    CONSUM=0;'
      
        '    SELECT SUM(CONSUM) FROM SALDOSMEN WHERE C_PROD=:CODI AND ANY' +
        'O=:ANYO AND MES=:MES INTO :CONSUM;'
      '    '
      '    SUSPEND;'
      '  END;'
      'END')
    Dic1 = wDataProductes.Moviments
    Dic1Name = 'Moviments'
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
    Left = 664
    Top = 272
  end
  object FactuBlocsCap: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Factura'
        NombreDB = 'N_FACTURA'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom'
        NombreDB = 'NOM'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'NIF'
        NombreDB = 'NIF'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a'
        NombreDB = 'ADRECA'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Poblacio'
        NombreDB = 'POBALCIO'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Provincia'
        NombreDB = 'PROVINCIA'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi Postal'
        NombreDB = 'CPOSTAL'
        Longitud = 5
        zType = tcIB_Varchar
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
        Nombre = 'Forma de pagament'
        NombreDB = 'FPAGAMENT'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Enviament fitxa'
        NombreDB = 'ENVIA_FITXA'
        Longitud = 15
        zType = tcIB_Float
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Enviament carta'
        NombreDB = 'ENVIA_CARTA'
        Longitud = 15
        zType = tcIB_Float
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Gir postal fitxa'
        NombreDB = 'GIR_FITXA'
        Longitud = 15
        zType = tcIB_Float
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Gir postal carta'
        NombreDB = 'GIR_CARTA'
        Longitud = 15
        zType = tcIB_Float
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Total'
        NombreDB = 'TOTAL'
        Longitud = 15
        zType = tcIB_Float
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Paquet blau'
        NombreDB = 'PAQUETBLAU'
        Longitud = 40
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
          'Factura')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'FactuBlocsCap (NO CREAR TAULA)'
    NombreTabla = 'FactuBlocsCap'
    Organiza = tbBase
    CamposVer.Strings = (
      'Factura'
      'Nom'
      'NIF'
      'Adre'#231'a'
      'Poblacio'
      'Provincia'
      'Codi Postal'
      'Data'
      'Forma de pagament'
      'Enviament fitxa'
      'Enviament carta'
      'Gir postal fitxa'
      'Gir postal carta'
      'Total'
      'Paquet blau')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 664
    Top = 324
  end
  object factublocs: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'factublocs'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFIN DATE)'
      'RETURNS (ARTICLE     VARCHAR(70),'
      '         GEN_Q       INTEGER,'
      '         GEN_P       NUMERIC(15,3),'
      '         FEB_Q       INTEGER,'
      '         FEB_P       NUMERIC(15,3),'
      '         MAR_Q       INTEGER,'
      '         MAR_P       NUMERIC(15,3),'
      '         ABR_Q       INTEGER,'
      '         ABR_P       NUMERIC(15,3),'
      '         MAI_Q       INTEGER,'
      '         MAI_P       NUMERIC(15,3),'
      '         JUN_Q       INTEGER,'
      '         JUN_P       NUMERIC(15,3),'
      '         JUL_Q       INTEGER,'
      '         JUL_P       NUMERIC(15,3),'
      '         AGO_Q       INTEGER,'
      '         AGO_P       NUMERIC(15,3),'
      '         SET_Q       INTEGER,'
      '         SET_P       NUMERIC(15,3),'
      '         OCT_Q       INTEGER,'
      '         OCT_P       NUMERIC(15,3),'
      '         NOV_Q       INTEGER,'
      '         NOV_P       NUMERIC(15,3),'
      '         DES_Q       INTEGER,'
      '         DES_P       NUMERIC(15,3),'
      '         TOT_Q       INTEGER,'
      '         TOT_P       NUMERIC(15,3)'
      '         )'
      'AS'
      '  DECLARE VARIABLE MES  INTEGER;'
      '  DECLARE VARIABLE CODI INTEGER;'
      '  DECLARE VARIABLE Q    INTEGER;'
      '  DECLARE VARIABLE P    NUMERIC(15,3);'
      'BEGIN'
      #9
      '     FOR SELECT DISTINCT L.CODI'
      '     FROM FACTUBLOCSCAP C'
      '     JOIN FACTUBLOCSLIN L ON C.N_FACTURA=L.N_FACTURA'
      '     WHERE C.DATA BETWEEN :DATAINI AND :DATAFIN'
      '     ORDER BY L.CODI'
      '     INTO :CODI'
      '     DO BEGIN'
      
        '         MES=1;GEN_Q=NULL;GEN_P=NULL;FEB_Q=NULL;FEB_P=NULL;MAR_Q' +
        '=NULL;MAR_P=NULL;ABR_Q=NULL;ABR_P=NULL;'
      
        '         MAI_Q=NULL;MAI_P=NULL;JUN_Q=NULL;JUN_P=NULL;JUL_Q=NULL;' +
        'JUL_P=NULL;AGO_Q=NULL;AGO_P=NULL;'
      
        '         SET_Q=NULL;SET_P=NULL;OCT_Q=NULL;OCT_P=NULL;NOV_Q=NULL;' +
        'NOV_P=NULL;DES_Q=NULL;DES_P=NULL;'
      '         TOT_Q=0;TOT_P=0;'
      '         '
      '         WHILE (MES<=12) DO'
      '         BEGIN'
      '             Q=NULL; P=NULL;'
      '             SELECT A.DESCRIPCIO, SUM(L.QUANTITAT), SUM(L.PREU)'
      '             FROM FACTUBLOCSCAP C'
      '             JOIN FACTUBLOCSLIN L ON C.N_FACTURA=L.N_FACTURA'
      '             JOIN ARTIC A ON L.CODI=A.CODI'
      '             WHERE C.DATA BETWEEN :DATAINI AND :DATAFIN'
      '             AND F_MONTH(C.DATA)=:MES'
      '             AND L.CODI = :CODI'
      '             GROUP BY A.DESCRIPCIO'
      '             INTO :ARTICLE, :Q, :P;'
      '             '
      '             IF (Q IS NOT NULL) THEN TOT_Q=TOT_Q+Q;'
      '             IF (P IS NOT NULL) THEN TOT_P=TOT_P+P;'
      '             '
      '             IF      (MES=1)  THEN BEGIN GEN_Q=Q; GEN_P=P; END;'
      '             ELSE IF (MES=2)  THEN BEGIN FEB_Q=Q; FEB_P=P; END;'
      '             ELSE IF (MES=3)  THEN BEGIN MAR_Q=Q; MAR_P=P; END;'
      '             ELSE IF (MES=4)  THEN BEGIN ABR_Q=Q; ABR_P=P; END;'
      '             ELSE IF (MES=5)  THEN BEGIN MAI_Q=Q; MAI_P=P; END;'
      '             ELSE IF (MES=6)  THEN BEGIN JUN_Q=Q; JUN_P=P; END;'
      '             ELSE IF (MES=7)  THEN BEGIN JUL_Q=Q; JUL_P=P; END;'
      '             ELSE IF (MES=8)  THEN BEGIN AGO_Q=Q; AGO_P=P; END;'
      '             ELSE IF (MES=9)  THEN BEGIN SET_Q=Q; SET_P=P; END;'
      '             ELSE IF (MES=10) THEN BEGIN OCT_Q=Q; OCT_P=P; END;'
      '             ELSE IF (MES=11) THEN BEGIN NOV_Q=Q; NOV_P=P; END;'
      '             ELSE IF (MES=12) THEN BEGIN DES_Q=Q; DES_P=P; END;'
      ''
      '             MES=MES+1;'
      '         END;'
      '         SUSPEND;'
      '     END;'
      'END')
    Dic1 = FactuBlocsCap
    Dic1Name = 'FactuBlocsCap'
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
    Left = 664
    Top = 380
  end
  object InterfEM_Eliminada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'InterfEM'
    ForceNombreDB = False
    Body.Strings = (
      '(DESDE DATE)'
      'RETURNS (HISTORIA      INTEGER,'
      '         ESVIU         CHAR(1),'
      '         DATA_MORT     DATE,'
      '         C_UM          SMALLINT,'
      '         UNITATM       VARCHAR(30),'
      '         AUTORITZACIO  INTEGER,'
      '         C_TRACTAMENT  INTEGER,'
      '         C_PRESTACIO   CHAR(4),'
      '         DATA_INGRES   DATE,'
      '         DATA_ALTA     DATE,'
      '         C_COORDINADOR VARCHAR(5)'
      '         )'
      'AS'
      '  DECLARE VARIABLE QUANTS INTEGER;'
      'BEGIN'
      ''
      '  AUTORITZACIO=NULL;'
      '  /* EM'#39's que no tenen autoritzaci'#243' interfer'#243' */'
      
        '  FOR SELECT F.NUM_HIST,F.C_UNITATMEDICA,U.N_UNITATM,F.ESVIU,F.M' +
        'ORT'
      '  FROM FILIACIO F'
      '       JOIN UNITATM         U ON F.C_UNITATMEDICA=U.C_UNITATM'
      '  LEFT JOIN AUTORITZAINTERF A ON F.NUM_HIST=A.C_HISTORIA'
      '  WHERE (F.C_UNITATMEDICA=11) AND (A.PK IS NULL)'
      '  ORDER BY F.NUM_HIST'
      '  INTO :HISTORIA,:C_UM,:UNITATM,:ESVIU,:DATA_MORT'
      '  DO BEGIN'
      
        '      SELECT COUNT(*) FROM TRACTAMENTS WHERE C_HISTORIA = :HISTO' +
        'RIA AND DATA_INGRES >= :DESDE'
      '      INTO :QUANTS;'
      ''
      '      IF (QUANTS=0) THEN SUSPEND;'
      '      ELSE BEGIN'
      
        '          FOR SELECT C_TRACTAMENT,C_PRESTACIO,DATA_INGRES,DATA_A' +
        'LTA,C_COORDINADOR'
      '          FROM TRACTAMENTS'
      '          WHERE C_HISTORIA = :HISTORIA AND DATA_INGRES >= :DESDE'
      '          ORDER BY DATA_INGRES'
      
        '          INTO :C_TRACTAMENT,:C_PRESTACIO,:DATA_INGRES,:DATA_ALT' +
        'A,:C_COORDINADOR'
      '          DO BEGIN'
      '              SUSPEND;'
      '          END;'
      '      END;'
      '  END;'
      '  '
      '  /* Autoritzats interfer'#243' siguin o no EM */'
      
        '  FOR SELECT F.NUM_HIST,F.C_UNITATMEDICA,U.N_UNITATM,F.ESVIU,F.M' +
        'ORT,A.PK'
      '  FROM AUTORITZAINTERF A'
      '  JOIN FILIACIO F ON A.C_HISTORIA=F.NUM_HIST'
      '  JOIN UNITATM  U ON F.C_UNITATMEDICA=U.C_UNITATM'
      '  ORDER BY F.NUM_HIST,A.PK'
      '  INTO :HISTORIA,:C_UM,:UNITATM,:ESVIU,:DATA_MORT,:AUTORITZACIO'
      '  DO BEGIN'
      
        '      SELECT COUNT(*) FROM TRACTAMENTS WHERE C_HISTORIA = :HISTO' +
        'RIA AND DATA_INGRES >= :DESDE'
      '      INTO :QUANTS;'
      ''
      '      IF (QUANTS=0) THEN SUSPEND;'
      '      ELSE BEGIN'
      
        '          FOR SELECT C_TRACTAMENT,C_PRESTACIO,DATA_INGRES,DATA_A' +
        'LTA,C_COORDINADOR'
      '          FROM TRACTAMENTS'
      '          WHERE C_HISTORIA = :HISTORIA AND DATA_INGRES >= :DESDE'
      '          ORDER BY DATA_INGRES'
      
        '          INTO :C_TRACTAMENT,:C_PRESTACIO,:DATA_INGRES,:DATA_ALT' +
        'A,:C_COORDINADOR'
      '          DO BEGIN'
      '              SUSPEND;'
      '          END;'
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
    Left = 656
    Top = 8
  end
  object EVSF: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EVSF'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE)'
      'RETURNS (C_HISTORIA   INTEGER,'
      '         NOMCOMPLET   VARCHAR(80),'
      '         DATA         DATE,'
      '         C_USUARI     VARCHAR(5),'
      '         ANULAT       CHAR(1),'
      '         ESCALA       VARCHAR(8),'
      '         CLAU         INTEGER,'
      '         CONDFAM      INTEGER,'
      '         SOCIETAT     INTEGER,'
      '         ASSISTENCIA  INTEGER,'
      '         ECONOMICA    INTEGER,'
      '         HABITATGE    INTEGER,'
      '         CONVIVENCIA  INTEGER,'
      '         SIT_ECON     INTEGER,'
      '         HABITATGE_IG INTEGER,'
      '         RESP_ENTORN  INTEGER,'
      '         RECONZ_XARXA INTEGER,'
      '         TOTAL        INTEGER,'
      '         ORDRE        INTEGER'
      '         )'
      'AS'
      'BEGIN'
      ''
      ' ORDRE=1;'
      ' FOR SELECT DISTINCT C.C_HISTORIA, F.NOMCOMPLET'
      ' FROM ESCALESCAP C'
      ' JOIN FILIACIO F ON C.C_HISTORIA=F.NUM_HIST'
      ' WHERE C.C_ESCALA=104'
      ' AND C.DATA BETWEEN :DATAI AND :DATAF'
      ' ORDER BY C.DATA, C.C_HISTORIA'
      ' INTO :C_HISTORIA, :NOMCOMPLET'
      ' DO BEGIN'
      '     /* ENTRADES EVSF_TSO */'
      '     ESCALA='#39'EVSF_TSO'#39';'
      
        '     CONVIVENCIA=NULL;SIT_ECON=NULL; HABITATGE_IG=NULL;RESP_ENTO' +
        'RN=NULL;RECONZ_XARXA=NULL;TOTAL=NULL;'
      '     '
      
        '     FOR SELECT C.DATA, C.C_USUARI, C.ANULAT, E.CLAU, E.CONDFAM,' +
        ' E.SOCIETAT, E.ASSISTENCIA, E.ECONOMICA, E.HABITATGE, E.TOTAL'
      '     FROM ESCALESCAP C'
      '     JOIN ESCEVSFTSO E ON C.CLAU=E.CLAU'
      '     WHERE C.C_HISTORIA=:C_HISTORIA AND C.C_ESCALA=104'
      '     AND C.DATA BETWEEN :DATAI AND :DATAF'
      '     ORDER BY C.DATA'
      
        '     INTO :DATA, :C_USUARI, :ANULAT, :CLAU, :CONDFAM, :SOCIETAT,' +
        ' :ASSISTENCIA, :ECONOMICA, :HABITATGE, :TOTAL'
      '     DO BEGIN'
      '         SUSPEND;'
      '         ORDRE=ORDRE+1;'
      '     END;'
      '     '
      '     /* ENTRADES EVSF_IG */'
      '     ESCALA='#39'EVSF_IG'#39';'
      
        '     CONDFAM=NULL;SOCIETAT=NULL;ASSISTENCIA=NULL;ECONOMICA=NULL;' +
        'HABITATGE=NULL;TOTAL=NULL;'
      '     FOR SELECT C.DATA, C.C_USUARI, C.ANULAT,'
      
        '                E.CLAU, E.CONVIVENCIA, E.SITUACIOECONOMICA, E.HA' +
        'BITATGE, E.RESPOSTAENTORN, E.RECOLZAMENTXARXA, E.TOTAL'
      '     FROM ESCALESCAP C'
      '     JOIN ESCEVSF E ON C.CLAU=E.CLAU'
      '     WHERE C.C_HISTORIA=:C_HISTORIA AND C.C_ESCALA=35'
      '     ORDER BY C.DATA, C.C_HISTORIA'
      '     INTO :DATA, :C_USUARI, :ANULAT,'
      
        '          :CLAU, :CONVIVENCIA, :SIT_ECON, :HABITATGE_IG, :RESP_E' +
        'NTORN, :RECONZ_XARXA, :TOTAL'
      '     DO BEGIN'
      '         SUSPEND;'
      '         ORDRE=ORDRE+1;'
      '     END;'
      ' END;'
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
    Left = 640
    Top = 492
  end
  object Traumes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Traumes'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA         INTEGER,'
      '         NOMCOMPLET       VARCHAR(80),'
      '         DATA_INTERV      DATE,'
      '         COORDINADOR      VARCHAR(5),'
      '         PRESTACIO        VARCHAR(4),'
      '         DATA_VISITA      DATE,'
      '         DIAGNOSTIC       VARCHAR(15)'
      '        )'
      'AS'
      '  DECLARE VARIABLE DINTERV DATE;'
      'BEGIN'
      
        '   /* 1- Llistem pacients amb intervenci'#243' per fractura (IDNEUROD' +
        ' amb PARENT=4) i les visites successives */'
      '   FOR SELECT B.C_HISTORIA, F.NOMCOMPLET, B.ENTRADA, I.G_ICD'
      '   FROM BQUIRURGIC B'
      '   JOIN FILIACIO F ON B.C_HISTORIA=F.NUM_HIST'
      '   JOIN ICDNEUROTRAUMA I ON B.IDNEUROD=I.ID AND I.PARENT='#39'4'#39
      '   WHERE B.ENTRADA BETWEEN :DATAI AND :DATAF'
      '   AND   B.ESTAT<>40'
      '   ORDER BY B.C_HISTORIA, B.ENTRADA'
      '   INTO :HISTORIA, :NOMCOMPLET, :DATA_INTERV, :DIAGNOSTIC'
      '   DO BEGIN'
      '       SUSPEND;'
      
        '       NOMCOMPLET=NULL; DINTERV=DATA_INTERV; DATA_INTERV=NULL; D' +
        'IAGNOSTIC=NULL;'
      
        '       FOR SELECT T.C_COORDINADOR, T.DATA_INGRES, T.C_PRESTACIO,' +
        ' T.C_DIAGNOSTICINGRES'
      '       FROM TRACTAMENTS T'
      
        '       JOIN PRESTACION P ON T.C_PRESTACIO=P.C_PRESTACIO AND P.TI' +
        'PUS=2'
      
        '       JOIN METGES M ON T.C_COORDINADOR=M.CODI AND M.C_GRUP='#39'ME'#39 +
        ' AND M.C_ESPECIAL='#39'05'#39
      '       WHERE T.DATA_INGRES >= :DINTERV'
      '       AND T.C_HISTORIA=:HISTORIA'
      '       ORDER BY T.DATA_INGRES'
      '       INTO :COORDINADOR, :DATA_VISITA, :PRESTACIO, :DIAGNOSTIC'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      
        '       COORDINADOR=NULL; DATA_VISITA=NULL; PRESTACIO=NULL; DIAGN' +
        'OSTIC=NULL;'
      '   END;'
      ''
      
        '   /* 2- Llistem pacients amb visites amb traumes amb c_diagnost' +
        'icingres in ('#39'829.0'#39','#39'733.82'#39','#39'733.81'#39','#39'733.10'#39','#39'V54.01'#39') */'
      
        '   HISTORIA=NULL; NOMCOMPLET=NULL; DATA_INTERV=NULL; COORDINADOR' +
        '=NULL; PRESTACIO=NULL; DATA_VISITA=NULL; DIAGNOSTIC=NULL;'
      
        '   FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, T.C_COORDINADOR, T.C_P' +
        'RESTACIO, T.DATA_INGRES, T.C_DIAGNOSTICINGRES'
      '   FROM TRACTAMENTS T'
      '   JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '   JOIN PRESTACION P ON T.C_PRESTACIO=P.C_PRESTACIO AND P.TIPUS=' +
        '2'
      
        '   WHERE (T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA >= :DATAI OR ' +
        'T.DATA_ALTA IS NULL))'
      
        '   AND T.C_DIAGNOSTICINGRES IN ('#39'829.0'#39','#39'733.82'#39','#39'733.81'#39','#39'733.1' +
        '0'#39','#39'V54.01'#39')'
      '   ORDER BY T.C_HISTORIA, T.DATA_INGRES'
      
        '   INTO :HISTORIA, :NOMCOMPLET, :COORDINADOR, :PRESTACIO, :DATA_' +
        'VISITA, :DIAGNOSTIC'
      '   DO BEGIN'
      '       SUSPEND;'
      '   END;'
      'END')
    Dic1 = wDataBlocQuirurgic.BQuirurgic
    Dic1Name = 'wDataBlocQuirurgic.BQuirurgic'
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
    Left = 664
    Top = 436
  end
  object estudiLM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'estudiLM'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA        INTEGER,'
      '         NOMBRE          VARCHAR(80),'
      '         EDAD            INTEGER,'
      '         NIVEL_LM        VARCHAR(3),'
      '         ASIA            CHAR(1),'
      '         FECHA_ASIA      DATE,'
      '         ANOS_LESION     DOUBLE PRECISION,'
      '         TRATAMIENTO     VARCHAR(3000),'
      '         HIERRO          DOUBLE PRECISION,'
      '         UNIDAD_H        VARCHAR(6000),'
      '         FECHA_HIERRO    DATE,'
      '         FERRITINA       DOUBLE PRECISION,'
      '         UNIDAD_F        VARCHAR(6000),'
      '         FECHA_FERRITINA DATE'
      '         )'
      'AS'
      ' DECLARE VARIABLE MEDICAMENT VARCHAR(100);'
      'BEGIN'
      
        '    FOR SELECT NUM_HIST, NOMCOMPLET, EDAT, F_TRUNCAR(('#39'TODAY'#39'- D' +
        'ATA_LESSIO)/365)'
      '    FROM FILIACIO'
      
        '    WHERE NUM_HIST IN  (3039,3099,9027,13756,3443,9329,1666,1150' +
        '9,800,11453,7724,11782,4618,3528,16915,15656)'
      
        '                    /*(549,667,2329,2863,3398,3685,4133,4846,646' +
        '0,7969,8625,8818,8930,9117,10355,10699,11420,12145,12280,12299,1' +
        '3278,'
      
        '                       13876,14491,15124,15262,15311,15395,15432' +
        ',15839,16818,19208) */'
      
        '                    /*(4133,8930,15839,7969,667,4846,8625,15432,' +
        '10355,9117,2863,14491,13278,3398,8818, 3685,12299,10699,'
      
        '                       15124,15262,13876,16818,11420,2329,12280,' +
        '19208,15395,549,4767,3471,484,2047,5242,12452,228,1296,'
      
        '                       3877,6200,15849,11733,9731,2646,15044,547' +
        '5,2501,1229,1476,1900,2568,7202,17409,1417,13216,6839,2312,'
      
        '                       884,14027,9850,9733,7328,2046, 3366,12758' +
        ',2095,14528,5452,16973,6925,1811,11805,4542,12129,14323,'
      
        '                       13041,2446,16865, 5218,6561,11329,12194,7' +
        '937,646,3141,14226,3098,13987,6336,15356,13591,13481,2347,'
      
        '                       6961,3563,6908,7303,12931,12110,4866,5770' +
        ',2694,579,11359,15321,4611,2098,5855,16371,6304,2767,8609,'
      
        '                       12718,13721,12481,13370,9516,12772,1152,4' +
        '76,5122,17487,2977,422,9108,6391,8692,4070,2772,6446,1427,'
      
        '                       9708,5760,10394,5628,7794,1626,4012,1496,' +
        '11662,12773,14645,1120,9763,3819,2528,6163,15347,806,16780,'
      
        '                       4640,10447,2585,14105,15763,16851,1804,10' +
        '694,2770) */'
      '    ORDER BY NUM_HIST'
      '    INTO :HISTORIA, :NOMBRE, :EDAD, :ANOS_LESION'
      '    DO BEGIN'
      '        /* TRATAMIENTO: medicaci'#243' activa */'
      '        TRATAMIENTO='#39#39';'
      
        '/*        FOR SELECT cast(F_StrNull(P.N_GUIA, F_StrNull(G.N_GTN,' +
        ' '#39#39') || F_StrNull(O.N_MEDICAMENT_FG, '#39#39')) as varchar(80)) || O.D' +
        'OSI || O.UNITAT_MESURA */'
      
        '        FOR SELECT cast(F_IfLong(G.N_GTN, '#39'='#39', '#39#39', O.N_MEDICAMEN' +
        'T_FG, G.N_GTN) as varchar(80)) || O.DOSI || O.UNITAT_MESURA'
      '        FROM ORDRESMEDIQUES O'
      '        LEFT OUTER JOIN GTN G on O.GTN = G.GTN'
      '        LEFT OUTER JOIN PACTIUS P on O.C_MEDICAMENT = P.C_GUIA'
      '        WHERE O.C_HISTORIA=:HISTORIA AND O.C_ESTAT='#39'V'#39
      '        INTO :MEDICAMENT'
      '        DO BEGIN'
      '            TRATAMIENTO=TRATAMIENTO||'#39' '#39'||MEDICAMENT;'
      '        END;'
      '        '
      
        '        /* HIERRO: '#218'ltima anal'#237'tica amb aquest valor (codi 221) ' +
        '*/'
      '        HIERRO=NULL; UNIDAD_H=NULL; FECHA_HIERRO=NULL;'
      '        SELECT A.VALOR, A.TEXTE, C.DATA'
      '        FROM ANACABE C'
      '        JOIN ANALIT A ON C.NILAB=A.NILAB AND C.DATA=A.DATA'
      
        '        WHERE C.NUM_HIST=:HISTORIA AND A.CODI = '#39'221'#39' AND A.TEXT' +
        'E NOT LIKE '#39'%Pte%'#39
      '        ORDER BY C.DATA DESC'
      '        ROWS 1'
      '        INTO :HIERRO, :UNIDAD_H, :FECHA_HIERRO;'
      '        '
      
        '        /* FERRITINA: '#218'ltima anal'#237'tica amb aquest valor (Codi 22' +
        '9) */'
      '        FERRITINA=NULL; UNIDAD_F=NULL; FECHA_FERRITINA=NULL;'
      '        SELECT A.VALOR, A.TEXTE, C.DATA'
      '        FROM ANACABE C'
      '        JOIN ANALIT A ON C.NILAB=A.NILAB AND C.DATA=A.DATA'
      
        '        WHERE C.NUM_HIST=:HISTORIA AND A.CODI = '#39'229'#39' AND A.TEXT' +
        'E NOT LIKE '#39'%Pte%'#39
      '        ORDER BY C.DATA DESC'
      '        ROWS 1'
      '        INTO :FERRITINA, :UNIDAD_F, :FECHA_FERRITINA;'
      '    '
      '        /* NIVEL_LM i ASIA: primera i '#250'ltima entrades */'
      '        ASIA=NULL; NIVEL_LM=NULL; FECHA_ASIA=NULL;'
      '        SELECT A.ASIA, A.NIVELL_NEURO, C.DATA'
      '        FROM ESCALESCAP C'
      '        JOIN ESCASIA A ON C.CLAU=A.ID'
      '        WHERE C.C_HISTORIA=:HISTORIA'
      '        ORDER BY C.C_ENTRADA'
      '        ROWS 1'
      '        INTO :ASIA, :NIVEL_LM, :FECHA_ASIA;'
      '    '
      '        SUSPEND;'
      ''
      '        /* NIVEL_LM i ASIA: primera i '#250'ltima entrades */'
      '        ASIA=NULL; NIVEL_LM=NULL; FECHA_ASIA=NULL;'
      '        SELECT A.ASIA, A.NIVELL_NEURO, C.DATA'
      '        FROM ESCALESCAP C'
      '        JOIN ESCASIA A ON C.CLAU=A.ID'
      '        WHERE C.C_HISTORIA=:HISTORIA'
      '        ORDER BY C.C_ENTRADA DESC'
      '        ROWS 1'
      '        INTO :ASIA, :NIVEL_LM, :FECHA_ASIA;'
      ''
      '        SUSPEND;'
      ''
      '    END;'
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
    Left = 576
    Top = 10
  end
  object ActivitatMultisensorial: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatMultisensorial'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAIN DATE, DATAFI DATE)'
      'RETURNS (C_HISTORIA   INTEGER,'
      '         C_TRACTAMENT INTEGER,'
      '         C_PRESTACIO  CHAR(4),'
      '/*         DURADA       INTEGER,'
      '         SESSIONS     INTEGER*/'
      '         INGRESSOS    INTEGER,'
      '         AMBULATORIS  INTEGER,'
      '         ALTRES       INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE DATA_INGRES DATE;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      '  DECLARE VARIABLE SESSIONS    INTEGER;'
      '  DECLARE VARIABLE ACUM_ING    INTEGER;'
      '  DECLARE VARIABLE ACUM_AMB    INTEGER;'
      '  DECLARE VARIABLE ACUM_ALT    INTEGER;'
      ''
      '  DECLARE VARIABLE DURADA      INTEGER;'
      '  DECLARE VARIABLE DATAI       DATE;'
      '  DECLARE VARIABLE DATAF       DATE;'
      'BEGIN'
      ''
      
        '  INGRESSOS=0; AMBULATORIS=0; ALTRES=0; ACUM_ING=0; ACUM_AMB=0; ' +
        'ACUM_ALT=0;'
      ''
      '  FOR SELECT DISTINCT C_HISTORIA FROM AGENDAPACIENT'
      '  WHERE C_ACTIVITAT='#39'MULTISENSORIAL'#39
      
        '  AND (DATAI <= :DATAFI AND (DATAF >= :DATAIN OR DATAF IS NULL) ' +
        ') AND DATAI<>DATAF'
      '  ORDER BY C_HISTORIA'
      '  INTO :C_HISTORIA'
      '  DO BEGIN'
      
        '      FOR SELECT DISTINCT T.C_TRACTAMENT, T.DATA_INGRES, T.DATA_' +
        'ALTA, T.C_PRESTACIO , T.DATA_ALTA - T.DATA_INGRES + 1 FROM TRACT' +
        'AMENTS T'
      
        '      JOIN  PRESTACION P ON T.C_PRESTACIO=P.C_PRESTACIO AND P.TI' +
        'PUS IN (1,3)'
      '      WHERE T.C_HISTORIA = :C_HISTORIA'
      
        '      AND   T.DATA_INGRES <= :DATAFI AND (T.DATA_ALTA IS NULL OR' +
        ' T.DATA_ALTA >= :DATAIN)'
      '      ORDER BY T.DATA_INGRES'
      
        '      INTO :C_TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :C_PRESTACIO' +
        ', :DURADA'
      '      DO BEGIN'
      '          SESSIONS = 0; INGRESSOS=0; AMBULATORIS=0; ALTRES=0;'
      '      '
      
        '          /* Mirar si tenen ACTIVITAT MULTISENSORIAL actiu el di' +
        'a de la setmana que s'#39'ha passat l'#39'assist'#232'ncia ASSISTENCIAGIMNAS.' +
        'DATA entre AGENDAPACIENT.DATAI i AGENDAPACIENT.DATAF (o AGENDAPA' +
        'CIENT.DATAF is null) */'
      '          FOR SELECT DISTINCT DATAI, DATAF FROM AGENDAPACIENT'
      '          WHERE C_HISTORIA  = :C_HISTORIA'
      '          AND   C_ACTIVITAT = '#39'MULTISENSORIAL'#39
      
        '          AND   (DATAI <= :DATAFI AND (DATAF >= :DATAIN OR DATAF' +
        ' IS NULL) ) AND DATAI<>DATAF'
      '          ORDER BY DATAI'
      '          INTO :DATAI, :DATAF'
      '          DO BEGIN'
      '              SELECT COUNT(*) FROM ASSISTENCIAGIMNAS'
      '              WHERE C_HISTORIA   = :C_HISTORIA'
      '              AND   C_TRACTAMENT = :C_TRACTAMENT'
      '              AND   C_TIPUSASS IN (1,2,4)'
      
        '              AND   DATA >= :DATAI AND (:DATAFI IS NULL OR DATA ' +
        '<= :DATAF)'
      '              INTO  :SESSIONS;'
      ''
      '              IF (SESSIONS IS NULL) THEN SESSIONS = 0;'
      '          '
      
        '              IF      (C_PRESTACIO = '#39'1004'#39') THEN SESSIONS    = ' +
        '0;'
      
        '              ELSE IF (C_PRESTACIO = '#39'2014'#39') THEN AMBULATORIS = ' +
        'AMBULATORIS + SESSIONS;'
      
        '              ELSE IF (C_PRESTACIO = '#39'2008'#39') THEN AMBULATORIS = ' +
        'AMBULATORIS + SESSIONS;'
      
        '                                             ELSE ALTRES      = ' +
        'ALTRES      + SESSIONS;'
      '          END;'
      ''
      '          IF (C_PRESTACIO <> '#39'1004'#39') THEN DURADA = 0;'
      '                                     ELSE INGRESSOS = DURADA;'
      '          SUSPEND;'
      ''
      '          ACUM_ING = ACUM_ING + INGRESSOS;'
      '          ACUM_AMB = ACUM_AMB + AMBULATORIS;'
      '          ACUM_ALT = ACUM_ALT + ALTRES;'
      '          '
      '      END;'
      '  END;'
      '  '
      '  C_HISTORIA=NULL; C_TRACTAMENT=NULL;'
      '  C_PRESTACIO='#39'TOT'#39';'
      '  INGRESSOS = ACUM_ING;'
      '  AMBULATORIS = ACUM_AMB;'
      '  ALTRES = ACUM_ALT;'
      '  SUSPEND;'
      '      '
      
        '/*  FOR SELECT DISTINCT A.C_HISTORIA, A.C_TRACTAMENT, T.C_PRESTA' +
        'CIO, A.DATAI, A.DATAF'
      '  FROM AGENDAPACIENT A'
      '  LEFT JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      '  WHERE A.C_ACTIVITAT='#39'MULTISENSORIAL'#39
      
        '  AND (A.DATAI <= :DATAFI AND (A.DATAF >= :DATAIN OR A.DATAF IS ' +
        'NULL)) AND A.DATAI <> A.DATAF'
      '  ORDER BY A.C_HISTORIA, A.DATAI, A.DATAF'
      '  INTO :C_HISTORIA, :C_TRACTAMENT, :C_PRESTACIO, :DATAI, :DATAF'
      '  DO BEGIN'
      '      IF (C_TRACTAMENT IS NULL) THEN'
      '      BEGIN'
      
        '          /* si a AGENDAPACIENT no hi ha el C_TRACTAMENT informa' +
        't, busco el tractament que li correspon per dates *'
      
        '          SELECT T.C_TRACTAMENT, T.C_PRESTACIO FROM TRACTAMENTS ' +
        'T'
      
        '          JOIN PRESTACION P ON T.C_PRESTACIO=P.C_PRESTACIO AND P' +
        '.TIPUS IN(1,3)'
      '          WHERE T.C_HISTORIA = :C_HISTORIA'
      
        '          AND   T.DATA_INGRES <= :DATAF AND (T.DATA_ALTA IS NULL' +
        ' OR T.DATA_ALTA >= :DATAI)'
      '          ORDER BY P.TIPUS'
      '          ROWS 1'
      '          INTO :C_TRACTAMENT, :C_PRESTACIO;'
      '      END;'
      '      '
      
        '      IF (C_TRACTAMENT IS NOT NULL) THEN SELECT T.DATA_ALTA - T.' +
        'DATA_INGRES FROM TRACTAMENTS T WHERE C_TRACTAMENT = :C_TRACTAMEN' +
        'T INTO :DURADA;'
      '                                    ELSE DURADA=0;'
      ''
      '      SESSIONS = 0;'
      
        '      IF ((C_TRACTAMENT IS NOT NULL) AND (C_PRESTACIO<>'#39'1004'#39')) ' +
        'THEN  /* Calculem les sessions que ha fet *'
      '      BEGIN'
      '          SELECT COUNT(*) FROM ASSISTENCIAGIMNAS'
      '          WHERE C_HISTORIA   = :C_HISTORIA'
      '          AND   C_TRACTAMENT = :C_TRACTAMENT'
      '          AND   C_TIPUSASS IN (1,2,4)'
      '          AND   DATA BETWEEN :DATAIN AND :DATAFI'
      '          INTO  :SESSIONS;'
      '          '
      '          IF (SESSIONS IS NULL) THEN SESSIONS = 0;'
      '      END;'
      '      '
      '      IF (C_PRESTACIO<>'#39'1004'#39') THEN  DURADA=0;'
      ''
      '      SUSPEND;'
      '  END; */'
      'END')
    Dic1 = wDataGimnas.AssistenciaGimnas
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
    Left = 656
    Top = 548
  end
  object N_DiagIng: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'N_DiagIng'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE)'
      'AS'
      ' DECLARE VARIABLE C_ICD VARCHAR(15);'
      ' DECLARE VARIABLE N_ICD VARCHAR(40);'
      ' DECLARE VARIABLE VERSIOCIM INTEGER;'
      'BEGIN'
      ' IF (DATAI IS NULL) THEN DATAI = '#39'TODAY'#39';'
      '      '
      ' FOR SELECT DISTINCT T.C_DIAGNOSTICINGRES, T.VERSIOCIM'
      ' FROM  TRACTAMENTS T'
      
        ' JOIN  DRETSPRESTA DP ON T.C_PRESTACIO = DP.C_PRESTACIO AND DP.C' +
        '_DRET = '#39'P400'#39
      ' WHERE (T.DATA_INGRES >= :DATAI)'
      
        ' AND   (T.N_DIAGNOSTICINGRES IS NULL OR T.N_DIAGNOSTICINGRES = '#39 +
        #39')'
      
        ' AND   (T.C_DIAGNOSTICINGRES IS NOT NULL AND T.C_DIAGNOSTICINGRE' +
        'S <> '#39#39')'
      ' ORDER BY T.C_DIAGNOSTICINGRES'
      ' INTO :C_ICD, :VERSIOCIM'
      ' DO BEGIN'
      
        '     SELECT CAST(F_LEFT(F_STRNULL(N_GUTTMANN, N_ICD),40) AS VARC' +
        'HAR(40))'
      '     FROM  CODIICD'
      '     WHERE C_ICD = :C_ICD AND VERSIOCIM = :VERSIOCIM'
      '     INTO :N_ICD;'
      '     '
      '     IF (N_ICD IS NOT NULL) THEN'
      '     BEGIN'
      '         UPDATE TRACTAMENTS'
      '         SET    N_DIAGNOSTICINGRES = :N_ICD'
      '         WHERE  DATA_INGRES >= :DATAI'
      
        '         AND    C_DIAGNOSTICINGRES = :C_ICD AND VERSIOCIM = :VER' +
        'SIOCIM'
      
        '         AND   (N_DIAGNOSTICINGRES IS NULL OR N_DIAGNOSTICINGRES' +
        '='#39#39');'
      '     END;'
      ' END;'
      ' '
      '/* EXECUTE PROCEDURE P_TRACTAMENTS_N_DIAGING('#39'1.1.2019'#39') */'
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
    Left = 352
    Top = 548
  end
  object UpdCodificatRevisat: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'UpdCodificatRevisat'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (QUANTS INTEGER)'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'BEGIN'
      '  /* Consulta externa - CMBD AEA */'
      '  QUANTS = 0;'
      '  FOR SELECT T.C_TRACTAMENT'
      '  FROM TRACTAMENTS T'
      '  JOIN DRETSPRESTA DP ON T.C_PRESTACIO=DP.C_PRESTACIO'
      '  WHERE DP.C_DRET='#39'P165'#39
      '  AND   T.DATA_INGRES >= :DATAI'
      '  AND   T.DATA_INGRES <= :DATAF'
      '  AND   T.CODIFICAT_REVISAT = '#39'N'#39
      
        '  AND  NOT (T.C_DIAGNOSTICINGRES IS NULL OR (T.C_DIAGNOSTICINGRE' +
        'S="") OR (T.C_DIAGNOSTICINGRES="0")) /* Pendent de codificar */'
      '  INTO :C_TRACTAMENT'
      '  DO BEGIN'
      '      UPDATE TRACTAMENTS'
      '      SET CODIFICAT_REVISAT = '#39'S'#39
      '      WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      '      '
      '      QUANTS = QUANTS + 1;'
      '  END;'
      '  SUSPEND;'
      '  '
      '  /* Hospitalitzaci'#243' - CMBD AAH */'
      
        '  FOR SELECT C_TRACTAMENT FROM P_TRACTAMENTS_LLISTAASHO(NULL,NUL' +
        'L,NULL,:DATAI,:DATAF,NULL)'
      '  WHERE CODIFICAT_REVISAT = '#39'N'#39
      
        '  AND NOT (C_DIAGNOSTICALTA IS NULL OR (C_DIAGNOSTICALTA="") OR ' +
        '(C_DIAGNOSTICALTA="0") OR'
      
        '           ((DIAGNOSTICS_PENDENTS=DIAGNOSTICS) AND (DIAGNOSTICS_' +
        'PENDENTS>0)) OR ((PROCEDIMENTS_PENDENTS=PROCEDIMENTS) AND (PROCE' +
        'DIMENTS_PENDENTS>0))'
      '          )'
      '  INTO :C_TRACTAMENT'
      '  DO BEGIN'
      '      UPDATE TRACTAMENTS'
      '      SET CODIFICAT_REVISAT = '#39'S'#39
      '      WHERE C_TRACTAMENT = :C_TRACTAMENT;'
      ''
      '      QUANTS = QUANTS + 1;'
      '  END;'
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
    Left = 768
    Top = 548
  end
  object DasiProfessionals: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DasiProfessionals'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (NOM             VARCHAR(20),'
      '         COGNOM1         VARCHAR(20),'
      '         COGNOM2         VARCHAR(20),'
      '         ACRONIM         VARCHAR(6),'
      '         NUM_COLEGIAT    CHAR(6),'
      '         ESPECIALITAT    VARCHAR(20),'
      '         ACTIU           CHAR(1),'
      '         PAIS            CHAR(2),'
      '         TIPUS_DOCUMENT  CHAR(3),'
      '         NUMERO_DOCUMENT VARCHAR(9),'
      '         EMAIL           VARCHAR(250)'
      '        )'
      'AS'
      ' DECLARE VARIABLE T_DOC SMALLINT;'
      'BEGIN'
      '  ACRONIM = '#39'INSGUT'#39';'
      '  ACTIU   = '#39'S'#39';'
      '  PAIS    = '#39'ES'#39';'
      '  '
      
        '  FOR SELECT M.NOMBRE, M.COGNOM1, M.COGNOM, M.NC, E.N_ESPECIAL, ' +
        'M.T_DOC, M.DNI, M.EMAIL'
      '  FROM METGES M'
      '  JOIN ESPECIAL E ON M.C_ESPECIAL=E.C_ESPECIAL'
      '  WHERE M.BAIXA = '#39'N'#39
      
        '  INTO :NOM, :COGNOM1, :COGNOM2, :NUM_COLEGIAT, :ESPECIALITAT, :' +
        'T_DOC, :NUMERO_DOCUMENT, :EMAIL'
      '  DO BEGIN'
      '      IF      (T_DOC = 1) THEN TIPUS_DOCUMENT = '#39'DNI'#39';'
      '      ELSE IF (T_DOC = 2) THEN TIPUS_DOCUMENT = '#39'CIP'#39';'
      '      ELSE IF (T_DOC = 3) THEN TIPUS_DOCUMENT = '#39'NIE'#39';'
      '                          ELSE TIPUS_DOCUMENT = NULL;'
      '      '
      '      SUSPEND;'
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
    Left = 752
    Top = 16
  end
  object DasiPacients: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DasiPacients'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA        INTEGER,'
      '         NOM             VARCHAR(20),'
      '         COGNOM1         VARCHAR(20),'
      '         COGNOM2         VARCHAR(20),'
      '         DATA_NAIXEMENT  DATE,'
      '         SEXE            CHAR(1),'
      '         PROVINCIA       VARCHAR(44),'
      '         POBLACIO        VARCHAR(44),'
      '         PAIS            CHAR(2),'
      '         TIPUS_DOCUMENT  CHAR(9),'
      '         NUMERO_DOCUMENT VARCHAR(9),'
      '         ADRESA          VARCHAR(80),'
      '         CODI_POSTAL     VARCHAR(5),'
      '         TELEFON         VARCHAR(10),'
      '         SMS             CHAR(1),'
      '         PUBLICITAT_SMS  CHAR(1),'
      '         EMAIL           VARCHAR(60)'
      '        )'
      'AS'
      ' DECLARE VARIABLE T_DOC CHAR(1);'
      'BEGIN'
      '    PAIS = '#39'ES'#39';'
      ''
      
        '    FOR SELECT NUM_HIST, NOMBRE, APELLIDO1, APELLIDO2, FECHA_NAC' +
        ', SEXO, PROVINCIA, POBLACIO, T_DOC, DNI, ADRESA, CODIGO, TELEFON' +
        'O, SMS, EMAIL'
      '    FROM FILIACIO'
      '    WHERE ESVIU='#39'S'#39
      
        '    INTO :HISTORIA, :NOM, :COGNOM1, :COGNOM2, :DATA_NAIXEMENT, :' +
        'SEXE, :PROVINCIA, :POBLACIO, :T_DOC, :NUMERO_DOCUMENT, :ADRESA, ' +
        ':CODI_POSTAL, :TELEFON, :SMS, :EMAIL'
      '    DO BEGIN'
      '        IF      (T_DOC = '#39'D'#39') THEN TIPUS_DOCUMENT = '#39'DNI'#39';'
      '        ELSE IF (T_DOC = '#39'P'#39') THEN TIPUS_DOCUMENT = '#39'PASAPORTE'#39';'
      '        ELSE IF (T_DOC = '#39'N'#39') THEN TIPUS_DOCUMENT = '#39'NIE'#39';'
      '                              ELSE TIPUS_DOCUMENT = NULL;'
      ''
      '        PUBLICITAT_SMS = SMS;'
      '        '
      '        SUSPEND;'
      '    END;'
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
    Left = 752
    Top = 80
  end
  object DasiVisites: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DasiVisites'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA             INTEGER,'
      '         DATA                 DATE,'
      '         NOM_PROFESSIONAL     VARCHAR(20),'
      '         COGNOM1_PROFESSIONAL VARCHAR(20),'
      '         COGNOM2_PROFESSIONAL VARCHAR(20),'
      '         NUM_COLEGIAT         CHAR(6),'
      '         CODI_PRESTACIO       VARCHAR(4),'
      '         PRESTACIO            VARCHAR(35)'
      '        )'
      'AS'
      'BEGIN'
      
        '    FOR SELECT T.C_HISTORIA, T.DATA_INGRES, M.NOMBRE, M.COGNOM1,' +
        ' M.COGNOM, M.NC, T.C_PRESTACIO, P.N_PRESTACIO'
      '    FROM TRACTAMENTS T'
      
        '    JOIN PRESTACION  P ON T.C_PRESTACIO=P.C_PRESTACIO AND P.TIPU' +
        'S=2'
      '    JOIN METGES      M ON T.C_COORDINADOR=M.CODI'
      
        '    WHERE (T.C_PRESTACIO STARTING WITH '#39'3'#39' OR T.C_PRESTACIO STAR' +
        'TING WITH '#39'4'#39' OR T.C_PRESTACIO STARTING WITH '#39'5'#39' OR T.C_PRESTACI' +
        'O IN(2023,2033,2123,2223,2323,2930,2022,2122,2047) )'
      '    AND   (T.DATA_INGRES>='#39'14.1.2019'#39')'
      
        '    INTO :HISTORIA, :DATA, :NOM_PROFESSIONAL, :COGNOM1_PROFESSIO' +
        'NAL, :COGNOM2_PROFESSIONAL, :NUM_COLEGIAT, :CODI_PRESTACIO, :PRE' +
        'STACIO'
      '    DO BEGIN'
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
    Left = 752
    Top = 144
  end
  object List_NP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List_NP'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (C_HISTORIA    INTEGER,'
      '         DATA_INGRES   DATE,'
      '         DATA_ALTA     DATE,'
      '         C_PRESTACIO   CHAR(4),'
      '         C_COORDINADOR VARCHAR(5),'
      '         C_PRESTACIO_INCOMP   CHAR(4),'
      '         DATA_INGRES_INCOMP   DATE,'
      '         DATA_ALTA_INCOMP     DATE,'
      '         C_COORDINADOR_INCOMP VARCHAR(5)'
      '        )'
      'AS'
      ' DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'BEGIN'
      
        '      C_PRESTACIO_INCOMP = NULL; DATA_INGRES_INCOMP = NULL; DATA' +
        '_ALTA_INCOMP = NULL; C_COORDINADOR_INCOMP = NULL;'
      '      FOR SELECT DISTINCT P.C_PRESTACIO'
      '      FROM PRESTACION  P'
      
        '      JOIN DRETSPRESTA DP ON P.C_PRESTACIO=DP.C_PRESTACIO AND DP' +
        '.C_DRET='#39'P185'#39
      '      WHERE P.TIPUS=2'
      '      ORDER BY P.C_PRESTACIO'
      '      INTO :C_PRESTACIO'
      '      DO BEGIN'
      
        '          FOR SELECT C_HISTORIA, C_TRACTAMENT, DATA_INGRES, DATA' +
        '_ALTA, C_COORDINADOR'
      '          FROM tractaments'
      '          where DATA_INGRES BETWEEN :DATAI AND :DATAF'
      '          AND C_PRESTACIO = :C_PRESTACIO'
      '          order by c_historia, datA_ingres'
      
        '          INTO :C_HISTORIA, :C_TRACTAMENT, :DATA_INGRES, :DATA_A' +
        'LTA, :C_COORDINADOR'
      '          DO BEGIN'
      
        '              C_PRESTACIO_INCOMP = NULL; DATA_INGRES_INCOMP = NU' +
        'LL; DATA_ALTA_INCOMP = NULL; C_COORDINADOR_INCOMP = NULL;'
      '              '
      
        '              FOR SELECT T.C_PRESTACIO, T.DATA_INGRES, T.DATA_AL' +
        'TA, T.C_COORDINADOR  FROM TRACTAMENTS T'
      '              WHERE T.C_HISTORIA = :C_HISTORIA'
      
        '              AND (T.DATA_INGRES <= :DATA_ALTA AND (T.DATA_ALTA ' +
        '>= :DATA_INGRES OR T.DATA_ALTA IS NULL))'
      '              AND T.C_TRACTAMENT <> :C_TRACTAMENT'
      
        '              AND T.C_PRESTACIO IN (SELECT P.C_PRESTACOMP FROM P' +
        'RESTACOMP P WHERE P.C_PRESTACIO=:C_PRESTACIO)'
      
        '              INTO :C_PRESTACIO_INCOMP, :DATA_INGRES_INCOMP, :DA' +
        'TA_ALTA_INCOMP, :C_COORDINADOR_INCOMP'
      '              DO BEGIN'
      '                  SUSPEND;'
      '              END;'
      '          END;'
      '      END;'
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
    Left = 752
    Top = 216
  end
  object RevisioEscalesPendentsAlta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscalesPendents'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_HISTORIA    INTEGER,'
      '         C_TRACTAMENT  INTEGER,'
      '         DATA_INGRES   DATE,'
      '         DATA_ALTA     DATE,'
      '         C_PRESTACIO   CHAR(4),'
      '         C_PROCES      INTEGER,'
      '         FI_PROCES     CHAR(1),'
      '         TEXT          VARCHAR(8),'
      '         ESCALA        VARCHAR(50),'
      '         DATA          DATE,'
      '         TIPUS         CHAR(1)'
      '        )'
      'AS'
      'BEGIN'
      
        '      FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_PROCES, T.DAT' +
        'A_INGRES, T.C_PRESTACIO, COALESCE(T.DATA_ALTA, T.DATA_PREALTA), ' +
        'T.FI_PROCES'
      '      FROM TRACTAMENTS T'
      '      WHERE T.C_PROCES IS NOT NULL'
      '      AND   COALESCE(T.DATA_ALTA, T.DATA_PREALTA) >= "TODAY"'
      '      ORDER BY T.C_PROCES'
      
        '      INTO :C_HISTORIA, :C_TRACTAMENT, :C_PROCES, :DATA_INGRES, ' +
        ':C_PRESTACIO, :DATA_ALTA, :FI_PROCES'
      '      DO BEGIN'
      '          TEXT = '#39'ENTRADES'#39';'
      ''
      '          FOR SELECT ESC.N_ESCALA, EC.DATA, EC.TIPUS'
      '          FROM ESCALESCAP EC'
      '          JOIN ESCALES    ESC ON EC.C_ESCALA=ESC.C_ESCALA'
      '          WHERE EC.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND   EC.ANULAT <> '#39'D'#39' AND EC.ANULAT <> '#39'S'#39
      '          INTO :ESCALA, :DATA, :TIPUS'
      '          DO BEGIN'
      '              SUSPEND;'
      '          END;'
      '          '
      '          TEXT = '#39'PENDENTS'#39';'
      '          '
      '          FOR SELECT ESC.N_ESCALA, EP.DATA_PENDENT, EP.TIPUS'
      '          FROM ESCALESPENDENTS EP'
      '          JOIN ESCALES    ESC ON EP.C_ESCALA=ESC.C_ESCALA'
      '          WHERE EP.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND   EP.ESTAT = 0'
      '          INTO :ESCALA, :DATA, :TIPUS'
      '          DO BEGIN'
      '              SUSPEND;'
      '          END;'
      '      '
      '      END;'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic2 = wDataEscales.EscalesCap
    Dic3 = wDataEscales.EscalesPendents
    Dic1Name = 'wDataBasics.Tractaments'
    Dic2Name = 'wDataEscales.EscalesCap'
    Dic3Name = 'wDataEscales.EscalesPendents'
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
    Left = 784
    Top = 280
  end
  object VitaminaD: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'VitaminaD'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (C_HISTORIA      INTEGER,'
      '         DATA_NAIXEMENT  DATE,'
      '         SEXE            CHAR(1),'
      '         DATA_LESIO      DATE,'
      '         C_UNITATMEDICA  SMALLINT,'
      '         N_UNITATMEDICA  VARCHAR(30),'
      '         ORIGEN          VARCHAR(40),'
      '         DATA_REVISIO    DATE,'
      '         NIVELL_NEUROLOGIC_GLOBAL  VARCHAR(3),'
      '         ASIA            CHAR(1),'
      '         DATA_ASIA       DATE,'
      '         FIM             CHAR(15),'
      '         DATA_FIM        DATE,'
      '         SCIM_III_TOTAL  CHAR(15),  /* ESCALA 105 - '#205'TEM 1030 */'
      '         DATA_SCIM_III   DATE,'
      
        '         VITAMINA_D      FLOAT,     /* CODRSANA_APA.CODI=19511 *' +
        '/'
      '         DATA_VITAMINAD  DATE'
      '         )'
      'AS'
      'BEGIN'
      
        '    FOR SELECT T.C_HISTORIA, F.FECHA_NAC, F.SEXO, F.DATA_LESSIO,' +
        ' F.C_UNITATMEDICA, U.N_UNITATM, CC.N_CODI, T.DATA_INGRES'
      '    FROM TRACTAMENTS T'
      '    JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '    LEFT JOIN UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '    LEFT JOIN CODICAMPS CC ON F.C_ORIGEN = CC.C_CODI AND CC.TIPU' +
        'SCODI = '#39'ORIGEN_FILIACIO'#39
      '    WHERE T.DATA_INGRES BETWEEN :DATAI AND :DATAF'
      
        '    AND (T.C_PRESTACIO = '#39'2004'#39' OR T.C_PRESTACIO = '#39'6004'#39' OR (T.' +
        'C_PRESTACIO ='#39'1004'#39' AND T.C_MOTIU = 131))'
      '    ORDER BY T.DATA_INGRES'
      
        '    INTO :C_HISTORIA, :DATA_NAIXEMENT, :SEXE, :DATA_LESIO, :C_UN' +
        'ITATMEDICA, :N_UNITATMEDICA, :ORIGEN, :DATA_REVISIO'
      '    DO BEGIN'
      
        '        NIVELL_NEUROLOGIC_GLOBAL = NULL; ASIA = NULL; DATA_ASIA ' +
        '= NULL;'
      '        FIM = NULL; DATA_FIM = NULL;'
      '        SCIM_III_TOTAL = NULL; DATA_SCIM_III = NULL;'
      '        VITAMINA_D = NULL; DATA_VITAMINAD = NULL;'
      '    '
      '        /* ASIA */'
      
        '        SELECT A.NIVELL_NEURO, F_DATENULL(C.DATA_ADM, C.DATA), A' +
        '.ASIA'
      '        FROM ESCALESCAP C'
      '        JOIN ESCASIA A ON C.CLAU = A.ID'
      '        WHERE C.C_HISTORIA = :C_HISTORIA'
      '        AND   F_DATENULL(C.DATA_ADM, C.DATA) = :DATA_REVISIO'
      '        AND C.ANULAT <> '#39'S'#39
      '        AND C.C_ESCALA = 8'
      '        ORDER BY C.DATA DESC'
      '        ROWS 1'
      '        INTO :NIVELL_NEUROLOGIC_GLOBAL, :DATA_ASIA, :ASIA;'
      '        '
      '        IF (NIVELL_NEUROLOGIC_GLOBAL IS NULL) THEN'
      '        BEGIN'
      
        '            SELECT A.NIVELL_NEURO, F_DATENULL(C.DATA_ADM, C.DATA' +
        '), A.ASIA'
      '            FROM ESCALESCAP C'
      '            JOIN ESCASIA A ON C.CLAU = A.ID'
      '            WHERE C.C_HISTORIA = :C_HISTORIA'
      '            AND F_DATENULL(C.DATA_ADM, C.DATA) < :DATA_REVISIO'
      '            AND C.ANULAT <> '#39'S'#39
      '            AND C.C_ESCALA = 8'
      '            ORDER BY C.DATA DESC'
      '            ROWS 1'
      '            INTO :NIVELL_NEUROLOGIC_GLOBAL, :DATA_ASIA, :ASIA;'
      '        END;'
      '        '
      '        /* FIM */'
      '        SELECT L.D_ITEM, F_DATENULL(C.DATA_ADM, C.DATA)'
      '        FROM ESCALESCAP C'
      '        JOIN ESCALESLIN L ON C.CLAU = L.CLAU'
      '        WHERE C.C_HISTORIA = :C_HISTORIA'
      '        AND   F_DATENULL(C.DATA_ADM, C.DATA) = :DATA_REVISIO'
      '        AND C.ANULAT <> '#39'S'#39
      '        AND L.C_ITEM = 28'
      '        ORDER BY C.DATA DESC'
      '        ROWS 1'
      '        INTO :FIM, :DATA_FIM;'
      ''
      '        IF (NIVELL_NEUROLOGIC_GLOBAL IS NULL) THEN'
      '        BEGIN'
      '            SELECT L.D_ITEM, F_DATENULL(C.DATA_ADM, C.DATA)'
      '            FROM ESCALESCAP C'
      '            JOIN ESCALESLIN L ON C.CLAU = L.CLAU'
      '            WHERE C.C_HISTORIA = :C_HISTORIA'
      '            AND   F_DATENULL(C.DATA_ADM, C.DATA) < :DATA_REVISIO'
      '            AND C.ANULAT <> '#39'S'#39
      '            AND L.C_ITEM = 28'
      '            ORDER BY C.DATA DESC'
      '            ROWS 1'
      '            INTO :FIM, :DATA_FIM;'
      '        END;'
      '        '
      '        /* SCIM_III */'
      '        SELECT L.D_ITEM, F_DATENULL(C.DATA_ADM, C.DATA)'
      '        FROM ESCALESCAP C'
      '        JOIN ESCALESLIN L ON C.CLAU = L.CLAU'
      '        WHERE C.C_HISTORIA = :C_HISTORIA'
      '        AND   F_DATENULL(C.DATA_ADM, C.DATA) = :DATA_REVISIO'
      '        AND C.ANULAT <> '#39'S'#39
      '        AND L.C_ITEM = 1030'
      '        ORDER BY C.DATA DESC'
      '        ROWS 1'
      '        INTO :SCIM_III_TOTAL, :DATA_SCIM_III;'
      ''
      '        IF (NIVELL_NEUROLOGIC_GLOBAL IS NULL) THEN'
      '        BEGIN'
      '            SELECT L.D_ITEM, F_DATENULL(C.DATA_ADM, C.DATA)'
      '            FROM ESCALESCAP C'
      '            JOIN ESCALESLIN L ON C.CLAU = L.CLAU'
      '            WHERE C.C_HISTORIA = :C_HISTORIA'
      '            AND   F_DATENULL(C.DATA_ADM, C.DATA) < :DATA_REVISIO'
      '            AND C.ANULAT <> '#39'S'#39
      '            AND L.C_ITEM = 1030'
      '            ORDER BY C.DATA DESC'
      '            ROWS 1'
      '            INTO :SCIM_III_TOTAL, :DATA_SCIM_III;'
      '        END;'
      '    '
      '        /* VITAMINA D */'
      '        SELECT L.VALOR, L.DATA'
      '        FROM ANALIT L'
      '        JOIN ANACABE A ON A.NILAB=L.NILAB AND A.DATA=L.DATA'
      '        WHERE A.NUM_HIST = :C_HISTORIA'
      '        AND   A.DATA_ING = :DATA_REVISIO'
      '        AND L.CODI = 19511'
      '        ORDER BY L.DATA'
      '        ROWS 1'
      '        INTO :VITAMINA_D, :DATA_VITAMINAD;'
      '    '
      '        SUSPEND;'
      '    END;'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic2 = wDataEscales.Asia
    Dic3 = wDataEscales.EscalesCap
    Dic1Name = 'wDataBasics.Tractaments'
    Dic2Name = 'wDataEscales.Asia'
    Dic3Name = 'wDataEscales.EscalesCap'
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
    Left = 768
    Top = 484
  end
  object AltesBCN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AltesBCN'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (C_HISTORIA      INTEGER,'
      '         DATA_INGRES     DATE,'
      '         C_TRACTAMENT    INTEGER,'
      '         C_PRESTACIO     CHAR(4),'
      '         DATA_PREALTA    DATE,'
      '         DATA_ALTA       DATE,'
      '         DATA_ULTIMA_ASSISTENCIA  DATE,'
      '         TIPUS_ULTIMA_ASSISTENCIA SMALLINT'
      '         )'
      'AS'
      'BEGIN'
      
        '    FOR SELECT T.C_HISTORIA, T.DATA_INGRES, T.C_PRESTACIO, T.DAT' +
        'A_ALTA, T.DATA_PREALTA, T.C_TRACTAMENT, MAX(A.DATA)'
      '    FROM TRACTAMENTS T'
      
        '    JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO AND P.ESE' +
        'ASE='#39'C'#39' AND P.TIPUS=3'
      
        '    JOIN ASSISTENCIAGIMNAS A ON T.C_TRACTAMENT=A.C_TRACTAMENT AN' +
        'D A.C_TIPUSASS <> -1'
      '    WHERE (T.C_ESTATFAC <> 55)'
      
        '    AND NOT (T.C_PRESTACIO IN ('#39'4703'#39','#39'4903'#39','#39'4803'#39','#39'4113'#39','#39'4103' +
        #39','#39'4303'#39','#39'4133'#39','#39'4123'#39','#39'4603'#39','#39'4153'#39','#39'4503'#39','#39'4058'#39','#39'4059'#39','#39'3646'#39 +
        ','#39'4008'#39','#39'4009'#39','#39'4705'#39','#39'3648'#39'))'
      
        '    AND ((T.DATA_ALTA IS NULL) OR ((T.DATA_ALTA IS NOT NULL) AND' +
        ' (T.DATA_ALTA BETWEEN :DATAI AND :DATAF)))'
      
        '    GROUP BY T.C_HISTORIA, T.DATA_INGRES, T.C_PRESTACIO, T.DATA_' +
        'ALTA, T.DATA_PREALTA, T.C_TRACTAMENT'
      '    ORDER BY T.DATA_ALTA, 6 DESC'
      
        '    INTO :C_HISTORIA, :DATA_INGRES, :C_PRESTACIO, :DATA_ALTA, :D' +
        'ATA_PREALTA, :C_TRACTAMENT, :DATA_ULTIMA_ASSISTENCIA'
      '    DO BEGIN'
      '        IF (DATA_ALTA IS NOT NULL) THEN'
      '        BEGIN'
      '            DATA_ULTIMA_ASSISTENCIA  = NULL;'
      '            TIPUS_ULTIMA_ASSISTENCIA = NULL;'
      '            SUSPEND;'
      '        END;'
      '        ELSE IF ("TODAY" - DATA_ULTIMA_ASSISTENCIA >= 45) THEN'
      '        BEGIN'
      '            SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS'
      
        '            WHERE C_TRACTAMENT = :C_TRACTAMENT AND C_TIPUSASS <>' +
        ' -1'
      '            AND DATA = :DATA_ULTIMA_ASSISTENCIA'
      '            INTO :TIPUS_ULTIMA_ASSISTENCIA;'
      ''
      '            SUSPEND;'
      '        END;'
      '    END;'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic2 = wDataGimnas.AssistenciaGimnas
    Dic1Name = 'wDataBasics.Tractaments'
    Dic2Name = 'wDataGimnas.AssistenciaGimnas'
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
    Left = 768
    Top = 388
  end
  object IngressatsADataX: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'IngressatsADataX'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_X DATE, HORA_X VARCHAR(2), MINS_X VARCHAR(2))'
      'RETURNS (UH    VARCHAR(15),'
      '         LLIT  VARCHAR(3),'
      '         NHC   INTEGER,'
      '         NOM_PACIENT VARCHAR(80)'
      ')'
      'AS'
      ' DECLARE VARIABLE LLIT_ANTIC VARCHAR(3);'
      ' DECLARE VARIABLE HORA_ALTA  VARCHAR(2);'
      ' DECLARE VARIABLE MINS_ALTA  VARCHAR(2);'
      'BEGIN'
      #9
      
        '    FOR SELECT  T.C_PLANTA, T.C_LLIT, T.C_HISTORIA, F.NOMCOMPLET' +
        ', f_left(t.hora_alta, 2), f_right(t.hora_alta, 2)'
      '    FROM TRACTAMENTS T'
      '    JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      '    WHERE (t.data_alta >= :DATA_X or t.data_alta is null)'
      '    and  t.data_ingres <= :DATA_X'
      '    AND t.c_prestacio= '#39'1004'#39
      '    ORDER BY t.c_planta, t.c_llit'
      '    INTO :UH, :LLIT, :NHC, :NOM_PACIENT, :HORA_ALTA, :MINS_ALTA'
      '    DO BEGIN'
      
        '        /* falta comprar hora alta i mins alta amb els que entre' +
        'n per par'#224'metre */'
      '    '
      '        /* LOGCANVISLLIT'
      
        '           c_historia  llit_antic llit_nou data (en que es regis' +
        'tra) */'
      '           '
      '        LLIT_ANTIC = NULL;'
      '        '
      '        SELECT LLIT_ANTIC FROM LOGCANVISLLIT'
      '        WHERE C_HISTORIA = :NHC'
      '        AND   DATA >= '#39'13.8.2026 8:40'#39
      '        ORDER BY DATA'
      '        ROWS 1'
      '        INTO :LLIT_ANTIC;'
      '        '
      '        IF (LLIT_ANTIC IS NOT NULL) THEN LLIT = LLIT_ANTIC;'
      ''
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = wDataBasics.Tractaments
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
    Left = 816
    Top = 440
  end
end
