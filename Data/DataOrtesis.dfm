object wDataOrtesis: TwDataOrtesis
  OldCreateOrder = False
  Left = 639
  Top = 268
  Height = 438
  Width = 630
  object CodiOrtesis: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi d'#39'Ortesis'
        NombreDB = 'C_Ortesis'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom'
        NombreDB = 'N_Ortesis'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Ortesis Castell'#224
        NombreDB = 'N_Ortesis2'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi de Fam'#237'lia'
        NombreDB = 'C_Familia'
        Longitud = 3
        Consulta = 'Familia'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumPorcentaje
        Nombre = 'Iva Venta'
        NombreDB = 'IvaVenta'
        Longitud = 5
        MaskDisplay = '#,##0.###" %";; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi Servei'
        NombreDB = 'CodiServei'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumMonetario
        Nombre = 'Preu Maxim Servei'
        NombreDB = 'PreuMaximServei'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumMonetario
        Nombre = 'Aportacio Pacient'
        NombreDB = 'AportacioServei'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusOrtesis'
        Longitud = 3
        Consulta = 'Tipus'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Te Cat'#224'leg'
        NombreDB = 'TeCataleg'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Actiu'
        NombreDB = 'Actiu'
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
          'Codi d'#39'Ortesis')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Familia'
        NombreDB = 'Familia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi de Fam'#237'lia')
        Tipo = tiForaneo
        ForaneoDic = FamOrtesis
        ForaneoCampos.Strings = (
          'Codi de Fam'#237'lia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Familia'
        Master = FamOrtesis
        BuscaOrigen.Strings = (
          'Codi de Fam'#237'lia')
        CopiarOrigen.Strings = (
          'Codi de Fam'#237'lia')
        CopiarMaster.Strings = (
          'Codi de Fam'#237'lia')
        BuscaMaster.Strings = (
          'Codi de Fam'#237'lia')
      end
      item
        Nombre = 'Tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TipusCodi = "TIPUSORTESIS"'
      end>
    Nombre = 'CodiOrtesis'
    NombreTabla = 'CodiOrtesis'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi d'#39'Ortesis'
      'Nom'
      'Codi Servei'
      'Codi de Fam'#237'lia'
      'Tipus'
      'Preu Maxim Servei'
      'Aportacio Pacient')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37735.778396956
    Left = 124
    Top = 8
  end
  object FamOrtesis: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi de Fam'#237'lia'
        NombreDB = 'C_Familia'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Familia'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Facturable'
        NombreDB = 'Facturable'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end>
    Indices = <
      item
        Nombre = 'Codi'
        NombreDB = 'Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi de Fam'#237'lia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'CodiOrtesisFam'
    NombreTabla = 'CodiOrtesisFam'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi de Fam'#237'lia'
      'Descripci'#243)
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37735.7783975347
    Left = 33
    Top = 8
  end
  object GrupOrtesisLin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Grup'
        NombreDB = 'C_Grup'
        Longitud = 3
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Lin'
        NombreDB = 'C_GrupLin'
        Longitud = 3
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'Codi Grup'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ortesis'
        NombreDB = 'C_Ortesis'
        Longitud = 5
        Consulta = 'Ortesis'
        zType = tcIB_Varchar
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'Codi'
        NombreDB = 'Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Grup'
          'Codi Lin')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Ortesis'
        NombreDB = 'Ortesis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Ortesis')
        Tipo = tiForaneo
        ForaneoDic = CodiOrtesis
        ForaneoCampos.Strings = (
          'Codi d'#39'Ortesis')
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
          'Codi Grup')
        Tipo = tiForaneo
        ForaneoDic = GrupOrtesis
        ForaneoCampos.Strings = (
          'Codi Grup')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Ortesis'
        Master = CodiOrtesis
        BuscaOrigen.Strings = (
          'Ortesis')
        CopiarOrigen.Strings = (
          'Ortesis')
        CopiarMaster.Strings = (
          'Codi d'#39'Ortesis')
        BuscaMaster.Strings = (
          'Codi d'#39'Ortesis')
      end>
    Nombre = 'CodiGrupOrtesisLin'
    NombreTabla = 'CodiGrupOrtesisLin'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Grup'
      'Codi Lin'
      'Ortesis')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37735.7783925463
    Left = 282
    Top = 8
  end
  object GrupOrtesis: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Grup'
        NombreDB = 'C_Grup'
        Longitud = 3
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTAORTESISGRUP'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Grup'
        NombreDB = 'N_Grup'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Grup Ortesis Castell'#224
        NombreDB = 'N_Grup2'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'NB'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Freq'#252'ent'
        NombreDB = 'Frequent'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Codi'
        NombreDB = 'Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Grup')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Baixa')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'CodiGrupOrtesis'
    NombreTabla = 'CodiGrupOrtesis'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Grup'
      'Grup'
      'Baixa')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37735.7783918518
    Left = 202
    Top = 8
  end
  object InterconOrtesis: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Interconsulta'
        NombreDB = 'C_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup Ortesis'
        NombreDB = 'N_Grup'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'C_Grup'
        Longitud = 3
        Consulta = 'Grup'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Indicacions Rehabilitaci'#243
        NombreDB = 'Indicacions'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Indicacions'
        NombreDB = 'Data_Indica'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge Indicacions'
        NombreDB = 'C_MetgeIndica'
        Longitud = 3
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Full Sol'#183'licitud'
        NombreDB = 'FullSolicitud'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcFecha
        Nombre = 'Impres'
        NombreDB = 'Impres'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy hh":"mm":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data conformitat'
        NombreDB = 'Data_Conformitat'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Diagn'#242'stic'
        NombreDB = 'N_DiagnosticNeurologic'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Control del proc'#233's'
        NombreDB = 'ControlProces'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Estat_PAOS'
        NombreDB = 'Estat_PAOS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N'#250'mero expedient PAOS'
        NombreDB = 'N_Expedient'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Situaci'#243' expedient PAOS'
        NombreDB = 'SITUACIO_EXP'
        Longitud = 3
        Consulta = 'situaciopAOS'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Reposici'#243
        NombreDB = 'Reposicio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Validaci'#243
        NombreDB = 'Validacio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Presencial'
        NombreDB = 'Presencial'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Interconsulta')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'InterCon'
        NombreDB = 'InterCon'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'N'#186' Interconsulta')
        Tipo = tiForaneo
        ForaneoDic = wDataIntercon.InterCon
        ForaneoCampos.Strings = (
          'N'#186' Interconsulta')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Grup'
        Master = GrupOrtesis
        BuscaOrigen.Strings = (
          'Grup')
        CopiarOrigen.Strings = (
          'Grup')
        CopiarMaster.Strings = (
          'Codi Grup')
        BuscaMaster.Strings = (
          'Codi Grup')
      end
      item
        Nombre = 'EstatPAOS'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Estat_PAOS')
        CopiarOrigen.Strings = (
          'Estat_PAOS')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'PAOS.ESTAT'#39
      end
      item
        Nombre = 'SituacioPAOS'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Situaci'#243' expedient PAOS')
        CopiarOrigen.Strings = (
          'Situaci'#243' expedient PAOS')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'PAOS.SITUACIO'#39
      end>
    Nombre = 'InterconOrtesis'
    NombreTabla = 'InterconOrtesis'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Interconsulta'
      'Grup Ortesis'
      'Control del proc'#233's'
      'Reposici'#243
      'Validaci'#243
      'Presencial')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 7
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37735.7786001389
    Left = 33
    Top = 64
  end
  object InterconOrtesisLin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'C_OrtesisLin'
        Longitud = 3
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Generator = 'CONTAINTERCONORTESISLIN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' Interconsulta'
        NombreDB = 'C_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi d'#39'Ortesis'
        NombreDB = 'C_Ortesis'
        Longitud = 5
        Consulta = 'Ortesis'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'CodiServei'
        NombreDB = 'CodiServei'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ortesis'
        NombreDB = 'N_Ortesis'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Factura Prove'#239'dor'
        NombreDB = 'Albara'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Proveedor'
        NombreDB = 'C_Prov'
        Longitud = 10
        Consulta = 'Prov'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Factura Prov.'
        NombreDB = 'Data_FacProv'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Factura Cli.'
        NombreDB = 'Data_FacCli'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'C.F.'
        NombreDB = 'C_CentreFac'
        Longitud = 2
        Consulta = 'CentreFac'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Client'
        NombreDB = 'C_Client'
        Longitud = 3
        Consulta = 'Client'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Delega.'
        NombreDB = 'C_Delegacio'
        Longitud = 4
        Consulta = 'Delega'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = '% Usuari'
        NombreDB = 'PercentatgePacient'
        Longitud = 4
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Float
        zNotNull = False
        Comentario = 'Porcentatge del usuari, ADMISIONS'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ref'
        NombreDB = 'Referencia'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Referencia de la mutua (poliza, etc..)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Fac.'
        NombreDB = 'EstatFac'
        Longitud = 3
        Consulta = 'EstatFac'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codicamps EstatFacu'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Fac. Prov'
        NombreDB = 'EstatFacProv'
        Longitud = 3
        Consulta = 'EstatFacProv'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'Codicamps EstatFacu'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Rappel'
        NombreDB = 'C_EstatRappel'
        Longitud = 15
        Consulta = 'EstatRappel'
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Aportacio Pacient'
        NombreDB = 'AportacioPacient'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C.F. Pacient'
        NombreDB = 'C_CentreFac2'
        Longitud = 2
        Consulta = 'CentreFac2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Client Pacient'
        NombreDB = 'C_Client2'
        Longitud = 3
        Consulta = 'Client2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Delega. Pacient'
        NombreDB = 'C_Delega2'
        Longitud = 4
        Consulta = 'Delega2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat Fac. Pacient'
        NombreDB = 'C_EstatFac2'
        Longitud = 3
        Consulta = 'EstatFac2'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ref. Pacient'
        NombreDB = 'Referencia2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumMonetario
        Nombre = 'Preu Pacient'
        NombreDB = 'Preu2'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcFecha
        Nombre = 'Cobrament de pacient'
        NombreDB = 'Data_CobroPacient'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions'
        NombreDB = 'Observacions'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Notes'
        NombreDB = 'Notes'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'TeNotes'
        NombreDB = 'TeNotes'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data comanda'
        NombreDB = 'Data_Comanda'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Peticio Mutua'
        NombreDB = 'Data_PeticioMutua'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy" "hh":"mm":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Conformitat Mutua'
        NombreDB = 'Data_ConformitatMutua'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy" "hh":"mm":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumPorcentaje
        Nombre = 'Iva Venta'
        NombreDB = 'IvaVenta'
        Longitud = 5
        MaskDisplay = '#,##0.###" %";; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumMonetario
        Nombre = 'Preu'
        NombreDB = 'PreuVenta'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumPorcentaje
        Nombre = 'Iva Compra'
        NombreDB = 'IvaCompra'
        Longitud = 5
        MaskDisplay = '#,##0.###" %";; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumMonetario
        Nombre = 'Preu Compra'
        NombreDB = 'PreuCompra'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Albara Pacient'
        NombreDB = 'AlbaraPacient'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'DataLiquidacio'
        NombreDB = 'Data_Liqui'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Data de Liquidaci'#243' del Rappel'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Contabilitzaci'#243
        NombreDB = 'Data_Conta'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Old_Ortesis'
        NombreDB = 'Old_Ortesis'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Old_ElementOrtesis'
        NombreDB = 'Old_ElementOrtesis'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Mecanisme Antic Rappels'
        NombreDB = 'Antic'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Preu oferta ortop'#232'dia'
        NombreDB = 'Preu_Oferta'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = False
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero identificador de garant'
        NombreDB = 'Id_Garant'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Garant'
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
          'Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Intercon'
        NombreDB = 'Intercon'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
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
        Nombre = 'Ortesis'
        NombreDB = 'Ortesis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi d'#39'Ortesis')
        Tipo = tiForaneo
        ForaneoDic = CodiOrtesis
        ForaneoCampos.Strings = (
          'Codi d'#39'Ortesis')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Prov'
        NombreDB = 'Prov'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Proveedor')
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.Prov
        ForaneoCampos.Strings = (
          'Codi Prov.')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'CentreFac'
        NombreDB = 'CentreFac'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C.F.')
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.CentreFac
        ForaneoCampos.Strings = (
          'N'#186' Centre')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Client'
        NombreDB = 'Client'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C.F.'
          'Client')
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.Clients
        ForaneoCampos.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Delega'
        NombreDB = 'Delega'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C.F.'
          'Client'
          'Delega.')
        Tipo = tiForaneo
        ForaneoDic = wDataFactu.Delega
        ForaneoCampos.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Facturacio'
        NombreDB = 'Facturacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Estat Fac.'
          'C.F.')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Aportacio'
        NombreDB = 'Aportacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Aportacio Pacient')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'EstatRappel'
        NombreDB = 'EstatRappel'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Estat Rappel')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'OldOrtesis'
        NombreDB = 'OldOrtesis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Interconsulta'
          'Old_Ortesis'
          'Old_ElementOrtesis')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Rappels'
        NombreDB = 'Rappels'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi'
          'Proveedor'
          'Estat Rappel'
          'Estat Fac.')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Prov'
        Master = wDataFactu.Prov
        BuscaOrigen.Strings = (
          'Proveedor')
        CopiarOrigen.Strings = (
          'Proveedor')
        CopiarMaster.Strings = (
          'Codi Prov.')
        BuscaMaster.Strings = (
          'Codi Prov.')
        WhereFiltro = 'Ortesis="S"'
      end
      item
        Nombre = 'CentreFac'
        Master = wDataFactu.CentreFac
        BuscaOrigen.Strings = (
          'C.F.')
        CopiarOrigen.Strings = (
          'C.F.')
        CopiarMaster.Strings = (
          'N'#186' Centre')
        BuscaMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Client'
        Master = wDataFactu.Clients
        BuscaOrigen.Strings = (
          'C.F.'
          'Client')
        CopiarOrigen.Strings = (
          'C.F.'
          'Client')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        FiltroOrigen.Strings = (
          'C.F.')
        FiltroMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Delega'
        Master = wDataFactu.Delega
        BuscaOrigen.Strings = (
          'C.F.'
          'Client'
          'Delega.')
        CopiarOrigen.Strings = (
          'C.F.'
          'Client'
          'Delega.')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        FiltroOrigen.Strings = (
          'C.F.'
          'Client')
        FiltroMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        WhereFiltro = 'ACTIU = "S"'
      end
      item
        Nombre = 'EstatFac'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat Fac.')
        CopiarOrigen.Strings = (
          'Estat Fac.')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATFACTU"'
      end
      item
        Nombre = 'EstatFacProv'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat Fac. Prov')
        CopiarOrigen.Strings = (
          'Estat Fac. Prov')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATFACTU"'
      end
      item
        Nombre = 'CentreFac2'
        Master = wDataFactu.CentreFac
        BuscaOrigen.Strings = (
          'C.F. Pacient')
        CopiarOrigen.Strings = (
          'C.F. Pacient')
        CopiarMaster.Strings = (
          'N'#186' Centre')
        BuscaMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Client2'
        Master = wDataFactu.Clients
        BuscaOrigen.Strings = (
          'C.F. Pacient'
          'Client Pacient')
        CopiarOrigen.Strings = (
          'C.F. Pacient'
          'Client Pacient')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        FiltroOrigen.Strings = (
          'C.F. Pacient')
        FiltroMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Delega2'
        Master = wDataFactu.Delega
        BuscaOrigen.Strings = (
          'C.F. Pacient'
          'Client Pacient'
          'Delega. Pacient')
        CopiarOrigen.Strings = (
          'C.F. Pacient'
          'Client Pacient'
          'Delega. Pacient')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        FiltroOrigen.Strings = (
          'C.F. Pacient'
          'Client Pacient')
        FiltroMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        WhereFiltro = 'ACTIU = "S"'
      end
      item
        Nombre = 'EstatFac2'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat Fac. Pacient')
        CopiarOrigen.Strings = (
          'Estat Fac. Pacient')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATFACTU"'
      end
      item
        Nombre = 'Ortesis'
        Master = CodiOrtesis
        BuscaOrigen.Strings = (
          'Codi d'#39'Ortesis')
        CopiarOrigen.Strings = (
          'Codi d'#39'Ortesis'
          'Ortesis')
        CopiarMaster.Strings = (
          'Codi d'#39'Ortesis'
          'Nom')
        BuscaMaster.Strings = (
          'Codi d'#39'Ortesis')
      end
      item
        Nombre = 'EstatRappel'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Estat Rappel')
        CopiarOrigen.Strings = (
          'Estat Rappel')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = "ESTATRAPPEL"'
      end
      item
        Nombre = 'Garant'
        Master = wDataAdmisio.Garants
        BuscaOrigen.Strings = (
          'N'#250'mero identificador de garant')
        CopiarOrigen.Strings = (
          'N'#250'mero identificador de garant')
        CopiarMaster.Strings = (
          'N'#186' Garant')
        BuscaMaster.Strings = (
          'N'#186' Garant')
      end>
    Nombre = 'InterconOrtesisLin'
    NombreTabla = 'InterconOrtesisLin'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'N'#186' Interconsulta'
      'Codi d'#39'Ortesis'
      'CodiServei'
      'Ortesis')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 7
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37735.7786079051
    Left = 121
    Top = 64
  end
  object OrtesisListCurs: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Ortesis'
    ForceNombreDB = False
    Body.Strings = (
      '(TIPUSINFORME INTEGER)'
      'RETURNS'
      '('
      '  ORTESIS VARCHAR(250),'
      '  C_ORTESIS VARCHAR(5),'
      '  METGEVALIDA CHAR(5),'
      '  DATAVALIDA TIMESTAMP,'
      '  C_INTERCON INTEGER,'
      '  U CHAR(1),'
      '  DATA_S TIMESTAMP,'
      '  METGE_S CHAR(5),'
      '  DATA_R TIMESTAMP,'
      '  METGE_R CHAR(5),'
      '  ESTAT INTEGER,'
      '  FET VARCHAR(20),'
      '  PENDENT VARCHAR(20),'
      '  HISTORIA INTEGER,'
      '  NOM_COMPLET VARCHAR(100),'
      '  UNITAT SMALLINT,'
      '  C_TRACTAMENT INTEGER,'
      '  INGRES TIMESTAMP,'
      '  PRESTACIO CHAR(4),'
      '  PLANTA VARCHAR(15),'
      '  LLIT VARCHAR(3)'
      ')'
      'AS'
      'BEGIN'
      ''
      '      IF (TIPUSINFORME IS NULL) THEN TIPUSINFORME = 0;'
      '/*'
      '      crec que ja no es fa servir enlloc, aquesta procedure'
      ''
      '      El parametre de entrada TipusInforme filtra les dades:'
      '      0: Totes (hist'#242'ric d'#39'ortesis).'
      
        '      1: Pendents de validar cap cl'#205'nic                         ' +
        ' (obsolet, ja no es validen les peticions)'
      
        '      3: Pendents entregar (rehabilitaci'#243')                      ' +
        ' (hi ha una consulta espec'#237'fica)'
      '*/'
      ''
      
        '      FOR SELECT IO1.N_GRUP, IO1.C_GRUP, /* IO1.C_MetgeValida, I' +
        'O1.Data_Valida, */'
      '                 F.NUM_HIST, F.NOMCOMPLET, F.UNITAT,'
      
        '                 I.C_INTERCON, I.URGENT, I.DATA1, I.C_METGE1, /*' +
        ' I.Data2, I.C_Metge2, */ I.ESTAT, EI.FET, EI.PENDENT,'
      
        '                 T.C_TRACTAMENT, T.DATA_INGRES, T.C_PRESTACIO, T' +
        '.C_PLANTA, T.C_LLIT'
      ''
      '          FROM   INTERCON I'
      
        '          JOIN   INTERCONORTESIS IO1 ON  IO1.C_INTERCON = I.C_IN' +
        'TERCON'
      '          JOIN   ESTATINTERCON EI ON I.ESTAT = EI.C_ESTAT'
      
        '          JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      
        '          LEFT   OUTER JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_H' +
        'IST'
      ''
      '          WHERE  I.C_TIPUS = "ORTESIS"'
      ''
      '          AND  (    (:TipusInforme = 0)'
      '                 OR (:TipusInforme = 1 AND I.ESTAT = 10)'
      
        '                 OR (:TipusInforme = 3 AND I.ESTAT IN (10, 11)) ' +
        '/* PENDENT ENTREGAR */'
      '               )'
      ''
      
        '          INTO  :Ortesis, :C_Ortesis, /* :MetgeValida, :DataVali' +
        'da, */'
      '                :Historia, :Nom_Complet, :Unitat,'
      
        '                :C_Intercon, :U, :Data_S, :Metge_S, /* :Data_R, ' +
        ':Metge_R, */ :Estat, :Fet, :Pendent,'
      
        '                :C_Tractament, :Ingres, :Prestacio, :Planta, :Ll' +
        'it'
      ''
      '          DO BEGIN'
      ''
      '                /* denegada */'
      '                IF (Estat = 83)   THEN  SELECT C_USUARI, DATA'
      
        '                                        FROM   INTERCONORTESISRE' +
        'G'
      
        '                                        WHERE  C_INTERCON = :C_I' +
        'ntercon'
      '                                        AND    TIPUS = 209'
      
        '                                        INTO  :MetgeValida, :Dat' +
        'aValida;'
      ''
      
        '                /* busquem metge i data validaci'#243'; si no ha esta' +
        't validada, estaran buits */'
      '                ELSE                    SELECT C_USUARI, DATA'
      
        '                                        FROM   INTERCONORTESISRE' +
        'G'
      
        '                                        WHERE  C_INTERCON = :C_I' +
        'ntercon'
      '                                        AND    TIPUS = 202'
      
        '                                        INTO  :MetgeValida, :Dat' +
        'aValida;'
      ''
      
        '                /* anul'#183'lada, busquem usuari i data anul'#183'laci'#243' *' +
        '/'
      '                IF ((Estat = 80)'
      '                OR  (Estat = 84)) THEN  SELECT C_USUARI, DATA'
      
        '                                        FROM   INTERCONORTESISRE' +
        'G'
      
        '                                        WHERE  C_INTERCON = :C_I' +
        'ntercon'
      '                                        AND    TIPUS = 210'
      '                                        INTO  :Metge_R, :Data_R;'
      ''
      '                SUSPEND;'
      ''
      '          END'
      ''
      'END'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Select.Strings = (
      'SELECT *'
      ''
      'FROM P_LINTERCON_ORTESIS (1)'
      ''
      '[FILTRO]'
      '[ORDEN]')
    Dic1 = wDataIntercon.vIntercon
    Dic1Name = 'LIntercon'
    Abierta = False
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
    ModiFecha = 37459.4474360301
    Left = 33
    Top = 120
  end
  object OrteIns: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Ins'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE TMP_ORTESIS VARCHAR(5);'
      ''
      'BEGIN'
      ''
      
        '   /*OJO!!, AIXOS ES AFTER INSERT, OSIGUI, DESPRES, NO ASSIGNAR ' +
        'NEW.VALUES !! */'
      ''
      ''
      
        '   /* Al crear una interconsulta de ortesis, fem el insert del o' +
        'rtesislin*/'
      ''
      ''
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '      /* Creem les linees del grup (InterconOrtesisLin) */'
      '      FOR SELECT A.C_ORTESIS'
      
        '      FROM CODIORTESIS A JOIN CODIGRUPORTESISLIN B ON A.C_ORTESI' +
        'S = B.C_ORTESIS'
      '      WHERE B.C_GRUP = NEW.C_GRUP'
      '      INTO :Tmp_Ortesis'
      '      DO BEGIN'
      
        '            EXECUTE PROCEDURE P_INTERCONORTESISLIN_OMPLE(NEW.C_I' +
        'NTERCON, :TMP_ORTESIS);'
      '      END'
      '  END'
      ''
      'END;'
      '')
    Dic1 = InterconOrtesis
    Dic1Name = 'InterconOrtesis'
    Abierta = False
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
    ModiFecha = 37504.8271947685
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 202
    Top = 64
  end
  object OrtesiModi: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Modi'
    ForceNombreDB = False
    Body.Strings = (
      ''
      'BEGIN'
      ''
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN     '
      ''
      '      /* Marquem si te notes o no */    '
      '      if (new.Notes is null)'
      '      then New.TeNotes=NULL;'
      '      else New.TeNotes="N";'
      '      '
      ''
      '   END'
      '     '
      'END')
    Dic1 = InterconOrtesisLin
    Dic1Name = 'InterconOrtesisLin'
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
    ModiFecha = 37459.8193709028
    Accion1 = taANTES
    Accion2 = taUPDATE
    Left = 258
    Top = 64
  end
  object OrteOmple: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Omple'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      E_Intercon Integer,'
      '      E_Ortesis Varchar(5)'
      ')'
      'AS'
      '      DECLARE VARIABLE Tmp_C_Tractament Integer;'
      '      DECLARE VARIABLE Tmp_C_CentreFac VARCHAR (2);'
      '      DECLARE VARIABLE Tmp_C_CentreFac2 VARCHAR (2);'
      '      DECLARE VARIABLE Tmp_C_Client VARCHAR (3);'
      '      DECLARE VARIABLE Tmp_C_Delegacio VARCHAR (4);'
      '      DECLARE VARIABLE Tmp_Ref VARCHAR (40);'
      '      DECLARE VARIABLE Tmp_PerClient DOUBLE PRECISION;'
      '      DECLARE VARIABLE Tmp_Facturable char;'
      '      DECLARE VARIABLE Tmp_Fili integer;'
      '      DECLARE VARIABLE Tmp_EstatFac Integer;'
      ''
      '      DECLARE VARIABLE Tmp_CodiServei varchar(20);'
      '      DECLARE VARIABLE Tmp_N_Ortesis varchar(250);'
      '      declare variable Tmp_PreuPacient double precision;'
      '      DECLARE VARIABLE Tmp_EstatFacPacient Integer;'
      '      declare variable Tmp_IvaVenta double precision;'
      '      DECLARE VARIABLE Tmp_AportacioPacient char;'
      '      '
      '      DECLARE VARIABLE FamiliaFacturable    CHAR;'
      '      DECLARE VARIABLE ok                   integer;'
      '      '
      '      DECLARE VARIABLE INDICADOR_FARMACIA   VARCHAR(15);'
      'BEGIN'
      ''
      ''
      '      /*AGAFEM LES DADES DE FACTURACIO ACTIVES DEL TRACTAMENT */'
      
        '      SELECT T.C_Historia, T.C_CentreFac, T.C_Client, T.C_Delega' +
        'cio, T.Referencia, T.PercentatgePacient, F.INDICADOR_FARMACIA'
      '      FROM INTERCON I'
      '      JOIN TRACTAMENTS   T ON I.C_TRACTAMENT = T.C_TRACTAMENT'
      '      LEFT JOIN FILIACIO F ON I.C_HISTORIA = F.NUM_HIST'
      '      WHERE I.C_INTERCON = :E_INTERCON'
      
        '      INTO :Tmp_Fili, :Tmp_C_CentreFac, :Tmp_C_Client, :Tmp_C_De' +
        'legacio, :Tmp_Ref, :Tmp_PerClient, :INDICADOR_FARMACIA;'
      ''
      ''
      
        '      /*Mirem si pel centre i client i delegacio, les ortesis es' +
        ' poden facturar*/'
      '      if (:Tmp_C_CentreFac is null) then'
      '      begin'
      '            Tmp_EstatFac = 21;'
      '      end'
      '      else begin'
      '            SELECT ORTESIS'
      
        '            FROM P_CENTREFAC_PARAMS(:Tmp_C_CentreFac, :Tmp_C_Cli' +
        'ent, :Tmp_C_Delegacio,:Tmp_fili)'
      '            into :Tmp_Facturable;'
      '            if (Tmp_Facturable="S")'
      
        '            then  Tmp_EstatFac = 21; /*Pendent de facturar retin' +
        'gut de ortesis*/'
      '            else  Tmp_EstatFac = 50; /*No facturable*/'
      '      end'
      ''
      '      /* Creem les linees del grup (InterconOrtesisLin) */'
      ''
      
        '      SELECT A.N_ORTESIS, A.IVAVENTA, A.CODISERVEI, A.APORTACIOS' +
        'ERVEI, F.FACTURABLE'
      
        '      FROM CODIORTESIS A JOIN CODIORTESISFAM F ON A.C_FAMILIA = ' +
        'F.C_FAMILIA'
      '      WHERE A.C_ORTESIS = :E_ORTESIS'
      
        '      INTO :Tmp_N_Ortesis, :Tmp_IvaVenta, :Tmp_CodiServei, :Tmp_' +
        'PreuPacient, :FamiliaFacturable;'
      '      '
      ''
      '      if (Tmp_PreuPacient is null) then Tmp_PreuPacient=0;'
      
        '      if ((Tmp_PreuPacient = 0) OR (INDICADOR_FARMACIA = '#39'TSI 00' +
        '1'#39'))'
      '      then Tmp_AportacioPacient = "N";'
      '      else Tmp_AportacioPacient = "S";'
      '      Tmp_C_CentreFac2 = Null;'
      
        '      if ((Tmp_C_CentreFac is Null) or (Tmp_C_CentreFac<>'#39'04'#39')) ' +
        'then Tmp_AportacioPacient = "N";'
      ''
      '      if  (Tmp_AportacioPacient = "S")'
      '      then begin'
      
        '           Select Min(C_CentreFac) from CentreFac where EsPrivat' +
        '="S" into :tmp_C_CentreFac2;'
      '           Tmp_EstatFacPacient = 10; /*Facturable*/'
      '      end'
      '      else  Tmp_EstatFacPacient = 50; /*No facturable*/'
      ''
      '      '
      ''
      '      Ok = 0; /*False*/'
      '      if (Tmp_C_CentreFac is null)'
      '      then begin'
      '            if (FamiliaFacturable='#39'S'#39' ) then Ok = 1;'
      '      end'
      '      else begin'
      '            if (Tmp_C_CentreFac    ='#39'04'#39') then Ok = 1;'
      '            if (FamiliaFacturable='#39'S'#39' ) then Ok = 1;'
      '      end'
      '      '
      '      if (Ok = 0)'
      
        '      then Tmp_EstatFac = 54;  /* deia 54 - facturat directament' +
        ' a prove'#239'dor. Per'#242' passem primer per 22 pq ho gestioni Admission' +
        's */'
      
        '                               /* 28-10-2014 - ho torno a posar ' +
        'a 54, el 22 no existeix */'
      ''
      '      INSERT INTO INTERCONORTESISLIN'
      
        '      (C_OrtesisLin, C_Intercon, C_Ortesis, N_Ortesis, CodiServe' +
        'i,'
      
        '      C_CentreFac, C_Client, C_Delegacio, Referencia, Percentatg' +
        'ePacient,'
      
        '      EstatFac, AportacioPacient, C_CentreFac2, Preu2, C_EstatFa' +
        'c2, IvaVenta)'
      '      VALUES'
      
        '      (GEN_ID(CONTAINTERCONORTESISLIN,1), :E_Intercon, :E_Ortesi' +
        's, :Tmp_N_Ortesis, :Tmp_CodiServei,'
      
        '      :Tmp_C_CentreFac, :Tmp_C_Client, :Tmp_C_Delegacio, :Tmp_Re' +
        'f, :Tmp_PerClient,'
      
        '      :Tmp_EstatFac, :Tmp_AportacioPacient, :tmp_C_CentreFac2, :' +
        'Tmp_PreuPacient, :Tmp_EstatFacPacient,:Tmp_IvaVenta);'
      ''
      'END;'
      '')
    Dic1 = InterconOrtesisLin
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 121
    Top = 120
  end
  object AllRappelFactu: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AllRapFac'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DATA_DESDE DATE,'
      '  DATA_HASTA DATE'
      ')'
      'RETURNS'
      '('
      '   DETALL               INTEGER,'
      '   /* PROVEIDOR */'
      '   C_PROV               CHAR    (10),'
      '   N_PROV               VARCHAR (40),'
      '   DIRECCIO             VARCHAR (40),'
      '   POBLACIO             VARCHAR (20),'
      '   CPOSTAL              VARCHAR (5),'
      '   CIF                  VARCHAR (15),'
      '   PERRAPPELORTESI      NUMERIC (15,3),'
      ''
      '   /* CAP'#199'ELERA DE FACTURES */'
      '   DATA_FACTU           DATE,'
      '   N_FACTURA            VARCHAR (40),'
      ''
      '   /* LINES DE FACTURES */'
      '   CANTITAT             NUMERIC (15,3),'
      '   BRUTO                NUMERIC (15,3),'
      '   NETO                 NUMERIC (15,3),'
      '   TOTALRAPPEL          NUMERIC (15,3),'
      '   TOTALIVARAPPEL       NUMERIC (15,3),'
      '   RAPPEL_MES_IVARAPPEL NUMERIC (15,3),'
      '   C_INTERCON           INTEGER,'
      '   C_ORTESIS            VARCHAR (5),'
      '   C_ORTESISLIN         INTEGER,'
      ''
      '   /* FILIACIO */'
      '   NOMCOMPLET           VARCHAR (80),'
      '   '
      '   /* CENTRES FACTURACIO */'
      '   N_CENTREFAC          VARCHAR (20),'
      '   '
      '   /* INTERCONORTESIS2 */'
      '   ALBARA               VARCHAR (40),'
      '   CODISERVEI           VARCHAR (20),'
      '   N_ORTESIS            VARCHAR (250),'
      '   PREUCOMPRA           NUMERIC (15,3),'
      '   IVACOMPRA            NUMERIC (15,3),'
      ''
      '   /* CONFIG */'
      '   IVA1                 NUMERIC (15,3)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_FACTURA INTEGER;'
      'BEGIN'
      ''
      '   FOR SELECT C_FACTURA'
      '   FROM FACCAP'
      '   WHERE T_FACTURA = "R"'
      '     AND DATA_FACTU BETWEEN :DATA_DESDE AND :DATA_HASTA'
      '   INTO :C_FACTURA'
      '   DO BEGIN'
      '   '
      
        '       FOR SELECT DETALL, C_PROV, N_PROV, DIRECCIO, POBLACIO, CP' +
        'OSTAL, CIF, PERRAPPELORTESI, DATA_FACTU, N_FACTURA, CANTITAT,'
      
        '                  BRUTO, NETO, TOTALRAPPEL, TOTALIVARAPPEL, RAPP' +
        'EL_MES_IVARAPPEL, C_INTERCON, C_ORTESIS, C_ORTESISLIN, NOMCOMPLE' +
        'T,'
      
        '                  N_CENTREFAC, ALBARA, CODISERVEI, N_ORTESIS, PR' +
        'EUCOMPRA, IVACOMPRA, IVA1'
      '       FROM P_INTERCONORTESISLIN_RapFactu(:C_FACTURA)'
      '       WHERE DETALL = 1'
      
        '       INTO :DETALL, :C_PROV, :N_PROV, :DIRECCIO, :POBLACIO, :CP' +
        'OSTAL, :CIF, :PERRAPPELORTESI, :DATA_FACTU, :N_FACTURA, :CANTITA' +
        'T,'
      
        '       :BRUTO, :NETO, :TOTALRAPPEL, :TOTALIVARAPPEL, :RAPPEL_MES' +
        '_IVARAPPEL, :C_INTERCON, :C_ORTESIS, :C_ORTESISLIN, :NOMCOMPLET,'
      
        '       :N_CENTREFAC, :ALBARA, :CODISERVEI, :N_ORTESIS, :PREUCOMP' +
        'RA, :IVACOMPRA, :IVA1'
      '       DO BEGIN'
      '          SUSPEND;'
      '       END;'
      '   END;'
      '   '
      'END')
    Select.Strings = (
      'SELECT * FROM P_INTERCONORTESIS2_RAPPELFACTU(NULL)'
      '')
    Dic1 = InterconOrtesisLin
    Abierta = False
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
    ModiFecha = 37735.7772911921
    Left = 121
    Top = 224
  end
  object SaldosIntermediaris: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'SaldosIntermediaris'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DATA DATE'
      ')'
      'RETURNS'
      '('
      '  C_Prov          CHAR    (10),'
      '  N_Prov          VARCHAR (40),'
      '  C_CentreFac     VARCHAR (2),'
      '  C_Client        VARCHAR (3),'
      '  C_COBRO         INTEGER,'
      '  C_FACTURA       INTEGER,'
      '  N_FACTURA       VARCHAR (40),'
      '  ORIGEN          VARCHAR (15),'
      '  C_PROVA         CHAR    (5),'
      '  C_ELEMENT       INTEGER,'
      '  C_INTERCON      INTEGER,'
      '  C_ORTESISLIN    INTEGER,'
      '  C_HISTORIA      INTEGER,'
      '  NOMCOMPLET      VARCHAR (80),'
      '  DATA_FACTU      DATE,'
      '  IMPORT          NUMERIC (15,3),'
      '  RAPPELMEYNSIVA  NUMERIC (15,3),'
      '  C_ESTATCOBRO    INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE IVACOMPRA  NUMERIC (15, 3);'
      '  DECLARE VARIABLE PERRAPPEL  NUMERIC (15, 3);'
      '  DECLARE VARIABLE PERPACIENT NUMERIC (15, 3);'
      '  DECLARE VARIABLE ESMIXTE    CHAR;'
      '  DECLARE VARIABLE NUM        INTEGER;'
      'BEGIN'
      '/*'
      
        '      FOR SELECT C.C_COBRO      , FC.N_FACTURA , FC.C_FACTURA  ,' +
        ' FL.ORIGEN        , FL.C_PROVA   , FL.C_ELEMENT,'
      
        '                 FL.C_ORTESISLIN, FL.C_INTERCON, FL.C_HISTORIA ,' +
        ' F.NOMCOMPLET     , FC.DATA_FACTU,'
      
        '                 FL.C_PROV      , P.N_PROV     , FL.C_CENTREFAC,' +
        ' P.PERRAPPELORTESI, FL.C_CLIENT  ,  FL.ESMIXTE, FC.C_ESTATCOBRO'
      '          FROM ((((COBROS C'
      
        '              JOIN COBROSFAC  CF ON CF.C_COBRO    = C.C_COBRO   ' +
        ')'
      
        '              JOIN FACCAP     FC ON FC.C_FACTURA  = CF.C_FACTURA' +
        ')'
      
        '              JOIN FACLIN     FL ON FL.C_FACTURA  = FC.C_FACTURA' +
        ')'
      '              JOIN FILIACIO   F  ON FL.C_HISTORIA = F.NUM_HIST)'
      '              JOIN PROVEIDORS P  ON FL.C_PROV     = P.C_PROV'
      '          WHERE C.DATACOBRAMENT >= :DATA'
      '            AND FC.DATA_FACTU   <= :DATA'
      
        '            AND (( FC.C_ESTATCOBRO BETWEEN "80" AND "89") OR ( F' +
        'C.C_ESTATCOBRO = 60))'
      ''
      '            AND ((NOT FL.C_PROVA IS NULL)'
      '             OR  (NOT FL.C_ELEMENT IS NULL)'
      '             OR  (NOT FL.C_ORTESISLIN IS NULL))'
      ''
      '          UNION'
      ''
      
        '          SELECT (CAST (NULL AS INTEGER)), FC.N_FACTURA  , FC.C_' +
        'FACTURA     , FL.ORIGEN    , FL.C_PROVA, FL.C_ELEMENT,'
      
        '                 FL.C_ORTESISLIN, FL.C_INTERCON, FL.C_HISTORIA ,' +
        ' F.NOMCOMPLET     , FC.DATA_FACTU,'
      
        '                 FL.C_PROV      , P.N_PROV     , FL.C_CENTREFAC,' +
        ' P.PERRAPPELORTESI, FL.C_CLIENT, FL.ESMIXTE, FC.C_ESTATCOBRO'
      '          FROM ((FACCAP     FC'
      '            JOIN FACLIN     FL ON FL.C_FACTURA  = FC.C_FACTURA)'
      '            JOIN FILIACIO   F  ON FL.C_HISTORIA = F.NUM_HIST)'
      '            JOIN PROVEIDORS P  ON FL.C_PROV     = P.C_PROV'
      '          WHERE FC.DATA_FACTU  <= :DATA'
      
        '            AND (( FC.C_ESTATCOBRO BETWEEN "10" AND "19") OR ( F' +
        'C.C_ESTATCOBRO = 60))'
      '            AND ((NOT FL.C_PROVA IS NULL)'
      '             OR  (NOT FL.C_ELEMENT IS NULL)'
      '             OR  (NOT FL.C_ORTESISLIN IS NULL))'
      '*/'
      
        '          FOR SELECT FC.N_FACTURA , FC.C_FACTURA  , FL.ORIGEN   ' +
        '     , FL.C_PROVA   , FL.C_ELEMENT,'
      
        '                 FL.C_ORTESISLIN, FL.C_INTERCON, FL.C_HISTORIA ,' +
        ' F.NOMCOMPLET     , FC.DATA_FACTU,'
      
        '                 FL.C_PROV      , P.N_PROV     , FL.C_CENTREFAC,' +
        ' P.PERRAPPELORTESI, FL.C_CLIENT  ,  FL.ESMIXTE, FC.C_ESTATCOBRO,' +
        ' MAX(C.C_COBRO)'
      '          FROM ((((COBROS C'
      
        '              JOIN COBROSFAC  CF ON CF.C_COBRO    = C.C_COBRO   ' +
        ')'
      
        '              JOIN FACCAP     FC ON FC.C_FACTURA  = CF.C_FACTURA' +
        ')'
      
        '              JOIN FACLIN     FL ON FL.C_FACTURA  = FC.C_FACTURA' +
        ')'
      '              JOIN FILIACIO   F  ON FL.C_HISTORIA = F.NUM_HIST)'
      '              JOIN PROVEIDORS P  ON FL.C_PROV     = P.C_PROV'
      '          WHERE C.DATACOBRAMENT >= :DATA'
      '            AND FC.DATA_FACTU   <= :DATA'
      
        '            AND (( FC.C_ESTATCOBRO BETWEEN "80" AND "89") OR ( F' +
        'C.C_ESTATCOBRO = 60))'
      ''
      '            AND ((NOT FL.C_PROVA IS NULL)'
      '             OR  (NOT FL.C_ELEMENT IS NULL)'
      '             OR  (NOT FL.C_ORTESISLIN IS NULL))'
      ''
      
        '          GROUP BY FC.N_FACTURA , FC.C_FACTURA  , FL.ORIGEN     ' +
        '   , FL.C_PROVA   , FL.C_ELEMENT,'
      
        '                   FL.C_ORTESISLIN, FL.C_INTERCON, FL.C_HISTORIA' +
        ' , F.NOMCOMPLET     , FC.DATA_FACTU,'
      
        '                   FL.C_PROV      , P.N_PROV     , FL.C_CENTREFA' +
        'C, P.PERRAPPELORTESI, FL.C_CLIENT  ,  FL.ESMIXTE, FC.C_ESTATCOBR' +
        'O'
      ''
      '          UNION'
      ''
      
        '          SELECT FC.N_FACTURA  , FC.C_FACTURA     , FL.ORIGEN   ' +
        ' , FL.C_PROVA, FL.C_ELEMENT,'
      
        '                 FL.C_ORTESISLIN, FL.C_INTERCON, FL.C_HISTORIA ,' +
        ' F.NOMCOMPLET     , FC.DATA_FACTU,'
      
        '                 FL.C_PROV      , P.N_PROV     , FL.C_CENTREFAC,' +
        ' P.PERRAPPELORTESI, FL.C_CLIENT, FL.ESMIXTE, FC.C_ESTATCOBRO, (C' +
        'AST (NULL AS INTEGER))'
      '          FROM ((FACCAP     FC'
      '            JOIN FACLIN     FL ON FL.C_FACTURA  = FC.C_FACTURA)'
      '            JOIN FILIACIO   F  ON FL.C_HISTORIA = F.NUM_HIST)'
      '            JOIN PROVEIDORS P  ON FL.C_PROV     = P.C_PROV'
      '          WHERE FC.DATA_FACTU  <= :DATA'
      
        '            AND (( FC.C_ESTATCOBRO BETWEEN "10" AND "19") OR ( F' +
        'C.C_ESTATCOBRO = 60))'
      '            AND ((NOT FL.C_PROVA IS NULL)'
      '             OR  (NOT FL.C_ELEMENT IS NULL)'
      '             OR  (NOT FL.C_ORTESISLIN IS NULL))'
      ''
      ''
      
        '      INTO :N_FACTURA   , :C_FACTURA   , :ORIGEN     , :C_PROVA ' +
        '  , :C_ELEMENT ,'
      
        '           :C_ORTESISLIN, :C_INTERCON  , :C_HISTORIA , :NOMCOMPL' +
        'ET, :DATA_FACTU,'
      
        '           :C_PROV      , :N_PROV      , :C_CENTREFAC, :PERRAPPE' +
        'L , :C_CLIENT  ,'
      '           :ESMIXTE     , :C_ESTATCOBRO, :C_COBRO'
      '      DO BEGIN'
      ''
      '        IF (ESMIXTE IS NULL) THEN ESMIXTE = "N";'
      ''
      '        IF (NOT C_PROVA IS NULL) THEN'
      '        BEGIN'
      ''
      '          SELECT IVACOMPRA, PREU, PercentatgePacient'
      '          FROM INTERCONPROVAESP'
      '          WHERE C_INTERCON = :C_INTERCON'
      '            AND C_PROVA    = :C_PROVA'
      '          INTO :IVACOMPRA, :IMPORT, :PERPACIENT;'
      '        END;'
      ''
      '        IF (NOT C_ELEMENT IS NULL) THEN'
      '        BEGIN'
      ''
      '          SELECT IVACOMPRA, PREUCOMPRA, PercentatgePacient'
      '          FROM ELEMENTSFAC'
      '          WHERE C_ELEMENT = :C_ELEMENT'
      '           INTO :IVACOMPRA, :IMPORT, :PERPACIENT;'
      ''
      '        END;'
      ''
      '        IF (NOT C_ORTESISLIN IS NULL) THEN'
      '        BEGIN'
      ''
      '          SELECT IVACOMPRA, PREUCOMPRA, PercentatgePacient'
      '          FROM INTERCONORTESISLIN'
      '          WHERE C_INTERCON   = :C_INTERCON'
      '            AND C_ORTESISLIN = :C_ORTESISLIN'
      '           INTO :IVACOMPRA, :IMPORT, :PERPACIENT;'
      ''
      '        END;'
      ''
      '        IF (ESMIXTE = "S")  THEN'
      '        BEGIN'
      ''
      
        '          IF ((C_CENTREFAC <> "00") AND (NOT PERPACIENT IS NULL)' +
        ') THEN'
      '          BEGIN'
      '             PERPACIENT = 100 - PERPACIENT;'
      '          END;'
      ''
      '          IF (PERPACIENT IS NULL) THEN PERPACIENT = 100;'
      ''
      '          IMPORT = IMPORT * (PERPACIENT / 100);'
      '        END;'
      ''
      '        IF ((PERRAPPEL IS NULL)'
      '         OR (IVACOMPRA IS NULL)'
      '         OR (IMPORT    IS NULL))'
      '        THEN BEGIN'
      '          RAPPELMEYNSIVA = 0;'
      '        END'
      '        ELSE'
      '        BEGIN'
      '          RAPPELMEYNSIVA = IMPORT /  (1+(IVACOMPRA / 100));'
      
        '          RAPPELMEYNSIVA = F_DIVISA(RAPPELMEYNSIVA *  (PERRAPPEL' +
        ' / 100), 2);'
      '        END;'
      ''
      '        SUSPEND;'
      ''
      '        C_Prov       = NULL;'
      '        N_Prov       = NULL;'
      '        C_CentreFac  = NULL;'
      '        C_CLIENT     = NULL;'
      '        C_COBRO      = NULL;'
      '        C_FACTURA    = NULL;'
      '        N_FACTURA    = NULL;'
      '        ORIGEN       = NULL;'
      '        C_PROVA      = NULL;'
      '        C_ELEMENT    = NULL;'
      '        C_INTERCON   = NULL;'
      '        C_ORTESISLIN = NULL;'
      '        C_HISTORIA   = NULL;'
      '        NOMCOMPLET   = NULL;'
      '        DATA_FACTU   = NULL;'
      '        IMPORT       = NULL;'
      '        C_ESTATCOBRO = NULL;'
      '      END;'
      ''
      'END')
    Dic1 = wDataCobro.Cobros
    Abierta = False
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
    ModiFecha = 37735.7756006829
    Left = 532
    Top = 112
  end
  object RelacioOrtesis: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RelacioOrtesis'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DESDE DATE,'
      '  HASTA DATE'
      ')'
      'RETURNS'
      '('
      '  DATACOBRAMENT   DATE,'
      '  N_FACTURA       VARCHAR (40),'
      '  C_CentreFac     VARCHAR (2),'
      '  N_CentreFac     VARCHAR (20),'
      '  IMPORT          NUMERIC(15,3),'
      '  DATA_FACTU      DATE,'
      '  PERRAPPEL       NUMERIC(15,3),'
      '  RAPPEL          NUMERIC(15,3),'
      '  DATA_FACTU_RAP  DATE,'
      '  Prov            VARCHAR (50)'
      ')'
      'AS'
      '  DECLARE VARIABLE DATALIQUI    DATE;'
      '  DECLARE VARIABLE IVACOMPRA    NUMERIC(15, 3);'
      '  DECLARE VARIABLE C_PROVA      CHAR(5);'
      '  DECLARE VARIABLE C_ELEMENT    INTEGER;'
      '  DECLARE VARIABLE C_INTERCON   INTEGER;'
      '  DECLARE VARIABLE C_ORTESISLIN INTEGER;'
      'BEGIN'
      ''
      ''
      
        '      FOR SELECT C.DATACOBRAMENT, FC.N_FACTURA , FL.C_CENTREFAC ' +
        ', CF2.N_CENTREFAC        ,'
      
        '                 FC.DATA_FACTU  , FC2.PERRAPPEL, FC2.DATA_FACTU ' +
        ', P.C_PROV||'#39' '#39'||P.N_PROV, FL.C_INTERCON,'
      '                 FL.C_PROVA     , FL.C_ELEMENT , FL.C_ORTESISLIN'
      '      FROM (((((COBROS C'
      '         JOIN COBROSFAC CF ON C.C_COBRO = CF.C_COBRO)'
      '         JOIN FACCAP FC ON CF.C_FACTURA = FC.C_FACTURA)'
      '         JOIN FACLIN FL ON FC.C_FACTURA = FL.C_FACTURA)'
      '         JOIN PROVEIDORS P ON P.C_PROV = FL.C_PROV)'
      
        '      LEFT JOIN CENTREFAC CF2 ON CF2.C_CENTREFAC = FL.C_CENTREFA' +
        'C)'
      '      LEFT JOIN FACCAP FC2 ON FC2.C_FACTURA = FC.C_FACTURARAPPEL'
      '      WHERE (C.DATACOBRAMENT BETWEEN :DESDE AND :HASTA)'
      
        '        AND (FC.C_ESTATCOBRO BETWEEN 80 AND 89) /* NOM'#201'S LES COB' +
        'RADES */'
      
        '/* LA CRISTINA M'#39'HA DIT QUE NO TENEN QUE SORTIR LES APORTACIONS ' +
        'D'#39'ORTESIS ---> */'
      '        AND (FL.ORIGEN <> "OA")'
      
        '/* <--- LA CRISTINA M'#39'HA DIT QUE NO TENEN QUE SORTIR LES APORTAC' +
        'IONS D'#39'ORTESIS */'
      '      ORDER BY FL.C_PROV, FC.DATA_FACTU'
      
        '      INTO :DATACOBRAMENT, :N_FACTURA, :C_CENTREFAC   , :N_CENTR' +
        'EFAC,'
      
        '           :DATA_FACTU   , :PERRAPPEL, :DATA_FACTU_RAP, :PROV   ' +
        '    , :C_INTERCON,'
      '           :C_PROVA      , :C_ELEMENT, :C_ORTESISLIN'
      '     DO BEGIN'
      ''
      '        IF (NOT C_PROVA IS NULL) THEN'
      '        BEGIN'
      ''
      '          SELECT DATA_LIQUI, IVACOMPRA, PREU'
      '          FROM INTERCONPROVAESP'
      '          WHERE C_INTERCON = :C_INTERCON'
      '            AND C_PROVA    = :C_PROVA'
      '          INTO :DATALIQUI, :IVACOMPRA, :IMPORT;'
      ''
      '        END;'
      ''
      '        IF (NOT C_ELEMENT IS NULL) THEN'
      '        BEGIN'
      '        '
      '          SELECT DATA_LIQUI, IVACOMPRA, PREUCOMPRA'
      '          FROM ELEMENTSFAC'
      '          WHERE C_ELEMENT = :C_ELEMENT'
      '           INTO :DATALIQUI, :IVACOMPRA, :IMPORT;'
      ''
      '        END;'
      ''
      '        IF (NOT C_ORTESISLIN IS NULL) THEN'
      '        BEGIN'
      ''
      '          SELECT DATA_LIQUI, IVACOMPRA, PREUCOMPRA'
      '          FROM INTERCONORTESISLIN'
      '          WHERE C_INTERCON   = :C_INTERCON'
      '            AND C_ORTESISLIN = :C_ORTESISLIN'
      '           INTO :DATALIQUI, :IVACOMPRA, :IMPORT;'
      ''
      '        END;'
      ''
      
        '        IF (DATA_FACTU_RAP IS NULL) THEN DATA_FACTU_RAP = :DATAL' +
        'IQUI;'
      '        IF (NOT PERRAPPEL IS NULL) THEN'
      '        BEGIN'
      '          RAPPEL = IMPORT * (IVACOMPRA / 100);'
      
        '          RAPPEL = F_DIVISA(RAPPEL / (1 + (PERRAPPEL / 100)), 2)' +
        ';'
      '        END;'
      '        ELSE'
      '        BEGIN'
      '          RAPPEL = 0;'
      '        END;'
      ''
      '       SUSPEND;'
      '       '
      '       DATACOBRAMENT   = NULL;'
      '       N_FACTURA       = NULL;'
      '       C_CentreFac     = NULL;'
      '       N_CentreFac     = NULL;'
      '       IMPORT          = NULL;'
      '       DATA_FACTU      = NULL;'
      '       PERRAPPEL       = NULL;'
      '       RAPPEL          = NULL;'
      '       DATA_FACTU_RAP  = NULL;'
      '       Prov            = NULL;'
      '       DATALIQUI       = NULL;'
      '       IVACOMPRA       = NULL;'
      '       PERRAPPEL       = NULL;'
      '       C_PROVA         = NULL;'
      '       C_ELEMENT       = NULL;'
      '       C_INTERCON      = NULL;'
      '       C_ORTESISLIN    = NULL;'
      ''
      '      END;'
      ''
      'END'
      ''
      ''
      ''
      ''
      ''
      '')
    Dic1 = wDataCobro.Cobros
    Abierta = False
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
    ModiFecha = 37735.775598831
    Left = 532
    Top = 64
  end
  object GrupLiquiRappel: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GrupLiquiRappel'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '   ESTAT      INTEGER,'
      '   DATA_INICI DATE,'
      '   DATA_FI    DATE'
      ')'
      'RETURNS'
      '('
      '   C_PROV CHAR(10)'
      ')'
      'AS'
      'BEGIN'
      ''
      '   FOR SELECT O.C_PROV'
      
        '       FROM INTERCONORTESISLIN O JOIN PROVEIDORS PR ON PR.C_PROV' +
        ' = O.C_PROV'
      '       WHERE O.C_ESTATRAPPEL = :ESTAT'
      '         AND O.DATA_CONTA IS NULL'
      '         AND (O.DATA_LIQUI BETWEEN :Data_Inici AND :Data_Fi)'
      ''
      '       UNION'
      ''
      '       SELECT P.C_PROV'
      
        '       FROM INTERCONPROVAESP P JOIN PROVEIDORS PR ON PR.C_PROV =' +
        ' P.C_PROV'
      '       WHERE P.C_ESTATRAPPEL = :ESTAT'
      '         AND P.DATA_CONTA IS NULL'
      '         AND (P.DATA_LIQUI BETWEEN :Data_Inici AND :Data_Fi)'
      ''
      '       UNION'
      ''
      '       SELECT E.C_PROV'
      
        '       FROM ELEMENTSFAC E JOIN PROVEIDORS PR ON PR.C_PROV = E.C_' +
        'PROV'
      '       WHERE E.C_ESTATRAPPEL = :ESTAT'
      '         AND E.DATA_CONTA IS NULL'
      '         AND (E.DATA_LIQUI BETWEEN :Data_Inici AND :Data_Fi)'
      ''
      '   INTO :C_PROV'
      '   DO BEGIN'
      '       SUSPEND;'
      '   END;'
      '   '
      'END')
    Dic1 = wDataFactu.FacCap
    Dic1Name = 'FacCap'
    Abierta = False
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
    ModiFecha = 37735.7756030093
    Left = 202
    Top = 171
  end
  object RappelsProvOr: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RappelsProvOr'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '   ESTADO                     INTEGER'
      ')'
      'RETURNS'
      '('
      '   DESCRIPCIO_ESTAT           VARCHAR (100),'
      '   C_Prov                     CHAR    (10),'
      '   N_Prov                     VARCHAR (40),'
      '   C_HISTORIA                 INTEGER,'
      '   NOMCOMPLET                 VARCHAR (80),'
      '   C_Intercon                 INTEGER,'
      '   C_Ortesis                  VARCHAR (5),'
      '   C_OrtesisLin               INTEGER,'
      '   N_Ortesis                  VARCHAR (250),'
      '   Albara                     VARCHAR (40),'
      '   Data_FacProv               DATE,'
      '   Data_FacCli                DATE,'
      '   C_CentreFac                VARCHAR (2),'
      '   C_Client                   VARCHAR (3),'
      '   C_Delegacio                VARCHAR (4),'
      '   PercentatgePacient         NUMERIC (15,3),'
      '   Referencia                 VARCHAR (40),'
      '   EstatFac                   SMALLINT,'
      '   EstatFacProv               SMALLINT,'
      '   C_EstatRappel              INTEGER,'
      '   PercentatgeRappel          NUMERIC (15,3),'
      '   AportacioPacient           CHAR    (1),'
      '   IvaCompra                  NUMERIC (15,3),'
      '   PreuCompra                 NUMERIC (15,3),'
      '   Data_CobroPacient          DATE,'
      '   Observacions               VARCHAR (30),'
      '/*   Data_Entrega               DATE, */'
      '   Data_Comanda               DATE,'
      '   Data_PeticioMutua          DATE,'
      '   Data_ConformitatMutua      DATE,'
      '   IvaVenta                   NUMERIC (15,3),'
      '   PreuVenta                  NUMERIC (15,3),'
      '   AlbaraPacient              VARCHAR (20)'
      ')'
      'AS'
      '  DECLARE VARIABLE TMPPREUCOMPRA NUMERIC (15, 3);'
      '  DECLARE VARIABLE TMPPREUVENTA  NUMERIC (15, 3);'
      'BEGIN'
      ''
      '        IF (ESTADO = 0) THEN'
      '        BEGIN'
      
        '                   FOR SELECT I2.C_Intercon        , I2.C_Ortesi' +
        's            , I2.C_ORTESISLIN     , I2.N_Ortesis    , I2.Albara' +
        '      ,'
      
        '                              I2.C_Prov            , I2.Data_Fac' +
        'Prov         , I2.Data_FacCli      , I2.C_CentreFac , I2.C_Clien' +
        't     , I2.C_Delegacio ,'
      
        '                              I2.PercentatgePacient, I2.Referenc' +
        'ia           , I2.EstatFac         , I2.EstatFacProv, I2.C_Estat' +
        'Rappel, I2.PreuVenta   ,'
      
        '                              I2.AportacioPacient  , I2.IvaCompr' +
        'a            , I2.Data_CobroPacient, I2.Observacions, /*I2.Data_' +
        'Entrega ,*/  I2.Data_Comanda,'
      
        '                              I2.Data_PeticioMutua , I2.Data_Con' +
        'formitatMutua, I2.IvaVenta         , I2.PreuCompra  , I2.AlbaraP' +
        'acient, CC.N_CODI      ,'
      
        '                              P.N_PROV             , I.C_HISTORI' +
        'A            , F.NOMCOMPLET        , P.PerRappelOrtesi'
      '                         FROM ((( INTERCON I'
      
        '                         JOIN INTERCONORTESISLIN I2 ON I2.C_INTE' +
        'RCON = I.C_INTERCON)'
      
        '                         JOIN CODICAMPSALFA    CC ON  CC.TIPUSCO' +
        'DI = '#39'ESTATRAPPEL'#39
      
        '                                                  AND CC.C_CODI ' +
        '   = I2.C_EstatRappel)'
      
        '                    LEFT JOIN FILIACIO         F  ON I.C_HISTORI' +
        'A  = F.NUM_HIST)'
      
        '                    LEFT JOIN PROVEIDORS       P  ON  I2.C_PROV ' +
        '   = P.C_PROV'
      
        '                         WHERE I2.C_ESTATRAPPEL BETWEEN 10 AND 1' +
        '9'
      '                           AND I2.ESTATFAC >= 80'
      
        '                         INTO :C_Intercon        , :C_Ortesis   ' +
        '         , :C_ORTESISLIN     , :N_Ortesis   , :Albara      ,'
      
        '                              :C_Prov            , :Data_FacProv' +
        '         , :Data_FacCli      , :C_CentreFac , :C_Client     , :C' +
        '_Delegacio ,'
      
        '                              :PercentatgePacient, :Referencia  ' +
        '         , :EstatFac         , :EstatFacProv, :C_EstatRappel, :P' +
        'reuVenta   ,'
      
        '                              :AportacioPacient  , :IvaCompra   ' +
        '         , :Data_CobroPacient, :Observacions, /*:Data_Entrega ,*' +
        '/ :Data_Comanda,'
      
        '                              :Data_PeticioMutua , :Data_Conform' +
        'itatMutua, :IvaVenta         , :PreuCompra  , :AlbaraPacient, :D' +
        'ESCRIPCIO_ESTAT,'
      
        '                              :N_PROV            , :C_HISTORIA  ' +
        '         , :NOMCOMPLET       , :PERCENTATGERAPPEL'
      '                   DO BEGIN'
      '                     SUSPEND;'
      '                   END;'
      ''
      
        '                FOR SELECT I2.C_Intercon        , I2.C_Ortesis  ' +
        '         , I2.C_ORTESISLIN    , I2.N_Ortesis   , I2.Albara      ' +
        ','
      
        '                           I2.C_Prov            , I2.Data_FacPro' +
        'v         , I2.Data_FacCli      , I2.C_CentreFac , I2.C_Client  ' +
        '   , I2.C_Delegacio ,'
      
        '                           I2.PercentatgePacient, I2.Referencia ' +
        '          , I2.EstatFac         , I2.EstatFacProv, I2.C_EstatRap' +
        'pel, I2.PreuVenta   ,'
      
        '                           I2.AportacioPacient  , I2.IvaCompra  ' +
        '          , I2.Data_CobroPacient, I2.Observacions, /*I2.Data_Ent' +
        'rega ,*/ I2.Data_Comanda,'
      
        '                           I2.Data_PeticioMutua , I2.Data_Confor' +
        'mitatMutua, I2.IvaVenta         , I2.PreuCompra  , I2.AlbaraPaci' +
        'ent, CC.N_CODI      ,'
      
        '                           P.N_PROV             , FL.C_HISTORIA ' +
        '           , F.NOMCOMPLET        , P.PerRappelOrtesi'
      '                      FROM (((((INTERCONORTESISLIN I2'
      
        '                      JOIN CODICAMPSALFA    CC ON  CC.TIPUSCODI ' +
        '= '#39'ESTATRAPPEL'#39
      
        '                                               AND CC.C_CODI = I' +
        '2.C_EstatRappel)'
      
        '                 LEFT JOIN PROVEIDORS       P  ON  I2.C_PROV = P' +
        '.C_PROV)'
      
        '                      JOIN FACLIN          FL  ON FL.C_ORTESISLI' +
        'N = I2.C_ORTESISLIN AND FL.ORIGEN    <> '#39'R'#39')'
      
        '                      JOIN FACCAP          FC  ON FC.C_FACTURA  ' +
        '  = FL.C_FACTURA    AND FC.T_FACTURA <> '#39'R'#39'  AND FC.C_ESTATCOBRO' +
        ' = 10)'
      
        '                 LEFT JOIN FILIACIO         F  ON FL.C_HISTORIA ' +
        '= F.NUM_HIST)'
      '                     WHERE I2.ESTATFAC >= 80'
      
        '                      INTO :C_Intercon        , :C_Ortesis      ' +
        '      , :C_ORTESISLIN     , :N_Ortesis   , :Albara      ,'
      
        '                           :C_Prov            , :Data_FacProv   ' +
        '      , :Data_FacCli      , :C_CentreFac , :C_Client     , :C_De' +
        'legacio ,'
      
        '                           :PercentatgePacient, :Referencia     ' +
        '      , :EstatFac         , :EstatFacProv, :C_EstatRappel, :Preu' +
        'Venta   ,'
      
        '                           :AportacioPacient  , :IvaCompra      ' +
        '      , :Data_CobroPacient, :Observacions, /*:Data_Entrega ,*/ :' +
        'Data_Comanda,'
      
        '                           :Data_PeticioMutua , :Data_Conformita' +
        'tMutua, :IvaVenta         , :PreuCompra  , :AlbaraPacient, :DESC' +
        'RIPCIO_ESTAT,'
      
        '                           :N_PROV            , :C_HISTORIA     ' +
        '      , :NOMCOMPLET       , :PERCENTATGERAPPEL'
      '                DO BEGIN'
      '                  SUSPEND;'
      '                END;'
      '/*'
      '             SELECT SUM(I2.PreuVenta)   , SUM(I2.PreuCompra)'
      '               FROM INTERCONORTESISLIN I2'
      '              WHERE (I2.C_ESTATRAPPEL BETWEEN 0 AND 19)'
      '                AND I2.ESTATFAC >= 80'
      '                AND I2.PREUVENTA IS NOT NULL'
      '                AND I2.PREUCOMPRA IS NOT NULL'
      '               INTO :PREUVENTA, :PREUCOMPRA;'
      ''
      '            SELECT SUM(I2.PREUVENTA), SUM(I2.PREUCOMPRA)'
      
        '              FROM (FACCAP FC JOIN FACLIN FL             ON FL.C' +
        '_FACTURA    = FC.C_FACTURA   )'
      
        '                         LEFT JOIN INTERCONORTESISLIN I2 ON I2.C' +
        '_ORTESISLIN = FL.C_ORTESISLIN'
      '             WHERE FC.C_ESTATCOBRO = 10'
      '               AND FL.ORIGEN       <> '#39'R'#39
      '               AND I2.ESTATFAC     >= 80'
      '               AND I2.PREUVENTA  IS NOT NULL'
      '               AND I2.PREUCOMPRA IS NOT NULL'
      '              INTO :TMPPREUVENTA, :TMPPREUCOMPRA;'
      '                  '
      '             PREUVENTA  = PREUVENTA  + TMPPREUVENTA;'
      '             PREUCOMPRA = PREUCOMPRA + TMPPREUCOMPRA;'
      '             '
      '*/'
      '           '
      '        END;'
      ''
      '        IF (ESTADO = 1) THEN'
      '        BEGIN'
      ''
      
        '                 FOR SELECT I2.C_Intercon        , I2.C_Ortesis ' +
        '          , I2.C_ORTESISLIN    , I2.N_Ortesis   , I2.Albara     ' +
        ' ,'
      
        '                           I2.C_Prov            , I2.Data_FacPro' +
        'v         , I2.Data_FacCli      , I2.C_CentreFac , I2.C_Client  ' +
        '   , I2.C_Delegacio ,'
      
        '                           I2.PercentatgePacient, I2.Referencia ' +
        '          , I2.EstatFac         , I2.EstatFacProv, I2.C_EstatRap' +
        'pel, I2.PreuVenta   ,'
      
        '                           I2.AportacioPacient  , I2.IvaCompra  ' +
        '          , I2.Data_CobroPacient, I2.Observacions, /*I2.Data_Ent' +
        'rega ,*/ I2.Data_Comanda,'
      
        '                           I2.Data_PeticioMutua , I2.Data_Confor' +
        'mitatMutua, I2.IvaVenta         , I2.PreuCompra  , I2.AlbaraPaci' +
        'ent, CC.N_CODI      ,'
      
        '                           P.N_PROV             , FL.C_HISTORIA ' +
        '           , F.NOMCOMPLET        , P.PerRappelOrtesi'
      '                      FROM (((((INTERCONORTESISLIN I2'
      
        '                      JOIN CODICAMPSALFA    CC ON  CC.TIPUSCODI ' +
        '= '#39'ESTATRAPPEL'#39
      
        '                                               AND CC.C_CODI = I' +
        '2.C_EstatRappel)'
      
        '                 LEFT JOIN PROVEIDORS       P  ON  I2.C_PROV = P' +
        '.C_PROV)'
      
        '                      JOIN FACLIN          FL  ON FL.C_ORTESISLI' +
        'N = I2.C_ORTESISLIN AND FL.ORIGEN    <> '#39'R'#39')'
      
        '                      JOIN FACCAP          FC  ON FC.C_FACTURA  ' +
        '  = FL.C_FACTURA    AND FC.T_FACTURA <> '#39'R'#39'  AND FC.C_ESTATCOBRO' +
        ' = 10)'
      
        '                 LEFT JOIN FILIACIO         F  ON FL.C_HISTORIA ' +
        '= F.NUM_HIST)'
      '                     WHERE I2.ESTATFAC >= 80'
      
        '                      INTO :C_Intercon        , :C_Ortesis      ' +
        '      , :C_ORTESISLIN     , :N_Ortesis   , :Albara      ,'
      
        '                           :C_Prov            , :Data_FacProv   ' +
        '      , :Data_FacCli      , :C_CentreFac , :C_Client     , :C_De' +
        'legacio ,'
      
        '                           :PercentatgePacient, :Referencia     ' +
        '      , :EstatFac         , :EstatFacProv, :C_EstatRappel, :Preu' +
        'Venta   ,'
      
        '                           :AportacioPacient  , :IvaCompra      ' +
        '      , :Data_CobroPacient, :Observacions, /*:Data_Entrega , */:' +
        'Data_Comanda,'
      
        '                           :Data_PeticioMutua , :Data_Conformita' +
        'tMutua, :IvaVenta         , :PreuCompra  , :AlbaraPacient, :DESC' +
        'RIPCIO_ESTAT,'
      
        '                           :N_PROV            , :C_HISTORIA     ' +
        '      , :NOMCOMPLET       , :PERCENTATGERAPPEL'
      '                DO BEGIN'
      '                  SUSPEND;'
      '                END;'
      '/*                 SELECT SUM(I2.PREUVENTA), SUM(I2.PREUCOMPRA)'
      '                      FROM ((INTERCONORTESISLIN I2'
      
        '                      JOIN FACLIN FL ON FL.C_ORTESISLIN = I2.C_O' +
        'RTESISLIN'
      '                                    AND FL.ORIGEN    <> '#39'R'#39')'
      
        '                      JOIN FACCAP FC ON FC.C_FACTURA    = FL.C_F' +
        'ACTURA'
      '                                    AND FC.T_FACTURA <> '#39'R'#39
      '                                    AND FC.C_ESTATCOBRO = 10)'
      '                     WHERE I2.ESTATFAC >= 80'
      '                   SELECT SUM(I2.PREUVENTA), SUM(I2.PREUCOMPRA)'
      
        '                     FROM (FACCAP FC JOIN FACLIN FL             ' +
        'ON FL.C_FACTURA    = FC.C_FACTURA   )'
      
        '                                LEFT JOIN INTERCONORTESISLIN I2 ' +
        'ON I2.C_ORTESISLIN = FL.C_ORTESISLIN'
      '                    WHERE FC.C_ESTATCOBRO = 10'
      '                      AND FL.ORIGEN       <> '#39'R'#39
      '                      AND I2.ESTATFAC     >= 80'
      '                      AND I2.PREUVENTA  IS NOT NULL'
      '                      AND I2.PREUCOMPRA IS NOT NULL'
      '                     INTO :PREUVENTA, :PREUCOMPRA;'
      ''
      '                  SUSPEND;*/'
      '        END;'
      ''
      '        IF (ESTADO = 2) THEN'
      '        BEGIN'
      '        '
      
        '                   FOR SELECT I2.C_Intercon        , I2.C_Ortesi' +
        's            , I2.C_ORTESISLIN     , I2.N_Ortesis    , I2.Albara' +
        '      ,'
      
        '                              I2.C_Prov            , I2.Data_Fac' +
        'Prov         , I2.Data_FacCli      , I2.C_CentreFac , I2.C_Clien' +
        't     , I2.C_Delegacio ,'
      
        '                              I2.PercentatgePacient, I2.Referenc' +
        'ia           , I2.EstatFac         , I2.EstatFacProv, I2.C_Estat' +
        'Rappel, I2.PreuVenta   ,'
      
        '                              I2.AportacioPacient  , I2.IvaCompr' +
        'a            , I2.Data_CobroPacient, I2.Observacions, /*I2.Data_' +
        'Entrega ,*/ I2.Data_Comanda,'
      
        '                              I2.Data_PeticioMutua , I2.Data_Con' +
        'formitatMutua, I2.IvaVenta         , I2.PreuCompra  , I2.AlbaraP' +
        'acient, CC.N_CODI      ,'
      
        '                              P.N_PROV             , I.C_HISTORI' +
        'A            , F.NOMCOMPLET        , P.PerRappelOrtesi'
      '                         FROM ((( INTERCON I'
      
        '                         JOIN INTERCONORTESISLIN I2 ON I2.C_INTE' +
        'RCON = I.C_INTERCON)'
      
        '                         JOIN CODICAMPSALFA    CC ON  CC.TIPUSCO' +
        'DI = '#39'ESTATRAPPEL'#39
      
        '                                                  AND CC.C_CODI ' +
        '   = I2.C_EstatRappel)'
      
        '                    LEFT JOIN FILIACIO         F  ON I.C_HISTORI' +
        'A  = F.NUM_HIST)'
      
        '                    LEFT JOIN PROVEIDORS       P  ON  I2.C_PROV ' +
        '   = P.C_PROV'
      
        '                         WHERE I2.C_ESTATRAPPEL BETWEEN 10 AND 1' +
        '9'
      '                           AND I2.ESTATFAC >= 80'
      
        '                         INTO :C_Intercon        , :C_Ortesis   ' +
        '         , :C_ORTESISLIN     , :N_Ortesis   , :Albara      ,'
      
        '                              :C_Prov            , :Data_FacProv' +
        '         , :Data_FacCli      , :C_CentreFac , :C_Client     , :C' +
        '_Delegacio ,'
      
        '                              :PercentatgePacient, :Referencia  ' +
        '         , :EstatFac         , :EstatFacProv, :C_EstatRappel, :P' +
        'reuVenta   ,'
      
        '                              :AportacioPacient  , :IvaCompra   ' +
        '         , :Data_CobroPacient, :Observacions, /*:Data_Entrega ,*' +
        '/ :Data_Comanda,'
      
        '                              :Data_PeticioMutua , :Data_Conform' +
        'itatMutua, :IvaVenta         , :PreuCompra  , :AlbaraPacient, :D' +
        'ESCRIPCIO_ESTAT,'
      
        '                              :N_PROV            , :C_HISTORIA  ' +
        '         , :NOMCOMPLET       , :PERCENTATGERAPPEL'
      '                   DO BEGIN'
      '                     SUSPEND;'
      '                   END;'
      ''
      
        '/*                   SELECT SUM(I2.PREUVENTA), SUM(I2.PREUCOMPRA' +
        ')'
      '                     FROM INTERCONORTESISLIN I2'
      '                    WHERE I2.C_ESTATRAPPEL BETWEEN 10 AND 19'
      '                      AND I2.ESTATFAC >= 80'
      '                     INTO :PREUVENTA, :PREUCOMPRA;'
      '                     '
      ''
      '                     SUSPEND;*/'
      '        END;'
      'END')
    Select.Strings = (
      'select * from'
      'P_INTERCON_RAPPELSPROVOR(1)'
      '[FILTRO]'
      '[ORDEN]')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'InterCon'
    Abierta = False
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
    ModiFecha = 37735.7772921181
    Left = 202
    Top = 224
  end
  object RapLiqui: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RapLiqui'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  ESTAT1 VARCHAR(15),'
      '  ESTAT2 VARCHAR(15)'
      ')'
      'RETURNS'
      '('
      '     TIPUS_LIQUIDACIO   VARCHAR(20),'
      '     C_Intercon         INTEGER,'
      '     C_Ortesis          VARCHAR(5),'
      '     C_OrtesisLin       INTEGER,'
      '     C_PROVA            CHAR(5),'
      '     C_ELEMENT          INTEGER,'
      '     Albara             VARCHAR(40),'
      '     C_Prov             VARCHAR(10),'
      '     C_CentreFac        VARCHAR(2),'
      '     C_Client           VARCHAR(3),'
      '     C_Delegacio        VARCHAR(4),'
      '     PercentatgePacient NUMERIC(15,3),'
      '     Referencia         VARCHAR(40),'
      '     EstatFac           SMALLINT,'
      '     C_EstatRappel      VARCHAR(15),'
      '     PreuVenta          NUMERIC(15,3),'
      '     IvaCompra          NUMERIC(15,3),'
      '     IvaVenta           NUMERIC(15,3),'
      '     PreuCompra         NUMERIC(15,3),'
      '     N_CODI             VARCHAR(60),'
      '     N_PROV             VARCHAR(40),'
      '     C_HISTORIA         INTEGER,'
      '     NOMCOMPLET         VARCHAR(80)'
      ')'
      'AS'
      'BEGIN'
      ''
      '    FOR SELECT'
      '        (CAST( "ORTESIS" AS VARCHAR(20))) AS TIPUS_LIQUIDACIO ,'
      '        I2.C_Intercon,'
      '        I2.C_Ortesis,'
      '        I2.C_OrtesisLin,'
      '        (CAST (NULL AS CHAR(5))) AS C_PROVA,'
      '        (CAST (NULL AS INTEGER)) AS C_Element,'
      '        (CAST (I2.Albara AS VARCHAR(40))) AS ALBARA,'
      '        I2.C_Prov,'
      '        I2.C_CentreFac,'
      '        I2.C_Client,'
      '        I2.C_Delegacio,'
      
        '        (CAST (I2.PercentatgePacient AS NUMERIC(15,3))) AS PERCE' +
        'NTATGEPACIENT,'
      '        I2.Referencia,'
      '        I2.EstatFac,'
      '        I2.C_EstatRappel,'
      '        I2.PreuVenta,'
      '        I2.IvaCompra,'
      '        I2.IvaVenta,'
      '        I2.PreuCompra,'
      '        CC.N_CODI,'
      '        P.N_PROV,'
      '        I.C_HISTORIA,'
      '        F.NOMCOMPLET'
      '        FROM ((((INTERCONORTESISLIN I2'
      
        '             JOIN CODICAMPSALFA CC ON CC.TIPUSCODI  = '#39'ESTATRAPP' +
        'EL'#39
      
        '                                  AND CC.C_CODI     = I2.C_Estat' +
        'Rappel)'
      
        '             JOIN INTERCON      I  ON  I.C_INTERCON = I2.C_INTER' +
        'CON)'
      
        '        LEFT JOIN FILIACIO      F  ON  I.C_HISTORIA = F.NUM_HIST' +
        ')'
      '        LEFT JOIN PROVEIDORS    P  ON I2.C_PROV     = P.C_PROV)'
      '        WHERE I2.C_ESTATRAPPEL BETWEEN :ESTAT1 AND :ESTAT2'
      '    INTO :TIPUS_LIQUIDACIO,'
      
        '         :C_Intercon , :C_Ortesis,  :C_OrtesisLin, :C_PROVA     ' +
        '      , :C_ELEMENT, :Albara  , :C_Prov       ,'
      
        '         :C_CentreFac, :C_Client ,  :C_Delegacio , :PercentatgeP' +
        'acient, :Referencia  , :EstatFac, :C_EstatRappel,'
      
        '         :PreuVenta  , :IvaCompra,  :IvaVenta    , :PreuCompra  ' +
        '      , :N_CODI      , :N_PROV  , :C_HISTORIA   ,'
      '         :NOMCOMPLET'
      '    DO BEGIN'
      ''
      '      SUSPEND;'
      ''
      '    END;'
      ''
      '    FOR SELECT'
      
        '        (CAST( "PROVA ESPECIAL" AS VARCHAR(20))) AS TIPUS_LIQUID' +
        'ACIO,'
      '        IP.C_Intercon,'
      '        (CAST (NULL AS VARCHAR(5))) AS C_Ortesis,'
      '        (CAST (NULL AS INTEGER))    AS C_OrtesisLin,'
      '        IP.C_PROVA,'
      '        (CAST (NULL AS INTEGER))    AS C_Element,'
      '        (CAST (IP.AlbaraProv AS VARCHAR(40))) AS ALBARA,'
      '        IP.C_Prov,'
      '        IP.C_CentreFac,'
      '        IP.C_Client,'
      '        IP.C_Delegacio,'
      
        '        (CAST (IP.PercentatgePacient AS NUMERIC(15,3))) AS PERCE' +
        'NTATGEPACIENT,'
      '        IP.Referencia,'
      '        IP.EstatFac,'
      '        IP.C_EstatRappel,'
      '        IP.PreuVenta,'
      '        IP.IvaCompra,'
      '        IP.IvaVenta,'
      '        IP.Preu AS PreuCompra,'
      '        CC.N_CODI,'
      '        P.N_PROV,'
      '        I.C_HISTORIA,'
      '        F.NOMCOMPLET'
      '        FROM (((((INTERCONPROVAESP IP'
      
        '             JOIN CodiProvaEsp  CP ON IP.C_PROVA    = CP.C_PROVA' +
        'ESP)'
      
        '             JOIN CODICAMPSALFA CC ON CC.TIPUSCODI  = '#39'ESTATRAPP' +
        'EL'#39
      
        '                                  AND CC.C_CODI     = IP.C_Estat' +
        'Rappel)'
      
        '             JOIN INTERCON      I  ON  I.C_INTERCON = IP.C_INTER' +
        'CON)'
      
        '        LEFT JOIN FILIACIO      F  ON  I.C_HISTORIA = F.NUM_HIST' +
        ')'
      '        LEFT JOIN PROVEIDORS    P  ON IP.C_PROV     = P.C_PROV)'
      '        WHERE IP.C_ESTATRAPPEL BETWEEN :ESTAT1 AND :ESTAT2'
      '    INTO :TIPUS_LIQUIDACIO,'
      
        '         :C_Intercon , :C_Ortesis,  :C_OrtesisLin, :C_PROVA     ' +
        '      , :C_ELEMENT, :Albara  , :C_Prov       ,'
      
        '         :C_CentreFac, :C_Client ,  :C_Delegacio , :PercentatgeP' +
        'acient, :Referencia  , :EstatFac, :C_EstatRappel,'
      
        '         :PreuVenta  , :IvaCompra,  :IvaVenta    , :PreuCompra  ' +
        '      , :N_CODI      , :N_PROV  , :C_HISTORIA   ,'
      '         :NOMCOMPLET'
      '    DO BEGIN'
      ''
      '      SUSPEND;'
      ''
      '    END;'
      ''
      '    FOR SELECT'
      
        '        (CAST( "ELEMENT FACTURABLE" AS VARCHAR(20))) AS TIPUS_LI' +
        'QUIDACIO,'
      '        (CAST (NULL AS INTEGER))    AS C_Intercon,'
      '        (CAST (NULL AS VARCHAR(5))) AS C_Ortesis,'
      '        (CAST (NULL AS INTEGER))    AS C_OrtesisLin,'
      '        (CAST (NULL AS CHAR(5)))    AS C_PROVA,'
      '        EF.C_ELEMENT,'
      '        EF.FacturaProveidor AS Albara,'
      '        EF.C_Prov,'
      '        EF.C_CentreFac,'
      '        EF.C_Client,'
      '        EF.C_Delegacio,'
      
        '        (CAST (EF.PercentatgePacient AS NUMERIC(15,3))) AS PERCE' +
        'NTATGEPACIENT,'
      '        EF.Referencia,'
      '        EF.C_EstatFac as EstatFac,'
      '        EF.C_EstatRappel,'
      '        EF.Preu as PreuVenta,'
      '        EF.IvaCompra ,'
      '        EF.Iva as IvaVenta,'
      '        EF.PreuCompra,'
      '        CC.N_CODI,'
      '        P.N_PROV,'
      '        EF.C_HISTORIA,'
      '        F.NOMCOMPLET'
      '        FROM (((ELEMENTSFAC EF'
      
        '             JOIN CODICAMPSALFA CC ON CC.TIPUSCODI  = '#39'ESTATRAPP' +
        'EL'#39
      
        '                                  AND CC.C_CODI     = EF.C_Estat' +
        'Rappel)'
      
        '        LEFT JOIN FILIACIO      F  ON EF.C_HISTORIA = F.NUM_HIST' +
        ')'
      '        LEFT JOIN PROVEIDORS    P  ON EF.C_PROV     = P.C_PROV)'
      '        WHERE EF.C_ESTATRAPPEL BETWEEN :ESTAT1 AND :ESTAT2'
      '    INTO :TIPUS_LIQUIDACIO,'
      
        '         :C_Intercon , :C_Ortesis,  :C_OrtesisLin, :C_PROVA     ' +
        '      , :C_ELEMENT, :Albara  , :C_Prov       ,'
      
        '         :C_CentreFac, :C_Client ,  :C_Delegacio , :PercentatgeP' +
        'acient, :Referencia  , :EstatFac, :C_EstatRappel,'
      
        '         :PreuVenta  , :IvaCompra,  :IvaVenta    , :PreuCompra  ' +
        '      , :N_CODI      , :N_PROV  , :C_HISTORIA   ,'
      '         :NOMCOMPLET'
      '    DO BEGIN'
      ''
      '      SUSPEND;'
      ''
      '    END;'
      ''
      'END')
    Dic1 = wDataFactu.FacCap
    Abierta = False
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
    ModiFecha = 37735.7756045139
    Left = 346
    Top = 171
  end
  object RappelsProvPE: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RappelsProvPE'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '   ESTADO               INTEGER'
      ')'
      'RETURNS'
      '('
      ''
      '   DESCRIPCIO_ESTAT     VARCHAR (100),'
      '   C_Prov               CHAR    (10),'
      '   N_Prov               VARCHAR (40),'
      '   C_HISTORIA           INTEGER,'
      '   NOMCOMPLET           VARCHAR (80),'
      '   C_Intercon           INTEGER,'
      '   C_Prova              CHAR    (5),'
      '   C_Metge              VARCHAR (5),'
      '   Data_Valida          DATE,'
      '   Data_FacProv         DATE,'
      '   Data_FacCli          DATE,'
      '   Ambulancia           CHAR    (1),'
      '   Avis                 CHAR    (1),'
      '   Impres               DATE,'
      '   Data_Trucada         DATE,'
      '   Hora                 CHAR    (10),'
      '   Data_Prevista        DATE,'
      '   Data_Prova           DATE,'
      '   Data_Resultat        DATE,'
      '   Observacions         VARCHAR (250),'
      '   TeNotes              CHAR    (1),'
      '   Dirigir_A            CHAR    (1),'
      '   Impres2              DATE,'
      '   Data_Preu            DATE,'
      '   C_CentreFac          VARCHAR (2),'
      '   C_Client             VARCHAR (3),'
      '   C_Delegacio          VARCHAR (4),'
      '   PercentatgePacient   DOUBLE PRECISION,'
      '   Referencia           VARCHAR (40),'
      '   Preu                 NUMERIC(15,3),'
      '   EstatFac             SMALLINT,'
      '   EstatFacProv         SMALLINT,'
      '   C_EstatRappel        VARCHAR (15),'
      '   PreuVenta            NUMERIC(15,3),'
      '   IvaCompra            NUMERIC(15,3),'
      '   IvaVenta             NUMERIC(15,3),'
      '   AlbaraProv           VARCHAR (15)'
      ''
      ')'
      'AS'
      'BEGIN'
      ''
      
        '  /* -----------------------------------------------------------' +
        '----------------------------------------------------------------' +
        ' */'
      
        '  /* --------------------------------------------------------- O' +
        'RTESIS ---------------------------------------------------------' +
        ' */'
      
        '  /* -----------------------------------------------------------' +
        '----------------------------------------------------------------' +
        ' */'
      ''
      '        IF (ESTADO = 0) THEN'
      '        BEGIN'
      
        '           FOR SELECT IP.C_Intercon  , IP.C_Prova      , IP.C_Me' +
        'tge           , IP.Data_Valida  , IP.C_Prov      , IP.Data_FacPr' +
        'ov,'
      
        '                      IP.Data_FacCli , IP.Ambulancia   , IP.Avis' +
        '              , IP.Impres      , IP.Data_Trucada,'
      
        '                      IP.Hora        , IP.Data_Prevista, IP.Data' +
        '_Prova        , IP.Data_Resultat, IP.Observacions,'
      
        '                      IP.TeNotes     , IP.Dirigir_A    , IP.Impr' +
        'es2      , IP.Data_Preu   , IP.C_CentreFac ,'
      
        '                      IP.C_Client    , IP.C_Delegacio  , IP.Perc' +
        'entatgePacient, IP.Referencia   , IP.Preu        , IP.EstatFac  ' +
        '  ,'
      
        '                      IP.EstatFacProv, IP.C_EstatRappel, IP.Preu' +
        'Venta         , IP.IvaCompra    , IP.IvaVenta    , IP.AlbaraProv' +
        '  ,'
      
        '                      CC.N_CODI      , P.N_PROV        , I.C_HIS' +
        'TORIA         , F.NOMCOMPLET'
      ''
      '                 FROM INTERCONPROVAESP IP'
      
        '                 JOIN CODICAMPS        CC ON CC.TIPUSCODI = '#39'EST' +
        'ATRAPPEL'#39
      
        '                                         AND CC.C_CODI    = IP.C' +
        '_EstatRappel'
      
        '                 JOIN INTERCON         I  ON I.C_INTERCON = IP.C' +
        '_INTERCON'
      
        '            LEFT JOIN FILIACIO         F  ON I.C_HISTORIA = F.NU' +
        'M_HIST'
      
        '            LEFT JOIN PROVEIDORS       P  ON IP.C_PROV = P.C_PRO' +
        'V'
      '                 WHERE IP.C_ESTATRAPPEL <> 0'
      '                   AND IP.ESTATFAC BETWEEN 80 AND 89'
      '          UNION'
      '          '
      
        '               SELECT IP.C_Intercon  , IP.C_Prova      , IP.C_Me' +
        'tge           , IP.Data_Valida  , IP.C_Prov      , IP.Data_FacPr' +
        'ov,'
      
        '                      IP.Data_FacCli , IP.Ambulancia   , IP.Avis' +
        '              , IP.Impres      , IP.Data_Trucada,'
      
        '                      IP.Hora        , IP.Data_Prevista, IP.Data' +
        '_Prova        , IP.Data_Resultat, IP.Observacions,'
      
        '                      IP.TeNotes     , IP.Dirigir_A    , IP.Impr' +
        'es2      , IP.Data_Preu   , IP.C_CentreFac ,'
      
        '                      IP.C_Client    , IP.C_Delegacio  , IP.Perc' +
        'entatgePacient, IP.Referencia   , IP.Preu        , IP.EstatFac  ' +
        '  ,'
      
        '                      IP.EstatFacProv, IP.C_EstatRappel, IP.Preu' +
        'Venta         , IP.IvaCompra    , IP.IvaVenta    , IP.AlbaraProv' +
        '  ,'
      
        '                      CC.N_CODI      , P.N_PROV        , I.C_HIS' +
        'TORIA         , F.NOMCOMPLET'
      '                 FROM INTERCONPROVAESP IP'
      
        '                 JOIN CODICAMPS        CC ON CC.TIPUSCODI = '#39'EST' +
        'ATRAPPEL'#39
      
        '                                         AND CC.C_CODI = IP.C_Es' +
        'tatRappel'
      
        '                 JOIN INTERCON         I  ON I.C_INTERCON = IP.C' +
        '_INTERCON'
      
        '            LEFT JOIN FILIACIO         F  ON I.C_HISTORIA = F.NU' +
        'M_HIST'
      
        '            LEFT JOIN PROVEIDORS       P  ON IP.C_PROV = P.C_PRO' +
        'V'
      
        '                 JOIN FACLIN          FL  ON FL.C_INTERCON = I.C' +
        '_INTERCON AND FL.C_PROVA = IP.C_PROVA AND FL.ORIGEN <> '#39'R'#39
      
        '                 JOIN FACCAP          FC  ON FC.C_FACTURA  = FL.' +
        'C_FACTURA AND FC.C_ESTATCOBRO = 10    AND FC.T_FACTURA <> '#39'R'#39
      '           WHERE IP.ESTATFAC BETWEEN 80 AND 89'
      '                 '
      '                 '
      
        '                 INTO :C_Intercon      , :C_Prova      , :C_Metg' +
        'e           , :Data_Valida  , :C_Prov      , :Data_FacProv,'
      
        '                      :Data_FacCli     , :Ambulancia   , :Avis  ' +
        '            , :Impres      , :Data_Trucada,'
      
        '                      :Hora            , :Data_Prevista, :Data_P' +
        'rova        , :Data_Resultat, :Observacions,'
      
        '                      :TeNotes         , :Dirigir_A    , :Impres' +
        '2      , :Data_Preu   , :C_CentreFac,'
      
        '                      :C_Client        , :C_Delegacio  , :Percen' +
        'tatgePacient, :Referencia   , :Preu        , :EstatFac,'
      
        '                      :EstatFacProv    , :C_EstatRappel, :PreuVe' +
        'nta         , :IvaCompra    , :IvaVenta    , :AlbaraProv,'
      
        '                      :DESCRIPCIO_ESTAT, :N_PROV       , :C_HIST' +
        'ORIA        , :NOMCOMPLET'
      '           DO BEGIN'
      ''
      '             SUSPEND;'
      '           END;'
      '        END;'
      ''
      '        IF (ESTADO = 1) THEN'
      '        BEGIN'
      
        '           FOR SELECT IP.C_Intercon  , IP.C_Prova      , IP.C_Me' +
        'tge           , IP.Data_Valida  , IP.C_Prov      , IP.Data_FacPr' +
        'ov,'
      
        '                      IP.Data_FacCli , IP.Ambulancia   , IP.Avis' +
        '              , IP.Impres      , IP.Data_Trucada,'
      
        '                      IP.Hora        , IP.Data_Prevista, IP.Data' +
        '_Prova        , IP.Data_Resultat, IP.Observacions,'
      
        '                      IP.TeNotes     , IP.Dirigir_A    , IP.Impr' +
        'es2      , IP.Data_Preu   , IP.C_CentreFac ,'
      
        '                      IP.C_Client    , IP.C_Delegacio  , IP.Perc' +
        'entatgePacient, IP.Referencia   , IP.Preu        , IP.EstatFac  ' +
        '  ,'
      
        '                      IP.EstatFacProv, IP.C_EstatRappel, IP.Preu' +
        'Venta         , IP.IvaCompra    , IP.IvaVenta    , IP.AlbaraProv' +
        '  ,'
      
        '                      CC.N_CODI      , P.N_PROV        , I.C_HIS' +
        'TORIA         , F.NOMCOMPLET'
      '                 FROM INTERCONPROVAESP IP'
      
        '                 JOIN CODICAMPS        CC ON CC.TIPUSCODI = '#39'EST' +
        'ATRAPPEL'#39
      
        '                                         AND CC.C_CODI = IP.C_Es' +
        'tatRappel'
      
        '                 JOIN INTERCON         I  ON I.C_INTERCON = IP.C' +
        '_INTERCON'
      
        '            LEFT JOIN FILIACIO         F  ON I.C_HISTORIA = F.NU' +
        'M_HIST'
      
        '            LEFT JOIN PROVEIDORS       P  ON IP.C_PROV = P.C_PRO' +
        'V'
      
        '                 JOIN FACLIN          FL  ON FL.C_INTERCON = I.C' +
        '_INTERCON AND FL.C_PROVA = IP.C_PROVA AND FL.ORIGEN <> '#39'R'#39
      
        '                 JOIN FACCAP          FC  ON FC.C_FACTURA = FL.C' +
        '_FACTURA  AND FC.C_ESTATCOBRO = 10 AND FC.T_FACTURA <> '#39'R'#39
      '           WHERE IP.ESTATFAC BETWEEN 80 AND 89'
      
        '                 INTO :C_Intercon      , :C_Prova      , :C_Metg' +
        'e           , :Data_Valida  , :C_Prov      , :Data_FacProv,'
      
        '                      :Data_FacCli     , :Ambulancia   , :Avis  ' +
        '            , :Impres      , :Data_Trucada,'
      
        '                      :Hora            , :Data_Prevista, :Data_P' +
        'rova        , :Data_Resultat, :Observacions,'
      
        '                      :TeNotes         , :Dirigir_A    , :Impres' +
        '2      , :Data_Preu   , :C_CentreFac,'
      
        '                      :C_Client        , :C_Delegacio  , :Percen' +
        'tatgePacient, :Referencia   , :Preu        , :EstatFac,'
      
        '                      :EstatFacProv    , :C_EstatRappel, :PreuVe' +
        'nta         , :IvaCompra    , :IvaVenta    , :AlbaraProv,'
      
        '                      :DESCRIPCIO_ESTAT, :N_PROV       , :C_HIST' +
        'ORIA        , :NOMCOMPLET'
      '           DO BEGIN'
      '             SUSPEND;'
      '           END;'
      '        END;'
      ''
      '        IF (ESTADO = 2) THEN'
      '        BEGIN'
      
        '           FOR SELECT IP.C_Intercon  , IP.C_Prova      , IP.C_Me' +
        'tge           , IP.Data_Valida  , IP.C_Prov      , IP.Data_FacPr' +
        'ov,'
      
        '                      IP.Data_FacCli , IP.Ambulancia   , IP.Avis' +
        '              , IP.Impres      , IP.Data_Trucada,'
      
        '                      IP.Hora        , IP.Data_Prevista, IP.Data' +
        '_Prova        , IP.Data_Resultat, IP.Observacions,'
      
        '                      IP.TeNotes     , IP.Dirigir_A    , IP.Impr' +
        'es2      , IP.Data_Preu   , IP.C_CentreFac ,'
      
        '                      IP.C_Client    , IP.C_Delegacio  , IP.Perc' +
        'entatgePacient, IP.Referencia   , IP.Preu        , IP.EstatFac  ' +
        '  ,'
      
        '                      IP.EstatFacProv, IP.C_EstatRappel, IP.Preu' +
        'Venta         , IP.IvaCompra    , IP.IvaVenta    , IP.AlbaraProv' +
        '  ,'
      
        '                      CC.N_CODI      , P.N_PROV        , I.C_HIS' +
        'TORIA         , F.NOMCOMPLET'
      '                 FROM INTERCONPROVAESP IP'
      
        '                 JOIN CODICAMPS        CC ON CC.TIPUSCODI = '#39'EST' +
        'ATRAPPEL'#39
      
        '                                         AND CC.C_CODI = IP.C_Es' +
        'tatRappel'
      
        '                 JOIN INTERCON         I  ON I.C_INTERCON = IP.C' +
        '_INTERCON'
      
        '            LEFT JOIN FILIACIO         F  ON I.C_HISTORIA = F.NU' +
        'M_HIST'
      
        '            LEFT JOIN PROVEIDORS       P  ON IP.C_PROV = P.C_PRO' +
        'V'
      '                 WHERE IP.C_ESTATRAPPEL BETWEEN 10 AND 19'
      '                   AND IP.ESTATFAC BETWEEN 80 AND 89'
      
        '                 INTO :C_Intercon      , :C_Prova      , :C_Metg' +
        'e           , :Data_Valida  , :C_Prov      , :Data_FacProv,'
      
        '                      :Data_FacCli     , :Ambulancia   , :Avis  ' +
        '            , :Impres      , :Data_Trucada,'
      
        '                      :Hora            , :Data_Prevista, :Data_P' +
        'rova        , :Data_Resultat, :Observacions,'
      
        '                      :TeNotes         , :Dirigir_A    , :Impres' +
        '2      , :Data_Preu   , :C_CentreFac,'
      
        '                      :C_Client        , :C_Delegacio  , :Percen' +
        'tatgePacient, :Referencia   , :Preu        , :EstatFac,'
      
        '                      :EstatFacProv    , :C_EstatRappel, :PreuVe' +
        'nta         , :IvaCompra    , :IvaVenta    , :AlbaraProv,'
      
        '                      :DESCRIPCIO_ESTAT, :N_PROV       , :C_HIST' +
        'ORIA        , :NOMCOMPLET'
      '           DO BEGIN'
      '             SUSPEND;'
      '           END;'
      '        END;'
      ''
      '        IF (ESTADO = 3) THEN'
      '        BEGIN'
      
        '           FOR SELECT IP.C_Intercon  , IP.C_Prova      , IP.C_Me' +
        'tge           , IP.Data_Valida  , IP.C_Prov      , IP.Data_FacPr' +
        'ov,'
      
        '                      IP.Data_FacCli , IP.Ambulancia   , IP.Avis' +
        '              , IP.Impres      , IP.Data_Trucada,'
      
        '                      IP.Hora        , IP.Data_Prevista, IP.Data' +
        '_Prova        , IP.Data_Resultat, IP.Observacions,'
      
        '                      IP.TeNotes     , IP.Dirigir_A    , IP.Impr' +
        'es2      , IP.Data_Preu   , IP.C_CentreFac ,'
      
        '                      IP.C_Client    , IP.C_Delegacio  , IP.Perc' +
        'entatgePacient, IP.Referencia   , IP.Preu        , IP.EstatFac  ' +
        '  ,'
      
        '                      IP.EstatFacProv, IP.C_EstatRappel, IP.Preu' +
        'Venta         , IP.IvaCompra    , IP.IvaVenta    , IP.AlbaraProv' +
        '  ,'
      
        '                      CC.N_CODI      , P.N_PROV        , I.C_HIS' +
        'TORIA         , F.NOMCOMPLET'
      '                 FROM INTERCONPROVAESP IP'
      
        '                 JOIN CODICAMPS        CC ON CC.TIPUSCODI = '#39'EST' +
        'ATRAPPEL'#39
      
        '                                         AND CC.C_CODI = IP.C_Es' +
        'tatRappel'
      
        '                 JOIN INTERCON         I  ON I.C_INTERCON = IP.C' +
        '_INTERCON'
      
        '            LEFT JOIN FILIACIO         F  ON I.C_HISTORIA = F.NU' +
        'M_HIST'
      
        '            LEFT JOIN PROVEIDORS       P  ON IP.C_PROV = P.C_PRO' +
        'V'
      '                 WHERE IP.C_ESTATRAPPEL BETWEEN 20 AND 29'
      '                   AND IP.ESTATFAC BETWEEN 80 AND 89'
      
        '                 INTO :C_Intercon      , :C_Prova      , :C_Metg' +
        'e           , :Data_Valida  , :C_Prov      , :Data_FacProv,'
      
        '                      :Data_FacCli     , :Ambulancia   , :Avis  ' +
        '            , :Impres      , :Data_Trucada,'
      
        '                      :Hora            , :Data_Prevista, :Data_P' +
        'rova        , :Data_Resultat, :Observacions,'
      
        '                      :TeNotes         , :Dirigir_A    , :Impres' +
        '2      , :Data_Preu   , :C_CentreFac,'
      
        '                      :C_Client        , :C_Delegacio  , :Percen' +
        'tatgePacient, :Referencia   , :Preu        , :EstatFac,'
      
        '                      :EstatFacProv    , :C_EstatRappel, :PreuVe' +
        'nta         , :IvaCompra    , :IvaVenta    , :AlbaraProv,'
      
        '                      :DESCRIPCIO_ESTAT, :N_PROV       , :C_HIST' +
        'ORIA        , :NOMCOMPLET'
      '           DO BEGIN'
      '             SUSPEND;'
      '           END;'
      '        END;'
      ''
      '        IF (ESTADO = 4) THEN'
      '        BEGIN'
      
        '           FOR SELECT IP.C_Intercon  , IP.C_Prova      , IP.C_Me' +
        'tge           , IP.Data_Valida  , IP.C_Prov      , IP.Data_FacPr' +
        'ov,'
      
        '                      IP.Data_FacCli , IP.Ambulancia   , IP.Avis' +
        '              , IP.Impres      , IP.Data_Trucada,'
      
        '                      IP.Hora        , IP.Data_Prevista, IP.Data' +
        '_Prova        , IP.Data_Resultat, IP.Observacions,'
      
        '                      IP.TeNotes     , IP.Dirigir_A    , IP.Impr' +
        'es2      , IP.Data_Preu   , IP.C_CentreFac ,'
      
        '                      IP.C_Client    , IP.C_Delegacio  , IP.Perc' +
        'entatgePacient, IP.Referencia   , IP.Preu        , IP.EstatFac  ' +
        '  ,'
      
        '                      IP.EstatFacProv, IP.C_EstatRappel, IP.Preu' +
        'Venta         , IP.IvaCompra    , IP.IvaVenta    , IP.AlbaraProv' +
        '  ,'
      
        '                      CC.N_CODI      , P.N_PROV        , I.C_HIS' +
        'TORIA         , F.NOMCOMPLET'
      '                 FROM INTERCONPROVAESP IP'
      
        '                 JOIN CODICAMPS        CC ON CC.TIPUSCODI = '#39'EST' +
        'ATRAPPEL'#39
      
        '                                         AND CC.C_CODI = IP.C_Es' +
        'tatRappel'
      
        '                 JOIN INTERCON         I  ON I.C_INTERCON = IP.C' +
        '_INTERCON'
      
        '            LEFT JOIN FILIACIO         F  ON I.C_HISTORIA = F.NU' +
        'M_HIST'
      
        '            LEFT JOIN PROVEIDORS       P  ON IP.C_PROV = P.C_PRO' +
        'V'
      '                 WHERE IP.C_ESTATRAPPEL BETWEEN 80 AND 89'
      '                   AND IP.ESTATFAC BETWEEN 80 AND 89'
      
        '                 INTO :C_Intercon      , :C_Prova      , :C_Metg' +
        'e           , :Data_Valida  , :C_Prov      , :Data_FacProv,'
      
        '                      :Data_FacCli     , :Ambulancia   , :Avis  ' +
        '            , :Impres      , :Data_Trucada,'
      
        '                      :Hora            , :Data_Prevista, :Data_P' +
        'rova        , :Data_Resultat, :Observacions,'
      
        '                      :TeNotes         , :Dirigir_A    , :Impres' +
        '2      , :Data_Preu   , :C_CentreFac,'
      
        '                      :C_Client        , :C_Delegacio  , :Percen' +
        'tatgePacient, :Referencia   , :Preu        , :EstatFac,'
      
        '                      :EstatFacProv    , :C_EstatRappel, :PreuVe' +
        'nta         , :IvaCompra    , :IvaVenta    , :AlbaraProv,'
      
        '                      :DESCRIPCIO_ESTAT, :N_PROV       , :C_HIST' +
        'ORIA        , :NOMCOMPLET'
      '           DO BEGIN'
      '             SUSPEND;'
      '           END;'
      '        END;'
      ''
      'END'
      '')
    Select.Strings = (
      'select * from'
      'P_INTERCON_RAPPELSPROVPE(1)'
      '[FILTRO]'
      '[ORDEN]')
    Dic1 = wDataIntercon.InterCon
    Dic1Name = 'InterCon'
    Abierta = False
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
    ModiFecha = 37735.7772929282
    Left = 282
    Top = 224
  end
  object CapLiqui: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CapLiqui'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS'
      '('
      '  GRUPLIQUI     DATE'
      ')'
      'AS'
      'BEGIN'
      ''
      '/* ------------>'
      ' ORTESIS'
      ' <--------------*/'
      '      FOR SELECT IO2.GRUPLIQUI FROM INTERCONORTESISLIN IO2'
      '      WHERE NOT IO2.GRUPLIQUI  IS NULL'
      '        AND IO2.C_ESTATRAPPEL BETWEEN 20 AND 29'
      'UNION'
      '/* ------------>'
      '   ELEMENTS FACTURABLES'
      ' <--------------*/'
      '      SELECT EF.GRUPLIQUI FROM ELEMENTSFAC EF'
      '      WHERE NOT EF.GRUPLIQUI IS NULL'
      '        AND EF.C_ESTATRAPPEL BETWEEN 20 AND 29'
      'UNION'
      '/* ------------>'
      ' PROVES ESPECIALS'
      ' <--------------*/'
      '      SELECT IP.GRUPLIQUI FROM INTERCONPROVAESP IP'
      '      WHERE NOT IP.GRUPLIQUI IS NULL'
      '        AND IP.C_ESTATRAPPEL BETWEEN 20 AND 29'
      '        '
      '      GROUP BY GRUPLIQUI'
      '      ORDER BY 1'
      '      INTO :GRUPLIQUI'
      '      DO BEGIN'
      '         SUSPEND;'
      '      END;'
      'END'
      ''
      ''
      ''
      
        '/*   SELECT IO2.GRUPLIQUI, IO2.C_PROV, P.N_PROV, IO2.C_ESTATRAPP' +
        'EL, CC.N_CODI, IO2.C_Intercon, IO2.C_Ortesis, IO2.C_OrtesisLin,'
      
        '            IO2.N_Ortesis, IO2.Albara AS FACTURAPROVEIDOR , IO2.' +
        'Data_FacProv , IO2.Data_FacCli, IO2.C_CentreFac, CF.N_CentreFac,'
      
        '            IO2.C_Client    , C.N_Client    , IO2.C_Delegacio, D' +
        '.N_Delegacio    , IO2.Referencia , IO2.IvaVenta   , IO2.PreuVent' +
        'a ,'
      '            IO2.IvaCompra   , IO2.PreuCompra'
      '     FROM  ((((INTERCONORTESISLIN IO2'
      '           JOIN PROVEIDORS  P  ON IO2.C_PROV     = P.C_PROV)'
      '           JOIN CODICAMPS   CC ON CC.TIPUSCODI   = "ESTATRAPPEL"'
      
        '                              AND CC.C_CODI      = IO2.C_ESTATRA' +
        'PPEL)'
      
        '      LEFT JOIN CENTREFAC   CF ON CF.C_CENTREFAC = IO2.C_CENTREF' +
        'AC)'
      
        '      LEFT JOIN CLIENTS     C  ON C.C_CENTREFAC  = IO2.C_CENTREF' +
        'AC'
      '                              AND C.C_CLIENT     = IO2.C_CLIENT)'
      
        '      LEFT JOIN DELEGACIONS D  ON D.C_CENTREFAC  = IO2.C_CENTREF' +
        'AC'
      '                              AND D.C_CLIENT     = IO2.C_CLIENT'
      
        '                              AND D.C_DELEGACIO  = IO2.C_DELEGAC' +
        'IO'
      '      WHERE NOT IO2.GRUPLIQUI IS NULL'
      '        AND IO2.GRUPLIQUI = "TODAY"'
      '        AND IO2.C_ESTATRAPPEL BETWEEN 20 AND 29'
      ''
      'UNION'
      ''
      
        '      SELECT EF.GRUPLIQUI, EF.C_PROV, P.N_PROV, EF.C_ESTATRAPPEL' +
        ', CC.N_CODI, (CAST (NULL AS INTEGER)) AS C_INTERCON,'
      
        '      (CAST (NULL AS VARCHAR(5))) AS C_ORTESIS, (CAST (NULL AS I' +
        'NTEGER)) AS C_ORTESISLIN, (CAST (NULL AS VARCHAR(250))) AS N_ORT' +
        'ESIS,                  EF.FACTURAPROVEIDOR, (CAST (NULL AS DATE)' +
        ') AS DATA_FACPROV, (CAST (NULL AS DATE)) AS DATA_FACCLI, EF.C_CE' +
        'NTREFAC, CF.N_CENTREFAC,'
      
        '      EF.C_CLIENT, C.N_CLIENT, EF.C_DELEGACIO, D.N_DELEGACIO, EF' +
        '.REFERENCIA, EF.IVA AS IVAVENTA, EF.PREU AS PREUVENTA,'
      '      EF.IVACOMPRA, EF.PREUCOMPRA'
      '      FROM ((((ELEMENTSFAC EF'
      '           JOIN PROVEIDORS  P  ON EF.C_PROV     = P.C_PROV)'
      '           JOIN CODICAMPS   CC ON CC.TIPUSCODI   = "ESTATRAPPEL"'
      
        '                              AND CC.C_CODI      = EF.C_ESTATRAP' +
        'PEL)'
      
        '      LEFT JOIN CENTREFAC   CF ON CF.C_CENTREFAC = EF.C_CENTREFA' +
        'C)'
      
        '      LEFT JOIN CLIENTS     C  ON C.C_CENTREFAC  = EF.C_CENTREFA' +
        'C'
      '                              AND C.C_CLIENT     = EF.C_CLIENT)'
      
        '      LEFT JOIN DELEGACIONS D  ON D.C_CENTREFAC  = EF.C_CENTREFA' +
        'C'
      '                              AND D.C_CLIENT     = EF.C_CLIENT'
      
        '                              AND D.C_DELEGACIO  = EF.C_DELEGACI' +
        'O'
      '      WHERE NOT EF.GRUPLIQUI IS NULL'
      '        AND EF.GRUPLIQUI = "TODAY"'
      '        AND EF.C_ESTATRAPPEL BETWEEN 20 AND 29'
      'UNION'
      
        '      SELECT IP.GRUPLIQUI, IP.C_PROV, P.N_PROV, IP.C_ESTATRAPPEL' +
        ', CC.N_CODI, IP.C_Intercon,'
      
        '             (CAST (NULL AS VARCHAR(5  ))) AS C_ORTESIS, (CAST (' +
        'NULL AS INTEGER)) AS C_ORTESISLIN,'
      
        '             (CAST (NULL AS VARCHAR(250))) AS N_ORTESIS, (CAST (' +
        'IP.AlbarapROV AS VARCHAR(40))) AS FACTURAPROVEIDOR, IP.Data_FacP' +
        'rov , IP.Data_FacCli,'
      
        '             IP.C_CentreFac, CF.N_CentreFac, IP.C_Client, C.N_Cl' +
        'ient, IP.C_Delegacio, D.N_Delegacio, IP.Referencia , IP.IvaVenta' +
        ','
      '             IP.PreuVenta, IP.IvaCompra, IP.Preu AS PreuCompra'
      '      FROM ((((INTERCONPROVAESP IP'
      '           JOIN PROVEIDORS  P  ON IP.C_PROV     = P.C_PROV)'
      '           JOIN CODICAMPS   CC ON CC.TIPUSCODI   = "ESTATRAPPEL"'
      
        '                              AND CC.C_CODI      = IP.C_ESTATRAP' +
        'PEL)'
      
        '      LEFT JOIN CENTREFAC   CF ON CF.C_CENTREFAC = IP.C_CENTREFA' +
        'C)'
      
        '      LEFT JOIN CLIENTS     C  ON C.C_CENTREFAC  = IP.C_CENTREFA' +
        'C'
      '                              AND C.C_CLIENT     = IP.C_CLIENT)'
      
        '      LEFT JOIN DELEGACIONS D  ON D.C_CENTREFAC  = IP.C_CENTREFA' +
        'C'
      '                              AND D.C_CLIENT     = IP.C_CLIENT'
      
        '                              AND D.C_DELEGACIO  = IP.C_DELEGACI' +
        'O'
      '      WHERE NOT IP.GRUPLIQUI IS NULL'
      '        AND IP.GRUPLIQUI = "TODAY"'
      '        AND IP.C_ESTATRAPPEL BETWEEN 20 AND 29'
      ''
      '*/')
    Select.Strings = (
      'SELECT * FROM P_FACCAP_CAPLIQUI')
    Dic1 = wDataFactu.FacCap
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 33
    Top = 171
  end
  object Liquidacions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Liquidacions'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_GRUPLIQUI DATE'
      ')'
      'RETURNS'
      '('
      '  GRUPLIQUI     DATE,'
      '  C_PROV        CHAR   (10),'
      '  N_PROV        VARCHAR(40),'
      '  C_ESTATRAPPEL VARCHAR(15),'
      '  N_ESTATRAPPEL VARCHAR(40),'
      '  C_Intercon    INTEGER,'
      '  C_Ortesis     VARCHAR(5),'
      '  C_OrtesisLin  INTEGER,'
      '  N_Ortesis     VARCHAR(250),'
      '  Albara        VARCHAR(40),'
      '  Data_FacProv  DATE,'
      '  Data_FacCli   DATE,'
      '  C_CentreFac   VARCHAR(2),'
      '  N_CentreFac   VARCHAR(20),'
      '  C_Client      VARCHAR(3),'
      '  N_Client      VARCHAR(40),'
      '  C_Delegacio   VARCHAR(4),'
      '  N_Delegacio   VARCHAR(50),'
      '  Referencia    VARCHAR(40),'
      '  IvaVenta      NUMERIC(15,3),'
      '  PreuVenta     NUMERIC(15,3),'
      '  IvaCompra     NUMERIC(15,3),'
      '  PreuCompra    NUMERIC(15,3),'
      '  Element       INTEGER,'
      '  ElementFac    INTEGER,'
      '  Prova         CHAR(5)'
      ')'
      'AS'
      'BEGIN'
      ''
      '/* ------------>'
      ' ORTESIS'
      ' <--------------*/'
      
        '      FOR SELECT IO2.GRUPLIQUI   , IO2.C_PROV    , P.N_PROV     ' +
        '  , IO2.C_ESTATRAPPEL, CC.N_CODI      , IO2.C_Intercon , IO2.C_O' +
        'rtesis ,'
      
        '             IO2.C_OrtesisLin, IO2.N_Ortesis , IO2.Albara     , ' +
        'IO2.Data_FacProv , IO2.Data_FacCli, IO2.C_CentreFac, CF.N_Centre' +
        'Fac,'
      
        '             IO2.C_Client    , C.N_Client    , IO2.C_Delegacio, ' +
        'D.N_Delegacio    , IO2.Referencia , IO2.IvaVenta   , IO2.PreuVen' +
        'ta ,'
      
        '             IO2.IvaCompra   , IO2.PreuCompra, (CAST (NULL AS IN' +
        'TEGER)) AS C_ELEMENT, (CAST (NULL AS INTEGER)) AS C_ELEMENTFAC, ' +
        '(CAST (NULL AS CHAR(5))) AS C_PROVA'
      '      FROM ((((INTERCONORTESISLIN IO2'
      '           JOIN PROVEIDORS    P  ON IO2.C_PROV     = P.C_PROV)'
      
        '           JOIN CODICAMPSALFA CC ON CC.TIPUSCODI   = "ESTATRAPPE' +
        'L"'
      
        '                                AND CC.C_CODI      = IO2.C_ESTAT' +
        'RAPPEL)'
      
        '      LEFT JOIN CENTREFAC     CF ON CF.C_CENTREFAC = IO2.C_CENTR' +
        'EFAC)'
      
        '      LEFT JOIN CLIENTS       C  ON C.C_CENTREFAC  = IO2.C_CENTR' +
        'EFAC'
      
        '                                AND C.C_CLIENT     = IO2.C_CLIEN' +
        'T)'
      
        '      LEFT JOIN DELEGACIONS   D  ON D.C_CENTREFAC  = IO2.C_CENTR' +
        'EFAC'
      
        '                                AND D.C_CLIENT     = IO2.C_CLIEN' +
        'T'
      
        '                                AND D.C_DELEGACIO  = IO2.C_DELEG' +
        'ACIO'
      '      WHERE NOT IO2.GRUPLIQUI IS NULL'
      '        AND IO2.GRUPLIQUI = :E_GRUPLIQUI'
      '        AND IO2.C_ESTATRAPPEL BETWEEN 20 AND 29'
      ''
      ''
      '      UNION'
      '      '
      '/* ------------>'
      '   ELEMENTS FACTURABLES'
      ' <--------------*/'
      ''
      ''
      
        '      SELECT EF.GRUPLIQUI, EF.C_PROV, P.N_PROV, EF.C_ESTATRAPPEL' +
        ', CC.N_CODI, (CAST (NULL AS INTEGER)) AS C_INTERCON,'
      
        '             (CAST (NULL AS VARCHAR(5  ))) AS C_ORTESIS, (CAST (' +
        'NULL AS INTEGER)) AS C_ORTESISLIN,'
      
        '             (CAST (NULL AS VARCHAR(250))) AS N_ORTESIS, EF.FACT' +
        'URAPROVEIDOR, (CAST (NULL AS DATE)) AS DATA_FACPROV,'
      
        '             (CAST (NULL AS DATE)) AS DATA_FACCLI, EF.C_CENTREFA' +
        'C, CF.N_CENTREFAC, EF.C_CLIENT, C.N_CLIENT, EF.C_DELEGACIO,'
      
        '             D.N_DELEGACIO, EF.REFERENCIA, EF.IVA AS IVAVENTA, E' +
        'F.PREU AS PREUVENTA,  EF.IVACOMPRA, EF.PREUCOMPRA,'
      
        '             EF.C_ELEMENT, EF.C_ELEMENTFAC, (CAST (NULL AS CHAR(' +
        '5))) AS C_PROVA'
      '      FROM ((((ELEMENTSFAC EF'
      '           JOIN PROVEIDORS      P  ON EF.C_PROV     = P.C_PROV)'
      
        '           JOIN CODICAMPSALFA   CC ON CC.TIPUSCODI   = "ESTATRAP' +
        'PEL"'
      
        '                                  AND CC.C_CODI      = EF.C_ESTA' +
        'TRAPPEL)'
      
        '      LEFT JOIN CENTREFAC       CF ON CF.C_CENTREFAC = EF.C_CENT' +
        'REFAC)'
      
        '      LEFT JOIN CLIENTS         C  ON C.C_CENTREFAC  = EF.C_CENT' +
        'REFAC'
      
        '                                  AND C.C_CLIENT     = EF.C_CLIE' +
        'NT)'
      
        '      LEFT JOIN DELEGACIONS     D  ON D.C_CENTREFAC  = EF.C_CENT' +
        'REFAC'
      
        '                                  AND D.C_CLIENT     = EF.C_CLIE' +
        'NT'
      
        '                                  AND D.C_DELEGACIO  = EF.C_DELE' +
        'GACIO'
      '      WHERE NOT EF.GRUPLIQUI IS NULL'
      '        AND EF.GRUPLIQUI = "TODAY"'
      '        AND EF.C_ESTATRAPPEL BETWEEN 20 AND 29'
      ''
      '      '
      'UNION'
      ''
      '/* ------------>'
      ' PROVES ESPECIALS'
      ' <--------------*/'
      ''
      
        '      SELECT IP.GRUPLIQUI, IP.C_PROV, P.N_PROV, IP.C_ESTATRAPPEL' +
        ', CC.N_CODI, IP.C_Intercon,'
      
        '             (CAST (NULL AS VARCHAR(5  ))) AS C_ORTESIS, (CAST (' +
        'NULL AS INTEGER)) AS C_ORTESISLIN,'
      
        '             (CAST (NULL AS VARCHAR(250))) AS N_ORTESIS, (CAST (' +
        'IP.AlbarapROV AS VARCHAR(40))) AS FACTURAPROVEIDOR, IP.Data_FacP' +
        'rov , IP.Data_FacCli,'
      
        '             IP.C_CentreFac, CF.N_CentreFac, IP.C_Client, C.N_Cl' +
        'ient, IP.C_Delegacio, D.N_Delegacio, IP.Referencia , IP.IvaVenta' +
        ','
      
        '             IP.PreuVenta, IP.IvaCompra, IP.Preu AS PreuCompra, ' +
        '(CAST (NULL AS INTEGER)) AS C_ELEMENT, (CAST (NULL AS INTEGER)) ' +
        'AS C_ELEMENTFAC, IP.C_PROVA'
      '      FROM ((((INTERCONPROVAESP IP'
      '           JOIN PROVEIDORS       P ON IP.C_PROV     = P.C_PROV)'
      
        '           JOIN CODICAMPSALFA   CC ON CC.TIPUSCODI   = "ESTATRAP' +
        'PEL"'
      
        '                                  AND CC.C_CODI      = IP.C_ESTA' +
        'TRAPPEL)'
      
        '      LEFT JOIN CENTREFAC       CF ON CF.C_CENTREFAC = IP.C_CENT' +
        'REFAC)'
      
        '      LEFT JOIN CLIENTS          C ON C.C_CENTREFAC  = IP.C_CENT' +
        'REFAC'
      
        '                                  AND C.C_CLIENT     = IP.C_CLIE' +
        'NT)'
      
        '      LEFT JOIN DELEGACIONS      D ON D.C_CENTREFAC  = IP.C_CENT' +
        'REFAC'
      
        '                                  AND D.C_CLIENT     = IP.C_CLIE' +
        'NT'
      
        '                                  AND D.C_DELEGACIO  = IP.C_DELE' +
        'GACIO'
      '      WHERE NOT IP.GRUPLIQUI IS NULL'
      '        AND IP.GRUPLIQUI = :E_GRUPLIQUI'
      '        AND IP.C_ESTATRAPPEL BETWEEN 20 AND 29'
      ''
      '      ORDER BY 1 , 2'
      
        '      INTO :GRUPLIQUI    , :C_PROV       , :N_PROV       , :C_ES' +
        'TATRAPPEL, :N_ESTATRAPPEL, :C_Intercon   , :C_Ortesis    ,'
      
        '           :C_OrtesisLin , :N_Ortesis    , :Albara       , :Data' +
        '_FacProv , :Data_FacCli  , :C_CentreFac  , :N_CentreFac  ,'
      
        '           :C_Client     , :N_Client     , :C_Delegacio  , :N_De' +
        'legacio  , :Referencia   , :IvaVenta     , :PreuVenta    ,'
      
        '           :IvaCompra    , :PreuCompra   , :Element      , :Elem' +
        'entFac   , :Prova'
      '      DO BEGIN'
      ''
      '         SUSPEND;'
      '      END;'
      'END'
      ''
      ''
      ''
      
        '/*   SELECT IO2.GRUPLIQUI, IO2.C_PROV, P.N_PROV, IO2.C_ESTATRAPP' +
        'EL, CC.N_CODI, IO2.C_Intercon, IO2.C_Ortesis, IO2.C_OrtesisLin,'
      
        '            IO2.N_Ortesis, IO2.Albara AS FACTURAPROVEIDOR , IO2.' +
        'Data_FacProv , IO2.Data_FacCli, IO2.C_CentreFac, CF.N_CentreFac,'
      
        '            IO2.C_Client    , C.N_Client    , IO2.C_Delegacio, D' +
        '.N_Delegacio    , IO2.Referencia , IO2.IvaVenta   , IO2.PreuVent' +
        'a ,'
      '            IO2.IvaCompra   , IO2.PreuCompra'
      '     FROM  ((((INTERCONORTESISLIN IO2'
      '           JOIN PROVEIDORS  P  ON IO2.C_PROV     = P.C_PROV)'
      '           JOIN CODICAMPS   CC ON CC.TIPUSCODI   = "ESTATRAPPEL"'
      
        '                              AND CC.C_CODI      = IO2.C_ESTATRA' +
        'PPEL)'
      
        '      LEFT JOIN CENTREFAC   CF ON CF.C_CENTREFAC = IO2.C_CENTREF' +
        'AC)'
      
        '      LEFT JOIN CLIENTS     C  ON C.C_CENTREFAC  = IO2.C_CENTREF' +
        'AC'
      '                              AND C.C_CLIENT     = IO2.C_CLIENT)'
      
        '      LEFT JOIN DELEGACIONS D  ON D.C_CENTREFAC  = IO2.C_CENTREF' +
        'AC'
      '                              AND D.C_CLIENT     = IO2.C_CLIENT'
      
        '                              AND D.C_DELEGACIO  = IO2.C_DELEGAC' +
        'IO'
      '      WHERE NOT IO2.GRUPLIQUI IS NULL'
      '        AND IO2.GRUPLIQUI = "TODAY"'
      '        AND IO2.C_ESTATRAPPEL BETWEEN 20 AND 29'
      ''
      'UNION'
      ''
      
        '      SELECT EF.GRUPLIQUI, EF.C_PROV, P.N_PROV, EF.C_ESTATRAPPEL' +
        ', CC.N_CODI, (CAST (NULL AS INTEGER)) AS C_INTERCON,'
      
        '      (CAST (NULL AS VARCHAR(5))) AS C_ORTESIS, (CAST (NULL AS I' +
        'NTEGER)) AS C_ORTESISLIN, (CAST (NULL AS VARCHAR(250))) AS N_ORT' +
        'ESIS,                  EF.FACTURAPROVEIDOR, (CAST (NULL AS DATE)' +
        ') AS DATA_FACPROV, (CAST (NULL AS DATE)) AS DATA_FACCLI, EF.C_CE' +
        'NTREFAC, CF.N_CENTREFAC,'
      
        '      EF.C_CLIENT, C.N_CLIENT, EF.C_DELEGACIO, D.N_DELEGACIO, EF' +
        '.REFERENCIA, EF.IVA AS IVAVENTA, EF.PREU AS PREUVENTA,'
      '      EF.IVACOMPRA, EF.PREUCOMPRA'
      '      FROM ((((ELEMENTSFAC EF'
      '           JOIN PROVEIDORS  P  ON EF.C_PROV     = P.C_PROV)'
      '           JOIN CODICAMPS   CC ON CC.TIPUSCODI   = "ESTATRAPPEL"'
      
        '                              AND CC.C_CODI      = EF.C_ESTATRAP' +
        'PEL)'
      
        '      LEFT JOIN CENTREFAC   CF ON CF.C_CENTREFAC = EF.C_CENTREFA' +
        'C)'
      
        '      LEFT JOIN CLIENTS     C  ON C.C_CENTREFAC  = EF.C_CENTREFA' +
        'C'
      '                              AND C.C_CLIENT     = EF.C_CLIENT)'
      
        '      LEFT JOIN DELEGACIONS D  ON D.C_CENTREFAC  = EF.C_CENTREFA' +
        'C'
      '                              AND D.C_CLIENT     = EF.C_CLIENT'
      
        '                              AND D.C_DELEGACIO  = EF.C_DELEGACI' +
        'O'
      '      WHERE NOT EF.GRUPLIQUI IS NULL'
      '        AND EF.GRUPLIQUI = "TODAY"'
      '        AND EF.C_ESTATRAPPEL BETWEEN 20 AND 29'
      'UNION'
      
        '      SELECT IP.GRUPLIQUI, IP.C_PROV, P.N_PROV, IP.C_ESTATRAPPEL' +
        ', CC.N_CODI, IP.C_Intercon,'
      
        '             (CAST (NULL AS VARCHAR(5  ))) AS C_ORTESIS, (CAST (' +
        'NULL AS INTEGER)) AS C_ORTESISLIN,'
      
        '             (CAST (NULL AS VARCHAR(250))) AS N_ORTESIS, (CAST (' +
        'IP.AlbarapROV AS VARCHAR(40))) AS FACTURAPROVEIDOR, IP.Data_FacP' +
        'rov , IP.Data_FacCli,'
      
        '             IP.C_CentreFac, CF.N_CentreFac, IP.C_Client, C.N_Cl' +
        'ient, IP.C_Delegacio, D.N_Delegacio, IP.Referencia , IP.IvaVenta' +
        ','
      '             IP.PreuVenta, IP.IvaCompra, IP.Preu AS PreuCompra'
      '      FROM ((((INTERCONPROVAESP IP'
      '           JOIN PROVEIDORS  P  ON IP.C_PROV     = P.C_PROV)'
      '           JOIN CODICAMPS   CC ON CC.TIPUSCODI   = "ESTATRAPPEL"'
      
        '                              AND CC.C_CODI      = IP.C_ESTATRAP' +
        'PEL)'
      
        '      LEFT JOIN CENTREFAC   CF ON CF.C_CENTREFAC = IP.C_CENTREFA' +
        'C)'
      
        '      LEFT JOIN CLIENTS     C  ON C.C_CENTREFAC  = IP.C_CENTREFA' +
        'C'
      '                              AND C.C_CLIENT     = IP.C_CLIENT)'
      
        '      LEFT JOIN DELEGACIONS D  ON D.C_CENTREFAC  = IP.C_CENTREFA' +
        'C'
      '                              AND D.C_CLIENT     = IP.C_CLIENT'
      
        '                              AND D.C_DELEGACIO  = IP.C_DELEGACI' +
        'O'
      '      WHERE NOT IP.GRUPLIQUI IS NULL'
      '        AND IP.GRUPLIQUI = "TODAY"'
      '        AND IP.C_ESTATRAPPEL BETWEEN 20 AND 29'
      ''
      '*/')
    Select.Strings = (
      'SELECT * FROM P_FACCAP_LIQUIDACIONS("TODAY")')
    Dic1 = wDataFactu.FacCap
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 121
    Top = 171
  end
  object PrintLiqui: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PrintLiqui'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_GRUPLIQUI DATE,'
      '  EC_PROV     CHAR(10)'
      ')'
      'RETURNS'
      '('
      ''
      '  GRUPLIQUI        DATE,'
      '  C_Intercon       INTEGER,'
      '  C_Ortesis        VARCHAR(5),'
      '  Albara           VARCHAR(40),'
      '  C_PROV           CHAR   (10),'
      '  C_OrtesisLin     INTEGER,'
      '  N_PROV           VARCHAR(40),'
      '  DIRECCIO         VARCHAR(40),'
      '  CPOSTAL          VARCHAR(5),'
      '  POBLACIO         VARCHAR(20),'
      '  NETO             NUMERIC(15,3),'
      '  TOTAL            NUMERIC(15,3),'
      '  C_FACTURA        INTEGER,'
      '  C_LINIAFAC       INTEGER,'
      '  ORIGEN           VARCHAR(15),'
      '  C_FACTURARAPPEL  INTEGER,'
      '  TOTAL_RAPPEL     NUMERIC(15,3),'
      '  SALDO_A_SU_FAVOR NUMERIC(15,3),'
      '  N_FACTURARAPPEL  VARCHAR(40),'
      '  NOMCOMPLET       VARCHAR(80),'
      '  Element          INTEGER,'
      '  ElementFac       INTEGER,'
      '  Prova            CHAR(5)'
      ')'
      'AS'
      'BEGIN'
      ''
      '/*------->'
      ' ORTESIS'
      '<-------*/'
      ''
      
        '     FOR SELECT IOL.GRUPLIQUI, IOL.C_INTERCON, IOL.C_ORTESIS, IO' +
        'L.ALBARA, IOL.C_PROV, IOL.C_ORTESISLIN,'
      '                P.N_PROV, P.DIRECCIO, P.CPOSTAL, P.POBLACIO,'
      
        '                FL.NETO, FC.TOTAL, FL.C_FACTURA, FL.C_LINIAFAC, ' +
        'FL.ORIGEN, FC.C_FACTURARAPPEL, FC2.TOTAL AS TOTAL_RAPPEL,'
      
        '                F_NumericNull(FC.TOTAL - FC2.TOTAL, 0) AS SALDO_' +
        'A_SU_FAVOR ,'
      
        '                FC2.N_FACTURA AS N_FACTURARAPPEL, F.NOMCOMPLET, ' +
        '(CAST (NULL AS INTEGER)) AS C_ELEMENT,'
      
        '                (CAST (NULL AS INTEGER)) AS C_ELEMENTFAC, (CAST ' +
        '(NULL AS CHAR(5))) AS C_PROVA'
      '         FROM ((((INTERCONORTESISLIN  IOL'
      
        '             LEFT JOIN PROVEIDORS P  ON P.C_PROV        = IOL.C_' +
        'PROV)'
      
        '             LEFT JOIN FACLIN     FL ON FL.C_ORTESIS    = IOL.C_' +
        'ORTESIS'
      
        '                                    AND FL.C_ORTESISLIN = IOL.C_' +
        'ORTESISLIN'
      
        '                                    AND FL.C_INTERCON   = IOL.C_' +
        'INTERCON)'
      
        '             LEFT JOIN FACCAP     FC ON FL.C_FACTURA    = FC.C_F' +
        'ACTURA)'
      
        '             LEFT JOIN FACCAP    FC2 ON FC2.C_FACTURA   = FC.C_F' +
        'ACTURARAPPEL)'
      
        '                  JOIN FILIACIO    F ON F.NUM_HIST      = FL.C_H' +
        'ISTORIA'
      '         WHERE IOL.C_ESTATRAPPEL BETWEEN 20 AND 29'
      '           AND IOL.C_PROV = :EC_PROV'
      
        '           AND ((:E_GRUPLIQUI IS NULL) OR (IOL.GRUPLIQUI = :E_GR' +
        'UPLIQUI))'
      ''
      '     UNION'
      '     '
      '/*-------------------->'
      '   ELEMENTS FACTURABLES'
      '<--------------------*/'
      ''
      
        '         SELECT EF.GRUPLIQUI, (CAST (NULL AS INTEGER)) AS C_INTE' +
        'RCON, (CAST (NULL AS VARCHAR(5  ))) AS C_ORTESIS,'
      
        '                EF.FACTURAPROVEIDOR, EF.C_PROV, (CAST (NULL AS I' +
        'NTEGER)) AS C_ORTESISLIN,'
      '                P.N_PROV, P.DIRECCIO, P.CPOSTAL, P.POBLACIO,'
      
        '                FL.NETO, FC.TOTAL, FL.C_FACTURA, FL.C_LINIAFAC, ' +
        'FL.ORIGEN, FC.C_FACTURARAPPEL, FC2.TOTAL AS TOTAL_RAPPEL,'
      
        '                F_NumericNull(FC.TOTAL - FC2.TOTAL, 0) AS SALDO_' +
        'A_SU_FAVOR ,'
      
        '                FC2.N_FACTURA AS N_FACTURARAPPEL, F.NOMCOMPLET, ' +
        'EF.C_ELEMENT, EF.C_ELEMENTFAC, (CAST (NULL AS CHAR(5))) AS C_PRO' +
        'VA'
      '         FROM ((((ELEMENTSFAC EF'
      
        '             LEFT JOIN PROVEIDORS P  ON P.C_PROV      = EF.C_PRO' +
        'V)'
      
        '             LEFT JOIN FACLIN     FL ON FL.C_ELEMENT  = EF.C_ELE' +
        'MENT)'
      
        '             LEFT JOIN FACCAP     FC ON FL.C_FACTURA  = FC.C_FAC' +
        'TURA)'
      
        '             LEFT JOIN FACCAP    FC2 ON FC2.C_FACTURA = FC.C_FAC' +
        'TURARAPPEL)'
      
        '                  JOIN FILIACIO    F ON F.NUM_HIST    = FL.C_HIS' +
        'TORIA'
      '         WHERE (EF.C_ESTATRAPPEL BETWEEN 20 AND 29)'
      '           AND EF.C_PROV = :EC_PROV'
      
        '           AND ((:E_GRUPLIQUI IS NULL) OR (EF.GRUPLIQUI = :E_GRU' +
        'PLIQUI))'
      ''
      '     UNION'
      ''
      '/*-------------->'
      ' PROVES ESPECIALS'
      '<--------------*/'
      ''
      
        '         SELECT IP.GRUPLIQUI, IP.C_INTERCON, (CAST (NULL AS VARC' +
        'HAR(5  ))) AS C_ORTESIS,'
      
        '                (CAST (IP.AlbarapROV AS VARCHAR(40))) AS FACTURA' +
        'PROVEIDOR, IP.C_PROV, (CAST (NULL AS INTEGER)) AS C_ORTESISLIN,'
      '                P.N_PROV, P.DIRECCIO, P.CPOSTAL, P.POBLACIO,'
      
        '                FL.NETO, FC.TOTAL, FL.C_FACTURA, FL.C_LINIAFAC, ' +
        'FL.ORIGEN, FC.C_FACTURARAPPEL, FC2.TOTAL AS TOTAL_RAPPEL,'
      
        '                F_NumericNull(FC.TOTAL - FC2.TOTAL, 0) AS SALDO_' +
        'A_SU_FAVOR ,'
      
        '                FC2.N_FACTURA AS N_FACTURARAPPEL, F.NOMCOMPLET, ' +
        '(CAST (NULL AS INTEGER)) AS C_ELEMENT,'
      
        '                (CAST (NULL AS INTEGER)) AS C_ELEMENTFAC, IP.C_P' +
        'ROVA'
      '         FROM ((((INTERCONPROVAESP IP'
      
        '             LEFT JOIN PROVEIDORS P  ON P.C_PROV      = IP.C_PRO' +
        'V)'
      
        '             LEFT JOIN FACLIN     FL ON FL.C_PROVA    = IP.C_PRO' +
        'VA'
      
        '                                    AND FL.C_INTERCON = IP.C_INT' +
        'ERCON)'
      
        '             LEFT JOIN FACCAP     FC ON FL.C_FACTURA  = FC.C_FAC' +
        'TURA)'
      
        '             LEFT JOIN FACCAP    FC2 ON FC2.C_FACTURA = FC.C_FAC' +
        'TURARAPPEL)'
      
        '                  JOIN FILIACIO    F ON F.NUM_HIST    = FL.C_HIS' +
        'TORIA'
      '         WHERE IP.C_ESTATRAPPEL BETWEEN 20 AND 29'
      '           AND IP.C_PROV = :EC_PROV'
      
        '           AND ((:E_GRUPLIQUI IS NULL) OR (IP.GRUPLIQUI = :E_GRU' +
        'PLIQUI))'
      ''
      '     ORDER BY 13,14'
      
        '     INTO :GRUPLIQUI, :C_INTERCON, :C_ORTESIS, :ALBARA, :C_PROV,' +
        ' :C_ORTESISLIN, :N_PROV, :DIRECCIO, :CPOSTAL, :POBLACIO,'
      
        '          :NETO, :TOTAL, :C_FACTURA, :C_LINIAFAC, :ORIGEN, :C_FA' +
        'CTURARAPPEL, :TOTAL_RAPPEL, :SALDO_A_SU_FAVOR,'
      
        '          :N_FACTURARAPPEL, :NOMCOMPLET, :ELEMENT, :ELEMENTFAC, ' +
        ':PROVA'
      '     DO BEGIN'
      '        SUSPEND;'
      '     END;'
      ''
      'END'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Select.Strings = (
      'SELECT * FROM P_FACCAP_LIQUIDACIONS("TODAY")')
    Dic1 = wDataFactu.FacCap
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 282
    Top = 171
  end
  object AgrupaProv: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AgrupaProv'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DESDE  DATE,'
      '  HASTA  DATE'
      ')'
      'RETURNS'
      '('
      '  TIPUSORTESIS VARCHAR (100),'
      '  TRENCAGRUP   CHAR,'
      '  C_FAMILIA    VARCHAR (3),'
      '  N_FAMILIA    VARCHAR (40),'
      '  C_PROV       CHAR    (10),'
      '  N_PROV       VARCHAR (100),'
      '  NUM          INTEGER,'
      '  SUMA         NUMERIC (15,3),'
      '  MITJA        NUMERIC (15,3)'
      ')'
      'AS'
      'BEGIN'
      ''
      ''
      '       /* -->>----->>-- STOCKS -->>------>>--'
      ''
      '       C_FAMILIA  = '#39'A00'#39';'
      '       N_FAMILIA  = '#39'Material incontin'#232'ncia'#39';'
      ''
      
        '       FOR SELECT FL.C_PROV, P.N_PROV, COUNT(FL.C_STOCK), SUM(FL' +
        '.NETO)'
      
        '       FROM (FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.' +
        'C_FACTURA)'
      
        '                  LEFT JOIN PROVEIDORS P  ON FL.C_PROV = P.C_PRO' +
        'V'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.ORIGEN = "S" )'
      '       GROUP BY FL.C_PROV, P.N_PROV'
      '       ORDER BY 1'
      '       INTO :C_PROV, :N_PROV, :NUM, :SUMA'
      '       DO BEGIN'
      '           IF (NUM = 0)'
      '           THEN MITJA = 0;'
      '           ELSE MITJA = (SUMA / NUM);'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           TIPUSORTESIS = '#39'Material incontin'#232'ncia (Stocks)'#39';'
      ''
      '           IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '           IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO AS' +
        'SIGNAT * * '#39';'
      ''
      '           SUSPEND;'
      ''
      '           C_PROV     = NULL;'
      '           N_PROV     = NULL;'
      '           TRENCAGRUP = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '           MITJA      = NULL;'
      '       END;'
      '       '
      '       --<<-----<<-- STOCKS --<<------<<-- */'
      ''
      '       /* ----------- ELEMENTS FACTURABLES ----------- */'
      ''
      '       C_FAMILIA  = '#39'E00'#39';'
      '       N_FAMILIA  = '#39'Elements Facturables Varis'#39';'
      '                                       /*FL.C_ELEMENT*/'
      '       FOR SELECT FL.C_PROV, P.N_PROV, COUNT(*), SUM(FL.NETO)'
      
        '       FROM (FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.' +
        'C_FACTURA)'
      
        '                  LEFT JOIN PROVEIDORS P  ON FL.C_PROV = P.C_PRO' +
        'V'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.ORIGEN = "E" )'
      '       GROUP BY FL.C_PROV, P.N_PROV'
      '       ORDER BY 1'
      '       INTO :C_PROV, :N_PROV, :NUM, :SUMA'
      '       DO BEGIN'
      '           IF (NUM = 0)'
      '           THEN MITJA = 0;'
      '           ELSE MITJA = (SUMA / NUM);'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           TIPUSORTESIS = '#39'Elements Facturables'#39';'
      ''
      '           IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '           IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO AS' +
        'SIGNAT * * '#39';'
      ''
      '           SUSPEND;'
      ''
      '           C_PROV     = NULL;'
      '           N_PROV     = NULL;'
      '           TRENCAGRUP = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '           MITJA      = NULL;'
      '       END;'
      ''
      '       /* ----------- PROVES ESPECIALS ----------- */'
      ''
      '       C_FAMILIA  = '#39'P00'#39';'
      '       N_FAMILIA  = '#39'Proves Especials'#39';'
      ''
      '       FOR SELECT FL.C_PROV, P.N_PROV, COUNT(*), SUM(FL.NETO)'
      
        '       FROM (FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.' +
        'C_FACTURA)'
      
        '                  LEFT JOIN PROVEIDORS P  ON FL.C_PROV = P.C_PRO' +
        'V'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.ORIGEN = "P" )'
      '       GROUP BY FL.C_PROV, P.N_PROV'
      '       ORDER BY 1'
      '       INTO :C_PROV, :N_PROV, :NUM, :SUMA'
      '       DO BEGIN'
      '           IF (NUM = 0)'
      '           THEN MITJA = 0;'
      '           ELSE MITJA = (SUMA / NUM);'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           TIPUSORTESIS = '#39'Proves Especials'#39';'
      ''
      '           IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '           IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO AS' +
        'SIGNAT * * '#39';'
      ''
      '           SUSPEND;'
      ''
      '           C_PROV     = NULL;'
      '           N_PROV     = NULL;'
      '           TRENCAGRUP = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '           MITJA      = NULL;'
      '       END;'
      ''
      '       /* >>--------->>-- ORTESIS -->>--------->> */'
      
        '                                                                ' +
        '     /*FL.C_ORTESIS*/'
      
        '       FOR SELECT COF.C_familia, COF.N_familia, FL.C_PROV, P.N_P' +
        'ROV, COUNT(*), SUM(FL.NETO)'
      
        '       FROM (((FACCAP FC JOIN FACLIN         FL  ON FC.C_FACTURA' +
        '  = FL.C_FACTURA )'
      
        '                    LEFT JOIN PROVEIDORS P ON FL.C_PROV = P.C_PR' +
        'OV)'
      
        '                         JOIN CODIORTESIS   CO1 ON FL.C_ORTESIS ' +
        ' = CO1.C_ORTESIS)'
      
        '                         JOIN CODIORTESISFAM COF ON COF.C_FAMILI' +
        'A = CO1.C_FAMILIA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.ORIGEN STARTING WITH "O" )'
      '         AND ( FL.ORIGEN <> "OA")'
      
        '       GROUP BY COF.C_familia, COF.N_familia, FL.C_PROV, P.N_PRO' +
        'V'
      '       ORDER BY 1'
      ''
      
        '       INTO :C_FAMILIA, :N_FAMILIA, :C_PROV, :N_PROV, :NUM, :SUM' +
        'A'
      '       DO BEGIN'
      '           IF (NUM = 0)'
      '           THEN MITJA = 0;'
      '           ELSE MITJA = (SUMA / NUM);'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      ''
      
        '           IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'ncontin'#232'ncia'#39';'
      
        '           IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'mplantaci'#243#39';'
      
        '           IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'c' +
        'niques'#39';'
      
        '           IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres pro' +
        'ductes ortop'#232'dics'#39';'
      
        '           IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements F' +
        'acturables'#39';'
      
        '           IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Esp' +
        'ecials'#39';'
      ''
      '           IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '           IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO AS' +
        'SIGNAT * * '#39';'
      ''
      '           SUSPEND;'
      ''
      '           C_PROV     = NULL;'
      '           N_PROV     = NULL;'
      '           TRENCAGRUP = NULL;'
      '           C_FAMILIA  = NULL;'
      '           N_FAMILIA  = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '           MITJA      = NULL;'
      '       END;'
      ''
      ''
      
        '       FOR SELECT COF.C_familia, COF.N_familia, IO2.C_PROV, P.N_' +
        'PROV, COUNT(*), SUM(IO2.PREUCOMPRA)'
      ''
      '           FROM INTERCONORTESISLIN  IO2'
      
        '           JOIN INTERCONORTESISREG   IR ON IO2.C_INTERCON =  IR.' +
        'C_INTERCON AND IR.TIPUS = 206   /* //*BVG-ort */'
      
        '           LEFT OUTER JOIN PROVEIDORS P ON IO2.C_PROV     =   P.' +
        'C_PROV'
      
        '           JOIN CODIORTESIS         CO1 ON IO2.C_ORTESIS  = CO1.' +
        'C_ORTESIS'
      
        '           JOIN CODIORTESISFAM      COF ON COF.C_FAMILIA  = CO1.' +
        'C_FAMILIA'
      '           '
      
        '/*           WHERE IO2.DATA_ENTREGA BETWEEN :DESDE AND :HASTA   ' +
        ' //*BVG-ort */'
      
        '           WHERE IR.DATA BETWEEN :DESDE AND :HASTA            /*' +
        ' //*BVG-ort */'
      '           AND   IO2.C_ESTATRAPPEL = 84'
      
        '       GROUP BY COF.C_familia, COF.N_familia, IO2.C_PROV, P.N_PR' +
        'OV'
      '       ORDER BY 1'
      
        '       INTO :C_FAMILIA, :N_FAMILIA, :C_PROV, :N_PROV, :NUM, :SUM' +
        'A'
      '       DO BEGIN'
      '           IF (NUM = 0)'
      '           THEN MITJA = 0;'
      '           ELSE MITJA = (SUMA / NUM);'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      ''
      
        '           IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'ncontin'#232'ncia'#39';'
      
        '           IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'mplantaci'#243#39';'
      
        '           IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'c' +
        'niques'#39';'
      
        '           IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres pro' +
        'ductes ortop'#232'dics'#39';'
      
        '           IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements F' +
        'acturables'#39';'
      
        '           IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Esp' +
        'ecials'#39';'
      ''
      '           IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '           IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO AS' +
        'SIGNAT * * '#39';'
      ''
      '           SUSPEND;'
      ''
      '           C_PROV     = NULL;'
      '           N_PROV     = NULL;'
      '           TRENCAGRUP = NULL;'
      '           C_FAMILIA  = NULL;'
      '           N_FAMILIA  = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '           MITJA      = NULL;'
      '       END;'
      ''
      ''
      'END')
    Select.Strings = (
      
        'SELECT * FROM P_CODIORTESISFAM_LISTORTIEF("S", "01.01.2002", "TO' +
        'DAY")')
    Dic1 = FamOrtesis
    Dic1Name = 'COF'
    Abierta = False
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
    ModiFecha = 37635.5725703935
    Left = 120
    Top = 272
  end
  object NORMALIZARAPPELS: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'NORMALIZARAPPELS'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '   DECLARE VARIABLE INTERCON INTEGER;'
      '   DECLARE VARIABLE PROVA    INTEGER;'
      'BEGIN'
      ''
      '/*'
      '-----------------------------------'
      '--ORTESIS PER UPDATAR ANTIC = '#39'S'#39
      '-----------------------------------'
      ''
      '( A PROVES VAN SORTIR 44 )'
      ''
      'SELECT *'
      
        'FROM (((FACCAP FC JOIN FACLIN FL ON FC.C_FACTURA = FL.C_FACTURA ' +
        ')'
      
        'JOIN INTERCONORTESISLIN I ON FL.C_ORTESISLIN = I.C_ORTESISLIN AN' +
        'D I.C_CENTREFAC <> '#39'04'#39')'
      'JOIN CODIORTESIS C ON I.C_ORTESIS = C.C_ORTESIS)'
      
        'JOIN CODIORTESISFAM F ON C.C_FAMILIA = F.C_FAMILIA AND F.FACTURA' +
        'BLE = '#39'N'#39
      'WHERE FC.C_ESTATCOBRO IN (10, 12, 20, 21, 60)'
      '*/'
      ''
      'UPDATE INTERCONORTESISLIN SET ANTIC = "S"'
      'WHERE C_ORTESISLIN IN ('
      'SELECT C_ORTESISLIN'
      
        'FROM (((FACCAP FC JOIN FACLIN FL ON FC.C_FACTURA = FL.C_FACTURA ' +
        ')'
      
        'JOIN INTERCONORTESISLIN I ON FL.C_ORTESISLIN = I.C_ORTESISLIN AN' +
        'D I.C_CENTREFAC <> '#39'04'#39')'
      'JOIN CODIORTESIS C ON I.C_ORTESIS = C.C_ORTESIS)'
      
        'JOIN CODIORTESISFAM F ON C.C_FAMILIA = F.C_FAMILIA AND F.FACTURA' +
        'BLE = '#39'N'#39
      'WHERE FC.C_ESTATCOBRO IN (10, 12, 20, 21, 60));'
      ''
      '/*'
      '------------------------------------------------------'
      '-- ORTESIS AMB MECANISME ANTIC QUE PASAN A MECANISME NOU:'
      '------------------------------------------------------'
      ''
      '( A PROVES VAN SORTIR 202 )'
      ''
      'SELECT * FROM (INTERCONORTESISLIN I'
      'JOIN CODIORTESIS C ON I.C_ORTESIS = C.C_ORTESIS)'
      
        'JOIN CODIORTESISFAM F ON C.C_FAMILIA = F.C_FAMILIA AND F.FACTURA' +
        'BLE = '#39'N'#39
      'WHERE I.C_CENTREFAC <> '#39'04'#39
      'AND I.DATA_ENTREGA IS NULL'
      'AND I.ESTATFAC IN (10, 21)'
      '*/'
      ''
      'UPDATE INTERCONORTESISLIN SET ESTATFAC = 54'
      
        'WHERE C_ORTESISLIN IN (SELECT C_ORTESISLIN FROM (INTERCONORTESIS' +
        'LIN I'
      'JOIN CODIORTESIS C ON I.C_ORTESIS = C.C_ORTESIS)'
      
        'JOIN CODIORTESISFAM F ON C.C_FAMILIA = F.C_FAMILIA AND F.FACTURA' +
        'BLE = '#39'N'#39
      'WHERE I.C_CENTREFAC <> '#39'04'#39
      'AND I.DATA_ENTREGA IS NULL'
      'AND I.ESTATFAC IN (10, 21));'
      ''
      '/*'
      '-------------------------------------------------'
      '-- PROVES ESPECIALS'
      '-------------------------------------------------'
      ''
      
        'SELECT * FROM FACCAP FC JOIN FACLIN FL ON FC.C_FACTURA = FL.C_FA' +
        'CTURA'
      
        'JOIN INTERCONPROVAESP I ON I.C_INTERCON = FL.C_INTERCON AND I.C_' +
        'PROVA = FL.C_PROVA'
      'WHERE FC.C_ESTATCOBRO IN (10, 12, 20, 21, 60)'
      '*/'
      ''
      'FOR SELECT FL.C_INTERCON, FL.C_PROVA'
      'FROM FACCAP FC JOIN FACLIN FL ON FC.C_FACTURA = FL.C_FACTURA'
      
        'JOIN INTERCONPROVAESP I ON I.C_INTERCON = FL.C_INTERCON AND I.C_' +
        'PROVA = FL.C_PROVA'
      'WHERE FC.C_ESTATCOBRO IN (10, 12, 20, 21, 60)'
      'INTO :INTERCON, :PROVA'
      'DO BEGIN'
      ''
      '     UPDATE INTERCONPROVAESP SET ANTIC = "S"'
      '     WHERE C_INTERCON = :INTERCON'
      '     AND C_PROVA = :PROVA;'
      '     '
      'END'
      ''
      '/*'
      '------------------------------------------------'
      '-- ELEMENTS FACTURABLES'
      '------------------------------------------------'
      ''
      '( A PROVES VAN SORTIR 40 )'
      
        'SELECT * FROM FACCAP FC JOIN FACLIN FL ON FC.C_FACTURA = FL.C_FA' +
        'CTURA'
      'JOIN ELEMENTSFAC E ON E.C_ELEMENT = FL.C_ELEMENT'
      'WHERE FC.C_ESTATCOBRO IN (10, 12, 20, 21, 60)'
      '*/'
      ''
      'UPDATE ELEMENTSFAC SET ANTIC = "S"'
      
        'WHERE C_ELEMENT IN (SELECT C_ELEMENT FROM FACCAP FC JOIN FACLIN ' +
        'FL ON FC.C_FACTURA = FL.C_FACTURA'
      'JOIN ELEMENTSFAC E ON E.C_ELEMENT = FL.C_ELEMENT'
      'WHERE FC.C_ESTATCOBRO IN (10, 12, 20, 21, 60));'
      ''
      'END')
    Dic1 = InterconOrtesisLin
    Dic1Name = 'interconortesislin'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 436
    Top = 171
  end
  object RappelFactu: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RapFactu'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '   C_FACTURA                INTEGER'
      ')'
      'RETURNS'
      '('
      '   DETALL                   INTEGER,'
      '   /* PROVEIDOR */'
      '   C_PROV                   CHAR    (10),'
      '   N_PROV                   VARCHAR (40),'
      '   DIRECCIO                 VARCHAR (40),'
      '   POBLACIO                 VARCHAR (20),'
      '   CPOSTAL                  VARCHAR ( 5),'
      '   CIF                      VARCHAR (15),'
      '   PERRAPPELORTESI          NUMERIC (15,3),'
      ''
      '   /* CAP'#199'ELERA DE FACTURES */'
      '   DATA_FACTU               DATE,'
      '   N_FACTURA                VARCHAR (40),'
      ''
      '   /* LINES DE FACTURES */'
      '   CANTITAT                 NUMERIC (15,3),'
      '   BRUTO                    NUMERIC (15,3),'
      '   NETO                     NUMERIC (15,3),'
      '   TOTALRAPPEL              NUMERIC (15,3),'
      '   TOTALIVARAPPEL           NUMERIC (15,3),'
      '   RAPPEL_MES_IVARAPPEL     NUMERIC (15,3),'
      '   C_INTERCON               INTEGER,'
      '   C_ORTESIS                VARCHAR ( 5),'
      '   C_ORTESISLIN             INTEGER,'
      ''
      '   /* FILIACIO */'
      '   NOMCOMPLET               VARCHAR (80),'
      ''
      '   /* CENTRES FACTURACIO */'
      '   N_CENTREFAC              VARCHAR (20),'
      ''
      '   /* INTERCONORTESIS2 */'
      '   ALBARA                   VARCHAR (40),'
      '   CODISERVEI               VARCHAR (20),'
      '   N_ORTESIS                VARCHAR (250),'
      ''
      '   /* CONFIG */'
      '   IVA1                     NUMERIC (15,3),'
      '   '
      '   PREUCOMPRA               NUMERIC (15,3),'
      '   IVACOMPRA                NUMERIC (15,3),'
      '   PREU_COMPRA_SENSE_IVA    NUMERIC (15,3),'
      '   CUOTA_RAPPEL             NUMERIC (15,3),'
      '   PER_IVA_DE_CUOTA_RAPPEL  NUMERIC (15,3),'
      '   TOTAL                    NUMERIC (15,3)'
      ')'
      'AS'
      
        '      DECLARE VARIABLE  SUMPREUCOMPRA               NUMERIC (15,' +
        ' 3);'
      
        '      DECLARE VARIABLE  SUMIVACOMPRA                NUMERIC (15,' +
        ' 3);'
      
        '      DECLARE VARIABLE  SUMPREU_COMPRA_SENSE_IVA    NUMERIC (15,' +
        ' 3);'
      
        '      DECLARE VARIABLE  SUMCUOTA_RAPPEL             NUMERIC (15,' +
        ' 3);'
      
        '      DECLARE VARIABLE  SUMPER_IVA_DE_CUOTA_RAPPEL  NUMERIC (15,' +
        ' 3);'
      
        '      DECLARE VARIABLE  SUMTOTAL                    NUMERIC (15,' +
        ' 3);'
      '      DECLARE VARIABLE  C_ESTATRAPPEL               INTEGER;'
      '      '
      '      DECLARE VARIABLE  TFAC                        VARCHAR(2);'
      'BEGIN'
      '   SUMPREUCOMPRA              = 0;'
      '   SUMIVACOMPRA               = 0;'
      '   SUMPREU_COMPRA_SENSE_IVA   = 0;'
      '   SUMCUOTA_RAPPEL            = 0;'
      '   SUMPER_IVA_DE_CUOTA_RAPPEL = 0;'
      '   SUMTOTAL                   = 0;'
      ''
      '   SELECT T_FACTURA'
      '   FROM FACCAP'
      '   WHERE C_FACTURA = :C_FACTURA'
      '   INTO :TFAC;'
      ''
      '   IF (:TFAC = '#39'R'#39') THEN'
      '   BEGIN'
      ''
      '         DETALL = 1;'
      '         /* ORTESIS QUE ENTREN DINTRE DE FACTURES RAPPEL */'
      '         '
      '         FOR SELECT'
      
        '             FC.DATA_FACTU , FC.N_Factura     , P.C_PROV      , ' +
        'P.N_PROV      , P.Direccio   , P.Poblacio    , P.CPostal      ,'
      
        '             P.Cif         , P.PERRAPPELORTESI, F.NOMCOMPLET  , ' +
        'CF.N_CENTREFAC, IO2.ALBARA   , IO2.CODISERVEI, IO2.N_ORTESIS  ,'
      
        '             FL.CANTITAT   , CONFIG.IVA1      , IO2.PREUCOMPRA, ' +
        'IO2.IVACOMPRA , FL.C_INTERCON, FL.C_ORTESIS  , FL.C_ORTESISLIN, ' +
        'IO2.C_EstatRappel'
      '         FROM ((((( FACCAP           FC'
      
        '               JOIN FACLIN           FL    ON FC.C_FACTURA     =' +
        ' FL.C_FACTURA  AND FL.ORIGEN      = '#39'R'#39')'
      
        '          LEFT JOIN FILIACIO         F     ON F.NUM_HIST       =' +
        ' FL.C_HISTORIA)'
      
        '          LEFT JOIN PROVEIDORS       P     ON P.C_PROV         =' +
        ' FL.C_PROV     AND P.RAPPELORTESI = '#39'S'#39')'
      
        '          LEFT JOIN CENTREFAC        CF    ON CF.C_CENTREFAC   =' +
        ' FL.C_CENTREFAC)'
      
        '          LEFT JOIN INTERCONORTESISLIN IO2 ON IO2.C_ORTESISLIN =' +
        ' FL.C_ORTESISLIN)'
      '               JOIN CONFIG                 ON 1 = 1'
      '          WHERE C_FACTURA = :C_FACTURA'
      
        '          INTO :DATA_FACTU, :N_FACTURA      , :C_PROV    , :N_PR' +
        'OV     , :DIRECCIO  , :POBLACIO  , :CPOSTAL     ,'
      
        '               :CIF       , :PERRAPPELORTESI, :NOMCOMPLET, :N_CE' +
        'NTREFAC, :ALBARA    , :CODISERVEI, :N_ORTESIS   ,'
      
        '               :CANTITAT  , :IVA1           , :PREUCOMPRA, :IVAC' +
        'OMPRA  , :C_INTERCON, :C_ORTESIS , :C_ORTESISLIN, :C_EstatRappel'
      '         DO BEGIN'
      ''
      
        '                PREU_COMPRA_SENSE_IVA   = F_DIVISA( PREUCOMPRA /' +
        ' (1+(IVACOMPRA / 100 )), 3);'
      
        '                CUOTA_RAPPEL            = F_DIVISA( F_DIVISA( PR' +
        'EUCOMPRA / (1+(IVACOMPRA / 100 )), 3) * (PERRAPPELORTESI / 100),' +
        ' 3);'
      
        '                PER_IVA_DE_CUOTA_RAPPEL = F_DIVISA( (PREUCOMPRA ' +
        '/ (1+(IVACOMPRA / 100 )) * (PERRAPPELORTESI / 100)) * (IVA1 / 10' +
        '0), 3);'
      
        '                TOTAL                   = CUOTA_RAPPEL + PER_IVA' +
        '_DE_CUOTA_RAPPEL;'
      ''
      
        '                IF (NOT PREUCOMPRA              IS NULL) THEN  S' +
        'UMPREUCOMPRA              = SUMPREUCOMPRA              + PREUCOM' +
        'PRA;'
      
        '                IF (NOT PREU_COMPRA_SENSE_IVA   IS NULL) THEN  S' +
        'UMPREU_COMPRA_SENSE_IVA   = SUMPREU_COMPRA_SENSE_IVA   + PREU_CO' +
        'MPRA_SENSE_IVA;'
      
        '                IF (NOT CUOTA_RAPPEL            IS NULL) THEN  S' +
        'UMCUOTA_RAPPEL            = SUMCUOTA_RAPPEL            + CUOTA_R' +
        'APPEL;'
      
        '                IF (NOT PER_IVA_DE_CUOTA_RAPPEL IS NULL) THEN  S' +
        'UMPER_IVA_DE_CUOTA_RAPPEL = SUMPER_IVA_DE_CUOTA_RAPPEL + PER_IVA' +
        '_DE_CUOTA_RAPPEL;'
      
        '                IF (NOT TOTAL                   IS NULL) THEN  S' +
        'UMTOTAL                   = SUMTOTAL                   + TOTAL;'
      ''
      '             SUSPEND;'
      '         END;'
      ''
      '         DETALL                  =  2;'
      '         PREUCOMPRA              =  SUMPREUCOMPRA;'
      
        '/*         PREU_COMPRA_SENSE_IVA   =  SUMPREUCOMPRA / (1+(IVACOM' +
        'PRA / 100 ));*/'
      '         PREU_COMPRA_SENSE_IVA   =  SUMPREU_COMPRA_SENSE_IVA;'
      
        '         CUOTA_RAPPEL            =  SUMPREU_COMPRA_SENSE_IVA * (' +
        'PERRAPPELORTESI / 100);'
      
        '         PER_IVA_DE_CUOTA_RAPPEL = (SUMPREU_COMPRA_SENSE_IVA * (' +
        'PERRAPPELORTESI / 100)) * (IVA1 / 100);'
      
        '         TOTAL                   =  F_DIVISA((SUMPREU_COMPRA_SEN' +
        'SE_IVA * (PERRAPPELORTESI / 100)), 3) + F_DIVISA(((SUMPREU_COMPR' +
        'A_SENSE_IVA * (PERRAPPELORTESI / 100)) * (IVA1 / 100)), 3);'
      ''
      '         SUSPEND;'
      '   END;'
      '   '
      '   IF (:TFAC = '#39'RR'#39') THEN'
      '   BEGIN'
      ''
      '         DETALL = 1;'
      '         /* ORTESIS QUE ENTREN DINTRE DE FACTURES RAPPEL */'
      ''
      '         FOR SELECT'
      
        '             FC.DATA_FACTU , FC.N_Factura     , P.C_PROV      , ' +
        'P.N_PROV      , P.Direccio   , P.Poblacio    , P.CPostal      ,'
      
        '             P.Cif         , P.PERRAPPELORTESI, F.NOMCOMPLET  , ' +
        'CF.N_CENTREFAC, IO2.ALBARA   , IO2.CODISERVEI, IO2.N_ORTESIS  ,'
      
        '             FL.CANTITAT   , CONFIG.IVA1      , IO2.PREUCOMPRA, ' +
        'IO2.IVACOMPRA , FL.C_INTERCON, FL.C_ORTESIS  , FL.C_ORTESISLIN, ' +
        'IO2.C_EstatRappel'
      '         FROM ((((( FACCAP           FC'
      
        '               JOIN FACLIN           FL    ON FC.C_FACTURA     =' +
        ' FL.C_FACTURA  AND FL.ORIGEN      = '#39'RR'#39')'
      
        '          LEFT JOIN FILIACIO         F     ON F.NUM_HIST       =' +
        ' FL.C_HISTORIA)'
      
        '          LEFT JOIN PROVEIDORS       P     ON P.C_PROV         =' +
        ' FL.C_PROV     AND P.RAPPELORTESI = '#39'S'#39')'
      
        '          LEFT JOIN CENTREFAC        CF    ON CF.C_CENTREFAC   =' +
        ' FL.C_CENTREFAC)'
      
        '          LEFT JOIN INTERCONORTESISLIN IO2 ON IO2.C_ORTESISLIN =' +
        ' FL.C_ORTESISLIN)'
      '               JOIN CONFIG                 ON 1 = 1'
      '          WHERE C_FACTURA = :C_FACTURA'
      
        '          INTO :DATA_FACTU, :N_FACTURA      , :C_PROV    , :N_PR' +
        'OV     , :DIRECCIO  , :POBLACIO  , :CPOSTAL     ,'
      
        '               :CIF       , :PERRAPPELORTESI, :NOMCOMPLET, :N_CE' +
        'NTREFAC, :ALBARA    , :CODISERVEI, :N_ORTESIS   ,'
      
        '               :CANTITAT  , :IVA1           , :PREUCOMPRA, :IVAC' +
        'OMPRA  , :C_INTERCON, :C_ORTESIS , :C_ORTESISLIN, :C_EstatRappel'
      '         DO BEGIN'
      ''
      
        '                PREU_COMPRA_SENSE_IVA   = F_DIVISA( PREUCOMPRA /' +
        ' (1+(IVACOMPRA / 100 )), 3);'
      
        '                CUOTA_RAPPEL            = F_DIVISA( F_DIVISA( PR' +
        'EUCOMPRA / (1+(IVACOMPRA / 100 )), 3) * (PERRAPPELORTESI / 100),' +
        ' 3);'
      
        '                PER_IVA_DE_CUOTA_RAPPEL = F_DIVISA( (PREUCOMPRA ' +
        '/ (1+(IVACOMPRA / 100 )) * (PERRAPPELORTESI / 100)) * (IVA1 / 10' +
        '0), 3);'
      
        '                TOTAL                   = CUOTA_RAPPEL + PER_IVA' +
        '_DE_CUOTA_RAPPEL;'
      ''
      
        '                IF (NOT PREUCOMPRA              IS NULL) THEN  S' +
        'UMPREUCOMPRA              = SUMPREUCOMPRA              + PREUCOM' +
        'PRA;'
      
        '                IF (NOT PREU_COMPRA_SENSE_IVA   IS NULL) THEN  S' +
        'UMPREU_COMPRA_SENSE_IVA   = SUMPREU_COMPRA_SENSE_IVA   + PREU_CO' +
        'MPRA_SENSE_IVA;'
      
        '                IF (NOT CUOTA_RAPPEL            IS NULL) THEN  S' +
        'UMCUOTA_RAPPEL            = SUMCUOTA_RAPPEL            + CUOTA_R' +
        'APPEL;'
      
        '                IF (NOT PER_IVA_DE_CUOTA_RAPPEL IS NULL) THEN  S' +
        'UMPER_IVA_DE_CUOTA_RAPPEL = SUMPER_IVA_DE_CUOTA_RAPPEL + PER_IVA' +
        '_DE_CUOTA_RAPPEL;'
      
        '                IF (NOT TOTAL                   IS NULL) THEN  S' +
        'UMTOTAL                   = SUMTOTAL                   + TOTAL;'
      '                '
      '             SUSPEND;'
      '         END;'
      ''
      '         DETALL                  =  2;'
      '         PREUCOMPRA              =  SUMPREUCOMPRA;'
      '         PREU_COMPRA_SENSE_IVA   =  SUMPREU_COMPRA_SENSE_IVA;'
      
        '         CUOTA_RAPPEL            =  SUMPREU_COMPRA_SENSE_IVA * (' +
        'PERRAPPELORTESI / 100);'
      
        '         PER_IVA_DE_CUOTA_RAPPEL =  (SUMPREU_COMPRA_SENSE_IVA * ' +
        '(PERRAPPELORTESI / 100)) * (IVA1 / 100);'
      
        '         TOTAL                   =  F_DIVISA((SUMPREU_COMPRA_SEN' +
        'SE_IVA * (PERRAPPELORTESI / 100)), 3) + F_DIVISA(((SUMPREU_COMPR' +
        'A_SENSE_IVA * (PERRAPPELORTESI / 100)) * (IVA1 / 100)), 3);'
      ''
      '         SUSPEND;'
      '   END;'
      ''
      'END')
    Select.Strings = (
      'SELECT * FROM P_INTERCONORTESIS2_RAPPELFACTU(NULL)')
    Dic1 = InterconOrtesisLin
    Abierta = False
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
    ModiFecha = 37735.7756169097
    Left = 33
    Top = 224
  end
  object LlistatOrtesisiEF: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListOrtiEF'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  SERVEI CHAR,'
      '  DESDE  DATE,'
      '  HASTA  DATE'
      ')'
      'RETURNS'
      '('
      '  TIPUSORTESIS VARCHAR (100),'
      '  TRENCAGRUP   CHAR,'
      '  C_FAMILIA    VARCHAR (3),'
      '  N_FAMILIA    VARCHAR (40),'
      '  NUM          INTEGER,'
      '  SUMA         NUMERIC (15,3)'
      ')'
      'AS'
      'BEGIN'
      ''
      '/* --- SERVEI CATAL'#192' DE LA SALUT --- */'
      '   IF (SERVEI = "S") THEN'
      '   BEGIN'
      ''
      ''
      '       C_FAMILIA  = '#39'A00'#39';'
      '       N_FAMILIA  = '#39'Material incontin'#232'ncia'#39';'
      ''
      '       FOR SELECT COUNT(*), SUM(FL.NETO)'
      
        '       FROM FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.C' +
        '_FACTURA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC = "04")'
      '         AND ( FL.ORIGEN = "S" )'
      '       ORDER BY 1'
      '       INTO :NUM, :SUMA'
      '       DO BEGIN'
      '       '
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           TIPUSORTESIS = '#39'Material incontin'#232'ncia (Stocks)'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      ''
      '       /* --> '#161#161#161'AL SCS NO HI HAN ELEMENTS!!! <-- */'
      '       /* >>--------->>-- ORTESIS -->>--------->> */'
      '                                                /*FL.C_ORTESIS*/'
      
        '       FOR SELECT COF.C_familia, COF.N_familia, COUNT(*), SUM(FL' +
        '.NETO)'
      
        '       FROM (( FACCAP FC JOIN FACLIN         FL  ON FC.C_FACTURA' +
        '  = FL.C_FACTURA )'
      
        '                         JOIN CODIORTESIS    CO1 ON FL.C_ORTESIS' +
        '  = CO1.C_ORTESIS)'
      
        '                         JOIN CODIORTESISFAM COF ON COF.C_FAMILI' +
        'A = CO1.C_FAMILIA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC = "04")'
      '         AND ( FL.ORIGEN STARTING WITH "O" )'
      '         AND ( FL.ORIGEN <> "OA")'
      '       GROUP BY COF.C_familia, COF.N_familia'
      '       ORDER BY 1'
      '       '
      '       INTO :C_FAMILIA, :N_FAMILIA, :NUM, :SUMA'
      '       DO BEGIN'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           '
      
        '           IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'ncontin'#232'ncia'#39';'
      
        '           IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'mplantaci'#243#39';'
      
        '           IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'c' +
        'niques'#39';'
      
        '           IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres pro' +
        'ductes ortop'#232'dics'#39';'
      
        '           IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements F' +
        'acturables'#39';'
      
        '           IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Esp' +
        'ecials'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           C_FAMILIA  = NULL;'
      '           N_FAMILIA  = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      '       '
      '   END;'
      ''
      ''
      '/* --- MUTUES I PRIVATS --- */'
      '   IF (SERVEI = "N") THEN'
      '   BEGIN'
      '   '
      ''
      '       C_FAMILIA  = '#39'A00'#39';'
      '       N_FAMILIA  = '#39'Material incontin'#232'ncia'#39';'
      '       FOR SELECT COUNT(*), SUM(FL.NETO)'
      
        '       FROM FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.C' +
        '_FACTURA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC <> "04")'
      '         AND ( FL.ORIGEN = "S" )'
      '       ORDER BY 1'
      '       INTO :NUM, :SUMA'
      '       DO BEGIN'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           TIPUSORTESIS = '#39'Material incontin'#232'ncia (Stocks)'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      ''
      '       /* ----------- ELEMENTS FACTURABLES ----------- */'
      ''
      '       C_FAMILIA  = '#39'E00'#39';'
      '       N_FAMILIA  = '#39'Elements Facturables Varis'#39';'
      '                        /*FL.C_ELEMENT*/'
      '       FOR SELECT COUNT(*), SUM(FL.NETO)'
      
        '       FROM FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.C' +
        '_FACTURA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC <> "04")'
      '         AND ( FL.ORIGEN = "E" )'
      '       ORDER BY 1'
      '       INTO :NUM, :SUMA'
      '       DO BEGIN'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           TIPUSORTESIS = '#39'Elements Facturables'#39';'
      ''
      '           SUSPEND;'
      '           '
      '           TRENCAGRUP = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      '       '
      '       /* ----------- PROVES ESPECIALS ----------- */'
      ''
      '       C_FAMILIA  = '#39'P00'#39';'
      '       N_FAMILIA  = '#39'Proves Especials'#39';'
      '                        /*FL.C_ELEMENT*/'
      '       FOR SELECT COUNT(*), SUM(FL.NETO)'
      
        '       FROM FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.C' +
        '_FACTURA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC <> "04")'
      '         AND ( FL.ORIGEN = "P" )'
      '       ORDER BY 1'
      '       INTO :NUM, :SUMA'
      '       DO BEGIN'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           TIPUSORTESIS = '#39'Proves Especials'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      ''
      ''
      '       /* ----------- ORTESIS ----------- */'
      '                                                /*FL.C_ORTESIS*/'
      
        '       FOR SELECT COF.C_familia, COF.N_familia, COUNT(*), SUM(FL' +
        '.NETO)'
      
        '       FROM (( FACCAP FC JOIN FACLIN         FL  ON FC.C_FACTURA' +
        '  = FL.C_FACTURA )'
      
        '                         JOIN CODIORTESIS   CO1 ON FL.C_ORTESIS ' +
        ' = CO1.C_ORTESIS)'
      
        '                         JOIN CODIORTESISFAM COF ON COF.C_FAMILI' +
        'A = CO1.C_FAMILIA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC <> "04" )'
      '         AND ( FL.ORIGEN STARTING WITH "O" )'
      '         AND ( FL.ORIGEN <> "OA" )'
      '       GROUP BY COF.C_familia, COF.N_familia'
      '       ORDER BY 1'
      '       INTO :C_FAMILIA, :N_FAMILIA, :NUM, :SUMA'
      '       DO BEGIN'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      ''
      
        '           IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'ncontin'#232'ncia'#39';'
      
        '           IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'mplantaci'#243#39';'
      
        '           IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'c' +
        'niques'#39';'
      
        '           IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres pro' +
        'ductes ortop'#232'dics'#39';'
      
        '           IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements F' +
        'acturables'#39';'
      
        '           IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Esp' +
        'ecials'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           C_FAMILIA  = NULL;'
      '           N_FAMILIA  = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      ''
      '       '
      
        '       FOR SELECT COF.C_familia, COF.N_familia, COUNT(*), CAST(S' +
        'UM(IO2.PREUCOMPRA) AS NUMERIC(15,3))'
      '           FROM   INTERCONORTESISLIN IO2'
      
        '           JOIN   CODIORTESIS        CO1 ON IO2.C_ORTESIS  = CO1' +
        '.C_ORTESIS'
      
        '           JOIN   CODIORTESISFAM     COF ON COF.C_FAMILIA  = CO1' +
        '.C_FAMILIA'
      
        '           JOIN   INTERCONORTESISREG IR  ON IO2.C_INTERCON =  IR' +
        '.C_INTERCON AND IR.TIPUS = 206   /* //*BVG-ort */'
      ''
      
        '/*           WHERE  IO2.DATA_ENTREGA BETWEEN :DESDE AND :HASTA  ' +
        '    //*BVG-ort */'
      
        '           WHERE  IR.DATA BETWEEN :DESDE AND :HASTA             ' +
        ' /* //*BVG-ort */'
      '           AND    IO2.C_ESTATRAPPEL = 84'
      '           '
      '           GROUP  BY COF.C_familia, COF.N_familia'
      '           ORDER  BY 1'
      '           INTO  :C_FAMILIA, :N_FAMILIA, :NUM, :SUMA'
      '       DO BEGIN'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      ''
      
        '           IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'ncontin'#232'ncia'#39';'
      
        '           IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'mplantaci'#243#39';'
      
        '           IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'c' +
        'niques'#39';'
      
        '           IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres pro' +
        'ductes ortop'#232'dics'#39';'
      
        '           IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements F' +
        'acturables'#39';'
      
        '           IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Esp' +
        'ecials'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           C_FAMILIA  = NULL;'
      '           N_FAMILIA  = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      ''
      '   END;'
      'END')
    Select.Strings = (
      
        'SELECT * FROM P_CODIORTESISFAM_LISTORTIEF("S", "01.01.2002", "TO' +
        'DAY")')
    Dic1 = FamOrtesis
    Dic1Name = 'COF'
    Abierta = False
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
    ModiFecha = 37635.5725699306
    Left = 32
    Top = 272
  end
  object InterconOrtesisReg: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. interconsulta'
        NombreDB = 'C_Intercon'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'FK a intercon'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus registre'
        NombreDB = 'Tipus'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'consulta a codicamps'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'Usuari'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'FK a metges'
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
        Aplica = kcMemo
        Nombre = 'Text'
        NombreDB = 'Text'
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
          'N'#250'm. interconsulta'
          'Ordre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Usuari'
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
        Nombre = 'Data'
        NombreDB = 'data'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. interconsulta'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Intercon'
        NombreDB = 'intercon'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'm. interconsulta')
        Tipo = tiForaneo
        ForaneoDic = wDataIntercon.InterCon
        ForaneoCampos.Strings = (
          'N'#186' Interconsulta')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipusreg'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus registre')
        CopiarOrigen.Strings = (
          'Tipus registre')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ORTESIS.TIPUSREG"'
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
      end>
    Nombre = 'InterconOrtesisReg'
    NombreTabla = 'InterconOrtesisReg'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. interconsulta'
      'Tipus registre'
      'Usuari'
      'Data'
      'Text'
      'Ordre')
    IndiceVer = 'Data'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 36
    Top = 336
  end
  object OrteRegModi_ELIMINADA: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Modi'
    ForceNombreDB = False
    Body.Strings = (
      '      DECLARE VARIABLE CENTREFAC VARCHAR(2);'
      '      DECLARE VARIABLE C_ORTESISLIN INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      
        '      /* Si hem posat la data d'#39'entrega, marquem cada l'#237'nia per ' +
        'al rapel */'
      '      if ((new.tipus = '#39'206'#39') and (new.data is not null)) then'
      '      begin'
      '          FOR SELECT C_CENTREFAC, C_ORTESISLIN'
      '              FROM INTERCONORTESISLIN'
      '              WHERE C_INTERCON = new.c_intercon'
      '              INTO :CENTREFAC, :C_ORTESISLIN'
      '          DO BEGIN'
      ''
      
        '              /* 16-9-2015 - I els '#39'00'#39' i '#39'50'#39' han de passar a e' +
        'stat 10 i no 14 */'
      '              IF ((CENTREFAC = '#39'00'#39') OR (CENTREFAC = '#39'50'#39')) THEN'
      '              BEGIN'
      '                  UPDATE INTERCONORTESISLIN'
      '                  SET C_ESTATRAPPEL = 10'
      '                  WHERE C_INTERCON = new.c_intercon'
      '                  AND   C_ORTESISLIN = :C_ORTESISLIN;'
      '              END;'
      '              ELSE'
      '              /* 16-9-2015 - F */'
      '              IF (CENTREFAC <> '#39'04'#39') THEN'
      '              BEGIN'
      '                  UPDATE INTERCONORTESISLIN'
      '                  SET C_ESTATRAPPEL = 14'
      '                  WHERE C_INTERCON = new.c_intercon'
      '                  AND   C_ORTESISLIN = :C_ORTESISLIN;'
      '              END;'
      ''
      '          END;'
      '      end'
      '   END'
      '     '
      '     '
      'END')
    Dic1 = InterconOrtesisReg
    Dic1Name = 'InterconOrtesisReg'
    Abierta = False
    Borrame = False
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
    Left = 469
    Top = 336
  end
  object LlistatortesisEF2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListOrtiEF2'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  SERVEI CHAR,'
      '  DESDE  DATE,'
      '  HASTA  DATE'
      ')'
      'RETURNS'
      '('
      '  TIPUSORTESIS VARCHAR (100),'
      '  TRENCAGRUP   CHAR,'
      '  C_FAMILIA    VARCHAR (3),'
      '  N_FAMILIA    VARCHAR (40),'
      '  NUM          INTEGER,'
      '  SUMA         NUMERIC (15,3)'
      ')'
      'AS'
      '  DECLARE VARIABLE ESTATCOBRO INTEGER;'
      '  DECLARE VARIABLE NETO NUMERIC (15,3);'
      '  DECLARE VARIABLE C_FAMILIA_ACT VARCHAR(3);'
      '  DECLARE VARIABLE N_FAMILIA_ACT VARCHAR(40);'
      '  DECLARE VARIABLE ESPRIMERREG INTEGER;'
      'BEGIN'
      ''
      '/* --- SERVEI CATAL'#192' DE LA SALUT --- */'
      '   IF (SERVEI = "S") THEN'
      '   BEGIN'
      '       C_FAMILIA  = '#39'A00'#39';'
      '       N_FAMILIA  = '#39'Material incontin'#232'ncia'#39';'
      ''
      '       FOR SELECT COUNT(*), SUM(FL.NETO)'
      
        '       FROM FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.C' +
        '_FACTURA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC = "04")'
      '         AND ( FL.ORIGEN = "S" )'
      '       ORDER BY 1'
      '       INTO :NUM, :SUMA'
      '       DO BEGIN'
      '       '
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           TIPUSORTESIS = '#39'Material incontin'#232'ncia (Stocks)'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      ''
      '       /* --> '#161#161#161'AL SCS NO HI HAN ELEMENTS!!! <-- */'
      '       /* >>--------->>-- ORTESIS -->>--------->> */'
      '                                                /*FL.C_ORTESIS*/'
      
        '       FOR SELECT COF.C_familia, COF.N_familia, COUNT(*), SUM(FL' +
        '.NETO)'
      
        '       FROM (( FACCAP FC JOIN FACLIN         FL  ON FC.C_FACTURA' +
        '  = FL.C_FACTURA )'
      
        '                         JOIN CODIORTESIS    CO1 ON FL.C_ORTESIS' +
        '  = CO1.C_ORTESIS)'
      
        '                         JOIN CODIORTESISFAM COF ON COF.C_FAMILI' +
        'A = CO1.C_FAMILIA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC = "04")'
      '         AND ( FL.ORIGEN STARTING WITH "O" )'
      '         AND ( FL.ORIGEN <> "OA")'
      '       GROUP BY COF.C_familia, COF.N_familia'
      '       ORDER BY 1'
      '       '
      '       INTO :C_FAMILIA, :N_FAMILIA, :NUM, :SUMA'
      '       DO BEGIN'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '           '
      
        '           IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'ncontin'#232'ncia'#39';'
      
        '           IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'mplantaci'#243#39';'
      
        '           IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'c' +
        'niques'#39';'
      
        '           IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres pro' +
        'ductes ortop'#232'dics'#39';'
      
        '           IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements F' +
        'acturables'#39';'
      
        '           IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Esp' +
        'ecials'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           C_FAMILIA  = NULL;'
      '           N_FAMILIA  = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      '       '
      '   END;'
      ''
      ''
      '/* --- MUTUES I PRIVATS --- */'
      '   NUM = 0; SUMA = 0;'
      '   IF (SERVEI = "N") THEN'
      '   BEGIN'
      '       C_FAMILIA  = '#39'A00'#39';'
      '       N_FAMILIA  = '#39'Material incontin'#232'ncia'#39';'
      '       FOR SELECT FC.C_ESTATCOBRO, FL.NETO'
      
        '       FROM FACCAP FC JOIN FACLIN FL ON FC.C_FACTURA  = FL.C_FAC' +
        'TURA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC <> "04")'
      '         AND ( FL.ORIGEN = "S" )'
      '       ORDER BY 1,2'
      '       INTO :ESTATCOBRO, :NETO'
      '       DO BEGIN'
      '           SUMA = SUMA + NETO;'
      
        '           IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (NE' +
        'TO < 0))'
      '           THEN NUM = NUM - 1;'
      '           ELSE NUM = NUM + 1;'
      '       END;'
      '       TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '       TIPUSORTESIS = '#39'Material incontin'#232'ncia (Stocks)'#39';'
      ''
      '       SUSPEND;'
      '       TRENCAGRUP = NULL; NUM = 0; SUMA = 0;'
      ''
      '       /* ----------- ELEMENTS FACTURABLES ----------- */'
      ''
      '       C_FAMILIA  = '#39'E00'#39';'
      '       N_FAMILIA  = '#39'Elements Facturables Varis'#39';'
      '                        /*FL.C_ELEMENT*/'
      '       FOR SELECT FC.C_ESTATCOBRO, FL.NETO'
      
        '       FROM FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.C' +
        '_FACTURA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC <> "04")'
      '         AND ( FL.ORIGEN = "E" )'
      '       ORDER BY 1'
      '       INTO :ESTATCOBRO, :NETO'
      '       DO BEGIN'
      '           SUMA = SUMA + NETO;'
      
        '           IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (NE' +
        'TO < 0))'
      '           THEN NUM = NUM - 1;'
      '           ELSE NUM = NUM + 1;'
      '       END;'
      '       TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '       TIPUSORTESIS = '#39'Elements Facturables'#39';'
      ''
      '       SUSPEND;'
      '       TRENCAGRUP = NULL; NUM = 0; SUMA = 0;'
      '       '
      '       /* ----------- PROVES ESPECIALS ----------- */'
      ''
      '       C_FAMILIA  = '#39'P00'#39';'
      '       N_FAMILIA  = '#39'Proves Especials'#39';'
      '                        /*FL.C_ELEMENT*/'
      '       FOR SELECT FC.C_ESTATCOBRO, FL.NETO'
      
        '       FROM FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.C' +
        '_FACTURA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC <> "04")'
      '         AND ( FL.ORIGEN = "P" )'
      '       ORDER BY 1'
      '       INTO :ESTATCOBRO, :NETO'
      '       DO BEGIN'
      '           SUMA = SUMA + NETO;'
      
        '           IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (NE' +
        'TO < 0))'
      '           THEN NUM = NUM - 1;'
      '           ELSE NUM = NUM + 1;'
      '       END;'
      ''
      '       TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '       TIPUSORTESIS = '#39'Proves Especials'#39';'
      ''
      '       SUSPEND;'
      '       TRENCAGRUP = NULL; NUM = 0; SUMA = 0;'
      ''
      '       /* ----------- ORTESIS ----------- */'
      '       C_FAMILIA=NULL; N_FAMILIA=NULL;'
      '       ESPRIMERREG=0;'
      '                                                /*FL.C_ORTESIS*/'
      
        '       FOR SELECT COF.C_familia, COF.N_familia, FC.C_ESTATCOBRO,' +
        ' FL.NETO'
      
        '       FROM (( FACCAP FC JOIN FACLIN         FL  ON FC.C_FACTURA' +
        '  = FL.C_FACTURA )'
      
        '                         JOIN CODIORTESIS   CO1 ON FL.C_ORTESIS ' +
        ' = CO1.C_ORTESIS)'
      
        '                         JOIN CODIORTESISFAM COF ON COF.C_FAMILI' +
        'A = CO1.C_FAMILIA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.C_CENTREFAC <> "04" )'
      '         AND ( FL.ORIGEN STARTING WITH "O" )'
      '         AND ( FL.ORIGEN <> "OA" )'
      '       ORDER BY 1'
      '       INTO :C_FAMILIA_ACT, :N_FAMILIA_ACT, :ESTATCOBRO, :NETO'
      '       DO BEGIN'
      ''
      
        '           IF (((C_FAMILIA_ACT = C_FAMILIA) AND (N_FAMILIA_ACT =' +
        ' N_FAMILIA)) OR (ESPRIMERREG=0)) THEN'
      '           BEGIN'
      '              SUMA=SUMA+NETO;'
      
        '              IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND ' +
        '(NETO < 0))'
      '              THEN NUM = NUM - 1;'
      '              ELSE NUM = NUM + 1;'
      '           END'
      '           ELSE BEGIN'
      '              /* PINTEM L'#39'ANTERIOR */'
      '              TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      
        '              IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Materia' +
        'l incontin'#232'ncia'#39';'
      
        '              IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Materia' +
        'l implantaci'#243#39';'
      
        '              IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes ' +
        'T'#233'cniques'#39';'
      
        '              IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres ' +
        'productes ortop'#232'dics'#39';'
      
        '              IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Element' +
        's Facturables'#39';'
      
        '              IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves ' +
        'Especials'#39';'
      ''
      '              SUSPEND;'
      '              TRENCAGRUP = NULL;'
      '              /* ACUMULEM L'#39'ACTUAL */'
      
        '              IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND ' +
        '(NETO < 0)) THEN NUM = - 1; ELSE NUM = 1;'
      '              SUMA=NETO;'
      '           END;'
      ''
      '           C_FAMILIA=C_FAMILIA_ACT; N_FAMILIA=N_FAMILIA_ACT;'
      '           ESPRIMERREG=1;'
      '       END;'
      '       /* CAL PINTAR L'#39#218'LTIM */'
      '       TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      
        '       IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material incon' +
        'tin'#232'ncia'#39';'
      
        '       IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material impla' +
        'ntaci'#243#39';'
      
        '       IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'cniqu' +
        'es'#39';'
      
        '       IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres product' +
        'es ortop'#232'dics'#39';'
      
        '       IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements Factu' +
        'rables'#39';'
      
        '       IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Especia' +
        'ls'#39';'
      '       SUSPEND;'
      '       TRENCAGRUP = NULL; NUM = 0; SUMA = 0;'
      '       '
      
        '       FOR SELECT COF.C_familia, COF.N_familia, COUNT(*), CAST(S' +
        'UM(IO2.PREUCOMPRA) AS NUMERIC(15,3))'
      '           FROM   INTERCONORTESISLIN IO2'
      
        '           JOIN   CODIORTESIS        CO1 ON IO2.C_ORTESIS  = CO1' +
        '.C_ORTESIS'
      
        '           JOIN   CODIORTESISFAM     COF ON COF.C_FAMILIA  = CO1' +
        '.C_FAMILIA'
      
        '           JOIN   INTERCONORTESISREG IR  ON IO2.C_INTERCON =  IR' +
        '.C_INTERCON AND IR.TIPUS = 206   /* //*BVG-ort */'
      ''
      
        '/*           WHERE  IO2.DATA_ENTREGA BETWEEN :DESDE AND :HASTA  ' +
        '    //*BVG-ort */'
      
        '           WHERE  IR.DATA BETWEEN :DESDE AND :HASTA             ' +
        ' /* //*BVG-ort */'
      '           AND    IO2.C_ESTATRAPPEL = 84'
      '           '
      '           GROUP  BY COF.C_familia, COF.N_familia'
      '           ORDER  BY 1'
      '           INTO  :C_FAMILIA, :N_FAMILIA, :NUM, :SUMA'
      '       DO BEGIN'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      ''
      
        '           IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'ncontin'#232'ncia'#39';'
      
        '           IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'mplantaci'#243#39';'
      
        '           IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'c' +
        'niques'#39';'
      
        '           IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres pro' +
        'ductes ortop'#232'dics'#39';'
      
        '           IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements F' +
        'acturables'#39';'
      
        '           IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Esp' +
        'ecials'#39';'
      ''
      '           SUSPEND;'
      ''
      '           TRENCAGRUP = NULL;'
      '           C_FAMILIA  = NULL;'
      '           N_FAMILIA  = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '       END;'
      ''
      '   END;'
      'END')
    Select.Strings = (
      
        'SELECT * FROM P_CODIORTESISFAM_LISTORTIEF("S", "01.01.2002", "TO' +
        'DAY")')
    Dic1 = FamOrtesis
    Dic1Name = 'COF'
    Abierta = False
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
    ModiFecha = 37635.5725699306
    Left = 200
    Top = 274
  end
  object AgrupaProv2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AgrupaProv2'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DESDE  DATE,'
      '  HASTA  DATE'
      ')'
      'RETURNS'
      '('
      '  TIPUSORTESIS VARCHAR (100),'
      '  TRENCAGRUP   CHAR,'
      '  C_FAMILIA    VARCHAR (3),'
      '  N_FAMILIA    VARCHAR (40),'
      '  C_PROV       CHAR    (10),'
      '  N_PROV       VARCHAR (100),'
      '  NUM          INTEGER,'
      '  SUMA         NUMERIC (15,3),'
      '  MITJA        NUMERIC (15,3)'
      ')'
      'AS'
      '  DECLARE VARIABLE ESTATCOBRO INTEGER;'
      '  DECLARE VARIABLE NETO NUMERIC (15,3);'
      '  DECLARE VARIABLE C_PROV_ACT CHAR(10);'
      '  DECLARE VARIABLE N_PROV_ACT VARCHAR(100);'
      '  DECLARE VARIABLE ESPRIMERREG INTEGER;'
      '  DECLARE VARIABLE C_FAMILIA_ACT VARCHAR(3);'
      '  DECLARE VARIABLE N_FAMILIA_ACT VARCHAR(100);'
      'BEGIN'
      ''
      '       /* -->>----->>-- STOCKS -->>------>>--'
      '       --<<-----<<-- STOCKS --<<------<<-- */'
      ''
      '       /* ----------- ELEMENTS FACTURABLES ----------- */'
      '       NUM=0; SUMA=0; ESPRIMERREG=0;C_PROV =NULL; N_PROV = NULL;'
      ''
      '       C_FAMILIA  = '#39'E00'#39';'
      '       N_FAMILIA  = '#39'Elements Facturables Varis'#39';'
      '                                       /*FL.C_ELEMENT*/'
      '       FOR SELECT FL.C_PROV, P.N_PROV, FC.C_ESTATCOBRO, FL.NETO'
      
        '       FROM (FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.' +
        'C_FACTURA)'
      
        '                  LEFT JOIN PROVEIDORS P  ON FL.C_PROV = P.C_PRO' +
        'V'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.ORIGEN = "E" )'
      '       ORDER BY 1,2'
      '       INTO :C_PROV_ACT, :N_PROV_ACT, :ESTATCOBRO, :NETO'
      '       DO BEGIN'
      
        '           IF (((C_PROV_ACT = C_PROV) AND (N_PROV_ACT=N_PROV)) O' +
        'R (ESPRIMERREG=0)) THEN'
      '           BEGIN'
      '             SUMA=SUMA+NETO;'
      
        '             IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (' +
        'NETO <0)) THEN NUM=NUM-1; ELSE NUM=NUM+1;'
      '           END'
      '           ELSE BEGIN'
      '             /* PINTEM L'#39'ANTERIOR */'
      
        '             IF (NUM = 0) THEN MITJA = 0; ELSE MITJA = (SUMA / N' +
        'UM);'
      ''
      '             TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '             TIPUSORTESIS = '#39'Elements Facturables'#39';'
      ''
      '             IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '             IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO ' +
        'ASSIGNAT * * '#39';'
      ''
      '             SUSPEND;'
      '             /* ACUMULEM L'#39'ACTUAL */'
      '             TRENCAGRUP = NULL;'
      
        '             IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (' +
        'NETO <0)) THEN NUM=-1; ELSE NUM=1;'
      '             SUMA=NETO;MITJA=NULL;'
      '           END;'
      ''
      '           C_PROV = C_PROV_ACT; N_PROV = N_PROV_ACT;'
      '           ESPRIMERREG=1;'
      '       END;'
      '       IF (NUM = 0) THEN MITJA = 0; ELSE MITJA = (SUMA / NUM);'
      '       TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '       TIPUSORTESIS = '#39'Elements Facturables'#39';'
      '       IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '       IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO ASSIGN' +
        'AT * * '#39';'
      '       SUSPEND;'
      '       TRENCAGRUP = NULL;'
      '       '
      '       /* ----------- PROVES ESPECIALS ----------- */'
      '       NUM=0; SUMA=0; ESPRIMERREG=0;C_PROV =NULL; N_PROV = NULL;'
      '       '
      '       C_FAMILIA  = '#39'P00'#39';'
      '       N_FAMILIA  = '#39'Proves Especials'#39';'
      ''
      '       FOR SELECT FL.C_PROV, P.N_PROV, FC.C_ESTATCOBRO, FL.NETO'
      
        '       FROM (FACCAP FC JOIN FACLIN     FL ON FC.C_FACTURA  = FL.' +
        'C_FACTURA)'
      
        '                  LEFT JOIN PROVEIDORS P  ON FL.C_PROV = P.C_PRO' +
        'V'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.ORIGEN = "P" )'
      '       ORDER BY 1,2'
      '       INTO :C_PROV_ACT, :N_PROV_ACT, :ESTATCOBRO, :NETO'
      '       DO BEGIN'
      
        '           IF (((C_PROV_ACT = C_PROV) AND (N_PROV_ACT=N_PROV)) O' +
        'R (ESPRIMERREG=0)) THEN'
      '           BEGIN'
      '             SUMA=SUMA+NETO;'
      
        '             IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (' +
        'NETO <0)) THEN NUM=NUM-1; ELSE NUM=NUM+1;'
      '           END'
      '           ELSE BEGIN'
      '             /* PINTEM L'#39'ANTERIOR */'
      
        '             IF (NUM = 0) THEN MITJA = 0; ELSE MITJA = (SUMA / N' +
        'UM);'
      ''
      '             TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '             TIPUSORTESIS = '#39'Proves Especials'#39';'
      ''
      '             IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '             IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO ' +
        'ASSIGNAT * * '#39';'
      ''
      '             SUSPEND;'
      '             /* ACUMULEM L'#39'ACTUAL */'
      '             TRENCAGRUP = NULL;'
      
        '             IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (' +
        'NETO <0)) THEN NUM=-1; ELSE NUM=1;'
      '             SUMA=NETO;MITJA=NULL;'
      '          END;'
      ''
      '          C_PROV = C_PROV_ACT; N_PROV = N_PROV_ACT;'
      '          ESPRIMERREG=1;'
      '       END;'
      '       IF (NUM = 0) THEN MITJA = 0; ELSE MITJA = (SUMA / NUM);'
      '       TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      '       TIPUSORTESIS = '#39'Proves Especials'#39';'
      '       IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '       IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO ASSIGN' +
        'AT * * '#39';'
      '       SUSPEND;'
      '       TRENCAGRUP = NULL;'
      ''
      '       /* >>--------->>-- ORTESIS -->>--------->> */'
      
        '       NUM=0; SUMA=0; ESPRIMERREG=0;C_PROV =NULL; N_PROV = NULL;' +
        ' C_FAMILIA=NULL; N_FAMILIA = NULL;'
      
        '                                                                ' +
        '     /*FL.C_ORTESIS*/'
      
        '       FOR SELECT COF.C_familia, COF.N_familia, FL.C_PROV, P.N_P' +
        'ROV, FC.C_ESTATCOBRO, FL.NETO'
      
        '       FROM (((FACCAP FC JOIN FACLIN         FL  ON FC.C_FACTURA' +
        '  = FL.C_FACTURA )'
      
        '                    LEFT JOIN PROVEIDORS P ON FL.C_PROV = P.C_PR' +
        'OV)'
      
        '                         JOIN CODIORTESIS   CO1 ON FL.C_ORTESIS ' +
        ' = CO1.C_ORTESIS)'
      
        '                         JOIN CODIORTESISFAM COF ON COF.C_FAMILI' +
        'A = CO1.C_FAMILIA'
      '       WHERE ( FC.DATA_FACTU BETWEEN :DESDE AND :HASTA )'
      '         AND ( FL.ORIGEN STARTING WITH "O" )'
      '         AND ( FL.ORIGEN <> "OA")'
      '       ORDER BY 1,2,3,4'
      
        '       INTO :C_FAMILIA_ACT, :N_FAMILIA_ACT, :C_PROV_ACT, :N_PROV' +
        '_ACT, :ESTATCOBRO, :NETO'
      '       DO BEGIN'
      
        '           IF (((C_PROV_ACT = C_PROV) AND (C_FAMILIA_ACT = C_FAM' +
        'ILIA)) OR  (ESPRIMERREG=0)) THEN'
      '           BEGIN'
      '             SUMA=SUMA+NETO;'
      
        '             IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (' +
        'NETO <0)) THEN NUM=NUM-1; ELSE NUM=NUM+1;'
      '           END'
      '           ELSE BEGIN'
      '             /* PINTEM L'#39'ANTERIOR */'
      
        '             IF (NUM = 0) THEN MITJA = 0; ELSE MITJA = (SUMA / N' +
        'UM);'
      ''
      '             TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      ''
      
        '             IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material' +
        ' incontin'#232'ncia'#39';'
      
        '             IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material' +
        ' implantaci'#243#39';'
      
        '             IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T' +
        #233'cniques'#39';'
      
        '             IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres p' +
        'roductes ortop'#232'dics'#39';'
      
        '             IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements' +
        ' Facturables'#39';'
      
        '             IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves E' +
        'specials'#39';'
      ''
      '             IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '             IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO ' +
        'ASSIGNAT * * '#39';'
      ''
      '             SUSPEND;'
      '             /* GUARDEM L'#39'ANTERIOR*/'
      '             TRENCAGRUP = NULL;'
      
        '             IF ((ESTATCOBRO >= 50) AND (ESTATCOBRO <= 59) AND (' +
        'NETO <0)) THEN NUM=-1; ELSE NUM=1;'
      '             SUMA=NETO;MITJA=NULL;'
      '           END;'
      '           C_PROV = C_PROV_ACT; N_PROV = N_PROV_ACT;'
      '           C_FAMILIA = C_FAMILIA_ACT; N_FAMILIA = N_FAMILIA_ACT;'
      '           ESPRIMERREG=1;'
      '       END;'
      '       IF (NUM = 0) THEN MITJA = 0; ELSE MITJA = (SUMA / NUM);'
      '       TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      
        '       IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material incon' +
        'tin'#232'ncia'#39';'
      
        '       IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material impla' +
        'ntaci'#243#39';'
      
        '       IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'cniqu' +
        'es'#39';'
      
        '       IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres product' +
        'es ortop'#232'dics'#39';'
      
        '       IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements Factu' +
        'rables'#39';'
      
        '       IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Especia' +
        'ls'#39';'
      '       IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '       IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO ASSIGN' +
        'AT * * '#39';'
      '       SUSPEND;'
      
        '       TRENCAGRUP = NULL; C_PROV     = NULL; N_PROV     = NULL; ' +
        ' C_FAMILIA  = NULL;'
      
        '       N_FAMILIA  = NULL; NUM        = NULL; SUMA       = NULL; ' +
        ' MITJA      = NULL;'
      ''
      ''
      
        '       FOR SELECT COF.C_familia, COF.N_familia, IO2.C_PROV, P.N_' +
        'PROV, COUNT(*), SUM(IO2.PREUCOMPRA)'
      ''
      '           FROM INTERCONORTESISLIN  IO2'
      
        '           JOIN INTERCONORTESISREG   IR ON IO2.C_INTERCON =  IR.' +
        'C_INTERCON AND IR.TIPUS = 206   /* //*BVG-ort */'
      
        '           LEFT OUTER JOIN PROVEIDORS P ON IO2.C_PROV     =   P.' +
        'C_PROV'
      
        '           JOIN CODIORTESIS         CO1 ON IO2.C_ORTESIS  = CO1.' +
        'C_ORTESIS'
      
        '           JOIN CODIORTESISFAM      COF ON COF.C_FAMILIA  = CO1.' +
        'C_FAMILIA'
      '           '
      
        '/*           WHERE IO2.DATA_ENTREGA BETWEEN :DESDE AND :HASTA   ' +
        ' //*BVG-ort */'
      
        '           WHERE IR.DATA BETWEEN :DESDE AND :HASTA            /*' +
        ' //*BVG-ort */'
      '           AND   IO2.C_ESTATRAPPEL = 84'
      
        '       GROUP BY COF.C_familia, COF.N_familia, IO2.C_PROV, P.N_PR' +
        'OV'
      '       ORDER BY 1'
      
        '       INTO :C_FAMILIA, :N_FAMILIA, :C_PROV, :N_PROV, :NUM, :SUM' +
        'A'
      '       DO BEGIN'
      '           IF (NUM = 0)'
      '           THEN MITJA = 0;'
      '           ELSE MITJA = (SUMA / NUM);'
      ''
      '           TRENCAGRUP = F_LEFT(C_FAMILIA, 1);'
      ''
      
        '           IF (TRENCAGRUP = '#39'A'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'ncontin'#232'ncia'#39';'
      
        '           IF (TRENCAGRUP = '#39'B'#39') THEN TIPUSORTESIS = '#39'Material i' +
        'mplantaci'#243#39';'
      
        '           IF (TRENCAGRUP = '#39'C'#39') THEN TIPUSORTESIS = '#39'Ajudes T'#233'c' +
        'niques'#39';'
      
        '           IF (TRENCAGRUP = '#39'D'#39') THEN TIPUSORTESIS = '#39'Altres pro' +
        'ductes ortop'#232'dics'#39';'
      
        '           IF (TRENCAGRUP = '#39'E'#39') THEN TIPUSORTESIS = '#39'Elements F' +
        'acturables'#39';'
      
        '           IF (TRENCAGRUP = '#39'P'#39') THEN TIPUSORTESIS = '#39'Proves Esp' +
        'ecials'#39';'
      ''
      '           IF (C_PROV IS NULL) THEN C_PROV = '#39' *'#39';'
      
        '           IF (N_PROV IS NULL) THEN N_PROV = '#39' * PROVE'#207'DOR NO AS' +
        'SIGNAT * * '#39';'
      ''
      '           SUSPEND;'
      ''
      '           C_PROV     = NULL;'
      '           N_PROV     = NULL;'
      '           TRENCAGRUP = NULL;'
      '           C_FAMILIA  = NULL;'
      '           N_FAMILIA  = NULL;'
      '           NUM        = NULL;'
      '           SUMA       = NULL;'
      '           MITJA      = NULL;'
      '       END;'
      ''
      ''
      'END')
    Select.Strings = (
      
        'SELECT * FROM P_CODIORTESISFAM_LISTORTIEF("S", "01.01.2002", "TO' +
        'DAY")')
    Dic1 = FamOrtesis
    Dic1Name = 'COF'
    Abierta = False
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
    ModiFecha = 37635.5725703935
    Left = 284
    Top = 274
  end
  object insEntrega: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'insEntrega'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA    INTEGER,'
      '         DATA1       DATE,'
      '         PREUVENTA   DOUBLE PRECISION,'
      '         ESTAT       INTEGER,'
      '         ESTATFAC    SMALLINT,'
      '         ESTATFAC2   SMALLINT,'
      '         ESTATRAPPEL VARCHAR(15),'
      '         PROV        CHAR(10),'
      '         ORTESIS     VARCHAR(250),'
      '         INTERCON    INTEGER,'
      '         DATA_COMANDA DATE,'
      '         ORDEN        INTEGER,'
      '         DATA_ENTREGA DATE'
      '         )'
      'AS'
      '    DECLARE VARIABLE CONTA INTEGER;'
      'BEGIN'
      #9
      
        '    FOR SELECT I.C_INTERCON,I.C_HISTORIA, I.DATA1, IOL.PREUVENTA' +
        ', I.ESTAT, IOL.ESTATFAC, IOL.C_ESTATFAC2, IOL.C_ESTATRAPPEL, IOL' +
        '.C_PROV,'
      
        '               IOL.N_ORTESIS, IOL.DATA_COMANDA, IOL.DATA_COMANDA' +
        ' + 30'
      '    FROM INTERCON I'
      '    JOIN INTERCONORTESISLIN IOL ON I.C_INTERCON = IOL.C_INTERCON'
      '    WHERE I.C_TIPUS = "ORTESIS" AND I.ESTAT = 11'
      '    AND IOL.ESTATFAC BETWEEN 51 AND 79'
      '    AND IOL.C_ESTATFAC2 BETWEEN 50 AND 80'
      '    AND I.DATA1 BETWEEN :DATAI AND :DATAF'
      '    ORDER BY I.DATA1'
      
        '    INTO :INTERCON, :HISTORIA, :DATA1, :PREUVENTA, :ESTAT, :ESTA' +
        'TFAC, :ESTATFAC2, :ESTATRAPPEL, :PROV, :ORTESIS, :DATA_COMANDA, ' +
        ':DATA_ENTREGA'
      '    DO BEGIN'
      '        /* Updatar: data entrega = data comanda + 30 dies'
      '                    Estat intercon = 46 - ortesis entregada'
      
        '                    Insertar registre a INTERCONORTESISREG amb u' +
        'suari Q11-A CANO tipus 206 (ortesis entregada) a data entrega*/'
      '        UPDATE INTERCON SET ESTAT = 46'
      '        WHERE C_INTERCON = :INTERCON;'
      ''
      '        SELECT COUNT(*) FROM INTERCONORTESISREG'
      '        WHERE C_INTERCON = :INTERCON'
      '        AND TIPUS=206'
      '        INTO :CONTA;'
      '        '
      
        '        /* INICIALITZEM L'#39'ORDRE PQ SI EL VEIEM NULL AL REPORT DE' +
        ' SORTIDA SABREM QUE NO L'#39'HEM INSERTAT */'
      '        ORDEN=NULL;'
      '        '
      
        '        /* NOM'#201'S SI NO T'#201' EL REGISTRE 206 L'#39'INSERTEM I RETROCEDI' +
        'M L'#39'ESTAT RAPPEL */'
      '        IF (CONTA = 0) THEN'
      '        BEGIN'
      '            SELECT MAX(ORDRE) FROM INTERCONORTESISREG'
      '            WHERE C_INTERCON = :INTERCON'
      '            INTO :ORDEN;'
      '        '
      '            ORDEN = ORDEN +1;'
      '        '
      
        '            INSERT INTO INTERCONORTESISREG (C_INTERCON, ORDRE, T' +
        'IPUS, C_USUARI, DATA, TEXT)'
      
        '            VALUES (:INTERCON, :ORDEN, 206, '#39'Q11'#39', :DATA_ENTREGA' +
        ', NULL);'
      '        '
      '            /* CANVIEM ESTAT RAPPEL A COM ESTAVA */'
      
        '            UPDATE INTERCONORTESISLIN SET C_ESTATRAPPEL = :ESTAT' +
        'RAPPEL'
      '            WHERE C_INTERCON = :INTERCON;'
      '        END;'
      '        '
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = InterconOrtesisReg
    Dic1Name = 'interconortesisreg'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 532
    Top = 16
  end
  object T_Intercon_EntregaOrtesi: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'EntregaOrtesi'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE VALIDACIO    CHAR(1);'
      'DECLARE VARIABLE PRESENCIAL   CHAR(1);'
      'DECLARE VARIABLE PRESTACIO    VARCHAR(4);'
      '/*DECLARE VARIABLE MOTIU        INTEGER;*/'
      'DECLARE VARIABLE MODALITAT    SMALLINT;'
      'DECLARE VARIABLE ESPECIALITAT VARCHAR(2);'
      'DECLARE VARIABLE EXISTEIX     INTEGER;'
      'DECLARE VARIABLE NOM          VARCHAR(20);'
      'DECLARE VARIABLE COGNOM1      VARCHAR(20);'
      'DECLARE VARIABLE COGNOM2      VARCHAR(20);'
      'DECLARE VARIABLE TELEFON      VARCHAR(10);'
      'DECLARE VARIABLE C_UNITAT     SMALLINT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '   '
      
        '      /* Si l'#39'estat de petici'#243' d'#39'una ortesi, passa a "entregada ' +
        'i pendent de validar", hem de generar videoconfer'#232'ncia de valida' +
        'ci'#243' d'#39'ortesi */'
      '      IF ((OLD.ESTAT <> 48) AND (NEW.ESTAT = 48)) THEN'
      '      BEGIN'
      
        '            SELECT VALIDACIO, PRESENCIAL FROM INTERCONORTESIS WH' +
        'ERE C_INTERCON = NEW.C_INTERCON INTO :VALIDACIO, :PRESENCIAL;'
      '                  '
      
        '            IF (PRESENCIAL = '#39'S'#39') THEN BEGIN PRESTACIO = '#39'2002'#39';' +
        ' /*MOTIU = 85;*/ MODALITAT = 83; END;'
      
        '                                  ELSE BEGIN PRESTACIO = '#39'6002'#39';' +
        ' /*MOTIU = 84;*/ MODALITAT = 81; END;'
      '                                  '
      
        '            /* Si s'#39'ha de validar, generem la visita corresponen' +
        't */'
      '            IF (VALIDACIO = "S") THEN'
      '            BEGIN'
      
        '                  /* Mirem si el pacient t'#233' algun tractament act' +
        'iu (llarg) amb algun metge de la mateixa especialitat que el pre' +
        'scriptor */'
      
        '                  SELECT C_ESPECIAL FROM METGES WHERE CODI = NEW' +
        '.C_METGE1 INTO :ESPECIALITAT;'
      '                  '
      '                  SELECT COUNT(*)'
      '                  FROM   TRACTAMENTS T'
      '                  JOIN   METGES M ON T.C_COORDINADOR = M.CODI'
      '                  WHERE  T.C_HISTORIA = NEW.C_HISTORIA'
      
        '                  AND   (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "' +
        'TODAY")'
      '                  AND    M.C_ESPECIAL = :ESPECIALITAT'
      '                  INTO  :EXISTEIX;'
      '                  '
      '                  /* Si no en t'#233' cap... */'
      '                  IF (EXISTEIX = 0) THEN'
      '                  BEGIN'
      
        '                        /* ... mirem si ja hi ha una visita/vide' +
        'oconfer'#232'ncia programada amb aquest motiu i amb el mateix metge'
      
        '                               - si ara volen presencial i no ex' +
        'isteix una programada presencial, la generem'
      
        '                               - si ara volen una no presencial ' +
        'per'#242' ja existeix una programada presencial, no cal generar la no' +
        ' presencial'
      '                        */'
      '                        SELECT COUNT(*)'
      '                        FROM   ESPERA E'
      
        '                        JOIN   DRETSMOTIU D ON E.C_MOTIU = D.C_M' +
        'OTIU AND D.C_DRET = '#39'X15'#39' /* atenci'#243' per validaci'#243' d'#39'ortesi */'
      '                        WHERE  E.C_HISTORIA = NEW.C_HISTORIA'
      '                        AND    E.C_COORDINADOR = NEW.C_METGE1'
      
        '/*                        AND   (E.C_MOTIU = 85 OR :MOTIU = 84) ' +
        '                   /* aix'#242' for'#231'a que la programada sigui presenc' +
        'ial o b'#233' que la que demanen ara no ho sigui */'
      
        '                        AND   (E.C_MODALITAT = 83 OR :MODALITAT ' +
        '= 81)            /* aix'#242' for'#231'a que la programada sigui presencia' +
        'l o b'#233' que la que demanen ara no ho sigui */'
      
        '                        AND   (E.C_ESTAT = 15 OR E.DATA_PREINGRE' +
        'S >= "TODAY" )   /* pendent de programar o programada */'
      '                        AND    E.EXCLOS = "N"'
      '                        INTO  :EXISTEIX;'
      ''
      '                        /* Si no n'#39'hi ha, la generem */'
      '                        IF (EXISTEIX = 0) THEN'
      '                        BEGIN'
      
        '                              SELECT NOMBRE, APELLIDO1, APELLIDO' +
        '2, TELEFONO, UNITAT FROM FILIACIO WHERE NUM_HIST = NEW.C_HISTORI' +
        'A INTO :NOM, :COGNOM1, :COGNOM2, :TELEFON, :C_UNITAT;'
      '                              '
      
        '                              /* INSERT INTO ESPERA (C_ESPERA,  ' +
        '           C_HISTORIA, NOM,   COGNOM1,  COGNOM2,  TELEFON,  C_UN' +
        'ITAT, C_PRESTACIO, C_MOTIU,  C_COORDINADOR, C_ESTAT, DATA_INCLUS' +
        'IO)'
      
        '                              VALUES (GEN_ID(CONTALLISTAESPERA, ' +
        '1), NEW.C_HISTORIA, :NOM, :COGNOM1, :COGNOM2, :TELEFON, :C_UNITA' +
        'T,  :PRESTACIO,  :MOTIU,  NEW.C_METGE1,      15,       "TODAY");' +
        ' */'
      
        '                              INSERT INTO ESPERA (C_ESPERA,     ' +
        '        C_HISTORIA, NOM,   COGNOM1,  COGNOM2,  TELEFON,  C_UNITA' +
        'T, C_PRESTACIO, C_MOTIU, C_MODALITAT, C_COORDINADOR, C_ESTAT, DA' +
        'TA_INCLUSIO)'
      
        '                              VALUES (GEN_ID(CONTALLISTAESPERA, ' +
        '1), NEW.C_HISTORIA, :NOM, :COGNOM1, :COGNOM2, :TELEFON, :C_UNITA' +
        'T,  :PRESTACIO,      85,  :MODALITAT,  NEW.C_METGE1,      15,   ' +
        '    "TODAY");'
      '                        END'
      '                  END'
      '            END'
      '      END'
      '      '
      '   END'
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
    Left = 360
    Top = 64
  end
end
