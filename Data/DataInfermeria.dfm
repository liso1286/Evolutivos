object wDataInfermeria: TwDataInfermeria
  OldCreateOrder = False
  Left = 422
  Top = 289
  Height = 464
  Width = 890
  object InferDades: TDic
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
        Comentario = 'PK'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Item'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'item'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Valor'
        NombreDB = 'Data_Valor'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Valor'
        NombreDB = 'Valor'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        Longitud = 5
        Consulta = 'usuari'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Anul'#183'lat'
        NombreDB = 'Anulat'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data anul'#183'lat'
        NombreDB = 'Data_Anulat'
        Longitud = 11
        MaskDisplay = 'dd"/"mm"/"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari anul'#183'laci'#243
        NombreDB = 'Usuari_Anulat'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Monitor'
        NombreDB = 'Monitor'
        Longitud = 40
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1:si la dada ve del monitor (autom'#224'tica)'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID administraci'#243' FT'
        NombreDB = 'ID_Admin_FT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'si '#233's registre de glic'#232'mia que prov'#233' d'#39'administraci'#243' d'#39'insulina ' +
          'a Farmatools'
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
        Nombre = 'itemdata'
        NombreDB = 'itemdata'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament'
          'C Item'
          'Data Valor')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Data'
        NombreDB = 'Data'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament'
          'Data Valor')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataDesc'
        NombreDB = 'DataDesc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament'
          'Data Valor')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'FKTract'
        NombreDB = 'FKTract'
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
        Nombre = 'FKItem'
        NombreDB = 'FKItem'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Item')
        Tipo = tiForaneo
        ForaneoDic = InferItems
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FKUsuaris'
        NombreDB = 'FKUsuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Anulat'
        NombreDB = 'Anulat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Anul'#183'lat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'item'
        Master = InferItems
        BuscaOrigen.Strings = (
          'C Item')
        CopiarOrigen.Strings = (
          'C Item')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'usuari'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari')
        CopiarOrigen.Strings = (
          'Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Infermeria Dades'
    NombreTabla = 'InferDades'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'C Tractament'
      'C Item'
      'Data Valor'
      'Valor'
      'Usuari'
      'Data'
      'Anul'#183'lat'
      'Data anul'#183'lat')
    IndiceVer = 'DataDesc'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 68
  end
  object InferItems: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Item'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'T'#233' Gr'#224'fica?'
        NombreDB = 'TeGrafica'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Valor m'#237'nim'
        NombreDB = 'ValorMin'
        Longitud = 10
        MaskDisplay = '#,##0.000;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Valor m'#224'xim'
        NombreDB = 'ValorMax'
        Longitud = 10
        MaskDisplay = '#,##0.000;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Unitat de Mesura'
        NombreDB = 'Unitat_Mesura'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
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
        Aplica = kcNumEntero
        Nombre = 'Increment'
        NombreDB = 'Increment'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Normalitat'
        NombreDB = 'Normalitat'
        Longitud = 10
        MaskDisplay = '#,##0.000;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Color'
        NombreDB = 'Color'
        Longitud = 9
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Balan'#231' h'#237'dric'
        NombreDB = 'BalansHidric'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'ES'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Acr'#242'nim'
        NombreDB = 'R_Item'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'descripci'#243' curta per als '#237'tems involucrats al REC'
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
        Nombre = 'NItem'
        NombreDB = 'NItem'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Descripci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ordre'
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
    Nombre = 'Infermeria Items'
    NombreTabla = 'InferItems'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Descripci'#243
      'T'#233' Gr'#224'fica?'
      'Valor m'#237'nim'
      'Valor m'#224'xim'
      'Unitat de Mesura'
      'Ordre'
      'Increment'
      'Normalitat'
      'Color'
      'Balan'#231' h'#237'dric')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 16
  end
  object LlistaItems: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Llista'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACT INTEGER, DATAINICI DATE, DATAFI DATE)'
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_ITEM INTEGER,'
      '  N_ITEM VARCHAR(40),'
      '  UM VARCHAR(10),'
      '  ORDRE INTEGER,'
      '  DATA1 DATE,'
      '  DATA2 DATE'
      ')'
      'AS'
      'BEGIN'
      '      C_TRACTAMENT = :C_TRACT;'
      '      DATA1 = :DATAINICI;'
      '      DATA2 = :DATAFI;'
      ''
      
        '      FOR SELECT DISTINCT D.C_ITEM, I.N_ITEM, I.UNITAT_MESURA, I' +
        '.ORDRE'
      '          FROM   INFERDADES D'
      '          JOIN   INFERITEMS I ON D.C_ITEM = I.C_ITEM'
      '          WHERE  D.C_TRACTAMENT = :C_TRACT'
      '          AND    D.DATA_VALOR BETWEEN :DATAINICI AND :DATAFI'
      '          AND    D.ANULAT = "N"'
      '          AND    I.ORDRE > 0'
      '          ORDER  BY I.ORDRE'
      '          INTO  :C_ITEM, :N_ITEM, :UM, :ORDRE'
      '      DO BEGIN'
      '            SUSPEND;'
      '      END;'
      ''
      '      SELECT COUNT(*)'
      '      FROM   ESCALESCAP'
      '      WHERE  C_TRACTAMENT = :C_TRACT'
      '      AND    C_ESCALA = 4'
      '      AND    DATA BETWEEN F_SOLOFECHA(:DATAFI) - 60 AND :DATAFI'
      '      AND    C_ENTRADA >= 0'
      '      INTO  :C_ITEM;'
      '      '
      '      IF (C_ITEM > 0) THEN'
      '      BEGIN'
      '            C_ITEM = -1;'
      '            N_ITEM = '#39'GOAT'#39';'
      '            UM = '#39#39';'
      '            SUSPEND;'
      '      END;'
      ''
      'END')
    Dic1 = InferItems
    Dic1Name = 'InferItems'
    Abierta = False
    Borrame = False
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
    Top = 16
  end
  object LlistaValors: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Llista'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_TRACTAMENT INTEGER, C_ITEM INTEGER, DATAINICI DATE, DATAFI DA' +
        'TE)'
      'RETURNS ('
      '  VALOR VARCHAR(15),'
      '  DATA_VALOR DATE'
      ')'
      'AS'
      'BEGIN'
      ''
      '      /* Escala GOAT */'
      '      IF (C_ITEM = -1) THEN'
      '      BEGIN'
      '      '
      '            FOR SELECT L.D_ITEM, C.DATA'
      '                FROM   ESCALESLIN L'
      '                JOIN   ESCALESCAP C ON L.CLAU = C.CLAU'
      '                WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '                AND    L.C_ITEM = 69'
      
        '                AND    C.DATA BETWEEN F_SOLOFECHA(:DATAFI) - 60 ' +
        'AND :DATAFI'
      '                ORDER  BY C.DATA DESC'
      '                INTO  :VALOR, :DATA_VALOR'
      '            DO BEGIN'
      '                  SUSPEND;'
      '            END;'
      '      END;'
      '      '
      '      /* Altres '#237'tems d'#39'infermeria*/'
      '      ELSE BEGIN'
      '      '
      '            FOR SELECT VALOR, DATA_VALOR'
      '                FROM   INFERDADES'
      '                WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '                AND    C_ITEM = :C_ITEM'
      '                AND    DATA_VALOR BETWEEN :DATAINICI AND :DATAFI'
      '                AND    ANULAT = "N"'
      '                ORDER  BY DATA_VALOR DESC'
      '                INTO  :VALOR, :DATA_VALOR'
      '            DO BEGIN'
      '                  SUSPEND;'
      '            END;'
      '            '
      '      END;'
      'END')
    Dic1 = InferDades
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
    Left = 100
    Top = 120
  end
  object InferTasques: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Tasca'
        NombreDB = 'C_Tasca'
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
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tasca'
        NombreDB = 'Tasca'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Inici'
        NombreDB = 'Data_I'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari Inicia'
        NombreDB = 'Usuari_I'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Suspensi'#243
        NombreDB = 'Data_S'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari Suspen'
        NombreDB = 'Usuari_S'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'V'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tasca')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FKTract'
        NombreDB = 'FKTract'
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
        Nombre = 'DataDesc'
        NombreDB = 'Data'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament'
          'Data Inici')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'UsuariI'
        NombreDB = 'UsuariI'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari Inicia')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'UsuariS'
        NombreDB = 'UsuariS'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari Suspen')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Infermeria Tasques'
    NombreTabla = 'InferTasques'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Tasca'
      'C Tractament'
      'Tasca'
      'Data Inici'
      'Usuari Inicia'
      'Data Suspensi'#243
      'Usuari Suspen'
      'Estat')
    IndiceVer = 'DataDesc'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 183
  end
  object InferDades_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE POSCOMA    INTEGER;'
      '  DECLARE VARIABLE SPES       VARCHAR(15);'
      '  DECLARE VARIABLE PES        DOUBLE PRECISION;'
      '  DECLARE VARIABLE DATA_PI    DATE;'
      '  DECLARE VARIABLE PI         INTEGER;'
      '  DECLARE VARIABLE DATAPES    DATE;'
      '  DECLARE VARIABLE ID         INTEGER;'
      '  DECLARE VARIABLE PI_OLD     INTEGER;'
      '  DECLARE VARIABLE DATAPI_OLD DATE;'
      'BEGIN'
      '      IF (USER <> "REPLICATOR") THEN'
      '      BEGIN'
      '            /* Posem ID (que '#233's PK) si est'#224' buit */'
      
        '            IF (NEW.ID IS NULL) THEN NEW.ID = Gen_ID(G_INFERDADE' +
        'S, 1);'
      '      '
      
        '            /* Si entren un Balan'#231' H'#237'dric, calculem les P'#232'rdues ' +
        'Insensibles i les restem del Balan'#231' */'
      '            IF (NEW.C_ITEM = 17) THEN'
      '            BEGIN'
      '      '
      '                  /* Busquem l'#39#250'ltim pes entrat */'
      
        '                  /* haurem de canviar la coma per un punt, si n' +
        #39'hi ha */'
      '                  SELECT F_Substr('#39','#39', VALOR), VALOR'
      '                  FROM   INFERDADES'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ITEM = 19'
      
        '                  AND    DATA_VALOR < F_SoloFecha(NEW.DATA_VALOR' +
        ') + 1'
      '                  AND    ANULAT = '#39'N'#39
      '                  ORDER  BY DATA_VALOR DESC'
      '                  ROWS   1'
      '                  INTO  :POSCOMA, :SPES;'
      '                  '
      
        '                  IF (POSCOMA > 0) THEN PES = F_Mid(:SPES, 0, :P' +
        'OSCOMA-1) || '#39'.'#39' || F_Mid(:SPES, :POSCOMA, 5);'
      '                  ELSE PES = SPES;'
      '                  '
      
        '                  /* Calculem la data i el valor de les P'#232'rdues ' +
        'Insensibles */'
      
        '                  DATA_PI = F_SoloFecha(NEW.DATA_VALOR) + 23/24 ' +
        '+ 59/1440 + 58/86400;'
      '                  PI = F_Truncate(:PES * 12);'
      '                  '
      '                  /* Insertem l'#39#237'tem de P'#232'rdues Insensibles */'
      
        '                  INSERT INTO INFERDADES (C_TRACTAMENT, C_ITEM, ' +
        'DATA_VALOR, VALOR, ANULAT)'
      
        '                  VALUES (NEW.C_TRACTAMENT, 41, :DATA_PI, :PI, N' +
        'EW.ANULAT);'
      '                  '
      '                  /* Actualitzem el balan'#231' h'#237'dric */'
      '                  NEW.VALOR = F_Truncate(NEW.VALOR - PI);'
      ''
      '            END;'
      '            '
      
        '            /* Si entren un Pes, hem de modificar les P'#232'rdues in' +
        'sensibles (i el Balan'#231' H'#237'dric) d'#39'hores posteriors */'
      '            IF (NEW.C_ITEM = 19) THEN'
      '            BEGIN'
      ''
      '                  /* Calculem les noves PI */'
      
        '                  /* Hem de canviar '#39','#39' per '#39'.'#39' al pes, si cont'#233 +
        ' decimals, per fer els c'#224'lculs */'
      '                  POSCOMA = F_Substr('#39','#39', NEW.VALOR);'
      
        '                  IF (POSCOMA > 0) THEN PES = F_Mid(NEW.VALOR, 0' +
        ', :POSCOMA-1) || '#39'.'#39' || F_Mid(NEW.VALOR, :POSCOMA, 5);'
      '                  ELSE PES = NEW.VALOR;'
      '                  PI = PES * 12;'
      ''
      
        '                  /* Mirem si hi ha algun pes entrat amb data po' +
        'sterior a la del que entren ara */'
      
        '                  /* Pq modificarem les PI i els BH entre la dat' +
        'a del nou pes i la del seg'#252'ent entrat */'
      '                  SELECT DATA_VALOR'
      '                  FROM   INFERDADES'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ITEM = 19'
      '                  AND    DATA_VALOR > NEW.DATA_VALOR'
      '                  AND    ANULAT = '#39'N'#39
      '                  ORDER  BY DATA_VALOR'
      '                  ROWS   1'
      '                  INTO  :DATAPES;'
      ''
      
        '                  /* si no n'#39'hi ha cap, buscarem fins "ara" (+1 ' +
        'dia per si l'#39'hora del servidor no est'#224' b'#233', per curar-se amb salu' +
        't) */'
      
        '                  IF (DATAPES IS NULL) THEN DATAPES = F_FechaHor' +
        'aActual() + 1;'
      ''
      '                  /* P'#232'rdues Insensibles entre aquestes dates */'
      '                  FOR SELECT ID, VALOR, DATA_VALOR'
      '                      FROM   INFERDADES'
      '                      WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                      AND    C_ITEM = 41'
      
        '                      AND    DATA_VALOR BETWEEN NEW.DATA_VALOR A' +
        'ND :DATAPES'
      '                      INTO  :ID, :PI_OLD, :DATAPI_OLD'
      '                  DO BEGIN'
      ''
      
        '                        /* Modifiquem el BH corresponent a la PI' +
        ' que hem de canviar */'
      '                        UPDATE INFERDADES'
      
        '                        SET    VALOR = F_Truncate(VALOR + :PI_OL' +
        'D - :PI)'
      '                        WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                        AND    C_ITEM = 17'
      
        '                        AND    F_SoloFecha(DATA_VALOR) = F_SoloF' +
        'echa(:DATAPI_OLD);'
      ''
      '                        /* Modifiquem la PI */'
      
        '                        UPDATE INFERDADES SET VALOR = :PI WHERE ' +
        'ID = :ID;'
      ''
      '                  END;'
      ''
      '            END;'
      ''
      '      END;'
      'END'
      ''
      '')
    Dic1 = InferDades
    Dic1Name = 'inferdades'
    Abierta = False
    Borrame = False
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
    Top = 68
  end
  object InferDades_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BU'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '      /* Si modifiquen "MOSTRAR BALAN'#199' H'#205'DRIC", tamb'#233' modifiquem' +
        ' les P'#232'rdues Insensibles */'
      '      IF ((NEW.C_ITEM = 17) AND (NEW.ANULAT <> OLD.ANULAT)) THEN'
      '      BEGIN'
      
        '         UPDATE INFERDADES SET ANULAT = NEW.ANULAT, DATA = NEW.D' +
        'ATA, USUARI = NEW.USUARI'
      
        '         WHERE C_TRACTAMENT = NEW.C_TRACTAMENT AND C_ITEM = 41 A' +
        'ND F_SoloFecha(DATA_VALOR) = F_SoloFecha(NEW.DATA_VALOR);'
      '      END;'
      '   END'
      'END')
    Dic1 = InferDades
    Dic1Name = 'inferdades'
    Abierta = False
    Borrame = False
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
    Left = 177
    Top = 68
  end
  object DocsInfer: TDic
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
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'c_tractament'
        NombreDB = 'c_tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'c_doc'
        NombreDB = 'c_doc'
        Longitud = 40
        Consulta = 'docs'
        zType = tcIB_Smallint
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
        Nombre = 'hist'
        NombreDB = 'hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'c_historia')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
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
          'c_tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'usuari'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'c_usuari')
        CopiarOrigen.Strings = (
          'c_usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'docs'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'c_doc')
        CopiarOrigen.Strings = (
          'c_doc')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DOCSINFER'#39
      end>
    Nombre = 'DocsInfer'
    NombreTabla = 'DocsInfer'
    Organiza = tbBase
    CamposVer.Strings = (
      'id')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 142
    Top = 183
  end
  object UppCap: TDic
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
        Nombre = 'Hist'#242'ria'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Filiacio'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Tractament'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data creacio'
        NombreDB = 'DATA_CREACIO'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Interna o Externa'
        NombreDB = 'INT_EXT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'I,E'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'ESTAT'
        Longitud = 3
        Consulta = 'Estat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Localitzaci'#243
        NombreDB = 'LOCALITZACIO'
        Longitud = 3
        Consulta = 'Localitzacio'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data finalitzaci'#243
        NombreDB = 'DATA_FINALITZA'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data finalitzaci'#243' autom'#224'tica'
        NombreDB = 'DATA_FINALITZA_AUTO'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari resoluci'#243
        NombreDB = 'USER_FINALITZA'
        Longitud = 5
        Consulta = 'MetgesF'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data anul'#183'laci'#243
        NombreDB = 'DATA_ANULA'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari anul'#183'laci'#243
        NombreDB = 'USER_ANULA'
        Longitud = 5
        Consulta = 'MetgesA'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu finalitzaci'#243
        NombreDB = 'MOTIU_FINALITZACIO'
        Longitud = 3
        Consulta = 'MotiuF'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Vist'
        NombreDB = 'VISTO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari vist'
        NombreDB = 'C_USER_VISTO'
        Longitud = 5
        Consulta = 'MetgesV'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data vist'
        NombreDB = 'DATA_VISTO'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = #201's UPP'
        NombreDB = 'UPP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
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
          'ID')
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
          'Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
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
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'user1'
        NombreDB = 'user1'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari resoluci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'user2'
        NombreDB = 'user2'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari anul'#183'laci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'user3'
        NombreDB = 'user3'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari vist')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Tractament'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'Tractament')
        CopiarOrigen.Strings = (
          'Tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end
      item
        Nombre = 'Filiacio'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Hist'#242'ria')
        CopiarOrigen.Strings = (
          'Hist'#242'ria')
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
        WhereFiltro = 'TIPUSCODI = '#39'UPP.ESTAT'#39
      end
      item
        Nombre = 'Localitzacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Localitzaci'#243)
        CopiarOrigen.Strings = (
          'Localitzaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'UPP.LOCALITZACIO'#39
      end
      item
        Nombre = 'MetgesA'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari anul'#183'laci'#243)
        CopiarOrigen.Strings = (
          'Usuari anul'#183'laci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgesF'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari resoluci'#243)
        CopiarOrigen.Strings = (
          'Usuari resoluci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgesV'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari vist')
        CopiarOrigen.Strings = (
          'Usuari vist')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MotiuF'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Motiu finalitzaci'#243)
        CopiarOrigen.Strings = (
          'Motiu finalitzaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'UPP.MOTIUFI'#39
      end>
    Nombre = 'UPPCAP'
    NombreTabla = 'UPPCAP'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Hist'#242'ria'
      'Tractament'
      'Data creacio'
      'Localitzaci'#243
      #201's UPP'
      'Interna o Externa'
      'Estat'
      'Data finalitzaci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 243
  end
  object UppLin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'ID'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'L'#237'nia'
        NombreDB = 'Linia'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'ID'
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
        Aplica = kcMODELS
        Nombre = 'Mida 1'
        NombreDB = 'Mida1'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mida 2'
        NombreDB = 'Mida2'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mida 3'
        NombreDB = 'Mida3'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grau'
        NombreDB = 'GRAU'
        Longitud = 3
        Consulta = 'Grau'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hores sedestaci'#243
        NombreDB = 'SEDESTACIO'
        Longitud = 2
        MaskDisplay = '#0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Filera de coixins'
        NombreDB = 'COIXINS'
        Longitud = 1
        MaskDisplay = '0;;'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Canvis Posturals'
        NombreDB = 'POSTURA'
        Longitud = 3
        Consulta = 'Postural'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions'
        NombreDB = 'OBSERVACIONS'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Anul'#183'lat'
        NombreDB = 'ANULAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data anul'#183'lat'
        NombreDB = 'DATA_ANULAT'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Exudat'
        NombreDB = 'EXUDAT'
        Longitud = 3
        Consulta = 'Exsudat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus de teixit'
        NombreDB = 'TEIXIT'
        Longitud = 3
        Consulta = 'Teixit'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'Usuari'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari anul'#183'laci'#243
        NombreDB = 'USER_ANULA'
        Longitud = 5
        Consulta = 'Anula'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Total Push tool'
        NombreDB = 'PUNTUACIO'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SEMP'
        NombreDB = 'SEMP'
        Longitud = 3
        Consulta = 'SEMP'
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
          'ID'
          'L'#237'nia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'uppcap'
        NombreDB = 'uppcap'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = UppCap
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'user1'
        NombreDB = 'user1'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'user2'
        NombreDB = 'user2'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari anul'#183'laci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Postural'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Canvis Posturals')
        CopiarOrigen.Strings = (
          'Canvis Posturals')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'UPP.POSTURAL'#39
      end
      item
        Nombre = 'Grau'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Grau')
        CopiarOrigen.Strings = (
          'Grau')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'UPP.GRAU'#39
      end
      item
        Nombre = 'Exsudat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Exudat')
        CopiarOrigen.Strings = (
          'Exudat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI  = '#39'UPP.EXSUDAT'#39
      end
      item
        Nombre = 'Teixit'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus de teixit')
        CopiarOrigen.Strings = (
          'Tipus de teixit')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI  = '#39'UPP.TEIXIT'#39
      end
      item
        Nombre = 'Usuari'
        Master = wDataBasics.Metges
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
        Nombre = 'Anula'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari anul'#183'laci'#243)
        CopiarOrigen.Strings = (
          'Usuari anul'#183'laci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'SEMP'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'SEMP')
        CopiarOrigen.Strings = (
          'SEMP')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'UPP.SEMP'#39
      end>
    Nombre = 'UPPLIN'
    NombreTabla = 'UPPLIN'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 88
    Top = 243
  end
  object UppRisc: TDic
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
        Aplica = kcMODELS
        Nombre = 'Factor de risc'
        NombreDB = 'FRISC'
        Longitud = 3
        Consulta = 'FRisc'
        zType = tcIB_Smallint
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
          'Id'
          'Factor de risc')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'UPPCAP'
        NombreDB = 'UPPCAP'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Id')
        Tipo = tiForaneo
        ForaneoDic = UppCap
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'FRisc'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Factor de risc')
        CopiarOrigen.Strings = (
          'Factor de risc')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'UPP.FRISC'#39
      end>
    Nombre = 'UPPRISC'
    NombreTabla = 'UPPRISC'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 142
    Top = 243
  end
  object InferDadesVirtual: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltima valoraci'#243
        NombreDB = 'Max'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltima valoraci'#243
        NombreDB = 'Data_Ultim'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'tract'
        NombreDB = 'tract'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'InferDades Virtual'
    NombreTabla = 'INFERDADES_'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tractament'
      'Data '#250'ltima valoraci'#243)
    IndiceVer = 'tract'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 489
    Top = 68
  end
  object P_CaigudesPt: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CaigudesPt'
    ForceNombreDB = False
    Body.Strings = (
      '(C_PLANTA VARCHAR(10))'
      'RETURNS (QUANTES INTEGER)'
      'AS'
      '      DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '      DECLARE VARIABLE DATA_ULTIM DATE;'
      'BEGIN'
      '      '
      '      QUANTES = 0;'
      '      '
      '      FOR SELECT DISTINCT C_TRACTAMENT'
      '          FROM   TRACTAMENTS T'
      '          JOIN   INFERDADES D on T.C_TRACTAMENT = D.C_TRACTAMENT'
      '          WHERE  T.C_PRESTACIO = "1004"'
      '          AND   (T.DATA_ALTA is null or T.DATA_ALTA >= "TODAY")'
      '          AND   (T.C_PLANTA = :C_PLANTA or :C_PLANTA = "1")'
      '          AND    D.C_ITEM = 51'
      '          INTO  :C_TRACTAMENT'
      '      DO BEGIN'
      ''
      
        '          SELECT MAX(DATA_VALOR) FROM INFERDADES WHERE C_TRACTAM' +
        'ENT = :C_TRACTAMENT AND C_ITEM = 51 AND ANULAT = "N" INTO :DATA_' +
        'ULTIM;'
      ''
      
        '          IF (DATA_ULTIM <= "TODAY" - 15) THEN QUANTES = QUANTES' +
        ' + 1;'
      '      END;'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = InferDades
    Dic1Name = 'inferdades'
    Abierta = False
    Borrame = False
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
    Top = 120
  end
  object P_IMCPt: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'IMCPt'
    ForceNombreDB = False
    Body.Strings = (
      '(C_PLANTA VARCHAR(10))'
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  NOMCOMPLET VARCHAR(80),'
      '  DATA_INGRES DATE,'
      '  C_LLIT VARCHAR(3),'
      '  DATA_ULTIM DATE,'
      '  IMC VARCHAR(15)'
      ')'
      'AS'
      '  DECLARE VARIABLE INT_IMC INTEGER;'
      '  DECLARE VARIABLE EDAT INTEGER;'
      '  DECLARE VARIABLE NUM_SONDES_ACTIVES SMALLINT;'
      'BEGIN'
      '      '
      
        '      FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOM' +
        'PLET, T.DATA_INGRES, T.C_LLIT, F.EDAT'
      '          FROM   TRACTAMENTS T'
      '          JOIN   INFERDADES D on T.C_TRACTAMENT = D.C_TRACTAMENT'
      '          JOIN   FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      '          WHERE  T.C_PRESTACIO = "1004"'
      '          AND   (T.DATA_ALTA is null or T.DATA_ALTA >= "TODAY")'
      '          AND   (T.C_PLANTA = :C_PLANTA or :C_PLANTA = "1")'
      '          AND    D.C_ITEM = 20'
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :DATA_I' +
        'NGRES, :C_LLIT, :EDAT'
      '      DO BEGIN'
      '      '
      '          DATA_ULTIM = NULL;'
      '          IMC = NULL;'
      '          NUM_SONDES_ACTIVES = NULL;'
      '          '
      '          SELECT DATA_VALOR, VALOR'
      '          FROM   INFERDADES'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_ITEM = 20'
      '          AND    ANULAT = "N"'
      '          ORDER  BY DATA_VALOR DESC'
      '          ROWS   1'
      '          INTO  :DATA_ULTIM, :IMC;'
      ''
      '          IF (DATA_ULTIM IS NULL) THEN DATA_ULTIM = DATA_INGRES;'
      '          IF (IMC IS NULL) THEN IMC = 0;'
      ''
      '          SELECT COUNT(*)'
      '          FROM   REGISTRESINFER'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    T_REG IN(5,9,18)'
      
        '          AND   (DATAFINAL_REAL IS NULL OR DATAFINAL_REAL >= "TO' +
        'DAY")'
      '          INTO  :NUM_SONDES_ACTIVES;'
      '          '
      '          INT_IMC = F_Truncar(F_ReplaceText('#39','#39','#39'.'#39',IMC));'
      ''
      '          IF ( ((INT_IMC <= 18) AND (DATA_ULTIM  +7 <= "TODAY"))'
      '          OR   ((INT_IMC  > 18) AND (DATA_ULTIM +30 <= "TODAY"))'
      '          OR   ((EDAT < 17) AND (DATA_ULTIM <= "TODAY" -  7))'
      
        '          OR   ((NUM_SONDES_ACTIVES > 0) AND (DATA_ULTIM +7 <= "' +
        'TODAY")) )'
      '          THEN SUSPEND;'
      ''
      '      END;'
      'END')
    Dic1 = InferDades
    Dic1Name = 'inferdades'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 330
    Top = 120
  end
  object AlarmaUPP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ALARMA'
    ForceNombreDB = False
    Body.Strings = (
      '(PLANTA VARCHAR(15), AVUI DATE)'
      'RETURNS (ID              INTEGER,'
      '         HISTORIA        INTEGER,'
      '         NOMCOMPLET      VARCHAR(80),'
      '         LLIT            VARCHAR(3),'
      '         DATA_CREACIO    DATE,'
      '         N_LOCALITZACIO  VARCHAR(40),'
      '         DATA            DATE'
      '         )'
      'AS'
      '    DECLARE VARIABLE DATA_REGISTRE DATE;'
      'BEGIN'
      
        '      FOR SELECT C.C_HISTORIA, F.NOMCOMPLET, T.C_LLIT, CC.N_CODI' +
        ', C.DATA_CREACIO, C.ID'
      '          FROM   UPPCAP C'
      
        '/*          JOIN   TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT AND ((T.C_PLANTA = :PLANTA) OR ('#39'1'#39' = :PLANTA)) */'
      
        '          JOIN   TRACTAMENTS T ON C.C_HISTORIA = T.C_HISTORIA AN' +
        'D (T.DATA_ALTA >= "TODAY" OR T.DATA_ALTA IS NULL)'
      '          JOIN   FILIACIO F ON C.C_HISTORIA = F.NUM_HIST'
      
        '          JOIN   CODICAMPS  CC ON C.LOCALITZACIO = CC.C_CODI AND' +
        ' CC.TIPUSCODI = '#39'UPP.LOCALITZACIO'#39
      '          WHERE  ESTAT = 1  /* en curs */'
      '          AND   (T.C_PLANTA = :PLANTA  OR  :PLANTA = '#39'1'#39')'
      '          ORDER  BY C_HISTORIA, DATA_CREACIO'
      
        '          INTO  :HISTORIA, :NOMCOMPLET, :LLIT, :N_LOCALITZACIO, ' +
        ':DATA_CREACIO, :ID'
      '      DO BEGIN'
      '            DATA = NULL;'
      ''
      '            SELECT Max(DATA) FROM UPPLIN'
      '            WHERE  ID = :ID'
      '            AND    ANULAT = "N"'
      '            INTO  :DATA;'
      ''
      
        '            /* mirem que no hagin passat m'#233's de 15 dies des de l' +
        #39#250'ltim seguiment */'
      '            IF (AVUI - DATA > 15) THEN SUSPEND;'
      '    END;'
      'END')
    Dic1 = UppCap
    Dic1Name = 'UPPCAP'
    Abierta = False
    Borrame = False
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
    Top = 243
  end
  object P_IMCbaix: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'IMCbaix'
    ForceNombreDB = False
    Body.Strings = (
      '(C_COORD VARCHAR(5))'
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  NOMCOMPLET VARCHAR(80),'
      '  DATA_PREALTA DATE,'
      '  DATA_ULTIM DATE,'
      '  IMC VARCHAR(15),'
      '  ID INTEGER,'
      '  C_COORDINADOR VARCHAR(5),'
      '  DATA_INGRES DATE,'
      '  C_PRESTACIO VARCHAR(4)'
      ')'
      'AS'
      '  DECLARE VARIABLE VIST INTEGER;'
      'BEGIN'
      '      '
      
        '      FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOM' +
        'PLET, T.DATA_PREALTA, T.C_PRESTACIO, T.C_COORDINADOR, T.DATA_ING' +
        'RES'
      '          FROM   TRACTAMENTS T'
      '          JOIN   INFERDADES D on T.C_TRACTAMENT = D.C_TRACTAMENT'
      '          JOIN   FILIACIO F on T.C_HISTORIA = F.NUM_HIST'
      '          WHERE  T.C_PRESTACIO = "1004"'
      '          AND   (T.DATA_ALTA is null or T.DATA_ALTA >= "TODAY")'
      '          AND    T.DATA_PREALTA <= "TODAY" + 15'
      '          AND    T.C_COORDINADOR = :C_COORD'
      '          AND    D.C_ITEM = 20'
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :DATA_P' +
        'REALTA, :C_PRESTACIO, :C_COORDINADOR, :DATA_INGRES'
      '      DO BEGIN'
      ''
      '          SELECT ID, DATA_VALOR, VALOR'
      '          FROM   INFERDADES'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_ITEM = 20'
      '          AND    ANULAT = "N"'
      '          ORDER  BY DATA_VALOR DESC'
      '          ROWS   1'
      '          INTO  :ID, :DATA_ULTIM, :IMC;'
      ''
      
        '          IF ((IMC = 20) OR (F_ReplaceText('#39','#39','#39'.'#39',IMC) < 20)) T' +
        'HEN'
      '          BEGIN'
      
        '                /* Mirem si ja han registrat el comentari d'#39'IMC ' +
        'BAIX a l'#39'alta */'
      
        '                SELECT COUNT(*) FROM IMCRESPONDRE WHERE C_TRACTA' +
        'MENT = :C_TRACTAMENT AND ESTAT = 2 INTO :VIST;'
      ''
      
        '                /* Comprovem que no ho haguessin matat amb el si' +
        'stema antic */'
      
        '                IF (VIST = 0) THEN SELECT COUNT(*) FROM IMCVISTO' +
        'S WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :VIST;'
      ''
      '                IF (VIST = 0) THEN SUSPEND;'
      '          END;'
      ''
      '      END;'
      'END')
    Dic1 = InferDades
    Dic1Name = 'inferdades'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 407
    Top = 120
  end
  object IMCvistos: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Mege vist'
        NombreDB = 'Metge_Vist'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data vist'
        NombreDB = 'Data_Vist'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"hh'
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
          'Tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'IMCvistos'
    NombreTabla = 'IMCvistos'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tractament'
      'Mege vist'
      'Data vist')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 491
    Top = 16
  end
  object AillaEnCurs: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AillaEnCurs'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA       INTEGER,'
      '         TRACTAMENT     INTEGER,'
      '         SEXE           CHAR(1),'
      '         DATAINICI_REAL DATE,'
      '         TIPUS          VARCHAR(40),'
      '         LLIT           VARCHAR(3),'
      '         PLANTA         VARCHAR(15),'
      '         DATA           DATE,'
      '         DESCRIPCIO     VARCHAR(60),'
      '         GERMENS        VARCHAR(250),'
      '         TEXTE          VARCHAR(6000)'
      '         )'
      'AS'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE REGINFER   INTEGER;'
      '  DECLARE VARIABLE I          SMALLINT;'
      '  DECLARE VARIABLE N_GERMEN   VARCHAR(30);'
      '  DECLARE VARIABLE LOCALITZACIO VARCHAR(40);'
      'BEGIN'
      ''
      
        '/* HA DE MOSTRAR ELS A'#239'LLAMENTS EN CURS (QUE TINGUIN NULL EL C_M' +
        'OTIU FINALITZACIO):'
      
        'PER A CADA REGISTRE MOSTRAR EL LITERIAL "TEXTE" I EL CAMP DATA  ' +
        'DE LA TAULA ANALIT (PER'#210' NOM'#201'S ELS 5 ULTIMS.  */'
      ''
      '    DESCRIPCIO='#39'Comentari MR'#39';'
      '    '
      
        '    FOR SELECT A.C_HISTORIA, F.SEXO, A.C_TRACTAMENT, A.DATAINICI' +
        '_REAL, C.N_CODI, T.C_LLIT, T.C_PLANTA, A.ID'
      '    FROM REGISTRESINFER A'
      '    JOIN TRACTAMENTS T ON A.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI ' +
        '= "ESTATFACTU" and X.R_CODI <> 9'
      '    LEFT JOIN FILIACIO F ON A.C_HISTORIA = F.NUM_HIST'
      
        '    LEFT JOIN CODICAMPS C ON A.C_TIPUS=C.C_CODI AND C.TIPUSCODI=' +
        #39'AILLA_TIPUS'#39
      '    WHERE (A.C_MOTIU IS NULL) AND A.T_REG=2'
      '    ORDER BY T.C_LLIT'
      
        '    INTO :HISTORIA, :SEXE, :TRACTAMENT, :DATAINICI_REAL, :TIPUS,' +
        ' :LLIT, :PLANTA, :REGINFER'
      '    DO BEGIN'
      '        CONTA=0; TEXTE=NULL;'
      
        '        /* FOR SELECT A.TEXTE, C.DATA, D.DESCRIPCIO FROM ANALIT ' +
        'A'
      '        JOIN ANACABE  C ON A.NILAB = C.NILAB AND A.DATA=C.DATA'
      
        '        JOIN CODRSANA D ON A.CODI = D.CODI AND D.GRUP='#39'MI'#39' AND U' +
        'PPER(D.DESCRIPCIO) = '#39'CULTIVO EN MEDIOS HABITUALES PARA BACTERIA' +
        'S'#39
      '        WHERE C.C_TRACTAMENT = :TRACTAMENT'
      '        ORDER BY C.DATA DESC'
      '        ROWS 5'
      '        INTO :TEXTE, :DATA, :DESCRIPCIO'
      '        DO BEGIN'
      '            CONTA=CONTA+1;'
      '            IF (CONTA>1) THEN'
      '            BEGIN'
      
        '                HISTORIA=NULL;SEXE=NULL;DATAINICI_REAL=NULL;TIPU' +
        'S=NULL;LLIT=NULL;'
      '            END;'
      '            '
      '            SUSPEND;'
      '        END;'
      
        '        IF (CONTA=0) THEN SUSPEND; - Si no t'#233' registres a anal'#237't' +
        'iques, pintar-lo */'
      '        '
      
        '        SELECT DATA, N_ESTAT ||'#39': '#39' || INFO FROM P_SEMAFORS_ESTA' +
        'T(:HISTORIA, '#39'MR'#39') INTO :DATA, :TEXTE;'
      '        /*'
      '        SELECT DATA, INFO FROM SEMAFORS'
      '        WHERE C_HISTORIA = :HISTORIA AND ANULAT='#39'N'#39
      '        AND TIPUS = '#39'MR'#39
      '        ORDER BY DATA DESC'
      '        ROWS 1'
      '        INTO :DATA, :TEXTE;'
      '        */'
      '        '
      '        GERMENS = '#39#39';'
      '        I = 1;'
      ''
      '        FOR SELECT G.N_GERMEN, CC.N_CODI'
      '        FROM AILLA_GERMENS AG'
      '        JOIN GERMENS G         ON AG.GERMEN = G.C_GERMEN'
      
        '        LEFT JOIN CODICAMPS CC ON AG.LOCALITZACIO = CC.C_CODI AN' +
        'D CC.TIPUSCODI='#39'GERMEN.LOCALITZACIO'#39
      '        WHERE AG.ID_REGINFER = :REGINFER'
      '        AND AG.DATA_FI_R IS NULL'
      '        AND AG.ANULAT = "N"'
      '        INTO :N_GERMEN, :LOCALITZACIO'
      '        DO BEGIN'
      '            IF (LOCALITZACIO IS NULL) THEN LOCALITZACIO='#39#39';'
      '        '
      
        '            IF (I=1) THEN GERMENS = N_GERMEN || '#39' '#39' || LOCALITZA' +
        'CIO;'
      
        '                     ELSE GERMENS = GERMENS || '#39'; '#39' || N_GERMEN ' +
        '|| '#39' '#39' || LOCALITZACIO;'
      '            I=I+1;'
      '        END;'
      '        '
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = RegistresInfer
    Dic1Name = 'AILLAMENTS'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 390
    Top = 183
  end
  object RegistresInfer: TDic
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
        Aplica = kcMODELS
        Nombre = 'Tipus de registre'
        NombreDB = 'T_REG'
        Longitud = 40
        Consulta = 'TREG'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria'
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
        Aplica = kcFecha
        Nombre = 'Data inici real'
        NombreDB = 'DATAINICI_REAL'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici autom'#224'tica'
        NombreDB = 'DATAINICI_AUTO'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari inicial'
        NombreDB = 'C_USUARI_INICI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus (Modalitat)'
        NombreDB = 'C_TIPUS'
        Longitud = 2
        Consulta = 'TIPUS'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data final real'
        NombreDB = 'DATAFINAL_REAL'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data final autom'#224'tica'
        NombreDB = 'DATAFINAL_AUTO'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari final'
        NombreDB = 'C_USUARI_FINAL'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu fi'
        NombreDB = 'C_MOTIU'
        Longitud = 2
        Consulta = 'MOTIU'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Altres informacions'
        NombreDB = 'VARIS'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Per VM:S:s'#237',N:no,X:no procedeix'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data altres informacions autom'#224'tica'
        NombreDB = 'DATA_VARIS_AUTO'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari altres informacions'
        NombreDB = 'C_USUARI_VARIS'
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
      end
      item
        Nombre = 'hist'
        NombreDB = 'hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usr1'
        NombreDB = 'usr1'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari inicial')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usr2'
        NombreDB = 'usr2'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari final')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usr3'
        NombreDB = 'usr3'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari altres informacions')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
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
        Nombre = 'TREG'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus de registre')
        CopiarOrigen.Strings = (
          'Tipus de registre')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'INFER.TIPUSREG'#39
      end
      item
        Nombre = 'TIPUS'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus (Modalitat)')
        CopiarOrigen.Strings = (
          'Tipus (Modalitat)')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI LIKE '#39'INFER.%_TIPUS'#39
      end
      item
        Nombre = 'MOTIU'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Motiu fi')
        CopiarOrigen.Strings = (
          'Motiu fi')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI LIKE '#39'INFER.%_MOTIU'#39
      end>
    Nombre = 'REGISTRESINFER'
    NombreTabla = 'REGISTRESINFER'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Tipus de registre'
      'Hist'#242'ria'
      'Tractament'
      'Data inici real'
      'Data inici autom'#224'tica'
      'Usuari inicial'
      'Tipus (Modalitat)'
      'Data final real'
      'Data final autom'#224'tica'
      'Usuari final'
      'Motiu fi'
      'Altres informacions'
      'Data altres informacions autom'#224'tica'
      'Usuari altres informacions')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 460
    Top = 183
  end
  object InfAltaUPP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'InfAlta'
    ForceNombreDB = False
    Body.Strings = (
      '(TRACTAMENT INTEGER)'
      'RETURNS (LOCALITZACIO  VARCHAR(40),'
      '         MIDA          VARCHAR(20),'
      '         GRAU          VARCHAR(50),'
      '         OBSERVACIONS  VARCHAR(3000)'
      '         )'
      'AS'
      '  DECLARE VARIABLE ID    INTEGER;'
      'BEGIN'
      '      FOR SELECT DISTINCT U.ID, L.N_CODI'
      '          FROM   UPPCAP U'
      
        '          JOIN   CODICAMPS L  ON U.LOCALITZACIO = L.C_CODI AND L' +
        '.TIPUSCODI = '#39'UPP.LOCALITZACIO'#39
      '          WHERE  U.C_TRACTAMENT = :TRACTAMENT'
      '          AND    U.ESTAT = 1'
      '          ORDER  BY U.DATA_CREACIO'
      '          INTO  :ID, :LOCALITZACIO'
      '      DO BEGIN'
      '      '
      '            MIDA = NULL; GRAU = NULL; OBSERVACIONS = NULL;'
      ''
      
        '            SELECT U.MIDA1||'#39'x'#39'||U.MIDA2||'#39'x'#39'||U.MIDA3, '#39'Grau '#39'|' +
        '|G.N_CODI, U.OBSERVACIONS'
      '            FROM   UPPLIN U'
      
        '            JOIN   CODICAMPS G ON U.GRAU = G.C_CODI AND G.TIPUSC' +
        'ODI = '#39'UPP.GRAU'#39
      '            WHERE  U.ID = :ID'
      '            ORDER BY U.DATA DESC'
      '            ROWS 1'
      '            INTO :MIDA, :GRAU, :OBSERVACIONS;'
      '      '
      '            SUSPEND;'
      '      END;'
      'END')
    Dic1 = UppCap
    Dic2 = UppLin
    Dic1Name = 'UPPCAP'
    Dic2Name = 'UPPLIN'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 270
    Top = 243
  end
  object Inferdades_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      ' DECLARE VARIABLE PRIMER   INTEGER;'
      ' DECLARE VARIABLE ID       INTEGER;'
      ' DECLARE VARIABLE RESPOSTA VARCHAR(3000);'
      ' DECLARE VARIABLE ESTAT    SMALLINT;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '    '
      '      /* Si entren un IMC <= 20 */'
      '      IF (NEW.C_ITEM = 20) THEN'
      '      BEGIN'
      
        '            IF ((NEW.VALOR = 20) OR (F_ReplaceText('#39','#39','#39'.'#39',NEW.V' +
        'ALOR) < 20)) THEN'
      '            BEGIN'
      
        '                  /* Mirem si '#233's el primer valor d'#39'IMC de l'#39'ingr' +
        #233's actual */'
      '                  SELECT COUNT(*)'
      '                  FROM   INFERDADES'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ITEM = 20'
      '                  AND    DATA_VALOR < NEW.DATA_VALOR'
      
        '                  INTO  :PRIMER;                       /* No cal' +
        ' mirar ANULAT = "N" perqu'#232' l'#39#237'tem IMC s'#39'elimina en anul'#183'lar el p' +
        'es associat */'
      '            '
      
        '                  /* I en cas afirmatiu insertarem un registre a' +
        ' IMCRESPONDRE */'
      '                  IF (PRIMER = 0) THEN'
      '                  BEGIN'
      
        '                        /* Si ja hi havia un registre (passar'#224' s' +
        'i aquest s'#39'entra amb data anterior als existents) l'#39'eliminem */'
      
        '                        /* I si aquest estava contestat, passem ' +
        'la resposta i l'#39'estat al registre actual */'
      ''
      '                        RESPOSTA = NULL;'
      '                        ESTAT = 0;'
      
        '                        SELECT ID, RESPOSTA, ESTAT FROM IMCRESPO' +
        'NDRE WHERE C_TRACTAMENT = NEW.C_TRACTAMENT INTO :ID, :RESPOSTA, ' +
        ':ESTAT;'
      ''
      '                        DELETE FROM IMCRESPONDRE WHERE ID = :ID;'
      ''
      
        '                        INSERT INTO IMCRESPONDRE (ID, C_TRACTAME' +
        'NT, IMC_INGRES, RESPOSTA, ESTAT)'
      
        '                        VALUES (NEW.ID, NEW.C_TRACTAMENT, F_Repl' +
        'aceText('#39','#39','#39'.'#39',NEW.VALOR), :RESPOSTA, :ESTAT);'
      '                  END;'
      '            END;'
      '      END;'
      '      '
      
        '      /* Si registren FIO2 > 21 o AdmO2 > 0, inserim un registre' +
        ' Oxigen S'#237' */'
      '      ELSE IF (((NEW.C_ITEM = 44) AND (NEW.VALOR > 21))'
      '           OR  ((NEW.C_ITEM = 45) AND (NEW.VALOR > 0)))'
      '      THEN BEGIN'
      
        '          INSERT INTO INFERDADES (C_TRACTAMENT, C_ITEM, VALOR, D' +
        'ATA_VALOR, USUARI, DATA)'
      
        '          VALUES (NEW.C_TRACTAMENT, 65, "S", NEW.DATA_VALOR, NEW' +
        '.USUARI, NEW.DATA);'
      '      END'
      '     '
      '   END;'
      'END')
    Dic1 = InferDades
    Dic1Name = 'inferdades'
    Abierta = False
    Borrame = False
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
    Left = 252
    Top = 68
  end
  object IMCRespondre: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'ID'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'ID'
        zType = tcIB_Integer
        zNotNull = True
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
        Aplica = kcNumDecimal
        Nombre = 'IMC ingr'#233's'
        NombreDB = 'IMC_Ingres'
        Longitud = 10
        MaskDisplay = '#,##0.##;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resposta'
        NombreDB = 'Resposta'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'estat'
        NombreDB = 'estat'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
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
        Nombre = 'ID'
        NombreDB = 'ID'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = InferDades
        ForaneoCampos.Strings = (
          'ID')
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
          'C_Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
          'estat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tract'
        Master = wDataBasics.Tract_Resum
        BuscaOrigen.Strings = (
          'C_Tractament')
        CopiarOrigen.Strings = (
          'C_Tractament')
        CopiarMaster.Strings = (
          'C Tractament')
        BuscaMaster.Strings = (
          'C Tractament')
      end
      item
        Nombre = 'ID'
        Master = InferDades
        BuscaOrigen.Strings = (
          'ID')
        CopiarOrigen.Strings = (
          'ID')
        CopiarMaster.Strings = (
          'ID')
        BuscaMaster.Strings = (
          'ID')
      end>
    Nombre = 'IMC Respondre'
    NombreTabla = 'IMCRespondre'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'C_Tractament'
      'IMC ingr'#233's'
      'Resposta'
      'estat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 411
    Top = 16
  end
  object Inferdades_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD'
    ForceNombreDB = False
    Body.Strings = (
      ' DECLARE VARIABLE PRIMER     INTEGER;'
      ' DECLARE VARIABLE RESPOSTA   VARCHAR(3000);'
      ' DECLARE VARIABLE ESTAT      SMALLINT;'
      ' DECLARE VARIABLE VALOR      DOUBLE PRECISION;'
      ' DECLARE VARIABLE ID         INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '    '
      
        '      /* Si s'#39'elimina un IMC (passa quan anul'#183'len el pes associa' +
        't) */'
      '      IF (OLD.C_ITEM = 20) THEN'
      '      BEGIN'
      '            /* Mirem si era el primer valor d'#39'IMC de l'#39'ingr'#233's */'
      '            SELECT COUNT(*)'
      '            FROM   INFERDADES'
      '            WHERE  C_TRACTAMENT = OLD.C_TRACTAMENT'
      '            AND    C_ITEM = 20'
      '            AND    DATA_VALOR < OLD.DATA_VALOR'
      
        '            INTO  :PRIMER;                       /* No cal mirar' +
        ' ANULAT = "N" perqu'#232' l'#39#237'tem IMC s'#39'elimina en anul'#183'lar el pes ass' +
        'ociat */'
      '            '
      '            /* En cas afirmatiu: */'
      '            IF (PRIMER = 0) THEN'
      '            BEGIN'
      '                  RESPOSTA = NULL;'
      '                  ESTAT = 0;'
      '            '
      
        '                  /* Si el valor era <= 20, eliminem el registre' +
        ' de IMCRESPONDRE */'
      
        '                  IF ((OLD.VALOR = 20) OR (F_ReplaceText('#39','#39','#39'.'#39 +
        ',OLD.VALOR) < 20)) THEN'
      '                  BEGIN'
      
        '                        /* Ens guardem la resposta i l'#39'estat per' +
        ' si estava contestat */'
      
        '                        SELECT RESPOSTA, ESTAT FROM IMCRESPONDRE' +
        ' WHERE ID = OLD.ID INTO :RESPOSTA, :ESTAT;'
      ''
      
        '                        DELETE FROM IMCRESPONDRE WHERE ID = OLD.' +
        'ID;'
      '                  END;'
      ''
      '                  /* Mirem si el nou primer IMC '#233's <= 20 */'
      '                  SELECT F_ReplaceText('#39','#39','#39'.'#39', VALOR), ID'
      '                  FROM   INFERDADES'
      '                  WHERE  C_TRACTAMENT = OLD.C_TRACTAMENT'
      '                  AND    C_ITEM = 20'
      '                  AND    ANULAT = "N"'
      '                  ORDER  BY DATA_VALOR'
      '                  ROWS   1'
      '                  INTO  :VALOR, :ID;'
      '                  '
      
        '                  /* En cas afirmatiu, insertem el registre a IM' +
        'CRESPONDRE */'
      
        '                  IF (VALOR <= 20) THEN   INSERT INTO IMCRESPOND' +
        'RE (ID, C_TRACTAMENT, IMC_INGRES, RESPOSTA, ESTAT)'
      
        '                                          VALUES (:ID, OLD.C_TRA' +
        'CTAMENT, :VALOR, :RESPOSTA, :ESTAT);'
      '            END;'
      '      END;'
      '     '
      '   END;'
      'END')
    Dic1 = InferDades
    Dic1Name = 'inferdades'
    Abierta = False
    Borrame = False
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
    Left = 406
    Top = 68
  end
  object IMC_Percentils: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Valor Z'
        NombreDB = 'ValorZ'
        Longitud = 8
        zType = tcIB_Numeric
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Percentil'
        NombreDB = 'Percentil'
        Longitud = 3
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
          'Valor Z')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'IMC Percentils'
    NombreTabla = 'IMC_Percentils'
    Organiza = tbBase
    CamposVer.Strings = (
      'Valor Z'
      'Percentil')
    IndiceVer = 'pK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 177
    Top = 16
  end
  object IMC_Nens: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Edat (mesos)'
        NombreDB = 'Mesos'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'IMC P50'
        NombreDB = 'IMC_P50'
        Longitud = 8
        zType = tcIB_Numeric
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Desviaci'#243' est'#224'ndard'
        NombreDB = 'DesvSt'
        Longitud = 8
        zType = tcIB_Numeric
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
          'Edat (mesos)')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'IMC Nens'
    NombreTabla = 'IMC_Nens'
    Organiza = tbBase
    CamposVer.Strings = (
      'Edat (mesos)'
      'IMC P50'
      'Desviaci'#243' est'#224'ndard')
    IndiceVer = 'pK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 252
    Top = 16
  end
  object IMC_Nenes: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Edat (mesos)'
        NombreDB = 'Mesos'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'IMC P50'
        NombreDB = 'IMC_P50'
        Longitud = 8
        zType = tcIB_Numeric
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Desviaci'#243' est'#224'ndard'
        NombreDB = 'DesvSt'
        Longitud = 8
        zType = tcIB_Numeric
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
          'Edat (mesos)')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'IMC Nenes'
    NombreTabla = 'IMC_Nenes'
    Organiza = tbBase
    CamposVer.Strings = (
      'Edat (mesos)'
      'IMC P50'
      'Desviaci'#243' est'#224'ndard')
    IndiceVer = 'pK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 330
    Top = 16
  end
  object DrenaCap: TDic
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
        Comentario = 'PK'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Hist.'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus de drenatge'
        NombreDB = 'Tipus'
        Longitud = 2
        Consulta = 'tipus'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ubicaci'#243
        NombreDB = 'Ubicacio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'literal lliure'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'Data_Inici'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari inici'
        NombreDB = 'Usuari_Inici'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 2
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data finalitzaci'#243
        NombreDB = 'Data_Fi'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari finalitzaci'#243
        NombreDB = 'Usuari_Fi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre inici'
        NombreDB = 'Data_RInici'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre finalitzaci'#243
        NombreDB = 'Data_RFi'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
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
          'ID')
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
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
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
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
          'N'#250'm. Hist.'
          'Data inici')
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
          'N'#250'm. Hist.'
          'Estat'
          'Data inici')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus de drenatge')
        CopiarOrigen.Strings = (
          'Tipus de drenatge')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DRENATGE.TIPUS'#39
      end
      item
        Nombre = 'estat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat')
        CopiarOrigen.Strings = (
          'Estat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DRENATGE.ESTAT'#39
      end>
    Nombre = 'Drenatges Cap'#231'alera'
    NombreTabla = 'DrenaCap'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'N'#250'm. Hist.'
      'Tractament'
      'Tipus de drenatge'
      'Ubicaci'#243
      'Data inici'
      'Usuari inici'
      'Data finalitzaci'#243
      'Usuari finalitzaci'#243
      'Estat'
      'Data registre inici'
      'Data registre finalitzaci'#243)
    IndiceVer = 'estat'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 304
  end
  object DrenaLin: TDic
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
        Comentario = 'FK DrenaCap'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'L'#237'nia'
        NombreDB = 'LINIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'ID'
        Comentario = 'PK amb ID'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Valor'
        NombreDB = 'Valor'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'mil'#183'lilitres'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Canvi de recipient'
        NombreDB = 'Canvi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data_Valor'
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
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'Data_Registre'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anul'#183'lat'
        NombreDB = 'Anulat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data anul'#183'lat'
        NombreDB = 'Data_Anulat'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
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
          'ID'
          'L'#237'nia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ID'
        NombreDB = 'ID'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = DrenaCap
        ForaneoCampos.Strings = (
          'ID')
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
          'ID'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Drenatges L'#237'nies'
    NombreTabla = 'DrenaLin'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'L'#237'nia'
      'Valor'
      'Canvi de recipient'
      'Data'
      'Usuari'
      'Data registre'
      'Anul'#183'lat'
      'Data anul'#183'lat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 88
    Top = 304
  end
  object CatVPQ: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador registre infermeria'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Estat cognitiu alterat'
        NombreDB = 'ECOGNITIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Espasticitat'
        NombreDB = 'ESPASTICITAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Solucions perfoses irritants (ATB)'
        NombreDB = 'ATB'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Volum alt de perfusi'#243'/polimedicaci'#243' EV'
        NombreDB = 'VOLUM'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Perfusions amb bomba'
        NombreDB = 'PERFUSIONS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ubicaci'#243' de la via'
        NombreDB = 'UBICACIO'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Via'
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
          'Identificador registre infermeria')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Identificador registre infermeria')
        Tipo = tiForaneo
        ForaneoDic = RegistresInfer
        ForaneoCampos.Strings = (
          'Identificador de registre')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Via'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Ubicaci'#243' de la via')
        CopiarOrigen.Strings = (
          'Ubicaci'#243' de la via')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'INFER.CATVP_VIA'#39
      end>
    Nombre = 'Cateterismes VPQ'
    NombreTabla = 'CatVPQ'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador registre infermeria'
      'Estat cognitiu alterat'
      'Espasticitat'
      'Solucions perfoses irritants (ATB)'
      'Volum alt de perfusi'#243'/polimedicaci'#243' EV'
      'Perfusions amb bomba'
      'Ubicaci'#243' de la via')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 524
    Top = 183
  end
  object P_Diuresi: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Diuresi'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'RETURNS (TIPUS      SMALLINT,    /* 0: TOTALS, 1: DETALL */'
      '         DIA_SUMA   DATE,'
      '         TOTAL_DIA  DOUBLE PRECISION,'
      '         VALOR      DOUBLE PRECISION,'
      '         DATA_VALOR DATE'
      '         )'
      'AS'
      'BEGIN'
      
        '  FOR SELECT DISTINCT F_SOLOFECHA(DATA_VALOR-0.010425) FROM INFE' +
        'RDADES'
      '  WHERE C_TRACTAMENT=:C_TRACTAMENT'
      '  AND C_ITEM=10 AND ANULAT='#39'N'#39
      '  ORDER BY DATA_VALOR'
      '  INTO :DIA_SUMA'
      '  DO BEGIN'
      '      TOTAL_DIA=0; TIPUS=1;'
      '      FOR SELECT VALOR, DATA_VALOR FROM INFERDADES'
      '      WHERE C_TRACTAMENT=:C_TRACTAMENT'
      '      AND C_ITEM=10 AND ANULAT='#39'N'#39
      '      AND F_SOLOFECHA(DATA_VALOR-0.0140425)=:DIA_SUMA'
      '      INTO :VALOR, :DATA_VALOR'
      '      DO BEGIN'
      '          TOTAL_DIA=TOTAL_DIA+VALOR;'
      '          SUSPEND;'
      '      END;'
      '      TIPUS=0; VALOR=NULL; DATA_VALOR=NULL;'
      '      SUSPEND;'
      '  END;'
      'END')
    Dic1 = InferDades
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
    Left = 177
    Top = 120
  end
  object P_Dolor: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Dolor'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA INTEGER,'
      '  NOMCOMPLET VARCHAR(80),'
      '  DATA_INGRES DATE,'
      '  DATA_VALOR DATE'
      ')'
      'AS'
      '      DECLARE VARIABLE VALOR VARCHAR(15);'
      'BEGIN'
      ''
      
        '      /* CONSULTES OBERTES  - Pacients ingressats amb '#250'ltim regi' +
        'stre de DOLOR = '#39'S'#39' */'
      '      '
      '      /* Per cada ingr'#233's actiu... */'
      ''
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPLET, T.D' +
        'ATA_INGRES'
      '            FROM TRACTAMENTS T'
      
        '            LEFT OUTER JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_H' +
        'IST'
      '           WHERE T.C_PRESTACIO = "1004"'
      '            AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      
        '           INTO :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :DATA_I' +
        'NGRES'
      '      DO BEGIN'
      ''
      
        '            /*... busco l'#39#250'ltim valor de DOLOR registrat a la Gr' +
        #224'fica d'#39'Infermeria... */'
      ''
      '            SELECT VALOR'
      '              FROM INFERDADES'
      '             WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '               AND C_ITEM = 35'
      '               AND ANULAT = "N"'
      '             ORDER BY DATA_VALOR DESC'
      '             ROWS 1'
      '             INTO :VALOR;'
      ''
      '             /*... i si '#233's "S", el llisto */'
      ''
      '             IF (VALOR = "S") THEN SUSPEND;'
      '      END;'
      '      '
      'END'
      '')
    Dic1 = InferDades
    Dic1Name = 'Inferdades'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 252
    Top = 120
  end
  object InferInformes: TDic
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
        Nombre = 'N'#250'm. Hist.'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data informe'
        NombreDB = 'Data_Informe'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'usuari'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data validaci'#243
        NombreDB = 'Data_Validacio'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_Validador'
        NombreDB = 'C_Validador'
        Longitud = 5
        Consulta = 'validador'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'HCCC'
        NombreDB = 'HCCC'
        Longitud = 1
        Consulta = 'hccc'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 1
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Arxiu'
        NombreDB = 'Arxiu'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Correccions'
        NombreDB = 'Correccions'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID_Informe'
        NombreDB = 'ID_Informe'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'Relaci'#243' amb Informes per actualitzar estat i nom de l'#39'arxiu (CSV' +
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
          'ID')
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
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
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
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
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
          'C_Usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'validador'
        NombreDB = 'validador'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Validador')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
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
          'Data informe')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tipus'
        NombreDB = 'tipus'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'hccc'
        NombreDB = 'hccc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'HCCC')
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
        Nombre = 'ordre'
        NombreDB = 'ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist.'
          'Data informe')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'arxiu'
        NombreDB = 'arxiu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Arxiu')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'idinforme'
        NombreDB = 'idinforme'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID_Informe')
        Tipo = tiForaneo
        ForaneoDic = wDataInformes.Informes
        ForaneoCampos.Strings = (
          'ID Informe')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'hist'
        Master = wDataBasics.Filiacio
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
        Nombre = 'tract'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'Tractament')
        CopiarOrigen.Strings = (
          'Tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end
      item
        Nombre = 'usuari'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'C_Usuari')
        CopiarOrigen.Strings = (
          'C_Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'validador'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'C_Validador')
        CopiarOrigen.Strings = (
          'C_Validador')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'estat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat')
        CopiarOrigen.Strings = (
          'Estat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "INFINFERMERIA.ESTAT"'
      end
      item
        Nombre = 'hccc'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'HCCC')
        CopiarOrigen.Strings = (
          'HCCC')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = "INFINFERMERIA.HCCC"'
      end>
    Nombre = 'Informes Infermeria'
    NombreTabla = 'InferInformes'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'N'#250'm. Hist.'
      'Tractament'
      'Tipus'
      'Data informe'
      'C_Usuari'
      'Data validaci'#243
      'C_Validador'
      'HCCC'
      'Estat'
      'Arxiu'
      'Correccions')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 365
  end
  object T_EliminaDades: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'EliminaDades'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '      /* En finalitzar un informe d'#39'Infermeria, eliminem les dad' +
        'es d'#39'ITEMSDADES'
      '         ja que nom'#233's es fan servir per confegir l'#39'Informe */'
      '         '
      
        '      IF ((OLD.ESTAT <> 5) AND (NEW.ESTAT = 5)) THEN  DELETE FRO' +
        'M ITEMSDADES'
      
        '                                                      WHERE  C_T' +
        'RACTAMENT = NEW.C_TRACTAMENT'
      
        '                                                      AND    DAT' +
        'A = NEW.DATA_INFORME;'
      '   END;'
      'END')
    Dic1 = InferInformes
    Dic1Name = 'InferInformes'
    Abierta = False
    Borrame = False
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
    Left = 112
    Top = 365
  end
  object P_BolcaEVA: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'BolcaEVA'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '      DECLARE VARIABLE CLAU           INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA      INTEGER;'
      '      DECLARE VARIABLE C_TRACTAMENT   INTEGER;'
      '      DECLARE VARIABLE C_HISTORIA     INTEGER;'
      '      DECLARE VARIABLE C_HISTORIA_OLD INTEGER;'
      '      DECLARE VARIABLE LOCALITZACIO   VARCHAR(15);'
      '      DECLARE VARIABLE EVA            SMALLINT;'
      '      DECLARE VARIABLE C_USUARI       VARCHAR(5);'
      '      DECLARE VARIABLE DATA           DATE;'
      '      DECLARE VARIABLE DATA_ADM       DATE;'
      'BEGIN'
      ''
      '      C_HISTORIA = 0;'
      '      C_HISTORIA_OLD = 0;'
      '      C_ENTRADA = 0;'
      '      '
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, C.C_CODI, D.VALOR' +
        ', D.USUARI, D.DATA, D.DATA_VALOR'
      '          FROM INFERDADES D'
      
        '          JOIN TRACTAMENTS T ON D.C_TRACTAMENT = T.C_TRACTAMENT ' +
        'AND T.DATA_ALTA IS NULL                /* Tractaments actius */'
      
        '          JOIN INFERITEMS I ON D.C_ITEM = I.C_ITEM AND I.UNITAT_' +
        'MESURA = '#39'E.V.A.'#39'                      /* Dades de l'#39'escala de d' +
        'olor segons valoraci'#243' EVA */'
      
        '          LEFT OUTER JOIN CODICAMPSALFA C ON D.C_ITEM = C.R_CODI' +
        ' AND C.TIPUSCODI = '#39'EVA.LOCALITZACIO'#39'  /* Busquem el codi de loc' +
        'alitzaci'#243' corresponent */'
      
        '          WHERE D.ANULAT = '#39'N'#39'                                  ' +
        '                                       /* No bolquem els valors ' +
        'anul'#183'lats */'
      '          ORDER BY T.C_HISTORIA, D.DATA_VALOR'
      
        '          INTO :C_TRACTAMENT, C_HISTORIA, :LOCALITZACIO, :EVA, :' +
        'C_USUARI, :DATA, :DATA_ADM'
      '      DO BEGIN'
      
        '            IF (C_HISTORIA <> C_HISTORIA_OLD) THEN C_ENTRADA = 0' +
        ';'
      '            C_HISTORIA_OLD = C_HISTORIA;'
      '            '
      '            CLAU = GEN_ID(G_ESCALESCAP, 1);'
      '            C_ENTRADA = :C_ENTRADA + 1;'
      '            '
      '            /* Cap'#231'alera */'
      
        '            INSERT INTO ESCALESCAP (CLAU, C_ESCALA, C_TRACTAMENT' +
        ', C_HISTORIA, DATA, C_ENTRADA, C_USUARI, TIPUS, DATA_ADM)'
      
        '            VALUES (:CLAU, 122, :C_TRACTAMENT, :C_HISTORIA, :DAT' +
        'A, :C_ENTRADA, :C_USUARI, "C", :DATA_ADM);'
      '            '
      '            /* L'#237'nies */'
      
        '            INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) VALUES' +
        ' (:CLAU, 1210, :LOCALITZACIO);'
      
        '            INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) VALUES' +
        ' (:CLAU, 1211, :EVA);'
      
        '            INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) VALUES' +
        ' (:CLAU, 1212, '#39'-'#39');'
      '      END;'
      ''
      'END')
    Dic1 = InferDades
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
    Left = 556
    Top = 120
  end
  object P_BolcaEmina: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'BolcaEmina'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_INICI DATE, EXECUTA CHAR(1))'
      'RETURNS('
      '      C_TRACTAMENT   INTEGER,'
      '      C_HISTORIA     INTEGER,'
      '      EMINA          SMALLINT,'
      '      C_USUARI       VARCHAR(5),'
      '      DATA           DATE,'
      '      DATA_ADM       DATE'
      ')'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA_OLD INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA      INTEGER;'
      '      DECLARE VARIABLE CLAU           INTEGER;'
      'BEGIN'
      ''
      '      C_HISTORIA = 0;'
      '      C_HISTORIA_OLD = 0;'
      '      C_ENTRADA = 0;'
      '      '
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, D.VALOR, D.USUARI' +
        ', D.DATA, D.DATA_VALOR'
      '          FROM INFERDADES D'
      
        '          JOIN TRACTAMENTS T ON D.C_TRACTAMENT = T.C_TRACTAMENT ' +
        'AND T.DATA_ALTA IS NULL          /* Tractaments actius */'
      
        '          JOIN INFERITEMS I ON D.C_ITEM = I.C_ITEM AND I.C_ITEM ' +
        '= 50                             /* Dades de l'#39'escala Emina */'
      
        '          WHERE D.ANULAT = '#39'N'#39'                                  ' +
        '                                 /* No bolquem els valors anul'#183'l' +
        'ats */'
      '          AND   D.DATA >= :DATA_INICI'
      '          ORDER BY T.C_HISTORIA, D.DATA_VALOR'
      
        '          INTO :C_TRACTAMENT, C_HISTORIA, :EMINA, :C_USUARI, :DA' +
        'TA, :DATA_ADM'
      '      DO BEGIN'
      
        '            IF (C_HISTORIA <> C_HISTORIA_OLD) THEN C_ENTRADA = 0' +
        ';'
      '            C_HISTORIA_OLD = C_HISTORIA;'
      '            '
      '            C_ENTRADA = :C_ENTRADA + 1;'
      '            '
      '            SUSPEND;'
      '            '
      '            IF (EXECUTA = "S") THEN'
      '            BEGIN'
      '                CLAU = GEN_ID(G_ESCALESCAP, 1);'
      ''
      '                /* Cap'#231'alera */'
      
        '                INSERT INTO ESCALESCAP (CLAU, C_ESCALA, C_TRACTA' +
        'MENT, C_HISTORIA, DATA, C_ENTRADA, C_USUARI, TIPUS, DATA_ADM)'
      
        '                VALUES (:CLAU, 130, :C_TRACTAMENT, :C_HISTORIA, ' +
        ':DATA, :C_ENTRADA, :C_USUARI, "C", :DATA_ADM);'
      ''
      '                /* L'#237'nies */'
      
        '                INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) VA' +
        'LUES (:CLAU, 1246, :EMINA);'
      '            END;'
      '      END;'
      ''
      'END')
    Dic1 = InferDades
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
    Left = 630
    Top = 120
  end
  object P_BolcaCrichton: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'BolcaCrichton'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_INICI DATE, EXECUTA CHAR(1))'
      'RETURNS('
      '      C_TRACTAMENT   INTEGER,'
      '      C_HISTORIA     INTEGER,'
      '      CRICHTON       SMALLINT,'
      '      C_USUARI       VARCHAR(5),'
      '      DATA           DATE,'
      '      DATA_ADM       DATE'
      ')'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA_OLD INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA      INTEGER;'
      '      DECLARE VARIABLE CLAU           INTEGER;'
      'BEGIN'
      ''
      '      C_HISTORIA = 0;'
      '      C_HISTORIA_OLD = 0;'
      '      C_ENTRADA = 0;'
      '      '
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, D.VALOR, D.USUARI' +
        ', D.DATA, D.DATA_VALOR'
      '          FROM INFERDADES D'
      
        '          JOIN TRACTAMENTS T ON D.C_TRACTAMENT = T.C_TRACTAMENT ' +
        'AND T.DATA_ALTA IS NULL          /* Tractaments actius */'
      
        '          JOIN INFERITEMS I ON D.C_ITEM = I.C_ITEM AND I.C_ITEM ' +
        '= 51                             /* Dades de l'#39'escala Crichton *' +
        '/'
      
        '          WHERE D.ANULAT = '#39'N'#39'                                  ' +
        '                                 /* No bolquem els valors anul'#183'l' +
        'ats */'
      '          AND   D.DATA >= :DATA_INICI'
      '          ORDER BY T.C_HISTORIA, D.DATA_VALOR'
      
        '          INTO :C_TRACTAMENT, C_HISTORIA, :CRICHTON, :C_USUARI, ' +
        ':DATA, :DATA_ADM'
      '      DO BEGIN'
      
        '            IF (C_HISTORIA <> C_HISTORIA_OLD) THEN C_ENTRADA = 0' +
        ';'
      '            C_HISTORIA_OLD = C_HISTORIA;'
      ''
      '            C_ENTRADA = :C_ENTRADA + 1;'
      ''
      '            SUSPEND;'
      '            '
      '            IF (EXECUTA = "S") THEN'
      '            BEGIN'
      '                  CLAU = GEN_ID(G_ESCALESCAP, 1);'
      ''
      '                  /* Cap'#231'alera */'
      
        '                  INSERT INTO ESCALESCAP (CLAU, C_ESCALA, C_TRAC' +
        'TAMENT, C_HISTORIA, DATA, C_ENTRADA, C_USUARI, TIPUS, DATA_ADM)'
      
        '                  VALUES (:CLAU, 129, :C_TRACTAMENT, :C_HISTORIA' +
        ', :DATA, :C_ENTRADA, :C_USUARI, "C", :DATA_ADM);'
      '            '
      '                  /* L'#237'nies */'
      
        '                  INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) ' +
        'VALUES (:CLAU, 1245, :CRICHTON);'
      '            END;'
      '      END;'
      ''
      'END')
    Dic1 = InferDades
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
    Left = 716
    Top = 120
  end
  object Ailla_Germens: TDic
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
        AutoContador.Generator = 'G_AILLA_GERMENS'
        Comentario = 'PK'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID registre infer'
        NombreDB = 'ID_RegInfer'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Registre'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK RegistresInfer'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Microorganisme'
        NombreDB = 'Germen'
        Longitud = 2
        Consulta = 'Germen'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'FK Germens'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'Data_Inici'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'inici a'#239'llament o detecci'#243
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fi'
        NombreDB = 'Data_Fi'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'fi infecci'#243
      end
      item
        Aplica = kcFecha
        Nombre = 'Data_inici_r'
        NombreDB = 'Data_inici_R'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari inici'
        NombreDB = 'Usuari_inici'
        Longitud = 5
        Consulta = 'usr_i'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data_fi_r'
        NombreDB = 'Data_fi_R'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari fi'
        NombreDB = 'Usuari_fi'
        Longitud = 5
        Consulta = 'usr_f'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Anul'#183'lat'
        NombreDB = 'Anulat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Localitzaci'#243
        NombreDB = 'Localitzacio'
        Longitud = 2
        Consulta = 'localit'
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Registre'
        NombreDB = 'Registre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID registre infer')
        Tipo = tiForaneo
        ForaneoDic = RegistresInfer
        ForaneoCampos.Strings = (
          'Identificador de registre')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Germen'
        NombreDB = 'Germen'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Microorganisme')
        Tipo = tiForaneo
        ForaneoDic = wDataOMComun.Germens
        ForaneoCampos.Strings = (
          'Germen')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usr_i'
        NombreDB = 'usr_i'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari inici')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usr_f'
        NombreDB = 'usr_f'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari fi')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'dataini'
        NombreDB = 'dataini'
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
        Nombre = 'datafi'
        NombreDB = 'datafi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data fi')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'anulat'
        NombreDB = 'anulat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Anul'#183'lat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Germen'
        Master = wDataOMComun.Germens
        BuscaOrigen.Strings = (
          'Microorganisme')
        CopiarOrigen.Strings = (
          'Microorganisme')
        CopiarMaster.Strings = (
          'Germen')
        BuscaMaster.Strings = (
          'Germen')
      end
      item
        Nombre = 'Registre'
        Master = RegistresInfer
        BuscaOrigen.Strings = (
          'ID registre infer')
        CopiarOrigen.Strings = (
          'ID registre infer')
        CopiarMaster.Strings = (
          'Identificador de registre')
        BuscaMaster.Strings = (
          'Identificador de registre')
      end
      item
        Nombre = 'usr_i'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari inici')
        CopiarOrigen.Strings = (
          'Usuari inici')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'usr_f'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari fi')
        CopiarOrigen.Strings = (
          'Usuari fi')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'localit'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Localitzaci'#243)
        CopiarOrigen.Strings = (
          'Localitzaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'GERMEN.LOCALITZACIO'#39
      end>
    Nombre = 'Ailla_Germens'
    NombreTabla = 'Ailla_Germens'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID registre infer'
      'Microorganisme'
      'Localitzaci'#243
      'Data inici'
      'Data fi')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 588
    Top = 183
  end
  object PlanolsUH: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PlanolsUH'
    ForceNombreDB = False
    Body.Strings = (
      '(C_PLANTA VARCHAR(15))'
      'RETURNS (HISTORIA    INTEGER,'
      '         C_LLIT      VARCHAR(3),'
      '         NOMCOMPLET  VARCHAR(80),'
      '         TIPUS       CHAR(1),'
      '         N_PLANTA    VARCHAR(20),'
      '         C_TIPUS     SMALLINT,'
      '         N_CODI      VARCHAR(40),'
      '         R_CODI      VARCHAR(10),'
      '         PARAMS      VARCHAR(254),'
      '         GERMENS     VARCHAR(250),'
      '         MOTIU_BLOQUEIG  VARCHAR(20)'
      '         )'
      'AS'
      ' DECLARE VARIABLE REGINFER   INTEGER;'
      ' DECLARE VARIABLE I          SMALLINT;'
      ' DECLARE VARIABLE N_GERMEN   VARCHAR(30);'
      'BEGIN'
      ''
      
        '   FOR SELECT S.HISTORIA, S.C_LLIT, F.NOMCOMPLET, S.TIPUS, S.N_P' +
        'LANTA, R.C_TIPUS, C.N_CODI, C.R_CODI, C.PARAMS, R.ID, S.MOTIU_BL' +
        'OQUEIG'
      '   FROM P_ESPERA_LLITS(NULL, "N") S'
      '   LEFT OUTER JOIN FILIACIO F ON S.HISTORIA  = F.NUM_HIST'
      
        '   LEFT JOIN REGISTRESINFER R ON S.HISTORIA  = R.C_HISTORIA  AND' +
        ' R.T_REG = 2 AND R.C_MOTIU IS NULL'
      
        '   LEFT JOIN CODICAMPS      C ON C.TIPUSCODI = '#39'AILLA_TIPUS'#39' AND' +
        ' C.C_CODI = R.C_TIPUS'
      '   WHERE S.PLANTA = :C_PLANTA'
      '   ORDER BY S.C_LLIT'
      
        '   INTO :HISTORIA, :C_LLIT, :NOMCOMPLET, :TIPUS, :N_PLANTA, :C_T' +
        'IPUS, :N_CODI, :R_CODI, :PARAMS, :REGINFER, :MOTIU_BLOQUEIG'
      '   DO BEGIN'
      '       GERMENS = '#39#39';'
      '       I = 1;'
      '       '
      '       FOR SELECT G.N_GERMEN'
      '       FROM GERMENS G'
      '       JOIN AILLA_GERMENS AG ON G.C_GERMEN = AG.GERMEN'
      '       WHERE AG.ID_REGINFER = :REGINFER AND AG.DATA_FI_R IS NULL'
      '       INTO :N_GERMEN'
      '       DO BEGIN'
      '           IF (I=1) THEN GERMENS = N_GERMEN;'
      '                    ELSE GERMENS = GERMENS || '#39'; '#39' || N_GERMEN;'
      '           I=I+1;'
      '       END;'
      ''
      '       SUSPEND;'
      '   END;'
      'END')
    Dic1 = RegistresInfer
    Dic1Name = 'RegistresInfer'
    Abierta = False
    Borrame = False
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
    Top = 184
  end
  object Inferdades_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU'
    ForceNombreDB = False
    Body.Strings = (
      ' DECLARE VARIABLE PRIMER   INTEGER;'
      ' DECLARE VARIABLE ID       INTEGER;'
      ' DECLARE VARIABLE RESPOSTA VARCHAR(3000);'
      ' DECLARE VARIABLE ESTAT    SMALLINT;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '    '
      
        '      /* Si anul'#183'len un registren FIO2 > 21 o AdmO2 > 0, anul'#183'le' +
        'm el registre Oxigen S'#237' que s'#39'havia generat */'
      
        '      IF ( (((OLD.C_ITEM = 44) AND (OLD.VALOR > 21))   OR   ((OL' +
        'D.C_ITEM = 45) AND (OLD.VALOR > 0)))'
      '      AND   ((OLD.ANULAT = "N") AND (NEW.ANULAT = "S")) )'
      '      THEN BEGIN'
      '          UPDATE INFERDADES'
      '          SET ANULAT = "S", DATA_ANULAT = NEW.DATA_ANULAT'
      '          WHERE C_TRACTAMENT = NEW.C_TRACTAMENT'
      '          AND C_ITEM = 65'
      '          AND VALOR = "S"'
      '          AND DATA_VALOR = OLD.DATA_VALOR;'
      '      END'
      '     '
      '   END;'
      'END')
    Dic1 = InferDades
    Dic1Name = 'inferdades'
    Abierta = False
    Borrame = False
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
    Left = 328
    Top = 68
  end
  object ValorRecent: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ValorRecent'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_HISTORIA   INTEGER,'
      '         C_TRACTAMENT INTEGER,'
      '         DATA_INGRES  DATE,'
      '         C_LLIT       VARCHAR(3),'
      '         C_PLANTA     VARCHAR(10),'
      '         C_ITEM       INTEGER,'
      '         VALOR        VARCHAR(15),'
      '         DATA_VALOR   DATE'
      '         )'
      'AS'
      'BEGIN'
      
        '    FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_ING' +
        'RES, T.C_LLIT, T.C_PLANTA, I.C_ITEM'
      '    FROM TRACTAMENTS T'
      '    JOIN INFERDADES I ON T.C_TRACTAMENT=I.C_TRACTAMENT'
      '    WHERE T.C_PRESTACIO='#39'1004'#39
      '    AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '    AND I.ANULAT='#39'N'#39
      '    ORDER BY T.C_HISTORIA, T.DATA_INGRES, I.C_ITEM'
      
        '    INTO :C_TRACTAMENT, C_HISTORIA, :DATA_INGRES, :C_LLIT, :C_PL' +
        'ANTA, :C_ITEM'
      '    DO BEGIN'
      '        SELECT VALOR, DATA_VALOR FROM INFERDADES'
      '        WHERE C_TRACTAMENT=:C_TRACTAMENT'
      '        AND   C_ITEM=:C_ITEM'
      '        AND   ANULAT='#39'N'#39
      '        ORDER BY DATA_VALOR DESC'
      '        ROWS 1'
      '        INTO :VALOR, :DATA_VALOR;'
      ''
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = InferDades
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
    Left = 574
    Top = 68
  end
  object CodiAparell: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador registre infermeria'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi de l'#39'aparell'
        NombreDB = 'CODI_APARELL'
        Longitud = 30
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
          'Identificador registre infermeria')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Identificador registre infermeria')
        Tipo = tiForaneo
        ForaneoDic = RegistresInfer
        ForaneoCampos.Strings = (
          'Identificador de registre')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'CODIAPARELL'
    NombreTabla = 'CODIAPARELL'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador registre infermeria'
      'Codi de l'#39'aparell')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 660
    Top = 183
  end
  object RegInfer_Finalitza: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Finalitza'
    ForceNombreDB = False
    Body.Strings = (
      '(DES_DE DATE, FINS DATE)'
      'AS'
      '  DECLARE VARIABLE AVUI         DATE;'
      '  DECLARE VARIABLE C_HISTORIA   INTEGER;'
      '  DECLARE VARIABLE ID_REGINFER  INTEGER;'
      '  DECLARE VARIABLE DATA_ALTA    DATE;'
      '  DECLARE VARIABLE TIPUS_REG    SMALLINT;'
      '  DECLARE VARIABLE MOTIU        SMALLINT;'
      'BEGIN'
      ''
      '      AVUI = '#39'TODAY'#39';'
      
        '      IF (DES_DE IS NULL) THEN DES_DE = AVUI -7 ;               ' +
        '   /* Mirem la setmana anterior, per si posen una alta amb retar' +
        'd o falla el proc'#233's */'
      
        '      IF ((FINS IS NULL) OR (FINS >= AVUI)) THEN FINS = AVUI -1;' +
        '   /* i no permetem finalitzar registres d'#39'altes d'#39'avui ni futur' +
        'es */'
      ''
      
        '      /* Recorrem els registres actius de tractaments que han es' +
        'tat alta la darrera setmana */'
      
        '      FOR SELECT A.C_HISTORIA, A.ID, T.DATA_ALTA, A.T_REG, M.C_C' +
        'ODI'
      '          FROM   REGISTRESINFER A'
      
        '          JOIN   CODICAMPS   C ON C.TIPUSCODI = "INFER.TIPUSREG"' +
        ' AND C.C_CODI = A.T_REG'
      
        '          JOIN   CODICAMPS   M ON M.TIPUSCODI = C.PARAMS ||"_MOT' +
        'IU" AND UPPER(M.N_CODI) LIKE "%ALTA%"'
      
        '          JOIN   TRACTAMENTS T ON A.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  A.DATAFINAL_REAL IS NULL'
      '          AND    (T.DATA_ALTA >= :DES_DE)'
      '          AND    (T.DATA_ALTA <= :FINS)'
      
        '          AND    NOT EXISTS (SELECT B.C_HISTORIA FROM TRACTAMENT' +
        'S B                        /* Abril 2019: descartem els pacients' +
        ' */'
      
        '                             WHERE B.C_HISTORIA = T.C_HISTORIA A' +
        'ND B.C_PRESTACIO = "1004"  /*             que tenen un ingr'#233's ac' +
        'tiu */'
      
        '                             AND (B.DATA_ALTA IS NULL OR B.DATA_' +
        'ALTA >= "TODAY"))'
      '          ORDER BY A.C_HISTORIA'
      
        '          INTO  :C_HISTORIA, :ID_REGINFER, :DATA_ALTA, :TIPUS_RE' +
        'G, :MOTIU'
      '      DO BEGIN'
      '            /*... i els finalitzem amb motiu alta */'
      '            UPDATE REGISTRESINFER'
      '            SET    DATAFINAL_REAL = :DATA_ALTA,'
      '                   DATAFINAL_AUTO = "NOW",'
      '                   C_MOTIU = :MOTIU'
      '            WHERE  ID = :ID_REGINFER;'
      ''
      
        '            /* Si '#233's un a'#239'llament, actualitzem tamb'#233' els sem'#224'for' +
        's ISO i MR */'
      '            IF (TIPUS_REG = 2) THEN'
      '            BEGIN'
      '            '
      
        '                INSERT INTO SEMAFORS (ID, C_historia, TIPUS, C_E' +
        'STAT, DATA, INFO, DATA_REG, USUARI_REG, ID_REGINFER)'
      
        '                       VALUES (Gen_ID(G_SEMAFORS, 1), :C_HISTORI' +
        'A, "MR", 3, :DATA_ALTA, "Finalitzaci'#243' de l'#39'aillament (motiu: alt' +
        'a/traslalt)", "NOW", NULL, :ID_REGINFER);'
      ''
      
        '                INSERT INTO SEMAFORS (ID, C_historia, TIPUS, C_E' +
        'STAT, DATA, INFO, DATA_REG, USUARI_REG, ID_REGINFER)'
      
        '                       VALUES (Gen_ID(G_SEMAFORS, 1), :C_HISTORI' +
        'A, "ISO", 0, :DATA_ALTA, "Finalitzaci'#243' de l'#39'aillament (motiu: al' +
        'ta/traslalt)", "NOW", NULL, :ID_REGINFER);'
      '            END;'
      '      END'
      'END')
    Dic1 = RegistresInfer
    Dic1Name = 'RegistresInfer'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 465
    Top = 240
  end
  object RegInfer_Reactiva: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Reactiva'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER, OLD_DATAALTA DATE)'
      'AS'
      '  DECLARE VARIABLE ID_REGINFER  INTEGER;'
      '  DECLARE VARIABLE TIPUS_REG    SMALLINT;'
      'BEGIN'
      ''
      '      FOR SELECT R.ID, R.T_REG'
      '          FROM   REGISTRESINFER R'
      
        '          JOIN   CODICAMPS      C ON C.TIPUSCODI = "INFER.TIPUSR' +
        'EG" AND C.C_CODI = R.T_REG'
      
        '          JOIN   CODICAMPS      M ON M.TIPUSCODI = C.PARAMS ||"_' +
        'MOTIU" AND UPPER(M.N_CODI) LIKE "%ALTA%"'
      '          WHERE  R.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    R.C_MOTIU = M.C_CODI'
      '          AND    R.DATAFINAL_REAL = :OLD_DATAALTA'
      '          INTO  :ID_REGINFER, :TIPUS_REG'
      '      DO BEGIN'
      '      '
      '            UPDATE REGISTRESINFER'
      '            SET    DATAFINAL_REAL = NULL,'
      '                   DATAFINAL_AUTO = NULL,'
      '                   C_MOTIU = NULL'
      '            WHERE  ID = :ID_REGINFER;'
      ''
      
        '            /* Si recuperem un a'#239'llament, anul'#183'lem els registres' +
        ' de finalitzaci'#243' dels sem'#224'fors ISO i MR corresponents*/'
      '            IF (TIPUS_REG = 2) THEN'
      '            BEGIN'
      '                UPDATE SEMAFORS'
      '                SET    ANULAT = "S",'
      '                       DATA_ANULA = "NOW",'
      '                       INFO = "alta posposada o anul'#183'lada"'
      '                WHERE  TIPUS = "MR"'
      '                AND    ID_REGINFER = :ID_REGINFER'
      '                AND    C_ESTAT = 3'
      '                AND    DATA = :OLD_DATAALTA;'
      '                '
      '                UPDATE SEMAFORS'
      '                SET    ANULAT = "S",'
      '                       DATA_ANULA = "NOW",'
      '                       INFO = "alta posposada o anul'#183'lada"'
      '                WHERE  TIPUS = "ISO"'
      '                AND    ID_REGINFER = :ID_REGINFER'
      '                AND    C_ESTAT = 0'
      '                AND    DATA = :OLD_DATAALTA;'
      '            END;'
      '      END'
      'END')
    Dic1 = RegistresInfer
    Dic1Name = 'RegistresInfer'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 465
    Top = 288
  end
  object NoEvacuacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NoEvacuacio'
    ForceNombreDB = False
    Body.Strings = (
      '(PLANTA VARCHAR(10))'
      'RETURNS (C_HISTORIA   INTEGER,'
      '         NOMCOMPLET   VARCHAR(80),'
      '         C_TRACTAMENT INTEGER,'
      '         C_LLIT       VARCHAR(3),'
      '         C_PLANTA     VARCHAR(15),'
      '         DATA_VALOR   DATE'
      '         )'
      'AS'
      '  DECLARE VARIABLE CONTA SMALLINT;'
      'BEGIN'
      ''
      ''
      
        '  FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, T.C_TRACTAMENT, T.C_PLA' +
        'NTA, T.C_LLIT, Max(I.DATA_VALOR)'
      '      FROM   TRACTAMENTS T'
      '      JOIN   FILIACIO    F on T.C_HISTORIA = F.NUM_HIST'
      '      JOIN   INFERDADES  I on T.C_TRACTAMENT = I.C_TRACTAMENT'
      '      WHERE  T.C_PRESTACIO = '#39'1004'#39
      '      AND   (T.DATA_ALTA is null or T.DATA_ALTA >= '#39'TODAY'#39')'
      '      AND   (T.C_PLANTA = :PLANTA or :PLANTA = '#39'1'#39')'
      '      AND    I.C_ITEM = 12'
      '      AND    I.ANULAT = '#39'N'#39
      '      AND    I.VALOR <> '#39'T0  0'#39
      
        '      GROUP  BY T.C_HISTORIA, F.NOMCOMPLET, T.C_TRACTAMENT, T.C_' +
        'PLANTA, T.C_LLIT'
      '      HAVING Max(I.DATA_VALOR) < '#39'TODAY'#39'-3'
      
        '      INTO :C_HISTORIA, :NOMCOMPLET, :C_TRACTAMENT, :C_PLANTA, :' +
        'C_LLIT, :DATA_VALOR'
      '  DO BEGIN'
      '      SUSPEND;'
      '  END'
      '    '
      '   /*'
      
        '    FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, T.C_TRACTAMENT, T.C_P' +
        'LANTA, T.C_LLIT, Max(I.DATA_VALOR)'
      '    FROM TRACTAMENTS T'
      '    JOIN FILIACIO    F on T.C_HISTORIA = F.NUM_HIST'
      '    JOIN INFERDADES  I on T.C_TRACTAMENT = I.C_TRACTAMENT'
      '    WHERE T.C_PRESTACIO = "1004"'
      '    AND  (T.DATA_ALTA is null or T.DATA_ALTA >= "TODAY")'
      '    AND  (T.C_PLANTA = :PLANTA or :PLANTA = "1")'
      '    AND   I.C_ITEM = 12'
      '    AND   I.ANULAT = "N"'
      
        '    GROUP BY T.C_HISTORIA, F.NOMCOMPLET, T.C_TRACTAMENT, T.C_PLA' +
        'NTA, T.C_LLIT'
      
        '    INTO :C_HISTORIA, :NOMCOMPLET, :C_TRACTAMENT, :C_PLANTA, :C_' +
        'LLIT, :DATA_VALOR'
      '    DO BEGIN'
      '        IF (DATA_VALOR < "TODAY" - 3) THEN'
      '        BEGIN'
      '            SUSPEND;'
      '        END'
      '        ELSE BEGIN'
      '            CONTA=0;'
      ''
      
        '            /* Si els registres d'#39'evacuaci'#243' dels '#250'ltims 3 dies s' +
        #243'n tots que s'#237' ha evacuat, no el mostrem. Altrament, s'#237'.'
      '            SELECT COUNT(*)'
      '            FROM INFERDADES'
      '            WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '            AND   C_ITEM = 12'
      '            AND   ANULAT = "N"'
      '            AND   DATA_VALOR >= "TODAY" - 3'
      '            AND   VALOR <> "T0  0"'
      '            INTO :CONTA;'
      '            '
      '            IF (CONTA = 0) THEN SUSPEND;'
      ''
      '        END;'
      '    END;'
      '   */'
      'END')
    Dic1 = InferDades
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
    Left = 646
    Top = 68
  end
  object RegInferAvis: TDic
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
        Nombre = 'Identificador de registreinfer'
        NombreDB = 'ID_REGISTREINFER'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Planta d'#39'hospitalitzaci'#243
        NombreDB = 'C_PLANTA'
        Longitud = 10
        Consulta = 'PLANTES'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Coordinador'
        NombreDB = 'C_COORDINADOR'
        Longitud = 5
        Consulta = 'METGES'
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
        ForaneoDic = RegistresInfer
        ForaneoCampos.Strings = (
          'Identificador de registre')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ID'
        NombreDB = 'ID'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Identificador de registreinfer')
        Tipo = tiForaneo
        ForaneoDic = RegistresInfer
        ForaneoCampos.Strings = (
          'Identificador de registre')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'METGES'
        Master = wDataBasics.Metges
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
        Nombre = 'PLANTES'
        Master = wDataAdmisio.Plantas
        BuscaOrigen.Strings = (
          'Planta d'#39'hospitalitzaci'#243)
        CopiarOrigen.Strings = (
          'Planta d'#39'hospitalitzaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Planta')
        BuscaMaster.Strings = (
          'N'#186' Planta')
      end>
    Nombre = 'REGISTRESINFER_AVIS'
    NombreTabla = 'REGISTRESINFER_AVIS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Identificador de registreinfer'
      'Planta d'#39'hospitalitzaci'#243
      'Coordinador')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 732
    Top = 183
  end
  object P_GeneraAvisContencionsInf: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Genera_Avis_Contencions_Inf'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS(ret varchar(100))'
      'AS'
      '  DECLARE VARIABLE ID_REGISTREINFER INTEGER;'
      '  DECLARE VARIABLE C_PLANTA         VARCHAR(10);'
      '  DECLARE VARIABLE TIPUS_PLANTA     VARCHAR(1);'
      '  DECLARE VARIABLE MOTIU_BLOQUEIG   VARCHAR(20);'
      'BEGIN'
      ''
      
        '      /* Recorrem els registres actius de contencions f'#237'siques d' +
        'e tractaments actius que no tenen alarma per la planta pendent *' +
        '/'
      '      FOR SELECT R.ID, T.C_PLANTA, P.TIPUS, '#39'BQ-'#39'||T.C_HISTORIA'
      '          FROM   REGISTRESINFER R'
      
        '          JOIN   TRACTAMENTS T ON R.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          JOIN   PLANTES P ON T.C_PLANTA = P.C_PLANTA'
      '          WHERE  R.C_MOTIU IS NULL'
      '          AND    R.T_REG = 14'
      '          AND    R.DATAINICI_AUTO < "TODAY"'
      '          AND    (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      
        '          AND    NOT EXISTS (SELECT B.ID FROM REGISTRESINFER_AVI' +
        'S B'
      '                             WHERE B.ID_REGISTREINFER = R.ID'
      '                             AND   B.C_PLANTA = T.C_PLANTA)'
      '          ORDER BY R.ID'
      
        '          INTO  :ID_REGISTREINFER, :C_PLANTA, :TIPUS_PLANTA, :MO' +
        'TIU_BLOQUEIG'
      '      DO BEGIN'
      
        '            /* Si la planta '#233's de quir'#242'fan, cal recuperar la d'#39'h' +
        'ospitalitzaci'#243' als bloquejos de llits */'
      '            IF (TIPUS_PLANTA = '#39'Q'#39') THEN'
      '            BEGIN'
      '                SELECT L.C_PLANTA FROM LLITBLOQUEIG B'
      '                JOIN LLITS L ON B.C_LLIT=L.C_LLIT'
      '                WHERE B.MOTIU_BLOQUEIG = :MOTIU_BLOQUEIG'
      '                INTO :C_PLANTA;'
      '            END;'
      '            '
      
        '            INSERT INTO REGISTRESINFER_AVIS (ID,                ' +
        '          ID_REGISTREINFER,  C_PLANTA)'
      
        '                                     VALUES (Gen_ID(G_REGINFER_A' +
        'VIS, 1), :ID_REGISTREINFER, :C_PLANTA);'
      '      END;'
      '      '
      'END')
    Dic1 = RegistresInfer
    Dic1Name = 'RegistresInfer'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 729
    Top = 240
  end
  object P_GeneraAvisContencionsMet: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Genera_Avis_Contencions_Met'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS(ret varchar(100))'
      'AS'
      '  DECLARE VARIABLE ID_REGISTREINFER INTEGER;'
      '  DECLARE VARIABLE C_COORDINADOR    VARCHAR(5);'
      'BEGIN'
      ''
      
        '      /* Recorrem els registres actius de contencions f'#237'siques d' +
        'e tractaments actius que no tenen alarma pendent pel coordinador' +
        ' */'
      '      FOR SELECT R.ID, T.C_COORDINADOR'
      '          FROM   REGISTRESINFER R'
      
        '          JOIN   TRACTAMENTS T ON R.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  R.C_MOTIU IS NULL'
      '          AND    R.T_REG = 14'
      '          AND    R.DATAINICI_AUTO < "TODAY"'
      
        '          AND    F_MODULO("TODAY"-R.DATAINICI_REAL,14)=0        ' +
        '   /* l'#39'av'#237's pels metges '#233's nom'#233's cada 14 dies des de l'#39'obertura' +
        ' del registre d'#39'infermeria */'
      '          AND    (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      
        '          AND    NOT EXISTS (SELECT B.ID FROM REGISTRESINFER_AVI' +
        'S B'
      '                             WHERE B.ID_REGISTREINFER = R.ID'
      
        '                             AND   B.C_COORDINADOR = T.C_COORDIN' +
        'ADOR)'
      '          ORDER BY R.ID'
      '          INTO  :ID_REGISTREINFER, :C_COORDINADOR'
      '      DO BEGIN'
      
        '          INSERT INTO REGISTRESINFER_AVIS (ID,                  ' +
        '        ID_REGISTREINFER,  C_COORDINADOR)'
      
        '                                   VALUES (Gen_ID(G_REGINFER_AVI' +
        'S, 1), :ID_REGISTREINFER, :C_COORDINADOR);'
      '      END;'
      '      '
      'END')
    Dic1 = RegistresInfer
    Dic1Name = 'RegistresInfer'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 729
    Top = 304
  end
  object RegInfer_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU'
    ForceNombreDB = False
    Body.Strings = (
      ' DECLARE VARIABLE PRIMER     INTEGER;'
      ' DECLARE VARIABLE RESPOSTA   VARCHAR(3000);'
      ' DECLARE VARIABLE ESTAT      SMALLINT;'
      ' DECLARE VARIABLE VALOR      DOUBLE PRECISION;'
      ' DECLARE VARIABLE ID         INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '    '
      
        '      /* Si es finalitza un tipus de registre de contenci'#243' f'#237'sic' +
        'a, cal eliminar les alarmes que hi hagi a REGISTRESINFER_AVIS */'
      '      IF ((NEW.T_REG = 14) AND (NEW.C_MOTIU IS NOT NULL)) THEN'
      '      BEGIN'
      
        '          DELETE FROM REGISTRESINFER_AVIS WHERE ID_REGISTREINFER' +
        ' = NEW.ID;'
      '      END;'
      ''
      '   END;'
      'END')
    Dic1 = RegistresInfer
    Dic1Name = 'RegistresInfer'
    Abierta = False
    Borrame = False
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
    Left = 466
    Top = 348
  end
  object automatic: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'automatic'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      c_usuari varchar(3)'
      ')'
      'RETURNS'
      '('
      '      RESULTAT VARCHAR(200)'
      ')'
      'AS'
      '      DECLARE VARIABLE NOU_ESTAT_REC INTEGER;'
      '      DECLARE VARIABLE VALOR_REC INTEGER;'
      '      declare variable tipus_anota smallint;'
      '      declare variable bolca_anota char(1);'
      '      declare variable n_estat varchar(40);'
      '      declare variable c_prestacio varchar(10);'
      '      declare variable c_coordinador varchar(3);'
      '      declare variable data_ingres date;'
      '      declare variable c_grup varchar(10);'
      'BEGIN'
      ''
      ''
      '      /*  SEMAFOR REC */'
      
        '      select REC, NOU_ESTAT from P_REC_SCORES_TOTAL(:c_historia,' +
        ' "NOW", "S" ) into :valor_rec, :nou_estat_rec;'
      ''
      '      IF (nou_estat_rec is not null) then'
      '      begin'
      
        '            select TIPUS_ANOTA, BOLCA_ANOTA, N_ESTAT from SEMAFO' +
        'RS_ESTATS'
      '            where TIPUS = "REC" and C_ESTAT = :nou_estat_rec'
      '            into :tipus_anota, :bolca_anota, :n_estat;'
      '            '
      '            if (bolca_anota = '#39'A'#39') then'
      '            begin'
      '            '
      
        '                  select c_prestacio, c_coordinador, data_ingres' +
        ' from tractaments where c_tractament = :c_tractament'
      
        '                  into :c_prestacio, :c_coordinador, :data_ingre' +
        's;'
      '                  '
      
        '                  select c_grup from metges where codi = :c_usua' +
        'ri into :c_grup;'
      '            '
      
        '                  insert into HISTORIA ( c_historia, Data,  Anot' +
        'acio,                C_Tractament,   C_Prestacio, C_Usuari, C_Gr' +
        'up, C_Coordinador, Data_Ingres, EsNormal, QueEs)'
      
        '                  values               (:c_historia, "now", :n_e' +
        'stat||" a les "||"", :c_tractament, :c_prestacio,:c_usuari,:c_gr' +
        'up,:c_coordinador,:data_ingres,  "N",    :tipus_anota);'
      ''
      '            end'
      '      end'
      ''
      ''
      'END')
    Dic1 = InferDades
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
    Left = 734
    Top = 68
  end
end
