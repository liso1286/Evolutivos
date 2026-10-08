object wDataCodis: TwDataCodis
  OldCreateOrder = False
  Left = 692
  Top = 240
  Height = 584
  Width = 597
  object Festius: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Festa'
        NombreDB = 'Festa'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Data'
        NombreDB = 'Data'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Dias Festius'
    NombreTabla = 'Festius'
    Organiza = tbBase
    CamposVer.Strings = (
      'Data')
    IndiceVer = 'Data'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7694405556
    Left = 184
    Top = 72
  end
  object Poblacio: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Prov'#237'ncia'
        NombreDB = 'C_Provincia'
        Longitud = 2
        Consulta = 'Provincia'
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Codi de la prov'#237'ncia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Postal'
        NombreDB = 'CPostal'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Codi Postal de la poblaci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Residencia'
        NombreDB = 'C_Residencia'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Codi de Residencia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Poblaci'#243
        NombreDB = 'N_Poblacio'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Nom de la poblaci'#243' en Catal'#224
      end
      item
        Aplica = kcMODELS
        Nombre = 'Poblaci'#243'2'
        NombreDB = 'N_Poblacion2'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Nom de la poblaci'#243' en Castell'#224
      end>
    Indices = <
      item
        Nombre = 'Primari'
        NombreDB = 'Primari'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Postal'
          'Prov'#237'ncia'
          'Poblaci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Codi Postal'
        NombreDB = 'CP'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Postal')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Alfabetic'
        NombreDB = 'Alfabetic'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Poblaci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Provincia'
        NombreDB = 'Provincia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Prov'#237'ncia')
        Tipo = tiForaneo
        ForaneoDic = Provincia
        ForaneoCampos.Strings = (
          'Codi Prov'#237'ncia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Provincia'
        Master = Provincia
        BuscaOrigen.Strings = (
          'Prov'#237'ncia')
        CopiarOrigen.Strings = (
          'Prov'#237'ncia')
        CopiarMaster.Strings = (
          'Codi Prov'#237'ncia')
        BuscaMaster.Strings = (
          'Codi Prov'#237'ncia')
      end>
    Nombre = 'Poblacio'
    NombreTabla = 'POBLACIO'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Postal'
      'Prov'#237'ncia'
      'N'#186' Residencia'
      'Poblaci'#243)
    IndiceVer = 'Alfabetic'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.769441713
    Left = 326
    Top = 16
  end
  object Provincia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Prov'#237'ncia'
        NombreDB = 'C_Provincia'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Dos digits que identifiquen la prov'#237'ncia (08 -> Barcelona)'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prov'#237'ncia'
        NombreDB = 'N_Provincia'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Nom de la prov'#237'ncia en Catal'#224
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prov'#237'ncia2'
        NombreDB = 'N_Provincia2'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Nom de la prov'#237'ncia en Castell'#224
      end>
    Indices = <
      item
        Nombre = 'Codi'
        NombreDB = 'Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Prov'#237'ncia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Alfabetic'
        NombreDB = 'Alfabetic'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Prov'#237'ncia')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Provincia'
    NombreTabla = 'PROVINCIA'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Prov'#237'ncia'
      'Prov'#237'ncia')
    IndiceVer = 'Alfabetic'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7694425231
    Left = 255
    Top = 16
  end
  object Pais: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Pa'#237's'
        NombreDB = 'C_Pais'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = '34'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom Pa'#237's'
        NombreDB = 'N_Pais'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Nom en Catal'#224' del Pa'#237's'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom Pa'#237's2'
        NombreDB = 'N_Pais2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Nom en Espanyol del Pa'#237's'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi SCS'
        NombreDB = 'c_iso'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi ISO alfanum'#232'ric'
        NombreDB = 'C_ISO2'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Prefix telef'#242'nic'
        NombreDB = 'Prefix'
        Longitud = 5
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
          'Codi Pa'#237's')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Alfabetic'
        NombreDB = 'Alfabetic'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Nom Pa'#237's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Pais'
    NombreTabla = 'PAIS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Pa'#237's'
      'Nom Pa'#237's'
      'Codi SCS')
    IndiceVer = 'Alfabetic'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7694433333
    Left = 184
    Top = 16
  end
  object Hospital: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Hospital'
        NombreDB = 'C_Hospital'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'CODI'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre'
        NombreDB = 'N_Hospital'
        Longitud = 62
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Poblaci'#243
        NombreDB = 'Poblacio'
        Longitud = 44
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat Productiva'
        NombreDB = 'C_UP'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk amb ups'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus UP'
        NombreDB = 'Tipus_UP'
        Longitud = 2
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
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
        Nombre = 'Es centre de dany cerebral'
        NombreDB = 'DANY_CEREBRAL'
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
          'N'#186' Hospital')
        Tipo = tiPrimario
        Unico = True
        Descending = False
      end
      item
        Nombre = 'ALFABETIC'
        NombreDB = 'ALFABETIC'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Centre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Up'
        Master = wDataFactu.Delega
        BuscaOrigen.Strings = (
          'Unitat Productiva')
        CopiarOrigen.Strings = (
          'Unitat Productiva')
        CopiarMaster.Strings = (
          'N'#186' Delegaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Delegaci'#243)
        WhereFiltro = 'C_CentreFac="04" and C_Client = "UP"'
      end
      item
        Nombre = 'Poblacio'
        Master = Poblacio
        BuscaOrigen.Strings = (
          'Poblaci'#243)
        CopiarOrigen.Strings = (
          'Poblaci'#243)
        CopiarMaster.Strings = (
          'Poblaci'#243)
        BuscaMaster.Strings = (
          'Poblaci'#243)
      end>
    Nombre = 'Hospital'
    NombreTabla = 'HOSPITAL'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Hospital'
      'Codi'
      'Centre'
      'Unitat Productiva'
      'Tipus UP'
      'Actiu'
      'Poblaci'#243
      'Es centre de dany cerebral')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7694446181
    Left = 107
    Top = 72
  end
  object EstatCivil: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Estat Civil'
        NombreDB = 'C_Estat'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Catala'
        NombreDB = 'N_Estat'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Castella'
        NombreDB = 'N_Estat2'
        Longitud = 20
        zType = tcIB_Varchar
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
          'Estat Civil')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Estats Civils'
    NombreTabla = 'EstatCivil'
    Organiza = tbBase
    CamposVer.Strings = (
      'Estat Civil'
      'Catala')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7694454282
    Left = 38
    Top = 72
  end
  object CodiVia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'C_Via'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Via'
        NombreDB = 'N_Via'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Via2'
        NombreDB = 'N_Via2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi CatSalut'
        NombreDB = 'C_Codi'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Via'
        NombreDB = 'Via'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi')
        Tipo = tiPrimario
        Unico = True
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Codis Via'
    NombreTabla = 'CodiVia'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Via'
      'Via2')
    IndiceVer = 'Via'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7694462384
    Left = 38
    Top = 16
  end
  object CodiICD: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di'
        NombreDB = 'C_ICD'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'N_ICD'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'B: baixa, N: actiu'
        ValidChars = 'BN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Indicador diagn'#242'stic inespec'#237'fic'
        NombreDB = 'I_DIAGINES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pare'
        NombreDB = 'PARE'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'pare del subcodi ICD'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resum'
        NombreDB = 'R_ICD'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Etiqueta'
        NombreDB = 'E_ICD'
        Longitud = 24
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal'
        NombreDB = 'N_GUTTMANN'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = #233's la nostra descripci'#243
      end
      item
        Aplica = kcCaracter
        Nombre = 'RIC'
        NombreDB = 'RIC'
        Longitud = 15
        Consulta = 'RIC'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Rehabilitation Impairmanet Codes '
      end
      item
        Aplica = kcCaracter
        Nombre = 'Grup limitaci'#243' funcional'
        NombreDB = 'GLF'
        Longitud = 15
        Consulta = 'GLF'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = #201's freq'#252'ent'
        NombreDB = 'Frequent'
        Longitud = 1
        Consulta = 'frequent'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Paraules clau'
        NombreDB = 'Paraules'
        Longitud = 2000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'diagn'#242'stic/procediment/codiE'
        ValidChars = 'DPE'
      end
      item
        Aplica = kcMODELS
        Nombre = #201's causa de mort'
        NombreDB = 'CausaMort'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'POA exempt'
        NombreDB = 'POA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'E si '#233's exempt'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Puntua pel CMG'
        NombreDB = 'CMGPUNTUA'
        Longitud = 8
        Consulta = 'CMG'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dispositiu H'
        NombreDB = 'DispositiuH'
        Longitud = 15
        Consulta = 'dispH'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'CMBD: lloc on es realitza un procediment (pacients ingressats)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dispositiu A'
        NombreDB = 'DispositiuA'
        Longitud = 15
        Consulta = 'dispA'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'CMBD: lloc on es realitza un procediment (pacients ambulatoris)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Freq'#252'ent per a...'
        NombreDB = 'C_Frequent'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci en castell'
        NombreDB = 'N_ICD2'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VersioCIM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
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
          'Versi'#243' CIM'
          'C'#243'di')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'baixa'
        NombreDB = 'baixa'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Baixa')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'frequent'
        NombreDB = 'frequent'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          #201's freq'#252'ent')
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
        Nombre = 'freq'
        NombreDB = 'freq'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Freq'#252'ent per a...')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'CodiICD'
        NombreDB = 'CodiICD'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C'#243'di')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'RIC'
        Master = RIC
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
        Master = GLF
        BuscaOrigen.Strings = (
          'Grup limitaci'#243' funcional'
          'RIC')
        CopiarOrigen.Strings = (
          'Grup limitaci'#243' funcional'
          'RIC')
        CopiarMaster.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
        BuscaMaster.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
      end
      item
        Nombre = 'frequent'
        Master = CodiCamps
        BuscaOrigen.Strings = (
          #201's freq'#252'ent')
        CopiarOrigen.Strings = (
          #201's freq'#252'ent')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ICD.FREQUENT'#39
      end
      item
        Nombre = 'CMG'
        Master = CodiCamps
        BuscaOrigen.Strings = (
          'Puntua pel CMG')
        CopiarOrigen.Strings = (
          'Puntua pel CMG')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'CMG.PUNTUA'#39
      end
      item
        Nombre = 'dispH'
        Master = CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Dispositiu H')
        CopiarOrigen.Strings = (
          'Dispositiu H')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CMBD.DISPOSITIU'#39
      end
      item
        Nombre = 'dispA'
        Master = CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Dispositiu A')
        CopiarOrigen.Strings = (
          'Dispositiu A')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CMBD.DISPOSITIU'#39
      end>
    Nombre = 'Codis ICD'
    NombreTabla = 'CodiICD'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di'
      'Descripci'#243
      'Baixa'
      'Indicador diagn'#242'stic inespec'#237'fic'
      'Pare'
      'Resum'
      'Etiqueta'
      'Literal'
      'Grup limitaci'#243' funcional'
      'RIC'
      #201's freq'#252'ent'
      'Tipus'
      #201's causa de mort'
      'POA exempt'
      'Dispositiu H'
      'Dispositiu A'
      'Freq'#252'ent per a...'
      'Versi'#243' CIM')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693384375
    Left = 38
    Top = 434
  end
  object CodiCamps: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di'
        NombreDB = 'C_Codi'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Codi'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' 2'
        NombreDB = 'N_Codi2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resum'
        NombreDB = 'R_Codi'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Params'
        NombreDB = 'Params'
        Longitud = 254
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 8
        zType = tcIB_Smallint
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
          'Tipus'
          'C'#243'di')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'GrupCodis'
        NombreDB = 'GrupCodis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiForaneo
        ForaneoDic = GrupCodiCamps
        ForaneoCampos.Strings = (
          'Tipus')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'N_Codi'
        NombreDB = 'N_Codi'
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
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'resum'
        NombreDB = 'resum'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Resum')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = GrupCodiCamps
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end>
    Nombre = 'Codi Camps'
    NombreTabla = 'CodiCamps'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di'
      'Descripci'#243
      'Ordre'
      'Descripci'#243' 2'
      'Resum'
      'Tipus')
    IndiceVer = 'Ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693397106
    Left = 131
    Top = 136
  end
  object Regions: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Regio'
        NombreDB = 'C_Regio'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Regio Sanitaria'
        NombreDB = 'N_Regio'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = True
      end>
    Indices = <
      item
        Nombre = 'Regio'
        NombreDB = 'Regio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Regio')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Regi'#243' Sanitaria'
    NombreTabla = 'Regions'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Regio'
      'Regio Sanitaria')
    IndiceVer = 'Regio'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7694468171
    Left = 107
    Top = 16
  end
  object GrupCodiCamps: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' del Tipus'
        NombreDB = 'N_Tipus'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Supergrup'
        NombreDB = 'G_Tipus'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'opcional, per filtrar per grups m'#233's amplis'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'ordre dins de cada supergrup'
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
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
        Nombre = 'Supergrup'
        NombreDB = 'supergrup'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Supergrup'
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'GrupCodiCamps'
    NombreTabla = 'GrupCodiCamps'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus'
      'Descripci'#243' del Tipus'
      'Supergrup')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693404167
    Left = 38
    Top = 136
  end
  object MetgePresta: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Prestacio'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'dig Usuari'
        NombreDB = 'Codi'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Max Visites'
        NombreDB = 'MAX_VISITES'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Minuts'
        NombreDB = 'MINUTS'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia'
        NombreDB = 'Dia'
        Longitud = 1
        zType = tcIB_Smallint
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
          'C'#243'dig Usuari'
          'Prestaci'#243)
        Tipo = tiPrimario
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
      end
      item
        Nombre = 'Metge'
        NombreDB = 'Metge'
        EsVirtual = False
        DelOnCascade = False
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
        Nombre = 'List1'
        NombreDB = 'List1'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Prestaci'#243
          'C'#243'dig Usuari')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'C'#243'dig Usuari')
        CopiarOrigen.Strings = (
          'C'#243'dig Usuari')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        RefreshOnCascade = True
      end
      item
        Nombre = 'Prestacio'
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
    Nombre = 'MetgePresta'
    NombreTabla = 'MetgePresta'
    Organiza = tbBase
    CamposVer.Strings = (
      'Prestaci'#243
      'C'#243'dig Usuari'
      'Dia')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693413426
    Left = 326
    Top = 72
  end
  object UnitatM: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'C_UNITATM'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'N_UNITATM'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat Administrativa'
        NombreDB = 'C_UNITATA'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat RM'
        NombreDB = 'C_UNITATRM'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Baixa'
        NombreDB = 'BAIXA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = #39'N'#39': actiu; '#39'B'#39': baixa.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup'
        NombreDB = 'C_GRUP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' grup'
        NombreDB = 'N_GRUP'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Diagnostic_UM'
        NombreDB = 'Diagnostic_UM'
        Longitud = 3
        Consulta = 'diag_um'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Lesi'#243' REC'
        NombreDB = 'Lesio_REC'
        Longitud = 2
        Consulta = 'LesioREC'
        zType = tcIB_Smallint
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
          'Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'LesioREC'
        NombreDB = 'LesioREC'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Lesi'#243' REC')
        Tipo = tiForaneo
        ForaneoDic = wDataCurs.REC_Lesions
        ForaneoCampos.Strings = (
          'Codi lesi'#243' REC')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'diag_um'
        Master = CodiCamps
        BuscaOrigen.Strings = (
          'Diagnostic_UM')
        CopiarOrigen.Strings = (
          'Diagnostic_UM')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'DIAGNOSTIC_UM'#39
      end
      item
        Nombre = 'LesioREC'
        Master = wDataCurs.REC_Lesions
        BuscaOrigen.Strings = (
          'Lesi'#243' REC')
        CopiarOrigen.Strings = (
          'Lesi'#243' REC')
        CopiarMaster.Strings = (
          'Codi lesi'#243' REC')
        BuscaMaster.Strings = (
          'Codi lesi'#243' REC')
      end>
    Nombre = 'Unitatm'
    NombreTabla = 'UNITATM'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Nom'
      'Unitat Administrativa'
      'Unitat RM'
      'Baixa'
      'Grup'
      'Diagnostic_UM')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693421528
    Left = 38
    Top = 378
  end
  object CodiCampsAlfa: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_Codi'
        NombreDB = 'C_Codi'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = '***'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Codi'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' 2'
        NombreDB = 'N_Codi2'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resum'
        NombreDB = 'R_Codi'
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
        Aplica = kcSiNo
        Nombre = 'T'#233' o '#233's fict'#237'cia'
        NombreDB = 'Ficticia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'RFN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Grup de l'#39'activitat'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'grup'
        zType = tcIB_Varchar
        zNotNull = False
        zDefault = '**'
      end>
    Indices = <
      item
        Nombre = 'codi'
        NombreDB = 'codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus'
          'C_Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'GrupCodis'
        NombreDB = 'GrupCodis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiForaneo
        ForaneoDic = GrupCodiCampsAlfa
        ForaneoCampos.Strings = (
          'Tipus')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'N_Codi'
        NombreDB = 'N_Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Descripci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = GrupCodiCampsAlfa
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end
      item
        Nombre = 'grup'
        Master = wDataBasics.Grups
        BuscaOrigen.Strings = (
          'Grup de l'#39'activitat')
        CopiarOrigen.Strings = (
          'Grup de l'#39'activitat')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end>
    Nombre = 'Codi Camps Alfa'
    NombreTabla = 'CodiCampsAlfa'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Codi'
      'Descripci'#243
      'Descripci'#243' 2'
      'Resum')
    IndiceVer = 'codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693433102
    Left = 131
    Top = 192
  end
  object GrupCodiCampsAlfa: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' del Tipus'
        NombreDB = 'N_Tipus'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'GrupCodiCampsAlfa'
    NombreTabla = 'GrupCodiCampsAlfa'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus'
      'Descripci'#243' del Tipus')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693438889
    Left = 38
    Top = 192
  end
  object CodiStock: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Stock'
        NombreDB = 'C_Stock'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Stock'
        NombreDB = 'N_Stock'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumMonetario
        Nombre = 'PVP'
        NombreDB = 'PVP'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Desglos'
        NombreDB = 'Desglos'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Duraci'#243
        NombreDB = 'Duracio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumMonetario
        Nombre = 'PVP_Servei'
        NombreDB = 'PVP_Servei'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi Servei'
        NombreDB = 'C_Servei'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Servei'
        NombreDB = 'N_Servei'
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
          'N'#186' Stock')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Codis Stock'
    NombreTabla = 'CodiStock'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Stock'
      'Nom Stock'
      'PVP'
      'Desglos'
      'Duraci'#243
      'PVP_Servei')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.769345625
    Left = 255
    Top = 72
  end
  object ProcDiag: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi ICD procediment'
        NombreDB = 'C_PROC'
        Longitud = 15
        Consulta = 'proc'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi ICD diagn'#242'stic'
        NombreDB = 'C_DIAG'
        Longitud = 15
        Consulta = 'diag'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VersioCIM'
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
          'Codi ICD procediment'
          'Codi ICD diagn'#242'stic')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'proc'
        Master = CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi ICD procediment')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi ICD procediment')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
      end
      item
        Nombre = 'diag'
        Master = CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi ICD diagn'#242'stic')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi ICD diagn'#242'stic')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
      end>
    Nombre = 'Procediments-Diagn'#242'stics ICD'
    NombreTabla = 'ICDProcDiag'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi ICD procediment'
      'Codi ICD diagn'#242'stic')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 184
    Top = 434
  end
  object CodiICF: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi ICF'
        NombreDB = 'C_ICF'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'PK codi del d'#232'ficit'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243' ICF'
        NombreDB = 'N_ICF'
        Longitud = 120
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'descripci'#243' del d'#232'ficit'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup ICF'
        NombreDB = 'Grup_ICF'
        Longitud = 1
        Consulta = 'grupICF'
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'indica a quin grup de d'#232'ficits pertany'
      end
      item
        Aplica = kcMODELS
        Nombre = #201's b'#224'sic'
        NombreDB = 'ICF_Basic'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'indica si el d'#232'ficit pertany a l'#39'ICF b'#224'sic'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'B: baixa'
        ValidChars = 'BN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grup d'#39'usuaris'
        NombreDB = 'C_Grup'
        Longitud = 2
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'indica quin grup d'#39'usuaris pot entrar el d'#232'ficit'
      end>
    Indices = <
      item
        Nombre = 'Codi'
        NombreDB = 'Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi ICF')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Descripcio'
        NombreDB = 'Descripcio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Descripci'#243' ICF')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Grup'
        NombreDB = 'grup'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Grup ICF'
          'Descripci'#243' ICF')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'baixa'
        NombreDB = 'baixa'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Baixa')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'grupicf'
        Master = CodiCampsCurt
        BuscaOrigen.Strings = (
          'Grup ICF')
        CopiarOrigen.Strings = (
          'Codi ICF')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'ICF_GRUP'#39
      end>
    Nombre = 'Codis ICF'
    NombreTabla = 'CodiICF'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi ICF'
      'Descripci'#243' ICF'
      'Grup ICF'
      'Baixa'
      #201's b'#224'sic'
      'Grup d'#39'usuaris')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693384375
    Left = 326
    Top = 434
  end
  object CodiCampsCurt: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C_Codi'
        NombreDB = 'C_Codi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Codi'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resum'
        NombreDB = 'R_Codi'
        Longitud = 10
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
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' 2'
        NombreDB = 'N_Codi2'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Params'
        NombreDB = 'Params'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'codi'
        NombreDB = 'codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus'
          'C_Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'GrupCodis'
        NombreDB = 'GrupCodis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiForaneo
        ForaneoDic = GrupCodiCampsCurt
        ForaneoCampos.Strings = (
          'Tipus')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'N_Codi'
        NombreDB = 'N_Codi'
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
        NombreDB = 'ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus'
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = GrupCodiCampsCurt
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end>
    Nombre = 'Codi Camps Curt'
    NombreTabla = 'CodiCampsCurt'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Codi'
      'Descripci'#243)
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693433102
    Left = 131
    Top = 248
  end
  object GrupCodiCampsCurt: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' del Tipus'
        NombreDB = 'N_Tipus'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'GrupCodiCampsCurt'
    NombreTabla = 'GrupCodiCampsCurt'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus'
      'Descripci'#243' del Tipus')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693438889
    Left = 38
    Top = 248
  end
  object CodiICF_CE: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi ICF'
        NombreDB = 'C_ICF'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'FK a CodiICF'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Classificaci'#243' etiol'#242'gica'
        NombreDB = 'C_UNITATM'
        Longitud = 3
        Consulta = 'um'
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'FK a UnitatM'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi ICF'
          'Classificaci'#243' etiol'#242'gica')
        Tipo = tiPrimario
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
        ForaneoDic = CodiICF
        ForaneoCampos.Strings = (
          'Codi ICF')
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
          'Classificaci'#243' etiol'#242'gica')
        Tipo = tiForaneo
        ForaneoDic = UnitatM
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'um'
        Master = UnitatM
        BuscaOrigen.Strings = (
          'Classificaci'#243' etiol'#242'gica')
        CopiarOrigen.Strings = (
          'Classificaci'#243' etiol'#242'gica')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end>
    Nombre = 'Codis ICF CE'
    NombreTabla = 'CodiICF_CE'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi ICF'
      'Classificaci'#243' etiol'#242'gica')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693384375
    Left = 382
    Top = 434
  end
  object NeuroTrauma: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'ID'
        NombreDB = 'ID'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'PARENT'
        NombreDB = 'PARENT'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'TEXT'
        NombreDB = 'TEXT'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'TIPUS'
        NombreDB = 'TIPUS'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = True
        ValidChars = 'DP'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ESTAT'
        NombreDB = 'ESTAT'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'A'
        ValidChars = 'AB'
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
        Nombre = 'SUBCODI ICD'
        NombreDB = 'G_ICD'
        Longitud = 15
        Consulta = 'codiicd'
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'CODIICD'
        Master = CodiICD
        BuscaOrigen.Strings = (
          'SUBCODI ICD')
        CopiarOrigen.Strings = (
          'SUBCODI ICD')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
      end>
    Nombre = 'Codis NeuroTrauma'
    NombreTabla = 'ICDNeuroTrauma'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'PARENT'
      'TEXT'
      'TIPUS'
      'ESTAT'
      'SUBCODI ICD'
      'ORDRE')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 255
    Top = 434
  end
  object CodisGuttmann: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CodisGuttmann'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (TITOL         VARCHAR(20),'
      '         NHC           INTEGER,'
      '         NOM           VARCHAR(80),'
      '         DATA_INGRES   DATE,'
      '         DATA_ALTA     DATE,'
      '         MOTIU         VARCHAR(40),'
      '         PRESTACIO     VARCHAR(4),'
      '         DIAG_INGRES   VARCHAR(40),'
      '         DIAG_ALTA     VARCHAR(40),'
      '         TIPUS         CHAR(1),'
      '         LITERAL_METGE VARCHAR(40),'
      '         CODI_ICD      VARCHAR(15),'
      '         LITERAL_ICD   VARCHAR(255)'
      '         )'
      'AS'
      '  DECLARE VARIABLE TRACTAMENT     INTEGER;'
      '  DECLARE VARIABLE NHCB           INTEGER;'
      '  DECLARE VARIABLE NOMB           VARCHAR(80);'
      '  DECLARE VARIABLE DATA_INGRESB   DATE;'
      '  DECLARE VARIABLE DATA_ALTAB     DATE;'
      '  DECLARE VARIABLE MOTIUB         VARCHAR(40);'
      '  DECLARE VARIABLE PRESTACIOB     VARCHAR(4);'
      '  DECLARE VARIABLE DIAG_INGRESB   VARCHAR(40);'
      '  DECLARE VARIABLE DIAG_ALTAB     VARCHAR(40);'
      '  DECLARE VARIABLE TIPUSB         CHAR(1);'
      '  DECLARE VARIABLE DIAGPPAL       VARCHAR(15);'
      '/*  DECLARE VARIABLE ALTREPROCTRACT VARCHAR(6); */'
      '  DECLARE VARIABLE CODIE          VARCHAR(15);'
      '  DECLARE VARIABLE CODIE2         VARCHAR(15);'
      '  DECLARE VARIABLE CODIE3         VARCHAR(15);'
      '  DECLARE VARIABLE CODIE4         VARCHAR(15);'
      '  DECLARE VARIABLE CODIE5         VARCHAR(15);'
      'BEGIN'
      '      '
      
        '  FOR SELECT T.C_HISTORIA,         T.C_TRACTAMENT,   F.NOMCOMPLE' +
        'T, T.DATA_INGRES, T.DATA_ALTA,    C.N_CODI, T.C_PRESTACIO, T.N_D' +
        'IAGNOSTICINGRES,'
      
        '       T.N_DIAGNOSTICALTA,  T.C_CODI_E,   T.C_CODI_E2, T.C_CODI_' +
        'E3, T.C_CODI_E4,   T.C_CODI_E5,   T.C_DIAGNOSTICALTA'
      '  FROM TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '  LEFT JOIN CODICAMPS C ON T.C_MOTIU  = C.C_CODI AND C.TIPUSCODI' +
        ' = '#39'MOTIU'#39
      '  WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '  AND T.C_PRESTACIO IN ('#39'1004'#39','#39'1008'#39','#39'2005'#39')'
      '  ORDER BY T.DATA_ALTA'
      
        '  INTO              :NHCB,            :TRACTAMENT,        :NOMB,' +
        '  :DATA_INGRESB,  :DATA_ALTAB,     :MOTIUB,   :PRESTACIOB,      ' +
        '  :DIAG_INGRESB,'
      
        '              :DIAG_ALTAB,      :CODIE,        :CODIE2,      :CO' +
        'DIE3,     :CODIE4,       :CODIE5,            :DIAGPPAL'
      '  DO BEGIN'
      '      /* imprimim primer la cap'#231'alera */'
      '      TITOL='#39'CAP'#199'ALERA'#39';'
      
        '      NHC=NHCB; NOM=NOMB; DATA_INGRES=DATA_INGRESB; DATA_ALTA=DA' +
        'TA_ALTAB; MOTIU=MOTIUB; PRESTACIO=PRESTACIOB;'
      '      DIAG_INGRES=DIAG_INGRESB; DIAG_ALTA=DIAG_ALTAB;'
      '      '
      '      SUSPEND;'
      
        '      /*NHC=NULL;*/NOM=NULL;DATA_INGRES=NULL;DATA_ALTA=NULL; MOT' +
        'IU=NULL; PRESTACIO=NULL; DIAG_INGRES=NULL; DIAG_ALTA=NULL;'
      ''
      
        '      /* diagn'#242'stics d'#39'ingr'#233's, proc'#233's i alta entrats pels metges' +
        ' (literals)*/'
      '      TITOL='#39'DIAGNOSTIC'#39';'
      '      TIPUS = '#39'I'#39';'
      '      FOR SELECT N_DIAGNOSTIC FROM DIAGNOSTICS'
      '      WHERE C_TRACTAMENT = :TRACTAMENT'
      '      AND TIPUS = :TIPUS'
      '      ORDER BY ORDRE'
      '      INTO :LITERAL_METGE'
      '      DO BEGIN'
      
        '          IF ((LITERAL_METGE <> '#39#39') AND (LITERAL_METGE <>'#39'.'#39') AN' +
        'D (LITERAL_METGE <>'#39','#39') AND (LITERAL_METGE <>'#39'-'#39')) THEN SUSPEND;'
      '      END;'
      '      TIPUS = '#39'P'#39';'
      '      FOR SELECT N_DIAGNOSTIC FROM DIAGNOSTICS'
      '      WHERE C_TRACTAMENT = :TRACTAMENT'
      '      AND TIPUS = :TIPUS'
      '      ORDER BY ORDRE'
      '      INTO :LITERAL_METGE'
      '      DO BEGIN'
      
        '          IF ((LITERAL_METGE <> '#39#39') AND (LITERAL_METGE <>'#39'.'#39') AN' +
        'D (LITERAL_METGE <>'#39','#39') AND (LITERAL_METGE <>'#39'-'#39')) THEN SUSPEND;'
      '      END;'
      '      TIPUS = '#39'A'#39';'
      '      FOR SELECT N_DIAGNOSTIC FROM DIAGNOSTICS'
      '      WHERE C_TRACTAMENT = :TRACTAMENT'
      '      AND TIPUS = :TIPUS'
      '      ORDER BY ORDRE'
      '      INTO :LITERAL_METGE'
      '      DO BEGIN'
      
        '          IF ((LITERAL_METGE <> '#39#39') AND (LITERAL_METGE <>'#39'.'#39') AN' +
        'D (LITERAL_METGE <>'#39','#39') AND (LITERAL_METGE <>'#39'-'#39')) THEN SUSPEND;'
      '      END;'
      ''
      '      TIPUS=NULL; LITERAL_METGE=NULL;'
      '      /* diagn'#242'stics quir'#250'rgics */'
      '      TITOL='#39'DIAG. QUIROFAN'#39';'
      
        '      FOR SELECT f_left(F_REPLACETEXT('#39'.'#39','#39' '#39',N_DIAG_OP),40) FRO' +
        'M BQUIRURGIC'
      '      WHERE C_TRACTAMENT = :TRACTAMENT AND ESTAT <> 40'
      '      ORDER BY C_INTERV'
      '      INTO :LITERAL_METGE'
      '      DO BEGIN'
      
        '          IF ((LITERAL_METGE <> '#39#39') AND (LITERAL_METGE <>'#39'.'#39') AN' +
        'D (LITERAL_METGE <>'#39','#39') AND (LITERAL_METGE <>'#39'-'#39')) THEN SUSPEND;'
      '          LITERAL_METGE=NULL;'
      '      END;'
      '      '
      '      /* procediments quir'#250'rgics */'
      '      TITOL='#39'PROC. QUIROFAN'#39';'
      
        '      FOR SELECT f_left(F_REPLACETEXT('#39'+'#39','#39' m'#233's '#39',N_PROCEDIMENT)' +
        ',40) FROM BQUIRURGIC'
      '      WHERE C_TRACTAMENT = :TRACTAMENT AND ESTAT <> 40'
      '      ORDER BY C_INTERV'
      '      INTO :LITERAL_METGE'
      '      DO BEGIN'
      
        '          IF ((LITERAL_METGE <> '#39#39') AND (LITERAL_METGE <>'#39'.'#39') AN' +
        'D (LITERAL_METGE <>'#39','#39') AND (LITERAL_METGE <>'#39'-'#39')) THEN SUSPEND;'
      '          LITERAL_METGE=NULL;'
      '      END;'
      ''
      '      /* altres procediments quir'#250'rgics */'
      '      TITOL='#39'ALTRE PROCEDIMENT'#39';'
      '      FOR SELECT P.N_PROCEDIMENT FROM BQPROCEDIMENTS P'
      '      JOIN BQUIRURGIC B ON P.C_INTERV = B.C_INTERV'
      '      WHERE B.C_TRACTAMENT = :TRACTAMENT'
      '      ORDER BY P.ORDRE'
      '      INTO :LITERAL_METGE'
      '      DO BEGIN'
      
        '          IF ((LITERAL_METGE <> '#39#39') AND (LITERAL_METGE <>'#39'.'#39') AN' +
        'D (LITERAL_METGE <>'#39','#39') AND (LITERAL_METGE <>'#39'-'#39')) THEN SUSPEND;'
      '      END;'
      '      '
      '      LITERAL_METGE=NULL;'
      '      /* CMBD - codificaci'#243' iasist */'
      
        '      IF (DIAGPPAL IS NOT NULL) THEN    /* DIAGN'#210'STIC PRINCIPAL ' +
        '*/'
      '      BEGIN'
      '          TITOL='#39'CMBD - DIAG.PRINCIP.'#39';'
      '          CODI_ICD=DIAGPPAL;'
      
        '          SELECT N_ICD FROM CODIICD WHERE C_ICD = :CODI_ICD INTO' +
        ' :LITERAL_ICD;'
      '          '
      '          SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      ''
      
        '      TITOL='#39'CMBD - DIAGS.ALTA'#39';     /* ALTRES DIAGN'#210'STICS A L'#39'A' +
        'LTA */'
      '      TIPUS='#39'A'#39';'
      '      FOR SELECT D.C_DIAGNOSTIC, C.N_ICD FROM DIAGNOSTICS D'
      '      JOIN CODIICD C ON D.C_DIAGNOSTIC = C.C_ICD'
      '      WHERE C_TRACTAMENT = :TRACTAMENT'
      '      AND TIPUS = :TIPUS'
      '      ORDER BY ORDRE'
      '      INTO :CODI_ICD, :LITERAL_ICD'
      '      DO BEGIN'
      '          IF (CODI_ICD IS NOT NULL) THEN SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      '      '
      '      /* PROCEDIMENTS PRINCIPALS QUIROFAN */'
      '      TITOL='#39'CMBD - PROC.PRINCIP.'#39';'
      '      FOR SELECT B.G_PROCEDIMENT, C.N_ICD FROM BQUIRURGIC B'
      '      JOIN CODIICD C ON B.G_PROCEDIMENT = C.C_ICD'
      '      WHERE B.C_TRACTAMENT = :TRACTAMENT AND B.ESTAT <> 40'
      '      ORDER BY B.C_INTERV'
      '      INTO :CODI_ICD, :LITERAL_ICD'
      '      DO BEGIN'
      '          IF (CODI_ICD IS NOT NULL) THEN SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      ''
      '      TIPUS=NULL;'
      
        '      TITOL='#39'CMBD - PROC.QUIROFAN'#39';           /* ALTRES PROCEDIM' +
        'ENTS QUIRURGICS */'
      '      FOR SELECT B.C_PROCEDIMENT, C.N_ICD FROM BQPROCEDIMENTS B'
      '      JOIN BQUIRURGIC Q ON B.C_INTERV = Q.C_INTERV'
      '      JOIN CODIICD C ON B.C_PROCEDIMENT = C.C_ICD'
      '      WHERE Q.C_TRACTAMENT = :TRACTAMENT'
      '      ORDER BY B.ORDRE'
      '      INTO :CODI_ICD, :LITERAL_ICD'
      '      DO BEGIN'
      '          IF (CODI_ICD IS NOT NULL) THEN SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      '      '
      
        '      TITOL='#39'CMBD - AL.PROC.TRACT'#39';        /* ALTRES PROCEDIMENT' +
        'S DEL TRACTAMENT */'
      '/*      IF (ALTREPROCTRACT IS NOT NULL) THEN'
      '      BEGIN'
      '          CODI_ICD = ALTREPROCTRACT;'
      
        '          SELECT N_ICD FROM CODIICD WHERE C_ICD = :CODI_ICD INTO' +
        ' :LITERAL_ICD;'
      ''
      '          SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      '*/'
      '      FOR SELECT P.C_PROCEDIMENT, C.N_ICD'
      '      FROM TPROCEDIMENTS P'
      '      JOIN CODIICD C ON P.C_PROCEDIMENT = C.C_ICD'
      '      WHERE P.C_TRACTAMENT = :TRACTAMENT'
      '      ORDER BY P.ORDRE'
      '      INTO :CODI_ICD, :LITERAL_ICD'
      '      DO BEGIN'
      '          IF (CODI_ICD IS NOT NULL) THEN SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      ''
      
        '      TITOL='#39'CMBD - CAUSES EXT.'#39';     /* CAUSES EXTERNES DEL TRA' +
        'CTAMENT */'
      '      IF (CODIE IS NOT NULL) THEN'
      '      BEGIN'
      '          CODI_ICD=CODIE;'
      
        '          SELECT N_ICD FROM CODIICD WHERE C_ICD = :CODI_ICD INTO' +
        ' :LITERAL_ICD;'
      ''
      '          SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      '      IF (CODIE2 IS NOT NULL) THEN'
      '      BEGIN'
      '          CODI_ICD=CODIE2;'
      
        '          SELECT N_ICD FROM CODIICD WHERE C_ICD = :CODI_ICD INTO' +
        ' :LITERAL_ICD;'
      ''
      '          SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      '      IF (CODIE3 IS NOT NULL) THEN'
      '      BEGIN'
      '          CODI_ICD=CODIE3;'
      
        '          SELECT N_ICD FROM CODIICD WHERE C_ICD = :CODI_ICD INTO' +
        ' :LITERAL_ICD;'
      ''
      '          SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      '      IF (CODIE4 IS NOT NULL) THEN'
      '      BEGIN'
      '          CODI_ICD=CODIE4;'
      
        '          SELECT N_ICD FROM CODIICD WHERE C_ICD = :CODI_ICD INTO' +
        ' :LITERAL_ICD;'
      ''
      '          SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
      '      IF (CODIE5 IS NOT NULL) THEN'
      '      BEGIN'
      '          CODI_ICD=CODIE5;'
      
        '          SELECT N_ICD FROM CODIICD WHERE C_ICD = :CODI_ICD INTO' +
        ' :LITERAL_ICD;'
      ''
      '          SUSPEND;'
      '          CODI_ICD=NULL; LITERAL_ICD=NULL;'
      '      END;'
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
    Left = 107
    Top = 488
  end
  object Inespecifics: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inespecifics'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (TIPUS        CHAR(1),'
      '         CODI_METGE   VARCHAR(15),'
      '         DESCRIPCIO   VARCHAR(255)'
      '         )'
      'AS'
      'BEGIN'
      ''
      '    TIPUS='#39'D'#39';'
      '    FOR SELECT T.G_DIAGNOSTICALTA, C.N_ICD'
      '    FROM TRACTAMENTS T'
      
        '    JOIN CODIICD C ON T.G_DIAGNOSTICALTA = C.C_ICD AND C.I_DIAGI' +
        'NES ='#39'S'#39
      '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    ORDER BY T.G_DIAGNOSTICALTA'
      '    INTO :CODI_METGE, :DESCRIPCIO'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      '    '
      '    TIPUS='#39'D'#39';'
      '    FOR SELECT D.G_DIAGNOSTIC, C.N_ICD'
      '    FROM DIAGNOSTICS D'
      
        '    JOIN CODIICD C ON D.G_DIAGNOSTIC = C.C_ICD AND C.I_DIAGINES ' +
        '='#39'S'#39
      '    WHERE D.DATA BETWEEN :DATAI AND :DATAF'
      '    AND D.TIPUS = "A"'
      '    ORDER BY D.G_DIAGNOSTIC'
      '    INTO :CODI_METGE, :DESCRIPCIO'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    TIPUS='#39'P'#39';'
      '    FOR SELECT P.G_PROCEDIMENT, C.N_ICD'
      '    FROM TPROCEDIMENTS P'
      
        '    JOIN CODIICD C ON P.G_PROCEDIMENT = C.C_ICD AND C.I_DIAGINES' +
        ' ='#39'S'#39
      '    WHERE P.DATA BETWEEN :DATAI AND :DATAF AND P.TIPUS = "A"'
      '    ORDER BY P.G_PROCEDIMENT'
      '    INTO :CODI_METGE, :DESCRIPCIO'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    TIPUS='#39'D'#39';'
      '    FOR SELECT B.G_DIAG_OP, C.N_ICD'
      '    FROM BQUIRURGIC B'
      
        '    JOIN CODIICD C ON B.G_DIAG_OP = C.C_ICD AND C.I_DIAGINES ='#39'S' +
        #39
      '    WHERE B.DATA_METGE_FI BETWEEN :DATAI AND :DATAF'
      '    ORDER BY B.G_DIAG_OP'
      '    INTO :CODI_METGE, :DESCRIPCIO'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    TIPUS='#39'P'#39';'
      '    FOR SELECT B.G_PROCEDIMENT, C.N_ICD'
      '    FROM BQUIRURGIC B'
      
        '    JOIN CODIICD C ON B.G_PROCEDIMENT = C.C_ICD AND C.I_DIAGINES' +
        ' ='#39'S'#39
      '    WHERE B.DATA_METGE_FI BETWEEN :DATAI AND :DATAF'
      '    ORDER BY B.G_PROCEDIMENT'
      '    INTO :CODI_METGE, :DESCRIPCIO'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END;'
      ''
      '    TIPUS='#39'P'#39';'
      '    FOR SELECT B.G_PROCEDIMENT, C.N_ICD'
      '    FROM BQPROCEDIMENTS B'
      '    JOIN BQUIRURGIC BQ ON B.C_INTERV = BQ.C_INTERV'
      
        '    JOIN CODIICD C ON B.G_PROCEDIMENT = C.C_ICD AND C.I_DIAGINES' +
        ' ='#39'S'#39
      '    WHERE BQ.DATA_METGE_FI BETWEEN :DATAI AND :DATAF'
      '    ORDER BY B.G_PROCEDIMENT'
      '    INTO :CODI_METGE, :DESCRIPCIO'
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
    Left = 255
    Top = 488
  end
  object ListCodificacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListCodificacio'
    ForceNombreDB = False
    Body.Strings = (
      '(PRESTA CHAR(4),DATAI DATE, DATAF DATE)'
      'RETURNS (HISTORIA    INTEGER,'
      '         PRESTACIO   CHAR(4),'
      '         DATA_INGRES DATE,'
      '         DATA_ALTA   DATE,'
      '         COORDINADOR VARCHAR(5),'
      '         TIPUS       VARCHAR(30),'
      '         CODI_IASIST VARCHAR(15),'
      '         DESCRIPCIO_IASIST VARCHAR(255),'
      '         CODI_METGE  VARCHAR(15),'
      '         DESCRIPCIO_METGE VARCHAR(255),'
      '         TIPUS_CODI  CHAR(1)'
      '         )'
      'AS'
      '    DECLARE VARIABLE TRACTAMENT INTEGER;'
      'BEGIN'
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.C_PRESTACIO, T.DA' +
        'TA_INGRES, T.DATA_ALTA, T.C_COORDINADOR,'
      
        '               T.C_DIAGNOSTICALTA, CC.N_ICD, T.G_DIAGNOSTICALTA,' +
        ' CG.N_ICD'
      '    FROM TRACTAMENTS T'
      '    LEFT JOIN CODIICD CC ON T.C_DIAGNOSTICALTA = CC.C_ICD'
      '    LEFT JOIN CODIICD CG ON T.G_DIAGNOSTICALTA = CG.C_ICD'
      '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND T.C_PRESTACIO = :PRESTA'
      '    ORDER BY T.DATA_ALTA, T.C_HISTORIA'
      
        '    INTO :HISTORIA, :TRACTAMENT, :PRESTACIO, :DATA_INGRES, :DATA' +
        '_ALTA, :COORDINADOR, :CODI_IASIST, :DESCRIPCIO_IASIST,'
      '         :CODI_METGE, :DESCRIPCIO_METGE'
      '    DO BEGIN'
      '        TIPUS_CODI = '#39#39';'
      '        TIPUS = '#39'DIAGN'#210'STIC ALTA'#39';'
      '        SUSPEND;'
      
        '        HISTORIA=NULL;PRESTACIO=NULL;DATA_INGRES=NULL;DATA_ALTA=' +
        'NULL;'
      ''
      '        TIPUS = '#39'ALTRES DIAGN'#210'STICS A L'#39#39'ALTA'#39';'
      
        '        FOR SELECT D.C_DIAGNOSTIC, CC.N_ICD, D.G_DIAGNOSTIC, CG.' +
        'N_ICD, D.TIPUS'
      '        FROM DIAGNOSTICS D'
      '        LEFT JOIN CODIICD CC ON D.C_DIAGNOSTIC = CC.C_ICD'
      '        LEFT JOIN CODIICD CG ON D.G_DIAGNOSTIC = CG.C_ICD'
      '        WHERE D.C_TRACTAMENT = :TRACTAMENT AND D.TIPUS <> "I"'
      '        ORDER BY D.ORDRE'
      
        '        INTO :CODI_IASIST, :DESCRIPCIO_IASIST, :CODI_METGE, :DES' +
        'CRIPCIO_METGE, :TIPUS_CODI'
      '        DO BEGIN'
      '            SUSPEND;'
      
        '            HISTORIA=NULL;PRESTACIO=NULL;DATA_INGRES=NULL;DATA_A' +
        'LTA=NULL;'
      '        END;'
      '        '
      '        TIPUS = '#39'PROCEDIMENTS A L'#39#39'ALTA'#39';'
      
        '        FOR SELECT P.C_PROCEDIMENT, CC.N_ICD, P.G_PROCEDIMENT, C' +
        'G.N_ICD, P.TIPUS'
      '        FROM TPROCEDIMENTS P'
      '        LEFT JOIN CODIICD CC ON P.C_PROCEDIMENT = CC.C_ICD'
      '        LEFT JOIN CODIICD CG ON P.G_PROCEDIMENT = CG.C_ICD'
      '        WHERE P.C_TRACTAMENT = :TRACTAMENT'
      '        ORDER BY P.ORDRE'
      
        '        INTO :CODI_IASIST, :DESCRIPCIO_IASIST, :CODI_METGE, :DES' +
        'CRIPCIO_METGE, :TIPUS_CODI'
      '        DO BEGIN'
      '            SUSPEND;'
      
        '            HISTORIA=NULL;PRESTACIO=NULL;DATA_INGRES=NULL;DATA_A' +
        'LTA=NULL;'
      '        END;'
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
    Left = 184
    Top = 488
  end
  object FullAlta2005: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FullAlta2005'
    ForceNombreDB = False
    Body.Strings = (
      
        '(DIA DATE)     /* Es passar'#224' a les 22h i tractar'#224' les altes 2005' +
        ' d'#39'ahir ==> DIA = "TODAY" */'
      'RETURNS (TRACTAMENT INTEGER,'
      '         COORD      VARCHAR(5),'
      '         TIPUS      CHAR(1),'
      '         ORDRE      INTEGER,'
      '         C_ICD      VARCHAR(15),'
      '         N_ICD      VARCHAR(120),'
      '         G_ICD      VARCHAR(15)'
      '         )'
      ''
      'AS'
      '  DECLARE VARIABLE CONTA      INTEGER;'
      '  DECLARE VARIABLE NICD       VARCHAR(120);'
      '  DECLARE VARIABLE RICD       VARCHAR(60);'
      '  DECLARE VARIABLE NGTN       VARCHAR(40);'
      '  DECLARE VARIABLE EICD       VARCHAR(24);'
      '  DECLARE VARIABLE LNICD      INTEGER;'
      '  DECLARE VARIABLE LRICD      INTEGER;'
      '  DECLARE VARIABLE LNGTN      INTEGER;'
      '  DECLARE VARIABLE LEICD      INTEGER;'
      '  DECLARE VARIABLE DORDRE     INTEGER;'
      '  DECLARE VARIABLE VERSIOCIM   INTEGER;'
      '  DECLARE VARIABLE VERSIOCIM_G INTEGER;'
      'BEGIN'
      ''
      '/*'
      
        'FER UNA PROCEDURE QUE S'#39'EXECUTAR'#224' al mat'#237' (7h) QUE MIRI LES 2005' +
        ' DATA ALTA = dia - 1 I QUE REPLIQUI ELS DIAGN'#242'STICS I PROCEDIMEN' +
        'TS TIPUS '#39'P'#39' A'
      
        'TIPUS '#39'A'#39' POSANT CODI METGE EL COORDINADOR I DATA LA DEL MOMENT.' +
        ' tAULES DIAGN'#242'STICS I TPROCEDIMENTS.'
      '*/'
      ''
      '    FOR SELECT C_TRACTAMENT, C_COORDINADOR'
      '    FROM TRACTAMENTS'
      '    WHERE C_PRESTACIO = '#39'2005'#39' AND DATA_ALTA = :DIA - 1'
      '    AND ((C_DIAGNOSTICALTA IS NULL) OR (C_DIAGNOSTICALTA = '#39#39'))'
      '    ORDER BY C_TRACTAMENT'
      '    INTO :TRACTAMENT, :COORD'
      '    DO BEGIN'
      '        /* DIAGN'#210'STICS */'
      '        TIPUS='#39'D'#39';'
      
        '        /* per saber si ho hem de traspassar '#233's si el C_DIAGNOST' +
        'ICALTA '#233's buit'
      
        '        SELECT COUNT(*) FROM DIAGNOSTICS WHERE C_TRACTAMENT = :T' +
        'RACTAMENT AND TIPUS = '#39'A'#39' INTO :CONTA;'
      '        IF (CONTA = 0) THEN'
      '        BEGIN'
      
        '            SELECT MAX(ORDRE) FROM DIAGNOSTICS WHERE C_TRACTAMEN' +
        'T = :TRACTAMENT AND TIPUS = '#39'A'#39' INTO :ORDRE;'
      '            IF (ORDRE IS NULL) THEN ORDRE = 0;'
      '        '
      
        '            FOR SELECT DISTINCT D.C_DIAGNOSTIC, D.G_DIAGNOSTIC, ' +
        'C.N_ICD, C.R_ICD, C.E_ICD, C.N_GUTTMANN,'
      
        '                F_STRINGLENGTH(C.N_ICD), F_STRINGLENGTH(C.R_ICD)' +
        ', F_STRINGLENGTH(C.E_ICD), F_STRINGLENGTH(C.N_GUTTMANN)'
      '            FROM DIAGNOSTICS D'
      '            LEFT JOIN CODIICD C ON D.C_DIAGNOSTIC = C.C_ICD'
      '            WHERE D.C_TRACTAMENT = :TRACTAMENT AND D.TIPUS = '#39'P'#39
      '            ORDER BY D.ORDRE'
      
        '            INTO :C_ICD, :G_ICD, :NICD, :RICD, :EICD, :NGTN, :LN' +
        'ICD, :LRICD, :LEICD, :LNGTN'
      '            DO BEGIN'
      '                IF (LNGTN>0)        THEN N_ICD = NGTN;'
      '                ELSE IF (LNICD<=40) THEN N_ICD = NICD;'
      '                ELSE IF (LRICD<=40) THEN N_ICD = RICD;'
      '                ELSE IF (LEICD>0)   THEN N_ICD = EICD;'
      
        '                                    ELSE N_ICD = F_LEFT(RICD,40)' +
        ';  passar el N_DIAG_OP'
      ''
      '                ORDRE = ORDRE + 1;'
      '                SUSPEND;'
      ''
      
        '                INSERT INTO DIAGNOSTICS(C_TRACTAMENT,TIPUS,ORDRE' +
        ',C_DIAGNOSTIC,N_DIAGNOSTIC,C_METGE,DATA,G_DIAGNOSTIC)'
      
        '                VALUES (:TRACTAMENT,'#39'A'#39',:ORDRE,:C_ICD,:N_ICD,:CO' +
        'ORD,"NOW",:G_ICD);'
      '            END;'
      '        END;*/'
      ''
      
        '        SELECT MAX(ORDRE) FROM DIAGNOSTICS WHERE C_TRACTAMENT = ' +
        ':TRACTAMENT AND TIPUS = '#39'A'#39' INTO :ORDRE;'
      '        IF (ORDRE IS NULL) THEN ORDRE = 1;'
      ''
      
        '        FOR SELECT DISTINCT C_DIAGNOSTIC, N_DIAGNOSTIC, G_DIAGNO' +
        'STIC, ORDRE, VERSIOCIM, VERSIOCIM_G FROM DIAGNOSTICS'
      '        WHERE C_TRACTAMENT = :TRACTAMENT AND TIPUS = '#39'P'#39
      '        ORDER BY ORDRE'
      
        '        INTO :C_ICD, :N_ICD, :G_ICD, :DORDRE, :VERSIOCIM, :VERSI' +
        'OCIM_G'
      '        DO BEGIN'
      
        '            /* Si '#233's ordre 0, el posem com a DIAGNOSTIC PRINCIPA' +
        'L, altrament l'#39'afegim com a secundari si no hi '#233's */'
      '            IF (DORDRE=0) THEN'
      '            BEGIN'
      
        '                UPDATE TRACTAMENTS SET C_DIAGNOSTICALTA = :C_ICD' +
        ', G_DIAGNOSTICALTA = :G_ICD, VERSIOCIM = :VERSIOCIM, VERSIOCIM_G' +
        ' = :VERSIOCIM_G WHERE C_TRACTAMENT = :TRACTAMENT;'
      '                ORDRE=DORDRE;'
      '                SUSPEND;'
      '            END;'
      '            ELSE BEGIN'
      
        '                SELECT COUNT(*) FROM DIAGNOSTICS WHERE C_TRACTAM' +
        'ENT = :TRACTAMENT AND TIPUS='#39'A'#39' AND G_DIAGNOSTIC=:G_ICD'
      '                INTO :CONTA;'
      '                '
      '                IF (CONTA=0) THEN'
      '                BEGIN'
      
        '                    INSERT INTO DIAGNOSTICS(C_TRACTAMENT,TIPUS,O' +
        'RDRE,C_DIAGNOSTIC,N_DIAGNOSTIC,C_METGE,DATA,G_DIAGNOSTIC,VERSIOC' +
        'IM,VERSIOCIM_G)'
      
        '                    VALUES (:TRACTAMENT,'#39'A'#39',:ORDRE,:C_ICD,:N_ICD' +
        ',:COORD,"NOW",:G_ICD,:VERSIOCIM,:VERSIOCIM_G);'
      ''
      '                    SUSPEND;'
      '                    ORDRE = ORDRE + 1;'
      '                END;'
      '            END;'
      '        END;'
      ''
      '        /* PROCEDIMENTS */'
      '        TIPUS='#39'P'#39';'
      
        '        /*SELECT COUNT(*) FROM TPROCEDIMENTS WHERE C_TRACTAMENT ' +
        '= :TRACTAMENT AND TIPUS = '#39'A'#39' INTO :CONTA;'
      '        IF (CONTA = 0) THEN'
      '        BEGIN'
      
        '            SELECT MAX(ORDRE) FROM TPROCEDIMENTS WHERE C_TRACTAM' +
        'ENT = :TRACTAMENT AND TIPUS = '#39'A'#39' INTO :ORDRE;'
      '            IF (ORDRE IS NULL) THEN ORDRE = 0;'
      ''
      
        '            FOR SELECT DISTINCT P.C_PROCEDIMENT, P.G_PROCEDIMENT' +
        ', C.N_ICD, C.R_ICD, C.E_ICD, C.N_GUTTMANN,'
      
        '                F_STRINGLENGTH(C.N_ICD), F_STRINGLENGTH(C.R_ICD)' +
        ', F_STRINGLENGTH(C.E_ICD), F_STRINGLENGTH(C.N_GUTTMANN)'
      '            FROM TPROCEDIMENTS P'
      '            LEFT JOIN CODIICD C ON P.C_PROCEDIMENT = C.C_ICD'
      '            WHERE P.C_TRACTAMENT = :TRACTAMENT AND P.TIPUS = '#39'P'#39
      '            ORDER BY P.ORDRE'
      
        '            INTO :C_ICD, :G_ICD, :NICD, :RICD, :EICD, :NGTN, :LN' +
        'ICD, :LRICD, :LEICD, :LNGTN'
      '            DO BEGIN'
      '                IF (LNGTN>0)        THEN N_ICD = NGTN;'
      '                ELSE IF (LNICD<=40) THEN N_ICD = NICD;'
      '                ELSE IF (LRICD<=40) THEN N_ICD = RICD;'
      '                ELSE IF (LEICD>0)   THEN N_ICD = EICD;'
      
        '                                    ELSE N_ICD = F_LEFT(RICD,40)' +
        ';'
      ''
      '                ORDRE = ORDRE + 1;'
      '                SUSPEND;'
      ''
      
        '                INSERT INTO TPROCEDIMENTS(C_TRACTAMENT,TIPUS,ORD' +
        'RE,C_PROCEDIMENT,N_PROCEDIMENT,C_METGE,DATA,G_PROCEDIMENT)'
      
        '                VALUES (:TRACTAMENT,'#39'A'#39',:ORDRE,:C_ICD,:N_ICD,:CO' +
        'ORD,"NOW",:G_ICD);'
      '            END;'
      '        END;*/'
      '        '
      
        '        SELECT MAX(ORDRE) FROM DIAGNOSTICS WHERE C_TRACTAMENT = ' +
        ':TRACTAMENT AND TIPUS = '#39'A'#39' INTO :ORDRE;'
      '        IF (ORDRE IS NULL) THEN ORDRE = 1;'
      '        '
      
        '        FOR SELECT DISTINCT C_PROCEDIMENT, N_PROCEDIMENT, G_PROC' +
        'EDIMENT, VERSIOCIM, VERSIOCIM_G FROM TPROCEDIMENTS'
      '        WHERE C_TRACTAMENT = :TRACTAMENT AND TIPUS = '#39'P'#39
      '        ORDER BY ORDRE'
      '        INTO :C_ICD, :N_ICD, :G_ICD, :VERSIOCIM, :VERSIOCIM_G'
      '        DO BEGIN'
      
        '            SELECT COUNT(*) FROM TPROCEDIMENTS WHERE C_TRACTAMEN' +
        'T = :TRACTAMENT AND TIPUS='#39'A'#39' AND G_PROCEDIMENT=:G_ICD'
      '            INTO :CONTA;'
      ''
      '            IF (CONTA=0) THEN'
      '            BEGIN'
      
        '                INSERT INTO TPROCEDIMENTS(C_TRACTAMENT,TIPUS,ORD' +
        'RE,C_PROCEDIMENT,N_PROCEDIMENT,C_METGE,DATA,G_PROCEDIMENT,VERSIO' +
        'CIM,VERSIOCIM_G)'
      
        '                VALUES (:TRACTAMENT,'#39'A'#39',:ORDRE,:C_ICD,:N_ICD,:CO' +
        'ORD,"NOW",:G_ICD,:VERSIOCIM,:VERSIOCIM_G);'
      ''
      '                SUSPEND;'
      '                ORDRE = ORDRE + 1;'
      '            END;'
      '        END;'
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
    Left = 326
    Top = 488
  end
  object RIC: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'RIC'
        NombreDB = 'RIC'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Rehabilitation Impairment Codes'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' RIC'
        NombreDB = 'N_RIC'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Estat'
        NombreDB = 'ESTAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'A'
        Comentario = 'A:actiu;B:baixa'
        ValidChars = 'AB'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'RIC')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'RIC'
    NombreTabla = 'RIC'
    Organiza = tbBase
    CamposVer.Strings = (
      'RIC'
      'Descripci'#243' RIC'
      'Estat')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 107
    Top = 378
  end
  object GLF: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Grup de limitaci'#243' funcional'
        NombreDB = 'GLF'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' GLF'
        NombreDB = 'N_GLF'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'RIC'
        NombreDB = 'RIC'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'Estat'
        NombreDB = 'ESTAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'A'
        Comentario = 'A:actiu;B:baixa'
        ValidChars = 'AB'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'RIC'
        NombreDB = 'RIC'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'RIC')
        Tipo = tiForaneo
        ForaneoDic = RIC
        ForaneoCampos.Strings = (
          'RIC')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'GLF'
    NombreTabla = 'GLF'
    Organiza = tbBase
    CamposVer.Strings = (
      'RIC'
      'Grup de limitaci'#243' funcional'
      'Descripci'#243' GLF'
      'Estat')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 184
    Top = 378
  end
  object CodiICD_V: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi ICD'
        NombreDB = 'C_ICD'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'N_ICD'
        Longitud = 120
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Baixa'
        NombreDB = 'Baixa'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'B: baixa, N: actiu'
        ValidChars = 'BN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Diagn'#242'stic inespec'#237'fic'
        NombreDB = 'I_DIAGINES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pare'
        NombreDB = 'PARE'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'pare del subcodi ICD'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Resum'
        NombreDB = 'R_ICD'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Etiqueta'
        NombreDB = 'E_ICD'
        Longitud = 24
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal'
        NombreDB = 'N_GUTTMANN'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = #233's la nostra descripci'#243
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
        Nombre = 'Grup limitaci'#243' funcional'
        NombreDB = 'GLF'
        Longitud = 15
        Consulta = 'GLF'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252'ent'
        NombreDB = 'Frequent'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '1: gen'#232'ric, 2: Uro, 4: cirurgia pl'#224'stica, 3: la resta'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Paraules clau'
        NombreDB = 'Paraules'
        Longitud = 2000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'diagn'#242'stic/procediment/codiE'
        ValidChars = 'DPE'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'VersioCIM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
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
          'Codi ICD'
          'Versi'#243' CIM')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Alfabetic'
        NombreDB = 'Alfabetic'
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
        Nombre = 'baixa'
        NombreDB = 'baixa'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Baixa')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'frequent'
        NombreDB = 'frequent'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Freq'#252'ent')
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
    Consultas = <
      item
        Nombre = 'RIC'
        Master = RIC
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
        Master = GLF
        BuscaOrigen.Strings = (
          'Grup limitaci'#243' funcional'
          'RIC')
        CopiarOrigen.Strings = (
          'Grup limitaci'#243' funcional'
          'RIC')
        CopiarMaster.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
        BuscaMaster.Strings = (
          'Grup de limitaci'#243' funcional'
          'RIC')
      end>
    Nombre = 'Codis ICD Virtual'
    NombreTabla = 'CodiICD'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi ICD'
      'Descripci'#243
      'Baixa'
      'Diagn'#242'stic inespec'#237'fic'
      'Pare'
      'Resum'
      'Etiqueta'
      'Literal'
      'RIC'
      'Grup limitaci'#243' funcional'
      'Freq'#252'ent'
      'Tipus'
      'Versi'#243' CIM')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693384375
    Left = 107
    Top = 434
  end
  object ListIngres: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListIngres'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE,UMI INTEGER,UMF INTEGER)'
      'RETURNS (HISTORIA         INTEGER,'
      '         NOM              VARCHAR(20),'
      '         COGNOM1          VARCHAR(20),'
      '         COGNOM2          VARCHAR(20),'
      '         C_UNITATMEDICA   INTEGER,'
      '         N_UNITATMEDICA   VARCHAR(30),'
      '         TRACTAMENT       INTEGER,'
      '         DATA_INGRES      DATE,'
      '         DATA_ALTA        DATE,'
      '         COORDINADOR      VARCHAR(5),'
      '         DIAGNOSTICALTA   VARCHAR(15),'
      '         NDIAGNOSTICALTA  VARCHAR(255),'
      '         TIPUS            CHAR(1),'
      '         CODI_METGE       VARCHAR(15),'
      '         DESCRIPCIO_METGE VARCHAR(255),'
      '         CODI_CMBD        VARCHAR(15),'
      '         DESCRIPCIO_CMBD  VARCHAR(255)'
      '         )'
      'AS'
      '  DECLARE VARIABLE TRACT INTEGER;'
      'BEGIN'
      
        '    FOR SELECT T.C_HISTORIA, T.C_TRACTAMENT, T.DATA_INGRES, T.DA' +
        'TA_ALTA, T.C_COORDINADOR, T.C_DIAGNOSTICALTA, C.N_ICD,'
      
        '               F.NOMBRE, F.APELLIDO1, F.APELLIDO2, F.C_UNITATMED' +
        'ICA, U.N_UNITATM'
      '    FROM  TRACTAMENTS T'
      
        '    JOIN  FILIACIO F ON T.C_HISTORIA = F.NUM_HIST AND F.C_UNITAT' +
        'MEDICA BETWEEN :UMI AND :UMF'
      '    LEFT JOIN UNITATM U ON F.C_UNITATMEDICA=U.C_UNITATM'
      '    LEFT JOIN CODIICD C ON T.C_DIAGNOSTICALTA=C.C_ICD'
      '    WHERE T.DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND   T.C_CENTREFAC='#39'04'#39' AND T.C_CLIENT='#39'ACA'#39
      '    AND   T.C_PRESTACIO='#39'1004'#39
      '    ORDER BY T.DATA_ALTA'
      
        '    INTO :HISTORIA, :TRACTAMENT, :DATA_INGRES, :DATA_ALTA, :COOR' +
        'DINADOR, :DIAGNOSTICALTA, :NDIAGNOSTICALTA,'
      
        '         :NOM, :COGNOM1, :COGNOM2, :C_UNITATMEDICA, :N_UNITATMED' +
        'ICA'
      '    DO BEGIN'
      
        '        TIPUS=NULL; CODI_METGE=NULL; DESCRIPCIO_METGE=NULL; CODI' +
        '_CMBD=NULL; DESCRIPCIO_CMBD=NULL; SUSPEND;'
      '        '
      
        '        TIPUS='#39'D'#39'; TRACT=TRACTAMENT; HISTORIA=NULL; TRACTAMENT=N' +
        'ULL; DATA_INGRES=NULL; DATA_ALTA=NULL; COORDINADOR=NULL;'
      
        '        DIAGNOSTICALTA=NULL; NDIAGNOSTICALTA=NULL; NOM=NULL; COG' +
        'NOM1=NULL; COGNOM2=NULL; C_UNITATMEDICA=NULL; N_UNITATMEDICA=NUL' +
        'L;'
      
        '        FOR SELECT D.C_DIAGNOSTIC, C.N_ICD, D.G_DIAGNOSTIC, C2.N' +
        '_ICD'
      '        FROM DIAGNOSTICS D'
      '        LEFT JOIN CODIICD C  ON D.C_DIAGNOSTIC=C.C_ICD'
      '        LEFT JOIN CODIICD C2 ON D.G_DIAGNOSTIC=C2.C_ICD'
      '        WHERE D.C_TRACTAMENT=:TRACT AND D.TIPUS='#39'A'#39
      '        ORDER BY D.ORDRE'
      
        '        INTO :CODI_METGE,:DESCRIPCIO_METGE,:CODI_CMBD,:DESCRIPCI' +
        'O_CMBD'
      '        DO BEGIN'
      '            SUSPEND;'
      '        END;'
      '        '
      '        TIPUS='#39'P'#39';'
      
        '        FOR SELECT P.C_PROCEDIMENT, C.N_ICD, P.G_PROCEDIMENT, C2' +
        '.N_ICD'
      '        FROM TPROCEDIMENTS P'
      '        LEFT JOIN CODIICD C  ON P.C_PROCEDIMENT=C.C_ICD'
      '        LEFT JOIN CODIICD C2 ON P.G_PROCEDIMENT=C2.C_ICD'
      '        WHERE P.C_TRACTAMENT=:TRACT AND P.TIPUS='#39'A'#39
      '        ORDER BY P.ORDRE'
      
        '        INTO :CODI_METGE,:DESCRIPCIO_METGE,:CODI_CMBD,:DESCRIPCI' +
        'O_CMBD'
      '        DO BEGIN'
      '            SUSPEND;'
      '        END;'
      ''
      '    END;'
      'END')
    Dic1 = CodiICD
    Dic1Name = 'CodiICD'
    Abierta = False
    Borrame = False
    BorrarOk = False
    CrearOk = False
    Nivel = 0
    Grupo = 0
    Depende = False
    Oculto = False
    Extendido = False
    Organiza = tbBase
    Modi = False
    Left = 38
    Top = 488
  end
  object CIM10D: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi'
        NombreDB = 'C_ICD'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' llarga'
        NombreDB = 'N_ICD'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' curta'
        NombreDB = 'R_ICD'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Tipus de codi'
        NombreDB = 'T_ICD'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ordre'
        NombreDB = 'ORDRE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pare'
        NombreDB = 'PARE'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Baixa'
        NombreDB = 'BAIXA'
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
          'Codi')
        Tipo = tiPrimario
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
          'Ordre')
        Tipo = tiSecundario
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
      end
      item
        Nombre = 'Pare'
        NombreDB = 'Pare'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Pare')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'C_ICD'
        NombreDB = 'C_ICD'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'CIM10D'
    NombreTabla = 'CIM10D'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Descripci'#243' llarga'
      'Descripci'#243' curta'
      'Tipus de codi'
      'Ordre'
      'Pare')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 472
    Top = 434
  end
  object CIM10P: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi'
        NombreDB = 'C_ICD'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' llarga'
        NombreDB = 'N_ICD'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' curta'
        NombreDB = 'R_ICD'
        Longitud = 90
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Tipus de codi'
        NombreDB = 'T_ICD'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ordre'
        NombreDB = 'ORDRE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pare'
        NombreDB = 'PARE'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Baixa'
        NombreDB = 'BAIXA'
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
          'Codi')
        Tipo = tiPrimario
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
          'Ordre')
        Tipo = tiSecundario
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
      end
      item
        Nombre = 'Pare'
        NombreDB = 'Pare'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Pare')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'CIM10P'
    NombreTabla = 'CIM10P'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Descripci'#243' llarga'
      'Descripci'#243' curta'
      'Tipus de codi'
      'Ordre'
      'Pare')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 528
    Top = 434
  end
  object GrupCodiCamps3: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' del Tipus'
        NombreDB = 'N_Tipus'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'GrupCodiCamps3'
    NombreTabla = 'GrupCodiCamps3'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus'
      'Descripci'#243' del Tipus')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693438889
    Left = 38
    Top = 304
  end
  object CodiCamps3: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'C_Codi'
        NombreDB = 'C_Codi'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243
        NombreDB = 'N_Codi'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resum'
        NombreDB = 'R_Codi'
        Longitud = 10
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
      end>
    Indices = <
      item
        Nombre = 'codi'
        NombreDB = 'codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus'
          'C_Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'GrupCodis'
        NombreDB = 'GrupCodis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiForaneo
        ForaneoDic = GrupCodiCamps3
        ForaneoCampos.Strings = (
          'Tipus')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'N_Codi'
        NombreDB = 'N_Codi'
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
        NombreDB = 'ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus'
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipus'
        Master = GrupCodiCamps3
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end>
    Nombre = 'Codi Camps 3'
    NombreTabla = 'CodiCamps3'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Codi'
      'Descripci'#243)
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37600.7693433102
    Left = 131
    Top = 304
  end
  object GrupsCodiCamps: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Grup'
        NombreDB = 'C_Grup'
        Longitud = 2
        Consulta = 'grups'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipuscodi'
        NombreDB = 'TipusCodi'
        Longitud = 20
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'C_Codi'
        Longitud = 2
        Consulta = 'codi'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Grup'
          'Tipuscodi'
          'Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Codis'
        NombreDB = 'Codis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipuscodi'
          'Codi')
        Tipo = tiForaneo
        ForaneoDic = CodiCamps
        ForaneoCampos.Strings = (
          'Tipus'
          'C'#243'di')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'grup'
        NombreDB = 'grup'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Codi Grup')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Grups
        ForaneoCampos.Strings = (
          'C'#243'di Grup')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Grups'
        Master = wDataBasics.Grups
        BuscaOrigen.Strings = (
          'Codi Grup')
        CopiarOrigen.Strings = (
          'Codi Grup')
        CopiarMaster.Strings = (
          'C'#243'di Grup')
        BuscaMaster.Strings = (
          'C'#243'di Grup')
      end
      item
        Nombre = 'Tipus'
        Master = GrupCodiCamps
        BuscaOrigen.Strings = (
          'Tipuscodi')
        CopiarOrigen.Strings = (
          'Tipuscodi')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end
      item
        Nombre = 'codi'
        Master = CodiCamps
        BuscaOrigen.Strings = (
          'Tipuscodi'
          'Codi')
        CopiarOrigen.Strings = (
          'Tipuscodi'
          'Codi')
        CopiarMaster.Strings = (
          'Tipus'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Tipus'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Tipuscodi')
        FiltroMaster.Strings = (
          'Tipus')
      end>
    Nombre = 'GrupsCodiCamps'
    NombreTabla = 'GrupsCodiCamps'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Grup'
      'Tipuscodi'
      'Codi')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 42459.6290277778
    Left = 238
    Top = 136
  end
  object EspecialCodiCamps: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Codi Especialitat'
        NombreDB = 'C_Especial'
        Longitud = 2
        Consulta = 'especial'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipuscodi'
        NombreDB = 'TipusCodi'
        Longitud = 20
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'C_Codi'
        Longitud = 2
        Consulta = 'codi'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Especialitat'
          'Tipuscodi'
          'Codi')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Codis'
        NombreDB = 'Codis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipuscodi'
          'Codi')
        Tipo = tiForaneo
        ForaneoDic = CodiCamps
        ForaneoCampos.Strings = (
          'Tipus'
          'C'#243'di')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'especial'
        NombreDB = 'especial'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Codi Especialitat')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Especial'
        Master = wDataBasics.Especial
        BuscaOrigen.Strings = (
          'Codi Especialitat')
        CopiarOrigen.Strings = (
          'Codi Especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end
      item
        Nombre = 'Tipus'
        Master = GrupCodiCamps
        BuscaOrigen.Strings = (
          'Tipuscodi')
        CopiarOrigen.Strings = (
          'Tipuscodi')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end
      item
        Nombre = 'codi'
        Master = CodiCamps
        BuscaOrigen.Strings = (
          'Tipuscodi'
          'Codi')
        CopiarOrigen.Strings = (
          'Tipuscodi'
          'Codi')
        CopiarMaster.Strings = (
          'Tipus'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Tipus'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Tipuscodi')
        FiltroMaster.Strings = (
          'Tipus')
      end>
    Nombre = 'EspecialCodiCamps'
    NombreTabla = 'EspecialCodiCamps'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipuscodi'
      'Codi'
      'Codi Especialitat')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 42459.6290277778
    Left = 338
    Top = 136
  end
  object ICDCodiCamps: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Tipuscodi'
        NombreDB = 'TipusCodi'
        Longitud = 20
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi'
        NombreDB = 'C_Codi'
        Longitud = 2
        Consulta = 'codi'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi ICD'
        NombreDB = 'C_ICD'
        Longitud = 15
        Consulta = 'icd'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'Tipus ICD'
        NombreDB = 'TipusICD'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        ValidChars = 'DP'
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
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Primaria'
        NombreDB = 'Primaria'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipuscodi'
          'Codi'
          'Codi ICD')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Codis'
        NombreDB = 'Codis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Tipuscodi'
          'Codi')
        Tipo = tiForaneo
        ForaneoDic = CodiCamps
        ForaneoCampos.Strings = (
          'Tipus'
          'C'#243'di')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'icd'
        NombreDB = 'icd'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Versi'#243' CIM'
          'Codi ICD')
        Tipo = tiForaneo
        ForaneoDic = CodiICD
        ForaneoCampos.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Tipus'
        Master = GrupCodiCamps
        BuscaOrigen.Strings = (
          'Tipuscodi')
        CopiarOrigen.Strings = (
          'Tipuscodi')
        CopiarMaster.Strings = (
          'Tipus')
        BuscaMaster.Strings = (
          'Tipus')
      end
      item
        Nombre = 'codi'
        Master = CodiCamps
        BuscaOrigen.Strings = (
          'Tipuscodi'
          'Codi')
        CopiarOrigen.Strings = (
          'Tipuscodi'
          'Codi')
        CopiarMaster.Strings = (
          'Tipus'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Tipus'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Tipuscodi')
        FiltroMaster.Strings = (
          'Tipus')
      end
      item
        Nombre = 'icd'
        Master = CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi ICD')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'Codi ICD')
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
      end>
    Nombre = 'ICDCodiCamps'
    NombreTabla = 'ICDCodiCamps'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipuscodi'
      'Codi'
      'Codi ICD'
      'Tipus ICD'
      'Versi'#243' CIM'
      'Ordre')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 42459.6290277778
    Left = 402
    Top = 136
  end
  object AragoEliminada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Arago'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      '  DECLARE VARIABLE HC        INTEGER;'
      '  DECLARE VARIABLE CP        VARCHAR(5);'
      '  DECLARE VARIABLE RESI_VELL VARCHAR(7);'
      '  DECLARE VARIABLE RESI_NOU  VARCHAR(7);'
      'BEGIN'
      
        '  FOR SELECT F.NUM_HIST, F.CODIGO, F.RESIDENCIA, P.C_RESIDENCIA ' +
        'FROM FILIACIO F'
      
        '  JOIN POBLACIO P ON F.CODIGO=P.CPOSTAL AND F.POBLACIO=P.N_POBLA' +
        'CIO'
      
        '  WHERE (F.RESIDENCIA STARTING WITH '#39'22'#39' OR F.RESIDENCIA STARTIN' +
        'G WITH '#39'44'#39' OR F.RESIDENCIA STARTING WITH '#39'50'#39')'
      '  AND   (F.RESIDENCIA <> P.C_RESIDENCIA)'
      '  ORDER BY F.CODIGO, F.RESIDENCIA, F.NUM_HIST'
      '  INTO :HC, :CP, :RESI_VELL, :RESI_NOU'
      '  DO BEGIN'
      
        '      UPDATE FILIACIO SET RESIDENCIA = :RESI_NOU WHERE NUM_HIST ' +
        '= :HC;'
      '  END;'
      'END')
    Dic1 = Poblacio
    Dic1Name = 'Poblacio'
    Abierta = False
    Borrame = False
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
    Top = 192
  end
  object CIM9CIM10: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi ICD 9'
        NombreDB = 'CIM9'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi ICD 10'
        NombreDB = 'CIM10'
        Longitud = 15
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
          'Codi ICD 9'
          'Codi ICD 10')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'CIM9CIM10'
    NombreTabla = 'CIM9CIM10'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi ICD 9'
      'Codi ICD 10')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 400
    Top = 488
  end
  object LogWSCoode: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador de register'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal a codificar'
        NombreDB = 'TokenName'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Versi'#243' CIM'
        NombreDB = 'CodeFamily'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Missatge d'#39'error'
        NombreDB = 'Error'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data en que es produeix l'#39'error'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Login'
        NombreDB = 'LOGIN'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ordinador'
        NombreDB = 'COMPUTER'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Identificador'
        NombreDB = 'Identificador'
        Longitud = 40
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
          'Identificador de register')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'LogWSCoode'
    NombreTabla = 'LogWSCoode'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de register'
      'Literal a codificar'
      'Versi'#243' CIM'
      'Missatge d'#39'error')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 472
    Top = 488
  end
  object Dispositiu: TDic
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
        Aplica = kcCaracter
        Nombre = 'Nom dispositiu'
        NombreDB = 'NOM'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi dispositiu'
        NombreDB = 'CODI'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Unitat d'#39'hospitalitzaci'#243
        NombreDB = 'UH'
        Longitud = 10
        Consulta = 'plantes'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Especialitat'
        NombreDB = 'C_ESPECIAL'
        Longitud = 2
        Consulta = 'especial'
        zType = tcIB_Char
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
      end>
    Consultas = <
      item
        Nombre = 'plantes'
        Master = wDataAdmisio.Plantas
        BuscaOrigen.Strings = (
          'Unitat d'#39'hospitalitzaci'#243)
        CopiarOrigen.Strings = (
          'Unitat d'#39'hospitalitzaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Planta')
        BuscaMaster.Strings = (
          'N'#186' Planta')
      end
      item
        Nombre = 'especial'
        Master = wDataBasics.Especial
        BuscaOrigen.Strings = (
          'Especialitat')
        CopiarOrigen.Strings = (
          'Especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end>
    Nombre = 'Dispositiu'
    NombreTabla = 'Dispositiu'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador'
      'Nom dispositiu'
      'Codi dispositiu'
      'Unitat d'#39'hospitalitzaci'#243
      'Especialitat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 256
    Top = 248
  end
end
