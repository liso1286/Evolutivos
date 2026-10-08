object wDataPerfilsNR: TwDataPerfilsNR
  OldCreateOrder = False
  Left = 535
  Top = 200
  Height = 248
  Width = 553
  object PerfilsNR: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C_Perfil'
        NombreDB = 'C_Perfil'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Perfil NR'
        NombreDB = 'N_Perfil'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Durada fase intensiva IG'
        NombreDB = 'Durada'
        Longitud = 2
        MaskDisplay = '#0" mesos";; '
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'en mesos'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Perfil')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Perfils NeuroRehab'
    NombreTabla = 'PerfilsNR'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Perfil'
      'Perfil NR'
      'Durada fase intensiva IG')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 24
  end
  object UM_PerfilNR: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C_UnitatMedica'
        NombreDB = 'C_UnitatMedica'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Severitat'
        NombreDB = 'Severitat'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'en mesos'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C_Perfil'
        NombreDB = 'C_Perfil'
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
          'C_UnitatMedica'
          'Severitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'um'
        NombreDB = 'um'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_UnitatMedica')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.UnitatM
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'perfil'
        NombreDB = 'perfil'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C_Perfil')
        Tipo = tiForaneo
        ForaneoDic = PerfilsNR
        ForaneoCampos.Strings = (
          'C_Perfil')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'um'
        Master = wDataCodis.UnitatM
        BuscaOrigen.Strings = (
          'C_UnitatMedica')
        CopiarOrigen.Strings = (
          'C_UnitatMedica')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'perfil'
        Master = PerfilsNR
        BuscaOrigen.Strings = (
          'C_Perfil')
        CopiarOrigen.Strings = (
          'C_Perfil')
        CopiarMaster.Strings = (
          'C_Perfil')
        BuscaMaster.Strings = (
          'C_Perfil')
      end>
    Nombre = 'UM - Perfil NR'
    NombreTabla = 'UM_PerfilNR'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_UnitatMedica'
      'Severitat'
      'C_Perfil')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 120
    Top = 24
  end
  object SeveritatUM: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi unitat m'#232'dica'
        NombreDB = 'C_UnitatMedica'
        Longitud = 2
        Consulta = 'um'
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi severitat'
        NombreDB = 'C_Severitat'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'en mesos'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Desc. Severitat'
        NombreDB = 'N_Severitat'
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
          'Codi unitat m'#232'dica'
          'Codi severitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'um'
        NombreDB = 'um'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi unitat m'#232'dica')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.UnitatM
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'um'
        Master = wDataCodis.UnitatM
        BuscaOrigen.Strings = (
          'Codi unitat m'#232'dica')
        CopiarOrigen.Strings = (
          'Codi unitat m'#232'dica')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end>
    Nombre = 'Severitat - UM'
    NombreTabla = 'SeveritatUM'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi unitat m'#232'dica'
      'Codi severitat'
      'Desc. Severitat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 216
    Top = 24
  end
  object ProcesNR: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Proc'#233's'
        NombreDB = 'C_Proces'
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
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK Filiacio'
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
        Comentario = 'data d'#39'ingr'#233's del 1r tractament del proc'#233's'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu d'#39'assist'#232'ncia'
        NombreDB = 'C_Motiu'
        Longitud = 8
        Consulta = 'motiu'
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
          'Proc'#233's')
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
        Nombre = 'histdata'
        NombreDB = 'histdata'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. Hist.'
          'Data inici')
        Tipo = tiSecundario
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
        Nombre = 'motiu'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Motiu d'#39'assist'#232'ncia')
        CopiarOrigen.Strings = (
          'Motiu d'#39'assist'#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'MOTIU'#39
      end>
    Nombre = 'ProcesNR'
    NombreTabla = 'ProcesNR'
    Organiza = tbBase
    CamposVer.Strings = (
      'Proc'#233's'
      'N'#250'm. Hist.'
      'Data inici')
    IndiceVer = 'histdata'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 88
  end
  object ProcesNR_Pautes: TDic
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
        AutoContador.Generator = 'G_PAUTESNR'
        Comentario = 'PK'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Proc'#233's'
        NombreDB = 'C_Proces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Proces'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK ProcesNR'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C_Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Tract'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'FK Tractaments'
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
        Comentario = 'data d'#39'inici de la pauta'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data prealta'
        NombreDB = 'Data_Prealta'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Dies extra'
        NombreDB = 'Dies_Extra'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'n'#250'mero de dies que sobrepassa de la durada m'#224'xima'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Setmanes 5D'
        NombreDB = 'Setmanes_5D'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Setmanes de periodicitat di'#224'ria'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Setmanes 3D'
        NombreDB = 'Setmanes_3D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Setmanes de periodicitat 3 dies a la setmana'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu'
        NombreDB = 'C_Motiu'
        Longitud = 2
        Consulta = 'motiu'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Motiu del canvi de prealta o pauta'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari'
        NombreDB = 'Comentari'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Comentari sobre el canvi de prealta o pauta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'I: registre d'#39'ingr'#233's, V: pauta vigent, B: pauta de baixa'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'metges'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'FK Metges'
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
        Nombre = 'Usuari suspensi'#243
        NombreDB = 'C_Usuari_Susp'
        Longitud = 5
        Consulta = 'metges2'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'FK Metges'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data suspensi'#243
        NombreDB = 'Data_Susp'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'SegueixProtocolDurada'
        NombreDB = 'SegueixProtocolDurada'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'per indicar si s'#39'ha saltat el protocol de durada m'#224'xima en algun' +
          ' moment'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'SegueixProtocolFreq'
        NombreDB = 'SegueixProtocolFreq'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'per indicar si s'#39'ha saltat el protocol de freq'#252#232'ncies en algun m' +
          'oment'
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
        Nombre = 'Proces'
        NombreDB = 'Proces'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Proc'#233's')
        Tipo = tiForaneo
        ForaneoDic = ProcesNR
        ForaneoCampos.Strings = (
          'Proc'#233's')
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
        Nombre = 'metges'
        NombreDB = 'metges'
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
        Nombre = 'metges2'
        NombreDB = 'metges2'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari suspensi'#243)
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
          'Proc'#233's'
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
          'Proc'#233's'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Proces'
        Master = ProcesNR
        BuscaOrigen.Strings = (
          'Proc'#233's')
        CopiarOrigen.Strings = (
          'Proc'#233's')
        CopiarMaster.Strings = (
          'Proc'#233's')
        BuscaMaster.Strings = (
          'Proc'#233's')
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
        Nombre = 'metges'
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
        Nombre = 'metges2'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari suspensi'#243)
        CopiarOrigen.Strings = (
          'Usuari suspensi'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
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
        WhereFiltro = 'TIPUSCODI = '#39'PREALTA.MOTIU'#39
      end>
    Nombre = 'ProcesNR_Pautes'
    NombreTabla = 'ProcesNR_Pautes'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Proc'#233's'
      'C_Tractament'
      'Data inici'
      'Data prealta'
      'Dies extra'
      'Setmanes 5D'
      'Setmanes 3D'
      'Motiu'
      'Estat'
      'SegueixProtocolDurada'
      'SegueixProtocolFreq')
    IndiceVer = 'data'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 120
    Top = 88
  end
  object ProcesNR_Torns: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Proc'#233's'
        NombreDB = 'C_Proces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'proces'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'PK i FK ProcesNR_Pautes'
      end
      item
        Aplica = kcFecha
        Nombre = 'Dia inici'
        NombreDB = 'Dia_Inici'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
        Comentario = 'PK. Dia inicial de la setmana'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia'
        NombreDB = 'Frequencia'
        Longitud = 2
        MaskDisplay = '0"D";; '
        Consulta = 'freq'
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = '2: 2D, 3: 3D, 5: 5D'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Torn'
        NombreDB = 'Torn'
        Longitud = 7
        Consulta = 'torn'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'FK TornAmb; en funci'#243' de la freq'#252#232'ncia'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'usuari'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'usuari '#250'ltim canvi'
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
        Comentario = 'data '#250'ltim canvi'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Dic = ProcesNR_Torns
        AutoContador.Campo = 'ID'
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
        Nombre = 'proces'
        NombreDB = 'proces'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Proc'#233's')
        Tipo = tiForaneo
        ForaneoDic = ProcesNR
        ForaneoCampos.Strings = (
          'Proc'#233's')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'torn'
        NombreDB = 'torn'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Torn')
        Tipo = tiForaneo
        ForaneoDic = wDataGimnas.TornAmb
        ForaneoCampos.Strings = (
          'Codi')
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
        Nombre = 'ordre'
        NombreDB = 'ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Proc'#233's'
          'Dia inici')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'proces'
        Master = ProcesNR
        BuscaOrigen.Strings = (
          'Proc'#233's')
        CopiarOrigen.Strings = (
          'Proc'#233's')
        CopiarMaster.Strings = (
          'Proc'#233's')
        BuscaMaster.Strings = (
          'Proc'#233's')
      end
      item
        Nombre = 'torn'
        Master = wDataGimnas.TornAmb
        BuscaOrigen.Strings = (
          'Torn')
        CopiarOrigen.Strings = (
          'Torn')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
        FiltroOrigen.Strings = (
          'Freq'#252#232'ncia')
        FiltroMaster.Strings = (
          'Freq'#252#232'ncia')
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
        Nombre = 'freq'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Freq'#252#232'ncia')
        CopiarOrigen.Strings = (
          'Freq'#252#232'ncia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'FREQUENCIA.RHF'#39
      end>
    Nombre = 'ProcesNR_Torns'
    NombreTabla = 'ProcesNR_Torns'
    Organiza = tbBase
    CamposVer.Strings = (
      'Proc'#233's'
      'Dia inici'
      'Freq'#252#232'ncia'
      'Torn')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 220
    Top = 88
  end
  object P_Inicialitzacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inicialitzacio'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '      DECLARE VARIABLE C_PROCES   INTEGER;'
      '      DECLARE VARIABLE C_HISTORIA INTEGER;'
      '      DECLARE VARIABLE DATA_INICI DATE;'
      '      DECLARE VARIABLE JAHIES     INTEGER;'
      '      '
      '      DECLARE VARIABLE C_TRACTAMENT   INTEGER;'
      '      DECLARE VARIABLE C_PRESTACIO    VARCHAR(4);'
      '      DECLARE VARIABLE DATA_PREALTA   DATE;'
      '      DECLARE VARIABLE C_METGEPREALTA VARCHAR(5);'
      '      DECLARE VARIABLE DATA_ALTA      DATE;'
      ''
      '      DECLARE VARIABLE ESTAT    VARCHAR(1);'
      '      DECLARE VARIABLE C_USUARI VARCHAR(5);'
      'BEGIN'
      ''
      '      FOR SELECT DISTINCT C_PROCES, C_HISTORIA'
      '          FROM   TRACTAMENTS'
      '          WHERE (C_PRESTACIO = "1004" OR C_PRESTACIO = "2014")'
      '          AND   (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY")'
      '          AND    C_PROCES IS NOT NULL'
      '          AND   (C_CENTREFAC <> "00" AND C_CENTREFAC <> "50")'
      '          ORDER  BY C_PROCES'
      '          INTO  :C_PROCES, :C_HISTORIA'
      '      DO BEGIN'
      '      '
      
        '            SELECT MIN(DATA_INGRES) FROM TRACTAMENTS WHERE C_PRO' +
        'CES = :C_PROCES INTO :DATA_INICI;'
      '            '
      
        '            SELECT COUNT(*) FROM PROCESNR WHERE C_PROCES = :C_PR' +
        'OCES INTO :JAHIES;'
      '            '
      
        '            IF (JAHIES = 0) THEN INSERT INTO PROCESNR (C_PROCES,' +
        ' C_HISTORIA, DATA_INICI)'
      
        '                                 VALUES (:C_PROCES, :C_HISTORIA,' +
        ' :DATA_INICI);'
      ''
      
        '            FOR SELECT C_TRACTAMENT, C_PRESTACIO, DATA_PREALTA, ' +
        'C_METGEPREALTA, DATA_ALTA'
      '                FROM   TRACTAMENTS'
      '                WHERE  C_PROCES = :C_PROCES'
      
        '                AND   (C_PRESTACIO = "1004" OR C_PRESTACIO = "20' +
        '14")'
      '                ORDER  BY DATA_INGRES'
      
        '                INTO  :C_TRACTAMENT, :C_PRESTACIO, :DATA_PREALTA' +
        ', :C_METGEPREALTA, :DATA_ALTA'
      '            DO BEGIN'
      '                  /* Ingr'#233's: estat I */'
      '                  IF (C_PRESTACIO = "1004") THEN ESTAT = "I";'
      
        '                  /* Ambulatori: estat V si no '#233's alta, B altram' +
        'ent */'
      
        '                  ELSE IF ((DATA_ALTA IS NULL) OR (DATA_ALTA >= ' +
        '"TODAY")) THEN ESTAT = "V";'
      
        '                                                                ' +
        '          ELSE ESTAT = "B";'
      '            '
      
        '                  /* Si hi ha data de prealta posem el metge de ' +
        'prealta com a usuari de la pauta */'
      
        '                  /* Altrament, si hi ha data d'#39'alta, la posem c' +
        'om a prealta de la pauta */'
      '                  C_USUARI = NULL;'
      
        '                  IF (DATA_PREALTA IS NOT NULL) THEN C_USUARI = ' +
        'C_METGEPREALTA;'
      
        '                  ELSE IF (DATA_ALTA IS NOT NULL) THEN DATA_PREA' +
        'LTA = :DATA_ALTA;'
      ''
      
        '                  /* Insertem el registre de la pauta encara que' +
        ' no hi hagi data de prealta.'
      
        '                     Quedar'#224' buit per'#242' ho programaran des de la ' +
        'pestanya del calendari, com si reprogramessin */'
      '                     '
      
        '                  INSERT INTO PROCESNR_PAUTES (ID, C_PROCES, C_T' +
        'RACTAMENT, DATA_PREALTA, C_USUARI, ESTAT)'
      
        '                  VALUES (GEN_ID(G_PAUTESNR, 1), :C_PROCES, :C_T' +
        'RACTAMENT, :DATA_PREALTA, :C_USUARI, :ESTAT);'
      '            END;'
      '            '
      '            /* Posem Fi_Proces = "S" als ambulatoris actius */'
      
        '            IF ((C_PRESTACIO = "2014") AND ((DATA_ALTA IS NULL) ' +
        'OR (DATA_ALTA >= "TODAY")))'
      '            THEN'
      '                  UPDATE TRACTAMENTS'
      '                  SET    FI_PROCES = "S"'
      '                  WHERE  C_TRACTAMENT = :C_TRACTAMENT;'
      '      END;'
      'END')
    Dic1 = ProcesNR
    Dic1Name = 'ProcesNR'
    Abierta = False
    Borrame = False
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
    Top = 146
  end
  object T_Pautes_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      ''
      '  DECLARE VARIABLE OLD_DATA_PREALTA DATE;'
      ''
      '  DECLARE VARIABLE C_HISTORIA    INTEGER;'
      '  DECLARE VARIABLE C_TRACTAMENT  INTEGER;'
      '  DECLARE VARIABLE C_COORDINADOR VARCHAR(5);'
      '  '
      '  DECLARE VARIABLE DIA           SMALLINT;'
      '  DECLARE VARIABLE VISITA2003    DATE;'
      '  DECLARE VARIABLE ESFESTIU      INTEGER;'
      '  '
      '  DECLARE VARIABLE DATA_FIM      DATE;'
      '  DECLARE VARIABLE FIM_PENDENT   INTEGER;'
      '  '
      '  DECLARE VARIABLE INFER   VARCHAR(250);'
      '  DECLARE VARIABLE FT_RESP VARCHAR(250);'
      '  DECLARE VARIABLE PSICO   VARCHAR(250);'
      '  DECLARE VARIABLE TSOCIAL VARCHAR(250);'
      '  '
      '  DECLARE VARIABLE TE_EASE SMALLINT;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /* PROGRAMACI'#211' AMBULAT'#210'RIA - Visites de seguiment */'
      '   '
      
        '      /* Si avancen la data de prealta del proc'#233's, hem d'#39'elimina' +
        'r les visites de seguiment que queden fora */'
      
        '      /* Si '#233's la primera pauta ambulat'#242'ria, hem d'#39'insertar les ' +
        'visites de seguiment */'
      
        '      /* Si posposen la data de prealta del proc'#233's, hem d'#39'insert' +
        'ar les visites de seguiment que s'#39'afegeixen */'
      ''
      
        '      /* Nom'#233's ho fem en insertar una pauta ambulat'#242'ria; ie: est' +
        'at=V */'
      '      IF (NEW.ESTAT = "V") THEN'
      '      BEGIN'
      
        '            /* Busquem la data de prealta de l'#39#250'ltima pauta ambu' +
        'lat'#242'ria, si n'#39'hi ha */'
      '            SELECT DATA_PREALTA'
      '            FROM   PROCESNR_PAUTES'
      '            WHERE  C_PROCES = NEW.C_PROCES'
      '            AND    ESTAT = "B"'
      '            ORDER  BY ID DESC'
      '            ROWS   1'
      '            INTO  :OLD_DATA_PREALTA;'
      '      '
      '      '
      
        '            /* Si avancen la data de prealta del proc'#233's NR, elim' +
        'inem les visites de seguiment posteriors */'
      
        '            IF ((OLD_DATA_PREALTA IS NOT NULL) AND (NEW.DATA_PRE' +
        'ALTA < OLD_DATA_PREALTA))'
      '            THEN'
      '                  DELETE FROM ESPERA'
      '                  WHERE C_PROCES = NEW.C_PROCES'
      '                  AND   C_PRESTACIO = "2003"'
      '                  AND   DATA_PREINGRES >= NEW.DATA_PREALTA;'
      ''
      ''
      
        '            /* Si '#233's la primera pauta o posposen la data de prea' +
        'lta, insertem les visites corresponents */'
      '            ELSE IF ((OLD_DATA_PREALTA IS NULL)'
      
        '                 OR ((OLD_DATA_PREALTA IS NOT NULL) AND (NEW.DAT' +
        'A_PREALTA > OLD_DATA_PREALTA))) THEN'
      '            BEGIN'
      
        '                  /* Busquem el tractament ambulatori actiu i la' +
        ' hist'#242'ria */'
      '                  SELECT C_HISTORIA, C_TRACTAMENT, C_COORDINADOR'
      '                  FROM   TRACTAMENTS'
      '                  WHERE  C_PROCES = NEW.C_PROCES'
      '                  AND    C_PRESTACIO = "2014"'
      '                  AND    DATA_ALTA IS NULL'
      
        '                  INTO  :C_HISTORIA, :C_TRACTAMENT, :C_COORDINAD' +
        'OR;'
      '            '
      '                  IF (C_HISTORIA IS NOT NULL) THEN'
      '                  BEGIN'
      
        '                        /* Programem les visites de seguiment fi' +
        'ns a la nova prealta de la pauta */'
      ''
      
        '                        /* Busquem l'#39#250'ltima visita de seguiment ' +
        'no exclosa (realitzada o programada) */'
      '                        SELECT DATA_PREINGRES'
      '                        FROM   ESPERA'
      '                        WHERE  C_PROCES = NEW.C_PROCES'
      '                        AND    C_PRESTACIO = "2003"'
      '                        AND    EXCLOS = "N"'
      '                        ORDER  BY DATA_PREINGRES DESC'
      '                        ROWS   1'
      '                        INTO  :VISITA2003;'
      ''
      
        '                        /* Si no trobem l'#39#250'ltima visita de segui' +
        'ment, les generarem a partir de la data d'#39'ingr'#233's */'
      '                        IF (VISITA2003 IS NULL)'
      
        '                        THEN  SELECT DATA_INGRES FROM TRACTAMENT' +
        'S WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :VISITA2003;'
      ''
      '                        /* Dia de visita del metge a CE: */'
      
        '                        SELECT DIA FROM METGEPRESTA WHERE CODI =' +
        ' :C_COORDINADOR AND C_PRESTACIO = "2003" INTO :DIA;'
      
        '                        /* si no trobem el dia que li toca, posa' +
        'rem dilluns */'
      
        '                        IF ((DIA = 0) OR (DIA IS NULL)) THEN DIA' +
        ' = 1;'
      ''
      
        '                        /* La 1a visita ser'#224' 4 setmanes despr'#233's ' +
        'de l'#39#250'ltima o de l'#39'ingr'#233's */'
      
        '                        VISITA2003 = VISITA2003 - F_DIADELASEMAN' +
        'A(VISITA2003) + DIA + 28;'
      '                  '
      
        '                        /* No generarem visites passades (potser' +
        ' inserten una pauta quan fa dies que l'#39'ambulatori ha comen'#231'at) *' +
        '/'
      
        '                        WHILE (VISITA2003 < "TODAY") DO VISITA20' +
        '03 = VISITA2003 + 7;'
      ''
      '                        WHILE (VISITA2003 < NEW.DATA_PREALTA) DO'
      '                        BEGIN'
      
        '                              /* Si cau en festiu, mirem la setm' +
        'ana anterior */'
      
        '                              SELECT COUNT(*) FROM FESTIUS WHERE' +
        ' DATA = :VISITA2003 INTO :ESFESTIU;'
      
        '                              IF (ESFESTIU > 0) THEN VISITA2003 ' +
        '= VISITA2003 - 7;'
      
        '                              /* Si tamb'#233' cau en festiu, mirem l' +
        'a seg'#252'ent, successivament */'
      
        '                              SELECT COUNT(*) FROM FESTIUS WHERE' +
        ' DATA = :VISITA2003 INTO :ESFESTIU;'
      '                              WHILE (ESFESTIU > 0) DO'
      '                              BEGIN'
      '                                    VISITA2003 = VISITA2003 + 7;'
      
        '                                    SELECT COUNT(*) FROM FESTIUS' +
        ' WHERE DATA = :VISITA2003 INTO :ESFESTIU;'
      '                              END;'
      ''
      
        '                              /* Programem la visita de seguimen' +
        't */'
      '                              IF (VISITA2003 < NEW.DATA_PREALTA)'
      '                              THEN'
      
        '                                    INSERT INTO ESPERA (C_ESPERA' +
        ', C_HISTORIA, C_PROCES, C_PRESTACIO, C_MOTIU, DATA_INCLUSIO, DAT' +
        'A_PREINGRES, HORA_PREINGRES,'
      
        '                                                        C_COORDI' +
        'NADOR, NOM, COGNOM1, COGNOM2, C_UNITAT, COMENTARIMETGE, C_ESTAT)'
      
        '                                    SELECT GEN_ID(CONTALLISTAESP' +
        'ERA, 1), :C_HISTORIA, NEW.C_PROCES, "2003", 79, "TODAY", :VISITA' +
        '2003, "00:00",'
      
        '                                           :C_COORDINADOR, F.NOM' +
        'BRE, F.APELLIDO1, F.APELLIDO2, F.UNITAT, "PROC'#201'S NR - AUTOM'#192'TICA' +
        '", 15'
      '                                    FROM   FILIACIO F'
      
        '                                    WHERE  F.NUM_HIST = :C_HISTO' +
        'RIA;'
      ''
      '                              VISITA2003 = VISITA2003 + 28;'
      '                        END;'
      '                  END;'
      '            END;'
      '      END;'
      '      '
      '      '
      '      /* PREALTA TIR HOSPITALITZACI'#211' SCS - av'#237's i escala FIM */'
      '      '
      
        '      /* 1. Si modifiquen la data de prealta per m'#233's enll'#224' o aba' +
        'ns de 5 dies de la que constava, enviem un correu-e d'#39'av'#237's als c' +
        'aps d'#39#224'rea - [ho sabrem pq hi ha motiu de justificaci'#243'] */'
      
        '      /* 2. Si la "posposen" per "motiu 2"  (millora inesperada)' +
        ', disparem tamb'#233' l'#39'escala FIM (si no est'#224' entrada els 15 darrers' +
        ' dies, i no est'#224' pendent d'#39'entrar) */'
      '      '
      '      IF ((NEW.ESTAT = "I") AND (NEW.C_MOTIU IS NOT NULL)) THEN'
      '      BEGIN'
      '            /* NHC */'
      
        '            SELECT C_HISTORIA FROM PROCESNR WHERE C_PROCES = NEW' +
        '.C_PROCES INTO :C_HISTORIA;'
      '            '
      '            /* Busquem l'#39'equip assistencial del proc'#233's NR */'
      '            SELECT I.EMAIL, F.EMAIL, P.EMAIL, S.EMAIL'
      '            FROM TRACTAMENTS T'
      '            LEFT JOIN METGES I ON T.C_INFERMERIA     = I.CODI'
      '            LEFT JOIN METGES F ON T.C_TERAPEUTA_RESP = F.CODI'
      '            LEFT JOIN METGES P ON T.C_PSICOLEG       = P.CODI'
      '            LEFT JOIN METGES S ON T.C_TREVALLSOCIAL  = S.CODI'
      '            WHERE C_PROCES = NEW.C_PROCES'
      '            ORDER BY T.DATA_INGRES DESC'
      '            ROWS 1'
      '            INTO :INFER, :FT_RESP, :PSICO, :TSOCIAL;'
      '            '
      '            /* Busquem la data de prealta anterior */'
      '            SELECT DATA_PREALTA'
      '            FROM   PROCESNR_PAUTES'
      '            WHERE  C_PROCES = NEW.C_PROCES'
      '            AND    ESTAT = "I"'
      '            AND    ID <> NEW.ID'
      '            ORDER  BY ID DESC'
      '            ROWS   1'
      '            INTO  :OLD_DATA_PREALTA;'
      '            '
      '            /* 1. Av'#237's caps d'#39#224'rea */'
      
        '            /* S'#39'ha d'#39'enviar a l'#39'equip assistencial i als destin' +
        'ataris que hi ha parametritzats a AVISOS_DESTINATARIS - fem serv' +
        'ir un altre codi d'#39'av'#237's perqu'#232' els caps d'#39#224'rea no ho rebin m'#250'lti' +
        'ples vegades */'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS)'
      '            VALUES ("NOW",'
      '                    55,'
      '                    "Av'#237's CANVI DE PREALTA",'
      
        '                    "S'#39#39'ha modificat la prealta del pacient NHC ' +
        '" || :C_HISTORIA || " pel dia "  || F_DateToStr(NEW.DATA_PREALTA' +
        ') || '#39'.'#39' || F_NLine() ||'
      
        '                    "Data de prealta anterior: "|| F_DateToStr(:' +
        'OLD_DATA_PREALTA));'
      ''
      '            IF (INFER IS NOT NULL) THEN'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS, DESTINATARI)'
      '            VALUES ("NOW",'
      '                    58,'
      '                    "Av'#237's CANVI DE PREALTA",'
      
        '                    "S'#39#39'ha modificat la prealta del pacient NHC ' +
        '" || :C_HISTORIA || " pel dia "  || F_DateToStr(NEW.DATA_PREALTA' +
        ') || '#39'.'#39' || F_NLine() ||'
      
        '                    "Data de prealta anterior: "|| F_DateToStr(:' +
        'OLD_DATA_PREALTA), :INFER);'
      '                    '
      '            IF (FT_RESP IS NOT NULL) THEN'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS, DESTINATARI)'
      '            VALUES ("NOW",'
      '                    58,'
      '                    "Av'#237's CANVI DE PREALTA",'
      
        '                    "S'#39#39'ha modificat la prealta del pacient NHC ' +
        '" || :C_HISTORIA || " pel dia "  || F_DateToStr(NEW.DATA_PREALTA' +
        ') || '#39'.'#39' || F_NLine() ||'
      
        '                    "Data de prealta anterior: "|| F_DateToStr(:' +
        'OLD_DATA_PREALTA), :FT_RESP);'
      ''
      '            IF (PSICO IS NOT NULL) THEN'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS, DESTINATARI)'
      '            VALUES ("NOW",'
      '                    58,'
      '                    "Av'#237's CANVI DE PREALTA",'
      
        '                    "S'#39#39'ha modificat la prealta del pacient NHC ' +
        '" || :C_HISTORIA || " pel dia "  || F_DateToStr(NEW.DATA_PREALTA' +
        ') || '#39'.'#39' || F_NLine() ||'
      
        '                    "Data de prealta anterior: "|| F_DateToStr(:' +
        'OLD_DATA_PREALTA), :PSICO);'
      '                    '
      '            IF (TSOCIAL IS NOT NULL) THEN'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS, DESTINATARI)'
      '            VALUES ("NOW",'
      '                    58,'
      '                    "Av'#237's CANVI DE PREALTA",'
      
        '                    "S'#39#39'ha modificat la prealta del pacient NHC ' +
        '" || :C_HISTORIA || " pel dia "  || F_DateToStr(NEW.DATA_PREALTA' +
        ') || '#39'.'#39' || F_NLine() ||'
      
        '                    "Data de prealta anterior: "|| F_DateToStr(:' +
        'OLD_DATA_PREALTA), :TSOCIAL);'
      ''
      '            SELECT COUNT(*) FROM TRACTAMENTS T'
      
        '            JOIN PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO A' +
        'ND P.ESEASE = '#39'S'#39
      '            WHERE T.C_HISTORIA = :C_HISTORIA'
      '            AND (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '            INTO :TE_EASE;'
      ''
      '            IF (TE_EASE > 0) THEN'
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS)'
      '            VALUES ("NOW",'
      '                    56,'
      '                    "Av'#237's CANVI DE PREALTA EASE",'
      
        '                    "S'#39#39'ha modificat la prealta del pacient NHC ' +
        '" || :C_HISTORIA || " pel dia "  || F_DateToStr(NEW.DATA_PREALTA' +
        ') || '#39'.'#39' || F_NLine() ||'
      
        '                    "Data de prealta anterior: "|| F_DateToStr(:' +
        'OLD_DATA_PREALTA));'
      '      '
      '            /* 2. Escala FIM */'
      
        '            IF ((OLD_DATA_PREALTA < NEW.DATA_PREALTA) AND (NEW.C' +
        '_MOTIU = 2)) THEN'
      '            BEGIN'
      '                  DATA_FIM = NULL;'
      
        '                  /* Busquem entrada recent (15 dies) de l'#39'escal' +
        'a FIM */'
      '                  SELECT MAX(DATA_ADM)'
      '                  FROM   ESCALESCAP'
      '                  WHERE  C_HISTORIA = :C_HISTORIA'
      '                  AND    C_ESCALA = 1'
      '                  AND    ANULAT = "N"'
      '                  INTO  :DATA_FIM;'
      ''
      
        '                  /* Si no la trobem, busquem FIM pendent de tip' +
        'us "C" */'
      
        '                  IF ((DATA_FIM IS NULL) OR (:DATA_FIM < "TODAY"' +
        ' -15)) THEN'
      '                  BEGIN'
      '                        SELECT COUNT(*)'
      '                        FROM   ESCALESPENDENTS'
      '                        WHERE  C_PROCES = NEW.C_PROCES'
      '                        AND    C_ESCALA = 1'
      '                        AND    ESTAT = 1'
      '                        AND    TIPUS = '#39'C'#39
      '                        INTO  :FIM_PENDENT;'
      ''
      
        '                        /* Si no la trobem, inserim FIM pendent ' +
        'de tipus "C" */'
      '                        IF (FIM_PENDENT = 0) THEN'
      '                        BEGIN'
      
        '                              INSERT INTO ESCALESPENDENTS (C_TRA' +
        'CTAMENT, C_PROCES, C_ESCALA, C_AREA, TIPUS, ESTAT, DATA_PENDENT)'
      
        '                              VALUES (NEW.C_TRACTAMENT, NEW.C_PR' +
        'OCES, 1, "REH", "C", 1, "NOW");'
      '                        END;'
      '                  END;'
      ''
      '            END;'
      '            '
      '      END;'
      '      '
      '   END;'
      '     '
      'END')
    Dic1 = ProcesNR_Pautes
    Dic1Name = 'ProcesNR_Pautes'
    Abierta = False
    Borrame = False
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
    Left = 120
    Top = 146
  end
  object P_ActualitzaFreq: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActualitzaFreq'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS'
      '      (ret varchar(100))'
      'AS'
      '      DECLARE VARIABLE C_PROCES     INTEGER;'
      '      DECLARE VARIABLE TORN         VARCHAR(7);'
      '      DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '      DECLARE VARIABLE C_HISTORIA   INTEGER;'
      '      DECLARE VARIABLE C_FREQUENCIA VARCHAR(7);'
      ''
      '      DECLARE VARIABLE C_TORN       VARCHAR(7);'
      ''
      '      DECLARE VARIABLE ID            INTEGER;'
      '      DECLARE VARIABLE DIA_SEMANA    INTEGER;'
      '      DECLARE VARIABLE HORA          INTEGER;'
      '      DECLARE VARIABLE C_ACTIVITAT   VARCHAR(15);'
      '      DECLARE VARIABLE FICTICIA      VARCHAR(1);'
      '      DECLARE VARIABLE C_USUARI_INI  VARCHAR(5);'
      '      DECLARE VARIABLE C_METGEVALIDA VARCHAR(5);'
      '      DECLARE VARIABLE DATA_VALIDA   DATE;'
      '      DECLARE VARIABLE C_TRACT       INTEGER;'
      'BEGIN'
      ''
      
        '    /* Procedure al programador (cada matinada, tot i que nom'#233's ' +
        'actua si '#233's dissabte'
      
        '       Actualitza la freq'#252#232'ncia de Tractaments segons el torn de' +
        ' la Pauta NR */'
      ''
      '    IF (F_DIADELASEMANA("TODAY") = 6) THEN'
      '    BEGIN'
      
        '        /* Per cada proc'#233's agafem el torn de la setmana que come' +
        'n'#231'a dilluns (avui '#233's dissabte) */'
      '        FOR SELECT C_PROCES, TORN'
      '            FROM   PROCESNR_TORNS'
      '            WHERE  DIA_INICI = "TODAY" + 2'
      '            INTO  :C_PROCES, :TORN'
      '        DO BEGIN'
      '            IF ((TORN IS NOT NULL) AND (TORN <> '#39#39')) THEN'
      '            BEGIN'
      '                C_TRACTAMENT = NULL;'
      '                C_HISTORIA   = NULL;'
      '                C_FREQUENCIA = NULL;'
      ''
      '                SELECT C_TRACTAMENT, C_HISTORIA, C_FREQUENCIA'
      '                FROM   TRACTAMENTS'
      '                WHERE  C_PROCES = :C_PROCES'
      '                AND    C_PRESTACIO = "2014"'
      
        '                AND   (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY"' +
        ' + 2)'
      '                INTO  :C_TRACTAMENT, :C_HISTORIA, :C_FREQUENCIA;'
      ''
      '                /* Si canvia de torn */'
      
        '                IF ((C_FREQUENCIA IS NOT NULL) AND (C_FREQUENCIA' +
        ' <> TORN)) THEN'
      '                BEGIN'
      ''
      
        '                    /* 1. Actualitzem la freq'#252#232'ncia de l'#39'ambulat' +
        'ori actiu amb el torn que li tocar'#224' */'
      '                    UPDATE TRACTAMENTS'
      '                    SET    C_FREQUENCIA = :TORN'
      '                    WHERE  C_TRACTAMENT = :C_TRACTAMENT;'
      
        '                    ret="Actualitzem frequencia del tractament "' +
        '||C_TRACTAMENT || " a " || TORN; suspend;'
      ''
      
        '                    /* 2. Movem les activitats de fict'#237'cies a no' +
        ' fict'#237'cies segons correspongui */'
      ''
      
        '                    SELECT CODI2 FROM TORNAMB WHERE CODI = :TORN' +
        ' INTO :C_TORN;'
      ''
      '                    FICTICIA = NULL;'
      
        '                    FOR SELECT A.ID, A.DIA_SEMANA, A.HORA, A.C_A' +
        'CTIVITAT, C.FICTICIA, A.C_USUARI_INI, A.C_METGEVALIDA, A.DATA_VA' +
        'LIDA, A.C_TRACTAMENT'
      '                        FROM   AGENDAPACIENT A'
      
        '                        JOIN   CODICAMPSALFA C ON A.C_ACTIVITAT ' +
        '= C.C_CODI AND C.FICTICIA <> "N"  /* Nom'#233's les q tenen correspon' +
        'd'#232'ncia */'
      '                        WHERE  A.C_HISTORIA = :C_HISTORIA'
      '                        AND    A.DATAF IS NULL'
      
        '                        INTO   :ID, :DIA_SEMANA, :HORA, :C_ACTIV' +
        'ITAT, :FICTICIA, :C_USUARI_INI, :C_METGEVALIDA, :DATA_VALIDA, :C' +
        '_TRACT'
      '                    DO BEGIN'
      '                        IF (FICTICIA IS NOT NULL) THEN'
      '                        BEGIN'
      
        '                              /* Si era fict'#237'cia i ara t'#233' torn a' +
        'quest dia, la passem a real */'
      
        '                              IF ((FICTICIA = "F" ) AND (F_Mid(C' +
        '_TORN, DIA_SEMANA-1, 1) <> "-")) THEN'
      '                              BEGIN'
      
        '                                  /* donem de baixa l'#39'activitat ' +
        'fict'#237'cia */'
      
        '                                  UPDATE AGENDAPACIENT SET DATAF' +
        ' = "TODAY", C_USUARI_FIN = :C_USUARI_INI WHERE ID = :ID;'
      
        '                                  ret="Agendapacient, donem de b' +
        'aixa l'#39'activitat fict'#237'cia "||ID|| " del usuari " || c_usuari_ini' +
        '; suspend;'
      ''
      
        '                                  /* insertem l'#39'activitat real *' +
        '/'
      
        '                                  C_ACTIVITAT = F_StripString(C_' +
        'ACTIVITAT, '#39'*'#39');'
      ''
      
        '                                  INSERT INTO AGENDAPACIENT (ID,' +
        ' C_TRACTAMENT, C_HISTORIA, DIA_SEMANA, HORA, C_ACTIVITAT,'
      
        '                                                             C_U' +
        'SUARI_INI, DATAI, C_METGEVALIDA, DATA_VALIDA)'
      
        '                                         VALUES (GEN_ID(AGENDAPA' +
        'CIENT_ID, 1), :C_TRACT, :C_HISTORIA, :DIA_SEMANA, :HORA, :C_ACTI' +
        'VITAT,'
      
        '                                                 :C_USUARI_INI, ' +
        '"TODAY", :C_METGEVALIDA, :DATA_VALIDA);'
      
        '                                  ret="Agendapacient, insertem a' +
        'ctivitat real tractament"||c_tract; suspend;'
      '                              END;'
      '                        '
      
        '                              /* Si era real i ara no t'#233' torn aq' +
        'uest dia, la passem a fict'#237'cia */'
      
        '                              ELSE IF  ((FICTICIA = "R") AND (F_' +
        'Mid(C_TORN, DIA_SEMANA-1, 1) = "-")) THEN'
      '                              BEGIN'
      
        '                                  /* donem de baixa l'#39'activitat ' +
        'real */'
      
        '                                  UPDATE AGENDAPACIENT SET DATAF' +
        ' = "TODAY", C_USUARI_FIN = :C_USUARI_INI WHERE ID = :ID;'
      
        '                                  ret="Agendapacient, donem de b' +
        'aixa l'#39'activitat real "||ID|| " del usuari " || c_usuari_ini; su' +
        'spend;'
      ''
      
        '                                  /* insertem l'#39'activitat fict'#237'c' +
        'ia */'
      
        '                                  C_ACTIVITAT = C_ACTIVITAT || '#39 +
        '*'#39';'
      ''
      
        '                                  INSERT INTO AGENDAPACIENT (ID,' +
        ' C_TRACTAMENT, C_HISTORIA, DIA_SEMANA, HORA, C_ACTIVITAT,'
      
        '                                                             C_U' +
        'SUARI_INI, DATAI, C_METGEVALIDA, DATA_VALIDA)'
      
        '                                  VALUES (GEN_ID(AGENDAPACIENT_I' +
        'D, 1), :C_TRACT, :C_HISTORIA, :DIA_SEMANA, :HORA, :C_ACTIVITAT,'
      
        '                                          :C_USUARI_INI, "TODAY"' +
        ', :C_METGEVALIDA, :DATA_VALIDA);'
      
        '                                  ret="Agendapacient, insertem a' +
        'ctivitat ficticia tractament"||c_tract; suspend;'
      '                              END;'
      '                        END;'
      '                    END;'
      '                                    '
      '                END;'
      '            END;'
      '        END;'
      '    END;'
      'END')
    Dic1 = ProcesNR
    Dic1Name = 'ProcesNR'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 220
    Top = 146
  end
  object P_ActualitzaFreq_Dll: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActualitzaFreqDll'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '  C_HISTORIA_S INTEGER,'
      '  C_TRACTAMENT_S INTEGER,'
      '  C_PROCES_S INTEGER,'
      '  FREQ1_S VARCHAR(7),'
      '  FREQ2_S VARCHAR(7),'
      '  CANVIFICTICIA VARCHAR(1)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_PROCES     INTEGER;'
      '      DECLARE VARIABLE TORN         VARCHAR(7);'
      '      DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '      DECLARE VARIABLE C_HISTORIA   INTEGER;'
      '      DECLARE VARIABLE C_FREQUENCIA VARCHAR(7);'
      ''
      '      DECLARE VARIABLE C_TORN       VARCHAR(7);'
      ''
      '      DECLARE VARIABLE ID            INTEGER;'
      '      DECLARE VARIABLE DIA_SEMANA    INTEGER;'
      '      DECLARE VARIABLE HORA          INTEGER;'
      '      DECLARE VARIABLE C_ACTIVITAT   VARCHAR(15);'
      '      DECLARE VARIABLE FICTICIA      VARCHAR(1);'
      '      DECLARE VARIABLE C_USUARI_INI  VARCHAR(5);'
      '      DECLARE VARIABLE C_METGEVALIDA VARCHAR(5);'
      '      DECLARE VARIABLE DATA_VALIDA   DATE;'
      '      DECLARE VARIABLE C_TRACT       INTEGER;'
      'BEGIN'
      ''
      '    /* NOM'#201'S FER-LA SERVIR PUNTUALMENT!!!'
      '    '
      '       Procedure que nom'#233's actua si '#233's dilluns  -'
      
        '       Actualitza la freq'#252#232'ncia de Tractaments segons el torn de' +
        ' la Pauta NR'
      '       Retorna els registres modificats */'
      '         '
      '    IF (F_DIADELASEMANA("TODAY") = 1) THEN'
      '    BEGIN'
      
        '        /* Per cada proc'#233's agafem el torn de la setmana que come' +
        'n'#231'a avui */'
      '        FOR SELECT C_PROCES, TORN'
      '            FROM   PROCESNR_TORNS'
      '            WHERE  DIA_INICI = "TODAY"'
      '            INTO  :C_PROCES, :TORN'
      '        DO BEGIN'
      '            IF ((TORN IS NOT NULL) AND (TORN <> '#39#39')) THEN'
      '            BEGIN'
      '                C_TRACTAMENT = NULL;'
      '                C_HISTORIA   = NULL;'
      '                C_FREQUENCIA = NULL;'
      ''
      '                SELECT C_TRACTAMENT, C_HISTORIA, C_FREQUENCIA'
      '                FROM   TRACTAMENTS'
      '                WHERE  C_PROCES = :C_PROCES'
      '                AND    C_PRESTACIO = "2014"'
      
        '                AND   (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY"' +
        ')'
      '                INTO  :C_TRACTAMENT, :C_HISTORIA, :C_FREQUENCIA;'
      ''
      '                /* Si canvia de torn */'
      
        '                IF ((C_FREQUENCIA IS NOT NULL) AND (C_FREQUENCIA' +
        ' <> TORN)) THEN'
      '                BEGIN'
      ''
      
        '                    /* 1. Actualitzem la freq'#252#232'ncia de l'#39'ambulat' +
        'ori actiu amb el torn que li toca */'
      '                    UPDATE TRACTAMENTS'
      '                    SET    C_FREQUENCIA = :TORN'
      '                    WHERE  C_TRACTAMENT = :C_TRACTAMENT;'
      ''
      
        '                    /* 2. Movem les activitats de fict'#237'cies a no' +
        ' fict'#237'cies segons correspongui */'
      ''
      
        '                    SELECT CODI2 FROM TORNAMB WHERE CODI = :TORN' +
        ' INTO :C_TORN;'
      ''
      '                    FICTICIA = NULL;'
      
        '                    FOR SELECT A.ID, A.DIA_SEMANA, A.HORA, A.C_A' +
        'CTIVITAT, C.FICTICIA, A.C_USUARI_INI, A.C_METGEVALIDA, A.DATA_VA' +
        'LIDA, A.C_TRACTAMENT'
      '                        FROM   AGENDAPACIENT A'
      
        '                        JOIN   CODICAMPSALFA C ON A.C_ACTIVITAT ' +
        '= C.C_CODI AND C.FICTICIA <> "N"  /* Nom'#233's les q tenen correspon' +
        'd'#232'ncia */'
      '                        WHERE  A.C_HISTORIA = :C_HISTORIA'
      '                        AND    A.DATAF IS NULL'
      
        '                        INTO   :ID, :DIA_SEMANA, :HORA, :C_ACTIV' +
        'ITAT, :FICTICIA, :C_USUARI_INI, :C_METGEVALIDA, :DATA_VALIDA, :C' +
        '_TRACT'
      '                    DO BEGIN'
      '                        IF (FICTICIA IS NOT NULL) THEN'
      '                        BEGIN'
      
        '                              /* Si era fict'#237'cia i ara t'#233' torn a' +
        'quest dia, la passem a real */'
      
        '                              IF ((FICTICIA = "F" ) AND (F_Mid(C' +
        '_TORN, DIA_SEMANA-1, 1) <> "-")) THEN'
      '                              BEGIN'
      
        '                                  /* donem de baixa l'#39'activitat ' +
        'fict'#237'cia */'
      
        '                                  UPDATE AGENDAPACIENT SET DATAF' +
        ' = "TODAY", C_USUARI_FIN = :C_USUARI_INI WHERE ID = :ID;'
      ''
      
        '                                  /* insertem l'#39'activitat real *' +
        '/'
      
        '                                  C_ACTIVITAT = F_StripString(C_' +
        'ACTIVITAT, '#39'*'#39');'
      ''
      
        '                                  INSERT INTO AGENDAPACIENT (ID,' +
        ' C_TRACTAMENT, C_HISTORIA, DIA_SEMANA, HORA, C_ACTIVITAT,'
      
        '                                                             C_U' +
        'SUARI_INI, DATAI, C_METGEVALIDA, DATA_VALIDA)'
      
        '                                         VALUES (GEN_ID(AGENDAPA' +
        'CIENT_ID, 1), :C_TRACT, :C_HISTORIA, :DIA_SEMANA, :HORA, :C_ACTI' +
        'VITAT,'
      
        '                                                 :C_USUARI_INI, ' +
        '"TODAY", :C_METGEVALIDA, :DATA_VALIDA);'
      '                              END;'
      '                        '
      
        '                              /* Si era real i ara no t'#233' torn aq' +
        'uest dia, la passem a fict'#237'cia */'
      
        '                              ELSE IF  ((FICTICIA = "R") AND (F_' +
        'Mid(C_TORN, DIA_SEMANA-1, 1) = "-")) THEN'
      '                              BEGIN'
      
        '                                  /* donem de baixa l'#39'activitat ' +
        'real */'
      
        '                                  UPDATE AGENDAPACIENT SET DATAF' +
        ' = "TODAY", C_USUARI_FIN = :C_USUARI_INI WHERE ID = :ID;'
      ''
      
        '                                  /* insertem l'#39'activitat fict'#237'c' +
        'ia */'
      
        '                                  C_ACTIVITAT = C_ACTIVITAT || '#39 +
        '*'#39';'
      ''
      
        '                                  INSERT INTO AGENDAPACIENT (ID,' +
        ' C_TRACTAMENT, C_HISTORIA, DIA_SEMANA, HORA, C_ACTIVITAT,'
      
        '                                                             C_U' +
        'SUARI_INI, DATAI, C_METGEVALIDA, DATA_VALIDA)'
      
        '                                  VALUES (GEN_ID(AGENDAPACIENT_I' +
        'D, 1), :C_TRACT, :C_HISTORIA, :DIA_SEMANA, :HORA, :C_ACTIVITAT,'
      
        '                                          :C_USUARI_INI, "TODAY"' +
        ', :C_METGEVALIDA, :DATA_VALIDA);'
      '                              END;'
      '                        END;'
      '                    END;'
      ''
      ''
      '                    C_HISTORIA_S = C_HISTORIA;'
      '                    C_TRACTAMENT_S = C_TRACTAMENT;'
      '                    C_PROCES_S = C_PROCES;'
      '                    FREQ1_S = C_FREQUENCIA;'
      '                    FREQ2_S = TORN;'
      
        '                    IF (FICTICIA IS NOT NULL) THEN CANVIFICTICIA' +
        ' = '#39'S'#39';'
      
        '                                              ELSE CANVIFICTICIA' +
        ' = '#39'N'#39';'
      '                    '
      '                    SUSPEND;'
      '                END;'
      '            END;'
      '        END;'
      '    END;'
      'END')
    Dic1 = ProcesNR
    Dic1Name = 'ProcesNR'
    Abierta = False
    Borrame = False
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
    Top = 146
  end
  object P_ActualitzaFreqActual: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActualitzaFreqActual'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '  C_HISTORIA_S INTEGER,'
      '  C_TRACTAMENT_S INTEGER,'
      '  C_PROCES_S INTEGER,'
      '  FREQ1_S VARCHAR(7),'
      '  FREQ2_S VARCHAR(7),'
      '  CANVIFICTICIA VARCHAR(1)'
      ')'
      'AS'
      '      DECLARE VARIABLE DILLUNS      DATE;'
      '      DECLARE VARIABLE C_PROCES     INTEGER;'
      '      DECLARE VARIABLE TORN         VARCHAR(7);'
      '      DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '      DECLARE VARIABLE C_HISTORIA   INTEGER;'
      '      DECLARE VARIABLE C_FREQUENCIA VARCHAR(7);'
      ''
      '      DECLARE VARIABLE C_TORN       VARCHAR(7);'
      ''
      '      DECLARE VARIABLE ID            INTEGER;'
      '      DECLARE VARIABLE DIA_SEMANA    INTEGER;'
      '      DECLARE VARIABLE HORA          INTEGER;'
      '      DECLARE VARIABLE C_ACTIVITAT   VARCHAR(15);'
      '      DECLARE VARIABLE FICTICIA      VARCHAR(1);'
      '      DECLARE VARIABLE C_USUARI_INI  VARCHAR(5);'
      '      DECLARE VARIABLE C_METGEVALIDA VARCHAR(5);'
      '      DECLARE VARIABLE DATA_VALIDA   DATE;'
      '      DECLARE VARIABLE C_TRACT       INTEGER;'
      'BEGIN'
      ''
      '    /* NOM'#201'S FER-LA SERVIR PUNTUALMENT!!!'
      '    '
      
        '       Actualitza la freq'#252#232'ncia de Tractaments segons el torn de' +
        ' la Pauta NR de la setmana actual'
      '       Retorna els registres modificats */'
      ''
      '      DILLUNS = "TODAY";'
      '      DILLUNS = DILLUNS - F_DIADELASEMANA("TODAY") + 1;'
      ''
      
        '      /* Per cada proc'#233's agafem el torn de la setmana que ha com' +
        'en'#231'at aquest dilluns */'
      '      FOR SELECT C_PROCES, TORN'
      '          FROM   PROCESNR_TORNS'
      '          WHERE  DIA_INICI = :DILLUNS'
      '          INTO  :C_PROCES, :TORN'
      '      DO BEGIN'
      '         '
      '            IF ((TORN IS NOT NULL) AND (TORN <> '#39#39')) THEN'
      '            BEGIN'
      '                C_TRACTAMENT = NULL;'
      '                C_HISTORIA   = NULL;'
      '                C_FREQUENCIA = NULL;'
      ''
      '                SELECT C_TRACTAMENT, C_HISTORIA, C_FREQUENCIA'
      '                FROM   TRACTAMENTS'
      '                WHERE  C_PROCES = :C_PROCES'
      '                AND    C_PRESTACIO = "2014"'
      
        '                AND   (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY"' +
        ')'
      '                INTO  :C_TRACTAMENT, :C_HISTORIA, :C_FREQUENCIA;'
      ''
      '                /* Si canvia de torn */'
      
        '                IF ((C_FREQUENCIA IS NOT NULL) AND (C_FREQUENCIA' +
        ' <> TORN)) THEN'
      '                BEGIN'
      ''
      
        '                    /* 1. Actualitzem la freq'#252#232'ncia de l'#39'ambulat' +
        'ori actiu amb el torn que li toca */'
      '                    UPDATE TRACTAMENTS'
      '                    SET    C_FREQUENCIA = :TORN'
      '                    WHERE  C_TRACTAMENT = :C_TRACTAMENT;'
      ''
      
        '                    /* 2. Movem les activitats de fict'#237'cies a no' +
        ' fict'#237'cies segons correspongui */'
      ''
      
        '                    SELECT CODI2 FROM TORNAMB WHERE CODI = :TORN' +
        ' INTO :C_TORN;'
      ''
      '                    FICTICIA = NULL;'
      
        '                    FOR SELECT A.ID, A.DIA_SEMANA, A.HORA, A.C_A' +
        'CTIVITAT, C.FICTICIA, A.C_USUARI_INI, A.C_METGEVALIDA, A.DATA_VA' +
        'LIDA, A.C_TRACTAMENT'
      '                        FROM   AGENDAPACIENT A'
      
        '                        JOIN   CODICAMPSALFA C ON A.C_ACTIVITAT ' +
        '= C.C_CODI AND C.FICTICIA <> "N"  /* Nom'#233's les q tenen correspon' +
        'd'#232'ncia */'
      '                        WHERE  A.C_HISTORIA = :C_HISTORIA'
      '                        AND    A.DATAF IS NULL'
      
        '                        INTO   :ID, :DIA_SEMANA, :HORA, :C_ACTIV' +
        'ITAT, :FICTICIA, :C_USUARI_INI, :C_METGEVALIDA, :DATA_VALIDA, :C' +
        '_TRACT'
      '                    DO BEGIN'
      '                        IF (FICTICIA IS NOT NULL) THEN'
      '                        BEGIN'
      
        '                              /* Si era fict'#237'cia i ara t'#233' torn a' +
        'quest dia, la passem a real */'
      
        '                              IF ((FICTICIA = "F" ) AND (F_Mid(C' +
        '_TORN, DIA_SEMANA-1, 1) <> "-")) THEN'
      '                              BEGIN'
      
        '                                  /* donem de baixa l'#39'activitat ' +
        'fict'#237'cia */'
      
        '                                  UPDATE AGENDAPACIENT SET DATAF' +
        ' = "TODAY", C_USUARI_FIN = :C_USUARI_INI WHERE ID = :ID;'
      ''
      
        '                                  /* insertem l'#39'activitat real *' +
        '/'
      
        '                                  C_ACTIVITAT = F_StripString(C_' +
        'ACTIVITAT, '#39'*'#39');'
      ''
      
        '                                  INSERT INTO AGENDAPACIENT (ID,' +
        ' C_TRACTAMENT, C_HISTORIA, DIA_SEMANA, HORA, C_ACTIVITAT,'
      
        '                                                             C_U' +
        'SUARI_INI, DATAI, C_METGEVALIDA, DATA_VALIDA)'
      
        '                                         VALUES (GEN_ID(AGENDAPA' +
        'CIENT_ID, 1), :C_TRACT, :C_HISTORIA, :DIA_SEMANA, :HORA, :C_ACTI' +
        'VITAT,'
      
        '                                                 :C_USUARI_INI, ' +
        '"TODAY", :C_METGEVALIDA, :DATA_VALIDA);'
      '                              END;'
      '                        '
      
        '                              /* Si era real i ara no t'#233' torn aq' +
        'uest dia, la passem a fict'#237'cia */'
      
        '                              ELSE IF  ((FICTICIA = "R") AND (F_' +
        'Mid(C_TORN, DIA_SEMANA-1, 1) = "-")) THEN'
      '                              BEGIN'
      
        '                                  /* donem de baixa l'#39'activitat ' +
        'real */'
      
        '                                  UPDATE AGENDAPACIENT SET DATAF' +
        ' = "TODAY", C_USUARI_FIN = :C_USUARI_INI WHERE ID = :ID;'
      ''
      
        '                                  /* insertem l'#39'activitat fict'#237'c' +
        'ia */'
      
        '                                  C_ACTIVITAT = C_ACTIVITAT || '#39 +
        '*'#39';'
      ''
      
        '                                  INSERT INTO AGENDAPACIENT (ID,' +
        ' C_TRACTAMENT, C_HISTORIA, DIA_SEMANA, HORA, C_ACTIVITAT,'
      
        '                                                             C_U' +
        'SUARI_INI, DATAI, C_METGEVALIDA, DATA_VALIDA)'
      
        '                                  VALUES (GEN_ID(AGENDAPACIENT_I' +
        'D, 1), :C_TRACT, :C_HISTORIA, :DIA_SEMANA, :HORA, :C_ACTIVITAT,'
      
        '                                          :C_USUARI_INI, "TODAY"' +
        ', :C_METGEVALIDA, :DATA_VALIDA);'
      '                              END;'
      '                        END;'
      '                    END;'
      ''
      ''
      '                    C_HISTORIA_S = C_HISTORIA;'
      '                    C_TRACTAMENT_S = C_TRACTAMENT;'
      '                    C_PROCES_S = C_PROCES;'
      '                    FREQ1_S = C_FREQUENCIA;'
      '                    FREQ2_S = TORN;'
      
        '                    IF (FICTICIA IS NOT NULL) THEN CANVIFICTICIA' +
        ' = '#39'S'#39';'
      
        '                                              ELSE CANVIFICTICIA' +
        ' = '#39'N'#39';'
      '                    '
      '                    SUSPEND;'
      '                END;'
      '            END;'
      '      END;'
      'END')
    Dic1 = ProcesNR
    Dic1Name = 'ProcesNR'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 444
    Top = 146
  end
  object Protocols_ProcesNR: TDic
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
        Nombre = 'Motiu tractament'
        NombreDB = 'C_Motiu'
        Longitud = 2
        Consulta = 'motiu'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Centre de facturaci'#243
        NombreDB = 'C_CentreFac'
        Longitud = 2
        Consulta = 'centrefac'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Protocol'
        NombreDB = 'Protocol'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. inicial setmanes 5D '
        NombreDB = 'Inicial5D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. m'#224'xim setmanes 5D '
        NombreDB = 'Maxim5D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. inicial setmanes 4D '
        NombreDB = 'Inicial4D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. m'#224'xim setmanes 4D '
        NombreDB = 'Maxim4D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. inicial setmanes 3D '
        NombreDB = 'Inicial3D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. m'#224'xim setmanes 3D '
        NombreDB = 'Maxim3D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. inicial setmanes 2D'
        NombreDB = 'Inicial2D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. m'#224'xim setmanes 2D '
        NombreDB = 'Maxim2D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. inicial setmanes 1D '
        NombreDB = 'Inicial1D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. m'#224'xim setmanes 1D '
        NombreDB = 'Maxim1D'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Durada m'#224'xima'
        NombreDB = 'DuradaMax'
        Longitud = 2
        MaskDisplay = '#0" setmanes";; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'Durada m'#224'xima (en setmanes) per als protocols en qu'#232' aquesta no ' +
          'va segons perfil NR'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Durada fixa'
        NombreDB = 'DuradaFixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'Indica si la durada m'#224'xima '#233's improrrogable'
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
        Nombre = 'nom'
        NombreDB = 'nom'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Protocol')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'centrefac'
        NombreDB = 'centrefac'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Centre de facturaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.CentreFac
        ForaneoCampos.Strings = (
          'N'#186' Centre')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'motiu'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Motiu tractament')
        CopiarOrigen.Strings = (
          'Motiu tractament')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'MOTIU'#39
      end
      item
        Nombre = 'centrefac'
        Master = wDataFactu.CentreFac
        BuscaOrigen.Strings = (
          'Centre de facturaci'#243)
        CopiarOrigen.Strings = (
          'Centre de facturaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Centre')
        BuscaMaster.Strings = (
          'N'#186' Centre')
      end>
    Nombre = 'Protocols_ProcesNR'
    NombreTabla = 'Protocols_ProcesNR'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Motiu tractament'
      'Centre de facturaci'#243
      'Protocol'
      'N'#250'm. inicial setmanes 5D '
      'N'#250'm. m'#224'xim setmanes 5D '
      'N'#250'm. inicial setmanes 4D '
      'N'#250'm. m'#224'xim setmanes 4D '
      'N'#250'm. inicial setmanes 3D '
      'N'#250'm. m'#224'xim setmanes 3D '
      'N'#250'm. inicial setmanes 2D'
      'N'#250'm. m'#224'xim setmanes 2D '
      'N'#250'm. inicial setmanes 1D '
      'N'#250'm. m'#224'xim setmanes 1D '
      'Durada m'#224'xima'
      'Durada fixa')
    IndiceVer = 'nom'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 312
    Top = 24
  end
  object T_Torns_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_PROCESNR_TORNS,' +
        ' 1);'
      '   END'
      'END')
    Dic1 = ProcesNR_Torns
    Dic1Name = 'ProcesNR_Torns'
    Abierta = False
    Borrame = False
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
    Left = 303
    Top = 87
  end
  object Torns_Inicia_ID: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inicialitzacio'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_PROCES  INTEGER,'
      '         DIA_INICI TIMESTAMP,'
      '         ID        INTEGER )'
      'AS'
      'BEGIN'
      ''
      '      FOR SELECT C_PROCES, DIA_INICI'
      '          FROM   PROCESNR_TORNS'
      '          WHERE ID IS NULL'
      '          ORDER BY C_PROCES, DIA_INICI'
      '          INTO  :C_PROCES, :DIA_INICI'
      '      DO BEGIN'
      '          ID = GEN_ID(G_PROCESNR_TORNS, 1);'
      '          '
      
        '          UPDATE PROCESNR_TORNS SET ID = :ID WHERE C_PROCES = :C' +
        '_PROCES AND DIA_INICI = :DIA_INICI;'
      '          SUSPEND;'
      '      END;'
      ''
      'END')
    Dic1 = ProcesNR_Torns
    Dic1Name = 'ProcesNR_Torns'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 376
    Top = 85
  end
end
