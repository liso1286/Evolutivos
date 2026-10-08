object wDataConfig: TwDataConfig
  OldCreateOrder = False
  Left = 319
  Top = 249
  Height = 650
  Width = 812
  object ServerHora: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ServerHora'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (Hora Date)'
      'AS'
      'BEGIN'
      '  HORA = "NOW";'
      '  SUSPEND;'
      'END')
    Select.Strings = (
      'SELECT * FROM P_CONFIG_SERVERHORA')
    Dic1 = Config
    Dic1Name = 'Config'
    Abierta = False
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
    ModiFecha = 36991.681027419
    Left = 220
    Top = 16
  end
  object Drets: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig de Dret'
        NombreDB = 'C_Dret'
        Longitud = 10
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'Descripcio'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMemo
        Nombre = 'Notas'
        NombreDB = 'Notas'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'DretOrdre'
        NombreDB = 'DretOrdre'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'es calcula per trigger'
      end>
    Indices = <
      item
        Nombre = 'OrdreDret'
        NombreDB = 'OrdreDret'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'DretOrdre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret'
        NombreDB = 'Dret'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'dig de Dret')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Drets'
    NombreTabla = 'Drets'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'dig de Dret'
      'Descripci'#243
      'DretOrdre')
    IndiceVer = 'OrdreDret'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37593.5086642014
    Left = 32
    Top = 75
  end
  object Accesos: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Acces'
        NombreDB = 'C_Acces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'Descripcio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Placa Ethernet'
        NombreDB = 'C_Placa'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'PLCCEN'
        NombreDB = 'PLCCEN'
        Longitud = 0
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'PLCTIP'
        NombreDB = 'PLCTIP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Login'
        NombreDB = 'C_Login'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Acces'
        NombreDB = 'Acces'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Acces')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Placa'
        NombreDB = 'Placa'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Placa Ethernet')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Login'
        NombreDB = 'Login'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Login')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Accesos'
    NombreTabla = 'Accesos'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Acces'
      'Descripci'#243
      'N'#186' Placa Ethernet'
      'PLCCEN'
      'PLCTIP'
      'Login')
    IndiceVer = 'Acces'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5204466204
    Left = 282
    Top = 16
  end
  object DretsAcces: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Acces'
        NombreDB = 'C_Acces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig de Dret'
        NombreDB = 'C_Dret'
        Longitud = 10
        Consulta = 'Dret'
        zType = tcIB_Char
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
          'Codi Acces'
          'C'#243'dig de Dret')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret'
        NombreDB = 'Dret'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'dig de Dret')
        Tipo = tiForaneo
        ForaneoDic = Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Acces'
        NombreDB = 'Acces'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Codi Acces')
        Tipo = tiForaneo
        ForaneoDic = Accesos
        ForaneoCampos.Strings = (
          'Codi Acces')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Dret'
        Master = Drets
        BuscaOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'c_dret starting with "A"'
      end>
    Nombre = 'Drets per Acc'#233's'
    NombreTabla = 'DretsAcces'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Acces'
      'C'#243'dig de Dret')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 3
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5204877662
    Left = 32
    Top = 131
  end
  object DretsEspecial: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig de Dret'
        NombreDB = 'C_Dret'
        Longitud = 10
        Consulta = 'Dret'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Especialitat'
        NombreDB = 'C_Especial'
        Longitud = 2
        zType = tcIB_Char
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
          'C'#243'dig de Dret'
          'C'#243'di Especialitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret'
        NombreDB = 'Dret'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'dig de Dret')
        Tipo = tiForaneo
        ForaneoDic = Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Especial'
        NombreDB = 'Especial'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'di Especialitat')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Dret'
        Master = Drets
        BuscaOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'c_dret starting with "E"'
      end>
    Nombre = 'Drets per Especialist.'
    NombreTabla = 'DretsEspecial'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'dig de Dret'
      'C'#243'di Especialitat')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 5
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5205153588
    Left = 223
    Top = 131
  end
  object DretsMetges: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig de Dret'
        NombreDB = 'C_Dret'
        Longitud = 10
        Consulta = 'Dret'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
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
          'C'#243'dig de Dret'
          'C'#243'dig Usuari')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Usuari'
        NombreDB = 'Usuari'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'dig Usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret'
        NombreDB = 'Dret'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'dig de Dret')
        Tipo = tiForaneo
        ForaneoDic = Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Dret'
        Master = Drets
        BuscaOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'c_dret starting with "M"'
      end>
    Nombre = 'Drets per Metge'
    NombreTabla = 'DretsMetgeS'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'dig de Dret'
      'C'#243'dig Usuari')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 6
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5205342477
    Left = 94
    Top = 131
  end
  object DretsGrup: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig de Dret'
        NombreDB = 'C_Dret'
        Longitud = 10
        Consulta = 'Dret'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        zType = tcIB_Char
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
          'C'#243'dig de Dret'
          'C'#243'di Grup')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret'
        NombreDB = 'Dret'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'dig de Dret')
        Tipo = tiForaneo
        ForaneoDic = Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grup'
        NombreDB = 'Grup'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'di Grup')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Dret'
        Master = Drets
        BuscaOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'c_dret starting with "G"'
      end>
    Nombre = 'Drets per Grups'
    NombreTabla = 'DretsGrups'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'dig de Dret'
      'C'#243'di Grup')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 3
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5204883449
    Left = 156
    Top = 131
  end
  object TrazaControl: TDic
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
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTATRAZA'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Acces'
        NombreDB = 'C_Acces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Access'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'Usuari'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'ExtraId'
        NombreDB = 'ExtraId'
        Longitud = 10
        Consulta = 'Extra'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Hora Entrada'
        NombreDB = 'HoraE'
        Longitud = 20
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Hora Sortida'
        NombreDB = 'HoraS'
        Longitud = 20
        MaskDisplay = 'dd"."mmm"."yyyy hh:nn:ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 6
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Status'
        NombreDB = 'Status'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Pc'
        NombreDB = 'NomPc'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Consulta'
        NombreDB = 'Consulta'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Aplicaci'#243
        NombreDB = 'Aplicacio'
        Longitud = 40
        Consulta = 'Aplicacio'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Refer'#232'ncia'
        NombreDB = 'Referencia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'c_tractament,c_factura, ... el que toqui segons taula'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup de l'#39'usuari'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'Grup'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Especialitat de l'#39'usuari'
        NombreDB = 'C_Especial'
        Longitud = 2
        Consulta = 'Especial'
        zType = tcIB_Char
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = True
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'PK')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Cronologic'
        NombreDB = 'Crono'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Hora Entrada')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Cronologic Desc'
        NombreDB = 'CronoDesc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Hora Entrada')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end>
    Consultas = <
      item
        Nombre = 'Access'
        Master = Accesos
        BuscaOrigen.Strings = (
          'Codi Acces')
        CopiarOrigen.Strings = (
          'Codi Acces')
        CopiarMaster.Strings = (
          'Codi Acces')
        BuscaMaster.Strings = (
          'Codi Acces')
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
        Nombre = 'Extra'
        Master = wDataBasics.MetgeExtra
        BuscaOrigen.Strings = (
          'Usuari'
          'ExtraId')
        CopiarOrigen.Strings = (
          'Usuari'
          'ExtraId')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari'
          'C'#243'dig Extra')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari'
          'C'#243'dig Extra')
        FiltroOrigen.Strings = (
          'Usuari')
        FiltroMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Aplicacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Aplicaci'#243)
        CopiarOrigen.Strings = (
          'Aplicaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI  = '#39'APLICACIONS'#39
      end
      item
        Nombre = 'Grup'
        Master = wDataBasics.Grups
        BuscaOrigen.Strings = (
          'Grup de l'#39'usuari')
        CopiarOrigen.Strings = (
          'Grup de l'#39'usuari')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end
      item
        Nombre = 'Especial'
        Master = wDataBasics.Especial
        BuscaOrigen.Strings = (
          'Especialitat de l'#39'usuari')
        CopiarOrigen.Strings = (
          'Especialitat de l'#39'usuari')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end>
    Nombre = 'TrazaControl'
    NombreTabla = 'TrazaControl'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Acces'
      'Usuari'
      'Hora Entrada'
      'Hora Sortida'
      'ExtraId'
      'N'#186' Hist'#242'ria')
    IndiceVer = 'Cronologic'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5204482407
    Left = 384
    Top = 16
  end
  object ContaTraza: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Conta'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN      '
      ''
      ''
      '      if (NEW.PK IS NULL) THEN NEW.PK = GEN_ID(CONTATRAZA,1) ;'
      'END')
    Dic1 = TrazaControl
    Abierta = False
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
    ModiFecha = 37650.8347200694
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 450
    Top = 16
  end
  object InfCabe: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCodigo
        Nombre = 'Informe'
        NombreDB = 'C_Informe'
        Longitud = 40
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMemo
        Nombre = 'Macros'
        NombreDB = 'Macros'
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
          'Informe')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Informes Capceleres'
    NombreTabla = 'InfCabe'
    Organiza = tbBase
    CamposVer.Strings = (
      'Informe')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5204491782
    Left = 32
    Top = 191
  end
  object DretsPresta: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig de Dret'
        NombreDB = 'C_Dret'
        Longitud = 10
        Consulta = 'Dret'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
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
          'C'#243'dig de Dret'
          'Prestaci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret'
        NombreDB = 'Dret'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C'#243'dig de Dret')
        Tipo = tiForaneo
        ForaneoDic = Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Especial'
        NombreDB = 'Especial'
        EsVirtual = False
        DelOnCascade = True
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
        Nombre = 'Dret'
        Master = Drets
        BuscaOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarOrigen.Strings = (
          'C'#243'dig de Dret')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'c_dret starting with "P"'
      end>
    Nombre = 'Drets per Prestacio'
    NombreTabla = 'DretsPresta'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'dig de Dret'
      'Prestaci'#243)
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 5
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5205159375
    Left = 291
    Top = 131
  end
  object Menus: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Men'#250
        NombreDB = 'C_Menu'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripcio Men'#250
        NombreDB = 'N_Menu'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'Menu'
        NombreDB = 'Menu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Men'#250)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Desc Menu'
        NombreDB = 'N_Menu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Men'#250
          'Descripcio Men'#250)
        Tipo = tiSecundario
        Unico = True
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Menus'
    NombreTabla = 'Menus'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Men'#250
      'Descripcio Men'#250)
    IndiceVer = 'Menu'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5204466204
    Left = 32
    Top = 365
  end
  object MenusAcces: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Men'#250
        NombreDB = 'C_Menu'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Acces'
        NombreDB = 'C_Acces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Nivell'
        NombreDB = 'Nivell'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Impresions'
        NombreDB = 'Impresions'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end>
    Indices = <
      item
        Nombre = 'pkMenu'
        NombreDB = 'pkMenu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Men'#250
          'Codi Acces')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Acces'
        NombreDB = 'Acces'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Codi Acces')
        Tipo = tiForaneo
        ForaneoDic = Accesos
        ForaneoCampos.Strings = (
          'Codi Acces')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Menu'
        NombreDB = 'Menu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Men'#250)
        Tipo = tiForaneo
        ForaneoDic = Menus
        ForaneoCampos.Strings = (
          'Codi Men'#250)
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'MenusAcces'
    NombreTabla = 'MenusAcces'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Men'#250
      'Codi Acces'
      'Nivell'
      'Impresions')
    IndiceVer = 'pkMenu'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5204466204
    Left = 92
    Top = 365
  end
  object InfCabeTexte: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCodigo
        Nombre = 'Informe'
        NombreDB = 'C_Informe'
        Longitud = 40
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
        Aplica = kcMemo
        Nombre = 'Texte'
        NombreDB = 'Texte'
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
          'Informe'
          'Idioma')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'InfCabe'
        NombreDB = 'InfCabe'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Informe')
        Tipo = tiForaneo
        ForaneoDic = InfCabe
        ForaneoCampos.Strings = (
          'Informe')
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
      end>
    Nombre = 'Informes Capceleres Texte'
    NombreTabla = 'InfCabeTexte'
    Organiza = tbBase
    CamposVer.Strings = (
      'Informe'
      'Idioma'
      'Texte')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5204491782
    Left = 92
    Top = 191
  end
  object Config: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Clau'
        NombreDB = 'Clau'
        Longitud = 3
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Minuts Desconexi'#243
        NombreDB = 'Minuts'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '2'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Path Epi'
        NombreDB = 'PathEpi'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Path Fili'
        NombreDB = 'PathFili'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Path Gestio'
        NombreDB = 'PathGestio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Path Curs'
        NombreDB = 'PathCurs'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Path Analitica'
        NombreDB = 'PathAnal'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Path Farma'
        NombreDB = 'PathFarma'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Path Stocks'
        NombreDB = 'PathStocs'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Negrita On'
        NombreDB = 'NegritaOn'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Negrita Off'
        NombreDB = 'NegritaOff'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Subrrallat On'
        NombreDB = 'SubrrallayOn'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Subrrallat Off'
        NombreDB = 'SubrrallatOff'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Grande'
        NombreDB = 'Grande'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Normal'
        NombreDB = 'Normal'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Texte Revi'
        NombreDB = 'TexteRevi'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Texto Revi'
        NombreDB = 'TextoRevi'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Texte Inf.Alta'
        NombreDB = 'TexteInfAlta'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Texto Inf.Alta'
        NombreDB = 'TextoInfAlta'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Unitat Red comuna:'
        NombreDB = 'UnitatRed'
        Longitud = 10
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Init Print'
        NombreDB = 'InitPrint'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Lin. per p'#224'gina'
        NombreDB = 'LinPag'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '61'
      end
      item
        Aplica = kcMemo
        Nombre = 'Texte Full ProvaEsp'
        NombreDB = 'TexteProva'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Texto Hoja ProvaEsp'
        NombreDB = 'TextoProva'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Path Exe Curs'
        NombreDB = 'PathExe'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Maxim de Finestres Obertes'
        NombreDB = 'MaxFinestres'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '5'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Minuts Desconexi'#243' Admissions'
        NombreDB = 'MinutsAdmissions'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '3'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Abreviacio Moneda Cat'
        NombreDB = 'MonedaCatCurt'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Abreviacio Moneda Esp'
        NombreDB = 'MonedaEspCurt'
        Longitud = 5
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Moneda Catal'#224
        NombreDB = 'MonedaCat'
        Longitud = 8
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Moneda Espanyol'
        NombreDB = 'MonedaEsp'
        Longitud = 8
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a'
        NombreDB = 'Adresa'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ciutat'
        NombreDB = 'Ciutat'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a Curta'
        NombreDB = 'Adresa2'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Serie Factu Rappels'
        NombreDB = 'SerieRappels'
        Longitud = 40
        Consulta = 'Series'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumPorcentaje
        Nombre = 'Iva1'
        NombreDB = 'Iva1'
        Longitud = 5
        MaskDisplay = '#,##0.###" %";; '
        zType = tcIB_Double
        zNotNull = False
        zDefault = '16'
      end
      item
        Aplica = kcNumPorcentaje
        Nombre = 'Iva2'
        NombreDB = 'Iva2'
        Longitud = 5
        MaskDisplay = '#,##0.###" %";; '
        zType = tcIB_Double
        zNotNull = False
        zDefault = '7'
      end
      item
        Aplica = kcNumPorcentaje
        Nombre = 'Iva3'
        NombreDB = 'Iva3'
        Longitud = 5
        MaskDisplay = '#,##0.###" %";; '
        zType = tcIB_Double
        zNotNull = False
        zDefault = '4'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Unitat Productiva'
        NombreDB = 'C_UP'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Hospital'
        NombreDB = 'N_Hospital'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'NIF'
        NombreDB = 'NIF'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CC Guttmann'
        NombreDB = 'CCGuttmann'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Responsable departament Facturaci'#243
        NombreDB = 'Resp_Factu'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cap de Servei de Farm'#224'cia'
        NombreDB = 'Resp_Farma'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Regio Sanitaria'
        NombreDB = 'N_RegioSanitaria'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a Regio Sanitaria'
        NombreDB = 'AdresaRegioSanitaria'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Ordre SCS Internet'
        NombreDB = 'OrdreInternet'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'NIF SCS'
        NombreDB = 'SCS_Nif'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Previsio Facturacio'
        NombreDB = 'DataPrevisio'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Iva Medicaments'
        NombreDB = 'IvaMedicaments'
        Longitud = 2
        zType = tcIB_Numeric
        zNotNull = True
        zDefault = '4'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Iva Parafarm'#224'cia'
        NombreDB = 'IvaParafarmacia'
        Longitud = 2
        zType = tcIB_Numeric
        zNotNull = True
        zDefault = '7'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Iva Serveis Generals'
        NombreDB = 'IvaSG'
        Longitud = 2
        zType = tcIB_Numeric
        zNotNull = True
        zDefault = '16'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Moviment Entrades Prov'
        NombreDB = 'C_EntradesProv'
        Longitud = 2
        Consulta = 'T_Mov1'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Moviment Devolucions Prov'
        NombreDB = 'C_DevolucionsProv'
        Longitud = 2
        Consulta = 'T_Mov2'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Moviment Entrades Bonificacio'
        NombreDB = 'C_EntradesBoni'
        Longitud = 2
        Consulta = 'T_Mov3'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Moviment Sortides Centres'
        NombreDB = 'C_SortidaCentre'
        Longitud = 2
        Consulta = 'T_Mov4'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Moviment Devolucio Centre'
        NombreDB = 'C_DevolucioCentre'
        Longitud = 2
        Consulta = 'T_Mov5'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Moviment Devolucio Pvove'#239'dor Bonificacio'
        NombreDB = 'C_DevolucioProvBoni'
        Longitud = 2
        Consulta = 'T_Mov6'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Moviment Altres 2'
        NombreDB = 'C_Altres2'
        Longitud = 2
        Consulta = 'T_Mov7'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Moviment Tancament Mes'
        NombreDB = 'C_TancamentMes'
        Longitud = 2
        Consulta = 'T_Mov8'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Regularitzacio Tancament'
        NombreDB = 'C_RegularitzacioTancament'
        Longitud = 2
        Consulta = 'T_Mov9'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dies Seguretat Stock'
        NombreDB = 'DiesSeguretatStock'
        Longitud = 2
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dies Reposici'#243' Stock'
        NombreDB = 'DiesReposicioStock'
        Longitud = 2
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Texte Albarans'
        NombreDB = 'TexteAlbarans'
        Longitud = 500
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Texte Albarans Castell'#224
        NombreDB = 'TexteAlbarans2'
        Longitud = 500
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Tancament Contable'
        NombreDB = 'TancamentContable'
        Longitud = 20
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Comptador Comandes'
        NombreDB = 'ComptadorComandes'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Any En Curs (per numeraci'#243')'
        NombreDB = 'AnyEnCurs'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'CaducitatOM'
        NombreDB = 'CaducitatOM'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
        zDefault = '10'
      end
      item
        Aplica = kcMODELS
        Nombre = 'CaducitatInfermeria'
        NombreDB = 'CaducitatInfermeria'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
        zDefault = '10'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hores Valida Curs'
        NombreDB = 'HoresValidaCurs'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre de Cost Regularitzaci'#243
        NombreDB = 'CCRegularitzacio'
        Longitud = 5
        Consulta = 'cc'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre de cost Stocks'
        NombreDB = 'CCStocks'
        Longitud = 5
        Consulta = 'cc2'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre de cost Med.Us Hosp.'
        NombreDB = 'CCMedicaments'
        Longitud = 5
        Consulta = 'cc3'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre de Cost Farm'#224'cia'
        NombreDB = 'CCFarma'
        Longitud = 5
        Consulta = 'cc4'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre de Cost Existencies'
        NombreDB = 'CCExistencies'
        Longitud = 5
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge Interfer'#243
        NombreDB = 'MetgeInterfero'
        Longitud = 5
        Consulta = 'metgeInterf'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Compte Difer'#232'ncies Stocks'
        NombreDB = 'CompteDifStocks'
        Longitud = 11
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Compte Farmacia'
        NombreDB = 'CompteFarmacia'
        Longitud = 11
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Anal'#237'tiques RMP'
        NombreDB = 'AnalitRMP'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tel'#232'fon Farm'#224'cia'
        NombreDB = 'TelefonFarmacia'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Anal'#237'tiques RMP Home 50'
        NombreDB = 'AnalitRMPH50'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Fax Farm'#224'cia'
        NombreDB = 'FaxFarmacia'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal d'#39'Iva Exempt Catal'#224
        NombreDB = 'IvaExempt'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal d'#39'Iva Exempt Castell'#224
        NombreDB = 'IvaExempt2'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Duracio Dispensaci'#243
        NombreDB = 'DuracioDisp'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Quantes anotacions veure'
        NombreDB = 'QuantesAnotacions'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '20'
      end
      item
        Aplica = kcMemo
        Nombre = 'Anal'#237'tiques RMP H50 unitat 2'
        NombreDB = 'AnalitRMPH50_2'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Anal'#237'tiques RMP unitat 2'
        NombreDB = 'AnaliRMP_2'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Caducitat escales ingr'#233's'
        NombreDB = 'CaducitatEscalesI'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dies escales alta'
        NombreDB = 'DiesEscalesA'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Caducitat escales alta'
        NombreDB = 'CaducitatEscalesA'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Caducitat escales revisi'#243
        NombreDB = 'CaducitatEscalesR'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Anal'#237'tiques RMP LM'
        NombreDB = 'AnalitRMP_LM'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Anal'#237'tiques RMP 50 LM'
        NombreDB = 'AnalitRMP50_LM'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Num fitxer IRF-PAI'
        NombreDB = 'NUMIRFPAI'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Texte Informe Sol'#183'licitat'
        NombreDB = 'TexteInfSol'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Texto Informe Sol'#183'lictat'
        NombreDB = 'TextoInfSol'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Linies per p'#224'gina Guia Farmacoterap'#232'utica'
        NombreDB = 'LinPerPag_GuiaFarma'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi UP Pades'
        NombreDB = 'C_UP_SS'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'NIF Pades'
        NombreDB = 'SS_NIF'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CC Pades'
        NombreDB = 'CCGuttPades'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a Pades'
        NombreDB = 'ADRESA_SS'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Fundaci'#243
        NombreDB = 'N_FUNDACIO'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom regi'#243' sanit'#224'ria Pades'
        NombreDB = 'N_RS_SS'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a RS Pades'
        NombreDB = 'ADRESARS_SS'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ciutat Pades'
        NombreDB = 'CIUTAT_SS'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Serie Factu Pades'
        NombreDB = 'SERIEPADES'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Posici'#243' pressupost'#224'ria aguts'
        NombreDB = 'PPAGUTS'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Posici'#243' pressupost'#224'ria mhda'
        NombreDB = 'PPMHDA'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Posici'#243' pressupost'#224'ria mat.incontin'#232'ncia'
        NombreDB = 'PPMINCON'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Posici'#243' pressupost'#224'ria mat.ortoprot'#232'tic'
        NombreDB = 'PPMORTO'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Posici'#243' pressupost'#224'ria PADES'
        NombreDB = 'PPPADES'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Conveni Unespa Actiu'
        NombreDB = 'ConveniUnespa'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Text Inf Alta Revi'
        NombreDB = 'TextInfAltaRevi'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcMemo
        Nombre = 'Texto Inf Alta Revi'
        NombreDB = 'TextoInfAltaRevi'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Serie Factu NPC'
        NombreDB = 'SERIENPC'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Clau RCA'
        NombreDB = 'RCA_CLAU'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VERSIO_CIM'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fusi'#243
        NombreDB = 'DATA_FUSIO'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data HL7 Estocs'
        NombreDB = 'DATA_ESTOCS_HL7'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero fitxer DCMIH'
        NombreDB = 'NUM_DCMIH'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'DataConsolidatFins'
        NombreDB = 'DataConsolidatFins'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Caducitat OM cr'#242'nica'
        NombreDB = 'CaducitatOMcronica'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dies av'#237's OM caduca'
        NombreDB = 'DiesAvisOMCaduca'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'amb quants dies d'#39'antelaci'#243' avisem que les OM caduquen'
      end
      item
        Aplica = kcMODELS
        Nombre = 'M'#224'xim passis cap de setmana'
        NombreDB = 'MaxPassisCdS'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 
          'm'#224'xim n'#250'mero de passis de cap de setmana recomanats abans de l'#39'a' +
          'lta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Vacuna Covid - mesos dosi R'
        NombreDB = 'VAC_COVID_MESOS'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 
          'n'#250'mero de mesos des de l'#39#250'ltima administraci'#243' (completa o de ref' +
          'or'#231'), per indicar que toca nova dosi i per permetre administraci' +
          #243' dosi de refor'#231
      end
      item
        Aplica = kcMODELS
        Nombre = 'Vacuna Pfizer - mesos 2a dosi'
        NombreDB = 'VAC_PFIZER2_DIES'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 
          'n'#250'mero de dies des de la 1a dosi de Pfizer per permetre administ' +
          'raci'#243' 2a dosi'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Vacuna Moderna - mesos 2a dosi'
        NombreDB = 'VAC_MODERNA2_DIES'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 
          'n'#250'mero de dies des de la 1a dosi de Moderna per permetre adminis' +
          'traci'#243' 2a dosi'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dies prestacions recents'
        NombreDB = 'DIESPRESTARECENTS'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dies caducitat escales alta ingressos'
        NombreDB = 'CADUCITATESCALESA1004'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'amb '#237'tems que es bolquen a l'#39'informe d'#39'alta'
      end>
    Indices = <
      item
        Nombre = 'Clau'
        NombreDB = 'Clau'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Clau')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Series'
        Master = wDataFactu.FacNums
        BuscaOrigen.Strings = (
          'Serie Factu Rappels')
        CopiarOrigen.Strings = (
          'Serie Factu Rappels')
        CopiarMaster.Strings = (
          'Serie')
        BuscaMaster.Strings = (
          'Serie')
      end
      item
        Nombre = 'T_Mov1'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Moviment Entrades Prov')
        CopiarOrigen.Strings = (
          'Codi Moviment Entrades Prov')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT = "V"'
      end
      item
        Nombre = 'T_Mov2'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Moviment Devolucions Prov')
        CopiarOrigen.Strings = (
          'Codi Moviment Devolucions Prov')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT = "V"'
      end
      item
        Nombre = 'T_Mov3'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Moviment Entrades Bonificacio')
        CopiarOrigen.Strings = (
          'Codi Moviment Entrades Bonificacio')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT = "V"'
      end
      item
        Nombre = 'T_Mov4'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Moviment Sortides Centres')
        CopiarOrigen.Strings = (
          'Codi Moviment Sortides Centres')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT = "V"'
      end
      item
        Nombre = 'T_Mov5'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Moviment Devolucio Centre')
        CopiarOrigen.Strings = (
          'Codi Moviment Devolucio Centre')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT = "V"'
      end
      item
        Nombre = 'T_Mov6'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Moviment Devolucio Pvove'#239'dor Bonificacio')
        CopiarOrigen.Strings = (
          'Codi Moviment Devolucio Pvove'#239'dor Bonificacio')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT= "V"'
      end
      item
        Nombre = 'T_Mov7'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Moviment Altres 2')
        CopiarOrigen.Strings = (
          'Codi Moviment Altres 2')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT = "V"'
      end
      item
        Nombre = 'T_Mov8'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Moviment Tancament Mes')
        CopiarOrigen.Strings = (
          'Codi Moviment Tancament Mes')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT = "V"'
      end
      item
        Nombre = 'T_Mov9'
        Master = wDataOMComun.Tipus_Mov
        BuscaOrigen.Strings = (
          'Codi Regularitzacio Tancament')
        CopiarOrigen.Strings = (
          'Codi Regularitzacio Tancament')
        CopiarMaster.Strings = (
          'Tipus Moviment')
        BuscaMaster.Strings = (
          'Tipus Moviment')
        WhereFiltro = 'C_ESTAT ="V"'
      end
      item
        Nombre = 'cc'
        Master = wDataOMComun.CentresCostos
        BuscaOrigen.Strings = (
          'Centre de Cost Regularitzaci'#243)
        CopiarOrigen.Strings = (
          'Centre de Cost Regularitzaci'#243)
        CopiarMaster.Strings = (
          'Centre de Cost')
        BuscaMaster.Strings = (
          'Centre de Cost')
      end
      item
        Nombre = 'cc2'
        Master = wDataOMComun.CentresCostos
        BuscaOrigen.Strings = (
          'Centre de cost Stocks')
        CopiarOrigen.Strings = (
          'Centre de cost Stocks')
        CopiarMaster.Strings = (
          'Centre de Cost')
        BuscaMaster.Strings = (
          'Centre de Cost')
      end
      item
        Nombre = 'cc3'
        Master = wDataOMComun.CentresCostos
        BuscaOrigen.Strings = (
          'Centre de cost Med.Us Hosp.')
        CopiarOrigen.Strings = (
          'Centre de cost Med.Us Hosp.')
        CopiarMaster.Strings = (
          'Centre de Cost')
        BuscaMaster.Strings = (
          'Centre de Cost')
      end
      item
        Nombre = 'metgeInterf'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge Interfer'#243)
        CopiarOrigen.Strings = (
          'Metge Interfer'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        WhereFiltro = 'C_GRUP = "ME" AND C_ESPECIAL = "02"'
      end
      item
        Nombre = 'cc4'
        Master = wDataOMComun.CentresCostos
        BuscaOrigen.Strings = (
          'Centre de Cost Farm'#224'cia')
        CopiarOrigen.Strings = (
          'Centre de Cost Farm'#224'cia')
        CopiarMaster.Strings = (
          'Centre de Cost')
        BuscaMaster.Strings = (
          'Centre de Cost')
      end>
    Nombre = 'Parametres de configuraci'#243
    NombreTabla = 'Config'
    Organiza = tbBase
    CamposVer.Strings = (
      'Clau')
    IndiceVer = 'Clau'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37434.762079294
    Left = 32
    Top = 16
  end
  object T_Ordre_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Ordre_BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '      IF (USER <> "REPLICATOR") THEN'
      '      BEGIN'
      
        '            NEW.DRETORDRE = F_Left(NEW.C_DRET, 1) || F_Justifica' +
        '(F_LRTrim(F_Mid(NEW.C_DRET, 1, 10)), 5) || " " || NEW.DESCRIPCIO' +
        ';'
      '      END;'
      'END')
    Dic1 = Drets
    Dic1Name = 'drets'
    Abierta = False
    Borrame = False
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
    Left = 80
    Top = 75
  end
  object T_Ordre_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Ordre_BU'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '      IF (USER <> "REPLICATOR") THEN'
      '      BEGIN'
      
        '            IF ((OLD.C_DRET <> NEW.C_DRET) OR (OLD.DESCRIPCIO <>' +
        ' NEW.DESCRIPCIO))'
      
        '            THEN NEW.DRETORDRE = F_Left(NEW.C_DRET, 1) || F_Just' +
        'ifica(F_LRTrim(F_Mid(NEW.C_DRET, 1, 10)), 5) || " " || NEW.DESCR' +
        'IPCIO;'
      '      END;'
      'END')
    Dic1 = Drets
    Dic1Name = 'drets'
    Abierta = False
    Borrame = False
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
    Left = 141
    Top = 75
  end
  object InformesImprimir: TDic
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
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom informe'
        NombreDB = 'Nom_Informe'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data validat'
        NombreDB = 'Data_validat'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom informe dest'#237
        NombreDB = 'Nom_Desti'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Signat'
        NombreDB = 'Signat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge valida'
        NombreDB = 'Metge_Valida'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari'
        NombreDB = 'Comentari'
        Longitud = 100
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
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Tractament'
          'Data validat')
        Tipo = tiPrimario
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
          'Data validat')
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
        Nombre = 'id_informe'
        NombreDB = 'id_informe'
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
    Consultas = <>
    Nombre = 'Informes Imprimir (secret'#224'ries m'#232'diques)'
    NombreTabla = 'INFORMESIMPRIMIR'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Tractament'
      'Tipus'
      'Nom informe'
      'Data validat'
      'Nom informe dest'#237
      'Signat')
    IndiceVer = 'data'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 248
  end
  object InformesValidar: TDic
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
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data signatura fellow'
        NombreDB = 'Data_Fellow'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Fellow'
        NombreDB = 'C_Fellow'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'c_tractament'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Tractament')
        Tipo = tiPrimario
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
          'Data signatura fellow')
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
      end>
    Consultas = <>
    Nombre = 'Informes Validar (caps cl'#237'nics)'
    NombreTabla = 'INFORMESVALIDAR'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Tractament'
      'Tipus'
      'Data signatura fellow')
    IndiceVer = 'data'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 112
    Top = 248
  end
  object Resum: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Resum'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (GRUP         VARCHAR(40),'
      '         ESPECIALITAT VARCHAR(20),'
      '         SUMA         INTEGER,'
      '         SUMB         INTEGER,'
      '         SUMC         INTEGER,'
      '         SUMCT        INTEGER,     /* '#199' */'
      '         SUMD         INTEGER,'
      '         SUME         INTEGER,'
      '         SUMF         INTEGER,'
      '         SUMG         INTEGER,'
      '         SUMH         INTEGER,'
      '         SUMI         INTEGER,'
      '         SUMJ         INTEGER,'
      '         SUMK         INTEGER,'
      '         SUML         INTEGER,'
      '         SUMM         INTEGER,'
      '         SUMN         INTEGER,'
      '         SUMNY        INTEGER,    /* '#209' */'
      '         SUMO         INTEGER,'
      '         SUMP         INTEGER,'
      '         SUMQ         INTEGER,'
      '         SUMR         INTEGER,'
      '         SUMS         INTEGER,'
      '         SUMT         INTEGER,    /* no cal mostrar-la */'
      '         SUMU         INTEGER,'
      '         SUMV         INTEGER,'
      '         SUMX         INTEGER,'
      '         SUMW         INTEGER,'
      '         SUM_a        INTEGER,'
      '         SUM_b        INTEGER,'
      '         SUM_c        INTEGER,'
      '         SUM_d        INTEGER,'
      '         SUM_e        INTEGER,'
      '         SUM_f        INTEGER,'
      '         SUM_g        INTEGER,'
      '         SUM_h        INTEGER,'
      '         SUM_i        INTEGER,'
      '         SUM_j        INTEGER,'
      '         SUM_k        INTEGER,'
      '         SUM_l        INTEGER,'
      '         SUM_m        INTEGER,'
      '         SUM_n        INTEGER,'
      '         SUM_o        INTEGER,'
      '         SUM_p        INTEGER,'
      '         SUM_q        INTEGER,'
      '         SUM_r        INTEGER,'
      '         SUM_s        INTEGER,'
      '         SUM_t        INTEGER,'
      '         SUM_u        INTEGER,'
      '         SUM_v        INTEGER,'
      '         SUM_x        INTEGER,'
      '         SUM_y        INTEGER,'
      '         SUM_z        INTEGER,'
      '         SUM_aa       INTEGER,  /* '#228' */'
      '         SUM_ee       INTEGER,  /* '#235' */'
      '         SUM_ii       INTEGER,  /* '#239' */'
      '         SUM_uu       INTEGER,  /* '#252' */'
      '         SUM_iii      INTEGER,  /* '#238' */'
      '         SUM_w        INTEGER,  /* w */'
      '         SUM_RESTA    INTEGER,'
      '         S_ECB        INTEGER,  /* ECB: G i '#228'*/'
      '         S_IMATGES    INTEGER,  /* D, d, i*/'
      '         S_QUIROFAN   INTEGER,  /* Q, q */'
      '         S_INTERCON   INTEGER,  /* I, O, y */'
      '         S_INFER      INTEGER,  /* n, t, g, b, c, a, r */'
      '         S_ALTRES     INTEGER,  /* U, l, H i altres */'
      '         S_UROLOGIA   INTEGER,  /* '#252' i v */'
      '         S_PE         INTEGER,  /* P i x */'
      '         S_OM         INTEGER,  /* OM: o i J*/'
      
        '         S_ADMIS      INTEGER,  /* ADMISSIONS: h, j, k, m, '#235', '#239',' +
        ' w, s */'
      '         S_MHDA       INTEGER,  /* MHDA: '#209', M, K */'
      '         S_EASE       INTEGER,  /* EASE: '#199' */'
      '         S_CE         INTEGER,  /* CE: F i u */'
      '         S_ALTES      INTEGER,  /* E i f */'
      
        '         TOTAL_E      INTEGER   /* total per especialitat (sense' +
        ' '#39'T'#39')*/'
      '         )'
      'AS'
      '    DECLARE VARIABLE LONGITUD INTEGER;'
      '    DECLARE VARIABLE GRUP_ANT VARCHAR(40);'
      '    DECLARE VARIABLE GRUP_ACT VARCHAR(40);'
      '    DECLARE VARIABLE ESPE_ANT VARCHAR(20);'
      '    DECLARE VARIABLE ESPE_ACT VARCHAR(20);'
      '    DECLARE VARIABLE BUCLE    INTEGER;'
      '    DECLARE VARIABLE LLETRA   CHAR(1);'
      '    DECLARE VARIABLE STATUS   VARCHAR(10);'
      '    DECLARE VARIABLE USUARI   VARCHAR(5);'
      ''
      '    DECLARE VARIABLE TOTA     INTEGER;'
      '    DECLARE VARIABLE TOTB     INTEGER;'
      '    DECLARE VARIABLE TOTC     INTEGER;'
      '    DECLARE VARIABLE TOTCT    INTEGER;'
      '    DECLARE VARIABLE TOTD     INTEGER;'
      '    DECLARE VARIABLE TOTE     INTEGER;'
      '    DECLARE VARIABLE TOTF     INTEGER;'
      '    DECLARE VARIABLE TOTG     INTEGER;'
      '    DECLARE VARIABLE TOTH     INTEGER;'
      '    DECLARE VARIABLE TOTI     INTEGER;'
      '    DECLARE VARIABLE TOTJ     INTEGER;'
      '    DECLARE VARIABLE TOTK     INTEGER;'
      '    DECLARE VARIABLE TOTL     INTEGER;'
      '    DECLARE VARIABLE TOTM     INTEGER;'
      '    DECLARE VARIABLE TOTN     INTEGER;'
      '    DECLARE VARIABLE TOTNY    INTEGER;'
      '    DECLARE VARIABLE TOTO     INTEGER;'
      '    DECLARE VARIABLE TOTP     INTEGER;'
      '    DECLARE VARIABLE TOTQ     INTEGER;'
      '    DECLARE VARIABLE TOTR     INTEGER;'
      '    DECLARE VARIABLE TOTS     INTEGER;'
      '    DECLARE VARIABLE TOTU     INTEGER;'
      
        '    DECLARE VARIABLE TOTT     INTEGER;  /* AQUEST NO EL FAREM SE' +
        'RVIR */'
      '    DECLARE VARIABLE TOTV     INTEGER;'
      '    DECLARE VARIABLE TOTX     INTEGER;'
      '    DECLARE VARIABLE TOTW     INTEGER;'
      '    DECLARE VARIABLE TOT_a    INTEGER;'
      '    DECLARE VARIABLE TOT_b    INTEGER;'
      '    DECLARE VARIABLE TOT_c    INTEGER;'
      '    DECLARE VARIABLE TOT_d    INTEGER;'
      '    DECLARE VARIABLE TOT_e    INTEGER;'
      '    DECLARE VARIABLE TOT_f    INTEGER;'
      '    DECLARE VARIABLE TOT_g    INTEGER;'
      '    DECLARE VARIABLE TOT_h    INTEGER;'
      '    DECLARE VARIABLE TOT_i    INTEGER;'
      '    DECLARE VARIABLE TOT_j    INTEGER;'
      '    DECLARE VARIABLE TOT_k    INTEGER;'
      '    DECLARE VARIABLE TOT_l    INTEGER;'
      '    DECLARE VARIABLE TOT_m    INTEGER;'
      '    DECLARE VARIABLE TOT_n    INTEGER;'
      '    DECLARE VARIABLE TOT_o    INTEGER;'
      '    DECLARE VARIABLE TOT_p    INTEGER;'
      '    DECLARE VARIABLE TOT_q    INTEGER;'
      '    DECLARE VARIABLE TOT_r    INTEGER;'
      '    DECLARE VARIABLE TOT_s    INTEGER;'
      '    DECLARE VARIABLE TOT_t    INTEGER;'
      '    DECLARE VARIABLE TOT_u    INTEGER;'
      '    DECLARE VARIABLE TOT_ALTRES INTEGER;'
      '    DECLARE VARIABLE TOT_aa   INTEGER;'
      '    DECLARE VARIABLE TOT_ee   INTEGER;'
      '    DECLARE VARIABLE TOT_ii   INTEGER;'
      '    DECLARE VARIABLE TOT_uu   INTEGER;'
      '    DECLARE VARIABLE TOT_iii  INTEGER;'
      '    DECLARE VARIABLE TOT_w    INTEGER;'
      '    DECLARE VARIABLE TOT_v    INTEGER;'
      '    DECLARE VARIABLE TOT_x    INTEGER;'
      '    DECLARE VARIABLE TOT_y    INTEGER;'
      '    DECLARE VARIABLE TOT_z    INTEGER;'
      '    DECLARE VARIABLE TOT_RESTA INTEGER;'
      'BEGIN'
      ''
      '    /* INICIALITZEM VARIABLES */'
      
        '    GRUP_ACT=NULL; GRUP_ANT=NULL; ESPE_ACT=NULL; ESPE_ANT=NULL; ' +
        'USUARI=NULL; LONGITUD = 0;'
      
        '    SUMA=0;SUMB=0;SUMC=0;SUMCT=0;SUMD=0;SUMD=0;SUME=0;SUMF=0;SUM' +
        'G=0;SUMI=0;SUMK=0;SUML=0;SUMM=0;SUMN=0;SUMNY=0;SUMO=0;SUMP=0;SUM' +
        'Q=0;SUMR=0;SUMS=0;'
      '    SUMT=0;SUMU=0;SUMV=0;SUMX=0;SUMW=0;'
      
        '    SUM_a=0;SUM_b=0;SUM_c=0;SUM_d=0;SUM_e=0;SUM_g=0;SUM_i=0;SUM_' +
        'l=0;SUM_n=0;SUM_o=0;SUM_p=0;SUM_q=0;SUM_t=0;SUM_u=0;SUM_aa=0;SUM' +
        '_RESTA=0;SUM_uu=0;'
      
        '    SUM_v=0;SUM_x=0;SUMH=0;SUM_f=0;SUMJ=0;SUM_h=0;SUM_j=0;SUM_k=' +
        '0;SUM_m=0;SUM_iii=0;SUM_ee=0;SUM_ii=0;SUM_w=0;SUM_r=0;SUM_s=0;SU' +
        'M_y=0;SUM_z=0;'
      '    TOTAL_E=0;'
      
        '    TOTA=0;TOTB=0;TOTC=0;TOTCT=0;TOTD=0;TOTD=0;TOTE=0;TOTF=0;TOT' +
        'G=0;TOTI=0;TOTK=0;TOTL=0;TOTM=0;TOTN=0;TOTNY=0;TOTO=0;TOTP=0;TOT' +
        'Q=0;TOTR=0;TOTS=0;'
      '    TOTT=0;TOTU=0;TOTV=0;TOTX=0;TOTW=0;'
      
        '    TOT_a=0;TOT_b=0;TOT_c=0;TOT_d=0;TOT_e=0;TOT_g=0;TOT_i=0;TOT_' +
        'n=0;TOT_o=0;TOT_p=0;TOT_q=0;TOT_t=0;TOT_u=0;TOT_l=0;TOT_ALTRES=0' +
        ';TOT_aa=0;TOT_RESTA=0;'
      
        '    TOT_uu=0;TOT_v=0;TOT_x=0;TOTH=0;TOT_f=0;TOTJ=0;TOT_h=0;TOT_j' +
        '=0;TOT_k=0;TOT_m=0;TOT_iii=0;TOT_ee=0;TOT_ii=0;TOT_w=0;TOT_r=0;T' +
        'OT_s=0;TOT_y=0;TOT_z=0;'
      ''
      
        '    FOR SELECT G.N_GRUP, E.N_ESPECIAL, T.C_USUARI, T.STATUS, F_S' +
        'TRINGLENGTH(T.STATUS)'
      '    FROM TRAZACONTROL  T'
      '    LEFT JOIN ACCESOS  A ON T.C_ACCES = A.C_ACCES'
      '    LEFT JOIN METGES   M ON T.C_USUARI = M.CODI'
      '    /*LEFT JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_ESPECIAL'
      '    LEFT JOIN GRUPS G ON M.C_GRUP = G.C_GRUP*/'
      '    LEFT JOIN ESPECIAL E ON T.C_ESPECIAL = E.C_ESPECIAL'
      '    LEFT JOIN GRUPS    G ON T.C_GRUP     = G.C_GRUP'
      '    WHERE T.HORAE BETWEEN :DATAI AND :DATAF'
      '    ORDER BY G.C_GRUP, E.N_ESPECIAL'
      '    INTO :GRUP_ACT, :ESPE_ACT, :USUARI, :STATUS, :LONGITUD'
      '    DO BEGIN'
      '        IF (USUARI IS NULL) THEN'
      '        BEGIN'
      '            GRUP_ACT='#39'SENSE USUARI'#39';'
      '            ESPE_ACT='#39'SENSE USUARI'#39';'
      '        END;'
      '        '
      
        '        /* SI ESTEM A LA MATEIXA ESPECIALITAT I AL MATEIX GRUP O' +
        ' ESTEM AL PRIMER REGISTRE (GRUP I ESPE = NULL) */'
      '        IF  ( ((ESPE_ACT = ESPE_ANT) OR (ESPE_ANT IS NULL))'
      
        '        AND   ((GRUP_ACT = GRUP_ANT) OR (GRUP_ANT IS NULL)) ) TH' +
        'EN'
      '        BEGIN'
      '            BUCLE=0;'
      
        '            /* ACUMULEM PER GRUP I ESPECIALITAT LES ACTIVITATS *' +
        '/'
      '            WHILE (BUCLE <= LONGITUD-1) DO'
      '            BEGIN'
      '                LLETRA = F_MID(STATUS,BUCLE,1);'
      '                IF (LLETRA = '#39'A'#39') THEN SUMA=SUMA+1;'
      '                ELSE IF (LLETRA = '#39'B'#39') THEN SUMB=SUMB+1;'
      '                ELSE IF (LLETRA = '#39'C'#39') THEN SUMC=SUMC+1;'
      '                ELSE IF (LLETRA = '#39#199#39') THEN SUMCT=SUMCT+1;'
      '                ELSE IF (LLETRA = '#39'D'#39') THEN SUMD=SUMD+1;'
      '                ELSE IF (LLETRA = '#39'E'#39') THEN SUME=SUME+1;'
      '                ELSE IF (LLETRA = '#39'F'#39') THEN SUMF=SUMF+1;'
      '                ELSE IF (LLETRA = '#39'G'#39') THEN SUMG=SUMG+1;'
      '                ELSE IF (LLETRA = '#39'H'#39') THEN SUMH=SUMH+1;'
      '                ELSE IF (LLETRA = '#39'I'#39') THEN SUMI=SUMI+1;'
      '                ELSE IF (LLETRA = '#39'J'#39') THEN SUMJ=SUMJ+1;'
      '                ELSE IF (LLETRA = '#39'K'#39') THEN SUMK=SUMK+1;'
      '                ELSE IF (LLETRA = '#39'L'#39') THEN SUML=SUML+1;'
      '                ELSE IF (LLETRA = '#39'M'#39') THEN SUMM=SUMM+1;'
      '                ELSE IF (LLETRA = '#39'N'#39') THEN SUMN=SUMN+1;'
      '                ELSE IF (LLETRA = '#39#209#39') THEN SUMNY=SUMNY+1;'
      '                ELSE IF (LLETRA = '#39'O'#39') THEN SUMO=SUMO+1;'
      '                ELSE IF (LLETRA = '#39'P'#39') THEN SUMP=SUMP+1;'
      '                ELSE IF (LLETRA = '#39'Q'#39') THEN SUMQ=SUMQ+1;'
      '                ELSE IF (LLETRA = '#39'R'#39') THEN SUMR=SUMR+1;'
      '                ELSE IF (LLETRA = '#39'S'#39') THEN SUMS=SUMS+1;'
      '                ELSE IF (LLETRA = '#39'T'#39') THEN SUMT=SUMT+1;'
      '                ELSE IF (LLETRA = '#39'U'#39') THEN SUMU=SUMU+1;'
      '                ELSE IF (LLETRA = '#39'V'#39') THEN SUMV=SUMV+1;'
      '                ELSE IF (LLETRA = '#39'X'#39') THEN SUMX=SUMX+1;'
      '                ELSE IF (LLETRA = '#39'W'#39') THEN SUMW=SUMW+1;'
      '                ELSE IF (LLETRA = '#39'a'#39') THEN SUM_a=SUM_a+1;'
      '                ELSE IF (LLETRA = '#39'b'#39') THEN SUM_b=SUM_b+1;'
      '                ELSE IF (LLETRA = '#39'c'#39') THEN SUM_c=SUM_c+1;'
      '                ELSE IF (LLETRA = '#39'd'#39') THEN SUM_d=SUM_d+1;'
      '                ELSE IF (LLETRA = '#39'e'#39') THEN SUM_e=SUM_e+1;'
      '                ELSE IF (LLETRA = '#39'f'#39') THEN SUM_f=SUM_f+1;'
      '                ELSE IF (LLETRA = '#39'g'#39') THEN SUM_g=SUM_g+1;'
      '                ELSE IF (LLETRA = '#39'h'#39') THEN SUM_h=SUM_h+1;'
      '                ELSE IF (LLETRA = '#39'i'#39') THEN SUM_i=SUM_i+1;'
      '                ELSE IF (LLETRA = '#39'j'#39') THEN SUM_j=SUM_j+1;'
      '                ELSE IF (LLETRA = '#39'k'#39') THEN SUM_k=SUM_k+1;'
      '                ELSE IF (LLETRA = '#39'l'#39') THEN SUM_l=SUM_l+1;'
      '                ELSE IF (LLETRA = '#39'm'#39') THEN SUM_m=SUM_m+1;'
      '                ELSE IF (LLETRA = '#39'n'#39') THEN SUM_n=SUM_n+1;'
      '                ELSE IF (LLETRA = '#39'o'#39') THEN SUM_o=SUM_o+1;'
      '                ELSE IF (LLETRA = '#39'p'#39') THEN SUM_p=SUM_p+1;'
      '                ELSE IF (LLETRA = '#39'q'#39') THEN SUM_q=SUM_q+1;'
      '                ELSE IF (LLETRA = '#39'r'#39') THEN SUM_r=SUM_r+1;'
      '                ELSE IF (LLETRA = '#39's'#39') THEN SUM_s=SUM_s+1;'
      '                ELSE IF (LLETRA = '#39't'#39') THEN SUM_t=SUM_t+1;'
      '                ELSE IF (LLETRA = '#39'u'#39') THEN SUM_u=SUM_u+1;'
      '                ELSE IF (LLETRA = '#39#228#39') THEN SUM_aa=SUM_aa+1;'
      '                ELSE IF (LLETRA = '#39#235#39') THEN SUM_ee=SUM_ee+1;'
      '                ELSE IF (LLETRA = '#39#239#39') THEN SUM_ii=SUM_ii+1;'
      '                ELSE IF (LLETRA = '#39#252#39') THEN SUM_uu=SUM_uu+1;'
      '                ELSE IF (LLETRA = '#39'v'#39') THEN SUM_v=SUM_v+1;'
      '                ELSE IF (LLETRA = '#39'x'#39') THEN SUM_x=SUM_x+1;'
      '                ELSE IF (LLETRA = '#39#238#39') THEN SUM_iii=SUM_iii+1;'
      '                ELSE IF (LLETRA = '#39'w'#39') THEN SUM_w=SUM_w+1;'
      '                ELSE IF (LLETRA = '#39'y'#39') THEN SUM_y=SUM_y+1;'
      '                ELSE IF (LLETRA = '#39'z'#39') THEN SUM_z=SUM_z+1;'
      '                ELSE SUM_RESTA=SUM_RESTA+1;'
      ''
      '                BUCLE=BUCLE+1;'
      '            END;'
      '        END;'
      ''
      '/*'
      '        IF  (((ESPE_ACT = ESPE_ANT) OR (ESPE_ANT IS NULL))'
      
        '        AND  ((GRUP_ACT = GRUP_ANT) OR (GRUP_ANT IS NULL)) ) THE' +
        'N'
      '*/'
      ''
      '        IF (((ESPE_ACT <> ESPE_ANT) AND (ESPE_ANT IS NOT NULL))'
      
        '        OR  ((GRUP_ACT <> GRUP_ANT) AND (GRUP_ANT IS NOT NULL)))' +
        ' THEN'
      '        BEGIN'
      '            /* PINTEM L'#39'ESPECIALITAT ANTERIOR */'
      
        '            if (GRUP_ANT = '#39'**NO ASIGNAT**'#39') THEN GRUP='#39'SENSE GR' +
        'UP'#39'; ELSE GRUP = GRUP_ANT;'
      
        '            IF (ESPE_ANT = '#39'** SENSE ASSIGNAR **'#39') THEN ESPECIAL' +
        'ITAT ='#39'SENSE ESPECIALITAT'#39'; ELSE ESPECIALITAT = ESPE_ANT;'
      '            S_IMATGES = SUMD+SUM_d+SUM_i;'
      '            S_QUIROFAN = SUMQ+SUM_q;'
      '            S_INTERCON = SUMI+SUMO+SUM_y;'
      '            S_INFER = SUM_n+SUM_t+SUM_g+SUM_b+SUM_c+SUM_a+SUM_r;'
      '            S_ALTRES = SUMU+ SUM_l+SUMH+SUM_RESTA+SUM_z;'
      '            S_ECB = SUMG + SUM_aa;'
      '            S_ALTES = SUME + SUM_f;'
      '            S_UROLOGIA = SUM_uu + SUM_v;'
      '            S_PE = SUMP + SUM_x;'
      '            S_OM = SUM_o + SUMJ;'
      
        '            S_ADMIS = SUM_h+SUM_j+SUM_k+SUM_m+SUM_ee+SUM_ii+SUM_' +
        'w+SUM_s;'
      '            S_MHDA = SUMNY + SUMM + SUMK;'
      '            S_EASE = SUMCT;'
      '            S_CE = SUMF + SUM_u;'
      '            '
      
        '            TOTAL_E=SUMA+SUMB+SUMC+SUMCT+SUMD+SUME+SUMF+SUMG+SUM' +
        'I+SUMK+SUML+SUMM+SUMN+SUMNY+SUMO+SUMP+SUMQ+SUMR+SUMS+/*SUMT+*/SU' +
        'MU+SUMV+SUMX+'
      
        '                    SUM_a+SUM_b+SUM_c+SUM_d+SUM_e+SUM_g+SUM_i+SU' +
        'M_l+SUM_n+SUM_o+SUM_p+SUM_q+SUM_t+SUM_u+SUM_aa+SUM_RESTA+SUM_uu+' +
        'SUM_v+'
      
        '                    SUM_x+SUMH+SUM_f+SUMJ+SUM_h+SUM_j+SUM_k+SUM_' +
        'm+SUM_iii+SUM_ee+SUM_ii+SUM_w+SUM_r+SUM_s+SUM_y+SUM_Z+SUMW;'
      '            SUSPEND;'
      ''
      '            /* ACUMULO TOTALS */'
      
        '            TOTA=TOTA+SUMA;     TOTB=TOTB+SUMB;       TOTC=TOTC+' +
        'SUMC;       TOTCT=TOTCT+SUMCT;  TOTD=TOTD+SUMD;'
      
        '            TOTE=TOTE+SUME;     TOTF=TOTF+SUMF;       TOTG=TOTG+' +
        'SUMG;       TOTI=TOTI+SUMI;     TOTK=TOTK+SUMK;'
      
        '            TOTL=TOTL+SUML;     TOTN=TOTN+SUMN;       TOTM=TOTM+' +
        'SUMM;       TOTNY=TOTNY+SUMNY;  TOTO=TOTO+SUMO;'
      
        '            TOTP=TOTP+SUMP;     TOTQ=TOTQ+SUMQ;       TOTR=TOTR+' +
        'SUMR;       TOTS=TOTS+SUMS;     TOTT=TOTT+SUMT;'
      
        '            TOTU=TOTU+SUMU;     TOTV=TOTV+SUMV;       TOTX=TOTX+' +
        'SUMX;       TOT_a=TOT_a+SUM_a;  TOT_d=TOT_d+SUM_d;'
      
        '            TOT_e=TOT_e+SUM_e;  TOT_g=TOT_g+SUM_g;    TOT_i=TOT_' +
        'i+SUM_i;    TOT_n=TOT_n+SUM_n;'
      
        '            TOT_o=TOT_o+SUM_o;  TOT_p=TOT_p+SUM_p;    TOT_q=TOT_' +
        'q+SUM_q;    TOT_t=TOT_t+SUM_t;  TOT_u=TOT_u+SUM_u;'
      
        '            TOT_b=TOT_b+SUM_b;  TOT_c=TOT_c+SUM_c;    TOT_uu=TOT' +
        '_uu+SUM_uu;                     TOT_v=TOT_v+SUM_v;'
      
        '            TOT_l=TOT_l+SUM_l;  TOT_aa=TOT_aa+SUM_aa; TOT_RESTA=' +
        'TOT_RESTA+SUM_RESTA;            TOTH=TOTH+SUMH;'
      
        '            TOT_f=TOT_f+SUM_f;  TOTJ=TOTJ+SUMJ;       TOT_x=TOT_' +
        'x+SUM_x;  TOT_h=TOT_h+SUM_h;    TOT_j=TOT_j+SUM_j;'
      
        '            TOT_k=TOT_k+SUM_k;  TOT_m=TOT_m+SUM_m;    TOT_iii=TO' +
        'T_iii+SUM_iii;                  TOT_ee=TOT_ee+SUM_ee;'
      
        '            TOT_ii=TOT_ii+SUM_ii;                     TOT_w=TOT_' +
        'w+SUM_w;                        TOT_r=TOT_r+SUM_r;'
      
        '            TOT_s=TOT_s+SUM_s;  TOT_y=TOT_y+SUM_y;    TOT_z=TOT_' +
        'z+SUM_z;    TOTW=TOTW+SUMW;'
      '            '
      '            /* INICIALITZEM ELS COMPTADORS */'
      
        '            SUMA=0;SUMB=0;SUMC=0;SUMCT=0;SUMD=0;SUMD=0;SUME=0;SU' +
        'MF=0;SUMG=0;SUMI=0;SUMK=0;SUML=0;SUMM=0;SUMN=0;SUMNY=0;SUMO=0;SU' +
        'MJ=0;'
      
        '            SUMP=0;SUMQ=0;SUMR=0;SUMS=0;SUMT=0;SUMU=0;SUMV=0;SUM' +
        'X=0;SUMH=0;SUMW=0;'
      
        '            SUM_a=0;SUM_b=0;SUM_c=0;SUM_d=0;SUM_e=0;SUM_g=0;SUM_' +
        'i=0;SUM_l=0;SUM_n=0;SUM_o=0;SUM_p=0;SUM_q=0;SUM_t=0;SUM_u=0;SUM_' +
        'aa=0;SUM_RESTA=0;'
      
        '            SUM_uu=0;SUM_v=0;SUM_x=0;SUM_f=0;SUM_h=0;SUM_j=0;SUM' +
        '_k=0;SUM_m=0;SUM_iii=0;SUM_ee=0;SUM_ii=0;SUM_w=0;SUM_r=0;SUM_s=0' +
        ';SUM_y=0;SUM_z=0;'
      '            TOTAL_E=0;'
      '            '
      '            /* acumulem aquest registre o el perdrem */'
      '            BUCLE=0;'
      
        '            /* ACUMULEM PER GRUP I ESPECIALITAT LES ACTIVITATS *' +
        '/'
      '            WHILE (BUCLE <= LONGITUD-1) DO'
      '            BEGIN'
      '                LLETRA = F_MID(STATUS,BUCLE,1);'
      '                IF (LLETRA = '#39'A'#39') THEN SUMA=SUMA+1;'
      '                ELSE IF (LLETRA = '#39'B'#39') THEN SUMB=SUMB+1;'
      '                ELSE IF (LLETRA = '#39'C'#39') THEN SUMC=SUMC+1;'
      '                ELSE IF (LLETRA = '#39#199#39') THEN SUMCT=SUMCT+1;'
      '                ELSE IF (LLETRA = '#39'D'#39') THEN SUMD=SUMD+1;'
      '                ELSE IF (LLETRA = '#39'E'#39') THEN SUME=SUME+1;'
      '                ELSE IF (LLETRA = '#39'F'#39') THEN SUMF=SUMF+1;'
      '                ELSE IF (LLETRA = '#39'G'#39') THEN SUMG=SUMG+1;'
      '                ELSE IF (LLETRA = '#39'H'#39') THEN SUMH=SUMH+1;'
      '                ELSE IF (LLETRA = '#39'I'#39') THEN SUMI=SUMI+1;'
      '                ELSE IF (LLETRA = '#39'J'#39') THEN SUMJ=SUMJ+1;'
      '                ELSE IF (LLETRA = '#39'K'#39') THEN SUMK=SUMK+1;'
      '                ELSE IF (LLETRA = '#39'L'#39') THEN SUML=SUML+1;'
      '                ELSE IF (LLETRA = '#39'M'#39') THEN SUMM=SUMM+1;'
      '                ELSE IF (LLETRA = '#39'N'#39') THEN SUMN=SUMN+1;'
      '                ELSE IF (LLETRA = '#39#209#39') THEN SUMNY=SUMNY+1;'
      '                ELSE IF (LLETRA = '#39'O'#39') THEN SUMO=SUMO+1;'
      '                ELSE IF (LLETRA = '#39'P'#39') THEN SUMP=SUMP+1;'
      '                ELSE IF (LLETRA = '#39'Q'#39') THEN SUMQ=SUMQ+1;'
      '                ELSE IF (LLETRA = '#39'R'#39') THEN SUMR=SUMR+1;'
      '                ELSE IF (LLETRA = '#39'S'#39') THEN SUMS=SUMS+1;'
      '                ELSE IF (LLETRA = '#39'T'#39') THEN SUMT=SUMT+1;'
      '                ELSE IF (LLETRA = '#39'U'#39') THEN SUMU=SUMU+1;'
      '                ELSE IF (LLETRA = '#39'V'#39') THEN SUMV=SUMV+1;'
      '                ELSE IF (LLETRA = '#39'X'#39') THEN SUMX=SUMX+1;'
      '                ELSE IF (LLETRA = '#39'W'#39') THEN SUMW=SUMW+1;'
      '                ELSE IF (LLETRA = '#39'a'#39') THEN SUM_a=SUM_a+1;'
      '                ELSE IF (LLETRA = '#39'b'#39') THEN SUM_b=SUM_b+1;'
      '                ELSE IF (LLETRA = '#39'c'#39') THEN SUM_c=SUM_c+1;'
      '                ELSE IF (LLETRA = '#39'd'#39') THEN SUM_d=SUM_d+1;'
      '                ELSE IF (LLETRA = '#39'e'#39') THEN SUM_e=SUM_e+1;'
      '                ELSE IF (LLETRA = '#39'f'#39') THEN SUM_f=SUM_f+1;'
      '                ELSE IF (LLETRA = '#39'g'#39') THEN SUM_g=SUM_g+1;'
      '                ELSE IF (LLETRA = '#39'h'#39') THEN SUM_h=SUM_h+1;'
      '                ELSE IF (LLETRA = '#39'i'#39') THEN SUM_i=SUM_i+1;'
      '                ELSE IF (LLETRA = '#39'j'#39') THEN SUM_j=SUM_j+1;'
      '                ELSE IF (LLETRA = '#39'k'#39') THEN SUM_k=SUM_k+1;'
      '                ELSE IF (LLETRA = '#39'l'#39') THEN SUM_l=SUM_l+1;'
      '                ELSE IF (LLETRA = '#39'm'#39') THEN SUM_m=SUM_m+1;'
      '                ELSE IF (LLETRA = '#39'n'#39') THEN SUM_n=SUM_n+1;'
      '                ELSE IF (LLETRA = '#39'o'#39') THEN SUM_o=SUM_o+1;'
      '                ELSE IF (LLETRA = '#39'p'#39') THEN SUM_p=SUM_p+1;'
      '                ELSE IF (LLETRA = '#39'q'#39') THEN SUM_q=SUM_q+1;'
      '                ELSE IF (LLETRA = '#39'r'#39') THEN SUM_r=SUM_r+1;'
      '                ELSE IF (LLETRA = '#39's'#39') THEN SUM_s=SUM_s+1;'
      '                ELSE IF (LLETRA = '#39't'#39') THEN SUM_t=SUM_t+1;'
      '                ELSE IF (LLETRA = '#39'u'#39') THEN SUM_u=SUM_u+1;'
      '                ELSE IF (LLETRA = '#39#228#39') THEN SUM_aa=SUM_aa+1;'
      '                ELSE IF (LLETRA = '#39#235#39') THEN SUM_ee=SUM_ee+1;'
      '                ELSE IF (LLETRA = '#39#239#39') THEN SUM_ii=SUM_ii+1;'
      '                ELSE IF (LLETRA = '#39#252#39') THEN SUM_uu=SUM_uu+1;'
      '                ELSE IF (LLETRA = '#39'v'#39') THEN SUM_v=SUM_v+1;'
      '                ELSE IF (LLETRA = '#39'x'#39') THEN SUM_x=SUM_x+1;'
      '                ELSE IF (LLETRA = '#39#238#39') THEN SUM_iii=SUM_iii+1;'
      '                ELSE IF (LLETRA = '#39'w'#39') THEN SUM_w=SUM_w+1;'
      '                ELSE IF (LLETRA = '#39'y'#39') THEN SUM_y=SUM_y+1;'
      '                ELSE IF (LLETRA = '#39'z'#39') THEN SUM_z=SUM_z+1;'
      '                ELSE SUM_RESTA=SUM_RESTA+1;'
      ''
      '                BUCLE=BUCLE+1;'
      '            END;'
      '        END;'
      ''
      '        GRUP_ANT = GRUP_ACT;'
      '        ESPE_ANT = ESPE_ACT;'
      '    END;'
      ''
      
        '    if (GRUP_ACT = '#39'**NO ASIGNAT**'#39') THEN GRUP='#39'SENSE GRUP'#39'; ELS' +
        'E GRUP = GRUP_ACT;'
      
        '    IF (ESPE_ACT = '#39'** SENSE ASSIGNAR **'#39') THEN ESPECIALITAT ='#39'S' +
        'ENSE ESPECIALITAT'#39'; ELSE ESPECIALITAT = ESPE_ACT;'
      '    S_IMATGES = SUMD+SUM_d+SUM_i;'
      '    S_QUIROFAN = SUMQ+SUM_q;'
      '    S_INTERCON = SUMI+SUMO+SUM_y;'
      '    S_INFER = SUM_n+SUM_t+SUM_g+SUM_b+SUM_c+SUM_a+SUM_r;'
      '    S_ALTRES = SUMU+ SUM_l+SUMH+SUM_RESTA+SUM_z;'
      '    S_ECB = SUMG + SUM_aa;'
      '    S_ALTES = SUME + SUM_f;'
      '    S_UROLOGIA = SUM_uu + SUM_v;'
      '    S_PE = SUMP + SUM_x;'
      '    S_OM = SUM_o + SUMJ;'
      '    S_ADMIS = SUM_h+SUM_j+SUM_k+SUM_m+SUM_ee+SUM_ii+SUM_w+SUM_s;'
      '    S_MHDA = SUMNY + SUMM + SUMK;'
      '    S_EASE = SUMCT;'
      '    S_CE = SUMF + SUM_u;'
      ''
      
        '    TOTAL_E=SUMA+SUMB+SUMC+SUMCT+SUMD+SUME+SUMF+SUMG+SUMI+SUMK+S' +
        'UML+SUMM+SUMN+SUMNY+SUMO+SUMP+SUMQ+SUMR+SUMS+/*SUMT+*/SUMU+SUMV+'
      
        '            SUMX+SUM_a+SUM_b+SUM_c+SUM_d+SUM_e+SUM_g+SUM_i+SUM_l' +
        '+SUM_n+SUM_o+SUM_p+SUM_q+SUM_t+SUM_u+SUM_aa+SUM_RESTA+SUM_uu+SUM' +
        '_v+'
      
        '            SUM_x+SUMH+SUM_f+SUMJ+SUM_h+SUM_j+SUM_k+SUM_m+SUM_ii' +
        'i+SUM_ee+SUM_ii+SUM_w+SUM_r+SUM_s+SUM_y+SUM_z+SUMW;'
      '    SUSPEND;'
      ''
      '    /* ACUMULO TOTALS */'
      
        '    TOTA=TOTA+SUMA;     TOTB=TOTB+SUMB;     TOTC=TOTC+SUMC;     ' +
        'TOTCT=TOTCT+SUMCT;  TOTD=TOTD+SUMD;     TOTE=TOTE+SUME;'
      
        '    TOTF=TOTF+SUMF;     TOTG=TOTG+SUMG;     TOTI=TOTI+SUMI;     ' +
        'TOTK=TOTK+SUMK;     TOTL=TOTL+SUML;'
      
        '    TOTM=TOTM+SUMM;     TOTN=TOTN+SUMN;     TOTNY=TOTNY+SUMNY;  ' +
        'TOTO=TOTO+SUMO;     TOTP=TOTP+SUMP;'
      
        '    TOTQ=TOTQ+SUMQ;     TOTR=TOTR+SUMR;     TOTS=TOTS+SUMS;     ' +
        'TOTT=TOTT+SUMT;     TOTU=TOTU+SUMU;'
      '    TOTV=TOTV+SUMV;     TOTX=TOTX+SUMX;     TOT_a=TOT_a+SUM_a;'
      
        '    TOT_d=TOT_d+SUM_d;  TOT_e=TOT_e+SUM_e;  TOT_g=TOT_g+SUM_g;  ' +
        'TOT_i=TOT_i+SUM_i;  TOT_n=TOT_n+SUM_n;'
      
        '    TOT_o=TOT_o+SUM_o;  TOT_p=TOT_p+SUM_p;  TOT_q=TOT_q+SUM_q;  ' +
        'TOT_t=TOT_t+SUM_t;  TOT_u=TOT_u+SUM_u;'
      
        '    TOT_b=TOT_b+SUM_b;  TOT_c=TOT_c+SUM_c;  TOT_uu=TOT_uu+SUM_uu' +
        ';                   TOT_v=TOT_v+SUM_v;'
      
        '    TOT_l=TOT_l+SUM_l;  TOT_aa=TOT_aa+SUM_aa; TOT_RESTA=TOT_REST' +
        'A+SUM_RESTA;        TOTH=TOTH+SUMH;'
      
        '    TOT_f=TOT_f+SUM_f;  TOTJ=TOTJ+SUMJ;     TOT_x=TOT_x+SUM_x;  ' +
        'TOT_h=TOT_h+SUM_h;  TOT_j=TOT_j+SUM_j;'
      
        '    TOT_k=TOT_k+SUM_k;  TOT_m=TOT_m+SUM_m;  TOT_iii=TOT_iii+SUM_' +
        'iii;                TOT_ee=TOT_ee+SUM_ee;'
      
        '    TOT_ii=TOT_ii+SUM_ii;                   TOT_w=TOT_w+SUM_w;  ' +
        '                    TOT_r=TOT_r+SUM_r;'
      
        '    TOT_s=TOT_s+SUM_s;  TOT_y=TOT_y+SUM_y;  TOT_z=TOT_z+SUM_z;  ' +
        'TOTW=TOTW+SUMW;'
      ''
      '    /* registre de totals per activitat */'
      '    GRUP='#39'TOTALS'#39';'
      '    ESPECIALITAT = '#39'PER ACTIVITAT'#39';'
      
        '    SUMA=TOTA; SUMB=TOTB; SUMC=TOTC; SUMCT=TOTCT; SUMD=TOTD; SUM' +
        'E=TOTE; SUMF=TOTF; SUMG=TOTG; SUMI=TOTI; SUMK=TOTK; SUML=TOTL; S' +
        'UMM=TOTM;'
      
        '    SUMNY=TOTNY; SUMJ=TOTJ; SUMN=TOTN; SUMO=TOTO; SUMP=TOTP; SUM' +
        'Q=TOTQ; SUMR=TOTR; SUMS=TOTS; SUMT=TOTT; SUMU=TOTU; SUMV=TOTV; S' +
        'UMX=TOTX;'
      
        '    SUM_a=TOT_a; SUM_b=TOT_b; SUM_c=TOT_c; SUM_d=TOT_d; SUM_e=TO' +
        'T_e; SUM_g=TOT_g;   SUM_i=TOT_i; SUM_l=TOT_l; SUM_n=TOT_n; SUM_o' +
        '=TOT_o;'
      
        '    SUM_p=TOT_p; SUM_q=TOT_q; SUM_t=TOT_t; SUM_u=TOT_u; SUM_l=TO' +
        'T_l; SUM_aa=TOT_aa; SUM_RESTA=TOT_RESTA; SUM_uu=TOT_uu; SUM_v=TO' +
        'T_v;'
      
        '    SUMH=TOTH;   SUM_f=TOT_f; SUM_x=TOT_x; SUM_h=TOT_h; SUM_j=TO' +
        'T_j; SUM_k=TOT_k;   SUM_m=TOT_m; SUM_iii=TOT_iii; SUM_w=TOT_w;'
      
        '    SUM_ee=TOT_ee; SUM_ii=TOT_ii; SUM_r=TOT_r; SUM_s=TOT_s; SUM_' +
        'y=TOT_y; SUM_z=TOT_z; SUMW=TOTW;'
      '    S_IMATGES = TOTD + TOT_d + TOT_i;'
      '    S_QUIROFAN = TOTQ + TOT_q;'
      '    S_INTERCON = TOTI + TOTO + TOT_y;'
      
        '    S_INFER= TOT_n + TOT_g + TOT_t + TOT_b + TOT_c + TOT_a + TOT' +
        '_R;'
      '    S_ALTRES = TOTU + TOT_l + TOTH + TOT_RESTA + TOT_z + TOTW;'
      '    S_ECB = TOTG + TOT_aa;'
      '    S_ALTES = TOTE + TOT_f;'
      '    S_UROLOGIA = TOT_uu + TOT_v;'
      '    S_PE = TOTP + TOT_x;'
      '    S_OM = TOT_o + TOTJ;'
      
        '    S_ADMIS = TOT_h + TOT_j + TOT_k + TOT_m + TOT_ee + TOT_ii + ' +
        'TOT_w + TOT_s;'
      '    S_MHDA = TOTNY + TOTM + TOTK;'
      '    S_EASE = TOTCT;'
      '    S_CE = TOTF + TOT_u;'
      ''
      
        '    TOTAL_E=SUMA+SUMB+SUMC+SUMCT+SUMD+SUME+SUMF+SUMG+SUMI+SUMK+S' +
        'UML+SUMM+SUMN+SUMNY+SUMO+SUMP+SUMQ+SUMR+SUMS+/*SUMT+*/SUMU+SUMV+' +
        'SUMX+'
      
        '            SUM_a+SUM_b+SUM_c+SUM_d+SUM_e+SUM_g+SUM_i+SUM_l+SUM_' +
        'n+SUM_o+SUM_p+SUM_q+SUM_t+SUM_u+SUM_aa+SUM_RESTA+SUM_uu+SUM_v+'
      
        '            SUM_x+SUMH+SUM_f+SUMJ+SUM_h+SUM_j+SUM_k+SUM_m+SUM_ii' +
        'i+SUM_ee+SUM_ii+SUM_w+SUM_r+SUM_s+SUM_y+SUM_z;'
      '    '
      '    SUSPEND;'
      '    '
      'END')
    Dic1 = Accesos
    Dic1Name = 'ACCESOS'
    Abierta = False
    Borrame = False
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
  object DretsMotiu: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi de dret'
        NombreDB = 'C_Dret'
        Longitud = 10
        Consulta = 'Dret'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu'
        NombreDB = 'C_Motiu'
        Longitud = 4
        zType = tcIB_Smallint
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
          'Codi de dret'
          'Motiu')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Dret'
        NombreDB = 'Dret'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Codi de dret')
        Tipo = tiForaneo
        ForaneoDic = Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Motiu'
        NombreDB = 'Motiu'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'Motiu')
        Tipo = tiSecundario
        ForaneoDic = wDataBasics.Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Dret'
        Master = Drets
        BuscaOrigen.Strings = (
          'Codi de dret')
        CopiarOrigen.Strings = (
          'Codi de dret')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'C_DRET starting with "X"'
      end
      item
        Nombre = 'Motiu'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Motiu')
        CopiarOrigen.Strings = (
          'Motiu')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'MOTIU'#39
      end>
    Nombre = 'Drets per Motiu'
    NombreTabla = 'DretsMotiu'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi de dret'
      'Motiu')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 5
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5205159375
    Left = 351
    Top = 131
  end
  object LogInhabilitats: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTALOGDBF'
        Comentario = 'Generator: G_LogInhabilitat'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Extra'
        NombreDB = 'C_Extra'
        Longitud = 10
        zType = tcIB_Char
        zNotNull = False
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
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'I: inhabilitaci'#243', B: bloqueig, H: habilitaci'#243', R: reset'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari desbloqueig'
        NombreDB = 'C_Usuari_D'
        Longitud = 5
        zType = tcIB_Varchar
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
          'Id')
        Tipo = tiPrimario
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
        Nombre = 'usuari'
        NombreDB = 'usuari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari'
          'Extra'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogInhabilitats'
    NombreTabla = 'LogInhabilitats'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'Usuari'
      'Extra'
      'Data'
      'Tipus'
      'Usuari desbloqueig')
    IndiceVer = 'usuari'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.520368044
    Left = 32
    Top = 304
  end
  object RegistraLog: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Registra'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      Codi VARCHAR(5),'
      '      Extra CHAR(1),'
      '      Tipus CHAR(1)'
      ')'
      'AS'
      'BEGIN'
      
        '      INSERT INTO LOGINHABILITATS (ID, C_USUARI, C_EXTRA, DATA, ' +
        'TIPUS)'
      
        '      VALUES (GEN_ID(G_LOGINHABILITAT, 1), :Codi, :Extra, "NOW",' +
        ' :Tipus);'
      'END')
    Select.Strings = (
      'SELECT * FROM P_CONFIG_SERVERHORA')
    Dic1 = LogInhabilitats
    Dic1Name = 'LogInhabilitats'
    Abierta = False
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
    ModiFecha = 36991.681027419
    Left = 100
    Top = 304
  end
  object loghccc: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero de registre'
        NombreDB = 'PK'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data genera pdf'
        NombreDB = 'DATA_PDF'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data primer intent publicaci'#243
        NombreDB = 'DATA_1ER'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data succ'#233's publicaci'#243
        NombreDB = 'DATA_SUCCES'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Intents publicaci'#243
        NombreDB = 'INTENTS'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Log'
        NombreDB = 'LOG'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi interconsulta'
        NombreDB = 'C_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi analisi'
        NombreDB = 'C_Analisi'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' de laboratori'
        NombreDB = 'NILAB'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus document'
        NombreDB = 'T_DOC'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' informe varis'
        NombreDB = 'C_INFORME'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data informe varis'
        NombreDB = 'DATA_INFORME'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge informe varis'
        NombreDB = 'METGE'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom fitxer'
        NombreDB = 'NomFitxer'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltim log'
        NombreDB = 'DATA_ULT_LOG'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Republicaci'#243
        NombreDB = 'Republicacio'
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
          'N'#250'mero de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'loghccc'
    NombreTabla = 'loghccc'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'mero de registre'
      'Codi tractament'
      'Data genera pdf'
      'Data primer intent publicaci'#243
      'Data succ'#233's publicaci'#243
      'Intents publicaci'#243
      'Log'
      'Codi interconsulta')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 200
    Top = 304
  end
  object LogHCCC_Alarma: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'alarma'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA       INTEGER,'
      '         TRACTAMENT     INTEGER,'
      '         DATA_ALTA      DATE,'
      '         COORDINADOR    VARCHAR(5),'
      '         TIPUS          VARCHAR(3),'
      '         DESCRIPCIO     VARCHAR(40),'
      '         DATA_PDF       DATE,'
      '         CIP            VARCHAR(14),'
      '         DIAGNOSTIC_INGRES VARCHAR(15),'
      '         DIAGNOSTIC_ALTA   VARCHAR(15),'
      '         LOG            VARCHAR(3000),'
      '         PENDENT        VARCHAR(100)'
      '         )'
      'AS'
      'BEGIN'
      '      '
      
        ' /* primer mirem els que el GENERAPDF hauria d'#39'haver tractat i n' +
        'o ha fet per avisar-nos de que el GeneraPDF no s'#39'ha executat ok*' +
        '/'
      ' DATA_PDF=NULL; TIPUS='#39'AHO'#39'; CIP=NULL; LOG=NULL;'
      
        ' SELECT DESCRIPCIO FROM HC3TIPUSDOCUMENT WHERE T_DOC=:TIPUS AND ' +
        'DATA_FINAL IS NULL INTO :DESCRIPCIO;'
      ''
      
        ' FOR SELECT DISTINCT T.C_HISTORIA, T.DATA_ALTA, T.C_COORDINADOR,' +
        ' T.C_TRACTAMENT, T.C_DIAGNOSTICINGRES, T.C_DIAGNOSTICALTA, F.TSI'
      ' FROM TRACTAMENTS T'
      ' JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      ' WHERE T.C_PRESTACIO='#39'1004'#39' AND (F_STRINGLENGTH(F.TSI)>=10)'
      ' AND  T.DATA_ALTA="TODAY"-1 AND T.HCCC_INFORME_ALTA IS NULL'
      
        ' AND  NOT T.C_TRACTAMENT IN (SELECT L.C_TRACTAMENT FROM LOGHCCC ' +
        'L WHERE L.T_DOC='#39'AHO'#39')'
      
        ' INTO :HISTORIA, :DATA_ALTA, :COORDINADOR, :TRACTAMENT, :DIAGNOS' +
        'TIC_INGRES, :DIAGNOSTIC_ALTA, :CIP'
      ' DO BEGIN'
      '     PENDENT='#39'GENERAPDF no ok'#39';'
      '     SUSPEND;'
      ' END;'
      ''
      ' TIPUS='#39'AAM'#39'; CIP=NULL; LOG=NULL;'
      
        ' SELECT DESCRIPCIO FROM HC3TIPUSDOCUMENT WHERE T_DOC=:TIPUS AND ' +
        'DATA_FINAL IS NULL INTO :DESCRIPCIO;'
      ' '
      
        ' FOR SELECT DISTINCT T.C_HISTORIA, T.DATA_ALTA, T.C_COORDINADOR,' +
        ' T.C_TRACTAMENT, T.C_DIAGNOSTICINGRES, T.C_DIAGNOSTICALTA, F.TSI'
      ' FROM TRACTAMENTS T'
      ' JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      ' WHERE T.C_PRESTACIO='#39'2014'#39' AND (F_STRINGLENGTH(F.TSI)>=10)'
      ' AND  T.DATA_ALTA="TODAY"-3 AND T.HCCC_INFORME_ALTA IS NULL'
      
        ' AND  NOT T.C_TRACTAMENT IN (SELECT L.C_TRACTAMENT FROM LOGHCCC ' +
        'L WHERE L.T_DOC='#39'AAM'#39')'
      
        ' INTO :HISTORIA, :DATA_ALTA, :COORDINADOR, :TRACTAMENT, :DIAGNOS' +
        'TIC_INGRES, :DIAGNOSTIC_ALTA, :CIP'
      ' DO BEGIN'
      '     PENDENT='#39'GENERAPDF no ok'#39';'
      '     SUSPEND;'
      ' END;'
      ''
      ' /* segon mirem els que a LOGHCCC els falta alguna cosa */'
      ' CIP=NULL; LOG=NULL;'
      
        ' FOR SELECT DISTINCT T.C_HISTORIA, T.DATA_ALTA, T.C_COORDINADOR,' +
        ' T.C_TRACTAMENT, L.DATA_PDF, L.T_DOC, H.DESCRIPCIO, T.C_DIAGNOST' +
        'ICINGRES, T.C_DIAGNOSTICALTA, F.TSI, L.LOG'
      ' FROM LOGHCCC          L'
      ' JOIN TRACTAMENTS      T ON L.C_TRACTAMENT=T.C_TRACTAMENT'
      ' JOIN FILIACIO         F ON T.C_HISTORIA=F.NUM_HIST'
      
        ' JOIN HC3TIPUSDOCUMENT H ON L.T_DOC=H.T_DOC AND H.DATA_FINAL IS ' +
        'NULL'
      ' WHERE L.DATA_SUCCES IS NULL AND L.T_DOC <> '#39'FSA'#39
      
        ' INTO :HISTORIA, :DATA_ALTA, :COORDINADOR, :TRACTAMENT, :DATA_PD' +
        'F, :TIPUS, :DESCRIPCIO, :DIAGNOSTIC_INGRES, :DIAGNOSTIC_ALTA, :C' +
        'IP, :LOG'
      ' DO BEGIN'
      
        '     IF (DATA_PDF IS NULL)   THEN PENDENT='#39'INFORME NO FET/NOM ER' +
        'RONI'#39';'
      
        '                             ELSE PENDENT='#39'NO PUBLICAT. FALTEN D' +
        'ADES (CIP,DIAGN'#210'STIC,...)'#39';'
      '     SUSPEND;'
      '  END;'
      'END')
    Dic1 = loghccc
    Dic1Name = 'loghccc'
    Abierta = False
    Borrame = False
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
    Top = 304
  end
  object ErrorsHc3: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ErrorsHc3'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (HISTORIA       INTEGER,'
      '         NOMCOMPLET     VARCHAR(80),'
      '         TRACTAMENT     INTEGER,'
      '         PRESTACIO      VARCHAR(4),'
      '         DATA_ALTA      DATE,'
      '         CIP            VARCHAR(14),'
      '         COORDINADOR    VARCHAR(5),'
      '         ERROR          VARCHAR(100)'
      '         )'
      'AS'
      'BEGIN'
      ''
      
        '    /* Avisem del que les secret'#224'ries m'#232'diques poden corregir: C' +
        'IP'#39's no informats i noms de fitxers erronis */'
      '    ERROR='#39'CIP INCORRECTE'#39';'
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_PRESTACIO, T.C_' +
        'COORDINADOR, T.DATA_ALTA, F.TSI, F.NOMCOMPLET FROM LOGHCCC L'
      '    JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT'
      
        '    JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST AND (F.TSI IS NUL' +
        'L OR (F_STRINGLENGTH(F.TSI)<>14))'
      
        '    WHERE l.DATA_SUCCES IS NULL AND l.T_DOC IN ('#39'AHO'#39','#39'AHD'#39','#39'AAM' +
        #39','#39'RMP'#39','#39'CMA'#39')'
      '    ORDER BY T.C_HISTORIA, T.DATA_ALTA'
      
        '    INTO :HISTORIA, :TRACTAMENT, :PRESTACIO, :COORDINADOR, :DATA' +
        '_ALTA, :CIP, :NOMCOMPLET'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    ERROR='#39'INFORME PENDENT'#39';'
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_PRESTACIO, T.C_' +
        'COORDINADOR, T.DATA_ALTA, F.TSI, F.NOMCOMPLET FROM LOGHCCC L'
      
        '    JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT AND T.IN' +
        'FORMEALTA IS NULL AND T.ESTATINFORMEALTA=1'
      '    JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE l.DATA_PDF IS NULL AND l.T_DOC IN ('#39'AHO'#39','#39'AHD'#39','#39'AAM'#39','#39 +
        'RMP'#39','#39'CMA'#39')'
      '    ORDER BY T.C_HISTORIA, T.DATA_ALTA'
      
        '    INTO :HISTORIA, :TRACTAMENT, :PRESTACIO, :COORDINADOR, :DATA' +
        '_ALTA, :CIP, :NOMCOMPLET'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    ERROR='#39'NOM INFORME INCORRECTE'#39';'
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_PRESTACIO, T.C_' +
        'COORDINADOR, T.DATA_ALTA, F.TSI, F.NOMCOMPLET FROM LOGHCCC L'
      
        '    JOIN TRACTAMENTS T ON L.C_TRACTAMENT=T.C_TRACTAMENT AND T.IN' +
        'FORMEALTA IS NOT NULL AND T.ESTATINFORMEALTA>1'
      '    JOIN FILIACIO F ON T.C_HISTORIA=F.NUM_HIST'
      
        '    WHERE l.DATA_PDF IS NULL AND l.T_DOC IN ('#39'AHO'#39','#39'AHD'#39','#39'AAM'#39','#39 +
        'RMP'#39','#39'CMA'#39')'
      '    ORDER BY T.C_HISTORIA, T.DATA_ALTA'
      
        '    INTO :HISTORIA, :TRACTAMENT, :PRESTACIO, :COORDINADOR, :DATA' +
        '_ALTA, :CIP, :NOMCOMPLET'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      ''
      'END')
    Dic1 = loghccc
    Dic1Name = 'loghccc'
    Abierta = False
    Borrame = False
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
    Top = 304
  end
  object Admissions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Admissions'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (ID          INTEGER,'
      '         PK          INTEGER,'
      '         C_USUARI    VARCHAR(5),'
      '         NOMSENCER   VARCHAR(40),'
      '         HORAE       TIMESTAMP,'
      '         HORAS       TIMESTAMP,'
      '         C_HISTORIA  INTEGER,'
      '         STATUS      VARCHAR(10),'
      '         ACCIO       VARCHAR(60),'
      '         NOMPC       VARCHAR(20),'
      '         CONSULTA    VARCHAR(100),'
      '         REFERENCIA  INTEGER'
      '        )'
      'AS'
      '  DECLARE VARIABLE I      SMALLINT;'
      '  DECLARE VARIABLE J      SMALLINT;'
      '  DECLARE VARIABLE C_CODI VARCHAR(15);'
      'BEGIN'
      '      '
      '  ID=1;'
      
        '  FOR SELECT T.C_USUARI, M.NOMSENCER, T.HORAE, T.HORAS, T.C_HIST' +
        'ORIA, CAST(F_LRTrim(T.STATUS) AS VARCHAR(10)),'
      
        '             F_StringLength(T.STATUS), T.NOMPC, T.CONSULTA, T.RE' +
        'FERENCIA, T.PK'
      '  FROM TRAZACONTROL T'
      '  LEFT JOIN VMETGES M ON T.C_USUARI=M.CODI'
      '  WHERE T.APLICACIO=3 AND HORAS IS NOT NULL'
      '  AND HORAE BETWEEN :DATAI AND :DATAF||'#39' 23:59:59'#39
      '  ORDER BY T.PK'
      
        '  INTO :C_USUARI, :NOMSENCER, :HORAE, :HORAS, :C_HISTORIA, :STAT' +
        'US, :J, :NOMPC, :CONSULTA, :REFERENCIA, :PK'
      '  DO BEGIN'
      '      I=1;'
      '      WHILE (I<=J) DO'
      '      BEGIN'
      '          C_CODI=F_LEFT(:STATUS,1);'
      '          ACCIO=NULL;'
      
        '          SELECT N_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39'TRAZ' +
        'ACONTROL'#39' AND C_CODI=:C_CODI INTO :ACCIO;'
      '          IF (ACCIO IS NOT NULL) THEN'
      '          BEGIN'
      '              IF (I>1) THEN'
      '              BEGIN'
      
        '                  C_USUARI=NULL;   NOMSENCER=NULL; HORAE=NULL;  ' +
        '  HORAS=NULL;'
      
        '                  C_HISTORIA=NULL; NOMPC=NULL;     CONSULTA=NULL' +
        '; REFERENCIA=NULL;'
      '              END;'
      '              SUSPEND;'
      '              ID=ID+1;'
      '          END;'
      '          STATUS=F_StripString(:STATUS,:C_CODI);'
      '          I=I+1;'
      '      END;'
      '  END;'
      'END')
    Dic1 = TrazaControl
    Dic1Name = 'TrazaControl'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 516
    Top = 16
  end
  object ConfigBloq: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'CAMP'
        NombreDB = 'CAMP'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'aplicaci'#243' o servidor bloquejat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'ESTAT'
        NombreDB = 'ESTAT'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'UBICACIO'
        NombreDB = 'UBICACIO'
        Longitud = 20
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
          'CAMP')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Config Bloquejos'
    NombreTabla = 'ConfigBloq'
    Organiza = tbBase
    CamposVer.Strings = (
      'CAMP'
      'ESTAT')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 88
    Top = 16
  end
  object Directoris: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Nom'
        NombreDB = 'Nom'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ruta 1'
        NombreDB = 'Ruta1'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ruta 2'
        NombreDB = 'Ruta2'
        Longitud = 75
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ruta'
        NombreDB = 'Ruta'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
        ComputedBy = '(Ruta1 || Ruta2)'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Nom')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Directoris'
    NombreTabla = 'Directoris'
    Organiza = tbBase
    CamposVer.Strings = (
      'Nom'
      'Ruta')
    IndiceVer = 'pK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 200
    Top = 365
  end
  object AdmisTotals: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AdmisTotals'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (ID          INTEGER,'
      '         PK          INTEGER,'
      '         C_USUARI    VARCHAR(5),'
      '         NOMSENCER   VARCHAR(40),'
      '         HORAE       TIMESTAMP,'
      '         HORAS       TIMESTAMP,'
      '         C_HISTORIA  INTEGER,'
      '         APLICACIO   VARCHAR(40),'
      '         STATUS      CHAR(1),'
      '         ACCIO       VARCHAR(60),'
      '         NOMPC       VARCHAR(20),'
      '         CONSULTA    VARCHAR(100),'
      '         REFERENCIA  INTEGER'
      '        )'
      'AS'
      '  DECLARE VARIABLE I       SMALLINT;'
      '  DECLARE VARIABLE J       SMALLINT;'
      '  DECLARE VARIABLE C_CODI  VARCHAR(15);'
      '  DECLARE VARIABLE STATUS_ VARCHAR(10);'
      'BEGIN'
      '      '
      '  ID=1;'
      
        '  FOR SELECT T.C_USUARI, M.NOMSENCER, T.HORAE, T.HORAS, T.C_HIST' +
        'ORIA, CAST(F_LRTrim(T.STATUS) AS VARCHAR(10)),'
      
        '             F_StringLength(T.STATUS), T.NOMPC, T.CONSULTA, T.RE' +
        'FERENCIA, T.PK, C.N_CODI'
      '  FROM TRAZACONTROL T'
      
        '  JOIN CODICAMPS C ON T.APLICACIO=C.C_CODI AND C.TIPUSCODI ='#39'APL' +
        'ICACIONS'#39
      '  LEFT JOIN VMETGES M ON T.C_USUARI=M.CODI'
      '  WHERE HORAS IS NOT NULL'
      '  AND T.HORAE BETWEEN :DATAI AND :DATAF||'#39' 23:59:59'#39
      '  AND T.C_USUARI IN('#39'Q78'#39','#39'30Q'#39','#39'48Q'#39','#39'Q29'#39#39'Q25'#39','#39'Q11'#39','#39'Q27'#39')'
      '  AND T.STATUS <> '#39#39
      '  ORDER BY T.PK'
      
        '  INTO :C_USUARI, :NOMSENCER, :HORAE, :HORAS, :C_HISTORIA, :STAT' +
        'US_, :J, :NOMPC, :CONSULTA, :REFERENCIA, :PK, :APLICACIO'
      '  DO BEGIN'
      '      I=1;'
      '      WHILE (I<=J) DO'
      '      BEGIN'
      '          C_CODI=F_LEFT(:STATUS_,1); STATUS=C_CODI;'
      '          ACCIO=NULL;'
      
        '          SELECT N_CODI FROM CODICAMPSALFA WHERE TIPUSCODI='#39'TRAZ' +
        'ACONTROL'#39' AND C_CODI=:C_CODI INTO :ACCIO;'
      '          IF (ACCIO IS NOT NULL) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              ID=ID+1;'
      '          END;'
      '          STATUS_=F_StripString(:STATUS_,:C_CODI);'
      '          I=I+1;'
      '      END;'
      '  END;'
      'END')
    Dic1 = TrazaControl
    Dic1Name = 'TrazaControl'
    Abierta = False
    Borrame = False
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
    Top = 16
  end
  object DretsGestionats: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi dret'
        NombreDB = 'C_DRET'
        Longitud = 10
        Consulta = 'Dret'
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
          'Codi dret')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'DRET'
        Master = Drets
        BuscaOrigen.Strings = (
          'Codi dret')
        CopiarOrigen.Strings = (
          'Codi dret')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
      end>
    Nombre = 'DretsGestionats'
    NombreTabla = 'DretsGestionats'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi dret')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 223
    Top = 75
  end
  object InitGrupEspe: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'InitGrupEspe'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      ' DECLARE VARIABLE PK         INTEGER;'
      ' DECLARE VARIABLE C_GRUP     CHAR(2);'
      ' DECLARE VARIABLE C_ESPECIAL CHAR(2);'
      'BEGIN'
      '  FOR SELECT T.PK, M.C_GRUP, M.C_ESPECIAL FROM TRAZACONTROL T'
      '  JOIN METGES M ON T.C_USUARI = M .CODI'
      '  WHERE T.C_GRUP IS NULL OR T.C_ESPECIAL IS NULL'
      '  INTO :PK, :C_GRUP, :C_ESPECIAL'
      '  DO BEGIN'
      
        '      IF ((C_GRUP IS NOT NULL) AND (C_ESPECIAL IS NOT NULL)) THE' +
        'N'
      '      BEGIN'
      
        '          UPDATE TRAZACONTROL SET C_GRUP = :C_GRUP, C_ESPECIAL =' +
        ' :C_ESPECIAL WHERE PK = :PK;'
      '      END;'
      '  END;'
      'END')
    Dic1 = TrazaControl
    Dic1Name = 'TrazaControl'
    Abierta = False
    Borrame = False
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
    Top = 72
  end
  object Horaris_Funcions: TDic
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
        Nombre = 'Funci'#243
        NombreDB = 'Funcio'
        Longitud = 2
        Consulta = 'funcio'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia setmana'
        NombreDB = 'Dia'
        Longitud = 2
        Consulta = 'dia'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora inici'
        NombreDB = 'Hora_i'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Minuts inici'
        NombreDB = 'Min_i'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora fi'
        NombreDB = 'Hora_f'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Minuts fi'
        NombreDB = 'Min_f'
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
        Nombre = 'funcio'
        NombreDB = 'funcio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Funci'#243
          'Dia setmana')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'funcio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Funci'#243)
        CopiarOrigen.Strings = (
          'Funci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'FUNCIO_FORAHORES'#39
      end
      item
        Nombre = 'dia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Dia setmana')
        CopiarOrigen.Strings = (
          'Dia setmana')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DIASETMANA'#39
      end>
    Nombre = 'Horaris de funcions'
    NombreTabla = 'Horaris_Funcions'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Funci'#243
      'Dia setmana'
      'Hora inici'
      'Minuts inici'
      'Hora fi'
      'Minuts fi')
    IndiceVer = 'funcio'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 116
    Top = 424
  end
  object DretsUsuari: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'Usuari'
    ForceNombreDB = False
    Body.Strings = (
      'select M.C_USUARI as CODI, M.C_DRET'
      'from    DRETSMETGES M'
      'union'
      'select M1.CODI, G.C_DRET'
      'from DRETSGRUPS G'
      'join   METGES M1 on G.C_GRUP = M1.C_GRUP'
      'union     '
      'select M2.CODI, E.C_DRET'
      'from DRETSESPECIAL E'
      'join   METGES M2 on E.C_ESPECIAL = M2.C_ESPECIAL')
    Dic1 = Drets
    Dic1Name = 'Drets'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    CamposVista = 'C_USUARI, C_DRET'
    Left = 432
    Top = 131
  end
  object P_GrantSelectAll: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GrantSelectAll'
    ForceNombreDB = False
    Body.Strings = (
      '(usuari VARCHAR(15))'
      'AS'
      '  DECLARE VARIABLE tablename VARCHAR(32);'
      'BEGIN'
      '      FOR SELECT rdb$relation_name'
      '      FROM rdb$relations'
      '      WHERE rdb$view_blr IS NULL'
      '      AND (rdb$system_flag IS NULL OR rdb$system_flag = 0)'
      '      INTO :tablename DO'
      '      BEGIN'
      
        '            EXECUTE STATEMENT ('#39'grant SELECT on table '#39' || :tabl' +
        'ename || '#39' to user '#39' || :usuari);'
      '      END;'
      'END'
      '')
    Dic1 = Config
    Dic1Name = 'wDataConfig.Config'
    Abierta = False
    Borrame = False
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
    Top = 304
  end
  object Avisos_Correu: TDic
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
        AutoContador.Generator = 'G_AVISOSCORREU'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID Av'#237's'
        NombreDB = 'ID_Avis'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'ID_Avis'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data generat'
        NombreDB = 'DATA_GENERAT'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Assumpte'
        NombreDB = 'Assumpte'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cos'
        NombreDB = 'Cos'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Enviat'
        NombreDB = 'Enviat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'P: pendent, S: s'#237', E: error'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data enviat'
        NombreDB = 'Data_enviat'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Text error'
        NombreDB = 'Error'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Intents'
        NombreDB = 'Intents'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Destinatari'
        NombreDB = 'Destinatari'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'espeficicar-lo si no est'#224' parametritzat per tipus d'#39'av'#237's'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adjunt'
        NombreDB = 'Adjunt'
        Longitud = 150
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ruta i nom de l'#39'arxiu que s'#39'ha d'#39'adjuntar'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cos llarg'
        NombreDB = 'Cos_llarg'
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ID_Avis'
        NombreDB = 'ID_avis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Av'#237's')
        Tipo = tiForaneo
        ForaneoDic = Avisos
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'datagen'
        NombreDB = 'datagen'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data generat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'dataenv'
        NombreDB = 'dataenv'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data enviat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'enviat'
        NombreDB = 'enviat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Enviat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'ID_Avis'
        Master = Avisos
        BuscaOrigen.Strings = (
          'ID Av'#237's')
        CopiarOrigen.Strings = (
          'ID Av'#237's')
        CopiarMaster.Strings = (
          'ID')
        BuscaMaster.Strings = (
          'ID')
      end>
    Nombre = 'Avisos_Correu'
    NombreTabla = 'Avisos_Correu'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Data generat'
      'Assumpte'
      'Cos'
      'Enviat'
      'Data enviat'
      'Text error'
      'ID Av'#237's'
      'Intents'
      'Destinatari'
      'Adjunt')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 317
    Top = 488
  end
  object T_ACorreu_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_AVISOSCORREU, 1' +
        ');'
      '      NEW.ENVIAT = "P";'
      '   END;'
      'END')
    Dic1 = Avisos_Correu
    Dic1Name = 'Avisos_Correu'
    Abierta = False
    Borrame = False
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
    Left = 391
    Top = 488
  end
  object Avisos_Dest: TDic
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
        AutoContador.Generator = 'G_AVISOSDESTINATARIS'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID Av'#237's'
        NombreDB = 'ID_Avis'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'avis'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Correu-e'
        NombreDB = 'Correu_E'
        Longitud = 40
        Consulta = 'email'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'Data_inici'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fi'
        NombreDB = 'Data_fi'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
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
        Nombre = 'FK'
        NombreDB = 'FK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Av'#237's')
        Tipo = tiForaneo
        ForaneoDic = Avisos
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'DataIni'
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
        Nombre = 'DataFi'
        NombreDB = 'datafi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data fi')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'avis'
        Master = Avisos
        BuscaOrigen.Strings = (
          'ID Av'#237's')
        CopiarOrigen.Strings = (
          'ID Av'#237's')
        CopiarMaster.Strings = (
          'ID')
        BuscaMaster.Strings = (
          'ID')
      end
      item
        Nombre = 'email'
        Master = wDataBasics.MetgesVirtual
        BuscaOrigen.Strings = (
          'Correu-e')
        CopiarOrigen.Strings = (
          'Correu-e')
        CopiarMaster.Strings = (
          'e-mail')
        BuscaMaster.Strings = (
          'e-mail')
      end>
    Nombre = 'Avisos_Destinataris'
    NombreTabla = 'Avisos_Destinataris'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'ID Av'#237's'
      'Correu-e'
      'Data inici'
      'Data fi')
    IndiceVer = 'FK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 173
    Top = 488
  end
  object T_ADest_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_AVISOSDESTINATA' +
        'RIS, 1);'
      '      IF (NEW.DATA_INICI IS NULL) THEN NEW.DATA_INICI = "TODAY";'
      '   END;'
      'END')
    Dic1 = Avisos_Dest
    Dic1Name = 'Avisos_Destinataris'
    Abierta = False
    Borrame = False
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
    Left = 237
    Top = 488
  end
  object Avisos: TDic
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
        AutoContador.Generator = 'G_AVISOS'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Av'#237's'
        NombreDB = 'Avis'
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'avis'
        NombreDB = 'avis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Av'#237's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Avisos'
    NombreTabla = 'Avisos'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Av'#237's')
    IndiceVer = 'avis'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 488
  end
  object T_Avisos_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_AVISOS, 1);'
      '   END;'
      'END')
    Dic1 = Avisos
    Dic1Name = 'Avisos'
    Abierta = False
    Borrame = False
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
    Left = 93
    Top = 488
  end
  object ConfigDates: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'CAMP'
        NombreDB = 'CAMP'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'aplicaci'#243' o servidor bloquejat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DATA'
        NombreDB = 'DATA'
        Longitud = 0
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'DESCRIPCI'#211
        NombreDB = 'DESCRIPCIO'
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
          'CAMP')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Config Dates'
    NombreTabla = 'ConfigDates'
    Organiza = tbBase
    CamposVer.Strings = (
      'CAMP'
      'DATA'
      'DESCRIPCI'#211)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 148
    Top = 16
  end
  object BloqueigAcc: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Qu'#232' es bloqueja'
        NombreDB = 'Que'
        Longitud = 15
        Consulta = 'bloqueig'
        zType = tcIB_Varchar
        zNotNull = True
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
        Aplica = kcCaracter
        Nombre = 'Nom camp'
        NombreDB = 'NomID'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'c_historia, c_tractament, c_interv...'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Valor camp'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data bloqueig'
        NombreDB = 'Data'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari bloqueig'
        NombreDB = 'C_Usuari'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'PC bloqueig'
        NombreDB = 'NomPC'
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
          'Qu'#232' es bloqueja'
          'Valor camp')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Hist'
        NombreDB = 'hist'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist.')
        Tipo = tiForaneo
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'busca'
        NombreDB = 'busca'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Qu'#232' es bloqueja'
          'N'#250'm. Hist.'
          'Valor camp')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'bloqueig'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Qu'#232' es bloqueja')
        CopiarOrigen.Strings = (
          'Qu'#232' es bloqueja')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'BLOQUEIG_ACC'#39
      end>
    Nombre = 'Bloqueig accions'
    NombreTabla = 'Bloqueig_Acc'
    Organiza = tbBase
    CamposVer.Strings = (
      'Qu'#232' es bloqueja'
      'N'#250'm. Hist.'
      'Nom camp'
      'Valor camp')
    IndiceVer = 'busca'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 424
  end
  object LogMetges: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTALOGDBF'
        Comentario = 'Generator: ContaLogDbf'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DataHora'
        NombreDB = 'DataHora'
        Longitud = 20
        MaskDisplay = 'dd"."mmm"."yyyy HH:NN:SS'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge Old'
        NombreDB = 'C_MetgeOld'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge New'
        NombreDB = 'C_MetgeNew'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accio'
        NombreDB = 'Accio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I=Insert, U=Update, D=Delete'
      end>
    Indices = <
      item
        Nombre = 'ID'
        NombreDB = 'ID'
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
        Nombre = 'Fecha'
        NombreDB = 'Fecha'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'DataHora')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogMetges'
    NombreTabla = 'LogMetges'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'DataHora'
      'Metge Old'
      'Metge New'
      'Accio')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5203668866
    Left = 709
    Top = 208
  end
  object LogFili: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTALOGDBF'
        Comentario = 'Generator: ContaLogDbf'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DataHora'
        NombreDB = 'DataHora'
        Longitud = 20
        MaskDisplay = 'dd"."mmm"."yyyy HH:NN:SS'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Historia Old'
        NombreDB = 'C_HistoriaOld'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Historia New'
        NombreDB = 'C_HistoriaNew'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accio'
        NombreDB = 'Accio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I=Insert, U=Update, D=Delete'
      end>
    Indices = <
      item
        Nombre = 'ID'
        NombreDB = 'ID'
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
        Nombre = 'Fecha'
        NombreDB = 'Fecha'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'DataHora')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogFili'
    NombreTabla = 'LogFili'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'DataHora'
      'Historia Old'
      'Historia New'
      'Accio')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.520368044
    Left = 709
    Top = 258
  end
  object LogTract: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTALOGDBF'
        Comentario = 'Generator: ContaLogDbf'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DataHora'
        NombreDB = 'DataHora'
        Longitud = 20
        MaskDisplay = 'dd"."mmm"."yyyy HH:NN:SS'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HistoriaOld'
        NombreDB = 'C_HistoriaOld'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'HistoriaNew'
        NombreDB = 'C_HistoriaNew'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'PrestacioOld'
        NombreDB = 'C_PrestacioOld'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'PrestacioNew'
        NombreDB = 'C_PrestacioNew'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'DataIngresOld'
        NombreDB = 'Data_IngresOld'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'DataIngresNew'
        NombreDB = 'Data_IngresNew'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'MetgeOld'
        NombreDB = 'C_MetgeOld'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'MetgeNew'
        NombreDB = 'C_MetgeNew'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accio'
        NombreDB = 'Accio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I=Insert, U=Update, D=Delete'
      end>
    Indices = <
      item
        Nombre = 'ID'
        NombreDB = 'ID'
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
        Nombre = 'Fecha'
        NombreDB = 'Fecha'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'DataHora')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogTract'
    NombreTabla = 'LogTract'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'DataHora'
      'Tractament'
      'HistoriaOld'
      'HistoriaNew'
      'PrestacioOld'
      'PrestacioNew'
      'DataIngresOld'
      'DataIngresNew'
      'MetgeOld'
      'MetgeNew'
      'Accio')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.5203702431
    Left = 709
    Top = 316
  end
  object LogFacLin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTALOGDBF'
        Comentario = 'Generator: ContaLogDbf'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DataHora'
        NombreDB = 'DataHora'
        Longitud = 20
        MaskDisplay = 'dd"."mmm"."yyyy HH:NN:SS'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Intercon'
        NombreDB = 'C_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Ortesis'
        NombreDB = 'C_Ortesis'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Element'
        NombreDB = 'C_Element'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accio'
        NombreDB = 'Accio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I=Insert, U=Update, D=Delete'
      end>
    Indices = <
      item
        Nombre = 'ID'
        NombreDB = 'ID'
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
        Nombre = 'Fecha'
        NombreDB = 'Fecha'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'DataHora')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogFacLin'
    NombreTabla = 'LogFacLin'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'DataHora'
      'C Intercon'
      'C Ortesis'
      'C Element'
      'Accio')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37322.3734346065
    Left = 709
    Top = 366
  end
  object LogCodiOrtesis_Eliminada: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTALOGDBF'
        Comentario = 'Generator: ContaLogDbf'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DataHora'
        NombreDB = 'DataHora'
        Longitud = 20
        MaskDisplay = 'dd"."mmm"."yyyy HH:NN:SS'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'c ortesis'
        NombreDB = 'c_ortesis'
        Longitud = 5
        MaskDisplay = '#,##0;; '
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accio'
        NombreDB = 'Accio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I=Insert, U=Update, D=Delete'
      end>
    Indices = <
      item
        Nombre = 'ID'
        NombreDB = 'ID'
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
        Nombre = 'Fecha'
        NombreDB = 'Fecha'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'DataHora')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogCodiOrtesis'
    NombreTabla = 'LogCodiOrtesis'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'DataHora'
      'c ortesis'
      'Accio')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37322.3734338773
    Left = 709
    Top = 474
  end
  object LogAlergies: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Id'
        NombreDB = 'ID'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTALOGDBF'
        Comentario = 'Generator: ContaLogDbf'
      end
      item
        Aplica = kcMODELS
        Nombre = 'DataHora'
        NombreDB = 'DataHora'
        Longitud = 20
        MaskDisplay = 'dd"."mmm"."yyyy HH:NN:SS'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Historia Old'
        NombreDB = 'C_HistoriaOld'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Historia New'
        NombreDB = 'C_HistoriaNew'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accio'
        NombreDB = 'Accio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'I=Insert, U=Update, D=Delete'
      end>
    Indices = <
      item
        Nombre = 'ID'
        NombreDB = 'ID'
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
        Nombre = 'Fecha'
        NombreDB = 'Fecha'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'DataHora')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogAlergies'
    NombreTabla = 'LogAlergies'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'DataHora'
      'Historia Old'
      'Historia New'
      'Accio')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37144.520368044
    Left = 709
    Top = 416
  end
  object Control: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Control'
    ForceNombreDB = False
    Body.Strings = (
      '(NHC INTEGER, DATA_INICI DATE, DATA_FI DATE)'
      'RETURNS ('
      '      C_USUARI          VARCHAR(5),'
      '      NOM               VARCHAR(40),'
      '      C_GRUP            VARCHAR(2),'
      '      GRUP              VARCHAR(40),'
      '      VISUALITZACIONS   INTEGER,'
      '      MINUTS            INTEGER'
      ')'
      'AS'
      '      DECLARE VARIABLE MET    VARCHAR(5);'
      '      DECLARE VARIABLE FIS    VARCHAR(5);'
      '      DECLARE VARIABLE TER    VARCHAR(5);'
      '      DECLARE VARIABLE INF    VARCHAR(5);'
      '      DECLARE VARIABLE AUX    VARCHAR(5);'
      '      DECLARE VARIABLE PSI    VARCHAR(5);'
      '      DECLARE VARIABLE TRS    VARCHAR(5);'
      '      DECLARE VARIABLE LOG    VARCHAR(5);'
      '      DECLARE VARIABLE FLM    VARCHAR(5);'
      '      DECLARE VARIABLE FAR    VARCHAR(5);'
      '      DECLARE VARIABLE MUS    VARCHAR(5);'
      '      DECLARE VARIABLE FTR    VARCHAR(5);'
      '      DECLARE VARIABLE TROBAT SMALLINT;'
      'BEGIN'
      '      '
      
        '      FOR SELECT T.C_USUARI, M.NOMSENCER, T.C_GRUP, G.N_GRUP, Co' +
        'unt(*), Ceiling(Sum(T.HORAS-T.HORAE)*24*60)'
      '          FROM   TRAZACONTROL T'
      '          JOIN   VMETGES M ON T.C_USUARI = M.CODI'
      '          JOIN   GRUPS   G ON T.C_GRUP   = G.C_GRUP'
      '          WHERE  T.C_HISTORIA = :NHC'
      '          AND    T.APLICACIO = 1'
      
        '          AND    F_SOLOFECHA(T.HORAE) BETWEEN :DATA_INICI AND :D' +
        'ATA_FI'
      '          AND   (T.STATUS = '#39'V'#39' OR T.STATUS = '#39'VT'#39')'
      '          AND    T.HORAS - T.HORAE > 1/(24*60)'
      '          GROUP  BY T.C_USUARI, M.NOMSENCER, T.C_GRUP, G.N_GRUP'
      
        '          INTO  :C_USUARI, :NOM, :C_GRUP, :GRUP, :VISUALITZACION' +
        'S, :MINUTS'
      '      DO BEGIN'
      ''
      
        '            /* Buscar tractament d'#39'aquell moment i equip terapeu' +
        'tic o c_coordinador.'
      
        '               Si usuari no en forma part o no hi ha equip terap' +
        #232'utic, retornar el registre.'
      '               Oju revisions....'
      '            */'
      '            '
      '            TROBAT = 0;'
      '            '
      
        '            FOR SELECT C_COORDINADOR, C_FISIOTERAPEUTA, C_TERAPE' +
        'UTA, C_INFERMERIA, C_AUXILIAR, C_PSICOLEG, C_TREVALLSOCIAL, C_LO' +
        'GOPEDA, C_FISIO_LABO_MARXA, C_FISIO_AR, C_MUSICOTERAPEUTA, C_TER' +
        'APEUTA_RESP'
      '                FROM   TRACTAMENTS'
      '                WHERE  C_HISTORIA = :NHC'
      '                AND    DATA_INGRES <= :DATA_FI'
      
        '                AND   (DATA_ALTA >= :DATA_INICI OR DATA_ALTA IS ' +
        'NULL)'
      '                AND   :TROBAT = 0'
      
        '                INTO  :MET, :FIS, :TER, :INF, :AUX, :PSI, :TRS, ' +
        ':LOG, :FLM, :FAR, :MUS, :FTR'
      '            DO BEGIN'
      '                  IF ((C_USUARI = :MET)'
      '                  OR  (C_USUARI = :FIS)'
      '                  OR  (C_USUARI = :TER)'
      '                  OR  (C_USUARI = :INF)'
      '                  OR  (C_USUARI = :AUX)'
      '                  OR  (C_USUARI = :PSI)'
      '                  OR  (C_USUARI = :TRS)'
      '                  OR  (C_USUARI = :LOG)'
      '                  OR  (C_USUARI = :FLM)'
      '                  OR  (C_USUARI = :FAR)'
      '                  OR  (C_USUARI = :MUS)'
      '                  OR  (C_USUARI = :FTR))'
      '                  THEN'
      '                        TROBAT = 1;'
      '            END;'
      '            '
      '            IF (TROBAT = 0) THEN SUSPEND;'
      '      END;'
      'END')
    Dic1 = TrazaControl
    Dic1Name = 'TrazaControl'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 648
    Top = 16
  end
  object NHCnoactius: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NHCnoactius'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA_INICI DATE, DATA_FI DATE)'
      'RETURNS (NHC INTEGER)'
      'AS'
      '  DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      'BEGIN'
      '      '
      '      FOR SELECT DISTINCT C.C_HISTORIA, C_TRACTAMENT'
      '          FROM   TRAZACONTROL C'
      
        '          LEFT JOIN   TRACTAMENTS T ON C.C_HISTORIA = T.C_HISTOR' +
        'IA AND C.HORAE >= T.DATA_INGRES AND (C.HORAE < T.DATA_ALTA + 15 ' +
        'OR T.DATA_ALTA IS NULL)'
      '          WHERE  C.APLICACIO = 1'
      
        '          AND    F_SOLOFECHA(C.HORAE) BETWEEN :DATA_INICI AND :D' +
        'ATA_FI'
      '          AND   (C.STATUS = '#39'V'#39' OR C.STATUS = '#39'VT'#39')'
      '          AND    C.HORAS - C.HORAE > 1/(24*60)'
      '          INTO  :NHC, :C_TRACTAMENT'
      '      DO BEGIN'
      '            IF (C_TRACTAMENT IS NULL) THEN SUSPEND;'
      '      END;'
      'END')
    Dic1 = TrazaControl
    Dic1Name = 'TrazaControl'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 712
    Top = 16
  end
  object Alarma_Tipus: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi tipus alarma'
        NombreDB = 'C_TipusAlarma'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_TIPUSALARMA'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus alarma'
        NombreDB = 'N_TipusAlarma'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dret acc'#233's'
        NombreDB = 'Dret_Acces'
        Longitud = 15
        Consulta = 'dreta'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'a quins accessos ha de sortir l'#39'alarma'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dret usuari'
        NombreDB = 'Dret_Usuari'
        Longitud = 15
        Consulta = 'dretu'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'a quins usuaris o grups d'#39'usuaris ha de sortir l'#39'alarma'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Urg'#232'ncia'
        NombreDB = 'Urgencia'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        zDefault = '0'
        Comentario = 'per ordenar les alarmes'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi tipus alarma')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'dreta'
        NombreDB = 'dreta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Dret acc'#233's')
        Tipo = tiForaneo
        ForaneoDic = Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'dretu'
        NombreDB = 'dretu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Dret usuari')
        Tipo = tiForaneo
        ForaneoDic = Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'dreta'
        Master = Drets
        BuscaOrigen.Strings = (
          'Dret acc'#233's')
        CopiarOrigen.Strings = (
          'Dret acc'#233's')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'C_DRET starting with '#39'A'#39
      end
      item
        Nombre = 'dretu'
        Master = Drets
        BuscaOrigen.Strings = (
          'Dret usuari')
        CopiarOrigen.Strings = (
          'Dret usuari')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 
          'C_DRET starting with '#39'M'#39' or C_DRET starting with '#39'E'#39' or C_DRET s' +
          'tarting with '#39'G'#39
      end>
    Nombre = 'Alarma_Tipus'
    NombreTabla = 'Alarma_Tipus'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi tipus alarma'
      'Tipus alarma'
      'Dret acc'#233's'
      'Dret usuari'
      'Urg'#232'ncia')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 544
  end
  object Alarma: TDic
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
        AutoContador.Generator = 'G_ALARMA'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'TIpus alarma'
        NombreDB = 'C_TipusAlarma'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tipus'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'Descripcio'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'NHC'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'hist'
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
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'usr'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'a qui va dirigida l'#39'alarma'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data obertura'
        NombreDB = 'Data_obertura'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data tancament'
        NombreDB = 'Data_tancament'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
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
        Nombre = 'tipus'
        NombreDB = 'tipus'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'TIpus alarma')
        Tipo = tiForaneo
        ForaneoDic = Alarma_Tipus
        ForaneoCampos.Strings = (
          'Codi tipus alarma')
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
        Nombre = 'usr'
        NombreDB = 'usr'
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
        Nombre = 'datao'
        NombreDB = 'datao'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data obertura')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'datat'
        NombreDB = 'datat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data tancament')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = Alarma_Tipus
        BuscaOrigen.Strings = (
          'TIpus alarma')
        CopiarOrigen.Strings = (
          'TIpus alarma')
        CopiarMaster.Strings = (
          'Codi tipus alarma')
        BuscaMaster.Strings = (
          'Codi tipus alarma')
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
      end>
    Nombre = 'Alarma'
    NombreTabla = 'Alarma'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'TIpus alarma'
      'Descripci'#243
      'NHC'
      'C_Tractament'
      'Codi usuari'
      'Data obertura'
      'Data tancament')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 197
    Top = 544
  end
  object T_Alarma_Tipus_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.C_TIPUSALARMA IS NULL) THEN NEW.C_TIPUSALARMA = GE' +
        'N_ID(G_TIPUSALARMA, 1);'
      '   END;'
      'END')
    Dic1 = Alarma_Tipus
    Dic1Name = 'Alarma_Tipus'
    Abierta = False
    Borrame = False
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
    Left = 117
    Top = 544
  end
  object T_Alarma_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_ALARMA, 1);'
      
        '      IF (NEW.DATA_OBERTURA IS NULL) THEN NEW.DATA_OBERTURA = "N' +
        'OW";'
      '   END;'
      'END')
    Dic1 = Alarma
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
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 253
    Top = 544
  end
  object Llistat_Grups: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'LlistatGrups'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '  C_DRET VARCHAR(10),'
      '  DESCRIPCIO VARCHAR(80),'
      '  GRUPS VARCHAR(200)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_GRUP VARCHAR(2);'
      'BEGIN'
      ''
      '      FOR SELECT distinct da.c_dret, d.descripcio'
      '          FROM   DRETSACCES da'
      '          JOIN   DRETS d on d.C_DRET = da.C_DRET'
      '          INTO   :C_DRET, :DESCRIPCIO'
      '      DO BEGIN'
      '            GRUPS = '#39#39';'
      '            '
      '            FOR SELECT DISTINCT g.C_GRUP'
      '                FROM   DRETSACCES da'
      '                JOIN   ACCESOS a on a.C_ACCES = da.C_ACCES'
      
        '                JOIN   METGES  m ON m.EMAIL STARTING WITH a.C_LO' +
        'GIN ||'#39'@'#39' AND m.BAIXA = '#39'N'#39
      '                JOIN   GRUPS   g ON g.C_GRUP = m.C_GRUP'
      '                WHERE  da.C_DRET = :C_DRET'
      '                INTO  :C_GRUP'
      '            DO BEGIN'
      
        '                  IF (GRUPS <> '#39#39') THEN GRUPS = GRUPS || F_NLine' +
        '();'
      '                  '
      '                  GRUPS = GRUPS || C_GRUP;'
      '            END'
      '            '
      '            IF (GRUPS <> '#39#39') THEN SUSPEND;'
      '      END'
      ''
      '      FOR SELECT distinct dm.c_dret, d.descripcio'
      '          FROM   DRETSMETGES dm'
      '          JOIN   DRETS d ON d.C_DRET = dm.C_DRET'
      '          INTO   :C_DRET, :DESCRIPCIO'
      '      DO BEGIN'
      '            GRUPS = '#39#39';'
      ''
      '            FOR SELECT DISTINCT g.C_GRUP'
      '                FROM   DRETSMETGES dm'
      
        '                JOIN   METGES m on m.CODI = dm.C_USUARI and m.BA' +
        'IXA = '#39'N'#39
      '                JOIN   GRUPS  g ON g.C_GRUP = m.C_GRUP'
      '                WHERE  dm.C_DRET = :C_DRET'
      '                INTO  :C_GRUP'
      '            DO BEGIN'
      
        '                  IF (GRUPS <> '#39#39') THEN GRUPS = GRUPS || F_NLine' +
        '();'
      ''
      '                  GRUPS = GRUPS || C_GRUP;'
      '            END'
      ''
      '            IF (GRUPS <> '#39#39') THEN SUSPEND;'
      '      END'
      'END'
      ''
      ''
      ''
      '')
    Dic1 = Drets
    Dic1Name = 'Drets'
    Abierta = False
    Borrame = False
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
    Top = 72
  end
  object anonim: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'anonim'
    ForceNombreDB = False
    Body.Strings = (
      '(clau varchar(15))'
      'RETURNS (linea varchar(100))'
      'AS'
      '      DECLARE VARIABLE nom varchar(20);'
      '      DECLARE VARIABLE dni varchar(20);'
      '      DECLARE VARIABLE c_historia integer;'
      '      DECLARE VARIABLE c_espera integer;'
      '      DECLARE VARIABLE codi varchar(5);'
      'BEGIN'
      ''
      '      if (clau='#39'silenci2026'#39') then'
      '      begin'
      '            nom = "NNNNNNNNN";'
      '            dni = "12345678X";'
      '      '
      
        '            for select num_hist from filiacio WHERE dni <> "1234' +
        '5678X" order by num_hist into :c_historia do'
      '            begin'
      '                  linea = "fili: "||c_historia;'
      '                  SUSPEND;'
      '                  '
      '                  UPDATE filiacio SET'
      '                  NOMBRE = :nom,'
      '                  APELLIDO1 = "AAAAAAAAA",'
      '                  APELLIDO2 = "BBBBBBBBB",'
      '                  DNI = :dni,'
      '                  TSI = "XXXX0123456001",'
      '                  EMAIL = NULL,'
      '                  TELEFONO = "666123456",'
      '                  TELEFO1_FAM = NULL,'
      '                  TELEFO2_FAM = NULL,'
      '                  ADRESA =  "XXXXXXXXXXXXXXX"'
      '                  where num_hist = :c_historia;'
      '            end'
      '            '
      
        '            for select c_espera from espera where nom <> :nom or' +
        'der by c_espera into :c_espera do'
      '            begin'
      '                  linea = "espera: "||c_espera;'
      '                  SUSPEND;'
      '                  '
      '                  update espera set'
      '                  nom = :nom,'
      '                  cognom1 = "AAAAAAAAA",'
      '                  cognom2 = "BBBBBBBBB",'
      '                  telefon = "666123456",'
      '                  cip = "XXXX0123456001"'
      '                  where c_espera = :c_espera;'
      '            end'
      '            '
      '            '
      
        '            for select codi from metges where foto is not null o' +
        'rder by codi into :codi do'
      '            begin'
      '                  linea = "foto metge: "||codi;'
      '                  SUSPEND;'
      
        '                  update metges set foto = null where codi = :co' +
        'di;'
      '            end'
      ''
      
        '            for select codi from metges where dni is not null an' +
        'd dni <> :dni order by codi into :codi do'
      '            begin'
      '                  linea = "dni metge: "||codi;'
      '                  SUSPEND;'
      
        '                  update metges set dni = :dni where codi = :cod' +
        'i;'
      '            end'
      ''
      ''
      '            '
      '      end'
      'END')
    Dic1 = Config
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 513
    Top = 72
  end
end
