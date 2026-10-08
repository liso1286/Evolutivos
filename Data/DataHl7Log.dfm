object wDataHl7Log: TwDataHl7Log
  OldCreateOrder = False
  Left = 441
  Top = 187
  Height = 738
  Width = 708
  object Hl7_Log: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'LOG_ID'
        NombreDB = 'LOG_ID'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HL7_LOG'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Taula'
        NombreDB = 'TAULA'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PK_Valor'
        NombreDB = 'PK_VALOR'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Missatge'
        NombreDB = 'C_MISSATGE'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'missatge HL7: ADT_A01, DFT_P03...'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Acci'#243
        NombreDB = 'ACCIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'acci'#243' a realitzar a SAP (Imputaci'#243', Modificaci'#243', Cancel'#183'laci'#243')'
        ValidChars = 'IMC'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Informaci'#243' estructurada'
        NombreDB = 'INFO'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Informaci'#243' estructurada addicional'
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
        Nombre = 'Programes afectats'
        NombreDB = 'PAFECTATS'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'codicampsalfa'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resposta'
        NombreDB = 'RESPOSTA'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Enviaments'
        NombreDB = 'ENVIAMENTS'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end>
    Indices = <
      item
        Nombre = 'Primario'
        NombreDB = 'Primario'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'LOG_ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end
      item
        Nombre = 'taulapk'
        NombreDB = 'taulapk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Taula'
          'PK_Valor')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'pkvalor'
        NombreDB = 'pkvalor'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'PK_Valor')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'pafectats'
        NombreDB = 'pafectats'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Programes afectats')
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
    Consultas = <>
    Nombre = 'Hl7_Log'
    NombreTabla = 'Hl7_Log'
    Organiza = tbBase
    CamposVer.Strings = (
      'LOG_ID')
    IndiceVer = 'Primario'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 40
    Top = 16
  end
  object T_Tract_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_I           INTEGER;'
      'DECLARE VARIABLE ENVIAR_V           INTEGER;'
      'DECLARE VARIABLE ENVIAR_M           INTEGER;'
      'DECLARE VARIABLE C_GRUP             VARCHAR(2);'
      'DECLARE VARIABLE UNITATA            SMALLINT;'
      'DECLARE VARIABLE UNITATM            SMALLINT;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      
        '      /*********** TRACTAMENTS - ACTIVITAT FACTURABLE -> SAP ***' +
        '********/'
      ''
      
        '      /* En insertar un tractament amb prestaci'#243' facturable, l'#39'e' +
        'nviem segons el tipus de prestaci'#243' */'
      ''
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P150'#39' INTO :ENVIAR_I;   /* Episodi     ' +
        ' */'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P151'#39' INTO :ENVIAR_V;   /* CE          ' +
        ' */'
      ''
      
        '      /* Mirem si el motiu del tractament (en cas de visites) es' +
        't'#224' excl'#242's de generar activitat facturable */'
      '      IF (ENVIAR_V > 0)'
      '      THEN'
      
        '            SELECT 1 - COUNT(*) FROM DRETSMOTIU WHERE C_DRET = '#39 +
        'X13'#39' AND C_MOTIU = NEW.C_MOTIU INTO :ENVIAR_V;'
      ''
      ''
      
        '      /* Per les provisionals, mirem si la prestaci'#243' original '#233's' +
        ' visita o episodi */'
      '      if (NEW.C_PRESTACIO = '#39'9999'#39') then'
      '      begin'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET = '#39'P15' +
        '0'#39' AND C_PRESTACIO = NEW.C_PRESTACIOORIGEN INTO :ENVIAR_I;   /* ' +
        'Episodi      */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET = '#39'P15' +
        '1'#39' AND C_PRESTACIO = NEW.C_PRESTACIOORIGEN INTO :ENVIAR_V;   /* ' +
        'CE           */'
      '      end'
      ''
      ''
      '      IF (ENVIAR_I > 0) THEN'
      '      BEGIN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS'#39', NEW' +
        '.C_TRACTAMENT, '#39'ADT_A01'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '            '
      '            /* Si, ja t'#233' data d'#39'alta enviem l'#39'alta: */'
      
        '            /* (Aix'#242' serveix per a les CMA, que s'#39'envien com a e' +
        'pisodi per'#242' tenen alta ja d'#39'entrada) */'
      '            IF (NEW.DATA_ALTA IS NOT NULL)'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS' +
        #39', NEW.C_TRACTAMENT, '#39'ADT_A03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '      END;'
      ''
      '      IF (ENVIAR_V > 0)'
      '      THEN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS'#39', NEW' +
        '.C_TRACTAMENT, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '      '
      ''
      ''
      
        '      /*********** TRACTAMENTS - PRESTACIONS AMB MEDICACI'#211' -> FA' +
        'RMATOOLS ***********/'
      ''
      '      /* Prestacions que s'#39'envien a Farmatools */'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P252'#39' INTO :ENVIAR_M;'
      ''
      
        '      /* Excloem els tractaments amb motiu "no enviar episodi a ' +
        'Farmatools encara que la prestaci'#243' sigui P252".'
      
        '         Serveix per no enviar les 2006 (CmA) amb motiu 19 (rec'#224 +
        'rrega baclfof'#232'n). Han de crear episodi DPE */'
      '      IF (ENVIAR_M > 0)'
      
        '      THEN  SELECT 1 - COUNT(*) FROM DRETSMOTIU WHERE C_DRET = '#39 +
        'X19'#39' AND C_MOTIU = NEW.C_MOTIU INTO :ENVIAR_M;'
      ''
      
        '      /* Excloem les CmA que v'#233'nen per Sifco (de fet, totes les ' +
        'SCS no UP. No haurien d'#39'existir, per'#242' per si un cas. */'
      
        '      IF ((NEW.C_PRESTACIO = '#39'2006'#39') AND (NEW.C_CENTREFAC = '#39'04'#39 +
        ') AND (NEW.C_CLIENT <> '#39'UP'#39')) THEN ENVIAR_M = 0;'
      ''
      ''
      '      IF (ENVIAR_M > 0) THEN'
      '      BEGIN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS'#39', NEW' +
        '.C_TRACTAMENT, '#39'ADT_A01'#39', '#39'I'#39', '#39#39', '#39'M'#39');   /* L'#39'enviament ja dis' +
        'criminar'#224' si '#233's hospitalitzaci'#243' o pacient extern en funci'#243' del t' +
        'ipus de la prestaci'#243' */'
      '            '
      
        '            SELECT UNITAT, C_UNITATMEDICA FROM FILIACIO WHERE NU' +
        'M_HIST = NEW.C_HISTORIA INTO :UNITATA, :UNITATM;'
      ''
      ''
      
        '            /* Enviem tamb'#233' la Unitat Administrativa encara que ' +
        'no estigui assignada (si no t'#233' l'#39'indicador, FT no envia el consu' +
        'm) */'
      '            /*IF (UNITATA <> 0)'
      '            THEN*/'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', ' +
        'NEW.C_HISTORIA, '#39'ORU'#39', '#39'I'#39', '#39'UA'#39', '#39'M'#39');'
      '                  '
      
        '            /* I ja que hi som, tamb'#233' la unitat m'#232'dica si no '#233's ' +
        '0 */'
      '            IF (UNITATM <> 0)'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', ' +
        'NEW.C_HISTORIA, '#39'ORU'#39', '#39'I'#39', '#39'UM'#39', '#39'M'#39');'
      ''
      '      END'
      '            '
      ''
      ''
      '   END;'
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
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Position = 50
    Left = 40
    Top = 135
  end
  object P_Hl7_anota_F: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ANOTA'
    ForceNombreDB = False
    Body.Strings = (
      '(TAULA       VARCHAR(40),'
      ' PK_VALOR    INTEGER,'
      ' C_MISSATGE  VARCHAR(10),'
      ' ACCIO       CHAR(1),'
      ' INFO        VARCHAR(30000),'
      ' PAFECTATS   VARCHAR(250)'
      ')'
      'AS'
      'BEGIN'
      '    /* Programes afectats:  F: facturaci'#243
      '                            D: dietes'
      '                            M: farm'#224'cia-MM */'
      '    '
      '    /* Acci'#243':  I - imputaci'#243
      '               M - modificaci'#243
      '               C - cancel'#183'laci'#243'  */'
      ''
      
        '    INSERT INTO HL7_LOG(TAULA, PK_VALOR, C_MISSATGE, ACCIO, INFO' +
        ', DATA, PAFECTATS)'
      
        '    VALUES (:TAULA, :PK_VALOR, :C_MISSATGE, :ACCIO, :INFO, "NOW"' +
        ', :PAFECTATS);'
      'END'
      '')
    Dic1 = Hl7_Log
    Dic1Name = 'Hl7_Log'
    Abierta = False
    Borrame = False
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
    Top = 16
  end
  object T_Tract_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE SURT               INTEGER;'
      'DECLARE VARIABLE ENVIAR_I           INTEGER;'
      'DECLARE VARIABLE ENVIAR_V           INTEGER;'
      'DECLARE VARIABLE ENVIAT_M           INTEGER;'
      'DECLARE VARIABLE ENVIAR_M           INTEGER;'
      'DECLARE VARIABLE C_GRUP             VARCHAR(2);'
      'DECLARE VARIABLE OLD_ESTATFAC       INTEGER;'
      'DECLARE VARIABLE NEW_ESTATFAC       INTEGER;'
      'DECLARE VARIABLE INFO               VARCHAR(30000);'
      'DECLARE VARIABLE UNITATA            SMALLINT;'
      'DECLARE VARIABLE UNITATM            SMALLINT;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      
        '      /*********** ACTIVITAT DE TRACTAMENTS  -> FACTURACI'#211' *****' +
        '******/'
      ''
      
        '      /* En modificar dades d'#39'un tractament, enviem els canvis s' +
        'egons el tipus de prestaci'#243' i els tipus de modificacions */'
      ''
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P150'#39' INTO :ENVIAR_I;   /* Episodi */'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P151'#39' INTO :ENVIAR_V;   /* CE      */'
      ''
      
        '      /* Mirem si el motiu del tractament (en cas de visites) es' +
        't'#224' excl'#242's de generar activitat facturable */'
      '      IF (ENVIAR_V > 0)'
      '      THEN'
      
        '            SELECT 1 - COUNT(*) FROM DRETSMOTIU WHERE C_DRET = '#39 +
        'X13'#39' AND C_MOTIU = NEW.C_MOTIU INTO :ENVIAR_V;'
      ''
      ''
      
        '      /*********** TRACTAMENTS AMB MEDICACI'#211' -> FARMATOOLS *****' +
        '******/'
      ''
      '      /* Prestacions que s'#39'envien a Farmatools */'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO = NEW.C' +
        '_PRESTACIO AND C_DRET = '#39'P252'#39' INTO :ENVIAR_M;'
      '      '
      
        '      /* Excloem els tractaments amb motiu "no enviar episodi a ' +
        'Farmatools encara que la prestaci'#243' sigui P252".'
      
        '         Serveix per no enviar les 2006 (CmA) amb motiu 19 (rec'#224 +
        'rrega baclfof'#232'n) */'
      '      IF (ENVIAR_M > 0)'
      
        '      THEN  SELECT 1 - COUNT(*) FROM DRETSMOTIU WHERE C_DRET = '#39 +
        'X19'#39' AND C_MOTIU = NEW.C_MOTIU INTO :ENVIAR_M;'
      ''
      
        '      /* Excloem les CmA que v'#233'nen per Sifco (de fet, totes les ' +
        'SCS no UP. No haurien d'#39'existir, per'#242' per si un cas. */'
      
        '      IF ((NEW.C_PRESTACIO = '#39'2006'#39') AND (NEW.C_CENTREFAC = '#39'04'#39 +
        ') AND (NEW.C_CLIENT <> '#39'UP'#39')) THEN ENVIAR_M = 0;'
      ''
      ''
      '      SURT = 0;'
      '      '
      '      '
      
        '      /* ANUL'#183'LACI'#211' D'#39'ACTIVITAT: CANVIS D'#39'ESTAT DE FACTURACI'#211' A ' +
        'NO FACTURABLE "activitat anul'#183'lada" */'
      '      IF (OLD.C_ESTATFAC <> NEW.C_ESTATFAC) THEN'
      '      BEGIN'
      
        '            SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI = "ESTA' +
        'TFACTU" AND C_CODI = OLD.C_ESTATFAC INTO :OLD_ESTATFAC;'
      
        '            SELECT R_CODI FROM CODICAMPS WHERE TIPUSCODI = "ESTA' +
        'TFACTU" AND C_CODI = NEW.C_ESTATFAC INTO :NEW_ESTATFAC;'
      ''
      '            /* Si anul'#183'len activitat */'
      '            IF ((OLD_ESTATFAC <> 9) AND (NEW_ESTATFAC = 9)) THEN'
      '            BEGIN'
      
        '                  /* Cancel'#183'lem activitat segons el tipus de pre' +
        'staci'#243' */'
      '                  IF (ENVIAR_I > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A11'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      '                  ELSE IF (ENVIAR_V > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      ''
      '                  /* Cancel'#183'lem activitat a farmatools */'
      '                  IF (ENVIAR_M > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A11'#39', '#39'C'#39', '#39#39', '#39'M'#39');'
      ''
      '                  /* I ja no cal fer res m'#233's */'
      '                  SURT = 1;'
      '            END'
      '            '
      
        '            /* Si desanul'#183'len activitat, enviem tractament a far' +
        'matools */'
      
        '            ELSE IF ((OLD_ESTATFAC = 9) AND (NEW_ESTATFAC <> 9))' +
        ' THEN'
      '            BEGIN'
      
        '                  IF (ENVIAR_M > 0) THEN EXECUTE PROCEDURE P_HL7' +
        '_LOG_ANOTA('#39'TRACTAMENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A01'#39', '#39'I'#39', '#39#39', ' +
        #39'M'#39');'
      '                  '
      '                  /* I ja no cal fer res m'#233's */'
      '                  SURT = 1;'
      '            END'
      '      END'
      ''
      ''
      '      IF (SURT = 0) THEN'
      '      BEGIN'
      
        '            /* CANVI DE N'#218'MERO D'#39'HIST'#210'RIA  (Duplicaci'#243' de pacien' +
        't) */'
      '            /* Enviem missatge de fusi'#243' d'#39'hist'#242'ries */'
      '            IF (NEW.C_HISTORIA <> OLD.C_HISTORIA) THEN'
      '            BEGIN'
      '                  INFO = '#39'#C_HISTORIA_NO#'#39' || OLD.C_HISTORIA;'
      '                  '
      '                  IF ((ENVIAR_I > 0) OR (ENVIAR_V > 0))'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIAC' +
        'IO'#39', NEW.C_HISTORIA, '#39'ADT_A40'#39', '#39'M'#39', :INFO, '#39'F'#39');'
      ''
      '                  IF (ENVIAR_M > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIAC' +
        'IO'#39', NEW.C_HISTORIA, '#39'ADT_A34'#39', '#39'M'#39', :INFO, '#39'M'#39');'
      '            END;'
      ''
      '            /* POSAR DATA D'#39'ALTA D'#39'EPISODI*/'
      
        '            IF ((OLD.DATA_ALTA IS NULL) AND (NEW.DATA_ALTA IS NO' +
        'T NULL)) THEN'
      '            BEGIN'
      '                  IF (ENVIAR_I > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '                  '
      '                  /* Medicaci'#243' -> Farmatools'
      
        '                  /* Febrer 2026: infermeria registra les altes ' +
        'en el moment de l'#39'alta => enviem l'#39'alta si '#233's avui o anterior a ' +
        'avui */'
      
        '/*-                     Si posen una alta passada, l'#39'enviem ja a' +
        ' Farmatools. Altrament, l'#39'enviarem a la nit pq no sigui efectiva' +
        ' fins dem'#224
      
        '                  IF ((ENVIAR_M > 0) /* AND (NEW.DATA_ALTA < "TO' +
        'DAY")) -*/'
      
        '                  IF ((ENVIAR_M > 0) AND (NEW.DATA_ALTA <= "TODA' +
        'Y"))'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A03'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '            END;'
      ''
      '            /* CANVI DATA ALTA D'#39'EPISODI */'
      
        '            ELSE IF ((ENVIAR_I > 0) AND (OLD.DATA_ALTA <> NEW.DA' +
        'TA_ALTA)) THEN'
      '            BEGIN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS' +
        #39', NEW.C_TRACTAMENT, '#39'ADT_A03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      ''
      '                  /* Medicaci'#243' -> Farmatools'
      
        '                  /* Febrer 2026: Infermeria registra les altes ' +
        'en el moment de l'#39'alta. La pot cancel'#183'lar per'#242' no modificar.'
      
        '                                  Admissions no dona altes de 10' +
        '04 a present ni a futur. Impedim que les canvi'#239' (forcem anul'#183'lar' +
        ' per modificar data d'#39'alta) */'
      '            END;'
      ''
      '            /* ANUL'#183'LAR ALTA D'#39'EPISODI */'
      
        '            ELSE IF ((OLD.DATA_ALTA IS NOT NULL) AND (NEW.DATA_A' +
        'LTA IS NULL)) THEN'
      '            BEGIN'
      '                  IF (ENVIAR_I > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A13'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      '                  '
      '                  /* Medicaci'#243' -> Farmatools'
      
        '/*-                     Enviem l'#39'alta en el moment que '#233's efecti' +
        'va (dia de l'#39'alta a les 23:59), per tant, nom'#233's hem d'#39'enviar la ' +
        'cancel'#183'laci'#243', si ja ha passat el dia -*/'
      
        '/*-                     Per'#242' a FT no li importa si enviem una ca' +
        'ncel'#183'laci'#243' i no hi havia alta, per tant, ho fem sempre, per evit' +
        'ar problemes -*/'
      '                  IF (ENVIAR_M > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A13'#39', '#39'C'#39', '#39#39', '#39'M'#39');'
      '            END;'
      ''
      ''
      
        '            /* CANVIS EN ALTRES DADES QUE AFECTEN LA FACTURACI'#211' ' +
        '  ->  SAP */'
      ''
      '            IF ((OLD.C_PRESTACIO <> NEW.C_PRESTACIO)'
      '            OR  (OLD.DATA_INGRES <> NEW.DATA_INGRES)'
      '            OR  (OLD.C_MOTIU <> NEW.C_MOTIU)'
      '            OR  (OLD.C_COORDINADOR <> NEW.C_COORDINADOR)'
      '            OR  (OLD.C_ESTATFAC <> NEW.C_ESTATFAC)'
      
        '            OR  (Coalesce(OLD.C_CENTREFAC, '#39'~'#39') <> Coalesce(NEW.' +
        'C_CENTREFAC, '#39'~'#39'))'
      
        '            OR  (Coalesce(OLD.C_CLIENT, '#39'~'#39') <> Coalesce(NEW.C_C' +
        'LIENT, '#39'~'#39'))'
      
        '            OR  (Coalesce(OLD.C_DELEGACIO, '#39'~'#39') <> Coalesce(NEW.' +
        'C_DELEGACIO, '#39'~'#39'))'
      
        '            OR  (Coalesce(OLD.REFERENCIA, '#39'~'#39') <> Coalesce(NEW.R' +
        'EFERENCIA, '#39'~'#39'))                          /* n'#250'm. refer'#232'ncia (Ti' +
        'rea)  */'
      
        '            OR  (Coalesce(OLD.MATRICULA_VEHICLE, '#39'~'#39') <> Coalesc' +
        'e(NEW.MATRICULA_VEHICLE, '#39'~'#39'))            /* matr'#237'cula cotxe (Ti' +
        'rea)  */'
      
        '            OR  (F_DateNull(OLD.DATA_SINISTRE, "TOMORROW") <> F_' +
        'DateNull(NEW.DATA_SINISTRE, "TOMORROW"))  /* data sinistre (Tire' +
        'a)    */'
      
        '            OR  (Coalesce(OLD.SIFCO, '#39'~'#39') <> Coalesce(NEW.SIFCO,' +
        ' '#39'~'#39'))                                    /* SIFCO (ACA)        ' +
        '      */'
      
        '            OR  (Coalesce(OLD.FISS, '#39'~'#39') <> Coalesce(NEW.FISS, '#39 +
        '~'#39'))                                      /* FISS (CI)          ' +
        '      */'
      
        '            OR  (OLD.PERCENTATGEPACIENT  <> NEW.PERCENTATGEPACIE' +
        'NT)                                       /* % pacient (Fin. Mix' +
        't)    */'
      
        '            OR  (Coalesce(OLD.PRESSUPOST, '#39'~'#39') <> Coalesce(NEW.P' +
        'RESSUPOST, '#39'~'#39'))                          /* pressupost (particu' +
        'lars) */'
      
        '            OR  (Coalesce(OLD.ID_GARANT, -1) <> Coalesce(NEW.ID_' +
        'GARANT, -1))                              /* ID Garant (pagador ' +
        'particulars)     */'
      
        '            OR  (Coalesce(OLD.ID_FACILITADOR, -1) <> Coalesce(NE' +
        'W.ID_FACILITADOR, -1))                    /* ID Facilitador (bro' +
        'ker particulars) */'
      
        '            OR  (OLD.BECA   <> NEW.BECA)                        ' +
        '                                          /* Beca (particulars) ' +
        '                 */'
      '            OR  ((OLD.BECA IS NULL) AND (NEW.BECA IS NOT NULL))'
      '            OR  ((OLD.BECA IS NOT NULL) AND (NEW.BECA IS NULL))'
      
        '            OR  (Coalesce(OLD.T_HABITACIO, -1) <> Coalesce(NEW.T' +
        '_HABITACIO, -1))                          /* Tipus d'#39'habitaci'#243'  ' +
        ' */'
      
        '            OR  (Coalesce(OLD.T_SESSIO, -1) <> Coalesce(NEW.T_SE' +
        'SSIO, -1))                                /* Tipus de sessi'#243'    ' +
        ' */'
      '               )'
      '            THEN BEGIN'
      '                  IF (ENVIAR_I > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A01'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      ''
      '                  IF (ENVIAR_V > 0)'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTA' +
        'MENTS'#39', NEW.C_TRACTAMENT, '#39'DFT_P03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '            END;'
      '            '
      ''
      
        '            /* CANVIS DE PRESTACI'#211', MOTIU o DADES FACTURACI'#211' -> ' +
        'FARMATOOLS */'
      '            /* No ho reportem si el pacient ja est'#224' d'#39'alta */'
      
        '            IF ((NEW.DATA_ALTA IS NULL) OR (NEW.DATA_ALTA >= "TO' +
        'DAY")) THEN'
      '            BEGIN'
      
        '                  /* Hem de mirar si amb les noves condicions s'#39 +
        'ha d'#39'enviar o cancel'#183'lar l'#39'episodi */'
      
        '                  IF ((OLD.C_PRESTACIO <> NEW.C_PRESTACIO) OR (O' +
        'LD.C_MOTIU <> NEW.C_MOTIU) OR (OLD.C_CENTREFAC <> NEW.C_CENTREFA' +
        'C) OR (OLD.C_CLIENT <> NEW.C_CLIENT)) THEN'
      '                  BEGIN'
      '                        /* Mirem si s'#39'havia enviat */'
      '                        /* Prestacions enviables*/'
      
        '                        SELECT COUNT(*) FROM DRETSPRESTA WHERE C' +
        '_PRESTACIO = OLD.C_PRESTACIO AND C_DRET = '#39'P252'#39' INTO :ENVIAT_M;'
      '                        /* Excloem motius no enviables */'
      '                        IF (ENVIAT_M > 0)'
      
        '                        THEN  SELECT 1 - COUNT(*) FROM DRETSMOTI' +
        'U WHERE C_DRET = '#39'X19'#39' AND C_MOTIU = OLD.C_MOTIU INTO :ENVIAT_M;'
      
        '                        /* Excloem CmA de SCS no UP (excloem sif' +
        'co) */'
      
        '                        IF ((OLD.C_PRESTACIO = '#39'2006'#39') AND (OLD.' +
        'C_CENTREFAC = '#39'04'#39') AND (OLD.C_CLIENT <> '#39'UP'#39')) THEN ENVIAT_M = ' +
        '0;'
      ''
      '                  '
      
        '                        /* Si no s'#39'havia enviat i s'#39'ha d'#39'enviar ' +
        '-> enviem */'
      
        '                        IF ((ENVIAT_M = 0) AND (ENVIAR_M > 0)) T' +
        'HEN'
      '                        BEGIN'
      
        '                              EXECUTE PROCEDURE P_HL7_LOG_ANOTA(' +
        #39'TRACTAMENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A01'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '                        '
      
        '                              SELECT UNITAT, C_UNITATMEDICA FROM' +
        ' FILIACIO WHERE NUM_HIST = NEW.C_HISTORIA INTO :UNITATA, :UNITAT' +
        'M;'
      ''
      
        '                              /* Enviem tamb'#233' la Unitat Administ' +
        'rativa si no '#233's 0 */'
      '                              IF (UNITATA <> 0)'
      '                              THEN'
      
        '                              EXECUTE PROCEDURE P_HL7_LOG_ANOTA(' +
        #39'FILIACIO'#39', NEW.C_HISTORIA, '#39'ORU'#39', '#39'I'#39', '#39'UA'#39', '#39'M'#39');'
      ''
      
        '                              /* I ja que hi som, tamb'#233' la unita' +
        't m'#232'dica si no '#233's 0 */'
      '                              IF (UNITATM <> 0)'
      '                              THEN'
      
        '                              EXECUTE PROCEDURE P_HL7_LOG_ANOTA(' +
        #39'FILIACIO'#39', NEW.C_HISTORIA, '#39'ORU'#39', '#39'I'#39', '#39'UM'#39', '#39'M'#39');'
      ''
      '                        END'
      '                  '
      
        '                        /* Si s'#39'havia enviat i no s'#39'ha d'#39'enviar ' +
        '-> cancel'#183'lem */'
      '                        IF ((ENVIAT_M > 0) AND (ENVIAR_M = 0))'
      '                        THEN'
      
        '                              EXECUTE PROCEDURE P_HL7_LOG_ANOTA(' +
        #39'TRACTAMENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A11'#39', '#39'C'#39', '#39#39', '#39'M'#39');'
      '                  END;'
      '            '
      
        '                  /* CANVIS EN ALTRES DADES QUE AFECTEN LA MEDIC' +
        'ACI'#211' -> FARMATOOLS */'
      ''
      
        '                  IF ( (OLD.DATA_INGRES <> NEW.DATA_INGRES)     ' +
        '                                         /* data d'#39'ingr'#233's */'
      
        '                  OR   (OLD.C_COORDINADOR <> NEW.C_COORDINADOR) ' +
        '                                         /* metge coordinador */'
      
        '                  OR   (OLD.C_MOTIU <> NEW.C_MOTIU)             ' +
        '                                         /* motiu d'#39'ingr'#233's */'
      
        '                  OR   (Coalesce(OLD.N_DIAGNOSTICINGRES, '#39'~'#39') <>' +
        ' Coalesce(NEW.N_DIAGNOSTICINGRES, '#39'~'#39'))  /* diagn'#242'stic principal' +
        ' */'
      
        '                  OR   (Coalesce(OLD.C_CENTREFAC, '#39'~'#39') <> Coales' +
        'ce(NEW.C_CENTREFAC, '#39'~'#39'))                /* centre facturaci'#243' */'
      '                     )'
      '                  THEN BEGIN'
      ''
      '                        IF (ENVIAR_M > 0)'
      '                        THEN'
      
        '                              EXECUTE PROCEDURE P_HL7_LOG_ANOTA(' +
        #39'TRACTAMENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A08'#39', '#39'M'#39', '#39#39', '#39'M'#39');'
      '                  END'
      '            END'
      '      END'
      '   END'
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Position = 50
    Left = 108
    Top = 136
  end
  object T_Fili_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE INFO VARCHAR(100);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '    '
      '      /*********** CANVIS EN DADES DE PACIENT ***********/'
      '      '
      
        '      /* Si canvien dades del pacient que afecten la facturaci'#243',' +
        ' s'#39'ha de notificar a SAP-Facturaci'#243' (F) */'
      '      '
      
        '      IF ((OLD.NOMBRE <> NEW.NOMBRE) OR (OLD.APELLIDO1 <> NEW.AP' +
        'ELLIDO1) OR (OLD.APELLIDO2 <> NEW.APELLIDO2)'
      '      OR  (OLD.SEXO <> NEW.SEXO)'
      
        '      OR  (F_DateNull(OLD.FECHA_NAC, "TOMORROW") <> F_DateNull(N' +
        'EW.FECHA_NAC, "TOMORROW"))'
      
        '      OR  (Coalesce(OLD.ADRESA, '#39'~'#39') <> Coalesce(NEW.ADRESA, '#39'~'#39 +
        '))'
      
        '      OR  (Coalesce(OLD.TELEFONO, '#39'~'#39') <> Coalesce(NEW.TELEFONO,' +
        ' '#39'~'#39'))'
      '      OR  (Coalesce(OLD.DNI, '#39'~'#39') <> Coalesce(NEW.DNI, '#39'~'#39'))'
      '      OR  (Coalesce(OLD.TSI, '#39'~'#39') <> Coalesce(NEW.TSI, '#39'~'#39'))'
      '      OR  (Coalesce(OLD.SOE, '#39'~'#39') <> Coalesce(NEW.SOE, '#39'~'#39'))'
      '      OR  (Coalesce(OLD.SNS, '#39'~'#39') <> Coalesce(NEW.SNS, '#39'~'#39'))'
      '      OR  (OLD.ESVIU <> NEW.ESVIU)'
      '      OR  (OLD.IDIOMA <> NEW.IDIOMA)'
      '      OR  (Coalesce(OLD.MORT, '#39'~'#39') <> Coalesce(NEW.MORT, '#39'~'#39'))'
      '      OR  (OLD.UNITAT <> NEW.UNITAT)'
      '         )'
      '      THEN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', NEW.NU' +
        'M_HIST, '#39'ADT_A31'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      ''
      ''
      
        '      /* Si canvien dades del pacient que afecten medicaci'#243', s'#39'h' +
        'a de notificar a Farmatools (M) */'
      '      '
      
        '      IF ((OLD.NOMBRE <> NEW.NOMBRE) OR (OLD.APELLIDO1 <> NEW.AP' +
        'ELLIDO1) OR (OLD.APELLIDO2 <> NEW.APELLIDO2)'
      '      OR  (OLD.SEXO <> NEW.SEXO)'
      
        '      OR  (F_DateNull(OLD.FECHA_NAC, "TOMORROW") <> F_DateNull(N' +
        'EW.FECHA_NAC, "TOMORROW"))'
      '      OR  (Coalesce(OLD.T_DOC, '#39'~'#39') <> Coalesce(NEW.T_DOC, '#39'~'#39'))'
      '      OR  (Coalesce(OLD.DNI, '#39'~'#39') <> Coalesce(NEW.DNI, '#39'~'#39'))'
      '      OR  (Coalesce(OLD.TSI, '#39'~'#39') <> Coalesce(NEW.TSI, '#39'~'#39'))'
      '         )'
      '      THEN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', NEW.NU' +
        'M_HIST, '#39'ADT_A31'#39', '#39'M'#39', '#39#39', '#39'M'#39');'
      ''
      '      IF (OLD.C_UNITATMEDICA <> NEW.C_UNITATMEDICA) THEN'
      '      BEGIN'
      '            /* Cancel'#183'lem UM anterior */'
      '            INFO = '#39'UM='#39'||OLD.C_UNITATMEDICA;'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', NEW.NU' +
        'M_HIST, '#39'ORU'#39', '#39'C'#39', :INFO, '#39'M'#39');'
      '                  '
      '            /* Enviem nova UM si no '#233's 0 */'
      '            IF (NEW.C_UNITATMEDICA <> 0)'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', ' +
        'NEW.NUM_HIST, '#39'ORU'#39', '#39'I'#39', '#39'UM'#39', '#39'M'#39');'
      '      END;'
      ''
      '      IF (OLD.UNITAT <> NEW.UNITAT) THEN'
      '      BEGIN'
      '            /* Cancel'#183'lem UA anterior */'
      '            INFO = '#39'UA='#39'||OLD.UNITAT;'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', NEW.NU' +
        'M_HIST, '#39'ORU'#39', '#39'C'#39', :INFO, '#39'M'#39');'
      ''
      
        '            /* Enviem UA encara que sigui 0 ja que si no hi ha a' +
        'quest indicador, FT no envia el consum */'
      '/*            /* Enviem nova UA si no '#233's 0'
      '            IF (NEW.UNITAT <> 0)'
      '            THEN */'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', ' +
        'NEW.NUM_HIST, '#39'ORU'#39', '#39'I'#39', '#39'UA'#39', '#39'M'#39');'
      '      END;'
      ''
      '   END;'
      'END'
      ''
      '')
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Position = 50
    Left = 40
    Top = 80
  end
  object T_AssGim_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_TIPUS SMALLINT;'
      'DECLARE VARIABLE OLD_FACTURABLE VARCHAR(1);'
      'DECLARE VARIABLE NEW_FACTURABLE VARCHAR(1);'
      'DECLARE VARIABLE INFO VARCHAR(100);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** SESSIONS DE REHABILITACI'#211' ***********/'
      ''
      
        '      /* Nom'#233's per a prestacions amb sessions ('#233's a dir, ambulat' +
        #242'ries, tipus 3 */'
      ''
      '      SELECT P.TIPUS'
      '      FROM   ASSISTENCIAGIMNAS A'
      '      JOIN   TRACTAMENTS T ON A.C_TRACTAMENT = T.C_TRACTAMENT'
      '      JOIN   PRESTACION  P ON T.C_PRESTACIO  = P.C_PRESTACIO'
      '      WHERE  A.C_ASSISTENCIA = NEW.C_ASSISTENCIA'
      '      INTO  :C_TIPUS;'
      ''
      '      IF (C_TIPUS = 3) THEN'
      '      BEGIN'
      
        '            /* Mirem  si el tipus d'#39'assist'#232'ncia indicat '#233's factu' +
        'rable */'
      
        '            SELECT FACTURABLE FROM CODISASSISTENCIA WHERE C_TIPU' +
        'SASS = OLD.C_TIPUSASS INTO :OLD_FACTURABLE;'
      
        '            SELECT FACTURABLE FROM CODISASSISTENCIA WHERE C_TIPU' +
        'SASS = NEW.C_TIPUSASS INTO :NEW_FACTURABLE;'
      ''
      
        '            IF (OLD_FACTURABLE IS NULL) THEN OLD_FACTURABLE = '#39'N' +
        #39';'
      
        '            IF (NEW_FACTURABLE IS NULL) THEN NEW_FACTURABLE = '#39'N' +
        #39';'
      ''
      
        '            /* Si el tipus d'#39'assist'#232'ncia passa a ser facturable,' +
        ' enviem activitat */'
      
        '            IF ((OLD_FACTURABLE = '#39'N'#39') AND (NEW_FACTURABLE = '#39'S'#39 +
        '))'
      
        '            THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'ASSISTENCIAG' +
        'IMNAS'#39', NEW.C_ASSISTENCIA, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '      '
      
        '            /* Si el tipus d'#39'assist'#232'ncia deixa de ser facturable' +
        ', cancel'#183'lem activitat */'
      
        '            ELSE IF ((OLD_FACTURABLE = '#39'S'#39') AND (NEW_FACTURABLE ' +
        '= '#39'N'#39')) THEN'
      '             BEGIN'
      
        '                  /* Enviem el C_Tractament per si s'#39'elimina la ' +
        'sessi'#243' (en "preparar dia") abans que s'#39'hagi processat el log */'
      
        '                  INFO = '#39'#C_TRACTAMENT#'#39' || F_StrNull(OLD.C_TRA' +
        'CTAMENT, '#39#39');'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'ASSISTENCIA' +
        'GIMNAS'#39', NEW.C_ASSISTENCIA, '#39'DFT_P03'#39', '#39'C'#39', :INFO, '#39'F'#39');'
      '            END;'
      ''
      
        '            /* Si canvia de tipus d'#39'assist'#232'ncia i era facturable' +
        ' i segueix sent-ho, enviem modificaci'#243' d'#39'activitat */'
      
        '            ELSE IF ((OLD.C_TIPUSASS <> NEW.C_TIPUSASS) AND (NEW' +
        '_FACTURABLE = '#39'S'#39'))'
      
        '            THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'ASSISTENCIAG' +
        'IMNAS'#39', NEW.C_ASSISTENCIA, '#39'DFT_P03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '      END'
      '   END;'
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Position = 50
    Left = 120
    Top = 248
  end
  object T_AssGim_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AD'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_TIPUS SMALLINT;'
      'DECLARE VARIABLE OLD_FACTURABLE VARCHAR(1);'
      'DECLARE VARIABLE INFO VARCHAR(100);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** SESSIONS DE REHABILITACI'#211' ***********/'
      ''
      
        '      /* Nom'#233's per a prestacions amb sessions ('#233's a dir, ambulat' +
        #242'ries, tipus 3 */'
      ''
      '      SELECT P.TIPUS'
      '      FROM   ASSISTENCIAGIMNAS A'
      '      JOIN   TRACTAMENTS T ON A.C_TRACTAMENT = T.C_TRACTAMENT'
      '      JOIN   PRESTACION  P ON T.C_PRESTACIO  = P.C_PRESTACIO'
      '      WHERE  A.C_ASSISTENCIA = OLD.C_ASSISTENCIA'
      '      INTO  :C_TIPUS;'
      ''
      '      IF (C_TIPUS <> 3) THEN'
      '      BEGIN'
      
        '            /* Mirem  si el tipus d'#39'assist'#232'ncia indicat era fact' +
        'urable */'
      
        '            SELECT FACTURABLE FROM CODISASSISTENCIA WHERE C_TIPU' +
        'SASS = OLD.C_TIPUSASS INTO :OLD_FACTURABLE;'
      ''
      
        '            /* Si era prestaci'#243' facturable, eliminem activitat *' +
        '/'
      '            IF (OLD_FACTURABLE = '#39'S'#39') THEN'
      '            BEGIN'
      
        '                  INFO = '#39'#C_TRACTAMENT#'#39' || F_StrNull(OLD.C_TRA' +
        'CTAMENT, '#39#39');'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'ASSISTENCIA' +
        'GIMNAS'#39', OLD.C_ASSISTENCIA, '#39'DFT_P03'#39', '#39'C'#39', :INFO, '#39'F'#39');'
      '            END;'
      '      END'
      '   END;'
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
    Accion1 = taDESPUES
    Accion2 = taDELETE
    Position = 50
    Left = 200
    Top = 248
  end
  object T_Tract_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AD'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAT_I INTEGER;'
      'DECLARE VARIABLE ENVIAT_V INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** ACTIVITAT DE TRACTAMENTS ***********/'
      ''
      
        '      /* En eliminar un tractament facturable, cancel'#183'lem l'#39'acti' +
        'vitat segons el tipus de prestaci'#243' */'
      '      /* AIX'#210' JA NO PASSA */'
      ''
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET = '#39'P150'#39' AND' +
        ' C_PRESTACIO = OLD.C_PRESTACIO INTO :ENVIAT_I;   /* Episodi */'
      
        '      SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET = '#39'P151'#39' AND' +
        ' C_PRESTACIO = OLD.C_PRESTACIO INTO :ENVIAT_V;   /* CE      */'
      ''
      '      IF (ENVIAT_I > 0)'
      
        '      THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS'#39', OLD.' +
        'C_TRACTAMENT, '#39'ADT_A11'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      ''
      '      IF (ENVIAT_V > 0)'
      
        '      THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS'#39', OLD.' +
        'C_TRACTAMENT, '#39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      '   END;'
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
    Accion1 = taDESPUES
    Accion2 = taDELETE
    Position = 50
    Left = 176
    Top = 136
  end
  object T_Interf_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /*********** MEDICACI'#211' DE PRIVATS ***********/'
      '      '
      '      IF (NEW.C_ESTATFAC = 15) THEN'
      '      BEGIN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERF'#39', NEW.PK, ' +
        #39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '            '
      '            NEW.ENVIAT_SAP = "S";'
      '      END;'
      '   END;'
      'END')
    Dic1 = wDataProductes.Interf
    Dic1Name = 'Interf'
    Abierta = False
    Borrame = False
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
    Position = 50
    Left = 40
    Top = 368
  end
  object T_Intercon_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_ORTESISLIN INTEGER;'
      'DECLARE VARIABLE DATA_PROVA   DATE;'
      'DECLARE VARIABLE UNESPA       CHAR(1);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /*********** REALITZACI'#211' DE PROVES INTERNES - EMG'
      
        '                                                    ECOS *******' +
        '****/'
      '                                           '
      
        '      /* Si REALITZEN una ECO o una EMG d'#39'un tractament UNESPA, ' +
        'enviem l'#39'activitat */'
      '      /* 26.2.2025: nom'#233's es factura si '#233's 1004 */'
      
        '      /* Aquestes proves no es poden anul'#183'lar un cop realitzades' +
        ', per tant, no cal fer res en cas d'#39'anul'#183'laci'#243' */'
      '      IF  ((NEW.C_TIPUS = '#39'ECOS'#39') OR (NEW.C_TIPUS = '#39'EMG'#39')) THEN'
      '      BEGIN'
      
        '            IF  ((OLD.DATA_PROVA IS NULL) AND (NEW.DATA_PROVA IS' +
        ' NOT NULL)) THEN'
      '            BEGIN'
      '                  SELECT C.ES_UNESPA'
      '                  FROM   TRACTAMENTS T'
      
        '                  JOIN   CLIENTS C ON C.C_CENTREFAC = T.C_CENTRE' +
        'FAC AND C.C_CLIENT = T.C_CLIENT'
      '                  WHERE  T.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    T.C_PRESTACIO = '#39'1004'#39
      '                  INTO  :UNESPA;'
      '                  '
      '                  IF (UNESPA IS NULL) THEN UNESPA = '#39'N'#39';'
      '                  '
      '                  IF (UNESPA = '#39'S'#39')'
      '                  THEN'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTER' +
        'CON'#39', NEW.C_INTERCON, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '            END;'
      '      END;'
      ''
      ''
      '      /*********** ANUL'#183'LACI'#211' D'#39'INTERCONSULTES - ORTESIS'
      
        '                                                 PROVES ESPECIAL' +
        'S'
      
        '                                                 BANC DE SANG   ' +
        '  ***********/'
      ''
      
        '      /* Si ANUL'#183'LEN LA INTERCONSULTA d'#39'una ORTESI, hem de cance' +
        'l'#183'lar les l'#237'nies d'#39'activitat de cada element enviat */'
      '      IF (NEW.C_TIPUS = '#39'ORTESIS'#39') THEN'
      '      BEGIN'
      ''
      
        '            IF ((NOT (OLD.ESTAT BETWEEN 80 AND 89)) AND (NEW.EST' +
        'AT BETWEEN 80 AND 89))'
      '            THEN'
      '                  FOR SELECT C_ORTESISLIN'
      '                      FROM   INTERCONORTESISLIN'
      '                      WHERE  C_INTERCON = NEW.C_INTERCON'
      '                      AND    ESTATFAC < 80'
      '                      INTO  :C_ORTESISLIN'
      '                  DO'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTER' +
        'CONORTESISLIN'#39', :C_ORTESISLIN, '#39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      '      END;'
      ''
      
        '      /* Si ANUL'#183'LEN LA INTERCONSULTA d'#39'una PROVA ESPECIAL envia' +
        'da (realitzada), hem de cancel'#183'lar l'#39'activitat enviada */'
      '      IF (NEW.C_TIPUS = '#39'PROVESP'#39') THEN'
      '      BEGIN'
      '      '
      
        '            IF ((NOT (OLD.ESTAT BETWEEN 80 AND 89)) AND (NEW.EST' +
        'AT BETWEEN 80 AND 89)) THEN'
      '            BEGIN'
      '                  SELECT DATA_PROVA'
      '                  FROM   INTERCONPROVAESP'
      '                  WHERE  C_INTERCON = NEW.C_INTERCON'
      '                  INTO  :DATA_PROVA;'
      ''
      '                  IF (DATA_PROVA IS NOT NULL)'
      '                  THEN'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTER' +
        'CONPROVAESP'#39', NEW.C_INTERCON, '#39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      '            END;'
      '      END;'
      ''
      
        '      /* Si ANUL'#183'LEN LA INTERCONSULTA d'#39'una sol'#183'licitud al BANC ' +
        'DE SANG, hem de cancel'#183'lar l'#39'activitat enviada (de cada producte' +
        ' sol'#183'licitat) */'
      '      IF (NEW.C_TIPUS = '#39'BANCSANG'#39') THEN'
      '      BEGIN'
      ''
      '            IF ((OLD.ESTAT <> 100) AND (NEW.ESTAT = 100))'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'BANCSANG'#39', ' +
        'NEW.C_INTERCON, '#39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      '      END;'
      '      '
      '      /*********** REACTIVACI'#211' D'#39'INTERCONSULTES - ORTESIS'
      
        '                                                  PROVES ESPECIA' +
        'LS ***********/'
      ''
      
        '      /* Si REACTIVEN UNA INTERCONSULTA d'#39'una ORTESI no gestiona' +
        'da per Admissions, hem de tornar a enviar les l'#237'nies d'#39'activitat' +
        ' de cada element */'
      '      IF (NEW.C_TIPUS = '#39'ORTESIS'#39') THEN'
      '      BEGIN'
      ''
      
        '            IF ((OLD.ESTAT BETWEEN 80 AND 89) AND (NOT (NEW.ESTA' +
        'T BETWEEN 80 AND 89)))'
      '            THEN'
      '                  FOR SELECT C_ORTESISLIN'
      '                      FROM   INTERCONORTESISLIN'
      '                      WHERE  C_INTERCON = NEW.C_INTERCON'
      '                      AND    ESTATFAC < 80'
      '                      INTO  :C_ORTESISLIN'
      '                  DO'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTER' +
        'CONORTESISLIN'#39', :C_ORTESISLIN, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '      END;'
      ''
      
        '      /* Si REACTIVEN LA INTERCONSULTA d'#39'una PROVA ESPECIAL ANUL' +
        #183'LADA, hem de tornar a enviar l'#39'activitat (si la prova est'#224' real' +
        'itzada) */'
      '      IF (NEW.C_TIPUS = '#39'PROVESP'#39') THEN'
      '      BEGIN'
      ''
      
        '            IF ((OLD.ESTAT BETWEEN 80 AND 89) AND (NOT (NEW.ESTA' +
        'T BETWEEN 80 AND 89))) THEN'
      '            BEGIN'
      '                  SELECT DATA_PROVA'
      '                  FROM   INTERCONPROVAESP'
      '                  WHERE  C_INTERCON = NEW.C_INTERCON'
      '                  INTO  :DATA_PROVA;'
      ''
      '                  IF (DATA_PROVA IS NOT NULL)'
      '                  THEN'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTER' +
        'CONPROVAESP'#39', NEW.C_INTERCON, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '            END;'
      '      END;'
      ''
      '      '
      ''
      '   END;'
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 40
    Top = 440
  end
  object InterconOrtesisLin_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ESTAT INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /*********** ORTESIS ***********/'
      '      '
      
        '      /* Si la ortesi no est'#224' anul'#183'lada i canvia alguna dada de ' +
        'l'#39'ortesi (l'#237'nies - elements),'
      '         tornem a enviar l'#39'activitat */'
      
        '      SELECT ESTAT FROM INTERCON WHERE C_INTERCON = NEW.C_INTERC' +
        'ON INTO :ESTAT;'
      ''
      
        '      /* Excepte si el canvi '#233's que passa a "facturat" (que vol ' +
        'dir que ve de SAP */'
      
        '      IF ((OLD.ESTATFAC <> 80) AND (NEW.ESTATFAC = 80)) THEN EST' +
        'AT = 88;'
      '      '
      '      IF ((ESTAT < 80) OR (ESTAT > 89))'
      '      THEN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONORTESISLI' +
        'N'#39', NEW.C_ORTESISLIN, '#39'DFT_P03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '   END;'
      'END')
    Dic1 = wDataOrtesis.InterconOrtesisLin
    Dic1Name = 'InterconOrtesisLin'
    Abierta = False
    Borrame = False
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
    Left = 252
    Top = 440
  end
  object InterconOrtesisLin_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AD'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ESTAT INTEGER;'
      'DECLARE VARIABLE INFO VARCHAR(40);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /*********** ORTESIS ***********/'
      ''
      
        '      /* Si eliminen un registre de les l'#237'nies d'#39'ortesi no anul'#183 +
        'lada, cancel'#183'lem l'#39'activitat */'
      
        '      SELECT ESTAT FROM INTERCON WHERE C_INTERCON = OLD.C_INTERC' +
        'ON INTO :ESTAT;'
      ''
      '      IF ((ESTAT < 80) OR (ESTAT > 89)) THEN'
      '      BEGIN'
      '      '
      
        '            /* Guardem el tipus d'#39'ortesi al camp INFO per poder ' +
        'decidir si '#233's OI, OT o O */'
      '            SELECT TIPUSORTESIS'
      '            FROM   CODIORTESIS'
      '            WHERE  C_ORTESIS = OLD.C_ORTESIS'
      '            INTO  :INFO;'
      '      '
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONORTESISLI' +
        'N'#39', OLD.C_ORTESISLIN, '#39'DFT_P03'#39', '#39'C'#39', :INFO, '#39'F'#39');'
      '      END;'
      ''
      
        '      /* Podr'#237'em comprovar que no estigui facturat, per'#242' no han ' +
        'de podar tocar una ortesis ja facturada.'
      
        '         Si enviem a SAP una cancel'#183'laci'#243' que ja s'#39'havia factura' +
        't, petar'#224' => Ser'#224' una manera d'#39'assabentar-nos-en */'
      ''
      '   END;'
      'END')
    Dic1 = wDataOrtesis.InterconOrtesisLin
    Dic1Name = 'InterconOrtesisLin'
    Abierta = False
    Borrame = False
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
    Left = 368
    Top = 440
  end
  object P_Interf_SCS: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HL7_SCS'
    ForceNombreDB = False
    Body.Strings = (
      '(FINS DATE)'
      'AS'
      'DECLARE VARIABLE EXERCICI INTEGER;'
      'DECLARE VARIABLE DES_DE   VARCHAR(10);'
      'DECLARE VARIABLE PK       INTEGER;'
      'BEGIN'
      ''
      '      /*********** MEDICACI'#211' DEL SCS ***********/'
      '      '
      
        '      /* A partir de mar'#231', no es pot facturar medicaci'#243' de l'#39'exe' +
        'rcici anterior */'
      
        '      IF ((F_MONTH("TODAY") <= 2) AND (F_DAYOFMONTH("TODAY") <= ' +
        '10))'
      '      THEN EXERCICI = F_YEAR("TODAY") -1;'
      '      ELSE EXERCICI = F_YEAR("TODAY");'
      '      '
      '      DES_DE = "1.1." || EXERCICI;'
      ''
      '      FOR SELECT PK'
      '          FROM   INTERF'
      '          WHERE  C_ESTATFAC = 10'
      '          AND    DATA >= :DES_DE'
      '          AND    DATA < :FINS + 1'
      '          AND    ENVIAT_SAP = "N"'
      '          INTO  :PK'
      '      DO BEGIN'
      ''
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERF'#39', :PK, '#39'DF' +
        'T_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '                  '
      '            UPDATE INTERF SET ENVIAT_SAP = "S" WHERE PK = :PK;'
      '      END;'
      'END'
      '')
    Dic1 = wDataProductes.Interf
    Dic1Name = 'Interf'
    Abierta = False
    Borrame = False
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
    Top = 368
  end
  object T_BQuirurgic_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_BU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_SAP CHAR(1);'
      'DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      'DECLARE VARIABLE C_CENTREFAC VARCHAR(2);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      
        '      /*********** INTERVENCIONS QUIR'#218'RGIQUES FETES A PACIENTS I' +
        'NGRESSATS ***********/'
      ''
      
        '      /* Si es mofifica el C_Tractament, l'#39'estat de la intervenc' +
        'i'#243' o si s'#39'ha realitzat,'
      '         hem de mirar si s'#39'ha d'#39'enviar l'#39'activitat */'
      '         '
      '      IF (NEW.ENVIAT_SAP IS NULL) THEN NEW.ENVIAT_SAP = '#39'N'#39';'
      '      '
      '      ENVIAR_SAP = '#39'N'#39';'
      '      '
      '      /* Busquem les dades del tractament associat */'
      '      IF (NEW.C_TRACTAMENT IS NOT NULL)'
      '      THEN BEGIN'
      
        '            SELECT C_PRESTACIO FROM TRACTAMENTS WHERE C_TRACTAME' +
        'NT = NEW.C_TRACTAMENT INTO :C_PRESTACIO;'
      ''
      
        '            /* Enviarem les IQ de pacients ingressats, que s'#39'hag' +
        'in realitzat i no estiguin anul'#183'lades */'
      '            IF ((C_PRESTACIO = '#39'1004'#39')'
      '            AND (NEW.DATA_ENTRADA IS NOT NULL)'
      '            AND (NEW.ESTAT <> 40)'
      '            AND (NEW.REALITZADA = '#39'S'#39'))'
      '            THEN ENVIAR_SAP = '#39'S'#39';'
      '      END;'
      ''
      
        '      /* Si s'#39'ha d'#39'enviar a SAP i encara no s'#39'ha enviat, generem' +
        ' missatge d'#39'activitat */'
      '      IF ((ENVIAR_SAP = '#39'S'#39') AND (NEW.ENVIAT_SAP = '#39'N'#39')) THEN'
      '      BEGIN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'BQUIRURGIC'#39', NEW.' +
        'C_INTERV, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '            '
      '            NEW.ENVIAT_SAP = '#39'S'#39';'
      '      END;'
      ''
      
        '      /* Si no s'#39'ha d'#39'enviar a SAP i ja s'#39'havia enviat, generem ' +
        'missatge de cancel'#183'laci'#243' */'
      
        '      ELSE IF ((ENVIAR_SAP = '#39'N'#39') AND (NEW.ENVIAT_SAP = '#39'S'#39')) TH' +
        'EN'
      '      BEGIN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'BQUIRURGIC'#39', NEW.' +
        'C_INTERV, '#39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      ''
      '            NEW.ENVIAT_SAP = '#39'N'#39';'
      '      END;'
      '   END;'
      'END')
    Dic1 = wDataBlocQuirurgic.BQuirurgic
    Dic1Name = 'BQuirurgic'
    Abierta = False
    Borrame = False
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
    Position = 50
    Left = 40
    Top = 308
  end
  object InterconOrtesisLin_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ESTAT INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /*********** ORTESIS ***********/'
      '      '
      '      /* Si la ortesi no est'#224' anul'#183'lada,'
      '         enviem la l'#237'nia d'#39'activitat de l'#39'element insertat */'
      
        '      SELECT ESTAT FROM INTERCON WHERE C_INTERCON = NEW.C_INTERC' +
        'ON INTO :ESTAT;'
      ''
      '      IF ((ESTAT < 80) OR (ESTAT > 89))'
      '      THEN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONORTESISLI' +
        'N'#39', NEW.C_ORTESISLIN, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      ''
      '   END;'
      'END')
    Dic1 = wDataOrtesis.InterconOrtesisLin
    Dic1Name = 'InterconOrtesisLin'
    Abierta = False
    Borrame = False
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
    Left = 140
    Top = 440
  end
  object T_TDI_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** TARGETES SANIT'#192'RIES ***********/'
      ''
      
        '      /* En modificar una targeta sanit'#224'ria enviem modificaci'#243' d' +
        'e dades de pacient a SAP-Facturaci'#243' */'
      '      IF ((OLD.TDI <> NEW.TDI) OR (OLD.CDI <> NEW.CDI))'
      
        '      THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', NEW.C_H' +
        'ISTORIA, '#39'ADT_A31'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '   END;'
      'END')
    Dic1 = wDataBasics.Fili_TDI
    Dic1Name = 'FILI_TDI'
    Abierta = False
    Borrame = False
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
    Position = 50
    Left = 326
    Top = 80
  end
  object T_TDI_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '    '
      '      /*********** TARGETES SANIT'#192'RIES ***********/'
      '      '
      
        '      /* En insertar una targeta sanit'#224'ria, enviem modificaci'#243' d' +
        'e dades de pacient a SAP-Facturaci'#243' */'
      
        '      EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', NEW.C_HISTOR' +
        'IA, '#39'ADT_A31'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '   END;'
      'END'
      '')
    Dic1 = wDataBasics.Fili_TDI
    Dic1Name = 'FILI_TDI'
    Abierta = False
    Borrame = False
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
    Position = 50
    Left = 264
    Top = 80
  end
  object T_TDI_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AD'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** TARGETES SANIT'#192'RIES ***********/'
      ''
      
        '      /* En eliminar una targeta sanit'#224'ria, enviem modificaci'#243' d' +
        'e dades de pacient a SAP-Facturaci'#243' */'
      
        '      EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIACIO'#39', OLD.C_HISTOR' +
        'IA, '#39'ADT_A31'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '   END;'
      'END')
    Dic1 = wDataBasics.Fili_TDI
    Dic1Name = 'FILI_TDI'
    Abierta = False
    Borrame = False
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
    Position = 50
    Left = 392
    Top = 80
  end
  object T_BancSang_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /* BANC DE SANG */'
      '      '
      
        '      /* Quan realitzen la transfusi'#243', ho notifiquem i enviem la' +
        ' data de la transfusi'#243' */'
      '      /* Si '#233's no realitzada, tamb'#233' ho notifiquem */'
      
        '      IF ((OLD.TRANSFUSIO IS NULL) AND (NEW.TRANSFUSIO IS NOT NU' +
        'LL))'
      '      THEN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'BANCSANG'#39', NEW.C_' +
        'INTERCON, '#39'DFT_P03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '      '
      '   END;'
      'END')
    Dic1 = wDataIntercon.BancSang
    Dic1Name = 'BancSang'
    Abierta = False
    Borrame = False
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
    Left = 252
    Top = 496
  end
  object T_ProvaEsp_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ESTAT INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /*********** PROVES ESPECIALS ***********/'
      '      '
      '      /* Si la prova no est'#224' anul'#183'lada,'
      
        '         enviem o modifiquem l'#39'ativitat si la prova s'#39'ha realitz' +
        'at i la cancel'#183'lem altrament */'
      
        '      /* Agafem la data_prova de la taula INTERCONPROVAESP (de f' +
        'et aquesta sobreescriu la de la taula INTERCON) */'
      ''
      
        '      SELECT ESTAT FROM INTERCON WHERE C_INTERCON = NEW.C_INTERC' +
        'ON INTO :ESTAT;'
      '      '
      '      IF ((ESTAT < 80) OR (ESTAT > 89)) THEN'
      '      BEGIN'
      
        '            /* Si posen la data de la prova, enviem l'#39'activitat ' +
        '*/'
      
        '            IF ((OLD.DATA_PROVA IS NULL) AND (NEW.DATA_PROVA IS ' +
        'NOT NULL))'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONPRO' +
        'VAESP'#39', NEW.C_INTERCON, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      ''
      
        '            /* Si treuen la data de la prova, cancel'#183'lem l'#39'activ' +
        'itat */'
      
        '            ELSE IF ((NEW.DATA_PROVA IS NULL) AND (OLD.DATA_PROV' +
        'A IS NOT NULL))'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONPRO' +
        'VAESP'#39', NEW.C_INTERCON, '#39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      ''
      
        '            /* Si modifiquen alguna dada i la prova est'#224' realitz' +
        'ada, enviem la modificaci'#243' */'
      '            ELSE IF (NEW.DATA_PROVA IS NOT NULL)'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONPRO' +
        'VAESP'#39', NEW.C_INTERCON, '#39'DFT_P03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '      END;'
      '   END;'
      'END')
    Dic1 = wDataIntercon.ProvaEsp
    Dic1Name = 'InterconProvaEsp'
    Abierta = False
    Borrame = False
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
    Left = 492
    Top = 440
  end
  object T_BancSang_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE PK_STRING    VARCHAR(40);'
      'BEGIN'
      ''
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /* BANC DE SANG */'
      ''
      
        '      EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'BANCSANG'#39', NEW.C_INTERC' +
        'ON, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      ''
      '   END;'
      'END')
    Dic1 = wDataIntercon.BancSang
    Dic1Name = 'BancSang'
    Abierta = False
    Borrame = False
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
    Left = 140
    Top = 496
  end
  object P_Activitat_H: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HL7_ACTIVITAT_H'
    ForceNombreDB = False
    Body.Strings = (
      '(QUE CHAR(1), ENTORN VARCHAR(4))'
      'AS'
      'DECLARE VARIABLE E            CHAR(1);'
      'DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'DECLARE VARIABLE C_PRESTACIO  VARCHAR(4);'
      'DECLARE VARIABLE DATA_ALTA    DATE;'
      'DECLARE VARIABLE ENVIAR_I     INTEGER;'
      'DECLARE VARIABLE ENVIAR_V     INTEGER;'
      'DECLARE VARIABLE ENVIAR_A     INTEGER;'
      'DECLARE VARIABLE C_ORTESISLIN INTEGER;'
      'DECLARE VARIABLE C_INTERCON   INTEGER;'
      'DECLARE VARIABLE C_INTERV     INTEGER;'
      'BEGIN'
      ''
      '      IF (ENTORN = '#39'TEST'#39') THEN E = '#39'T'#39';'
      '                           ELSE E = '#39'F'#39';'
      ''
      
        '      /*********** TRACTAMENTS DEL DARRER ANY CORRESPONENTS A PR' +
        'ESTACIONS FACTURABLES ***********/'
      '      '
      '      IF ((QUE = '#39'*'#39') OR (QUE = '#39'T'#39') OR (QUE = '#39'A'#39')) THEN'
      '      BEGIN'
      '      '
      '            FOR SELECT C_TRACTAMENT, C_PRESTACIO, DATA_ALTA'
      '                FROM   TRACTAMENTS'
      
        '                WHERE (DATA_ALTA >= '#39'1.1.2016'#39' OR DATA_ALTA IS N' +
        'ULL)'
      '                INTO  :C_TRACTAMENT, :C_PRESTACIO, :DATA_ALTA'
      '            DO BEGIN'
      '          '
      
        '                  SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET ' +
        '= '#39'P150'#39' AND C_PRESTACIO = :C_PRESTACIO INTO :ENVIAR_I;   /* Epi' +
        'sodi      */'
      
        '                  SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET ' +
        '= '#39'P151'#39' AND C_PRESTACIO = :C_PRESTACIO INTO :ENVIAR_V;   /* CE ' +
        '          */'
      ''
      '                  /* Episodis */'
      '                  IF (ENVIAR_I > 0) THEN'
      '                  BEGIN'
      '                        IF ((QUE = '#39'T'#39') OR (QUE = '#39'*'#39'))'
      
        '                        THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39 +
        'TRACTAMENTS'#39', :C_TRACTAMENT, '#39'ADT_A01'#39', '#39'I'#39', '#39#39', :E);'
      ''
      '                        /* Si t'#233' data d'#39'alta, enviem l'#39'alta */'
      '                        IF (DATA_ALTA IS NOT NULL)'
      '                        THEN'
      
        '                              EXECUTE PROCEDURE P_HL7_LOG_ANOTA(' +
        #39'TRACTAMENTS'#39', :C_TRACTAMENT, '#39'ADT_A03'#39', '#39'I'#39', '#39#39', :E);'
      '                  END;'
      ''
      '                  /* CE */'
      '                  ELSE IF (ENVIAR_V > 0)'
      '                  THEN'
      '                        IF ((QUE = '#39'T'#39') OR (QUE = '#39'*'#39'))'
      
        '                        THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39 +
        'TRACTAMENTS'#39', :C_TRACTAMENT, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', :E);'
      '            END;'
      '            '
      '      END;'
      '      '
      '      '
      '      /*********** ORTESIS EN DANSA ***********/'
      
        '      /* L'#39'Oriol marcar'#224' al missatge si alguna de les coses est'#224 +
        ' facturada (enviar'#224' l'#39'estat de facturaci'#243') */'
      '      '
      '      IF ((QUE = '#39'*'#39') OR (QUE = '#39'O'#39')) THEN'
      '      BEGIN'
      '      '
      '            /* Pendents de facturar o d'#39'aportaci'#243' pacient */'
      '            FOR SELECT DISTINCT O.C_ORTESISLIN'
      '                FROM   INTERCONORTESISLIN O'
      '                JOIN   INTERCON I ON O.C_INTERCON = I.C_INTERCON'
      '                WHERE  NOT (I.ESTAT BETWEEN 80 AND 89)'
      '                AND    NOT (O.ESTATFAC BETWEEN 50 AND 59)'
      
        '                AND  ((O.ESTATFAC BETWEEN 10 AND 29) OR (O.C_EST' +
        'ATFAC2 BETWEEN 10 AND 29))'
      '                INTO  :C_ORTESISLIN'
      '            DO'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONORT' +
        'ESISLIN'#39', :C_ORTESISLIN, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', :E);'
      ''
      
        '            /* Pendents de cobrar                 - NO. ES COBRA' +
        'RAN A IG -'
      '            FOR SELECT DISTINCT L.C_ORTESISLIN'
      '                FROM   FACLIN L'
      '                JOIN   FACCAP F ON L.C_FACTURA = F.C_FACTURA'
      '                WHERE  F.C_ESTATCOBRO = 10'
      '                AND    L.ORIGEN LIKE "O%"'
      '                INTO :C_ORTESISLIN'
      '            DO'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONORT' +
        'ESISLIN'#39', :C_ORTESISLIN, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', :E);'
      '            */'
      '                  '
      '      END;'
      ''
      
        '      /*********** PROVES ESPECIALS PENDENTS DE FACTURAR *******' +
        '****/'
      '      '
      '      IF ((QUE = '#39'*'#39') OR (QUE = '#39'P'#39')) THEN'
      '      BEGIN'
      '      '
      '            FOR SELECT P.C_INTERCON'
      '                FROM   INTERCONPROVAESP P'
      '                JOIN   INTERCON I ON P.C_INTERCON = I.C_INTERCON'
      '                WHERE  P.DATA_PROVA IS NOT NULL'
      '                AND    I.ESTAT < 80'
      '                AND    P.ESTATFAC < 50'
      '                INTO  :C_INTERCON'
      '            DO'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONPRO' +
        'VAESP'#39', :C_INTERCON, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', :E);'
      '                  '
      '      END;'
      ''
      
        '      /*********** INTERVENCIONS QUIR'#218'RGIQUES DURANT HOSPITALITZ' +
        'ACI'#211' PENDENTS DE FACTURAR (PRIVADES) ***********/'
      ''
      
        '      /* (**) Mentre no facturem a SAP encara funciona el trigge' +
        'r que'
      
        '              posa l'#39'estat de facturaci'#243' de la intervenci'#243' en fu' +
        'nci'#243' del centre de facturaci'#243' */'
      '      '
      '      IF ((QUE = '#39'*'#39') OR (QUE = '#39'Q'#39')) THEN'
      '      BEGIN'
      '      '
      '            FOR SELECT B.C_INTERV'
      '                FROM   BQUIRURGIC B'
      
        '                JOIN   TRACTAMENTS T ON B.C_TRACTAMENT = T.C_TRA' +
        'CTAMENT'
      
        '                WHERE  T.C_PRESTACIO = '#39'1004'#39'                   ' +
        '        /* IQ fetes durant un ingr'#233's */'
      
        '                AND    B.DATA_ENTRADA IS NOT NULL               ' +
        '        /* amb data d'#39'entrada a quir'#242'fan introdu'#239'da */'
      
        '                AND    B.ESTAT <> 40                            ' +
        '        /* no anul'#183'lades */'
      
        '                AND    B.REALITZADA = '#39'S'#39'                       ' +
        '        /* realitzaades */'
      
        '                AND   (B.ENVIAT_SAP = '#39'N'#39' OR B.ENVIAT_SAP IS NUL' +
        'L)      /* que encara no s'#39'hagin enviat a SAP */'
      
        '                AND    B.C_ESTATFAC = 10                        ' +
        '        /* pendents de facturar (**) */'
      '                INTO  :C_INTERV'
      '            DO BEGIN'
      '            '
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'BQUIRURGIC'#39 +
        ', :C_INTERV, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', :E);'
      ''
      
        '                  UPDATE BQUIRURGIC SET ENVIAT_SAP = '#39'S'#39' WHERE C' +
        '_INTERV = :C_INTERV;'
      '            END;'
      '            '
      '      END;'
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
    Left = 392
    Top = 16
  end
  object T_DispCap_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_BU'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /* DESEMBRE 2022: Tots s'#39'enviaran al moment'
      '      '
      '      /*********** ESTOCS DE PACIENTS PRIVATS ***********'
      ''
      
        '      /* Els del SCS s'#39'envien de cop a petici'#243', via una procedur' +
        'e'
      '      IF (NEW.C_CENTREFAC <> '#39'04'#39') THEN'
      '      BEGIN'
      ''
      '      */'
      
        '            /* Si confirmen la dispensaci'#243', s'#39'ha d'#39'enviar l'#39'acti' +
        'vitat */'
      '            '
      
        '            /* Hi ha un trigger que passa estatfac de 0 a 10 en ' +
        'confirmar. Com que tots s'#243'n BeforeUpdate, no pilla el 0 anterior'
      '               => asterisquem la condici'#243' old.c_estatfac = 0 */'
      '            /* Febrer 2019:'
      
        '               Trec l'#39'actualitzaci'#243' de C_EstatFac del trigger. H' +
        'o fem per codi: en Confirmar es posa estat 10 i en Desconfirmar ' +
        '0 (default=0)'
      '               => desasterisco la condici'#243' old.c_estatfac = 0 */'
      '            IF (((OLD.C_ESTATFAC = 0) OR (OLD.C_ESTATFAC = 50))'
      '            AND (NEW.C_ESTATFAC = 10)'
      '            AND (NEW.ENVIAT_SAP = '#39'N'#39')) THEN'
      '            BEGIN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'DISPCAP'#39', N' +
        'EW.C_DISP, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '                  '
      '                  NEW.ENVIAT_SAP = '#39'S'#39';'
      '                  NEW.C_ESTATFAC = 80;'
      '            END;'
      ''
      
        '            /* NO LA PODRAN DESCONFIRMAR PERQU'#200' JA L'#39'HAUREM MARC' +
        'AT COM A FACTURADA */'
      
        '            /* Si la desconfirmen, s'#39'ha de cancel'#183'lar l'#39'activita' +
        't'
      
        '            ELSE IF ((OLD.C_ESTATFAC = 10) AND (NEW.C_ESTATFAC =' +
        ' 0) AND (NEW.ENVIAT_SAP = '#39'S'#39')) THEN'
      '            BEGIN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'DISPCAP'#39', N' +
        'EW.C_DISP, '#39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      ''
      '                  NEW.ENVIAT_SAP = '#39'N'#39';'
      '            END;'
      '            */'
      ''
      '      /* END; */'
      '   END;'
      'END')
    Dic1 = wDataProductes.DispCap
    Dic1Name = 'DispCap'
    Abierta = False
    Borrame = False
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
    Left = 320
    Top = 368
  end
  object P_DispCap_SCS: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HL7_SCS'
    ForceNombreDB = False
    Body.Strings = (
      '(FINS DATE)'
      'AS'
      'DECLARE VARIABLE EXERCICI INTEGER;'
      'DECLARE VARIABLE DES_DE VARCHAR(10);'
      'DECLARE VARIABLE C_DISP INTEGER;'
      'BEGIN'
      ''
      '      /*********** ESTOCS DEL SCS ***********/'
      ''
      '      /* Els estocs de pacients privats s'#39'envien online */'
      '      '
      
        '      /* A partir de febrer, no es poden facturar estocs de l'#39'ex' +
        'ercici anterior */'
      
        '      IF ((F_MONTH("TODAY") = 1) AND (F_DAYOFMONTH("TODAY") <= 1' +
        '0))'
      '      THEN EXERCICI = F_YEAR("TODAY") -1;'
      '      ELSE EXERCICI = F_YEAR("TODAY");'
      ''
      '      DES_DE = "1.1." || EXERCICI;'
      '      '
      
        '      /* Enviem totes les dispensacions confirmades (pendents de' +
        ' facturar) del SCS que encara no hagin estat enviades */'
      '      FOR SELECT C_DISP'
      '          FROM   DISPCAP'
      '          WHERE  C_CENTREFAC = "04"'
      '          AND    C_ESTATFAC = 10'
      '          AND    CONFIRMAT >= :DES_DE'
      '          AND    CONFIRMAT <  :FINS + 1'
      '          AND    ENVIAT_SAP = "N"'
      '          INTO  :C_DISP'
      '      DO BEGIN'
      ''
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'DISPCAP'#39', :C_DISP' +
        ', '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      ''
      
        '            /* Marquem la cap'#231'alera com a enviada i com a factur' +
        'ada (perqu'#232' no puguin modificar aquest estoc) */'
      
        '            UPDATE DISPCAP SET ENVIAT_SAP = "S", DATA_SAP = "NOW' +
        '", C_ESTATFAC = 80 WHERE C_DISP = :C_DISP;'
      '      END;'
      '      '
      'END'
      '')
    Dic1 = wDataProductes.DispCap
    Dic1Name = 'DispCap'
    Abierta = False
    Borrame = False
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
    Top = 368
  end
  object T_Garant_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      'DECLARE VARIABLE ENVIAR_I INTEGER;'
      'DECLARE VARIABLE ENVIAR_V INTEGER;'
      'DECLARE VARIABLE C_ORTESISLIN INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** CANVIS EN EL GARANT ***********/'
      ''
      
        '      /* En modificar les dades d'#39'un garant, enviem els canvis p' +
        'er TOTS ELS TRACTAMENTS PENDENTS DE FACTURAR que el tinguin assi' +
        'gnat */'
      '      FOR SELECT C_TRACTAMENT, C_PRESTACIO'
      '          FROM   TRACTAMENTS'
      '          WHERE  ID_GARANT = NEW.ID_GARANT'
      '          AND    C_ESTATFAC < 80'
      '          INTO  :C_TRACTAMENT, :C_PRESTACIO'
      '      DO BEGIN'
      ''
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET = '#39'P15' +
        '0'#39' AND C_PRESTACIO = :C_PRESTACIO INTO :ENVIAR_I;   /* Episodi *' +
        '/'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_DRET = '#39'P15' +
        '1'#39' AND C_PRESTACIO = :C_PRESTACIO INTO :ENVIAR_V;   /* CE      *' +
        '/'
      ''
      '            IF (ENVIAR_I > 0)'
      
        '            THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS'#39 +
        ', :C_TRACTAMENT, '#39'ADT_A01'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      ''
      '            IF (ENVIAR_V > 0)'
      
        '            THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS'#39 +
        ', :C_TRACTAMENT, '#39'DFT_P03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '      END;'
      ''
      
        '      /* En modificar les dades d'#39'un garant, enviem els canvis p' +
        'er TOTES LES ORTESIS PENDENTS DE FACTURAR que el tinguin assigna' +
        't */'
      '      FOR SELECT C_ORTESISLIN'
      '          FROM   INTERCONORTESISLIN'
      '          WHERE  ID_GARANT = NEW.ID_GARANT'
      '          AND    ESTATFAC < 80'
      '          INTO  :C_ORTESISLIN'
      '      DO'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERCONORTESISLI' +
        'N'#39', :C_ORTESISLIN, '#39'DFT_P03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      ''
      '   END;'
      'END')
    Dic1 = wDataAdmisio.Garants
    Dic1Name = 'Garants'
    Abierta = False
    Borrame = False
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
    Position = 50
    Left = 360
    Top = 136
  end
  object P_Activitat_F: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HL7_ACTIVITAT_F'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS ('
      '  C_ACTIVITAT     VARCHAR(15),'
      '  DATA_CREA       DATE,'
      '  DATA_FACTU      DATE,'
      '  ORIGEN          VARCHAR(15),'
      '  C_HISTORIA      INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      '  PK_STOCK        INTEGER,'
      '  C_ORTESISLIN    INTEGER,'
      '  PK_INTERF       INTEGER,'
      '  C_INTERV        INTEGER,'
      '  C_PRESTACIO     VARCHAR(4),'
      '  C_INTERCON      INTEGER'
      ')'
      'AS'
      'BEGIN'
      ''
      
        '      /* Notifiquem l'#39'activitat ja facturada al sistema antic du' +
        'rant el darrer mes */'
      
        '      FOR SELECT C.DATA_CREA, C.DATA_FACTU, L.ORIGEN, L.C_HISTOR' +
        'IA, L.C_TRACTAMENT, L.PK_STOCK, L.C_ORTESISLIN, L.PK_INTERF, L.C' +
        '_INTERV, L.C_PRESTACIO, L.C_INTERCON'
      '          FROM   FACCAP C'
      '          JOIN   FACLIN L ON C.C_FACTURA = L.C_FACTURA'
      '          WHERE  C.DATA_FACTU BETWEEN :DATAINI AND :DATAFI'
      '          AND    C.C_ESTATCOBRO <> 50  /* factura abonada */'
      '          AND    C.C_ESTATCOBRO <> 55  /* factura anul'#183'lada */'
      '          ORDER  BY C.DATA_CREA'
      
        '          INTO   :DATA_CREA, :DATA_FACTU, :ORIGEN, :C_HISTORIA, ' +
        ':C_TRACTAMENT, :PK_STOCK, :C_ORTESISLIN, :PK_INTERF, :C_INTERV, ' +
        ':C_PRESTACIO, :C_INTERCON'
      '      DO BEGIN'
      ''
      '            C_ACTIVITAT = '#39#39';'
      '            '
      
        '            IF ((ORIGEN = '#39'O'#39') OR (ORIGEN = '#39'OI'#39') OR (ORIGEN = '#39 +
        'OT'#39')) THEN C_ACTIVITAT = "O" || C_ORTESISLIN;'
      
        '            ELSE IF  (ORIGEN = '#39'OA'#39') THEN C_ACTIVITAT = "A" || C' +
        '_ORTESISLIN;'
      
        '            ELSE IF (ORIGEN = '#39'T'#39') THEN C_ACTIVITAT = "T" || C_T' +
        'RACTAMENT;'
      
        '            ELSE IF (ORIGEN = '#39'S'#39') THEN C_ACTIVITAT = "S" || PK_' +
        'STOCK;'
      ''
      '            SUSPEND;'
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
    Left = 472
    Top = 16
  end
  object T_AssGim_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_TIPUS SMALLINT;'
      'DECLARE VARIABLE NEW_FACTURABLE VARCHAR(1);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** SESSIONS DE REHABILITACI'#211' ***********/'
      '      '
      
        '      /* Si el tipus d'#39'assist'#232'ncia inserit '#233's facturable, enviem' +
        ' activitat */'
      
        '      /* Nom'#233's per a prestacions amb sessions ('#233's a dir, ambulat' +
        #242'ries, tipus 3 */'
      '      '
      '      SELECT P.TIPUS'
      '      FROM   ASSISTENCIAGIMNAS A'
      '      JOIN   TRACTAMENTS T ON A.C_TRACTAMENT = T.C_TRACTAMENT'
      '      JOIN   PRESTACION  P ON T.C_PRESTACIO  = P.C_PRESTACIO'
      '      WHERE  A.C_ASSISTENCIA = NEW.C_ASSISTENCIA'
      '      INTO  :C_TIPUS;'
      '      '
      '      IF (C_TIPUS = 3) THEN'
      '      BEGIN'
      
        '            SELECT FACTURABLE FROM CODISASSISTENCIA WHERE C_TIPU' +
        'SASS = NEW.C_TIPUSASS INTO :NEW_FACTURABLE;'
      '      '
      '            IF (NEW_FACTURABLE = '#39'S'#39')'
      
        '            THEN  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'ASSISTENCIA' +
        'GIMNAS'#39', NEW.C_ASSISTENCIA, '#39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '      END'
      '      '
      '   END;'
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
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Position = 50
    Left = 40
    Top = 248
  end
  object T_Intef_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_BU'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /*********** MEDICACI'#211' DE PRIVATS ***********/'
      '      '
      '      IF ((NEW.C_ESTATFAC = 15) AND (NEW.ENVIAT_SAP = "N")) THEN'
      '      BEGIN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INTERF'#39', NEW.PK, ' +
        #39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      '            '
      '            NEW.ENVIAT_SAP = "S";'
      '      END;'
      '   END;'
      'END')
    Dic1 = wDataProductes.Interf
    Dic1Name = 'Interf'
    Abierta = False
    Borrame = False
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
    Position = 50
    Left = 112
    Top = 368
  end
  object T_Passis_AU_Eliminat: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AU'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE TIREA         CHAR(1);'
      '  DECLARE VARIABLE DATA_SINISTRE DATE;'
      '  DECLARE VARIABLE DATA_TALL     DATE;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /*********** PASSIS DE CAP DE SETMANA ***********/'
      ''
      
        '      /* Si modifiquen dates del passi d'#39'un pacients TIREA amb D' +
        'ATA_SINISTRE >= "TALL", enviem modificaci'#243' de l'#39'activitat de pas' +
        'si de cap de setmana */'
      ''
      '      IF ((NEW.INICI <> OLD.INICI)'
      '      OR  (NEW.FI <> OLD.FI)'
      
        '      OR ((NEW.ADM_INICI IS NOT NULL) AND (OLD.ADM_INICI IS NULL' +
        '))'
      '      OR ((NEW.ADM_FI IS NOT NULL) AND (OLD.ADM_FI IS NULL)))'
      '      THEN BEGIN'
      '            SELECT C.ES_UNESPA, T.DATA_SINISTRE'
      '            FROM   TRACTAMENTS T'
      
        '            JOIN   CLIENTS C ON T.C_CENTREFAC = C.C_CENTREFAC AN' +
        'D T.C_CLIENT = C.C_CLIENT'
      '            WHERE  T.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            INTO  :TIREA, :DATA_SINISTRE;'
      ''
      
        '            SELECT DATA FROM UNESPADATES WHERE ID = '#39'TALL_2021'#39' ' +
        'INTO :DATA_TALL;'
      ''
      '            IF ((TIREA = '#39'S'#39') AND (DATA_SINISTRE >= DATA_TALL))'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'PASSIS'#39', NE' +
        'W.ID, '#39'DFT_P03'#39', '#39'M'#39', '#39#39', '#39'F'#39');'
      '      END'
      '   END'
      'END')
    Dic1 = wDataAdmisio.Passis
    Dic1Name = 'wDataAdmisio.Passis'
    Abierta = False
    Borrame = False
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
    Left = 616
    Top = 648
  end
  object T_Passis_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE TIREA         CHAR(1);'
      '  DECLARE VARIABLE DATA_SINISTRE DATE;'
      '  DECLARE VARIABLE DATA_TALL     DATE;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** PASSIS DE CAP DE SETMANA ***********/'
      ''
      
        '      /* Per a pacients TIREA amb DATA_SINISTRE >= "TALL", envie' +
        'm activitat de passi de cap de setmana */'
      ''
      '      SELECT C.ES_UNESPA, T.DATA_SINISTRE'
      '      FROM   TRACTAMENTS T'
      
        '      JOIN   CLIENTS C ON T.C_CENTREFAC = C.C_CENTREFAC AND T.C_' +
        'CLIENT = C.C_CLIENT'
      '      WHERE  T.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '      INTO  :TIREA, :DATA_SINISTRE;'
      '      '
      
        '      SELECT DATA FROM UNESPADATES WHERE ID = '#39'TALL_2021'#39' INTO :' +
        'DATA_TALL;'
      '      '
      '      IF ((TIREA = '#39'S'#39') AND (DATA_SINISTRE >= DATA_TALL))'
      '      THEN'
      
        '            /* Aix'#242' genera a SAP activitat de passi per'#242' mentre ' +
        'no hi ha data adm_inici, es marca com a "cancel'#183'lada" - CANVIAR-' +
        'HO */'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'PASSIS'#39', NEW.ID, ' +
        #39'DFT_P03'#39', '#39'I'#39', '#39#39', '#39'F'#39');'
      ''
      
        '            /* Enviem un correu a l'#39'Ainara mentre no funcioni la' +
        ' integraci'#243' amb SAP (UNESPA) */'
      
        '            INSERT INTO AVISOS_CORREU (ID_AVIS, DATA_GENERAT, AS' +
        'SUMPTE, COS)'
      
        '            VALUES (41, "NOW", '#39'Av'#237's de nou PASSI de CAP DE SETM' +
        'ANA - NHC '#39' || NEW.C_HISTORIA,'
      
        '                    '#39'S'#39#39'ha afegit un passi de cap de setmana al ' +
        'pacient amb NHC: '#39' || NEW.C_HISTORIA);'
      '   END;'
      'END')
    Dic1 = wDataAdmisio.Passis
    Dic1Name = 'wDataAdmisio.Passis'
    Abierta = False
    Borrame = False
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
    Left = 40
    Top = 568
  end
  object T_Passis_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AD'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE TIREA         CHAR(1);'
      '  DECLARE VARIABLE DATA_SINISTRE DATE;'
      '  DECLARE VARIABLE DATA_TALL     DATE;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** PASSIS DE CAP DE SETMANA ***********/'
      ''
      
        '      /* Si anul'#183'len un passi d'#39'un pacients TIREA amb DATA_SINIS' +
        'TRE >= "TALL", cancel'#183'lem l'#39'activitat de passi de cap de setmana' +
        ' */'
      ''
      '      SELECT C.ES_UNESPA, T.DATA_SINISTRE'
      '      FROM   TRACTAMENTS T'
      
        '      JOIN   CLIENTS C ON T.C_CENTREFAC = C.C_CENTREFAC AND T.C_' +
        'CLIENT = C.C_CLIENT'
      '      WHERE  T.C_TRACTAMENT = OLD.C_TRACTAMENT'
      '      INTO  :TIREA, :DATA_SINISTRE;'
      ''
      
        '      SELECT DATA FROM UNESPADATES WHERE ID = '#39'TALL_2021'#39' INTO :' +
        'DATA_TALL;'
      ''
      '      IF ((TIREA = '#39'S'#39') AND (DATA_SINISTRE >= DATA_TALL))'
      '      THEN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'PASSIS'#39', OLD.ID, ' +
        #39'DFT_P03'#39', '#39'C'#39', '#39#39', '#39'F'#39');'
      '   END;'
      'END')
    Dic1 = wDataAdmisio.Passis
    Dic1Name = 'wDataAdmisio.Passis'
    Abierta = False
    Borrame = False
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
    Left = 120
    Top = 568
  end
  object T_IMM_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'IMM_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE NHC INTEGER;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      IF ((NEW.C_MISSATGE = '#39'WS_VAC'#39') AND (NEW.ACCIO = '#39'I'#39') AND ' +
        '(OLD.PAFECTATS = '#39'I'#39') AND (NEW.PAFECTATS = '#39'IX'#39')) THEN'
      '      BEGIN'
      
        '            SELECT C_HISTORIA FROM OMADMINISTRACIO WHERE ID = NE' +
        'W.PK_VALOR INTO :NHC;'
      '      '
      
        '            INSERT INTO AVISOS_CORREU(ID, ID_AVIS, DATA_GENERAT,' +
        ' ASSUMPTE, COS)'
      '            VALUES (GEN_ID(G_AVISOSCORREU, 1),'
      '                    27,'
      '                    "NOW",'
      '                    '#39'Av'#237's VACUNA no publicada a l'#39#39'HC3'#39','
      
        '                    '#39'No s'#39#39'ha publicat a l'#39#39'HCE la immunitzaci'#243' ' +
        'del seg'#252'ent pacient: '#39' || F_NLine() ||'
      '                    '#39'NHC: '#39' || :NHC || F_NLine() ||'
      '                    '#39'Motiu: no procedeix'#39');'
      '      END;'
      '   END;'
      'END')
    Dic1 = Hl7_Log
    Dic1Name = 'Hl7_Log'
    Abierta = False
    Borrame = False
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
    Left = 288
    Top = 16
  end
  object A28_ATURAT: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'A28_ATURAT'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      ' DECLARE VARIABLE PENDENTS INTEGER;'
      'BEGIN'
      '  SELECT COUNT(*) FROM HL7_LOG'
      '  WHERE DATA < "TODAY" - 3'
      '  AND PAFECTATS ='#39'A'#39
      '  AND C_MISSATGE='#39'ADT_A28'#39
      '  INTO :PENDENTS;'
      '  '
      '  IF (PENDENTS IS NULL) THEN PENDENTS = 0;'
      '  IF (PENDENTS > 0 ) THEN'
      '  BEGIN'
      
        '      INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, ASSUMPTE' +
        ', COS)'
      '                  VALUES ("NOW",'
      '                          32,'
      
        '                          "Av'#237's ADT_A28 NO PROCESSATS DE FA 3DIE' +
        'S",'
      
        '                          "Hi ha missatges ADT_A28 de fa 3 dies ' +
        'no processats "|| F_NLine() || "Revisar el canal del mirth.");'
      '  END;'
      'END')
    Dic1 = Hl7_Log
    Dic1Name = 'Hl7_Log'
    Abierta = False
    Borrame = False
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
    Top = 80
  end
  object HL7_Response: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Response id'
        NombreDB = 'RESPONSE_ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_HL7_RESPONSE'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Log_id'
        NombreDB = 'LOG_ID'
        Longitud = 8
        Consulta = 'Log'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resposta'
        NombreDB = 'RESPOSTA'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'OK'
        NombreDB = 'OK'
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
          'Response id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
      end
      item
        Nombre = 'Log'
        NombreDB = 'Log'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Log_id')
        Tipo = tiForaneo
        ForaneoDic = Hl7_Log
        ForaneoCampos.Strings = (
          'LOG_ID')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Log'
        Master = Hl7_Log
        BuscaOrigen.Strings = (
          'Log_id')
        CopiarOrigen.Strings = (
          'Log_id')
        CopiarMaster.Strings = (
          'LOG_ID')
        BuscaMaster.Strings = (
          'LOG_ID')
      end>
    Nombre = 'HL7_Response'
    NombreTabla = 'HL7_Response'
    Organiza = tbBase
    CamposVer.Strings = (
      'Response id'
      'Log_id'
      'Resposta'
      'Data')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 112
    Top = 16
  end
  object P_Tract_Altes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HL7_Altes'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA DATE, EXECUTA CHAR(1))'
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA   INTEGER,'
      '  DATA_ALTA    DATE,'
      '  C_PRESTACIO  VARCHAR(4)'
      ')'
      'AS'
      'BEGIN'
      ''
      
        '      /* Comuniquem a FARMATOOLS les altes del dia (tamb'#233' per CE' +
        ', ja que FT no les tanca) */'
      
        '      /* 01.2026: Les altes hospital'#224'ries s'#39'enviaran quan Inferm' +
        'eria indiqui Alta efectiva via anotaci'#243' al curs, per'#242' aqu'#237' es to' +
        'rnaran a enviar (no passa res) */'
      '      '
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.DATA_ALTA, T.C_' +
        'PRESTACIO'
      '          FROM   TRACTAMENTS T'
      '          JOIN   METGES      M ON T.C_COORDINADOR = M.CODI'
      
        '          JOIN   CODICAMPS   C ON C.TIPUSCODI = '#39'ESTATFACTU'#39' AND' +
        ' T.C_ESTATFAC = C.C_CODI AND C.R_CODI <> 9     /* activitat no a' +
        'nul'#183'lada */'
      
        '          JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACIO ' +
        'AND D.C_DRET = "P252"                          /* prestacions qu' +
        'e enviem a Farmatools */'
      '          WHERE  T.DATA_ALTA = :DIA'
      
        '/*-          WHERE  T.DATA_ALTA BETWEEN :DIA -7 AND :DIA */  /* ' +
        'Preparem aix'#242' per'#242' potser no cal: comuniquem les de tota la setm' +
        'ana anterior, per si algun dia falla, encara que aix'#242' suposi env' +
        'iar una alta diverses vegades */'
      
        '          INTO :C_TRACTAMENT, :C_HISTORIA, :DATA_ALTA, :C_PRESTA' +
        'CIO'
      '      DO BEGIN'
      ''
      '            IF (EXECUTA = "S")'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS' +
        #39', :C_TRACTAMENT, '#39'ADT_A03'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '       '
      '            SUSPEND;'
      '      END;'
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
    Left = 248
    Top = 136
  end
  object T_Diags_AI_NOCrearEncara: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_M INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      IF ((NEW.TIPUS = "I") AND (NEW.CLASSE = "K")) THEN'
      '      BEGIN'
      '            SELECT COUNT(*)'
      '            FROM   TRACTAMENTS T'
      
        '            JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACI' +
        'O AND D.C_DRET = "P252"'
      '            WHERE T.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            INTO :ENVIAR_M;'
      ''
      '            IF (ENVIAR_M > 0) THEN'
      '            BEGIN'
      '            '
      '                  SELECT COUNT(*)'
      '                  FROM   HL7_LOG'
      '                  WHERE  TAULA = "TRACTAMENTS"'
      '                  AND    C_MISSATGE = "ORU"'
      '                  AND    PK_VALOR = NEW.C_TRACTAMENT'
      '                  AND    PAFECTATS = "M"'
      '                  INTO  :ENVIAR_M;'
      '                  '
      
        '                  /* Si no existeix el registre pendent de proce' +
        'ssar, l'#39'inserim */'
      '                  IF (ENVIAR_M = 0)'
      '                  THEN'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACT' +
        'AMENTS'#39', NEW.C_TRACTAMENT, '#39'ORU'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      ''
      '            END'
      '      END'
      '   END'
      'END')
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
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 416
    Top = 192
  end
  object T_Analit_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_M INTEGER;'
      'DECLARE VARIABLE ID       INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '/*'
      '      /* Si no '#233's un registre pendent de resultats'
      
        '      IF ((NULLIF(NEW.TEXTE, '#39'** Pte. resultado **'#39') IS NOT NULL' +
        ')'
      '      OR  (NEW.VALOR IS NOT NULL)) THEN'
      '*/'
      '      /* De moment enviarem nom'#233's valors num'#232'rics */'
      '      IF (NEW.VALOR IS NOT NULL) THEN'
      '      BEGIN'
      '            /* Si correspon a una prova que s'#39'ha d'#39'enviar, */'
      '            SELECT COUNT(*)'
      '            FROM   CODRSANA_APA'
      '            WHERE  CODI = NEW.CODI'
      '            AND    ENVIAR_FT = "S"'
      '            INTO  :ENVIAR_M;'
      '      '
      '            IF (ENVIAR_M > 0) THEN'
      '            BEGIN'
      
        '                  /* mirem si ja existeix un registre d'#39'aquesta ' +
        'anal'#237'tica per processar */'
      
        '                  SELECT ID FROM ANACABE WHERE NILAB = NEW.NILAB' +
        ' AND DATA = NEW.DATA INTO :ID;'
      '            '
      '                  SELECT COUNT(*)'
      '                  FROM   HL7_LOG'
      '                  WHERE  TAULA = "ANACABE"'
      '                  AND    C_MISSATGE = "ORU"'
      '                  AND    PK_VALOR = :ID'
      '                  AND    PAFECTATS = "M"'
      '                  INTO  :ENVIAR_M;'
      '            '
      '                  /* i, si no existeix, l'#39'inserim */'
      '                  IF (ENVIAR_M = 0)'
      '                  THEN'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'ANACA' +
        'BE'#39', :ID, '#39'ORU'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '            END'
      '      END'
      '   END'
      'END')
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 288
    Top = 192
  end
  object T_InferDades_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_M INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      
        '      /* En inserir registre de PES o Talla a la gr'#224'fica d'#39'infer' +
        'meria,'
      '         enviem informaci'#243' a Farmatools si cal */'
      '      IF (NEW.C_ITEM IN (18,19)) THEN'
      '      BEGIN'
      '            SELECT COUNT(*)'
      '            FROM   TRACTAMENTS T'
      '            JOIN   METGES      M ON T.C_COORDINADOR = M.CODI'
      
        '            JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACI' +
        'O AND (D.C_DRET = "P252"'
      
        '                                                                ' +
        '   OR (D.C_DRET = "P253" AND M.C_GRUP = "ME"))'
      '            WHERE T.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            INTO :ENVIAR_M;'
      '            '
      '            IF (ENVIAR_M > 0) THEN'
      '            BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM   HL7_LOG'
      '                  WHERE  TAULA = "TRACTAMENTS"'
      '                  AND    C_MISSATGE = "ADT_A08"'
      '                  AND    PK_VALOR = NEW.C_TRACTAMENT'
      '                  AND    PAFECTATS = "M"'
      '                  INTO  :ENVIAR_M;'
      '                  '
      
        '                  /* Si no existeix el registre pendent de proce' +
        'ssar, l'#39'inserim */'
      '                  IF (ENVIAR_M = 0)'
      '                  THEN'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACT' +
        'AMENTS'#39', new.c_tractament, '#39'ADT_A08'#39', '#39'M'#39', '#39#39', '#39'M'#39');'
      '            END'
      '      END'
      '   END'
      'END')
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
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 40
    Top = 192
  end
  object T_InferDades_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_M INTEGER;'
      'DECLARE VARIABLE INFO VARCHAR(10);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      
        '      /* En anul'#183'lar registre de Pes o Talla a la gr'#224'fica d'#39'infe' +
        'rmeria,'
      '         enviem informaci'#243' a Farmatools si cal */'
      '      IF ((NEW.C_ITEM IN (18,19)) AND (NEW.ANULAT = "S")) THEN'
      '      BEGIN'
      '            SELECT COUNT(*)'
      '            FROM   TRACTAMENTS T'
      '            JOIN   METGES      M ON T.C_COORDINADOR = M.CODI'
      
        '            JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACI' +
        'O AND (D.C_DRET = "P252"'
      
        '                                                                ' +
        '   OR (D.C_DRET = "P253" AND M.C_GRUP = "ME"))'
      '            WHERE T.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            INTO :ENVIAR_M;'
      '            '
      '            IF (ENVIAR_M > 0) THEN'
      '            BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM   HL7_LOG'
      '                  WHERE  TAULA = "INFERDADES"'
      '                  AND    C_MISSATGE = "ORU"'
      '                  AND    PK_VALOR = NEW.ID'
      '                  AND    PAFECTATS = "M"'
      '                  AND    ACCIO = '#39'C'#39
      '                  INTO  :ENVIAR_M;'
      '                  '
      '                  IF (NEW.C_ITEM = 18) THEN INFO = '#39'ESTATURA'#39';'
      '                                       ELSE INFO = '#39'PESO'#39';'
      '                  '
      
        '                  /* Si no existeix el registre pendent de proce' +
        'ssar, l'#39'inserim i enviem tamb'#233' modificaci'#243' de dades del pacient ' +
        'perqu'#232' agafi el pes/talla que quedi actiu */'
      '                  IF (ENVIAR_M = 0) THEN'
      '                  BEGIN'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'INFER' +
        'DADES'#39', NEW.ID, '#39'ORU'#39', '#39'C'#39', :INFO, '#39'M'#39');'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACT' +
        'AMENTS'#39', NEW.C_TRACTAMENT, '#39'ADT_A08'#39', '#39'M'#39', '#39#39', '#39'M'#39');'
      '                  END'
      '            END'
      '      END'
      '   END'
      'END')
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 128
    Top = 192
  end
  object T_Analit_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_M INTEGER;'
      'DECLARE VARIABLE ID       INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '/*'
      '      /* Si no '#233's un registre pendent de resultats'
      
        '      IF ((NULLIF(NEW.TEXTE, '#39'** Pte. resultado **'#39') IS NOT NULL' +
        ')'
      '      OR  (NEW.VALOR IS NOT NULL)) THEN'
      '*/'
      '      /* De moment enviarem nom'#233's valors num'#232'rics */'
      '      IF (NEW.VALOR IS NOT NULL) THEN'
      '      BEGIN'
      '            /* Si correspon a una prova que s'#39'ha d'#39'enviar, */'
      '            SELECT COUNT(*)'
      '            FROM   CODRSANA_APA'
      '            WHERE  CODI = NEW.CODI'
      '            AND    ENVIAR_FT = "S"'
      '            INTO  :ENVIAR_M;'
      '      '
      '            IF (ENVIAR_M > 0) THEN'
      '            BEGIN'
      
        '                  /* mirem si ja existeix un registre d'#39'aquesta ' +
        'anal'#237'tica per processar */'
      
        '                  SELECT ID FROM ANACABE WHERE NILAB = NEW.NILAB' +
        ' AND DATA = NEW.DATA INTO :ID;'
      '            '
      '                  SELECT COUNT(*)'
      '                  FROM   HL7_LOG'
      '                  WHERE  TAULA = "ANACABE"'
      '                  AND    C_MISSATGE = "ORU"'
      '                  AND    PK_VALOR = :ID'
      '                  AND    PAFECTATS = "M"'
      '                  INTO  :ENVIAR_M;'
      '            '
      '                  /* i, si no existeix, l'#39'inserim */'
      '                  IF (ENVIAR_M = 0)'
      '                  THEN'
      
        '                        EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'ANACA' +
        'BE'#39', :ID, '#39'ORU'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '            END'
      '      END'
      '   END'
      'END')
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
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 216
    Top = 192
  end
  object T_Metges_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_FT INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** USUARIS -> FARMATOOLS ***********/'
      ''
      
        '      /* En insertar un metge, l'#39'enviem a FT si ha de poder-hi a' +
        'ccedir */'
      ''
      
        '      SELECT COUNT(*) FROM DRETSGRUPS WHERE C_GRUP = NEW.C_GRUP ' +
        'AND C_DRET = '#39'G252'#39' INTO :ENVIAR_FT;'
      
        '      SELECT COUNT(*) + :ENVIAR_FT FROM DRETSMETGES WHERE C_USUA' +
        'RI = NEW.CODI AND C_DRET = '#39'M319'#39' INTO :ENVIAR_FT;'
      ''
      '      IF ((ENVIAR_FT > 0) and (NEW.EMAIL IS NOT NULL))'
      '      THEN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'METGES'#39', NEW.ID, ' +
        #39'USR'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      ''
      '   END;'
      'END')
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
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Position = 50
    Left = 40
    Top = 631
  end
  object T_Metges_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Hl7_AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ENVIAR_FT INTEGER;'
      'DECLARE VARIABLE ENVIAT_FT INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      '      /*********** USUARIS -> FARMATOOLS ***********/'
      ''
      
        '      /* En modificar certs camps de Metges, enviem els canvis a' +
        ' FT si ha de poder-hi accedir */'
      ''
      
        '      SELECT COUNT(*) FROM DRETSGRUPS WHERE C_GRUP = NEW.C_GRUP ' +
        'AND C_DRET = '#39'G252'#39' INTO :ENVIAR_FT;'
      
        '      SELECT COUNT(*) + :ENVIAR_FT FROM DRETSMETGES WHERE C_USUA' +
        'RI = NEW.CODI AND C_DRET = '#39'M319'#39' INTO :ENVIAR_FT;'
      '  '
      
        '      IF ((ENVIAR_FT > 0) AND (NEW.BAIXA='#39'N'#39') AND (NEW.EMAIL IS ' +
        'NOT NULL) AND            /* Si ara '#233's enviable a FT (t'#233' dret G o' +
        ' M, est'#224' actiu i t'#233' email */'
      
        '         ((OLD.C_GRUP <> NEW.C_GRUP)                            ' +
        '                         /* i ha canviat algun d'#39'aquests camps *' +
        '/'
      '       OR (OLD.C_ESPECIAL <> NEW.C_ESPECIAL)'
      '       OR (OLD.NOMSENCER <> NEW.NOMSENCER)'
      
        '       OR (Coalesce(OLD.NOMBRE, '#39' '#39') <> Coalesce(NEW.NOMBRE, '#39' '#39 +
        '))'
      
        '       OR (Coalesce(OLD.COGNOM1, '#39' '#39') <> Coalesce(NEW.COGNOM1, '#39 +
        ' '#39'))'
      
        '       OR (Coalesce(OLD.COGNOM, '#39' '#39') <> Coalesce(NEW.COGNOM, '#39' '#39 +
        '))'
      '       OR (Coalesce(OLD.DNI, '#39' '#39') <> Coalesce(NEW.DNI, '#39' '#39'))'
      '       OR (Coalesce(OLD.T_DOC, '#39' '#39') <> Coalesce(NEW.T_DOC, '#39' '#39'))'
      
        '       OR (Coalesce(OLD.NMETGERECEPTA, '#39' '#39') <> Coalesce(NEW.NMET' +
        'GERECEPTA, '#39' '#39'))'
      '       OR (Coalesce(OLD.EMAIL, '#39' '#39') <> Coalesce(NEW.EMAIL, '#39' '#39'))'
      '          ))'
      '      THEN BEGIN'
      
        '            EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'METGES'#39', NEW.ID, ' +
        #39'USR'#39', '#39'M'#39', '#39#39', '#39'M'#39');    /* -> actualitzem usuari a FT */'
      '      END'
      ''
      ''
      ''
      
        '      /* Si canvia alguna de les dades que provoquen que s'#39'envi'#239 +
        ' l'#39'usuari a FT i ara compleix les condicions i abans no, l'#39'envie' +
        'm com a inserci'#243
      
        '        (ja que FT no crea l'#39'usuari si l'#39'enviem com a modificaci' +
        #243' si no existia a FT */'
      ''
      
        '      SELECT COUNT(*) FROM DRETSGRUPS WHERE C_GRUP = OLD.C_GRUP ' +
        'AND C_DRET = '#39'G252'#39' INTO :ENVIAT_FT;'
      
        '      SELECT COUNT(*) + :ENVIAT_FT FROM DRETSMETGES WHERE C_USUA' +
        'RI = OLD.CODI AND C_DRET = '#39'M319'#39' INTO :ENVIAT_FT;'
      ''
      '      IF ( ((OLD.BAIXA ='#39'B'#39') AND (NEW.BAIXA = '#39'N'#39'))'
      '      OR   ((OLD.EMAIL IS NULL) AND (NEW.EMAIL IS NOT NULL))'
      '      OR   ((ENVIAT_FT = 0) AND (ENVIAR_FT > 0)) )'
      '      THEN BEGIN'
      
        '           IF ((NEW.BAIXA='#39'N'#39') AND (NEW.EMAIL IS NOT NULL) AND (' +
        'ENVIAR_FT > 0))'
      '           THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'METGES'#39', NE' +
        'W.ID, '#39'USR'#39', '#39'I'#39', '#39#39', '#39'M'#39');    /* -> inserim usuari a FT */'
      '      END;'
      ''
      '   END'
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Position = 50
    Left = 116
    Top = 631
  end
  object FT_Fact_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_PRESTACIO CHAR(4);'
      'DECLARE VARIABLE C_CENTREFAC VARCHAR(2);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      
        '      EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FT_FACTURACIO'#39', NEW.ID,' +
        ' '#39'DFT_P03'#39', NEW.T_MOV, '#39#39', '#39'F'#39');'
      ''
      '   END;'
      'END')
    Dic1 = wDataFarmatools.FT_Facturacio
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
    Left = 521
    Top = 368
  end
  object T_DretsMetges_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ID INTEGER;'
      'DECLARE VARIABLE BAIXA CHAR(1);'
      'DECLARE VARIABLE EMAIL VARCHAR(255);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      /* Generar registre a HL7Log acci'#243' "I" en donar dret M319 ' +
        'a un usuari */'
      '      IF (NEW.C_DRET = '#39'M319'#39') THEN'
      '      BEGIN'
      
        '            SELECT ID, BAIXA, EMAIL FROM METGES WHERE CODI = NEW' +
        '.C_USUARI INTO :ID, :BAIXA, :EMAIL;'
      '          '
      '            IF ((BAIXA = "N")  AND (EMAIL IS NOT NULL))'
      '            THEN'
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'METGES'#39', :I' +
        'D, '#39'USR'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '      END'
      '   END'
      'END')
    Dic1 = wDataConfig.DretsMetges
    Dic1Name = 'wDataConfig.DretsMetges'
    Abierta = False
    Borrame = False
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
    Left = 360
    Top = 576
  end
  object T_DretsGrup_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'HL7_AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE ID INTEGER;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      /* Generar registre a HL7Log acci'#243' "I" en donar dret G252 ' +
        'a un grup */'
      '      IF (NEW.C_DRET = '#39'G252'#39') THEN'
      '      BEGIN'
      '          FOR SELECT ID'
      '              FROM   METGES'
      '              WHERE  C_GRUP = NEW.C_GRUP'
      '              AND    BAIXA = "N"'
      '              AND    EMAIL IS NOT NULL'
      '              INTO  :ID'
      '          DO BEGIN'
      
        '                EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'METGES'#39', :ID,' +
        ' '#39'USR'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '          END'
      '      END'
      '   END'
      'END')
    Dic1 = wDataConfig.DretsGrup
    Dic1Name = 'wDataConfig.DretsGrup'
    Abierta = False
    Borrame = False
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
    Left = 456
    Top = 576
  end
  object P_Init_UA_Eliminada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Init_UA'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS (C_HISTORIA INTEGER, UNITAT SMALLINT)'
      'AS'
      'BEGIN'
      '      FOR SELECT NUM_HIST, UNITAT'
      '          FROM   FILIACIO'
      '          WHERE  NUM_HIST IN ('
      ' 901,'
      '1014,'
      '1573,'
      '2048,'
      '2646,'
      '2710,'
      '2739,'
      '3099,'
      '3289,'
      '3419,'
      '3877,'
      '3985,'
      '4070,'
      '4189,'
      '4542,'
      '4651,'
      '5122,'
      '5333,'
      '5497,'
      '5760,'
      '5855,'
      '6535,'
      '6825,'
      '7259,'
      '7284,'
      '7458,'
      '7554,'
      '7742,'
      '7776,'
      '9197,'
      '9851,'
      '9897,'
      '9905,'
      '10177,'
      '10187,'
      '10700,'
      '11531,'
      '11826,'
      '12765,'
      '12833,'
      '13021,'
      '13427,'
      '13532,'
      '15232,'
      '15958,'
      '16297,'
      '16527,'
      '17200,'
      '17284,'
      '17711,'
      '17780,'
      '19726,'
      '20384,'
      '20399,'
      '21282,'
      '21548,'
      '21870,'
      '21922,'
      '22658,'
      '22673,'
      '23030,'
      '23192,'
      '23204,'
      '23315,'
      '23714,'
      '23760,'
      '23790,'
      '24089,'
      '24863,'
      '25191,'
      '25449,'
      '25472,'
      '25976,'
      '26713,'
      '27132,'
      '27435,'
      '27570,'
      '28125,'
      '28141,'
      '28471,'
      '29869,'
      '30145,'
      '30399,'
      '30516,'
      '30707,'
      '30745,'
      '31195,'
      '31689,'
      '31805,'
      '31870,'
      '32280,'
      '32338,'
      '32457,'
      '32684,'
      '32919,'
      '33036,'
      '33055,'
      '33105,'
      '33134,'
      '33166,'
      '33287,'
      '33653,'
      '33693,'
      '33698,'
      '33822,'
      '33830,'
      '33841,'
      '33946,'
      '33971,'
      '33977,'
      '33996,'
      '34008,'
      '34013,'
      '34017,'
      '34019,'
      '34023,'
      '34024,'
      '34039,'
      '34048,'
      '34053,'
      '34058,'
      '34060,'
      '34065,'
      '34069,'
      '34073,'
      '34085,'
      '34092,'
      '34094,'
      '34095,'
      '34098,'
      '34099,'
      '34100,'
      '34102,'
      '34113,'
      '34118,'
      '34119,'
      '34121,'
      '34127,'
      '34128,'
      '34131,'
      '34132,'
      '34140,'
      '34141,'
      '34143,'
      '34145,'
      '34146,'
      '34147,'
      '34149,'
      '34153,'
      '34154,'
      '34155,'
      '34156,'
      '34157,'
      '34158,'
      '34160,'
      '34161,'
      '34162,'
      '34163,'
      '34167,'
      '34169,'
      '34170,'
      '34172,'
      '34173,'
      '34174,'
      '34175,'
      '34177,'
      '34178,'
      '34180,'
      '34185,'
      '34186,'
      '34188,'
      '34189,'
      '34190,'
      '34193,'
      '34195,'
      '34196,'
      '34199,'
      '34201,'
      '34202,'
      '34205,'
      '34210'
      '          )'
      '          INTO  :C_HISTORIA, :UNITAT'
      '      DO BEGIN'
      '            IF (UNITAT <> 0) THEN'
      '            BEGIN'
      '                  IF (EXECUTA = '#39'S'#39')'
      
        '                  THEN EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'FILIAC' +
        'IO'#39', :C_HISTORIA, '#39'ORU'#39', '#39'I'#39', '#39'UA'#39', '#39'M'#39');'
      '                  '
      '                  SUSPEND;'
      '            END'
      '      END'
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
    Left = 504
    Top = 648
  end
end
