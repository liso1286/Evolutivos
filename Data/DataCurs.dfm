object wDataCurs: TwDataCurs
  OldCreateOrder = False
  Left = 435
  Top = 180
  Height = 840
  Width = 1076
  object Historia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Anotaci'#243
        NombreDB = 'C_Anotacio'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Presta'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        Consulta = 'Metge2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 16
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        zType = tcIB_Date
        zNotNull = True
        Comentario = 'Data+Hora de la anotacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'Metge1'
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'Usuari de la anotacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'Grup del usuari'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anotaci'#243
        NombreDB = 'Anotacio'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Impr'#233's'
        NombreDB = 'Impres'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Es una epicrisi'
        NombreDB = 'EsEpicrisi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Informe d'#39'alta'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Interconsulta'
        NombreDB = 'C_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'intercon'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat Interconsulta'
        NombreDB = 'Estat_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Estat'
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'intercon'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Anulat'
        NombreDB = 'Anulat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Es normal'
        NombreDB = 'EsNormal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Valida'
        NombreDB = 'C_EstatValida'
        Longitud = 1
        Consulta = 'EstatValida'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codi camps'
      end
      item
        Aplica = kcSiNo
        Nombre = #201's RCP'
        NombreDB = 'EsRCP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Qu'#232' '#233's?'
        NombreDB = 'QueEs'
        Longitud = 2
        Consulta = 'quees'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'codi camps'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Link'
        NombreDB = 'Link'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'pk de la taula q sigui, per fer el link'
      end
      item
        Aplica = kcCaracter
        Nombre = #201's MR'
        NombreDB = 'EsMR'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Microorganisme multiresistent'
      end>
    Indices = <
      item
        Nombre = 'Anotaci'#243
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Anotaci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia Cronol'#243'gic'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Hist'#242'ria'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia D'
        NombreDB = 'HistoriaD'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Hist'#242'ria'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
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
        Nombre = 'Tractament'
        NombreDB = 'Tractament'
        EsVirtual = True
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
        Nombre = 'Coordinador'
        NombreDB = 'Coordinador'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Metge Coordinador')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grup'
        NombreDB = 'Grup'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Grup')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'InterCon'
        NombreDB = 'InterCon'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Interconsulta')
        Tipo = tiForaneo
        ForaneoDic = wDataIntercon.InterCon
        ForaneoCampos.Strings = (
          'N'#186' Interconsulta')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Prestacio'
        NombreDB = 'Prestacio'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Prestaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'quees'
        NombreDB = 'quees'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Qu'#232' '#233's?')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'anulat'
        NombreDB = 'anulat'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Anulat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metge1'
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
        Nombre = 'Metge2'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge Coordinador')
        CopiarOrigen.Strings = (
          'Metge Coordinador')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Grup'
        Master = wDataBasics.Grups
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
        Nombre = 'Presta'
        Master = wDataBasics.Prestacion
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
        Nombre = 'Estat'
        Master = wDataIntercon.IC_Estats
        BuscaOrigen.Strings = (
          'Estat Interconsulta')
        CopiarOrigen.Strings = (
          'Estat Interconsulta')
        CopiarMaster.Strings = (
          'Estat')
        BuscaMaster.Strings = (
          'Estat')
      end
      item
        Nombre = 'EstatValida'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat Valida')
        CopiarOrigen.Strings = (
          'Estat Valida')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TipusCodi = '#39'VALIDACURS'#39
      end
      item
        Nombre = 'quees'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Qu'#232' '#233's?')
        CopiarOrigen.Strings = (
          'Qu'#232' '#233's?')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'TIPUSANOTACIO'#39
      end>
    Nombre = 'Hist'#242'ria Cl'#237'nica'
    NombreTabla = 'HISTORIA'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Hist'#242'ria'
      'Data'
      'Impr'#233's'
      'N'#186' Anotaci'#243
      'Tractament'
      'Usuari'
      'Prestaci'#243)
    IndiceVer = 'Historia Cronol'#243'gic'
    Navegar = False
    Nivel = 6
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7359727546
    Left = 30
    Top = 16
  end
  object Conta: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Conta'
    ForceNombreDB = False
    Body.Strings = (
      '      DECLARE VARIABLE EstatInformeAlta INTEGER;'
      '      DECLARE VARIABLE PotInformeAlta INTEGER;'
      '      DECLARE VARIABLE EsValidable integer;'
      'BEGIN'
      '      IF (USER <> "REPLICATOR") THEN'
      '      BEGIN    '
      '            if ((new.c_anotacio is null) or (new.c_anotacio =0))'
      '            then NEW.C_ANOTACIO = GEN_ID(CONTAHISTORIA,1) ;'
      ''
      '            /*BUSQUEM LA PRESTACI'#211' ACTIVA, I SI POT FER INF.ALTA'
      '            IF (NEW.C_TRACTAMENT IS NOT NULL) THEN'
      '            BEGIN'
      '                  SELECT T.EstatInformeAlta'
      '                  FROM TRACTAMENTS T'
      '                  WHERE T.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  INTO :EstatInformeAlta;'
      
        '                  IF (EstatInformeAlta IS NULL) THEN EstatInform' +
        'eAlta = -1;'
      ''
      '                  IF (EstatInformeAlta = 0) THEN'
      '                  BEGIN'
      '                        SELECT COUNT(*)'
      '                        FROM DRETSPRESTA'
      '                        WHERE C_PRESTACIO = NEW.C_PRESTACIO'
      '                        AND C_DRET = "P300"'
      '                        INTO :PotInformeAlta;'
      ''
      '                        IF (PotInformeAlta<>0) THEN'
      '                        BEGIN'
      '                              UPDATE TRACTAMENTS'
      '                              SET EstatInformeAlta = 1'
      
        '                              WHERE C_TRACTAMENT = NEW.C_TRACTAM' +
        'ENT;'
      '                        END'
      '                  END'
      ''
      '            END   */'
      '            '
      
        '            /*SI EL USUARI NECESITA SER VALIDAT, LI POSEM EL EST' +
        'AT A PENDENT DE VALIDAR*/'
      '            /*Nomes si es anotacio o comentari*/'
      '            '
      '            IF ((NEW.EsNormal = '#39'S'#39') OR (NEW.QUEES = 11)) THEN'
      '            BEGIN'
      '                  SELECT COUNT(*)'
      '                  FROM   DRETSGRUPS'
      '                  WHERE  C_GRUP = NEW.C_GRUP'
      '                  AND    C_DRET = '#39'G49'#39
      '                  INTO  :EsValidable;'
      ''
      
        '                  IF (EsValidable > 0) THEN New.C_EstatValida = ' +
        '10;'
      '            END'
      '      END'
      'END'
      '')
    Dic1 = Historia
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
    Modi = True
    ModiFecha = 37173.8121735532
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 146
    Top = 16
  end
  object Usra: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Anotaci'#243
        NombreDB = 'C_Anotacio'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Parent'
        NombreDB = 'C_Parent'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Presta'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        Consulta = 'Metge2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 16
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'Metge1'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anotaci'#243
        NombreDB = 'Anotacio'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Impr'#233's'
        NombreDB = 'Impres'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end>
    Indices = <
      item
        Nombre = 'Anotaci'#243
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Anotaci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia Cronol'#243'gic'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Parent'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia D'
        NombreDB = 'HistoriaD'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Parent'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        EsVirtual = True
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
        Nombre = 'Tractament'
        NombreDB = 'Tractament'
        EsVirtual = True
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
        Nombre = 'Coordinador'
        NombreDB = 'Coordinador'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Metge Coordinador')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grup'
        NombreDB = 'Grup'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Grup')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
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
          'Prestaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metge1'
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
        Nombre = 'Metge2'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge Coordinador')
        CopiarOrigen.Strings = (
          'Metge Coordinador')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Grup'
        Master = wDataBasics.Grups
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
        Nombre = 'Presta'
        Master = wDataBasics.Prestacion
        BuscaOrigen.Strings = (
          'Prestaci'#243)
        CopiarOrigen.Strings = (
          'Prestaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di Prestacio')
        BuscaMaster.Strings = (
          'C'#243'di Prestacio')
      end>
    Nombre = 'Curs clinic USRA'
    NombreTabla = 'USRA'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Anotaci'#243
      'N'#186' Parent'
      'Data'
      'Tractament'
      'Usuari')
    IndiceVer = 'Historia Cronol'#243'gic'
    Navegar = False
    Nivel = 6
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7359742014
    Left = 30
    Top = 70
  end
  object u_conta: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Conta'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN   '
      
        '      if ((new.c_anotacio is null) or (new.c_anotacio = 0) ) the' +
        'n '
      '      NEW.C_ANOTACIO = GEN_ID(CONTAUSRA,1) ;'
      '   END  '
      'END')
    Dic1 = Usra
    Dic1Name = 'Usra'
    Abierta = False
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
    ModiFecha = 37173.8121854861
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 146
    Top = 70
  end
  object AnulaAlta: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 16
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'Pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament')
        Tipo = tiPrimario
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
    Consultas = <>
    Nombre = 'Anulaci'#243' Alta Administrativa'
    NombreTabla = 'AnulaAlta'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tractament'
      'Usuari'
      'Data'
      'Estat')
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7358740162
    Left = 30
    Top = 124
  end
  object CodiRevi: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C'#243'di'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Pare'
        NombreDB = 'C_Pare'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Pare'
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 2
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '-1'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat'
        NombreDB = 'C_Unitat'
        Longitud = 3
        Consulta = 'Unitat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resum'
        NombreDB = 'Resum'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resumen'
        NombreDB = 'Resumen'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'Descripcio'
        Longitud = 240
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243'n'
        NombreDB = 'Descripcion'
        Longitud = 240
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Posici'#243
        NombreDB = 'Posicio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcSiNo
        Nombre = '(Posar Metges)'
        NombreDB = 'Metges'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Nivell'
        NombreDB = 'Nivell'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ItemTotal'
        NombreDB = 'Itemtotal'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ver titol'
        NombreDB = 'Ver'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
      end>
    Indices = <
      item
        Nombre = 'Codi'
        NombreDB = 'Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'di')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
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
      end
      item
        Nombre = 'Pare'
        Master = CodiRevi
        BuscaOrigen.Strings = (
          'Pare')
        CopiarOrigen.Strings = (
          'Pare')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
      end>
    Nombre = 'Titols Revisi'#243
    NombreTabla = 'CodiRevi'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di'
      'Pare'
      'Estat'
      'Unitat'
      'Resum'
      'Resumen')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7358756481
    Left = 30
    Top = 184
  end
  object InfRevi: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 5
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
        Aplica = kcMODELS
        Nombre = 'C'#243'di Unitat'
        NombreDB = 'C_Unitat'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        AutoContador.Tipo = tcGenerator
        AutoContador.Generator = 'CONTAUNITAT'
        Comentario = 'Unitat de la revisio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 2
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Estats de la revisio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Idioma'
        NombreDB = 'Idioma'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Diagnostic'
        NombreDB = 'Diagnostic'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Etiologia'
        NombreDB = 'Etiologia'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CodiE'
        NombreDB = 'CodiE'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Propera Revisio'
        NombreDB = 'ProperaRevi'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Informe'
        NombreDB = 'Informe'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Anotaci'#243
        NombreDB = 'C_Anotacio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'codi de l'#39'anotaci'#243' que es bolca al curs'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat RHF'
        NombreDB = 'EstatRHF'
        Longitud = 2
        Consulta = 'estatrhf'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = '0: pendent full sistematitzat, 1: fet full sistematitzat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EstatINF'
        NombreDB = 'EstatINF'
        Longitud = 2
        Consulta = 'estatinf'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = '0: pendent full sistematitzat, 1: fet full sistematitzat'
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament')
        Tipo = tiPrimario
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
      end
      item
        Nombre = 'Anotacio'
        NombreDB = 'Anotacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Anotaci'#243)
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
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
          'N'#186' Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
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
      end>
    Consultas = <
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
        WhereFiltro = 'TIPUSCODI = '#39'ESTATREVI'#39
      end
      item
        Nombre = 'estatrhf'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat RHF')
        CopiarOrigen.Strings = (
          'Estat RHF')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESTATREVI - RHF'#39
      end
      item
        Nombre = 'estatinf'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'EstatINF')
        CopiarOrigen.Strings = (
          'EstatINF')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESTATREVI - INF'#39
      end>
    Nombre = 'Informes Revisions'
    NombreTabla = 'InfRevi'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tractament'
      'C'#243'di Unitat'
      'Estat'
      'Idioma')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 6
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7359754745
    Left = 86
    Top = 184
  end
  object InfReviLin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 16
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anotaci'#243
        NombreDB = 'Anotacio'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C'#243'di Item'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Items'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat validaci'#243
        NombreDB = 'Estat'
        Longitud = 1
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Anotaci'#243
        NombreDB = 'C_Anotacio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
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
          'Tractament'
          'Data'
          'Usuari'
          'C'#243'di Item')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Revi'
        NombreDB = 'Revi'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = InfRevi
        ForaneoCampos.Strings = (
          'Tractament')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Item'
        NombreDB = 'Item'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'di Item')
        Tipo = tiForaneo
        ForaneoDic = CodiRevi
        ForaneoCampos.Strings = (
          'C'#243'di')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'anotacio'
        NombreDB = 'anotacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Anotaci'#243)
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
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
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
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
          'Estat validaci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Items'
        Master = CodiRevi
        BuscaOrigen.Strings = (
          'C'#243'di Item')
        CopiarOrigen.Strings = (
          'C'#243'di Item')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
      end>
    Nombre = 'Informes Revisions Anotacions'
    NombreTabla = 'InfReviLin'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tractament'
      'Data'
      'Anotaci'#243
      'Usuari'
      'C'#243'di Item'
      'Estat validaci'#243
      'C Anotaci'#243)
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 8
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.736001875
    Left = 146
    Top = 184
  end
  object InfNivell: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Nivell'
    ForceNombreDB = False
    Body.Strings = (
      '( C_ITEM INTEGER )'
      'RETURNS (Nivell integer, C_ItemTotal VARCHAR(40))'
      'AS'
      #9'DECLARE VARIABLE C_PARE INTEGER;'
      #9'DECLARE VARIABLE POSICIO INTEGER;'
      'BEGIN'
      ''
      #9'SELECT C_PARE, POSICIO FROM CODIREVI'
      #9'WHERE C_ITEM = :C_ITEM'
      #9'INTO :C_PARE, :POSICIO;'
      ''
      #9'IF (C_PARE = 0) THEN '
      #9'BEGIN'
      #9#9'NIVELL=1;'
      #9#9'C_ItemTotal = Posicio;'
      #9#9'SUSPEND;'
      #9'END'
      #9'ELSE BEGIN'
      #9#9'SELECT NIVELL, C_Itemtotal'
      #9#9'FROM P_CODIREVI_NIVELL(:C_PARE)'
      #9#9'INTO :NIVELL, :C_ItemTotal;'
      #9#9'NIVELL = NIVELL + 1;'
      #9#9'C_ItemTotal = C_ItemTotal || "." || Posicio;'
      #9#9'SUSPEND;'
      #9'END'
      ''
      'END'
      ' ')
    Select.Strings = (
      'SELECT '
      'R.C_ITEM, '
      'R.C_PARE,  '
      
        '(SELECT N.NIVELL       FROM P_CODIREVI_nivell(R.C_ITEM) N ) AS N' +
        'IVELL , '
      
        '(SELECT N.c_itemtotal  FROM P_CODIREVI_nivell(R.C_ITEM) N ) AS s' +
        'uperitem , '
      'R.RESUM'
      ''
      'FROM CODIREVI R'
      ''
      ''
      '')
    Dic1 = CodiRevi
    Dic1Name = 'CodiRevi'
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
    ModiFecha = 36915.8361297917
    Left = 206
    Top = 184
  end
  object ReviInforme: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Informe'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_Tractament INTEGER,'
      '  Idioma Integer,'
      '  C_Unitat SMALLINT'
      ')'
      'RETURNS'
      '('
      '  Nivell INTEGER,'
      '  Texte VARCHAR(30000),'
      '  ORDRE INTEGER,'
      '  Anotacio VARCHAR (30000),'
      '  Resum VARCHAR (40),'
      '  EsRtf char'
      ')'
      'AS'
      '  DECLARE VARIABLE Resumen VARCHAR (40);'
      '  DECLARE VARIABLE C_ITEM INTEGER;'
      '  DECLARE VARIABLE C_ITEMTOTAL VARCHAR(40);'
      '  DECLARE VARIABLE Metge VARCHAR (20);'
      '  DECLARE VARIABLE C_METGE VARCHAR(5);'
      '  DECLARE VARIABLE SUPERVISOR VARCHAR(20);'
      '  DECLARE VARIABLE ESBECARI SMALLINT;'
      '  DECLARE VARIABLE Metges VARCHAR (2000);'
      '  DECLARE VARIABLE VerMetges Char(1);'
      '  DECLARE VARIABLE Linea VARCHAR(30000);'
      '  DECLARE VARIABLE VerTitol CHAR(1);'
      '  DECLARE VARIABLE TEFILLS INTEGER;'
      'BEGIN'
      ''
      '      ORDRE = 0;'
      ''
      
        '      FOR SELECT C.ITEMTOTAL, C.C_ITEM, c.nivell, c.RESUM, C.RES' +
        'UMEN, C.Metges, C.VER'
      '          FROM   CODIREVI C'
      '          WHERE (C.C_UNITAT = 0 or C.C_Unitat = :c_unitat)'
      '          AND    NOT C.ITEMTOTAL STARTING WITH "00"'
      '          ORDER  BY C.ITEMTOTAL'
      
        '          INTO  :C_ITEMTOTAL, :C_ITEM, :nivell, :resum, :resumen' +
        ',  :VerMetges, :VerTitol'
      '      DO BEGIN'
      '      '
      '            EsRtf = '#39'S'#39';'
      ''
      ''
      '            if (resum   is null) then resum   = "";'
      '            if (resumen is null) then resumen = "";'
      ''
      '            if (idioma = 2) then Linea = resumen;'
      '                            else Linea = resum;'
      ''
      '            Metges = "";'
      '            if (VerMetges = "S") then'
      '            begin'
      '                  FOR SELECT DISTINCT M.CODI, M.METGE'
      '                      FROM   METGES M, INFREVILIN R, CODIREVI C'
      '                      WHERE  M.CODI = R.C_USUARI'
      '                      AND    R.C_ITEM = C.C_ITEM'
      '                      AND    R.C_tractament = :C_tractament'
      
        '                      AND    C.ITEMTOTAL STARTING WITH :C_ITEMTO' +
        'TAL'
      '                      INTO  :C_METGE, :METGE'
      '                  DO BEGIN'
      '                        SUPERVISOR = '#39#39';'
      '                        '
      
        '                        /* Si l'#39'usuari que ha fet l'#39'anotaci'#243' '#233's ' +
        'becari, tamb'#233' mostrem el nom del supervisor de l'#39#224'rea de NPS */'
      '                        SELECT COUNT(*)'
      '                        FROM   METGES M'
      
        '                        JOIN   DRETSMETGES D ON M.CODI = D.C_USU' +
        'ARI AND D.C_DRET = '#39'M650'#39
      '                        WHERE  M.CODI = :C_METGE'
      '                        INTO  :ESBECARI;'
      '                        '
      '                        IF (ESBECARI > 0) THEN  SELECT M.METGE'
      
        '                                                FROM DRETSMETGES' +
        ' D'
      
        '                                                JOIN METGES M ON' +
        ' D.C_USUARI = M.CODI'
      
        '                                                WHERE D.C_DRET =' +
        ' '#39'M76'#39' AND M.BAIXA='#39'N'#39
      '                                                ORDER BY M.CODI'
      '                                                ROWS 1'
      
        '                                                INTO :SUPERVISOR' +
        ';'
      ''
      
        '                        IF (ESBECARI = 0) THEN Metges = Metges |' +
        '| " (" || METGE || ")";'
      
        '                                          ELSE Metges = Metges |' +
        '| " (" || METGE || ", " || SUPERVISOR || ")";'
      '                  END'
      '            end'
      ''
      '            if (VerMetges = "C") then'
      '            begin'
      '                  SELECT M.METGE'
      '                  FROM   METGES M, TRACTAMENTS T'
      '                  WHERE  T.C_Tractament = :C_Tractament'
      '                  AND    M.CODI = T.C_Coordinador'
      '                  INTO  :METGE;'
      ''
      '                  Metges = " (" || Metge || ")";'
      '            end'
      ''
      '            IF (NIVELL = 1) THEN'
      '            BEGIN'
      
        '                  /* ABANS DE IMPRIMIR EL TITOL, MIREM SI TE ITE' +
        'MS A IMPRIMIR */'
      '                  SELECT COUNT(*)'
      '                  FROM   INFREVILIN R, CODIREVI C'
      '                  WHERE  R.C_ITEM = C.C_ITEM'
      '                  AND    R.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    C.ITEMTOTAL STARTING WITH :C_ITEMTOTAL'
      '                  INTO  :TEFILLS;'
      ''
      '                  IF (TEFILLS > 0) THEN'
      '                  BEGIN'
      
        '                        /* Conclusions; t'#237'tol en negreta i subra' +
        'tllat */'
      
        '                        IF (C_ITEM = 59) THEN Texte = "\par\ul\b' +
        ' "  || Linea || "\ul0\b0 " || Metges || "\par\par ";'
      
        '                                         ELSE Texte = "\par\ul "' +
        '  || Linea || "\ul0 " || Metges || "\par\par ";'
      '                        Ordre = Ordre+1;'
      '                        SUSPEND;'
      '                  END'
      '            END'
      ''
      '            IF (NIVELL = 2) THEN'
      '            BEGIN'
      
        '                  /* ABANS DE IMPRIMIR EL TITOL, MIREM SI TE ITE' +
        'MS A IMPRIMIR */'
      '                  SELECT COUNT(*)'
      '                  FROM   INFREVILIN R, CODIREVI C'
      '                  WHERE  R.C_ITEM = C.C_ITEM'
      '                  AND    R.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    C.ITEMTOTAL STARTING WITH :C_ITEMTOTAL'
      '                  INTO  :TEFILLS;'
      ''
      '                  IF (TEFILLS > 0) THEN'
      '                  BEGIN'
      
        '                        Texte = "\par\b - " || Linea || "\b0 "  ' +
        '|| Metges || "\par\par ";'
      '                        Ordre = Ordre+1;'
      '                        SUSPEND;'
      '                  END'
      '            END'
      ''
      '            Anotacio = Null;'
      ''
      '            IF (NIVELL > 1 ) THEN'
      '            BEGIN'
      '                  FOR SELECT R.ANOTACIO FROM INFREVILIN R'
      '                      WHERE R.C_ITEM = :C_ITEM'
      '                      AND R.C_TRACTAMENT = :C_TRACTAMENT'
      '                      INTO :Anotacio'
      '                  DO BEGIN'
      
        '                        if (Anotacio is null) then Anotacio = ""' +
        ';'
      ''
      '                        EsRtf = '#39'N'#39';'
      '                        Anotacio = Anotacio;'
      '                     '
      
        '                        if (VerTitol = "S") then Texte = "      ' +
        '* "  || Linea || " " || Anotacio;'
      
        '                                            else Texte = Anotaci' +
        'o ;'
      ''
      '                        Ordre = Ordre+1;'
      '                     '
      '                        SUSPEND;'
      '                  END'
      '            END'
      '      END'
      'END')
    Select.Strings = (
      ''
      'SELECT *'
      'FROM P_CODIREVI_INFORME(60434,1,0)'
      'ORDER BY ORDRE')
    Dic1 = CodiRevi
    Dic2 = InfReviLin
    Dic1Name = 'CodiRevi'
    Dic2Name = 'InfReviLin'
    Abierta = False
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
    ModiFecha = 36998.5412152431
    Left = 270
    Top = 184
  end
  object HClinica: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Num Hist'
        NombreDB = 'NUM_HIST'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Datacreada'
        NombreDB = 'DATACREADA'
        Longitud = 8
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Entregados'
        NombreDB = 'ENTREGADOS'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Num Hist')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Hclinica'
    NombreTabla = 'HCLINICA'
    Organiza = tbBase
    CamposVer.Strings = (
      'Num Hist'
      'Datacreada'
      'Entregados')
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7357919097
    Left = 785
    Top = 126
  end
  object HClinicaCodis: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codigo'
        NombreDB = 'CODIGO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripcion Cat'
        NombreDB = 'DESCRIPCION_CAT'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripcion Cast'
        NombreDB = 'DESCRIPCION_CAST'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codigo')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Motiusor Hclinica'
    NombreTabla = 'MOTIUSOR_HCLINICA'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codigo'
      'Descripcion Cat'
      'Descripcion Cast')
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7357922801
    Left = 785
    Top = 86
  end
  object HClinicaMov: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Num Mov'
        NombreDB = 'NUM_MOV'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Num Hist'
        NombreDB = 'NUM_HIST'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data'
        NombreDB = 'DATA'
        Longitud = 8
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'E S'
        NombreDB = 'E_S'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Elementos'
        NombreDB = 'ELEMENTOS'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge'
        NombreDB = 'METGE'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu Sor'
        NombreDB = 'MOTIU_SOR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ccr'
        NombreDB = 'CCR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Num Mov')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Hist'
        NombreDB = 'NUM_HIST'
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
    Nombre = 'Mov Hclinica'
    NombreTabla = 'MOV_HCLINICA'
    Organiza = tbBase
    CamposVer.Strings = (
      'Num Mov'
      'Num Hist'
      'Data'
      'E S'
      'Elementos'
      'Metge'
      'Motiu Sor'
      'Ccr')
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7357931829
    Left = 781
    Top = 38
  end
  object Diagnostics: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'Tractament al que fa referencia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'I'
        Comentario = 'I.Ingres, A.Alta, P: Proc'#233's'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'Tractament'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi'
        NombreDB = 'C_Diagnostic'
        Longitud = 15
        Consulta = 'Codiicd2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'SubCodi'
        NombreDB = 'G_Diagnostic'
        Longitud = 15
        Consulta = 'Codiicd'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal'
        NombreDB = 'N_Diagnostic'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
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
        Aplica = kcMODELS
        Nombre = 'Classe'
        NombreDB = 'Classe'
        Longitud = 1
        Consulta = 'classes'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'POA'
        NombreDB = 'POA'
        Longitud = 1
        Consulta = 'poa'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre CMB'
        NombreDB = 'OrdreCMB'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'IASist reordena diagn'#242'stics'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Classe CMB'
        NombreDB = 'ClasseCMB'
        Longitud = 1
        Consulta = 'classes2'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'IASist reclassifica diagn'#242'stics'
      end
      item
        Aplica = kcMODELS
        Nombre = 'POACMB'
        NombreDB = 'POACMB'
        Longitud = 1
        Consulta = 'poa2'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'IASist revisa el POA'
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
        Nombre = 'Confian'#231'a diagn'#242'stic'
        NombreDB = 'CONFIANCA'
        Longitud = 10
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Identificador WS'
        NombreDB = 'ID_DIAGNOSTIC'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ID'
        NombreDB = 'ID'
        Longitud = 8
        zType = tcIB_Integer
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
          'Tractament'
          'Tipus'
          'Ordre')
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
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
        ForaneoDic = wDataBasics.Metges
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
          'Tractament'
          'Tipus'
          'Ordre CMB')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ID'
        NombreDB = 'id'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Codiicd'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'SubCodi')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'SubCodi')
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
        Nombre = 'Codiicd2'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi')
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
        Nombre = 'classes'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Classe')
        CopiarOrigen.Strings = (
          'Classe')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'DIAGS_CLASSE'#39
      end
      item
        Nombre = 'classes2'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Classe CMB')
        CopiarOrigen.Strings = (
          'Classe CMB')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'DIAGS_CLASSE'#39
      end
      item
        Nombre = 'poa'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'POA')
        CopiarOrigen.Strings = (
          'POA')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'DIAGS_POA'#39
      end
      item
        Nombre = 'poa2'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'POACMB')
        CopiarOrigen.Strings = (
          'POACMB')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'DIAGS_POA'#39
      end>
    Nombre = 'Diagnostics'
    NombreTabla = 'Diagnostics'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tractament'
      'Tipus'
      'Ordre'
      'Codi'
      'Literal'
      'Metge'
      'Data'
      'SubCodi'
      'Classe'
      'Ordre CMB'
      'Classe CMB'
      'POA'
      'POACMB')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7357937269
    Left = 206
    Top = 494
  end
  object Lesions: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Historia'
        NombreDB = 'C_Historia'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Lesi'#243
        NombreDB = 'C_Linia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi'
        NombreDB = 'C_Lesio'
        Longitud = 6
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'SubCodi'
        NombreDB = 'G_Lesio'
        Longitud = 15
        Consulta = 'codiicd'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal'
        NombreDB = 'N_Lesio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'N'#186' Historia'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn"'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
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
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Historia'
          'Ordre')
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
          'N'#186' Historia')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FKLesionsS'
        NombreDB = 'FKLesionsS'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Historia'
          'N'#250'm. Lesi'#243)
        Tipo = tiForaneo
        ForaneoDic = LesionsSucc
        ForaneoCampos.Strings = (
          'N'#250'm. Hist.'
          'N'#250'm. lesi'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'codiicd'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'SubCodi')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'SubCodi')
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
      end>
    Nombre = 'Lesions'
    NombreTabla = 'Lesions'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Historia'
      'N'#250'm. Lesi'#243
      'SubCodi'
      'Literal')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7357942708
    Left = 90
    Top = 494
  end
  object InfAlta: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCodigo
        Nombre = 'Tipus'
        NombreDB = 'C_TipusInforme'
        Longitud = 10
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'Infermeria, etc...'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 5
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
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'C_EstatInforme'
        Longitud = 2
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMemo
        Nombre = 'Informe'
        NombreDB = 'Informe'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus'
          'Tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Tractament'
        NombreDB = 'Tractament'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Informes Alta'
    NombreTabla = 'InfAlta'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus'
      'N'#186' Hist'#242'ria'
      'Tractament'
      'Estat')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 6
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 37642.7590196296
    Left = 86
    Top = 124
  end
  object AnotaPsicologia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C_Anotacio'
        NombreDB = 'C_Anotacio'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu'
        NombreDB = 'C_Motiu'
        Longitud = 2
        Consulta = 'motiu'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Intervencio'
        NombreDB = 'C_Intervencio'
        Longitud = 2
        Consulta = 'interv'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Modalitat'
        NombreDB = 'C_Modalitat'
        Longitud = 2
        Consulta = 'modal'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Anotacio')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C_Anotacio')
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'motiu'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Motiu')
        CopiarOrigen.Strings = (
          'Motiu')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'PSICOLOGIA.MOTIU'#39
      end
      item
        Nombre = 'interv'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Intervencio')
        CopiarOrigen.Strings = (
          'Intervencio')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'PSICOLOGIA.INTERVEN.'#39
      end
      item
        Nombre = 'modal'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Modalitat')
        CopiarOrigen.Strings = (
          'Modalitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'PSICOLOGIA.MODALITAT'#39
      end>
    Nombre = 'Anotacions Psicologia'
    NombreTabla = 'AnotaPsicologia'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Anotacio'
      'Motiu'
      'Intervencio')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 8
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 30
    Top = 300
  end
  object CancelaValida: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CancelaValida'
    ForceNombreDB = False
    Body.Strings = (
      ''
      'RETURNS'
      '('
      '      C_ANOTACIO INTEGER,'
      '      HoresDif integer'
      ')'
      'AS'
      '      DECLARE VARIABLE HoresTope   INTEGER;'
      '      DECLARE VARIABLE DataHora    DATE;'
      '      DECLARE VARIABLE DataMira    DATE;'
      '      DECLARE VARIABLE Festa       INTEGER;'
      '      DECLARE VARIABLE EstatValida INTEGER;'
      '      DECLARE VARIABLE C_Intercon     INTEGER;'
      '      DECLARE VARIABLE Estat_Intercon INTEGER;'
      '      DECLARE VARIABLE Estat_Anterior INTEGER;'
      'BEGIN'
      ''
      ''
      '      FOR SELECT B.C_ANOTACIO, B.DATA, B.C_ESTATVALIDA'
      '          FROM   HISTORIAVALIDA A'
      '          JOIN   HISTORIA B ON A.C_ANOTACIO = B.C_ANOTACIO'
      '          WHERE  A.C_ESTATVALIDA BETWEEN 10 AND 19'
      '          INTO  :C_Anotacio, :DataHora, :EstatValida'
      '      DO BEGIN'
      ''
      
        '            SELECT HORESVALIDACURS FROM CONFIG WHERE CLAU = 1 IN' +
        'TO :HoresTope;'
      ''
      
        '            /* si hi ha dies festius entre la data de l'#39'anotaci'#243 +
        ' i ara, no els comptem */'
      '            DataMira = F_SoloFecha(DataHora);'
      '            WHILE (DataMira <= "NOW") DO'
      '            BEGIN'
      
        '                  IF ((F_DiaDeLaSemana(DataMira) = 6) OR (F_DiaD' +
        'eLaSemana(DataMira) = 7)) THEN HoresTope = HoresTope + 24;'
      '                  ELSE BEGIN'
      '                        Festa = 0;'
      
        '                        SELECT COUNT(*) FROM FESTIUS WHERE DATA ' +
        '= :DataMira INTO :Festa;'
      
        '                        IF (Festa > 0) THEN HoresTope = HoresTop' +
        'e + 24;'
      '                  END;'
      '                  DataMira = DataMira + 1;'
      '            END;'
      '            '
      
        '            HoresDif = F_DifTiempo(DataHora, cast('#39'now'#39' as date)' +
        ') / 60;'
      ''
      '            IF (HoresDif >= HoresTope) THEN'
      '            BEGIN'
      
        '                  UPDATE HISTORIA       SET C_ESTATVALIDA = 20 W' +
        'HERE C_ANOTACIO = :C_ANOTACIO;'
      
        '                  UPDATE HISTORIAVALIDA SET C_ESTATVALIDA = 20 W' +
        'HERE C_ANOTACIO = :C_ANOTACIO;'
      '                  '
      
        '                  /* Si l'#39'anotaci'#243' corresponia a la SOL'#183'LICITUD ' +
        'd'#39'una INTERCONSULTA,'
      '                     hem d'#39'anul'#183'lar la interconsulta */'
      '                  IF (EstatValida = 14) THEN'
      '                  BEGIN'
      '                        SELECT C_INTERCON'
      '                        FROM   HISTORIA'
      '                        WHERE  C_ANOTACIO = :C_Anotacio'
      '                        INTO  :C_Intercon;'
      ''
      '                        UPDATE INTERCON'
      
        '                        SET    RESPOSTA = '#39'Validaci'#243' cancel'#183'lada' +
        ' (excedit en el temps)'#39','
      '                               DATA2    = "TODAY",'
      '                               ESTAT    = 80'
      '                        WHERE  C_INTERCON = :C_Intercon;'
      ''
      
        '                        /* I caduquem la petici'#243' del resident a ' +
        'InterconValida */'
      
        '                        UPDATE INTERCONVALIDASOL SET ESTAT_VALID' +
        'A = '#39'C'#39' WHERE C_INTERCON = :C_Intercon AND ESTAT_VALIDA = '#39'P'#39';'
      '                  END;'
      '                     '
      
        '                  /* Si l'#39'anotaci'#243' corresponia a la RESPOSTA d'#39'u' +
        'na INTERCONSULTA,'
      
        '                     hem d'#39'anul'#183'lar la resposta perqu'#232' la interc' +
        'onsulta torni a quedar pendent de respondre */'
      '                  IF (EstatValida = 13) THEN'
      '                  BEGIN'
      '                        SELECT C_INTERCON, ESTAT_INTERCON'
      '                        FROM   HISTORIA'
      '                        WHERE  C_ANOTACIO = :C_Anotacio'
      '                        INTO  :C_Intercon, :Estat_Intercon;'
      ''
      
        '                        SELECT C_ESTAT FROM ESTATINTERCON WHERE ' +
        'NEXTESTATRESI = :Estat_Intercon INTO :Estat_Anterior;'
      ''
      '                        UPDATE INTERCON'
      '                        SET    RESPOSTA = NULL,'
      '                               DATA2    = NULL,'
      '                               C_METGE2 = NULL,'
      '                               ESTAT    = :Estat_Anterior'
      '                        WHERE  C_INTERCON = :C_Intercon;'
      '                        '
      
        '                        /* I caduquem la resposta del resident a' +
        ' InterconValida */'
      
        '                        UPDATE INTERCONVALIDA SET ESTAT_VALIDA =' +
        ' '#39'C'#39' WHERE C_INTERCON = :C_Intercon AND ESTAT_VALIDA = '#39'P'#39';'
      '                  END;'
      '                  '
      '                  SUSPEND;'
      '            end'
      '      END'
      'END')
    Select.Strings = (
      'select * from P_HISTORIAVALIDA_CANCELAVALIDA')
    Dic1 = HistoriaValida
    Dic1Name = 'HistoriaValida'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 348
    Top = 16
  end
  object HistoriaValida: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Anotaci'#243
        NombreDB = 'C_Anotacio'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Obs_Valida'
        NombreDB = 'Obs_Valida'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Observacions de la validacio.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data_Valida'
        NombreDB = 'Data_Valida'
        Longitud = 16
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Data/hora de la validacio, si esta null, no esta validat.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge_Valida'
        NombreDB = 'C_Metge_Valida'
        Longitud = 16
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        Consulta = 'Validador'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Metge de la validacio, si esta null no esta validat.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Valida'
        NombreDB = 'C_EstatValida'
        Longitud = 1
        Consulta = 'EstatValida'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codi camps'
      end>
    Indices = <
      item
        Nombre = 'Anotaci'#243
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Anotaci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Valida'
        NombreDB = 'Valida'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Estat Valida'
          'Data_Valida')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Validador'
        NombreDB = 'Validador'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Metge_Valida')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
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
          'N'#186' Anotaci'#243)
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Validador'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge_Valida')
        CopiarOrigen.Strings = (
          'Metge_Valida')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'EstatValida'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat Valida')
        CopiarOrigen.Strings = (
          'Estat Valida')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TipusCodi = '#39'VALIDACURS'#39
      end>
    Nombre = 'Anotacions pte Validar'
    NombreTabla = 'HISTORIAVALIDA'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Anotaci'#243
      'Data_Valida'
      'Metge_Valida'
      'Estat Valida')
    IndiceVer = 'Anotaci'#243
    Navegar = False
    Nivel = 6
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7359727546
    Left = 270
    Top = 16
  end
  object PteValida: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Pendents'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '   E_Metge Varchar(5),'
      '   E_Como SmallInt'
      ')'
      'RETURNS'
      '('
      '      C_ANOTACIO INTEGER,'
      '      C_USUARI VARCHAR(5),'
      '      N_USUARI VARCHAR(40),'
      '      C_SUPERVISOR VARCHAR(5),'
      '      DATA DATE,'
      '      C_HISTORIA INTEGER,'
      '      N_HISTORIA VARCHAR(100),'
      '      HORES INTEGER,'
      '      C_Grup CHAR(2),'
      '      N_GRUP VARCHAR(40),'
      '      C_Especial CHAR(2),'
      '      N_ESPECIAL VARCHAR(40),'
      '      C_EstatValida SMALLINT,'
      '      N_EstatValida VARCHAR(40)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_EspecialMetge CHAR(2);'
      'BEGIN'
      ''
      '/*'
      '      Llistat de anotacions pendents de validar'
      '      Depenent del parametre Como seran:'
      ''
      '      0. Historic, TOTS'
      
        '      1. Alarma, nomes aquells usuaris que el tinguin com a metg' +
        'e responsable.'
      
        '      2. Consulta ptes. Nomes aquells usuaris de la mateixa espe' +
        'cialitat.'
      
        '      3. Recuperar. Tot el historic, que estan pendents, o caduc' +
        'ats automaticament pel temps.'
      ''
      ''
      '      Estats de validacio:'
      '      '
      '      '
      '      0     No li afecta la validaci'#243
      '      10    Pendent de validar'
      '      20    Cancel'#183'lat (excedit en temps)'
      '      30    Cancel'#183'lat en la validacio'
      '      50    Validat (esta actiu)'
      '      51    Recuperat per cap clinic.'
      ''
      ''
      '*/'
      ''
      '      IF (E_COMO IS NULL) THEN E_COMO=1;'
      ''
      
        '      FOR SELECT A.C_ANOTACIO, B.DATA, B.C_HISTORIA, F.NOMCOMPLE' +
        'T,'
      
        '                 B.C_USUARI, M.METGE, M.C_SUPERVISOR, G.C_GRUP, ' +
        'G.N_GRUP, E.C_ESPECIAL, E.N_ESPECIAL,'
      '                 CC.C_CODI, CC.N_CODI'
      
        '      FROM (((((HISTORIAVALIDA A JOIN HISTORIA B ON A.C_ANOTACIO' +
        ' = B.C_ANOTACIO)'
      '      JOIN METGES M ON B.C_USUARI = M.CODI)'
      '      JOIN FILIACIO F ON F.NUM_HIST = B.C_HISTORIA)'
      '      JOIN ESPECIAL E ON E.C_ESPECIAL = M.C_ESPECIAL)'
      '      JOIN GRUPS G ON G.C_GRUP = M.C_GRUP)'
      
        '      JOIN CODICAMPS CC ON CC.TIPUSCODI = '#39'VALIDACURS'#39' AND CC.C_' +
        'CODI = A.C_ESTATVALIDA'
      '      WHERE A.C_ESTATVALIDA BETWEEN 10 AND 29'
      '      INTO'
      '            :C_ANOTACIO, :DATA, :C_HISTORIA, :N_HISTORIA,'
      
        '            :C_USUARI, :N_USUARI, :C_SUPERVISOR, :C_GRUP, :N_GRU' +
        'P, :C_ESPECIAL, :N_ESPECIAL,'
      '            :C_ESTATVALIDA, :N_ESTATVALIDA'
      '      '
      '      DO BEGIN'
      ''
      '            /* ALARMA */'
      '            if (E_Como = 1) then'
      '            begin'
      
        '                  if ( (C_Supervisor=E_Metge) and (C_EstatValida' +
        ' between 10 and 19) ) then Suspend;'
      '            end'
      ''
      '            /*Especialitat*/'
      '            if (E_Como = 2) then'
      '            begin'
      
        '                  Select C_Especial from Metges where codi = :E_' +
        'Metge into :C_EspecialMetge;'
      
        '                  if ( (C_EspecialMetge = C_Especial) and (C_Est' +
        'atValida between 10 and 19) ) then Suspend;'
      '            end'
      '            '
      '            /*Cap clinic*/'
      ''
      '            if (E_Como = 3) then  Suspend;'
      '      END'
      ''
      'END')
    Select.Strings = (
      'SELECT * FROM P_HISTORIAVALIDA_PENDENTS('#39'P99'#39',1)')
    Dic1 = HistoriaValida
    Dic1Name = 'HistoriaValida'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 417
    Top = 16
  end
  object vValida: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Anotaci'#243
        NombreDB = 'C_Anotacio'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Presta'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        Consulta = 'Metge2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 16
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        zType = tcIB_Date
        zNotNull = True
        Comentario = 'Data+Hora de la anotacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'Metge1'
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'Usuari de la anotacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'Grup del usuari'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anotaci'#243
        NombreDB = 'Anotacio'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Impr'#233's'
        NombreDB = 'Impres'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Es una epicrisi'
        NombreDB = 'EsEpicrisi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Informe d'#39'alta'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Interconsulta'
        NombreDB = 'C_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'intercon'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat Interconsulta'
        NombreDB = 'Estat_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Estat'
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'intercon'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Anulat'
        NombreDB = 'Anulat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Es normal'
        NombreDB = 'EsNormal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Valida'
        NombreDB = 'C_EstatValida'
        Longitud = 1
        Consulta = 'EstatValida'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codi camps'
      end>
    Indices = <
      item
        Nombre = 'Anotaci'#243
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Anotaci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia Cronol'#243'gic'
        NombreDB = 'Historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Hist'#242'ria'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Historia D'
        NombreDB = 'HistoriaD'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Hist'#242'ria'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
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
        Nombre = 'Tractament'
        NombreDB = 'Tractament'
        EsVirtual = True
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
        Nombre = 'Coordinador'
        NombreDB = 'Coordinador'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Metge Coordinador')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grup'
        NombreDB = 'Grup'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Grup')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'InterCon'
        NombreDB = 'InterCon'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Interconsulta')
        Tipo = tiForaneo
        ForaneoDic = wDataIntercon.InterCon
        ForaneoCampos.Strings = (
          'N'#186' Interconsulta')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Prestacio'
        NombreDB = 'Prestacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Prestaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metge1'
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
        Nombre = 'Metge2'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge Coordinador')
        CopiarOrigen.Strings = (
          'Metge Coordinador')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Grup'
        Master = wDataBasics.Grups
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
        Nombre = 'Presta'
        Master = wDataBasics.Prestacion
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
        Nombre = 'Estat'
        Master = wDataIntercon.IC_Estats
        BuscaOrigen.Strings = (
          'Estat Interconsulta')
        CopiarOrigen.Strings = (
          'Estat Interconsulta')
        CopiarMaster.Strings = (
          'Estat')
        BuscaMaster.Strings = (
          'Estat')
      end
      item
        Nombre = 'EstatValida'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat Valida')
        CopiarOrigen.Strings = (
          'Estat Valida')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TipusCodi = '#39'VALIDACURS'#39
      end>
    Nombre = 'Anotacions pte validar'
    NombreTabla = 'vValida'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Hist'#242'ria'
      'Data'
      'Impr'#233's'
      'N'#186' Anotaci'#243
      'Tractament'
      'Usuari'
      'Prestaci'#243)
    IndiceVer = 'Historia Cronol'#243'gic'
    Navegar = False
    Nivel = 6
    Grupo = 0
    Oculto = True
    Modi = True
    Left = 493
    Top = 16
  end
  object InsValida: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Valida'
    ForceNombreDB = False
    Body.Strings = (
      '      DECLARE VARIABLE EstatInformeAlta INTEGER;'
      '      DECLARE VARIABLE PotInformeAlta   INTEGER;'
      '      DECLARE VARIABLE EsValidable      INTEGER;'
      ''
      '      DECLARE VARIABLE Data_A   DATE;'
      '      DECLARE VARIABLE Hora_A   VARCHAR(5);'
      '      DECLARE VARIABLE DH_Alta  DATE;'
      'BEGIN'
      '      IF (USER <> "REPLICATOR") THEN'
      '      BEGIN    '
      '      '
      
        '            /* Si l'#39'usuari que fa l'#39'anotaci'#243' '#233's resident, becari' +
        ', etc, afegim l'#39'anotaci'#243' a la taula de validacions */'
      '            IF (NEW.C_ESTATVALIDA > 0)'
      '            THEN'
      
        '                  INSERT INTO HISTORIAVALIDA (C_Anotacio, C_Esta' +
        'tValida)'
      '                  VALUES (NEW.C_Anotacio, NEW.C_ESTATVALIDA);'
      ''
      
        '            /* Si insereixen una anotaci'#243' d'#39'alta hospital'#224'ria ef' +
        'ectiva,'
      
        '               posem data d'#39'alta al tractament, ho registrem al ' +
        'Log i enviem l'#39'alta a FT */'
      '            IF (NEW.QUEES = 48) THEN'
      '            BEGIN'
      '                  Data_A  = "TODAY";'
      '                  Hora_A  = F_HoratoStr("NOW");'
      
        '                  DH_Alta = CAST(:Data_A ||'#39' '#39'|| :Hora_A AS DATE' +
        ');'
      '                  '
      '                  UPDATE TRACTAMENTS'
      '                  SET DATA_ALTA = :Data_A, HORA_ALTA = :Hora_A'
      '                  WHERE C_TRACTAMENT = NEW.C_TRACTAMENT;'
      '                  '
      
        '                  INSERT INTO LOGALTES (C_TRACTAMENT, DATA_REGIS' +
        'TRE, C_USUARI, DATA_ALTA, C_ANOTACIO)'
      
        '                  VALUES (NEW.C_TRACTAMENT, "NOW", NEW.C_USUARI,' +
        ' :DH_Alta, NEW.C_ANOTACIO);'
      '                  '
      
        '                  EXECUTE PROCEDURE P_HL7_LOG_ANOTA('#39'TRACTAMENTS' +
        #39', NEW.C_TRACTAMENT, '#39'ADT_A03'#39', '#39'I'#39', '#39#39', '#39'M'#39');'
      '            END;'
      '      END     '
      'END')
    Dic1 = Historia
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
    Modi = True
    ModiFecha = 37173.8121735532
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 206
    Top = 16
  end
  object ValidaTot: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Tot'
    ForceNombreDB = False
    Body.Strings = (
      '('
      ' E_Metge VARCHAR(5),'
      ' E_Com SMALLINT'
      ')'
      'RETURNS'
      '('
      '  ESTAT_VALIDACIO VARCHAR(150),     /* A, E, R, X, I */'
      '  HISTORIA INTEGER,'
      '  NOM_COMPLET VARCHAR(100),'
      '  DATA DATE,'
      
        '  ESPECIALITAT VARCHAR(30),         /* especialitat del resident' +
        ' (literal) */'
      '  C_USUARI VARCHAR(5),              /* c_resident    */'
      '  USUARI VARCHAR(40),               /* n_resident    */'
      '  GRUP VARCHAR(40),'
      '  SUPERVISOR VARCHAR(5),'
      '  COORDINADOR VARCHAR(5),'
      
        '  TIPUS CHAR(1),                    /* A: anotaci'#243' al curs, E: E' +
        'CB, R: Revisions, X: Escales, I: Interconsultes */'
      '  C_ANOTACIO INTEGER,               /* A, R, I       */'
      '  C_TRACTAMENT INTEGER,             /* E, R, X, I    */'
      '  C_INTERCON INTEGER,               /* I             */'
      '  CLAU INTEGER,                     /* X             */'
      '  C_ESCALA INTEGER,                 /* X             */'
      '  C_GRUP CHAR(2),'
      '  C_ESTATVALIDA SMALLINT,           /* A, R, I       */'
      
        '  C_ESPECIAL CHAR(2),               /* especialitat del resident' +
        ' (codi) */'
      '  MESOS INTEGER'
      ')'
      'AS'
      '      DECLARE VARIABLE E_Grup     CHAR(2);'
      '      DECLARE VARIABLE E_Especial CHAR(2);'
      '      DECLARE VARIABLE R_Escala   VARCHAR(15);'
      
        '      DECLARE VARIABLE N_ESPECIAL VARCHAR(30);      /* I especia' +
        'litat de la interconsulta */'
      
        '      DECLARE VARIABLE C_TIPUS    VARCHAR(10);      /* Tipus de ' +
        'sol'#183'licitud: INTERCON, CONSULTOR, PROVA ESP, etc. */'
      
        '      DECLARE VARIABLE N_TIPUS    VARCHAR(100);     /* Descripci' +
        #243' de la sol'#183'licitud */'
      'BEGIN'
      ''
      '      IF (E_COM IS NULL) THEN E_COM = 1;'
      '      '
      
        '      SELECT C_GRUP, C_ESPECIAL FROM METGES WHERE CODI = :E_Metg' +
        'e INTO :E_Grup, :E_Especial;'
      ''
      '/*'
      '      Llistat de ANOTACIONS pendents de validar'
      '      Depenent del parametre "E_Com" seran:'
      ''
      '      0. Hist'#242'ric: TOTS'
      
        '      1. Alarma: nom'#233's les ANOTACIONS d'#39'usuaris que tinguin "E_M' +
        'etge" com a supervisor.'
      
        '      2. Consulta pendents: nom'#233's les ANOTACIONS d'#39'usuaris de la' +
        ' mateixa especialitat que "E_Metge"'
      
        '                            excepte per al grup ME, que llistem ' +
        'les de tot el grup.'
      
        '                           (Si el grup '#233's ME, per programa es fi' +
        'ltra per especialitat per'#242' poden fer F3 per treure el filtre)'
      '      4. Consulta pendents: com 2'
      '      '
      '      Estats de validaci'#243':'
      ''
      '      0     No l'#39'afecta la validaci'#243
      '      10    Pendent de validar'
      '      20    Cancel'#183'lat (excedit en temps)'
      '      30    Cancel'#183'lat en la validaci'#243
      '      50    Validat (est'#224' actiu)'
      '      51    Recuperat per cap cl'#237'nic.'
      '*/'
      ''
      '      TIPUS = "A";'
      
        '      C_TRACTAMENT = Null;   C_INTERCON = Null;   C_ESCALA = Nul' +
        'l;   CLAU = Null;   COORDINADOR = Null;  MESOS = 0;'
      ''
      
        '      FOR SELECT A.C_ANOTACIO, B.DATA,   B.C_HISTORIA, F.NOMCOMP' +
        'LET, B.C_USUARI,     M.METGE,      M.C_SUPERVISOR,'
      
        '                 G.C_GRUP,     G.N_GRUP, E.C_ESPECIAL, E.N_ESPEC' +
        'IAL, CC.C_CODI,      CC.N_CODI'
      '          FROM   HISTORIAVALIDA A'
      '          JOIN   HISTORIA B   ON A.C_ANOTACIO = B.C_ANOTACIO'
      '          JOIN   METGES M     ON B.C_USUARI = M.CODI'
      '          JOIN   FILIACIO F   ON B.C_HISTORIA = F.NUM_HIST'
      '          JOIN   ESPECIAL E   ON M.C_ESPECIAL = E.C_ESPECIAL'
      '          JOIN   GRUPS G      ON M.C_GRUP = G.C_GRUP'
      
        '          JOIN   CODICAMPS CC ON CC.TIPUSCODI = "VALIDACURS" AND' +
        ' CC.C_CODI = A.C_ESTATVALIDA'
      '          WHERE  A.C_ESTATVALIDA BETWEEN 10 AND 29'
      
        '          AND    A.C_ESTATVALIDA <> 13   /* les respostes d'#39'inte' +
        'rconsultes es llisten despr'#233's */'
      
        '          AND    A.C_ESTATVALIDA <> 14   /* les sol'#183'licituds d'#39'i' +
        'nterconsultes es llisten despr'#233's */'
      '          ORDER  BY B.C_HISTORIA'
      
        '          INTO  :C_ANOTACIO,  :DATA,    :HISTORIA,    :NOM_COMPL' +
        'ET,  :C_USUARI,      :USUARI,    :SUPERVISOR,'
      
        '                :C_GRUP,      :GRUP,    :C_ESPECIAL,  :ESPECIALI' +
        'TAT, :C_ESTATVALIDA, :ESTAT_VALIDACIO'
      ''
      '      DO BEGIN'
      ''
      '            ESTAT_VALIDACIO = '#39'Anotaci'#243' '#39' || ESTAT_VALIDACIO;'
      ''
      '            /* Alarma: supervisor */'
      
        '            IF ((E_Com = 1) AND (SUPERVISOR = E_Metge) AND (C_ES' +
        'TATVALIDA BETWEEN 10 AND 19)) THEN SUSPEND;'
      ''
      '            /* Consulta: grup / especialitat / '#224'rea  */'
      '            /* Caps cl'#237'nics */'
      '            ELSE IF ((E_Com = 2) OR (E_Com = 4)) THEN'
      '            BEGIN'
      
        '                  IF      ((E_Grup = "ME") AND (C_GRUP = "RE") A' +
        'ND (C_ESTATVALIDA BETWEEN 10 AND 19)) THEN SUSPEND;'
      
        '                  ELSE IF ((E_Especial = C_ESPECIAL) AND (C_ESTA' +
        'TVALIDA BETWEEN 10 AND 19)) THEN SUSPEND;'
      '                  ELSE IF ((E_Especial in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))'
      '                       AND (C_ESPECIAL in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))'
      
        '                       AND (C_ESTATVALIDA BETWEEN 10 AND 19)) TH' +
        'EN SUSPEND;'
      '            END;'
      '      END'
      ''
      '/*    Llistat de REVISIONS pendents de validar'
      '      Depenent del parametre "E_Com", seran:'
      ''
      
        '      1. Alarma nom'#233's les REVISIONS d'#39'usuaris que tinguin "E_Met' +
        'ge" com a supervisor.'
      
        '      2. Consulta pendents: nom'#233's les REVISIONS d'#39'usuaris de la ' +
        'mateixa especialitat que "E_Metge".'
      
        '                            excepte per al grup ME, que llistem ' +
        'les de tot el grup.'
      '      4. Consulta pendents supervisor: com 3'
      ''
      '      Estats de validaci'#243':'
      ''
      '      11    Informe de revisi'#243' pendent de validar'
      '      12    Full de revisi'#243' pendent de validar'
      '*/'
      ''
      '      TIPUS = "R";'
      
        '      C_TRACTAMENT = Null;   C_INTERCON = Null;   C_ESCALA = Nul' +
        'l;   CLAU = Null;   COORDINADOR = Null; MESOS = 0;'
      '      '
      
        '      C_ESTATVALIDA = 11;   ESTAT_VALIDACIO = "Informe de Revisi' +
        #243' pendent de validar";'
      '     '
      
        '      FOR SELECT R.C_ANOTACIO, H.DATA,   R.C_HISTORIA, F.NOMCOMP' +
        'LET, H.C_USUARI,     M.METGE,      M.C_SUPERVISOR,'
      
        '                 G.C_GRUP,     G.N_GRUP, E.C_ESPECIAL, E.N_ESPEC' +
        'IAL, F_TRUNCAR(("TODAY"-F.DATA_LESSIO)/30)'
      '          FROM   INFREVI R'
      '          JOIN   HISTORIA H ON R.C_ANOTACIO = H.C_ANOTACIO'
      '          JOIN   FILIACIO F ON R.C_HISTORIA = F.NUM_HIST'
      '          JOIN   METGES M   ON H.C_USUARI = M.CODI'
      '          JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '          JOIN   GRUPS G    ON M.C_GRUP = G.C_GRUP'
      '          WHERE  R.ESTAT = 1'
      '          ORDER  BY R.C_HISTORIA'
      
        '          INTO  :C_ANOTACIO,  :DATA,    :HISTORIA,    :NOM_COMPL' +
        'ET,  :C_USUARI,      :USUARI,    :SUPERVISOR,'
      
        '                :C_GRUP,      :GRUP,    :C_ESPECIAL,  :ESPECIALI' +
        'TAT, :MESOS'
      ''
      '      DO BEGIN'
      ''
      '            /* Alarma: supervisor */'
      
        '            IF ((E_Com = 1) AND (SUPERVISOR = E_Metge)) THEN SUS' +
        'PEND;'
      ''
      '            /* Consulta: grup / especialitat / '#224'rea */'
      '            ELSE IF (E_Com = 2) THEN'
      '            BEGIN'
      
        '                  IF      ((E_Grup = "ME") AND (C_GRUP = "RE")) ' +
        'THEN SUSPEND;'
      
        '                  ELSE IF  (E_Especial = C_ESPECIAL) THEN SUSPEN' +
        'D;'
      
        '                  ELSE IF ((E_Especial in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))' +
        ' and (C_ESPECIAL in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))) THEN SUSPEND;'
      '            END;'
      ''
      '            /* Caps cl'#237'nics */'
      '            ELSE IF (E_Com = 4) THEN SUSPEND;'
      '      END'
      ''
      ''
      '      TIPUS = "R";'
      
        '      C_TRACTAMENT = Null;   C_INTERCON = Null;   C_ESCALA = Nul' +
        'l;   CLAU = Null;   COORDINADOR = Null; MESOS = 0;'
      ''
      
        '      C_ESTATVALIDA = 12;   ESTAT_VALIDACIO = "Full de revisi'#243' p' +
        'endent de validar";'
      ''
      
        '      FOR SELECT DISTINCT R.C_ANOTACIO, R.DATA,   H.C_HISTORIA, ' +
        'F.NOMCOMPLET, R.C_USUARI,     M.METGE,      M.C_SUPERVISOR,'
      
        '                          G.C_GRUP,     G.N_GRUP, E.C_ESPECIAL, ' +
        'E.N_ESPECIAL, F_TRUNCAR(("TODAY"-F.DATA_LESSIO)/30)'
      '          FROM   INFREVILIN R'
      '          JOIN   HISTORIA H ON R.C_ANOTACIO = H.C_ANOTACIO'
      '          JOIN   FILIACIO F ON H.C_HISTORIA = F.NUM_HIST'
      '          JOIN   METGES M   ON R.C_USUARI = M.CODI'
      '          JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '          JOIN   GRUPS G    ON M.C_GRUP = G.C_GRUP'
      '          WHERE  R.ESTAT = 1'
      '          ORDER  BY H.C_HISTORIA'
      
        '          INTO  :C_ANOTACIO,  :DATA,    :HISTORIA,    :NOM_COMPL' +
        'ET,  :C_USUARI,      :USUARI,    :SUPERVISOR,'
      
        '                :C_GRUP,      :GRUP,    :C_ESPECIAL,  :ESPECIALI' +
        'TAT, :MESOS'
      ''
      '      DO BEGIN'
      ''
      '            /* Alarma: supervisor */'
      
        '            IF ((E_Com = 1) AND (SUPERVISOR = E_Metge)) THEN SUS' +
        'PEND;'
      ''
      '            /* Consulta: grup / especialitat / '#224'rea */'
      '            ELSE IF (E_Com = 2) THEN'
      '            BEGIN'
      
        '                  IF      ((E_Grup = "ME") AND (C_GRUP = "RE")) ' +
        'THEN SUSPEND;'
      
        '                  ELSE IF  (E_Especial = C_ESPECIAL) THEN SUSPEN' +
        'D;'
      
        '                  ELSE IF ((E_Especial in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))' +
        ' and (C_ESPECIAL in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))) THEN SUSPEND;'
      '            END;'
      ''
      '            /* Caps cl'#237'nics */'
      '            ELSE IF (E_Com = 4) THEN SUSPEND;'
      '      END;'
      ''
      ''
      '/*'
      '      Llistat d'#39'ECB'#39's pendents de validar'
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. Alarma: nom'#233's els ECB'#39's de pacients que tinguin "E_Metg' +
        'e" com a coordinador.               // CANVI 20.01.2009'
      
        '      2. Consulta pendents: nom'#233's els ECB'#39's de pacients que ting' +
        'uin "E_Metge" com a coordinador.    // CANVI 20.01.2009'
      '      4. Consulta pendents cap cl'#237'nic: com 3.'
      '      '
      '      Estats de validacio:'
      ''
      '      Els ECB'#39's pendents de validar s'#243'n els que ESTAT = "R".'
      '*/'
      ''
      '      TIPUS = "E";'
      
        '      C_ANOTACIO = Null;   C_INTERCON = Null;   C_ESCALA = Null;' +
        '   CLAU = Null;   SUPERVISOR = Null;  MESOS = 0;'
      ''
      
        '      C_ESTATVALIDA = Null;   ESTAT_VALIDACIO = "ECB pendent de ' +
        'validar";'
      ''
      
        '      FOR SELECT E.C_TRACTAMENT,  E.DATA_RESIDENT, T.C_HISTORIA,' +
        ' F.NOMCOMPLET,  E.METGE_RESIDENT, M.METGE,'
      
        '                 T.C_COORDINADOR, G.C_GRUP,        G.N_GRUP,    ' +
        ' ES.C_ESPECIAL, ES.N_ESPECIAL'
      '          FROM   ECBCAP E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          JOIN   METGES M ON E.METGE_RESIDENT = M.CODI'
      '          JOIN   FILIACIO F ON F.NUM_HIST = T.C_HISTORIA'
      '          JOIN   ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '          JOIN   GRUPS G ON G.C_GRUP = M.C_GRUP'
      '          WHERE  E.ESTAT = "R"'
      '          ORDER  BY E.ESTATAMI, T.C_HISTORIA'
      
        '          INTO  :C_TRACTAMENT,   :DATA,           :HISTORIA,    ' +
        ':NOM_COMPLET,  :C_USUARI,        :USUARI,'
      
        '                :COORDINADOR,    :C_GRUP,         :GRUP,        ' +
        ':C_ESPECIAL,   :ESPECIALITAT'
      '      DO BEGIN'
      '      '
      '            /* Alarma: coordinador */'
      
        '            IF ((E_Com = 1) AND (COORDINADOR = E_Metge)) THEN SU' +
        'SPEND;'
      '            '
      '            /* Consulta: Coordinador / '#224'rea */'
      '            ELSE IF (E_Com = 2) THEN'
      '            BEGIN'
      '                  IF (COORDINADOR = E_Metge) THEN SUSPEND;'
      
        '                  ELSE IF ((E_Especial in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))' +
        ' and (C_ESPECIAL in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))) THEN SUSPEND;'
      '            END;'
      '            '
      '            /* Caps cl'#237'nics */'
      '            ELSE IF (E_Com = 4) THEN SUSPEND;'
      '      END'
      ''
      ''
      '/*'
      '      Llistat d'#39'ESCALES pendents de validar'
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. Alarma: nom'#233's les ESCALES d'#39'usuaris que tinguin "E_Metg' +
        'e" com a supervisor.'
      
        '      2. Consulta pendents: nom'#233's les ESCALES d'#39'usuaris de la ma' +
        'teixa especialitat que "E_Metge".'
      
        '                            excepte per al grup ME, que llistem ' +
        'les de tot el grup.'
      '      4. Consulta pendents supervisor: com 3'
      ''
      '      Estats de validacio:'
      ''
      '      Les ESCALES pendents de validar s'#243'n les que ANULAT = "R"'
      '      Un cop validades passen a tenir ESTAT = "N"'
      '*/'
      ''
      '      TIPUS = "X";'
      
        '      C_ANOTACIO = Null;   C_INTERCON = Null;   COORDINADOR = Nu' +
        'll;  MESOS = 0;'
      '      '
      '      C_ESTATVALIDA = Null;'
      ''
      
        '      FOR SELECT E.C_TRACTAMENT, E.DATA,  E.C_HISTORIA,   F.NOMC' +
        'OMPLET, E.CLAU,   E.C_ESCALA,    X.R_ESCALA,'
      
        '                 E.C_USUARI,     M.METGE, M.C_SUPERVISOR, G.C_GR' +
        'UP,     G.N_GRUP, ES.C_ESPECIAL, ES.N_ESPECIAL'
      '          FROM   ESCALESCAP E'
      '          JOIN   ESCALES X ON E.C_ESCALA = X.C_ESCALA'
      '          JOIN   METGES M ON E.C_USUARI = M.CODI'
      '          JOIN   FILIACIO F ON F.NUM_HIST = E.C_HISTORIA'
      '          JOIN   ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '          JOIN   GRUPS G ON G.C_GRUP = M.C_GRUP'
      '          WHERE  E.ANULAT = "R"'
      '          AND    E.C_ENTRADA >= 0'
      '          ORDER  BY E.C_HISTORIA'
      
        '          INTO  :C_TRACTAMENT,  :DATA,   :HISTORIA,      :NOM_CO' +
        'MPLET,  :CLAU,   :C_ESCALA,     :R_Escala,'
      
        '                :C_USUARI,      :USUARI, :SUPERVISOR,    :C_GRUP' +
        ',       :GRUP,   :C_ESPECIAL,   :ESPECIALITAT'
      '      DO BEGIN'
      '      '
      
        '            ESTAT_VALIDACIO = "Escala " || R_ESCALA || " pendent' +
        ' de validar";'
      ''
      '            /* Alarma: supervisor */'
      
        '            IF ((E_Com = 1) AND (SUPERVISOR = E_Metge)) THEN SUS' +
        'PEND;'
      ''
      '            /* Consulta: grup / especialitat / '#224'rea */'
      '            ELSE IF (E_Com = 2) THEN'
      '            BEGIN'
      
        '                  IF      ((E_Grup = "ME") AND (C_GRUP = "RE")) ' +
        'THEN SUSPEND;'
      
        '                  ELSE IF  (E_Especial = C_ESPECIAL) THEN SUSPEN' +
        'D;'
      
        '                  ELSE IF ((E_Especial in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))' +
        ' and (C_ESPECIAL in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))) THEN SUSPEND;'
      '            END;'
      ''
      '            /* Caps cl'#237'nics */'
      '            ELSE IF (E_Com = 4) THEN SUSPEND;'
      '      END'
      ''
      ''
      '/*'
      '      Llistat d'#39'INTERCONSULTES amb RESPOSTA pendent de validar'
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. Alarma: nom'#233's les RESPOSTES d'#39'usuaris que tinguin "E_Me' +
        'tge" com a supervisor.'
      
        '      2. Consulta pendents: nom'#233's les RESPOSTES d'#39'usuaris de la ' +
        'mateixa especialitat que "E_Metge".'
      
        '                            excepte per al grup ME, que llistem ' +
        'les de tot el grup.'
      '      4. Consulta pendents supervisor: com 3'
      ''
      '      Estats de validacio:'
      ''
      
        '      Les INTERCONSULTES amb RESPOSTA pendent de validar s'#243'n les' +
        ' que ESTAT in [40..49]'
      
        '      Un cop validades passen a tenir ESTAT = NextEstat (segons ' +
        'la taula ESTATINTERCON)'
      '*/'
      ''
      '      TIPUS = "I";'
      
        '      C_ESCALA = Null;   CLAU = Null;   COORDINADOR = Null;  MES' +
        'OS = 0;'
      ''
      '      C_ESTATVALIDA = 13;'
      ''
      
        '      FOR SELECT I.C_INTERCON, I.C_TRACTAMENT, I.C_HISTORIA,   F' +
        '.NOMCOMPLET, H.C_ANOTACIO,  EI.N_ESPECIAL, I.DATA2,'
      
        '                 I.C_METGE2,   M.METGE,        M.C_SUPERVISOR, G' +
        '.C_GRUP,     G.N_GRUP,      EM.C_ESPECIAL, EM.N_ESPECIAL'
      '          FROM   INTERCON I'
      '          JOIN   FILIACIO F ON I.C_HISTORIA = F.NUM_HIST'
      '          JOIN   ESPECIAL EI ON I.C_ESPECIAL = EI.C_ESPECIAL'
      '          JOIN   METGES M ON I.C_METGE2 = M.CODI'
      '          JOIN   ESPECIAL EM ON M.C_ESPECIAL = EM.C_ESPECIAL'
      '          JOIN   GRUPS G ON G.C_GRUP = M.C_GRUP'
      '          JOIN   HISTORIA H ON I.C_INTERCON = H.C_INTERCON'
      '          WHERE  I.ESTAT BETWEEN 40 AND 49'
      '          AND    H.C_ESTATVALIDA = 13'
      
        '          INTO  :C_INTERCON,  :C_TRACTAMENT,  :HISTORIA,      :N' +
        'OM_COMPLET, :C_ANOTACIO,   :N_ESPECIAL,   :DATA,'
      
        '                :C_USUARI,    :USUARI,        :SUPERVISOR,    :C' +
        '_GRUP,      :GRUP,         :C_ESPECIAL,   :ESPECIALITAT'
      '      DO BEGIN'
      '      '
      
        '            ESTAT_VALIDACIO = "Resposta a " || N_ESPECIAL || " p' +
        'endent de validar";'
      '            '
      '            /* Alarma: supervisor */'
      
        '            IF ((E_Com = 1) AND (SUPERVISOR = E_Metge)) THEN SUS' +
        'PEND;'
      ''
      '            /* Consulta: grup / especialitat / '#224'rea */'
      '            ELSE IF (E_Com = 2) THEN'
      '            BEGIN'
      
        '                  IF      ((E_Grup = "ME") AND (C_GRUP = "RE")) ' +
        'THEN SUSPEND;'
      
        '                  ELSE IF  (E_Especial = C_ESPECIAL) THEN SUSPEN' +
        'D;'
      
        '                  ELSE IF ((E_Especial in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))' +
        ' and (C_ESPECIAL in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))) THEN SUSPEND;'
      '            END;'
      ''
      '            /* Caps cl'#237'nics */'
      '            ELSE IF (E_Com = 4) THEN SUSPEND;'
      '      END'
      ''
      ''
      '/*'
      '      Llistat d'#39'INTERCONSULTES pendents de validar'
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. Alarma: nom'#233's les SOL'#183'LICITUDS d'#39'usuaris que tinguin "E' +
        '_Metge" com a supervisor.'
      
        '      2. Consulta pendents: nom'#233's les SOL'#183'LICITUDS d'#39'usuaris de ' +
        'la mateixa especialitat que "E_Metge".'
      
        '                            excepte per al grup ME, que llistem ' +
        'les de tot el grup.'
      '      4. Consulta pendents supervisor: com 3'
      ''
      '      Estats de validacio:'
      ''
      
        '      Les INTERCONSULTES pendents de validar s'#243'n les que ESTAT <' +
        ' 0'
      
        '      Un cop validades passen a tenir ESTAT = NextEstat (segons ' +
        'la taula ESTATINTERCON)'
      '*/'
      ''
      '      TIPUS = "I";'
      
        '      C_ESCALA = Null;   CLAU = Null;   COORDINADOR = Null;  MES' +
        'OS = 0;'
      ''
      '      C_ESTATVALIDA = 14;'
      ''
      
        '      FOR SELECT I.C_INTERCON, I.C_TRACTAMENT, I.C_HISTORIA,   F' +
        '.NOMCOMPLET, H.C_ANOTACIO,  I.C_TIPUS,     EI.N_ESPECIAL, I.DATA' +
        '1,'
      
        '                 I.C_METGE1,   M.METGE,        M.C_SUPERVISOR, G' +
        '.C_GRUP,     G.N_GRUP,      EM.C_ESPECIAL, EM.N_ESPECIAL'
      '          FROM   INTERCON I'
      '          JOIN   FILIACIO F ON I.C_HISTORIA = F.NUM_HIST'
      '          JOIN   ESPECIAL EI ON I.C_ESPECIAL = EI.C_ESPECIAL'
      '          JOIN   METGES M ON I.C_METGE1 = M.CODI'
      '          JOIN   ESPECIAL EM ON M.C_ESPECIAL = EM.C_ESPECIAL'
      '          JOIN   GRUPS G ON G.C_GRUP = M.C_GRUP'
      '          JOIN   HISTORIA H ON I.C_INTERCON = H.C_INTERCON'
      '          WHERE  I.ESTAT < 0'
      '          AND    H.C_ESTATVALIDA = 14'
      
        '          INTO  :C_INTERCON,  :C_TRACTAMENT,  :HISTORIA,      :N' +
        'OM_COMPLET, :C_ANOTACIO,   :C_TIPUS,      :N_ESPECIAL,   :DATA,'
      
        '                :C_USUARI,    :USUARI,        :SUPERVISOR,    :C' +
        '_GRUP,      :GRUP,         :C_ESPECIAL,   :ESPECIALITAT'
      '      DO BEGIN'
      ''
      
        '            IF ((C_TIPUS = '#39'INTERCON'#39') OR (C_TIPUS = '#39'CONSULTOR'#39 +
        ')) THEN N_ESPECIAL = '#39' a '#39' || N_ESPECIAL;'
      
        '                                                                ' +
        '   ELSE N_ESPECIAL = '#39#39';'
      '            '
      
        '            SELECT F_LRTrim(DESCRIPCIO) FROM TIPUSINTERCON WHERE' +
        ' C_TIPUS = :C_TIPUS INTO :N_TIPUS;'
      '            '
      
        '            ESTAT_VALIDACIO = N_TIPUS || N_ESPECIAL || " pendent' +
        ' de validar";'
      ''
      '            /* Alarma: supervisor */'
      
        '            IF ((E_Com = 1) AND (SUPERVISOR = E_Metge)) THEN SUS' +
        'PEND;'
      ''
      '            /* Consulta: grup / especialitat / '#224'rea */'
      '            ELSE IF (E_Com = 2) THEN'
      '            BEGIN'
      
        '                  IF      ((E_Grup = "ME") AND (C_GRUP = "RE")) ' +
        'THEN SUSPEND;'
      
        '                  ELSE IF  (E_Especial = C_ESPECIAL) THEN SUSPEN' +
        'D;'
      
        '                  ELSE IF ((E_Especial in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))' +
        ' and (C_ESPECIAL in ('#39'08'#39','#39'09'#39','#39'14'#39','#39'15'#39'))) THEN SUSPEND;'
      '            END;'
      ''
      '            /* Caps cl'#237'nics */'
      '            ELSE IF (E_Com = 4) THEN SUSPEND;'
      '      END'
      ''
      ''
      'END'
      ''
      '')
    Dic1 = HistoriaValida
    Dic2 = wDataECBDics.ECBCAP
    Dic1Name = 'HistoriaValida'
    Dic2Name = 'ecbcap'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 561
    Top = 16
  end
  object AnotaNeuropsico_OBSOLET: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Anotacio'
        NombreDB = 'C_Anotacio'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Funcio'
        NombreDB = 'Funcio'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        Consulta = 'funcio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Subfuncio'
        NombreDB = 'Subfuncio'
        Longitud = 2
        Consulta = 'subfuncio'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estrategia'
        NombreDB = 'Estrategia'
        Longitud = 2
        Consulta = 'estrategia'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grau d'#39'intervencio'
        NombreDB = 'GrauIntervencio'
        Longitud = 2
        Consulta = 'grauinterv'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Eina - Procediment'
        NombreDB = 'Eina'
        Longitud = 2
        Consulta = 'eina'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tasca'
        NombreDB = 'Tasca'
        Longitud = 2
        Consulta = 'tasca'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resultat de la tasca'
        NombreDB = 'ResultatTasca'
        Longitud = 2
        Consulta = 'resultat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end>
    Indices = <
      item
        Nombre = 'pk_neuropsico'
        NombreDB = 'pk_neuropsico'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Anotacio'
          'Funcio'
          'Subfuncio'
          'Estrategia'
          'Tasca')
        Tipo = tiPrimario
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
          'C_Anotacio')
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'funcio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Funcio')
        CopiarOrigen.Strings = (
          'Funcio')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'NEUROFUNCIO'#39
      end
      item
        Nombre = 'subfuncio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Subfuncio')
        CopiarOrigen.Strings = (
          'Subfuncio')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'NEUROSUBFUNCIO'#39
      end
      item
        Nombre = 'estrategia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estrategia')
        CopiarOrigen.Strings = (
          'Estrategia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'NEUROESTRATEGIA'#39
      end
      item
        Nombre = 'grauinterv'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Grau d'#39'intervencio')
        CopiarOrigen.Strings = (
          'Grau d'#39'intervencio')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'NEUROINTERVENCIO'#39
      end
      item
        Nombre = 'eina'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Eina - Procediment')
        CopiarOrigen.Strings = (
          'Eina - Procediment')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'NEUROEINA'#39
      end
      item
        Nombre = 'tasca'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tasca')
        CopiarOrigen.Strings = (
          'Tasca')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'NEUROTASCA'#39
      end
      item
        Nombre = 'resultat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Resultat de la tasca')
        CopiarOrigen.Strings = (
          'Resultat de la tasca')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'tipuscodi = '#39'NEURORESULTATS'#39
      end>
    Nombre = 'Anotacions Neuropsicologia'
    NombreTabla = 'AnotaNeuropsico'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Anotacio'
      'Funcio'
      'Subfuncio'
      'Estrategia'
      'Grau d'#39'intervencio'
      'Eina - Procediment'
      'Tasca'
      'Resultat de la tasca')
    IndiceVer = 'pk_neuropsico'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 668
    Top = 546
  end
  object Informe2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'INFORME2'
    ForceNombreDB = False
    Body.Strings = (
      
        '(C_HISTORIA INTEGER, QUANTS INTEGER, E_Anotacio integer, QueVer ' +
        'char(1) )'
      'RETURNS'
      '('
      '      FINS_DATA DATE,'
      '      BeginInforme Varchar(3000),'
      
        '      InformeTxt VARCHAR(32000), /*Ara nomes de una anotacio i s' +
        'ense estar en rtf*/'
      '      EndInforme Varchar(3000),'
      '      CONTA INTEGER'
      ')'
      'AS'
      '      DECLARE VARIABLE CONTAREG INTEGER;'
      '      DECLARE VARIABLE IMPRES CHAR(1);'
      '      DECLARE VARIABLE ANULAT CHAR(1);'
      '      DECLARE VARIABLE MARCA CHAR(1);'
      '      DECLARE VARIABLE USUARI VARCHAR(20);'
      '      DECLARE VARIABLE GRUP VARCHAR(40);'
      '      DECLARE VARIABLE PRESTACIO VARCHAR(15);'
      '      DECLARE VARIABLE C_PRESTACIO CHAR(4);'
      '      DECLARE VARIABLE C_PRESTACIO2 CHAR(4);'
      '      DECLARE VARIABLE Data_Ingres DATE;'
      '      DECLARE VARIABLE Data_Alta DATE;'
      '      DECLARE VARIABLE COLOR INTEGER;'
      ''
      '      DECLARE VARIABLE ESEPICRISI CHAR(1);'
      '      DECLARE VARIABLE C_INTERCON INTEGER;'
      '      DECLARE VARIABLE ESTAT_INTERCON INTEGER;'
      '      DECLARE VARIABLE TITUL_INTERCON VARCHAR(40);'
      '      DECLARE VARIABLE TEMP_INTERCON VARCHAR(200);'
      '      DECLARE VARIABLE C_GRUP CHAR(2);'
      '      DECLARE VARIABLE C_ANOTACIO INTEGER;'
      '      DECLARE VARIABLE ESPROVISIONAL INTEGER;'
      ''
      '      DECLARE VARIABLE Obs_Valida VARCHAR (3000);'
      '      DECLARE VARIABLE Data_Valida DATE;'
      '      DECLARE VARIABLE C_Metge_Valida VARCHAR (16);'
      '      DECLARE VARIABLE C_EstatValida SMALLINT;'
      ''
      '      DECLARE VARIABLE N_MetgeValida varchar(20);'
      '      DECLARE VARIABLE DataValida date;'
      '      DECLARE VARIABLE ObsValida Varchar(3000);'
      '      '
      '      DECLARE VARIABLE EsEASE char(1);'
      '      DECLARE VARIABLE QueES SMALLINT;'
      '      DECLARE VARIABLE TITOL VARCHAR(254);'
      ''
      '      DECLARE VARIABLE FI_PROCES CHAR(1);'
      '      DECLARE VARIABLE EXTRACCIO CHAR(1);'
      '      '
      '      DECLARE VARIABLE CF VARCHAR(6);'
      '      '
      '      DECLARE VARIABLE DATAHORA VARCHAR(20);'
      '      DECLARE VARIABLE DIA CHAR(2);'
      '      DECLARE VARIABLE MES CHAR(2);'
      '      DECLARE VARIABLE HORA CHAR(2);'
      '      DECLARE VARIABLE MINUT CHAR(2);'
      '      DECLARE VARIABLE SEGON CHAR(2);'
      ''
      'BEGIN'
      ''
      '      /*Que ver: T:Tots E.Ease C.Curs I.ISCiN G.GBL*/'
      ''
      '      if (QUEVER IS NULL) THEN QUEVER = '#39'T'#39';'
      
        '      if (QUEVER NOT IN ('#39'T'#39','#39'C'#39','#39'E'#39','#39'I'#39','#39'G'#39')) THEN QUEVER = '#39'T'#39 +
        ';'
      ''
      '      CONTA = 0;'
      '      CONTAREG = 1;'
      '      INFORMEtxt = "";'
      ''
      '      PRESTACIO = "**";'
      '      C_PRESTACIO2 = "";'
      '      '
      
        '      FOR SELECT H.DATA, H.ANOTACIO, H.IMPRES, G.n_grup, M.metge' +
        ', H.DATA_INGRES, T.DATA_ALTA, G.COLOR, H.ESEPICRISI,'
      
        '                 H.C_INTERCON, H.ESTAT_INTERCON, G.C_GRUP, H.C_A' +
        'NOTACIO, H.C_PRESTACIO, H.ANULAT, H.C_EstatValida,'
      '                 H.QUEES, T.FI_PROCES'
      '          FROM   HISTORIA H'
      '          LEFT   OUTER JOIN METGES M ON H.C_USUARI = M.CODI'
      '          LEFT   OUTER JOIN GRUPS G ON H.C_GRUP = G.C_GRUP'
      
        '          LEFT   OUTER JOIN TRACTAMENTS T ON H.C_TRACTAMENT = T.' +
        'C_TRACTAMENT'
      '          WHERE  H.C_HISTORIA= :C_HISTORIA'
      '          AND    NOT (C_ESTATVALIDA BETWEEN 20 AND 39)'
      
        '          AND    ((:E_ANOTACIO IS NULL) OR (:E_ANOTACIO = H.C_AN' +
        'OTACIO))'
      
        '          ORDER  BY H.C_HISTORIA DESC, H.DATA DESC, H.C_ANOTACIO' +
        ' DESC'
      
        '          INTO  :FINS_DATA, :InformeTxt, :IMPRES, :GRUP, :USUARI' +
        ', :DATA_INGRES, :DATA_ALTA, :COLOR, :ESEPICRISI,'
      
        '                :C_INTERCON, :ESTAT_INTERCON, :C_GRUP, :C_ANOTAC' +
        'IO, :C_PRESTACIO, :ANULAT, :C_EstatValida,'
      '                :QueES, :Fi_Proces'
      '      DO BEGIN'
      ''
      '         BeginInforme='#39#39';'
      '         EndInforme='#39#39';'
      ''
      '         IF (QUEES IS NULL) THEN QUEES = 0;'
      '         '
      '         IF (C_PRESTACIO <> C_PRESTACIO2) THEN'
      '         BEGIN'
      
        '               SELECT RESUM, ESEASE FROM PRESTACION WHERE C_PRES' +
        'TACIO = :C_PRESTACIO INTO :PRESTACIO, :ESEASE;'
      '               IF (PRESTACIO IS NULL) THEN PRESTACIO = "**";'
      '               C_PRESTACIO2 = C_PRESTACIO;'
      '         END'
      ''
      '         IF (( (ESEASE='#39'S'#39') AND (QUEVER IN ('#39'T'#39','#39'E'#39')) )'
      '         OR  ( (ESEASE='#39'N'#39') AND (QUEVER IN ('#39'T'#39','#39'C'#39')) )'
      
        '         OR  ( (ESEASE='#39'C'#39') AND (QUEVER IN ('#39'T'#39','#39'I'#39')) )   /* nov' +
        'es prestacions ISCiN (BCN), amb ESEASE='#39'C'#39' */'
      
        '         OR  ( (ESEASE='#39'G'#39') AND (QUEVER IN ('#39'T'#39','#39'G'#39')) ))  /* nov' +
        'es prestacions GBL, amb ESEASE='#39'G'#39' */'
      '         THEN BEGIN'
      '            '
      '            IF (ANULAT='#39'S'#39') THEN'
      '            begin'
      '                  BeginInforme = '#39'\cf7\i '#39'|| BeginInforme;'
      '                  EndInforme = EndInforme || '#39'\i0\cf0 '#39';'
      '                  CF = '#39'\cf7 '#39';'
      '            end'
      '            else CF = '#39'\cf0 '#39';'
      ''
      '            IF (C_ESTATVALIDA = 0) THEN'
      '            begin'
      '                  BeginInforme =  '#39'\cf0 '#39' || BeginInforme;'
      '                  EndInforme = EndInforme || '#39'\cf0 '#39';'
      '            end'
      ''
      '            IF (C_ESTATVALIDA BETWEEN 10 AND 19) THEN'
      '            begin'
      
        '                  BeginInforme = '#39'\b\ul\cf6 Anotaci'#243' pendent de ' +
        'validar\cf15 ['#39'||C_ANOTACIO|| '#39']'#39'||'#39'\par\ul0\b0\cf6 '#39' || BeginIn' +
        'forme;'
      '                  EndInforme = EndInforme || '#39'\cf0 '#39';'
      '            end'
      ''
      '            IF (C_ESTATVALIDA BETWEEN 50 AND 59) then'
      '            BEGIN'
      ''
      '                  SELECT A.DATA_VALIDA, A.OBS_VALIDA, B.METGE'
      '                  FROM   HISTORIAVALIDA A'
      '                  JOIN   METGES B ON A.C_METGE_VALIDA = B.CODI'
      '                  WHERE  A.C_ANOTACIO = :C_ANOTACIO'
      '                  INTO  :DATAVALIDA, :OBSVALIDA, :N_METGEVALIDA;'
      ''
      
        '                  IF (OBSVALIDA IS NOT NULL) THEN OBSVALIDA =  '#39 +
        'Observacions: '#39' || OBSVALIDA;'
      
        '                                             ELSE OBSVALIDA =  '#39 +
        #39';'
      ''
      
        '/*                  InformeTxt = InformeTxt || '#39'*** Revisat i co' +
        'nforme per '#39'||N_METGEVALIDA|| '#39' el '#39' ||F_DATETIMETOSTR(DATAVALID' +
        'A)||f_crlf()||OBSVALIDA; */'
      '                  hora = extract(hour from DATAVALIDA);'
      
        '                  if ( extract(hour from DATAVALIDA) < 10) then ' +
        'hora = '#39'0'#39'||hora;'
      '                  minut = extract(minute from DATAVALIDA);'
      
        '                  if ( extract(minute from DATAVALIDA) < 10) the' +
        'n minut = '#39'0'#39'||minut;'
      
        '                  segon = cast (extract(second from DATAVALIDA) ' +
        'as integer);'
      
        '                  if (extract(second from DATAVALIDA) < 10) then' +
        ' segon = '#39'0'#39' || segon;'
      ''
      
        '                  DataHora = extract(day from DATAVALIDA) || '#39'/'#39 +
        ' || extract(month from DATAVALIDA) || '#39'/'#39' ||  extract(year from ' +
        'DATAVALIDA) || " " || hora || '#39':'#39' ||  minut || '#39':'#39' || segon;'
      
        '                  InformeTxt = InformeTxt || '#39'*** Revisat i conf' +
        'orme per '#39'||N_METGEVALIDA|| '#39' el '#39' ||DataHora||'#39'\par '#39'||OBSVALID' +
        'A;'
      '            END'
      ''
      '            IF (IMPRES="S")'
      '            THEN MARCA = "'#254'";'
      '            ELSE MARCA = "'#168'";'
      ''
      '            IF (NOT C_INTERCON IS NULL) THEN'
      '            BEGIN'
      '                  SELECT TITULCURS'
      '                  FROM   ESTATINTERCON'
      '                  WHERE  C_ESTAT = :ESTAT_INTERCON'
      '                  INTO  :TITUL_INTERCON;'
      '                  '
      '                  IF (ESTAT_INTERCON = 102) THEN'
      '                  BEGIN'
      
        '                      SELECT EXTRACCIO FROM BANCSANG WHERE C_INT' +
        'ERCON = :C_INTERCON INTO :EXTRACCIO;'
      
        '                      IF (EXTRACCIO = '#39'N'#39') THEN TITUL_INTERCON =' +
        ' '#39'Extracci'#243' no realitzada.'#39';'
      '                  END;'
      ''
      
        '                  IF (TITUL_INTERCON IS NULL) THEN TITUL_INTERCO' +
        'N = " ** ";'
      ''
      '                  TEMP_INTERCON = "";'
      ''
      '                  IF (ESTAT_INTERCON BETWEEN 100 AND 101) THEN'
      '                  BEGIN'
      '                        SELECT "\ul0\b0\cf0  feta per " ||'
      '                               M.METGE ||'
      '                               " el "  ||'
      '                               /*F_DATETOSTR(I.DATA1)*/'
      
        '                                extract(day from I.DATA1) || '#39'/'#39 +
        ' || extract(month from I.DATA1) || '#39'/'#39' ||  extract(year from I.D' +
        'ATA1)'
      '                        FROM   INTERCON I, ESPECIAL E, METGES M'
      '                        WHERE  I.C_INTERCON = :C_INTERCON'
      '                        AND    I.C_ESPECIAL = E.C_ESPECIAL'
      '                        AND    I.C_METGE1 = M.CODI'
      '                        INTO  :TEMP_INTERCON;'
      ''
      
        '                        IF (TEMP_INTERCON IS NULL) THEN TEMP_INT' +
        'ERCON = " ** ";'
      '                  END'
      ''
      
        '                  ELSE IF (ESTAT_INTERCON BETWEEN 102 AND 105) T' +
        'HEN'
      '                  BEGIN'
      
        '                        SELECT "\ul0\b0\cf0  Sol'#183'licitud al Banc' +
        ' de Sang i Texits feta per " ||'
      '                               M.METGE ||'
      '                               " el "  ||'
      '                               /*F_DATETOSTR(I.DATA1)*/'
      
        '                                extract(day from I.DATA1) || '#39'/'#39 +
        ' || extract(month from I.DATA1) || '#39'/'#39' ||  extract(year from I.D' +
        'ATA1)'
      '                        FROM   INTERCON I, ESPECIAL E, METGES M'
      '                        WHERE  I.C_INTERCON = :C_INTERCON'
      '                        AND    I.C_ESPECIAL = E.C_ESPECIAL'
      '                        AND    I.C_METGE1 = M.CODI'
      '                        INTO  :TEMP_INTERCON;'
      ''
      
        '                        IF (TEMP_INTERCON IS NULL) THEN TEMP_INT' +
        'ERCON = " ** ";'
      '                  END'
      ''
      '                  ELSE IF (ESTAT_INTERCON < 30) THEN'
      '                  BEGIN'
      
        '                        SELECT "\b\ul\cf6 "|| E.N_ESPECIAL ||"\u' +
        'l0\b0\cf0  "'
      '                        FROM   INTERCON I, ESPECIAL E'
      '                        WHERE  I.C_INTERCON = :C_INTERCON'
      '                        AND    I.C_ESPECIAL = E.C_ESPECIAL'
      '                        INTO  :TEMP_INTERCON;'
      '                        '
      
        '                        IF (TEMP_INTERCON IS NULL) THEN TEMP_INT' +
        'ERCON = " ** ";'
      '                  END'
      ''
      ''
      '                  ELSE BEGIN'
      '                        SELECT "\b\ul\cf6 " ||'
      '                               E.N_ESPECIAL ||'
      
        '                               "\ul0\b0\cf0  sol.licitat/ada per' +
        ' " ||'
      '                               M.METGE ||'
      '                               " el "  ||'
      '                               /*F_DATETOSTR(I.DATA1)*/'
      
        '                                extract(day from I.DATA1) || '#39'/'#39 +
        ' || extract(month from I.DATA1) || '#39'/'#39' ||  extract(year from I.D' +
        'ATA1)'
      '                        FROM   INTERCON I, ESPECIAL E, METGES M'
      '                        WHERE  I.C_INTERCON = :C_INTERCON'
      '                        AND    I.C_ESPECIAL = E.C_ESPECIAL'
      '                        AND    I.C_METGE1 = M.CODI'
      '                        INTO  :TEMP_INTERCON;'
      ''
      
        '                        IF (TEMP_INTERCON IS NULL) THEN TEMP_INT' +
        'ERCON = " ** ";'
      '                  END'
      ''
      '                  BeginInforme =  "\b\ul\cf6 " ||'
      '                          TITUL_INTERCON ||'
      '                          "\ul0\b0\cf0 " ||'
      '                          TEMP_INTERCON ||'
      '                          "\cf15 [" ||'
      '                          C_INTERCON ||'
      '                          "]" ||'
      '                          "\cf0\par\par " ||'
      '                          BeginInforme;'
      '            END'
      ''
      
        '            /* Descripci'#243' del tipus d'#39'anotaci'#243', amb font blava i' +
        ' subratllada. Guardem C_Anotacio per trobar el link */'
      '            /*  1: BLOC QUIR'#218'RGIC */'
      '            /*  5: PREOPERATORI */'
      '            /*  6: IMC BAIX */'
      '            /*  9: NUTRICI'#211' ENTERAL */'
      '            /* 10: ANOTACI'#211' EASE */'
      '            /* 13: RESOURCE ESPESSANT */'
      '            /* 50: MATERIAL IMPLANTAT/EXPLANTAT */'
      '            IF (QueES in (1,5,6,9,10,13,50)) THEN'
      '            BEGIN'
      '                  SELECT N_CODI2'
      '                  FROM   CODICAMPS'
      '                  WHERE  TIPUSCODI = "TIPUSANOTACIO"'
      '                  AND    C_CODI = :QueES'
      '                  INTO   :TITOL;'
      ''
      '                  BeginInforme = "\b\ul\cf6 " ||'
      '                         TITOL ||'
      '                         "\ul0\b0" ||'
      '                         "\cf15 [" ||'
      '                         C_ANOTACIO ||'
      '                         "]" ||'
      '                         "\cf0\par\par " ||'
      '                         BeginInforme;'
      '            END'
      ''
      
        '            /* Descripci'#243' del tipus d'#39'anotaci'#243', amb font negra i' +
        ' subratllada */'
      '            /*  2: AMI */'
      '            /*  4: IMPLANTACI'#211' BOMBA BACLOF'#200'N */'
      '            ELSE IF (QueES in (2,4)) THEN'
      '            BEGIN'
      '                  SELECT N_CODI2'
      '                  FROM   CODICAMPS'
      '                  WHERE  TIPUSCODI = "TIPUSANOTACIO"'
      '                  AND    C_CODI = :QueES'
      '                  INTO   :TITOL;'
      ''
      
        '                  BeginInforme = "\b\ul\fs25\cf0 " || TITOL || "' +
        '\par\par\b0\ul0\fs20\cf0 " || BeginInforme;'
      
        '                  EndInforme = EndInforme || "\ul0\b0\cf0\fs20 "' +
        ';'
      '            END;'
      ''
      '            /* 3: ECB */'
      '            ELSE IF (QueES = 3) THEN'
      '            BEGIN'
      
        '                  BeginInforme = "\b\ul\fs25\cf6 " || BeginInfor' +
        'me;'
      
        '                  EndInforme = EndInforme || "\ul0\b0\cf0\fs20 "' +
        ';'
      '            END;'
      ''
      
        '            /* Descripci'#243' del tipus d'#39'anotaci'#243', amb font negra d' +
        'e la mateixa mida i nom'#233's un intro */'
      '            /* 16: Trucada */'
      '            /* 21: Videoconfer'#232'ncia */'
      '            ELSE IF (QueES in (16,21)) THEN'
      '            BEGIN'
      '                  SELECT N_CODI2'
      '                  FROM   CODICAMPS'
      '                  WHERE  TIPUSCODI = "TIPUSANOTACIO"'
      '                  AND    C_CODI = :QueES'
      '                  INTO   :TITOL;'
      ''
      
        '                  BeginInforme = "\b" || CF || TITOL || "\par\b0' +
        '\cf0 " || BeginInforme;'
      
        '                  EndInforme = EndInforme || "\ul0\b0\cf0\fs20 "' +
        ';'
      '            END;'
      ''
      ''
      
        '            /* Descripci'#243' del tipus d'#39'anotaci'#243', amb font negra p' +
        'er'#242' de la mateixa mida i amb el text seguit */'
      '            /* 8:  PACIENT CR'#205'TIC I/O AGUT */'
      '            /* 17: RISC DE SU'#207'CIDI        */'
      '            /* 33: RCP (antic LET) */'
      '            ELSE IF (QueES in (8,17,33))  THEN'
      '            BEGIN'
      '                  SELECT N_CODI2'
      '                  FROM   CODICAMPS'
      '                  WHERE  TIPUSCODI = "TIPUSANOTACIO"'
      '                  AND    C_CODI = :QueES'
      '                  INTO   :TITOL;'
      '                  '
      
        '                  BeginInforme = "\b\ul" || CF || TITOL || "\b0\' +
        'ul0: " || BeginInforme;'
      
        '                  EndInforme = EndInforme || "\ul0\b0\cf0\fs20 "' +
        ';'
      '            END;'
      ''
      
        '            /* Descripci'#243' del tipus d'#39'anotaci'#243', amb font negra p' +
        'er'#242' de la mateixa mida i nom'#233's un intro */'
      '            ELSE IF (QueES <> 0) THEN'
      '            BEGIN'
      '                  TITOL = '#39#39';'
      '                  '
      '/*                  SELECT F_LRTRIM(N_CODI2)*/'
      '                  SELECT N_CODI2'
      '                  FROM   CODICAMPS'
      '                  WHERE  TIPUSCODI = "TIPUSANOTACIO"'
      '                  AND    C_CODI = :QueES'
      '                  INTO   :TITOL;'
      ''
      '                  IF (TITOL IS NULL) THEN TITOL = '#39#39';'
      '                  IF (TITOL <> '#39#39') THEN'
      '                  BEGIN'
      
        '                        BeginInforme = "\b" || CF || TITOL || "\' +
        'par\b0 " || BeginInforme;'
      
        '                        EndInforme = EndInforme || "\ul0\b0\cf0\' +
        'fs20 ";'
      '                  END;'
      '            END;'
      '            dia = extract(day from FINS_DATA);'
      
        '            if (extract(day from FINS_DATA)< 10) then dia = '#39'0'#39' ' +
        '|| dia;'
      '            mes = extract(month from FINS_DATA);'
      
        '            if (extract(month from FINS_DATA) < 10) then mes = '#39 +
        '0'#39' || mes;'
      '            hora = extract(hour from FINS_DATA);'
      
        '            if ( extract(hour from FINS_DATA) < 10) then hora = ' +
        #39'0'#39'|| hora;'
      '            minut = extract(minute from FINS_DATA);'
      
        '            if ( extract(minute from FINS_DATA) < 10) then minut' +
        ' = '#39'0'#39'|| minut;'
      
        '            segon = cast (extract(second from FINS_DATA) as inte' +
        'ger);'
      
        '            if (extract(second from FINS_DATA) < 10) then segon ' +
        '= '#39'0'#39' || segon;'
      ''
      ''
      '            BeginInforme = "\cf13\f1 " ||'
      '                   MARCA ||'
      '                   "\f0 " ||'
      '                   " ** " ||'
      '                   /*F_DATETIMETOSTR(FINS_DATA) ||  */'
      
        '                   dia || '#39'/'#39' || mes || '#39'/'#39' ||  extract(year fro' +
        'm FINS_DATA) || " " || hora || '#39':'#39' ||  minut || '#39':'#39' || segon ||'
      '                   " **   \b\cf" ||'
      '                   COLOR ||'
      
        '                   /*F_JUSTIFICA(Grup ||": " ||Usuari, -25) ||  ' +
        ' */'
      
        '                   cast(grup ||": " ||Usuari  || "   " as char(5' +
        '0)) ||'
      '                   "\b0\cf13  (" ||'
      '                   cast(PRESTACIO as char(8)) ||'
      '                   "  "  ||'
      '                   /*F_DATETOSTR(DATA_INGRES) ||*/'
      
        '                   extract(day from DATA_INGRES) || '#39'/'#39' || extra' +
        'ct(month from DATA_INGRES) || '#39'/'#39' ||  extract(year from DATA_ING' +
        'RES) ||'
      '                   ") \cf0\par " ||'
      '                   BeginInforme;'
      ''
      '             EndInforme = EndInforme ||" \par\par" ;'
      ''
      ''
      '            IF (ESEPICRISI = "S") THEN'
      '            BEGIN'
      
        '                  /* supervisi'#243' informe = epicrisi dels q contin' +
        'uen proc'#233's */'
      '                  IF (FI_PROCES = '#39'N'#39')'
      
        '                  THEN BeginInforme = "\fs25               \b\ul' +
        ' SUPERVISI'#211' INFORME \ul0\b0\fs20\cf15 [" ||'
      
        '                                      /*F_DATETOSTR(DATA_ALTA)||' +
        '*/'
      
        '                                      extract(day from DATA_ALTA' +
        ') || '#39'/'#39' || extract(month from DATA_ALTA) || '#39'/'#39' ||  extract(yea' +
        'r from DATA_ALTA) ||'
      '                                      "]\cf0\par" ||'
      '                                      BeginInforme;'
      
        '                  ELSE BeginInforme = "\fs25               \b\ul' +
        ' EPICRISI \ul0\b0\fs20\cf15 [" ||'
      
        '                                      /*F_DATETOSTR(DATA_ALTA)||' +
        '*/'
      
        '                                      extract(day from DATA_ALTA' +
        ') || '#39'/'#39' || extract(month from DATA_ALTA) || '#39'/'#39' ||  extract(yea' +
        'r from DATA_ALTA) ||'
      '                                      "]\cf0\par" ||'
      '                                      BeginInforme;'
      '            END'
      ''
      ''
      '            conta = conta + 1;'
      '            suspend;'
      '            if ((quants<>0) and (conta >= quants)) then Exit;'
      '            '
      ''
      '         END /* de l'#39'if de l'#39'ease */'
      '      END /* del for select */'
      ''
      
        '/* l'#39#250'ltim registre el deixem en blanc i posem la data a null, p' +
        'er determinar que esta llegit tot */'
      ''
      ''
      '      BeginInforme=null;'
      '      InformeTxt=null;'
      '      EndInforme=null;'
      '      CONTA=null;'
      '      FINS_DATA = NULL;'
      '      SUSPEND;'
      ''
      'END'
      ''
      ''
      ''
      ''
      ''
      '')
    Select.Strings = (
      'SELECT * FROM '
      'P_HISTORIA_INFORME2'
      '(2637,0,null,'#39'N'#39')')
    Dic1 = Historia
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
    Modi = True
    ModiFecha = 37084.7061635301
    Left = 86
    Top = 16
  end
  object u_Informe2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'INFORME2'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_PARENT INTEGER,'
      '      QUANTS INTEGER'
      ')'
      'RETURNS'
      '('
      '      FINS_DATA DATE,'
      '      InformeTxt VARCHAR(32000),'
      '      BeginInforme varchar(250),'
      '      EndInforme   varchar(250),'
      '      CONTA INTEGER'
      ')'
      'AS'
      '      DECLARE VARIABLE TEMP VARCHAR(32000);'
      '      DECLARE VARIABLE IMPRES CHAR(1);'
      '      DECLARE VARIABLE MARCA CHAR(1);'
      '      DECLARE VARIABLE USUARI VARCHAR(20);'
      '      DECLARE VARIABLE GRUP VARCHAR(40);'
      '      DECLARE VARIABLE PRESTACIO VARCHAR(15);'
      '      DECLARE VARIABLE C_PRESTACIO CHAR(4);'
      '      DECLARE VARIABLE C_PRESTACIO2 CHAR(4);'
      '      DECLARE VARIABLE Data_Ingres DATE;'
      '      DECLARE VARIABLE COLOR INTEGER;'
      ''
      '      DECLARE VARIABLE C_GRUP CHAR(2);'
      '      DECLARE VARIABLE C_ANOTACIO INTEGER;'
      '      DECLARE VARIABLE ESPROVISIONAL INTEGER;'
      '      '
      'BEGIN'
      ''
      '      CONTA = 0;'
      ''
      '      prestacio = "**";'
      '      C_PRESTACIO2 = "";'
      ''
      
        '      FOR SELECT U.DATA, U.ANOTACIO, U.IMPRES, G.n_grup, M.metge' +
        ', U.DATA_INGRES, G.COLOR,'
      '      G.C_GRUP, U.C_ANOTACIO, U.C_PRESTACIO'
      '      FROM USRA U , METGES M, GRUPS G'
      '      WHERE U.C_PARENT = :C_PARENT'
      '      AND U.C_USUARI = M.CODI'
      '      AND U.C_GRUP = G.C_GRUP'
      '      ORDER BY U.C_PARENT DESC, U.DATA DESC'
      
        '      INTO :FINS_DATA, :InformeTxt, :IMPRES, :GRUP, :USUARI,  :D' +
        'ATA_INGRES, :COLOR,'
      '      :C_GRUP, :C_ANOTACIO, :C_PRESTACIO'
      ''
      '      DO BEGIN'
      ''
      '            IF (C_PRESTACIO <> C_PRESTACIO2) THEN'
      '            BEGIN'
      
        '                  SELECT RESUM FROM PRESTACION WHERE C_PRESTACIO' +
        ' = :C_PRESTACIO INTO :PRESTACIO;'
      '                  IF (PRESTACIO IS NULL) THEN PRESTACIO = "**";'
      '                  C_PRESTACIO2 = C_PRESTACIO;'
      '            END'
      ''
      '            IF (IMPRES="S")'
      '            THEN MARCA = "'#254'";'
      '            ELSE MARCA = "'#168'";'
      '            '
      
        '            BeginInforme = "\cf13\f1 "||MARCA || "\f0 " || " ** ' +
        '" || F_DATETIMETOSTR(FINS_DATA) || " **   \b\cf"||COLOR ||'
      
        '                           F_JUSTIFICA(Grup ||": "||Usuari, -25)' +
        ' || "\b0\cf13  (" ||'
      
        '                           F_JUSTIFICA(Prestacio, -8) || "  "  |' +
        '|F_DATETOSTR(DATA_INGRES) || ") \cf0\par ";'
      
        '/*                           cast(F_Left(Grup ||": " ||USUARI, 3' +
        '0) as char(30)) || "\b0\cf13  (" ||'
      
        '                           cast(PRESTACIO as char(8)) || "  "  |' +
        '|F_DATETOSTR(DATA_INGRES) || ") \cf0\par "; */'
      ''
      '            EndInforme = " \par\par" ;'
      '            '
      '/*'
      
        '                TEMP = "\cf13\f1 "||MARCA || "\f0 " || " ** " ||' +
        ' F_DATETIMETOSTR(FINS_DATA) || " **   \b\cf"||COLOR ||'
      
        '                     F_JUSTIFICA(Grup || ": " || Usuari,-25) || ' +
        '"\b0\cf13  (" ||'
      
        '                       F_JUSTIFICA( Prestacio,-8) || "  "  ||F_D' +
        'ATETOSTR(DATA_INGRES) || ") \cf0\par " ||'
      '                   TEMP || " \par\par" ;'
      '*/'
      ''
      ''
      '            conta = conta + 1;'
      '            suspend;'
      '            if ((quants<>0) and (conta >= quants)) then Exit;'
      ''
      '      END'
      ''
      '      INFORMEtxt= Null;'
      '      BeginInforme= Null;'
      '      EndInforme= Null;'
      '      FINS_DATA = NULL;'
      '      SUSPEND;'
      'END'
      ''
      '')
    Select.Strings = (
      'SELECT * FROM P_usra_INFORME2(5566,0)')
    Dic1 = Usra
    Dic1Name = 'Usra'
    Abierta = False
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
    ModiFecha = 37084.7061637616
    Left = 86
    Top = 70
  end
  object poliocap: TDic
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
        Aplica = kcNumEntero
        Nombre = 'Historia'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
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
        Nombre = 'C_USUARI'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = '0:pendent;1:fet;2:no demanar m'#233's.'
        ValidChars = '0,1,2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'c_diagnostic'
        NombreDB = 'c_diagnostic'
        Longitud = 4
        Consulta = 'Codis'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'metge_diag'
        NombreDB = 'metge_diag'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'data_diag'
        NombreDB = 'data_diag'
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
          'Id')
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
          'Historia')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'C_USUARI')
        CopiarOrigen.Strings = (
          'C_USUARI')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Codis'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'c_diagnostic')
        CopiarOrigen.Strings = (
          'c_diagnostic')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DIAG_POLIO'#39
      end>
    Nombre = 'POLIOCAP'
    NombreTabla = 'POLIOCAP'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 30
    Top = 242
  end
  object polioitems: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'ITEM'
        NombreDB = 'C_ITEM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ORDRE'
        NombreDB = 'ORDRE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'RESUM'
        NombreDB = 'RESUM'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'RESUMEN'
        NombreDB = 'RESUMEN'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'VER'
        NombreDB = 'VER'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'S,N'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ITEM')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'POLIOITEMS'
    NombreTabla = 'POLIOITEMS'
    Organiza = tbBase
    CamposVer.Strings = (
      'ITEM')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 146
    Top = 242
  end
  object poliolin: TDic
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
        Nombre = 'C_ITEM'
        NombreDB = 'C_ITEM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'ANOTACIO'
        NombreDB = 'ANOTACIO'
        Longitud = 30000
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
          'ID'
          'C_ITEM')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'cap'
        NombreDB = 'cap'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = poliocap
        ForaneoCampos.Strings = (
          'Id')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'POLIOLIN'
    NombreTabla = 'POLIOLIN'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 86
    Top = 242
  end
  object reingressos: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Reingressos_Motiu'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA DATE,'
      '         MOTIU SMALLINT,'
      '         TRACTAMENT_PRIMER INTEGER,'
      '         DATA_INGRES_PRIMER DATE,'
      '         DATA_ALTA_PRIMER DATE,'
      '         MOTIU_PRIMER SMALLINT,'
      '         NUMINGRES INTEGER'
      ') AS'
      '  DECLARE VARIABLE MC_HISTORIA INTEGER;'
      'BEGIN'
      '  MC_HISTORIA = 0;'
      '  NUMINGRES = 0;'
      ''
      
        '  FOR SELECT C_HISTORIA, C_TRACTAMENT, DATA_INGRES, DATA_ALTA, C' +
        '_MOTIU'
      '  FROM TRACTAMENTS'
      '  WHERE DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '  AND C_PRESTACIO = '#39'1004'#39
      '  ORDER BY C_HISTORIA , C_TRACTAMENT'
      '  INTO :HISTORIA, :TRACTAMENT , :DATA_INGRES, :DATA_ALTA, :MOTIU'
      '  DO BEGIN'
      '    IF (HISTORIA <> MC_HISTORIA)THEN'
      '    BEGIN'
      '      MC_HISTORIA = HISTORIA;'
      '      NUMINGRES=0;'
      '      TRACTAMENT_PRIMER = NULL;'
      '      DATA_INGRES_PRIMER = NULL;'
      '      DATA_ALTA_PRIMER = NULL;'
      '      MOTIU_PRIMER = NULL;'
      '    END;'
      '    NUMINGRES=NUMINGRES+1;'
      '    IF ((HISTORIA = MC_HISTORIA) AND (NUMINGRES=1)) THEN'
      '    BEGIN'
      '      TRACTAMENT_PRIMER = TRACTAMENT;'
      '      DATA_INGRES_PRIMER = DATA_INGRES;'
      '      DATA_ALTA_PRIMER = DATA_ALTA;'
      '      MOTIU_PRIMER = MOTIU;'
      '    END;'
      '    IF (NUMINGRES > 1) THEN SUSPEND;'
      '  END;'
      ''
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
    Left = 561
    Top = 124
  end
  object P_InitProces: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'InitProces'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '      C_TRACTAMENT INTEGER,'
      '      C_HISTORIA INTEGER,'
      '      C_PRESTACIO VARCHAR(4),'
      '      DATA_INGRES DATE,'
      '      C_PROCES INTEGER,'
      '      FI_PROCES CHAR(1)'
      ')'
      'AS'
      'BEGIN'
      ''
      
        '      FOR SELECT C_TRACTAMENT, C_HISTORIA, C_PRESTACIO, DATA_ING' +
        'RES'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_D' +
        'RET = '#39'X1'#39
      '          WHERE (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY")'
      '          ORDER  BY DATA_INGRES'
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :DATA_' +
        'INGRES'
      '      DO BEGIN'
      '      '
      '            C_PROCES = GEN_ID(G_PROCES, 1);'
      '            FI_PROCES = '#39'N'#39';'
      '            '
      '            UPDATE TRACTAMENTS'
      '            SET    C_PROCES = :C_PROCES,'
      '                   FI_PROCES = :FI_PROCES'
      '            WHERE  C_TRACTAMENT = :C_TRACTAMENT;'
      '            '
      '            SUSPEND;'
      '      END;'
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
    Left = 633
    Top = 124
  end
  object ActivitatNeuro: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Anotacio'
        NombreDB = 'C_Anotacio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'c_prestacio'
        NombreDB = 'c_prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'edat'
        NombreDB = 'edat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'tipus'
        NombreDB = 'tipus'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tipus'
        zType = tcIB_Smallint
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
          'C_Anotacio')
        Tipo = tiPrimario
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
          'C_Anotacio')
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'tipus')
        CopiarOrigen.Strings = (
          'tipus')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ACTIVITATNEURO'#39
      end>
    Nombre = 'ActivitatNeuro'
    NombreTabla = 'ActivitatNeuro'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Anotacio'
      'c_prestacio'
      'edat'
      'tipus')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 112
    Top = 300
  end
  object ActivitatVELLA: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatVELLA'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '      DECLARE VARIABLE TIPUS      INTEGER;'
      'BEGIN'
      ''
      
        '      FOR SELECT PRESTACIO, TIPUS_SESSIO, SECTOR_SESSIO, ESPECIA' +
        'LITAT, RESULTAT'
      '      FROM P_ACTIVITATNEURO_ACTIVITATLOGO(:DATAINI,:DATAFI)'
      
        '      INTO :PRESTACIO, :TIPUS_SESSIO, :SECTOR_SESSIO, :ESPECIALI' +
        'TAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      
        '      FOR SELECT PRESTACIO, TIPUS_SESSIO, SECTOR_SESSIO, ESPECIA' +
        'LITAT, RESULTAT'
      '      FROM P_ACTIVITATNEURO_ACTIVITATPSICO(:DATAINI,:DATAFI)'
      
        '      INTO :PRESTACIO, :TIPUS_SESSIO, :SECTOR_SESSIO, :ESPECIALI' +
        'TAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      
        '      FOR SELECT PRESTACIO, TIPUS_SESSIO, SECTOR_SESSIO, ESPECIA' +
        'LITAT, RESULTAT'
      '      FROM P_ACTIVITATNEURO_ACTIVITATMUSICO(:DATAINI,:DATAFI)'
      
        '      INTO :PRESTACIO, :TIPUS_SESSIO, :SECTOR_SESSIO, :ESPECIALI' +
        'TAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      
        '      FOR SELECT PRESTACIO, TIPUS_SESSIO, SECTOR_SESSIO, ESPECIA' +
        'LITAT, RESULTAT'
      '      FROM P_ACTIVITATNEURO_ACTIVITATNEU(:DATAINI,:DATAFI)'
      
        '      INTO :PRESTACIO, :TIPUS_SESSIO, :SECTOR_SESSIO, :ESPECIALI' +
        'TAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      PRESTACIO='#39'FUNCIONS SUPERIORS'#39'; SECTOR_SESSIO ='#39'NENS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'15'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      SECTOR_SESSIO ='#39'ADULTS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'15' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      FOR SELECT PRESTACIO, TIPUS_SESSIO, SECTOR_SESSIO, ESPECIA' +
        'LITAT, RESULTAT FROM P_ACTIVITATNEURO_ACT_(:DATAINI, :DATAFI)'
      
        '      INTO :PRESTACIO, :TIPUS_SESSIO, :SECTOR_SESSIO, :ESPECIALI' +
        'TAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;  /* 15.9.2015 */'
      ''
      
        '      PRESTACIO='#39'REVISIONS'#39'; ESPECIALITAT='#39'Neuropsicologia'#39'; TIP' +
        'US_SESSIO='#39'N'#250'mero de revisions'#39'; SECTOR_SESSIO = '#39#39';'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      
        '      JOIN METGES M ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      WHERE T.C_PRESTACIO = '#39'2004'#39' AND (H.ANULAT = '#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      '      '
      
        '      ESPECIALITAT='#39'Psicologia cl'#237'nica'#39'; TIPUS_SESSIO='#39'N'#250'mero de' +
        ' revisions'#39'; SECTOR_SESSIO = '#39#39';'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      
        '      JOIN METGES M ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      WHERE T.C_PRESTACIO = '#39'2004'#39' AND (H.ANULAT = '#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      
        '      ESPECIALITAT='#39'Musicoter'#224'pia'#39'; TIPUS_SESSIO='#39'N'#250'mero de revi' +
        'sions'#39'; SECTOR_SESSIO = '#39#39';'
      '      SELECT COUNT(*) FROM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      
        '      JOIN METGES M ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      WHERE T.C_PRESTACIO = '#39'2004'#39' AND (H.ANULAT = '#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      '      PRESTACIO='#39'CONSULTA EXTERNA'#39';'
      
        '      /* PARTE 46767-I: comptem les activitatneuro fetes per log' +
        'opedes (especial=14) de tipus 8-Sessi'#243' logopdia'
      
        '                        associades a 2001 i 2002 amb coordinador' +
        ' NEUROPSICOLEG */'
      
        '      TIPUS_SESSIO='#39'Sessions logop'#232'dia (visites)'#39'; ESPECIALITAT=' +
        #39'Logop'#232'dia'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      SELECT COUNT(*) FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA    H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.A' +
        'NULAT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      '      JOIN TRACTAMENTS T ON H.C_TRACTAMENT = T.C_TRACTAMENT'
      
        '      JOIN METGES      M ON T.C_COORDINADOR = M.CODI AND M.C_ESP' +
        'ECIAL = '#39'15'#39
      
        '      JOIN METGES     MA ON A.USUARI = MA.CODI AND MA.C_ESPECIAL' +
        ' = '#39'14'#39
      '      WHERE (A.TIPUS=8) AND A.EDAT BETWEEN 1 AND 16'
      '      AND ((T.C_PRESTACIO = '#39'2001'#39') OR (T.C_PRESTACIO='#39'2002'#39'))'
      '      AND (T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI)'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      '      PRESTACIO='#39#39'; SECTOR_SESSIO='#39'ADULTS'#39';'
      '      SELECT COUNT(*) FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      '      WHERE A.TIPUS=8 AND A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      '      /* PARTE 46767-F */'
      ''
      '      TIPUS_SESSIO='#39'Primeres visites'#39';'
      '      FOR SELECT E.N_ESPECIAL, COUNT(*) FROM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      
        '      JOIN METGES M   ON H.C_USUARI = M.CODI AND M.C_ESPECIAL in' +
        '('#39'08'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE T.C_PRESTACIO = '#39'2001'#39' AND (H.ANULAT ='#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      GROUP BY E.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      PRESTACIO='#39#39'; TIPUS_SESSIO='#39'Visites successives'#39';'
      '      FOR SELECT E.N_ESPECIAL, COUNT(*) FROM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      
        '      JOIN METGES M   ON H.C_USUARI = M.CODI AND M.C_ESPECIAL in' +
        '('#39'08'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE T.C_PRESTACIO = '#39'2002'#39' AND (H.ANULAT ='#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      GROUP BY E.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      
        '      PRESTACIO='#39'PACIENTS'#39'; TIPUS_SESSIO='#39'Amb una anotaci'#243' com a' +
        ' m'#237'nim'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      SELECT COUNT(DISTINCT F.NUM_HIST) FROM FILIACIO F'
      '      JOIN HISTORIA H ON F.NUM_HIST = H.C_HISTORIA'
      
        '      JOIN METGES M   ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = ' +
        #39'15'#39
      '      WHERE H.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND (F.EDAT BETWEEN 1 AND 16) AND (H.ANULAT ='#39'N'#39')'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      
        '      PRESTACIO='#39#39'; TIPUS_SESSIO='#39'Amb una anotaci'#243' com a m'#237'nim'#39';' +
        ' SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      SELECT COUNT(DISTINCT F.NUM_HIST) FROM FILIACIO F'
      '      JOIN HISTORIA H ON F.NUM_HIST = H.C_HISTORIA'
      
        '      JOIN METGES M ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      
        '      WHERE H.DATA BETWEEN :DATAINI AND :DATAFI  AND (H.ANULAT =' +
        #39'N'#39')'
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'activitatneuro'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 345
    Top = 404
  end
  object AnotaRehab: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C_Anotacio'
        NombreDB = 'C_Anotacio'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anotacio'
        NombreDB = 'c_activitat'
        Longitud = 2
        Consulta = 'activitat'
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
          'C_Anotacio')
        Tipo = tiPrimario
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
          'C_Anotacio')
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'activitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Anotacio')
        CopiarOrigen.Strings = (
          'Anotacio')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ACTIVITAT_REHAB'#39
      end>
    Nombre = 'Anotacions Rehabilitaci'#243
    NombreTabla = 'AnotaRehab'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Anotacio'
      'Anotacio')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 8
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 189
    Top = 356
  end
  object TRC: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Id'
        NombreDB = 'Id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'previrnec'
        NombreDB = 'previrnec'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'c_tractament'
        NombreDB = 'c_tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'c_prestacio'
        NombreDB = 'c_prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'edat'
        NombreDB = 'edat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'tipus'
        NombreDB = 'tipus'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
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
      end
      item
        Aplica = kcFecha
        Nombre = 'Data sessi'#243
        NombreDB = 'Data_Sessio'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
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
          'Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'tipus')
        CopiarOrigen.Strings = (
          'tipus')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ACTIVITATNEURO'#39' and c_codi=5'
      end>
    Nombre = 'SessionsTRC'
    NombreTabla = 'SessionsTRC'
    Organiza = tbBase
    CamposVer.Strings = (
      'previrnec'
      'Id')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 493
    Top = 300
  end
  object Logopedia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Id'
        NombreDB = 'Id'
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
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'c_tractament'
        NombreDB = 'c_tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'c_prestacio'
        NombreDB = 'c_prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'edat'
        NombreDB = 'edat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'tipus'
        NombreDB = 'tipus'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
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
      end
      item
        Aplica = kcCaracter
        Nombre = 'usuari'
        NombreDB = 'usuari'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data sessi'#243
        NombreDB = 'Data_Sessio'
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
          'Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'tipus')
        CopiarOrigen.Strings = (
          'tipus')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ACTIVITATNEURO'#39' and c_codi=2'
      end>
    Nombre = 'SessionsLogopedia'
    NombreTabla = 'SessionsLogopedia'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'c_historia')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 561
    Top = 300
  end
  object Deficits: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK a Tractaments'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi ICF'
        NombreDB = 'C_ICF'
        Longitud = 4
        Consulta = 'codiicf'
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'FK a CodiICF'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I: ingr'#233's, P: proc'#233's, A: alta'
        ValidChars = 'IPA'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Qualificaci'#243
        NombreDB = 'Qualificacio'
        Longitud = 1
        Consulta = 'qualifica'
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = '0..4 Consulta a CodiCamps'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'FK a Metges'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy hh":"nn":"ss'
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
          'Tractament'
          'Tipus'
          'Codi ICF')
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
          'Usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'icf'
        NombreDB = 'icf'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi ICF')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.CodiICF
        ForaneoCampos.Strings = (
          'Codi ICF')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Codiicf'
        Master = wDataCodis.CodiICF
        BuscaOrigen.Strings = (
          'Codi ICF')
        CopiarOrigen.Strings = (
          'Codi ICF')
        CopiarMaster.Strings = (
          'Codi ICF')
        BuscaMaster.Strings = (
          'Codi ICF')
      end
      item
        Nombre = 'qualifica'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Qualificaci'#243)
        CopiarOrigen.Strings = (
          'Qualificaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ICF_QUALIFICACIO"'
      end>
    Nombre = 'Deficits'
    NombreTabla = 'Deficits'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tractament'
      'Codi ICF'
      'Tipus'
      'Qualificaci'#243
      'Usuari'
      'Data')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7357937269
    Left = 144
    Top = 494
  end
  object ValidaPacient: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Pacient'
    ForceNombreDB = False
    Body.Strings = (
      '('
      ' E_Historia INTEGER,'
      ' E_Metge VARCHAR(5),'
      ' E_Com SMALLINT'
      ')'
      'RETURNS'
      '('
      '  ESTAT_VALIDACIO VARCHAR(50),      /* A, E, R, X, I */'
      '  DATA DATE,'
      '  C_USUARI VARCHAR(5),              /* c_resident    */'
      '  USUARI VARCHAR(40),               /* n_resident    */'
      '  GRUP VARCHAR(40),'
      '  SUPERVISOR VARCHAR(5),'
      
        '  TIPUS CHAR(1),                    /* A: anotaci'#243' al curs, E: E' +
        'CB, R: Revisions, X: Escales, I: Interconsultes */'
      '  C_ANOTACIO INTEGER,               /* A, R, I       */'
      '  C_TRACTAMENT INTEGER,             /* E, R, X, I    */'
      '  C_INTERCON INTEGER,               /* I             */'
      '  CLAU INTEGER,                     /* X             */'
      '  C_ESCALA INTEGER,                 /* X             */'
      '  C_GRUP CHAR(2),'
      '  C_ESTATVALIDA SMALLINT,           /* A, R, I       */'
      
        '  C_ESPECIAL CHAR(2)                /* especialitat del resident' +
        ' (codi) */'
      ')'
      'AS'
      '      DECLARE VARIABLE C_EspecialMetge CHAR(2);'
      '      DECLARE VARIABLE C_Coordinador VARCHAR(5);'
      '      DECLARE VARIABLE R_Escala VARCHAR(15);'
      
        '      DECLARE VARIABLE N_ESPECIAL VARCHAR(20);      /* I especia' +
        'litat de la interconsulta */'
      ''
      'BEGIN'
      ''
      '      IF (E_COM IS NULL) THEN E_COM = 1;'
      '      '
      
        '      SELECT C_ESPECIAL FROM METGES WHERE CODI = :E_Metge INTO :' +
        'C_EspecialMetge;'
      ''
      '/*'
      
        '      Llistat de ANOTACIONS pendents de validar per al FLASH ALA' +
        'RMES del PACIENT.'
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. especialitat: nom'#233's les ANOTACIONS d'#39'usuaris de la MATE' +
        'IXA ESPECIALITAT que "E_Metge".'
      '      2. supervisor:   TOTES les ANOTACIONS pendents de validar.'
      ''
      '      Estats de validaci'#243':'
      ''
      '      10    Pendent de validar'
      '*/'
      ''
      '      TIPUS = "A";'
      
        '      C_TRACTAMENT = Null;    C_INTERCON = Null;    C_ESCALA = N' +
        'ull;    CLAU = Null;'
      ''
      
        '      C_ESTATVALIDA = 10;     ESTAT_VALIDACIO = '#39'Anotaci'#243' penden' +
        't de validar'#39';'
      ''
      
        '      FOR SELECT A.C_ANOTACIO, B.DATA, B.C_USUARI, M.METGE, M.C_' +
        'SUPERVISOR, G.C_GRUP, G.N_GRUP, M.C_ESPECIAL'
      '          FROM   HISTORIAVALIDA A'
      '          JOIN   HISTORIA       B ON A.C_ANOTACIO = B.C_ANOTACIO'
      '          JOIN   METGES         M ON B.C_USUARI   = M.CODI'
      '          JOIN   GRUPS          G ON M.C_GRUP     = G.C_GRUP'
      '          WHERE  A.C_ESTATVALIDA = 10'
      '          AND    B.C_HISTORIA = :E_Historia'
      '          ORDER  BY B.C_HISTORIA'
      
        '          INTO  :C_ANOTACIO, :DATA, :C_USUARI, :USUARI, :SUPERVI' +
        'SOR, :C_GRUP, :GRUP, :C_ESPECIAL'
      ''
      '      DO BEGIN'
      '            /* Especialitat */'
      
        '            IF ((E_Com = 1) AND (C_EspecialMetge = C_ESPECIAL)) ' +
        'THEN SUSPEND;'
      '            /* Cap cl'#237'nic */'
      '            ELSE IF (E_Com = 2) THEN SUSPEND;'
      '      END'
      ''
      ''
      '/*    Llistat de REVISIONS pendents de validar.'
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. especialitat: nom'#233's les REVISIONS d'#39'usuaris de la MATEI' +
        'XA ESPECIALITAT que "E_Metge".'
      '      2. supervisor:   TOTES les REVISIONS pendents de validar.'
      ''
      '      Estats de validaci'#243':'
      ''
      '      11    Informe de revisi'#243' pendent de validar'
      '      12    Full de revisi'#243' pendent de validar'
      '*/'
      ''
      '      TIPUS = "R";'
      
        '      C_TRACTAMENT = Null;    C_INTERCON = Null;    C_ESCALA = N' +
        'ull;    CLAU = Null;'
      '      '
      
        '      C_ESTATVALIDA = 11;     ESTAT_VALIDACIO = "Informe de Revi' +
        'si'#243' pendent de validar";'
      '     '
      
        '      FOR SELECT R.C_ANOTACIO, H.DATA, H.C_USUARI, M.METGE, M.C_' +
        'SUPERVISOR, G.C_GRUP, G.N_GRUP, M.C_ESPECIAL'
      '          FROM   INFREVI  R'
      '          JOIN   HISTORIA H ON R.C_ANOTACIO = H.C_ANOTACIO'
      '          JOIN   METGES   M ON H.C_USUARI   = M.CODI'
      '          JOIN   GRUPS    G ON M.C_GRUP     = G.C_GRUP'
      '          WHERE  R.ESTAT = 1'
      '          AND    R.C_HISTORIA = :E_Historia'
      
        '          INTO  :C_ANOTACIO, :DATA, :C_USUARI, :USUARI, :SUPERVI' +
        'SOR, :C_GRUP, :GRUP, :C_ESPECIAL'
      '      DO BEGIN'
      '      '
      '            /* Especialitat */'
      
        '            IF ((E_Com = 1) AND (C_EspecialMetge = C_ESPECIAL)) ' +
        'THEN SUSPEND;'
      '            '
      '            /* Cap clinic */'
      '            ELSE IF (E_Com = 2) THEN SUSPEND;'
      '      END;'
      ''
      ''
      '      TIPUS = "R";'
      
        '      C_TRACTAMENT = Null;    C_INTERCON = Null;    C_ESCALA = N' +
        'ull;    CLAU = Null;'
      ''
      
        '      C_ESTATVALIDA = 12;     ESTAT_VALIDACIO = "Full de revisi'#243 +
        ' pendent de validar";'
      ''
      
        '      FOR SELECT DISTINCT R.C_ANOTACIO, R.DATA, R.C_USUARI, M.ME' +
        'TGE, M.C_SUPERVISOR, G.C_GRUP, G.N_GRUP, M.C_ESPECIAL'
      '          FROM   INFREVILIN R'
      '          JOIN   HISTORIA   H ON R.C_ANOTACIO = H.C_ANOTACIO'
      '          JOIN   METGES     M ON R.C_USUARI   = M.CODI'
      '          JOIN   GRUPS      G ON M.C_GRUP     = G.C_GRUP'
      '          WHERE  R.ESTAT = 1'
      '          AND    H.C_HISTORIA = :E_Historia'
      
        '          INTO  :C_ANOTACIO, :DATA, :C_USUARI, :USUARI, :SUPERVI' +
        'SOR, :C_GRUP, :GRUP, :C_ESPECIAL'
      '      DO BEGIN'
      '      '
      '            /* Especialitat */'
      
        '            IF ((E_Com = 1) AND (C_EspecialMetge = C_ESPECIAL)) ' +
        'THEN SUSPEND;'
      '            '
      '            /* Cap clinic */'
      '            ELSE IF (E_Com = 2) THEN SUSPEND;'
      '      END;'
      ''
      ''
      '/*'
      '      Llistat d'#39'ECB'#39's pendents de validar.'
      
        '      Nom'#233's poden fer-lo (i per tant, validar-lo) els Coordinado' +
        'rs i els Caps Cl'#237'nics.'
      ''
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. coordinador: nom'#233's els ECB'#39's de pacients que tinguin "E' +
        '_Metge" com a COORDINADOR.'
      '      2. supervisor:  TOTS  els ECB'#39's pendents de validar.'
      ''
      '      Estats de validacio:'
      ''
      '      Els ECB'#39's pendents de validar s'#243'n els que ESTAT = "R".'
      '*/'
      ''
      '      TIPUS = "E";'
      
        '      C_ANOTACIO = Null;      C_INTERCON = Null;    C_ESCALA = N' +
        'ull;    CLAU = Null;'
      ''
      
        '      C_ESTATVALIDA = Null;   ESTAT_VALIDACIO = "ECB pendent de ' +
        'validar";'
      ''
      
        '      FOR SELECT E.C_TRACTAMENT, T.C_COORDINADOR, E.DATA_RESIDEN' +
        'T, E.METGE_RESIDENT, M.METGE, M.C_SUPERVISOR, G.C_GRUP, G.N_GRUP' +
        ', M.C_ESPECIAL'
      '          FROM   ECBCAP      E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT   = T.C_TRACTAM' +
        'ENT'
      '          JOIN   METGES      M ON E.METGE_RESIDENT = M.CODI'
      '          JOIN   GRUPS       G ON G.C_GRUP         = M.C_GRUP'
      '          WHERE  E.ESTAT = "R"'
      '          AND    T.C_HISTORIA = :E_Historia'
      
        '          INTO  :C_TRACTAMENT, :C_COORDINADOR, :DATA, :C_USUARI,' +
        ' :USUARI, :SUPERVISOR, :C_GRUP, :GRUP, :C_ESPECIAL'
      '      DO BEGIN'
      '      '
      '            /* Coordinador */'
      
        '            IF ((E_Com = 1) AND (E_Metge = C_Coordinador)) THEN ' +
        'SUSPEND;'
      '            '
      '            /* Cap clinic */'
      '            ELSE IF (E_Com = 2) THEN SUSPEND;'
      '      END;'
      ''
      ''
      '/*'
      '      Llistat d'#39'ESCALES pendents de validar'
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. especialitat: nom'#233's les ESCALES d'#39'usuaris de la MATEIXA' +
        ' ESPECIALITAT que "E_Metge".'
      '      2. supervisor:   TOTES les ESCALES pendents de validar.'
      ''
      '      Estats de validacio:'
      ''
      '      Les ESCALES pendents de validar s'#243'n les que ANULAT = "R"'
      '      Un cop validades passen a tenir ESTAT = "N"'
      '*/'
      ''
      '      TIPUS = "X";'
      '      C_ANOTACIO = Null;      C_INTERCON = Null;'
      '      '
      '      C_ESTATVALIDA = Null;'
      ''
      
        '      FOR SELECT E.C_TRACTAMENT, E.DATA, E.CLAU, E.C_ESCALA, X.R' +
        '_ESCALA, E.C_USUARI, M.METGE, M.C_SUPERVISOR, G.C_GRUP, G.N_GRUP' +
        ', M.C_ESPECIAL'
      '          FROM   ESCALESCAP E'
      '          JOIN   ESCALES    X ON E.C_ESCALA = X.C_ESCALA'
      '          JOIN   METGES     M ON E.C_USUARI = M.CODI'
      '          JOIN   GRUPS      G ON G.C_GRUP   = M.C_GRUP'
      '          WHERE  E.ANULAT = "R"'
      '          AND    E.C_ENTRADA >= 0'
      '          AND    E.C_HISTORIA = :E_Historia'
      
        '          INTO  :C_TRACTAMENT, :DATA, :CLAU, :C_ESCALA, :R_Escal' +
        'a, :C_USUARI, :USUARI, :SUPERVISOR, :C_GRUP, :GRUP, :C_ESPECIAL'
      '      DO BEGIN'
      '      '
      
        '            ESTAT_VALIDACIO = "Escala " || R_ESCALA || " pendent' +
        ' de validar";'
      ''
      '            /* Especialitat */'
      
        '            IF ((E_Com = 1) AND (C_EspecialMetge = C_ESPECIAL)) ' +
        'THEN SUSPEND;'
      ''
      '            /* Cap clinic */'
      '            ELSE IF (E_Com = 2) THEN SUSPEND;'
      '      END;'
      ''
      ''
      '/*'
      '      Llistat d'#39'INTERCONSULTES amb RESPOStA pendent de validar'
      '      Depenent del parametre "E_Com" seran:'
      ''
      
        '      1. especialitat: nom'#233's les RESPOSTES d'#39'usuaris de la MATEI' +
        'XA ESPECIALITAT que "E_Metge".'
      '      2. supervisor:   TOTES les RESPOSTES pendents de validar.'
      ''
      '      Estats de validacio:'
      ''
      
        '      Les INTERCONSULTES amb RESPOSTA pendent de validar s'#243'n les' +
        ' que ESTAT in [40..49]'
      
        '      Un cop validades passen a tenir ESTAT = NextEstat (segons ' +
        'la taula ESTATINTERCON'
      '*/'
      ''
      '      TIPUS = "I";'
      '      C_ESCALA = Null;   CLAU = Null;'
      ''
      '      C_ESTATVALIDA = 13;'
      ''
      
        '      FOR SELECT I.C_INTERCON, I.C_TRACTAMENT, H.C_ANOTACIO, I.D' +
        'ATA2, I.C_METGE2, M.METGE,'
      
        '                 M.C_SUPERVISOR, G.C_GRUP, G.N_GRUP, M.C_ESPECIA' +
        'L, E.N_ESPECIAL'
      '          FROM   INTERCON I'
      '          JOIN   METGES   M ON I.C_METGE2   = M.CODI'
      '          JOIN   GRUPS    G ON G.C_GRUP     = M.C_GRUP'
      '          JOIN   HISTORIA H ON I.C_INTERCON = H.C_INTERCON'
      '          JOIN   ESPECIAL E ON I.C_ESPECIAL = E.C_ESPECIAL'
      '          WHERE  I.ESTAT BETWEEN 40 AND 49'
      '          AND    H.C_ESTATVALIDA = 13'
      '          AND    I.C_HISTORIA = :E_Historia'
      
        '          INTO  :C_INTERCON, :C_TRACTAMENT, :C_ANOTACIO, :DATA, ' +
        ':C_USUARI, :USUARI,'
      
        '                :SUPERVISOR, :C_GRUP, :GRUP, :C_ESPECIAL, :N_ESP' +
        'ECIAL'
      '      DO BEGIN'
      '      '
      
        '            ESTAT_VALIDACIO = "Resposta a " || N_ESPECIAL || " p' +
        'endent de validar";'
      '            '
      '            /* Especialitat */'
      
        '            IF ((E_Com = 1) AND (C_EspecialMetge = C_ESPECIAL)) ' +
        'THEN SUSPEND;'
      ''
      '            /* Cap clinic */'
      '            ELSE IF (E_Com = 2) THEN SUSPEND;'
      '      END;'
      ''
      ''
      'END'
      ''
      '')
    Dic1 = HistoriaValida
    Dic2 = wDataECBDics.ECBCAP
    Dic1Name = 'HistoriaValida'
    Dic2Name = 'ecbcap'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 633
    Top = 16
  end
  object UroAntecedents: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Historia'
        NombreDB = 'C_HISTORIA'
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
        MaskDisplay = 'dd"."mmm"."yyyy" "hh:nn"'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'Metges'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Classificaci'#243' Etiol'#242'gica'
        NombreDB = 'CE'
        Longitud = 3
        Consulta = 'UnitatM'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Maniobres de Buidat'
        NombreDB = 'MBUIDAT'
        Longitud = 3
        Consulta = 'MBuidat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Incontin'#232'ncia Urin'#224'ria: freq'#252#232'ncia'
        NombreDB = 'IUFREQUENCIA'
        Longitud = 3
        Consulta = 'IUFrequencia'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Incontin'#232'ncia Urin'#224'ria: intensitat'
        NombreDB = 'IUINTENSITAT'
        Longitud = 3
        Consulta = 'IUintensitat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Contaminaci'#243' urin'#224'ria'
        NombreDB = 'CONTAMINACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Num. infeccions tracte urinari inferior per any'
        NombreDB = 'NLUTI'
        Longitud = 8
        MaskDisplay = '#,##0'
        zType = tcIB_Integer
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 
          'Num. infeccions tracte urinari inferior per any tractades amb an' +
          'tibi'#242'tics'
        NombreDB = 'NLUTIA'
        Longitud = 8
        MaskDisplay = '#,##0'
        zType = tcIB_Integer
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 
          'Num. infeccions tracte urinari inferior per any amb implicacions' +
          ' al tracte urinari superior'
        NombreDB = 'NLUTIU'
        Longitud = 8
        MaskDisplay = '#,##0'
        zType = tcIB_Integer
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Incontin'#232'ncia urin'#224'ria d'#39'esfor'#231
        NombreDB = 'IU_ESFORC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Litiasi: tram urinari superior'
        NombreDB = 'L_SUP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Litiasi: tram urinari inferior'
        NombreDB = 'L_INF'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hematuria'
        NombreDB = 'HEMATURIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Estenosi uretral'
        NombreDB = 'ESTENOSI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Trauma urol'#242'gic'
        NombreDB = 'TRAUMA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Tumors urol'#242'gics'
        NombreDB = 'TUMORS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cirurgia'
        NombreDB = 'CIRURGIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Reflux'
        NombreDB = 'REFLUX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'T'#233' control PSA?'
        NombreDB = 'PSA_CONTROL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltim control PSA'
        NombreDB = 'DATA_LAST_PSA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Valor '#250'ltim control PSA'
        NombreDB = 'VALOR_LAST_PSA'
        Longitud = 10
        MaskDisplay = '#,##0.000;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'T'#233' bi'#242'psia de pr'#242'stata?'
        NombreDB = 'PROSTATA_BIOPSIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltima bi'#242'psia'
        NombreDB = 'DATA_LAST_BIOPSIA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Pr'#243'stata: positiu per malignitat'
        NombreDB = 'PROSTATA_POSITIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Pr'#243'stata: Valor Gleason 1'
        NombreDB = 'PROSTATA_GLEASON1'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Pr'#243'stata: Valor Gleason 2'
        NombreDB = 'PROSTATA_GLEASON2'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Pr'#243'stata: negatiu per malignitat'
        NombreDB = 'PROSTATA_NEGATIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'T'#233' TUR_P?'
        NombreDB = 'TUR_P'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data TUR_P'
        NombreDB = 'DATA_TUR_P'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'TUR_P: positiu per malignitat'
        NombreDB = 'TUR_P_POSITIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'TUR_P: Valor Gleason 1'
        NombreDB = 'TUR_P_GLEASON1'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'TUR_P: Valor Gleason 2'
        NombreDB = 'TUR_P_GLEASON2'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'TUR_P: negatiu per malignitat'
        NombreDB = 'TUR_P_NEGATIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'T'#233' prostatectoctomia radical?'
        NombreDB = 'PROSTATECTOCTOMIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data prostatectoctomia'
        NombreDB = 'DATA_PROSTATECTOCTOMIA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prostatectoctomia: positiu per malignitat'
        NombreDB = 'PROSTATECTOCTOMIA_POSITIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Prostatectoctomia: Valor Gleason 1'
        NombreDB = 'PROSTATECTOCTOMIA_GLEASON1'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Prostatectoctomia: Valor Gleason 2'
        NombreDB = 'PROSTATECTOCTOMIA_GLEASON2'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prostatectoctomia: negatiu per malignitat'
        NombreDB = 'PROSTATECTOCTOMIA_NEGATIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari'
        NombreDB = 'COMENTARI'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari '#250'ltima modificaci'#243
        NombreDB = 'USER_ULT'
        Longitud = 5
        Consulta = 'Metges_ULT'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltima modificaci'#243
        NombreDB = 'DATA_ULT'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy" "hh:nn"'
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
          'Historia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataHist'
        NombreDB = 'DataHist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data'
          'Historia')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metges'
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
        Nombre = 'UnitatM'
        Master = wDataCodis.UnitatM
        BuscaOrigen.Strings = (
          'Classificaci'#243' Etiol'#242'gica')
        CopiarOrigen.Strings = (
          'Classificaci'#243' Etiol'#242'gica')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'IUFrequencia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Incontin'#232'ncia Urin'#224'ria: freq'#252#232'ncia')
        CopiarOrigen.Strings = (
          'Incontin'#232'ncia Urin'#224'ria: freq'#252#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'URO.IUFREQUENCIA'#39
      end
      item
        Nombre = 'IUintensitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Incontin'#232'ncia Urin'#224'ria: intensitat')
        CopiarOrigen.Strings = (
          'Incontin'#232'ncia Urin'#224'ria: intensitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'URO.IUINTENSITAT'#39
      end
      item
        Nombre = 'MBuidat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Maniobres de Buidat')
        CopiarOrigen.Strings = (
          'Maniobres de Buidat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'URO.MBUIDAT'#39
      end
      item
        Nombre = 'Metges_ULT'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari '#250'ltima modificaci'#243)
        CopiarOrigen.Strings = (
          'Usuari '#250'ltima modificaci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Antecedents Urologia'
    NombreTabla = 'UroAntecedents'
    Organiza = tbBase
    CamposVer.Strings = (
      'Historia')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 30
    Top = 434
  end
  object UroValoracions: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero identificatiu'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Historia'
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
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy" "hh:nn"'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'Metges'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Maniobres de Buidat'
        NombreDB = 'MBUIDAT'
        Longitud = 3
        Consulta = 'MBUIDAT'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Incontin'#232'ncia Urin'#224'ria: freq'#252#232'ncia'
        NombreDB = 'IUFREQUENCIA'
        Longitud = 3
        Consulta = 'IUFREQUENCIA'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Incontin'#232'ncia Urin'#224'ria: intensitat'
        NombreDB = 'IUINTENSITAT'
        Longitud = 3
        Consulta = 'IUINTENSITAT'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Contaminaci'#243' urin'#224'ria'
        NombreDB = 'CONTAMINACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Num. infeccions tracte urinari inferior en els '#250'ltims 12 mesos'
        NombreDB = 'NLUTI'
        Longitud = 8
        MaskDisplay = '#,##0'
        zType = tcIB_Integer
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 
          'Num. infeccions tracte urinari inferior en els '#250'ltims 12 mesos t' +
          'ractades amb antibi'#242'tics'
        NombreDB = 'NLUTIA'
        Longitud = 8
        MaskDisplay = '#,##0'
        zType = tcIB_Integer
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 
          'Num. infeccions tracte urinari inferior ens els '#250'ltims 12 mesos ' +
          'amb implicacions al tracte urinari superior'
        NombreDB = 'NLUTIU'
        Longitud = 8
        MaskDisplay = '#,##0'
        zType = tcIB_Integer
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: cap'
        NombreDB = 'B_CAP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: antimuscar'#237'nics orals'
        NombreDB = 'B_ORAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: antimuscar'#237'nics intravesicals'
        NombreDB = 'B_INTRAVESICAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: toxina botul'#237'nica A en esf'#237'nter'
        NombreDB = 'B_TOXBOTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: augment de bufeta'
        NombreDB = 'B_BUFETA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: estimulaci'#243' endovesical el'#232'ctrica'
        NombreDB = 'B_ENDOVESICAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: derivaci'#243' continent'
        NombreDB = 'B_MITROFANOFF'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: cat'#232'ter suprap'#250'bic'
        NombreDB = 'B_SUPRAPUBIC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: neuromodulaci'#243' sacra'
        NombreDB = 'B_INTERSTIM'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: deaferentitzaci'#243
        NombreDB = 'B_DEFERENCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: deaferentitzaci'#243' i neuroestimulador'
        NombreDB = 'B_DEF_NEURO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: pr'#243'tesis esf'#237'nter'
        NombreDB = 'B_PROTESIS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: ProACT'
        NombreDB = 'B_PROACT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: esfinteroctomia'
        NombreDB = 'B_ESFINTEROCTOMIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: agents amb efecte bulking'
        NombreDB = 'B_BULKING'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: TUR_P'
        NombreDB = 'B_TUR_P'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: prostatectomia radical'
        NombreDB = 'B_PROSTATECTOMIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia abans: altres'
        NombreDB = 'B_ALTRES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ter'#224'pia abans: literal altres'
        NombreDB = 'B_LALTRES'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ter'#224'pia despr'#233's'
        NombreDB = 'A_TERAPIA'
        Longitud = 1
        Consulta = 'TerapiaDespres'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: antimuscar'#237'nics orals'
        NombreDB = 'A_ORAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: antimuscar'#237'nics intravesicals'
        NombreDB = 'A_INTRAVESICAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: toxina botul'#237'nica A en esf'#237'nter'
        NombreDB = 'A_TOXBOTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: augment de bufeta'
        NombreDB = 'A_BUFETA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: estimulaci'#243' endovesical el'#232'ctrica'
        NombreDB = 'A_ENDOVESICAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: derivaci'#243' continent'
        NombreDB = 'A_MITROFANOFF'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: cat'#232'ter suprap'#250'bic'
        NombreDB = 'A_SUPRAPUBIC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: neuromodulaci'#243' sacra'
        NombreDB = 'A_INTERSTIM'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's:deaferentitzaci'#243
        NombreDB = 'A_DEFERENCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: deaferentitzaci'#243' i neuroestimulador'
        NombreDB = 'A_DEF_NEURO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: pr'#243'tesis esf'#237'nter'
        NombreDB = 'A_PROTESIS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: ProACT'
        NombreDB = 'A_PROACT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: esfinteroctomia'
        NombreDB = 'A_ESFINTEROCTOMIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: amb efecte bulking'
        NombreDB = 'A_BULKING'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: TUR_P'
        NombreDB = 'A_TUR_P'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: prostatectomia radical'
        NombreDB = 'A_PROSTATECTOMIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ter'#224'pia despr'#233's: altres'
        NombreDB = 'A_ALTRES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ter'#224'pia despr'#233's: literal altres'
        NombreDB = 'A_LALTRES'
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
          'N'#250'mero identificatiu')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metges'
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
        Nombre = 'IUFrequencia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Incontin'#232'ncia Urin'#224'ria: freq'#252#232'ncia')
        CopiarOrigen.Strings = (
          'Incontin'#232'ncia Urin'#224'ria: freq'#252#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'URO.IUFREQUENCIA'#39
      end
      item
        Nombre = 'IUintensitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Incontin'#232'ncia Urin'#224'ria: intensitat')
        CopiarOrigen.Strings = (
          'Incontin'#232'ncia Urin'#224'ria: intensitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'URO.IUINTENSITAT'#39
      end
      item
        Nombre = 'MBuidat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Maniobres de Buidat')
        CopiarOrigen.Strings = (
          'Maniobres de Buidat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'URO.MBUIDAT'#39
      end
      item
        Nombre = 'TerapiaDespres'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Ter'#224'pia despr'#233's')
        CopiarOrigen.Strings = (
          'Ter'#224'pia despr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'URO.TERAPIADESPRES'#39
      end>
    Nombre = 'Valoracions Urologia'
    NombreTabla = 'UroValoracions'
    Organiza = tbBase
    CamposVer.Strings = (
      'Historia'
      'N'#250'mero identificatiu')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 112
    Top = 434
  end
  object Procediments: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'A'
        Comentario = 'P: de proc'#233's, A: a l'#39'alta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'C_Procediment'
        Longitud = 15
        Consulta = 'Codiicd2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'SubCodi'
        NombreDB = 'G_Procediment'
        Longitud = 15
        Consulta = 'Codiicd'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Literal'
        NombreDB = 'N_Procediment'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
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
        Nombre = 'Dispositiu'
        NombreDB = 'Dispositiu'
        Longitud = 15
        Consulta = 'dispositiu'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Lloc on es realitza (CMBD) si no est'#224' parametritzat'
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
        Nombre = 'Confian'#231'a procediment'
        NombreDB = 'CONFIANCA'
        Longitud = 10
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu d'#39'assist'#232'ncia'
        NombreDB = 'C_Motiu'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 
          'en cas de seleccionar els procediments de la llista segons motiu' +
          ' d'#39'assist'#232'ncia, al full d'#39'assist'#232'ncia de CE amb dret P260'
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament'
          'Tipus'
          'Ordre')
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
          'C Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Codiicd'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'SubCodi')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'SubCodi')
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
        Nombre = 'Codiicd2'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi')
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
        Nombre = 'dispositiu'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Dispositiu')
        CopiarOrigen.Strings = (
          'Dispositiu')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CMBD.DISPOSITIU'#39
      end>
    Nombre = 'Procediments'
    NombreTabla = 'TPROCEDIMENTS'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Tractament'
      'Tipus'
      'Ordre'
      'Codi'
      'SubCodi'
      'Literal'
      'Metge'
      'Data'
      'Motiu d'#39'assist'#232'ncia')
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 410
    Top = 494
  end
  object Diags_Ordre: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Ordre'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '      IF (USER <> "REPLICATOR") THEN'
      '      BEGIN    '
      
        '            IF ((NEW.ORDRECMB  IS NULL) AND (NEW.TIPUS = "A")) T' +
        'HEN NEW.ORDRECMB  = NEW.ORDRE;'
      
        '            IF ((NEW.CLASSECMB IS NULL) AND (NEW.TIPUS = "A")) T' +
        'HEN NEW.CLASSECMB = NEW.CLASSE;'
      
        '            IF ((NEW.POACMB    IS NULL) AND (NEW.TIPUS = "A")) T' +
        'HEN NEW.POACMB    = NEW.POA;'
      '      END'
      'END')
    Dic1 = Diagnostics
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
    Modi = True
    ModiFecha = 37173.8121735532
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 341
    Top = 494
  end
  object AnotaGine: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C_Anotacio'
        NombreDB = 'C_Anotacio'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Diagn'#242'stic ginecol'#242'gic'
        NombreDB = 'C_DIAG_GINE'
        Longitud = 2
        Consulta = 'diaggine'
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
          'C_Anotacio')
        Tipo = tiPrimario
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
          'C_Anotacio')
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'diaggine'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Diagn'#242'stic ginecol'#242'gic')
        CopiarOrigen.Strings = (
          'Diagn'#242'stic ginecol'#242'gic')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DIAGS_GINE'#39
      end>
    Nombre = 'Anotacions Ginecologia'
    NombreTabla = 'AnotaGine'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Anotacio'
      'Diagn'#242'stic ginecol'#242'gic')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 8
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 30
    Top = 356
  end
  object RCP_comentaris: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Id de registre'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari'
        NombreDB = 'COMENTARI'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari que comenta'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data comentari'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus comentari'
        NombreDB = 'TIPUS'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'RCP:comentari de RCP;MR: comentari de MR;'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Anotaci'#243
        NombreDB = 'C_ANOTACIO'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Historia'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Id registre infermeria'
        NombreDB = 'ID_REGINFER'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
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
          'Id de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'hc'
        NombreDB = 'hc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'mero hist'#242'ria cl'#237'nica')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'N'#250'mero hist'#242'ria cl'#237'nica')
        CopiarOrigen.Strings = (
          'N'#250'mero hist'#242'ria cl'#237'nica')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari que comenta')
        CopiarOrigen.Strings = (
          'Usuari que comenta')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Historia'
        Master = Historia
        BuscaOrigen.Strings = (
          'Anotaci'#243)
        CopiarOrigen.Strings = (
          'Anotaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Anotaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Anotaci'#243)
      end>
    Nombre = 'RCPCOMENT'
    NombreTabla = 'RCPCOMENT'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id de registre'
      'N'#250'mero hist'#242'ria cl'#237'nica'
      'Comentari'
      'Usuari que comenta'
      'Data comentari'
      'Tipus comentari'
      'Anotaci'#243
      'Id registre infermeria')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 736
  end
  object LegalInf: TDic
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
        Nombre = 'N'#250'mero d'#39'hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'P'#224'tria potestat - nom i congoms'
        NombreDB = 'PP_NOM'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'P'#224'tria potestat - tel'#232'fon'
        NombreDB = 'PP_TELEFON'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'P'#224'tria potestat - relaci'#243
        NombreDB = 'PP_RELACIO'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Guarda i cust'#242'dia - nom i congoms'
        NombreDB = 'GC_NOM'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Guarda i cust'#242'dia - tel'#232'fon'
        NombreDB = 'GC_TELEFON'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Guarda i cust'#242'dia - relaci'#243
        NombreDB = 'GC_RELACIO'
        Longitud = 40
        Consulta = 'LegalInf'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi usuari'
        NombreDB = 'C_USUARI'
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
        Nombre = 'historia'
        NombreDB = 'historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'mero d'#39'hist'#242'ria cl'#237'nica')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = wDataBasics.Filiacio
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
        Nombre = 'LegalInf'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Guarda i cust'#242'dia - relaci'#243)
        CopiarOrigen.Strings = (
          'Guarda i cust'#242'dia - relaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'LEGALINF.GC_RELACIO'#39
      end>
    Nombre = 'LEGALINF'
    NombreTabla = 'LEGALINF'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'N'#250'mero d'#39'hist'#242'ria cl'#237'nica'
      'P'#224'tria potestat - nom i congoms'
      'P'#224'tria potestat - tel'#232'fon'
      'P'#224'tria potestat - relaci'#243
      'Guarda i cust'#242'dia - nom i congoms'
      'Guarda i cust'#242'dia - tel'#232'fon'
      'Guarda i cust'#242'dia - relaci'#243
      'Codi usuari'
      'Data')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 633
    Top = 242
  end
  object ItemsCodis: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'C_TipusItem'
        NombreDB = 'C_TipusItem'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C_Item'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'C_TipusItem'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' catal'#224
        NombreDB = 'N_Item1'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' castell'#224
        NombreDB = 'N_Item2'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus d'#39'entrada'
        NombreDB = 'Tipus'
        Longitud = 2
        Consulta = 'tipus'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1. text,   2. S/N,   3. S/N + text,   4. S/N (frase) + text'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Obligat'
        NombreDB = 'Obligat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ajuda'
        NombreDB = 'Ajuda'
        Longitud = 1000
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'text explicatiu del par'#224'metre'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Frase S'#237' cat'
        NombreDB = 'FraseSi1'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'frase que es bolca a l'#39'informe si la resposta '#233's s'#237' i Tipus = 4'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Frase No cat'
        NombreDB = 'FraseNo1'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'frase que es bolca a l'#39'informe si la resposta '#233's no i Tipus = 4'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Frase S'#237' cast'
        NombreDB = 'FraseSi2'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          'frase que es bolca a l'#39'informe si la resposta '#233's s'#237' i Tipus = 4 ' +
          '(castell'#224')'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Frase No cast'
        NombreDB = 'FraseNo2'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          'frase que es bolca a l'#39'informe si la resposta '#233's no i Tipus = 4 ' +
          '(castell'#224')'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'NB'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_TipusItem'
          'C_Item')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C_TipusItem')
        Tipo = tiForaneo
        ForaneoDic = ItemsTipus
        ForaneoCampos.Strings = (
          'C_TipusItem')
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
          'C_TipusItem'
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus d'#39'entrada')
        CopiarOrigen.Strings = (
          'Tipus d'#39'entrada')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ITEMSCODIS.TIPUS'#39
      end>
    Nombre = 'Items Codis'
    NombreTabla = 'ItemsCodis'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_TipusItem'
      'C_Item'
      'Descripci'#243' catal'#224
      'Tipus d'#39'entrada'
      'Obligat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7357953472
    Left = 561
    Top = 184
  end
  object ItemsDades: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Tract'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C_Historia'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Hist'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_TipusItem'
        NombreDB = 'C_TipusItem'
        Longitud = 10
        Consulta = 'Tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C_Item'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dada 1'
        NombreDB = 'Dada1'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dada 2'
        NombreDB = 'Dada2'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'C_Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'Usuari'
        zType = tcIB_Varchar
        zNotNull = False
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
          'C_TipusItem'
          'C_Item'
          'Data')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_TipusItem')
        Tipo = tiForaneo
        ForaneoDic = ItemsTipus
        ForaneoCampos.Strings = (
          'C_TipusItem')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Item'
        NombreDB = 'Item'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_TipusItem'
          'C_Item')
        Tipo = tiForaneo
        ForaneoDic = ItemsCodis
        ForaneoCampos.Strings = (
          'C_TipusItem'
          'C_Item')
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
        Nombre = 'Hist'
        NombreDB = 'Hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Historia')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
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
      end>
    Consultas = <
      item
        Nombre = 'Usuari'
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
        Nombre = 'Hist'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'C_Historia')
        CopiarOrigen.Strings = (
          'C_Historia')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Tract'
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
        Nombre = 'Item'
        Master = ItemsCodis
        BuscaOrigen.Strings = (
          'C_TipusItem'
          'C_Item')
        CopiarOrigen.Strings = (
          'C_TipusItem'
          'C_Item')
        CopiarMaster.Strings = (
          'C_TipusItem'
          'C_Item')
        BuscaMaster.Strings = (
          'C_TipusItem'
          'C_Item')
      end
      item
        Nombre = 'Tipus'
        Master = ItemsTipus
        BuscaOrigen.Strings = (
          'C_TipusItem')
        CopiarOrigen.Strings = (
          'C_TipusItem')
        CopiarMaster.Strings = (
          'C_TipusItem')
        BuscaMaster.Strings = (
          'C_TipusItem')
      end>
    Nombre = 'Items Dades'
    NombreTabla = 'ItemsDades'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Tractament'
      'C_Historia'
      'C_TipusItem'
      'C_Item'
      'C_Usuari'
      'Data')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.735796794
    Left = 633
    Top = 184
  end
  object ItemsTipus: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'C_TipusItem'
        NombreDB = 'C_TipusItem'
        Longitud = 10
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'N_TipusItem'
        NombreDB = 'N_TipusItem'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Dret prestaci'#243
        NombreDB = 'DretPresta'
        Longitud = 10
        Consulta = 'Dret_P'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Dret usuari'
        NombreDB = 'DretUsuari'
        Longitud = 10
        Consulta = 'Dret_U'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Dret grup'
        NombreDB = 'DretGrup'
        Longitud = 10
        Consulta = 'Dret_G'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Guardar RTF'
        NombreDB = 'GuardarRTF'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Directori RTF'
        NombreDB = 'DirectoriRTF'
        Longitud = 20
        Consulta = 'Directori'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'TipusRTF'
        NombreDB = 'TipusRTF'
        Longitud = 3
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Fer anotaci'#243
        NombreDB = 'FerAnotacio'
        Longitud = 1
        Consulta = 'anotacio'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Anotaci'#243
        NombreDB = 'Anotacio'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'T'#237'tol informe catal'#224
        NombreDB = 'Titol1'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'T'#237'tol informe castell'#224
        NombreDB = 'Titol2'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'M'#224'xim n'#250'mero'
        NombreDB = 'MaxNumero'
        Longitud = 2
        Consulta = 'numero'
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
          'C_TipusItem')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Directori'
        NombreDB = 'Directori'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Directori RTF')
        Tipo = tiForaneo
        ForaneoDic = wDataConfig.Directoris
        ForaneoCampos.Strings = (
          'Nom')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret_P'
        NombreDB = 'Dret_P'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Dret prestaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataConfig.Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret_U'
        NombreDB = 'Dret_U'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Dret usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataConfig.Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret_G'
        NombreDB = 'Dret_G'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Dret grup')
        Tipo = tiForaneo
        ForaneoDic = wDataConfig.Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
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
          'C_TipusItem')
        Tipo = tiForaneo
        ForaneoDic = wDataInformes.Informes_Tipus
        ForaneoCampos.Strings = (
          'Codi tipus')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Dret_U'
        Master = wDataConfig.Drets
        BuscaOrigen.Strings = (
          'Dret usuari')
        CopiarOrigen.Strings = (
          'Dret usuari')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'c_dret starting with "M"'
      end
      item
        Nombre = 'Dret_P'
        Master = wDataConfig.Drets
        BuscaOrigen.Strings = (
          'Dret prestaci'#243)
        CopiarOrigen.Strings = (
          'Dret prestaci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'c_dret starting with "P"'
      end
      item
        Nombre = 'Dret_G'
        Master = wDataConfig.Drets
        BuscaOrigen.Strings = (
          'Dret grup')
        CopiarOrigen.Strings = (
          'Dret grup')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'c_dret starting with "G"'
      end
      item
        Nombre = 'Directori'
        Master = wDataConfig.Directoris
        BuscaOrigen.Strings = (
          'Directori RTF')
        CopiarOrigen.Strings = (
          'Directori RTF')
        CopiarMaster.Strings = (
          'Nom')
        BuscaMaster.Strings = (
          'Nom')
      end
      item
        Nombre = 'anotacio'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Fer anotaci'#243)
        CopiarOrigen.Strings = (
          'Fer anotaci'#243)
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = "INF.ANOTACIO.QUAN"'
      end
      item
        Nombre = 'numero'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'M'#224'xim n'#250'mero')
        CopiarOrigen.Strings = (
          'M'#224'xim n'#250'mero')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.NUMERO'#39
      end
      item
        Nombre = 'tipus'
        Master = wDataInformes.Informes_Tipus
        BuscaOrigen.Strings = (
          'C_TipusItem')
        CopiarOrigen.Strings = (
          'C_TipusItem')
        CopiarMaster.Strings = (
          'Codi tipus')
        BuscaMaster.Strings = (
          'Codi tipus')
      end>
    Nombre = 'Items Tipus'
    NombreTabla = 'ItemsTipus'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_TipusItem'
      'N_TipusItem')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37658.7357980671
    Left = 493
    Top = 184
  end
  object LesionsSucc: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
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
        Nombre = 'N'#250'm. lesi'#243
        NombreDB = 'C_Linia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'N'#250'm. Hist.'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data lesi'#243
        NombreDB = 'Data_Lesio'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat administrativa'
        NombreDB = 'C_UnitatA'
        Longitud = 2
        Consulta = 'unitata'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat m'#232'dica'
        NombreDB = 'C_UnitatM'
        Longitud = 2
        Consulta = 'unitatm'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Severitat'
        NombreDB = 'Severitat'
        Longitud = 2
        Consulta = 'severitat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Origen'
        NombreDB = 'C_Origen'
        Longitud = 2
        Consulta = 'origen'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Causa'
        NombreDB = 'C_Causa'
        Longitud = 2
        Consulta = 'causa'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Causa detallada'
        NombreDB = 'C_Causa_Detall'
        Longitud = 2
        Consulta = 'causad'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Causa (altres)'
        NombreDB = 'Causa_Altres'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Lateralitat'
        NombreDB = 'C_Lateralitat'
        Longitud = 2
        Consulta = 'lateralitat'
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
        Nombre = 'GLF'
        NombreDB = 'GLF'
        Longitud = 15
        Consulta = 'GLF'
        zType = tcIB_Varchar
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
        Aplica = kcMODELS
        Nombre = 'Glasgow'
        NombreDB = 'Glasgow'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Dies APT'
        NombreDB = 'Dies_APT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Diagn'#242'stic neurol'#242'gic'
        NombreDB = 'N_Diagnosticneurologic'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi Etiologia'
        NombreDB = 'C_Etiologia'
        Longitud = 15
        Consulta = 'etiologia'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Etiologia'
        NombreDB = 'N_Etiologia'
        Longitud = 100
        zType = tcIB_Varchar
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
      end
      item
        Aplica = kcCaracter
        Nombre = 'Efecte tard'#224
        NombreDB = 'G_EfecteTarda'
        Longitud = 15
        Consulta = 'efectetarda'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Proc'#233's'
        NombreDB = 'C_Proces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari registre'
        NombreDB = 'C_Usuari_R'
        Longitud = 5
        Consulta = 'metges1'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'Data_Registre'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari modificaci'#243
        NombreDB = 'C_Usuari_M'
        Longitud = 5
        Consulta = 'metges2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data modificaci'#243
        NombreDB = 'Data_Modi'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
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
          'N'#250'm. lesi'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FKFili'
        NombreDB = 'FKFili'
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
        Nombre = 'Data'
        NombreDB = 'Data'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist.'
          'Data lesi'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'unitata'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Unitat administrativa')
        CopiarOrigen.Strings = (
          'Unitat administrativa')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "UNITATS"'
      end
      item
        Nombre = 'unitatm'
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
        Nombre = 'severitat'
        Master = wDataPerfilsNR.SeveritatUM
        BuscaOrigen.Strings = (
          'Unitat m'#232'dica'
          'Severitat')
        CopiarOrigen.Strings = (
          'Severitat')
        CopiarMaster.Strings = (
          'Codi severitat')
        BuscaMaster.Strings = (
          'Codi unitat m'#232'dica'
          'Codi severitat')
        FiltroOrigen.Strings = (
          'Unitat m'#232'dica')
        FiltroMaster.Strings = (
          'Codi unitat m'#232'dica')
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
        WhereFiltro = 'TIPUSCODI = '#39'ORIGEN_FILIACIO'#39
      end
      item
        Nombre = 'causa'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Causa')
        CopiarOrigen.Strings = (
          'Causa')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'CAUSA'#39
      end
      item
        Nombre = 'causad'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Causa detallada')
        CopiarOrigen.Strings = (
          'Causa detallada')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'CAUSA_DETALL'#39
      end
      item
        Nombre = 'lateralitat'
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
          'GLF'
          'RIC')
        CopiarOrigen.Strings = (
          'GLF'
          'RIC')
        CopiarMaster.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
        BuscaMaster.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
      end
      item
        Nombre = 'etiologia'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi Etiologia')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi Etiologia')
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
          'Efecte tard'#224)
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'Efecte tard'#224)
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
        Nombre = 'metges1'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari registre')
        CopiarOrigen.Strings = (
          'Usuari registre')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'metges2'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari modificaci'#243)
        CopiarOrigen.Strings = (
          'Usuari modificaci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Lesions successives'
    NombreTabla = 'Lesions_Successives'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist.'
      'N'#250'm. lesi'#243
      'Data lesi'#243
      'Unitat administrativa'
      'Unitat m'#232'dica'
      'Severitat'
      'GLF')
    IndiceVer = 'Data'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 30
    Top = 494
  end
  object HandOver: TDic
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
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Motiu incid'#232'ncia'
        NombreDB = 'MOTIU'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Accions realitzades'
        NombreDB = 'REALITZAT'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Accions pendents'
        NombreDB = 'PENDENT'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge gu'#224'rdia'
        NombreDB = 'C_METGE'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Dia i hora registre'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Anotaci'#243
        NombreDB = 'C_ANOTACIO'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcMemo
        Nombre = 'Orientaci'#243' diagn'#242'stica'
        NombreDB = 'ORIENTA_DIAGNOSTIC'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Trasllat'
        NombreDB = 'Trasllat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Contacte de l'#39'hospital'
        NombreDB = 'CONTACTE'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Informe trasllat'
        NombreDB = 'INFORME'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resultat cr'#237'tic RX'
        NombreDB = 'RESULTAT_CRITIC_RX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus d'#39'anotaci'#243
        NombreDB = 'Tipus'
        Longitud = 1
        Consulta = 'Tipus'
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
        Nombre = 'Metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge gu'#224'rdia')
        CopiarOrigen.Strings = (
          'Metge gu'#224'rdia')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus d'#39'anotaci'#243)
        CopiarOrigen.Strings = (
          'Tipus d'#39'anotaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "HANDOVER.TIPUS"'
      end>
    Nombre = 'HandOver'
    NombreTabla = 'HandOver'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Hist'#242'ria cl'#237'nica'
      'Tractament'
      'Motiu incid'#232'ncia'
      'Accions realitzades'
      'Accions pendents'
      'Trasllat'
      'Contacte de l'#39'hospital'
      'Informe trasllat'
      'Metge gu'#224'rdia'
      'Dia i hora registre'
      'Anotaci'#243
      'Orientaci'#243' diagn'#242'stica'
      'Resultat cr'#237'tic RX'
      'Tipus d'#39'anotaci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 568
    Top = 494
  end
  object ActivitatPSI_antic: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Activitat'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE)'
      'RETURNS (TIPUS       CHAR(1),'
      '         TITOL       VARCHAR(35),'
      '         RESULTAT    INTEGER,'
      '         HC          INTEGER,'
      '         PRESTACIO   VARCHAR(35),'
      '         EDAT        INTEGER,'
      '         MOTIU       VARCHAR(40),'
      '         INTERVENCIO VARCHAR(40),'
      '         MODALITAT   VARCHAR(40),'
      '         METGE       VARCHAR(20)'
      ') AS'
      ' DECLARE VARIABLE P1004_PACIENTS  INTEGER;'
      ' DECLARE VARIABLE P1004_SESSIONS  INTEGER;'
      ' DECLARE VARIABLE P1004_NENS      INTEGER;'
      ' DECLARE VARIABLE P2014_PACIENTS  INTEGER;'
      ' DECLARE VARIABLE P2014_SESSIONS  INTEGER;'
      ' DECLARE VARIABLE P2014_NENS      INTEGER;'
      ' DECLARE VARIABLE PCE_PRIMERES    INTEGER;'
      ' DECLARE VARIABLE PCE_SUCCESSIVES INTEGER;'
      ' DECLARE VARIABLE PCE_INTERCON    INTEGER;'
      ' DECLARE VARIABLE PCE_NENS        INTEGER;'
      ' DECLARE VARIABLE PINF_PACIENTS   INTEGER;'
      ' DECLARE VARIABLE PINF_SESSIONS   INTEGER;'
      ' DECLARE VARIABLE PINF_GRUP       INTEGER;'
      ' DECLARE VARIABLE PINF_FAMILIES   INTEGER;'
      ' DECLARE VARIABLE PSICOEDUC_FAM   INTEGER;'
      ' DECLARE VARIABLE PSICOEDUC_PAC   INTEGER;'
      ' DECLARE VARIABLE P2004_ADULTS    INTEGER;'
      ' DECLARE VARIABLE P2004_NENS      INTEGER;'
      ' DECLARE VARIABLE PUSRA           INTEGER;'
      ' DECLARE VARIABLE DOLOR_PACIENTS  INTEGER;'
      ' DECLARE VARIABLE DOLOR_SESSIONS  INTEGER;'
      ''
      ' DECLARE VARIABLE HC_ANT          INTEGER;'
      ' DECLARE VARIABLE HC_ACT          INTEGER;'
      ' DECLARE VARIABLE TIPUSPRESTA     SMALLINT;'
      ' DECLARE VARIABLE C_MOTIU         SMALLINT;'
      ' DECLARE VARIABLE C_INTERVENCIO   SMALLINT;'
      ' DECLARE VARIABLE C_MODALITAT     SMALLINT;'
      ' DECLARE VARIABLE C_PRESTACIO     CHAR(4);'
      'BEGIN'
      '      /* Infantil: <= 18 anys'
      
        '         codicamps: PSICOLOGIA.MOTIU, PSICOLOGIA.MODALITAT i PSI' +
        'COLOGIA.INTERVEN.'
      
        '         TIPUS: 0-Capalera, 1-Detall, 2-Total  3- Detall per met' +
        'ge               */'
      ''
      
        '      P1004_PACIENTS=0; P1004_SESSIONS=0; P1004_NENS=0; P2014_PA' +
        'CIENTS=0; P2014_SESSIONS=0; P2014_NENS=0; PCE_PRIMERES=0;'
      
        '      PCE_SUCCESSIVES=0; PCE_INTERCON=0; PCE_NENS=0; PINF_PACIEN' +
        'TS=0; PINF_SESSIONS=0; PINF_GRUP=0; PINF_FAMILIES=0;'
      
        '      PSICOEDUC_FAM=0; PSICOEDUC_PAC=0; P2004_ADULTS=0; P2004_NE' +
        'NS=0; PUSRA=0; DOLOR_PACIENTS=0; DOLOR_SESSIONS=0;'
      ''
      
        '      HC_ANT=0; TIPUS=3; TITOL=NULL; RESULTAT=NULL;           /*' +
        ' Edat en el moment de l'#39'ingr'#233's */'
      
        '      FOR SELECT H.C_HISTORIA, H.C_PRESTACIO, P.N_PRESTACIO, P.T' +
        'IPUS, F_TRUNCAR((H.DATA_INGRES - F.FECHA_NAC)/365), A.C_MOTIU, C' +
        'M.N_CODI,'
      
        '                 A.C_INTERVENCIO, CI.N_CODI, A.C_MODALITAT, CD.N' +
        '_CODI, M.METGE'
      '      FROM ANOTAPSICOLOGIA A'
      '      INNER JOIN HISTORIA   H ON A.C_ANOTACIO    = H.C_ANOTACIO'
      '      INNER JOIN METGES     M ON H.C_USUARI      = M.CODI'
      '      LEFT  JOIN FILIACIO   F ON H.C_HISTORIA    = F.NUM_HIST'
      '      LEFT  JOIN PRESTACION P ON H.C_PRESTACIO   = P.C_PRESTACIO'
      
        '      LEFT  JOIN CODICAMPS CM ON A.C_MOTIU       = CM.C_CODI AND' +
        ' CM.TIPUSCODI='#39'PSICOLOGIA.MOTIU'#39
      
        '      LEFT  JOIN CODICAMPS CI ON A.C_INTERVENCIO = CI.C_CODI AND' +
        ' CI.TIPUSCODI='#39'PSICOLOGIA.INTERVEN.'#39
      
        '      LEFT  JOIN CODICAMPS CD ON A.C_MODALITAT   = CD.C_CODI AND' +
        ' CD.TIPUSCODI='#39'PSICOLOGIA.MODALITAT'#39
      '      WHERE (H.DATA>=:DATAI) AND (H.DATA<=:DATAF)'
      '      ORDER BY H.C_PRESTACIO, H.C_HISTORIA'
      
        '      INTO :HC_ACT, :C_PRESTACIO, :PRESTACIO, :TIPUSPRESTA, :EDA' +
        'T, :C_MOTIU, :MOTIU, :C_INTERVENCIO,'
      '           :INTERVENCIO, :C_MODALITAT, :MODALITAT, :METGE'
      '      DO BEGIN'
      '          /* Ingressos */'
      '          IF (C_PRESTACIO='#39'1004'#39') THEN'
      '          BEGIN'
      
        '              IF (HC_ANT<>HC_ACT) THEN P1004_PACIENTS=P1004_PACI' +
        'ENTS+1;'
      '              IF (EDAT<=18)       THEN P1004_NENS=P1004_NENS+1;'
      
        '                                  ELSE P1004_SESSIONS=P1004_SESS' +
        'IONS+1;'
      '          END'
      ''
      
        '          ELSE IF ((C_PRESTACIO='#39'2014'#39') OR (C_PRESTACIO='#39'2008'#39'))' +
        ' THEN'
      '          BEGIN'
      
        '              IF (HC_ANT<>HC_ACT) THEN P2014_PACIENTS=P2014_PACI' +
        'ENTS+1;'
      '              IF (EDAT<=18)       THEN P2014_NENS=P2014_NENS+1;'
      
        '                                  ELSE P2014_SESSIONS=P2014_SESS' +
        'IONS+1;'
      ''
      '              IF (C_PRESTACIO='#39'2008'#39') THEN'
      '              BEGIN'
      
        '                  IF (HC_ANT<>HC_ACT) THEN PINF_PACIENTS=PINF_PA' +
        'CIENTS+1;'
      '                  PINF_SESSIONS=PINF_SESSIONS+1;'
      ''
      
        '                  IF (C_MODALITAT=5)      THEN PINF_GRUP=PINF_GR' +
        'UP+1;         /* Grup */'
      
        '                  ELSE IF (C_MODALITAT=3) THEN PINF_FAMILIES=PIN' +
        'F_FAMILIES+1; /* Familiar */'
      '              END'
      '          END'
      ''
      '          ELSE IF (C_PRESTACIO='#39'2004'#39') THEN'
      '          BEGIN'
      '              IF (EDAT<=18) THEN P2004_NENS=P2004_NENS+1;'
      '                            ELSE P2004_ADULTS=P2004_ADULTS+1;'
      '          END'
      ''
      '          /* Consultes externes que no sigui 2004 */'
      '          ELSE IF (TIPUSPRESTA=2) THEN'
      '          BEGIN'
      
        '              IF (C_PRESTACIO='#39'2001'#39') THEN PCE_PRIMERES=PCE_PRIM' +
        'ERES+1;'
      
        '                                      ELSE PCE_SUCCESSIVES=PCE_S' +
        'UCCESSIVES+1;'
      ''
      
        '              IF (C_MOTIU=5)          THEN PCE_NENS=PCE_NENS+1; ' +
        '/* Infantil */'
      '          END'
      ''
      '          /* Grups Psicoeducatius */'
      
        '          IF ((C_MOTIU=2) AND (C_INTERVENCIO=4) AND (C_MODALITAT' +
        '=5)) THEN PSICOEDUC_FAM=PSICOEDUC_FAM+1;'
      ''
      '          HC_ANT=HC_ACT;'
      ''
      '          HC=HC_ANT; SUSPEND;'
      '      END'
      ''
      ''
      
        '      HC_ANT=0;                                        /* Edat e' +
        'n el moment de l'#39'ingr'#233's */'
      
        '      FOR SELECT H.C_HISTORIA, H.C_PRESTACIO, P.TIPUS, F_TRUNCAR' +
        '((H.DATA_INGRES - F.FECHA_NAC)/365), A.C_MOTIU, A.C_INTERVENCIO,' +
        ' A.C_MODALITAT'
      '      FROM ANOTAPSICOLOGIA A'
      '      INNER JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO'
      '      LEFT  JOIN FILIACIO F ON H.C_HISTORIA = F.NUM_HIST'
      '      LEFT  JOIN PRESTACION P ON H.C_PRESTACIO = P.C_PRESTACIO'
      '      WHERE (H.DATA >= :DATAI) AND (H.DATA<=:DATAF)'
      '      AND   (A.C_MOTIU IN (3,4))'
      '      ORDER BY A.C_MOTIU, H.C_HISTORIA'
      
        '      INTO :HC_ACT, :C_PRESTACIO, :TIPUSPRESTA, :EDAT, :C_MOTIU,' +
        ' :C_INTERVENCIO, :C_MODALITAT'
      '      DO BEGIN'
      '          /* Dolor */'
      '          IF (C_MOTIU=3) THEN'
      '          BEGIN'
      
        '              IF (HC_ANT<>HC_ACT) THEN DOLOR_PACIENTS=DOLOR_PACI' +
        'ENTS+1;'
      '              DOLOR_SESSIONS=DOLOR_SESSIONS+1;'
      '          END'
      ''
      '          /* USRA */'
      '          IF (C_MOTIU=4) THEN'
      '          BEGIN'
      '              IF (HC_ANT<>HC_ACT) THEN PUSRA=PUSRA+1;'
      '          END'
      ''
      '          HC_ANT=HC_ACT;'
      '     END'
      ''
      
        '     HC=NULL; PRESTACIO=NULL; EDAT=NULL; MOTIU=NULL; INTERVENCIO' +
        '=NULL; MODALITAT=NULL; METGE=NULL;'
      ''
      ''
      '      /* SUSPENDS */'
      
        '      TIPUS=0; TITOL='#39'- INGRESSATS'#39';           RESULTAT=NULL;   ' +
        '         SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n de pacients'#39';          RESULTAT=P1004_PA' +
        'CIENTS;  SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n visites a adults'#39';     RESULTAT=P1004_SE' +
        'SSIONS;  SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n visites a nens'#39';       RESULTAT=P1004_NE' +
        'NS;      SUSPEND;'
      ''
      
        '      TIPUS=0; TITOL='#39'- AMBULATORIS'#39';          RESULTAT=NULL;   ' +
        '         SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n de pacients'#39';          RESULTAT=P2014_PA' +
        'CIENTS;  SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n visites a adults'#39';     RESULTAT=P2014_SE' +
        'SSIONS;  SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n visites a nens'#39';       RESULTAT=P2014_NE' +
        'NS;      SUSPEND;'
      ''
      
        '      TIPUS=0; TITOL='#39'- CONSULTES EXTERNES'#39';   RESULTAT=NULL;   ' +
        '         SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'primeres visites'#39';       RESULTAT=PCE_PRIM' +
        'ERES;    SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'visites successives'#39';    RESULTAT=PCE_SUCC' +
        'ESSIVES; SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'interconsultes'#39';         RESULTAT=PCE_INTE' +
        'RCON;    SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'sessions a nens'#39';        RESULTAT=PCE_NENS' +
        ';        SUSPEND;'
      ''
      
        '      TIPUS=0; TITOL='#39'- REHAB.INFANTIL'#39';       RESULTAT=NULL;   ' +
        '         SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n de pacients'#39';          RESULTAT=PINF_PAC' +
        'IENTS;   SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n de visites'#39';           RESULTAT=PINF_SES' +
        'SIONS;   SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'   grup nens'#39';           RESULTAT=PINF_GRU' +
        'P;       SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'   families nens'#39';       RESULTAT=PINF_FAM' +
        'ILIES;   SUSPEND;'
      ''
      
        '      TIPUS=0; TITOL='#39'- GRUPS PSICOEDUCATIUS'#39'; RESULTAT=NULL;   ' +
        '         SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'families (n sessions)'#39';  RESULTAT=PSICOEDU' +
        'C_FAM;   SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'pacients (n sessions)'#39';  RESULTAT=PSICOEDU' +
        'C_PAC;   SUSPEND;'
      ''
      
        '      TIPUS=0; TITOL='#39'- REVISIONS'#39';            RESULTAT=NULL;   ' +
        '         SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'adults (n pacients)'#39';    RESULTAT=P2004_AD' +
        'ULTS;    SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'nens   (n pacients)'#39';    RESULTAT=P2004_NE' +
        'NS;      SUSPEND;'
      ''
      
        '      TIPUS=0; TITOL='#39'- USRA'#39';                 RESULTAT=NULL;   ' +
        '         SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n pacients'#39';             RESULTAT=PUSRA;  ' +
        '         SUSPEND;'
      ''
      
        '      TIPUS=0; TITOL='#39'- DOLOR'#39';                RESULTAT=NULL;   ' +
        '         SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n pacients'#39';             RESULTAT=DOLOR_PA' +
        'CIENTS;  SUSPEND;'
      
        '      TIPUS=1; TITOL='#39'n sessions'#39';             RESULTAT=DOLOR_SE' +
        'SSIONS;  SUSPEND;'
      ''
      'END')
    Dic1 = AnotaPsicologia
    Dic1Name = 'AnotaPsicologia'
    Abierta = False
    Borrame = False
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
    Top = 404
  end
  object SessionsPeriode: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
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
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus tractament'
        NombreDB = 'TIPUS'
        Longitud = 4
        Consulta = 'TIPUS'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'DATA_INICI'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari modificacio data inici'
        NombreDB = 'C_USER_DATAI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data modificacio data inici'
        NombreDB = 'DATA_DATAINICI'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fi'
        NombreDB = 'DATA_FI'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari modificacio data fi'
        NombreDB = 'C_USER_DATAF'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data modificacio data fi'
        NombreDB = 'DATA_DATAFI'
        Longitud = 11
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
          'Tractament')
        Tipo = tiPrimario
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'TIPUS'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus tractament')
        CopiarOrigen.Strings = (
          'Tipus tractament')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'GNPT.TIPUS'#39
      end>
    Nombre = 'SessionsPeriode'
    NombreTabla = 'SessionsPeriode'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tractament'
      'Tipus tractament'
      'Data inici'
      'Usuari modificacio data inici'
      'Data modificacio data inici'
      'Data fi'
      'Usuari modificacio data fi'
      'Data modificacio data fi')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 578
    Top = 356
  end
  object Act_: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Act_'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '      DECLARE VARIABLE TIPUS      INTEGER;'
      'BEGIN'
      '      DATAFI = DATAFI||'#39' 23:59:59'#39';'
      ''
      
        '      PRESTACIO='#39'REHABILITACI'#211' INFANTIL'#39'; SECTOR_SESSIO = '#39'NENS'#39 +
        ';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY E.N_ESPECIAL, A.TIPUS, C.N_CODI'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL in('#39 +
        '08'#39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE E.DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY ES.N_ESPECIAL, M.C_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '        IF (ESPECIALITAT IS NOT NULL) THEN'
      '        BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '        END;'
      '      END;'
      ''
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN EDULIN L ON E.C_EDUCAP=L.C_EDUCAP'
      '      LEFT JOIN METGES M ON L.C_USUARI = M.CODI'
      '      LEFT JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT AND ' +
        'T.C_PRESTACIO = '#39'2008'#39
      
        '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI AND M.C_ESPECIAL' +
        ' in('#39'08'#39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '        IF (ESPECIALITAT IS NOT NULL) THEN'
      '        BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '        END'
      '      END;'
      '      ESPECIALITAT='#39'Neuropsicologia'#39';'
      '      '
      '      /*  15-9-2015 - i */'
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL in('#39'08' +
        #39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND   S.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL in('#39'08' +
        #39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND   S.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      /* 15-9-2015 - f */'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, COUNT' +
        '(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL in('#39'08' +
        #39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND   S.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      PRESTACIO='#39'REVISIONS'#39'; TIPUS_SESSIO='#39'N'#250'mero de revisions'#39';' +
        ' SECTOR_SESSIO = '#39#39';'
      
        '      FOR SELECT E.N_ESPECIAL, COUNT(DISTINCT T.C_TRACTAMENT) FR' +
        'OM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      '      JOIN METGES   M ON H.C_USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL=E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE T.C_PRESTACIO = '#39'2004'#39' AND (H.ANULAT = '#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      GROUP BY E.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      PRESTACIO='#39'CONSULTA EXTERNA'#39';'
      
        '      /* PARTE 46767-I: comptem les activitatneuro fetes per log' +
        'opedes (especial=14) de tipus 8-Sessi'#243' logopdia'
      
        '                        associades a 2001 i 2002 amb coordinador' +
        ' NEUROPSICOLEG */'
      
        '      TIPUS_SESSIO='#39'Sessions logop'#232'dia (visites)'#39'; ESPECIALITAT=' +
        #39'Logop'#232'dia'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      SELECT COUNT(*) FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA    H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.A' +
        'NULAT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      '      JOIN TRACTAMENTS T ON H.C_TRACTAMENT = T.C_TRACTAMENT'
      
        '      JOIN METGES      M ON T.C_COORDINADOR = M.CODI AND M.C_ESP' +
        'ECIAL = '#39'15'#39
      
        '      JOIN METGES     MA ON A.USUARI = MA.CODI AND MA.C_ESPECIAL' +
        ' = '#39'14'#39
      '      WHERE (A.TIPUS=8) AND A.EDAT BETWEEN 1 AND 16'
      '      AND ((T.C_PRESTACIO = '#39'2001'#39') OR (T.C_PRESTACIO='#39'2002'#39'))'
      '      AND (T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI)'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      '      /*PRESTACIO = '#39#39';*/ SECTOR_SESSIO='#39'ADULTS'#39';'
      '      SELECT COUNT(*) FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      '      WHERE A.TIPUS=8 AND A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      '      /* PARTE 46767-F */'
      ''
      '      TIPUS_SESSIO='#39'Primeres visites'#39';'
      
        '      FOR SELECT E.N_ESPECIAL, COUNT(DISTINCT T.C_TRACTAMENT) FR' +
        'OM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      '      JOIN METGES M   ON H.C_USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE T.C_PRESTACIO = '#39'2001'#39' AND (H.ANULAT ='#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      GROUP BY E.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      /*PRESTACIO = '#39#39';*/ TIPUS_SESSIO='#39'Visites successives'#39';'
      
        '      FOR SELECT E.N_ESPECIAL, COUNT(DISTINCT T.C_TRACTAMENT) FR' +
        'OM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      '      JOIN METGES M   ON H.C_USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE T.C_PRESTACIO = '#39'2002'#39' AND (H.ANULAT ='#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      GROUP BY E.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      ESPECIALITAT='#39'Neuropsicologia'#39';'
      
        '      PRESTACIO='#39'PACIENTS'#39'; TIPUS_SESSIO='#39'Amb una anotaci'#243' com a' +
        ' m'#237'nim'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      SELECT COUNT(DISTINCT F.NUM_HIST) FROM FILIACIO F'
      '      JOIN HISTORIA H ON F.NUM_HIST = H.C_HISTORIA'
      
        '      JOIN METGES M   ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = ' +
        #39'15'#39
      '      WHERE H.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND (F.EDAT BETWEEN 1 AND 16) AND (H.ANULAT ='#39'N'#39')'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      
        '      /*PRESTACIO = '#39#39';*/ TIPUS_SESSIO='#39'Amb una anotaci'#243' com a m' +
        #237'nim'#39'; SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      SELECT COUNT(DISTINCT F.NUM_HIST) FROM FILIACIO F'
      '      JOIN HISTORIA H ON F.NUM_HIST = H.C_HISTORIA'
      
        '      JOIN METGES M ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      
        '      WHERE H.DATA BETWEEN :DATAINI AND :DATAFI  AND (H.ANULAT =' +
        #39'N'#39')'
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'activitatneuro'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 342
    Top = 303
  end
  object AnotaEASE: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C_Anotacio'
        NombreDB = 'C_Anotacio'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus d'#39'actuaci'#243
        NombreDB = 'C_Actuacio'
        Longitud = 2
        Consulta = 'actuacio'
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
          'C_Anotacio')
        Tipo = tiPrimario
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
          'C_Anotacio')
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'actuacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus d'#39'actuaci'#243)
        CopiarOrigen.Strings = (
          'Tipus d'#39'actuaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'EASE.ACTUACIO'
      end>
    Nombre = 'Anotacions EASE'
    NombreTabla = 'AnotaEASE'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Anotacio'
      'Tipus d'#39'actuaci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 8
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 112
    Top = 356
  end
  object CountActivitat: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CountActivitat'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (MOTIU        VARCHAR(40),'
      '         INTERVENCIO  VARCHAR(40),'
      '         MODALITAT    VARCHAR(40),'
      '         PROFESSIONAL VARCHAR(20),'
      '         QUANTS       INTEGER)'
      'AS'
      'BEGIN'
      ''
      ' FOR SELECT C1.N_CODI, C2.N_CODI, C3.N_CODI, M.METGE, COUNT(*)'
      ' FROM ANOTAPSICOLOGIA A'
      ' JOIN HISTORIA  H  ON A.C_ANOTACIO    = H.C_ANOTACIO'
      
        ' JOIN CODICAMPS C1 ON A.C_MOTIU       = C1.C_CODI AND C1.TIPUSCO' +
        'DI='#39'PSICOLOGIA.MOTIU'#39
      
        ' JOIN CODICAMPS C2 ON A.C_INTERVENCIO = C2.C_CODI AND C2.TIPUSCO' +
        'DI='#39'PSICOLOGIA.INTERVEN.'#39
      
        ' JOIN CODICAMPS C3 ON A.C_MODALITAT   = C3.C_CODI AND C3.TIPUSCO' +
        'DI='#39'PSICOLOGIA.MODALITAT'#39
      ' JOIN METGES    M  ON H.C_USUARI      = M.CODI'
      ' WHERE (H.DATA >= :DATAI) AND (H.DATA<=:DATAF||'#39' 23:59:59'#39')'
      
        ' GROUP BY A.C_MOTIU, C1.N_CODI, A.C_INTERVENCIO, C2.N_CODI, A.C_' +
        'MODALITAT, C3.N_CODI, M.METGE'
      ' INTO :MOTIU, :INTERVENCIO, :MODALITAT, :PROFESSIONAL, :QUANTS'
      ' DO BEGIN'
      '     SUSPEND;'
      ' END;'
      ''
      'END')
    Dic1 = AnotaPsicologia
    Dic1Name = 'AnotaPsicologia'
    Abierta = False
    Borrame = False
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
    Top = 404
  end
  object ActivitatLogo: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatLogo'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '      DECLARE VARIABLE TIPUS      INTEGER;'
      'BEGIN'
      '      '
      '      '
      '      PRESTACIO='#39'INGRESSATS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI AND M.C_ESPECIAL = '#39'14'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI AND M.C_ESPECIAL = '#39'14'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'14'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'14'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      PRESTACIO='#39'AMBULATORIS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON A.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'14' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'14' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'14' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON A.USUARI = M.CODI   AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI   AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'14' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '4'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      PRESTACIO='#39'FUNCIONS SUPERIORS'#39'; SECTOR_SESSIO ='#39'NENS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'14'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      SECTOR_SESSIO ='#39'ADULTS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'14' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      /* INTERCONSULTES */'
      
        '      PRESTACIO='#39'INTERCONSULTES'#39'; ESPECIALITAT='#39'Logop'#232'dia'#39'; TIPU' +
        'S_SESSIO='#39'Sol'#183'licitades no anullades'#39'; SECTOR_SESSIO=NULL;'
      '      SELECT COUNT(*) FROM INTERCON'
      '      WHERE DATA1 BETWEEN :DATAINI AND :DATAFI'
      '      AND C_ESPECIAL='#39'14'#39
      '      AND (NOT ESTAT BETWEEN 80 AND 89)'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'ActivitatNeuro'
    Abierta = False
    Borrame = False
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
    Top = 356
  end
  object ActivitatPsico: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatPsico'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '      DECLARE VARIABLE TIPUS      INTEGER;'
      'BEGIN'
      '      '
      '      '
      '      PRESTACIO='#39'INGRESSATS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI AND M.C_ESPECIAL = '#39'08'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI AND M.C_ESPECIAL = '#39'08'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'08'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'08'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      PRESTACIO='#39'AMBULATORIS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON A.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'08' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON A.USUARI = M.CODI   AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'0' +
        '8'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      '      SUSPEND;'
      ''
      '      /* INTERCONSULTES */'
      
        '      PRESTACIO='#39'INTERCONSULTES'#39'; ESPECIALITAT='#39'Psicologia cl'#237'ni' +
        'ca'#39'; TIPUS_SESSIO='#39'Sol'#183'licitades no anullades'#39'; SECTOR_SESSIO=NU' +
        'LL;'
      '      SELECT COUNT(*) FROM INTERCON'
      '      WHERE DATA1 BETWEEN :DATAINI AND :DATAFI'
      '      AND C_ESPECIAL='#39'08'#39
      '      AND (NOT ESTAT BETWEEN 80 AND 89)'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'ActivitatNeuro'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 418
    Top = 356
  end
  object ActivitatNeu: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatNeu'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '      DECLARE VARIABLE TIPUS      INTEGER;'
      'BEGIN'
      '      '
      '      PRESTACIO='#39'INGRESSATS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI AND M.C_ESPECIAL = '#39'15'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'15'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'15'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI AND M.C_ESPECIAL = '#39'15'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'15'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'15'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      PRESTACIO='#39'AMBULATORIS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON A.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'15' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'15' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'15' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON A.USUARI = M.CODI   AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI   AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'15' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4;  TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT ' +
        '= NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      /* INTERCONSULTES */'
      
        '      PRESTACIO='#39'INTERCONSULTES'#39'; TIPUS_SESSIO='#39'Sol'#183'licitades no' +
        ' anullades'#39'; SECTOR_SESSIO=NULL; ESPECIALITAT='#39'Neuropsicologia'#39';'
      '      SELECT COUNT(*) FROM INTERCON'
      '      WHERE DATA1 BETWEEN :DATAINI AND :DATAFI'
      '      AND C_ESPECIAL='#39'15'#39
      '      AND (NOT ESTAT BETWEEN 80 AND 89)'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'ActivitatNeuro'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 345
    Top = 356
  end
  object ActivitatMusico: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatMusico'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '      DECLARE VARIABLE TIPUS      INTEGER;'
      'BEGIN'
      '      '
      '      '
      '      PRESTACIO='#39'INGRESSATS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI AND M.C_ESPECIAL = '#39'65'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI AND M.C_ESPECIAL = '#39'65'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'65'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL = '#39'65'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      '      PRESTACIO='#39'AMBULATORIS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON A.USUARI = M.CODI  AND M.C_ESPECIAL = '#39'65' +
        #39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON A.USUARI = M.CODI   AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      ''
      '      IF (ESPECIALITAT IS NOT NULL) THEN'
      '      BEGIN'
      '          SUSPEND;'
      '          PRESTACIO = '#39#39';'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDULIN L'
      
        '      JOIN METGES M ON L.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'6' +
        '5'#39
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON L.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT;'
      '      SUSPEND;'
      ''
      '      /* INTERCONSULTES */'
      
        '      PRESTACIO='#39'INTERCONSULTES'#39'; ESPECIALITAT='#39'Musicoter'#224'pia'#39'; ' +
        'TIPUS_SESSIO='#39'Sol'#183'licitades no anullades'#39'; SECTOR_SESSIO=NULL;'
      '      SELECT COUNT(*) FROM INTERCON'
      '      WHERE DATA1 BETWEEN :DATAINI AND :DATAFI'
      '      AND C_ESPECIAL='#39'65'#39
      '      AND (NOT ESTAT BETWEEN 80 AND 89)'
      '      INTO :RESULTAT;'
      '      SUSPEND;'
      ''
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'ActivitatNeuro'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 493
    Top = 356
  end
  object Diagnostics_CIM10: TDic
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
        Comentario = 'PK'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Comptador'
        NombreDB = 'Comptador'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'C_Historia'
        Comentario = 'PK'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'L'#237'nia lesi'#243
        NombreDB = 'C_Linia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'lesio'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'l'#237'nia de lesi'#243' successiva. Nom'#233's informat per a etiologia, diagn' +
          #242'stic neurol'#242'gic, etc.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Nom'#233's informat per a diagn'#242'stics de tractament'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Proc'#233's'
        NombreDB = 'C_Proces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'proces'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Diagn'#242'stic'
        NombreDB = 'N_Diagnostic'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Descripci'#243' lliure del diagn'#242'stic'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Subcodi diagn'#242'stic'
        NombreDB = 'G_Diagnostic'
        Longitud = 10
        Consulta = 'cim10g'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Detecci'#243
        NombreDB = 'Deteccio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'A l'#39'ingr'#233's, durant el proc'#233's, a l'#39'alta es recullen tots (nom'#233's p' +
          'er a diagn'#242'stics de tractament)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Classe'
        NombreDB = 'Classe'
        Longitud = 3
        Consulta = 'classe'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          'classificaci'#243': diag ppal (motiu assist'#232'ncia), etiologia, diag ne' +
          'ur., d'#232'ficit neurol'#242'gic, seq'#252'ela, codi e / causa externa 1/2, co' +
          'mplicaci'#243', comorbiditat...'
      end
      item
        Aplica = kcMODELS
        Nombre = 'POA'
        NombreDB = 'POA'
        Longitud = 1
        Consulta = 'poa'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'Present a l'#39'admissi'#243' (S'#237', No, Exempt)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        AutoContador.Tipo = tcSubContador
        AutoContador.Campo = 'Tractament'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
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
        Nombre = 'Codi diagn'#242'stic'
        NombreDB = 'C_Diagnostic'
        Longitud = 10
        Consulta = 'cim10c'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Classe CMB'
        NombreDB = 'ClasseCMB'
        Longitud = 3
        Consulta = 'classecmb'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Classificaci'#243' revisada per enviar al CMBD'
      end
      item
        Aplica = kcMODELS
        Nombre = 'POACMB'
        NombreDB = 'POACMB'
        Longitud = 1
        Consulta = 'poacmb'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'POA revisat per enviar al CMBD'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre CMB'
        NombreDB = 'OrdreCMB'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'IASist reordena diagn'#242'stics'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist'
          'Comptador')
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
          'N'#250'm. Hist')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
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
          'N'#250'm. Hist'
          'L'#237'nia lesi'#243)
        Tipo = tiForaneo
        ForaneoDic = LesionsSucc
        ForaneoCampos.Strings = (
          'N'#250'm. Hist.'
          'N'#250'm. lesi'#243)
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
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
        ForaneoDic = wDataBasics.Metges
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
          'Tractament'
          'Detecci'#243
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ordrecmb'
        NombreDB = 'ordrecmb'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament'
          'Detecci'#243
          'Ordre CMB')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'diag'
        NombreDB = 'diag'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi diagn'#242'stic')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.CIM10D
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'diagg'
        NombreDB = 'diagg'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Subcodi diagn'#242'stic')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.CIM10D
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tot'
        NombreDB = 'tot'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament'
          'N'#250'm. Hist')
        Tipo = tiSecundario
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament'
          'N'#186' Historia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'cim10c'
        Master = wDataCodis.CIM10D
        BuscaOrigen.Strings = (
          'Codi diagn'#242'stic')
        CopiarOrigen.Strings = (
          'Codi diagn'#242'stic')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'classe'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Classe')
        CopiarOrigen.Strings = (
          'Classe')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CMBD.CLASSE'#39
      end
      item
        Nombre = 'classecmb'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Classe CMB')
        CopiarOrigen.Strings = (
          'Classe CMB')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CMBD.CLASSE'#39
      end
      item
        Nombre = 'poa'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'POA')
        CopiarOrigen.Strings = (
          'POA')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'DIAGS_POA'#39
      end
      item
        Nombre = 'poacmb'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'POACMB')
        CopiarOrigen.Strings = (
          'POACMB')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'DIAGS_POA'#39
      end
      item
        Nombre = 'hist'
        Master = wDataBasics.Filiacio
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
        Nombre = 'tract'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'Tractament')
        CopiarOrigen.Strings = (
          'Tractament'
          'Proc'#233's'
          'N'#250'm. Hist')
        CopiarMaster.Strings = (
          'N'#186' Tractament'
          'Codi de Proc'#233's'
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
        FiltroOrigen.Strings = (
          'N'#250'm. Hist')
        FiltroMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'proces'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'Proc'#233's')
        CopiarOrigen.Strings = (
          'Proc'#233's'
          'Tractament'
          'N'#250'm. Hist')
        CopiarMaster.Strings = (
          'Codi de Proc'#233's'
          'N'#186' Tractament'
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'Codi de Proc'#233's')
        FiltroOrigen.Strings = (
          'Tractament')
        FiltroMaster.Strings = (
          'N'#186' Tractament')
      end
      item
        Nombre = 'lesio'
        Master = LesionsSucc
        BuscaOrigen.Strings = (
          'N'#250'm. Hist'
          'L'#237'nia lesi'#243)
        CopiarOrigen.Strings = (
          'N'#250'm. Hist'
          'L'#237'nia lesi'#243)
        CopiarMaster.Strings = (
          'N'#250'm. Hist.'
          'N'#250'm. lesi'#243)
        BuscaMaster.Strings = (
          'N'#250'm. Hist.'
          'N'#250'm. lesi'#243)
      end
      item
        Nombre = 'cim10g'
        Master = wDataCodis.CIM10D
        BuscaOrigen.Strings = (
          'Subcodi diagn'#242'stic')
        CopiarOrigen.Strings = (
          'Subcodi diagn'#242'stic'
          'Codi diagn'#242'stic')
        CopiarMaster.Strings = (
          'Codi'
          'Pare')
        BuscaMaster.Strings = (
          'Codi')
      end>
    Nombre = 'Diagnostics_CIM10'
    NombreTabla = 'Diagnostics_CIM10'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist'
      'Comptador'
      'L'#237'nia lesi'#243
      'Tractament'
      'Proc'#233's'
      'Diagn'#242'stic'
      'Subcodi diagn'#242'stic'
      'Detecci'#243
      'Classe'
      'POA'
      'Ordre'
      'Metge'
      'Data'
      'Codi diagn'#242'stic'
      'Classe CMB'
      'POACMB'
      'Ordre CMB')
    IndiceVer = 'tot'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    Left = 206
    Top = 548
  end
  object Procediments_CIM10: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Proc'#233's'
        NombreDB = 'C_Proces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Procediment'
        NombreDB = 'N_Procediment'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'SubCodi procediment'
        NombreDB = 'G_Procediment'
        Longitud = 10
        Consulta = 'cim10g'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dispositiu'
        NombreDB = 'Dispositiu'
        Longitud = 15
        Consulta = 'dispositiu'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Lloc on es realitza (CMBD) si no est'#224' parametritzat a CIM10P'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
        Consulta = 'metge'
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
        Aplica = kcMODELS
        Nombre = 'Codi procediment'
        NombreDB = 'C_Procediment'
        Longitud = 10
        Consulta = 'cim10c'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dispositiu CMB'
        NombreDB = 'DispositiuCMB'
        Longitud = 15
        Consulta = 'dispositiucmb'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre CMB'
        NombreDB = 'OrdreCMB'
        Longitud = 2
        zType = tcIB_Smallint
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
          'C Tractament'
          'Ordre CMB')
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
          'C Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'proc'
        NombreDB = 'proc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi procediment')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.CIM10P
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'procg'
        NombreDB = 'procg'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'SubCodi procediment')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.CIM10P
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tot'
        NombreDB = 'tot'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament'
          'Proc'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'cim10g'
        Master = wDataCodis.CIM10P
        BuscaOrigen.Strings = (
          'SubCodi procediment')
        CopiarOrigen.Strings = (
          'SubCodi procediment'
          'Codi procediment')
        CopiarMaster.Strings = (
          'Codi'
          'Pare')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'cim10c'
        Master = wDataCodis.CIM10P
        BuscaOrigen.Strings = (
          'Codi procediment')
        CopiarOrigen.Strings = (
          'Codi procediment')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'dispositiu'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Dispositiu')
        CopiarOrigen.Strings = (
          'Dispositiu')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CMBD.DISPOSITIU'#39
      end
      item
        Nombre = 'dispositiuCMB'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Dispositiu CMB')
        CopiarOrigen.Strings = (
          'Dispositiu CMB')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CMBD.DISPOSITIU'#39
      end
      item
        Nombre = 'tract'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'C Tractament')
        CopiarOrigen.Strings = (
          'C Tractament'
          'Proc'#233's')
        CopiarMaster.Strings = (
          'N'#186' Tractament'
          'Codi de Proc'#233's')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end
      item
        Nombre = 'metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge')
        CopiarOrigen.Strings = (
          'Metge')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'proces'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'Proc'#233's')
        CopiarOrigen.Strings = (
          'Proc'#233's'
          'C Tractament')
        CopiarMaster.Strings = (
          'Codi de Proc'#233's'
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'Codi de Proc'#233's')
        FiltroOrigen.Strings = (
          'C Tractament')
        FiltroMaster.Strings = (
          'N'#186' Tractament')
      end>
    Nombre = 'Procediments_CIM10'
    NombreTabla = 'Procediments_CIM10'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Tractament'
      'Proc'#233's'
      'Procediment'
      'SubCodi procediment'
      'Dispositiu'
      'Ordre'
      'Metge'
      'Data'
      'Codi procediment'
      'Dispositiu CMB'
      'Ordre CMB')
    IndiceVer = 'tot'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 410
    Top = 548
  end
  object Activitat: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Activitat'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '      DECLARE VARIABLE TIPUS      INTEGER;'
      'BEGIN'
      '      DATAFI = DATAFI||'#39' 23:59:59'#39';'
      ''
      '      PRESTACIO='#39'INGRESSATS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, COUNT' +
        '(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP e'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, COUNT' +
        '(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP e'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      '      PRESTACIO='#39'AMBULATORIS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, COUNT' +
        '(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; SECTOR_SESSIO = '#39'NENS'#39'; TIPUS_SESSIO='#39'Detecci'#243' de' +
        ' necessitat'#39'; RESULTAT = NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      '      '
      '      /* 11.1.2017 - faltava aquest par'#224'graf */'
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      /* 11.1.2017 - fi */'
      ''
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, COUN' +
        'T(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, COUNT' +
        '(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      PRESTACIO='#39'FUNCIONS SUPERIORS'#39'; SECTOR_SESSIO ='#39'NENS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      SECTOR_SESSIO ='#39'ADULTS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, COUNT' +
        '(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      SECTOR_SESSIO ='#39'ADULTS'#39';'
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, COUNT' +
        '(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      /* INTERCONSULTES */'
      
        '      PRESTACIO='#39'INTERCONSULTES'#39'; TIPUS_SESSIO='#39'Sol'#183'licitades no' +
        ' anullades'#39'; SECTOR_SESSIO=NULL;'
      '      FOR SELECT E.N_ESPECIAL, COUNT(*) FROM INTERCON I'
      '      JOIN ESPECIAL       E ON I.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON I.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE I.DATA1 BETWEEN :DATAINI AND :DATAFI'
      '      AND (NOT I.ESTAT BETWEEN 80 AND 89)'
      '      GROUP BY E.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      PRESTACIO='#39'FUNCIONS SUPERIORS'#39'; SECTOR_SESSIO ='#39'NENS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      '      SECTOR_SESSIO ='#39'ADULTS'#39';'
      '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, COUNT(*)'
      '      FROM EDUCAP E'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL'
      '      INTO :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      FOR SELECT PRESTACIO, TIPUS_SESSIO, SECTOR_SESSIO, ESPECIA' +
        'LITAT, RESULTAT FROM P_ACTIVITATNEURO_ACT_(:DATAINI, :DATAFI)'
      
        '      INTO :PRESTACIO, :TIPUS_SESSIO, :SECTOR_SESSIO, :ESPECIALI' +
        'TAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;  /* 15.9.2015 */'
      '      '
      '      '
      '      PRESTACIO='#39'EASE-LM'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'7200'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END;'
      '      '
      '      PRESTACIO='#39'EASE-LM'#39'; SECTOR_SESSIO = '#39'ADULTS'#39';'
      '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, COUNT(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'7200'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL'
      '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      ''
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'activitatneuro'
    Abierta = False
    Borrame = False
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
    Top = 300
  end
  object Musicoterapia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Id'
        NombreDB = 'Id'
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
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'c_tractament'
        NombreDB = 'c_tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'c_prestacio'
        NombreDB = 'c_prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'edat'
        NombreDB = 'edat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'tipus'
        NombreDB = 'tipus'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
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
      end
      item
        Aplica = kcCaracter
        Nombre = 'usuari'
        NombreDB = 'usuari'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data sessi'#243
        NombreDB = 'Data_Sessio'
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
          'Id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'tipus')
        CopiarOrigen.Strings = (
          'tipus')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ACTIVITATNEURO'#39' and c_codi=2'
      end>
    Nombre = 'SessionsMusicoterapia'
    NombreTabla = 'SessionsMusicoterapia'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'c_historia')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 633
    Top = 300
  end
  object ActivitatMetge: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatMetge'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         METGE         VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '  DECLARE VARIABLE TIPUS     INTEGER;'
      'BEGIN'
      '      DATAFI = DATAFI||'#39' 23:59:59'#39';'
      ''
      '      PRESTACIO='#39'INGRESSATS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      
        '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, M.ME' +
        'TGE, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, M.MET' +
        'GE, COUNT(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP e'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      
        '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'1004'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, M.ME' +
        'TGE, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, M.MET' +
        'GE, COUNT(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'1004'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP e'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'1004'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      '      PRESTACIO='#39'AMBULATORIS'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      
        '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, M.ME' +
        'TGE, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, M.MET' +
        'GE, COUNT(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      SECTOR_SESSIO = '#39'ADULTS'#39';'
      
        '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2014'#39
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, M.ME' +
        'TGE, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, M.MET' +
        'GE, COUNT(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2014'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2014'#39
      '      AND NOT (F.EDAT BETWEEN 1 AND 16)'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      PRESTACIO='#39'FUNCIONS SUPERIORS'#39'; SECTOR_SESSIO ='#39'NENS'#39';'
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      SECTOR_SESSIO ='#39'ADULTS'#39';'
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, M.MET' +
        'GE, COUNT(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      SECTOR_SESSIO ='#39'ADULTS'#39';'
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, M.MET' +
        'GE, COUNT(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      '      /* INTERCONSULTES */'
      
        '      PRESTACIO='#39'INTERCONSULTES'#39'; TIPUS_SESSIO='#39'Sol'#183'licitades no' +
        ' anullades'#39'; SECTOR_SESSIO=NULL;'
      '      FOR SELECT E.N_ESPECIAL, M.METGE, COUNT(*) FROM INTERCON I'
      '      JOIN ESPECIAL       E ON I.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON I.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      JOIN METGES         M ON I.C_METGE1   = M.CODI'
      '      WHERE I.DATA1 BETWEEN :DATAINI AND :DATAFI'
      '      AND (NOT I.ESTAT BETWEEN 80 AND 89)'
      '      GROUP BY E.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      PRESTACIO='#39'FUNCIONS SUPERIORS'#39'; SECTOR_SESSIO ='#39'NENS'#39';'
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      '      SECTOR_SESSIO ='#39'ADULTS'#39';'
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON S.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND S.C_PRESTACIO = '#39'2007'#39
      '      AND S.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN METGES M ON E.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      join EDULIN L on e.c_educap=l.c_educap'
      '      JOIN METGES M ON L.C_USUARI = M.CODI'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL=DE.C_ESPECIAL AND DE' +
        '.C_DRET='#39'E40'#39
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON E.C_HISTORIA = F.NUM_HIST'
      '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND T.C_PRESTACIO = '#39'2007'#39
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          IF (ESPECIALITAT IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              /*PRESTACIO = '#39#39';*/'
      '          END;'
      '      END'
      ''
      
        '      FOR SELECT PRESTACIO, TIPUS_SESSIO, SECTOR_SESSIO, ESPECIA' +
        'LITAT, METGE, RESULTAT FROM P_ACTIVITATNEURO_ACT_METGE(:DATAINI,' +
        ' :DATAFI)'
      
        '      INTO :PRESTACIO, :TIPUS_SESSIO, :SECTOR_SESSIO, :ESPECIALI' +
        'TAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;  /* 15.9.2015 */'
      ''
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'activitatneuro'
    Abierta = False
    Borrame = False
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
    Top = 252
  end
  object Act_Metge: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Act_Metge'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFI DATE)'
      'RETURNS (PRESTACIO     VARCHAR(35),'
      '         TIPUS_SESSIO  VARCHAR(40),'
      '         SECTOR_SESSIO VARCHAR(6),'
      '         ESPECIALITAT  VARCHAR(20),'
      '         METGE         VARCHAR(20),'
      '         RESULTAT      INTEGER)'
      'AS'
      '      DECLARE VARIABLE TIPUS      INTEGER;'
      'BEGIN'
      '      DATAFI = DATAFI||'#39' 23:59:59'#39';'
      ''
      
        '      PRESTACIO='#39'REHABILITACI'#211' INFANTIL'#39'; SECTOR_SESSIO = '#39'NENS'#39 +
        ';'
      
        '      FOR SELECT A.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      
        '      JOIN CODICAMPS C ON A.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      '      JOIN METGES M ON A.USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY E.N_ESPECIAL, A.TIPUS, C.N_CODI, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      TIPUS=4; TIPUS_SESSIO='#39'Detecci'#243' de necessitat'#39'; RESULTAT =' +
        ' NULL; ESPECIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      
        '      JOIN METGES M ON E.C_USUARI = M.CODI AND M.C_ESPECIAL in('#39 +
        '08'#39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT'
      '      WHERE E.DATA_DETECCIO BETWEEN :DATAINI AND :DATAFI'
      '      AND E.ESTAT <> -1'
      '      AND T.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY ES.N_ESPECIAL, M.C_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '        IF (ESPECIALITAT IS NOT NULL) THEN'
      '        BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '        END;'
      '      END;'
      ''
      ''
      
        '      TIPUS_SESSIO='#39'Actuaci'#243' en educaci'#243#39'; RESULTAT = NULL; ESPE' +
        'CIALITAT = NULL;'
      '      FOR SELECT ES.N_ESPECIAL, M.METGE, COUNT(*)'
      '      FROM EDUCAP E'
      '      JOIN EDULIN L ON E.C_EDUCAP=L.C_EDUCAP'
      '      LEFT JOIN METGES M ON L.C_USUARI = M.CODI'
      '      LEFT JOIN ESPECIAL ES ON M.C_ESPECIAL = ES.C_ESPECIAL'
      
        '      JOIN TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMENT AND ' +
        'T.C_PRESTACIO = '#39'2008'#39
      
        '      WHERE L.DATA BETWEEN :DATAINI AND :DATAFI AND M.C_ESPECIAL' +
        ' in('#39'08'#39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      GROUP BY ES.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '        IF (ESPECIALITAT IS NOT NULL) THEN'
      '        BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '        END'
      '      END;'
      '      ESPECIALITAT='#39'Neuropsicologia'#39';'
      '      '
      '      /*  15-9-2015 - i */'
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' TRC'#39', E.N_ESPECIAL, M.ME' +
        'TGE, COUNT(*)'
      '      FROM SESSIONSLOGOPEDIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL in('#39'08' +
        #39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA_SESSIO BETWEEN :DATAINI AND :DATAFI'
      '      AND   S.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      FOR SELECT S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE, COUNT' +
        '(*)'
      '      FROM SESSIONSTRC S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL in('#39'08' +
        #39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND   S.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      '      /* 15-9-2015 - f */'
      '      '
      
        '      FOR SELECT S.TIPUS, C.N_CODI || '#39' MT'#39', E.N_ESPECIAL, M.MET' +
        'GE, COUNT(*)'
      '      FROM SESSIONSMUSICOTERAPIA S'
      
        '      JOIN CODICAMPS C ON S.TIPUS = C.C_CODI AND C.TIPUSCODI = '#39 +
        'ACTIVITATNEURO'#39
      
        '      JOIN METGES M ON S.USUARI = M.CODI AND M.C_ESPECIAL in('#39'08' +
        #39','#39'14'#39','#39'15'#39','#39'65'#39')'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '      WHERE S.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND   S.C_PRESTACIO = '#39'2008'#39
      '      GROUP BY S.TIPUS, C.N_CODI, E.N_ESPECIAL, M.METGE'
      
        '      INTO :TIPUS, :TIPUS_SESSIO, :ESPECIALITAT, :METGE, :RESULT' +
        'AT'
      '      DO BEGIN'
      '          SUSPEND;'
      '          /*PRESTACIO = '#39#39';*/'
      '      END'
      ''
      
        '      PRESTACIO='#39'REVISIONS'#39'; TIPUS_SESSIO='#39'N'#250'mero de revisions'#39';' +
        ' SECTOR_SESSIO = '#39#39';'
      
        '      FOR SELECT E.N_ESPECIAL, M.METGE, COUNT(DISTINCT T.C_TRACT' +
        'AMENT) FROM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      '      JOIN METGES   M ON H.C_USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL=E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE T.C_PRESTACIO = '#39'2004'#39' AND (H.ANULAT = '#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      GROUP BY E.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      PRESTACIO='#39'CONSULTA EXTERNA'#39';'
      
        '      /* PARTE 46767-I: comptem les activitatneuro fetes per log' +
        'opedes (especial=14) de tipus 8-Sessi'#243' logopdia'
      
        '                        associades a 2001 i 2002 amb coordinador' +
        ' NEUROPSICOLEG */'
      
        '      TIPUS_SESSIO='#39'Sessions logop'#232'dia (visites)'#39'; ESPECIALITAT=' +
        #39'Logop'#232'dia'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      '      FOR SELECT MA.METGE, COUNT(*) FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA    H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.A' +
        'NULAT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      '      JOIN TRACTAMENTS T ON H.C_TRACTAMENT = T.C_TRACTAMENT'
      
        '      JOIN METGES      M ON T.C_COORDINADOR = M.CODI AND M.C_ESP' +
        'ECIAL = '#39'15'#39
      
        '      JOIN METGES     MA ON A.USUARI = MA.CODI AND MA.C_ESPECIAL' +
        ' = '#39'14'#39
      '      WHERE (A.TIPUS=8) AND A.EDAT BETWEEN 1 AND 16'
      '      AND ((T.C_PRESTACIO = '#39'2001'#39') OR (T.C_PRESTACIO='#39'2002'#39'))'
      '      AND (T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI)'
      '      GROUP BY MA.METGE'
      '      INTO :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      /*PRESTACIO = '#39#39';*/ SECTOR_SESSIO='#39'ADULTS'#39';'
      '      FOR SELECT M.METGE, COUNT(*) FROM ACTIVITATNEURO A'
      
        '      JOIN HISTORIA H ON A.C_ANOTACIO = H.C_ANOTACIO AND (H.ANUL' +
        'AT ='#39'N'#39') AND (NOT H.C_ESTATVALIDA IN(20,30))'
      '      JOIN METGES   M ON H.C_USUARI   = M.CODI'
      '      WHERE A.TIPUS=8 AND A.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND A.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY M.METGE'
      '      INTO :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      '      /* PARTE 46767-F */'
      ''
      '      TIPUS_SESSIO='#39'Primeres visites'#39';'
      
        '      FOR SELECT E.N_ESPECIAL, M.METGE, COUNT(DISTINCT T.C_TRACT' +
        'AMENT) FROM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      '      JOIN METGES M   ON H.C_USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE T.C_PRESTACIO = '#39'2001'#39' AND (H.ANULAT ='#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      GROUP BY E.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      /*PRESTACIO = '#39#39';*/ TIPUS_SESSIO='#39'Visites successives'#39';'
      
        '      FOR SELECT E.N_ESPECIAL, M.METGE, COUNT(DISTINCT T.C_TRACT' +
        'AMENT) FROM TRACTAMENTS T'
      '      JOIN HISTORIA H ON T.C_TRACTAMENT = H.C_TRACTAMENT'
      '      JOIN METGES M   ON H.C_USUARI = M.CODI'
      '      JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '      JOIN DRETSESPECIAL DE ON M.C_ESPECIAL = DE.C_ESPECIAL AND ' +
        'DE.C_DRET='#39'E40'#39
      '      WHERE T.C_PRESTACIO = '#39'2002'#39' AND (H.ANULAT ='#39'N'#39')'
      '      AND T.DATA_INGRES BETWEEN :DATAINI AND :DATAFI'
      '      GROUP BY E.N_ESPECIAL, M.METGE'
      '      INTO :ESPECIALITAT, :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      '      ESPECIALITAT='#39'Neuropsicologia'#39';'
      
        '      PRESTACIO='#39'PACIENTS'#39'; TIPUS_SESSIO='#39'Amb una anotaci'#243' com a' +
        ' m'#237'nim'#39'; SECTOR_SESSIO = '#39'NENS'#39';'
      
        '      FOR SELECT M.METGE, COUNT(DISTINCT F.NUM_HIST) FROM FILIAC' +
        'IO F'
      '      JOIN HISTORIA H ON F.NUM_HIST = H.C_HISTORIA'
      
        '      JOIN METGES M   ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = ' +
        #39'15'#39
      '      WHERE H.DATA BETWEEN :DATAINI AND :DATAFI'
      '      AND (F.EDAT BETWEEN 1 AND 16) AND (H.ANULAT ='#39'N'#39')'
      '      GROUP BY M.METGE'
      '      INTO :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      
        '      /*PRESTACIO = '#39#39';*/ TIPUS_SESSIO='#39'Amb una anotaci'#243' com a m' +
        #237'nim'#39'; SECTOR_SESSIO = '#39'ADULTS'#39';'
      
        '      FOR SELECT M.METGE, COUNT(DISTINCT F.NUM_HIST) FROM FILIAC' +
        'IO F'
      '      JOIN HISTORIA H ON F.NUM_HIST = H.C_HISTORIA'
      
        '      JOIN METGES M ON H.C_USUARI = M.CODI AND M.C_ESPECIAL = '#39'1' +
        '5'#39
      
        '      WHERE H.DATA BETWEEN :DATAINI AND :DATAFI  AND (H.ANULAT =' +
        #39'N'#39')'
      '      AND F.EDAT NOT BETWEEN 1 AND 16'
      '      GROUP BY M.METGE'
      '      INTO :METGE, :RESULTAT'
      '      DO BEGIN'
      '          SUSPEND;'
      '      END;'
      ''
      'END')
    Dic1 = ActivitatNeuro
    Dic1Name = 'activitatneuro'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 342
    Top = 252
  end
  object AnotaTrucada: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Anotacio'
        NombreDB = 'C_Anotacio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C_Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Interlocutor'
        NombreDB = 'C_Interlocutor'
        Longitud = 2
        Consulta = 'destinatari'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Durada'
        NombreDB = 'Durada'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'en minuts'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Anotacio')
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
          'C_Anotacio')
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
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
      end>
    Consultas = <
      item
        Nombre = 'destinatari'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Interlocutor')
        CopiarOrigen.Strings = (
          'Interlocutor')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'TRUCADA.QUI'#39
      end>
    Nombre = 'Anotacions trucada'
    NombreTabla = 'AnotaTrucada'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Anotacio')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 189
    Top = 300
  end
  object AnotaHC3: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C_Anotacio'
        NombreDB = 'C_Anotacio'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anotacio'
        NombreDB = 'Anotacio'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'C_Estat'
        Longitud = 15
        Consulta = 'EstatPublicaHC3'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID publicaci'#243' HC3'
        NombreDB = 'CODI_DOCUMENT_HCCC'
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
          'C_Anotacio')
        Tipo = tiPrimario
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
          'C_Anotacio')
        Tipo = tiForaneo
        ForaneoDic = Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'EstatPublicaHC3'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat')
        CopiarOrigen.Strings = (
          'Estat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESTATPUBLICAHC3'#39
      end>
    Nombre = 'Anotacions publicades a HC3'
    NombreTabla = 'AnotaHC3'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Anotacio'
      'Anotacio'
      'Estat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 8
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 189
    Top = 412
  end
  object Tract_Codificacio: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero de tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Tract'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'GRD'
        NombreDB = 'GRD'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Nivell Severitat'
        NombreDB = 'NivellSeveritat'
        Longitud = 1
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pes'
        NombreDB = 'Pes'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Risc Mortalitat'
        NombreDB = 'RiscMortalitat'
        Longitud = 1
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Catagoria Major Diagn'#242'stica'
        NombreDB = 'CDM'
        Longitud = 2
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
          'N'#250'mero de tractament')
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
          'N'#250'mero de tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Tract'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'N'#250'mero de tractament')
        CopiarOrigen.Strings = (
          'N'#250'mero de tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end>
    Nombre = 'Tract_Codificacio'
    NombreTabla = 'Tract_Codificacio'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'mero de tractament'
      'GRD'
      'Nivell Severitat'
      'Pes'
      'Risc Mortalitat'
      'Catagoria MaJor Diagn'#242'stica')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 496
    Top = 496
  end
  object LogCodificacio: TDic
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
        Aplica = kcCaracter
        Nombre = 'Taula'
        NombreDB = 'TAULA'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador del tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi ICD'
        NombreDB = 'C_ICD'
        Longitud = 15
        Consulta = 'ICD'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versci'#243' CIM'
        NombreDB = 'VersioCIM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Confian'#231'a WebService'
        NombreDB = 'CONFIANCA'
        Longitud = 10
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Identificador WS'
        NombreDB = 'ID_ICD'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data baixa codi'
        NombreDB = 'DATA_BAIXA'
        Longitud = 11
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
          'Identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'ICD'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versci'#243' CIM'
          'Codi ICD')
        CopiarOrigen.Strings = (
          'Versci'#243' CIM'
          'Codi ICD')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
      end>
    Nombre = 'LogCodificacio'
    NombreTabla = 'LogCodificacio'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Taula'
      'Identificador del tractament'
      'Codi ICD'
      'Versci'#243' CIM'
      'Confian'#231'a WebService'
      'Identificador WS'
      'Data baixa codi')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 512
    Top = 546
  end
  object Semafors: TDic
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
        Nombre = 'NHC'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 3
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'C_Estat'
        Longitud = 2
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Informaci'#243
        NombreDB = 'Info'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'Data_Reg'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari registre'
        NombreDB = 'Usuari_Reg'
        Longitud = 5
        Consulta = 'usr'
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
        Aplica = kcFecha
        Nombre = 'Data anul'#183'laci'#243
        NombreDB = 'Data_anula'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari anul'#183'laci'#243
        NombreDB = 'Usuari_anula'
        Longitud = 5
        Consulta = 'usr_a'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ID_RegInfer'
        NombreDB = 'ID_RegInfer'
        Longitud = 8
        Consulta = 'reginfer'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'ID del registre d'#39'a'#239'llament que ha generat aquest registre'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ID_Origen'
        NombreDB = 'ID_Origen'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'ID del registre d'#39'origen que provoca la inserci'#243' d'#39'aquest regist' +
          're (CAU: escalescap)'
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
          'NHC')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tipusestat'
        NombreDB = 'tipusestat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus'
          'Estat')
        Tipo = tiForaneo
        ForaneoDic = Semafors_Estats
        ForaneoCampos.Strings = (
          'Tipus de sem'#224'for'
          'Estat')
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
          'NHC'
          'Tipus'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usr'
        NombreDB = 'usr'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari registre')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usr_a'
        NombreDB = 'usr_a'
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
      end
      item
        Nombre = 'reginfer'
        NombreDB = 'reginfer'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID_RegInfer')
        Tipo = tiForaneo
        ForaneoDic = wDataInfermeria.RegistresInfer
        ForaneoCampos.Strings = (
          'Identificador de registre')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'origen'
        NombreDB = 'origen'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID_Origen')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'SEMAFOR.TIPUS'#39
      end
      item
        Nombre = 'estat'
        Master = Semafors_Estats
        BuscaOrigen.Strings = (
          'Estat'
          'Tipus')
        CopiarOrigen.Strings = (
          'Estat'
          'Tipus')
        CopiarMaster.Strings = (
          'Estat'
          'Tipus de sem'#224'for')
        BuscaMaster.Strings = (
          'Estat'
          'Tipus de sem'#224'for')
        FiltroOrigen.Strings = (
          'Tipus')
        FiltroMaster.Strings = (
          'Tipus de sem'#224'for')
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
        Nombre = 'usr'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari registre')
        CopiarOrigen.Strings = (
          'Usuari registre')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'usr_a'
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
        Nombre = 'reginfer'
        Master = wDataInfermeria.RegistresInfer
        BuscaOrigen.Strings = (
          'ID_RegInfer')
        CopiarOrigen.Strings = (
          'ID_RegInfer')
        CopiarMaster.Strings = (
          'Identificador de registre')
        BuscaMaster.Strings = (
          'Identificador de registre')
      end>
    Nombre = 'Sem'#224'fors'
    NombreTabla = 'Semafors'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'NHC'
      'Tipus'
      'Estat'
      'Data'
      'Informaci'#243
      'Data registre'
      'Usuari registre'
      'Anul'#183'lat')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 624
  end
  object Semafors_Estats: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Tipus de sem'#224'for'
        NombreDB = 'Tipus'
        Longitud = 3
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'PK'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'C_Estat'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'PK'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' estat'
        NombreDB = 'N_Estat'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'descripci'#243' al hint del sem'#224'for'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 = baixa (no seleccionable al selector)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resum estat'
        NombreDB = 'R_Estat'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'descripci'#243' al grid i al selector'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Bolca anotaci'#243
        NombreDB = 'Bolca_Anota'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 
          'si cal bolcar una anotaci'#243' al curs cl'#237'nic en gravar un registre ' +
          'en aquest estat (S/N o O: opcional)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus anotaci'#243
        NombreDB = 'Tipus_Anota'
        Longitud = 2
        Consulta = 'tipusanota'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'tipus d'#39'anotaci'#243' (QueEs), en cas de bolcar-la'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Actiu'
        NombreDB = 'Actiu'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Informaci'#243
        NombreDB = 'Info'
        Longitud = 3000
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
          'Tipus de sem'#224'for'
          'Estat')
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
          'Tipus de sem'#224'for'
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'actiu'
        NombreDB = 'actiu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Actiu')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Tipus de sem'#224'for')
        CopiarOrigen.Strings = (
          'Tipus de sem'#224'for')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'SEMAFOR.TIPUS'#39
      end
      item
        Nombre = 'tipusanota'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus anotaci'#243)
        CopiarOrigen.Strings = (
          'Tipus anotaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'TIPUSANOTACIO'#39
      end>
    Nombre = 'Sem'#224'fors Estats'
    NombreTabla = 'Semafors_Estats'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus de sem'#224'for'
      'Estat'
      'Descripci'#243' estat'
      'Ordre'
      'Resum estat'
      'Bolca anotaci'#243
      'Tipus anotaci'#243
      'Actiu')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 104
    Top = 624
  end
  object P_Semafors_Tipus: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Tipus'
    ForceNombreDB = False
    Body.Strings = (
      '(TIPUS VARCHAR(3))'
      ' RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  NOMCOMPLET      VARCHAR(80),'
      '  SEXE            CHAR(1),'
      '  EDAT            INTEGER,'
      '  C_ESTAT         INTEGER,'
      '  N_ESTAT         VARCHAR(40),'
      '  ACTIU           CHAR(1),'
      '  DATA            DATE,'
      '  DATA_REG        DATE,'
      '  USUARI_REG      VARCHAR(5),'
      '  ID_REGINFER     INTEGER,'
      '  INFO            VARCHAR(3000),'
      '  DATA_INGRES     DATE,'
      '  DATA_ALTA       DATE,'
      '  C_COORDINADOR   VARCHAR(5),'
      '  C_TRACTAMENT    INTEGER,'
      '  ESVIU           CHAR(1)'
      ')'
      'AS'
      ' DECLARE VARIABLE TROBAT SMALLINT;'
      'BEGIN'
      
        '      /* ESTAT ACTUAL DEL SEM'#192'FOR INDICAT (per a TOTS ELS PACIEN' +
        'TS) */'
      ''
      
        '      FOR SELECT DISTINCT S.C_HISTORIA, F.NOMCOMPLET, F.SEXO, F.' +
        'EDAT, F.ESVIU'
      '          FROM   SEMAFORS S'
      '          JOIN   FILIACIO F ON S.C_HISTORIA = F.NUM_HIST'
      '          WHERE  TIPUS = :TIPUS'
      '          AND    C_ESTAT IS NOT NULL'
      '          AND    ANULAT = "N"'
      '          INTO  :C_HISTORIA, :NOMCOMPLET, :SEXE, :EDAT, :ESVIU'
      '      DO BEGIN'
      '            C_ESTAT = 0;'
      '            N_ESTAT = NULL;'
      '            ACTIU = NULL;'
      '            DATA = NULL;'
      '            INFO = NULL;'
      '            ID_REGINFER = NULL;'
      '            DATA_REG = NULL;'
      '            USUARI_REG = NULL;'
      '            '
      
        '            /* Llistem les dades de l'#39#250'ltim sem'#224'for registrat (e' +
        'stat actual) */'
      
        '            SELECT S.C_ESTAT, E.N_ESTAT, E.ACTIU, S.DATA, S.INFO' +
        ', S.ID_REGINFER, S.DATA_REG, S.USUARI_REG'
      '            FROM   SEMAFORS S'
      
        '            JOIN   SEMAFORS_ESTATS E ON S.C_ESTAT = E.C_ESTAT AN' +
        'D S.TIPUS = E.TIPUS'
      '            WHERE  S.C_HISTORIA = :C_HISTORIA'
      '            AND    S.TIPUS = :TIPUS'
      '            AND    S.ANULAT = "N"'
      '            AND    S.C_ESTAT IS NOT NULL'
      '            ORDER  BY DATA DESC, DATA_REG DESC'
      '            ROWS   1'
      
        '            INTO  :C_ESTAT, :N_ESTAT, :ACTIU, :DATA, :INFO, :ID_' +
        'REGINFER, :DATA_REG, :USUARI_REG;'
      ''
      ''
      
        '            /* Busquem les dades de l'#39'ingr'#233's actiu en el moment ' +
        'del registre (si estava ingressat) */'
      '            C_TRACTAMENT = NULL;'
      '            DATA_INGRES = NULL;'
      '            DATA_ALTA = NULL;'
      '            C_COORDINADOR = NULL;'
      '            TROBAT = 0;'
      '            '
      
        '            FOR SELECT T.C_TRACTAMENT, T.DATA_INGRES, T.DATA_ALT' +
        'A, T.C_COORDINADOR'
      '                FROM   TRACTAMENTS T'
      
        '                JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PREST' +
        'ACIO'
      '                WHERE  T.C_HISTORIA = :C_HISTORIA'
      
        '                AND    P.TIPUS = 1  /* deia C_prestacio = '#39'1004'#39 +
        ' */'
      '                AND    T.DATA_INGRES <= :DATA'
      
        '                AND   (T.DATA_ALTA +1 > :DATA OR T.DATA_ALTA IS ' +
        'NULL)'
      
        '                AND   (T.C_ESTATFAC <> 55) /* excloem activitat ' +
        'anul'#183'lada */'
      '                ORDER  BY T.DATA_INGRES'
      
        '                INTO  :C_TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :' +
        'C_COORDINADOR'
      '            DO BEGIN'
      '                TROBAT = TROBAT + 1;'
      '                '
      
        '                /* Si trobem m'#233's d'#39'un ingr'#233's actiu, retornem l'#39#250 +
        'ltim per'#242' avisem SI */'
      
        '                IF (TROBAT = 2) THEN INSERT INTO AVISOS_CORREU (' +
        'DATA_GENERAT, ID_AVIS, ASSUMPTE, COS)'
      '                                     VALUES ("NOW",'
      '                                             28,'
      
        '                                             "Av'#237's d'#39#39'INGR'#201'S/CMA' +
        ' DUPLICAT",'
      
        '                                             "El NHC " || :C_HIS' +
        'TORIA || " t'#233' 2 ingressos o CMA simultanis.");'
      '            END;'
      '            '
      
        '            /* Nom'#233's retornem el registre si no '#233's "no informat"' +
        ' */  /* EM RETRACTO, el retornem sempre */'
      '            /* IF (C_ESTAT <> 0) THEN */'
      ''
      '            SUSPEND;'
      '      END'
      'END'
      ''
      '')
    Dic1 = Semafors
    Dic1Name = 'Sem'#224'fors'
    Abierta = False
    Borrame = False
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
    Top = 624
  end
  object P_Semafors_NHC: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NHC'
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
      '  INFO            VARCHAR(3000)'
      ') AS'
      ''
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
      
        '            SELECT S.C_ESTAT, E.N_ESTAT, S.DATA, S.INFO, S.ID_RE' +
        'GINFER, S.DATA_REG, S.USUARI_REG'
      '            FROM   SEMAFORS S'
      
        '            JOIN   SEMAFORS_ESTATS E ON S.C_ESTAT = E.C_ESTAT AN' +
        'D S.TIPUS = E.TIPUS'
      '            WHERE  S.C_HISTORIA = :C_HISTORIA'
      '            AND    S.TIPUS = :TIPUS'
      '            AND    S.ANULAT = "N"'
      '            AND    S.C_ESTAT IS NOT NULL'
      '            ORDER  BY DATA DESC, DATA_REG DESC'
      '            ROWS   1'
      
        '            INTO  :C_ESTAT, :N_ESTAT, :DATA, :INFO, :ID_REGINFER' +
        ', :DATA_REG, :USUARI_REG;'
      ''
      '            SUSPEND;'
      '      END'
      'END'
      ''
      '')
    Dic1 = Semafors
    Dic1Name = 'Sem'#224'fors'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 292
    Top = 624
  end
  object REC_Edats: TDic
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
        AutoContador.Generator = 'G_RECEDATS'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'Descripcio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Edat des de'
        NombreDB = 'Edat_desde'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Edat fins'
        NombreDB = 'Edat_fins'
        Longitud = 2
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
        Nombre = 'desde'
        NombreDB = 'desde'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Edat des de')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fins'
        NombreDB = 'fins'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Edat fins')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'REC Edats'
    NombreTabla = 'REC_Edats'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Descripci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 680
  end
  object P_REC_Parcials: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Parcials'
    ForceNombreDB = False
    Body.Strings = (
      '(C_HISTORIA INTEGER, EDAT INTEGER, HORA DATE)'
      
        'RETURNS (C_ITEM INTEGER, R_ITEM VARCHAR(15), SCORE INTEGER, VALO' +
        'R VARCHAR(15), DATA DATE)'
      'AS'
      '  DECLARE VARIABLE ID_EDAT  INTEGER;'
      '  DECLARE VARIABLE ID_LESIO SMALLINT;'
      '  DECLARE VARIABLE STR      INTEGER;'
      '  DECLARE VARIABLE OXIGEN   VARCHAR(1);'
      'BEGIN'
      ''
      
        '      /* per cada '#237'tem implicat en el c'#224'lcul REC del pacient (en' +
        ' funci'#243' de l'#39'edat) */'
      
        '      FOR SELECT DISTINCT I.C_ITEM, I.R_ITEM, E.ID, F_StringLeng' +
        'th(S.V_STRING)'
      '          FROM INFERITEMS I'
      '          JOIN REC_SCORES S ON I.C_ITEM  = S.ID_GRAFICA'
      '          JOIN REC_EDATS  E ON S.ID_EDAT = E.ID'
      '          WHERE :EDAT BETWEEN E.EDAT_DESDE AND E.EDAT_FINS'
      '          INTO :C_ITEM, :R_ITEM, :ID_EDAT, :STR'
      '      DO BEGIN'
      ''
      '            VALOR = NULL;'
      '            DATA  = NULL;'
      '            SCORE = NULL;'
      '            ID_LESIO = NULL;'
      '            OXIGEN = NULL;'
      '            ID_LESIO = NULL;'
      '            '
      
        '            /* L'#39'escala de la Pressi'#243' arterial sist'#242'lica dep'#232'n d' +
        'e la lesi'#243' del pacient */'
      '            IF (C_ITEM = 4)'
      '            THEN'
      '                  SELECT U.LESIO_REC'
      '                  FROM   FILIACIO F'
      
        '                  JOIN   UNITATM U ON F.C_UNITATMEDICA = U.C_UNI' +
        'TATM'
      '                  WHERE  F.NUM_HIST = :C_HISTORIA'
      '                  INTO  :ID_LESIO;'
      '            '
      '            '
      '            /* Durant el pilot determinen que ja no dep'#232'n d'#39'aix'#242
      
        '            /* L'#39'escala de l'#39'SPO2 dep'#232'n de la lesi'#243' del pacient ' +
        'o de si porta oxigen'
      '            IF (C_ITEM = 7) THEN'
      '            BEGIN'
      '                  SELECT U.LESIO_REC'
      '                  FROM   FILIACIO F'
      
        '                  JOIN   UNITATM U ON F.C_UNITATMEDICA = U.C_UNI' +
        'TATM'
      '                  WHERE  F.NUM_HIST = :C_HISTORIA'
      '                  INTO  :ID_LESIO;'
      '                  '
      
        '                  /* Si no '#233's tetrapl'#232'gic, mirem si porta oxigen' +
        ', ja que en aquest cas SPO2 es comportar'#224' igual'
      '                  IF (ID_LESIO <> 1) THEN'
      '                  BEGIN'
      '                        /* Mirem si porta oxigen'
      '                        SELECT I.VALOR'
      '                        FROM   INFERDADES I'
      
        '                        JOIN   TRACTAMENTS T ON I.C_TRACTAMENT =' +
        ' T.C_TRACTAMENT'
      '                        WHERE  T.C_HISTORIA = :C_HISTORIA'
      '                        AND    I.C_ITEM = 65'
      
        '                        AND    I.DATA_VALOR BETWEEN :HORA-1 AND ' +
        ':HORA'
      '                        AND    I.ANULAT = "N"'
      '                        ORDER  BY DATA_VALOR DESC'
      '                        ROWS   1'
      '                        INTO  :OXIGEN;'
      '                  '
      '                        IF (OXIGEN = "S") THEN ID_LESIO = 1;'
      '                  END;'
      '            END;'
      '            */'
      '            '
      
        '            /* Busquem el darrer valor introdu'#239't a la gr'#224'fica d'#39 +
        'infermeria les 24 '#250'ltimes hores */'
      
        '            SELECT F_ReplaceText('#39','#39', '#39'.'#39', VALOR), I.DATA_VALOR ' +
        '      /* canviem '#39','#39' per '#39'.'#39' decimal perqu'#232' a Interbase va amb '#39 +
        '.'#39' */'
      '            FROM   INFERDADES I'
      
        '            JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT'
      '            WHERE  T.C_HISTORIA = :C_HISTORIA'
      '            AND    I.C_ITEM = :C_ITEM'
      '            AND    I.DATA_VALOR BETWEEN :HORA-1 AND :HORA'
      '            AND    I.ANULAT = "N"'
      '            ORDER  BY DATA_VALOR DESC'
      '            ROWS   1'
      '            INTO  :VALOR, :DATA;'
      '            '
      
        '            /* Si no han introdu'#239't cap valor en les darreres 24 ' +
        'hores, ho indiquem */'
      '            IF (DATA IS NULL) THEN'
      '            BEGIN'
      
        '                  /* Per'#242' per a '#237'tems string, interpretem que el' +
        ' valor '#233's ok i retornem score 0 i valor "N"'
      
        '                     ja que a la gr'#224'fica no es pot entrar valor ' +
        '"N" si no ve d'#39'un valor previ "S" */'
      '                  IF (STR = 0) THEN SCORE = -1;'
      '                               ELSE BEGIN'
      '                                    SCORE =  0;'
      '                                    VALOR = "N";'
      '                               END;'
      '            END;'
      ''
      
        '            /* '#205'tems num'#232'rics: busquem l'#39'interval on pertany el ' +
        'valor */'
      '            ELSE IF (STR = 0) THEN  SELECT SCORE'
      '                                    FROM   REC_SCORES'
      '                                    WHERE  ID_GRAFICA = :C_ITEM'
      '                                    AND    ID_EDAT = :ID_EDAT'
      
        '                                    AND   (ID_LESIO = :ID_LESIO ' +
        'OR ID_LESIO IS NULL)'
      
        '                                    AND  ((:VALOR BETWEEN V_MIN ' +
        'AND V_MAX)'
      
        '                                      OR  (:VALOR <= V_MAX AND V' +
        '_MIN IS NULL)'
      
        '                                      OR  (:VALOR >= V_MIN AND V' +
        '_MAX IS NULL))'
      '                                    INTO  :SCORE;'
      '                                          '
      '            /* '#205'tems string: busquem valor coincident */'
      '                              ELSE  SELECT SCORE'
      '                                    FROM   REC_SCORES'
      '                                    WHERE  ID_GRAFICA = :C_ITEM'
      '                                    AND    ID_EDAT = :ID_EDAT'
      '                                    AND    V_STRING = :VALOR'
      '                                    INTO  :SCORE;'
      ''
      '            SUSPEND;'
      '      END;'
      'END')
    Dic1 = REC_Scores
    Dic1Name = 'REC_Scores'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 256
    Top = 680
  end
  object P_REC_Total: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Total'
    ForceNombreDB = False
    Body.Strings = (
      '(E_HISTORIA INTEGER, HORA DATE, EXECUTA CHAR(1))'
      
        'RETURNS (C_HISTORIA INTEGER, EDAT INTEGER, REC INTEGER, DATA DAT' +
        'E, COMENTARI VARCHAR(3000), NOU_ESTAT INTEGER, NOVETATS CHAR(1))'
      'AS'
      '      DECLARE VARIABLE LET       SMALLINT;'
      '      DECLARE VARIABLE C_ITEM    INTEGER;'
      '      DECLARE VARIABLE R_ITEM    VARCHAR(15);'
      '      DECLARE VARIABLE SCORE_I   INTEGER;'
      '      DECLARE VARIABLE DATA_I    DATE;'
      '      DECLARE VARIABLE VALOR_I   VARCHAR(15);'
      ''
      '      DECLARE VARIABLE REC_I     INTEGER;'
      '      DECLARE VARIABLE SCORE     INTEGER;'
      '      '
      '      DECLARE VARIABLE ESTAT_REC INTEGER;'
      '      DECLARE VARIABLE DATA_REC  DATE;'
      'BEGIN'
      ''
      '      IF (HORA IS NULL) THEN HORA = "NOW";'
      ''
      
        '      /* Per cada pacient ingressat (o pel pacient introdu'#239't per' +
        ' par'#224'metre) */'
      '      '
      '      FOR SELECT T.C_HISTORIA, F.EDAT'
      '          FROM   TRACTAMENTS T'
      '          JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          WHERE (T.C_HISTORIA = :E_HISTORIA OR :E_HISTORIA IS NU' +
        'LL)'
      
        '          AND   (T.C_PRESTACIO = '#39'1004'#39' or T.C_PRESTACIO = '#39'9999' +
        #39')'
      '          AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '          INTO  :C_HISTORIA, :EDAT'
      '      DO BEGIN'
      ''
      
        '            SELECT C_ESTAT FROM P_SEMAFORS_ESTAT(:C_HISTORIA, "L' +
        'ET") INTO :LET;'
      '            IF (LET IS NULL) THEN LET = 0;'
      ''
      
        '            /* si el pacient no vol mesures de terap'#232'utiques, no' +
        ' cal calcular el REC */'
      '            IF (LET <> 3) THEN'
      '            BEGIN'
      ''
      ''
      '                  SCORE_I = 0;'
      '                  REC_I = 0;'
      '                  SCORE = 0;'
      '                  REC = 0;'
      '                  COMENTARI = '#39#39';'
      '                  NOVETATS = '#39#39';'
      '            '
      '                  DATA = NULL;'
      '            '
      
        '                  /* Calculem l'#39'score total a partir de l'#39'score ' +
        'de cada '#237'tem REC i composem la informaci'#243' que el conforma */'
      '                  FOR SELECT C_ITEM, R_ITEM, SCORE, DATA, VALOR'
      
        '                      FROM   P_REC_SCORES_PARCIALS(:C_HISTORIA, ' +
        ':EDAT, :HORA)'
      '                      ORDER BY SCORE DESC, C_ITEM'
      
        '                      INTO  :C_ITEM, :R_ITEM, :SCORE_I, :DATA_I,' +
        ' :VALOR_I'
      '                  DO BEGIN'
      ''
      
        '                        /* Valors faltants retornen score -1 per' +
        #242' no l'#39'hem de sumar a l'#39'score total */'
      
        '                        IF (VALOR_I IS NULL) THEN COMENTARI = F_' +
        'LRTRIM(COMENTARI || F_NLine() || R_ITEM || '#39': no valorat'#39');'
      '                  '
      '                        ELSE  BEGIN'
      
        '                             SCORE = SCORE + SCORE_I;           ' +
        '                                                /* Acumulem valo' +
        'rs a l'#39'score total */'
      
        '                             IF (SCORE_I = 3) THEN REC_I = 1;   ' +
        '                                                /* ens guardem s' +
        'i un score parcial '#233's 3 */'
      ''
      
        '                             COMENTARI = F_LRTRIM(COMENTARI || F' +
        '_NLine() ||'
      
        '                                                  R_ITEM || '#39': s' +
        'core '#39' || SCORE_I || '#39'  ('#39' || VALOR_I || '#39')'#39');  /* afegim info p' +
        'er al sem'#224'for */'
      ''
      
        '                             IF ((DATA IS NULL) OR (DATA_I > DAT' +
        'A)) THEN DATA = DATA_I;                         /* reportarem la' +
        ' data de l'#39#237'tem m'#233's recent */'
      '                        END;'
      '                  END;'
      '            '
      '                  /* Si no hi ha cap '#237'tem valorat, no fem res */'
      '                  IF (DATA IS NOT NULL) THEN'
      '                  BEGIN'
      '                        /* GENER 2023: CANVI */'
      '                        /* score <= 4       => REC 1'
      
        '                           score_i = 3      => REC 2      (si al' +
        'gun score parcial '#233's 3 => REC 2)'
      '                           score in [5,6]   => REC 3'
      '                           score >= 7       => REC 4'
      
        '                        IF      (SCORE <= 4) THEN REC = 1 + REC_' +
        'I;'
      '                        ELSE IF (SCORE <= 6) THEN REC = 3;'
      '                                             ELSE REC = 4;'
      '                        */'
      ''
      '                        /* no informat      => REC 0'
      '                           score = 0        => REC 1'
      '                           score <= 4       => REC 2'
      
        '                           score_i = 3      => REC 3      (si al' +
        'gun score parcial '#233's 3 => REC 3)'
      '                           score in [5,6]   => REC 4'
      '                           score >= 7       => REC 5 */'
      '                        IF      (SCORE =  0) THEN REC = 1;'
      
        '                        ELSE IF (SCORE <= 4) THEN REC = 2 + REC_' +
        'I;'
      '                        ELSE IF (SCORE <= 6) THEN REC = 4;'
      '                                             ELSE REC = 5;'
      '                                             '
      '                        ESTAT_REC = NULL;'
      '                        DATA_REC = NULL;'
      '                        NOU_ESTAT = NULL;'
      ''
      
        '                        /* Busquem l'#39'estat actual del sem'#224'for (h' +
        'aur'#237'em de buscar l'#39'anterior a "HORA", per'#242' sempre passarem HORA ' +
        '= NOW excepte per fer proves) */'
      
        '                        SELECT C_ESTAT, DATA FROM P_SEMAFORS_EST' +
        'AT(:C_HISTORIA, '#39'REC'#39') INTO :ESTAT_REC, :DATA_REC;'
      ''
      '                        /* Si ha canviat, el guardem */'
      
        '                        IF ((ESTAT_REC IS NULL) OR (ESTAT_REC <>' +
        ' :REC)) THEN NOU_ESTAT = REC;'
      ''
      
        '                        COMENTARI = '#39'SCORE TOTAL: '#39' || SCORE || ' +
        'F_NLine() || COMENTARI;'
      '                        '
      
        '                        /* Si l'#39'estat ha canviat, actualitzarem ' +
        'el sem'#224'for. */'
      
        '                        /* Si no ha canviat per'#242' hi ha info nova' +
        ', tamb'#233' la bolcarem al sem'#224'for. */'
      
        '                        IF ((NOU_ESTAT IS NOT NULL) OR (DATA_REC' +
        ' < DATA)) THEN'
      '                        BEGIN'
      '                              NOVETATS = "S";'
      
        '                              IF (EXECUTA = '#39'S'#39') THEN INSERT INT' +
        'O SEMAFORS (ID, C_HISTORIA, TIPUS, C_ESTAT, DATA, INFO, DATA_REG' +
        ')'
      
        '                                                      VALUES (GE' +
        'N_ID(G_SEMAFORS, 1), :C_HISTORIA, "REC", :NOU_ESTAT, :DATA, :COM' +
        'ENTARI, "NOW");'
      '                        END;'
      '                        ELSE NOVETATS = "N";'
      '                  '
      '                        SUSPEND;'
      '                  '
      '                  END;'
      '            END;'
      '      END;'
      'END')
    Dic1 = REC_Scores
    Dic1Name = 'REC_Scores'
    Abierta = False
    Borrame = False
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
    Top = 680
  end
  object REC_Scores: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'ID'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_RECSCORES'
        Comentario = 'PK'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ID edat'
        NombreDB = 'ID_edat'
        Longitud = 8
        Consulta = 'fk_edat'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK REC_Edats'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ID lesi'#243
        NombreDB = 'ID_lesio'
        Longitud = 2
        Consulta = 'fk_lesio'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ID gr'#224'fica'
        NombreDB = 'ID_grafica'
        Longitud = 8
        Consulta = 'fk_grafica'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Valor min'
        NombreDB = 'V_Min'
        Longitud = 8
        MaskDisplay = '##,#;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Valor max'
        NombreDB = 'V_Max'
        Longitud = 8
        MaskDisplay = '##,#;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Valor string'
        NombreDB = 'V_String'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Score'
        NombreDB = 'Score'
        Longitud = 1
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fk_edat'
        NombreDB = 'fk_edat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID edat')
        Tipo = tiForaneo
        ForaneoDic = REC_Edats
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fk_grafica'
        NombreDB = 'fk_grafica'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Gr'#224'fica')
        Tipo = tiForaneo
        ForaneoDic = wDataInfermeria.InferItems
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fk_lesio'
        NombreDB = 'fk_lesio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID lesi'#243)
        Tipo = tiForaneo
        ForaneoDic = REC_Lesions
        ForaneoCampos.Strings = (
          'Codi lesi'#243' REC')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'fk_edat'
        Master = REC_Edats
        BuscaOrigen.Strings = (
          'ID edat')
        CopiarOrigen.Strings = (
          'ID edat')
        CopiarMaster.Strings = (
          'ID')
        BuscaMaster.Strings = (
          'ID')
      end
      item
        Nombre = 'fk_grafica'
        Master = wDataInfermeria.InferItems
        BuscaOrigen.Strings = (
          'ID Gr'#224'fica')
        CopiarOrigen.Strings = (
          'ID Gr'#224'fica')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'fk_lesio'
        Master = REC_Lesions
        BuscaOrigen.Strings = (
          'ID lesi'#243)
        CopiarOrigen.Strings = (
          'ID lesi'#243)
        CopiarMaster.Strings = (
          'Codi lesi'#243' REC')
        BuscaMaster.Strings = (
          'Codi lesi'#243' REC')
      end>
    Nombre = 'REC Scores'
    NombreTabla = 'REC_Scores'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'ID edat'
      'ID Gr'#224'fica'
      'Valor min'
      'Valor max'
      'Valor string'
      'Score'
      'ID lesi'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 178
    Top = 680
  end
  object P_Semafors_Estat: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Estat'
    ForceNombreDB = False
    Body.Strings = (
      '(C_HISTORIA INTEGER, TIPUS VARCHAR(3))'
      ' RETURNS ('
      '  C_ESTAT         INTEGER,'
      '  N_ESTAT         VARCHAR(40),'
      '  ACTIU           VARCHAR(1),'
      '  DATA            DATE,'
      '  DATA_REG        DATE,'
      '  USUARI_REG      VARCHAR(5),'
      '  ID_REGINFER     INTEGER,'
      '  INFO            VARCHAR(3000)'
      ') AS'
      ''
      'BEGIN'
      '      /* ESTAT ACTUAL DEL SEM'#192'FOR I PACIENT INDICATS */'
      '       '
      
        '      /* Pel NHC introdu'#239't, llistem les dades de l'#39#250'ltim sem'#224'for' +
        ' registrat del tipus introdu'#239't, amb estat informat */'
      '            '
      
        '      SELECT S.C_ESTAT, E.N_ESTAT, E.ACTIU, S.DATA, S.INFO, S.ID' +
        '_REGINFER, S.DATA_REG, S.USUARI_REG'
      '      FROM   SEMAFORS S'
      
        '      JOIN   SEMAFORS_ESTATS E ON S.C_ESTAT = E.C_ESTAT AND S.TI' +
        'PUS = E.TIPUS'
      '      WHERE  S.C_HISTORIA = :C_HISTORIA'
      '      AND    S.TIPUS = :TIPUS'
      '      AND    S.ANULAT = "N"'
      '      AND    S.C_ESTAT IS NOT NULL'
      '      ORDER  BY DATA DESC, DATA_REG DESC'
      '      ROWS   1'
      
        '      INTO  :C_ESTAT, :N_ESTAT, :ACTIU, :DATA, :INFO, :ID_REGINF' +
        'ER, :DATA_REG, :USUARI_REG;'
      '      '
      '      SUSPEND;'
      'END'
      ''
      '')
    Dic1 = Semafors
    Dic1Name = 'Sem'#224'fors'
    Abierta = False
    Borrame = False
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
    Top = 624
  end
  object REC_Lesions: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi lesi'#243' REC'
        NombreDB = 'C_Lesio_REC'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        AutoContador.Tipo = tcGenerator
      end
      item
        Aplica = kcCaracter
        Nombre = 'Lesi'#243' REC'
        NombreDB = 'N_Lesio_REC'
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
          'Codi lesi'#243' REC')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'REC Lesions'
    NombreTabla = 'REC_Lesions'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi lesi'#243' REC'
      'Lesi'#243' REC')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 104
    Top = 680
  end
  object ResetREC: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ResetREC'
    ForceNombreDB = False
    Body.Strings = (
      '(E_DATA DATE)'
      'returns (compta integer)'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA INTEGER;'
      '      DECLARE VARIABLE DATA_ALTA  DATE;'
      '      DECLARE VARIABLE C_ESTAT    INTEGER;'
      'BEGIN'
      '      compta = 0;'
      '      /********* SEM'#192'FOR REC *********/'
      ''
      '      /* OPTIMITZACI'#211' M'#201'S AVALL'
      '      '
      '      /* Passem a "no informat" els REC de pacients que s'#243'n alta'
      '      FOR SELECT R.C_HISTORIA, T.DATA_ALTA'
      '          FROM   P_SEMAFORS_TIPUS('#39'REC'#39') R'
      '          JOIN   TRACTAMENTS T ON R.C_HISTORIA = T.C_HISTORIA'
      
        '          JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO A' +
        'ND P.TIPUS = 1'
      
        '          WHERE  R.C_ESTAT <> 0           /* si ja estaven a "no' +
        ' informat", no cal tocar-los'
      
        '          AND    T.DATA_ALTA = :E_DATA    /* No podem mirar un r' +
        'ang (7 dies enrere) perqu'#232' els reingressos en pocs dies generari' +
        'en registres en estat "0" duplicats.'
      
        '          AND    T.C_DESTINACIO <> 6      /* Excloem els pacient' +
        's que s'#243'n alta per defunci'#243
      
        '          INTO  :C_HISTORIA, :DATA_ALTA   /* Si falla la procedu' +
        're REVISA ALTES, s'#39'ha de passar aquesta amb el par'#224'metre DATA qu' +
        'e calgui (per cada dia afectat)'
      '      DO BEGIN'
      
        '            INSERT INTO SEMAFORS (ID, C_HISTORIA, TIPUS, C_ESTAT' +
        ', DATA, INFO, DATA_REG)'
      
        '            VALUES (GEN_ID(G_SEMAFORS, 1), :C_HISTORIA, "REC", 0' +
        ', :DATA_ALTA + 1, "El pacient '#233's alta", "NOW");'
      '      END;'
      '      */'
      ''
      
        '      /* Passem a "no informat" els REC de pacients que s'#243'n alta' +
        ' */'
      '      FOR SELECT T.C_HISTORIA, T.DATA_ALTA'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO A' +
        'ND P.TIPUS = 1'
      
        '          WHERE  T.DATA_ALTA = :E_DATA    /* No podem mirar un r' +
        'ang (7 dies enrere) perqu'#232' els reingressos en pocs dies generari' +
        'en registres en estat "0" duplicats. */'
      
        '          AND    T.C_DESTINACIO <> 6      /* Excloem els pacient' +
        's que s'#243'n alta per defunci'#243' */'
      
        '          INTO  :C_HISTORIA, :DATA_ALTA   /* Si falla la procedu' +
        're REVISA ALTES, s'#39'ha de passar aquesta amb el par'#224'metre DATA qu' +
        'e calgui (per cada dia afectat) */'
      '      DO BEGIN'
      '      '
      '            /* Busquem el REC actiu */'
      '            SELECT C_ESTAT'
      '            FROM   SEMAFORS'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    TIPUS = '#39'REC'#39
      '            AND    C_ESTAT IS NOT NULL'
      '            ORDER  BY DATA DESC, DATA_REG DESC'
      '            ROWS 1'
      '            INTO  :C_ESTAT;'
      '            '
      
        '            IF (C_ESTAT <> 0) THEN    /* si ja estava a "no info' +
        'rmat", no cal tocar-lo */'
      '            BEGIN'
      
        '                  INSERT INTO SEMAFORS (ID, C_HISTORIA, TIPUS, C' +
        '_ESTAT, DATA, INFO, DATA_REG)'
      
        '                  VALUES (GEN_ID(G_SEMAFORS, 1), :C_HISTORIA, "R' +
        'EC", 0, :DATA_ALTA + 1, "El pacient '#233's alta", "NOW");'
      '                  compta=compta+1;'
      '            END;'
      '      END;'
      '      suspend;'
      'END')
    Dic1 = Semafors
    Dic1Name = 'Semafors'
    Abierta = False
    Borrame = False
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
    Top = 680
  end
  object ResetLET: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ResetLET'
    ForceNombreDB = False
    Body.Strings = (
      '(E_DATA DATE)'
      'returns (compta integer)'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA INTEGER;'
      '      DECLARE VARIABLE DATA_ALTA  DATE;'
      '      DECLARE VARIABLE C_ESTAT    INTEGER;'
      'BEGIN'
      '      /********* SEM'#192'FOR LET *********/'
      ''
      '      /* OPTIMITZACI'#211' M'#201'S AVALL'
      ''
      
        '      /* Passem a "no informat" els LET de pacients LET que s'#243'n ' +
        'alta'
      '      FOR SELECT R.C_HISTORIA, T.DATA_ALTA'
      
        '          FROM   P_SEMAFORS_TIPUS('#39'LET'#39') R    /* aquesta procedu' +
        're retorna nom'#233's LET informats'
      
        '          JOIN   TRACTAMENTS T ON R.C_HISTORIA = T.C_HISTORIA AN' +
        'D T.C_PRESTACIO = '#39'1004'#39
      
        '          WHERE  R.C_ESTAT IN (2,3)       /* Pacients LET o No R' +
        'CP'
      
        '          AND    T.DATA_ALTA = :E_DATA    /* No podem mirar un r' +
        'ang (7 dies enrere) perqu'#232' els reingressos en pocs dies generari' +
        'en registres en estat "0" duplicats.'
      
        '          AND    T.C_DESTINACIO <> 6      /* Excloem els pacient' +
        's que s'#243'n alta per defunci'#243
      
        '          INTO  :C_HISTORIA, :DATA_ALTA   /* Si falla la procedu' +
        're REVISA ALTES, s'#39'ha de passar aquesta amb el par'#224'metre DATA qu' +
        'e calgui (per cada dia afectat)'
      '      DO BEGIN'
      
        '            INSERT INTO SEMAFORS (ID, C_HISTORIA, TIPUS, C_ESTAT' +
        ', DATA, INFO, DATA_REG)'
      
        '            VALUES (GEN_ID(G_SEMAFORS, 1), :C_HISTORIA, "LET", 0' +
        ', :DATA_ALTA + 1, "El pacient '#233's alta", "NOW");'
      '      END;'
      '      */'
      ''
      '      compta = 0;'
      
        '      /* Passem a "no informat" els LET de pacients LET que s'#243'n ' +
        'alta */'
      '      FOR SELECT C_HISTORIA, DATA_ALTA'
      '          FROM   TRACTAMENTS'
      '          WHERE  C_PRESTACIO = '#39'1004'#39
      
        '          AND    DATA_ALTA = :E_DATA    /* No podem mirar un ran' +
        'g (7 dies enrere) perqu'#232' els reingressos en pocs dies generarien' +
        ' registres en estat "0" duplicats. */'
      
        '          AND    C_DESTINACIO <> 6      /* Excloem els pacients ' +
        'que s'#243'n alta per defunci'#243' */'
      
        '          INTO  :C_HISTORIA, :DATA_ALTA   /* Si falla la procedu' +
        're REVISA ALTES, s'#39'ha de passar aquesta amb el par'#224'metre DATA qu' +
        'e calgui (per cada dia afectat) */'
      '      DO BEGIN'
      '      '
      '            /* Busquem el LET actiu */'
      '            SELECT C_ESTAT'
      '            FROM   SEMAFORS'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    TIPUS = '#39'LET'#39
      '            AND    C_ESTAT IS NOT NULL'
      '            ORDER  BY DATA DESC, DATA_REG DESC'
      '            ROWS 1'
      '            INTO  :C_ESTAT;'
      '            '
      
        '            IF (C_ESTAT IN (2,3)) THEN  /* Nom'#233's passema no info' +
        'rmat si era LET */'
      '            BEGIN'
      
        '                  INSERT INTO SEMAFORS (ID, C_HISTORIA, TIPUS, C' +
        '_ESTAT, DATA, INFO, DATA_REG)'
      
        '                  VALUES (GEN_ID(G_SEMAFORS, 1), :C_HISTORIA, "L' +
        'ET", 0, :DATA_ALTA + 1, "El pacient '#233's alta", "NOW");'
      '                  compta=compta+1;'
      ''
      '            END'
      ''
      '      END;'
      '      suspend;'
      '          '
      '          '
      ''
      'END')
    Dic1 = Semafors
    Dic1Name = 'Semafors'
    Abierta = False
    Borrame = False
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
    Top = 736
  end
  object Critics_OBSOLET: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador RCPCOMENT'
        NombreDB = 'IDCOMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari final'
        NombreDB = 'C_USER_FIN'
        Longitud = 5
        Consulta = 'User'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data final episodi'
        NombreDB = 'DATA_FINAL'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Llit'
        NombreDB = 'C_LLIT'
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
          'Identificador')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'coment'
        NombreDB = 'coment'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Identificador RCPCOMENT')
        Tipo = tiForaneo
        ForaneoDic = RCP_comentaris
        ForaneoCampos.Strings = (
          'Id de registre')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'User'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari final')
        CopiarOrigen.Strings = (
          'Usuari final')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'CRITICS'
    NombreTabla = 'CRITICS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador'
      'Identificador RCPCOMENT'
      'Usuari final'
      'Data final episodi')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 128
    Top = 736
  end
  object DadesCovid: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DadesCovid'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_INICI DATE, DATA_FI DATE)'
      'RETURNS'
      '('
      '      C_HISTORIA        INTEGER,'
      '      NOMCOMPLET        VARCHAR(80),'
      '      DATA_NAIX         DATE,'
      '      GENERE            CHAR(1),'
      '      CIP               VARCHAR(20),'
      '      TELEFON           VARCHAR(10),'
      '      ES_VIU            CHAR(1),'
      ''
      '      C_TRACTAMENT      INTEGER,'
      '      DATA_INGRES       DATE,'
      '      DATA_PREALTA      DATE,'
      '      DATA_ALTA         DATE,'
      '      C_COORDINADOR     VARCHAR(5),'
      '      C_LLIT            INTEGER,'
      '      C_PLANTA          VARCHAR(5),'
      '      '
      '      DATA_SOSPITA      DATE,'
      '      INFO_SOSPITA      VARCHAR(3000),'
      '      DATA_CONFIRMAT    DATE,'
      '      INFO_CONFIRMAT    VARCHAR(3000),'
      '      DATA_FI_COVID     DATE,'
      '      INFO_FI_COVID     VARCHAR(3000),'
      '      NUM_REG           INTEGER'
      ')'
      'AS'
      '      DECLARE VARIABLE DATA_A       DATE;'
      '      DECLARE VARIABLE ESTAT_COV    INTEGER;'
      '      DECLARE VARIABLE DATA_COV     DATE;'
      '      DECLARE VARIABLE INFO_COV     VARCHAR(3000);'
      'BEGIN'
      ''
      ''
      
        '      FOR SELECT DISTINCT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_I' +
        'NGRES, T.DATA_PREALTA, T.DATA_ALTA, T.C_COORDINADOR, T.C_PLANTA,' +
        ' T.C_LLIT, F.NOMCOMPLET, F.FECHA_NAC, F.SEXO, F.TSI, F.TELEFONO,' +
        ' F.ESVIU'
      '          FROM  SEMAFORS S'
      
        '          JOIN TRACTAMENTS T ON S.C_HISTORIA = T.C_HISTORIA AND ' +
        'T.C_PRESTACIO = "1004" AND S.DATA >= T.DATA_INGRES AND (S.DATA <' +
        '= T.DATA_ALTA OR T.DATA_ALTA IS NULL)'
      '          JOIN FILIACIO F    ON S.C_HISTORIA = F.NUM_HIST'
      '          WHERE S.TIPUS = '#39'CoV'#39
      '          AND   S.C_ESTAT IN (2,3)'
      '          AND   S.ANULAT = '#39'N'#39
      '          AND   T.DATA_INGRES <= :DATA_FI'
      
        '          AND  (T.DATA_ALTA   >= :DATA_INICI OR T.DATA_ALTA IS N' +
        'ULL)'
      
        '          INTO :C_HISTORIA, :C_TRACTAMENT, :DATA_INGRES, :DATA_P' +
        'REALTA, :DATA_ALTA, :C_COORDINADOR, :C_PLANTA, :C_LLIT, :NOMCOMP' +
        'LET, :DATA_NAIX, :GENERE, :CIP, :TELEFON, :ES_VIU'
      '      DO BEGIN'
      '      '
      '            DATA_A = NULL;'
      '            '
      '            ESTAT_COV = NULL;'
      '            DATA_COV  = NULL;'
      '            INFO_COV  = NULL;'
      ''
      '            DATA_SOSPITA   = NULL;'
      '            INFO_SOSPITA   = NULL;'
      '            DATA_CONFIRMAT = NULL;'
      '            INFO_CONFIRMAT = NULL;'
      '            DATA_FI_COVID  = NULL;'
      '            INFO_FI_COVID  = NULL;'
      '            '
      '            '
      '            IF (DATA_ALTA IS NULL) THEN DATA_A = "TODAY";'
      '                                   ELSE DATA_A = DATA_ALTA;'
      ''
      '            NUM_REG = 0;'
      '            '
      '            FOR SELECT C_ESTAT, DATA, INFO'
      '                FROM   SEMAFORS'
      '                WHERE  C_HISTORIA = :C_HISTORIA'
      '                AND    TIPUS = '#39'CoV'#39
      '                AND    ANULAT = '#39'N'#39
      '                AND    C_ESTAT IN (2,3,4)'
      '                AND    DATA BETWEEN :DATA_INGRES AND :DATA_A'
      '                ORDER  BY DATA'
      '                INTO  :ESTAT_COV, :DATA_COV, :INFO_COV'
      '            DO BEGIN'
      '            '
      '                  IF (ESTAT_COV = 2) THEN'
      '                  BEGIN'
      '                        DATA_SOSPITA = :DATA_COV;'
      '                        INFO_SOSPITA = :INFO_COV;'
      '                  END;'
      '                  ELSE IF (ESTAT_COV = 3) THEN'
      '                  BEGIN'
      '                        DATA_CONFIRMAT = :DATA_COV;'
      '                        INFO_CONFIRMAT = :INFO_COV;'
      '                  END;'
      '                  ELSE IF (ESTAT_COV = 4) THEN'
      '                  BEGIN'
      '                        DATA_FI_COVID = :DATA_COV;'
      '                        INFO_FI_COVID = :INFO_COV;'
      '                  END;'
      '                  '
      
        '                  /* Si ha marxat d'#39'alta per'#242' ning'#250' no ha marcat' +
        ' "fi covid", ho reporto */'
      
        '                  IF ((DATA_ALTA IS NOT NULL) AND (DATA_FI_COVID' +
        ' IS NULL)) THEN'
      '                  BEGIN'
      '                      DATA_FI_COVID = :DATA_ALTA;'
      
        '                      INFO_FI_COVID = '#39'ALTA - "fi covid" no regi' +
        'strat'#39';'
      '                  END;'
      '                  '
      '                  NUM_REG = NUM_REG + 1;'
      '            END;'
      ''
      '            SUSPEND;'
      '      END'
      'END;')
    Select.Strings = (
      'select * from [MYSELF]')
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
    Left = 730
    Top = 624
  end
  object CensCovid: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CensCovid'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS'
      '('
      '      IdCentre varchar(5),'
      '      IdUT varchar(10),'
      '      IdLlit varchar(10),'
      '      IdLocalitzacioLlit integer,'
      '      IdTipusLlit integer,'
      '      IdSituacioLlit integer,'
      '      IdEpisodi integer,'
      '      Data_Ingres date,                /* extra */'
      '      Data_Prealta date,               /* extra */'
      '      Data_Alta date,                  /* extra */'
      '      C_Prestacio varchar(4),          /* extra */'
      '      C_Coordinador varchar(5),        /* extra */'
      '      NHC integer,'
      '      NomComplet varchar(80),          /* extra */'
      '      CIP  varchar(20),'
      '      Telefon varchar(10),             /* extra */'
      '      Data_Naix date,                  /* extra */'
      '      Covid19 integer,'
      '      Estat_Covid varchar(40),         /* extra */'
      '      Data_InfoCovid date,             /* extra */'
      '      Info varchar(3000),              /* extra */'
      '      DataIniciEpisodi  varchar(20),'
      '      TipusEpisodi integer,'
      '      Genere integer,'
      '      DataNaixement varchar(20),'
      '      DataEnviament varchar(20)'
      ')'
      'AS'
      '      DECLARE VARIABLE HORA_INGRES     varchar(10);'
      '      DECLARE VARIABLE SEXO            CHAR;'
      '      DECLARE VARIABLE ara             DATE;'
      '      DECLARE VARIABLE BLOCK           INTEGER;'
      '      DECLARE VARIABLE TANCAT          INTEGER;'
      '      DECLARE VARIABLE C_ESTAT_COVID   INTEGER;'
      '      DECLARE VARIABLE MOTIU_BLOQUEIG  INTEGER;'
      'BEGIN'
      ''
      '      idCentre = '#39'00786'#39';           /* up guttmann */'
      
        '      IdLocalitzacioLlit = 1;       /* 1=hospital, 2=hotel, 3=pa' +
        'vello, 4=domicili */'
      
        '      IdTipusLlit = 1;              /* 1=Convencional 2=Cr'#237'tics ' +
        '3=Extrahospialari 4=Unitat Especial */'
      '      ara = '#39'NOW'#39';'
      
        '      DataEnviament = F_JUSTIFICAWITH(F_YEAR(ara), 4, '#39'0'#39') || F_' +
        'JUSTIFICAWITH(F_MONTH(ara), 2, '#39'0'#39') || F_JUSTIFICAWITH(F_DAYOFMO' +
        'NTH(ara), 2, '#39'0'#39') ||'
      
        '                      F_LEFT(F_HORATOSTR(ara), 2) || F_RIGHT(F_H' +
        'ORATOSTR(ara), 2) || F_RIGHT(F_FECHAHORA(ara), 2);'
      ''
      
        '      FOR SELECT L.C_LLIT, L.C_PLANTA, T.C_HISTORIA, T.C_TRACTAM' +
        'ENT, T.DATA_INGRES, T.HORA, T.DATA_ALTA, T.Data_Prealta, T.C_Pre' +
        'stacio, T.C_Coordinador, F.FECHA_NAC, F.SEXO, F.TSI, F.NOMCOMPLE' +
        'T, F.TELEFONO'
      '          FROM  LLITS L'
      
        '          JOIN  PLANTES P ON L.C_PLANTA = P.C_PLANTA AND P.TIPUS' +
        ' = '#39'H'#39
      
        '          LEFT  JOIN TRACTAMENTS T ON L.C_LLIT = T.C_LLIT AND (T' +
        '.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '          LEFT  JOIN FILIACIO F    ON F.NUM_HIST = T.C_HISTORIA'
      '          ORDER BY L.C_LLIT'
      
        '          INTO :IdLlit, :IdUT, :NHC, :IdEpisodi, :Data_Ingres, :' +
        'HORA_INGRES, :Data_Alta, :Data_Prealta, :C_Prestacio, :C_Coordin' +
        'ador, :Data_Naix, :SEXO, :CIP, :NomComplet, :Telefon'
      '      DO BEGIN'
      
        '            /* Si el pacient est'#224' a quir'#242'fan, recuperem les dade' +
        's de l'#39'ingr'#233's i mostrem les dades del llit de planta on est'#224' ing' +
        'ressat */'
      '            MOTIU_BLOQUEIG = 0;'
      '            '
      
        '            SELECT CAST(F_REPLACETEXT('#39'BQ-'#39','#39#39',MOTIU_BLOQUEIG) A' +
        'S INTEGER) FROM LLITBLOQUEIG'
      '            WHERE C_LLIT = :IdLlit'
      '            AND (Data_Fi IS NULL OR Data_Fi >= "TODAY")'
      '            AND MOTIU_BLOQUEIG STARTING WITH '#39'BQ-'#39
      '            INTO :MOTIU_BLOQUEIG;'
      '            '
      '            IF (MOTIU_BLOQUEIG <> 0) THEN'
      '            BEGIN'
      
        '                SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGR' +
        'ES, T.HORA, T.DATA_ALTA, T.Data_Prealta, T.C_Prestacio, T.C_Coor' +
        'dinador, F.FECHA_NAC, F.SEXO, F.TSI, F.NOMCOMPLET, F.TELEFONO'
      '                FROM TRACTAMENTS T'
      '                JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '                JOIN PLANTES  P ON T.C_PLANTA   = P.C_PLANTA AND' +
        ' P.TIPUS = '#39'Q'#39
      
        '                WHERE T.C_HISTORIA = :MOTIU_BLOQUEIG AND T.C_PRE' +
        'STACIO = '#39'1004'#39' AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODA' +
        'Y")'
      
        '                INTO :NHC, :IdEpisodi, :Data_Ingres, :HORA_INGRE' +
        'S, :Data_Alta, :Data_Prealta, :C_Prestacio, :C_Coordinador, :Dat' +
        'a_Naix, :SEXO, :CIP, :NomComplet, :Telefon;'
      '            END;'
      ''
      '            IF (NHC IS NULL) THEN'
      '            BEGIN'
      '                  TipusEpisodi = NULL;'
      ''
      '                  SELECT COUNT(*) FROM LLITBLOQUEIG'
      '                  WHERE C_LLIT = :IdLlit'
      '                  AND (Data_Fi IS NULL OR Data_Fi >= "TODAY")'
      '                  INTO :BLOCK;'
      '                  '
      '                  /* 1=Ocupat 2=Lliure 3=Bloquejat */'
      '                  IF (BLOCK <> 0)'
      '                  THEN IdSituacioLlit = 3;'
      '                  ELSE IdSituacioLlit = 2;'
      ''
      '                  Covid19 = NULL;'
      '                  Estat_Covid = NULL;'
      '                  Data_InfoCovid = NULL;'
      '                  Info = NULL;'
      '                  DataIniciEpisodi = NULL;'
      '                  Data_Ingres = NULL;'
      '                  Data_Prealta = NULL;'
      '                  Data_Alta = NULL;'
      '                  C_Prestacio = NULL;'
      '                  C_Coordinador = NULL;'
      '                  Genere = NULL;'
      '                  DataNaixement = NULL;'
      '                  Data_Naix = NULL;'
      '                  Telefon = NULL;'
      '                  NomComplet = NULL;'
      '            END'
      '            ELSE BEGIN'
      '                  /* 1=Hospitalitzaci'#243' 2=Domicili(HAD) */'
      '                  TipusEpisodi = 1;'
      ''
      '                  /* 1=Ocupat 2=Lliure 3=Bloquejat */'
      '                  IdSituacioLlit = 1;'
      ''
      '                  C_ESTAT_COVID = Null;'
      '                  ESTAT_COVID = Null;'
      '                  Data_InfoCovid = Null;'
      '                  Info = Null;'
      ''
      '                  SELECT S.C_ESTAT, E.N_ESTAT, S.DATA, S.INFO'
      '                  FROM   SEMAFORS S'
      
        '                  JOIN   SEMAFORS_ESTATS E ON E.TIPUS = '#39'CoV'#39' AN' +
        'D S.C_ESTAT = E.C_ESTAT'
      '                  WHERE  S.C_HISTORIA = :NHC'
      '                  AND    S.TIPUS = '#39'CoV'#39
      '                  AND    S.ANULAT = "N"'
      '                  AND    S.C_ESTAT IS NOT NULL'
      '                  ORDER  BY S.DATA DESC, S.DATA_REG DESC'
      '                  ROWS   1'
      
        '                  INTO  :C_ESTAT_COVID, :ESTAT_COVID, :Data_Info' +
        'Covid, :Info;'
      ''
      '                  /* 1=Confirmat 2=Sospita 3=No Covid*/'
      '                  Covid19 = 3;'
      '                  IF      (C_ESTAT_COVID = 2) THEN Covid19 = 2;'
      '                  ELSE IF (C_ESTAT_COVID = 3) THEN Covid19 = 1;'
      ''
      ''
      
        '                  DataIniciEpisodi = F_JUSTIFICAWITH(F_YEAR(data' +
        '_ingres), 4 , '#39'0'#39') || F_JUSTIFICAWITH(F_MONTH(data_ingres), 2, '#39 +
        '0'#39') || F_JUSTIFICAWITH(F_DAYOFMONTH(data_ingres), 2, '#39'0'#39') ||'
      
        '                                     F_REPLACETEXT('#39':'#39', '#39#39', hora' +
        '_ingres) || '#39'00'#39';'
      ''
      '                  /* 0=Home 1=Dona 2=Sense especificar */'
      '                  IF      (SEXO = '#39'H'#39') THEN Genere = 0;'
      '                  ELSE IF (SEXO = '#39'D'#39') THEN Genere = 1;'
      '                                       ELSE Genere = 2;'
      ''
      
        '                  DataNaixement = F_JUSTIFICAWITH(F_YEAR(Data_Na' +
        'ix), 4, '#39'0'#39') || F_JUSTIFICAWITH(F_MONTH(Data_Naix), 2, '#39'0'#39') || F' +
        '_JUSTIFICAWITH(F_DAYOFMONTH(Data_Naix), 2, '#39'0'#39') || '#39'000000'#39';'
      '            END;'
      ''
      ''
      '            TANCAT = 0;'
      '            '
      '            SELECT COUNT(*) FROM LLITTANCAMENT'
      '            WHERE  C_LLIT = :IdLlit'
      '            AND    DATA_INICI <= "TODAY"'
      '            AND   (DATA_FI > "TODAY" OR DATA_FI IS NULL)'
      '            INTO  :TANCAT;'
      ''
      '            IF (TANCAT IS NULL) THEN TANCAT = 0;'
      ''
      '            IF (TANCAT = 0) THEN SUSPEND;'
      ''
      '      END'
      ''
      ''
      'END;')
    Select.Strings = (
      'select * from [MYSELF]')
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
    Left = 660
    Top = 624
  end
  object Historia_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE ESTAT_HC3 INTEGER;'
      '  DECLARE VARIABLE NOU_ESTAT INTEGER;'
      'BEGIN'
      ''
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /* Si anul'#183'len una anotaci'#243' */'
      '      IF ((OLD.ANULAT = "N") AND (NEW.ANULAT = "S")) THEN'
      '      BEGIN'
      ''
      '            /* 1. mirem si s'#39'ha de despublicar de l'#39'HC3 */'
      '            SELECT C_ESTAT'
      '            FROM   ANOTAHC3'
      '            WHERE  C_ANOTACIO = NEW.C_ANOTACIO'
      '            INTO  :ESTAT_HC3;'
      '            '
      '            NOU_ESTAT = 0;'
      
        '            /* Si estava pendent de publicar amb error en la pub' +
        'licaci'#243' (reintentar o no), la passem a no publicar */'
      '            IF (ESTAT_HC3 IN (0,-1,-2)) THEN NOU_ESTAT = 2;'
      
        '            /* Si estava publicada, la marquem per despublicar *' +
        '/'
      '            ELSE IF (ESTAT_HC3 = 1) THEN NOU_ESTAT = 3;'
      '            '
      '            IF (NOU_ESTAT <> 0) THEN      UPDATE ANOTAHC3'
      
        '                                          SET    C_ESTAT = :NOU_' +
        'ESTAT'
      
        '                                          WHERE  C_ANOTACIO = NE' +
        'W.C_ANOTACIO;'
      ''
      
        '            /* i si era una anotacio d'#39'alta hospital'#224'ria efectiv' +
        'a, anul'#183'lem l'#39'alta i ho registrem al log */'
      
        '            /* (L'#39'anul'#183'laci'#243' de l'#39'alta s'#39'enviar'#224' a FT per trigge' +
        'r) */'
      '            IF (NEW.QUEES = 48) THEN'
      '            BEGIN'
      
        '                  UPDATE TRACTAMENTS SET DATA_ALTA = NULL WHERE ' +
        'C_TRACTAMENT = NEW.C_TRACTAMENT;'
      '                  '
      
        '                  INSERT INTO LOGALTES (C_TRACTAMENT, DATA_REGIS' +
        'TRE, C_USUARI, DATA_ALTA, C_ANOTACIO)'
      
        '                  VALUES (NEW.C_TRACTAMENT, "NOW", NEW.C_USUARI,' +
        ' NULL, NEW.C_ANOTACIO);'
      '            END;'
      ''
      ''
      '      END'
      '   END'
      'END')
    Dic1 = Historia
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 208
    Top = 72
  end
  object PteInfAltaN: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'PteInfAltaN'
    ForceNombreDB = False
    Body.Strings = (
      
        'select T.C_COORDINADOR, T.C_Historia, F.NOMCOMPLET, T.OBS_SECRE,' +
        ' T.C_Tractament, T.C_Prestacio, T.Data_Ingres,'
      
        'T.Data_Alta, T.Data_PreAlta, T.ESTATINFORMEALTA, P.Resum, f.unit' +
        'at, T.C_proces, T.Fi_proces, T.C_Motiu, T.C_CentreFac'
      'from TRACTAMENTS T'
      'join PRESTACION P on P.C_PRESTACIO = T.C_PRESTACIO'
      
        'left outer join DRETSPRESTA D on P.C_PRESTACIO = D.C_PRESTACIO a' +
        'nd C_DRET = '#39'P226'#39
      'join FILIACIO F on F.NUM_HIST = T.C_HISTORIA'
      'where'
      '   ('
      '     (T.ESTATINFORMEALTA>1 and T.ESTATINFORMEALTA<8)'
      '     or'
      '     ( T.ESTATINFORMEALTA = 1'
      '       and'
      '          (    (T.DATA_ALTA is not NULL )'
      '            or (T.DATA_ALTA is NULL '
      '                 and T.DATA_PREALTA is not NULL '
      '                 and T.DATA_PREALTA <= "TODAY"+14)'
      '            or (T.OBS_SECRE <> '#39#39')'
      '            )'
      '       and '
      '          (D.C_DRET is Null or T.OBS_SECRE is not Null)'
      '     )'
      '   )')
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
    ModiFecha = 37698.7747500463
    Left = 146
    Top = 124
  end
  object P_Semafors_Critics: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Critics'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_HORA DATE)'
      ' RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  NOMCOMPLET      VARCHAR(80),'
      '  SEXE            CHAR(1),'
      '  EDAT            INTEGER,'
      '  DATA_NAIX       DATE,'
      '  ESVIU           CHAR(1),'
      '  C_ESTAT         INTEGER,'
      '  N_ESTAT         VARCHAR(40),'
      '  ACTIU           CHAR(1),'
      '  DATA            DATE,'
      '  DATA_REG        DATE,'
      '  USUARI_REG      VARCHAR(5),'
      '  ID_REGINFER     INTEGER,'
      '  INFO            VARCHAR(3000),'
      '  DATA_INGRES     DATE,'
      '  DATA_ALTA       DATE,'
      '  C_COORDINADOR   VARCHAR(5),'
      '  METGE           VARCHAR(20),'
      '  C_LLIT          INTEGER,'
      '  UNITATM         VARCHAR(80),'
      '  N_DIAGINGRES    VARCHAR(80),'
      '  C_TRACTAMENT    INTEGER'
      ')'
      'AS'
      ' DECLARE VARIABLE TROBAT SMALLINT;'
      'BEGIN'
      '      /* PACIENTS INGRESSATS CR'#205'TICS A LA DATA INTRODU'#207'DA */'
      ''
      
        '      FOR SELECT T.C_HISTORIA, F.NOMCOMPLET, F.SEXO, F.EDAT, F.E' +
        'SVIU, F.FECHA_NAC, U.N_UNITATM,'
      
        '                 T.C_TRACTAMENT, T.DATA_INGRES, T.DATA_ALTA, T.C' +
        '_COORDINADOR, T.C_LLIT, T.N_DIAGNOSTICINGRES, M.METGE'
      '          FROM   TRACTAMENTS T'
      '          JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '          JOIN   UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      '          JOIN   METGES M ON T.C_COORDINADOR = M.CODI'
      '          WHERE  T.C_PRESTACIO = "1004"'
      
        '          AND   (T.DATA_ALTA >= F_SoloFecha(:DATA_HORA) OR T.DAT' +
        'A_ALTA IS NULL)'
      '          AND    T.DATA_INGRES <= F_SoloFecha(:DATA_HORA)'
      
        '          INTO  :C_HISTORIA, :NOMCOMPLET, :SEXE, :EDAT, :ESVIU, ' +
        ':DATA_NAIX, :UNITATM,'
      
        '                :C_TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :C_COOR' +
        'DINADOR, :C_LLIT, :N_DIAGINGRES, :METGE'
      '      DO BEGIN'
      '            C_ESTAT = 0;'
      '            N_ESTAT = NULL;'
      '            ACTIU = "N";'
      '            DATA = NULL;'
      '            INFO = NULL;'
      '            ID_REGINFER = NULL;'
      '            DATA_REG = NULL;'
      '            USUARI_REG = NULL;'
      ''
      
        '            /* Busquem l'#39#250'ltim sem'#224'for cr'#237'tic registrat abans de' +
        ' DATA_HORA (estat del sem'#224'for en aquell moment) */'
      
        '            SELECT S.C_ESTAT, E.N_ESTAT, E.ACTIU, S.DATA, S.INFO' +
        ', S.ID_REGINFER, S.DATA_REG, S.USUARI_REG'
      '            FROM   SEMAFORS S'
      
        '            JOIN   SEMAFORS_ESTATS E ON S.C_ESTAT = E.C_ESTAT AN' +
        'D S.TIPUS = E.TIPUS'
      '            WHERE  S.C_HISTORIA = :C_HISTORIA'
      '            AND    S.TIPUS = "C/A"'
      '            AND    S.ANULAT = "N"'
      '            AND    S.C_ESTAT IS NOT NULL'
      '            AND    S.DATA <= :DATA_HORA'
      '            ORDER  BY DATA DESC, DATA_REG DESC'
      '            ROWS   1'
      
        '            INTO  :C_ESTAT, :N_ESTAT, :ACTIU, :DATA, :INFO, :ID_' +
        'REGINFER, :DATA_REG, :USUARI_REG;'
      ''
      '            /* El retornem si est'#224' actiu */'
      '            IF (ACTIU = '#39'S'#39') THEN SUSPEND;'
      '      END'
      'END'
      ''
      '')
    Dic1 = Semafors
    Dic1Name = 'Sem'#224'fors'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 484
    Top = 624
  end
  object T_Semafors_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE COMENTARI VARCHAR(100);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Si activen o desactiven el sem'#224'for de Risc de Fuga, avi' +
        'sem a Infermeria (a no ser que s'#39'activi a trav'#233's del registre de' +
        ' polsera de seguiment */'
      '      IF ((NEW.TIPUS = '#39'RF'#39') AND (NEW.ID_REGINFER IS NULL)) THEN'
      '      BEGIN'
      
        '            IF      (NEW.C_ESTAT = 1) THEN COMENTARI = "S'#39'ha ind' +
        'icat que el pacient " || NEW.C_HISTORIA || " t'#233' risc de fuga.";'
      
        '            ELSE IF (NEW.C_ESTAT = 0) THEN COMENTARI = "S'#39'ha ind' +
        'icat que el pacient " || NEW.C_HISTORIA || " ja NO t'#233' risc de fu' +
        'ga.";'
      ''
      '            IF (NEW.C_ESTAT IS NOT NULL)'
      '            THEN'
      
        '                  INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AV' +
        'IS, ASSUMPTE, COS)'
      
        '                  VALUES ("NOW", 44, "Av'#237's RISC DE FUGA", :COMEN' +
        'TARI);'
      '      END'
      '            '
      '   END'
      'END')
    Dic1 = Semafors
    Dic1Name = 'Semafors'
    Abierta = False
    Borrame = False
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
    Left = 576
    Top = 624
  end
  object T_EscLCau_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Cau_AI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE C_HISTORIA INTEGER;'
      '  DECLARE VARIABLE DATA       DATE;'
      '  DECLARE VARIABLE DATA_REG   DATE;'
      '  DECLARE VARIABLE USR_REG    VARCHAR(5);'
      '  DECLARE VARIABLE NOU_ESTAT  SMALLINT;'
      '  DECLARE VARIABLE COMENTARI  VARCHAR(250);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Si introdueixen l'#39'escala HOSS, introdu'#239'm la informaci'#243' ' +
        'al sem'#224'for de risc de caigudes */'
      '      IF (NEW.C_ITEM = 1280) THEN'
      '      BEGIN'
      '            SELECT C_HISTORIA, DATA_ADM, DATA, C_USUARI'
      '            FROM   ESCALESCAP'
      '            WHERE  CLAU = NEW.CLAU'
      '            INTO  :C_HISTORIA, :DATA, :DATA_REG, :USR_REG;'
      '            '
      '            IF (NEW.D_ITEM >= 11) THEN NOU_ESTAT = 2;'
      '                                  ELSE NOU_ESTAT = 1;'
      '                                 '
      '            COMENTARI = '#39'Valor HOSS: '#39' || NEW.D_ITEM;'
      '            '
      
        '            INSERT INTO SEMAFORS (ID, C_HISTORIA, TIPUS, C_ESTAT' +
        ', DATA, INFO, DATA_REG, USUARI_REG, ID_ORIGEN)'
      
        '            VALUES (GEN_ID(G_SEMAFORS, 1), :C_HISTORIA, "CAU", :' +
        'NOU_ESTAT, :DATA, :COMENTARI, :DATA_REG, :USR_REG, NEW.CLAU);'
      '      END;'
      '   '
      '   END'
      'END')
    Dic1 = wDataEscales.EscalesLin
    Dic1Name = 'EscalesLin'
    Abierta = False
    Borrame = False
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
    Left = 652
    Top = 680
  end
  object T_EscCCau_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Cau_AU'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE C_HISTORIA INTEGER;'
      '  DECLARE VARIABLE DATA       DATE;'
      '  DECLARE VARIABLE DATA_REG   DATE;'
      '  DECLARE VARIABLE USR_REG    VARCHAR(5);'
      '  DECLARE VARIABLE NOU_ESTAT  SMALLINT;'
      '  DECLARE VARIABLE COMENTARI  VARCHAR(250);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Si anul'#183'len o deneguen una entrada de l'#39'escala HOSS, an' +
        'ul'#183'lem el sem'#224'for "CAU" que s'#39'havia generat en entrar-la */'
      '      IF ( (OLD.C_ESCALA = 135)'
      
        '      AND (((OLD.ANULAT = "N") AND (NEW.ANULAT = "S"))  OR  ((OL' +
        'D.ANULAT = "R") AND (NEW.ANULAT = "D"))) )'
      '      THEN'
      '            UPDATE SEMAFORS'
      '            SET    ANULAT = "S",'
      
        '                   DATA_ANULA   = F_DateNull(NEW.DATA_VALIDAT, N' +
        'EW.DATA_ANULAT),'
      
        '                   USUARI_ANULA = F_StrNull(NEW.C_VALIDADOR, NEW' +
        '.C_USUARI)'
      '            WHERE  ID_ORIGEN = NEW.CLAU;'
      '   '
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
    Left = 652
    Top = 728
  end
  object NetejaREC: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NetejaREC'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_TALL DATE, EXECUTA CHAR(1))'
      'RETURNS'
      '('
      '   C_HISTORIA INTEGER,'
      '   DATA_ALTA  DATE,'
      '   ACCIO      CHAR(1),'
      '   ID         INTEGER,'
      '   ESTAT_TALL INTEGER,'
      '   ESTAT_ANT  INTEGER'
      ')'
      'AS'
      'BEGIN'
      ''
      '      /********* SEM'#192'FOR REC *********/'
      
        '      /* Inicialitzem l'#39'estat que toca a data DATA_TALL per elim' +
        'inar els registres anteriors a aquest dia */'
      '      '
      '      /* Per cada hist'#242'ria amb dades al sem'#224'for REC */'
      '      FOR SELECT DISTINCT S.C_HISTORIA'
      '          FROM   SEMAFORS S'
      '          WHERE  S.TIPUS = '#39'REC'#39
      '          INTO  :C_HISTORIA'
      '      DO BEGIN'
      '      '
      '            SELECT DATA_ALTA'
      '            FROM   TRACTAMENTS'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    C_PRESTACIO = '#39'1004'#39
      '            ORDER  BY DATA_INGRES DESC'
      '            ROWS   1'
      '            INTO :DATA_ALTA;'
      '            '
      
        '            /* Si el pacient va ser alta abans de la data de tal' +
        'l, eliminem les seves dades REC */'
      
        '            IF ((DATA_ALTA IS NOT NULL) AND (DATA_ALTA < :DATA_T' +
        'ALL)) THEN'
      '            BEGIN'
      '                  ACCIO = '#39'D'#39';'
      '                  ESTAT_TALL = NULL;'
      '                  ESTAT_ANT  = NULL;'
      ''
      '                  IF (EXECUTA = '#39'S'#39')'
      '                  THEN'
      
        '                        DELETE FROM SEMAFORS WHERE C_HISTORIA = ' +
        ':C_HISTORIA AND TIPUS = '#39'REC'#39';'
      '                  '
      '            END'
      '            '
      '            /* Altrament, mirem si cal fer alguna cosa */'
      '            ELSE BEGIN'
      '            '
      '                  ACCIO = NULL;'
      '                  ESTAT_TALL = -9;'
      '                  ESTAT_ANT  = -9;'
      '                  '
      
        '                  /* Mirem quin estat consta al primer registre ' +
        'posterior a DATA_TALL */'
      '                  SELECT ID, C_ESTAT'
      '                  FROM   SEMAFORS'
      '                  WHERE  C_HISTORIA = :C_HISTORIA'
      '                  AND    TIPUS = '#39'REC'#39
      '                  AND    ANULAT = '#39'N'#39
      '                  AND    DATA >= :DATA_TALL'
      '                  ORDER  BY DATA, DATA_REG'
      '                  ROWS   1'
      '                  INTO  :ID, :ESTAT_TALL;'
      '                  '
      
        '                  /* Busquem el darrer estat anterior a DATA_TAL' +
        'L */'
      '                  SELECT C_ESTAT'
      '                  FROM   SEMAFORS'
      '                  WHERE  C_HISTORIA = :C_HISTORIA'
      '                  AND    TIPUS = '#39'REC'#39
      '                  AND    C_ESTAT IS NOT NULL'
      '                  AND    ANULAT = '#39'N'#39
      '                  AND    DATA < :DATA_TALL'
      '                  ORDER  BY DATA DESC, DATA_REG DESC'
      '                  ROWS   1'
      '                  INTO  :ESTAT_ANT;'
      ''
      
        '                  /* Si l'#39'estat a DATA_TALL est'#224' buit, li posem ' +
        'l'#39'anterior */'
      
        '                  IF ((ID IS NOT NULL) AND (ESTAT_TALL IS NULL))' +
        ' THEN    /* Si hi ha registre, '#233's clar */'
      '                  BEGIN'
      '                        /* Si no n'#39'hi ha, reportem error */'
      '                        IF (ESTAT_ANT IS NULL) THEN ACCIO = '#39'!'#39';'
      '                        '
      '                        ELSE BEGIN'
      '                        '
      '                              ACCIO = '#39'U'#39';'
      ''
      '                              IF (EXECUTA = '#39'S'#39')'
      '                              THEN'
      
        '                                    UPDATE SEMAFORS SET C_ESTAT ' +
        '= :ESTAT_ANT WHERE ID = :ID;'
      '                        END'
      '                  END'
      '                  '
      
        '                  /* Ara ja podem eliminar els registres anterio' +
        'rs a DATA_TALL */'
      '                  IF (EXECUTA = '#39'S'#39')'
      '                  THEN'
      
        '                        DELETE FROM SEMAFORS WHERE C_HISTORIA = ' +
        ':C_HISTORIA AND TIPUS = '#39'REC'#39' AND DATA < :DATA_TALL;'
      '            END'
      ''
      '            SUSPEND;'
      '      END'
      'END')
    Dic1 = Semafors
    Dic1Name = 'Semafors'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 570
    Top = 680
  end
  object PteInfAlta: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'PteInfAlta'
    ForceNombreDB = False
    Body.Strings = (
      
        'select T.C_COORDINADOR, T.C_Historia, F.NOMCOMPLET, T.OBS_SECRE,' +
        ' T.C_Tractament, T.C_Prestacio, T.Data_Ingres,'
      
        'T.Data_Alta, T.Data_PreAlta, T.ESTATINFORMEALTA, P.Resum, f.unit' +
        'at, T.C_proces, T.Fi_proces, T.C_Motiu, T.C_CentreFac'
      'from TRACTAMENTS T'
      'join PRESTACION P on P.C_PRESTACIO = T.C_PRESTACIO'
      'join FILIACIO F on F.NUM_HIST = T.C_HISTORIA'
      'where'
      '   ('
      '     (T.ESTATINFORMEALTA>1 and T.ESTATINFORMEALTA<8)'
      '     or'
      '     ( T.ESTATINFORMEALTA = 1'
      '       and'
      '          (    (T.DATA_ALTA is not NULL )'
      '            or (T.DATA_ALTA is NULL '
      '                 and T.DATA_PREALTA is not NULL '
      '                 and T.DATA_PREALTA <= "TODAY"+14)'
      '            or (T.OBS_SECRE <> '#39#39')'
      '            )'
      '       and '
      '          (T.C_PRESTACIO <> '#39'1004'#39' or T.OBS_SECRE is not Null)'
      '     )'
      '   )')
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
    ModiFecha = 37698.7747500463
    Left = 210
    Top = 124
  end
  object T_RegInfer_AI_Semafors: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI_Semafors'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE C_ESTAT   INTEGER;'
      '  DECLARE VARIABLE COMENTARI VARCHAR(250);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Si registren una polsera de seguiment (errantes) active' +
        'm el sem'#224'for de risc de fuga */'
      '      IF ((NEW.T_REG = 11) AND (NEW.C_TIPUS = 2)) THEN'
      '      BEGIN'
      '      '
      '            /* Nom'#233's l'#39'activarem si no ho est'#224' */'
      
        '            SELECT C_ESTAT FROM P_SEMAFORS_ESTAT(NEW.C_HISTORIA,' +
        ' "RF") INTO :C_ESTAT;'
      '            IF (C_ESTAT IS NULL) THEN C_ESTAT = 0;'
      '            '
      '            IF (C_ESTAT = 0) THEN'
      '            BEGIN'
      '            '
      
        '                  COMENTARI = "Nou registre de polsera d'#39#39'identi' +
        'ficaci'#243' per seguiment ";'
      '            '
      
        '                  INSERT INTO SEMAFORS (ID, C_HISTORIA, TIPUS, C' +
        '_ESTAT, DATA, INFO, DATA_REG, USUARI_REG, ID_REGINFER)'
      
        '                  VALUES (GEN_ID(G_SEMAFORS, 1), NEW.C_HISTORIA,' +
        ' "RF", 1, F_SoloFecha(NEW.DATAINICI_REAL), :COMENTARI, NEW.DATAI' +
        'NICI_AUTO, NEW.C_USUARI_INICI, NEW.ID);'
      '            END'
      '      END'
      ''
      ''
      
        '      /* Si registren pacient allitat, activem el sem'#224'for corres' +
        'ponent */'
      '      IF ((NEW.T_REG = 26)) THEN'
      '      BEGIN'
      '            /* Nom'#233's l'#39'activarem si no ho est'#224' */'
      
        '            SELECT C_ESTAT FROM P_SEMAFORS_ESTAT(NEW.C_HISTORIA,' +
        ' "LLT") INTO :C_ESTAT;'
      '            IF (C_ESTAT IS NULL) THEN C_ESTAT = 0;'
      ''
      '            IF (C_ESTAT = 0) THEN'
      '            BEGIN'
      ''
      '                  COMENTARI = "Nou registre de pacient allitat";'
      ''
      
        '                  INSERT INTO SEMAFORS (ID, C_HISTORIA, TIPUS, C' +
        '_ESTAT, DATA, INFO, DATA_REG, USUARI_REG, ID_REGINFER)'
      
        '                  VALUES (GEN_ID(G_SEMAFORS, 1), NEW.C_HISTORIA,' +
        ' "LLT", 1, F_SoloFecha(NEW.DATAINICI_REAL), :COMENTARI, NEW.DATA' +
        'INICI_AUTO, NEW.C_USUARI_INICI, NEW.ID);'
      '            END'
      ''
      '      END'
      ''
      '   END'
      'END')
    Dic1 = wDataInfermeria.RegistresInfer
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
    Accion2 = taINSERT
    Left = 772
    Top = 680
  end
  object T_RegInfer_AU_Semafors: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU_Semafors'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE C_ESTAT   INTEGER;'
      '  DECLARE VARIABLE COMENTARI VARCHAR(250);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Si finalitzen o anul'#183'len el registre d'#39'una polsera de s' +
        'eguiment (errantes) desactivem el sem'#224'for de risc de fuga */'
      
        '      IF ((NEW.T_REG = 11) AND (NEW.C_TIPUS = 2) AND (NEW.DATAFI' +
        'NAL_REAL IS NOT NULL)) THEN'
      '      BEGIN'
      '            /* Anul'#183'laci'#243' -> Anul'#183'lem el registre associat */'
      '            IF (NEW.C_MOTIU = 99)'
      '            THEN'
      '                  UPDATE SEMAFORS'
      '                  SET    ANULAT = "S",'
      '                         DATA_ANULA = NEW.DATAFINAL_AUTO,'
      '                         USUARI_ANULA = NEW.C_USUARI_FINAL'
      '                  WHERE TIPUS = "RF"'
      '                  AND   C_HISTORIA = NEW.C_HISTORIA'
      
        '                  AND   ID_REGINFER = NEW.ID;          /* buscan' +
        't per ID seria suficient, per'#242' per si un cas */'
      '            '
      '            ELSE BEGIN'
      ''
      '                  /* Nom'#233's el desactivarem si estava actiu */'
      
        '                  SELECT C_ESTAT FROM P_SEMAFORS_ESTAT(NEW.C_HIS' +
        'TORIA, "RF") INTO :C_ESTAT;'
      '                  IF (C_ESTAT IS NULL) THEN C_ESTAT = 0;'
      ''
      '                  IF (C_ESTAT = 1) THEN'
      '                  BEGIN'
      
        '                        COMENTARI = "Finalitzaci'#243' de registre de' +
        ' polsera d'#39#39'identificaci'#243' per seguiment ";'
      '            '
      
        '                        INSERT INTO SEMAFORS (ID, C_HISTORIA, TI' +
        'PUS, C_ESTAT, DATA, INFO, DATA_REG, USUARI_REG, ID_REGINFER)'
      
        '                        VALUES (GEN_ID(G_SEMAFORS, 1), NEW.C_HIS' +
        'TORIA, "RF", 0, F_SoloFecha(NEW.DATAFINAL_REAL), :COMENTARI, NEW' +
        '.DATAFINAL_AUTO, NEW.C_USUARI_FINAL, NEW.ID);'
      '                  END'
      '             END'
      '      END'
      '      '
      '      '
      '      '
      
        '      /* Si finalitzen o anul'#183'len el registre de pacient allitat' +
        ', desactivem el sem'#224'for corresponent */'
      
        '      IF ((NEW.T_REG = 26) AND (NEW.DATAFINAL_REAL IS NOT NULL))' +
        ' THEN'
      '      BEGIN'
      '            /* Anul'#183'laci'#243' -> Anul'#183'lem el registre associat */'
      '            IF (NEW.C_MOTIU = 99)'
      '            THEN'
      '                  UPDATE SEMAFORS'
      '                  SET    ANULAT = "S",'
      '                         DATA_ANULA = NEW.DATAFINAL_AUTO,'
      '                         USUARI_ANULA = NEW.C_USUARI_FINAL'
      '                  WHERE TIPUS = "LLT"'
      '                  AND   C_HISTORIA = NEW.C_HISTORIA'
      
        '                  AND   ID_REGINFER = NEW.ID;          /* buscan' +
        't per ID seria suficient, per'#242' per si un cas */'
      ''
      '            ELSE BEGIN'
      ''
      '                  /* Nom'#233's el desactivarem si estava actiu */'
      
        '                  SELECT C_ESTAT FROM P_SEMAFORS_ESTAT(NEW.C_HIS' +
        'TORIA, "LLT") INTO :C_ESTAT;'
      '                  IF (C_ESTAT IS NULL) THEN C_ESTAT = 0;'
      ''
      '                  IF (C_ESTAT = 1) THEN'
      '                  BEGIN'
      
        '                        COMENTARI = "Finalitzaci'#243' de registre de' +
        ' pacient allitat ";'
      ''
      
        '                        INSERT INTO SEMAFORS (ID, C_HISTORIA, TI' +
        'PUS, C_ESTAT, DATA, INFO, DATA_REG, USUARI_REG, ID_REGINFER)'
      
        '                        VALUES (GEN_ID(G_SEMAFORS, 1), NEW.C_HIS' +
        'TORIA, "LLT", 0, F_SoloFecha(NEW.DATAFINAL_REAL), :COMENTARI, NE' +
        'W.DATAFINAL_AUTO, NEW.C_USUARI_FINAL, NEW.ID);'
      '                  END'
      '             END'
      '      END'
      '   END'
      'END')
    Dic1 = wDataInfermeria.RegistresInfer
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
    Left = 772
    Top = 728
  end
  object P_Semafors_InicialitzaISO: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'iniciaISO'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  C_HISTORIA INTEGER,'
      '  DATA DATE,'
      '  DATA_REG DATE,'
      '  USUARI_REG VARCHAR(5),'
      '  ID_REGINFER INTEGER,'
      '  INFO VARCHAR(250))'
      'AS'
      '      DECLARE VARIABLE DATA_INGRES DATE;'
      '      DECLARE VARIABLE DATA_ALTA   DATE;'
      '      DECLARE VARIABLE ESTAT_MR    SMALLINT;'
      'BEGIN'
      '      FOR SELECT C_HISTORIA, DATA_INGRES, DATA_ALTA'
      '          FROM   TRACTAMENTS'
      '          WHERE  C_PRESTACIO = '#39'1004'#39
      '          AND   (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY")'
      '          INTO  :C_HISTORIA, :DATA_INGRES, :DATA_ALTA'
      '      DO BEGIN'
      '      '
      '            ESTAT_MR = 0;'
      '            '
      
        '            SELECT C_ESTAT, S.DATA, S.DATA_REG, S.USUARI_REG, S.' +
        'ID_REGINFER, C.N_CODI'
      '            FROM   SEMAFORS S'
      
        '            JOIN   REGISTRESINFER R ON S.ID_REGINFER = R.ID AND ' +
        'R.T_REG = 2'
      
        '            JOIN   CODICAMPS C ON C.TIPUSCODI = '#39'AILLA_TIPUS'#39' AN' +
        'D R.C_TIPUS = C.C_CODI'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    S.TIPUS = "MR"'
      '            AND    S.C_ESTAT IS NOT NULL'
      '            AND    S.ANULAT = "N"'
      
        '            AND    S.DATA >= :DATA_INGRES AND (:DATA_ALTA IS NUL' +
        'L OR S.DATA <= :DATA_ALTA)'
      '            ORDER  BY S.DATA DESC, S.DATA_REG DESC'
      '            ROWS   1'
      
        '            INTO  :ESTAT_MR, :DATA, :DATA_REG, :USUARI_REG, :ID_' +
        'REGINFER, :INFO;'
      '            '
      ''
      '            IF (ESTAT_MR IN (1,2)) THEN'
      '            BEGIN'
      
        '                  IF (EXECUTA = '#39'S'#39') THEN INSERT INTO SEMAFORS (' +
        'ID, C_HISTORIA, TIPUS, C_ESTAT, DATA, DATA_REG, USUARI_REG, ID_R' +
        'EGINFER, INFO)'
      
        '                                          VALUES (GEN_ID(G_SEMAF' +
        'ORS, 1), :C_HISTORIA, "ISO", 1, :DATA, :DATA_REG, :USUARI_REG, :' +
        'ID_REGINFER, :INFO);'
      ''
      '                  SUSPEND;'
      '            END'
      '      END'
      'END')
    Dic1 = Semafors
    Dic1Name = 'sem'#224'fors'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 956
    Top = 624
  end
  object Diags_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_DIAGNOSTICS, 1)' +
        ' ;'
      '   END;'
      'END')
    Dic1 = Diagnostics
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
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 272
    Top = 494
  end
  object HandOver_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '      IF (USER <> "REPLICATOR") THEN'
      '      BEGIN    '
      
        '            IF ((NEW.ID IS NULL) OR (NEW.ID = 0)) THEN NEW.ID = ' +
        'GEN_ID(G_HANDOVER,1);'
      '      END'
      'END'
      '')
    Dic1 = HandOver
    Dic1Name = 'HandOver'
    Abierta = False
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
    ModiFecha = 37173.8121735532
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 634
    Top = 496
  end
  object Passaport: TDic
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
        Comentario = 'pk'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Num. Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'filiacio'
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_PASSAPORTLIN'
        Comentario = 'fk Filiacio'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi '#237'tem'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = ' '
        Consulta = 'item'
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'ID Informe'
        Comentario = 'fk Passaport_items'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Text'
        NombreDB = 'Text'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'usuari'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk metges'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Actiu'
        NombreDB = 'Actiu'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'S'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Anul'#183'lat'
        NombreDB = 'Anulat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data anul'#183'la'
        NombreDB = 'Data_anula'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari anul'#183'la'
        NombreDB = 'Usuari_anula'
        Longitud = 5
        Consulta = 'usuaria'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk metges'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltim (des)activat'
        NombreDB = 'Data_des_activa'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari '#250'ltim (des)activat'
        NombreDB = 'Usuari_des_activa'
        Longitud = 5
        Consulta = 'usuarid'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk metges'
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
        Nombre = 'historia'
        NombreDB = 'historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Num. Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'item'
        NombreDB = 'item'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi '#237'tem')
        Tipo = tiForaneo
        ForaneoDic = Passaport_Items
        ForaneoCampos.Strings = (
          'Codi '#237'tem')
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
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usuaria'
        NombreDB = 'usuaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari anul'#183'la')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'usuarid'
        NombreDB = 'usuarid'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari '#250'ltim (des)activat')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'filiacio'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Num. Hist'#242'ria')
        CopiarOrigen.Strings = (
          'Num. Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
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
      end
      item
        Nombre = 'item'
        Master = Passaport_Items
        BuscaOrigen.Strings = (
          'Codi '#237'tem')
        CopiarOrigen.Strings = (
          'Codi '#237'tem')
        CopiarMaster.Strings = (
          'Codi '#237'tem')
        BuscaMaster.Strings = (
          'Codi '#237'tem')
      end
      item
        Nombre = 'usuaria'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari anul'#183'la')
        CopiarOrigen.Strings = (
          'Usuari anul'#183'la')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'usuarid'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari '#250'ltim (des)activat')
        CopiarOrigen.Strings = (
          'Usuari '#250'ltim (des)activat')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Passaport L'#237'nies'
    NombreTabla = 'Passaport'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Num. Hist'#242'ria'
      'Codi '#237'tem'
      'Text'
      'Data'
      'Usuari'
      'Actiu'
      'Anul'#183'lat'
      'Data anul'#183'la'
      'Usuari anul'#183'la'
      'Data '#250'ltim (des)activat'
      'Usuari '#250'ltim (des)activat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 856
    Top = 416
  end
  object Passaport_Items: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi '#237'tem'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Generator = 'G_PASSAPORTITEMS'
        Comentario = 'PK'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243' '#237'tem'
        NombreDB = 'N_Item'
        Longitud = 150
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Informaci'#243
        NombreDB = 'Info'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Actiu'
        NombreDB = 'Actiu'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
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
          'Codi '#237'tem')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Passaport Items'
    NombreTabla = 'Passaport_Items'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi '#237'tem'
      'Descripci'#243' '#237'tem'
      'Actiu'
      'Ordre')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 768
    Top = 416
  end
  object Passaport_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '      IF (USER <> "REPLICATOR") THEN'
      '      BEGIN    '
      
        '            IF ((NEW.ID IS NULL) OR (NEW.ID = 0)) THEN NEW.ID = ' +
        'GEN_ID(G_PASSAPORT,1);'
      '      END'
      'END'
      '')
    Dic1 = Passaport
    Dic1Name = 'Passaport'
    Abierta = False
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
    ModiFecha = 37173.8121735532
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 858
    Top = 464
  end
  object ResumPassaport: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Resum'
    ForceNombreDB = False
    Body.Strings = (
      '('
      ' C_HISTORIA INTEGER'
      ')'
      'RETURNS'
      '('
      '  N_ITEM    VARCHAR(150),'
      '  TEXT      VARCHAR(30000),'
      '  NUM_ITEMS INTEGER,'
      '  LINIES    INTEGER,'
      '  TEXT_LEN  INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE TEXTOS     VARCHAR(30000);'
      '  DECLARE VARIABLE C_ITEM_ACT INTEGER;'
      '  DECLARE VARIABLE N_ITEM_ACT VARCHAR(150);'
      '  DECLARE VARIABLE C_ITEM_ANT INTEGER;'
      '  DECLARE VARIABLE N_ITEM_ANT VARCHAR(150);'
      '  DECLARE VARIABLE TEXTOS_LEN INTEGER;'
      '  DECLARE VARIABLE N_ITEM_ACT_LEN INTEGER;'
      '  DECLARE VARIABLE N_ITEM_ANT_LEN INTEGER;'
      'BEGIN'
      ''
      '      NUM_ITEMS = 0; TEXT = '#39#39'; TEXT_LEN = 0; LINIES = 0;'
      '      '
      
        '      FOR SELECT P.C_ITEM, I.N_ITEM, P.TEXT, F_STRINGLENGTH(P.TE' +
        'XT), F_STRINGLENGTH(I.N_ITEM)'
      '      FROM PASSAPORT P'
      '      JOIN PASSAPORT_ITEMS I ON P.C_ITEM = I.C_ITEM'
      '      WHERE P.C_HISTORIA=:C_HISTORIA'
      '      AND   P.ACTIU='#39'S'#39
      '      AND   P.ANULAT='#39'N'#39
      '      ORDER BY I.ORDRE, P.DATA'
      
        '      INTO :C_ITEM_ACT, :N_ITEM_ACT, :TEXTOS, :TEXTOS_LEN, :N_IT' +
        'EM_ACT_LEN'
      '      DO BEGIN'
      '          IF (C_ITEM_ACT <> C_ITEM_ANT) THEN'
      '          BEGIN'
      '              N_ITEM = N_ITEM_ANT;'
      
        '              /* M'#237'nim 2 l'#237'nies pels '#237'tems amb descriptiu llarg ' +
        '*/'
      
        '              IF ((N_ITEM_ANT_LEN > 55) AND (LINIES = 1)) THEN L' +
        'INIES = 2;'
      '              SUSPEND;'
      '              TEXT = '#39#39'; TEXT_LEN = 0; LINIES = 0;'
      '              NUM_ITEMS = NUM_ITEMS + 1;'
      '          END;'
      '      '
      '          IF (NUM_ITEMS = 0) THEN'
      '          BEGIN'
      '              TEXT = TEXTOS || F_NLine();'
      '              TEXT_LEN = TEXTOS_LEN;'
      '              LINIES = 1;'
      
        '              /*LINIES = F_TRUNCAR(F_MAXIMBVG((TEXT_LEN/500),1))' +
        ';*/'
      '              C_ITEM_ANT = C_ITEM_ACT;'
      '              N_ITEM_ANT = N_ITEM_ACT;'
      '              N_ITEM_ANT_LEN = N_ITEM_ACT_LEN;'
      '              NUM_ITEMS = 1;'
      '          END'
      '          ELSE BEGIN'
      '              TEXT_LEN = TEXT_LEN + TEXTOS_LEN + 1;'
      '              LINIES = LINIES + 1;'
      ''
      '              IF (TEXT_LEN > 29990)'
      '              THEN BEGIN'
      '                  TEXT = F_LEFT(TEXT || TEXTOS, 29990) || '#39'...'#39';'
      '                  /*LINIES = 60;*/'
      '              END'
      '              ELSE BEGIN'
      '                  TEXT = TEXT || TEXTOS || '#39' '#39' || F_NLine();'
      
        '                  /*LINIES = F_TRUNCAR(F_MAXIMBVG((TEXT_LEN/500)' +
        ',1));*/'
      '              END;'
      '          END;'
      '          C_ITEM_ANT = C_ITEM_ACT;'
      '          N_ITEM_ANT = N_ITEM_ACT;'
      '          N_ITEM_ANT_LEN = N_ITEM_ACT_LEN;'
      '      END;'
      '      '
      '      /* '#218'ltim registre */'
      '      N_ITEM = N_ITEM_ANT;'
      '      SUSPEND;'
      'END'
      ''
      '')
    Dic1 = Passaport
    Dic2 = Passaport_Items
    Dic1Name = 'Passaport'
    Dic2Name = 'Passaport_Items'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 769
    Top = 464
  end
  object P_REC_Alt: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'REC_Alt'
    ForceNombreDB = False
    Body.Strings = (
      '(E_COORD VARCHAR(5))'
      ' RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  NOMCOMPLET      VARCHAR(80),'
      '  SEXE            CHAR(1),'
      '  EDAT            INTEGER,'
      '  DATA_INGRES     DATE,'
      '  DATA_ALTA       DATE,'
      '  C_COORDINADOR   VARCHAR(5),'
      '  C_ESTAT         INTEGER,'
      '  N_ESTAT         VARCHAR(40),'
      '  DATA            DATE,'
      '  INFO            VARCHAR(3000)'
      ')'
      'AS'
      'BEGIN'
      '      /* Pacients ingressats amb REC elevat */'
      ''
      
        '      FOR SELECT DISTINCT T.C_HISTORIA, F.NOMCOMPLET, F.SEXO, F.' +
        'EDAT, T.DATA_INGRES, Coalesce(DATA_ALTA, DATA_PREALTA), T.C_COOR' +
        'DINADOR'
      '          FROM   TRACTAMENTS T'
      '          JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '          WHERE  T.C_PRESTACIO = '#39'1004'#39
      '          AND   (T.DATA_ALTA >= "TODAY" OR T.DATA_ALTA IS NULL)'
      '          AND   (T.C_COORDINADOR = :E_COORD OR :E_COORD IS NULL)'
      
        '          INTO  :C_HISTORIA, :NOMCOMPLET, :SEXE, :EDAT, :DATA_IN' +
        'GRES, :DATA_ALTA, :C_COORDINADOR'
      '      DO BEGIN'
      ''
      '            C_ESTAT = 0;'
      '            N_ESTAT = NULL;'
      '            DATA = NULL;'
      '            INFO = NULL;'
      ''
      '            /* Busquem l'#39#250'ltim REC registrat */'
      '            SELECT S.C_ESTAT, E.N_ESTAT, S.DATA, S.INFO'
      '            FROM   SEMAFORS S'
      
        '            JOIN   SEMAFORS_ESTATS E ON S.C_ESTAT = E.C_ESTAT AN' +
        'D S.TIPUS = E.TIPUS'
      '            WHERE  S.C_HISTORIA = :C_HISTORIA'
      '            AND    S.TIPUS = "REC"'
      '            AND    S.ANULAT = "N"'
      '            AND    S.C_ESTAT IS NOT NULL'
      '            ORDER  BY DATA DESC, DATA_REG DESC'
      '            ROWS   1'
      '            INTO  :C_ESTAT, :N_ESTAT, :DATA, :INFO;'
      ''
      '            /* Si '#233's alt (>= 5), retornem el registre */'
      '            IF (C_ESTAT >= 5) THEN SUSPEND;'
      '      END'
      'END'
      ''
      '')
    Dic1 = Semafors
    Dic1Name = 'Sem'#224'fors'
    Abierta = False
    Borrame = False
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
    Top = 680
  end
  object P_Semafors_RECActius: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RECActius'
    ForceNombreDB = False
    Body.Strings = (
      ' RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  NOMCOMPLET      VARCHAR(80),'
      '  SEXE            CHAR(1),'
      '  EDAT            INTEGER,'
      '  C_ESTAT         INTEGER,'
      '  N_ESTAT         VARCHAR(40),'
      '  ACTIU           CHAR(1),'
      '  DATA            DATE,'
      '  DATA_REG        DATE,'
      '  USUARI_REG      VARCHAR(5),'
      '  ID_REGINFER     INTEGER,'
      '  INFO            VARCHAR(3000),'
      '  C_PRESTACIO     VARCHAR(4),'
      '  C_COORDINADOR   VARCHAR(5),'
      '  DATA_INGRES     DATE,'
      '  DATA_ALTA    DATE,'
      '  C_TRACTAMENT    INTEGER'
      ')'
      'AS'
      ' DECLARE VARIABLE TROBAT SMALLINT;'
      'BEGIN'
      
        '      /* ESTAT ACTUAL DEL SEM'#192'FOR REC PER ALS PACIENTS HOSPITALI' +
        'TZATS */'
      ''
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPLET, F.S' +
        'EXO, F.EDAT, T.C_PRESTACIO, T.C_COORDINADOR, T.DATA_INGRES, COAL' +
        'ESCE(T.DATA_ALTA, T.DATA_PREALTA)'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   CODICAMPS X ON X.TIPUSCODI = "ESTATFACTU" AND T' +
        '.C_ESTATFAC = X.C_CODI AND X.R_CODI <> 9'
      '          JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '          JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO A' +
        'ND P.TIPUS = 1'
      '          WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :SEXE, ' +
        ':EDAT, :C_PRESTACIO, :C_COORDINADOR, :DATA_INGRES, :DATA_ALTA'
      '      DO BEGIN'
      '            C_ESTAT = 0;'
      '            N_ESTAT = NULL;'
      '            ACTIU = NULL;'
      '            DATA = NULL;'
      '            INFO = NULL;'
      '            ID_REGINFER = NULL;'
      '            DATA_REG = NULL;'
      '            USUARI_REG = NULL;'
      ''
      '            /* '#218'ltim estat REC */'
      '            SELECT S.C_ESTAT, E.N_ESTAT, E.ACTIU'
      '            FROM   SEMAFORS S'
      
        '            JOIN   SEMAFORS_ESTATS E ON S.C_ESTAT = E.C_ESTAT AN' +
        'D S.TIPUS = E.TIPUS'
      '            WHERE  S.C_HISTORIA = :C_HISTORIA'
      '            AND    S.TIPUS = "REC"'
      '            AND    S.ANULAT = "N"'
      '            AND    S.C_ESTAT IS NOT NULL'
      '            ORDER  BY S.DATA DESC, S.DATA_REG DESC'
      '            ROWS   1'
      '            INTO  :C_ESTAT, :N_ESTAT, :ACTIU;'
      ''
      '            /* '#218'ltima INFO REC */'
      '            SELECT DATA, INFO, ID_REGINFER, DATA_REG, USUARI_REG'
      '            FROM   SEMAFORS S'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    TIPUS = "REC"'
      '            AND    ANULAT = "N"'
      '            ORDER  BY DATA DESC, DATA_REG DESC'
      '            ROWS   1'
      
        '            INTO  :DATA, :INFO, :ID_REGINFER, :DATA_REG, :USUARI' +
        '_REG;'
      ''
      ''
      '            SUSPEND;'
      '      END'
      'END'
      ''
      '')
    Dic1 = Semafors
    Dic1Name = 'Sem'#224'fors'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 826
    Top = 624
  end
end
