object wDataEscales: TwDataEscales
  OldCreateOrder = False
  Left = 233
  Top = 174
  Height = 703
  Width = 1020
  object Escales: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Escala'
        NombreDB = 'C_Escala'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resum'
        NombreDB = 'R_Escala'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'N Escala'
        NombreDB = 'N_Escala'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'N Grup'
        NombreDB = 'N_Grup'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Taula'
        NombreDB = 'Taula'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Codi'
        NombreDB = 'Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Escala')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Escala'
        NombreDB = 'Escala'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N Escala')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grup'
        NombreDB = 'Grup'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Grup'
          'C Escala')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escales'
    NombreTabla = 'Escales'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Escala'
      'Resum'
      'N Escala'
      'C Grup'
      'N Grup')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659114583
    Left = 32
    Top = 16
  end
  object EscalesCap: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Clau'
        NombreDB = 'Clau'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_ESCALESCAP'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Escala'
        NombreDB = 'C_Escala'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'escales'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tractaments'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Num Hist'#242'ria'
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
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'Usuari'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Entrada'
        NombreDB = 'C_Entrada'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Anul'#183'lat'
        NombreDB = 'Anulat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Anul'#183'lat: S / N,  R:resident,  D: denegat, V: no valorable'
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
      end
      item
        Aplica = kcCaracter
        Nombre = 'Validador'
        NombreDB = 'C_Validador'
        Longitud = 5
        Consulta = 'validador'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data validat'
        NombreDB = 'Data_Validat'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'I: ingr'#233's, C: continuaci'#243', A: alta, S: seguiment'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data administraci'#243
        NombreDB = 'Data_Adm'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'data (i hora opcional) en qu'#232' s'#39'ha passat l'#39'escala'
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'Pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiPrimario
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
          'Data')
        Tipo = tiSecundario
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
          'Num Hist'#242'ria')
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
        UpOnCascade = True
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
        Nombre = 'Escala'
        NombreDB = 'Escala'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C Escala')
        Tipo = tiForaneo
        ForaneoDic = Escales
        ForaneoCampos.Strings = (
          'C Escala')
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
          'Validador')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
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
          'Usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataAdm'
        NombreDB = 'DataAdm'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data administraci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'escales'
        Master = Escales
        BuscaOrigen.Strings = (
          'C Escala')
        CopiarOrigen.Strings = (
          'C Escala')
        CopiarMaster.Strings = (
          'C Escala')
        BuscaMaster.Strings = (
          'C Escala')
      end
      item
        Nombre = 'tractaments'
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
        Nombre = 'validador'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Validador')
        CopiarOrigen.Strings = (
          'Validador')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Escales Cap'#231'alera'
    NombreTabla = 'EscalesCap'
    Organiza = tbBase
    CamposVer.Strings = (
      'Clau'
      'C Escala'
      'Tractament'
      'Num Hist'#242'ria'
      'Data'
      'Usuari'
      'C Entrada'
      'Anul'#183'lat'
      'Data anul'#183'lat'
      'Validador'
      'Data validat'
      'Tipus'
      'Data administraci'#243)
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659130787
    Left = 32
    Top = 204
  end
  object EscalesLin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Clau'
        NombreDB = 'Clau'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTAOBJCODIGRUP'
        Comentario = 'Per relacionar-lo amb la cap'#231'alera d'#39'escales'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Item'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'items'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'Codi de l'#39#237'tem. Est'#224' a EscalesItems'
      end
      item
        Aplica = kcMODELS
        Nombre = 'D Item'
        NombreDB = 'D_Item'
        Longitud = 15
        zType = tcIB_Char
        zNotNull = True
        zDefault = '***'
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'C_Grup'
        Comentario = 'valoracio, "dato", que s'#39'agafa de codicampsalfa'
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'Pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Clau'
          'C Item')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Clau'
        NombreDB = 'Clau'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'items'
        Master = EscalesItems
        BuscaOrigen.Strings = (
          'C Item')
        CopiarOrigen.Strings = (
          'C Item')
        CopiarMaster.Strings = (
          'C Item')
        BuscaMaster.Strings = (
          'C Item')
      end>
    Nombre = 'Escales L'#237'nies'
    NombreTabla = 'EscalesLin'
    Organiza = tbBase
    CamposVer.Strings = (
      'Clau'
      'C Item'
      'D Item')
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 3
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659933796
    Left = 32
    Top = 260
  end
  object EscalesCap_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '  IF (USER <> "REPLICATOR") THEN'
      '  BEGIN'
      
        '      IF (NEW.CLAU IS NULL) THEN NEW.CLAU = Gen_ID(G_ESCALESCAP,' +
        ' 1);'
      '  END'
      'END')
    Dic1 = EscalesCap
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
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 108
    Top = 204
  end
  object EscalesItems: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Item'
        NombreDB = 'C_Item'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_ESCALESITEMS'
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
        AutoContador.Campo = 'C Escala'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Escala'
        NombreDB = 'C_Escala'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Escales'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'N Item'
        NombreDB = 'N_Item'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = #192'rea Usuari'
        NombreDB = 'Area_Usuari'
        Longitud = 3
        Consulta = 'Arees'
        zType = tcIB_Char
        zNotNull = True
        zDefault = '***'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N Item2'
        NombreDB = 'N_Item2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Bolcar a informe'
        NombreDB = 'Bolca'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'escala'
        NombreDB = 'escala'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C Escala')
        Tipo = tiForaneo
        ForaneoDic = Escales
        ForaneoCampos.Strings = (
          'C Escala')
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
          #192'rea Usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Areas
        ForaneoCampos.Strings = (
          'C'#243'di Area')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'codi'
        NombreDB = 'codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Item')
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
          'C Escala'
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Arees'
        Master = wDataBasics.Areas
        BuscaOrigen.Strings = (
          #192'rea Usuari')
        CopiarOrigen.Strings = (
          #192'rea Usuari')
        CopiarMaster.Strings = (
          'C'#243'di Area')
        BuscaMaster.Strings = (
          'C'#243'di Area')
        WhereFiltro = 'areas.c_area <> "***"'
      end
      item
        Nombre = 'Escales'
        Master = Escales
        BuscaOrigen.Strings = (
          'C Escala')
        CopiarOrigen.Strings = (
          'C Escala')
        CopiarMaster.Strings = (
          'C Escala')
        BuscaMaster.Strings = (
          'C Escala')
      end>
    Nombre = 'Escales Items Codis'
    NombreTabla = 'EscalesItems'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Item'
      'N Item'
      'Ordre'
      'C Escala'
      #192'rea Usuari'
      'Tipus'
      'Bolcar a informe')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 3
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659948264
    Left = 102
    Top = 16
  end
  object EscalesPresta: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Escala'
        NombreDB = 'c_escala'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'C Prestaci'#243
        NombreDB = 'c_prestacio'
        Longitud = 10
        zType = tcIB_Char
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTAOBJCODIITEM'
      end>
    Indices = <
      item
        Nombre = 'id'
        NombreDB = 'id'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Escala'
          'C Prestaci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'escala'
        NombreDB = 'escala'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Escala')
        Tipo = tiForaneo
        ForaneoDic = Escales
        ForaneoCampos.Strings = (
          'C Escala')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'prestacio'
        NombreDB = 'prestacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Prestaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escales Prestacions'
    NombreTabla = 'EscalesPresta'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Escala'
      'C Prestaci'#243)
    IndiceVer = 'id'
    Navegar = False
    Nivel = 3
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659953704
    Left = 296
    Top = 16
  end
  object EscalesVTRS: TDic
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
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'grup'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'C Valoraci'#243
        NombreDB = 'c_valoracio'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'N Valoraci'#243
        NombreDB = 'n_valoracio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTAOBJCODIITEM'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'id'
        NombreDB = 'id'
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
        Nombre = 'unic'
        NombreDB = 'unic'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Grup'
          'Ordre')
        Tipo = tiSecundario
        Unico = True
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escales Valoracions Treball Social'
    NombreTabla = 'ESCALESVTRS'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Valoraci'#243
      'N Valoraci'#243)
    IndiceVer = 'unic'
    Navegar = False
    Nivel = 2
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.465989213
    Left = 104
    Top = 544
  end
  object EscalesTRS: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Clau'
        NombreDB = 'Clau'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_ESCALESCAP'
      end
      item
        Aplica = kcMODELS
        Nombre = 'NIVELL D'#39'ESTUDIS'
        NombreDB = 'Estudis'
        Longitud = 5
        Consulta = 'estudis'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITUACI'#211' LABORAL ABANS DE LA LESI'#211
        NombreDB = 'SitLabA1'
        Longitud = 5
        Consulta = 'sitlaba1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITLABA2'
        NombreDB = 'SitLabA2'
        Longitud = 5
        Consulta = 'sitlaba2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITLABA3'
        NombreDB = 'SitLabA3'
        Longitud = 5
        Consulta = 'sitlaba3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITLABAON'
        NombreDB = 'SitLabAOn'
        Longitud = 5
        Consulta = 'sitlabaon'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITLABAQ'
        NombreDB = 'SitLabAQ'
        Longitud = 5
        Consulta = 'sitlabaq'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITUACI'#211' LABORAL DESP'#201'S DE LA LESI'#211
        NombreDB = 'SitLabD1'
        Longitud = 5
        Consulta = 'sitlabd1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITLABD2'
        NombreDB = 'SitLabD2'
        Longitud = 5
        Consulta = 'sitlabd2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITLABD3'
        NombreDB = 'SitLabD3'
        Longitud = 5
        Consulta = 'sitlabd3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITLABDON'
        NombreDB = 'SitLabDOn'
        Longitud = 5
        Consulta = 'sitlabdon'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SITLABDQ'
        NombreDB = 'SitLabDQ'
        Longitud = 5
        Consulta = 'sitlabdq'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'RESID'#200'NCIA HABITUAL'
        NombreDB = 'ResiHab'
        Longitud = 5
        Consulta = 'resihab'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABITATGE A L'#39'ALTA'
        NombreDB = 'HabiAlta1'
        Longitud = 5
        Consulta = 'habialta1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIALTA2'
        NombreDB = 'HabiAlta2'
        Longitud = 5
        Consulta = 'habialta2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIALTA3'
        NombreDB = 'HabiAlta3'
        Longitud = 5
        Consulta = 'habialta3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABITATGE ACTUAL'
        NombreDB = 'HabiActu1'
        Longitud = 5
        Consulta = 'habiactu1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIACTU2'
        NombreDB = 'HabiActu2'
        Longitud = 5
        Consulta = 'habiactu2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIACTU3'
        NombreDB = 'HabiActu3'
        Longitud = 5
        Consulta = 'habiactu3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SUBSIDI / PENSI'#211
        NombreDB = 'Subsidi1'
        Longitud = 5
        Consulta = 'subsidi1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SUBSIDI2'
        NombreDB = 'Subsidi2'
        Longitud = 5
        Consulta = 'subsidi2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SUBSIDI3'
        NombreDB = 'Subsidi3'
        Longitud = 5
        Consulta = 'subsidi3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ACTIVITATS'
        NombreDB = 'Activitats1'
        Longitud = 5
        Consulta = 'activitats1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ACTIVITATS2'
        NombreDB = 'Activitats2'
        Longitud = 5
        Consulta = 'activitats2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ACTIVITATS3'
        NombreDB = 'Activitats3'
        Longitud = 5
        Consulta = 'activitats3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ACCESSIBILITAT'
        NombreDB = 'Access'
        Longitud = 5
        Consulta = 'access'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'INTERIOR VIVENDA'
        NombreDB = 'Interior'
        Longitud = 5
        Consulta = 'interior'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'MOBILITAT'
        NombreDB = 'Mobilitat1'
        Longitud = 5
        Consulta = 'mobilitat1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'MOBILITAT2'
        NombreDB = 'Mobilitat2'
        Longitud = 5
        Consulta = 'mobilitat2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'MOBILITAT3'
        NombreDB = 'Mobilitat3'
        Longitud = 5
        Consulta = 'mobilitat3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVIV'#200'NCIA A L'#39'INGR'#201'S'
        NombreDB = 'ConvIngre1'
        Longitud = 5
        Consulta = 'convingre1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVINGRE2'
        NombreDB = 'ConvIngre2'
        Longitud = 5
        Consulta = 'convingre2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVINGRE3'
        NombreDB = 'ConvIngre3'
        Longitud = 5
        Consulta = 'convingre3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVIV'#200'NCIA A L'#39'ALTA'
        NombreDB = 'ConvAlta1'
        Longitud = 5
        Consulta = 'convalta1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVALTA2'
        NombreDB = 'ConvAlta2'
        Longitud = 5
        Consulta = 'convalta2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVALTA3'
        NombreDB = 'ConvAlta3'
        Longitud = 5
        Consulta = 'convalta3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SERVEIS QUE UTILITZA'
        NombreDB = 'Serveis1'
        Longitud = 5
        Consulta = 'serveis1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SERVEIS2'
        NombreDB = 'Serveis2'
        Longitud = 5
        Consulta = 'serveis2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SERVEIS3'
        NombreDB = 'Serveis3'
        Longitud = 5
        Consulta = 'serveis3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'FIGURA ASSISTENCIAL'
        NombreDB = 'FigAssist1'
        Longitud = 5
        Consulta = 'figassist1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'FIGASSIST2'
        NombreDB = 'FigAssist2'
        Longitud = 5
        Consulta = 'figassist2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'FIGASSIST3'
        NombreDB = 'FigAssist3'
        Longitud = 5
        Consulta = 'figassist3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'TIPUS ESCOLARITAT'
        NombreDB = 'Escola_i'
        Longitud = 5
        Consulta = 'escola_i'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ESTUDIS EN CURS'
        NombreDB = 'Estudis_i'
        Longitud = 5
        Consulta = 'estudis_i'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVIV'#200'NCIA A L'#39'INGR'#201'S I'
        NombreDB = 'ConvIngre_i1'
        Longitud = 5
        Consulta = 'convingre_i1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVINGRE_I2'
        NombreDB = 'ConvIngre_i2'
        Longitud = 5
        Consulta = 'convingre_i2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVINGRE_I3'
        NombreDB = 'ConvIngre_i3'
        Longitud = 5
        Consulta = 'convingre_i3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVIV'#200'NCIA A L'#39'ALTA I'
        NombreDB = 'ConvAlta_i1'
        Longitud = 5
        Consulta = 'convalta_i1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVALTA_I2'
        NombreDB = 'ConvAlta_i2'
        Longitud = 5
        Consulta = 'convalta_i2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVALTA_I3'
        NombreDB = 'ConvAlta_i3'
        Longitud = 5
        Consulta = 'convalta_i3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'RESID'#200'NCIA HABITUAL I'
        NombreDB = 'ResiHab_i'
        Longitud = 5
        Consulta = 'resihab_i'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABITATGE A L'#39'ALTA I'
        NombreDB = 'HabiAlta_i1'
        Longitud = 5
        Consulta = 'habialta_i1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIALTA_I2'
        NombreDB = 'HabiAlta_i2'
        Longitud = 5
        Consulta = 'habialta_i2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIALTA_I3'
        NombreDB = 'HabiAlta_i3'
        Longitud = 5
        Consulta = 'habialta_i3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABITATGE ACTUAL I'
        NombreDB = 'HabiActu_i'
        Longitud = 5
        Consulta = 'habiactu_i1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIACTU_I2'
        NombreDB = 'HabiActu_i2'
        Longitud = 5
        Consulta = 'habiactu_i2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIACTU_I3'
        NombreDB = 'HabiActu_i3'
        Longitud = 5
        Consulta = 'habiactu_i3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SUBSIDI / PENSI'#211' I'
        NombreDB = 'Subsidi_i'
        Longitud = 5
        Consulta = 'subsidi_i'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SUBSIDI_I2'
        NombreDB = 'Subsidi_i2'
        Longitud = 5
        Consulta = 'subsidi_i2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SUBSIDI_I3'
        NombreDB = 'Subsidi_i3'
        Longitud = 5
        Consulta = 'subsidi_i3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'MOBILITAT I'
        NombreDB = 'Mobilitat_i'
        Longitud = 5
        Consulta = 'mobilitat_i'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ACTIVITATS I'
        NombreDB = 'Activitats_i1'
        Longitud = 5
        Consulta = 'activitats_i1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ACTIVITATS_I2'
        NombreDB = 'Activitats_i2'
        Longitud = 5
        Consulta = 'activitats_i2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ACTIVITATS_I3'
        NombreDB = 'Activitats_i3'
        Longitud = 5
        Consulta = 'activitats_i3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'FIGURA ASSISTENCIAL I'
        NombreDB = 'FigAssist_i1'
        Longitud = 5
        Consulta = 'figassist_i1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'FIGASSIST_I2'
        NombreDB = 'FigAssist_i2'
        Longitud = 5
        Consulta = 'figassist_i2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'FIGASSIST_I3'
        NombreDB = 'FigAssist_i3'
        Longitud = 5
        Consulta = 'figassist_i3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'DEDICACIO'
        NombreDB = 'Dedicacio'
        Longitud = 5
        Consulta = 'dedicacio'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ANOTACIO'
        NombreDB = 'Anotacio'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'DEDICACIO2'
        NombreDB = 'Dedicacio2'
        Longitud = 5
        Consulta = 'dedicacio2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'DEDICACIO3'
        NombreDB = 'Dedicacio3'
        Longitud = 5
        Consulta = 'dedicacio3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ESCOLA_IV2'
        NombreDB = 'ESCOLA_IV2'
        Longitud = 5
        Consulta = 'escola_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ESTUDIS_IV2'
        NombreDB = 'ESTUDIS_IV2'
        Longitud = 5
        Consulta = 'estudis_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVINGRE_IV2'
        NombreDB = 'CONVINGRE_IV2'
        Longitud = 5
        Consulta = 'convingre_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVALTA_IV2'
        NombreDB = 'CONVALTA_IV2'
        Longitud = 5
        Consulta = 'convalta_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIINGRE_IV2'
        NombreDB = 'HABIINGRE_IV2'
        Longitud = 5
        Consulta = 'habiingre_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HABIALTA_IV2'
        NombreDB = 'HABIALTA_IV2'
        Longitud = 5
        Consulta = 'habialta_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ACCES_IV2'
        NombreDB = 'ACCES_IV2'
        Longitud = 5
        Consulta = 'acces_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SUBSIDI_IV2'
        NombreDB = 'SUBSIDI_IV2'
        Longitud = 5
        Consulta = 'subsidi_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'MOBILITAT_IV2'
        NombreDB = 'MOBILITAT_IV2'
        Longitud = 5
        Consulta = 'mobilitat_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SUPAUT_IV2'
        NombreDB = 'SUPAUT_IV2'
        Longitud = 5
        Consulta = 'supaut_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SADEDI_IV2'
        NombreDB = 'SADEDI_IV2'
        Longitud = 5
        Consulta = 'sadedi_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'VALORA_IV2'
        NombreDB = 'VALORA_IV2'
        Longitud = 5
        Consulta = 'valora_iv2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Concedit PIA?'
        NombreDB = 'PIA_IV2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA1'
        NombreDB = 'PIA1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA2'
        NombreDB = 'PIA2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA3'
        NombreDB = 'PIA3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA4'
        NombreDB = 'PIA4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA5'
        NombreDB = 'PIA5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA6'
        NombreDB = 'PIA6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA7'
        NombreDB = 'PIA7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA8'
        NombreDB = 'PIA8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PIA9'
        NombreDB = 'PIA9'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Refor'#231' escolar'
        NombreDB = 'ACT1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Esport'
        NombreDB = 'ACT2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Altres activitats extraescolars '
        NombreDB = 'ACT3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Exercicis de manteniment '
        NombreDB = 'ACT4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Participar en associacions de persones amb discapacitat '
        NombreDB = 'ACT5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Esplais, Casals'#8230' '
        NombreDB = 'ACT6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Sortides familiars '
        NombreDB = 'ACT7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hobbies'
        NombreDB = 'ACT8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'Pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'estudis'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'NIVELL D'#39'ESTUDIS')
        CopiarOrigen.Strings = (
          'NIVELL D'#39'ESTUDIS')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 1'
        ValidateValue = True
      end
      item
        Nombre = 'sitlaba1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITUACI'#211' LABORAL ABANS DE LA LESI'#211)
        CopiarOrigen.Strings = (
          'SITUACI'#211' LABORAL ABANS DE LA LESI'#211)
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 2'
        ValidateValue = True
      end
      item
        Nombre = 'sitlaba2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITLABA2')
        CopiarOrigen.Strings = (
          'SITLABA2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 2'
        ValidateValue = True
      end
      item
        Nombre = 'sitlaba3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITLABA3')
        CopiarOrigen.Strings = (
          'SITLABA3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 2'
        ValidateValue = True
      end
      item
        Nombre = 'sitlabaon'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITLABAON')
        CopiarOrigen.Strings = (
          'SITLABAON')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 3'
        ValidateValue = True
      end
      item
        Nombre = 'sitlabaq'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITLABAQ')
        CopiarOrigen.Strings = (
          'SITLABAQ')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 4'
        ValidateValue = True
      end
      item
        Nombre = 'sitlabd1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITUACI'#211' LABORAL DESP'#201'S DE LA LESI'#211)
        CopiarOrigen.Strings = (
          'SITUACI'#211' LABORAL DESP'#201'S DE LA LESI'#211)
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 2'
        ValidateValue = True
      end
      item
        Nombre = 'sitlabd2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITLABD2')
        CopiarOrigen.Strings = (
          'SITLABD2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 2'
        ValidateValue = True
      end
      item
        Nombre = 'sitlabd3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITLABD3')
        CopiarOrigen.Strings = (
          'SITLABD3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 2'
        ValidateValue = True
      end
      item
        Nombre = 'sitlabdon'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITLABDON')
        CopiarOrigen.Strings = (
          'SITLABDON')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 3'
        ValidateValue = True
      end
      item
        Nombre = 'sitlabdq'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SITLABDQ')
        CopiarOrigen.Strings = (
          'SITLABDQ')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 4'
        ValidateValue = True
      end
      item
        Nombre = 'resihab'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'RESID'#200'NCIA HABITUAL')
        CopiarOrigen.Strings = (
          'RESID'#200'NCIA HABITUAL')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 5'
        ValidateValue = True
      end
      item
        Nombre = 'habialta1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABITATGE A L'#39'ALTA')
        CopiarOrigen.Strings = (
          'HABITATGE A L'#39'ALTA')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 6'
        ValidateValue = True
      end
      item
        Nombre = 'habialta2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIALTA2')
        CopiarOrigen.Strings = (
          'HABIALTA2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 6'
        ValidateValue = True
      end
      item
        Nombre = 'habialta3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIALTA3')
        CopiarOrigen.Strings = (
          'HABIALTA3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 6'
        ValidateValue = True
      end
      item
        Nombre = 'habiactu1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABITATGE ACTUAL')
        CopiarOrigen.Strings = (
          'HABITATGE ACTUAL')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 7'
        ValidateValue = True
      end
      item
        Nombre = 'habiactu2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIACTU2')
        CopiarOrigen.Strings = (
          'HABIACTU2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 7'
        ValidateValue = True
      end
      item
        Nombre = 'habiactu3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIACTU3')
        CopiarOrigen.Strings = (
          'HABIACTU3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 7'
        ValidateValue = True
      end
      item
        Nombre = 'subsidi1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SUBSIDI / PENSI'#211)
        CopiarOrigen.Strings = (
          'SUBSIDI / PENSI'#211)
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 9'
        ValidateValue = True
      end
      item
        Nombre = 'subsidi2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SUBSIDI2')
        CopiarOrigen.Strings = (
          'SUBSIDI2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 9'
        ValidateValue = True
      end
      item
        Nombre = 'subsidi3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SUBSIDI3')
        CopiarOrigen.Strings = (
          'SUBSIDI3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 9'
        ValidateValue = True
      end
      item
        Nombre = 'activitats1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ACTIVITATS')
        CopiarOrigen.Strings = (
          'ACTIVITATS')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 8'
        ValidateValue = True
      end
      item
        Nombre = 'activitats2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ACTIVITATS2')
        CopiarOrigen.Strings = (
          'ACTIVITATS2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 8'
        ValidateValue = True
      end
      item
        Nombre = 'activitats3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ACTIVITATS3')
        CopiarOrigen.Strings = (
          'ACTIVITATS3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 8'
        ValidateValue = True
      end
      item
        Nombre = 'access'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ACCESSIBILITAT')
        CopiarOrigen.Strings = (
          'ACCESSIBILITAT')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 10'
        ValidateValue = True
      end
      item
        Nombre = 'interior'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'INTERIOR VIVENDA')
        CopiarOrigen.Strings = (
          'INTERIOR VIVENDA')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 11'
        ValidateValue = True
      end
      item
        Nombre = 'mobilitat1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'MOBILITAT')
        CopiarOrigen.Strings = (
          'MOBILITAT')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 12'
        ValidateValue = True
      end
      item
        Nombre = 'mobilitat2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'MOBILITAT2')
        CopiarOrigen.Strings = (
          'MOBILITAT2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 12'
        ValidateValue = True
      end
      item
        Nombre = 'mobilitat3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'MOBILITAT3')
        CopiarOrigen.Strings = (
          'MOBILITAT3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 12'
        ValidateValue = True
      end
      item
        Nombre = 'convingre1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVIV'#200'NCIA A L'#39'INGR'#201'S')
        CopiarOrigen.Strings = (
          'CONVIV'#200'NCIA A L'#39'INGR'#201'S')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 13'
        ValidateValue = True
      end
      item
        Nombre = 'convingre2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVINGRE2')
        CopiarOrigen.Strings = (
          'CONVINGRE2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 13'
        ValidateValue = True
      end
      item
        Nombre = 'convingre3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVINGRE3')
        CopiarOrigen.Strings = (
          'CONVINGRE3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 13'
        ValidateValue = True
      end
      item
        Nombre = 'convalta1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVIV'#200'NCIA A L'#39'ALTA')
        CopiarOrigen.Strings = (
          'CONVIV'#200'NCIA A L'#39'ALTA')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 13'
        ValidateValue = True
      end
      item
        Nombre = 'convalta2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVALTA2')
        CopiarOrigen.Strings = (
          'CONVALTA2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 13'
        ValidateValue = True
      end
      item
        Nombre = 'convalta3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVALTA3')
        CopiarOrigen.Strings = (
          'CONVALTA3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 13'
        ValidateValue = True
      end
      item
        Nombre = 'serveis1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SERVEIS QUE UTILITZA')
        CopiarOrigen.Strings = (
          'SERVEIS QUE UTILITZA')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 14'
        ValidateValue = True
      end
      item
        Nombre = 'serveis2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SERVEIS2')
        CopiarOrigen.Strings = (
          'SERVEIS2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 14'
        ValidateValue = True
      end
      item
        Nombre = 'serveis3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SERVEIS3')
        CopiarOrigen.Strings = (
          'SERVEIS3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 14'
        ValidateValue = True
      end
      item
        Nombre = 'figassist1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'FIGURA ASSISTENCIAL')
        CopiarOrigen.Strings = (
          'FIGURA ASSISTENCIAL')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 15'
        ValidateValue = True
      end
      item
        Nombre = 'figassist2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'FIGASSIST2')
        CopiarOrigen.Strings = (
          'FIGASSIST2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 15'
        ValidateValue = True
      end
      item
        Nombre = 'figassist3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'FIGASSIST3')
        CopiarOrigen.Strings = (
          'FIGASSIST3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 15'
        ValidateValue = True
      end
      item
        Nombre = 'escola_i'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'TIPUS ESCOLARITAT')
        CopiarOrigen.Strings = (
          'TIPUS ESCOLARITAT')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 16'
        ValidateValue = True
      end
      item
        Nombre = 'estudis_i'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ESTUDIS EN CURS')
        CopiarOrigen.Strings = (
          'ESTUDIS EN CURS')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 17'
        ValidateValue = True
      end
      item
        Nombre = 'convingre_i1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVIV'#200'NCIA A L'#39'INGR'#201'S I')
        CopiarOrigen.Strings = (
          'CONVIV'#200'NCIA A L'#39'INGR'#201'S I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 18'
        ValidateValue = True
      end
      item
        Nombre = 'convalta_i1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVIV'#200'NCIA A L'#39'ALTA I')
        CopiarOrigen.Strings = (
          'CONVIV'#200'NCIA A L'#39'ALTA I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 18'
        ValidateValue = True
      end
      item
        Nombre = 'resihab_i'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'RESID'#200'NCIA HABITUAL I')
        CopiarOrigen.Strings = (
          'RESID'#200'NCIA HABITUAL I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 19'
        ValidateValue = True
      end
      item
        Nombre = 'habialta_i1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABITATGE A L'#39'ALTA I')
        CopiarOrigen.Strings = (
          'HABITATGE A L'#39'ALTA I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 20'
        ValidateValue = True
      end
      item
        Nombre = 'habialta_i2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIALTA_I2')
        CopiarOrigen.Strings = (
          'HABIALTA_I2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 20'
        ValidateValue = True
      end
      item
        Nombre = 'habialta_i3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIALTA_I3')
        CopiarOrigen.Strings = (
          'HABIALTA_I3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 20'
        ValidateValue = True
      end
      item
        Nombre = 'habiactu_i1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABITATGE ACTUAL I')
        CopiarOrigen.Strings = (
          'HABITATGE ACTUAL I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 21'
        ValidateValue = True
      end
      item
        Nombre = 'habiactu_i2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIACTU_I2')
        CopiarOrigen.Strings = (
          'HABIACTU_I2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 21'
        ValidateValue = True
      end
      item
        Nombre = 'habiactu_i3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIACTU_I3')
        CopiarOrigen.Strings = (
          'HABIACTU_I3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 21'
        ValidateValue = True
      end
      item
        Nombre = 'subsidi_i'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SUBSIDI / PENSI'#211' I')
        CopiarOrigen.Strings = (
          'SUBSIDI / PENSI'#211' I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup =  22'
        ValidateValue = True
      end
      item
        Nombre = 'mobilitat_i'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'MOBILITAT I')
        CopiarOrigen.Strings = (
          'MOBILITAT I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 23'
        ValidateValue = True
      end
      item
        Nombre = 'activitats_i1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ACTIVITATS I')
        CopiarOrigen.Strings = (
          'ACTIVITATS I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 24'
        ValidateValue = True
      end
      item
        Nombre = 'activitats_i2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ACTIVITATS_I2')
        CopiarOrigen.Strings = (
          'ACTIVITATS_I2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 24'
        ValidateValue = True
      end
      item
        Nombre = 'activitats_i3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ACTIVITATS_I3')
        CopiarOrigen.Strings = (
          'ACTIVITATS_I3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 24'
        ValidateValue = True
      end
      item
        Nombre = 'figassist_i1'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'FIGURA ASSISTENCIAL I')
        CopiarOrigen.Strings = (
          'FIGURA ASSISTENCIAL I')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 25'
        ValidateValue = True
      end
      item
        Nombre = 'figassist_i2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'FIGASSIST_I2')
        CopiarOrigen.Strings = (
          'FIGASSIST_I2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 25'
        ValidateValue = True
      end
      item
        Nombre = 'figassist_i3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'FIGASSIST_I3')
        CopiarOrigen.Strings = (
          'FIGASSIST_I3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 25'
        ValidateValue = True
      end
      item
        Nombre = 'convingre_i2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVINGRE_I2')
        CopiarOrigen.Strings = (
          'CONVINGRE_I2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 18'
        ValidateValue = True
      end
      item
        Nombre = 'convingre_i3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVINGRE_I3')
        CopiarOrigen.Strings = (
          'CONVINGRE_I3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 18'
        ValidateValue = True
      end
      item
        Nombre = 'convalta_i2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVALTA_I2')
        CopiarOrigen.Strings = (
          'CONVALTA_I2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 18'
        ValidateValue = True
      end
      item
        Nombre = 'convalta_i3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVALTA_I3')
        CopiarOrigen.Strings = (
          'CONVALTA_I3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 18'
        ValidateValue = True
      end
      item
        Nombre = 'dedicacio'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'DEDICACIO')
        CopiarOrigen.Strings = (
          'DEDICACIO')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 26'
        ValidateValue = True
      end
      item
        Nombre = 'dedicacio2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'DEDICACIO2')
        CopiarOrigen.Strings = (
          'DEDICACIO2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 26'
        ValidateValue = True
      end
      item
        Nombre = 'dedicacio3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'DEDICACIO3')
        CopiarOrigen.Strings = (
          'DEDICACIO3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 26'
        ValidateValue = True
      end
      item
        Nombre = 'subsidi_i2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SUBSIDI_I2')
        CopiarOrigen.Strings = (
          'SUBSIDI_I2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 22'
        ValidateValue = True
      end
      item
        Nombre = 'subsidi_i3'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SUBSIDI_I3')
        CopiarOrigen.Strings = (
          'SUBSIDI_I3')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup = 22'
        ValidateValue = True
      end
      item
        Nombre = 'escola_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ESCOLA_IV2')
        CopiarOrigen.Strings = (
          'ESCOLA_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=27'
      end
      item
        Nombre = 'estudis_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ESTUDIS_IV2')
        CopiarOrigen.Strings = (
          'ESTUDIS_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=28'
      end
      item
        Nombre = 'convingre_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVINGRE_IV2')
        CopiarOrigen.Strings = (
          'CONVINGRE_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=29'
      end
      item
        Nombre = 'convalta_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'CONVALTA_IV2')
        CopiarOrigen.Strings = (
          'CONVALTA_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=29'
      end
      item
        Nombre = 'habiingre_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIINGRE_IV2')
        CopiarOrigen.Strings = (
          'HABIINGRE_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=30'
      end
      item
        Nombre = 'habialta_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'HABIALTA_IV2')
        CopiarOrigen.Strings = (
          'HABIALTA_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=31'
      end
      item
        Nombre = 'acces_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'ACCES_IV2')
        CopiarOrigen.Strings = (
          'ACCES_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=32'
      end
      item
        Nombre = 'subsidi_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SUBSIDI_IV2')
        CopiarOrigen.Strings = (
          'SUBSIDI_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=33'
      end
      item
        Nombre = 'mobilitat_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'MOBILITAT_IV2')
        CopiarOrigen.Strings = (
          'MOBILITAT_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=34'
      end
      item
        Nombre = 'supaut_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SUPAUT_IV2')
        CopiarOrigen.Strings = (
          'SUPAUT_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=35'
      end
      item
        Nombre = 'sadedi_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'SADEDI_IV2')
        CopiarOrigen.Strings = (
          'SADEDI_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=36'
      end
      item
        Nombre = 'valora_iv2'
        Master = EscalesVTRS
        BuscaOrigen.Strings = (
          'VALORA_IV2')
        CopiarOrigen.Strings = (
          'VALORA_IV2')
        CopiarMaster.Strings = (
          'C Valoraci'#243)
        BuscaMaster.Strings = (
          'C Valoraci'#243)
        WhereFiltro = 'grup=37'
      end>
    Nombre = 'Escales Treball Social'
    NombreTabla = 'EscalesTRS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Clau'
      'NIVELL D'#39'ESTUDIS'
      'SITUACI'#211' LABORAL ABANS DE LA LESI'#211
      'SITLABA2'
      'SITLABA3'
      'SITLABAON'
      'SITLABAQ'
      'SITUACI'#211' LABORAL DESP'#201'S DE LA LESI'#211
      'SITLABD2'
      'SITLABD3'
      'SITLABDON'
      'SITLABDQ'
      'RESID'#200'NCIA HABITUAL'
      'HABITATGE A L'#39'ALTA'
      'HABIALTA2'
      'HABIALTA3'
      'HABITATGE ACTUAL'
      'HABIACTU2'
      'HABIACTU3'
      'SUBSIDI / PENSI'#211
      'SUBSIDI2'
      'SUBSIDI3'
      'ACTIVITATS'
      'ACTIVITATS2'
      'ACTIVITATS3'
      'ACCESSIBILITAT'
      'INTERIOR VIVENDA'
      'MOBILITAT'
      'MOBILITAT2'
      'MOBILITAT3'
      'CONVIV'#200'NCIA A L'#39'INGR'#201'S'
      'CONVINGRE2'
      'CONVINGRE3'
      'CONVIV'#200'NCIA A L'#39'ALTA'
      'CONVALTA2'
      'CONVALTA3'
      'SERVEIS QUE UTILITZA'
      'SERVEIS2'
      'SERVEIS3'
      'FIGURA ASSISTENCIAL'
      'FIGASSIST2'
      'FIGASSIST3'
      'TIPUS ESCOLARITAT'
      'ESTUDIS EN CURS'
      'CONVIV'#200'NCIA A L'#39'INGR'#201'S I'
      'CONVINGRE_I2'
      'CONVINGRE_I3'
      'CONVIV'#200'NCIA A L'#39'ALTA I'
      'CONVALTA_I2'
      'CONVALTA_I3'
      'RESID'#200'NCIA HABITUAL I'
      'HABITATGE A L'#39'ALTA I'
      'HABIALTA_I2'
      'HABIALTA_I3'
      'HABITATGE ACTUAL I'
      'HABIACTU_I2'
      'HABIACTU_I3'
      'SUBSIDI / PENSI'#211' I'
      'MOBILITAT I'
      'ACTIVITATS I'
      'ACTIVITATS_I2'
      'ACTIVITATS_I3'
      'FIGURA ASSISTENCIAL I'
      'FIGASSIST_I2'
      'FIGASSIST_I3'
      'DEDICACIO'
      'ANOTACIO'
      'DEDICACIO2'
      'DEDICACIO3'
      'SUBSIDI_I2'
      'SUBSIDI_I3')
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37428.517684456
    Left = 32
    Top = 544
  end
  object CIQ: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Clau'
        NombreDB = 'Clau'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Activo = True
        AutoContador.Dic = CIQ
        AutoContador.Campo = 'clau'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Higiene personal'
        NombreDB = 'HigienePersonal'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'llar1'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Prepara esmorzar'
        NombreDB = 'PreparaEsmorzar'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'llar2'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tasques dom'#232'stiques'
        NombreDB = 'TasquesDomestiques'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'llar3'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Finances'
        NombreDB = 'Finances'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'llar4'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Planeja activitats'
        NombreDB = 'PlanejaActivitats'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'llar5'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Oci'
        NombreDB = 'Oci'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'oci'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Visites'
        NombreDB = 'Visites'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'visites'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Oci amb qui'
        NombreDB = 'OciAmb'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'ociqui'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Bon amic'
        NombreDB = 'BonAmic'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'amic'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Sortir'
        NombreDB = 'Sortir'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'sortir'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Situaci'#243' laboral'
        NombreDB = 'SituacioLaboral'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'laboral'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Formaci'#243
        NombreDB = 'Formacio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'formacio'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Voluntariat'
        NombreDB = 'Voluntariat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'voluntariat'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Compet'#232'ncia a la Llar'
        NombreDB = 'TotalLlar'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Integraci'#243' Social'
        NombreDB = 'TotalIntegracio'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Activitats Productives'
        NombreDB = 'TotalProductivitat'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Puntuaci'#243' Total CIQ'
        NombreDB = 'Total'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'clau'
        NombreDB = 'clau'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'llar1'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Higiene personal')
        CopiarOrigen.Strings = (
          'Higiene personal')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "LLAR"'
      end
      item
        Nombre = 'llar2'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Prepara esmorzar')
        CopiarOrigen.Strings = (
          'Prepara esmorzar')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "LLAR"'
      end
      item
        Nombre = 'llar3'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Tasques dom'#232'stiques')
        CopiarOrigen.Strings = (
          'Tasques dom'#232'stiques')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "LLAR"'
      end
      item
        Nombre = 'llar4'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Finances')
        CopiarOrigen.Strings = (
          'Finances')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "LLAR"'
      end
      item
        Nombre = 'llar5'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Planeja activitats')
        CopiarOrigen.Strings = (
          'Planeja activitats')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "LLAR"'
      end
      item
        Nombre = 'oci'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Oci')
        CopiarOrigen.Strings = (
          'Oci')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "INTEGRACI'#211' 1"'
      end
      item
        Nombre = 'visites'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Visites')
        CopiarOrigen.Strings = (
          'Visites')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "INTEGRACI'#211' 1"'
      end
      item
        Nombre = 'ociqui'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Oci amb qui')
        CopiarOrigen.Strings = (
          'Oci amb qui')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "INTEGRACI'#211' 2"'
      end
      item
        Nombre = 'amic'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Bon amic')
        CopiarOrigen.Strings = (
          'Bon amic')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "INTEGRACI'#211' 3"'
      end
      item
        Nombre = 'sortir'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Sortir')
        CopiarOrigen.Strings = (
          'Sortir')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "INTEGRACI'#211' 4"'
      end
      item
        Nombre = 'laboral'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Situaci'#243' laboral')
        CopiarOrigen.Strings = (
          'Situaci'#243' laboral')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "PRODUCTIVITAT 1"'
      end
      item
        Nombre = 'formacio'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Formaci'#243)
        CopiarOrigen.Strings = (
          'Formaci'#243)
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "PRODUCTIVITAT 2"'
      end
      item
        Nombre = 'voluntariat'
        Master = CIQValors
        BuscaOrigen.Strings = (
          'Voluntariat')
        CopiarOrigen.Strings = (
          'Voluntariat')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "PRODUCTIVITAT 3"'
      end>
    Nombre = 'CIQ-G'
    NombreTabla = 'EscCIQ'
    Organiza = tbBase
    CamposVer.Strings = (
      'Clau'
      'Higiene personal'
      'Prepara esmorzar'
      'Tasques dom'#232'stiques'
      'Finances'
      'Planeja activitats'
      'Oci'
      'Visites'
      'Oci amb qui'
      'Bon amic'
      'Sortir'
      'Situaci'#243' laboral'
      'Formaci'#243
      'Voluntariat'
      'Compet'#232'ncia a la Llar'
      'Integraci'#243' Social'
      'Activitats Productives'
      'Puntuaci'#243' Total CIQ')
    IndiceVer = 'clau'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 304
    Top = 544
  end
  object CIQValors: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CODI'
        NombreDB = 'CODI'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'DESCRIPCI'#211
        NombreDB = 'DESCRIPCIO'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'GRUP'
        NombreDB = 'GRUP'
        Longitud = 20
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'PUNTUACI'#211
        NombreDB = 'PUNTUACIO'
        Longitud = 1
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
          'GRUP'
          'CODI')
        Tipo = tiPrimario
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
          'GRUP')
        Tipo = tiSecundario
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
          'GRUP'
          'PUNTUACI'#211)
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end>
    Consultas = <>
    Nombre = 'CIQ-G Valoracions'
    NombreTabla = 'EscVCIQ'
    Organiza = tbBase
    CamposVer.Strings = (
      'CODI'
      'DESCRIPCI'#211
      'GRUP'
      'PUNTUACI'#211)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 352
    Top = 544
  end
  object EVSFValors: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CODI'
        NombreDB = 'CODI'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'DESCRIPCI'#211
        NombreDB = 'DESCRIPCIO'
        Longitud = 125
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'GRUP'
        NombreDB = 'GRUP'
        Longitud = 20
        zType = tcIB_Char
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
          'GRUP'
          'CODI')
        Tipo = tiPrimario
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
          'GRUP')
        Tipo = tiSecundario
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'EVSF Valoracions'
    NombreTabla = 'EscVEVSF'
    Organiza = tbBase
    CamposVer.Strings = (
      'CODI'
      'DESCRIPCI'#211
      'GRUP')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 234
    Top = 544
  end
  object EVSF: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Clau'
        NombreDB = 'Clau'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Activo = True
        AutoContador.Dic = EVSF
        AutoContador.Campo = 'clau'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Conviv'#232'ncia'
        NombreDB = 'Convivencia'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'convivencia'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Situaci'#243' econ'#242'mica'
        NombreDB = 'SituacioEconomica'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'economia'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Habitatge'
        NombreDB = 'Habitatge'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'habitatge'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Resposta entorn familiar'
        NombreDB = 'RespostaEntorn'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'suport'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Recolzament xarxa'
        NombreDB = 'RecolzamentXarxa'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'recolzament'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Puntuaci'#243' total'
        NombreDB = 'TOTAL'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'clau'
        NombreDB = 'clau'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'convivencia'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Conviv'#232'ncia')
        CopiarOrigen.Strings = (
          'Conviv'#232'ncia')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "CONVIVENCIA"'
      end
      item
        Nombre = 'economia'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Situaci'#243' econ'#242'mica')
        CopiarOrigen.Strings = (
          'Situaci'#243' econ'#242'mica')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "ECONOMIA"'
      end
      item
        Nombre = 'habitatge'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Habitatge')
        CopiarOrigen.Strings = (
          'Habitatge')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "HABITATGE"'
      end
      item
        Nombre = 'suport'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Resposta entorn familiar')
        CopiarOrigen.Strings = (
          'Resposta entorn familiar')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "SUPORT"'
      end
      item
        Nombre = 'recolzament'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Recolzament xarxa')
        CopiarOrigen.Strings = (
          'Recolzament xarxa')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "RECOLZAMENT"'
      end>
    Nombre = 'EVSF'
    NombreTabla = 'EscEVSF'
    Organiza = tbBase
    CamposVer.Strings = (
      'Clau'
      'Conviv'#232'ncia'
      'Situaci'#243' econ'#242'mica'
      'Habitatge'
      'Resposta entorn familiar'
      'Recolzament xarxa'
      'Puntuaci'#243' total')
    IndiceVer = 'clau'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 176
    Top = 544
  end
  object NALValors: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi '#205'tem'
        NombreDB = 'C_ITEM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Greu'
        NombreDB = 'GREU'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Moderada'
        NombreDB = 'MODERADA'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Lleu'
        NombreDB = 'LLEU'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Sense alteraci'#243
        NombreDB = 'NOALT'
        Longitud = 10
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
          'Codi '#205'tem')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'item'
        Master = EscalesItems
        BuscaOrigen.Strings = (
          'Codi '#205'tem')
        CopiarOrigen.Strings = (
          'Codi '#205'tem')
        CopiarMaster.Strings = (
          'C Item')
        BuscaMaster.Strings = (
          'C Item')
        WhereFiltro = 'C_ESCALA = 36'
      end>
    Nombre = 'NAL Valoracions'
    NombreTabla = 'EscVNAL'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi '#205'tem'
      'Greu'
      'Moderada'
      'Lleu'
      'Sense alteraci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 36
    Top = 436
  end
  object CNCValors: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi '#205'tem'
        NombreDB = 'C_ITEM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Par'#224'metre'
        NombreDB = 'PARAMETRE'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Est'#237'mul'
        NombreDB = 'ESTIMUL'
        Longitud = 105
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Intents'
        NombreDB = 'INTENTS'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resposta a mesurar'
        NombreDB = 'RESPOSTA'
        Longitud = 70
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Puntuaci'#243
        NombreDB = 'PUNTUACIO'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Criteris de puntuaci'#243
        NombreDB = 'CRITERIS'
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
          'Codi '#205'tem')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'item'
        Master = EscalesItems
        BuscaOrigen.Strings = (
          'Codi '#205'tem')
        CopiarOrigen.Strings = (
          'Codi '#205'tem')
        CopiarMaster.Strings = (
          'C Item')
        BuscaMaster.Strings = (
          'C Item')
        WhereFiltro = 'C_ESCALA = 45'
      end>
    Nombre = 'CNC Valoracions'
    NombreTabla = 'EscVCNC'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi '#205'tem'
      'Par'#224'metre'
      'Est'#237'mul'
      'Intents'
      'Resposta a mesurar'
      'Puntuaci'#243
      'Criteris de puntuaci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 605
  end
  object CNCVTotals: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'pk'
        NombreDB = 'pk'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell'
        NombreDB = 'C_NIVELL'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Rang'
        NombreDB = 'RANG'
        Longitud = 11
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Coma'
        NombreDB = 'COMA'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nivell de consci'#232'ncia/reactivitat'
        NombreDB = 'N_NIVELL'
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
          'pk')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'CNC Valoracions Totals'
    NombreTabla = 'EscVTCNC'
    Organiza = tbBase
    CamposVer.Strings = (
      'Nivell'
      'Rang'
      'Coma'
      'Nivell de consci'#232'ncia/reactivitat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 98
    Top = 605
  end
  object CIQVTotals: TDic
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
        Aplica = kcCaracter
        Nombre = 'ESCALA'
        NombreDB = 'ESCALA'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'RANG'
        NombreDB = 'RANG'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DESCRIPCI'#211
        NombreDB = 'DESCRIPCIO'
        Longitud = 70
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'CIQ-G Valoracions Totals'
    NombreTabla = 'EscVTCIQ'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'ESCALA'
      'RANG'
      'DESCRIPCI'#211)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 416
    Top = 544
  end
  object ESIG_1aV: TDic
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
        Aplica = kcMODELS
        Nombre = 'Estudis'
        NombreDB = 'Estudis'
        Longitud = 2
        Consulta = 'estudis'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Conviv'#232'ncia ingr'#233's'
        NombreDB = 'Convivencia_I'
        Longitud = 2
        Consulta = 'convivencia_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 8'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Conviv'#232'ncia alta'
        NombreDB = 'Convivencia_A'
        Longitud = 2
        Consulta = 'convivencia_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 8'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resid'#232'ncia ingr'#233's'
        NombreDB = 'Residencia_I'
        Longitud = 2
        Consulta = 'residencia_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 12'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resid'#232'ncia alta'
        NombreDB = 'Residencia_A'
        Longitud = 2
        Consulta = 'residencia_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 12'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Llar alta'
        NombreDB = 'Llar_A'
        Longitud = 2
        Consulta = 'llar_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 9'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accessibilitat'
        NombreDB = 'Accessibilitat'
        Longitud = 2
        Consulta = 'accessibilitat'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Situaci'#243' laboral ingr'#233's'
        NombreDB = 'Laboral_I'
        Longitud = 2
        Consulta = 'laboral_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Per qui treballa ingr'#233's'
        NombreDB = 'LaboralQui_I'
        Longitud = 2
        Consulta = 'laboralqui_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'On treballa ingr'#233's'
        NombreDB = 'LaboralOn_I'
        Longitud = 2
        Consulta = 'laboralon_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 3'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Situaci'#243' laboral alta'
        NombreDB = 'Laboral_A'
        Longitud = 2
        Consulta = 'laboral_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Per qui treballa alta'
        NombreDB = 'LaboralQui_A'
        Longitud = 2
        Consulta = 'laboralqui_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'On treballa alta'
        NombreDB = 'LaboralOn_A'
        Longitud = 2
        Consulta = 'laboralon_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 3'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pensi'#243
        NombreDB = 'Pensio'
        Longitud = 2
        Consulta = 'pensio'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 9'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat1'
        NombreDB = 'Mobilitat1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat2'
        NombreDB = 'Mobilitat2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat3'
        NombreDB = 'Mobilitat3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat4'
        NombreDB = 'Mobilitat4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat5'
        NombreDB = 'Mobilitat5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat6'
        NombreDB = 'Mobilitat6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat7'
        NombreDB = 'Mobilitat7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat8'
        NombreDB = 'Mobilitat8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Figura assistencial'
        NombreDB = 'Figura'
        Longitud = 2
        Consulta = 'figura'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 9'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dedicaci'#243
        NombreDB = 'Dedicacio'
        Longitud = 2
        Consulta = 'dedicacio'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei1'
        NombreDB = 'Servei1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei2'
        NombreDB = 'Servei2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei3'
        NombreDB = 'Servei3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei4'
        NombreDB = 'Servei4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei5'
        NombreDB = 'Servei5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei6'
        NombreDB = 'Servei6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei7'
        NombreDB = 'Servei7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei8'
        NombreDB = 'Servei8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei9'
        NombreDB = 'Servei9'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei10'
        NombreDB = 'Servei10'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei11'
        NombreDB = 'Servei11'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'estudis'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estudis')
        CopiarOrigen.Strings = (
          'Estudis')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.ESTUDIS'#39
      end
      item
        Nombre = 'convivencia_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Conviv'#232'ncia ingr'#233's')
        CopiarOrigen.Strings = (
          'Conviv'#232'ncia ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.CONVIVENCIA'#39
      end
      item
        Nombre = 'convivencia_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Conviv'#232'ncia alta')
        CopiarOrigen.Strings = (
          'Conviv'#232'ncia alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.CONVIVENCIA'#39
      end
      item
        Nombre = 'residencia_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Resid'#232'ncia ingr'#233's')
        CopiarOrigen.Strings = (
          'Resid'#232'ncia ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.RESIDENCIA'#39
      end
      item
        Nombre = 'residencia_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Resid'#232'ncia alta')
        CopiarOrigen.Strings = (
          'Resid'#232'ncia alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.RESIDENCIA'#39
      end
      item
        Nombre = 'llar_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Llar alta')
        CopiarOrigen.Strings = (
          'Llar alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LLARALTA'#39
      end
      item
        Nombre = 'accessibilitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Accessibilitat')
        CopiarOrigen.Strings = (
          'Accessibilitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.ACCESSIBILITAT'#39
      end
      item
        Nombre = 'laboral_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Situaci'#243' laboral ingr'#233's')
        CopiarOrigen.Strings = (
          'Situaci'#243' laboral ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORAL'#39
      end
      item
        Nombre = 'laboral_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Situaci'#243' laboral alta')
        CopiarOrigen.Strings = (
          'Situaci'#243' laboral alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORAL'#39
      end
      item
        Nombre = 'laboralqui_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Per qui treballa ingr'#233's')
        CopiarOrigen.Strings = (
          'Per qui treballa ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORALQUI'#39
      end
      item
        Nombre = 'laboralqui_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Per qui treballa alta')
        CopiarOrigen.Strings = (
          'Per qui treballa alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORALQUI'#39
      end
      item
        Nombre = 'laboralon_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'On treballa ingr'#233's')
        CopiarOrigen.Strings = (
          'On treballa ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORALON'#39
      end
      item
        Nombre = 'laboralon_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'On treballa alta')
        CopiarOrigen.Strings = (
          'On treballa alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORALON'#39
      end
      item
        Nombre = 'pensio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Pensi'#243)
        CopiarOrigen.Strings = (
          'Pensi'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.PENSIO'#39
      end
      item
        Nombre = 'figura'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Figura assistencial')
        CopiarOrigen.Strings = (
          'Figura assistencial')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.FIGURA'#39
      end
      item
        Nombre = 'dedicacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Dedicaci'#243)
        CopiarOrigen.Strings = (
          'Dedicaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.DEDICACIO'#39
      end>
    Nombre = 'ESIG 1a Valoraci'#243
    NombreTabla = 'EscESIG_1AV'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Estudis'
      'Conviv'#232'ncia ingr'#233's'
      'Conviv'#232'ncia alta'
      'Resid'#232'ncia ingr'#233's'
      'Resid'#232'ncia alta'
      'Llar alta'
      'Accessibilitat'
      'Situaci'#243' laboral ingr'#233's'
      'Per qui treballa ingr'#233's'
      'On treballa ingr'#233's'
      'Situaci'#243' laboral alta'
      'Per qui treballa alta'
      'On treballa alta'
      'Pensi'#243
      'Mobilitat1'
      'Mobilitat2'
      'Mobilitat3'
      'Mobilitat4'
      'Mobilitat5'
      'Mobilitat6'
      'Mobilitat7'
      'Mobilitat8'
      'Figura assistencial'
      'Dedicaci'#243
      'Servei1'
      'Servei2'
      'Servei3'
      'Servei4'
      'Servei5'
      'Servei6'
      'Servei7'
      'Servei8'
      'Servei9'
      'Servei10'
      'Servei11')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 557
    Top = 544
  end
  object ESIG_Seg: TDic
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
        Aplica = kcMODELS
        Nombre = 'Estudis'
        NombreDB = 'Estudis'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Estudis canvis'
        NombreDB = 'Estudis_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estudis satisfacci'#243
        NombreDB = 'Estudis_S'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Conviv'#232'ncia'
        NombreDB = 'Convivencia'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 8'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Conviv'#232'ncia canvis'
        NombreDB = 'Convivencia_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resid'#232'ncia'
        NombreDB = 'Residencia'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 12'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accessibilitat'
        NombreDB = 'Accessibilitat'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Llar Canvis'
        NombreDB = 'Llar_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Llar Satisfacci'#243
        NombreDB = 'Llar_S'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'No treballa'
        NombreDB = 'NoTreballa'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus treball'
        NombreDB = 'TipusTreball'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'text lliure'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Assegurat?'
        NombreDB = 'Assegurat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Per qui treballa'
        NombreDB = 'LaboralQui'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'On treballa'
        NombreDB = 'LaboralOn'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 3'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Laborall Canvis'
        NombreDB = 'Laboral_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Laboral Satisfacci'#243
        NombreDB = 'Laboral_S'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pensi'#243
        NombreDB = 'Pensio'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 9'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Pensi'#243' Canvis'
        NombreDB = 'Pensio_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pensi'#243' Satisfacci'#243
        NombreDB = 'Pensio_S'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 4'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat1'
        NombreDB = 'Mobilitat1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat2'
        NombreDB = 'Mobilitat2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat3'
        NombreDB = 'Mobilitat3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat4'
        NombreDB = 'Mobilitat4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat5'
        NombreDB = 'Mobilitat5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat6'
        NombreDB = 'Mobilitat6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat7'
        NombreDB = 'Mobilitat7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat8'
        NombreDB = 'Mobilitat8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat Canvis'
        NombreDB = 'Mobilitat_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mobilitat Satisfacci'#243
        NombreDB = 'Mobilitat_S'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats1'
        NombreDB = 'Activitats1'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats2'
        NombreDB = 'Activitats2'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats3'
        NombreDB = 'Activitats3'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats4'
        NombreDB = 'Activitats4'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats5'
        NombreDB = 'Activitats5'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats6'
        NombreDB = 'Activitats6'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats7'
        NombreDB = 'Activitats7'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats8'
        NombreDB = 'Activitats8'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia'
        NombreDB = 'Frequencia'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Durada'
        NombreDB = 'Durada'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 3'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Activitats_C'
        NombreDB = 'Activitats_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Activitats_S'
        NombreDB = 'Activitats_S'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Figura assistencial'
        NombreDB = 'Figura'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 9'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dedicaci'#243
        NombreDB = 'Dedicacio'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ajuda AVD Canvis'
        NombreDB = 'AjudaAVD_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ajuda AVD Satisfacci'#243
        NombreDB = 'AjudaAVD_S'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 4'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei1'
        NombreDB = 'Servei1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei2'
        NombreDB = 'Servei2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei3'
        NombreDB = 'Servei3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei4'
        NombreDB = 'Servei4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei5'
        NombreDB = 'Servei5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei6'
        NombreDB = 'Servei6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei7'
        NombreDB = 'Servei7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei8'
        NombreDB = 'Servei8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei9'
        NombreDB = 'Servei9'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei10'
        NombreDB = 'Servei10'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Servei11'
        NombreDB = 'Servei11'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Serveis_C'
        NombreDB = 'Servei_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Serveis_S'
        NombreDB = 'Servei_S'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia Activitat 1'
        NombreDB = 'FQ_ACT1'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia Activitat 2'
        NombreDB = 'FQ_ACT2'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia Activitat 3'
        NombreDB = 'FQ_ACT3'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia Activitat 4'
        NombreDB = 'FQ_ACT4'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia Activitat 5'
        NombreDB = 'FQ_ACT5'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia Activitat 6'
        NombreDB = 'FQ_ACT6'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia Activitat 7'
        NombreDB = 'FQ_ACT7'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pensi'#243' Altres'
        NombreDB = 'Pensio_Altres'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'text lliure'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESIG Seguiment'
    NombreTabla = 'EscESIG_SEG'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 621
    Top = 544
  end
  object EFA: TDic
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
        Aplica = kcMODELS
        Nombre = 'EFA1'
        NombreDB = 'EFA1'
        Longitud = 2
        Consulta = 'efa1'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 ..  4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA1_P'
        NombreDB = 'EFA1_P'
        Longitud = 2
        Consulta = 'efa1p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA2'
        NombreDB = 'EFA2'
        Longitud = 2
        Consulta = 'efa2'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 ..  4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA2_P'
        NombreDB = 'EFA2_P'
        Longitud = 2
        Consulta = 'efa2p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA3'
        NombreDB = 'EFA3'
        Longitud = 2
        Consulta = 'efa3'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 ..  4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA3_P'
        NombreDB = 'EFA3_P'
        Longitud = 2
        Consulta = 'efa3p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA4'
        NombreDB = 'EFA4'
        Longitud = 2
        Consulta = 'efa4'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 ..  4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA4_P'
        NombreDB = 'EFA4_P'
        Longitud = 2
        Consulta = 'efa4p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA5'
        NombreDB = 'EFA5'
        Longitud = 2
        Consulta = 'efa5'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 ..  4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA5_P'
        NombreDB = 'EFA5_P'
        Longitud = 2
        Consulta = 'efa5p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA6'
        NombreDB = 'EFA6'
        Longitud = 2
        Consulta = 'efa6'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-2 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA6_P'
        NombreDB = 'EFA6_P'
        Longitud = 2
        Consulta = 'efa6p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA7'
        NombreDB = 'EFA7'
        Longitud = 2
        Consulta = 'efa7'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-2 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA7_P'
        NombreDB = 'EFA7_P'
        Longitud = 2
        Consulta = 'efa7p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA8'
        NombreDB = 'EFA8'
        Longitud = 2
        Consulta = 'efa8'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-2 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA8_P'
        NombreDB = 'EFA8_P'
        Longitud = 2
        Consulta = 'efa8p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA9'
        NombreDB = 'EFA9'
        Longitud = 2
        Consulta = 'efa9'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-2 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA9_P'
        NombreDB = 'EFA9_P'
        Longitud = 2
        Consulta = 'efa9p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA10'
        NombreDB = 'EFA10'
        Longitud = 2
        Consulta = 'efa10'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 ..  4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA10_P'
        NombreDB = 'EFA10_P'
        Longitud = 2
        Consulta = 'efa10p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA11'
        NombreDB = 'EFA11'
        Longitud = 2
        Consulta = 'efa11'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 ..  4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA11_P'
        NombreDB = 'EFA11_P'
        Longitud = 2
        Consulta = 'efa11p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA12'
        NombreDB = 'EFA12'
        Longitud = 2
        Consulta = 'efa12'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 ..  4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'EFA12_P'
        NombreDB = 'EFA12_P'
        Longitud = 2
        Consulta = 'efa12p'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 2'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'efa1'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA1')
        CopiarOrigen.Strings = (
          'EFA1')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ1'#39
      end
      item
        Nombre = 'efa2'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA2')
        CopiarOrigen.Strings = (
          'EFA2')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ1'#39
      end
      item
        Nombre = 'efa3'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA3')
        CopiarOrigen.Strings = (
          'EFA3')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ1'#39
      end
      item
        Nombre = 'efa4'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA4')
        CopiarOrigen.Strings = (
          'EFA4')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ1'#39
      end
      item
        Nombre = 'efa5'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA5')
        CopiarOrigen.Strings = (
          'EFA5')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ1'#39
      end
      item
        Nombre = 'efa6'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA6')
        CopiarOrigen.Strings = (
          'EFA6')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ2'#39
      end
      item
        Nombre = 'efa7'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA7')
        CopiarOrigen.Strings = (
          'EFA7')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ2'#39
      end
      item
        Nombre = 'efa8'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA8')
        CopiarOrigen.Strings = (
          'EFA8')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ2'#39
      end
      item
        Nombre = 'efa9'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA9')
        CopiarOrigen.Strings = (
          'EFA9')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ2'#39
      end
      item
        Nombre = 'efa10'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA10')
        CopiarOrigen.Strings = (
          'EFA10')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ1'#39
      end
      item
        Nombre = 'efa11'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA11')
        CopiarOrigen.Strings = (
          'EFA11')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ1'#39
      end
      item
        Nombre = 'efa12'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA12')
        CopiarOrigen.Strings = (
          'EFA12')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.FREQ1'#39
      end
      item
        Nombre = 'efa1p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA1_P')
        CopiarOrigen.Strings = (
          'EFA1_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa2p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA2_P')
        CopiarOrigen.Strings = (
          'EFA2_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa3p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA3_P')
        CopiarOrigen.Strings = (
          'EFA3_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa4p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA4_P')
        CopiarOrigen.Strings = (
          'EFA4_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa5p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA5_P')
        CopiarOrigen.Strings = (
          'EFA5_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa6p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA6_P')
        CopiarOrigen.Strings = (
          'EFA6_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa7p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA7_P')
        CopiarOrigen.Strings = (
          'EFA7_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa8p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA8_P')
        CopiarOrigen.Strings = (
          'EFA8_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa9p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA9_P')
        CopiarOrigen.Strings = (
          'EFA9_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa10p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA10_P')
        CopiarOrigen.Strings = (
          'EFA10_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa11p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA11_P')
        CopiarOrigen.Strings = (
          'EFA11_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end
      item
        Nombre = 'efa12p'
        Master = V_Chart_Efa
        BuscaOrigen.Strings = (
          'EFA12_P')
        CopiarOrigen.Strings = (
          'EFA12_P')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'EFA.PROB'#39
      end>
    Nombre = 'EFA'
    NombreTabla = 'EscEFA'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'EFA1'
      'EFA1_P'
      'EFA2'
      'EFA2_P'
      'EFA3'
      'EFA3_P'
      'EFA4'
      'EFA4_P'
      'EFA5'
      'EFA5_P'
      'EFA6'
      'EFA6_P'
      'EFA7'
      'EFA7_P'
      'EFA8'
      'EFA8_P'
      'EFA9'
      'EFA9_P'
      'EFA10'
      'EFA10_P'
      'EFA11'
      'EFA11_P'
      'EFA12'
      'EFA12_P')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 741
    Top = 544
  end
  object V_Chart_Efa: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'TIPUSCODI'
        NombreDB = 'TIPUSCODI'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C_CODI'
        NombreDB = 'C_CODI'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'N_CODI'
        NombreDB = 'N_CODI'
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
          'TIPUSCODI'
          'C_CODI')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Valoracions CHART i EFA'
    NombreTabla = 'EscV_CHART_EFA'
    Organiza = tbBase
    CamposVer.Strings = (
      'TIPUSCODI'
      'C_CODI'
      'N_CODI')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 795
    Top = 544
  end
  object Asia: TDic
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
        Nombre = 'Motor Dret Total'
        NombreDB = 'Motor_D_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Motor Esq Total'
        NombreDB = 'Motor_E_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Motor Total'
        NombreDB = 'Motor_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Contraci'#243' anal volunt'#224'ria'
        NombreDB = 'Contr_Anal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Sens. Tacte fi Dret Total'
        NombreDB = 'SensTF_D_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Sens. Tacte fi Esq Total'
        NombreDB = 'SensTF_E_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Sens. Tacte fi Total'
        NombreDB = 'SensTF_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Sens. Dolor Dret Total'
        NombreDB = 'SensD_D_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Sens. Dolor Esq Total'
        NombreDB = 'SensD_E_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Sens. Dolor Total'
        NombreDB = 'SensD_Total'
        Longitud = 8
        MaskDisplay = '#,##0;;'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Sensaci'#243' anal'
        NombreDB = 'Sens_Anal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell Neurol'#242'gic Sensitiu Dret'
        NombreDB = 'N_Sens_D'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell Neurol'#242'gic Sensitiu Esq'
        NombreDB = 'N_Sens_E'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell Neurol'#242'gic Motor Dret'
        NombreDB = 'N_Motor_D'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell Neurol'#242'gic Motor Esq'
        NombreDB = 'N_Motor_E'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell Neurol'#242'gic'
        NombreDB = 'Nivell_Neuro'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Complet o incomplet'
        NombreDB = 'Complet'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'CI'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ASIA'
        NombreDB = 'ASIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'ABCDE'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Zona Preservaci'#243' Sens. Dret'
        NombreDB = 'ZPP_Sens_D'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Zona Preservaci'#243' Sens. Esq'
        NombreDB = 'ZPP_Sens_E'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Zona Preservaci'#243' Motora Dret'
        NombreDB = 'ZPP_Motor_D'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Zona Preservaci'#243' Motora Esq'
        NombreDB = 'ZPP_Motor_E'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'S'#237'ndrome cl'#237'nica'
        NombreDB = 'Sindrome'
        Longitud = 15
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escala ASIA'
    NombreTabla = 'EscASIA'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Motor Dret Total'
      'Motor Esq Total'
      'Motor Total'
      'Contraci'#243' anal volunt'#224'ria'
      'Sens. Tacte fi Dret Total'
      'Sens. Tacte fi Esq Total'
      'Sens. Tacte fi Total'
      'Sens. Dolor Dret Total'
      'Sens. Dolor Esq Total'
      'Sens. Dolor Total'
      'Sensaci'#243' anal'
      'Nivell Neurol'#242'gic Sensitiu Dret'
      'Nivell Neurol'#242'gic Sensitiu Esq'
      'Nivell Neurol'#242'gic Motor Dret'
      'Nivell Neurol'#242'gic Motor Esq'
      'Nivell Neurol'#242'gic'
      'Complet o incomplet'
      'ASIA'
      'Zona Preservaci'#243' Sens. Dret'
      'Zona Preservaci'#243' Sens. Esq'
      'Zona Preservaci'#243' Motora Dret'
      'Zona Preservaci'#243' Motora Esq'
      'S'#237'ndrome cl'#237'nica')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 316
  end
  object Asia_Motor: TDic
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
        Aplica = kcMODELS
        Nombre = 'C5 Dret'
        NombreDB = 'C5_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C6 Dret'
        NombreDB = 'C6_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C7 Dret'
        NombreDB = 'C7_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C8 Dret'
        NombreDB = 'C8_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T1 Dret'
        NombreDB = 'T1_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L2 Dret'
        NombreDB = 'L2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L3 Dret'
        NombreDB = 'L3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L4 Dret'
        NombreDB = 'L4_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L5 Dret'
        NombreDB = 'L5_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S1 Dret'
        NombreDB = 'S1_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C5 Esq'
        NombreDB = 'C5_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C6 Esq'
        NombreDB = 'C6_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C7 Esq'
        NombreDB = 'C7_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C8 Esq'
        NombreDB = 'C8_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T1 Esq'
        NombreDB = 'T1_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L2 Esq'
        NombreDB = 'L2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L3 Esq'
        NombreDB = 'L3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L4 Esq'
        NombreDB = 'L4_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L5 Esq'
        NombreDB = 'L5_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S1 Esq'
        NombreDB = 'S1_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012345N'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = Asia
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escala ASIA Motor'
    NombreTabla = 'EscASIA_Motor'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'C5 Dret'
      'C6 Dret'
      'C7 Dret'
      'C8 Dret'
      'T1 Dret'
      'L2 Dret'
      'L3 Dret'
      'L4 Dret'
      'L5 Dret'
      'S1 Dret'
      'C5 Esq'
      'C6 Esq'
      'C7 Esq'
      'C8 Esq'
      'T1 Esq'
      'L2 Esq'
      'L3 Esq'
      'L4 Esq'
      'L5 Esq'
      'S1 Esq')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 96
    Top = 316
  end
  object Asia_Sens_TF: TDic
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
        Aplica = kcMODELS
        Nombre = 'C2 Dret'
        NombreDB = 'C2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C3 Dret'
        NombreDB = 'C3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C4 Dret'
        NombreDB = 'C4_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C5 Dret'
        NombreDB = 'C5_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C6 Dret'
        NombreDB = 'C6_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C7 Dret'
        NombreDB = 'C7_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C8 Dret'
        NombreDB = 'C8_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T1 Dret'
        NombreDB = 'T1_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T2 Dret'
        NombreDB = 'T2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T3 Dret'
        NombreDB = 'T3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T4 Dret'
        NombreDB = 'T4_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T5 Dret'
        NombreDB = 'T5_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T6 Dret'
        NombreDB = 'T6_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T7 Dret'
        NombreDB = 'T7_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T8 Dret'
        NombreDB = 'T8_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T9 Dret'
        NombreDB = 'T9_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T10 Dret'
        NombreDB = 'T10_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T11 Dret'
        NombreDB = 'T11_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T12 Dret'
        NombreDB = 'T12_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L1 Dret'
        NombreDB = 'L1_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L2 Dret'
        NombreDB = 'L2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L3 Dret'
        NombreDB = 'L3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L4 Dret'
        NombreDB = 'L4_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L5 Dret'
        NombreDB = 'L5_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S1 Dret'
        NombreDB = 'S1_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S2 Dret'
        NombreDB = 'S2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S3 Dret'
        NombreDB = 'S3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S45 Dret'
        NombreDB = 'S45_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C2 Esq'
        NombreDB = 'C2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C3 Esq'
        NombreDB = 'C3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C4 Esq'
        NombreDB = 'C4_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C5 Esq'
        NombreDB = 'C5_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C6 Esq'
        NombreDB = 'C6_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C7 Esq'
        NombreDB = 'C7_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C8 Esq'
        NombreDB = 'C8_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T1 Esq'
        NombreDB = 'T1_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T2 Esq'
        NombreDB = 'T2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T3 Esq'
        NombreDB = 'T3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T4 Esq'
        NombreDB = 'T4_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T5 Esq'
        NombreDB = 'T5_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T6 Esq'
        NombreDB = 'T6_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T7 Esq'
        NombreDB = 'T7_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T8 Esq'
        NombreDB = 'T8_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T9 Esq'
        NombreDB = 'T9_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T10 Esq'
        NombreDB = 'T10_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T11 Esq'
        NombreDB = 'T11_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T12 Esq'
        NombreDB = 'T12_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L1 Esq'
        NombreDB = 'L1_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L2 Esq'
        NombreDB = 'L2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L3 Esq'
        NombreDB = 'L3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L4 Esq'
        NombreDB = 'L4_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L5 Esq'
        NombreDB = 'L5_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S1 Esq'
        NombreDB = 'S1_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S2 Esq'
        NombreDB = 'S2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S3 Esq'
        NombreDB = 'S3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S45 Esq'
        NombreDB = 'S45_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = Asia
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escala ASIA Sens Tacte Fi'
    NombreTabla = 'EscASIA_Sens_TF'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'C2 Dret'
      'C3 Dret'
      'C4 Dret'
      'C5 Dret'
      'C6 Dret'
      'C7 Dret'
      'C8 Dret'
      'T1 Dret'
      'T2 Dret'
      'T3 Dret'
      'T4 Dret'
      'T5 Dret'
      'T6 Dret'
      'T7 Dret'
      'T8 Dret'
      'T9 Dret'
      'T10 Dret'
      'T11 Dret'
      'T12 Dret'
      'L1 Dret'
      'L2 Dret'
      'L3 Dret'
      'L4 Dret'
      'L5 Dret'
      'S1 Dret'
      'S2 Dret'
      'S3 Dret'
      'S45 Dret'
      'C2 Esq'
      'C3 Esq'
      'C4 Esq'
      'C5 Esq'
      'C6 Esq'
      'C7 Esq'
      'C8 Esq'
      'T1 Esq'
      'T2 Esq'
      'T3 Esq'
      'T4 Esq'
      'T5 Esq'
      'T6 Esq'
      'T7 Esq'
      'T8 Esq'
      'T9 Esq'
      'T10 Esq'
      'T11 Esq'
      'T12 Esq'
      'L1 Esq'
      'L2 Esq'
      'L3 Esq'
      'L4 Esq'
      'L5 Esq'
      'S1 Esq'
      'S2 Esq'
      'S3 Esq'
      'S45 Esq')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 170
    Top = 316
  end
  object Asia_Sens_D: TDic
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
        Aplica = kcMODELS
        Nombre = 'C2 Dret'
        NombreDB = 'C2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C3 Dret'
        NombreDB = 'C3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C4 Dret'
        NombreDB = 'C4_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C5 Dret'
        NombreDB = 'C5_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C6 Dret'
        NombreDB = 'C6_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C7 Dret'
        NombreDB = 'C7_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C8 Dret'
        NombreDB = 'C8_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T1 Dret'
        NombreDB = 'T1_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T2 Dret'
        NombreDB = 'T2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T3 Dret'
        NombreDB = 'T3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T4 Dret'
        NombreDB = 'T4_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T5 Dret'
        NombreDB = 'T5_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T6 Dret'
        NombreDB = 'T6_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T7 Dret'
        NombreDB = 'T7_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T8 Dret'
        NombreDB = 'T8_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T9 Dret'
        NombreDB = 'T9_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T10 Dret'
        NombreDB = 'T10_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T11 Dret'
        NombreDB = 'T11_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T12 Dret'
        NombreDB = 'T12_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L1 Dret'
        NombreDB = 'L1_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L2 Dret'
        NombreDB = 'L2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L3 Dret'
        NombreDB = 'L3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L4 Dret'
        NombreDB = 'L4_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L5 Dret'
        NombreDB = 'L5_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S1 Dret'
        NombreDB = 'S1_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S2 Dret'
        NombreDB = 'S2_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S3 Dret'
        NombreDB = 'S3_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S45 Dret'
        NombreDB = 'S45_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C2 Esq'
        NombreDB = 'C2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C3 Esq'
        NombreDB = 'C3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C4 Esq'
        NombreDB = 'C4_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C5 Esq'
        NombreDB = 'C5_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C6 Esq'
        NombreDB = 'C6_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C7 Esq'
        NombreDB = 'C7_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C8 Esq'
        NombreDB = 'C8_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T1 Esq'
        NombreDB = 'T1_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T2 Esq'
        NombreDB = 'T2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T3 Esq'
        NombreDB = 'T3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T4 Esq'
        NombreDB = 'T4_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T5 Esq'
        NombreDB = 'T5_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T6 Esq'
        NombreDB = 'T6_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T7 Esq'
        NombreDB = 'T7_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T8 Esq'
        NombreDB = 'T8_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T9 Esq'
        NombreDB = 'T9_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T10 Esq'
        NombreDB = 'T10_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T11 Esq'
        NombreDB = 'T11_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'T12 Esq'
        NombreDB = 'T12_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L1 Esq'
        NombreDB = 'L1_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L2 Esq'
        NombreDB = 'L2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L3 Esq'
        NombreDB = 'L3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L4 Esq'
        NombreDB = 'L4_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'L5 Esq'
        NombreDB = 'L5_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S1 Esq'
        NombreDB = 'S1_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S2 Esq'
        NombreDB = 'S2_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S3 Esq'
        NombreDB = 'S3_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'S45 Esq'
        NombreDB = 'S45_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = '0'
        ValidChars = '012N'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = Asia
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escala ASIA Sens Dolor'
    NombreTabla = 'EscASIA_Sens_D'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'C2 Dret'
      'C3 Dret'
      'C4 Dret'
      'C5 Dret'
      'C6 Dret'
      'C7 Dret'
      'C8 Dret'
      'T1 Dret'
      'T2 Dret'
      'T3 Dret'
      'T4 Dret'
      'T5 Dret'
      'T6 Dret'
      'T7 Dret'
      'T8 Dret'
      'T9 Dret'
      'T10 Dret'
      'T11 Dret'
      'T12 Dret'
      'L1 Dret'
      'L2 Dret'
      'L3 Dret'
      'L4 Dret'
      'L5 Dret'
      'S1 Dret'
      'S2 Dret'
      'S3 Dret'
      'S45 Dret'
      'C2 Esq'
      'C3 Esq'
      'C4 Esq'
      'C5 Esq'
      'C6 Esq'
      'C7 Esq'
      'C8 Esq'
      'T1 Esq'
      'T2 Esq'
      'T3 Esq'
      'T4 Esq'
      'T5 Esq'
      'T6 Esq'
      'T7 Esq'
      'T8 Esq'
      'T9 Esq'
      'T10 Esq'
      'T11 Esq'
      'T12 Esq'
      'L1 Esq'
      'L2 Esq'
      'L3 Esq'
      'L4 Esq'
      'L5 Esq'
      'S1 Esq'
      'S2 Esq'
      'S3 Esq'
      'S45 Esq')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 248
    Top = 316
  end
  object AsiaValors: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'valor'
        NombreDB = 'valor'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ordre'
        NombreDB = 'ordre'
        Longitud = 1
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
          'valor')
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
          'ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ASIA Valors'
    NombreTabla = 'EscVASIA'
    Organiza = tbBase
    CamposVer.Strings = (
      'valor')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 320
    Top = 316
  end
  object Bateria: TDic
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
        Nombre = 'Persona'
        NombreDB = 'OPERSONA'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Espai'
        NombreDB = 'OESPAI'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Temps'
        NombreDB = 'OTEMPS'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Span'
        NombreDB = 'ASPAN'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'TMT part A'
        NombreDB = 'ATMTA'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Paraula'
        NombreDB = 'APARAULA'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Color'
        NombreDB = 'ACOLOR'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Paraula-Color'
        NombreDB = 'APARAULACOLOR'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Claus WAIS-III'
        NombreDB = 'VPWAISIII'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243' l'#224'mina TB'
        NombreDB = 'LLAMINATB'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Repetici'#243' TB'
        NombreDB = 'LREPETICIOTB'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Denominaci'#243' TB'
        NombreDB = 'LDENOMINACIOTB'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comprenci'#243' TB'
        NombreDB = 'LCOMPRENSIOTB'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Imatges superposades TB'
        NombreDB = 'VPIMATGES'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cubs WAIS-III'
        NombreDB = 'VCCUBS'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'D'#237'gits inversos WAIS-III'
        NombreDB = 'MDIGITS'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Lletres i n'#250'meros WAIS-III'
        NombreDB = 'MLLETRES'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'RAVLT 0-75'
        NombreDB = 'MRAVLT075'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'RAVLT 0-15'
        NombreDB = 'MRAVLT015'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'RAVLT 0-15 R'
        NombreDB = 'MRAVLT015R'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'TMT part B'
        NombreDB = 'FETMTB'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'WCST Categories'
        NombreDB = 'FEWCSTC'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'WCST errors'
        NombreDB = 'FEWCSTE'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Stroop'
        NombreDB = 'FESTROOP'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'PMR'
        NombreDB = 'FEPMR'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' orientaci'#243
        NombreDB = 'VORIENTA'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' atenci'#243' WAIS-III'
        NombreDB = 'VAWAIS'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' atenci'#243' TMT - A'
        NombreDB = 'VATMTA'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' atenci'#243' Stroop'
        NombreDB = 'VASTROOP'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' claus WAIS'
        NombreDB = 'VVWAIS'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' llenguatge l'#224'mina'
        NombreDB = 'VLLAMINA'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' llenguatge repetici'#243
        NombreDB = 'VLREPE'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' llenguatge denominaci'#243
        NombreDB = 'VLDENO'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' llenguatge comprensi'#243
        NombreDB = 'VLCOMP'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' visuo-percepci'#243
        NombreDB = 'VPERCEP'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' visuo-construcci'#243
        NombreDB = 'VCONSTRUC'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' mem'#242'ria d'#237'gits'
        NombreDB = 'VMDIGITS'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' mem'#242'ria lletres i n'#250'meros'
        NombreDB = 'VMLLETRES'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' mem'#242'ria RAVLT 0-75'
        NombreDB = 'VMRAVLT075'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' mem'#242'ria RAVLT 0-15'
        NombreDB = 'VMRAVLT015'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' mem'#242'ria RAVLT 0-15R'
        NombreDB = 'VMRAVLT015R'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' funcions executives TMT - B'
        NombreDB = 'VFETMTB'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' f.e. WCST'
        NombreDB = 'VFEWCST'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valoraci'#243' f.e. PMR'
        NombreDB = 'VFEPMR'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'MVBAT'#39': motriu, visual,' +
          ' verbal, auditiva, transtorn.'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Id')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Bateria'
    NombreTabla = 'EscBateria'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'Persona'
      'Espai'
      'Temps'
      'Span'
      'TMT part A'
      'Paraula'
      'Color'
      'Paraula-Color'
      'Claus WAIS-III'
      'Descripci'#243' l'#224'mina TB'
      'Repetici'#243' TB'
      'Denominaci'#243' TB'
      'Comprenci'#243' TB'
      'Imatges superposades TB'
      'Cubs WAIS-III'
      'D'#237'gits inversos WAIS-III'
      'Lletres i n'#250'meros WAIS-III'
      'RAVLT 0-75'
      'RAVLT 0-15'
      'RAVLT 0-15 R'
      'TMT part B'
      'WCST Categories'
      'WCST errors'
      'Stroop'
      'PMR'
      'Valoraci'#243' orientaci'#243
      'Valoraci'#243' atenci'#243' WAIS-III'
      'Valoraci'#243' atenci'#243' TMT - A'
      'Valoraci'#243' atenci'#243' Stroop'
      'Valoraci'#243' claus WAIS'
      'Valoraci'#243' llenguatge l'#224'mina'
      'Valoraci'#243' llenguatge repetici'#243
      'Valoraci'#243' llenguatge denominaci'#243
      'Valoraci'#243' llenguatge comprensi'#243
      'Valoraci'#243' visuo-percepci'#243
      'Valoraci'#243' visuo-construcci'#243
      'Valoraci'#243' mem'#242'ria d'#237'gits'
      'Valoraci'#243' mem'#242'ria lletres i n'#250'meros'
      'Valoraci'#243' mem'#242'ria RAVLT 0-75'
      'Valoraci'#243' mem'#242'ria RAVLT 0-15'
      'Valoraci'#243' mem'#242'ria RAVLT 0-15R'
      'Valoraci'#243' funcions executives TMT - B'
      'Valoraci'#243' f.e. WCST'
      'Valoraci'#243' f.e. PMR')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 104
    Top = 436
  end
  object V_Bateria: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCodigo
        Nombre = 'Nom Item'
        NombreDB = 'NOMITEM'
        Longitud = 15
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Valormin'
        NombreDB = 'VALORMIN'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Valormax'
        NombreDB = 'VALORMAX'
        Longitud = 4
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
          'Nom Item')
        Tipo = tiPrimario
        Unico = True
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Valoracions Bateria'
    NombreTabla = 'EscVBateria'
    Organiza = tbBase
    CamposVer.Strings = (
      'Nom Item')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 152
    Top = 436
  end
  object Whoqol: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escala WHOQOL'
    NombreTabla = 'EscWHOQOL'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 376
  end
  object V_Whoqol: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'DOMINI'
        NombreDB = 'DOMINI'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RAWSCORE'
        NombreDB = 'RAWSCORE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'V4_20'
        NombreDB = 'V4_20'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'V0_100'
        NombreDB = 'V0_100'
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
          'DOMINI'
          'RAWSCORE')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Valoracions Whoqol'
    NombreTabla = 'EscVWHOQOL'
    Organiza = tbBase
    CamposVer.Strings = (
      'DOMINI'
      'RAWSCORE'
      'V4_20'
      'V0_100')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 88
    Top = 376
  end
  object CONSULTA_WHOQOL: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CONSULTA'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA DATE,'
      '         ENTRADA INTEGER,'
      '         Q1 INTEGER,'
      '         Q2 INTEGER,'
      '         Q3 INTEGER,'
      '         Q4 INTEGER,'
      '         Q5 INTEGER,'
      '         Q6 INTEGER,'
      '         Q7 INTEGER,'
      '         Q8 INTEGER,'
      '         Q9 INTEGER,'
      '         Q10 INTEGER,'
      '         Q11 INTEGER,'
      '         Q12 INTEGER,'
      '         Q13 INTEGER,'
      '         Q14 INTEGER,'
      '         Q15 INTEGER,'
      '         Q16 INTEGER,'
      '         Q17 INTEGER,'
      '         Q18 INTEGER,'
      '         Q19 INTEGER,'
      '         Q20 INTEGER,'
      '         Q21 INTEGER,'
      '         Q22 INTEGER,'
      '         Q23 INTEGER,'
      '         Q24 INTEGER,'
      '         Q25 INTEGER,'
      '         Q26 INTEGER,'
      '         TOTAL INTEGER)'
      'AS'
      '      DECLARE VARIABLE HISTORIA_ANT INTEGER;'
      '      DECLARE VARIABLE TRACTAMENT_ANT INTEGER;'
      '      DECLARE VARIABLE DATA_ANT DATE;'
      '      DECLARE VARIABLE ENTRADA_ANT INTEGER;'
      '      DECLARE VARIABLE PREGUNTA INTEGER;'
      '      DECLARE VARIABLE RESPOSTA INTEGER;'
      'BEGIN'
      '  /* INICIALITZEM VARIABLES DE TREBALL */'
      '  HISTORIA=NULL;'
      '  TRACTAMENT=NULL;'
      '  DATA=NULL;'
      '  ENTRADA=NULL;'
      '  TOTAL=0;'
      '  '
      '  IF (DATAI IS NULL) THEN DATAI='#39'01.07.2007'#39';'
      '  IF (DATAF IS NULL) THEN DATAF='#39'31.12.9999'#39';'
      ''
      
        '  FOR SELECT C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, ' +
        'W.PREGUNTA, W.RESPOSTA'
      '  FROM ESCALESCAP C'
      '  JOIN ESCWHOQOL W ON C.CLAU=W.CLAU'
      '  WHERE C.C_ESCALA = 53'
      '  AND C.DATA >= :DATAI AND C.DATA <= :DATAF'
      
        '  ORDER BY C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, W.' +
        'PREGUNTA'
      
        '  INTO :HISTORIA_ANT, :TRACTAMENT_ANT, :DATA_ANT, :ENTRADA_ANT, ' +
        ':PREGUNTA, :RESPOSTA'
      '  DO BEGIN'
      
        '    IF (((HISTORIA <> HISTORIA_ANT) OR (TRACTAMENT <> TRACTAMENT' +
        '_ANT) OR (DATA <> DATA_ANT) OR (ENTRADA <> ENTRADA_ANT))) THEN'
      '    BEGIN'
      '      SUSPEND;'
      
        '      /* INICIALITZEM TOTES LES VARIABLES UN COP ESCRIT EL REGIS' +
        'TRE */'
      
        '      Q1=NULL;Q2=NULL;Q3=NULL;Q4=NULL;Q5=NULL;Q6=NULL;Q7=NULL;Q8' +
        '=NULL;'
      
        '      Q9=NULL;Q10=NULL;Q11=NULL;Q12=NULL;Q13=NULL;Q14=NULL;Q15=N' +
        'ULL;Q16=NULL;'
      
        '      Q17=NULL;Q18=NULL;Q19=NULL;Q20=NULL;Q21=NULL;Q22=NULL;Q23=' +
        'NULL;Q24=NULL;'
      '      Q25=NULL;Q26=NULL;TOTAL=0;'
      '    END;'
      ''
      '    IF (PREGUNTA = 1) THEN Q1=RESPOSTA;'
      '    IF (PREGUNTA = 2) THEN Q2=RESPOSTA;'
      '    IF (PREGUNTA = 3) THEN Q3=RESPOSTA;'
      '    IF (PREGUNTA = 4) THEN Q4=RESPOSTA;'
      '    IF (PREGUNTA = 5) THEN Q5=RESPOSTA;'
      '    IF (PREGUNTA = 6) THEN Q6=RESPOSTA;'
      '    IF (PREGUNTA = 7) THEN Q7=RESPOSTA;'
      '    IF (PREGUNTA = 8) THEN Q8=RESPOSTA;'
      '    IF (PREGUNTA = 9) THEN Q9=RESPOSTA;'
      '    IF (PREGUNTA = 10) THEN Q10=RESPOSTA;'
      '    IF (PREGUNTA = 11) THEN Q11=RESPOSTA;'
      '    IF (PREGUNTA = 12) THEN Q12=RESPOSTA;'
      '    IF (PREGUNTA = 13) THEN Q13=RESPOSTA;'
      '    IF (PREGUNTA = 14) THEN Q14=RESPOSTA;'
      '    IF (PREGUNTA = 15) THEN Q15=RESPOSTA;'
      '    IF (PREGUNTA = 16) THEN Q16=RESPOSTA;'
      '    IF (PREGUNTA = 17) THEN Q17=RESPOSTA;'
      '    IF (PREGUNTA = 18) THEN Q18=RESPOSTA;'
      '    IF (PREGUNTA = 19) THEN Q19=RESPOSTA;'
      '    IF (PREGUNTA = 20) THEN Q20=RESPOSTA;'
      '    IF (PREGUNTA = 21) THEN Q21=RESPOSTA;'
      '    IF (PREGUNTA = 22) THEN Q22=RESPOSTA;'
      '    IF (PREGUNTA = 23) THEN Q23=RESPOSTA;'
      '    IF (PREGUNTA = 24) THEN Q24=RESPOSTA;'
      '    IF (PREGUNTA = 25) THEN Q25=RESPOSTA;'
      '    IF (PREGUNTA = 26) THEN Q26=RESPOSTA;'
      '    TOTAL=TOTAL+RESPOSTA;'
      ''
      '    HISTORIA=HISTORIA_ANT;'
      '    TRACTAMENT=TRACTAMENT_ANT;'
      '    DATA=DATA_ANT;'
      '    ENTRADA=ENTRADA_ANT;'
      '  END;'
      '  /* L'#39'ULTIM REGISTRE CAL PINTAR-LO */'
      '  SUSPEND;'
      'END')
    Dic1 = Whoqol
    Dic1Name = 'WHOQOL'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 187
    Top = 376
  end
  object GMFM: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 1'
        NombreDB = 'A1'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 2'
        NombreDB = 'A2'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 3'
        NombreDB = 'A3'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 4'
        NombreDB = 'A4'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 5'
        NombreDB = 'A5'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 6'
        NombreDB = 'A6'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 7'
        NombreDB = 'A7'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 8'
        NombreDB = 'A8'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 9'
        NombreDB = 'A9'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 10'
        NombreDB = 'A10'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 11'
        NombreDB = 'A11'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 12'
        NombreDB = 'A12'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 13'
        NombreDB = 'A13'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 14'
        NombreDB = 'A14'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 15'
        NombreDB = 'A15'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 16'
        NombreDB = 'A16'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini A pregunta 17'
        NombreDB = 'A17'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 18'
        NombreDB = 'B18'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 19'
        NombreDB = 'B19'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 20'
        NombreDB = 'B20'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 21'
        NombreDB = 'B21'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 22'
        NombreDB = 'B22'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 23'
        NombreDB = 'B23'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 24'
        NombreDB = 'B24'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 25'
        NombreDB = 'B25'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 26'
        NombreDB = 'B26'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 27'
        NombreDB = 'B27'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 28'
        NombreDB = 'B28'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 29'
        NombreDB = 'B29'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 30'
        NombreDB = 'B30'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 31'
        NombreDB = 'B31'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 32'
        NombreDB = 'B32'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 33'
        NombreDB = 'B33'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 34'
        NombreDB = 'B34'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 35'
        NombreDB = 'B35'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 36'
        NombreDB = 'B36'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini B pregunta 37'
        NombreDB = 'B37'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 38'
        NombreDB = 'C38'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 39'
        NombreDB = 'C39'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 40'
        NombreDB = 'C40'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 41'
        NombreDB = 'C41'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 42'
        NombreDB = 'C42'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 43'
        NombreDB = 'C43'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 44'
        NombreDB = 'C44'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 45'
        NombreDB = 'C45'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 46'
        NombreDB = 'C46'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 47'
        NombreDB = 'C47'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 48'
        NombreDB = 'C48'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 49'
        NombreDB = 'C49'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 50'
        NombreDB = 'C50'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini C pregunta 51'
        NombreDB = 'C51'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 52'
        NombreDB = 'D52'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 53'
        NombreDB = 'D53'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 54'
        NombreDB = 'D54'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 55'
        NombreDB = 'D55'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 56'
        NombreDB = 'D56'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 57'
        NombreDB = 'D57'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 58'
        NombreDB = 'D58'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 59'
        NombreDB = 'D59'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 60'
        NombreDB = 'D60'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 61'
        NombreDB = 'D61'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 62'
        NombreDB = 'D62'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 63'
        NombreDB = 'D63'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini D pregunta 64'
        NombreDB = 'D64'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 65'
        NombreDB = 'E65'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 66'
        NombreDB = 'E66'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 67'
        NombreDB = 'E67'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 68'
        NombreDB = 'E68'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 69'
        NombreDB = 'E69'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 70'
        NombreDB = 'E70'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 71'
        NombreDB = 'E71'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 72'
        NombreDB = 'E72'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 73'
        NombreDB = 'E73'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 74'
        NombreDB = 'E74'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 75'
        NombreDB = 'E75'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 76'
        NombreDB = 'E76'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 77'
        NombreDB = 'E77'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 78'
        NombreDB = 'E78'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 79'
        NombreDB = 'E79'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 80'
        NombreDB = 'E80'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 81'
        NombreDB = 'E81'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 82'
        NombreDB = 'E82'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 83'
        NombreDB = 'E83'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 84'
        NombreDB = 'E84'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 85'
        NombreDB = 'E85'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 86'
        NombreDB = 'E86'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 87'
        NombreDB = 'E87'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Domini E pregunta 88'
        NombreDB = 'E88'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'VALORS:0,1,2,3'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ajuda Caminador rodes'
        NombreDB = 'AID1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ajuda Caminador 4 parts'
        NombreDB = 'AID2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ajuda Carrutxes'
        NombreDB = 'AID3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ajuda Crosses'
        NombreDB = 'AID4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ajuda Bast'#243' 4 punts'
        NombreDB = 'AID5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ajuda Bast'#243
        NombreDB = 'AID6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Cap Ajuda'
        NombreDB = 'AID7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Altres Ajudes'
        NombreDB = 'AID8'
        Longitud = 100
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ortesis HKAFO'
        NombreDB = 'ORT1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ortesis KAFO'
        NombreDB = 'ORT2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ortesis AFO'
        NombreDB = 'ORT3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ortesis DAFO'
        NombreDB = 'ORT4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Ortesis Sabates'
        NombreDB = 'ORT5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Cap Ortesis'
        NombreDB = 'ORT6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Altres Ortesis'
        NombreDB = 'ORT7'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'CLAU')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'EscGMFM'
    NombreTabla = 'EscGMFM'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 168
    Top = 605
  end
  object BateriaInf: TDic
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
        Nombre = 'Orientaci'#243' - Persona'
        NombreDB = 'Persona'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Orientaci'#243' - Espai'
        NombreDB = 'Espai'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Orientaci'#243' - Temps'
        NombreDB = 'Temps'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Atenci'#243' - D'#237'gits WISC-IV'
        NombreDB = 'Digits'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Atenci'#243' - TMT part A'
        NombreDB = 'TMTa'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Atenci'#243' - Stroop - Paraula'
        NombreDB = 'Paraula'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Atenci'#243' - Stroop - Color'
        NombreDB = 'Color'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Atenci'#243' - Stroop - Paraula-Color'
        NombreDB = 'ParaulaColor'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Processament - Claus WISC-IV'
        NombreDB = 'Claus'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Processament - Animals WISC-IV'
        NombreDB = 'Animals'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Compr. Verbal - Semblances WISC-IV'
        NombreDB = 'Semblances'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Compr. Verbal - Comprensi'#243' WISC-IV'
        NombreDB = 'Comprensio'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Percepci'#243' - Figures incompletes WISC-IV'
        NombreDB = 'Figures'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Percepci'#243' - Cubs WISC-IV'
        NombreDB = 'Cubs'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mem'#242'ria - Lletres i n'#250'meros WISC-IV'
        NombreDB = 'Lletres'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mem'#242'ria - Hist'#242'ries TOMAL - record'
        NombreDB = 'Histories'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mem'#242'ria - Hist'#242'ries TOMAL - record diferit'
        NombreDB = 'HistoriesDif'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'F. executives - TMT part B'
        NombreDB = 'TMTb'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'F. executives - WCST - Categories'
        NombreDB = 'Categories'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'F. executives - WCST - Errors'
        NombreDB = 'Errors'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'F. executives - Stroop - Interfer'#232'ncia'
        NombreDB = 'Interferencia'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Orientaci'#243
        NombreDB = 'mOrientacio'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Atenci'#243' D'#237'gits'
        NombreDB = 'mDigits'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Atenci'#243' TMT - A'
        NombreDB = 'mTMTa'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Stroop'
        NombreDB = 'mStroop'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Claus'
        NombreDB = 'mClaus'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Animals'
        NombreDB = 'mAnimals'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
        ValidChars = ' '
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Semblances'
        NombreDB = 'mSemblances'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Comprensi'#243
        NombreDB = 'mComprensio'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Figures'
        NombreDB = 'mFigures'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Cubs'
        NombreDB = 'mCubs'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Lletres i n'#250'meros'
        NombreDB = 'mLletres'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP Hist'#242'ries'
        NombreDB = 'mHistories'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP TMT - B'
        NombreDB = 'mTMTb'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu NP WCST'
        NombreDB = 'mWCST'
        Longitud = 6
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          #39'NV'#39': no valorable; '#39'NP'#39': no procedeix; '#39'EMVBAF'#39': edat, motriu, ' +
          'visual, verbal, auditiva, falta col'#183'laboraci'#243
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Id')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Bateria Infantil'
    NombreTabla = 'EscBateriaInf'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'Orientaci'#243' - Persona'
      'Orientaci'#243' - Espai'
      'Orientaci'#243' - Temps'
      'Atenci'#243' - D'#237'gits WISC-IV'
      'Atenci'#243' - TMT part A'
      'Atenci'#243' - Stroop - Paraula'
      'Atenci'#243' - Stroop - Color'
      'Atenci'#243' - Stroop - Paraula-Color'
      'Processament - Claus WISC-IV'
      'Processament - Animals WISC-IV'
      'Compr. Verbal - Semblances WISC-IV'
      'Compr. Verbal - Comprensi'#243' WISC-IV'
      'Percepci'#243' - Figures incompletes WISC-IV'
      'Percepci'#243' - Cubs WISC-IV'
      'Mem'#242'ria - Lletres i n'#250'meros WISC-IV'
      'Mem'#242'ria - Hist'#242'ries TOMAL - record'
      'Mem'#242'ria - Hist'#242'ries TOMAL - record diferit'
      'F. executives - TMT part B'
      'F. executives - WCST - Categories'
      'F. executives - WCST - Errors'
      'F. executives - Stroop - Interfer'#232'ncia'
      'Motiu NP Orientaci'#243
      'Motiu NP Atenci'#243' D'#237'gits'
      'Motiu NP Atenci'#243' TMT - A'
      'Motiu NP Stroop'
      'Motiu NP Claus'
      'Motiu NP Animals'
      'Motiu NP Semblances'
      'Motiu NP Comprensi'#243
      'Motiu NP Figures'
      'Motiu NP Cubs'
      'Motiu NP Lletres i n'#250'meros'
      'Motiu NP Hist'#242'ries'
      'Motiu NP TMT - B'
      'Motiu NP WCST')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 224
    Top = 436
  end
  object PEDI: TDic
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
        Aplica = kcCaracter
        Nombre = 'SC_FS_SUM'
        NombreDB = 'SC_FS_SUM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'M_FS_SUM'
        NombreDB = 'M_FS_SUM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'SF_FS_SUM'
        NombreDB = 'SF_FS_SUM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'SC_CA_SUM'
        NombreDB = 'SC_CA_SUM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_MS_TN'
        NombreDB = 'SC_MS_TN'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_MS_TC'
        NombreDB = 'SC_MS_TC'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_MS_TR'
        NombreDB = 'SC_MS_TR'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_MS_TE'
        NombreDB = 'SC_MS_TE'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'M_CA_SUM'
        NombreDB = 'M_CA_SUM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_MS_TN'
        NombreDB = 'M_MS_TN'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_MS_TC'
        NombreDB = 'M_MS_TC'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_MS_TR'
        NombreDB = 'M_MS_TR'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_MS_TE'
        NombreDB = 'M_MS_TE'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'SF_CA_SUM'
        NombreDB = 'SF_CA_SUM'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_MS_TN'
        NombreDB = 'SF_MS_TN'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_MS_TC'
        NombreDB = 'SF_MS_TC'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_MS_TR'
        NombreDB = 'SF_MS_TR'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_MS_TE'
        NombreDB = 'SF_MS_TE'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'DATA ENTREVISTA'
        NombreDB = 'DATA_ENTREVISTA'
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
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCPEDI'
    NombreTabla = 'ESCPEDI'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'SC_FS_SUM'
      'M_FS_SUM'
      'SF_FS_SUM'
      'SC_CA_SUM'
      'SC_MS_TN'
      'SC_MS_TC'
      'SC_MS_TR'
      'SC_MS_TE'
      'M_CA_SUM'
      'M_MS_TN'
      'M_MS_TC'
      'M_MS_TR'
      'M_MS_TE'
      'SF_CA_SUM'
      'SF_MS_TN'
      'SF_MS_TC'
      'SF_MS_TR'
      'SF_MS_TE'
      'DATA ENTREVISTA')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 224
    Top = 605
  end
  object PEDI_SC: TDic
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
        Nombre = 'SC_FS_A1'
        NombreDB = 'SC_FS_A1'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_A2'
        NombreDB = 'SC_FS_A2'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_A3'
        NombreDB = 'SC_FS_A3'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_A4'
        NombreDB = 'SC_FS_A4'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_B5'
        NombreDB = 'SC_FS_B5'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_B6'
        NombreDB = 'SC_FS_B6'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_B7'
        NombreDB = 'SC_FS_B7'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_B8'
        NombreDB = 'SC_FS_B8'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_B9'
        NombreDB = 'SC_FS_B9'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_C10'
        NombreDB = 'SC_FS_C10'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_C11'
        NombreDB = 'SC_FS_C11'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_C12'
        NombreDB = 'SC_FS_C12'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_C13'
        NombreDB = 'SC_FS_C13'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_C14'
        NombreDB = 'SC_FS_C14'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_D15'
        NombreDB = 'SC_FS_D15'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_D16'
        NombreDB = 'SC_FS_D16'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_D17'
        NombreDB = 'SC_FS_D17'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_D18'
        NombreDB = 'SC_FS_D18'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_D19'
        NombreDB = 'SC_FS_D19'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_E20'
        NombreDB = 'SC_FS_E20'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_E21'
        NombreDB = 'SC_FS_E21'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_E22'
        NombreDB = 'SC_FS_E22'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_E23'
        NombreDB = 'SC_FS_E23'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_F24'
        NombreDB = 'SC_FS_F24'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_F25'
        NombreDB = 'SC_FS_F25'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_F26'
        NombreDB = 'SC_FS_F26'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_F27'
        NombreDB = 'SC_FS_F27'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_F28'
        NombreDB = 'SC_FS_F28'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_G29'
        NombreDB = 'SC_FS_G29'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_G30'
        NombreDB = 'SC_FS_G30'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_G31'
        NombreDB = 'SC_FS_G31'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_G32'
        NombreDB = 'SC_FS_G32'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_G33'
        NombreDB = 'SC_FS_G33'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_H34'
        NombreDB = 'SC_FS_H34'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_H35'
        NombreDB = 'SC_FS_H35'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_H36'
        NombreDB = 'SC_FS_H36'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_H37'
        NombreDB = 'SC_FS_H37'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_H38'
        NombreDB = 'SC_FS_H38'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_I39'
        NombreDB = 'SC_FS_I39'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_I40'
        NombreDB = 'SC_FS_I40'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_I41'
        NombreDB = 'SC_FS_I41'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_I42'
        NombreDB = 'SC_FS_I42'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_I43'
        NombreDB = 'SC_FS_I43'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_J44'
        NombreDB = 'SC_FS_J44'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_J45'
        NombreDB = 'SC_FS_J45'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_J46'
        NombreDB = 'SC_FS_J46'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_J47'
        NombreDB = 'SC_FS_J47'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_J48'
        NombreDB = 'SC_FS_J48'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_K49'
        NombreDB = 'SC_FS_K49'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_K50'
        NombreDB = 'SC_FS_K50'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_K51'
        NombreDB = 'SC_FS_K51'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_K52'
        NombreDB = 'SC_FS_K52'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_K53'
        NombreDB = 'SC_FS_K53'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_L54'
        NombreDB = 'SC_FS_L54'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_L55'
        NombreDB = 'SC_FS_L55'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_L56'
        NombreDB = 'SC_FS_L56'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_L57'
        NombreDB = 'SC_FS_L57'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_L58'
        NombreDB = 'SC_FS_L58'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_M59'
        NombreDB = 'SC_FS_M59'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_M60'
        NombreDB = 'SC_FS_M60'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_M61'
        NombreDB = 'SC_FS_M61'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_M62'
        NombreDB = 'SC_FS_M62'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_M63'
        NombreDB = 'SC_FS_M63'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_N64'
        NombreDB = 'SC_FS_N64'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_N65'
        NombreDB = 'SC_FS_N65'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_N66'
        NombreDB = 'SC_FS_N66'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_N67'
        NombreDB = 'SC_FS_N67'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_N68'
        NombreDB = 'SC_FS_N68'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_O69'
        NombreDB = 'SC_FS_O69'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_O70'
        NombreDB = 'SC_FS_O70'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_O71'
        NombreDB = 'SC_FS_O71'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_O72'
        NombreDB = 'SC_FS_O72'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_FS_O73'
        NombreDB = 'SC_FS_O73'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_CA_A'
        NombreDB = 'SC_CA_A'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_CA_B'
        NombreDB = 'SC_CA_B'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_CA_C'
        NombreDB = 'SC_CA_C'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_CA_D'
        NombreDB = 'SC_CA_D'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_CA_E'
        NombreDB = 'SC_CA_E'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_CA_F'
        NombreDB = 'SC_CA_F'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_CA_G'
        NombreDB = 'SC_CA_G'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SC_CA_H'
        NombreDB = 'SC_CA_H'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SC_MS_A'
        NombreDB = 'SC_MS_A'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SC_MS_B'
        NombreDB = 'SC_MS_B'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SC_MS_C'
        NombreDB = 'SC_MS_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SC_MS_D'
        NombreDB = 'SC_MS_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SC_MS_E'
        NombreDB = 'SC_MS_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SC_MS_F'
        NombreDB = 'SC_MS_F'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SC_MS_G'
        NombreDB = 'SC_MS_G'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SC_MS_H'
        NombreDB = 'SC_MS_H'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = PEDI
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCPEDI_SC'
    NombreTabla = 'ESCPEDI_SC'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'SC_FS_A1'
      'SC_FS_A2'
      'SC_FS_A3'
      'SC_FS_A4'
      'SC_FS_B5'
      'SC_FS_B6'
      'SC_FS_B7'
      'SC_FS_B8'
      'SC_FS_B9'
      'SC_FS_C10'
      'SC_FS_C11'
      'SC_FS_C12'
      'SC_FS_C13'
      'SC_FS_C14'
      'SC_FS_D15'
      'SC_FS_D16'
      'SC_FS_D17'
      'SC_FS_D18'
      'SC_FS_D19'
      'SC_FS_E20'
      'SC_FS_E21'
      'SC_FS_E22'
      'SC_FS_E23'
      'SC_FS_F24'
      'SC_FS_F25'
      'SC_FS_F26'
      'SC_FS_F27'
      'SC_FS_F28'
      'SC_FS_G29'
      'SC_FS_G30'
      'SC_FS_G31'
      'SC_FS_G32'
      'SC_FS_G33'
      'SC_FS_H34'
      'SC_FS_H35'
      'SC_FS_H36'
      'SC_FS_H37'
      'SC_FS_H38'
      'SC_FS_I39'
      'SC_FS_I40'
      'SC_FS_I41'
      'SC_FS_I42'
      'SC_FS_I43'
      'SC_FS_J44'
      'SC_FS_J45'
      'SC_FS_J46'
      'SC_FS_J47'
      'SC_FS_J48'
      'SC_FS_K49'
      'SC_FS_K50'
      'SC_FS_K51'
      'SC_FS_K52'
      'SC_FS_K53'
      'SC_FS_L54'
      'SC_FS_L55'
      'SC_FS_L56'
      'SC_FS_L57'
      'SC_FS_L58'
      'SC_FS_M59'
      'SC_FS_M60'
      'SC_FS_M61'
      'SC_FS_M62'
      'SC_FS_M63'
      'SC_FS_N64'
      'SC_FS_N65'
      'SC_FS_N66'
      'SC_FS_N67'
      'SC_FS_N68'
      'SC_FS_O69'
      'SC_FS_O70'
      'SC_FS_O71'
      'SC_FS_O72'
      'SC_FS_O73'
      'SC_CA_A'
      'SC_CA_B'
      'SC_CA_C'
      'SC_CA_D'
      'SC_CA_E'
      'SC_CA_F'
      'SC_CA_G'
      'SC_CA_H'
      'SC_MS_A'
      'SC_MS_B'
      'SC_MS_C'
      'SC_MS_D'
      'SC_MS_E'
      'SC_MS_F'
      'SC_MS_G'
      'SC_MS_H')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 280
    Top = 605
  end
  object PEDI_M: TDic
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
        Nombre = 'M_FS_A1'
        NombreDB = 'M_FS_A1'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_A2'
        NombreDB = 'M_FS_A2'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_A3'
        NombreDB = 'M_FS_A3'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_A4'
        NombreDB = 'M_FS_A4'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_A5'
        NombreDB = 'M_FS_A5'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_B6'
        NombreDB = 'M_FS_B6'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_B7'
        NombreDB = 'M_FS_B7'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_B8'
        NombreDB = 'M_FS_B8'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_B9'
        NombreDB = 'M_FS_B9'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_B10'
        NombreDB = 'M_FS_B10'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_C11'
        NombreDB = 'M_FS_C11'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_C12'
        NombreDB = 'M_FS_C12'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_C13'
        NombreDB = 'M_FS_C13'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_C14'
        NombreDB = 'M_FS_C14'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_C15'
        NombreDB = 'M_FS_C15'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_D16'
        NombreDB = 'M_FS_D16'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_D17'
        NombreDB = 'M_FS_D17'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_D18'
        NombreDB = 'M_FS_D18'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_D19'
        NombreDB = 'M_FS_D19'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_E20'
        NombreDB = 'M_FS_E20'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_E21'
        NombreDB = 'M_FS_E21'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_E22'
        NombreDB = 'M_FS_E22'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_E23'
        NombreDB = 'M_FS_E23'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_E24'
        NombreDB = 'M_FS_E24'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_F25'
        NombreDB = 'M_FS_F25'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_F26'
        NombreDB = 'M_FS_F26'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_F27'
        NombreDB = 'M_FS_F27'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_G28'
        NombreDB = 'M_FS_G28'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_G29'
        NombreDB = 'M_FS_G29'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_G30'
        NombreDB = 'M_FS_G30'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_G31'
        NombreDB = 'M_FS_G31'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_G32'
        NombreDB = 'M_FS_G32'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_H33'
        NombreDB = 'M_FS_H33'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_H34'
        NombreDB = 'M_FS_H34'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_H35'
        NombreDB = 'M_FS_H35'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_H36'
        NombreDB = 'M_FS_H36'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_H37'
        NombreDB = 'M_FS_H37'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_I38'
        NombreDB = 'M_FS_I38'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_I39'
        NombreDB = 'M_FS_I39'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_J40'
        NombreDB = 'M_FS_J40'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_J41'
        NombreDB = 'M_FS_J41'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_J42'
        NombreDB = 'M_FS_J42'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_J43'
        NombreDB = 'M_FS_J43'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_J44'
        NombreDB = 'M_FS_J44'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_K45'
        NombreDB = 'M_FS_K45'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_K46'
        NombreDB = 'M_FS_K46'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_K47'
        NombreDB = 'M_FS_K47'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_K48'
        NombreDB = 'M_FS_K48'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_K49'
        NombreDB = 'M_FS_K49'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_L50'
        NombreDB = 'M_FS_L50'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_L51'
        NombreDB = 'M_FS_L51'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_L52'
        NombreDB = 'M_FS_L52'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_L53'
        NombreDB = 'M_FS_L53'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_L54'
        NombreDB = 'M_FS_L54'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_M55'
        NombreDB = 'M_FS_M55'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_M56'
        NombreDB = 'M_FS_M56'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_M57'
        NombreDB = 'M_FS_M57'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_M58'
        NombreDB = 'M_FS_M58'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_FS_M59'
        NombreDB = 'M_FS_M59'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_CA_A'
        NombreDB = 'M_CA_A'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_CA_B'
        NombreDB = 'M_CA_B'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_CA_C'
        NombreDB = 'M_CA_C'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_CA_D'
        NombreDB = 'M_CA_D'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_CA_E'
        NombreDB = 'M_CA_E'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_CA_F'
        NombreDB = 'M_CA_F'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M_CA_G'
        NombreDB = 'M_CA_G'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcCodigo
        Nombre = 'M_MS_A'
        NombreDB = 'M_MS_A'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'M_MS_B'
        NombreDB = 'M_MS_B'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'M_MS_C'
        NombreDB = 'M_MS_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'M_MS_D'
        NombreDB = 'M_MS_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'M_MS_E'
        NombreDB = 'M_MS_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'M_MS_F'
        NombreDB = 'M_MS_F'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'M_MS_G'
        NombreDB = 'M_MS_G'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = PEDI
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCPEDI_M'
    NombreTabla = 'ESCPEDI_M'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'M_FS_A1'
      'M_FS_A2'
      'M_FS_A3'
      'M_FS_A4'
      'M_FS_A5'
      'M_FS_B6'
      'M_FS_B7'
      'M_FS_B8'
      'M_FS_B9'
      'M_FS_B10'
      'M_FS_C11'
      'M_FS_C12'
      'M_FS_C13'
      'M_FS_C14'
      'M_FS_C15'
      'M_FS_D16'
      'M_FS_D17'
      'M_FS_D18'
      'M_FS_D19'
      'M_FS_E20'
      'M_FS_E21'
      'M_FS_E22'
      'M_FS_E23'
      'M_FS_E24'
      'M_FS_F25'
      'M_FS_F26'
      'M_FS_F27'
      'M_FS_G28'
      'M_FS_G29'
      'M_FS_G30'
      'M_FS_G31'
      'M_FS_G32'
      'M_FS_H33'
      'M_FS_H34'
      'M_FS_H35'
      'M_FS_H36'
      'M_FS_H37'
      'M_FS_I38'
      'M_FS_I39'
      'M_FS_J40'
      'M_FS_J41'
      'M_FS_J42'
      'M_FS_J43'
      'M_FS_J44'
      'M_FS_K45'
      'M_FS_K46'
      'M_FS_K47'
      'M_FS_K48'
      'M_FS_K49'
      'M_FS_L50'
      'M_FS_L51'
      'M_FS_L52'
      'M_FS_L53'
      'M_FS_L54'
      'M_FS_M55'
      'M_FS_M56'
      'M_FS_M57'
      'M_FS_M58'
      'M_FS_M59'
      'M_CA_A'
      'M_CA_B'
      'M_CA_C'
      'M_CA_D'
      'M_CA_E'
      'M_CA_F'
      'M_CA_G'
      'M_MS_A'
      'M_MS_B'
      'M_MS_C'
      'M_MS_D'
      'M_MS_E'
      'M_MS_F'
      'M_MS_G')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 344
    Top = 605
  end
  object PEDI_SF: TDic
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
        Nombre = 'SF_FS_A1'
        NombreDB = 'SF_FS_A1'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_A2'
        NombreDB = 'SF_FS_A2'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_A3'
        NombreDB = 'SF_FS_A3'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_A4'
        NombreDB = 'SF_FS_A4'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_A5'
        NombreDB = 'SF_FS_A5'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_B6'
        NombreDB = 'SF_FS_B6'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_B7'
        NombreDB = 'SF_FS_B7'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_B8'
        NombreDB = 'SF_FS_B8'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_B9'
        NombreDB = 'SF_FS_B9'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_B10'
        NombreDB = 'SF_FS_B10'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_C11'
        NombreDB = 'SF_FS_C11'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_C12'
        NombreDB = 'SF_FS_C12'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_C13'
        NombreDB = 'SF_FS_C13'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_C14'
        NombreDB = 'SF_FS_C14'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_C15'
        NombreDB = 'SF_FS_C15'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_D16'
        NombreDB = 'SF_FS_D16'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_D17'
        NombreDB = 'SF_FS_D17'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_D18'
        NombreDB = 'SF_FS_D18'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_D19'
        NombreDB = 'SF_FS_D19'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_D20'
        NombreDB = 'SF_FS_D20'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_E21'
        NombreDB = 'SF_FS_E21'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_E22'
        NombreDB = 'SF_FS_E22'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_E23'
        NombreDB = 'SF_FS_E23'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_E24'
        NombreDB = 'SF_FS_E24'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_E25'
        NombreDB = 'SF_FS_E25'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_F26'
        NombreDB = 'SF_FS_F26'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_F27'
        NombreDB = 'SF_FS_F27'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_F28'
        NombreDB = 'SF_FS_F28'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_F29'
        NombreDB = 'SF_FS_F29'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_F30'
        NombreDB = 'SF_FS_F30'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_G31'
        NombreDB = 'SF_FS_G31'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_G32'
        NombreDB = 'SF_FS_G32'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_G33'
        NombreDB = 'SF_FS_G33'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_G34'
        NombreDB = 'SF_FS_G34'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_G35'
        NombreDB = 'SF_FS_G35'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_H36'
        NombreDB = 'SF_FS_H36'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_H37'
        NombreDB = 'SF_FS_H37'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_H38'
        NombreDB = 'SF_FS_H38'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_H39'
        NombreDB = 'SF_FS_H39'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_H40'
        NombreDB = 'SF_FS_H40'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_I41'
        NombreDB = 'SF_FS_I41'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_I42'
        NombreDB = 'SF_FS_I42'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_I43'
        NombreDB = 'SF_FS_I43'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_I44'
        NombreDB = 'SF_FS_I44'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_I45'
        NombreDB = 'SF_FS_I45'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_J46'
        NombreDB = 'SF_FS_J46'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_J47'
        NombreDB = 'SF_FS_J47'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_J48'
        NombreDB = 'SF_FS_J48'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_J49'
        NombreDB = 'SF_FS_J49'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_J50'
        NombreDB = 'SF_FS_J50'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_K51'
        NombreDB = 'SF_FS_K51'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_K52'
        NombreDB = 'SF_FS_K52'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_K53'
        NombreDB = 'SF_FS_K53'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_K54'
        NombreDB = 'SF_FS_K54'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_K55'
        NombreDB = 'SF_FS_K55'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_L56'
        NombreDB = 'SF_FS_L56'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_L57'
        NombreDB = 'SF_FS_L57'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_L58'
        NombreDB = 'SF_FS_L58'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_L59'
        NombreDB = 'SF_FS_L59'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_L60'
        NombreDB = 'SF_FS_L60'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_M61'
        NombreDB = 'SF_FS_M61'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_M62'
        NombreDB = 'SF_FS_M62'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_M63'
        NombreDB = 'SF_FS_M63'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_M64'
        NombreDB = 'SF_FS_M64'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_FS_M65'
        NombreDB = 'SF_FS_M65'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_CA_A'
        NombreDB = 'SF_CA_A'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_CA_B'
        NombreDB = 'SF_CA_B'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_CA_C'
        NombreDB = 'SF_CA_C'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_CA_D'
        NombreDB = 'SF_CA_D'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'SF_CA_E'
        NombreDB = 'SF_CA_E'
        Longitud = 1
        MaskDisplay = '0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '0,1,2,3,4,5'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SF_MS_A'
        NombreDB = 'SF_MS_A'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SF_MS_B'
        NombreDB = 'SF_MS_B'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SF_MS_C'
        NombreDB = 'SF_MS_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SF_MS_D'
        NombreDB = 'SF_MS_D'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
      end
      item
        Aplica = kcCodigo
        Nombre = 'SF_MS_E'
        NombreDB = 'SF_MS_E'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'N,C,R,E'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = PEDI
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCPEDI_SF'
    NombreTabla = 'ESCPEDI_SF'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'SF_FS_A1'
      'SF_FS_A2'
      'SF_FS_A3'
      'SF_FS_A4'
      'SF_FS_A5'
      'SF_FS_B6'
      'SF_FS_B7'
      'SF_FS_B8'
      'SF_FS_B9'
      'SF_FS_B10'
      'SF_FS_C11'
      'SF_FS_C12'
      'SF_FS_C13'
      'SF_FS_C14'
      'SF_FS_C15'
      'SF_FS_D16'
      'SF_FS_D17'
      'SF_FS_D18'
      'SF_FS_D19'
      'SF_FS_D20'
      'SF_FS_E21'
      'SF_FS_E22'
      'SF_FS_E23'
      'SF_FS_E24'
      'SF_FS_E25'
      'SF_FS_F26'
      'SF_FS_F27'
      'SF_FS_F28'
      'SF_FS_F29'
      'SF_FS_F30'
      'SF_FS_G31'
      'SF_FS_G32'
      'SF_FS_G33'
      'SF_FS_G34'
      'SF_FS_G35'
      'SF_FS_H36'
      'SF_FS_H37'
      'SF_FS_H38'
      'SF_FS_H39'
      'SF_FS_H40'
      'SF_FS_I41'
      'SF_FS_I42'
      'SF_FS_I43'
      'SF_FS_I44'
      'SF_FS_I45'
      'SF_FS_J46'
      'SF_FS_J47'
      'SF_FS_J48'
      'SF_FS_J49'
      'SF_FS_J50'
      'SF_FS_K51'
      'SF_FS_K52'
      'SF_FS_K53'
      'SF_FS_K54'
      'SF_FS_K55'
      'SF_FS_L56'
      'SF_FS_L57'
      'SF_FS_L58'
      'SF_FS_L59'
      'SF_FS_L60'
      'SF_FS_M61'
      'SF_FS_M62'
      'SF_FS_M63'
      'SF_FS_M64'
      'SF_FS_M65'
      'SF_CA_A'
      'SF_CA_B'
      'SF_CA_C'
      'SF_CA_D'
      'SF_CA_E'
      'SF_MS_A'
      'SF_MS_B'
      'SF_MS_C'
      'SF_MS_D'
      'SF_MS_E')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 400
    Top = 605
  end
  object NIHSS: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 5 Dret'
        NombreDB = 'EXPLICA5D'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 5 Esquerre'
        NombreDB = 'EXPLICA5E'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 6 Dret'
        NombreDB = 'EXPLICA6D'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 6 Esquerre'
        NombreDB = 'EXPLICA6E'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 7 Bra'#231' Dret'
        NombreDB = 'EXPLICA7BD'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 7 Bra'#231' Esquerre'
        NombreDB = 'EXPLICA7BE'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 7 Cama Dreta'
        NombreDB = 'EXPLICA7CD'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 7 Cama Esquerra'
        NombreDB = 'EXPLICA7CE'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Explicaci'#243' 10'
        NombreDB = 'EXPLICA10'
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
          'CLAU')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCNIHSS'
    NombreTabla = 'ESCNIHSS'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 392
    Top = 316
  end
  object PCRS: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCPCRS'
    NombreTabla = 'ESCPCRS'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 288
    Top = 436
  end
  object RSAB: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCRSAB'
    NombreTabla = 'ESCRSAB'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 344
    Top = 436
  end
  object PMRQ: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCPMRQ'
    NombreTabla = 'ESCPMRQ'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 404
    Top = 436
  end
  object BRIEF_A: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCBRIEF_A'
    NombreTabla = 'ESCBRIEF_A'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 468
    Top = 436
  end
  object C_PCRS: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CONSULTA'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA DATE,'
      '         ENTRADA INTEGER,'
      '         ANULAT CHAR(1),'
      '         Q1 INTEGER,'
      '         Q2 INTEGER,'
      '         Q3 INTEGER,'
      '         Q4 INTEGER,'
      '         Q5 INTEGER,'
      '         Q6 INTEGER,'
      '         Q7 INTEGER,'
      '         Q8 INTEGER,'
      '         Q9 INTEGER,'
      '         Q10 INTEGER,'
      '         Q11 INTEGER,'
      '         Q12 INTEGER,'
      '         Q13 INTEGER,'
      '         Q14 INTEGER,'
      '         Q15 INTEGER,'
      '         Q16 INTEGER,'
      '         Q17 INTEGER,'
      '         Q18 INTEGER,'
      '         Q19 INTEGER,'
      '         Q20 INTEGER,'
      '         Q21 INTEGER,'
      '         Q22 INTEGER,'
      '         Q23 INTEGER,'
      '         Q24 INTEGER,'
      '         Q25 INTEGER,'
      '         Q26 INTEGER,'
      '         Q27 INTEGER,'
      '         Q28 INTEGER,'
      '         Q29 INTEGER,'
      '         Q30 INTEGER)'
      'AS'
      '      DECLARE VARIABLE HISTORIA_ANT INTEGER;'
      '      DECLARE VARIABLE TRACTAMENT_ANT INTEGER;'
      '      DECLARE VARIABLE DATA_ANT DATE;'
      '      DECLARE VARIABLE ENTRADA_ANT INTEGER;'
      '      DECLARE VARIABLE ANULAT_ANT CHAR(1);'
      '      DECLARE VARIABLE PREGUNTA INTEGER;'
      '      DECLARE VARIABLE RESPOSTA INTEGER;'
      'BEGIN'
      '  /* INICIALITZEM VARIABLES DE TREBALL */'
      '  HISTORIA=NULL;'
      '  TRACTAMENT=NULL;'
      '  DATA=NULL;'
      '  ENTRADA=NULL;'
      '  ANULAT='#39#39';'
      '  '
      '  IF (DATAI IS NULL) THEN DATAI='#39'01.07.2007'#39';'
      '  IF (DATAF IS NULL) THEN DATAF='#39'31.12.9999'#39';'
      ''
      
        '  FOR SELECT C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, ' +
        'C.ANULAT, W.PREGUNTA, W.RESPOSTA'
      '  FROM ESCALESCAP C'
      '  JOIN ESCPCRS W ON C.CLAU=W.CLAU'
      '  WHERE C.C_ESCALA = 76'
      '  AND C.DATA >= :DATAI AND C.DATA <= :DATAF'
      
        '  ORDER BY C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, W.' +
        'PREGUNTA'
      
        '  INTO :HISTORIA_ANT, :TRACTAMENT_ANT, :DATA_ANT, :ENTRADA_ANT, ' +
        ':ANULAT_ANT, :PREGUNTA, :RESPOSTA'
      '  DO BEGIN'
      
        '    IF (((HISTORIA <> HISTORIA_ANT) OR (TRACTAMENT <> TRACTAMENT' +
        '_ANT) OR (DATA <> DATA_ANT) OR (ENTRADA <> ENTRADA_ANT))) THEN'
      '    BEGIN'
      '      SUSPEND;'
      
        '      /* INICIALITZEM TOTES LES VARIABLES UN COP ESCRIT EL REGIS' +
        'TRE */'
      
        '      Q1=NULL;Q2=NULL;Q3=NULL;Q4=NULL;Q5=NULL;Q6=NULL;Q7=NULL;Q8' +
        '=NULL;'
      
        '      Q9=NULL;Q10=NULL;Q11=NULL;Q12=NULL;Q13=NULL;Q14=NULL;Q15=N' +
        'ULL;Q16=NULL;'
      
        '      Q17=NULL;Q18=NULL;Q19=NULL;Q20=NULL;Q21=NULL;Q22=NULL;Q23=' +
        'NULL;Q24=NULL;'
      '      Q25=NULL;Q26=NULL;Q27=NULL;Q28=NULL;Q29=NULL;Q30=NULL;'
      '    END;'
      ''
      '    IF (PREGUNTA = 1) THEN Q1=RESPOSTA;'
      '    IF (PREGUNTA = 2) THEN Q2=RESPOSTA;'
      '    IF (PREGUNTA = 3) THEN Q3=RESPOSTA;'
      '    IF (PREGUNTA = 4) THEN Q4=RESPOSTA;'
      '    IF (PREGUNTA = 5) THEN Q5=RESPOSTA;'
      '    IF (PREGUNTA = 6) THEN Q6=RESPOSTA;'
      '    IF (PREGUNTA = 7) THEN Q7=RESPOSTA;'
      '    IF (PREGUNTA = 8) THEN Q8=RESPOSTA;'
      '    IF (PREGUNTA = 9) THEN Q9=RESPOSTA;'
      '    IF (PREGUNTA = 10) THEN Q10=RESPOSTA;'
      '    IF (PREGUNTA = 11) THEN Q11=RESPOSTA;'
      '    IF (PREGUNTA = 12) THEN Q12=RESPOSTA;'
      '    IF (PREGUNTA = 13) THEN Q13=RESPOSTA;'
      '    IF (PREGUNTA = 14) THEN Q14=RESPOSTA;'
      '    IF (PREGUNTA = 15) THEN Q15=RESPOSTA;'
      '    IF (PREGUNTA = 16) THEN Q16=RESPOSTA;'
      '    IF (PREGUNTA = 17) THEN Q17=RESPOSTA;'
      '    IF (PREGUNTA = 18) THEN Q18=RESPOSTA;'
      '    IF (PREGUNTA = 19) THEN Q19=RESPOSTA;'
      '    IF (PREGUNTA = 20) THEN Q20=RESPOSTA;'
      '    IF (PREGUNTA = 21) THEN Q21=RESPOSTA;'
      '    IF (PREGUNTA = 22) THEN Q22=RESPOSTA;'
      '    IF (PREGUNTA = 23) THEN Q23=RESPOSTA;'
      '    IF (PREGUNTA = 24) THEN Q24=RESPOSTA;'
      '    IF (PREGUNTA = 25) THEN Q25=RESPOSTA;'
      '    IF (PREGUNTA = 26) THEN Q26=RESPOSTA;'
      '    IF (PREGUNTA = 27) THEN Q27=RESPOSTA;'
      '    IF (PREGUNTA = 28) THEN Q28=RESPOSTA;'
      '    IF (PREGUNTA = 29) THEN Q29=RESPOSTA;'
      '    IF (PREGUNTA = 30) THEN Q30=RESPOSTA;'
      ''
      '    HISTORIA=HISTORIA_ANT;'
      '    TRACTAMENT=TRACTAMENT_ANT;'
      '    DATA=DATA_ANT;'
      '    ENTRADA=ENTRADA_ANT;'
      '    ANULAT=ANULAT_ANT;'
      '  END;'
      '  /* L'#39'ULTIM REGISTRE CAL PINTAR-LO */'
      '  SUSPEND;'
      'END')
    Dic1 = PCRS
    Dic1Name = 'PCRS'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 288
    Top = 484
  end
  object C_RSAB: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CONSULTA'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA DATE,'
      '         ENTRADA INTEGER,'
      '         ANULAT CHAR(1),'
      '         Q1 INTEGER,'
      '         Q2 INTEGER,'
      '         Q3 INTEGER,'
      '         Q4 INTEGER,'
      '         Q5 INTEGER,'
      '         Q6 INTEGER,'
      '         Q7 INTEGER,'
      '         Q8 INTEGER,'
      '         Q9 INTEGER,'
      '         Q10 INTEGER,'
      '         Q11 INTEGER,'
      '         Q12 INTEGER,'
      '         Q13 INTEGER,'
      '         Q14 INTEGER)'
      'AS'
      '      DECLARE VARIABLE HISTORIA_ANT INTEGER;'
      '      DECLARE VARIABLE TRACTAMENT_ANT INTEGER;'
      '      DECLARE VARIABLE DATA_ANT DATE;'
      '      DECLARE VARIABLE ENTRADA_ANT INTEGER;'
      '      DECLARE VARIABLE ANULAT_ANT CHAR(1);'
      '      DECLARE VARIABLE PREGUNTA INTEGER;'
      '      DECLARE VARIABLE RESPOSTA INTEGER;'
      'BEGIN'
      '  /* INICIALITZEM VARIABLES DE TREBALL */'
      '  HISTORIA=NULL;'
      '  TRACTAMENT=NULL;'
      '  DATA=NULL;'
      '  ENTRADA=NULL;'
      '  ANULAT='#39#39';'
      '  '
      '  IF (DATAI IS NULL) THEN DATAI='#39'01.07.2007'#39';'
      '  IF (DATAF IS NULL) THEN DATAF='#39'31.12.9999'#39';'
      ''
      
        '  FOR SELECT C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, ' +
        'C.ANULAT, W.PREGUNTA, W.RESPOSTA'
      '  FROM ESCALESCAP C'
      '  JOIN ESCRSAB W ON C.CLAU=W.CLAU'
      '  WHERE C.C_ESCALA = 77'
      '  AND C.DATA >= :DATAI AND C.DATA <= :DATAF'
      
        '  ORDER BY C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, W.' +
        'PREGUNTA'
      
        '  INTO :HISTORIA_ANT, :TRACTAMENT_ANT, :DATA_ANT, :ENTRADA_ANT, ' +
        ':ANULAT_ANT, :PREGUNTA, :RESPOSTA'
      '  DO BEGIN'
      
        '    IF (((HISTORIA <> HISTORIA_ANT) OR (TRACTAMENT <> TRACTAMENT' +
        '_ANT) OR (DATA <> DATA_ANT) OR (ENTRADA <> ENTRADA_ANT))) THEN'
      '    BEGIN'
      '      SUSPEND;'
      
        '      /* INICIALITZEM TOTES LES VARIABLES UN COP ESCRIT EL REGIS' +
        'TRE */'
      
        '      Q1=NULL;Q2=NULL;Q3=NULL;Q4=NULL;Q5=NULL;Q6=NULL;Q7=NULL;Q8' +
        '=NULL;'
      '      Q9=NULL;Q10=NULL;Q11=NULL;Q12=NULL;Q13=NULL;Q14=NULL;'
      '    END;'
      ''
      '    IF (PREGUNTA = 1) THEN Q1=RESPOSTA;'
      '    IF (PREGUNTA = 2) THEN Q2=RESPOSTA;'
      '    IF (PREGUNTA = 3) THEN Q3=RESPOSTA;'
      '    IF (PREGUNTA = 4) THEN Q4=RESPOSTA;'
      '    IF (PREGUNTA = 5) THEN Q5=RESPOSTA;'
      '    IF (PREGUNTA = 6) THEN Q6=RESPOSTA;'
      '    IF (PREGUNTA = 7) THEN Q7=RESPOSTA;'
      '    IF (PREGUNTA = 8) THEN Q8=RESPOSTA;'
      '    IF (PREGUNTA = 9) THEN Q9=RESPOSTA;'
      '    IF (PREGUNTA = 10) THEN Q10=RESPOSTA;'
      '    IF (PREGUNTA = 11) THEN Q11=RESPOSTA;'
      '    IF (PREGUNTA = 12) THEN Q12=RESPOSTA;'
      '    IF (PREGUNTA = 13) THEN Q13=RESPOSTA;'
      '    IF (PREGUNTA = 14) THEN Q14=RESPOSTA;'
      ''
      '    HISTORIA=HISTORIA_ANT;'
      '    TRACTAMENT=TRACTAMENT_ANT;'
      '    DATA=DATA_ANT;'
      '    ENTRADA=ENTRADA_ANT;'
      '    ANULAT=ANULAT_ANT;'
      '  END;'
      '  /* L'#39'ULTIM REGISTRE CAL PINTAR-LO */'
      '  SUSPEND;'
      'END')
    Dic1 = RSAB
    Dic1Name = 'RSAB'
    Abierta = False
    Borrame = False
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
    Top = 484
  end
  object C_PMRQ: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CONSULTA'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA DATE,'
      '         ENTRADA INTEGER,'
      '         ANULAT CHAR(1),'
      '         Q1 INTEGER,'
      '         Q2 INTEGER,'
      '         Q3 INTEGER,'
      '         Q4 INTEGER,'
      '         Q5 INTEGER,'
      '         Q6 INTEGER,'
      '         Q7 INTEGER,'
      '         Q8 INTEGER,'
      '         Q9 INTEGER,'
      '         Q10 INTEGER,'
      '         Q11 INTEGER,'
      '         Q12 INTEGER,'
      '         Q13 INTEGER,'
      '         Q14 INTEGER,'
      '         Q15 INTEGER,'
      '         Q16 INTEGER)'
      'AS'
      '      DECLARE VARIABLE HISTORIA_ANT INTEGER;'
      '      DECLARE VARIABLE TRACTAMENT_ANT INTEGER;'
      '      DECLARE VARIABLE DATA_ANT DATE;'
      '      DECLARE VARIABLE ENTRADA_ANT INTEGER;'
      '      DECLARE VARIABLE ANULAT_ANT CHAR(1);'
      '      DECLARE VARIABLE PREGUNTA INTEGER;'
      '      DECLARE VARIABLE RESPOSTA INTEGER;'
      'BEGIN'
      '  /* INICIALITZEM VARIABLES DE TREBALL */'
      '  HISTORIA=NULL;'
      '  TRACTAMENT=NULL;'
      '  DATA=NULL;'
      '  ENTRADA=NULL;'
      '  ANULAT='#39#39';'
      '  '
      '  IF (DATAI IS NULL) THEN DATAI='#39'01.07.2007'#39';'
      '  IF (DATAF IS NULL) THEN DATAF='#39'31.12.9999'#39';'
      ''
      
        '  FOR SELECT C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, ' +
        'C.ANULAT, W.PREGUNTA, W.RESPOSTA'
      '  FROM ESCALESCAP C'
      '  JOIN ESCPMRQ W ON C.CLAU=W.CLAU'
      '  WHERE C.C_ESCALA = 78'
      '  AND C.DATA >= :DATAI AND C.DATA <= :DATAF'
      
        '  ORDER BY C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, W.' +
        'PREGUNTA'
      
        '  INTO :HISTORIA_ANT, :TRACTAMENT_ANT, :DATA_ANT, :ENTRADA_ANT, ' +
        ':ANULAT_ANT, :PREGUNTA, :RESPOSTA'
      '  DO BEGIN'
      
        '    IF (((HISTORIA <> HISTORIA_ANT) OR (TRACTAMENT <> TRACTAMENT' +
        '_ANT) OR (DATA <> DATA_ANT) OR (ENTRADA <> ENTRADA_ANT))) THEN'
      '    BEGIN'
      '      SUSPEND;'
      
        '      /* INICIALITZEM TOTES LES VARIABLES UN COP ESCRIT EL REGIS' +
        'TRE */'
      
        '      Q1=NULL;Q2=NULL;Q3=NULL;Q4=NULL;Q5=NULL;Q6=NULL;Q7=NULL;Q8' +
        '=NULL;'
      
        '      Q9=NULL;Q10=NULL;Q11=NULL;Q12=NULL;Q13=NULL;Q14=NULL;Q15=N' +
        'ULL;Q16=NULL;'
      '    END;'
      ''
      '    IF (PREGUNTA = 1) THEN Q1=RESPOSTA;'
      '    IF (PREGUNTA = 2) THEN Q2=RESPOSTA;'
      '    IF (PREGUNTA = 3) THEN Q3=RESPOSTA;'
      '    IF (PREGUNTA = 4) THEN Q4=RESPOSTA;'
      '    IF (PREGUNTA = 5) THEN Q5=RESPOSTA;'
      '    IF (PREGUNTA = 6) THEN Q6=RESPOSTA;'
      '    IF (PREGUNTA = 7) THEN Q7=RESPOSTA;'
      '    IF (PREGUNTA = 8) THEN Q8=RESPOSTA;'
      '    IF (PREGUNTA = 9) THEN Q9=RESPOSTA;'
      '    IF (PREGUNTA = 10) THEN Q10=RESPOSTA;'
      '    IF (PREGUNTA = 11) THEN Q11=RESPOSTA;'
      '    IF (PREGUNTA = 12) THEN Q12=RESPOSTA;'
      '    IF (PREGUNTA = 13) THEN Q13=RESPOSTA;'
      '    IF (PREGUNTA = 14) THEN Q14=RESPOSTA;'
      '    IF (PREGUNTA = 15) THEN Q15=RESPOSTA;'
      '    IF (PREGUNTA = 16) THEN Q16=RESPOSTA;'
      ''
      '    HISTORIA=HISTORIA_ANT;'
      '    TRACTAMENT=TRACTAMENT_ANT;'
      '    DATA=DATA_ANT;'
      '    ENTRADA=ENTRADA_ANT;'
      '    ANULAT=ANULAT_ANT;'
      '  END;'
      '  /* L'#39'ULTIM REGISTRE CAL PINTAR-LO */'
      '  SUSPEND;'
      'END')
    Dic1 = PMRQ
    Dic1Name = 'PMRQ'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 404
    Top = 484
  end
  object C_BRIEF_A: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CONSULTA'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         DATA DATE,'
      '         ENTRADA INTEGER,'
      '         ANULAT CHAR(1),'
      '         Q1 INTEGER,'
      '         Q2 INTEGER,'
      '         Q3 INTEGER,'
      '         Q4 INTEGER,'
      '         Q5 INTEGER,'
      '         Q6 INTEGER,'
      '         Q7 INTEGER,'
      '         Q8 INTEGER,'
      '         Q9 INTEGER,'
      '         Q10 INTEGER,'
      '         Q11 INTEGER,'
      '         Q12 INTEGER,'
      '         Q13 INTEGER,'
      '         Q14 INTEGER,'
      '         Q15 INTEGER,'
      '         Q16 INTEGER,'
      '         Q17 INTEGER,'
      '         Q18 INTEGER,'
      '         Q19 INTEGER,'
      '         Q20 INTEGER,'
      '         Q21 INTEGER,'
      '         Q22 INTEGER,'
      '         Q23 INTEGER,'
      '         Q24 INTEGER,'
      '         Q25 INTEGER,'
      '         Q26 INTEGER,'
      '         Q27 INTEGER,'
      '         Q28 INTEGER,'
      '         Q29 INTEGER,'
      '         Q30 INTEGER,'
      '         Q31 INTEGER,'
      '         Q32 INTEGER,'
      '         Q33 INTEGER,'
      '         Q34 INTEGER,'
      '         Q35 INTEGER,'
      '         Q36 INTEGER,'
      '         Q37 INTEGER,'
      '         Q38 INTEGER,'
      '         Q39 INTEGER,'
      '         Q40 INTEGER,'
      '         Q41 INTEGER,'
      '         Q42 INTEGER,'
      '         Q43 INTEGER,'
      '         Q44 INTEGER,'
      '         Q45 INTEGER,'
      '         Q46 INTEGER,'
      '         Q47 INTEGER,'
      '         Q48 INTEGER,'
      '         Q49 INTEGER,'
      '         Q50 INTEGER,'
      '         Q51 INTEGER,'
      '         Q52 INTEGER,'
      '         Q53 INTEGER,'
      '         Q54 INTEGER,'
      '         Q55 INTEGER,'
      '         Q56 INTEGER,'
      '         Q57 INTEGER,'
      '         Q58 INTEGER,'
      '         Q59 INTEGER,'
      '         Q60 INTEGER,'
      '         Q61 INTEGER,'
      '         Q62 INTEGER,'
      '         Q63 INTEGER,'
      '         Q64 INTEGER,'
      '         Q65 INTEGER,'
      '         Q66 INTEGER,'
      '         Q67 INTEGER,'
      '         Q68 INTEGER,'
      '         Q69 INTEGER,'
      '         Q70 INTEGER,'
      '         Q71 INTEGER,'
      '         Q72 INTEGER,'
      '         Q73 INTEGER,'
      '         Q74 INTEGER,'
      '         Q75 INTEGER'
      '         )'
      'AS'
      '      DECLARE VARIABLE HISTORIA_ANT INTEGER;'
      '      DECLARE VARIABLE TRACTAMENT_ANT INTEGER;'
      '      DECLARE VARIABLE DATA_ANT DATE;'
      '      DECLARE VARIABLE ENTRADA_ANT INTEGER;'
      '      DECLARE VARIABLE ANULAT_ANT CHAR(1);'
      '      DECLARE VARIABLE PREGUNTA INTEGER;'
      '      DECLARE VARIABLE RESPOSTA INTEGER;'
      'BEGIN'
      '  /* INICIALITZEM VARIABLES DE TREBALL */'
      '  HISTORIA=NULL;'
      '  TRACTAMENT=NULL;'
      '  DATA=NULL;'
      '  ENTRADA=NULL;'
      '  ANULAT='#39#39';'
      '  '
      '  IF (DATAI IS NULL) THEN DATAI='#39'01.07.2007'#39';'
      '  IF (DATAF IS NULL) THEN DATAF='#39'31.12.9999'#39';'
      ''
      
        '  FOR SELECT C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, ' +
        'C.ANULAT, W.PREGUNTA, W.RESPOSTA'
      '  FROM ESCALESCAP C'
      '  JOIN ESCBRIEF_A W ON C.CLAU=W.CLAU'
      '  WHERE C.C_ESCALA = 79'
      '  AND C.DATA >= :DATAI AND C.DATA <= :DATAF'
      
        '  ORDER BY C.C_HISTORIA, C.C_TRACTAMENT, C.DATA, C.C_ENTRADA, W.' +
        'PREGUNTA'
      
        '  INTO :HISTORIA_ANT, :TRACTAMENT_ANT, :DATA_ANT, :ENTRADA_ANT, ' +
        ':ANULAT_ANT, :PREGUNTA, :RESPOSTA'
      '  DO BEGIN'
      
        '    IF (((HISTORIA <> HISTORIA_ANT) OR (TRACTAMENT <> TRACTAMENT' +
        '_ANT) OR (DATA <> DATA_ANT) OR (ENTRADA <> ENTRADA_ANT))) THEN'
      '    BEGIN'
      '      SUSPEND;'
      
        '      /* INICIALITZEM TOTES LES VARIABLES UN COP ESCRIT EL REGIS' +
        'TRE */'
      
        '      Q1=NULL;Q2=NULL;Q3=NULL;Q4=NULL;Q5=NULL;Q6=NULL;Q7=NULL;Q8' +
        '=NULL;'
      
        '      Q9=NULL;Q10=NULL;Q11=NULL;Q12=NULL;Q13=NULL;Q14=NULL;Q15=N' +
        'ULL;Q16=NULL;'
      
        '      Q17=NULL;Q18=NULL;Q19=NULL;Q20=NULL;Q21=NULL;Q22=NULL;Q23=' +
        'NULL;Q24=NULL;'
      
        '      Q25=NULL;Q26=NULL;Q27=NULL;Q28=NULL;Q29=NULL;Q30=NULL;Q31=' +
        'NULL;Q32=NULL;'
      
        '      Q33=NULL;Q34=NULL;Q35=NULL;Q36=NULL;Q37=NULL;Q38=NULL;Q39=' +
        'NULL;Q40=NULL;'
      
        '      Q41=NULL;Q42=NULL;Q43=NULL;Q44=NULL;Q45=NULL;Q46=NULL;Q47=' +
        'NULL;Q48=NULL;'
      
        '      Q49=NULL;Q50=NULL;Q51=NULL;Q52=NULL;Q53=NULL;Q54=NULL;Q55=' +
        'NULL;Q56=NULL;'
      
        '      Q57=NULL;Q58=NULL;Q59=NULL;Q60=NULL;Q61=NULL;Q62=NULL;Q63=' +
        'NULL;Q64=NULL;'
      
        '      Q65=NULL;Q66=NULL;Q67=NULL;Q68=NULL;Q69=NULL;Q70=NULL;Q71=' +
        'NULL;Q72=NULL;'
      '      Q73=NULL;Q74=NULL;Q75=NULL;'
      '    END;'
      ''
      '    IF (PREGUNTA = 1) THEN Q1=RESPOSTA;'
      '    IF (PREGUNTA = 2) THEN Q2=RESPOSTA;'
      '    IF (PREGUNTA = 3) THEN Q3=RESPOSTA;'
      '    IF (PREGUNTA = 4) THEN Q4=RESPOSTA;'
      '    IF (PREGUNTA = 5) THEN Q5=RESPOSTA;'
      '    IF (PREGUNTA = 6) THEN Q6=RESPOSTA;'
      '    IF (PREGUNTA = 7) THEN Q7=RESPOSTA;'
      '    IF (PREGUNTA = 8) THEN Q8=RESPOSTA;'
      '    IF (PREGUNTA = 9) THEN Q9=RESPOSTA;'
      '    IF (PREGUNTA = 10) THEN Q10=RESPOSTA;'
      '    IF (PREGUNTA = 11) THEN Q11=RESPOSTA;'
      '    IF (PREGUNTA = 12) THEN Q12=RESPOSTA;'
      '    IF (PREGUNTA = 13) THEN Q13=RESPOSTA;'
      '    IF (PREGUNTA = 14) THEN Q14=RESPOSTA;'
      '    IF (PREGUNTA = 15) THEN Q15=RESPOSTA;'
      '    IF (PREGUNTA = 16) THEN Q16=RESPOSTA;'
      '    IF (PREGUNTA = 17) THEN Q17=RESPOSTA;'
      '    IF (PREGUNTA = 18) THEN Q18=RESPOSTA;'
      '    IF (PREGUNTA = 19) THEN Q19=RESPOSTA;'
      '    IF (PREGUNTA = 20) THEN Q20=RESPOSTA;'
      '    IF (PREGUNTA = 21) THEN Q21=RESPOSTA;'
      '    IF (PREGUNTA = 22) THEN Q22=RESPOSTA;'
      '    IF (PREGUNTA = 23) THEN Q23=RESPOSTA;'
      '    IF (PREGUNTA = 24) THEN Q24=RESPOSTA;'
      '    IF (PREGUNTA = 25) THEN Q25=RESPOSTA;'
      '    IF (PREGUNTA = 26) THEN Q26=RESPOSTA;'
      '    IF (PREGUNTA = 27) THEN Q27=RESPOSTA;'
      '    IF (PREGUNTA = 28) THEN Q28=RESPOSTA;'
      '    IF (PREGUNTA = 29) THEN Q29=RESPOSTA;'
      '    IF (PREGUNTA = 30) THEN Q30=RESPOSTA;'
      '    IF (PREGUNTA = 31) THEN Q31=RESPOSTA;'
      '    IF (PREGUNTA = 32) THEN Q32=RESPOSTA;'
      '    IF (PREGUNTA = 33) THEN Q33=RESPOSTA;'
      '    IF (PREGUNTA = 34) THEN Q34=RESPOSTA;'
      '    IF (PREGUNTA = 35) THEN Q35=RESPOSTA;'
      '    IF (PREGUNTA = 36) THEN Q36=RESPOSTA;'
      '    IF (PREGUNTA = 37) THEN Q37=RESPOSTA;'
      '    IF (PREGUNTA = 38) THEN Q38=RESPOSTA;'
      '    IF (PREGUNTA = 39) THEN Q39=RESPOSTA;'
      '    IF (PREGUNTA = 40) THEN Q40=RESPOSTA;'
      '    IF (PREGUNTA = 41) THEN Q41=RESPOSTA;'
      '    IF (PREGUNTA = 42) THEN Q42=RESPOSTA;'
      '    IF (PREGUNTA = 43) THEN Q43=RESPOSTA;'
      '    IF (PREGUNTA = 44) THEN Q44=RESPOSTA;'
      '    IF (PREGUNTA = 45) THEN Q45=RESPOSTA;'
      '    IF (PREGUNTA = 46) THEN Q46=RESPOSTA;'
      '    IF (PREGUNTA = 47) THEN Q47=RESPOSTA;'
      '    IF (PREGUNTA = 48) THEN Q48=RESPOSTA;'
      '    IF (PREGUNTA = 49) THEN Q49=RESPOSTA;'
      '    IF (PREGUNTA = 50) THEN Q50=RESPOSTA;'
      '    IF (PREGUNTA = 51) THEN Q51=RESPOSTA;'
      '    IF (PREGUNTA = 52) THEN Q52=RESPOSTA;'
      '    IF (PREGUNTA = 53) THEN Q53=RESPOSTA;'
      '    IF (PREGUNTA = 54) THEN Q54=RESPOSTA;'
      '    IF (PREGUNTA = 55) THEN Q55=RESPOSTA;'
      '    IF (PREGUNTA = 56) THEN Q56=RESPOSTA;'
      '    IF (PREGUNTA = 57) THEN Q57=RESPOSTA;'
      '    IF (PREGUNTA = 58) THEN Q58=RESPOSTA;'
      '    IF (PREGUNTA = 59) THEN Q59=RESPOSTA;'
      '    IF (PREGUNTA = 60) THEN Q60=RESPOSTA;'
      '    IF (PREGUNTA = 61) THEN Q61=RESPOSTA;'
      '    IF (PREGUNTA = 62) THEN Q62=RESPOSTA;'
      '    IF (PREGUNTA = 63) THEN Q63=RESPOSTA;'
      '    IF (PREGUNTA = 64) THEN Q64=RESPOSTA;'
      '    IF (PREGUNTA = 65) THEN Q65=RESPOSTA;'
      '    IF (PREGUNTA = 66) THEN Q66=RESPOSTA;'
      '    IF (PREGUNTA = 67) THEN Q67=RESPOSTA;'
      '    IF (PREGUNTA = 68) THEN Q68=RESPOSTA;'
      '    IF (PREGUNTA = 69) THEN Q69=RESPOSTA;'
      '    IF (PREGUNTA = 70) THEN Q70=RESPOSTA;'
      '    IF (PREGUNTA = 71) THEN Q71=RESPOSTA;'
      '    IF (PREGUNTA = 72) THEN Q72=RESPOSTA;'
      '    IF (PREGUNTA = 73) THEN Q73=RESPOSTA;'
      '    IF (PREGUNTA = 74) THEN Q74=RESPOSTA;'
      '    IF (PREGUNTA = 75) THEN Q75=RESPOSTA;'
      ''
      '    HISTORIA=HISTORIA_ANT;'
      '    TRACTAMENT=TRACTAMENT_ANT;'
      '    DATA=DATA_ANT;'
      '    ENTRADA=ENTRADA_ANT;'
      '    ANULAT=ANULAT_ANT;'
      '  END;'
      '  /* L'#39'ULTIM REGISTRE CAL PINTAR-LO */'
      '  SUSPEND;'
      'END')
    Dic1 = BRIEF_A
    Dic1Name = 'BRIEF_A'
    Abierta = False
    Borrame = False
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
    Top = 484
  end
  object ENTREVISTA: TDic
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
        Aplica = kcMODELS
        Nombre = 'ENT1'
        NombreDB = 'ENT1'
        Longitud = 2
        Consulta = 'ENT1'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcSiNo
        Nombre = 'ENT2'
        NombreDB = 'ENT2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT2A'
        NombreDB = 'ENT2A'
        Longitud = 2
        Consulta = 'ENT2A'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT2B'
        NombreDB = 'ENT2B'
        Longitud = 2
        Consulta = 'ENT2B'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT3'
        NombreDB = 'ENT3'
        Longitud = 2
        Consulta = 'ENT3'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT4'
        NombreDB = 'ENT4'
        Longitud = 2
        Consulta = 'ENT4'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT5'
        NombreDB = 'ENT5'
        Longitud = 2
        Consulta = 'ENT5'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..3'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT6'
        NombreDB = 'ENT6'
        Longitud = 2
        Consulta = 'ENT6'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'DOLOR COM INFERMERIA'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT7'
        NombreDB = 'ENT7'
        Longitud = 2
        Consulta = 'ENT7'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT8'
        NombreDB = 'ENT8'
        Longitud = 2
        Consulta = 'ENT8'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT9'
        NombreDB = 'ENT9'
        Longitud = 2
        Consulta = 'ENT9'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..4'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ENT9_MOTIU'
        NombreDB = 'ENT9_MOTIU'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'altres raons'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT10'
        NombreDB = 'ENT10'
        Longitud = 2
        Consulta = 'ENT10'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT11'
        NombreDB = 'ENT11'
        Longitud = 2
        Consulta = 'ENT11'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_1'
        NombreDB = 'ENT12_1'
        Longitud = 2
        Consulta = 'ENT12_1'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_2'
        NombreDB = 'ENT12_2'
        Longitud = 2
        Consulta = 'ENT12_2'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_3'
        NombreDB = 'ENT12_3'
        Longitud = 2
        Consulta = 'ENT12_3'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_4'
        NombreDB = 'ENT12_4'
        Longitud = 2
        Consulta = 'ENT12_4'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_5'
        NombreDB = 'ENT12_5'
        Longitud = 2
        Consulta = 'ENT12_5'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_6'
        NombreDB = 'ENT12_6'
        Longitud = 2
        Consulta = 'ENT12_6'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_7'
        NombreDB = 'ENT12_7'
        Longitud = 2
        Consulta = 'ENT12_7'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_8'
        NombreDB = 'ENT12_8'
        Longitud = 2
        Consulta = 'ENT12_8'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_9'
        NombreDB = 'ENT12_9'
        Longitud = 2
        Consulta = 'ENT12_9'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_10'
        NombreDB = 'ENT12_10'
        Longitud = 2
        Consulta = 'ENT12_10'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_11'
        NombreDB = 'ENT12_11'
        Longitud = 2
        Consulta = 'ENT12_11'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_12'
        NombreDB = 'ENT12_12'
        Longitud = 2
        Consulta = 'ENT12_12'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT12_13'
        NombreDB = 'ENT12_13'
        Longitud = 2
        Consulta = 'ENT12_13'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1..7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT13'
        NombreDB = 'ENT13'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0..10'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ENT14'
        NombreDB = 'ENT14'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0..10'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'ENT1'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT1')
        CopiarOrigen.Strings = (
          'ENT1')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'ENT1'#39
      end
      item
        Nombre = 'ENT2A'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT2A')
        CopiarOrigen.Strings = (
          'ENT2A')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI ='#39'ENT2'#39
      end
      item
        Nombre = 'ENT2B'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT2B')
        CopiarOrigen.Strings = (
          'ENT2B')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI ='#39'ENT2'#39
      end
      item
        Nombre = 'ENT3'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT3')
        CopiarOrigen.Strings = (
          'ENT3')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI ='#39'ENT3'#39
      end
      item
        Nombre = 'ENT4'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT4')
        CopiarOrigen.Strings = (
          'ENT4')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT4'#39
      end
      item
        Nombre = 'ENT5'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT5')
        CopiarOrigen.Strings = (
          'ENT5')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT5'#39
      end
      item
        Nombre = 'ENT7'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT7')
        CopiarOrigen.Strings = (
          'ENT7')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'ENT7'#39
      end
      item
        Nombre = 'ENT8'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT8')
        CopiarOrigen.Strings = (
          'ENT8')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI ='#39'ENT8'#39
      end
      item
        Nombre = 'ENT9'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT9')
        CopiarOrigen.Strings = (
          'ENT9')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI ='#39'ENT9'#39
      end
      item
        Nombre = 'ENT10'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT10')
        CopiarOrigen.Strings = (
          'ENT10')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'ENT10'#39
      end
      item
        Nombre = 'ENT11'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT11')
        CopiarOrigen.Strings = (
          'ENT11')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'ENT10'#39
      end
      item
        Nombre = 'ENT12_1'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_1')
        CopiarOrigen.Strings = (
          'ENT12_1')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_2'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_2')
        CopiarOrigen.Strings = (
          'ENT12_2')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_3'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_3')
        CopiarOrigen.Strings = (
          'ENT12_3')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_4'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_4')
        CopiarOrigen.Strings = (
          'ENT12_4')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_5'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_5')
        CopiarOrigen.Strings = (
          'ENT12_5')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_6'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_6')
        CopiarOrigen.Strings = (
          'ENT12_6')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_7'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_7')
        CopiarOrigen.Strings = (
          'ENT12_7')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_8'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_8')
        CopiarOrigen.Strings = (
          'ENT12_8')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_9'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_9')
        CopiarOrigen.Strings = (
          'ENT12_9')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_10'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_10')
        CopiarOrigen.Strings = (
          'ENT12_10')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_11'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_11')
        CopiarOrigen.Strings = (
          'ENT12_11')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_12'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_12')
        CopiarOrigen.Strings = (
          'ENT12_12')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT12_13'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT12_13')
        CopiarOrigen.Strings = (
          'ENT12_13')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI='#39'ENT12'#39
      end
      item
        Nombre = 'ENT6'
        Master = V_entrevista
        BuscaOrigen.Strings = (
          'ENT6')
        CopiarOrigen.Strings = (
          'ENT6')
        CopiarMaster.Strings = (
          'C_CODI')
        BuscaMaster.Strings = (
          'C_CODI')
        WhereFiltro = 'TIPUSCODI = '#39'ENT6'#39
      end>
    Nombre = 'ENTREVISTA'
    NombreTabla = 'ESCENTREVISTA'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'ENT1'
      'ENT2'
      'ENT2A'
      'ENT2B'
      'ENT3'
      'ENT4'
      'ENT5'
      'ENT6'
      'ENT7'
      'ENT8'
      'ENT9'
      'ENT9_MOTIU'
      'ENT10'
      'ENT11'
      'ENT12_1'
      'ENT12_2'
      'ENT12_3'
      'ENT12_4'
      'ENT12_5'
      'ENT12_6'
      'ENT12_7'
      'ENT12_8'
      'ENT12_9'
      'ENT12_10'
      'ENT12_11'
      'ENT12_12'
      'ENT12_13'
      'ENT13'
      'ENT14')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 304
    Top = 376
  end
  object V_entrevista: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'TIPUSCODI'
        NombreDB = 'TIPUSCODI'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C_CODI'
        NombreDB = 'C_CODI'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'N_CODI'
        NombreDB = 'N_CODI'
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
          'TIPUSCODI'
          'C_CODI')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Valoracions Entrevista Dolor'
    NombreTabla = 'EscVENTREVISTA'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_CODI'
      'N_CODI')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 469
    Top = 376
  end
  object EntrevistaDolor: TDic
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
        Comentario = 'PK i FK a EscEntrevista'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C_ITEM'
        NombreDB = 'C_ITEM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK a INFERITEMS'
      end
      item
        Aplica = kcCaracter
        Nombre = 'VALOR'
        NombreDB = 'VALOR'
        Longitud = 15
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = ENTREVISTA
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ENTREVISTADOLOR'
    NombreTabla = 'ENTREVISTADOLOR'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'C_ITEM'
      'VALOR')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 388
    Top = 376
  end
  object EscalesPendents: TDic
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
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'FK tractaments'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Proc'#233's'
        NombreDB = 'C_Proces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'FK tractaments'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Escala'
        NombreDB = 'C_Escala'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'escala'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK escales'
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
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I, T, A, S'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 1
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari no procedeix'
        NombreDB = 'Usuari_NP'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data no procedeix'
        NombreDB = 'Data_NP'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Refer'#232'ncia'
        NombreDB = 'Referencia'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'P.ex: a l'#39'escala EVA indica la localitzaci'#243
      end
      item
        Aplica = kcFecha
        Nombre = 'Data pendent'
        NombreDB = 'Data_Pendent'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'P.ex: a l'#39'escala EVA, indica des de quan est'#224' pendent'
      end>
    Indices = <
      item
        Nombre = 'PK'
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
        Nombre = 'tot'
        NombreDB = 'tot'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament'
          'Proc'#233's'
          'Escala'
          #192'rea'
          'Tipus'
          'Estat')
        Tipo = tiSecundario
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
        Nombre = 'proces'
        NombreDB = 'proces'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Proc'#233's')
        Tipo = tiSecundario
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'Codi de Proc'#233's')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'escala'
        NombreDB = 'escala'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Escala')
        Tipo = tiForaneo
        ForaneoDic = Escales
        ForaneoCampos.Strings = (
          'C Escala')
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
          #192'rea')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Areas
        ForaneoCampos.Strings = (
          'C'#243'di Area')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'referencia'
        NombreDB = 'referencia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Refer'#232'ncia')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'datapendent'
        NombreDB = 'datapendent'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data pendent')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'escala'
        Master = Escales
        BuscaOrigen.Strings = (
          'Escala')
        CopiarOrigen.Strings = (
          'Escala')
        CopiarMaster.Strings = (
          'C Escala')
        BuscaMaster.Strings = (
          'C Escala')
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
        WhereFiltro = 'TIPUSCODI = "ESTAT_ESCPENDENT"'
      end>
    Nombre = 'Escales Pendents Nou'
    NombreTabla = 'EscalesPendents'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Tractament'
      'Proc'#233's'
      'Escala'
      #192'rea'
      'Tipus'
      'Estat'
      'Usuari no procedeix'
      'Data no procedeix'
      'Refer'#232'ncia')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 36
    Top = 144
  end
  object EscalesObligacions: TDic
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
        AutoContador.Dic = wDataConfig.Accesos
        Comentario = 'PK'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Escala'
        NombreDB = 'C_Escala'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'escala'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK escales'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup d'#39'U.M.'
        NombreDB = 'Grup'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = '* vol dir q '#233's obligada per tots els grups'
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
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = '* vol dir q '#233's obligada per totes les prestacions'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Obligada a l'#39'ingr'#233's'
        NombreDB = 'Obliga_I'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'valor X si '#233's obligat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Obligada a l'#39'alta de tractament'
        NombreDB = 'Obliga_T'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'valor X si '#233's obligat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Obligada a l'#39'alta definitiva'
        NombreDB = 'Obliga_A'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'valor X si '#233's obligat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Obligada a la revisi'#243
        NombreDB = 'Obliga_R'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'valor X si '#233's obligat'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Obligada no TIR'
        NombreDB = 'Obliga_NoTIR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'valor X si '#233's obligat'
      end
      item
        Aplica = kcMODELS
        Nombre = #201's una escala infantil'
        NombreDB = 'Infantil'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'S N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Edat escala infantil'
        NombreDB = 'EdatInfantil'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'edat m'#224'xima per passar l'#39'escala si '#233's infantil'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Periodicitat (dies)'
        NombreDB = 'Periodicitat'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'obligat'#242'ria cada x dies'
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
        Nombre = 'escala'
        NombreDB = 'escala'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Escala')
        Tipo = tiForaneo
        ForaneoDic = Escales
        ForaneoCampos.Strings = (
          'C Escala')
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
          #192'rea')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Areas
        ForaneoCampos.Strings = (
          'C'#243'di Area')
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
          #192'rea'
          'Escala'
          'Grup d'#39'U.M.'
          'Prestaci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'escala'
        Master = Escales
        BuscaOrigen.Strings = (
          'Escala')
        CopiarOrigen.Strings = (
          'Escala')
        CopiarMaster.Strings = (
          'C Escala')
        BuscaMaster.Strings = (
          'C Escala')
      end>
    Nombre = 'Escales Obligacions'
    NombreTabla = 'EscalesObligacions'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Escala'
      'Grup d'#39'U.M.'
      #192'rea'
      'Prestaci'#243
      'Obligada a l'#39'ingr'#233's'
      'Obligada a l'#39'alta de tractament'
      'Obligada a l'#39'alta definitiva'
      'Obligada a la revisi'#243
      'Obligada no TIR'
      #201's una escala infantil'
      'Edat escala infantil'
      'Periodicitat (dies)')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 44
    Top = 80
  end
  object InsertaPendents_I: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inserta_I'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '      DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      '      DECLARE VARIABLE C_PROCES    INTEGER;'
      ''
      '      DECLARE VARIABLE GRUP_UM     CHAR(1);'
      '      DECLARE VARIABLE EDAT        INTEGER;'
      '      DECLARE VARIABLE DATA_NAIX   DATE;'
      '      DECLARE VARIABLE GLF         VARCHAR(15);'
      ''
      '      DECLARE VARIABLE C_ESCALA    INTEGER;'
      '      DECLARE VARIABLE C_AREA      VARCHAR(3);'
      '      DECLARE VARIABLE ID          INTEGER;'
      '      DECLARE VARIABLE PEND        INTEGER;'
      '      '
      '      DECLARE VARIABLE ESTAT       SMALLINT;'
      '      DECLARE VARIABLE D_ITEM      VARCHAR(15);'
      '      DECLARE VARIABLE V_APT       INTEGER;'
      '      DECLARE VARIABLE VALOR       INTEGER;'
      '      DECLARE VARIABLE SURT_APT    CHAR(1);'
      '      DECLARE VARIABLE TIPUS       CHAR(1);'
      'BEGIN'
      ''
      '   /* Donat un TRACTAMENT'
      '      busquem les ESCALES OBLIGAT'#210'RIES a l'#39'INGR'#201'S,'
      '      segons el GRUP d'#39'UM i l'#39'EDAT'
      '      i les insertem a ESCALESPENDENTS amb tipus I */'
      ''
      '      /* Busquem la hist'#242'ria, la prestaci'#243' i el proc'#233's */'
      '      SELECT C_HISTORIA, C_PRESTACIO, C_PROCES'
      '      FROM   TRACTAMENTS'
      '      WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '      INTO  :C_HISTORIA, :C_PRESTACIO, :C_PROCES;'
      ''
      
        '      /* Pot ser que no hi hagi proc'#233's (algunes escales s'#243'n obli' +
        'gat'#242'ries per tots els ingressos ??)'
      
        '         El posem a zero per utilitzar-lo com a variable de treb' +
        'all */'
      '      IF (C_PROCES IS NULL) THEN C_PROCES = 0;'
      ''
      '      DATA_NAIX = NULL;'
      '      /* Busquem el grup d'#39'unitats m'#232'diques d'#39'aquest pacient */'
      '      SELECT UM.C_GRUP, F.EDAT, F.FECHA_NAC, F.GLF'
      '      FROM   FILIACIO F'
      '      JOIN   UNITATM UM ON F.C_UNITATMEDICA = UM.C_UNITATM'
      '      WHERE  F.NUM_HIST = :C_HISTORIA'
      '      INTO  :GRUP_UM, :EDAT, :DATA_NAIX, :GLF;'
      ''
      '      IF (DATA_NAIX IS NOT NULL) THEN'
      '      BEGIN'
      ''
      
        '            /* Busquem les escales obligat'#242'ries segons '#224'rea, gru' +
        'p d'#39'UM, edat, prestaci'#243'... */'
      '            FOR SELECT DISTINCT O.C_ESCALA, O.C_AREA'
      '                FROM   ESCALESOBLIGACIONS O'
      
        '                WHERE (O.GRUP = :GRUP_UM OR O.GRUP = '#39'*'#39' OR (:GL' +
        'F = '#39'14.1'#39' AND O.GRUP IN ('#39'A'#39','#39'C'#39'))) /* Per als Politraumatismes' +
        ' TCE+LM s'#39'han de disparar tant les del grup A com les del grup C' +
        ' */'
      
        '                AND   (O.C_PRESTACIO = :C_PRESTACIO OR O.C_PREST' +
        'ACIO = '#39'*'#39')'
      '                AND   (O.OBLIGA_I = '#39'X'#39')'
      
        '                AND ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = '#39'N' +
        #39') OR (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = '#39'S'#39'))'
      '                ORDER  BY C_AREA, C_ESCALA'
      '                INTO  :C_ESCALA, :C_AREA'
      '            DO BEGIN'
      ''
      
        '                  /* Insertarem l'#39'escala a ESCALESPENDENTS si no' +
        ' est'#224' entrada.'
      
        '                     La GOAT i la COAT han de quedar pendents fi' +
        'ns que surti d'#39'APT.'
      
        '                     Per tant, hem de comprovar quines entrades ' +
        'hi ha, i amb quins valors */'
      '               '
      ''
      '                  /* GOAT  i  COAT */'
      '                  IF ((C_ESCALA = 4) OR (C_ESCALA = 63)) THEN'
      '                  BEGIN'
      ''
      '                        ESTAT = -1;'
      '                  '
      
        '                        /* Anem recorrent les entrades   (ens '#233's' +
        ' igual quina '#224'rea l'#39'entri) */'
      '                        FOR SELECT L.D_ITEM'
      '                            FROM   ESCALESCAP C'
      
        '                            JOIN   ESCALESLIN L ON C.CLAU = L.CL' +
        'AU'
      
        '                            JOIN   TRACTAMENTS T ON C.C_TRACTAME' +
        'NT = T.C_TRACTAMENT'
      '                            WHERE  C.C_ESCALA = :C_ESCALA'
      
        '                            AND   (T.C_PROCES = :C_PROCES OR (:C' +
        '_PROCES = 0 AND C.C_TRACTAMENT = :C_TRACTAMENT))'
      
        '                            AND    C.ANULAT <> '#39'D'#39' AND C.ANULAT ' +
        '<> '#39'S'#39
      '                            ORDER  BY C.DATA'
      '                            INTO  :D_ITEM'
      '                        DO BEGIN'
      ''
      
        '                            IF (ESTAT = -1) THEN ESTAT = 0; /* p' +
        'er saber que hem entrat al bucle i que per tant han entrat l'#39'esc' +
        'ala alguna vegada */'
      '                      '
      
        '                            /* Quan ja tinguem ESTAT = 2, no seg' +
        'uirem perqu'#232' vol dir que ja hem sortit d'#39'APT dues vegades */'
      '                            IF (ESTAT < 2) THEN'
      '                            BEGIN'
      '                      '
      
        '                                  IF      ( (C_ESCALA = 4) AND (' +
        'F_Substr('#39'*'#39', D_ITEM) = 0) ) THEN EDAT = 100;   /* GOAT versi'#243' e' +
        'st'#224'ndard */'
      
        '                                  ELSE IF ( (C_ESCALA = 4) AND (' +
        'F_Substr('#39'*'#39', D_ITEM) > 0) ) THEN EDAT = 200;   /* GOAT versi'#243' e' +
        'lecci'#243' m'#250'ltiple */'
      
        '                                  /* Per la COAT ja tenim l'#39'edat' +
        ' calculada abans */                             /* COAT = GOAT i' +
        'nfantil */'
      ''
      
        '                                  /* Busquem el valor APT segons' +
        ' l'#39'edat (o el par'#224'metre) */'
      
        '                                  SELECT VALORAPT FROM ESCVAPTCO' +
        'AT WHERE EDAT = :EDAT INTO :V_APT;'
      ''
      
        '                                  /* traiem l'#39'asterisc '#39'*'#39' si hi' +
        ' '#233's (versi'#243' elecci'#243' m'#250'ltiple) */'
      
        '/*                                  VALOR = F_NumeroOk(D_ITEM); ' +
        '  */'
      
        '                                  VALOR = F_StripString(D_ITEM, ' +
        #39'* '#39');'
      ''
      
        '                                  IF (VALOR >= V_APT) THEN SURT_' +
        'APT = '#39'S'#39';'
      
        '                                                      ELSE SURT_' +
        'APT = '#39'N'#39';'
      ''
      
        '                                  /* Si surt d'#39'APT, sumem 1 a l'#39 +
        'estat, altrament el posem a 0 (de nou) */'
      
        '                                  IF (SURT_APT = '#39'S'#39') THEN ESTAT' +
        ' = ESTAT + 1;'
      
        '                                                      ELSE ESTAT' +
        ' = 0;'
      '                            END;'
      ''
      '                        END;'
      '                  '
      '                        /* Quan acabem el proc'#233's:'
      
        '                          Si estat = -1, no han entrat l'#39'escala ' +
        '      => l'#39'escala est'#224' pendent - estat 0 i tipus I'
      
        '                          Si estat = 0, no ha sortit d'#39'APT      ' +
        '      => l'#39'escala est'#224' pendent - estat 0 i tipus C'
      
        '                          Si estat = 1, ha sortit un cop d'#39'APT  ' +
        '      => l'#39'escala est'#224' pendent - estat 1 i tipus C   (final del ' +
        'bucle i no ha tornat a 0)'
      
        '                          Si estat = 2, ja ha sortit d'#39'APT 2 veg' +
        'ades  => l'#39'escala no est'#224' pendent          */'
      ''
      '                        IF (ESTAT = -1) THEN'
      '                        BEGIN'
      '                              ESTAT = 0;'
      '                              TIPUS = '#39'I'#39';'
      '                        END;'
      '                        ELSE  TIPUS = '#39'C'#39';'
      ''
      ''
      
        '                        /* Si ten'#237'em c_proces a 0 el passem a Nu' +
        'll per insertar el registre correctament */'
      '                        IF (C_PROCES = 0) THEN C_PROCES = NULL;'
      ''
      '                        /* Insertem el registre si cal */'
      
        '                        IF (ESTAT <> 2) THEN INSERT INTO ESCALES' +
        'PENDENTS ( C_TRACTAMENT,  C_PROCES,  C_ESCALA,  C_AREA,  TIPUS, ' +
        ' ESTAT)'
      
        '                                             VALUES             ' +
        '         (:C_TRACTAMENT, :C_PROCES, :C_ESCALA, :C_AREA, :TIPUS, ' +
        ':ESTAT);'
      '                  END;'
      ''
      ''
      
        '                  /* Per la resta d'#39'escales mirem si l'#39'escala ja' +
        ' est'#224' entrada per aquesta '#224'rea'
      
        '                                                                ' +
        '            o per un usuari l'#39#224'rea del qual no tingui '#237'tems d'#39'aq' +
        'uesta escala */'
      '                  ELSE BEGIN'
      ''
      '                        ID = 0; PEND = 0;'
      ''
      '                        SELECT C.CLAU'
      '                        FROM   ESCALESCAP C'
      
        '                        JOIN   TRACTAMENTS T ON C.C_TRACTAMENT =' +
        ' T.C_TRACTAMENT'
      '                        JOIN   METGES M ON C.C_USUARI = M.CODI'
      
        '                        JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_' +
        'ESPECIAL'
      
        '/*                        WHERE (T.C_PROCES = :C_PROCES OR (:C_P' +
        'ROCES = 0 AND C.C_TRACTAMENT = :C_TRACTAMENT)) */'
      '                        WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      
        '                        AND   (T.C_PROCES = :C_PROCES OR :C_PROC' +
        'ES = 0)'
      '                        AND    C.C_ESCALA = :C_ESCALA'
      '                        AND    Upper(C.TIPUS) = '#39'I'#39
      
        '                        AND    C.ANULAT <> '#39'S'#39' AND C.ANULAT <> '#39 +
        'D'#39'    /* si est'#224' entrada per un resident i pendent de validar, c' +
        'onsiderem que est'#224' entrada */'
      
        '                        AND    E.C_AREA NOT IN (SELECT DISTINCT ' +
        'AREA_USUARI'
      
        '                                                FROM   ESCALESIT' +
        'EMS'
      
        '                                                WHERE  C_ESCALA ' +
        '= :C_ESCALA'
      
        '                                                AND    AREA_USUA' +
        'RI <> :C_AREA  AND  AREA_USUARI <> '#39'***'#39')'
      '                        ROWS   1'
      '                        INTO  :ID;'
      ''
      
        '                        /* Si ten'#237'em c_proces a 0 el passem a Nu' +
        'll per insertar el registre correctament */'
      '                        IF (C_PROCES = 0) THEN C_PROCES = NULL;'
      ''
      
        '                        /* Si no l'#39'han entrat, la posem a penden' +
        'ts */'
      
        '                        IF (ID = 0) THEN  INSERT INTO ESCALESPEN' +
        'DENTS ( C_TRACTAMENT,  C_PROCES,  C_ESCALA,  C_AREA, TIPUS)'
      
        '                                          VALUES                ' +
        '      (:C_TRACTAMENT, :C_PROCES, :C_ESCALA, :C_AREA,  '#39'I'#39' );'
      '                  END;'
      '            END;'
      '            '
      '      END;'
      'END')
    Dic1 = EscalesPendents
    Dic2 = EscalesObligacions
    Dic1Name = 'escalespendents'
    Dic2Name = 'escalesobligacions'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 244
    Top = 144
  end
  object InsertaPendents_A: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inserta_A'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '      DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      '      DECLARE VARIABLE C_PROCES    INTEGER;'
      '      DECLARE VARIABLE FI_PROCES   CHAR(1);'
      ''
      '      DECLARE VARIABLE GRUP_UM     CHAR(1);'
      '      DECLARE VARIABLE EDAT        INTEGER;'
      '      DECLARE VARIABLE DATA_NAIX   DATE;'
      '      DECLARE VARIABLE GLF         VARCHAR(15);'
      ''
      '      DECLARE VARIABLE TIPUS       CHAR(1);'
      ''
      '      DECLARE VARIABLE C_ESCALA    INTEGER;'
      '      DECLARE VARIABLE C_AREA      VARCHAR(3);'
      '      '
      '      DECLARE VARIABLE ID          INTEGER;'
      '      DECLARE VARIABLE PEND        INTEGER;'
      'BEGIN'
      ''
      '   /* Donat un TRACTAMENT'
      
        '      busquem les ESCALES OBLIGAT'#210'RIES a l'#39'ALTA per PROCESSOS RE' +
        'HABILITADORS,'
      '      segons el GRUP d'#39'UM i l'#39'EDAT'
      
        '      i les insertem a ESCALESPENDENTS amb tipus A o T (en funci' +
        #243' de si el Proc'#233's finalitza o no) */'
      '      '
      '      /* Busquem la hist'#242'ria i el proc'#233's */'
      
        '      /* El proc'#233's no ser'#224' null perqu'#232' nom'#233's cridarem aquesta pr' +
        'ocedure si fan una alta d'#39'un tractament rehabilitador */'
      '      SELECT C_HISTORIA, C_PRESTACIO, C_PROCES, FI_PROCES'
      '      FROM   TRACTAMENTS'
      '      WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '      INTO  :C_HISTORIA, :C_PRESTACIO, :C_PROCES, :FI_PROCES;'
      ''
      '      DATA_NAIX = NULL;'
      '      /* Busquem el grup d'#39'unitats m'#232'diques d'#39'aquest pacient */'
      '      SELECT UM.C_GRUP, F.EDAT, F.FECHA_NAC, F.GLF'
      '      FROM   FILIACIO F'
      '      JOIN   UNITATM UM ON F.C_UNITATMEDICA = UM.C_UNITATM'
      '      WHERE  F.NUM_HIST = :C_HISTORIA'
      '      INTO  :GRUP_UM, :EDAT, :DATA_NAIX, :GLF;'
      ''
      '      IF (DATA_NAIX IS NOT NULL) THEN'
      '      BEGIN'
      '      '
      '            IF (FI_PROCES = '#39'S'#39') THEN TIPUS = '#39'A'#39';'
      '                                 ELSE TIPUS = '#39'T'#39';'
      ''
      
        '            /* Si '#233's FI DE PROC'#201'S insertarem les escales pendent' +
        's a l'#39'alta definitiva (tipus A) */'
      
        '            /* altrament, insertarem les escales pendents a l'#39'al' +
        'ta de tractament (tipus T) */'
      '            FOR SELECT DISTINCT O.C_ESCALA, O.C_AREA'
      '                FROM   ESCALESOBLIGACIONS O'
      
        '                WHERE (O.GRUP = :GRUP_UM OR O.GRUP = '#39'*'#39' OR (:GL' +
        'F = '#39'14.1'#39' AND O.GRUP IN ('#39'A'#39','#39'C'#39'))) /* Per als Politraumatismes' +
        ' TCE+LM s'#39'han de disparar tant les del grup A com les del grup C' +
        ' */'
      
        '                AND   (O.C_PRESTACIO = :C_PRESTACIO OR O.C_PREST' +
        'ACIO = '#39'*'#39')'
      
        '                AND ((:FI_PROCES = '#39'S'#39' AND O.OBLIGA_A = '#39'X'#39')  OR' +
        '  (:FI_PROCES = '#39'N'#39' AND O.OBLIGA_T = '#39'X'#39'))'
      
        '                AND ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = '#39'N' +
        #39')  OR  (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = '#39'S'#39'))'
      '                ORDER  BY C_AREA, C_ESCALA'
      '                INTO  :C_ESCALA, :C_AREA'
      '            DO BEGIN'
      '      '
      
        '                  /* Mirem si l'#39'escala ja est'#224' entrada per aques' +
        'ta '#224'rea  o  per un usuari l'#39#224'rea del qual no tingui '#237'tems d'#39'aque' +
        'sta escala */'
      ''
      '                  ID = 0; PEND = 0;'
      ''
      
        '                  /* Si l'#39'escala nom'#233's correspon a una '#224'rea, mir' +
        'em si est'#224' entrada (ens '#233's igual l'#39#224'rea) */'
      
        '                  /* Altrament, mirem que estigui entrada per l'#39 +
        #224'rea obligat'#242'ria o per una que no tingui '#237'tems de l'#39'escala */'
      
        '                  /* De fet, aix'#242' es pot resumir en un '#250'nic sele' +
        'ct */'
      ''
      '                  SELECT C.CLAU'
      '                  FROM   ESCALESCAP C'
      '                  JOIN   METGES M ON C.C_USUARI = M.CODI'
      
        '                  JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECI' +
        'AL'
      '                  WHERE  C.C_ESCALA = :C_ESCALA'
      
        '                  AND    C.C_TRACTAMENT = :C_TRACTAMENT       /*' +
        ' no mirem pel proc'#233's, sin'#243' pel tractament pq cada alta est'#224' asso' +
        'ciada a un tractament */'
      '                  AND    Upper(C.TIPUS) = :TIPUS'
      
        '                  AND    C.ANULAT <> '#39'S'#39' AND C.ANULAT <> '#39'D'#39'  /*' +
        ' si est'#224' entrada per un resident i pendent de validar, considere' +
        'm que est'#224' entrada */'
      
        '                  AND    E.C_AREA NOT IN (SELECT DISTINCT AREA_U' +
        'SUARI'
      '                                          FROM   ESCALESITEMS'
      
        '                                          WHERE  C_ESCALA = :C_E' +
        'SCALA'
      
        '                                          AND    AREA_USUARI <> ' +
        ':C_AREA  AND  AREA_USUARI <> '#39'***'#39')'
      '                  ROWS   1'
      '                  INTO  :ID;'
      '                  '
      
        '                  /* Si l'#39'escala ja est'#224' pendent, no cal inserta' +
        'r-la de nou */'
      '                  SELECT COUNT(*) FROM ESCALESPENDENTS'
      '                  WHERE C_PROCES = :C_PROCES'
      '                  AND   C_ESCALA = :C_ESCALA'
      '                  AND   TIPUS    = :TIPUS'
      '                  INTO  :PEND;'
      '                  '
      
        '                  /* Si no l'#39'han entrat i no est'#224' ja a pendents,' +
        ' la hi posem */'
      '                  IF ((ID = 0) AND (PEND = 0))'
      
        '                  THEN INSERT INTO ESCALESPENDENTS ( C_TRACTAMEN' +
        'T,  C_PROCES,  C_ESCALA,  C_AREA,  TIPUS)   /* ESTAT '#233's default ' +
        '0 */'
      
        '                  VALUES                      (:C_TRACTAMENT, :C' +
        '_PROCES, :C_ESCALA, :C_AREA, :TIPUS);'
      ''
      '            END;'
      ''
      '      END;'
      ''
      'END')
    Dic1 = EscalesPendents
    Dic2 = EscalesObligacions
    Dic1Name = 'escalespendents'
    Dic2Name = 'escalesobligacions'
    Abierta = False
    Borrame = False
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
    Top = 144
  end
  object InsertaPendents_R: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inserta_R'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '      DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      ''
      '      DECLARE VARIABLE GRUP_UM     CHAR(1);'
      '      DECLARE VARIABLE EDAT        INTEGER;'
      '      DECLARE VARIABLE DATA_NAIX   DATE;'
      '      DECLARE VARIABLE GLF         VARCHAR(15);'
      ''
      '      DECLARE VARIABLE C_ESCALA    INTEGER;'
      '      DECLARE VARIABLE C_AREA      VARCHAR(3);'
      '      DECLARE VARIABLE ID          INTEGER;'
      '      DECLARE VARIABLE PEND        INTEGER;'
      'BEGIN'
      ''
      '   /* Donat un TRACTAMENT'
      '      busquem les ESCALES OBLIGAT'#210'RIES per REVISIONS,'
      '      segons el GRUP d'#39'UM i l'#39'EDAT'
      '      i les insertem a ESCALESPENDENTS amb tipus S */'
      '      '
      '      SELECT C_HISTORIA, C_PRESTACIO'
      '      FROM   TRACTAMENTS'
      '      WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '      INTO  :C_HISTORIA, :C_PRESTACIO;'
      '      '
      '      SELECT UM.C_GRUP, F.EDAT, F.FECHA_NAC, F.GLF'
      '      FROM   FILIACIO F'
      '      JOIN   UNITATM UM ON F.C_UNITATMEDICA = UM.C_UNITATM'
      '      WHERE  F.NUM_HIST = :C_HISTORIA'
      '      INTO  :GRUP_UM, :EDAT, :DATA_NAIX, :GLF;'
      ''
      '      IF (DATA_NAIX IS NOT NULL) THEN'
      '      BEGIN'
      ''
      '            FOR SELECT DISTINCT O.C_ESCALA, O.C_AREA'
      '                FROM   ESCALESOBLIGACIONS O'
      
        '                WHERE (O.GRUP = :GRUP_UM OR O.GRUP = '#39'*'#39' OR (:GL' +
        'F = '#39'14.1'#39' AND O.GRUP IN ('#39'A'#39','#39'C'#39'))) /* Per als Politraumatismes' +
        ' TCE+LM s'#39'han de disparar tant les del grup A com les del grup C' +
        ' */'
      '                AND    O.OBLIGA_R = '#39'X'#39
      
        '                AND   (O.C_PRESTACIO = :C_PRESTACIO or C_PRESTAC' +
        'IO = '#39'*'#39')'
      
        '                AND ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = '#39'N' +
        #39') OR (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = '#39'S'#39'))'
      '                ORDER  BY C_AREA, C_ESCALA'
      '                INTO  :C_ESCALA, :C_AREA'
      '            DO BEGIN'
      ''
      
        '                  /* Mirem si l'#39'escala ja est'#224' entrada per aques' +
        'ta '#224'rea  o  per un usuari l'#39#224'rea del qual no tingui '#237'tems d'#39'aque' +
        'sta escala */'
      '                  ID = 0; PEND = 0;'
      ''
      '                  SELECT C.CLAU'
      '                  FROM   ESCALESCAP C'
      '                  JOIN   METGES M ON C.C_USUARI = M.CODI'
      
        '                  JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECI' +
        'AL'
      '                  WHERE  C.C_ESCALA = :C_ESCALA'
      '                  AND    C.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    Upper(C.TIPUS) = '#39'S'#39
      
        '                  AND    C.ANULAT <> '#39'S'#39' AND C.ANULAT <> '#39'D'#39'   /' +
        '* si est'#224' entrada per un resident i pendent de validar, consider' +
        'em que est'#224' entrada */'
      
        '                  AND    E.C_AREA NOT IN (SELECT DISTINCT AREA_U' +
        'SUARI'
      '                                          FROM   ESCALESITEMS'
      
        '                                          WHERE  C_ESCALA = :C_E' +
        'SCALA'
      
        '                                          AND    AREA_USUARI <> ' +
        ':C_AREA  AND  AREA_USUARI <> '#39'***'#39')'
      '                  ROWS   1'
      '                  INTO  :ID;'
      '                  '
      
        '                  /* Si l'#39'escala ja est'#224' pendent, no cal inserta' +
        'r-la de nou */'
      '                  SELECT COUNT(*) FROM ESCALESPENDENTS'
      '                  WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND   C_ESCALA     = :C_ESCALA'
      '                  AND   TIPUS        = '#39'S'#39
      '                  INTO  :PEND;'
      ''
      
        '                  /* Si no l'#39'han entrat i no est'#224' a pendents, la' +
        ' hi posem */'
      
        '                  IF ((ID = 0) AND (PEND = 0)) THEN INSERT INTO ' +
        'ESCALESPENDENTS ( C_TRACTAMENT,  C_ESCALA,  C_AREA, TIPUS)   /* ' +
        'ESTAT '#233's default 0 */'
      
        '                                                    VALUES      ' +
        '                (:C_TRACTAMENT, :C_ESCALA, :C_AREA,  '#39'S'#39' );'
      ''
      '            END;'
      ''
      '      END;'
      'END')
    Dic1 = EscalesPendents
    Dic2 = EscalesObligacions
    Dic1Name = 'escalespendents'
    Dic2Name = 'escalesobligacions'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 450
    Top = 144
  end
  object EscalesCap_CanviaEscalesAlta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CanviaEscalesAlta'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER, TIPUS CHAR(1), DATA_ALTA DATE)'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA INTEGER;'
      '      DECLARE VARIABLE C_PROCES INTEGER;'
      '      DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      '      DECLARE VARIABLE GRUP CHAR(1);'
      '      DECLARE VARIABLE EDAT INTEGER;'
      ''
      '      DECLARE VARIABLE X INTEGER;'
      '      DECLARE VARIABLE Y INTEGER;'
      ''
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      ''
      '      DECLARE VARIABLE CLAU_A INTEGER;'
      '      DECLARE VARIABLE DATA_A DATE;'
      ''
      '      DECLARE VARIABLE CLAU_CANVI INTEGER;'
      '      DECLARE VARIABLE DIES_MIN INTEGER;'
      ''
      '      DECLARE VARIABLE CLAU INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      '      DECLARE VARIABLE TRACT INTEGER;'
      '      '
      '      DECLARE VARIABLE TIP_C CHAR(1);'
      '      '
      '      DECLARE VARIABLE C_AREA VARCHAR(3);'
      ''
      'BEGIN'
      ''
      
        '      /* Canviem les escales de Continuaci'#243' (C) m'#233's properes a l' +
        'a data d'#39'alta, per escales a l'#39'alta (T o A)'
      
        '         I les d'#39'alta que queden m'#233's lluny, per escales de tipus' +
        ' C [si s'#243'n anteriors a la A o posteriors a la T], o S [si s'#243'n po' +
        'steriors a la A]'
      
        '         Posarem tipus T o A a totes les escales entrades, encar' +
        'a que no siguin obligat'#242'ries en el cas concret.'
      '      */'
      ''
      
        '      /* busquem la hist'#242'ria, el proc'#233's al qual pertany el tract' +
        'ament */'
      
        '      SELECT C_PROCES, C_HISTORIA, C_PRESTACIO FROM TRACTAMENTS ' +
        'WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :C_PROCES, :C_HISTORIA, ' +
        ':C_PRESTACIO;'
      '      /* busquem el grup d'#39'UM i l'#39'edat de la hist'#242'ria */'
      
        '      SELECT U.C_GRUP, F.EDAT FROM UNITATM U JOIN FILIACIO F ON ' +
        'U.C_UNITATM = F.C_UNITATMEDICA WHERE F.NUM_HIST = :C_HISTORIA IN' +
        'TO :GRUP, :EDAT;'
      '      '
      '      /* busquem els valors del rang d'#39'escales a l'#39'alta */'
      
        '      SELECT DIESESCALESA, CADUCITATESCALESA FROM CONFIG INTO :X' +
        ', :Y;'
      '            '
      
        '      /* Per cada escala del proc'#233's amb obligaci'#243' de ser entrada' +
        ' a l'#39'alta... */'
      
        '      FOR SELECT DISTINCT C.C_ESCALA                            ' +
        '                                                  /* per cada es' +
        'cala */'
      '          FROM   ESCALESCAP C'
      
        '          JOIN   TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      
        '/*          LEFT   OUTER JOIN ESCALESOBLIGACIONS O ON C.C_ESCALA' +
        ' = O.C_ESCALA */'
      
        '          WHERE  T.C_PROCES = :C_PROCES                         ' +
        '                                                  /* del proc'#233's ' +
        'rehabilitador */'
      
        '          AND    C.ANULAT <> '#39'D'#39' AND C.ANULAT <> '#39'S'#39'            ' +
        '                                                  /* no anul'#183'lad' +
        'a */'
      
        '/*          AND   (O.GRUP = :GRUP OR O.GRUP = '#39'*'#39')              ' +
        '                                                  /* obligat'#242'ria' +
        ' pel grup d'#39'UM *'
      
        '          AND   (O.C_PRESTACIO = :C_PRESTACIO OR O.C_PRESTACIO =' +
        ' '#39'*'#39')                                             /* obligat'#242'ria' +
        ' per la prestaci'#243' *'
      
        '          AND   (O.OBLIGA_T = '#39'X'#39'  OR  O.OBLIGA_A = '#39'X'#39')        ' +
        '                                                  /* obligat'#242'ria' +
        ' a l'#39'alta  *'
      
        '          AND  ((O.INFANTIL = '#39'S'#39' AND :EDAT <= O.EDATINFANTIL) O' +
        'R (O.INFANTIL = '#39'N'#39' AND :EDAT > O.EDATINFANTIL))  /* obligat'#242'ria' +
        ' per edat */'
      
        '          AND  C.TIPUS IN ('#39'C'#39', '#39'A'#39', '#39'T'#39', '#39'S'#39')  /* si s'#243'n obliga' +
        't'#242'ries, queden entrades amb tipus en maj'#250'scules */'
      '          ORDER  BY C.C_ESCALA'
      '          INTO  :C_ESCALA'
      '      DO BEGIN'
      '            '
      
        '            /* 1. Mirem si existeix una escala a l'#39'alta d'#39'aquest' +
        ' tractament, i ens guardem la clau i la data d'#39'entrada.'
      
        '               2. Busquem l'#39'escala no anul'#183'lada de tipus '#39'C'#39' o '#39 +
        'S'#39' m'#233's propera a la data d'#39'alta (i a menys de X dies abans i Y d' +
        'ies despr'#233's de la data d'#39'alta).'
      
        '               3. Si '#233's m'#233's propera a la data d'#39'alta que l'#39'escal' +
        'a a l'#39'alta, els intercanviem el tipus.'
      
        '                  [Els triggers AFTER UPDATE o AFTER INSERT d'#39'ES' +
        'CALESCAP s'#39'encarregaran d'#39'esborrar-la de pendents]'
      
        '               4. Altrament, si l'#39'escala a l'#39'alta (ja existent a' +
        'bans) queda massa lluny de la data d'#39'alta, li posem tipus C.'
      
        '                  [Els triggers AFTER UPDATE o AFTER INSERT d'#39'ES' +
        'CALESCAP s'#39'encarregaran d'#39'insertar-la a pendents]'
      '            5. passem tipus C a tipus S si tipus = '#39'A'#39
      '            */'
      ''
      '            /* 1. */'
      ''
      
        '            CLAU_A = 0;                           /* clau de l'#39'e' +
        'scala de tipus A o T, si existeix */'
      '            '
      
        '            FOR SELECT DISTINCT AREA_USUARI            /* Aix'#242' n' +
        'om'#233's '#233's per la FAM (entrada per NEU i REH) per'#242' s'#39'ha de posar */'
      
        '                FROM   ESCALESITEMS               /* I SUPOSAREM' +
        ' QUE NO HO ENTRA CAP ALTRA AREA NI LES SECRES !!! pq si no, '#233's i' +
        'ntractable */'
      '                WHERE  C_ESCALA = :C_ESCALA'
      '                AND    AREA_USUARI <> '#39'***'#39
      '                INTO  :C_AREA'
      '            DO BEGIN'
      '            '
      
        '                  SELECT E.CLAU, E.DATA                       /*' +
        ' com a m'#224'xim n'#39'hi hauria d'#39'haver una! Poden haver-n'#39'hi dues si l' +
        #39'escala l'#39'entren diferents '#224'rees!! */'
      '                  FROM   ESCALESCAP E'
      '                  JOIN   METGES M ON M.CODI = E.C_USUARI'
      
        '                  JOIN   ESPECIAL S ON M.C_ESPECIAL = S.C_ESPECI' +
        'AL'
      '                  WHERE  E.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    E.C_ESCALA = :C_ESCALA'
      '                  AND    Upper(E.TIPUS) = :TIPUS'
      '                  AND    S.C_AREA = :C_AREA'
      '                  AND    E.ANULAT <> '#39'S'#39' AND E.ANULAT <> '#39'D'#39
      
        '                  ROWS   1                                /* per' +
        ' si un cas... */'
      '                  INTO  :CLAU_A, :DATA_A;'
      ''
      '                  IF (CLAU_A IS NULL) THEN CLAU_A = 0;'
      ''
      '                  /* 2. */'
      ''
      
        '                  CLAU_CANVI = 0; /* clau de l'#39'escala de tipus C' +
        ' m'#233's propera a la (nova) data d'#39'alta */'
      '            '
      
        '                  IF (CLAU_A > 0) THEN DIES_MIN = F_IBAbs(DATA_A' +
        ' - DATA_ALTA);'
      
        '                                  ELSE DIES_MIN = F_MaximBVG(:X,' +
        ' :Y) + 5;'
      ''
      '                  FOR SELECT C.CLAU, C.DATA, C.C_TRACTAMENT'
      '                      FROM   ESCALESCAP C'
      
        '                      JOIN   TRACTAMENTS T ON C.C_TRACTAMENT = T' +
        '.C_TRACTAMENT'
      '                      WHERE  T.C_PROCES = :C_PROCES'
      '                      AND    C.C_ESCALA = :C_ESCALA'
      '                      AND    C.ANULAT <> '#39'D'#39' AND C.ANULAT <> '#39'S'#39
      
        '                      AND   (Upper(C.TIPUS) = '#39'C'#39' OR Upper(C.TIP' +
        'US) = '#39'S'#39')'
      
        '                      AND    C.DATA BETWEEN :DATA_ALTA - :X AND ' +
        ':DATA_ALTA + :Y'
      '                      ORDER  BY C.DATA'
      '                      INTO  :CLAU, :DATA, :TRACT'
      '                  DO BEGIN'
      '                    '
      
        '                        IF (F_IBAbs(DATA - DATA_ALTA) < DIES_MIN' +
        ') THEN'
      '                        BEGIN'
      
        '                            DIES_MIN = F_IBAbs(DATA - DATA_ALTA)' +
        ';'
      '                            CLAU_CANVI = CLAU;'
      '                        END;'
      '                        '
      '                  END;'
      '                  '
      '                  '
      
        '                  /* mirem si la que deixa de ser alta, passar'#224' ' +
        'a ser tipus C o tipus S */'
      
        '                  IF ((TIPUS = '#39'A'#39') AND (DATA_A > DATA_ALTA)) TH' +
        'EN TIP_C = '#39'S'#39';'
      
        '                                                              EL' +
        'SE TIP_C = '#39'C'#39';'
      '                  '
      '                  /* 3. */'
      '            '
      '                  IF (CLAU_CANVI <> 0) THEN'
      '                  BEGIN'
      
        '                        UPDATE ESCALESCAP SET TIPUS = :TIPUS WHE' +
        'RE CLAU = :CLAU_CANVI;'
      
        '                        UPDATE ESCALESCAP SET TIPUS = :TIP_C WHE' +
        'RE CLAU = :CLAU_A;  /* Si '#233's clau_a = 0, aquest update no far'#224' r' +
        'es. OK */'
      '                  END;'
      '            '
      '            '
      '                  /* 4. */'
      ''
      '                  ELSE IF ( (CLAU_A > 0)'
      
        '                       AND  ( ((DATA_A < DATA_ALTA) AND (DATA_AL' +
        'TA - DATA_A > :X))'
      '                               OR'
      
        '                              ((DATA_ALTA < DATA_A) AND (DATA_A ' +
        '- DATA_ALTA > :Y)) )'
      '                           )'
      
        '                  THEN  UPDATE ESCALESCAP SET TIPUS = :TIP_C WHE' +
        'RE CLAU = :CLAU_A;'
      '            '
      ''
      '            END;'
      ''
      '      END;'
      'END'
      '')
    Dic1 = EscalesCap
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
    Left = 492
    Top = 204
  end
  object EscalesCap_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE ID INTEGER;'
      '  DECLARE VARIABLE ESTAT INTEGER;'
      '  DECLARE VARIABLE TIPUS CHAR(1);'
      '  DECLARE VARIABLE AREES INTEGER;'
      '  DECLARE VARIABLE C_AREA VARCHAR(3);'
      '  DECLARE VARIABLE ITEMS INTEGER;'
      '  DECLARE VARIABLE ES_REVISIO SMALLINT;'
      '  DECLARE VARIABLE CLAU SMALLINT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      ''
      '      /* Setembre 2015:'
      
        '         No cal mirar si el tractament '#233's ingr'#233's o revisi'#243': si l' +
        #39'escala que entren est'#224' pendent, la traiem */'
      '         '
      
        '      /* Si '#233's la GOAT o la COAT, queda pendent fins que surt d'#39 +
        'APT. */'
      '      IF ((NEW.C_ESCALA = 4) OR (NEW.C_ESCALA = 63)) THEN'
      '      BEGIN'
      
        '            /* Si l'#39'entrada '#233's no valorable, ser'#224' com si no sort' +
        #237's d'#39'APT i li hem de tornar a posar estat = 0 si era 1'
      
        '               i passar la pendent de tipus '#39'I'#39' a tipus '#39'C'#39' (si ' +
        'estava pendent a l'#39'ingr'#233's) */'
      '            IF (NEW.ANULAT = '#39'V'#39') THEN'
      '            BEGIN'
      '                  ESTAT = -1;'
      ''
      '                  SELECT ID, ESTAT, TIPUS FROM ESCALESPENDENTS'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    C_ESCALA = NEW.C_ESCALA'
      '                  AND    ESTAT < 5'
      '                  INTO  :ID, :ESTAT, :TIPUS;'
      ''
      '                  IF ((ESTAT = 1) OR (TIPUS = '#39'I'#39'))'
      '                  THEN  UPDATE ESCALESPENDENTS'
      '                        SET    ESTAT = 0, TIPUS = '#39'C'#39
      '                        WHERE  C_ESCALA = NEW.C_ESCALA'
      '                        AND    ESTAT < 5'
      '                        AND    C_TRACTAMENT = NEW.C_TRACTAMENT;'
      '            END;'
      '            '
      
        '            /* Altrament s'#39'ha de mirar el valor entrat a ESCALES' +
        'LIN, i ho farem al trigger T_ESCALESLIN_AI */'
      '      END'
      ''
      ''
      
        '      /* Per a la resta d'#39'escales (excepte l'#39'EVA que surt de pen' +
        'dents en funci'#243' dels valors d'#39'alguns '#237'tems): */'
      '      ELSE IF (NEW.C_ESCALA <> 122) THEN'
      '      BEGIN'
      
        '            /* Si l'#39'escala entrada t'#233' '#237'tems de dues '#224'rees difere' +
        'nts (2. FAM)'
      
        '               nom'#233's traurem de pendents la corresponent a l'#39#224're' +
        'a de l'#39'usuari que entra */'
      ''
      '            /* Busquem de quantes '#224'rees t'#233' '#237'tems l'#39'escala */'
      '            SELECT COUNT(DISTINCT AREA_USUARI)'
      '            FROM   ESCALESITEMS'
      '            WHERE  C_ESCALA = NEW.C_ESCALA'
      '            AND    AREA_USUARI <> '#39'***'#39
      '            INTO  :AREES;'
      ''
      
        '            /* Si no t'#233' '#237'tems de cap '#224'rea, '#233's una escala amb tau' +
        'la pr'#242'pia i funcionar'#224' com si fos d'#39'una sola '#224'rea */'
      '            IF (AREES = 0) THEN AREES = 1;'
      ''
      
        '            /* Si tots els '#237'tems de l'#39'escala corresponen a la ma' +
        'teixa '#224'rea, la traiem d'#39'EscalesPendents */'
      '            IF (AREES = 1) THEN'
      '            BEGIN'
      '                  DELETE FROM ESCALESPENDENTS'
      '                  WHERE  C_ESCALA = NEW.C_ESCALA'
      '                  AND    C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    TIPUS = Upper(NEW.TIPUS);'
      '            END;'
      ''
      '            /* Si l'#39'escala t'#233' '#237'tems de diferents '#224'rees: */'
      '            ELSE IF (AREES > 1) THEN'
      '            BEGIN'
      
        '                  /* Mirem l'#39#224'rea de l'#39'usuari que entra l'#39'escala' +
        ' */'
      '                  SELECT C_AREA'
      '                  FROM   ESPECIAL E'
      '                  JOIN   METGES M ON E.C_ESPECIAL = M.C_ESPECIAL'
      '                  WHERE  M.CODI = NEW.C_USUARI'
      '                  INTO  :C_AREA;'
      ''
      
        '                  /* Busquem si li corresponen '#237'tems de l'#39'escala' +
        ' */'
      '                  SELECT COUNT(*)'
      '                  FROM   ESCALESITEMS'
      '                  WHERE  C_ESCALA = NEW.C_ESCALA'
      '                  AND    AREA_USUARI <> '#39'***'#39
      '                  AND    AREA_USUARI = :C_AREA'
      '                  INTO  :ITEMS;'
      ''
      
        '                  /* Si l'#39#224'rea t'#233' '#237'tems, esborrem de pendents no' +
        'm'#233's la corresponent a l'#39#224'rea.'
      '                     Altrament, les esborrem totes */'
      ''
      '                  IF (ITEMS = 0) THEN C_AREA = '#39'***'#39';'
      ''
      '                  DELETE FROM ESCALESPENDENTS'
      '                  WHERE  C_ESCALA = NEW.C_ESCALA'
      '                  AND    C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    TIPUS = Upper(NEW.TIPUS)'
      '                  AND   (C_AREA = :C_AREA OR :C_AREA = "***");'
      '            END;'
      '      END;'
      '      '
      '   END;'
      'END')
    Dic1 = EscalesCap
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
    Accion2 = taINSERT
    Left = 192
    Top = 204
  end
  object EscalesCap_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE EDAT INTEGER;'
      'DECLARE VARIABLE GRUP_UM CHAR(1);'
      ''
      'DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      'DECLARE VARIABLE C_MOTIU INTEGER;'
      'DECLARE VARIABLE C_PROCES INTEGER;'
      'DECLARE VARIABLE ES_REVISIO SMALLINT;'
      ''
      'DECLARE VARIABLE DATA_INGRES DATE;'
      'DECLARE VARIABLE DATA_ALTA DATE;'
      'DECLARE VARIABLE DATA_PREALTA DATE;'
      'DECLARE VARIABLE DATA_A DATE;'
      ''
      'DECLARE VARIABLE ESTAT INTEGER;'
      ''
      'DECLARE VARIABLE COMPTA INTEGER;'
      'DECLARE VARIABLE ID INTEGER;'
      'DECLARE VARIABLE TROBADA INTEGER;'
      ''
      'DECLARE VARIABLE CADU_I INTEGER;'
      'DECLARE VARIABLE DIES_A INTEGER;'
      'DECLARE VARIABLE CADU_A INTEGER;'
      'DECLARE VARIABLE CADU_R INTEGER;'
      ''
      'DECLARE VARIABLE C_AREA  VARCHAR(3);'
      'DECLARE VARIABLE C_AREA1 VARCHAR(3);'
      'DECLARE VARIABLE C_AREA2 VARCHAR(3);'
      ''
      'DECLARE VARIABLE DATA1     DATE;'
      'DECLARE VARIABLE DIES      INTEGER;'
      'DECLARE VARIABLE CLAUCANVI INTEGER;'
      'DECLARE VARIABLE ITEMS     INTEGER;'
      ''
      'DECLARE VARIABLE CLAU      INTEGER;'
      'DECLARE VARIABLE COMPTA2   INTEGER;'
      ''
      'DECLARE VARIABLE ANALGESIC  CHAR(1);'
      'DECLARE VARIABLE EVA        INTEGER;'
      'DECLARE VARIABLE REFERENCIA VARCHAR(40);'
      ''
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Agost 2015: per eliminar pendents '#233's suficient buscar p' +
        'er tractament'
      
        '                   (alguna vegada hem canviat el proc'#233's a m'#224' i l' +
        'laovrs no quadra amb el d'#39'escalespendents! */'
      ''
      '      /* Busquem les dades del tractament */'
      
        '      SELECT T.C_PRESTACIO, T.DATA_INGRES, T.DATA_PREALTA, T.DAT' +
        'A_ALTA, T.C_PROCES, T.C_MOTIU, U.C_GRUP, F.EDAT'
      '      FROM   TRACTAMENTS T'
      '      JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN   UNITATM  U ON F.C_UNITATMEDICA = U.C_UNITATM'
      '      WHERE  T.C_TRACTAMENT = OLD.C_TRACTAMENT'
      
        '      INTO  :C_PRESTACIO, :DATA_INGRES, :DATA_PREALTA, :DATA_ALT' +
        'A, C_PROCES, :C_MOTIU, :GRUP_UM, :EDAT;'
      '      '
      
        '      /* Si el motiu '#233's revisi'#243' (2004 o ingr'#233's per revisi'#243') busc' +
        'arem OBLIGAT_R = '#39'X'#39' */'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = :C_MOTIU A' +
        'ND C_DRET = '#39'X5'#39' INTO :ES_REVISIO;'
      '      IF (ES_REVISIO > 0) THEN C_PRESTACIO = '#39'2004'#39';'
      '      '
      '      /* Busquem l'#39#224'rea de l'#39'usuari que havia entrat l'#39'escala */'
      '      SELECT C_AREA'
      '      FROM   ESPECIAL E'
      '      JOIN   METGES M ON E.C_ESPECIAL = M.C_ESPECIAL'
      '      WHERE  M.CODI = OLD.C_USUARI'
      '      INTO  :C_AREA;'
      ''
      '      /*  4.GOAT'
      '         63.COAT */'
      '      IF ((OLD.C_ESCALA = 4) OR (OLD.C_ESCALA = 63)) THEN'
      '      BEGIN'
      
        '            /* Si anul'#183'len o deneguen una entrada de tipus I o C' +
        ' de l'#39'escala GOAT o de la COAT */'
      
        '            IF ( ((OLD.ANULAT = '#39'V'#39') OR (OLD.ANULAT = '#39'N'#39') OR (O' +
        'LD.ANULAT = '#39'R'#39'))'
      '            AND  ((NEW.ANULAT = '#39'S'#39') OR (NEW.ANULAT = '#39'D'#39'))'
      '            AND  ((NEW.TIPUS  = '#39'I'#39') OR (NEW.TIPUS  = '#39'C'#39')) )'
      '            THEN BEGIN'
      ''
      
        '                  /* Si no est'#224' pendent i anul'#183'len una '#39'I'#39' (havi' +
        'a sortit d'#39'APT a la primera entrada)  => es posa pendent amb est' +
        'at 0'
      
        '                     Si no est'#224' pendent i anul'#183'len una '#39'C'#39' (havi' +
        'a sortit d'#39'APT 2 vegades)             => es posa pendent amb est' +
        'at 1'
      
        '                     Si est'#224' pendent amb estat 0           (no h' +
        'avia sortit d'#39'APT)                    => no fem res, ja '#233's corre' +
        'cte'
      
        '                     Si est'#224' pendent amb estat 1           (havi' +
        'a sortit d'#39'APT una vegada)            => tornem a posar estat 0 ' +
        '      */'
      ''
      '                  ID = 0;'
      '            '
      '                  SELECT ID, ESTAT'
      '                  FROM   ESCALESPENDENTS'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    C_TRACTAMENT = OLD.C_TRACTAMENT'
      '                  INTO  :ID, :ESTAT;'
      ''
      '                  IF (ID IS NULL) THEN ID = 0;'
      ''
      '                  IF (ID = 0) THEN'
      '                  BEGIN'
      
        '                        IF      (OLD.TIPUS = '#39'I'#39') THEN ESTAT = 0' +
        ';'
      
        '                        ELSE IF (OLD.TIPUS = '#39'C'#39') THEN ESTAT = 1' +
        ';'
      '                              '
      
        '                        INSERT INTO ESCALESPENDENTS (    C_TRACT' +
        'AMENT,  C_PROCES,     C_ESCALA, C_AREA,     TIPUS,  ESTAT)'
      
        '                        VALUES                      (OLD.C_TRACT' +
        'AMENT, :C_PROCES, OLD.C_ESCALA,  '#39'INF'#39', OLD.TIPUS, :ESTAT);'
      '                  END;'
      ''
      
        '                  ELSE IF (ESTAT = 1) THEN UPDATE ESCALESPENDENT' +
        'S SET ESTAT = 0 WHERE ID = :ID;'
      '            END;'
      '      END;'
      '      '
      '      /* 110. CRS-R */'
      '      ELSE IF  (OLD.C_ESCALA = 110) THEN'
      '      BEGIN'
      
        '          /* Si l'#39'anul'#8226'len o deneguen cal mirar si cal que estig' +
        'ui a pendents'
      
        '             CRS-R: si FUNCIO MOTORA=6 o COMUNICACI'#211'=2 ja no ha ' +
        'de ser pendent*/'
      
        '          IF (((OLD.ANULAT = '#39'V'#39') OR (OLD.ANULAT = '#39'N'#39') OR (OLD.' +
        'ANULAT = '#39'R'#39'))  AND  ((NEW.ANULAT = '#39'S'#39') OR (NEW.ANULAT = '#39'D'#39')))' +
        ' THEN'
      '          BEGIN'
      '              /* Mirem si hi est'#224' a pendents */'
      
        '              SELECT COUNT(*) FROM ESCALESPENDENTS WHERE C_TRACT' +
        'AMENT = OLD.C_TRACTAMENT'
      
        '              AND C_ESCALA=110 AND C_AREA='#39'REH'#39' AND TIPUS='#39'C'#39' AN' +
        'D ESTAT=0'
      '              INTO :COMPTA;'
      ''
      
        '              /* Recuperem la '#250'ltima entrada no anul'#8226'lada ni den' +
        'egada */'
      '              SELECT CLAU FROM ESCALESCAP'
      
        '              WHERE C_HISTORIA = OLD.C_HISTORIA AND NOT (ANULAT ' +
        'IN ('#39'D'#39','#39'S'#39'))'
      '              AND C_ESCALA=110 AND CLAU <> OLD.CLAU'
      '              ORDER BY DATA DESC'
      '              ROWS 1'
      '              INTO :CLAU;'
      ''
      
        '              /* Si en trobem una, mirem quins valors t'#233' als ite' +
        'ms 1039 i 1041 */'
      '              IF (CLAU > 0) THEN'
      '              BEGIN'
      '                  SELECT COUNT(*) FROM ESCALESLIN'
      '                  WHERE CLAU=:CLAU'
      
        '                  AND ((C_ITEM=1039 AND D_ITEM=6) OR (C_ITEM=104' +
        '1 AND D_ITEM=2))'
      '                  INTO :COMPTA2;'
      ''
      '                  /* Si no hi ha registre a pendents */'
      '                  IF (COMPTA=0) THEN'
      '                  BEGIN'
      
        '                      /* Si l'#39#237'tem 1039 no t'#233' valor 6 ni l'#39#237'tem ' +
        '1041 t'#233' valor 2, insertem a pendents */'
      '                      IF (COMPTA2=0) THEN'
      '                      BEGIN'
      
        '                          INSERT INTO ESCALESPENDENTS (    C_TRA' +
        'CTAMENT,  C_PROCES,  C_ESCALA, C_AREA, TIPUS, ESTAT)'
      
        '                          VALUES                      (OLD.C_TRA' +
        'CTAMENT, :C_PROCES,       110,  '#39'REH'#39',   '#39'C'#39',     0);'
      '                      END;'
      '                  END;'
      '                  /* Si hi ha registre a pendents */'
      '                  ELSE BEGIN'
      
        '                      /* Si els '#237'tems 1039 i 1041 valen 6 '#243' 2 re' +
        'spectivament, l'#39'esborrem de pendents */'
      '                      IF (COMPTA2<>0) THEN'
      '                      BEGIN'
      '                          DELETE FROM ESCALESPENDENTS'
      
        '                          WHERE C_TRACTAMENT=OLD.C_TRACTAMENT AN' +
        'D C_ESCALA=110 AND C_AREA='#39'REH'#39' AND TIPUS='#39'C'#39' AND ESTAT=0;'
      '                      END;'
      '                  END;'
      '              END;'
      
        '              /* Si no hi ha cap entrada no pot haver-hi cap esc' +
        'ala pendent */'
      '              ELSE BEGIN'
      '                  IF (COMPTA<>0) THEN'
      '                  BEGIN'
      '                      DELETE FROM ESCALESPENDENTS'
      
        '                      WHERE C_TRACTAMENT=OLD.C_TRACTAMENT AND C_' +
        'ESCALA=110 AND C_AREA='#39'REH'#39' AND TIPUS='#39'C'#39' AND ESTAT=0;'
      '                  END;'
      '              END;'
      '          END;'
      '      END;'
      '      '
      '      /* 122. EVA  - Anul'#183'laci'#243' */'
      
        '      ELSE IF ((OLD.C_ESCALA = 122) AND (OLD.ANULAT = "N") AND (' +
        'NEW.ANULAT = "S")) THEN'
      '      BEGIN'
      
        '          /* Mirem si correspon a l'#39'administraci'#243' d'#39'analg'#232'sic  *' +
        '/'
      
        '          SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = OLD.CLAU AN' +
        'D C_ITEM = 1212 INTO :ANALGESIC;'
      ''
      
        '          /* i en cas afirmatiu, mirem si ha de quedar pendent e' +
        'n la nova situaci'#243' */'
      '          IF ((ANALGESIC = "S") OR (ANALGESIC = "R")) THEN'
      '          BEGIN'
      
        '              /* Busquem la Localitzaci'#243' introdu'#239'da ('#237'tem 1210) ' +
        '*/'
      
        '              SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = OLD.CLA' +
        'U  AND C_ITEM = 1210 INTO :REFERENCIA;'
      ''
      '              /* Mirem si est'#224' pendent */'
      '              SELECT ID'
      '              FROM   ESCALESPENDENTS'
      '              WHERE  C_TRACTAMENT = OLD.C_TRACTAMENT'
      '              AND    C_ESCALA = 122'
      '              AND    TIPUS = '#39'C'#39
      '              AND    ESTAT = 0'
      '              AND    REFERENCIA = :REFERENCIA'
      '              INTO  :ID;'
      '              '
      '              IF (ID IS NULL) THEN ID = 0;'
      ''
      
        '              /* Recuperem l'#39#250'ltima entrada no anul'#183'lada corresp' +
        'onent a una valoraci'#243' amb analg'#232'sic administrat i amb la mateixa' +
        ' localitzacio */'
      '              SELECT C.CLAU FROM ESCALESCAP C'
      
        '              JOIN   ESCALESLIN LA ON C.CLAU = LA.CLAU AND LA.C_' +
        'ITEM = 1212 AND (LA.D_ITEM = "R" OR LA.D_ITEM = "S")'
      
        '              JOIN   ESCALESLIN LL ON C.CLAU = LL.CLAU AND LL.C_' +
        'ITEM = 1210 AND F_LRTRIM(LL.D_ITEM) = :REFERENCIA'
      '              WHERE  C.C_HISTORIA = OLD.C_HISTORIA'
      '              AND    C.ANULAT = "N"'
      '              AND    C.C_ESCALA = 122'
      '              AND    C.DATA_ADM < OLD.DATA_ADM'
      '              ORDER BY C.DATA_ADM DESC'
      '              ROWS 1'
      '              INTO :CLAU;'
      ''
      
        '              /* Ens guardem el valor EVA corresponent a l'#39'entra' +
        'da trobada */'
      
        '              SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = :CLAU A' +
        'ND C_ITEM = 1211 INTO :EVA;'
      ''
      '              IF (EVA IS NULL) THEN EVA = 0;'
      '              '
      
        '              /* Si ha d'#39'estar pendent i no ho estava, la posem ' +
        'pendent */'
      '              IF ((EVA > 3) AND (ID = 0))'
      '              THEN'
      
        '                    INSERT INTO ESCALESPENDENTS (    C_TRACTAMEN' +
        'T, C_ESCALA, C_AREA, TIPUS, ESTAT,  REFERENCIA)'
      
        '                    VALUES                      (OLD.C_TRACTAMEN' +
        'T,      122,  '#39'INF'#39',   '#39'C'#39',     0, :REFERENCIA);'
      ''
      
        '              /* Si no ha d'#39'estar pendent i ho estava, la traiem' +
        ' de pendents */'
      '              ELSE IF ((EVA <= 3) AND (COMPTA > 0))'
      '              THEN'
      
        '                    DELETE FROM ESCALESPENDENTS WHERE C_TRACTAME' +
        'NT = OLD.C_TRACTAMENT AND C_ESCALA = 122 AND ESTAT = 0 AND REFER' +
        'ENCIA = :REFERENCIA;'
      ''
      '          END;'
      '      END;'
      '      '
      
        '      /* ANUL'#183'LACI'#211' O DENEGACI'#211' D'#39'UNA ENTRADA  -  GEN'#200'RICA (tipu' +
        's "-") */'
      
        '      /* Si anul'#183'len o deneguen una escala obligat'#242'ria No TIR en' +
        'trada com a tipus '#39'-'#39', cal tornar-la a posar pendent,'
      
        '         a no ser que l'#39'hagin tornada a entrar posteriorment (no' +
        'm'#233's es posa tipus '#39'-'#39' si l'#39'entren i estava pendent) */'
      '      ELSE IF ( (OLD.TIPUS  = '#39'-'#39')'
      
        '           AND ((OLD.ANULAT = '#39'N'#39') OR (OLD.ANULAT = '#39'R'#39') OR (OLD' +
        '.ANULAT = '#39'V'#39'))'
      '           AND ((NEW.ANULAT = '#39'S'#39') OR (NEW.ANULAT = '#39'D'#39')) )'
      '      THEN BEGIN'
      
        '            /* Busquem si hi ha una altra entrada no anul'#183'lada n' +
        'i denegada, que no sigui no valorable */'
      '            SELECT CLAU'
      '            FROM   ESCALESCAP'
      '            WHERE  C_ESCALA = OLD.C_ESCALA'
      '            AND    C_TRACTAMENT = OLD.C_TRACTAMENT'
      
        '            AND    ANULAT <> '#39'S'#39' AND ANULAT <> '#39'D'#39' AND ANULAT <>' +
        ' '#39'V'#39
      '            INTO  :TROBADA;'
      ''
      '            IF (TROBADA IS NULL) THEN TROBADA = 0;'
      '                  '
      '            /* Si la trobem, li canviem el tipus */'
      
        '            IF (TROBADA > 0) THEN UPDATE ESCALESCAP SET TIPUS = ' +
        #39'-'#39' WHERE CLAU = :TROBADA;'
      ''
      
        '            /* Altrament, tornem a posar l'#39'escala com a pendent ' +
        '*/'
      '            ELSE BEGIN'
      '            '
      
        '                  /* Si a l'#39#224'rea de l'#39'usuari que havia entrat l'#39 +
        'escala, li corresponen '#237'tems de l'#39'escala,'
      
        '                     posarem l'#39'escala pendent per l'#39#224'rea de l'#39'us' +
        'uari que l'#39'havia entrat.'
      
        '                     Altrament posarem l'#39'escala pendent per tote' +
        's les '#224'rees que li corresponen */'
      ''
      '                  SELECT COUNT(*)'
      '                  FROM   ESCALESITEMS'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    AREA_USUARI = :C_AREA'
      '                  INTO  :ITEMS;'
      ''
      '                  IF (ITEMS > 0) THEN C_AREA1 = :C_AREA;'
      '                                 ELSE C_AREA1 = '#39'***'#39';'
      ''
      
        '                  /* Per cada '#224'rea per la qual l'#39'escala era obli' +
        'gat'#242'ria,'
      
        '                     si '#233's l'#39#224'rea de l'#39'usuari que havia entrat l' +
        #39'escala'
      
        '                     o b'#233' a l'#39'usuari que l'#39'havia entrat no li co' +
        'rresponen '#237'tems de l'#39'escala'
      '                     la tornem a posar pendent */'
      '                  FOR SELECT C_AREA'
      '                      FROM   ESCALESOBLIGACIONS'
      '                      WHERE  C_ESCALA = OLD.C_ESCALA'
      '                      AND    OBLIGA_NOTIR = '#39'X'#39
      '                      AND   (GRUP = :GRUP_UM OR GRUP = '#39'*'#39')'
      
        '                      AND   (C_PRESTACIO = :C_PRESTACIO OR C_PRE' +
        'STACIO = '#39'*'#39')'
      
        '                      AND  ((:EDAT > EDATINFANTIL AND INFANTIL =' +
        ' '#39'N'#39')  OR  (:EDAT <= EDATINFANTIL AND INFANTIL = '#39'S'#39'))'
      
        '                      AND   (C_AREA = :C_AREA1 OR :C_AREA1 = '#39'**' +
        '*'#39')'
      '                      INTO :C_AREA2'
      '                  DO BEGIN'
      
        '                        INSERT INTO ESCALESPENDENTS (    C_TRACT' +
        'AMENT,     C_ESCALA,   C_AREA, TIPUS)'
      
        '                        VALUES                      (OLD.C_TRACT' +
        'AMENT, OLD.C_ESCALA, :C_AREA2,   '#39'-'#39');'
      '                  END;'
      ''
      '                  /*'
      
        '                  INSERT INTO ESCALESPENDENTS (    C_TRACTAMENT,' +
        '     C_ESCALA,  C_AREA, TIPUS)'
      
        '                  VALUES                      (OLD.C_TRACTAMENT,' +
        ' OLD.C_ESCALA, :C_AREA,   '#39'-'#39');'
      '                  */'
      '            END;'
      '      END;'
      '      '
      '      '
      
        '      /* ANUL'#183'LACI'#211' O DENEGACI'#211' D'#39'UNA ENTRADA  -  PROC'#201'S (I-T-A)' +
        ' */'
      
        '      /* Si s'#39'anul'#183'la o es denega una escala entrada de tipus I,' +
        ' T o A, la tornarem a posar pendent,'
      
        '         excepte si existeix alguna altra entrada que pugui subs' +
        'tituir-la (per dates) */'
      
        '      ELSE IF ( ((OLD.TIPUS  = '#39'I'#39') OR (OLD.TIPUS  = '#39'A'#39') OR (OL' +
        'D.TIPUS  = '#39'T'#39'))'
      
        '           AND  ((OLD.ANULAT = '#39'N'#39') OR (OLD.ANULAT = '#39'R'#39') OR (OL' +
        'D.ANULAT = '#39'V'#39'))'
      '           AND  ((NEW.ANULAT = '#39'S'#39') OR (NEW.ANULAT = '#39'D'#39')) )'
      '      THEN BEGIN'
      ''
      '            IF (DATA_ALTA IS NOT NULL) THEN DATA_A = DATA_ALTA;'
      
        '            ELSE IF (DATA_PREALTA IS NOT NULL) THEN DATA_A = DAT' +
        'A_PREALTA;'
      '            ELSE DATA_A = NULL;'
      ''
      
        '            /* Busquem par'#224'metres de caducitat i rangs d'#39'entrada' +
        ' de les escales segons el tipus: */'
      
        '            SELECT CADUCITATESCALESI, DIESESCALESA, CADUCITATESC' +
        'ALESA, CADUCITATESCALESR'
      '            FROM   CONFIG'
      '            INTO  :CADU_I, :DIES_A, :CADU_A, :CADU_R;'
      ''
      '            TROBADA = 0;'
      '            '
      
        '            /* Mirem si existeix una entrada de tipus '#39'C'#39' que pu' +
        'gui substituir la que s'#39'anul'#183'la: */'
      ''
      '            IF (OLD.TIPUS = '#39'I'#39') THEN'
      '            BEGIN'
      '                  SELECT MIN(CLAU)'
      '                  FROM   ESCALESCAP'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    C_HISTORIA = OLD.C_HISTORIA'
      '                  AND    TIPUS = '#39'C'#39
      
        '                  AND    DATA BETWEEN :DATA_INGRES AND :DATA_ING' +
        'RES + :CADU_I   /* ha d'#39'estar entrada durant X primers dies de l' +
        #39'ingr'#233's */'
      '                  INTO  :TROBADA;'
      '                '
      '                  IF (TROBADA IS NULL) THEN TROBADA = 0;'
      '                        '
      
        '                  IF (TROBADA <> 0) THEN UPDATE ESCALESCAP SET T' +
        'IPUS = '#39'I'#39' WHERE CLAU = :TROBADA;   /* li canviem el tipus */'
      '            END;'
      '            '
      
        '            ELSE IF (((OLD.TIPUS = '#39'A'#39') OR (OLD.TIPUS = '#39'T'#39')) AN' +
        'D (DATA_A IS NOT NULL)) THEN'
      '            BEGIN'
      '                  DIES = F_MaximBVG(DIES_A, CADU_A) + 5;'
      '                        '
      '                  FOR SELECT CLAU, DATA'
      '                      FROM   ESCALESCAP'
      '                      WHERE  C_ESCALA = OLD.C_ESCALA'
      '                      AND    C_HISTORIA = OLD.C_HISTORIA'
      '                      AND    TIPUS = '#39'C'#39
      
        '                      AND    DATA BETWEEN :DATA_A - :DIES_A AND ' +
        ':DATA_A + :CADU_A    /* ha d'#39'estar entrada a X dies de la data d' +
        #39'alta */'
      '                      INTO  :TROBADA, :DATA1'
      '                  DO BEGIN'
      
        '                        IF (DIES > F_IBAbs(DATA1 - DATA_A)) THEN' +
        '   /* busquem l'#39'entrada m'#233's propera a la data d'#39'alta */'
      '                        BEGIN'
      '                              CLAUCANVI = TROBADA;'
      '                              DIES = F_IBAbs(DATA1 - DATA_A);'
      '                        END;'
      '                  END;'
      '                '
      
        '                  /* li canviem el tipus a la trobada (si dies h' +
        'a disminu'#239't, '#233's que n'#39'hem trobat una */'
      
        '                  IF (DIES < F_MaximBVG(DIES_A, CADU_A) + 5) THE' +
        'N UPDATE ESCALESCAP SET TIPUS = OLD.TIPUS WHERE CLAU = :CLAUCANV' +
        'I;'
      
        '                                                             ELS' +
        'E TROBADA = 0;'
      '            END;'
      ''
      
        '            /* Si no en trobem cap i l'#39'escala era obligat'#242'ria, l' +
        #39'hem de tornar a posar pendent: */'
      '            IF (TROBADA = 0) THEN'
      '            BEGIN'
      
        '                  /* Si a l'#39#224'rea de l'#39'usuari que havia entrat l'#39 +
        'escala, li corresponen '#237'tems de l'#39'escala,'
      
        '                     posarem l'#39'escala pendent per l'#39#224'rea de l'#39'us' +
        'uari que l'#39'havia entrat.'
      
        '                     Altrament posarem l'#39'escala pendent per tote' +
        's les '#224'rees que li corresponen */'
      ''
      '                  SELECT COUNT(*)'
      '                  FROM   ESCALESITEMS'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    AREA_USUARI = :C_AREA'
      '                  INTO  :ITEMS;'
      '                     '
      '                  IF (ITEMS > 0) THEN C_AREA1 = :C_AREA;'
      '                                 ELSE C_AREA1 = '#39'***'#39';'
      ''
      
        '                  /* Per cada '#224'rea per la qual l'#39'escala era obli' +
        'gat'#242'ria,'
      
        '                     si '#233's l'#39#224'rea de l'#39'usuari que havia entrat l' +
        #39'escala'
      
        '                     o b'#233' a l'#39'usuari que l'#39'havia entrat no li co' +
        'rresponen '#237'tems de l'#39'escala'
      '                     la tornem a posar pendent */'
      '                  FOR SELECT C_AREA'
      '                      FROM   ESCALESOBLIGACIONS'
      '                      WHERE  C_ESCALA = OLD.C_ESCALA'
      
        '                      AND  ((OBLIGA_I = '#39'X'#39' AND OLD.TIPUS = '#39'I'#39')' +
        ' OR'
      
        '                            (OBLIGA_T = '#39'X'#39' AND OLD.TIPUS = '#39'T'#39')' +
        ' OR'
      
        '                            (OBLIGA_A = '#39'X'#39' AND OLD.TIPUS = '#39'A'#39')' +
        ')'
      '                      AND   (GRUP = :GRUP_UM OR GRUP = '#39'*'#39')'
      
        '                      AND   (C_PRESTACIO = :C_PRESTACIO OR C_PRE' +
        'STACIO = '#39'*'#39')'
      
        '                      AND  ((:EDAT > EDATINFANTIL AND INFANTIL =' +
        ' '#39'N'#39')  OR  (:EDAT <= EDATINFANTIL AND INFANTIL = '#39'S'#39'))'
      
        '                      AND   (C_AREA = :C_AREA1 OR :C_AREA1 = '#39'**' +
        '*'#39')'
      '                      INTO :C_AREA2'
      '                  DO BEGIN'
      ''
      
        '                        INSERT INTO ESCALESPENDENTS (    C_TRACT' +
        'AMENT,  C_PROCES,     C_ESCALA,   C_AREA,     TIPUS)'
      
        '                        VALUES                      (OLD.C_TRACT' +
        'AMENT, :C_PROCES, OLD.C_ESCALA, :C_AREA2, OLD.TIPUS);'
      '                  END;'
      '            END;'
      ''
      '      END;'
      '      '
      ''
      '      /* ANUL'#183'LACI'#211' O DENEGACI'#211' D'#39'UNA ENTRADA  -  REVISI'#211' (S) */'
      
        '      /* Si s'#39'anul'#183'la o es denega una entrada de tipus S corresp' +
        'onent a una revisi'#243'  =>  es torna a posar pendent d'#39'entrar */'
      '      ELSE IF  ((OLD.TIPUS  = '#39'S'#39')'
      
        '           AND ((OLD.ANULAT = '#39'N'#39') OR (OLD.ANULAT = '#39'R'#39') OR (OLD' +
        '.ANULAT = '#39'V'#39'))'
      '           AND ((NEW.ANULAT = '#39'S'#39') OR (NEW.ANULAT = '#39'D'#39')))'
      '      THEN BEGIN'
      '      '
      
        '            /* Si correspon a una revisi'#243' o ingr'#233's per revisi'#243' (' +
        'la variable "c_prestacio" els engloba) */'
      '            IF (C_PRESTACIO = '#39'2004'#39') THEN'
      '            BEGIN'
      
        '                  /* Mirem si existeix una entrada de tipus '#39'S'#39':' +
        ' */'
      '                  SELECT MIN(CLAU)'
      '                  FROM   ESCALESCAP'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    C_HISTORIA = OLD.C_HISTORIA'
      '                  AND    TIPUS = '#39'S'#39
      
        '                  AND    DATA BETWEEN :DATA_ALTA AND :DATA_ALTA ' +
        '+ :CADU_R   /* ha d'#39'estar entrada durant els X dies posteriors a' +
        ' la revisi'#243' */'
      '                  INTO  :TROBADA;'
      ''
      
        '                  /* Si no en trobem cap, i l'#39'escala era obligat' +
        #242'ria, l'#39'hem de tornar a posar com a pendent */'
      '                  IF (TROBADA = 0) THEN'
      '                  BEGIN'
      '                '
      
        '                        /* Si a l'#39#224'rea de l'#39'usuari que havia ent' +
        'rat l'#39'escala, li corresponen '#237'tems de l'#39'escala,'
      
        '                           posarem l'#39'escala pendent per l'#39#224'rea d' +
        'e l'#39'usuari que l'#39'havia entrat.'
      
        '                           Altrament posarem l'#39'escala pendent pe' +
        'r totes les '#224'rees que li corresponen */'
      ''
      '                        SELECT COUNT(*)'
      '                        FROM   ESCALESITEMS'
      '                        WHERE  C_ESCALA = OLD.C_ESCALA'
      '                        AND    AREA_USUARI = :C_AREA'
      '                        INTO  :ITEMS;'
      ''
      '                        IF (ITEMS > 0) THEN C_AREA1 = :C_AREA;'
      '                                       ELSE C_AREA1 = '#39'***'#39';'
      ''
      
        '                        /* Per cada '#224'rea per la qual l'#39'escala er' +
        'a obligat'#242'ria,'
      
        '                           si '#233's l'#39#224'rea de l'#39'usuari que havia en' +
        'trat l'#39'escala'
      
        '                           o b'#233' a l'#39'usuari que l'#39'havia entrat no' +
        ' li corresponen '#237'tems de l'#39'escala'
      '                           la tornem a posar pendent */'
      '                        FOR SELECT C_AREA'
      '                            FROM   ESCALESOBLIGACIONS'
      '                            WHERE  C_ESCALA = OLD.C_ESCALA'
      '                            AND    OBLIGA_R = '#39'X'#39
      
        '                            AND   (GRUP = :GRUP_UM OR GRUP = '#39'*'#39 +
        ')'
      
        '                            AND   (C_PRESTACIO = :C_PRESTACIO OR' +
        ' C_PRESTACIO = '#39'*'#39')'
      
        '                            AND  ((:EDAT > EDATINFANTIL AND INFA' +
        'NTIL = '#39'N'#39')  OR  (:EDAT <= EDATINFANTIL AND INFANTIL = '#39'S'#39'))'
      
        '                            AND   (C_AREA = :C_AREA1 OR :C_AREA1' +
        ' = '#39'***'#39')'
      '                            INTO :C_AREA2'
      '                        DO BEGIN'
      ''
      
        '                              INSERT INTO ESCALESPENDENTS (    C' +
        '_TRACTAMENT,     C_ESCALA,   C_AREA, TIPUS)'
      
        '                              VALUES                      (OLD.C' +
        '_TRACTAMENT, OLD.C_ESCALA, :C_AREA2,   '#39'S'#39');'
      '                        END;'
      ''
      '                  END;'
      '            END;'
      '      END;'
      '            '
      ''
      ''
      '      /* CANVIS DE TIPUS */'
      '      '
      '      /* C/T/A -> T/A */'
      '      /*  => Esborrem de pendents les del nou tipus */'
      
        '      ELSE IF ( ((OLD.TIPUS = '#39'C'#39') OR (OLD.TIPUS = '#39'T'#39') OR (OLD.' +
        'TIPUS = '#39'A'#39'))'
      '           AND   (OLD.TIPUS <> NEW.TIPUS)'
      '           AND  ((NEW.TIPUS = '#39'T'#39') OR (NEW.TIPUS = '#39'A'#39')) )'
      '      THEN BEGIN'
      
        '            /* Mirem si a l'#39#224'rea li correspoen '#237'tems de l'#39'escala' +
        ' */'
      '            SELECT COUNT(*)'
      '            FROM   ESCALESITEMS'
      '            WHERE  C_ESCALA = OLD.C_ESCALA'
      '            AND    AREA_USUARI = :C_AREA'
      '            INTO  :ITEMS;'
      ''
      '            IF (ITEMS > 0) THEN C_AREA1 = :C_AREA;'
      '                           ELSE C_AREA1 = '#39'***'#39';'
      ''
      '            /* Traiem l'#39'escala de pendents */'
      '            DELETE FROM ESCALESPENDENTS'
      '            WHERE  C_TRACTAMENT = OLD.C_TRACTAMENT'
      '            AND    C_ESCALA = OLD.C_ESCALA'
      '            AND   (C_AREA = :C_AREA OR :C_AREA = '#39'***'#39')'
      '            AND    TIPUS = NEW.TIPUS;'
      '      END;'
      '      '
      '      /*  T/A ->  C   */'
      
        '      /*  => Insertem a pendents l'#39'escala que passa a ser de tip' +
        'us '#39'C'#39', si era obligat'#242'ria */'
      '      ELSE IF ( (NEW.TIPUS = '#39'C'#39')'
      '           AND ((OLD.TIPUS = '#39'T'#39') OR (OLD.TIPUS = '#39'A'#39')) )'
      '      THEN BEGIN'
      ''
      
        '            /* Mirem si a l'#39#224'rea li corresponen '#237'tems de l'#39'escal' +
        'a */'
      '            SELECT COUNT(*)'
      '            FROM   ESCALESITEMS'
      '            WHERE  C_ESCALA = OLD.C_ESCALA'
      '            AND    AREA_USUARI = :C_AREA'
      '            INTO  :ITEMS;'
      ''
      '            IF (ITEMS > 0) THEN C_AREA1 = :C_AREA;'
      '                           ELSE C_AREA1 = '#39'***'#39';'
      ''
      
        '           /* Per cada '#224'rea per la qual l'#39'escala era obligat'#242'ria' +
        ','
      '              si '#233's l'#39#224'rea de l'#39'usuari que ha entrat l'#39'escala'
      
        '              o b'#233' a l'#39'usuari que l'#39'ha entrat no li corresponen ' +
        #237'tems de l'#39'escala'
      '              la tornem a posar pendent */'
      '            FOR SELECT C_AREA'
      '                FROM   ESCALESOBLIGACIONS'
      '                WHERE  C_ESCALA = OLD.C_ESCALA'
      '                AND  ((OBLIGA_T = '#39'X'#39' AND OLD.TIPUS = '#39'T'#39') OR'
      '                      (OBLIGA_A = '#39'X'#39' AND OLD.TIPUS = '#39'A'#39'))'
      '                AND   (GRUP = :GRUP_UM OR GRUP = '#39'*'#39')'
      
        '                AND   (C_PRESTACIO = :C_PRESTACIO OR C_PRESTACIO' +
        ' = '#39'*'#39')'
      
        '                AND  ((:EDAT > EDATINFANTIL AND INFANTIL = '#39'N'#39') ' +
        ' OR  (:EDAT <= EDATINFANTIL AND INFANTIL = '#39'S'#39'))'
      '                AND   (C_AREA = :C_AREA1 OR :C_AREA1 = '#39'***'#39')'
      '                INTO :C_AREA2'
      '            DO BEGIN'
      '            '
      
        '                  INSERT INTO ESCALESPENDENTS (    C_TRACTAMENT,' +
        '  C_PROCES,     C_ESCALA,   C_AREA,     TIPUS)'
      
        '                  VALUES                      (OLD.C_TRACTAMENT,' +
        ' :C_PROCES, OLD.C_ESCALA, :C_AREA2, OLD.TIPUS);'
      '            END;'
      '      END;'
      ''
      '   END;'
      'END')
    Dic1 = EscalesCap
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
    Left = 278
    Top = 204
  end
  object EscalesPendents_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '  IF (USER <> "REPLICATOR") THEN'
      '  BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = Gen_ID(G_ESCALES_PENDENT' +
        'S, 1);'
      '  END'
      'END')
    Dic1 = EscalesPendents
    Dic1Name = 'EscalesPendents'
    Abierta = False
    Borrame = False
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
    Left = 138
    Top = 144
  end
  object EscalesLin_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_HISTORIA INTEGER;'
      'DECLARE VARIABLE C_PROCES INTEGER;'
      'DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'DECLARE VARIABLE C_ESCALA INTEGER;'
      'DECLARE VARIABLE TIPUS CHAR(1);'
      'DECLARE VARIABLE EDAT SMALLINT;'
      'DECLARE VARIABLE V_APT INTEGER;'
      'DECLARE VARIABLE V_GOAT INTEGER;'
      'DECLARE VARIABLE SURT_APT CHAR(1);'
      'DECLARE VARIABLE ESTAT SMALLINT;'
      'DECLARE VARIABLE COMPTA SMALLINT;'
      'DECLARE VARIABLE ID INTEGER;'
      'DECLARE VARIABLE EVA SMALLINT;'
      'DECLARE VARIABLE REFERENCIA VARCHAR(40);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Si '#233's la GOAT o la COAT, queda pendent fins que surt d'#39 +
        'APT */'
      '      IF ((NEW.C_ITEM = 69) OR (NEW.C_ITEM = 454)) THEN'
      '      BEGIN'
      ''
      '            /* Busquem variables de treball */'
      
        '            SELECT T.C_HISTORIA, T.C_PROCES, T.C_TRACTAMENT, C.C' +
        '_ESCALA, Upper(C.TIPUS)'
      '            FROM   ESCALESCAP C'
      
        '            JOIN   TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT'
      '            WHERE  C.CLAU = NEW.CLAU'
      
        '            INTO  :C_HISTORIA, :C_PROCES, :C_TRACTAMENT, :C_ESCA' +
        'LA, :TIPUS;'
      ''
      '            IF (C_PROCES IS NULL) THEN C_PROCES = 0;'
      '            '
      
        '            /* Busquem l'#39'edat (o el par'#224'metre equivalent per bus' +
        'car el valor APT a la taula ESCCOATVAPT */'
      '            '
      
        '            /* GOAT - versi'#243' est'#224'ndard            ->  par'#224'metre ' +
        'EDAT = 100 */'
      
        '            IF      ((NEW.C_ITEM =  69) AND (F_Substr('#39'*'#39', NEW.D' +
        '_ITEM) = 0)) THEN EDAT = 100;'
      ''
      
        '            /* GOAT - versi'#243' d'#39'elecci'#243' m'#250'ltiple   ->  par'#224'metre ' +
        'EDAT = 200 */'
      
        '            ELSE IF ((NEW.C_ITEM =  69) AND (F_Substr('#39'*'#39', NEW.D' +
        '_ITEM) > 0)) THEN EDAT = 200;'
      ''
      '            /* COAT - GOAT infantil */'
      '            ELSE IF (NEW.C_ITEM = 454) THEN SELECT F.EDAT'
      '                                            FROM   ESCALESCAP C'
      
        '                                            JOIN   FILIACIO F ON' +
        ' C.C_HISTORIA = F.NUM_HIST'
      
        '                                            WHERE  C.CLAU = NEW.' +
        'CLAU'
      '                                            INTO  :EDAT;'
      ''
      ''
      
        '            /* Mirem si el valor surt d'#39'APT a la taula de valors' +
        ' APT */'
      ''
      
        '            SELECT VALORAPT FROM ESCVAPTCOAT WHERE EDAT = :EDAT ' +
        'INTO :V_APT;'
      ''
      '            V_GOAT = F_StripString(NEW.D_ITEM, '#39' *'#39');'
      ''
      '            IF (V_GOAT >= V_APT) THEN SURT_APT = '#39'S'#39';'
      '                                 ELSE SURT_APT = '#39'N'#39';'
      ''
      
        '            /* Busquem l'#39'ESTAT de l'#39'escala pendent no caducada *' +
        '/'
      '            ESTAT = -1;'
      '            '
      '            SELECT ESTAT'
      '            FROM   ESCALESPENDENTS'
      '            WHERE ((C_PROCES = :C_PROCES)'
      '                    OR'
      
        '                   ((:C_PROCES = 0) AND (C_TRACTAMENT = :C_TRACT' +
        'AMENT)))'
      '            AND    C_ESCALA = :C_ESCALA'
      '            AND    ESTAT < 5'
      '            INTO  :ESTAT;'
      ''
      '            IF (ESTAT IS NULL) THEN ESTAT = -1;'
      ''
      '            /* ESTATS:        O: pendent'
      
        '                              1: ha sortit una vegada d'#39'APT i se' +
        'gueix pendent'
      '                              4: recuperada pel cap cl'#237'nic'
      '                              5: caducada'
      '                              '
      
        '               GOAT i COAT nom'#233's caduquen quan el pacient marxa ' +
        'd'#39'alta, aleshores no t'#233' sentit que el cap cl'#237'nic la recuperi. */'
      ''
      '            IF (ESTAT <> -1) THEN'
      '            BEGIN'
      '                  /* Si surt d'#39'APT */'
      '                  IF (SURT_APT = '#39'S'#39') THEN'
      '                  BEGIN'
      
        '                        /* Si '#233's la 1a entrada (tipus I), traiem' +
        ' l'#39'escala de pendents */'
      '                        IF (Upper(TIPUS) = '#39'I'#39')'
      '                        THEN DELETE FROM ESCALESPENDENTS'
      '                             WHERE ((C_PROCES = :C_PROCES)'
      '                                     OR'
      
        '                                    ((:C_PROCES = 0) AND (C_TRAC' +
        'TAMENT = :C_TRACTAMENT)))'
      '                             AND    C_ESCALA = :C_ESCALA;'
      ''
      
        '                        /* Si no '#233's la 1a entrada (tipus C) i a ' +
        'EscalesPendents l'#39'estat '#233's 0,'
      
        '                           posem estat 1 per indicar que ja ha s' +
        'ortit d'#39'APT una vegada */'
      
        '                        ELSE IF ((Upper(TIPUS) = '#39'C'#39') AND (ESTAT' +
        ' = 0))'
      '                        THEN UPDATE ESCALESPENDENTS'
      '                             SET    ESTAT = 1'
      '                             WHERE ((C_PROCES = :C_PROCES)'
      '                                     OR'
      
        '                                    ((:C_PROCES = 0) AND (C_TRAC' +
        'TAMENT = :C_TRACTAMENT)))'
      '                             AND    C_ESCALA = :C_ESCALA'
      '                             AND    ESTAT = 0;'
      ''
      
        '                        /* Si a EscalesPendents l'#39'estat '#233's 1, tr' +
        'aiem l'#39'escala de pendents (segon valor consecutiu fora d'#39'APT) */'
      
        '                        ELSE IF ((Upper(TIPUS) = '#39'C'#39') AND (ESTAT' +
        ' = 1))'
      '                        THEN DELETE FROM ESCALESPENDENTS'
      '                             WHERE ((C_PROCES = :C_PROCES)'
      '                                     OR'
      
        '                                    ((:C_PROCES = 0) AND (C_TRAC' +
        'TAMENT = :C_TRACTAMENT)))'
      '                             AND    C_ESCALA = :C_ESCALA'
      '                             AND    ESTAT = 1;'
      '                  END;'
      ''
      '                  /* Si no surt d'#39'APT */'
      '                  ELSE IF (SURT_APT = '#39'N'#39') THEN'
      '                  BEGIN'
      
        '                        /* Si a EscalesPendents  l'#39'estat '#233's 1 (h' +
        'avia sortit d'#39'APT una vegada),'
      
        '                           el tornem a posar a 0 pq ha de sortir' +
        '-ne 2 vegades CONSECUTIVES'
      
        '                           Altrament no cal fer res, segueix amb' +
        ' el mateix estat 0            */'
      '                        IF (ESTAT = 1)'
      '                        THEN UPDATE ESCALESPENDENTS'
      '                             SET    ESTAT = 0'
      '                             WHERE ((C_PROCES = :C_PROCES)'
      '                                     OR'
      
        '                                    ((:C_PROCES = 0) AND (C_TRAC' +
        'TAMENT = :C_TRACTAMENT)))'
      '                             AND    C_ESCALA = :C_ESCALA'
      '                             AND    ESTAT = 1;'
      ''
      
        '                        /* A m'#233's, si entren tipus I posem la pen' +
        'dent a tipus C */'
      '                        IF (Upper(TIPUS) = '#39'I'#39')'
      '                        THEN UPDATE ESCALESPENDENTS'
      '                             SET    TIPUS = '#39'C'#39
      '                             WHERE ((C_PROCES = :C_PROCES)'
      '                                     OR'
      
        '                                    ((:C_PROCES = 0) AND (C_TRAC' +
        'TAMENT = :C_TRACTAMENT)))'
      '                             AND    C_ESCALA = :C_ESCALA'
      '                             AND    TIPUS = '#39'I'#39
      '                             AND    ESTAT < 5;'
      '                  END;'
      '            END;'
      '      END;'
      ''
      '      /* Escala 110 - CRS-R:'
      
        '         Si l'#39#237'tem 1041 (Funci'#243' motora) '#233's 6 o l'#39#237'tem 1039 (Comu' +
        'nicaci'#243') '#233's 2, l'#39'escala ja no ha de ser pendent'
      '         (Primer s'#39'inserta el 1039 i despr'#233's el 1041) */'
      '         '
      
        '      /* Per tant, si Comunicaci'#243' no '#233's "sortida de m'#237'nima consc' +
        'i'#232'ncia" */'
      '      ELSE IF ((NEW.C_ITEM = 1041) AND (NEW.D_ITEM <> '#39'2'#39')) THEN'
      '      BEGIN'
      
        '            /* Mirem si Funci'#243' Motora no '#233's "sortida de m'#237'nima c' +
        'onsci'#232'ncia" */'
      '            SELECT COUNT(*)'
      '            FROM   ESCALESLIN'
      '            WHERE  CLAU = NEW.CLAU'
      '            AND    C_ITEM = 1039'
      '            AND    D_ITEM <> '#39'6'#39
      '            INTO  :COMPTA;'
      ''
      '            IF (COMPTA <> 0) THEN'
      '            BEGIN'
      '                  SELECT C.C_TRACTAMENT, T.C_PROCES, C.C_ESCALA'
      '                  FROM   ESCALESCAP C'
      
        '                  JOIN   TRACTAMENTS T ON C.C_TRACTAMENT = T.C_T' +
        'RACTAMENT'
      '                  WHERE  C.CLAU = NEW.CLAU'
      '                  INTO  :C_TRACTAMENT, :C_PROCES, :C_ESCALA;'
      ''
      '                  /* Nom'#233's insertem a pendents si no hi '#233's */'
      '                  SELECT COUNT(*)'
      '                  FROM   ESCALESPENDENTS'
      '                  WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    C_ESCALA = :C_ESCALA'
      '                  AND    ESTAT = 0'
      '                  INTO  :COMPTA;'
      ''
      '                  IF (COMPTA = 0)'
      '                  THEN'
      
        '                        INSERT INTO ESCALESPENDENTS ( C_TRACTAME' +
        'NT,  C_PROCES,  C_ESCALA, C_AREA, TIPUS, ESTAT)'
      
        '                        VALUES                      (:C_TRACTAME' +
        'NT, :C_PROCES, :C_ESCALA,  '#39'REH'#39',   '#39'C'#39',     0);'
      '          END;'
      '      END;'
      '      '
      '      '
      
        '      /* Escala 122 - EVA: Valoracions per administraci'#243' d'#39'analg' +
        #232'sic: */'
      '      ELSE IF ((NEW.C_ITEM = 1212)'
      '          AND ((NEW.D_ITEM = "S") or (NEW.D_ITEM = "R"))) THEN'
      '      BEGIN'
      '            /* Busquem el tractament a la cap'#231'alera */'
      '            SELECT C.C_TRACTAMENT'
      '            FROM   ESCALESCAP C'
      
        '            JOIN   TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT'
      '            WHERE  C.CLAU = NEW.CLAU'
      '            INTO  :C_TRACTAMENT;'
      '            '
      '            /* Busquem el valor EVA introdu'#239't ('#237'tem 1211) */'
      
        '            SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = NEW.CLAU ' +
        ' AND C_ITEM = 1211 INTO :EVA;'
      '            /* Busquem la Localitzaci'#243' introdu'#239'da ('#237'tem 1210) */'
      
        '            SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = NEW.CLAU ' +
        ' AND C_ITEM = 1210 INTO :REFERENCIA;'
      ''
      
        '            /* Si analg'#232'sic = S i EVA > 3  =>  la posem a penden' +
        'ts (si no ho estava per aquesta localitzaci'#243') */'
      '            IF ((NEW.D_ITEM = "S") AND (EVA > 3)) THEN'
      '            BEGIN'
      '                  ID = 0;'
      '                  '
      '                  SELECT ID'
      '                  FROM ESCALESPENDENTS'
      '                  WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND C_ESCALA = 122'
      '                  AND ESTAT = 0'
      '                  AND REFERENCIA = :REFERENCIA'
      '                  INTO :ID;'
      ''
      '                  IF (ID IS NULL) THEN ID = 0;'
      '                  '
      '                  IF (ID = 0)'
      '                  THEN'
      
        '                        INSERT INTO ESCALESPENDENTS ( C_TRACTAME' +
        'NT, C_ESCALA, C_AREA, TIPUS, ESTAT,  REFERENCIA, DATA_PENDENT)'
      
        '                        VALUES                      (:C_TRACTAME' +
        'NT,      122,  '#39'INF'#39',   '#39'C'#39',     0, :REFERENCIA, "NOW");'
      '                  ELSE'
      
        '                        UPDATE ESCALESPENDENTS SET DATA_PENDENT ' +
        '= "NOW" WHERE ID = :ID;'
      '            END;'
      ''
      
        '            /* Si analg'#232'sic = R i EVA <= 3  =>  la traiem de pen' +
        'dents (si ho era per la localitzaci'#243' entrada) */'
      '            ELSE IF ((NEW.D_ITEM = "R") AND (EVA <= 3))'
      '            THEN'
      
        '                  DELETE FROM ESCALESPENDENTS WHERE C_TRACTAMENT' +
        ' = :C_TRACTAMENT AND C_ESCALA = 122 AND ESTAT = 0 AND REFERENCIA' +
        ' = :REFERENCIA;'
      '      END;'
      ''
      '   END;'
      'END')
    Dic1 = EscalesLin
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
    Left = 104
    Top = 260
  end
  object COATValorsAPT: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Edat'
        NombreDB = 'Edat'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Valor APT'
        NombreDB = 'ValorAPT'
        Longitud = 3
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
          'Edat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'COAT Valors APT'
    NombreTabla = 'EscVAPTCOAT'
    Organiza = tbBase
    CamposVer.Strings = (
      'Edat'
      'Valor APT')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 476
    Top = 605
  end
  object P_CaducaPendents: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Caduca'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      '  DECLARE VARIABLE X INTEGER;'
      '  DECLARE VARIABLE Y INTEGER;'
      '  DECLARE VARIABLE Z INTEGER;'
      '  DECLARE VARIABLE W INTEGER;'
      '  DECLARE VARIABLE ID INTEGER;'
      '  DECLARE VARIABLE C_ESCALA     INTEGER;'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '  DECLARE VARIABLE C_PROCES     INTEGER;'
      'BEGIN'
      ''
      
        '      SELECT CADUCITATESCALESI, CADUCITATESCALESA, CADUCITATESCA' +
        'LESR, CADUCITATESCALESA1004 FROM CONFIG INTO :X, :Y, :Z, :W;'
      '      '
      
        '      /* Caduquem les escales pendents a l'#39'ingr'#233's que fa m'#233's de ' +
        'X dies que ho estan */'
      '      FOR SELECT E.ID, C_ESCALA, C_TRACTAMENT, C_PROCES'
      '          FROM   ESCALESPENDENTS E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  E.TIPUS = '#39'I'#39
      '          AND    E.ESTAT < 5'
      '          AND    T.DATA_INGRES < "TODAY" - :X'
      '          INTO  :ID, :C_ESCALA, :C_TRACTAMENT, :C_PROCES'
      '      DO BEGIN'
      '      '
      '            UPDATE ESCALESPENDENTS'
      '            SET    ESTAT = 5'
      '            WHERE  ID = :ID;'
      '            '
      
        '            /* Si caduca una pendent GOAT o COAT a l'#39'ingr'#233's, la ' +
        'deixem pendent amb tipus '#39'C'#39' */'
      '            IF ((C_ESCALA = 4) OR (C_ESCALA = 63))'
      
        '            THEN INSERT INTO ESCALESPENDENTS ( C_TRACTAMENT,  C_' +
        'PROCES,  C_ESCALA, C_AREA, TIPUS)'
      
        '                 VALUES                      (:C_TRACTAMENT, :C_' +
        'PROCES, :C_ESCALA,  '#39'INF'#39',   '#39'C'#39');'
      '      END;'
      '      '
      
        '      /* Caduquem les pendents a l'#39'alta que es bolquen a l'#39'infor' +
        'me d'#39'alta, de pacients ingressats que faci m'#233's de W dies que hag' +
        'in marxat d'#39'alta */'
      '      FOR SELECT E.ID'
      '          FROM   ESCALESPENDENTS E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T AND T.C_PRESTACIO = '#39'1004'#39
      '          WHERE (E.TIPUS = '#39'T'#39' OR E.TIPUS = '#39'A'#39')'
      '          AND    E.ESTAT < 5'
      
        '          AND    E.C_ESCALA <> 8             /* MAIG 2014 - atur' +
        'em caducitat escala ASIA */'
      '          AND    T.DATA_ALTA < "TODAY" - :W'
      
        '          AND    EXISTS (SELECT C_ITEM FROM ESCALESITEMS I WHERE' +
        ' I.C_ESCALA = E.C_ESCALA AND I.BOLCA = "S")'
      '          INTO  :ID'
      '      DO BEGIN'
      ''
      '            UPDATE ESCALESPENDENTS'
      '            SET    ESTAT = 5'
      '            WHERE  ID = :ID;'
      '      END;'
      ''
      
        '      /* Caduquem les pendents a l'#39'alta si fa m'#233's de Y dies que ' +
        'han marxat d'#39'alta (i no entren en la caducitat anterior) */'
      '      FOR SELECT E.ID'
      '          FROM   ESCALESPENDENTS E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T AND T.C_PRESTACIO <> '#39'1004'#39
      '          WHERE (E.TIPUS = '#39'T'#39' OR E.TIPUS = '#39'A'#39')'
      '          AND    E.ESTAT < 5'
      
        '          AND    E.C_ESCALA <> 8             /* MAIG 2014 - atur' +
        'em caducitat escala ASIA */'
      '          AND    T.DATA_ALTA < "TODAY" - :Y'
      
        '          AND    NOT EXISTS (SELECT C_ITEM FROM ESCALESITEMS I W' +
        'HERE I.C_ESCALA = E.C_ESCALA AND I.BOLCA = "S")'
      '          INTO  :ID'
      '      DO BEGIN'
      '      '
      '            UPDATE ESCALESPENDENTS'
      '            SET    ESTAT = 5'
      '            WHERE  ID = :ID;'
      '      END;'
      '      '
      
        '      /* Caduquem les pendents de les revisions, Z dies despr'#233's ' +
        'de la revisi'#243' */'
      '      FOR SELECT E.ID'
      '          FROM   ESCALESPENDENTS E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  E.TIPUS = '#39'S'#39
      '          AND    E.ESTAT < 5'
      
        '          AND    E.C_ESCALA <> 8             /* MAIG 2014 - atur' +
        'em caducitat escala ASIA */'
      '          AND    T.DATA_ALTA < "TODAY" - :Z'
      '          INTO  :ID'
      '      DO BEGIN'
      '      '
      '            UPDATE ESCALESPENDENTS'
      '            SET    ESTAT = 5'
      '            WHERE  ID = :ID;'
      '      END;'
      ''
      
        '      /* Traiem de pendents les GOAT i COAT dels pacients que ja' +
        ' han marxat d'#39'alta i no han sortit d'#39'APT */'
      '      FOR SELECT E.ID'
      '          FROM   ESCALESPENDENTS E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE (E.C_ESCALA = 4 OR E.C_ESCALA = 63)'
      '          AND    T.DATA_ALTA < "TODAY"'
      '          INTO  :ID'
      '      DO BEGIN'
      '      '
      '            DELETE FROM ESCALESPENDENTS WHERE ID = :ID;'
      '      END;'
      '      '
      '      /* Traiem de pendents les EVA de m'#233's de 12 hores */'
      '      UPDATE ESCALESPENDENTS'
      '      SET    ESTAT = 5'
      '      WHERE  C_ESCALA = 122'
      '      AND    ESTAT = 0'
      '      AND    TIPUS = "C"'
      '      AND    DATA_PENDENT < "NOW" - 12/24;'
      '      '
      'END')
    Dic1 = EscalesPendents
    Dic1Name = 'EscalesPendents'
    Abierta = False
    Borrame = False
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
    Top = 144
  end
  object EscPendVirtual: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'ID'
        NombreDB = 'ID'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Hist.'
        NombreDB = 'C_Historia'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom complet'
        NombreDB = 'NomComplet'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Prestaci'#243
        NombreDB = 'c_prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu d'#39'ingr'#233's'
        NombreDB = 'N_CODI'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Escala'
        NombreDB = 'R_Escala'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Classificaci'#243' etiol'#242'gica'
        NombreDB = 'N_UnitatM'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = #192'rea'
        NombreDB = 'C_Area'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ingr'#233's'
        NombreDB = 'Data_Ingres'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Prealta'
        NombreDB = 'Data_Prealta'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Alta'
        NombreDB = 'Data_Alta'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Responsable'
        NombreDB = 'C_Infermeria'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Responsable F.'
        NombreDB = 'C_FISIOTERAPEUTA'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Responsable T.O.'
        NombreDB = 'C_TERAPEUTA'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Responsable'
        NombreDB = 'c_psicoleg'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Responsable'
        NombreDB = 'C_Trevallsocial'
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Escales Pendents Virtual'
    NombreTabla = 'EscPendVirtual'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = True
    Modi = False
    Left = 788
    Top = 144
  end
  object EscalesTipus: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Tipus'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
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
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal catal'#224
        NombreDB = 'N_Tipus_CA'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'bolcatge informe alta'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal castell'#224
        NombreDB = 'N_Tipus_ES'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'bolcatge informe alta'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus')
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
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Tipus d'#39'Escales'
    NombreTabla = 'EscalesTipus'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus'
      'Descripci'#243
      'Ordre'
      'Baixa')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 384
    Top = 16
  end
  object P_Asia_Init_NN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Init_NN'
    ForceNombreDB = False
    Body.Strings = (
      '(ID_I INTEGER, ID_F INTEGER)'
      'AS'
      '      DECLARE VARIABLE ID INTEGER;'
      ' '
      '      DECLARE VARIABLE N_SENS_D  VARCHAR(3);'
      '      DECLARE VARIABLE N_SENS_E  VARCHAR(3);'
      '      DECLARE VARIABLE N_MOTOR_D VARCHAR(3);'
      '      DECLARE VARIABLE N_MOTOR_E VARCHAR(3);'
      ' '
      '      DECLARE VARIABLE ORDRE INTEGER;'
      '      DECLARE VARIABLE VALOR VARCHAR(3);'
      ''
      'BEGIN'
      '      IF (ID_I IS NULL) THEN ID_I = 0;'
      '      IF (ID_F IS NULL) THEN ID_F = 1000000;'
      '      '
      '      FOR SELECT ID, N_SENS_D, N_SENS_E, N_MOTOR_D, N_MOTOR_E'
      '          FROM   ESCASIA'
      '          WHERE  ID BETWEEN :ID_I AND :ID_F'
      '          AND  ((NIVELL_NEURO IS NULL) OR (NIVELL_NEURO = '#39#39'))'
      '          ORDER  BY ID'
      
        '          INTO  :ID, :N_SENS_D, :N_SENS_E, :N_MOTOR_D, :N_MOTOR_' +
        'E'
      '      DO BEGIN'
      '          '
      '            ORDRE = 0;'
      '          '
      '            SELECT MIN(ORDRE)'
      '            FROM   ESCVASIA'
      '            WHERE  VALOR = :N_SENS_D'
      '               OR  VALOR = :N_SENS_E'
      '               OR  VALOR = :N_MOTOR_D'
      '               OR  VALOR = :N_MOTOR_E'
      '            INTO  :ORDRE;'
      '          '
      '            IF (ORDRE IS NULL) THEN ORDRE = 0;'
      '          '
      '            IF (ORDRE > 0) THEN'
      '            BEGIN'
      
        '                  SELECT VALOR FROM ESCVASIA WHERE ORDRE = :ORDR' +
        'E INTO :VALOR;'
      ''
      
        '                  UPDATE ESCASIA SET NIVELL_NEURO = :VALOR WHERE' +
        ' ID = :ID;'
      '            END;'
      '            '
      '      END;'
      'END')
    Dic1 = Asia
    Dic1Name = 'Asia'
    Abierta = False
    Borrame = False
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
    Top = 320
  end
  object EscalesCap_AD: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AD'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE EDAT INTEGER;'
      'DECLARE VARIABLE GRUP_UM CHAR(1);'
      ''
      'DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      'DECLARE VARIABLE C_MOTIU INTEGER;'
      'DECLARE VARIABLE C_PROCES INTEGER;'
      'DECLARE VARIABLE ES_REVISIO SMALLINT;'
      ''
      'DECLARE VARIABLE DATA_INGRES DATE;'
      'DECLARE VARIABLE DATA_ALTA DATE;'
      'DECLARE VARIABLE DATA_PREALTA DATE;'
      'DECLARE VARIABLE DATA_A DATE;'
      ''
      'DECLARE VARIABLE ESTAT INTEGER;'
      ''
      'DECLARE VARIABLE COMPTA INTEGER;'
      'DECLARE VARIABLE ID INTEGER;'
      'DECLARE VARIABLE TROBADA SMALLINT;'
      ''
      'DECLARE VARIABLE CADU_I INTEGER;'
      'DECLARE VARIABLE DIES_A      INTEGER;'
      'DECLARE VARIABLE CADU_A INTEGER;'
      'DECLARE VARIABLE CADU_R INTEGER;'
      ''
      'DECLARE VARIABLE C_AREA  VARCHAR(3);'
      'DECLARE VARIABLE C_AREA1 VARCHAR(3);'
      'DECLARE VARIABLE C_AREA2 VARCHAR(3);'
      ''
      'DECLARE VARIABLE DATA1     DATE;'
      'DECLARE VARIABLE DIES      INTEGER;'
      'DECLARE VARIABLE CLAUCANVI INTEGER;'
      'DECLARE VARIABLE ITEMS     INTEGER;'
      ''
      'DECLARE VARIABLE CONTA     INTEGER;'
      'DECLARE VARIABLE CONTA2    INTEGER;'
      'DECLARE VARIABLE CLAU      INTEGER;'
      ''
      'DECLARE VARIABLE ANALGESIC VARCHAR(1);'
      'DECLARE VARIABLE EVA       SMALLINT;'
      'DECLARE VARIABLE REFERENCIA VARCHAR(40);'
      ''
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      /* Agost 2015: per eliminar/regenerar pendents '#233's suficien' +
        't buscar per tractament'
      
        '                   (alguna vegada hem canviat el proc'#233's a m'#224' i l' +
        'laovrs no quadra amb el d'#39'escalespendents! */'
      ''
      '      /* Busquem les dades del tractament */'
      
        '      SELECT T.C_PRESTACIO, T.DATA_INGRES, T.DATA_PREALTA, T.DAT' +
        'A_ALTA, T.C_PROCES, T.C_MOTIU, U.C_GRUP, F.EDAT'
      '      FROM   TRACTAMENTS T'
      '      JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN   UNITATM  U ON F.C_UNITATMEDICA = U.C_UNITATM'
      '      WHERE  T.C_TRACTAMENT = OLD.C_TRACTAMENT'
      
        '      INTO  :C_PRESTACIO, :DATA_INGRES, :DATA_PREALTA, :DATA_ALT' +
        'A, C_PROCES, :C_MOTIU, :GRUP_UM, :EDAT;'
      ''
      
        '      /* Si el motiu '#233's revisi'#243' (2004 o ingr'#233's per revisi'#243') busc' +
        'arem OBLIGAT_R = '#39'X'#39' */'
      
        '      SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = :C_MOTIU A' +
        'ND C_DRET = '#39'X5'#39' INTO :ES_REVISIO;'
      '      IF (ES_REVISIO > 0) THEN C_PRESTACIO = '#39'2004'#39';'
      ''
      '      /* Busquem l'#39#224'rea de l'#39'usuari que havia entrat l'#39'escala */'
      '      SELECT C_AREA'
      '      FROM   ESPECIAL E'
      '      JOIN   METGES M ON E.C_ESPECIAL = M.C_ESPECIAL'
      '      WHERE  M.CODI = OLD.C_USUARI'
      '      INTO  :C_AREA;'
      ''
      ''
      '      /*  4.GOAT'
      '         63.COAT */'
      '      IF ((OLD.C_ESCALA = 4) OR (OLD.C_ESCALA = 63)) THEN'
      '      BEGIN'
      
        '            /* Si s'#39'elimina una entrada no anul'#183'lada ni denegada' +
        ' */'
      
        '            IF ((OLD.ANULAT <> '#39'S'#39') AND (OLD.ANULAT <> '#39'D'#39')) THE' +
        'N'
      '            BEGIN'
      
        '                  /* Si no est'#224' pendent i anul'#183'len una '#39'I'#39' (havi' +
        'a sortit d'#39'APT a la primera entrada)    => es posa pendent amb e' +
        'stat 0'
      
        '                     Si no est'#224' pendent i anul'#183'len una '#39'C'#39' (havi' +
        'a sortit d'#39'APT 2 vegades, en queda una) => es posa pendent amb e' +
        'stat 1'
      
        '                     Si est'#224' pendent amb estat 0           (no h' +
        'avia sortit d'#39'APT)                      => no fem res, ja '#233's cor' +
        'recte'
      
        '                     Si est'#224' pendent amb estat 1           (havi' +
        'a sortit d'#39'APT una vegada)              => tornem a posar estat ' +
        '0       */'
      ''
      '                  ID = 0;'
      ''
      '                  SELECT ID, ESTAT'
      '                  FROM   ESCALESPENDENTS'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    C_TRACTAMENT = OLD.C_TRACTAMENT'
      '                  INTO  :ID, :ESTAT;'
      ''
      '                  IF (ID IS NULL) THEN ID = 0;'
      '                  '
      '                  IF (ID = 0) THEN'
      '                  BEGIN'
      
        '                        IF      (Upper(OLD.TIPUS) = '#39'I'#39') THEN ES' +
        'TAT = 0;'
      
        '                        ELSE IF (Upper(OLD.TIPUS) = '#39'C'#39') THEN ES' +
        'TAT = 1;'
      ''
      
        '                        INSERT INTO ESCALESPENDENTS (    C_TRACT' +
        'AMENT,  C_PROCES,     C_ESCALA, C_AREA,     TIPUS,  ESTAT)'
      
        '                        VALUES                      (OLD.C_TRACT' +
        'AMENT, :C_PROCES, OLD.C_ESCALA,  '#39'INF'#39', OLD.TIPUS, :ESTAT);'
      '                  END;'
      
        '                  ELSE IF (ESTAT = 1) THEN UPDATE ESCALESPENDENT' +
        'S SET ESTAT = 0 WHERE ID = :ID;'
      '            END;'
      '      END;'
      '      '
      '      /* 110. CRS-R */'
      '      ELSE IF  (OLD.C_ESCALA = 110) THEN'
      '      BEGIN'
      
        '          /* Si eliminen una entrada no anul'#183'lada ni denegada ca' +
        'l mirar si cal que estigui a pendents'
      
        '             CRS-R: si FUNCIO MOTORA=6 o COMUNICACI'#211'=2 ja no ha ' +
        'de ser pendent*/'
      '          IF ((OLD.ANULAT <> '#39'S'#39') AND (OLD.ANULAT <> '#39'D'#39')) THEN'
      '          BEGIN'
      '              /* Mirem si hi est'#224' a pendents */'
      
        '              SELECT COUNT(*) FROM ESCALESPENDENTS WHERE C_TRACT' +
        'AMENT = OLD.C_TRACTAMENT'
      
        '              AND C_ESCALA=110 AND C_AREA='#39'REH'#39' AND TIPUS='#39'C'#39' AN' +
        'D ESTAT=0'
      '              INTO :CONTA;'
      ''
      
        '              /* Recuperem la '#250'ltima entrada no anul'#183'lada ni den' +
        'egada */'
      '              SELECT CLAU FROM ESCALESCAP'
      
        '              WHERE C_HISTORIA = OLD.C_HISTORIA AND NOT (ANULAT ' +
        'IN ('#39'D'#39','#39'S'#39'))'
      '              AND C_ESCALA=110 AND CLAU <> OLD.CLAU'
      '              ORDER BY DATA DESC'
      '              ROWS 1'
      '              INTO :CLAU;'
      ''
      
        '              /* Si en trobem una, mirem quins valors t'#233' als ite' +
        'ms 1039 i 1041 */'
      '              IF (CLAU > 0) THEN'
      '              BEGIN'
      '                  SELECT COUNT(*) FROM ESCALESLIN'
      '                  WHERE CLAU=:CLAU'
      
        '                  AND ((C_ITEM=1039 AND D_ITEM=6) OR (C_ITEM=104' +
        '1 AND D_ITEM=2))'
      '                  INTO :CONTA2;'
      ''
      '                  /* Si no hi ha registre a pendents */'
      '                  IF (CONTA=0) THEN'
      '                  BEGIN'
      
        '                      /* Si l'#39#237'tem 1039 no t'#233' valor 6 ni l'#39#237'tem ' +
        '1041 t'#233' valor 2, insertem a pendents */'
      '                      IF (CONTA2=0) THEN'
      '                      BEGIN'
      
        '                          INSERT INTO ESCALESPENDENTS (    C_TRA' +
        'CTAMENT,  C_PROCES,  C_ESCALA, C_AREA, TIPUS, ESTAT)'
      
        '                          VALUES                      (OLD.C_TRA' +
        'CTAMENT, :C_PROCES,       110,  '#39'REH'#39',   '#39'C'#39',     0);'
      '                      END;'
      '                  END;'
      '                  /* Si hi ha registre a pendents */'
      '                  ELSE BEGIN'
      
        '                      /* Si els '#237'tems 1039 i 1041 valen 6 '#243' 2 re' +
        'spectivament, l'#39'esborrem de pendents */'
      '                      IF (CONTA2<>0) THEN'
      '                      BEGIN'
      '                          DELETE FROM ESCALESPENDENTS'
      
        '                          WHERE C_TRACTAMENT=OLD.C_TRACTAMENT AN' +
        'D C_ESCALA=110 AND C_AREA='#39'REH'#39' AND TIPUS='#39'C'#39' AND ESTAT=0;'
      '                      END;'
      '                  END;'
      '              END;'
      
        '              /* Si no hi ha cap entrada no pot haver-hi cap esc' +
        'ala pendent */'
      '              ELSE BEGIN'
      '                  IF (CONTA<>0) THEN'
      '                  BEGIN'
      '                      DELETE FROM ESCALESPENDENTS'
      
        '                      WHERE C_TRACTAMENT=OLD.C_TRACTAMENT AND C_' +
        'ESCALA=110 AND C_AREA='#39'REH'#39' AND TIPUS='#39'C'#39' AND ESTAT=0;'
      '                  END;'
      '              END;'
      '          END;'
      '      END;'
      ''
      ''
      '      /* 122. EVA - Eliminen entrada no anul'#183'lada ni denegada */'
      
        '      ELSE IF ((OLD.C_ESCALA = 122) AND (OLD.ANULAT <> '#39'S'#39') AND ' +
        '(OLD.ANULAT <> '#39'D'#39')) THEN'
      '      BEGIN'
      
        '          /* Mirem si correspon a l'#39'administraci'#243' d'#39'analg'#232'sic  *' +
        '/'
      
        '          SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = OLD.CLAU AN' +
        'D C_ITEM = 1212 INTO :ANALGESIC;'
      ''
      
        '          /* i en cas afirmatiu, mirem si ha de quedar pendent e' +
        'n la nova situaci'#243' */'
      '          IF ((ANALGESIC = "S") OR (ANALGESIC = "R")) THEN'
      '          BEGIN'
      
        '              /* Busquem la Localitzaci'#243' introdu'#239'da ('#237'tem 1210) ' +
        '*/'
      
        '              SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = OLD.CLA' +
        'U  AND C_ITEM = 1210 INTO :REFERENCIA;'
      ''
      '              /* Mirem si est'#224' pendent */'
      '              SELECT ID'
      '              FROM   ESCALESPENDENTS'
      '              WHERE  C_TRACTAMENT = OLD.C_TRACTAMENT'
      '              AND    C_ESCALA = 122'
      '              AND    TIPUS = '#39'C'#39
      '              AND    ESTAT = 0'
      '              AND    REFERENCIA = :REFERENCIA'
      '              INTO  :ID;'
      ''
      '              IF (ID IS NULL) THEN ID = 0;'
      ''
      
        '              /* Recuperem l'#39#250'ltima entrada no anul'#183'lada corresp' +
        'onent a una valoraci'#243' amb analg'#232'sic administrat i amb la mateixa' +
        ' localitzacio */'
      '              SELECT C.CLAU FROM ESCALESCAP C'
      
        '              JOIN   ESCALESLIN LA ON C.CLAU = LA.CLAU AND LA.C_' +
        'ITEM = 1212 AND (LA.D_ITEM = "R" OR LA.D_ITEM = "S")'
      
        '              JOIN   ESCALESLIN LL ON C.CLAU = LL.CLAU AND LL.C_' +
        'ITEM = 1210 AND F_LRTRIM(LL.D_ITEM) = :REFERENCIA'
      '              WHERE  C.C_HISTORIA = OLD.C_HISTORIA'
      '              AND    C.ANULAT = "N"'
      '              AND    C.C_ESCALA = 122'
      '              AND    C.DATA_ADM < OLD.DATA_ADM'
      '              ORDER BY DATA_ADM DESC'
      '              ROWS 1'
      '              INTO :CLAU;'
      ''
      
        '              /* Ens guardem el valor EVA corresponent a l'#39'entra' +
        'da trobada */'
      
        '              SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = :CLAU A' +
        'ND C_ITEM = 1211 INTO :EVA;'
      ''
      '              IF (EVA IS NULL) THEN EVA = 0;'
      ''
      
        '              /* Si ha d'#39'estar pendent i no ho estava, la posem ' +
        'pendent */'
      '              IF ((EVA > 3) AND (ID = 0))'
      '              THEN'
      
        '                    INSERT INTO ESCALESPENDENTS (    C_TRACTAMEN' +
        'T, C_ESCALA, C_AREA, TIPUS, ESTAT,  REFERENCIA)'
      
        '                    VALUES                      (OLD.C_TRACTAMEN' +
        'T,      122,  '#39'INF'#39',   '#39'C'#39',     0, :REFERENCIA);'
      ''
      
        '              /* Si no ha d'#39'estar pendent i ho estava, la traiem' +
        ' de pendents */'
      '              ELSE IF ((EVA <= 3) AND (COMPTA > 0))'
      '              THEN'
      
        '                    DELETE FROM ESCALESPENDENTS WHERE C_TRACTAME' +
        'NT = OLD.C_TRACTAMENT AND C_ESCALA = 122 AND ESTAT = 0 AND REFER' +
        'ENCIA = :REFERENCIA;'
      '          END;'
      '      END;'
      '      '
      
        '      /* ELIMINACI'#211' D'#39'UNA ENTRADA no anul'#183'lada ni denegada  -  G' +
        'EN'#200'RICA (tipus "-") */'
      '      ELSE IF ( (OLD.TIPUS = '#39'-'#39')'
      '           AND ((OLD.ANULAT <> '#39'S'#39') AND (OLD.ANULAT <> '#39'D'#39')) )'
      '      THEN BEGIN'
      
        '            /* Busquem si hi ha una altra entrada no anul'#183'lada n' +
        'i denegada, que no sigui no valorable */'
      '            SELECT CLAU'
      '            FROM   ESCALESCAP'
      '            WHERE  C_ESCALA = OLD.C_ESCALA'
      '            AND    C_TRACTAMENT = OLD.C_TRACTAMENT'
      
        '            AND    ANULAT <> '#39'S'#39' AND ANULAT <> '#39'D'#39' AND ANULAT <>' +
        ' '#39'V'#39
      '            INTO  :TROBADA;'
      ''
      '            IF (TROBADA IS NULL) THEN TROBADA = 0;'
      ''
      '            /* Si la trobem, li canviem el tipus */'
      
        '            IF (TROBADA > 0) THEN UPDATE ESCALESCAP SET TIPUS = ' +
        #39'-'#39' WHERE CLAU = :TROBADA;'
      ''
      
        '            /* Altrament, tornem a posar l'#39'escala com a pendent ' +
        '*/'
      '            ELSE BEGIN'
      '            '
      
        '                  /* Si a l'#39#224'rea de l'#39'usuari que havia entrat l'#39 +
        'escala, li corresponen '#237'tems de l'#39'escala,'
      
        '                     posarem l'#39'escala pendent per l'#39#224'rea de l'#39'us' +
        'uari que l'#39'havia entrat.'
      
        '                     Altrament posarem l'#39'escala pendent per tote' +
        's les '#224'rees que li corresponen */'
      ''
      '                  SELECT COUNT(*)'
      '                  FROM   ESCALESITEMS'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    AREA_USUARI = :C_AREA'
      '                  INTO  :ITEMS;'
      ''
      '                  IF (ITEMS > 0) THEN C_AREA1 = :C_AREA;'
      '                                 ELSE C_AREA1 = '#39'***'#39';'
      ''
      
        '                  /* Per cada '#224'rea per la qual l'#39'escala era obli' +
        'gat'#242'ria,'
      
        '                     si '#233's l'#39#224'rea de l'#39'usuari que havia entrat l' +
        #39'escala'
      
        '                     o b'#233' a l'#39'usuari que l'#39'havia entrat no li co' +
        'rresponen '#237'tems de l'#39'escala'
      '                     la tornem a posar pendent */'
      '                  FOR SELECT C_AREA'
      '                      FROM   ESCALESOBLIGACIONS'
      '                      WHERE  C_ESCALA = OLD.C_ESCALA'
      '                      AND    OBLIGA_NOTIR = '#39'X'#39
      '                      AND   (GRUP = :GRUP_UM OR GRUP = '#39'*'#39')'
      
        '                      AND   (C_PRESTACIO = :C_PRESTACIO OR C_PRE' +
        'STACIO = '#39'*'#39')'
      
        '                      AND  ((:EDAT > EDATINFANTIL AND INFANTIL =' +
        ' '#39'N'#39')  OR  (:EDAT <= EDATINFANTIL AND INFANTIL = '#39'S'#39'))'
      
        '                      AND   (C_AREA = :C_AREA1 OR :C_AREA1 = '#39'**' +
        '*'#39')'
      '                      INTO :C_AREA2'
      '                  DO BEGIN'
      
        '                        INSERT INTO ESCALESPENDENTS (    C_TRACT' +
        'AMENT,     C_ESCALA,   C_AREA, TIPUS)'
      
        '                        VALUES                      (OLD.C_TRACT' +
        'AMENT, OLD.C_ESCALA, :C_AREA2,   '#39'-'#39');'
      '                  END;'
      ''
      '                  /*'
      
        '                  INSERT INTO ESCALESPENDENTS (    C_TRACTAMENT,' +
        '     C_ESCALA,  C_AREA, TIPUS)'
      
        '                  VALUES                      (OLD.C_TRACTAMENT,' +
        ' OLD.C_ESCALA, :C_AREA,   '#39'-'#39');'
      '                  */'
      '            END;'
      '      END;'
      ''
      ''
      
        '      /* ELIMINACI'#211' D'#39'UNA ENTRADA no anul'#183'lada ni denegada  -  P' +
        'ROC'#201'S (I-T-A) */'
      
        '      /* Si s'#39'elimina una escala entrada no denegada ni anul'#183'lad' +
        'a, de tipus I, T o A, la tornarem a posar pendent,'
      
        '         excepte si existeix alguna altra entrada que pugui subs' +
        'tituir-la (per dates) */'
      
        '      ELSE IF ( ((OLD.TIPUS  = '#39'I'#39') OR (OLD.TIPUS  = '#39'A'#39') OR (OL' +
        'D.TIPUS  = '#39'T'#39'))'
      '           AND  ((OLD.ANULAT <> '#39'S'#39') AND (OLD.ANULAT <> '#39'D'#39')) )'
      '      THEN BEGIN'
      ''
      '            IF (DATA_ALTA IS NOT NULL) THEN DATA_A = DATA_ALTA;'
      
        '            ELSE IF (DATA_PREALTA IS NOT NULL) THEN DATA_A = DAT' +
        'A_PREALTA;'
      '            ELSE DATA_A = NULL;'
      ''
      
        '            /* Busquem par'#224'metres de caducitat i rangs d'#39'entrada' +
        ' de les escales segons el tipus: */'
      
        '            SELECT CADUCITATESCALESI, DIESESCALESA, CADUCITATESC' +
        'ALESA, CADUCITATESCALESR'
      '            FROM   CONFIG'
      '            INTO  :CADU_I, :DIES_A, :CADU_A, :CADU_R;'
      ''
      '            TROBADA = 0;'
      ''
      
        '            /* Mirem si existeix una entrada de tipus '#39'C'#39' que pu' +
        'gui substituir la que s'#39'esborra: */'
      ''
      '            IF (OLD.TIPUS = '#39'I'#39') THEN'
      '            BEGIN'
      '                  SELECT MIN(CLAU)'
      '                  FROM   ESCALESCAP'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    C_HISTORIA = OLD.C_HISTORIA'
      '                  AND    TIPUS = '#39'C'#39
      
        '                  AND    DATA BETWEEN :DATA_INGRES AND :DATA_ING' +
        'RES + :CADU_I   /* ha d'#39'estar entrada durant X primers dies de l' +
        #39'ingr'#233's */'
      '                  INTO  :TROBADA;'
      ''
      '                  IF (TROBADA IS NULL) THEN TROBADA = 0;'
      ''
      
        '                  IF (TROBADA <> 0) THEN UPDATE ESCALESCAP SET T' +
        'IPUS = '#39'I'#39' WHERE CLAU = :TROBADA;   /* li canviem el tipus */'
      '            END;'
      ''
      
        '            ELSE IF (((OLD.TIPUS = '#39'A'#39') OR (OLD.TIPUS = '#39'T'#39')) AN' +
        'D (DATA_A IS NOT NULL)) THEN'
      '            BEGIN'
      '                  DIES = F_MaximBVG(DIES_A, CADU_A) + 5;'
      ''
      '                  FOR SELECT CLAU, DATA'
      '                      FROM   ESCALESCAP'
      '                      WHERE  C_ESCALA = OLD.C_ESCALA'
      '                      AND    C_HISTORIA = OLD.C_HISTORIA'
      '                      AND    upper(TIPUS) = '#39'C'#39
      
        '                      AND    DATA BETWEEN :DATA_A - :DIES_A AND ' +
        ':DATA_A + :CADU_A    /* ha d'#39'estar entrada a X dies de la data d' +
        #39'alta */'
      '                      INTO  :TROBADA, :DATA1'
      '                  DO BEGIN'
      
        '                        IF (DIES > F_IBAbs(DATA1 - DATA_A)) THEN' +
        '   /* busquem l'#39'entrada m'#233's propera a la data d'#39'alta */'
      '                        BEGIN'
      '                              CLAUCANVI = TROBADA;'
      '                              DIES = F_IBAbs(DATA1 - DATA_A);'
      '                        END;'
      '                  END;'
      ''
      
        '                  /* li canviem el tipus a la trobada (si dies h' +
        'a disminu'#239't, '#233's que n'#39'hem trobat una */'
      
        '                  IF (DIES < F_MaximBVG(DIES_A, CADU_A) + 5) THE' +
        'N UPDATE ESCALESCAP SET TIPUS = upper(OLD.TIPUS) WHERE CLAU = :C' +
        'LAUCANVI;'
      
        '                                                           ELSE ' +
        'TROBADA = 0;'
      '            END;'
      ''
      
        '            /* Si no en trobem cap i l'#39'escala era obligat'#242'ria, l' +
        #39'hem de tornar a posar pendent: */'
      '            IF (TROBADA = 0) THEN'
      '            BEGIN'
      
        '                  /* Si a l'#39#224'rea de l'#39'usuari que havia entrat l'#39 +
        'escala, li corresponen '#237'tems de l'#39'escala,'
      
        '                     posarem l'#39'escala pendent per l'#39#224'rea de l'#39'us' +
        'uari que l'#39'havia entrat.'
      
        '                     Altrament posarem l'#39'escala pendent per tote' +
        's les '#224'rees que li corresponen */'
      ''
      '                  SELECT COUNT(*)'
      '                  FROM   ESCALESITEMS'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    AREA_USUARI = :C_AREA'
      '                  INTO  :ITEMS;'
      ''
      '                  IF (ITEMS > 0) THEN C_AREA1 = :C_AREA;'
      '                                 ELSE C_AREA1 = '#39'***'#39';'
      ''
      
        '                  /* Per cada '#224'rea per la qual l'#39'escala era obli' +
        'gat'#242'ria,'
      
        '                     si '#233's l'#39#224'rea de l'#39'usuari que havia entrat l' +
        #39'escala'
      
        '                     o b'#233' a l'#39'usuari que l'#39'havia entrat no li co' +
        'rresponen '#237'tems de l'#39'escala'
      '                     la tornem a posar pendent */'
      '                  FOR SELECT C_AREA'
      '                      FROM   ESCALESOBLIGACIONS'
      '                      WHERE  C_ESCALA = OLD.C_ESCALA'
      
        '                      AND  ((OBLIGA_I = '#39'X'#39' AND OLD.TIPUS = '#39'I'#39')' +
        ' OR'
      
        '                            (OBLIGA_T = '#39'X'#39' AND OLD.TIPUS = '#39'T'#39')' +
        ' OR'
      
        '                            (OBLIGA_A = '#39'X'#39' AND OLD.TIPUS = '#39'A'#39')' +
        ')'
      '                      AND   (GRUP = :GRUP_UM OR GRUP = '#39'*'#39')'
      
        '                      AND   (C_PRESTACIO = :C_PRESTACIO OR C_PRE' +
        'STACIO = '#39'*'#39')'
      
        '                      AND  ((:EDAT > EDATINFANTIL AND INFANTIL =' +
        ' '#39'N'#39')  OR  (:EDAT <= EDATINFANTIL AND INFANTIL = '#39'S'#39'))'
      
        '                      AND   (C_AREA = :C_AREA1 OR :C_AREA1 = '#39'**' +
        '*'#39')'
      '                      INTO :C_AREA2'
      '                  DO BEGIN'
      ''
      
        '                        INSERT INTO ESCALESPENDENTS (    C_TRACT' +
        'AMENT,  C_PROCES,     C_ESCALA,   C_AREA,     TIPUS)'
      
        '                        VALUES                      (OLD.C_TRACT' +
        'AMENT, :C_PROCES, OLD.C_ESCALA, :C_AREA2, OLD.TIPUS);'
      '                  END;'
      '            END;'
      ''
      '      END;'
      ''
      ''
      
        '      /* ELIMINACI'#211' D'#39'UNA ENTRADA no anul'#183'lada ni denegada  -  R' +
        'EVISI'#211' (S) */'
      
        '      /* Si s'#39'esborra una entrada no anul'#183'lada ni denegada, de t' +
        'ipus S corresponent a una revisi'#243'  =>  es torna a posar pendent ' +
        'd'#39'entrar */'
      
        '      IF  ((OLD.TIPUS  = '#39'S'#39') AND (OLD.ANULAT <> '#39'S'#39') AND (OLD.A' +
        'NULAT <> '#39'D'#39'))'
      '      THEN BEGIN'
      ''
      
        '            /* Si correspon a una revisi'#243' o ingr'#233's per revisi'#243' (' +
        'la variable "c_prestacio" els engloba) */'
      '            IF (C_PRESTACIO = '#39'2004'#39') THEN'
      '            BEGIN'
      
        '                  /* Mirem si existeix una entrada de tipus '#39'S'#39':' +
        ' */'
      '                  SELECT MIN(CLAU)'
      '                  FROM   ESCALESCAP'
      '                  WHERE  C_ESCALA = OLD.C_ESCALA'
      '                  AND    C_HISTORIA = OLD.C_HISTORIA'
      '                  AND    upper(TIPUS) = '#39'S'#39
      
        '                  AND    DATA BETWEEN :DATA_ALTA AND :DATA_ALTA ' +
        '+ :CADU_R   /* ha d'#39'estar entrada durant els X dies posteriors a' +
        ' la revisi'#243' */'
      '                  INTO  :TROBADA;'
      ''
      
        '                  /* Si no en trobem cap, i l'#39'escala era obligat' +
        #242'ria, l'#39'hem de tornar a posar com a pendent */'
      '                  IF (TROBADA = 0) THEN'
      '                  BEGIN'
      ''
      
        '                        /* Si a l'#39#224'rea de l'#39'usuari que havia ent' +
        'rat l'#39'escala, li corresponen '#237'tems de l'#39'escala,'
      
        '                           posarem l'#39'escala pendent per l'#39#224'rea d' +
        'e l'#39'usuari que l'#39'havia entrat.'
      
        '                           Altrament posarem l'#39'escala pendent pe' +
        'r totes les '#224'rees que li corresponen */'
      ''
      '                        SELECT COUNT(*)'
      '                        FROM   ESCALESITEMS'
      '                        WHERE  C_ESCALA = OLD.C_ESCALA'
      '                        AND    AREA_USUARI = :C_AREA'
      '                        INTO  :ITEMS;'
      ''
      '                        IF (ITEMS > 0) THEN C_AREA1 = :C_AREA;'
      '                                       ELSE C_AREA1 = '#39'***'#39';'
      ''
      
        '                        /* Per cada '#224'rea per la qual l'#39'escala er' +
        'a obligat'#242'ria,'
      
        '                           si '#233's l'#39#224'rea de l'#39'usuari que havia en' +
        'trat l'#39'escala'
      
        '                           o b'#233' a l'#39'usuari que l'#39'havia entrat no' +
        ' li corresponen '#237'tems de l'#39'escala'
      '                           la tornem a posar pendent */'
      '                        FOR SELECT C_AREA'
      '                            FROM   ESCALESOBLIGACIONS'
      '                            WHERE  C_ESCALA = OLD.C_ESCALA'
      '                            AND    OBLIGA_R = '#39'X'#39
      
        '                            AND   (GRUP = :GRUP_UM OR GRUP = '#39'*'#39 +
        ')'
      
        '                            AND   (C_PRESTACIO = :C_PRESTACIO OR' +
        ' C_PRESTACIO = '#39'*'#39')'
      
        '                            AND  ((:EDAT > EDATINFANTIL AND INFA' +
        'NTIL = '#39'N'#39')  OR  (:EDAT <= EDATINFANTIL AND INFANTIL = '#39'S'#39'))'
      
        '                            AND   (C_AREA = :C_AREA1 OR :C_AREA1' +
        ' = '#39'***'#39')'
      '                            INTO :C_AREA2'
      '                        DO BEGIN'
      ''
      
        '                              INSERT INTO ESCALESPENDENTS (    C' +
        '_TRACTAMENT,     C_ESCALA,   C_AREA, TIPUS)'
      
        '                              VALUES                      (OLD.C' +
        '_TRACTAMENT, OLD.C_ESCALA, :C_AREA2,   '#39'S'#39');'
      '                        END;'
      '                  END;'
      '            END;'
      '      END;'
      '   END;'
      'END')
    Dic1 = EscalesCap
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
    Left = 366
    Top = 204
  end
  object EscalesCap_ComprovaFAM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ComprovaFAM'
    ForceNombreDB = False
    Body.Strings = (
      '(PAS INTEGER, MODI INTEGER)'
      'RETURNS ('
      '  CAS             INTEGER,'
      '  CLAU_2          INTEGER,'
      '  C_TRACTAMENT_2  INTEGER,'
      '  C_HISTORIA_2    INTEGER,'
      '  C_ENTRADA_2     INTEGER,'
      '  PARCIAL         INTEGER,'
      '  TOTAL           INTEGER,'
      '  PARCIAL_BO      INTEGER,'
      '  TOTAL_BO        INTEGER)'
      'AS'
      '      DECLARE VARIABLE CLAU_1         INTEGER;'
      '      DECLARE VARIABLE C_ENTRADA_1    INTEGER;'
      '      DECLARE VARIABLE C_HISTORIA_1   INTEGER;'
      '      DECLARE VARIABLE C_TRACTAMENT_1 INTEGER;'
      ''
      '      DECLARE VARIABLE PARCIAL_1      INTEGER;'
      '      DECLARE VARIABLE TOTAL_1        INTEGER;'
      ''
      '      DECLARE VARIABLE PARCIAL_2      INTEGER;'
      '      DECLARE VARIABLE TOTAL_2        INTEGER;'
      '      '
      '      DECLARE VARIABLE DIF_PARCIAL    INTEGER;'
      '      DECLARE VARIABLE DIF_TOTAL      INTEGER;'
      'BEGIN'
      ''
      '      IF (MODI IS NULL) THEN MODI = 0;'
      '      IF (PAS IS NULL)  THEN PAS  = 0;'
      '      '
      '      C_HISTORIA_1 = -1;'
      '      C_ENTRADA_1 = -1;'
      '      CLAU_1 = -1;'
      ''
      
        '      /* Per cada entrada FAM no anul'#183'lada i feta per NEU o REH ' +
        '*/'
      
        '      FOR SELECT C.CLAU, C.C_ENTRADA, C.C_HISTORIA, C.C_TRACTAME' +
        'NT'
      '          FROM   ESCALESCAP C'
      '          JOIN   METGES M ON C.C_USUARI = M.CODI'
      '          JOIN   ESPECIAL S ON M.C_ESPECIAL = S.C_ESPECIAL'
      '          WHERE  C.C_ESCALA = 2'
      '          AND   (S.C_AREA = '#39'REH'#39' OR S.C_AREA = '#39'NEU'#39')'
      
        '          AND    C.ANULAT <> '#39'D'#39' AND C.ANULAT <> '#39'S'#39' AND C.ANULA' +
        'T <> '#39'V'#39
      '          ORDER  BY C.C_HISTORIA, C.C_ENTRADA, C.CLAU'
      
        '          INTO  :CLAU_2, :C_ENTRADA_2, :C_HISTORIA_2, :C_TRACTAM' +
        'ENT_2'
      '      DO BEGIN'
      '    '
      '            PARCIAL_2  = 0;'
      '            PARCIAL_1  = 0;'
      '            PARCIAL    = 0;'
      '            PARCIAL_BO = 0;'
      '            TOTAL_1    = 0;'
      '            TOTAL_2    = 0;'
      '            TOTAL      = 0;'
      '            TOTAL_BO   = 0;'
      ''
      '            /* PAS 1'
      '               Mirem si el parcial est'#224' informat.'
      '               Si MODI: Si no ho est'#224', el calculem i insertem'
      
        '               Altrament: suspend                               ' +
        '*/'
      '            IF ((PAS = 0) OR (PAS = 1)) THEN'
      '            BEGIN'
      ''
      
        '                  SELECT D_ITEM FROM ESCALESLIN WHERE CLAU = :CL' +
        'AU_2 AND C_ITEM = 362 INTO :PARCIAL_2;'
      ''
      
        '                  IF ((PARCIAL_2 IS NULL) OR (PARCIAL_2 = 0)) TH' +
        'EN'
      '                  BEGIN'
      '                        SELECT SUM(D_ITEM)'
      '                        FROM   ESCALESLIN   L'
      
        '                        JOIN   ESCALESITEMS I ON L.C_ITEM = I.C_' +
        'ITEM'
      '                        WHERE  L.CLAU = :CLAU_2'
      '                        AND    I.C_ESCALA = 2 AND I.TIPUS = 1'
      '                        AND    I.C_ITEM < 50'
      '                        INTO  :PARCIAL_BO;'
      '                '
      '                        IF (MODI = 0) THEN'
      '                        BEGIN'
      '                              CAS = 1;'
      '                              SUSPEND;'
      '                        END;'
      
        '                        ELSE  INSERT INTO ESCALESLIN (CLAU, C_IT' +
        'EM, D_ITEM) VALUES (:CLAU_2, 362, :PARCIAL_BO);'
      '                  END;'
      '            END;'
      ''
      '            /* PAS 2'
      
        '               Mirem si el C_Entrada coincideix amb l'#39'anterior i' +
        ' en aquest cas comprovem les sumes'
      '               Si MODI: Si no s'#243'n correctes, les arreglem'
      
        '               Altrament: suspend                               ' +
        '                                     */'
      '            IF ((PAS = 0) OR (PAS = 2)) THEN'
      '            BEGIN'
      ''
      
        '                  IF ((C_HISTORIA_1 = C_HISTORIA_2) AND (C_TRACT' +
        'AMENT_1 = C_TRACTAMENT_2) AND (C_ENTRADA_1 = C_ENTRADA_2)) THEN'
      '                  BEGIN'
      '                        /* Sumem l'#39'anterior */'
      ''
      '                        SELECT SUM(D_ITEM)'
      '                        FROM   ESCALESLIN   L'
      
        '                        JOIN   ESCALESITEMS I ON L.C_ITEM = I.C_' +
        'ITEM'
      '                        WHERE  L.CLAU = :CLAU_1'
      '                        AND    I.C_ESCALA = 2 AND I.TIPUS = 1'
      '                        AND    I.C_ITEM < 50'
      '                        INTO  :PARCIAL_1;'
      ''
      '                        SELECT SUM(D_ITEM)'
      '                        FROM   ESCALESLIN   L'
      
        '                        JOIN   ESCALESITEMS I ON L.C_ITEM = I.C_' +
        'ITEM'
      '                        WHERE  L.CLAU = :CLAU_1'
      '                        AND    I.C_ESCALA = 2 AND I.TIPUS = 1'
      '                        INTO  :TOTAL_1;'
      ''
      '                        /* Sumem l'#39'actual */'
      ''
      '                        SELECT SUM(D_ITEM)'
      '                        FROM   ESCALESLIN   L'
      
        '                        JOIN   ESCALESITEMS I ON L.C_ITEM = I.C_' +
        'ITEM'
      '                        WHERE  L.CLAU = :CLAU_2'
      '                        AND    I.C_ESCALA = 2 AND I.TIPUS = 1'
      '                        AND    I.C_ITEM < 50'
      '                        INTO  :PARCIAL_2;'
      ''
      '                        SELECT SUM(D_ITEM)'
      '                        FROM   ESCALESLIN   L'
      
        '                        JOIN   ESCALESITEMS I ON L.C_ITEM = I.C_' +
        'ITEM'
      '                        WHERE  L.CLAU = :CLAU_2'
      '                        AND    I.C_ESCALA = 2 AND I.TIPUS = 1'
      '                        INTO  :TOTAL_2;'
      ''
      '                        /* Busquem el que hi ha a l'#39'actual */'
      ''
      
        '                        SELECT D_ITEM FROM ESCALESLIN WHERE CLAU' +
        ' = :CLAU_2 AND C_ITEM = 362 INTO :PARCIAL;'
      
        '                        SELECT D_ITEM FROM ESCALESLIN WHERE CLAU' +
        ' = :CLAU_2 AND C_ITEM =  68 INTO :TOTAL;'
      ''
      
        '                        /* Comparem el que hi ha, amb la suma de' +
        ' les dues entrades */'
      ''
      '                        PARCIAL_BO = PARCIAL_1 + PARCIAL_2;'
      '                        TOTAL_BO   = TOTAL_1   + TOTAL_2;'
      ''
      '                        DIF_PARCIAL = PARCIAL_BO - PARCIAL;'
      '                        DIF_TOTAL   = TOTAL_BO   -   TOTAL;'
      ''
      
        '                        IF ((DIF_PARCIAL <> 0) OR (DIF_TOTAL <> ' +
        '0)) THEN'
      '                        BEGIN'
      '                              IF (MODI = 0) THEN'
      '                              BEGIN'
      '                                    CAS = 2;'
      '                                    SUSPEND;'
      '                              END;'
      '                              ELSE BEGIN'
      
        '                                    UPDATE ESCALESLIN SET D_ITEM' +
        ' = :PARCIAL_BO WHERE CLAU = :CLAU_2 AND C_ITEM = 362;'
      
        '                                    UPDATE ESCALESLIN SET D_ITEM' +
        ' = :TOTAL_BO   WHERE CLAU = :CLAU_2 AND C_ITEM =  68;'
      '                              END;'
      '                        END;'
      '                        '
      '                  END;  /* mateixa historia, mateixa entrada */'
      ''
      '                  ELSE BEGIN'
      '                      CLAU_1         = CLAU_2;'
      '                      C_ENTRADA_1    = C_ENTRADA_2;'
      '                      C_HISTORIA_1   = C_HISTORIA_2;'
      '                      C_TRACTAMENT_1 = C_TRACTAMENT_2;'
      '                  END;'
      '                  '
      '            END;  /* pas 2 */'
      ''
      '      END; /* for */'
      'END')
    Dic1 = EscalesCap
    Dic1Name = 'escalescap'
    Abierta = False
    Borrame = False
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
    Top = 140
  end
  object ICTAS_repes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ICTAS_repes'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (PROCES     INTEGER,'
      '         HISTORIA   INTEGER,'
      '         TRACTAMENT INTEGER,'
      '         ESCALA     INTEGER,'
      '         TIPUS      CHAR(1),'
      '         ENTRADES   INTEGER'
      '         )'
      'AS'
      '    DECLARE VARIABLE AUX      INTEGER;'
      '    DECLARE VARIABLE FAM      INTEGER;'
      '    DECLARE VARIABLE AREA     CHAR(3);'
      '    DECLARE VARIABLE REH      INTEGER;'
      '    DECLARE VARIABLE NEU      INTEGER;'
      '/*    DECLARE VARIABLE CONTA    INTEGER;'
      '    DECLARE VARIABLE CONTA_I  INTEGER;'
      '    DECLARE VARIABLE CONTA_A  INTEGER;'
      '    DECLARE VARIABLE TRACTA   INTEGER;*/'
      'BEGIN'
      
        '    /* FER LLISTAT AMB ESCALES AMB 2 I'#39'S, 2 A'#39'S O 2 T'#39'S. LES I'#39'S' +
        ' I LES A'#39'S PER PROC'#201'S. LES T'#39'S PER TRACTAMENT.'
      
        '       COMPTE AMB FIM I FAM QUE HAN DE TENIR 2 ENTRADES D'#39#192'REES ' +
        'DIFERENTS. PER'#210' SI UNA DE LES ENTRADES '#201'S D'#39'UNA SECRE M'#200'DICA,'
      '       LLAVORS '#201'S NO OK I CAL LLISTAR-LA.   */'
      ''
      '    /* PRIMER ELS PROCESSOS: I'#39'S I A'#39'S */'
      '    TRACTAMENT = NULL; HISTORIA=NULL;'
      ''
      
        '/* ------------------------------------ TRIGA MOLT!! -----------' +
        '---------------------------------------------- */'
      '/*    FOR SELECT C_PROCES, C_HISTORIA FROM TRACTAMENTS'
      '    WHERE C_PROCES BETWEEN :PROCESI AND :PROCESF'
      '    ORDER BY C_PROCES'
      '    INTO :PROCES, :HISTORIA'
      '    DO BEGIN'
      '        FOR SELECT C_ESCALA FROM ESCALES WHERE C_ESCALA > 0'
      '        ORDER BY C_ESCALA'
      '        INTO :ESCALA'
      '        DO BEGIN'
      '            /* per cada ESCALA inicialitzem comptadors*/'
      '/*            CONTA_I=0;CONTA_A=0;'
      '            '
      
        '            FOR SELECT C_TRACTAMENT FROM TRACTAMENTS WHERE C_PRO' +
        'CES = :PROCES'
      '            ORDER BY DATA_ALTA'
      '            INTO :TRACTA'
      '            DO BEGIN'
      
        '                /* ACUMULEM I'#39'S I A'#39'S DE TOTS ELS TRACTAMENTS DE' +
        'L PROC'#201'S */'
      '/*                TIPUS='#39'I'#39';'
      ''
      '                SELECT COUNT(*) FROM ESCALESCAP'
      
        '                WHERE C_TRACTAMENT = :TRACTA AND C_ESCALA = :ESC' +
        'ALA'
      '                AND TIPUS ='#39'I'#39' AND ANULAT <> '#39'S'#39
      '                INTO :CONTA;'
      '                 '
      '                CONTA_I=CONTA_I+CONTA;'
      ''
      '                TIPUS='#39'A'#39';'
      ''
      '                SELECT COUNT(*) FROM ESCALESCAP'
      
        '                WHERE C_TRACTAMENT = :TRACTA AND C_ESCALA = :ESC' +
        'ALA'
      '                AND TIPUS ='#39'A'#39' AND ANULAT <> '#39'S'#39
      '                INTO :CONTA;'
      ''
      '                CONTA_A=CONTA_A+CONTA;'
      '            END;'
      '             '
      '            /* LA FAM T'#201' UN TRACTAMENT ESPECIAL */'
      '/*            IF (ESCALA = 2) THEN'
      '            BEGIN'
      
        '                /* SI HI HA M'#201'S DE 2 ENTRADES S'#39'HAN DE LLISTAR *' +
        '/'
      
        '/*                IF (CONTA_I > 2) THEN BEGIN TIPUS='#39'I'#39'; ENTRADE' +
        'S = CONTA_I; SUSPEND; END;'
      
        '                IF (CONTA_A > 2) THEN BEGIN TIPUS='#39'A'#39'; ENTRADES ' +
        '= CONTA_A; SUSPEND; END;'
      ''
      
        '                /* SI HI HA 2 I'#39'S O 2 A'#39'S MIREM SI ALGUNA ENTRAD' +
        'A '#201'S DE LA SECRE M'#200'DICA */'
      '/*                IF (CONTA_I=2) THEN'
      '                BEGIN'
      '                    SECREMED=NULL; ENTRADES=2;'
      ''
      '                    /* PRIMER TIPUS '#39'I'#39' */'
      '/*                    TIPUS='#39'I'#39';'
      '                    FOR SELECT C_USUARI'
      '                    FROM ESCALESCAP'
      
        '                    WHERE C_ESCALA = :ESCALA AND TIPUS = :TIPUS ' +
        'AND ANULAT <> '#39'S'#39
      '                    AND C_TRACTAMENT = :TRACTA'
      '                    INTO :USUARI'
      '                    DO BEGIN'
      '                        SELECT COUNT(*) FROM DRETSMETGES'
      
        '                        WHERE C_USUARI = :USUARI  AND C_DRET = '#39 +
        'M29'#39'                  /* '#201'S SECRE M'#200'DICA*/'
      '/*                        INTO :AUX;'
      ''
      '                        SECREMED = SECREMED + AUX;'
      '                    END;'
      ''
      
        '                    /* SI ALGUNA DE LES ENTRADES LES HA FET LA S' +
        'ECRETARIA M'#200'DICA -> ERROR! ==> LLISTAR-HO*/'
      '/*                    IF (SECREMED IS NOT NULL) THEN SUSPEND;'
      '                END;'
      '                IF (CONTA_A=2) THEN'
      '                BEGIN'
      '                    SECREMED=NULL; ENTRADES=2;'
      '                    '
      '                    /* DESPR'#201'S TIPUS '#39'A'#39' */'
      '/*                    TIPUS='#39'A'#39';'
      '                    FOR SELECT C_USUARI'
      '                    FROM ESCALESCAP'
      
        '                    WHERE C_ESCALA = :ESCALA AND TIPUS = :TIPUS ' +
        'AND ANULAT <> '#39'S'#39
      '                    AND C_TRACTAMENT = :TRACTA'
      '                    INTO :USUARI'
      '                    DO BEGIN'
      '                        SELECT COUNT(*) FROM DRETSMETGES'
      
        '                        WHERE C_USUARI = :USUARI  AND C_DRET = '#39 +
        'M29'#39'                  /* '#201'S SECRE M'#200'DICA*/'
      '/*                        INTO :AUX;'
      '                         SECREMED = SECREMED + AUX;'
      '                    END;'
      ''
      
        '                    /* SI ALGUNA DE LES ENTRADES LES HA FET LA S' +
        'ECRETARIA M'#200'DICA -> ERROR! ==> LLISTAR-HO*/'
      '/*                    IF (SECREMED IS NOT NULL) THEN SUSPEND;'
      '                END;'
      '            END;'
      '            ELSE BEGIN'
      
        '                IF (CONTA_I > 1) THEN BEGIN TIPUS = '#39'I'#39'; ENTRADE' +
        'S = CONTA_I; SUSPEND; END;'
      
        '                IF (CONTA_A > 1) THEN BEGIN TIPUS = '#39'A'#39'; ENTRADE' +
        'S = CONTA_A; SUSPEND; END;'
      '            END;'
      '        END;'
      '    END;   */'
      
        '/* ------------------------------------ TRIGA MOLT!! -----------' +
        '---------------------------------------------- */'
      ''
      '    /* ESCALA FAM: TRACTAMENT ESPECIAL */'
      '    ESCALA = 2;'
      '    '
      '    FOR SELECT T.C_PROCES,C.TIPUS,COUNT(*)'
      '    FROM ESCALESCAP C'
      
        '    JOIN TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRACTAMENT AND T.' +
        'C_PROCES IS NOT NULL'
      
        '    WHERE TIPUS IN('#39'I'#39','#39'A'#39') AND C.C_ESCALA = :ESCALA AND ANULAT ' +
        'NOT IN('#39'S'#39','#39'D'#39')'
      '    GROUP BY T.C_PROCES, C.C_ESCALA, C.TIPUS'
      '    HAVING COUNT(*) >= 2'
      '    INTO :PROCES, :TIPUS, :ENTRADES'
      '    DO BEGIN'
      '        SELECT C_HISTORIA FROM TRACTAMENTS'
      '        WHERE C_PROCES = :PROCES'
      '        ROWS 1'
      '        INTO :HISTORIA;'
      '        '
      
        '        IF (ENTRADES > 2) THEN SUSPEND;   /* M'#201'S DE 2 ENTRADES E' +
        'RROR ==> LLISTAR */'
      '        ELSE BEGIN'
      '            REH=0;NEU=0;'
      ''
      '            FOR SELECT E.C_AREA FROM ESCALESCAP C'
      
        '            JOIN TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T AND T.C_PROCES = :PROCES'
      '            JOIN METGES M ON C.C_USUARI = M.CODI'
      '            JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '            WHERE TIPUS = :TIPUS AND C.C_ESCALA = 2 AND ANULAT N' +
        'OT IN('#39'S'#39','#39'D'#39')'
      '            ORDER BY E.C_AREA'
      '            INTO :AREA'
      '            DO BEGIN'
      '                IF (AREA = '#39'REH'#39') THEN REH = REH +1;'
      '                IF (AREA = '#39'NEU'#39') THEN NEU = NEU +1;'
      '            END;'
      ''
      '            IF ((REH <> 1) OR (NEU <> 1)) THEN SUSPEND;'
      '        END;'
      '    END;'
      ''
      '    FOR SELECT T.C_PROCES,C.C_ESCALA,C.TIPUS,COUNT(*)'
      '    FROM ESCALESCAP C'
      
        '    JOIN TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRACTAMENT AND T.' +
        'C_PROCES IS NOT NULL'
      
        '    WHERE TIPUS IN('#39'I'#39','#39'A'#39') AND C.C_ESCALA <> 2 AND ANULAT NOT I' +
        'N('#39'S'#39','#39'D'#39')'
      '    GROUP BY T.C_PROCES, C.C_ESCALA, C.TIPUS'
      '    HAVING COUNT(*) > 1'
      '    INTO :PROCES, :ESCALA, :TIPUS, :ENTRADES'
      '    DO BEGIN'
      '        SELECT C_HISTORIA FROM TRACTAMENTS'
      '        WHERE C_PROCES = :PROCES'
      '        ROWS 1'
      '        INTO :HISTORIA;'
      ''
      '        SUSPEND;'
      '    END;'
      '     '
      '    /* DESPR'#201'S ELS TRACTAMENTS: T'#39'S */'
      '    PROCES = NULL; TIPUS = '#39'T'#39';'
      '     '
      '    FOR SELECT DISTINCT C.C_HISTORIA, C.C_TRACTAMENT, T.C_PROCES'
      '    FROM ESCALESCAP C'
      '    JOIN TRACTAMENTS T ON C.C_TRACTAMENT = T.C_TRACTAMENT'
      '    WHERE C.ANULAT NOT IN('#39'S'#39','#39'D'#39') AND TIPUS = '#39'T'#39
      '    ORDER BY T.C_PROCES, C.C_HISTORIA, C.C_TRACTAMENT'
      '    INTO :HISTORIA, :TRACTAMENT, :PROCES'
      '    DO BEGIN'
      '        FOR SELECT C_ESCALA, COUNT(*)'
      '        FROM ESCALESCAP'
      
        '        WHERE C_HISTORIA = :HISTORIA AND C_TRACTAMENT = :TRACTAM' +
        'ENT'
      '        AND ANULAT NOT IN('#39'S'#39','#39'D'#39') AND TIPUS = '#39'T'#39
      '        GROUP BY C_ESCALA'
      '        HAVING COUNT(*) > 1'
      '        INTO :ESCALA, :ENTRADES'
      '        DO BEGIN'
      '            /* L'#39'ESCALA FAM T'#201' UN TRACTAMENT DIFERENT */'
      '            IF (ESCALA=2) THEN'
      '            BEGIN'
      '                REH=0; NEU=0;'
      '                '
      '                FOR SELECT E.C_AREA'
      '                FROM ESCALESCAP C'
      '                JOIN METGES M ON C.C_USUARI = M.CODI'
      '                JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      
        '                WHERE C_ESCALA = :ESCALA AND TIPUS = :TIPUS AND ' +
        'ANULAT NOT IN('#39'S'#39','#39'D'#39')'
      
        '                AND C_HISTORIA = :HISTORIA AND C_TRACTAMENT = :T' +
        'RACTAMENT'
      '                INTO :AREA'
      '                DO BEGIN'
      '                     IF (AREA = '#39'REH'#39') THEN REH = REH +1;'
      '                     IF (AREA = '#39'NEU'#39') THEN NEU = NEU +1;'
      '                END;'
      ''
      '                IF ((REH <> 1) OR (NEU <> 1)) THEN SUSPEND;'
      '            END;'
      '            ELSE IF (ESCALA IS NOT NULL) THEN SUSPEND;'
      '        END;'
      '    END;'
      'END')
    Dic1 = EscalesCap
    Dic1Name = 'ESCALESCAP'
    Abierta = False
    Borrame = False
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
    Top = 260
  end
  object IBP: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCIBP'
    NombreTabla = 'ESCIBP'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 528
    Top = 436
  end
  object HAD: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCHAD'
    NombreTabla = 'ESCHAD'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 576
    Top = 436
  end
  object SCLCSQ: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCSCLCSQ'
    NombreTabla = 'ESCSCLCSQ'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 632
    Top = 436
  end
  object LOTR: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCLOTR'
    NombreTabla = 'ESCLOTR'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 688
    Top = 436
  end
  object NPI: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (deliris)'
        NombreDB = 'PRESENT1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (alucinacions)'
        NombreDB = 'PRESENT2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (agitaci'#243'/agressivitat)'
        NombreDB = 'PRESENT3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (depressi'#243'/disf'#242'ria)'
        NombreDB = 'PRESENT4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (ansietat)'
        NombreDB = 'PRESENT5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (exaltaci'#243'/euf'#242'ria)'
        NombreDB = 'PRESENT6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (apatia)'
        NombreDB = 'PRESENT7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (desinhibici'#243')'
        NombreDB = 'PRESENT8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (irritabilitat/labilitat)'
        NombreDB = 'PRESENT9'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (conducta motora an'#242'mala)'
        NombreDB = 'PRESENT10'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (son)'
        NombreDB = 'PRESENT11'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Present '#250'ltim mes (alimentaci'#243')'
        NombreDB = 'PRESENT12'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (deliris)'
        NombreDB = 'FREQ1'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (alucinacions)'
        NombreDB = 'FREQ2'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (agitaci'#243'/agressivitat)'
        NombreDB = 'FREQ3'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (depressi'#243'/disf'#242'ria)'
        NombreDB = 'FREQ4'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (ansietat)'
        NombreDB = 'FREQ5'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (exaltaci'#243'/euf'#242'ria)'
        NombreDB = 'FREQ6'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (apatia)'
        NombreDB = 'FREQ7'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (desinhibici'#243')'
        NombreDB = 'FREQ8'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (irritabilitat/labilitat)'
        NombreDB = 'FREQ9'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (conducta motora an'#242'mala)'
        NombreDB = 'FREQ10'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (son)'
        NombreDB = 'FREQ11'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Freq'#252#232'ncia (alimentaci'#243')'
        NombreDB = 'FREQ12'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '01234'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (deliris)'
        NombreDB = 'SEVER1'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (alucinacions)'
        NombreDB = 'SEVER2'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (agitaci'#243'/agressivitat)'
        NombreDB = 'SEVER3'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (depressi'#243'/disf'#242'ria)'
        NombreDB = 'SEVER4'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (ansietat)'
        NombreDB = 'SEVER5'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (exaltaci'#243'/euf'#242'ria)'
        NombreDB = 'SEVER6'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (apatia)'
        NombreDB = 'SEVER7'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (desinhibici'#243')'
        NombreDB = 'SEVER8'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (irritabilitat/labitat)'
        NombreDB = 'SEVER9'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (conducta motora an'#242'mala)'
        NombreDB = 'SEVER10'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (son)'
        NombreDB = 'SEVER11'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Severitat (alimentaci'#243')'
        NombreDB = 'SEVER12'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '123'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (deliris)'
        NombreDB = 'ESTRES1'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (alucinacions)'
        NombreDB = 'ESTRES2'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (agitaci'#243'/agressivitat)'
        NombreDB = 'ESTRES3'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (depressi'#243'/disf'#242'ria)'
        NombreDB = 'ESTRES4'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (ansietat)'
        NombreDB = 'ESTRES5'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (exaltaci'#243'/euf'#242'ria)'
        NombreDB = 'ESTRES6'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (apatia)'
        NombreDB = 'ESTRES7'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (desinhibici'#243')'
        NombreDB = 'ESTRES8'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (irritabilitat/labilitat)'
        NombreDB = 'ESTRES9'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (conducta motora an'#242'mala)'
        NombreDB = 'ESTRES10'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (son)'
        NombreDB = 'ESTRES11'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estr'#233's (alimentaci'#243')'
        NombreDB = 'ESTRES12'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '012345'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Total'
        NombreDB = 'TOTAL'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Suma de FREQxSEVER'#39's'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'CLAU')
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
          'CLAU')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCNPI'
    NombreTabla = 'ESCNPI'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 544
    Top = 319
  end
  object Kidscreen52: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCKIDSCREEN52'
    NombreTabla = 'ESCKIDSCREEN52'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 744
    Top = 436
  end
  object VKidscreen52: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'DOMINI'
        NombreDB = 'DOMINI'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PUNTUACIO'
        NombreDB = 'PUNTUACIO'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'CONVERSIO'
        NombreDB = 'CONVERSIO'
        Longitud = 20
        zType = tcIB_Double
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
          'DOMINI'
          'PUNTUACIO')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Valoracions Kidscreen52'
    NombreTabla = 'ESCVKIDSCREEN52'
    Organiza = tbBase
    CamposVer.Strings = (
      'DOMINI'
      'PUNTUACIO'
      'CONVERSIO')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 817
    Top = 436
  end
  object EscalesCapUPMAI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'UPMAI'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE IDX         INTEGER;'
      '  DECLARE VARIABLE TAULA       VARCHAR(40);'
      '  DECLARE VARIABLE DADES       VARCHAR(20);'
      '  DECLARE VARIABLE PREVIRNEC   INTEGER;'
      '  DECLARE VARIABLE ACCIO       INTEGER;'
      'BEGIN'
      ''
      '      IF (USER<>"REPLICATOR") THEN'
      '      BEGIN'
      
        '          /* les entrades de les escales 47 i 52 nom'#233's s'#39'han d'#39'e' +
        'nregistra si TIPUS IN('#39'I'#39','#39'Y'#39','#39'i'#39','#39'A'#39','#39'E'#39','#39'a'#39')*/'
      
        '          /* les entrades de residents o no procedeix no les hem' +
        ' d'#39'enregistrar */'
      
        '          IF (( (((NEW.C_ESCALA=47) OR (NEW.C_ESCALA=52)) /*AND ' +
        '(NEW.TIPUS IN('#39'I'#39','#39'Y'#39','#39'i'#39','#39'A'#39','#39'E'#39','#39'a'#39'))*/) OR'
      
        '                (NEW.C_ESCALA=30) OR (NEW.C_ESCALA=76) OR (NEW.C' +
        '_ESCALA=77) OR (NEW.C_ESCALA=78) OR (NEW.C_ESCALA=79) OR'
      '                (NEW.C_ESCALA=92))'
      '          AND (NEW.ANULAT = '#39'N'#39'))'
      '          THEN'
      '          BEGIN'
      
        '              SELECT PREVIRNEC FROM FILIACIO WHERE NUM_HIST = NE' +
        'W.C_HISTORIA INTO :PREVIRNEC;'
      ''
      
        '              /* Sempre que facin alguna modificaci'#243' insertem re' +
        'gistre */'
      '              IF (PREVIRNEC IS NOT NULL) THEN'
      '              BEGIN'
      
        '                  IF      (NEW.C_ESCALA = 47) THEN TAULA = '#39'test' +
        's_results'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 52) THEN TAULA = '#39'test' +
        's_results'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 30) THEN TAULA = '#39'demo' +
        'graphic_data'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 76) THEN TAULA = '#39'ques' +
        'tionnaire_pcrs'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 77) THEN TAULA = '#39'ques' +
        'tionnaire_rsab'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 78) THEN TAULA = '#39'ques' +
        'tionnaire_pmrq'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 79) THEN TAULA = '#39'ques' +
        'tionnaire_brief_a'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 92) THEN TAULA = '#39'demo' +
        'graphic_data'#39';'
      '                  '
      
        '                  /* a demographic_data sempre s'#39'ha d'#39'actualitza' +
        'r el valor i no afegir registres */'
      
        '                  IF ((NEW.C_ESCALA = 30) OR (NEW.C_ESCALA=92)) ' +
        'THEN ACCIO=2;'
      
        '                                                                ' +
        'ELSE ACCIO=1;'
      '                  '
      '                  DADES=NEW.CLAU;'
      '                  '
      '                  SELECT MAX(ID)+1 FROM UPMTEMP INTO :IDX;'
      '                  IF (IDX IS NULL) THEN IDX=1;'
      
        '                  INSERT INTO UPMTEMP (ID,C_HISTORIA,PREVIRNEC,D' +
        'ATA,TAULA,ACCIO,DADES)'
      
        '                  VALUES (:IDX,NEW.C_HISTORIA,:PREVIRNEC,"NOW",:' +
        'TAULA,:ACCIO,:DADES);'
      '              END;'
      '          END;'
      '      END;'
      ''
      'END')
    Dic1 = EscalesCap
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
    Accion2 = taINSERT
    Left = 628
    Top = 204
  end
  object EscalesCapUPMAU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'UPMAU'
    ForceNombreDB = False
    Body.Strings = (
      '  DECLARE VARIABLE IDX         INTEGER;'
      '  DECLARE VARIABLE TAULA       VARCHAR(40);'
      '  DECLARE VARIABLE PREVIRNEC   INTEGER;'
      '  DECLARE VARIABLE DADES       VARCHAR(20);'
      '  DECLARE VARIABLE ACTUA       SMALLINT;'
      '  DECLARE VARIABLE ID          INTEGER;'
      '  DECLARE VARIABLE ACCIO       INTEGER;'
      'BEGIN'
      ''
      '      IF (USER<>"REPLICATOR") THEN'
      '      BEGIN'
      
        '          /* les entrades de les escales 47 i 52 nom'#233's s'#39'han d'#39'e' +
        'nregistra si TIPUS IN('#39'I'#39','#39'Y'#39','#39'i'#39','#39'A'#39','#39'E'#39','#39'a'#39')*/'
      
        '          IF ( (((NEW.C_ESCALA=47) OR (NEW.C_ESCALA=52)) /*AND (' +
        'NEW.TIPUS IN('#39'I'#39','#39'Y'#39','#39'i'#39','#39'A'#39','#39'E'#39','#39'a'#39'))*/)'
      
        '          OR   (NEW.C_ESCALA=30) OR (NEW.C_ESCALA=76) OR (NEW.C_' +
        'ESCALA=77) OR (NEW.C_ESCALA=78) OR (NEW.C_ESCALA=79) OR'
      '               (NEW.C_ESCALA=92)'
      '              ) THEN'
      '          BEGIN'
      
        '              SELECT PREVIRNEC FROM FILIACIO WHERE NUM_HIST = NE' +
        'W.C_HISTORIA INTO :PREVIRNEC;'
      ''
      
        '              /* Sempre que facin alguna modificaci'#243' insertem re' +
        'gistre */'
      '              IF (PREVIRNEC IS NOT NULL) THEN'
      '              BEGIN'
      '                  DADES=NEW.CLAU;'
      '                  '
      
        '                  /* Si estan validant l'#39'escala llavors ho enreg' +
        'istrem com a '#39'insert'#39'*/'
      '                  IF (NEW.ANULAT='#39'N'#39') THEN'
      '                  BEGIN'
      '                      ACTUA=1;'
      
        '                      /* a demographic_data sempre s'#39'ha d'#39'actual' +
        'itzar el valor i no afegir registres */'
      
        '                      IF ((NEW.C_ESCALA = 30) OR (NEW.C_ESCALA =' +
        ' 92)) THEN ACCIO=2;'
      
        '                                                                ' +
        '      ELSE ACCIO=1;'
      '                  END;'
      
        '                  /* Si estan anul'#183'lant l'#39'escala llavors mirem s' +
        'i encara no s'#39'ha processat l'#39'insert i l'#39'esborrem, altrament l'#39'en' +
        'registrem */'
      '                  ELSE IF (NEW.ANULAT='#39'S'#39') THEN'
      '                  BEGIN'
      '                      ACCIO=2;'
      
        '                      IF ((NEW.C_ESCALA = 30) OR (NEW.C_ESCALA =' +
        ' 92)) THEN'
      '                      BEGIN'
      
        '                          SELECT ID FROM UPMTEMP WHERE DADES=:DA' +
        'DES AND ACCIO=2 INTO :ID;'
      '                      END;'
      '                      ELSE BEGIN'
      
        '                          SELECT ID FROM UPMTEMP WHERE DADES=:DA' +
        'DES AND ACCIO=1 INTO :ID;'
      '                      END;'
      '                      IF (ID IS NULL) THEN ID=0;'
      ''
      '                      IF (ID>0) THEN'
      '                      BEGIN'
      '                          DELETE FROM UPMTEMP WHERE ID=:ID;'
      '                          ACTUA=0;'
      '                      END;'
      '                      ELSE ACTUA=1;'
      '                  END;'
      
        '                  ELSE ACTUA=0; /* No crec que es doni per'#242' per ' +
        'si de cas, no ho enregistrem */'
      '                  '
      
        '                  IF      (NEW.C_ESCALA = 47) THEN TAULA = '#39'test' +
        's_results'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 52) THEN TAULA = '#39'test' +
        's_results'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 30) THEN TAULA = '#39'demo' +
        'graphic_data'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 76) THEN TAULA = '#39'ques' +
        'tionnaire_pcrs'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 77) THEN TAULA = '#39'ques' +
        'tionnaire_rsab'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 78) THEN TAULA = '#39'ques' +
        'tionnaire_pmrq'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 79) THEN TAULA = '#39'ques' +
        'tionnaire_brief_a'#39';'
      
        '                  ELSE IF (NEW.C_ESCALA = 92) THEN TAULA = '#39'demo' +
        'graphic_data'#39';'
      ''
      '                  IF (ACTUA=1) THEN'
      '                  BEGIN'
      '                      SELECT MAX(ID)+1 FROM UPMTEMP INTO :IDX;'
      '                      IF (IDX IS NULL) THEN IDX=1;'
      
        '                      INSERT INTO UPMTEMP (ID,C_HISTORIA,PREVIRN' +
        'EC,DATA,TAULA,ACCIO,DADES)'
      
        '                      VALUES (:IDX,NEW.C_HISTORIA,:PREVIRNEC,"NO' +
        'W",:TAULA,:ACCIO,:DADES);'
      '                  END;'
      '              END;'
      '          END;'
      '      END;'
      ''
      'END')
    Dic1 = EscalesCap
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
    Left = 732
    Top = 204
  end
  object CalculDominis: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CalculDominis'
    ForceNombreDB = False
    Body.Strings = (
      '(CLAUINI INTEGER,OPCIO INTEGER)'
      'RETURNS (CLAU       INTEGER,'
      '         ESCALA     INTEGER,'
      '         DOM1       CHAR(15),'
      '         K1         NUMERIC(15,3),'
      '         DOM2       CHAR(15),'
      '         K2         NUMERIC(15,3),'
      '         DOM3       CHAR(15),'
      '         K3         NUMERIC(15,3),'
      '         DOM4       CHAR(15),'
      '         K4         NUMERIC(15,3),'
      '         DOM5       CHAR(15),'
      '         K5         NUMERIC(15,3),'
      '         DOM6       CHAR(15),'
      '         K6         NUMERIC(15,3),'
      '         DOM7       CHAR(15),'
      '         K7         NUMERIC(15,3),'
      '         DOM8       CHAR(15),'
      '         K8         NUMERIC(15,3),'
      '         DOM9       CHAR(15),'
      '         K9         NUMERIC(15,3),'
      '         DOM10      CHAR(15),'
      '         K10        NUMERIC(15,3)'
      '         )'
      'AS'
      '  DECLARE VARIABLE C_ITEM INTEGER;'
      '  DECLARE VARIABLE D_ITEM CHAR(15);'
      '  DECLARE VARIABLE R1     INTEGER;'
      '  DECLARE VARIABLE R2     INTEGER;'
      '  DECLARE VARIABLE R3     INTEGER;'
      '  DECLARE VARIABLE R4     INTEGER;'
      '  DECLARE VARIABLE R5     INTEGER;'
      '  DECLARE VARIABLE R6     INTEGER;'
      '  DECLARE VARIABLE R7     INTEGER;'
      '  DECLARE VARIABLE R8     INTEGER;'
      '  DECLARE VARIABLE R9     INTEGER;'
      '  DECLARE VARIABLE R10    INTEGER;'
      '  DECLARE VARIABLE PREGUNTA INTEGER;'
      '  DECLARE VARIABLE RESPOSTA INTEGER;'
      '  DECLARE VARIABLE AUX    DOUBLE PRECISION;'
      'BEGIN'
      '      '
      
        '    /* A partir de la CLAU entrada, recalcula TOTS els dominis *' +
        '/'
      '    /* OPCIO: 1-select; 2-update */'
      '    FOR SELECT CLAU, C_ESCALA FROM ESCALESCAP'
      '    WHERE CLAU >= :CLAUINI AND C_ESCALA IN(96,97)'
      '    ORDER BY CLAU'
      '    INTO :CLAU, :ESCALA'
      '    DO BEGIN'
      '        r1=0;r2=0;r3=0;r4=0;r5=0;r6=0;r7=0;r8=0;r9=0;r10=0;'
      '        k1=0;k2=0;k3=0;k4=0;k5=0;k6=0;k7=0;k8=0;k9=0;k10=0;'
      '        '
      '        PREGUNTA=0; RESPOSTA=0;'
      '        FOR SELECT PREGUNTA,RESPOSTA FROM ESCKIDSCREEN52'
      '        WHERE CLAU = :CLAU'
      '        ORDER BY PREGUNTA'
      '        INTO :PREGUNTA,:RESPOSTA'
      '        DO BEGIN'
      '            IF (PREGUNTA=1)                              THEN'
      '            BEGIN'
      '                IF      (RESPOSTA=1) THEN R1=R1+3;'
      '                ELSE IF (RESPOSTA=2) THEN R1=R1+2;'
      '                ELSE IF (RESPOSTA=3) THEN R1=R1+2;'
      '                ELSE IF (RESPOSTA=4) THEN R1=R1+1;'
      '                ELSE IF (RESPOSTA=5) THEN R1=R1+1;'
      '            END;'
      
        '            ELSE IF (PREGUNTA IN (2,3,4,5))              THEN R1' +
        '=R1+RESPOSTA;'
      
        '            ELSE IF (PREGUNTA IN (6,7,8,9,10,11))        THEN R2' +
        '=R2+RESPOSTA;'
      '            ELSE IF (PREGUNTA IN (12,13,14,15,16,17,18)) THEN'
      '            BEGIN'
      '                IF      (RESPOSTA=1) THEN R3=R3+5;'
      '                ELSE IF (RESPOSTA=2) THEN R3=R3+4;'
      '                ELSE IF (RESPOSTA=3) THEN R3=R3+3;'
      '                ELSE IF (RESPOSTA=4) THEN R3=R3+2;'
      '                ELSE IF (RESPOSTA=5) THEN R3=R3+1;'
      '            END;'
      
        '            ELSE IF (PREGUNTA IN (19,20))                THEN R4' +
        '=R4+RESPOSTA;'
      '            ELSE IF (PREGUNTA IN (21,22,23))             THEN'
      '            BEGIN'
      '                IF      (RESPOSTA=1) THEN R4=R4+5;'
      '                ELSE IF (RESPOSTA=2) THEN R4=R4+4;'
      '                ELSE IF (RESPOSTA=3) THEN R4=R4+3;'
      '                ELSE IF (RESPOSTA=4) THEN R4=R4+2;'
      '                ELSE IF (RESPOSTA=5) THEN R4=R4+1;'
      '            END;'
      
        '            ELSE IF (PREGUNTA IN (24,25,26,27,28))       THEN R5' +
        '=R5+RESPOSTA;'
      
        '            ELSE IF (PREGUNTA IN (29,30,31,32,33,34))    THEN R6' +
        '=R6+RESPOSTA;'
      
        '            ELSE IF (PREGUNTA IN (35,36,37))             THEN R7' +
        '=R7+RESPOSTA;'
      
        '            ELSE IF (PREGUNTA IN (38,39,40,41,42,43))    THEN R8' +
        '=R8+RESPOSTA;'
      
        '            ELSE IF (PREGUNTA IN (44,45,46,47,48,49))    THEN R9' +
        '=R9+RESPOSTA;'
      '            ELSE IF (PREGUNTA IN (50,51,52))             THEN'
      '            BEGIN'
      '                IF      (RESPOSTA=1) THEN R10=R10+5;'
      '                ELSE IF (RESPOSTA=2) THEN R10=R10+4;'
      '                ELSE IF (RESPOSTA=3) THEN R10=R10+3;'
      '                ELSE IF (RESPOSTA=4) THEN R10=R10+2;'
      '                ELSE IF (RESPOSTA=5) THEN R10=R10+1;'
      '            END;'
      '        END;'
      '        '
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=1 AND' +
        ' PUNTUACIO=:R1 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K1=F_DIVISA((((AUX  - 1.2203)  / 1.45408) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=2 AND' +
        ' PUNTUACIO=:R2 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K2=F_DIVISA((((aux  - 2.2848)  / 1.89819) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=3 AND' +
        ' PUNTUACIO=:R3 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K3=F_DIVISA((((aux  - 1.7678)  / 1.41742) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=4 AND' +
        ' PUNTUACIO=:R4 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K4=F_DIVISA((((aux  - 1.1504)  / 1.21962) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=5 AND' +
        ' PUNTUACIO=:R5 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K5=F_DIVISA((((aux  - 1.4656)  / 1.47689) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=6 AND' +
        ' PUNTUACIO=:R6 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K6=F_DIVISA((((aux  - 2.1526)  / 1.69373) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=7 AND' +
        ' PUNTUACIO=:R7 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K7=F_DIVISA((((aux  - 1.6970)  / 2.20898) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=8 AND' +
        ' PUNTUACIO=:R8 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K8=F_DIVISA((((aux  - 1.4366)  / 1.40170) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=9 AND' +
        ' PUNTUACIO=:R9 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        K9=F_DIVISA((((aux  - 1.0682)  / 1.54456) * 10 + 50),3);'
      ''
      
        '        SELECT CONVERSIO FROM ESCVKIDSCREEN52 WHERE DOMINI=10 AN' +
        'D PUNTUACIO=:R10 INTO :AUX;'
      '        IF (AUX IS NULL) THEN AUX=0;'
      
        '        K10=F_DIVISA((((aux  - 2.3615)  / 1.32423) * 10 + 50),3)' +
        ';'
      ''
      '        /* Validem els resultats */'
      '        FOR SELECT C_ITEM,D_ITEM FROM ESCALESLIN'
      '        WHERE CLAU = :CLAU AND C_ITEM <> 935'
      '        ORDER BY C_ITEM'
      '        INTO :C_ITEM, :D_ITEM'
      '        DO BEGIN'
      
        '            IF      ((C_ITEM=925) OR (C_ITEM=936)) THEN DOM1=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=926) OR (C_ITEM=937)) THEN DOM2=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=927) OR (C_ITEM=938)) THEN DOM3=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=928) OR (C_ITEM=939)) THEN DOM4=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=929) OR (C_ITEM=940)) THEN DOM5=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=930) OR (C_ITEM=941)) THEN DOM6=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=931) OR (C_ITEM=942)) THEN DOM7=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=932) OR (C_ITEM=943)) THEN DOM8=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=933) OR (C_ITEM=944)) THEN DOM9=D_I' +
        'TEM;'
      
        '            ELSE IF ((C_ITEM=934) OR (C_ITEM=945)) THEN DOM10=D_' +
        'ITEM;'
      '        END;'
      '        '
      '        IF      (OPCIO=1) THEN SUSPEND;'
      '        ELSE IF (OPCIO=2) THEN'
      '        BEGIN'
      '            IF (ESCALA=96) THEN'
      '            BEGIN'
      
        '                IF (DOM1<>K1)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K1,3)  WHERE CLAU=:CLAU AND C_ITEM=925;'
      
        '                IF (DOM2<>K2)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K2,3)  WHERE CLAU=:CLAU AND C_ITEM=926;'
      
        '                IF (DOM3<>K3)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K3,3)  WHERE CLAU=:CLAU AND C_ITEM=927;'
      
        '                IF (DOM4<>K4)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K4,3)  WHERE CLAU=:CLAU AND C_ITEM=928;'
      
        '                IF (DOM5<>K5)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K5,3)  WHERE CLAU=:CLAU AND C_ITEM=929;'
      
        '                IF (DOM6<>K6)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K6,3)  WHERE CLAU=:CLAU AND C_ITEM=930;'
      
        '                IF (DOM7<>K7)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K7,3)  WHERE CLAU=:CLAU AND C_ITEM=931;'
      
        '                IF (DOM8<>K8)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K8,3)  WHERE CLAU=:CLAU AND C_ITEM=932;'
      
        '                IF (DOM9<>K9)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K9,3)  WHERE CLAU=:CLAU AND C_ITEM=933;'
      
        '                IF (DOM10<>K10) THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K10,3) WHERE CLAU=:CLAU AND C_ITEM=934;'
      '            END;'
      '            IF (ESCALA=97) THEN'
      '            BEGIN'
      
        '                IF (DOM1<>K1)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K1,3)  WHERE CLAU=:CLAU AND C_ITEM=936;'
      
        '                IF (DOM2<>K2)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K2,3)  WHERE CLAU=:CLAU AND C_ITEM=937;'
      
        '                IF (DOM3<>K3)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K3,3)  WHERE CLAU=:CLAU AND C_ITEM=938;'
      
        '                IF (DOM4<>K4)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K4,3)  WHERE CLAU=:CLAU AND C_ITEM=939;'
      
        '                IF (DOM5<>K5)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K5,3)  WHERE CLAU=:CLAU AND C_ITEM=940;'
      
        '                IF (DOM6<>K6)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K6,3)  WHERE CLAU=:CLAU AND C_ITEM=941;'
      
        '                IF (DOM7<>K7)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K7,3)  WHERE CLAU=:CLAU AND C_ITEM=942;'
      
        '                IF (DOM8<>K8)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K8,3)  WHERE CLAU=:CLAU AND C_ITEM=943;'
      
        '                IF (DOM9<>K9)   THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K9,3)  WHERE CLAU=:CLAU AND C_ITEM=944;'
      
        '                IF (DOM10<>K10) THEN UPDATE ESCALESLIN SET D_ITE' +
        'M=F_DIVISA(:K10,3) WHERE CLAU=:CLAU AND C_ITEM=945;'
      '            END;'
      '        END;'
      '    END;'
      'END')
    Dic1 = Kidscreen52
    Dic1Name = 'kidscreen52'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 896
    Top = 496
  end
  object EscalesCap_ComprovaFIM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ComprovaFIM'
    ForceNombreDB = False
    Body.Strings = (
      '(MODI INTEGER)'
      'RETURNS ('
      '  C_TRACTAMENT INTEGER,'
      '  C_HISTORIA   INTEGER,'
      '  C_ENTRADA    INTEGER,'
      '  MOTOR        INTEGER,'
      '  MOTOR_BO     INTEGER,'
      '  MOTOR_AVG    VARCHAR(4),'
      '  COGNITIU     INTEGER,'
      '  COGNITIU_AVG VARCHAR(4),'
      '  TOTAL        INTEGER,'
      '  TOTAL_BO     INTEGER,'
      '  TOTAL_AVG    VARCHAR(4),'
      '  ERROR        VARCHAR(100)'
      ')'
      'AS'
      '  DECLARE VARIABLE CLAU INTEGER;'
      '  DECLARE VARIABLE FMOT FLOAT;'
      '  DECLARE VARIABLE SMOT VARCHAR(5);'
      '  DECLARE VARIABLE FCOG FLOAT;'
      '  DECLARE VARIABLE SCOG VARCHAR(5);'
      '  DECLARE VARIABLE FTOT FLOAT;'
      '  DECLARE VARIABLE STOT VARCHAR(5);'
      '  DECLARE VARIABLE REGISTRES INTEGER;'
      '  DECLARE VARIABLE INSERTS INTEGER;'
      'BEGIN'
      ''
      '      IF (MODI IS NULL) THEN MODI = 0;'
      ''
      '      REGISTRES = 0;'
      '      INSERTS = 0;'
      '      '
      '      C_HISTORIA = -1;'
      '      C_ENTRADA = -1;'
      ''
      '      /* Per cada entrada FIM no anul'#183'lada  */'
      
        '      /* Pot contenir diferents cap'#231'aleres, amb mateixa C_ENTRAD' +
        'A */'
      '      FOR SELECT DISTINCT C_HISTORIA, C_TRACTAMENT, C_ENTRADA'
      '          FROM   ESCALESCAP'
      '          WHERE  C_ESCALA = 1'
      '          AND    ANULAT = '#39'N'#39
      '          ORDER  BY C_HISTORIA, C_TRACTAMENT, C_ENTRADA'
      '          INTO  :C_HISTORIA, :C_TRACTAMENT, :C_ENTRADA'
      '      DO BEGIN'
      ''
      '            MOTOR    = 0;'
      '            MOTOR_BO = 0;'
      '            COGNITIU = 0;'
      '            TOTAL    = 0;'
      '            TOTAL_BO = 0;'
      '            ERROR = '#39#39';'
      ''
      '            /* Busquem els totals actuals */'
      '            '
      '            SELECT L.D_ITEM'
      '            FROM   ESCALESLIN L'
      '            JOIN   ESCALESCAP C ON L.CLAU = C.CLAU'
      '            WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    C.C_ESCALA     = 1'
      '            AND    C.C_ENTRADA    = :C_ENTRADA'
      '            AND    C.ANULAT       = '#39'N'#39
      '            AND    L.C_ITEM = 361'
      '            INTO  :MOTOR;'
      ''
      '            SELECT L.D_ITEM'
      '            FROM   ESCALESLIN L'
      '            JOIN   ESCALESCAP C ON L.CLAU = C.CLAU'
      '            WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    C.C_ESCALA     = 1'
      '            AND    C.C_ENTRADA    = :C_ENTRADA'
      '            AND    C.ANULAT       = '#39'N'#39
      '            AND    L.C_ITEM = 28'
      '            ORDER  BY C.DATA DESC'
      
        '            ROWS   1              /* si hi ha 2 entrades que com' +
        'ponen l'#39'escala, el total correcte '#233's l'#39#250'ltim introdu'#239't */'
      '            INTO  :TOTAL;'
      ''
      ''
      
        '            /* Recalculem els totals       Si MODI <> 0: els mod' +
        'ifiquem */'
      ''
      '            SELECT SUM(D_ITEM)'
      '            FROM   ESCALESLIN   L'
      '            JOIN   ESCALESCAP   C ON L.CLAU = C.CLAU'
      '            JOIN   ESCALESITEMS I ON L.C_ITEM = I.C_ITEM'
      '            WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    C.C_ESCALA     = 1'
      '            AND    C.C_ENTRADA    = :C_ENTRADA'
      '            AND    C.ANULAT       = '#39'N'#39
      '            AND    I.TIPUS   = 1'
      '            AND    I.C_ITEM <= 18'
      '            INTO  :MOTOR_BO;'
      '            '
      '            FMOT = F_DIVISA(MOTOR_BO/13, 2);'
      '            FMOT = F_TRUNCAR(FMOT*100)/100;'
      '            SMOT = FMOT;'
      '            MOTOR_AVG = F_REPLACETEXT('#39'.'#39', '#39','#39', F_LRTRIM(SMOT));'
      '            '
      '            SELECT SUM(D_ITEM)'
      '            FROM   ESCALESLIN   L'
      '            JOIN   ESCALESCAP   C ON L.CLAU = C.CLAU'
      '            JOIN   ESCALESITEMS I ON L.C_ITEM = I.C_ITEM'
      '            WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    C.C_ESCALA     = 1'
      '            AND    C.C_ENTRADA    = :C_ENTRADA'
      '            AND    C.ANULAT       = '#39'N'#39
      '            AND    I.TIPUS   = 1'
      '            AND    I.C_ITEM >= 20'
      '            INTO  :COGNITIU;'
      ''
      '            FCOG = F_DIVISA(COGNITIU/5, 2);'
      '            FCOG = F_TRUNCAR(FCOG*100)/100;'
      '            SCOG = FCOG;'
      
        '            COGNITIU_AVG = F_REPLACETEXT('#39'.'#39', '#39','#39', F_LRTRIM(SCOG' +
        '));'
      ''
      '            SELECT SUM(D_ITEM)'
      '            FROM   ESCALESLIN   L'
      '            JOIN   ESCALESCAP   C ON L.CLAU = C.CLAU'
      '            JOIN   ESCALESITEMS I ON L.C_ITEM = I.C_ITEM'
      '            WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    C.C_ESCALA     = 1'
      '            AND    C.C_ENTRADA    = :C_ENTRADA'
      '            AND    C.ANULAT       = '#39'N'#39
      '            AND    I.TIPUS   = 1'
      '            INTO  :TOTAL_BO;'
      ''
      '            FTOT = F_DIVISA(TOTAL_BO/18, 2);'
      '            FTOT = F_TRUNCAR(FTOT*100)/100;'
      '            STOT = FTOT;'
      '            TOTAL_AVG = F_REPLACETEXT('#39'.'#39', '#39','#39', F_LRTRIM(STOT));'
      ''
      ''
      '            /* TOTAL MOTOR */'
      '            IF (FMOT <> 0) THEN'
      '            BEGIN'
      '                  CLAU = 0;'
      ''
      '                  SELECT CLAU'
      '                  FROM   ESCALESCAP C'
      '                  JOIN  ESCALESLIN L ON C.CLAU = L.CLAU'
      '                  WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    C.C_ESCALA     = 1'
      '                  AND    C.C_ENTRADA    = :C_ENTRADA'
      '                  AND    C.ANULAT       = '#39'N'#39
      
        '                  AND    L.C_ITEM = 2            /* busco la cla' +
        'u de la cap'#231'alera que tingui '#237'tems motors */'
      '                  INTO  :CLAU;'
      '                     '
      
        '                  IF (CLAU = 0)      THEN ERROR = '#39'NO TROBO CLAU' +
        ' MOTOR'#39';'
      '                  ELSE IF (MODI > 0) THEN'
      '                  BEGIN'
      '                        /* Parcial Motor */'
      
        '                        IF (MOTOR_BO <> MOTOR) THEN UPDATE ESCAL' +
        'ESLIN SET D_ITEM = :MOTOR_BO WHERE CLAU = :CLAU AND C_ITEM = 361' +
        ';'
      '                        /* Mitjana */'
      
        '                        INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_' +
        'ITEM) VALUES (:CLAU, 947, :MOTOR_AVG);'
      '                        INSERTS = INSERTS + 1;'
      '                  END;'
      '            END;'
      ''
      '            /* TOTAL COGNITIU */'
      '            IF (FCOG <> 0) THEN'
      '            BEGIN'
      '                  CLAU = 0;'
      ''
      '                  SELECT CLAU'
      '                  FROM   ESCALESCAP C'
      '                  JOIN   ESCALESLIN L ON C.CLAU = L.CLAU'
      '                  WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    C.C_ESCALA     = 1'
      '                  AND    C.C_ENTRADA    = :C_ENTRADA'
      '                  AND    C.ANULAT       = '#39'N'#39
      
        '                  AND    L.C_ITEM = 27                 /* busco ' +
        'la clau de la cap'#231'alera que tingui '#237'tems cognitius */'
      '                  INTO  :CLAU;'
      ''
      
        '                  IF (CLAU = 0)      THEN ERROR = ERROR || '#39' NO ' +
        'TROBO CLAU COGNITIU'#39';'
      '                  ELSE IF (MODI > 0) THEN'
      '                  BEGIN'
      '                        /* Parcial Cognitiu */'
      
        '                        INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_' +
        'ITEM) VALUES (:CLAU, 946, :COGNITIU);'
      '                        INSERTS = INSERTS + 1;'
      '                        /* Mitjana */'
      
        '                        INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_' +
        'ITEM) VALUES (:CLAU, 948, :COGNITIU_AVG);'
      '                        INSERTS = INSERTS + 1;'
      '                  END;'
      '            END;'
      ''
      '            /* TOTAL */'
      '            CLAU = 0;'
      ''
      '            SELECT CLAU'
      '            FROM   ESCALESCAP C'
      '            JOIN   ESCALESLIN L ON C.CLAU = L.CLAU'
      '            WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    C.C_ESCALA     = 1'
      '            AND    C.C_ENTRADA    = :C_ENTRADA'
      '            AND    C.ANULAT       = '#39'N'#39
      '            ORDER  BY C.DATA DESC'
      
        '            ROWS   1              /* si hi ha 2 entrades que com' +
        'ponen l'#39'escala, el total correcte '#233's l'#39#250'ltim introdu'#239't */'
      '            INTO  :CLAU;'
      ''
      
        '            IF (CLAU = 0)      THEN ERROR = ERROR || '#39' NO TROBO ' +
        'CLAU TOTAL'#39';'
      '            ELSE IF (MODI > 0) THEN'
      '            BEGIN'
      '                 /* Total */'
      
        '                 IF (TOTAL_BO <> TOTAL) THEN UPDATE ESCALESLIN S' +
        'ET D_ITEM = :TOTAL_BO WHERE CLAU = :CLAU AND C_ITEM = 28;'
      '                 /* Mitjana  */'
      
        '                 INSERT INTO ESCALESLIN (CLAU, C_ITEM, D_ITEM) V' +
        'ALUES (:CLAU, 949, :TOTAL_AVG);'
      '                 INSERTS = INSERTS + 1;'
      '            END;'
      ''
      '            REGISTRES = REGISTRES + 1;'
      '            IF ((MODI = 0) OR (ERROR <> '#39#39')) THEN SUSPEND;'
      '      END;'
      '      '
      '      '
      '      C_TRACTAMENT = NULL;'
      '      C_HISTORIA   = NULL;'
      '      C_ENTRADA    = NULL;'
      '      MOTOR        = NULL;'
      '      MOTOR_BO     = NULL;'
      '      MOTOR_AVG    = NULL;'
      '      COGNITIU     = NULL;'
      '      COGNITIU_AVG = NULL;'
      '      TOTAL        = NULL;'
      '      TOTAL_BO     = NULL;'
      '      TOTAL_AVG    = NULL;'
      '      '
      
        '      ERROR = '#39'Cap'#231'aleres afectades: '#39' || REGISTRES || '#39'.  L'#237'nie' +
        's insertades: '#39' || INSERTS;'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = EscalesCap
    Dic1Name = 'escalescap'
    Abierta = False
    Borrame = False
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
    Top = 196
  end
  object EVSFTSO: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Clau'
        NombreDB = 'Clau'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Activo = True
        AutoContador.Dic = EVSFTSO
        AutoContador.Campo = 'clau'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Condicions familiars'
        NombreDB = 'CondFam'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'condfam'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Contactes socials'
        NombreDB = 'Societat'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'societat'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Assist'#232'ncia rebuda per la xarxa de recursos (formals/informals)'
        NombreDB = 'Assistencia'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'assistencia'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Situaci'#243' econ'#242'mica'
        NombreDB = 'Economica'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'economica'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Habitatge'
        NombreDB = 'Habitatge'
        Longitud = 1
        MaskDisplay = '#;; '
        MaskEdit = '!9;1; '
        Consulta = 'habitatge_'
        zType = tcIB_Integer
        zNotNull = False
        ValidChars = '1,2,3,4,5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Puntuaci'#243' total'
        NombreDB = 'TOTAL'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'clau'
        NombreDB = 'clau'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'condfam'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Condicions familiars')
        CopiarOrigen.Strings = (
          'Condicions familiars')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "CONDFAM"'
      end
      item
        Nombre = 'economica'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Situaci'#243' econ'#242'mica')
        CopiarOrigen.Strings = (
          'Situaci'#243' econ'#242'mica')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "ECONOMICA"'
      end
      item
        Nombre = 'habitatge_'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Habitatge')
        CopiarOrigen.Strings = (
          'Habitatge')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "HABITATGE_"'
      end
      item
        Nombre = 'societat'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Contactes socials')
        CopiarOrigen.Strings = (
          'Contactes socials')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "SOCIETAT"'
      end
      item
        Nombre = 'assistencia'
        Master = EVSFValors
        BuscaOrigen.Strings = (
          'Assist'#232'ncia rebuda per la xarxa de recursos (formals/informals)')
        CopiarOrigen.Strings = (
          'Assist'#232'ncia rebuda per la xarxa de recursos (formals/informals)')
        CopiarMaster.Strings = (
          'CODI')
        BuscaMaster.Strings = (
          'CODI')
        WhereFiltro = 'GRUP = "ASSISTENCIA"'
      end>
    Nombre = 'EVSFTSO'
    NombreTabla = 'EscEVSFTSO'
    Organiza = tbBase
    CamposVer.Strings = (
      'Clau'
      'Condicions familiars'
      'Contactes socials'
      'Assist'#232'ncia rebuda per la xarxa de recursos (formals/informals)'
      'Situaci'#243' econ'#242'mica'
      'Habitatge'
      'Puntuaci'#243' total')
    IndiceVer = 'clau'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 176
    Top = 496
  end
  object ESIG_1aV_V2: TDic
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
        Aplica = kcMODELS
        Nombre = 'Estudis'
        NombreDB = 'Estudis'
        Longitud = 2
        Consulta = 'estudis'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resid'#232'ncia ingr'#233's'
        NombreDB = 'Residencia_I'
        Longitud = 2
        Consulta = 'residencia_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resid'#232'ncia alta'
        NombreDB = 'Residencia_A'
        Longitud = 2
        Consulta = 'residencia_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 10'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accessibilitat'
        NombreDB = 'Accessibilitat'
        Longitud = 2
        Consulta = 'accessibilitat'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Conviv'#232'ncia ingr'#233's'
        NombreDB = 'Convivencia_I'
        Longitud = 2
        Consulta = 'convivencia_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 8'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Conviv'#232'ncia alta'
        NombreDB = 'Convivencia_A'
        Longitud = 2
        Consulta = 'convivencia_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 8'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Situaci'#243' laboral ingr'#233's'
        NombreDB = 'Laboral_I'
        Longitud = 2
        Consulta = 'laboral_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Per qui treballa ingr'#233's'
        NombreDB = 'LaboralQui_I'
        Longitud = 2
        Consulta = 'laboralqui_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'On treballa ingr'#233's'
        NombreDB = 'LaboralOn_I'
        Longitud = 2
        Consulta = 'laboralon_i'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 3'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Situaci'#243' laboral alta'
        NombreDB = 'Laboral_A'
        Longitud = 2
        Consulta = 'laboral_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Per qui treballa alta'
        NombreDB = 'LaboralQui_A'
        Longitud = 2
        Consulta = 'laboralqui_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'On treballa alta'
        NombreDB = 'LaboralOn_A'
        Longitud = 2
        Consulta = 'laboralon_a'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 3'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pensi'#243
        NombreDB = 'Pensio'
        Longitud = 2
        Consulta = 'pensio'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 8'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat: Reconverteix perm'#237's de conduir'
        NombreDB = 'Mobilitat1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat: Conductor autom'#242'bil adaptat'
        NombreDB = 'Mobilitat2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat: Ocupant autom'#242'bil adaptat'
        NombreDB = 'Mobilitat3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat: Ocupant autom'#242'bil est'#224'ndard'
        NombreDB = 'Mobilitat4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat: No disposa de cap vehicle'
        NombreDB = 'Mobilitat5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat: Utilitza transport p'#250'blic'
        NombreDB = 'Mobilitat6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mobilitat: No necessita transport adaptat'
        NombreDB = 'Mobilitat7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S / N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Figura assistencial'
        NombreDB = 'Figura'
        Longitud = 2
        Consulta = 'figura'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0 .. 8'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dedicaci'#243
        NombreDB = 'Dedicacio'
        Longitud = 2
        Consulta = 'dedicacio'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Llei depend'#232'ncia'
        NombreDB = 'LleiDep'
        Longitud = 2
        Consulta = 'lleidep'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 4'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Concedit PIA'
        NombreDB = 'ConceditPIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica cuidador no professional'
        NombreDB = 'PIA1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica assist'#232'ncia personal '
        NombreDB = 'PIA2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica vinculada a un servei: SAP'
        NombreDB = 'PIA3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica vinculada a un servei: Centre de dia'
        NombreDB = 'PIA4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica vinculada a un servei: Resid'#232'ncia'
        NombreDB = 'PIA5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestacions de servei: Teleassist'#232'ncia'
        NombreDB = 'PIA6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestacions de servei: SAD'
        NombreDB = 'PIA7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestacions de servei: Centre de dia'
        NombreDB = 'PIA8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestacions de servei: Resid'#232'ncia'
        NombreDB = 'PIA9'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'estudis'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estudis')
        CopiarOrigen.Strings = (
          'Estudis')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.ESTUDIS.V2'#39
      end
      item
        Nombre = 'convivencia_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Conviv'#232'ncia ingr'#233's')
        CopiarOrigen.Strings = (
          'Conviv'#232'ncia ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.CONVIVENCIA'#39
      end
      item
        Nombre = 'convivencia_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Conviv'#232'ncia alta')
        CopiarOrigen.Strings = (
          'Conviv'#232'ncia alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.CONVIVENCIA'#39
      end
      item
        Nombre = 'residencia_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Resid'#232'ncia ingr'#233's')
        CopiarOrigen.Strings = (
          'Resid'#232'ncia ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.RESIDENCIA_I.V2'#39
      end
      item
        Nombre = 'residencia_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Resid'#232'ncia alta')
        CopiarOrigen.Strings = (
          'Resid'#232'ncia alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.RESIDENCIA_A.V2'#39
      end
      item
        Nombre = 'accessibilitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Accessibilitat')
        CopiarOrigen.Strings = (
          'Accessibilitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.ACCESS.V2'#39
      end
      item
        Nombre = 'laboral_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Situaci'#243' laboral ingr'#233's')
        CopiarOrigen.Strings = (
          'Situaci'#243' laboral ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORAL.V2'#39
      end
      item
        Nombre = 'laboral_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Situaci'#243' laboral alta')
        CopiarOrigen.Strings = (
          'Situaci'#243' laboral alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORAL.V2'#39
      end
      item
        Nombre = 'laboralqui_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Per qui treballa ingr'#233's')
        CopiarOrigen.Strings = (
          'Per qui treballa ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORALQUI.V2'#39
      end
      item
        Nombre = 'laboralqui_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Per qui treballa alta')
        CopiarOrigen.Strings = (
          'Per qui treballa alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORALQUI.V2'#39
      end
      item
        Nombre = 'laboralon_i'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'On treballa ingr'#233's')
        CopiarOrigen.Strings = (
          'On treballa ingr'#233's')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORALON'#39
      end
      item
        Nombre = 'laboralon_a'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'On treballa alta')
        CopiarOrigen.Strings = (
          'On treballa alta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LABORALON'#39
      end
      item
        Nombre = 'pensio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Pensi'#243)
        CopiarOrigen.Strings = (
          'Pensi'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.PENSIO'#39
      end
      item
        Nombre = 'figura'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Figura assistencial')
        CopiarOrigen.Strings = (
          'Figura assistencial')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.FIGURA.V2'#39
      end
      item
        Nombre = 'dedicacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Dedicaci'#243)
        CopiarOrigen.Strings = (
          'Dedicaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.DEDICACIO'#39
      end
      item
        Nombre = 'lleidep'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Llei depend'#232'ncia')
        CopiarOrigen.Strings = (
          'Llei depend'#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESIG.LLEIDEP.V2'#39
      end>
    Nombre = 'ESIG 1a Valoraci'#243
    NombreTabla = 'EscESIG_1AV_V2'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Estudis'
      'Resid'#232'ncia ingr'#233's'
      'Resid'#232'ncia alta'
      'Accessibilitat'
      'Conviv'#232'ncia ingr'#233's'
      'Conviv'#232'ncia alta'
      'Situaci'#243' laboral ingr'#233's'
      'Per qui treballa ingr'#233's'
      'On treballa ingr'#233's'
      'Situaci'#243' laboral alta'
      'Per qui treballa alta'
      'On treballa alta'
      'Pensi'#243
      'Mobilitat: Reconverteix perm'#237's de conduir'
      'Mobilitat: Conductor autom'#242'bil adaptat'
      'Mobilitat: Ocupant autom'#242'bil adaptat'
      'Mobilitat: Ocupant autom'#242'bil est'#224'ndard'
      'Mobilitat: No disposa de cap vehicle'
      'Mobilitat: Utilitza transport p'#250'blic'
      'Mobilitat: No necessita transport adaptat'
      'Figura assistencial'
      'Dedicaci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 8
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 557
    Top = 608
  end
  object ESIG_Seg_V2: TDic
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
        Aplica = kcMODELS
        Nombre = 'Estudis'
        NombreDB = 'Estudis'
        Longitud = 2
        Consulta = 'estudis'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resid'#232'ncia'
        NombreDB = 'Residencia'
        Longitud = 2
        Consulta = 'residencia'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accessibilitat'
        NombreDB = 'Accessibilitat'
        Longitud = 2
        Consulta = 'acces'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Conviv'#232'ncia'
        NombreDB = 'Convivencia'
        Longitud = 2
        Consulta = 'convivencia'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 8'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Laboral'
        NombreDB = 'Laboral'
        Longitud = 2
        Consulta = 'laboral'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Treballa?'
        NombreDB = 'NoTreballa'
        Longitud = 2
        Consulta = 'notreballa'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 12'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pensi'#243
        NombreDB = 'Pensio'
        Longitud = 2
        Consulta = 'pensio'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mobilitat: transport adaptat'
        NombreDB = 'Mobilitat1'
        Longitud = 2
        Consulta = 'mobilitat1'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mobilitat: transport no adaptat'
        NombreDB = 'Mobilitat2'
        Longitud = 2
        Consulta = 'mobilitat2'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mobilitat: transport p'#250'blic'
        NombreDB = 'Mobilitat3'
        Longitud = 2
        Consulta = 'mobilitat3'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 5'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Figura assistencial'
        NombreDB = 'Figura'
        Longitud = 2
        Consulta = 'figura'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 9'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dedicaci'#243
        NombreDB = 'Dedicacio'
        Longitud = 2
        Consulta = 'dedicacio'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1 .. 6'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Llei depend'#232'ncia'
        NombreDB = 'LleiDep'
        Longitud = 2
        Consulta = 'lleidep'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '-1 .. 4'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Concedit PIA'
        NombreDB = 'ConceditPIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica cuidador no professional (familiar) '
        NombreDB = 'PIA1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica assist'#232'ncia personal '
        NombreDB = 'PIA2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica vinculada a un serveI: SAD'
        NombreDB = 'PIA3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica vinculada a un servei: Centre de dia'
        NombreDB = 'PIA4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestaci'#243' econ'#242'mica vinculada a un servei: Resid'#232'ncia'
        NombreDB = 'PIA5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestacions de servei: Teleassist'#232'ncia'
        NombreDB = 'PIA6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestacions de servei: SAD'
        NombreDB = 'PIA7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestacions de servei: Centre de dia'
        NombreDB = 'PIA8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prestacions de servei: Resid'#232'ncia'
        NombreDB = 'PIA9'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'ID')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'estudis'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estudis')
        CopiarOrigen.Strings = (
          'Estudis')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.ESTUDIS.V2'#39
      end
      item
        Nombre = 'residencia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Resid'#232'ncia')
        CopiarOrigen.Strings = (
          'Resid'#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.RESIDENCIA_I.V2'#39
      end
      item
        Nombre = 'acces'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Accessibilitat')
        CopiarOrigen.Strings = (
          'Accessibilitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.ACCESS.V2'#39
      end
      item
        Nombre = 'convivencia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Conviv'#232'ncia')
        CopiarOrigen.Strings = (
          'Conviv'#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.CONVIVENCIA'#39
      end
      item
        Nombre = 'laboral'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Laboral')
        CopiarOrigen.Strings = (
          'Laboral')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.LABORAL.V2'#39
      end
      item
        Nombre = 'notreballa'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Treballa?')
        CopiarOrigen.Strings = (
          'Treballa?')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.NOTREBALLA.V2'#39
      end
      item
        Nombre = 'pensio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Pensi'#243)
        CopiarOrigen.Strings = (
          'Pensi'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.PENSIO.V2S'#39
      end
      item
        Nombre = 'mobilitat1'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Mobilitat: transport adaptat')
        CopiarOrigen.Strings = (
          'Mobilitat: transport adaptat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.MOBILITAT1'#39
      end
      item
        Nombre = 'mobilitat2'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Mobilitat: transport no adaptat')
        CopiarOrigen.Strings = (
          'Mobilitat: transport no adaptat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.MOBILITAT1'#39
      end
      item
        Nombre = 'mobilitat3'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Mobilitat: transport p'#250'blic')
        CopiarOrigen.Strings = (
          'Mobilitat: transport p'#250'blic')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.MOBILITAT3'#39
      end
      item
        Nombre = 'figura'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Figura assistencial')
        CopiarOrigen.Strings = (
          'Figura assistencial')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.FIGURA.V2'#39
      end
      item
        Nombre = 'dedicacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Dedicaci'#243)
        CopiarOrigen.Strings = (
          'Dedicaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.DEDICACIO'#39
      end
      item
        Nombre = 'lleidep'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Llei depend'#232'ncia')
        CopiarOrigen.Strings = (
          'Llei depend'#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESIG.LLEIDEP.V2'#39
      end>
    Nombre = 'ESIG Seguiment'
    NombreTabla = 'EscESIG_SEG_V2'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 634
    Top = 608
  end
  object P_Tract_EscObliga: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'escobliga'
    ForceNombreDB = False
    Body.Strings = (
      '(HISTORIA INTEGER)'
      'RETURNS (PROCES       INTEGER,'
      '         TRACTAMENT   INTEGER,'
      '         PRESTACIO    CHAR(4),'
      '         DATA_INGRES  DATE,'
      '         DATA_ALTA    DATE,'
      '         MOTIU        SMALLINT,'
      '         ESCALA       INTEGER,'
      '         LESCALA      VARCHAR(50),'
      '         AREA         VARCHAR(3),'
      '         OBLIGA_I     CHAR(1),'
      '         OBLIGA_T     CHAR(1),'
      '         OBLIGA_A     CHAR(1),'
      '         OBLIGA_R     CHAR(1),'
      '         OBLIGA_NOTIR CHAR(1)'
      '         )'
      'AS'
      '  DECLARE VARIABLE DATANAIX    DATE;'
      '  DECLARE VARIABLE GRUP        CHAR(1);'
      '  DECLARE VARIABLE EDAT        INTEGER;'
      '  DECLARE VARIABLE UM          SMALLINT;'
      '  DECLARE VARIABLE GLF         VARCHAR(15);'
      '  DECLARE VARIABLE COMPTA      INTEGER;'
      'BEGIN'
      ''
      '    /* Busquem el grup d'#39'unitats m'#232'diques d'#39'aquest pacient */'
      
        '    SELECT UM.C_GRUP, F.EDAT, F.FECHA_NAC, F.C_UNITATMEDICA, F.G' +
        'LF'
      '    FROM   FILIACIO F'
      '    JOIN   UNITATM UM ON F.C_UNITATMEDICA = UM.C_UNITATM'
      '    WHERE  F.NUM_HIST = :HISTORIA'
      '    INTO  :GRUP, :EDAT, :DATANAIX, :UM, :GLF;'
      ''
      
        '    IF (DATANAIX IS NULL) THEN EXIT;  /* SI NO T'#201' DATA DE NAIXEM' +
        'ENT INFORMADA NO T'#201' ESCALES OBLIGAT'#210'RIES */'
      ''
      
        '    /* Busquem les dades del tractament actiu (o '#250'ltim tractamen' +
        't recent */'
      
        '    SELECT T.C_PROCES, T.C_TRACTAMENT, T.C_PRESTACIO, T.DATA_ING' +
        'RES, T.DATA_ALTA, T.C_MOTIU'
      '    FROM   TRACTAMENTS T'
      
        '    JOIN   DRETSPRESTA DP ON T.C_PRESTACIO = DP.C_PRESTACIO AND ' +
        'DP.C_DRET = '#39'P550'#39
      '    WHERE  T.C_HISTORIA = :HISTORIA'
      '    AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY" - 30)'
      '    ORDER BY T.DATA_INGRES DESC'
      '    ROWS 1'
      
        '    INTO  :PROCES, :TRACTAMENT, :PRESTACIO, :DATA_INGRES, :DATA_' +
        'ALTA, :MOTIU;'
      ''
      '    /* SI T'#201' PROC'#201'S, MIREM TOTS ELS TRACTAMENTS DEL PROC'#201'S */'
      '    IF (PROCES IS NOT NULL) THEN'
      '    BEGIN'
      
        '        FOR SELECT T.C_TRACTAMENT, T.C_PRESTACIO, T.DATA_INGRES,' +
        ' T.DATA_ALTA, T.C_MOTIU'
      '        FROM TRACTAMENTS T'
      
        '        JOIN DRETSMOTIU D ON T.C_MOTIU = D.C_MOTIU AND D.C_DRET ' +
        '= '#39'X1'#39
      '        WHERE T.C_PROCES = :PROCES'
      
        '        AND (T.C_PRESTACIO = '#39'1004'#39' OR T.C_PRESTACIO = '#39'2014'#39' OR' +
        ' C_PRESTACIO = '#39'2008'#39')'
      '        ORDER BY T.DATA_ALTA'
      
        '        INTO :TRACTAMENT, :PRESTACIO, :DATA_INGRES, :DATA_ALTA, ' +
        ':MOTIU'
      '        DO BEGIN'
      
        '            FOR SELECT O.C_ESCALA, E.N_ESCALA, O.C_AREA, O.OBLIG' +
        'A_I, O.OBLIGA_T, O.OBLIGA_A, O.OBLIGA_R'
      '            FROM    ESCALESOBLIGACIONS O'
      '            JOIN    ESCALES E ON O.C_ESCALA = E.C_ESCALA'
      
        '            WHERE  (O.GRUP = :GRUP OR O.GRUP = '#39'*'#39' OR (:GLF = '#39'1' +
        '4.1'#39' AND O.GRUP IN ('#39'A'#39','#39'C'#39'))) /* Per als Politraumatismes TCE+L' +
        'M s'#39'han de disparar tant les del grup A com les del grup C */'
      
        '            AND    (O.C_PRESTACIO = :PRESTACIO OR O.C_PRESTACIO ' +
        '= '#39'*'#39')'
      
        '            AND   ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = '#39'N'#39')' +
        ' OR (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = '#39'S'#39'))'
      '            ORDER  BY O.C_AREA, O.C_ESCALA'
      
        '            INTO  :ESCALA, :LESCALA, :AREA, :OBLIGA_I, :OBLIGA_T' +
        ', :OBLIGA_A, :OBLIGA_R'
      '            DO BEGIN'
      '                SUSPEND;'
      '            END;'
      '        END;'
      '    END;'
      '    '
      '    ELSE IF (TRACTAMENT IS NOT NULL) THEN'
      '    BEGIN'
      '        OBLIGA_I = NULL; OBLIGA_A = NULL; OBLIGA_T = NULL;'
      '        '
      
        '        SELECT COUNT(*) FROM DRETSMOTIU WHERE C_MOTIU = :MOTIU A' +
        'ND C_DRET = '#39'X5'#39' INTO :COMPTA;'
      ''
      
        '        /* SI '#201'S REVISI'#211' O INGR'#201'S PER REVISI'#211', MOSTREM LES ESCAL' +
        'ES OBLIGAT'#210'RIES DE REVISI'#211' */'
      '        IF (COMPTA > 0) THEN'
      '        BEGIN'
      
        '            FOR SELECT O.C_ESCALA, E.N_ESCALA, O.C_AREA, O.OBLIG' +
        'A_R, O.OBLIGA_NOTIR'
      '                FROM   ESCALESOBLIGACIONS O'
      '                JOIN   ESCALES E ON O.C_ESCALA = E.C_ESCALA'
      
        '                WHERE (O.GRUP = :GRUP OR O.GRUP = '#39'*'#39' OR (:GLF =' +
        ' '#39'14.1'#39' AND O.GRUP IN ('#39'A'#39','#39'C'#39'))) /* Per als Politraumatismes TC' +
        'E+LM s'#39'han de disparar tant les del grup A com les del grup C */'
      
        '                AND   (O.C_PRESTACIO = :PRESTACIO OR O.C_PRESTAC' +
        'IO = '#39'*'#39')'
      
        '                AND  ((O.OBLIGA_R = '#39'X'#39') OR (O.OBLIGA_NOTIR = '#39'X' +
        #39'))'
      
        '                AND  ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = '#39 +
        'N'#39') OR (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = '#39'S'#39'))'
      '                ORDER  BY O.C_AREA, O.C_ESCALA'
      
        '                INTO  :ESCALA, :LESCALA, :AREA, :OBLIGA_R, :OBLI' +
        'GA_NOTIR'
      '            DO BEGIN'
      '                SUSPEND;'
      '            END;'
      '        END;'
      ''
      
        '        /* Setembre 2015: hi ha escales obligat'#242'ries per NO TIR ' +
        '*/'
      '        ELSE BEGIN'
      '            OBLIGA_R = NULL;'
      '            '
      
        '            FOR SELECT O.C_ESCALA, E.N_ESCALA, O.C_AREA, O.OBLIG' +
        'A_NOTIR'
      '                FROM   ESCALESOBLIGACIONS O'
      '                JOIN   ESCALES E ON O.C_ESCALA = E.C_ESCALA'
      
        '                WHERE (O.GRUP = :GRUP OR O.GRUP = '#39'*'#39' OR (:GLF =' +
        ' '#39'14.1'#39' AND O.GRUP IN ('#39'A'#39','#39'C'#39'))) /* Per als Politraumatismes TC' +
        'E+LM s'#39'han de disparar tant les del grup A com les del grup C */'
      
        '                AND   (O.C_PRESTACIO = :PRESTACIO OR O.C_PRESTAC' +
        'IO = '#39'*'#39')'
      '                AND   (O.OBLIGA_NOTIR = '#39'X'#39')'
      
        '                AND  ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = '#39 +
        'N'#39') OR (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = '#39'S'#39'))'
      '                ORDER  BY O.C_AREA, O.C_ESCALA'
      '                INTO  :ESCALA, :LESCALA, :AREA, :OBLIGA_NOTIR'
      '            DO BEGIN'
      '                SUSPEND;'
      '            END;'
      '        END;'
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
    Left = 148
    Top = 80
  end
  object HIBS: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'CLAU'
        NombreDB = 'CLAU'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'PREGUNTA'
        NombreDB = 'PREGUNTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'RESPOSTA'
        NombreDB = 'RESPOSTA'
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
          'CLAU'
          'PREGUNTA')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ESCHIBS'
    NombreTabla = 'ESCHIBS'
    Organiza = tbBase
    CamposVer.Strings = (
      'CLAU')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 888
    Top = 436
  end
  object InsertaPendents_NoTIR: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inserta_NoTIR'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '      DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      '      DECLARE VARIABLE FI_PROCES   CHAR(1);'
      ''
      '      DECLARE VARIABLE GRUP_UM     CHAR(1);'
      '      DECLARE VARIABLE EDAT        INTEGER;'
      '      DECLARE VARIABLE DATA_NAIX   DATE;'
      '      DECLARE VARIABLE GLF         VARCHAR(15);'
      ''
      '      DECLARE VARIABLE TIPUS       CHAR(1);'
      ''
      '      DECLARE VARIABLE C_ESCALA    INTEGER;'
      '      DECLARE VARIABLE C_AREA      VARCHAR(3);'
      '      '
      '      DECLARE VARIABLE ID          INTEGER;'
      'BEGIN'
      ''
      '   /* Donat un TRACTAMENT'
      '      busquem les ESCALES OBLIGAT'#210'RIES DE TRACTAMENTS NO TIR,'
      '      segons la PRESTACI'#211', el GRUP d'#39'UM i l'#39'EDAT'
      '      i les insertem a ESCALESPENDENTS amb tipus A */'
      '      '
      '      SELECT C_HISTORIA, C_PRESTACIO'
      '      FROM   TRACTAMENTS'
      '      WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '      INTO  :C_HISTORIA, :C_PRESTACIO;'
      ''
      '      SELECT UM.C_GRUP, F.EDAT, F.FECHA_NAC, F.GLF'
      '      FROM   FILIACIO F'
      '      JOIN   UNITATM UM ON F.C_UNITATMEDICA = UM.C_UNITATM'
      '      WHERE  F.NUM_HIST = :C_HISTORIA'
      '      INTO  :GRUP_UM, :EDAT, :DATA_NAIX, :GLF;'
      ''
      '      IF (DATA_NAIX IS NOT NULL) THEN'
      '      BEGIN'
      '      '
      '            FOR SELECT DISTINCT O.C_ESCALA, O.C_AREA'
      '                FROM   ESCALESOBLIGACIONS O'
      
        '                WHERE (O.GRUP = :GRUP_UM OR O.GRUP = '#39'*'#39' OR (:GL' +
        'F = '#39'14.1'#39' AND O.GRUP IN ('#39'A'#39','#39'C'#39'))) /* Per als Politraumatismes' +
        ' TCE+LM s'#39'han de disparar tant les del grup A com les del grup C' +
        ' */'
      
        '                AND   (O.C_PRESTACIO = :C_PRESTACIO OR O.C_PREST' +
        'ACIO = '#39'*'#39')'
      '                AND    O.OBLIGA_NOTIR = '#39'X'#39
      
        '                AND ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = '#39'N' +
        #39')  OR  (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = '#39'S'#39'))'
      '                ORDER  BY C_AREA, C_ESCALA'
      '                INTO  :C_ESCALA, :C_AREA'
      '            DO BEGIN'
      '      '
      
        '                  /* Mirem si l'#39'escala ja est'#224' entrada per aques' +
        'ta '#224'rea  o  per un usuari l'#39#224'rea del qual no tingui '#237'tems d'#39'aque' +
        'sta escala */'
      ''
      '                  ID = 0;'
      ''
      
        '                  /* Si l'#39'escala nom'#233's correspon a una '#224'rea, mir' +
        'em si est'#224' entrada (ens '#233's igual l'#39#224'rea) */'
      
        '                  /* Altrament, mirem que estigui entrada per l'#39 +
        #224'rea obligat'#242'ria o per una que no tingui '#237'tems de l'#39'escala */'
      
        '                  /* De fet, aix'#242' es pot resumir en un '#250'nic sele' +
        'ct */'
      ''
      
        '                  /* Aquestes escales constaran pendents amb tip' +
        'us '#39'-'#39', per'#242' ens serveix qualsevol entrada, sigui quin sigui el ' +
        'seu tipus ICTAS */'
      '                  '
      '                  SELECT C.CLAU'
      '                  FROM   ESCALESCAP C'
      '                  JOIN   METGES M ON C.C_USUARI = M.CODI'
      
        '                  JOIN   ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECI' +
        'AL'
      '                  WHERE  C.C_ESCALA = :C_ESCALA'
      '                  AND    C.C_TRACTAMENT = :C_TRACTAMENT'
      
        '                  AND    C.ANULAT <> '#39'S'#39' AND C.ANULAT <> '#39'D'#39' AND' +
        ' C.ANULAT <> '#39'V'#39'  /* no podem enviar No Valorable a l'#39'HCCC */'
      
        '                  AND    E.C_AREA NOT IN (SELECT DISTINCT AREA_U' +
        'SUARI'
      '                                          FROM   ESCALESITEMS'
      
        '                                          WHERE  C_ESCALA = :C_E' +
        'SCALA'
      
        '                                          AND    AREA_USUARI <> ' +
        ':C_AREA  AND  AREA_USUARI <> '#39'***'#39')'
      '                  ROWS   1'
      '                  INTO  :ID;'
      ''
      '                  /* Si no l'#39'han entrat, la posem a pendents */'
      
        '                  IF (ID = 0) THEN INSERT INTO ESCALESPENDENTS (' +
        ' C_TRACTAMENT,  C_ESCALA,  C_AREA,  TIPUS)   /* ESTAT '#233's default' +
        ' 0 */'
      
        '                                   VALUES                      (' +
        ':C_TRACTAMENT, :C_ESCALA, :C_AREA,    '#39'-'#39');'
      ''
      '            END;'
      ''
      '      END;'
      ''
      'END')
    Dic1 = EscalesPendents
    Dic2 = EscalesObligacions
    Dic1Name = 'escalespendents'
    Dic2Name = 'escalesobligacions'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 565
    Top = 144
  end
  object EscalesItemsDocs: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C Escala'
        NombreDB = 'C_Escala'
        Longitud = 8
        Consulta = 'Escales'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Item'
        NombreDB = 'C_Item'
        Longitud = 8
        Consulta = 'Items'
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Generator = 'CONTAOBJCODIITEM'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Document'
        NombreDB = 'C_Doc'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Dic = EscalesItemsDocs
        AutoContador.Campo = 'C Item'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom document'
        NombreDB = 'N_Doc'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ruta document'
        NombreDB = 'Enllac'
        Longitud = 200
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
          'C Item'
          'C Document')
        Tipo = tiPrimario
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
          'C Item')
        Tipo = tiForaneo
        ForaneoDic = EscalesItems
        ForaneoCampos.Strings = (
          'C Item')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'escala'
        NombreDB = 'escala'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C Escala')
        Tipo = tiForaneo
        ForaneoDic = Escales
        ForaneoCampos.Strings = (
          'C Escala')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'escitem'
        NombreDB = 'escitem'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Escala'
          'C Item')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Escales'
        Master = Escales
        BuscaOrigen.Strings = (
          'C Escala')
        CopiarOrigen.Strings = (
          'C Escala')
        CopiarMaster.Strings = (
          'C Escala')
        BuscaMaster.Strings = (
          'C Escala')
      end
      item
        Nombre = 'Items'
        Master = EscalesItems
        BuscaOrigen.Strings = (
          'C Item')
        CopiarOrigen.Strings = (
          'C Item'
          'C Escala')
        CopiarMaster.Strings = (
          'C Item'
          'C Escala')
        BuscaMaster.Strings = (
          'C Item')
      end>
    Nombre = 'Escales Items Docs'
    NombreTabla = 'EscalesItemsDocs'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Escala'
      'C Item'
      'C Document'
      'Nom document'
      'Ruta document')
    IndiceVer = 'escitem'
    Navegar = False
    Nivel = 3
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659948264
    Left = 190
    Top = 16
  end
  object P_CaducaAntigues: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CaducaAntigues'
    ForceNombreDB = False
    Body.Strings = (
      '(X INTEGER)'
      'AS'
      '  DECLARE VARIABLE ID INTEGER;'
      'BEGIN'
      ''
      
        '      /* Caduquem les ASIA pendents a l'#39'alta si fa m'#233's de X dies' +
        ' que han marxat d'#39'alta */'
      '      FOR SELECT E.ID'
      '          FROM   ESCALESPENDENTS E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE (E.TIPUS = '#39'T'#39' OR E.TIPUS = '#39'A'#39')'
      '          AND    E.ESTAT < 5'
      '          AND    E.C_ESCALA = 8'
      '          AND    T.DATA_ALTA < "TODAY" - :X'
      '          INTO  :ID'
      '      DO BEGIN'
      '            UPDATE ESCALESPENDENTS'
      '            SET    ESTAT = 5'
      '            WHERE  ID = :ID;'
      '      END;'
      '      '
      
        '      /* Caduquem les ASIA pendents de les revisions de fa m'#233's d' +
        'e X dies */'
      '      FOR SELECT E.ID'
      '          FROM   ESCALESPENDENTS E'
      
        '          JOIN   TRACTAMENTS T ON E.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  E.TIPUS = '#39'S'#39
      '          AND    E.ESTAT < 5'
      '          AND    E.C_ESCALA = 8'
      '          AND    T.DATA_ALTA < "TODAY" - :X'
      '          INTO  :ID'
      '      DO BEGIN'
      '            UPDATE ESCALESPENDENTS'
      '            SET    ESTAT = 5'
      '            WHERE  ID = :ID;'
      '      END;'
      ''
      ''
      'END')
    Dic1 = EscalesPendents
    Dic1Name = 'EscalesPendents'
    Abierta = False
    Borrame = False
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
    Top = 16
  end
  object PCAT: TDic
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
        Aplica = kcSiNo
        Nombre = 'METGE_A_INTERVENCIO'
        NombreDB = 'METGE_A_INTERVENCIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'METGE_A_ESTABILITAT'
        NombreDB = 'METGE_A_ESTABILITAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'METGE_A_TRAUMA'
        NombreDB = 'METGE_A_TRAUMA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'METGE_B_INTERVENCIO'
        NombreDB = 'METGE_B_INTERVENCIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'METGE_B_ESTABILITAT'
        NombreDB = 'METGE_B_ESTABILITAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'METGE_B_TRAUMA'
        NombreDB = 'METGE_B_TRAUMA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'METGE_C_INTERVENCIO'
        NombreDB = 'METGE_C_INTERVENCIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'METGE_C_ESTABILITAT'
        NombreDB = 'METGE_C_ESTABILITAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'METGE_C_TRAUMA'
        NombreDB = 'METGE_C_TRAUMA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NEUPSI_A_CONDICIO'
        NombreDB = 'NEUPSI_A_CONDICIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NEUPSI_A_RISC'
        NombreDB = 'NEUPSI_A_RISC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NEUPSI_A_TRACTAMENT'
        NombreDB = 'NEUPSI_A_TRACTAMENT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NEUPSI_B_CONDICIO'
        NombreDB = 'NEUPSI_B_CONDICIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NEUPSI_B_RISC'
        NombreDB = 'NEUPSI_B_RISC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NEUPSI_C_CONDICIO'
        NombreDB = 'NEUPSI_C_CONDICIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NEUPSI_C_RISC'
        NombreDB = 'NEUPSI_C_RISC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'INTENSITAT_A_AREES'
        NombreDB = 'INTENSITAT_A_AREES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'INTENSITAT_A_HORES'
        NombreDB = 'INTENSITAT_A_HORES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'INTENSITAT_A_SUPERVISIO'
        NombreDB = 'INTENSITAT_A_SUPERVISIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'INTENSITAT_A_TERAPEUTES'
        NombreDB = 'INTENSITAT_A_TERAPEUTES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'INTENSITAT_B_AREES'
        NombreDB = 'INTENSITAT_B_AREES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'INTENSITAT_B_HORES'
        NombreDB = 'INTENSITAT_B_HORES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'YN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'INTENSITAT_C_AREES'
        NombreDB = 'INTENSITAT_C_AREES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'YN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'INTENSITAT_C_HORES'
        NombreDB = 'INTENSITAT_C_HORES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'YN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_A_PROBLEMES'
        NombreDB = 'FISIC_A_PROBLEMES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_A_PROFESSIONALS'
        NombreDB = 'FISIC_A_PROFESSIONALS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_A_ALTERACIONS'
        NombreDB = 'FISIC_A_ALTERACIONS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_A_AMPUTATS'
        NombreDB = 'FISIC_A_AMPUTATS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_B_PROBLEMES'
        NombreDB = 'FISIC_B_PROBLEMES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_B_PROFESSIONALS'
        NombreDB = 'FISIC_B_PROFESSIONALS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_B_ALTERACIONS'
        NombreDB = 'FISIC_B_ALTERACIONS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_B_AMPUTATS'
        NombreDB = 'FISIC_B_AMPUTATS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_C_PROBLEMES'
        NombreDB = 'FISIC_C_PROBLEMES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_C_ALTERACIONS'
        NombreDB = 'FISIC_C_ALTERACIONS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FISIC_C_AMPUTATS'
        NombreDB = 'FISIC_C_AMPUTATS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'VENTILA_A_TRAQUEO'
        NombreDB = 'VENTILA_A_TRAQUEO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'VENTILA_A_MONITOR_O2'
        NombreDB = 'VENTILA_A_MONITOR_O2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'VENTILA_A_RETIRADA'
        NombreDB = 'VENTILA_A_RETIRADA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'VENTILA_A_ASSISTIDA'
        NombreDB = 'VENTILA_A_ASSISTIDA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'VENTILA_B_TRAQUEO'
        NombreDB = 'VENTILA_B_TRAQUEO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'VENTILA_C_TRAQUEO'
        NombreDB = 'VENTILA_C_TRAQUEO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NUTRI_A_DIETA'
        NombreDB = 'NUTRI_A_DIETA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NUTRI_A_ASSISTENCIA'
        NombreDB = 'NUTRI_A_ASSISTENCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NUTRI_B_DIETA'
        NombreDB = 'NUTRI_B_DIETA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NUTRI_B_ASSISTENCIA'
        NombreDB = 'NUTRI_B_ASSISTENCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NUTRI_B_EDUCACIO'
        NombreDB = 'NUTRI_B_EDUCACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NUTRI_C_DIETA'
        NombreDB = 'NUTRI_C_DIETA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NUTRI_C_ASSISTENCIA'
        NombreDB = 'NUTRI_C_ASSISTENCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'NUTRI_C_EDUCACIO'
        NombreDB = 'NUTRI_C_EDUCACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COMUNICA_A_EVALUACIO'
        NombreDB = 'COMUNICA_A_EVALUACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COMUNICA_A_AJUDES'
        NombreDB = 'COMUNICA_A_AJUDES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COMUNICA_B_PROBLEMES'
        NombreDB = 'COMUNICA_B_PROBLEMES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COMUNICA_B_AJUDES'
        NombreDB = 'COMUNICA_B_AJUDES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COMUNICA_C_PROBLEMES'
        NombreDB = 'COMUNICA_C_PROBLEMES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COMUNICA_C_AJUDES'
        NombreDB = 'COMUNICA_C_AJUDES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COGNIT_A_SUPORT'
        NombreDB = 'COGNIT_A_SUPORT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COGNIT_A_AVALUACIO'
        NombreDB = 'COGNIT_A_AVALUACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COGNIT_B_ESTRATEGIA'
        NombreDB = 'COGNIT_B_ESTRATEGIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COGNIT_B_AVALUACIO'
        NombreDB = 'COGNIT_B_AVALUACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COGNIT_C_PROBLEMES_FS'
        NombreDB = 'COGNIT_C_PROBLEMES_FS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'COGNIT_C_SENSE_PROBLEMES'
        NombreDB = 'COGNIT_C_SENSE_PROBLEMES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'CONDUCTA_A'
        NombreDB = 'CONDUCTA_A'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'CONDUCTA_B'
        NombreDB = 'CONDUCTA_B'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'CONDUCTA_C'
        NombreDB = 'CONDUCTA_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'ANIM_A_AVALUACIO'
        NombreDB = 'ANIM_A_AVALUACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'ANIM_A_CRISIS'
        NombreDB = 'ANIM_A_CRISIS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'ANIM_B_ALTERACIONS'
        NombreDB = 'ANIM_B_ALTERACIONS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'ANIM_C_ALTERACIONS'
        NombreDB = 'ANIM_C_ALTERACIONS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'GESTIO_A_DISCAPACITAT'
        NombreDB = 'GESTIO_A_DISCAPACITAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'GESTIO_B_DISCAPACITAT'
        NombreDB = 'GESTIO_B_DISCAPACITAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'GESTIO_C_DISCAPACITAT'
        NombreDB = 'GESTIO_C_DISCAPACITAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'SOCIAL_A_ALTA'
        NombreDB = 'SOCIAL_A_ALTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'SOCIAL_B_ALTA'
        NombreDB = 'SOCIAL_B_ALTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'SOCIAL_B_ASSISTENCIA'
        NombreDB = 'SOCIAL_B_ASSISTENCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'SOCIAL_C_ALTA'
        NombreDB = 'SOCIAL_C_ALTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'SOCIAL_C_ASSISTENCIA'
        NombreDB = 'SOCIAL_C_ASSISTENCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FAMILIA_A'
        NombreDB = 'FAMILIA_A'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FAMILIA_B'
        NombreDB = 'FAMILIA_B'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'FAMILIA_C'
        NombreDB = 'FAMILIA_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'EMOCIO_A'
        NombreDB = 'EMOCIO_A'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'EMOCIO_B'
        NombreDB = 'EMOCIO_B'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'EMOCIO_C'
        NombreDB = 'EMOCIO_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LABORAL_A_AVALUACIO'
        NombreDB = 'LABORAL_A_AVALUACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LABORAL_A_ESTUDI'
        NombreDB = 'LABORAL_A_ESTUDI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LABORAL_A_SUPORT'
        NombreDB = 'LABORAL_A_SUPORT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LABORAL_B_SUPERVISIO'
        NombreDB = 'LABORAL_B_SUPERVISIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LABORAL_B_SUPORT'
        NombreDB = 'LABORAL_B_SUPORT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LABORAL_C_EDAT'
        NombreDB = 'LABORAL_C_EDAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LABORAL_C_SUPORT'
        NombreDB = 'LABORAL_C_SUPORT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LEGAL_A_DECISIO'
        NombreDB = 'LEGAL_A_DECISIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LEGAL_A_PROTECCIO'
        NombreDB = 'LEGAL_A_PROTECCIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LEGAL_A_VIGILANCIA'
        NombreDB = 'LEGAL_A_VIGILANCIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LEGAL_A_LITIGIS'
        NombreDB = 'LEGAL_A_LITIGIS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LEGAL_B_AVALUACIO'
        NombreDB = 'LEGAL_B_AVALUACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LEGAL_B_DECISIO'
        NombreDB = 'LEGAL_B_DECISIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LEGAL_B_PLANIFICACIO'
        NombreDB = 'LEGAL_B_PLANIFICACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'LEGAL_C'
        NombreDB = 'LEGAL_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_A_TECNOLOGIA'
        NombreDB = 'RECURSOS_A_TECNOLOGIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_A_CADIRES'
        NombreDB = 'RECURSOS_A_CADIRES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_A_ORTESIS'
        NombreDB = 'RECURSOS_A_ORTESIS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_A_ELECTRONICS'
        NombreDB = 'RECURSOS_A_ELECTRONICS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_A_VENTILACIO'
        NombreDB = 'RECURSOS_A_VENTILACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_B_CADIRES'
        NombreDB = 'RECURSOS_B_CADIRES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_B_BIPEDESTACIO'
        NombreDB = 'RECURSOS_B_BIPEDESTACIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_B_ENTRENAMENT'
        NombreDB = 'RECURSOS_B_ENTRENAMENT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_B_CICLISME'
        NombreDB = 'RECURSOS_B_CICLISME'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_B_FERULES'
        NombreDB = 'RECURSOS_B_FERULES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_C_SENSE'
        NombreDB = 'RECURSOS_C_SENSE'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'RECURSOS_C_BASIC'
        NombreDB = 'RECURSOS_C_BASIC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_NO_APLICA'
        NombreDB = 'TEMPS_NO_APLICA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_RAPID'
        NombreDB = 'TEMPS_RAPID'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_CURT'
        NombreDB = 'TEMPS_CURT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_MITJA'
        NombreDB = 'TEMPS_MITJA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_LLARG'
        NombreDB = 'TEMPS_LLARG'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_CATEGORIA_A'
        NombreDB = 'TEMPS_CATEGORIA_A'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_CATEGORIA_B'
        NombreDB = 'TEMPS_CATEGORIA_B'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_CATEGORIA_C'
        NombreDB = 'TEMPS_CATEGORIA_C'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_CATEGORIA_NO_APLICA'
        NombreDB = 'TEMPS_CATEGORIA_NO_APLICA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_NIVELL1'
        NombreDB = 'TEMPS_NIVELL1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_NIVELL2'
        NombreDB = 'TEMPS_NIVELL2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_NIVELL3'
        NombreDB = 'TEMPS_NIVELL3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_NIVELL_NO'
        NombreDB = 'TEMPS_NIVELL_NO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_PRIORITAT_ALTA'
        NombreDB = 'TEMPS_PRIORITAT_ALTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_PRIORITAT_MITJA'
        NombreDB = 'TEMPS_PRIORITAT_MITJA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'TEMPS_PRIORITAT_BAIXA'
        NombreDB = 'TEMPS_PRIORITAT_BAIXA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMemo
        Nombre = 'RECOMANACIONS'
        NombreDB = 'RECOMANACIONS'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Id')
        Tipo = tiForaneo
        ForaneoDic = EscalesCap
        ForaneoCampos.Strings = (
          'Clau')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'PCAT'
    NombreTabla = 'EscPCAT'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'METGE_A_INTERVENCIO'
      'METGE_A_ESTABILITAT'
      'METGE_A_TRAUMA'
      'METGE_B_INTERVENCIO'
      'METGE_B_ESTABILITAT'
      'METGE_B_TRAUMA'
      'METGE_C_INTERVENCIO'
      'METGE_C_ESTABILITAT'
      'METGE_C_TRAUMA'
      'NEUPSI_A_CONDICIO'
      'NEUPSI_A_RISC'
      'NEUPSI_A_TRACTAMENT'
      'NEUPSI_B_CONDICIO'
      'NEUPSI_B_RISC'
      'NEUPSI_C_CONDICIO'
      'NEUPSI_C_RISC'
      'INTENSITAT_A_AREES'
      'INTENSITAT_A_HORES'
      'INTENSITAT_A_SUPERVISIO'
      'INTENSITAT_A_TERAPEUTES'
      'INTENSITAT_B_AREES'
      'INTENSITAT_B_HORES'
      'INTENSITAT_C_AREES'
      'INTENSITAT_C_HORES'
      'FISIC_A_PROBLEMES'
      'FISIC_A_PROFESSIONALS'
      'FISIC_A_ALTERACIONS'
      'FISIC_A_AMPUTATS'
      'FISIC_B_PROBLEMES'
      'FISIC_B_PROFESSIONALS'
      'FISIC_B_ALTERACIONS'
      'FISIC_B_AMPUTATS'
      'FISIC_C_PROBLEMES'
      'FISIC_C_ALTERACIONS'
      'FISIC_C_AMPUTATS'
      'VENTILA_A_TRAQUEO'
      'VENTILA_A_MONITOR_O2'
      'VENTILA_A_RETIRADA'
      'VENTILA_A_ASSISTIDA'
      'VENTILA_B_TRAQUEO'
      'VENTILA_C_TRAQUEO'
      'NUTRI_A_DIETA'
      'NUTRI_A_ASSISTENCIA'
      'NUTRI_B_DIETA'
      'NUTRI_B_ASSISTENCIA'
      'NUTRI_B_EDUCACIO'
      'NUTRI_C_DIETA'
      'NUTRI_C_ASSISTENCIA'
      'NUTRI_C_EDUCACIO'
      'COMUNICA_A_EVALUACIO'
      'COMUNICA_A_AJUDES'
      'COMUNICA_B_PROBLEMES'
      'COMUNICA_B_AJUDES'
      'COMUNICA_C_PROBLEMES'
      'COMUNICA_C_AJUDES'
      'COGNIT_A_SUPORT'
      'COGNIT_A_AVALUACIO'
      'COGNIT_B_ESTRATEGIA'
      'COGNIT_B_AVALUACIO'
      'COGNIT_C_PROBLEMES_FS'
      'COGNIT_C_SENSE_PROBLEMES'
      'CONDUCTA_A'
      'CONDUCTA_B'
      'CONDUCTA_C'
      'ANIM_A_AVALUACIO'
      'ANIM_A_CRISIS'
      'ANIM_B_ALTERACIONS'
      'ANIM_C_ALTERACIONS'
      'GESTIO_A_DISCAPACITAT'
      'GESTIO_B_DISCAPACITAT'
      'GESTIO_C_DISCAPACITAT'
      'SOCIAL_A_ALTA'
      'SOCIAL_B_ALTA'
      'SOCIAL_B_ASSISTENCIA'
      'SOCIAL_C_ALTA'
      'SOCIAL_C_ASSISTENCIA'
      'FAMILIA_A'
      'FAMILIA_B'
      'FAMILIA_C'
      'EMOCIO_A'
      'EMOCIO_B'
      'EMOCIO_C'
      'LABORAL_A_AVALUACIO'
      'LABORAL_A_ESTUDI'
      'LABORAL_A_SUPORT'
      'LABORAL_B_SUPERVISIO'
      'LABORAL_B_SUPORT'
      'LABORAL_C_EDAT'
      'LABORAL_C_SUPORT'
      'LEGAL_A_DECISIO'
      'LEGAL_A_PROTECCIO'
      'LEGAL_A_VIGILANCIA'
      'LEGAL_A_LITIGIS'
      'LEGAL_B_AVALUACIO'
      'LEGAL_B_DECISIO'
      'LEGAL_B_PLANIFICACIO'
      'LEGAL_C'
      'RECURSOS_A_TECNOLOGIA'
      'RECURSOS_A_CADIRES'
      'RECURSOS_A_ORTESIS'
      'RECURSOS_A_ELECTRONICS'
      'RECURSOS_A_VENTILACIO'
      'RECURSOS_B_CADIRES'
      'RECURSOS_B_BIPEDESTACIO'
      'RECURSOS_B_ENTRENAMENT'
      'RECURSOS_B_CICLISME'
      'RECURSOS_B_FERULES'
      'RECURSOS_C_SENSE'
      'RECURSOS_C_BASIC'
      'TEMPS_NO_APLICA'
      'TEMPS_CURT'
      'TEMPS_MITJA'
      'TEMPS_LLARG'
      'TEMPS_CATEGORIA_A'
      'TEMPS_CATEGORIA_B'
      'TEMPS_CATEGORIA_C'
      'TEMPS_CATEGORIA_NO_APLICA'
      'TEMPS_NIVELL1'
      'TEMPS_NIVELL2'
      'TEMPS_NIVELL3'
      'TEMPS_NIVELL_NO'
      'TEMPS_PRIORITAT_ALTA'
      'TEMPS_PRIORITAT_MITJA'
      'TEMPS_PRIORITAT_BAIXA'
      'RECOMANACIONS'
      'TEMPS_RAPID')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 944
    Top = 436
  end
  object totalHOSS: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'totalHOSS'
    ForceNombreDB = False
    Body.Strings = (
      '(DESDE DATE, OPCIO INTEGER)'
      'RETURNS (CLAU         INTEGER,'
      '         DATA         DATE,'
      '         C_HISTORIA   INTEGER,'
      '         TRACTAMENT   INTEGER,'
      '         PRESTACIO    CHAR(4),'
      '         DATA_INGRES  DATE,'
      '         DATA_ALTA    DATE,'
      '         MOTIU        SMALLINT,'
      '         EDAT         INTEGER,'
      '         TOTAL_OLD    CHAR(15),'
      '         TOTAL_NEW    INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE C_ITEM   INTEGER;'
      '  DECLARE VARIABLE D_ITEM   CHAR(15);'
      '  DECLARE VARIABLE ITEM1273 INTEGER;'
      'BEGIN'
      
        '    IF      (OPCIO IS NULL)                 THEN OPCIO = 1;  /* ' +
        'si no ve informada l'#39'opci'#243', llistem */'
      
        '    ELSE IF ((OPCIO <> 1) AND (OPCIO <> 2)) THEN OPCIO = 1;  /* ' +
        'si ve informada a un valor diferent de 1-llistar i 2-actualitzar' +
        ', llistem */'
      ''
      
        '    /* Per cada entrada de l'#39'escala HOSS (135) revisar c'#224'lcul de' +
        ' l'#39#237'tem total (1280) */'
      
        '    FOR SELECT C.CLAU, C.DATA, C.C_HISTORIA, C.C_TRACTAMENT, T.C' +
        '_PRESTACIO, T.DATA_INGRES, T.DATA_ALTA, T.C_MOTIU, L.D_ITEM'
      '    FROM ESCALESCAP  C'
      '    JOIN TRACTAMENTS T ON T.C_TRACTAMENT = C.C_TRACTAMENT'
      '    JOIN ESCALESLIN  L ON C.CLAU = L.CLAU AND L.C_ITEM = 1280'
      '    WHERE  C.C_ESCALA = 135'
      '    AND    C.DATA >= :DESDE'
      '    ORDER BY C.CLAU'
      
        '    INTO  :CLAU, :DATA, :C_HISTORIA, :TRACTAMENT, :PRESTACIO, :D' +
        'ATA_INGRES, :DATA_ALTA, :MOTIU, :TOTAL_OLD'
      '    DO BEGIN'
      '        TOTAL_NEW = 0; EDAT = 0;'
      '        '
      '        FOR SELECT C_ITEM, D_ITEM'
      '        FROM ESCALESLIN'
      '        WHERE CLAU = :CLAU'
      '        ORDER BY C_ITEM'
      '        INTO :C_ITEM, :D_ITEM'
      '        DO BEGIN'
      '           IF (C_ITEM=1269) THEN'
      '           BEGIN'
      
        '               IF (D_ITEM='#39'Home'#39') THEN TOTAL_NEW = TOTAL_NEW + 1' +
        ';'
      '           END;'
      '           IF (C_ITEM=1270) THEN'
      '           BEGIN'
      
        '               IF      (D_ITEM='#39'Dia 1-14'#39')  THEN TOTAL_NEW = TOT' +
        'AL_NEW + 2;'
      
        '               ELSE IF (D_ITEM='#39'Dia 15-28'#39') THEN TOTAL_NEW = TOT' +
        'AL_NEW + 1;'
      '           END;'
      '           IF (C_ITEM=1271) THEN'
      '           BEGIN'
      
        '               IF      ((D_ITEM>=40) AND (D_ITEM<60)) THEN TOTAL' +
        '_NEW = TOTAL_NEW + 1;'
      
        '               ELSE IF ((D_ITEM>=60) AND (D_ITEM<80)) THEN TOTAL' +
        '_NEW = TOTAL_NEW + 3;'
      '               EDAT = D_ITEM;'
      '           END;'
      '           IF (C_ITEM=1272) THEN'
      '           BEGIN'
      
        '               IF      (D_ITEM<=15)                    THEN TOTA' +
        'L_NEW = TOTAL_NEW + 4;'
      
        '               ELSE IF ((D_ITEM>=20) AND (D_ITEM<=30)) THEN TOTA' +
        'L_NEW = TOTAL_NEW + 3;'
      
        '               ELSE IF ((D_ITEM>=35) AND (D_ITEM<=50)) THEN TOTA' +
        'L_NEW = TOTAL_NEW + 2;'
      
        '               ELSE IF ((D_ITEM>=55) AND (D_ITEM<=70)) THEN TOTA' +
        'L_NEW = TOTAL_NEW + 1;'
      '           END;'
      '           IF (C_ITEM=1273) THEN'
      '           BEGIN'
      
        '               SELECT CAST(PARAMS AS INTEGER) FROM CODICAMPS WHE' +
        'RE TIPUSCODI = "HOSS.DEAMBULA" AND N_CODI = :D_ITEM INTO :ITEM12' +
        '73;'
      
        '               IF (ITEM1273 IS NOT NULL) THEN TOTAL_NEW = TOTAL_' +
        'NEW + ITEM1273;'
      '           END;'
      '           IF ((C_ITEM=1274) OR (C_ITEM=1275)) THEN'
      '           BEGIN'
      '               IF (D_ITEM='#39'S'#237#39') THEN TOTAL_NEW = TOTAL_NEW + 2;'
      '           END;'
      '           IF ((C_ITEM=1276) OR (C_ITEM=1277)) THEN'
      '           BEGIN'
      '               IF (D_ITEM='#39'S'#237#39') THEN TOTAL_NEW = TOTAL_NEW + 1;'
      '           END;'
      '           IF (C_ITEM=1278) THEN'
      '           BEGIN'
      
        '               IF      (D_ITEM='#39'Amb SVP/SSP'#39')   THEN TOTAL_NEW =' +
        ' TOTAL_NEW + 1;'
      
        '               ELSE IF (D_ITEM='#39'Sense SVP/SSP'#39') THEN TOTAL_NEW =' +
        ' TOTAL_NEW + 3;'
      '           END;'
      '           IF (C_ITEM=1279) THEN'
      '           BEGIN'
      '               IF (D_ITEM='#39'S'#237#39') THEN TOTAL_NEW = TOTAL_NEW - 5;'
      '           END;'
      '        END;'
      '        '
      '        IF (OPCIO=2) THEN'
      '        BEGIN'
      
        '            UPDATE ESCALESLIN SET D_ITEM = :TOTAL_NEW WHERE CLAU' +
        '=:CLAU AND C_ITEM=1280;'
      '        END;'
      ''
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = EscalesCap
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
    Left = 944
    Top = 80
  end
  object P_Tract_EscPeriodiques: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscPeriodiques'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS (C_PROCES     INTEGER,'
      '         C_TRACTAMENT INTEGER,'
      '         C_HISTORIA   INTEGER,'
      '         C_PRESTACIO  CHAR(4),'
      '         DATA_INGRES  DATE,'
      '         DATA_ALTA    DATE,'
      '         DATA_PREALTA DATE,'
      '         EDAT         INTEGER,'
      '         C_GRUP       CHAR(1),'
      '         C_ESCALA     INTEGER,'
      '         N_ESCALA     VARCHAR(50),'
      '         C_AREA       VARCHAR(3),'
      '         PERIODICITAT SMALLINT'
      '         )'
      'AS'
      '/*  DECLARE VARIABLE GRUP        CHAR(1);'
      '  DECLARE VARIABLE EDAT        INTEGER;   */'
      '  DECLARE VARIABLE UM          SMALLINT;'
      '  DECLARE VARIABLE GLF         VARCHAR(15);'
      '  DECLARE VARIABLE DATA_ADM    DATE;'
      '  DECLARE VARIABLE EXISTEIX    INTEGER;'
      'BEGIN'
      ''
      
        '    FOR SELECT T.C_PROCES, T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRE' +
        'STACIO, T.DATA_INGRES, T.DATA_PREALTA, T.DATA_ALTA,'
      '               UM.C_GRUP, F.EDAT, F.C_UNITATMEDICA, F.GLF'
      '        FROM   TRACTAMENTS T'
      
        '        JOIN   DRETSPRESTA DP ON T.C_PRESTACIO = DP.C_PRESTACIO ' +
        'AND DP.C_DRET = "P231"'
      
        '        JOIN   DRETSMOTIU  DM ON T.C_MOTIU     = DM.C_MOTIU     ' +
        'AND DM.C_DRET = "X7"'
      '        JOIN   FILIACIO    F  ON T.C_HISTORIA  = F.NUM_HIST'
      '        JOIN   UNITATM     UM ON F.C_UNITATMEDICA = UM.C_UNITATM'
      '        WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      
        '        AND   (T.DATA_PREALTA IS NULL OR T.DATA_PREALTA >= "TODA' +
        'Y" + 15)'
      '        AND    F.FECHA_NAC IS NOT NULL'
      
        '        INTO  :C_PROCES, :C_TRACTAMENT, :C_HISTORIA, C_PRESTACIO' +
        ', DATA_INGRES, DATA_PREALTA, DATA_ALTA,'
      '              :C_GRUP, :EDAT, :UM, :GLF'
      '    DO BEGIN'
      ''
      '        C_ESCALA = NULL;'
      '        N_ESCALA = NULL;'
      '        C_AREA = NULL;'
      '        PERIODICITAT = NULL;'
      '        '
      
        '        FOR SELECT O.C_ESCALA, E.N_ESCALA, O.C_AREA, O.PERIODICI' +
        'TAT'
      '            FROM   ESCALESOBLIGACIONS O'
      '            JOIN   ESCALES E ON O.C_ESCALA = E.C_ESCALA'
      
        '            WHERE (O.C_PRESTACIO = :C_PRESTACIO OR O.C_PRESTACIO' +
        ' = "*")'
      '            AND    O.PERIODICITAT IS NOT NULL'
      
        '            AND   (O.GRUP = :C_GRUP  OR  O.GRUP = "*"  OR  (:GLF' +
        ' = "14.1" AND O.GRUP IN ("A","C")))'
      
        '            AND  ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = "N") ' +
        ' OR  (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = "S"))'
      '            INTO  :C_ESCALA, :N_ESCALA, :C_AREA, :PERIODICITAT'
      '        DO BEGIN'
      ''
      '            IF (C_ESCALA IS NOT NULL) THEN'
      '            BEGIN'
      ''
      '                  DATA_ADM = NULL;'
      ''
      
        '                  /* Busquem l'#39#250'ltima entrada de l'#39'escala obliga' +
        't'#242'ria */'
      '                  SELECT DATA_ADM'
      '                  FROM   ESCALESCAP'
      '                  WHERE  C_HISTORIA = :C_HISTORIA'
      '                  AND    C_ESCALA = :C_ESCALA'
      '                  AND    ANULAT = "N"'
      '                  ORDER  BY DATA_ADM DESC'
      '                  ROWS   1'
      '                  INTO  :DATA_ADM;'
      '            '
      
        '                  /* Si han passat m'#233's de X dies des de la darre' +
        'a entrada, la generem */'
      
        '                  IF ((DATA_ADM IS  NULL) OR (DATA_ADM + PERIODI' +
        'CITAT <= "TODAY")) THEN'
      '                  BEGIN'
      '                        EXISTEIX = 0;'
      '                        '
      
        '                        /* Excepte si ja est'#224' pendent (a l'#39'ingr'#233 +
        's o de control)  >>>>>>  aquestes no caducaran */'
      '                        SELECT COUNT(*)'
      '                        FROM   ESCALESPENDENTS E'
      
        '                        JOIN   TRACTAMENTS T ON E.C_TRACTAMENT =' +
        ' T.C_TRACTAMENT'
      '                        WHERE  T.C_HISTORIA = :C_HISTORIA'
      '                        AND    E.C_ESCALA = :C_ESCALA'
      '                        AND   (E.TIPUS = '#39'I'#39' OR E.TIPUS = '#39'C'#39')'
      '                        INTO  :EXISTEIX;'
      '                        '
      '                        IF (EXISTEIX = 0) THEN'
      '                        BEGIN'
      '                              SUSPEND;'
      '                              '
      '                              IF (EXECUTA = "S")'
      '                              THEN'
      
        '                                    INSERT INTO ESCALESPENDENTS ' +
        '(ID, C_TRACTAMENT, C_PROCES, C_ESCALA, C_AREA, TIPUS, ESTAT, DAT' +
        'A_PENDENT)'
      
        '                                    VALUES (GEN_ID(G_ESCALES_PEN' +
        'DENTS, 1), :C_TRACTAMENT, :C_PROCES, :C_ESCALA, :C_AREA, "C", 1,' +
        ' "NOW");'
      '                        END;'
      ''
      '                  END;'
      '            END;'
      '        END;'
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
    Left = 264
    Top = 80
  end
  object EvaPendents: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EvaPendents'
    ForceNombreDB = False
    Body.Strings = (
      '(HISTORIA INTEGER)'
      'RETURNS ('
      '  D_ITEM CHAR(1)'
      ')'
      'AS'
      '  DECLARE VARIABLE CLAU   INTEGER;'
      'BEGIN'
      ''
      '      SELECT MAX(CLAU)'
      '      FROM ESCALESCAP'
      '      WHERE C_HISTORIA = :HISTORIA'
      '      AND   C_ESCALA = 122'
      '      AND   ANULAT = '#39'N'#39
      '      INTO :CLAU;'
      ''
      '      SELECT f_lrtrim(D_ITEM)'
      '      FROM ESCALESLIN'
      '      WHERE CLAU = :CLAU'
      '      AND   C_ITEM = 1212'
      '      INTO :D_ITEM;'
      ''
      '      IF (D_ITEM = '#39'R'#39') THEN SUSPEND;'
      'END')
    Dic1 = EscalesCap
    Dic2 = EscalesLin
    Dic1Name = 'escalescap'
    Dic2Name = 'escaleslin'
    Abierta = False
    Borrame = False
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
    Top = 12
  end
  object RevisarEntrades: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RevisarEntrades'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (PROCES       INTEGER,'
      '         TRACTAMENT   INTEGER,'
      '         HISTORIA     INTEGER,'
      '         FI_PROCES    CHAR(1),'
      '         DATA_ALTA    DATE,'
      '         ESCALA       INTEGER,'
      '         CLAU         INTEGER,'
      '         DATA_ADM     DATE,'
      '         TIPUS        VARCHAR(1),'
      '         TIPUS_NOU    VARCHAR(1)'
      '         )'
      'AS'
      '  DECLARE VARIABLE DATANAIX     DATE;'
      '  DECLARE VARIABLE GRUP         CHAR(1);'
      '  DECLARE VARIABLE EDAT         INTEGER;'
      '  DECLARE VARIABLE UM           SMALLINT;'
      '  DECLARE VARIABLE GLF          VARCHAR(15);'
      '  DECLARE VARIABLE PRESTACIO    CHAR(4);'
      '  DECLARE VARIABLE DATA_INGRES  DATE;'
      '  DECLARE VARIABLE LESCALA      VARCHAR(50);'
      '  DECLARE VARIABLE OBLIGA_I     CHAR(1);'
      '  DECLARE VARIABLE OBLIGA_T     CHAR(1);'
      '  DECLARE VARIABLE OBLIGA_A     CHAR(1);'
      '  DECLARE VARIABLE OBLIGA_R     CHAR(1);'
      '  DECLARE VARIABLE OBLIGA_NOTIR CHAR(1);'
      '  DECLARE VARIABLE DIF          DOUBLE PRECISION;'
      'BEGIN'
      
        '      /* Canviar totes les entrades de tipus C a T/A si no tenen' +
        ' la T/A i tenen alta entrada (la que est'#224' m'#233's a prop de l'#39#39'alta ' +
        'amb +/- 15 dies) DATA_ADM */'
      
        '      /* Acordat amb BVG: llistar totes les altes 1004 i 2014 am' +
        'b data d'#39'alta des del 15.12.2024 fins avui'
      
        '         Per cada un d'#39'ells, recuperar totes les escales que t'#233' ' +
        'obligat'#242'ries'
      
        '         Per cada una d'#39'elles, recuperar l'#39'entrada no anul'#183'lada ' +
        'm'#233's propera a l'#39'alta (+/- 15 dies) i comparar el tipus amb el qu' +
        'e toqui (T/A segons FI_PROCES).'
      
        '                               Si no '#233's igual i l'#39'entrada s'#39'ha f' +
        'et al 2025 (data_adm>=1.1.2025), modificar el tipus a T/A  */'
      ''
      
        '      FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_PRESTACIO, T.' +
        'DATA_INGRES, T.DATA_ALTA, T.FI_PROCES, T.C_PROCES,'
      
        '                 UM.C_GRUP, F.EDAT, F.FECHA_NAC, F.C_UNITATMEDIC' +
        'A, F.GLF'
      '      FROM TRACTAMENTS T'
      
        '      JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND F.FECHA_N' +
        'AC IS NOT NULL'
      '      JOIN UNITATM UM ON F.C_UNITATMEDICA = UM.C_UNITATM'
      '      WHERE T.C_PRESTACIO IN ('#39'1004'#39','#39'2014'#39')'
      '      AND T.C_ESTATFAC <> 55 AND T.C_PROCES IS NOT NULL'
      
        '      AND T.DATA_ALTA IS NOT NULL AND T.DATA_ALTA >= :DATAI AND ' +
        'T.DATA_ALTA <= :DATAF'
      '      ORDER BY T.C_HISTORIA, T.C_TRACTAMENT'
      
        '      INTO :HISTORIA, :TRACTAMENT, :PRESTACIO, :DATA_INGRES, :DA' +
        'TA_ALTA, :FI_PROCES, :PROCES,'
      '           :GRUP, :EDAT, :DATANAIX, :UM, :GLF'
      '      DO BEGIN'
      
        '            FOR SELECT O.C_ESCALA, E.N_ESCALA, O.OBLIGA_I, O.OBL' +
        'IGA_T, O.OBLIGA_A, O.OBLIGA_R, O.OBLIGA_NOTIR'
      '            FROM    ESCALESOBLIGACIONS O'
      '            JOIN    ESCALES E ON O.C_ESCALA = E.C_ESCALA'
      
        '            WHERE  (O.GRUP = :GRUP OR O.GRUP = '#39'*'#39' OR (:GLF = '#39'1' +
        '4.1'#39' AND O.GRUP IN ('#39'A'#39','#39'C'#39'))) /* Per als Politraumatismes TCE+L' +
        'M s'#39'han de disparar tant les del grup A com les del grup C */'
      
        '            AND    (O.C_PRESTACIO = :PRESTACIO OR O.C_PRESTACIO ' +
        '= '#39'*'#39')'
      
        '            AND   ((:EDAT > O.EDATINFANTIL AND O.INFANTIL = '#39'N'#39')' +
        ' OR (:EDAT <= O.EDATINFANTIL AND O.INFANTIL = '#39'S'#39'))'
      '            ORDER  BY O.C_ESCALA'
      
        '            INTO  :ESCALA, :LESCALA, :OBLIGA_I, :OBLIGA_T, :OBLI' +
        'GA_A, :OBLIGA_R, :OBLIGA_NOTIR'
      '            DO BEGIN'
      '                IF (((FI_PROCES = '#39'S'#39') AND (OBLIGA_A = '#39'X'#39'))'
      
        '                OR  ((FI_PROCES = '#39'N'#39') AND (OBLIGA_T = '#39'X'#39'))) TH' +
        'EN'
      '                BEGIN'
      
        '                    SELECT CLAU, UPPER(TIPUS), DATA_ADM, MIN(F_I' +
        'BABS(:DATA_ALTA - DATA_ADM))'
      '                    FROM ESCALESCAP'
      '                    WHERE C_TRACTAMENT = :TRACTAMENT'
      
        '                    AND C_ESCALA = :ESCALA AND UPPER(TIPUS) <> '#39 +
        'I'#39
      
        '                    AND DATA_ADM >= :DATA_ALTA - 15 AND DATA_ADM' +
        ' <= :DATA_ALTA + 15'
      '                    GROUP BY CLAU, TIPUS, DATA_ADM'
      '                    ORDER BY 4'
      '                    ROWS 1'
      '                    INTO :CLAU, :TIPUS, :DATA_ADM, :DIF;'
      '                    '
      
        '                    IF      (FI_PROCES = '#39'S'#39') THEN TIPUS_NOU = '#39 +
        'A'#39';'
      
        '                    ELSE IF (FI_PROCES = '#39'N'#39') THEN TIPUS_NOU = '#39 +
        'T'#39';'
      '                    '
      
        '                    IF ((TIPUS <> TIPUS_NOU) AND (DATA_ADM > '#39'31' +
        '.12.2024'#39'))'
      '                    THEN SUSPEND;'
      '                END;'
      '            END;'
      '      END;'
      ''
      'END')
    Dic1 = EscalesCap
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
    Left = 619
    Top = 320
  end
end
