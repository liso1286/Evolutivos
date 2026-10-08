object wDataEducacio: TwDataEducacio
  OldCreateOrder = False
  Left = 419
  Top = 288
  Height = 114
  Width = 371
  object EduParams: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi'
        NombreDB = 'C_Param'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'N_Param'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = #192'rea'
        NombreDB = 'C_Area'
        Longitud = 3
        Consulta = 'area'
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'fk a arees'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Informaci'#243
        NombreDB = 'Info'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'en qu'#232' consisteix l'#39'aprenentatge'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Resum informe'
        NombreDB = 'Resum'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Frase que es bolcar'#224' a l'#39'informe d'#39'alta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = '0: grup, 1: par'#224'metre'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
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
        ValidChars = 'NB'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Grup'
        NombreDB = 'c_grup'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' cast'
        NombreDB = 'N_Param2'
        Longitud = 100
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
          'Codi')
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
          #192'rea')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Areas
        ForaneoCampos.Strings = (
          'C'#243'di Area')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'area_ordre'
        NombreDB = 'area_ordre'
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
    Consultas = <
      item
        Nombre = 'area'
        Master = wDataBasics.Areas
        BuscaOrigen.Strings = (
          #192'rea')
        CopiarOrigen.Strings = (
          #192'rea')
        CopiarMaster.Strings = (
          'C'#243'di Area')
        BuscaMaster.Strings = (
          'C'#243'di Area')
      end>
    Nombre = 'EduParams'
    NombreTabla = 'EduParams'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi'
      'Descripci'#243
      #192'rea'
      'Informaci'#243
      'Resum informe'
      'Tipus'
      'Ordre'
      'Baixa'
      'Grup')
    IndiceVer = 'area_ordre'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659114583
    Left = 32
    Top = 16
  end
  object EduCap: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C EduCap'
        NombreDB = 'C_EduCap'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'pk'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Hist'#242'ria'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        Consulta = 'hist'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'fk a filiaci'#243
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'fk a tractaments'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Par'#224'metre'
        NombreDB = 'C_Param'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        Consulta = 'parametre'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'fk a eduparams'
      end
      item
        Aplica = kcMODELS
        Nombre = 'A qui'
        NombreDB = 'A_Qui'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'P: pacient, F: fam'#237'lia'
        ValidChars = 'PF'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data detecci'#243
        NombreDB = 'Data_Deteccio'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari detecci'#243
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'usuari'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk a metges'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 1
        MaskDisplay = '#,##0;;0'
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = '-1 anul'#183'lat, 0 detecci'#243', 1 inici, 2 seguiment, 3: assolit'
      end>
    Indices = <
      item
        Nombre = 'Codi'
        NombreDB = 'Codi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C EduCap')
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
          'N'#250'm. Hist'#242'ria'
          'Data detecci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'parametre'
        NombreDB = 'parametre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Par'#224'metre')
        Tipo = tiForaneo
        ForaneoDic = EduParams
        ForaneoCampos.Strings = (
          'Codi')
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
          'C Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
          'N'#250'm. Hist'#242'ria')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
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
          'Usuari detecci'#243)
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
        WhereFiltro = 'TIPUSCODI = '#39'EDU_ESTAT'#39
      end
      item
        Nombre = 'parametre'
        Master = EduParams
        BuscaOrigen.Strings = (
          'C Par'#224'metre')
        CopiarOrigen.Strings = (
          'C Par'#224'metre')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'tract'
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
        Nombre = 'hist'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'N'#250'm. Hist'#242'ria')
        CopiarOrigen.Strings = (
          'N'#250'm. Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'usuari'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari detecci'#243)
        CopiarOrigen.Strings = (
          'Usuari detecci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'EduCap'
    NombreTabla = 'EduCap'
    Organiza = tbBase
    CamposVer.Strings = (
      'C EduCap'
      'N'#250'm. Hist'#242'ria'
      'C Tractament'
      'C Par'#224'metre'
      'A qui'
      'Data detecci'#243
      'Usuari detecci'#243
      'Estat')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659114583
    Left = 168
    Top = 16
  end
  object EduLin: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_EduLin'
        NombreDB = 'C_EduLin'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'pk'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C EduCap'
        NombreDB = 'C_EduCap'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        Consulta = 'CodiCap'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'fk a educap'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'per si canvia i no '#233's el mateix que el de la cap'#231'alera'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Actuaci'#243
        NombreDB = 'C_Actuacio'
        Longitud = 2
        MaskDisplay = '#,##0;;0'
        Consulta = 'actuacio'
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'consulta a codicamps'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Anotaci'#243
        NombreDB = 'Anotacio'
        Longitud = 3000
        zType = tcIB_Varchar
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
        Aplica = kcMODELS
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
        Nombre = 'CodiLin'
        NombreDB = 'CodiLin'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_EduLin')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'CodiCap'
        NombreDB = 'CodiCap'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C EduCap')
        Tipo = tiForaneo
        ForaneoDic = EduCap
        ForaneoCampos.Strings = (
          'C EduCap')
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
        Nombre = 'tract'
        NombreDB = 'tract'
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
      end>
    Consultas = <
      item
        Nombre = 'actuacio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Actuaci'#243)
        CopiarOrigen.Strings = (
          'C Actuaci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'EDU_ACTUACIO'#39
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
        Nombre = 'CodiCap'
        Master = EduCap
        BuscaOrigen.Strings = (
          'C EduCap')
        CopiarOrigen.Strings = (
          'C EduCap')
        CopiarMaster.Strings = (
          'C EduCap')
        BuscaMaster.Strings = (
          'C EduCap')
      end
      item
        Nombre = 'tract'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'C Tractament')
        CopiarOrigen.Strings = (
          'C Tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end>
    Nombre = 'EduLin'
    NombreTabla = 'EduLin'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_EduLin'
      'C EduCap'
      'C Tractament'
      'C Actuaci'#243
      'Anotaci'#243
      'Data'
      'Usuari'
      'Anul'#183'lat'
      'Data anul'#183'lat')
    IndiceVer = 'Data'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659114583
    Left = 232
    Top = 16
  end
  object EduLinDocs: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_EduLin'
        NombreDB = 'C_EduLin'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'fk a EduLin'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Document'
        NombreDB = 'C_Doc'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        Consulta = 'Doc'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'consulta a EduDocs'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_EduLin'
          'Document')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'CodiLin'
        NombreDB = 'CodiLin'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_EduLin')
        Tipo = tiForaneo
        ForaneoDic = EduLin
        ForaneoCampos.Strings = (
          'C_EduLin')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Doc'
        NombreDB = 'Doc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Document')
        Tipo = tiForaneo
        ForaneoDic = EduDocs
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Doc'
        Master = EduDocs
        BuscaOrigen.Strings = (
          'Document')
        CopiarOrigen.Strings = (
          'Document')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end>
    Nombre = 'EduLinDocs'
    NombreTabla = 'EduLinDocs'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_EduLin'
      'Document')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659114583
    Left = 296
    Top = 16
  end
  object EduDocs: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi'
        NombreDB = 'C_Doc'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'pk'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243
        NombreDB = 'N_Doc'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = #192'rea'
        NombreDB = 'C_Area'
        Longitud = 3
        Consulta = 'area'
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'fk a arees'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 8
        MaskDisplay = '#,##0;;0'
        zType = tcIB_Integer
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
        ValidChars = 'SN'
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
        Aplica = kcSiNo
        Nombre = 'Landscape catal'#224
        NombreDB = 'T_Doc'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'S'
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
        zNotNull = False
        zDefault = 'S'
        Comentario = 'S: Landscape, N: Portrait'
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
          'Codi')
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
          #192'rea')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Areas
        ForaneoCampos.Strings = (
          'C'#243'di Area')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'area_ordre'
        NombreDB = 'area_ordre'
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
    Consultas = <
      item
        Nombre = 'area'
        Master = wDataBasics.Areas
        BuscaOrigen.Strings = (
          #192'rea')
        CopiarOrigen.Strings = (
          #192'rea')
        CopiarMaster.Strings = (
          'C'#243'di Area')
        BuscaMaster.Strings = (
          'C'#243'di Area')
      end>
    Nombre = 'EduDocs'
    NombreTabla = 'EduDocs'
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
    IndiceVer = 'area_ordre'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37427.4659114583
    Left = 96
    Top = 16
  end
end
