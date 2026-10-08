object wDataAdmisio: TwDataAdmisio
  OldCreateOrder = False
  Left = 636
  Top = 137
  Height = 641
  Width = 977
  object Bloqueig: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Llit'
        NombreDB = 'C_Llit'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Inici Bloqueig'
        NombreDB = 'Data_Inici'
        Longitud = 8
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Fi Bloqueig'
        NombreDB = 'Data_Fi'
        Longitud = 40
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu Bloqueig Altres'
        NombreDB = 'Motiu_Bloqueig'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Motiu Bloqueig'
        NombreDB = 'C_Motiu'
        Longitud = 3
        Consulta = 'MotiuBloqueig'
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
          'Llit'
          'Data Inici Bloqueig')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Llit'
        NombreDB = 'Llit'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Llit')
        Tipo = tiForaneo
        ForaneoDic = Llits
        ForaneoCampos.Strings = (
          'N'#186' Llit')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'MotiuBloqueig'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codi Motiu Bloqueig')
        CopiarOrigen.Strings = (
          'Codi Motiu Bloqueig')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'LLIT.MOTIU_BLOQUEIG'#39' AND ORDRE>0'
      end>
    Nombre = 'Bloqueig de llits'
    NombreTabla = 'LLITBLOQUEIG'
    Organiza = tbBase
    CamposVer.Strings = (
      'Llit'
      'Data Inici Bloqueig'
      'Data Fi Bloqueig'
      'Codi Motiu Bloqueig'
      'Motiu Bloqueig Altres')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540165857
    Left = 154
    Top = 200
  end
  object Llits: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Llit'
        NombreDB = 'C_LLit'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Planta'
        NombreDB = 'C_Planta'
        Longitud = 10
        Consulta = 'Plantas'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCodigo
        Nombre = 'Estat'
        NombreDB = 'C_Estat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'O'
        Comentario = 'O:obert;T:tancat'
        ValidChars = 'OT'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 2
        Consulta = 'tipusllit'
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
          'N'#186' Llit')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Planta'
        NombreDB = 'Planta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'N'#186' Planta')
        Tipo = tiForaneo
        ForaneoDic = Plantas
        ForaneoCampos.Strings = (
          'N'#186' Planta')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Plantas'
        Master = Plantas
        BuscaOrigen.Strings = (
          'N'#186' Planta')
        CopiarOrigen.Strings = (
          'N'#186' Planta')
        CopiarMaster.Strings = (
          'N'#186' Planta')
        BuscaMaster.Strings = (
          'N'#186' Planta')
        FiltroOrigen.Strings = (
          'N'#186' Planta')
        FiltroMaster.Strings = (
          'N'#186' Planta')
      end
      item
        Nombre = 'tipusllit'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "LLIT.TIPUS"'
      end>
    Nombre = 'Llits'
    NombreTabla = 'LLITS'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Llit'
      'N'#186' Planta'
      'Tipus')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540173958
    Left = 94
    Top = 200
  end
  object Passis: TDic
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
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_PASSIS'
        Comentario = 'PK'
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
        Nombre = 'N'#250'm. Hist.'
        NombreDB = 'C_Historia'
        Longitud = 4
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Inici'
        NombreDB = 'Inici'
        Longitud = 12
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Fi'
        NombreDB = 'Fi'
        Longitud = 12
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Infermera passi'
        NombreDB = 'Infer_Passi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data passi'
        NombreDB = 'Data_Passi'
        Longitud = 19
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Inici administraci'#243
        NombreDB = 'Adm_Inici'
        Longitud = 19
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Fi administraci'#243
        NombreDB = 'Adm_Fi'
        Longitud = 19
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data administraci'#243
        NombreDB = 'Data_Admin'
        Longitud = 19
        zType = tcIB_Date
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
          'N'#250'm. Hist.'
          'Data Inici')
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
        Tipo = tiUnique
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'PASSIS'
    NombreTabla = 'PASSIS'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Hist.'
      'Data Inici'
      'Data Fi'
      'Infermera passi'
      'Inici administraci'#243
      'Fi administraci'#243)
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540184375
    Left = 32
    Top = 260
  end
  object Espera: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Llista Espera'
        NombreDB = 'C_Espera'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'CONTALLISTAESPERA'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Historia'
        NombreDB = 'C_Historia'
        Longitud = 5
        MaskDisplay = '####0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Presta'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Coordinador'
        NombreDB = 'C_Coordinador'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Inclusi'#243
        NombreDB = 'Data_Inclusio'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        zDefault = 'Hoy'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data PreIngr'#233's'
        NombreDB = 'Data_PreIngres'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora PreIngr'#233's'
        NombreDB = 'Hora_PreIngres'
        Longitud = 5
        MaskDisplay = 'hh":"nn'
        MaskEdit = '00:00'
        zType = tcIB_Char
        zNotNull = False
        zDefault = '00:00'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'Nom'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = '1'#186' Cognom'
        NombreDB = 'Cognom1'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = '2'#186' Cognom'
        NombreDB = 'Cognom2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom Complet'
        NombreDB = 'NomComplet'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        zBlobSubTipo = 'TEXT'
        Comentario = 'mantingut de noms'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Telefon'
        NombreDB = 'TELEFON'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = False
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
        Aplica = kcMODELS
        Nombre = 'Caracter'
        NombreDB = 'C_Caracter'
        Longitud = 2
        Consulta = 'Caracter'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Procedencia'
        NombreDB = 'C_Procedencia'
        Longitud = 2
        Consulta = 'Origen'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu'
        NombreDB = 'C_Motiu'
        Longitud = 2
        Consulta = 'Motiu'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Frecuencia'
        NombreDB = 'C_Frecuencia'
        Longitud = 7
        Consulta = 'Frequencia'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia Fixe'
        NombreDB = 'DataFixe'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Exclusi'#243
        NombreDB = 'Data_Exclusio'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu Exclusi'#243
        NombreDB = 'MotiuExclusio'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Intervencio'
        NombreDB = 'INTERVENCIO'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comentari'
        NombreDB = 'COMENTARI'
        Longitud = 254
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'C_Estat'
        Longitud = 2
        Consulta = 'Estat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tractament Desti'
        NombreDB = 'C_TractamentDesti'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari Metge'
        NombreDB = 'ComentariMetge'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari Infermera'
        NombreDB = 'ComentariInfermera'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Metge Autoritzador'
        NombreDB = 'C_MetgeAutoritzacio'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Exclos'
        NombreDB = 'Exclos'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Ordre m'#232'dica'
        NombreDB = 'C_OM'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'ordre m'#232'dica futura de rec'#224'rrega de baclof'#232'n'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Lloc'
        NombreDB = 'Lloc'
        Longitud = 15
        Consulta = 'llocs'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'lloc on es far'#224' la rec'#224'rrega / planta on ingressar'#224
      end
      item
        Aplica = kcMODELS
        Nombre = 'Sexe'
        NombreDB = 'SEXO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'D=Dona, H=Home'
        ValidChars = 'HD'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID Registre sol'#183'licitud ingr'#233's'
        NombreDB = 'IDREGISTRE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Programada per'
        NombreDB = 'Metge_Programa'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Proc'#233's NR'
        NombreDB = 'C_Proces'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'indica a quin proc'#233's pertany una 2003'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data naixement'
        NombreDB = 'Data_Naix'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'CIP'
        NombreDB = 'CIP'
        Longitud = 14
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Acci'#243' HCCC'
        NombreDB = 'Accio_HCCC'
        Longitud = 1
        Consulta = 'accio_hccc'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'acci'#243' a realitzar a l'#39'HCCC'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Estat HCCC'
        NombreDB = 'Estat_HCCC'
        Longitud = 1
        Consulta = 'estat_hccc'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'estat de publicaci'#243' a l'#39'HCCC'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Seq'#252#232'ncia HCCC'
        NombreDB = 'Sequencia_HCCC'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'subcomptador d'#39'enviaments a HCCC'
      end
      item
        Aplica = kcCaracter
        Nombre = 'CIP antic'
        NombreDB = 'CIP_Antic'
        Longitud = 14
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Canvis de CIP -> despublicaci'#243' HCCC'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Centre de facturaci'#243
        NombreDB = 'C_CENTREFAC'
        Longitud = 2
        Consulta = 'CentreFac'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hospital origen'
        NombreDB = 'C_HospitalOrigen'
        Longitud = 2
        Consulta = 'hosporigen'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus de sessi'#243
        NombreDB = 'T_SESSIO'
        Longitud = 3
        Consulta = 'TSessio'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Client de facturaci'#243
        NombreDB = 'C_CLIENT'
        Longitud = 3
        Consulta = 'Client'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero usuari app'
        NombreDB = 'hce_person_id'
        Longitud = 10
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID Agenda HCE'
        NombreDB = 'hce_schedule_id'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Risc social'
        NombreDB = 'RISC_SOCIAL'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi transport'
        NombreDB = 'C_TRANSPORT_SANITARI'
        Longitud = 3
        Consulta = 'TransportSanitari'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Modalitat'
        NombreDB = 'C_Modalitat'
        Longitud = 2
        Consulta = 'modalitat'
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
          'N'#186' Llista Espera')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Fili'
        NombreDB = 'Fili'
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
        Nombre = 'TractDesti'
        NombreDB = 'TractDesti'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament Desti')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
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
          'Coordinador')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Estat'
        NombreDB = 'Estat'
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
        Nombre = 'Data'
        NombreDB = 'Data'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data PreIngr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Data Desc'
        NombreDB = 'DataDesc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data PreIngr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = True
      end
      item
        Nombre = 'Frequencia'
        NombreDB = 'Frequencia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Frecuencia')
        Tipo = tiForaneo
        ForaneoDic = wDataGimnas.TornAmb
        ForaneoCampos.Strings = (
          'Codi')
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
          'Coordinador'
          'Prestaci'#243
          'Data PreIngr'#233's'
          'Estat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'NomComplet'
        NombreDB = 'NomComplet'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Nom Complet')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Hora'
        NombreDB = 'Hora'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Hora PreIngr'#233's')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'OM'
        NombreDB = 'OM'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Ordre m'#232'dica')
        Tipo = tiForaneo
        ForaneoDic = wDataOMdics.OrdresMediques
        ForaneoCampos.Strings = (
          'C Ordre M'#232'dica')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'HCCC'
        NombreDB = 'HCCC'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Acci'#243' HCCC')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'N'#186' Historia')
        CopiarOrigen.Strings = (
          'N'#186' Historia'
          '1'#186' Cognom'
          '2'#186' Cognom'
          'Nom'
          'Unitat'
          'Telefon')
        CopiarMaster.Strings = (
          'N'#186' Historia'
          'Cognom 1'
          'Cognom 2'
          'Nom'
          'Unitat'
          'Tel'#233'fon')
        BuscaMaster.Strings = (
          'N'#186' Historia')
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
        Nombre = 'Metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Coordinador')
        CopiarOrigen.Strings = (
          'Coordinador')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        RefreshOnCascade = True
      end
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
        RefreshOnCascade = True
        ValidateValue = True
      end
      item
        Nombre = 'Origen'
        Master = vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Procedencia')
        CopiarOrigen.Strings = (
          'Procedencia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "ORIGEN" and ORDRE >= 0'
        ValidateValue = True
      end
      item
        Nombre = 'Caracter'
        Master = vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Caracter')
        CopiarOrigen.Strings = (
          'Caracter')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "CARACTER"'
        ValidateValue = True
      end
      item
        Nombre = 'Motiu'
        Master = vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Motiu')
        CopiarOrigen.Strings = (
          'Motiu')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = "MOTIU" and ORDRE >= 0'
        ValidateValue = True
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
        WhereFiltro = 'TIPUSCODI = "ESTATESPERA"'
        ValidateValue = True
      end
      item
        Nombre = 'Frequencia'
        Master = wDataGimnas.TornAmb
        BuscaOrigen.Strings = (
          'Frecuencia')
        CopiarOrigen.Strings = (
          'Frecuencia')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'llocs'
        Master = vLlocs
        BuscaOrigen.Strings = (
          'Lloc')
        CopiarOrigen.Strings = (
          'Lloc')
        CopiarMaster.Strings = (
          'Lloc')
        BuscaMaster.Strings = (
          'Lloc')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C_Prestaci'#243)
        ValidateValue = True
      end
      item
        Nombre = 'accio_hccc'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Acci'#243' HCCC')
        CopiarOrigen.Strings = (
          'Acci'#243' HCCC')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'ESPERA.ACCIO_HCCC'#39
      end
      item
        Nombre = 'estat_hccc'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Estat HCCC')
        CopiarOrigen.Strings = (
          'Estat HCCC')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'ESPERA.ESTAT_HCCC'#39
      end
      item
        Nombre = 'CentreFac'
        Master = wDataFactu.CentreFac
        BuscaOrigen.Strings = (
          'Centre de facturaci'#243)
        CopiarOrigen.Strings = (
          'Centre de facturaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Centre')
        BuscaMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'hosporigen'
        Master = wDataCodis.Hospital
        BuscaOrigen.Strings = (
          'Hospital origen')
        CopiarOrigen.Strings = (
          'Hospital origen')
        CopiarMaster.Strings = (
          'N'#186' Hospital')
        BuscaMaster.Strings = (
          'N'#186' Hospital')
      end
      item
        Nombre = 'TSessio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus de sessi'#243)
        CopiarOrigen.Strings = (
          'Tipus de sessi'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'T_SESSIO'#39
      end
      item
        Nombre = 'Client'
        Master = wDataFactu.Clients
        BuscaOrigen.Strings = (
          'Centre de facturaci'#243
          'Client de facturaci'#243)
        CopiarOrigen.Strings = (
          'Centre de facturaci'#243
          'Client de facturaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
      end
      item
        Nombre = 'TransportSanitari'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codi transport')
        CopiarOrigen.Strings = (
          'Codi transport')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'TRANSPORT_SANITARI'#39
      end
      item
        Nombre = 'modalitat'
        Master = vPrestaCodiCamps
        BuscaOrigen.Strings = (
          'Modalitat')
        CopiarOrigen.Strings = (
          'Modalitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Prestaci'#243)
        FiltroMaster.Strings = (
          'C'#243'di Prestacio')
        WhereFiltro = 'TIPUSCODI = '#39'ATENCIO.MODALITAT'#39' and ORDRE >= 0'
        ValidateValue = True
      end>
    Nombre = 'ESPERA'
    NombreTabla = 'ESPERA'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Llista Espera'
      'N'#186' Historia'
      'Prestaci'#243
      'Coordinador'
      'Data Inclusi'#243
      'Data PreIngr'#233's'
      'Hora PreIngr'#233's'
      'Nom'
      '1'#186' Cognom'
      '2'#186' Cognom'
      'Nom Complet'
      'Telefon'
      'Unitat'
      'Caracter'
      'Procedencia'
      'Motiu'
      'Frecuencia'
      'Dia Fixe'
      'Data Exclusi'#243
      'Motiu Exclusi'#243
      'Intervencio'
      'Comentari'
      'Estat'
      'Tractament Desti'
      'Comentari Metge'
      'Comentari Infermera'
      'Metge Autoritzador'
      'Exclos'
      'Ordre m'#232'dica'
      'Lloc'
      'Sexe'
      'ID Registre sol'#183'licitud ingr'#233's'
      'Programada per'
      'Proc'#233's NR'
      'Data naixement'
      'CIP'
      'Acci'#243' HCCC'
      'Estat HCCC'
      'Seq'#252#232'ncia HCCC'
      'CIP antic'
      'Centre de facturaci'#243
      'Hospital origen'
      'Tipus de sessi'#243
      'Client de facturaci'#243
      'N'#250'mero usuari app'
      'ID Agenda HCE'
      'Risc social'
      'Codi transport'
      'Modalitat')
    IndiceVer = 'Codi'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540244676
    Left = 32
    Top = 20
  end
  object Plantas: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Planta'
        NombreDB = 'C_Planta'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Planta'
        NombreDB = 'N_Planta'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Centre de Cost'
        NombreDB = 'CentreCost'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia'
        NombreDB = 'Dia'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'passi de visita / sessi'#243' conjunta'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Unitat'
        NombreDB = 'Unitat'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID armari'
        NombreDB = 'ID_Armari'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia alta'
        NombreDB = 'Dia_Alta'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'altes hospital'#224'ries'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora servei OM'
        NombreDB = 'Hora_Servei'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        Consulta = 'tipusplanta'
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
          'N'#186' Planta')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipusplanta'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'PLANTES.TIPUS'#39
      end>
    Nombre = 'Plantes'
    NombreTabla = 'Plantes'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Planta'
      'Planta'
      'Dia'
      'Unitat')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.754025162
    Left = 32
    Top = 200
  end
  object Vacaciones: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia'
        NombreDB = 'Dia'
        Longitud = 8
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Comentario'
        NombreDB = 'Comentario'
        Longitud = 40
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
          'Metge'
          'Dia')
        Tipo = tiPrimario
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
          'Metge')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Vacaciones'
    NombreTabla = 'Vacaciones'
    Organiza = tbBase
    CamposVer.Strings = (
      'Metge'
      'Dia'
      'Comentario')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540257407
    Left = 32
    Top = 140
  end
  object Horario: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia'
        NombreDB = 'DIA'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hora Desde'
        NombreDB = 'HDESDE'
        Longitud = 8
        MaskDisplay = '#,##0;;00'
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Minuto Desde'
        NombreDB = 'MDESDE'
        Longitud = 8
        MaskDisplay = '#,##0;;00'
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hora Hasta'
        NombreDB = 'HHASTA'
        Longitud = 8
        MaskDisplay = '#,##0;;00'
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Minuto Hasta'
        NombreDB = 'MHASTA'
        Longitud = 8
        MaskDisplay = '#,##0;;00'
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Duraci'#243
        NombreDB = 'Duracio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = '(((hhasta*60)+mhasta) - ((hdesde*60)+mdesde))'
      end
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
        AutoContador.Generator = 'G_HORARIO'
      end>
    Indices = <
      item
        Nombre = 'Prima'
        NombreDB = 'Prima'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Metge'
          'Dia'
          'Hora Desde'
          'Minuto Desde'
          'Hora Hasta'
          'Minuto Hasta')
        Tipo = tiPrimario
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
          'Metge')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'MetgeDia'
        NombreDB = 'MetgeDia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Metge'
          'Dia')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Horario'
    NombreTabla = 'HORARIO'
    Organiza = tbBase
    CamposVer.Strings = (
      'Metge'
      'Dia'
      'Hora Desde'
      'Minuto Desde'
      'Hora Hasta'
      'Minuto Hasta'
      'Duraci'#243)
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540271412
    Left = 94
    Top = 140
  end
  object PrestaCodiCamps: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Prestacio'
        NombreDB = 'C_Prestacio'
        Longitud = 4
        Consulta = 'Prestacions'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
        Consulta = 'Tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di'
        NombreDB = 'C_Codi'
        Longitud = 2
        Consulta = 'Codi'
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
          'C'#243'di Prestacio'
          'Tipus'
          'C'#243'di')
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
          'Tipus'
          'C'#243'di')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.CodiCamps
        ForaneoCampos.Strings = (
          'Tipus'
          'C'#243'di')
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
          'C'#243'di Prestacio')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Prestacion
        ForaneoCampos.Strings = (
          'C'#243'di Prestacio')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Prestacions'
        Master = wDataBasics.Prestacion
        BuscaOrigen.Strings = (
          'C'#243'di Prestacio')
        CopiarOrigen.Strings = (
          'C'#243'di Prestacio')
        CopiarMaster.Strings = (
          'C'#243'di Prestacio')
        BuscaMaster.Strings = (
          'C'#243'di Prestacio')
        RefreshOnCascade = True
      end
      item
        Nombre = 'Tipus'
        Master = wDataCodis.GrupCodiCamps
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
        Nombre = 'Codi'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus'
          'C'#243'di')
        CopiarOrigen.Strings = (
          'Tipus'
          'C'#243'di')
        CopiarMaster.Strings = (
          'Tipus'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Tipus'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Tipus')
        FiltroMaster.Strings = (
          'Tipus')
      end>
    Nombre = 'PrestaCodiCamps'
    NombreTabla = 'PrestaCodiCamps'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di Prestacio'
      'Tipus'
      'C'#243'di')
    IndiceVer = 'Primaria'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540278356
    Left = 690
    Top = 20
  end
  object vPrestaCodiCamps: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Prestacio'
        NombreDB = 'C_Prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'TipusCodi'
        Longitud = 20
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
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 40
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
        Nombre = 'ordre'
        NombreDB = 'ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Ordre'
          'C'#243'di')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Codi Camps Virtual'
    NombreTabla = 'V_PRESTACODICAMPS_L'
    Organiza = tbBase
    CamposVer.Strings = (
      'C'#243'di'
      'Descripci'#243)
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = True
    Modi = True
    ModiFecha = 36949.5295688773
    Left = 880
    Top = 20
  end
  object LlistaEspera: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'LlistaEspera'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '   ESTATDESDE   INTEGER,'
      '   ESTATHASTA   INTEGER,'
      '   EC_PRESTACIO INTEGER,'
      '   FECHA DATE'
      ') '
      'RETURNS ('
      '   Visitat              CHAR, '
      '   C_Espera             INTEGER, '
      '   C_Prestacio          VARCHAR(4),'
      '   N_Prestacio          VARCHAR(40),'
      '   C_Historia           INTEGER, '
      '   Nom                  VARCHAR(20),'
      '   Cognom1              VARCHAR(20),'
      '   Cognom2              VARCHAR(20),'
      '   NomComplet           VARCHAR(80),'
      '   EDAT                 INTEGER,'
      '   SEXE                 CHAR(1),'
      '   RISC_SOCIAL          INTEGER,'
      '   TELEFON              VARCHAR(10),'
      '   Data_PreIngres       DATE, '
      '   Data_Inclusio        DATE,'
      '   HORA_PreIngres       CHAR(5), '
      '   C_Motiu              SMALLINT,'
      '   MOTIU                VARCHAR(15),'
      '   C_Modalitat          SMALLINT,'
      '   MODALITAT            VARCHAR(15),'
      '   C_Unitat             SMALLINT,'
      '   C_Coordinador        VARCHAR(5),'
      '   PLANTA               VARCHAR(10),'
      '   C_Caracter           SMALLINT,'
      '   N_Caracter           VARCHAR(10),'
      '   CENTREFAC            VARCHAR(2),'
      '   COMENTARI            VARCHAR(254),'
      '   C_Procedencia        SMALLINT,'
      '   N_Procedencia        VARCHAR(10),'
      '   C_HospitalOrigen     SMALLINT,'
      '   N_HospitalOrigen     VARCHAR(80),'
      '   C_Estat              Integer,'
      '   C_Frecuencia         Char(7),'
      '   C_ESPECIALITAT       Char(2),'
      '   METGE_AUTORITZACIO   VARCHAR(5),'
      '   USUARI_MODIFICACIO   VARCHAR(5),'
      '   PREOPERATORI         SMALLINT,'
      '   C_OM                 INTEGER,'
      '   DATA_NAIX            DATE,'
      '   CIP                  VARCHAR(14),'
      '   C_CLIENT             VARCHAR(3),'
      '   IDREGISTRE           INTEGER,'
      '   C_TRANSPORT_SANITARI SMALLINT,'
      '   CENTRE               CHAR(1),'
      '   C_TractamentOrigen   INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE R_MOTIU                VARCHAR(10);'
      '  DECLARE VARIABLE TRENCA                 INTEGER;'
      '  DECLARE VARIABLE CONTA                  INTEGER;'
      '  DECLARE VARIABLE C_TractamentDesti      INTEGER;'
      'BEGIN'
      '   '
      '   TRENCA = -1;'
      '   CONTA  = 0;   '
      '   '
      
        '   FOR SELECT A.C_Espera, A.C_Prestacio, P.N_Prestacio, A.C_Hist' +
        'oria, A.NOMCOMPLET, A.Nom, A.Cognom1, A.Cognom2, A.Telefon, A.DA' +
        'TA_INCLUSIO, A.Data_PreIngres, A.Hora_PreIngres, A.C_Motiu, A.C_' +
        'Modalitat,'
      
        '              C_Unitat, A.C_Coordinador, A.Data_Inclusio, A.C_CA' +
        'RACTER,  A.COMENTARI, A.C_Procedencia, A.C_HospitalOrigen, A.C_T' +
        'ractamentDesti, A.C_Estat, A.C_Frecuencia, A.C_MetgeAutoritzacio' +
        ', M.C_ESPECIAL,'
      
        '              A.C_OM, A.SEXO, A.LLOC, Data_Naix, CIP, A.C_Centre' +
        'Fac, A.METGE_PROGRAMA, A.C_CLIENT, A.IDREGISTRE, A.RISC_SOCIAL, ' +
        'A.C_TRANSPORT_SANITARI, P.CENTRE, A.C_TractamentOrigen'
      '       FROM  ESPERA A'
      
        '       LEFT  OUTER JOIN PRESTACION P ON A.C_PRESTACIO = P.C_PRES' +
        'TACIO'
      '       LEFT  OUTER JOIN METGES     M ON M.CODI = A.C_COORDINADOR'
      '       WHERE A.C_ESTAT >= :ESTATDESDE /*20*/'
      '       AND   A.C_ESTAT <= :ESTATHASTA /*29*/'
      '       AND   A.EXCLOS = "N"'
      
        '       AND (:EC_PRESTACIO IS NULL OR C_PRESTACIO = :EC_PRESTACIO' +
        ')'
      '       AND (:FECHA IS NULL OR DATA_PREINGRES = :FECHA)'
      '       ORDER BY C_MOTIU, DATA_INCLUSIO'
      
        '       INTO :C_Espera, :C_Prestacio, :N_Prestacio, :C_Historia, ' +
        ' :NOMCOMPLET, :Nom, :Cognom1, :Cognom2, :Telefon, :DATA_INCLUSIO' +
        ', :Data_PreIngres, :Hora_PreIngres, :C_Motiu, :C_Modalitat,'
      
        '            :C_Unitat, :C_Coordinador, :Data_Inclusio, :C_Caract' +
        'er,  :COMENTARI, :C_Procedencia, :C_HospitalOrigen, :C_Tractamen' +
        'tDesti, :C_Estat, :C_Frecuencia, :METGE_AUTORITZACIO, :C_ESPECIA' +
        'LITAT,'
      
        '            :C_OM, :SEXE, :PLANTA, :Data_Naix, :CIP, :CENTREFAC,' +
        ' :USUARI_MODIFICACIO, :C_CLIENT, :IDREGISTRE, :RISC_SOCIAL, :C_T' +
        'RANSPORT_SANITARI, :CENTRE, :C_TractamentOrigen'
      '   DO BEGIN'
      '   '
      '      EDAT = NULL;'
      
        '      SELECT EDAT FROM FILIACIO WHERE NUM_HIST = :C_HISTORIA INT' +
        'O :EDAT;'
      '      '
      '      SEXE = NULL;'
      
        '      SELECT SEXO FROM FILIACIO WHERE NUM_HIST = :C_HISTORIA INT' +
        'O :SEXE;'
      ''
      
        '      IF (C_TRACTAMENTORIGEN IS NULL) THEN C_TractamentOrigen = ' +
        '0;'
      ''
      '      IF (C_TRACTAMENTDESTI IS NULL) THEN VISITAT = "N";'
      '                                     ELSE VISITAT = "S";'
      '      /* CARACTER */'
      '      N_CARACTER = "";'
      '      SELECT R_CODI'
      '      FROM   CODICAMPS'
      '      WHERE  TIPUSCODI = "CARACTER" AND C_CODI = :C_CARACTER'
      '      INTO  :N_CARACTER;'
      ''
      '      /* PROCED'#200'NCIA (ORIGEN) */'
      '      N_PROCEDENCIA = "";'
      '      SELECT R_CODI'
      '      FROM   CODICAMPS'
      '      WHERE  TIPUSCODI = "ORIGEN" AND C_CODI = :C_PROCEDENCIA'
      '      INTO  :N_PROCEDENCIA;'
      '      '
      '      /* HOSPITAL PROCED'#200'NCIA */'
      '      N_HOSPITALORIGEN = "";'
      '      SELECT N_HOSPITAL'
      '      FROM HOSPITAL'
      '      WHERE C_HOSPITAL = :C_HOSPITALORIGEN'
      '      INTO :N_HOSPITALORIGEN;'
      ''
      '      /* MOTIU */'
      '      R_MOTIU = "";'
      '      SELECT R_CODI FROM CODICAMPS C'
      '      WHERE C.TIPUSCODI = "MOTIU" AND C_CODI = :C_MOTIU'
      '      INTO :R_MOTIU;'
      ''
      '      IF (TRENCA <> C_MOTIU) THEN'
      '      BEGIN'
      '         CONTA = 0;        '
      '         TRENCA = C_MOTIU;'
      '      END;'
      ''
      '      CONTA = CONTA + 1;'
      '      if      (conta >= 100) then MOTIU = R_MOTIU||"-"  ||CONTA;'
      '      else if (conta >=  10) then MOTIU = R_MOTIU||"-0" ||CONTA;'
      '                             else MOTIU = R_MOTIU||"-00"||CONTA;'
      ''
      '      /* MODALITAT */'
      '      MODALITAT = "";'
      '      SELECT R_CODI FROM CODICAMPS C'
      
        '      WHERE C.TIPUSCODI = "ATENCIO.MODALITAT" AND C_CODI = :C_MO' +
        'DALITAT'
      '      INTO :MODALITAT;'
      ''
      ''
      '      PREOPERATORI = 0;'
      
        '      SELECT ESTAT_INTERV FROM PREOPERATORI WHERE C_HISTORIA = :' +
        'C_HISTORIA ORDER BY ID DESC'
      '      ROWS 1 INTO :PREOPERATORI;'
      ''
      '      SUSPEND;'
      '   END;'
      '   '
      'END')
    Select.Strings = (
      
        'SELECT motiu, codi_motiu FROM P_ESPERA_LLISTAESPERA(0,90, "1004"' +
        ', null )'
      '[FILTRO]'
      '[ORDEN]')
    Dic1 = Espera
    Dic2 = wDataCodis.CodiCamps
    Dic1Name = 'Espera'
    Dic2Name = 'Codis'
    Abierta = False
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
    ModiFecha = 37194.7325127315
    Left = 424
    Top = 20
  end
  object HistEspera: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HistEspera'
    ForceNombreDB = False
    Body.Strings = (
      
        '/* NOS MUESTRA LOS USUARIOS EN LOS RANGOS DE ESTADO QUE LE ESTAB' +
        'LEZCAMOS Y TB PODEMOS FILTRAR POR UNA PRESTACI'#211'N DETERMINADA*/'
      '('
      '   EC_HISTORIA  INTEGER'
      ') '
      'RETURNS ('
      ''
      '  C_Espera INTEGER, '
      '  C_Prestacio VARCHAR (4), '
      '  N_Prestacio VARCHAR (40), '
      '  Data_Inclusio DATE, '
      '  C_Motiu SMALLINT, '
      '  C_Procedencia SMALLINT, '
      '  C_Caracter SMALLINT, '
      '  Data_PreIngres DATE, '
      '  UNITAT SMALLINT, '
      '  C_Estat SMALLINT, '
      '  N_Codi VARCHAR (40) '
      ''
      ')  '
      'AS'
      'BEGIN'
      '   '
      
        '   FOR SELECT  A.C_ESPERA,  A.C_ESTAT, A.C_PRESTACIO, P.N_PRESTA' +
        'CIO, A.DATA_INCLUSIO, C.N_CODI,  A.C_MOTIU, A.C_PROCEDENCIA, A.C' +
        '_CARACTER, B.UNITAT,  A.Data_PreIngres'
      '       FROM [ESPERA] A, [FILIACIO] B, [CODIS] C, PRESTACION P'
      '       WHERE A.C_HISTORIA   = B.NUM_HIST '
      '         AND A.C_HISTORIA   = :EC_HISTORIA'
      '         AND C.TIPUSCODI    = "ESTATESPERA"'
      '         AND C.C_CODI       = A.C_ESTAT'
      '         AND A.C_PRESTACIO  = P.C_PRESTACIO'
      '       /*AND   A.C_ESTAT >= 20 AND A.C_ESTAT <29*/'
      '         AND (B.BLOQUEIG IS NULL OR B.BLOQUEIG = "P")'
      '       ORDER BY DATA_INCLUSIO DESC'
      
        '       INTO :C_ESPERA,  :C_ESTAT, :C_PRESTACIO, :N_PRESTACIO, :D' +
        'ATA_INCLUSIO, :N_CODI,  :C_MOTIU, :C_PROCEDENCIA, :C_CARACTER, :' +
        'UNITAT,  :Data_PreIngres'
      '   DO BEGIN'
      '   '
      '     SUSPEND;'
      '   '
      '   END;'
      '   '
      'END')
    Select.Strings = (
      'SELECT * FROM P_ESPERA_HISTESPERA(5566)')
    Dic1 = Espera
    Dic2 = Espera
    Dic3 = wDataBasics.Filiacio
    Dic4 = wDataCodis.CodiCamps
    Dic1Name = 'Espera'
    Dic2Name = 'Espera'
    Dic3Name = 'Filiacio'
    Dic4Name = 'Codis'
    Abierta = False
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
    ModiFecha = 37194.7325127315
    Left = 486
    Top = 20
  end
  object HorarioPresta: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
        Consulta = 'PrestacioMetge'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dia'
        NombreDB = 'DIA'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        Consulta = 'Horari'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hora Desde'
        NombreDB = 'HDESDE'
        Longitud = 8
        MaskDisplay = '#,##0;;00'
        Consulta = 'Horari'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Minuto Desde'
        NombreDB = 'MDESDE'
        Longitud = 8
        MaskDisplay = '#,##0;;00'
        Consulta = 'Horari'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hora Hasta'
        NombreDB = 'HHASTA'
        Longitud = 8
        MaskDisplay = '#,##0;;00'
        Consulta = 'Horari'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Minuto Hasta'
        NombreDB = 'MHASTA'
        Longitud = 8
        MaskDisplay = '#,##0;;00'
        Consulta = 'Horari'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'C'#243'di Prestacio'
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
          'Metge'
          'Dia'
          'Hora Desde'
          'Minuto Desde'
          'Hora Hasta'
          'Minuto Hasta'
          'C'#243'di Prestacio')
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
          'Metge'
          'C'#243'di Prestacio')
        Tipo = tiForaneo
        ForaneoDic = wDataCodis.MetgePresta
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari'
          'Prestaci'#243)
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Horaris'
        NombreDB = 'Horaris'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Metge'
          'Dia'
          'Hora Desde'
          'Minuto Desde'
          'Hora Hasta'
          'Minuto Hasta')
        Tipo = tiForaneo
        ForaneoDic = Horario
        ForaneoCampos.Strings = (
          'Metge'
          'Dia'
          'Hora Desde'
          'Minuto Desde'
          'Hora Hasta'
          'Minuto Hasta')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'PrestacioMetge'
        Master = wDataCodis.MetgePresta
        BuscaOrigen.Strings = (
          'Metge'
          'C'#243'di Prestacio')
        CopiarOrigen.Strings = (
          'Metge'
          'C'#243'di Prestacio')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari'
          'Prestaci'#243)
        BuscaMaster.Strings = (
          'C'#243'dig Usuari'
          'Prestaci'#243)
      end
      item
        Nombre = 'Horari'
        Master = Horario
        BuscaOrigen.Strings = (
          'Metge'
          'Dia'
          'Hora Desde'
          'Minuto Desde'
          'Hora Hasta'
          'Minuto Hasta')
        CopiarOrigen.Strings = (
          'Metge'
          'Dia'
          'Hora Desde'
          'Minuto Desde'
          'Hora Hasta'
          'Minuto Hasta')
        CopiarMaster.Strings = (
          'Metge'
          'Dia'
          'Hora Desde'
          'Minuto Desde'
          'Hora Hasta'
          'Minuto Hasta')
        BuscaMaster.Strings = (
          'Metge'
          'Dia'
          'Hora Desde'
          'Minuto Desde'
          'Hora Hasta'
          'Minuto Hasta')
        FiltroOrigen.Strings = (
          'Metge')
        FiltroMaster.Strings = (
          'Metge')
      end>
    Nombre = 'Horarios de Prestaciones'
    NombreTabla = 'HorarioPresta'
    Organiza = tbBase
    CamposVer.Strings = (
      'Metge'
      'Dia'
      'Hora Desde'
      'Minuto Desde'
      'Hora Hasta'
      'Minuto Hasta'
      'C'#243'di Prestacio')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540292245
    Left = 335
    Top = 140
  end
  object AgendaFestivos: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AgendaFestivos'
    ForceNombreDB = False
    Body.Strings = (
      '/*    FESTIU, VACANCES I CAPS DE SETMANA    */'
      '(    '
      '  E_FECHADESDE DATE,'
      '  E_FECHAHASTA DATE,'
      '  E_Metge      VARCHAR (5), '
      '  E_PRESTACIO  VARCHAR (4) '
      ')    '
      'RETURNS '
      '(    '
      '  FECHA DATE'
      ')    '
      'AS     '
      '  DECLARE VARIABLE DIADELASEMANA   INTEGER;'
      'BEGIN '
      #9'FECHA = E_FECHADESDE;'
      #9'WHILE ( FECHA <= E_FECHAHASTA) DO'
      #9'BEGIN'
      '                                '
      #9#9'DIADELASEMANA = F_DAYOFWEEK(FECHA)-1;'
      #9#9'IF (DIADELASEMANA=0) THEN DIADELASEMANA=7;'
      '                                '
      #9#9'/*-------CAPS DE SETMANA-------*/'
      #9#9'IF (DIADELASEMANA IN (6,7)) THEN SUSPEND;'
      ''
      '      '#9'FECHA = FECHA + 1;'
      ''
      #9'END'
      ''
      #9#9#9'  DIADELASEMANA   = NULL;'
      ''
      ''
      #9#9'/*-----------FESTIUS-----------*/'
      #9#9'FOR SELECT DATA FROM FESTIUS '
      #9#9'WHERE DATA >= :E_FECHADESDE '
      #9#9'AND DATA <= :E_FECHAHASTA'
      #9#9'INTO :FECHA'
      #9#9'DO BEGIN'
      #9#9#9'SUSPEND;'
      #9#9'END'
      ''
      #9#9'/*-----------VACANCES-----------*/'
      #9#9'if (E_Metge IS Not NULL) THEN'
      #9#9'BEGIN'
      #9#9#9'FOR SELECT DIA'
      #9#9#9'FROM CALENDARI_AM/*VACACIONES*/'
      #9#9#9'WHERE C_METGE = :E_MEtge '
      '                  AND TIPUS <> '#39'G'#39
      #9#9#9'AND DIA >= :E_FECHADESDE'
      #9#9#9'AND DIA <= :E_FECHAHASTA'
      #9#9#9'INTO :FECHA'
      #9#9#9'DO BEGIN'
      #9#9#9#9'SUSPEND;'
      #9#9#9'END'
      ''
      '                  FOR SELECT DIA+1'
      '                  FROM CALENDARI_AM'
      '                  WHERE C_METGE = :E_Metge'
      '                  AND  TIPUS='#39'G'#39
      '                  AND DIA >= :E_FECHADESDE'
      #9#9#9'AND DIA <= :E_FECHAHASTA'
      #9#9#9'INTO :FECHA'
      #9#9#9'DO BEGIN'
      #9#9#9#9'SUSPEND;'
      #9#9#9'END'
      #9#9'END'
      'END')
    Select.Strings = (
      
        'SELECT * FROM P_TRACTAMENTS_AGENDAFESTIVOS("01.01.2001","30.04.2' +
        '002","U02", NULL)'
      '[FILTRO][ORDEN]'
      '')
    Dic1 = wDataBasics.Tractaments
    Dic2 = wDataCodis.Festius
    Dic3 = Vacaciones
    Dic1Name = 'Tractaments'
    Dic2Name = 'Festius'
    Dic3Name = 'Vacaciones'
    Abierta = False
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
    ModiFecha = 37078.5930899884
    Left = 94
    Top = 80
  end
  object BuscarDiaLliure: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'BuscarDiaLliure'
    ForceNombreDB = False
    Body.Strings = (
      '/*   PRIMER DIA LIBRE A PARTIR DE LOS PAR'#193'METROS DEL M'#201'DICO   */'
      '('#9
      '  e_metge      '#9'varchar (5), '
      '  e_prestacio  '#9'varchar (4),'
      '  e_Fecha         Date'
      ')    '
      'returns '
      '('#9
      '  fecha'#9#9'date'
      ')'#9
      'as     '
      '      DECLARE VARIABLE DIAVISITABLE INTEGER;'
      '      DECLARE VARIABLE ENCONTRADO '#9'INTEGER;'
      '      DECLARE VARIABLE VACANCES '#9'INTEGER;'
      '      DECLARE VARIABLE VISITABLE '#9'INTEGER;'
      '      DECLARE VARIABLE DIA'#9#9'INTEGER;'
      '      DECLARE VARIABLE DIABUCLE'#9'INTEGER;'
      '      DECLARE VARIABLE COMPLETO '#9'INTEGER;'
      'begin '
      #9
      
        '      if ((e_metge is null) and (e_prestacio is null)) then Exit' +
        ';'
      ''
      '      FECHA = E_Fecha;'
      '      ENCONTRADO = 0;'
      '      VISITABLE  = 0;'
      '      DIAVISITABLE  = 0;'
      #9
      '      WHILE (ENCONTRADO = 0) DO'
      #9'BEGIN'#9
      #9#9
      '        WHILE (DIAVISITABLE = 0) DO'
      '        BEGIN'
      ''
      
        '            IF ((:E_METGE IS NULL) AND (NOT :E_PRESTACIO IS NULL' +
        ')) THEN'
      '            BEGIN '
      ''
      
        '                  SELECT COUNT(*) FROM HORARIO H JOIN METGEPREST' +
        'A MP ON H.C_METGE = MP.CODI AND MP.C_PRESTACIO = :E_PRESTACIO'
      '                  WHERE H.DIA = F_DIADELASEMANA(:FECHA)'
      '                  INTO :DIAVISITABLE;'
      ''
      
        '                  IF (DIAVISITABLE IS NULL) THEN DIAVISITABLE = ' +
        '0;'
      '                  IF (DIAVISITABLE = 0) THEN  FECHA = FECHA + 1;'
      #9#9'END'
      ''
      
        '            IF ((NOT :E_METGE IS NULL) AND (:E_PRESTACIO IS NULL' +
        ')) THEN'
      '            BEGIN '
      ''
      #9#9#9'SELECT COUNT(*) FROM HORARIO '
      #9#9#9'WHERE DIA = F_DIADELASEMANA(:FECHA) '
      #9#9#9'AND C_METGE = :E_METGE'
      '                  INTO :DIAVISITABLE;'
      ''
      
        '                  IF (DIAVISITABLE IS NULL) THEN DIAVISITABLE = ' +
        '0;'
      '                  IF (DIAVISITABLE = 0) THEN  FECHA = FECHA + 1;'
      #9#9'END'
      ''
      
        '            IF ( (NOT:E_METGE IS NULL) AND  (NOT:E_PRESTACIO IS ' +
        'NULL)) THEN'
      '            BEGIN '
      ''
      #9#9#9'SELECT COUNT(*) FROM HORARIO '
      #9#9#9'WHERE DIA = F_DIADELASEMANA(:FECHA) '
      #9#9#9'AND C_METGE = :E_METGE'
      
        '                    AND NOT DIA IN (SELECT HP.DIA FROM HORARIOPR' +
        'ESTA HP WHERE HP.C_PRESTACIO = :E_PRESTACIO AND HP.C_METGE = :E_' +
        'METGE)'
      '                  INTO :DIAVISITABLE;'
      ''
      
        '                  IF (DIAVISITABLE IS NULL) THEN DIAVISITABLE = ' +
        '0;'
      '                  IF (DIAVISITABLE = 0) THEN  FECHA = FECHA + 1;'
      #9#9'END'
      #9#9
      #9#9
      '       '#9'END'
      ''
      '            SELECT COUNT(*)'
      
        '            FROM P_TRACTAMENTS_AGENDAFESTIVOS(:FECHA, :FECHA, :E' +
        '_METGE, :E_PRESTACIO) '
      '            INTO :VACANCES;'
      #9#9
      '            IF (VACANCES IS NULL) THEN VACANCES = 0;'
      '            IF (VACANCES = 0) THEN '
      '            BEGIN'
      #9#9
      
        '                IF ( ( :E_METGE IS NULL ) AND ( NOT :E_PRESTACIO' +
        ' IS NULL ) ) THEN'
      '                BEGIN'
      #9#9#9#9'SELECT COUNT(*) '
      
        #9#9#9#9'FROM P_ESPERA_DIAPRESTAPLE2( :E_PRESTACIO, :FECHA, :FECHA) W' +
        'HERE DIA_PLE = "S"'
      '                       '#9'INTO :COMPLETO;'
      #9#9'    END'
      '                ELSE'
      '                BEGIN'
      #9#9#9#9'SELECT COUNT(*) '
      
        #9#9#9#9'FROM P_ESPERA_DIAMETGEPLE( :E_METGE, :E_PRESTACIO, :FECHA, :' +
        'FECHA) WHERE DIA_PLE = "S"'
      '                       '#9'INTO :COMPLETO;'
      '                END;'
      #9#9
      '                IF (COMPLETO IS NULL) THEN COMPLETO = 0;'
      #9#9'    IF (COMPLETO     = 0) THEN ENCONTRADO = 1;'
      '            END;'
      #9#9
      #9#9'IF (ENCONTRADO = 1) '
      #9#9'THEN SUSPEND;'
      #9#9'ELSE '
      '            BEGIN '
      '               FECHA = FECHA + 1;'
      '               DIAVISITABLE = 0;'
      '            END'
      #9#9
      '      END;'
      'END')
    Select.Strings = (
      'SELECT * FROM P_TRACTAMENTS_BUSCARDIALLIURE("U02", NULL)'
      ''
      ''
      '')
    Dic1 = wDataBasics.Tractaments
    Dic2 = wDataCodis.Festius
    Dic3 = Vacaciones
    Dic1Name = 'Tractaments'
    Dic2Name = 'Festius'
    Dic3Name = 'Vacaciones'
    Abierta = False
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
    ModiFecha = 37111.4496323611
    Left = 174
    Top = 80
  end
  object Agenda: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Agenda'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '   EC_METGE     VARCHAR(5),'
      '   EC_PRESTACIO INTEGER,'
      '   FECHA_DESDE  DATE,'
      '   FECHA_HASTA  DATE'
      ')'
      'RETURNS ('
      ''
      '   Visitat              CHAR,'
      '   C_Espera             INTEGER,'
      '   C_Prestacio          VARCHAR (4),'
      '   MOTIU                VARCHAR(10),'
      '   C_MOTIU              SMALLINT,'
      '   N_MOTIU              VARCHAR(40),'
      '   MODALITAT            VARCHAR(10),'
      '   C_MODALITAT          SMALLINT,'
      '   N_MODALITAT          VARCHAR(40),'
      '   Tipus                SMALLINT,'
      '   Facturar             CHAR(1),'
      '   C_Historia           INTEGER,'
      '   Nom                  VARCHAR (20),'
      '   Cognom1              VARCHAR (20),'
      '   Cognom2              VARCHAR (20),'
      '   NomComplet           VARCHAR (80),'
      '   EDAT                 INTEGER,'
      '   SEXE                 CHAR(1),'
      '   TELEFON              VARCHAR (10),'
      '   Data_PreIngres       DATE,'
      '   HORA_PreIngres       CHAR(5),'
      '   C_Unitat             SMALLINT,'
      '   C_Coordinador        VARCHAR(5),'
      '   N_Coordinador        Varchar(20),'
      '   C_Especial           VARCHAR(2),'
      '   C_Estat              Integer,'
      '   EXCLOS               CHAR,'
      '   COMENTARI            VARCHAR (254),'
      '   CENTREFAC            VARCHAR(2),'
      '   CLIENT               VARCHAR(3),'
      '   C_OM                 INTEGER,'
      '   CONSULTA             VARCHAR(10),'
      '   METGE_PROGRAMA       VARCHAR(5),'
      '   NOM_METGE_PROGRAMA   VARCHAR(20),'
      '   RESUM                VARCHAR(8),'
      '   N_PRESTACIO          VARCHAR(35),'
      '   N_PRESTACIO2         VARCHAR(35),'
      '   DATA_NAIX            DATE,'
      '   CIP                  VARCHAR(14),'
      '   C_CLIENT             VARCHAR(3),'
      '   IDREGISTRE           INTEGER,'
      '   Unitat_Medica        VARCHAR(40),'
      '   Data_Inclusio        DATE,'
      '   N_Especial           VARCHAR(20),'
      '   C_TRANSPORT_SANITARI SMALLINT,'
      '   C_Procedencia        SMALLINT,'
      '/*   C_Caracter           SMALLINT */'
      '   CENTRE               CHAR(1),'
      '   C_TractamentOrigen   INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_TractamentDesti INTEGER;'
      '/*  DECLARE VARIABLE DATA_INCLUSIO     DATE; */'
      '  DECLARE VARIABLE CF                VARCHAR(2);'
      'BEGIN'
      ''
      
        '   /* Llista els usuaris en els rangs d'#39'estat que li passem. Tam' +
        'b'#233' podem filtrar per prestaci'#243' i data */'
      ''
      '   /* No ens passen metge ni prestaci'#243' */'
      '   IF ((EC_METGE IS NULL) AND (EC_PRESTACIO IS NULL)) THEN'
      '   BEGIN'
      
        '      FOR SELECT C_Espera, C_Prestacio, C_Motiu, C_Modalitat, C_' +
        'Historia, NOMCOMPLET, Nom, Cognom1, Cognom2, Telefon, Data_Prein' +
        'gres,'
      
        '                 Hora_PreIngres, C_Unitat, C_Coordinador, C_Trac' +
        'tamentDesti, C_Estat, DATA_INCLUSIO, Comentari, EXCLOS, C_OM, SE' +
        'XO, Lloc,'
      
        '                 Metge_Programa, Data_Naix, CIP, C_CentreFac, C_' +
        'CLIENT, IDREGISTRE, C_TRANSPORT_SANITARI, C_Procedencia, C_Tract' +
        'amentOrigen'
      '          FROM   ESPERA'
      '          WHERE  DATA_PREINGRES >= :FECHA_DESDE'
      '          AND    DATA_PREINGRES <= :FECHA_HASTA'
      
        '          AND  ((C_ESTAT BETWEEN 30 AND 39) OR (C_ESTAT BETWEEN ' +
        '95 AND 99))'
      '          AND    EXCLOS = "N"'
      '          ORDER  BY HORA_PREINGRES'
      
        '          INTO  :C_Espera, :C_Prestacio, :C_MOTIU, :C_Modalitat,' +
        ' :C_Historia, :NOMCOMPLET, :Nom, :Cognom1, :Cognom2, :Telefon, :' +
        'Data_Preingres,'
      
        '                :Hora_PreIngres, :C_Unitat, :C_Coordinador, :C_T' +
        'ractamentDesti, :C_Estat, :DATA_INCLUSIO, :COMENTARI, :EXCLOS, :' +
        'C_OM, :SEXE, :CONSULTA,'
      
        '                :METGE_PROGRAMA, :Data_Naix, :CIP, :CENTREFAC, :' +
        'C_CLIENT, :IDREGISTRE, :C_TRANSPORT_SANITARI, :C_Procedencia, :C' +
        '_TractamentOrigen'
      '      DO BEGIN'
      '         N_MOTIU = NULL;'
      '         MOTIU = NULL;'
      '         N_MODALITAT = NULL;'
      '         MODALITAT = NULL;'
      ''
      '         IF (C_HISTORIA IS NULL) THEN'
      '         BEGIN'
      '              EDAT=NULL;'
      '              Unitat_Medica=NULL;'
      '         END;'
      '         ELSE SELECT F.EDAT, U.N_UNITATM'
      '              FROM FILIACIO F'
      '              JOIN UNITATM  U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '              WHERE F.NUM_HIST = :C_HISTORIA INTO :EDAT, :Unitat' +
        '_Medica;'
      '              '
      
        '         IF ((Unitat_Medica IS NULL) OR (Unitat_Medica='#39#39')) THEN' +
        ' SELECT N_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'UNITATS'#39' AND C_CO' +
        'DI=:C_UNITAT INTO :Unitat_Medica;'
      ''
      
        '         IF (SEXE IS NULL) THEN SELECT SEXO FROM FILIACIO WHERE ' +
        'NUM_HIST = :C_HISTORIA INTO :SEXE;'
      ''
      
        '         IF (C_TractamentOrigen IS NULL) THEN C_TractamentOrigen' +
        ' = 0;'
      ''
      
        '         /* Per lo migrat, no tenim tractament desti, llavors ho' +
        ' fem per estat'
      '         IF (C_TRACTAMENTDESTI IS NULL ) THEN'
      '         BEGIN'
      '            IF (C_ESTAT BETWEEN 95 AND 99) THEN'
      '            BEGIN'
      '               VISITAT  = "S";'
      
        '               IF (NOT((DATA_PREINGRES IS  NULL) OR (DATA_INCLUS' +
        'IO IS NULL))) THEN'
      '               BEGIN'
      
        '                  IF (DATA_PREINGRES = DATA_INCLUSIO) THEN VISIT' +
        'AT = "F";'
      '               END'
      '            END'
      '            ELSE VISITAT  = "N";'
      '         END'
      '         ELSE BEGIN'
      '            VISITAT = "S";'
      ''
      
        '            IF (NOT ((DATA_PREINGRES IS NULL) OR (DATA_INCLUSIO ' +
        'IS NULL))) THEN'
      '            BEGIN'
      
        '               IF (DATA_PREINGRES = DATA_INCLUSIO) THEN VISITAT ' +
        '= "F";'
      '            END'
      '         END */'
      '         IF (C_ESTAT BETWEEN 95 AND 99) THEN'
      '         BEGIN'
      '            VISITAT  = "S";'
      
        '            IF ((DATA_PREINGRES IS NOT NULL) AND (DATA_PREINGRES' +
        ' = DATA_INCLUSIO)) THEN VISITAT = "F";'
      '         END'
      '         ELSE VISITAT  = "N";'
      ''
      
        '         /* Si el centre de facturaci'#243' est'#224' informat a l'#39'agenda,' +
        ' mostrem aquest'
      
        '            Altrament, busquem l'#39#250'ltim que consti a Tractaments ' +
        '*/'
      '         /* CENTREFAC = '#39#39';      */'
      '         IF (CENTREFAC IS NULL) THEN CENTREFAC = '#39#39';'
      '         CLIENT = '#39#39';'
      ''
      '         SELECT T.C_CENTREFAC, T.C_CLIENT'
      '         FROM   TRACTAMENTS T'
      
        '         LEFT   OUTER JOIN PRESTACION P ON P.C_PRESTACIO = T.C_P' +
        'RESTACIO'
      '         WHERE  T.C_HISTORIA = :C_HISTORIA'
      '         AND    P.TIPUS <> 0'
      '         ORDER  BY T.DATA_INGRES DESC'
      '         ROWS   1'
      '         INTO  :CF, :CLIENT;'
      ''
      
        '         /* Si a l'#39'agenda no hi consta centrefac, mostrem les da' +
        'des que consten a l'#39#250'ltim Tractaments */'
      '         IF (CENTREFAC = '#39#39') THEN CENTREFAC = CF;'
      
        '         /* Si el tenim informat i '#233's diferent  del que consta a' +
        ' Tractaments, buidem el client (no coincidir'#224') */'
      '         IF (CENTREFAC <> CF) THEN CLIENT = '#39#39';'
      ''
      
        '         SELECT TIPUS, FACTURAR, RESUM, N_PRESTACIO, N_PRESTACIO' +
        '2, CENTRE FROM PRESTACION'
      '         WHERE C_PRESTACIO = :C_PRESTACIO'
      
        '         INTO :TIPUS, :FACTURAR, :RESUM, :N_PRESTACIO, :N_PRESTA' +
        'CIO2, :CENTRE;'
      ''
      '         SELECT M.C_ESPECIAL, M.METGE, E.N_ESPECIAL'
      '         FROM   METGES M'
      '         JOIN   ESPECIAL E ON M.C_ESPECIAL=E.C_ESPECIAL'
      '         WHERE  M.CODI = :C_COORDINADOR'
      '         INTO  :C_ESPECIAL, :N_COORDINADOR, :N_ESPECIAL;'
      ''
      '         SELECT METGE'
      '         FROM   METGES'
      '         WHERE  CODI = :METGE_PROGRAMA'
      '         INTO  :NOM_METGE_PROGRAMA;'
      '         '
      '         SELECT N_CODI, R_CODI'
      '         FROM   CODICAMPS'
      '         WHERE  TIPUSCODI = "MOTIU"'
      '         AND    C_CODI = :C_MOTIU'
      '         INTO  :N_MOTIU, :MOTIU;'
      ''
      '         SELECT N_CODI, R_CODI'
      '         FROM   CODICAMPS'
      '         WHERE  TIPUSCODI = "ATENCIO.MODALITAT"'
      '         AND    C_CODI = :C_MODALITAT'
      '         INTO  :N_MODALITAT, :MODALITAT;'
      ''
      '         SUSPEND;'
      '      END'
      '   END'
      ''
      '   /* Ens passen METGE i PRESTACI'#211' */'
      
        '   IF ((NOT (EC_METGE IS NULL)) AND (NOT (EC_PRESTACIO IS NULL))' +
        ') THEN'
      '   BEGIN'
      
        '      FOR SELECT C_Espera, C_Prestacio, C_Motiu, C_Modalitat, C_' +
        'Historia, NOMCOMPLET, Nom, Cognom1, Cognom2, Telefon, Data_Prein' +
        'gres,'
      
        '                 Hora_PreIngres, C_Unitat, C_Coordinador, C_Trac' +
        'tamentDesti, C_Estat, DATA_INCLUSIO, COMENTARI, EXCLOS, C_OM, SE' +
        'XO, Lloc,'
      
        '                 Metge_Programa, Data_Naix, CIP, C_CentreFac, C_' +
        'CLIENT, IDREGISTRE, C_TRANSPORT_SANITARI, C_Procedencia, C_Tract' +
        'amentOrigen'
      '          FROM   ESPERA'
      '          WHERE  C_COORDINADOR = :EC_METGE'
      '          AND    C_PRESTACIO = :EC_PRESTACIO'
      '          AND    DATA_PREINGRES >= :FECHA_DESDE'
      '          AND    DATA_PREINGRES <= :FECHA_HASTA'
      
        '          AND  ((C_ESTAT BETWEEN 30 AND 39) OR (C_ESTAT BETWEEN ' +
        '95 AND 99))'
      '          AND    EXCLOS = "N"'
      '          ORDER  BY HORA_PREINGRES'
      
        '          INTO  :C_Espera, :C_Prestacio, :C_Motiu, :C_Modalitat,' +
        ' :C_Historia,  :NOMCOMPLET, :Nom, :Cognom1, :Cognom2, :Telefon, ' +
        ':Data_Preingres,'
      
        '                :Hora_PreIngres, :C_Unitat, :C_Coordinador, :C_T' +
        'ractamentDesti, :C_Estat, :DATA_INCLUSIO, :COMENTARI, :EXCLOS, :' +
        'C_OM, :SEXE, :CONSULTA,'
      
        '                :METGE_PROGRAMA, :Data_Naix, :CIP, :CentreFac, :' +
        'C_CLIENT, :IDREGISTRE, :C_TRANSPORT_SANITARI, :C_Procedencia, :C' +
        '_TractamentOrigen'
      '      DO BEGIN'
      '         N_MOTIU = NULL;'
      '         MOTIU = NULL;'
      '         N_MODALITAT = NULL;'
      '         MODALITAT = NULL;'
      ''
      '         IF (C_HISTORIA IS NULL) THEN'
      '         BEGIN'
      '              EDAT=NULL;'
      '              Unitat_Medica=NULL;'
      '         END;'
      '         ELSE SELECT F.EDAT, U.N_UNITATM'
      '              FROM FILIACIO F'
      '              JOIN UNITATM  U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '              WHERE F.NUM_HIST = :C_HISTORIA INTO :EDAT, :Unitat' +
        '_Medica;'
      ''
      
        '         IF ((Unitat_Medica IS NULL) OR (Unitat_Medica='#39#39')) THEN' +
        ' SELECT N_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'UNITATS'#39' AND C_CO' +
        'DI=:C_UNITAT INTO :Unitat_Medica;'
      ''
      
        '         IF (C_TractamentOrigen IS NULL) THEN C_TractamentOrigen' +
        ' = 0;'
      ''
      '         /*'
      '         IF (C_TRACTAMENTDESTI IS NULL) THEN VISITAT = "N";'
      '         ELSE BEGIN'
      '            VISITAT = "S";'
      
        '            IF (NOT ((DATA_PREINGRES IS NULL) OR (DATA_INCLUSIO ' +
        'IS NULL))) THEN'
      '            BEGIN'
      
        '               IF (DATA_PREINGRES = DATA_INCLUSIO) THEN VISITAT ' +
        '= "F";'
      '            END;'
      '         END; */'
      '         IF (C_ESTAT BETWEEN 95 AND 99) THEN'
      '         BEGIN'
      '            VISITAT  = "S";'
      
        '            IF ((DATA_PREINGRES IS NOT NULL) AND (DATA_PREINGRES' +
        ' = DATA_INCLUSIO)) THEN VISITAT = "F";'
      '         END'
      '         ELSE VISITAT  = "N";'
      ''
      '         CENTREFAC = '#39#39'; CLIENT='#39#39';'
      ''
      '         SELECT T.C_CENTREFAC, T.C_CLIENT'
      '         FROM   TRACTAMENTS T'
      
        '         LEFT   OUTER JOIN PRESTACION P ON P.C_PRESTACIO = T.C_P' +
        'RESTACIO'
      '         WHERE  T.C_HISTORIA = :C_HISTORIA'
      '         AND    P.TIPUS <> 0'
      '         ORDER  BY T.DATA_INGRES DESC'
      '         ROWS   1'
      '         INTO  :CENTREFAC, :CLIENT;'
      ''
      
        '         SELECT TIPUS, FACTURAR, RESUM, N_PRESTACIO, N_PRESTACIO' +
        '2, CENTRE FROM PRESTACION'
      '         WHERE C_PRESTACIO = :C_PRESTACIO'
      
        '         INTO :TIPUS, :FACTURAR, :RESUM, :N_PRESTACIO, :N_PRESTA' +
        'CIO2, :CENTRE;'
      ''
      '         /*'
      '         SELECT C_ESPECIAL, METGE'
      '         FROM   METGES'
      '         WHERE  CODI = :C_COORDINADOR'
      '         INTO  :C_ESPECIAL, :N_COORDINADOR;'
      '         */'
      '         '
      '         SELECT METGE'
      '         FROM   METGES'
      '         WHERE  CODI = :METGE_PROGRAMA'
      '         INTO  :NOM_METGE_PROGRAMA;'
      ''
      '         SELECT N_CODI, R_CODI'
      '         FROM   CODICAMPS'
      '         WHERE  TIPUSCODI = "MOTIU"'
      '         AND    C_CODI = :C_MOTIU'
      '         INTO  :N_MOTIU, :MOTIU;'
      ''
      '         SELECT N_CODI, R_CODI'
      '         FROM   CODICAMPS'
      '         WHERE  TIPUSCODI = "ATENCIO.MODALITAT"'
      '         AND    C_CODI = :C_MODALITAT'
      '         INTO  :N_MODALITAT, :MODALITAT;'
      ''
      '         SUSPEND;'
      '      END;'
      '   END;'
      ''
      '   /* Nom'#233's ens passen el METGE */'
      '   IF (NOT (EC_METGE IS NULL) AND (EC_PRESTACIO IS NULL)) THEN'
      '   BEGIN'
      
        '      FOR SELECT C_Espera, C_Prestacio, C_Motiu, C_MODALITAT, C_' +
        'Historia, NOMCOMPLET, Nom, Cognom1, Cognom2, Telefon, Data_Prein' +
        'gres,'
      
        '                 Hora_PreIngres, C_Unitat, C_Coordinador, C_Trac' +
        'tamentDesti, C_Estat, DATA_INCLUSIO, Comentari, EXCLOS, C_OM, SE' +
        'XO, Lloc,'
      
        '                 Metge_Programa, Data_Naix, CIP, C_CentreFac, C_' +
        'CLIENT, IDREGISTRE, C_TRANSPORT_SANITARI, C_Procedencia, C_Tract' +
        'amentOrigen'
      '          FROM   ESPERA'
      '          WHERE  C_COORDINADOR = :EC_METGE'
      '          AND    DATA_PREINGRES >= :FECHA_DESDE'
      
        '          AND    DATA_PREINGRES <= :FECHA_HASTA                 ' +
        '                /* Al Dr. Betancourt tamb li mostrem les 1008 qu' +
        'e comencen */'
      
        '          AND  ((C_ESTAT BETWEEN 30 AND 39) OR (C_ESTAT BETWEEN ' +
        '95 AND 99))'
      '          AND    EXCLOS = "N"'
      '          ORDER  BY HORA_PREINGRES'
      
        '          INTO  :C_Espera, :C_Prestacio, :C_Motiu, :C_MODALITAT,' +
        ' :C_Historia,  :NOMCOMPLET, :Nom, :Cognom1, :Cognom2, :Telefon, ' +
        ':Data_Preingres,'
      
        '                :Hora_PreIngres, :C_Unitat, :C_Coordinador, :C_T' +
        'ractamentDesti, :C_Estat, :DATA_INCLUSIO, :COMENTARI, :EXCLOS, :' +
        'C_OM, :SEXE, :CONSULTA,'
      
        '                :METGE_PROGRAMA, :Data_Naix, :CIP, :CentreFac, :' +
        'C_CLIENT, :IDREGISTRE, :C_TRANSPORT_SANITARI, :C_Procedencia, :C' +
        '_TractamentOrigen'
      '      DO BEGIN'
      '         N_MOTIU = NULL;'
      '         MOTIU = NULL;'
      '         N_MODALITAT = NULL;'
      '         MODALITAT = NULL;'
      ''
      '         IF (C_HISTORIA IS NULL) THEN'
      '         BEGIN'
      '              EDAT=NULL;'
      '              Unitat_Medica=NULL;'
      '         END;'
      '         ELSE SELECT F.EDAT, U.N_UNITATM'
      '              FROM FILIACIO F'
      '              JOIN UNITATM  U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '              WHERE F.NUM_HIST = :C_HISTORIA INTO :EDAT, :Unitat' +
        '_Medica;'
      ''
      
        '         IF ((Unitat_Medica IS NULL) OR (Unitat_Medica='#39#39')) THEN' +
        ' SELECT N_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'UNITATS'#39' AND C_CO' +
        'DI=:C_UNITAT INTO :Unitat_Medica;'
      ''
      
        '         IF (C_TractamentOrigen IS NULL) THEN C_TractamentOrigen' +
        ' = 0;'
      ''
      '         /*'
      '         IF (C_TRACTAMENTDESTI IS NULL) THEN VISITAT = "N";'
      '         ELSE BEGIN'
      '            VISITAT = "S";'
      
        '            IF (NOT ((DATA_PREINGRES IS NULL) OR (DATA_INCLUSIO ' +
        'IS NULL))) THEN'
      '            BEGIN'
      
        '               IF (DATA_PREINGRES = DATA_INCLUSIO) THEN VISITAT ' +
        '= "F";'
      '            END;'
      '         END;*/'
      '         IF (C_ESTAT BETWEEN 95 AND 99) THEN'
      '         BEGIN'
      '            VISITAT  = "S";'
      
        '            IF ((DATA_PREINGRES IS NOT NULL) AND (DATA_PREINGRES' +
        ' = DATA_INCLUSIO)) THEN VISITAT = "F";'
      '         END'
      '         ELSE VISITAT  = "N";'
      ''
      '         CENTREFAC = '#39#39'; CLIENT = '#39#39';'
      ''
      '         SELECT T.C_CENTREFAC, T.C_CLIENT'
      '         FROM   TRACTAMENTS T'
      
        '         LEFT   OUTER JOIN PRESTACION P ON P.C_PRESTACIO = T.C_P' +
        'RESTACIO'
      '         WHERE  T.C_HISTORIA = :C_HISTORIA'
      '         AND    P.TIPUS <> 0'
      '         ORDER  BY T.DATA_INGRES DESC'
      '         ROWS   1'
      '         INTO  :CENTREFAC, :CLIENT;'
      ''
      
        '         SELECT TIPUS, FACTURAR, RESUM, N_PRESTACIO, N_PRESTACIO' +
        '2, CENTRE FROM PRESTACION'
      '         WHERE C_PRESTACIO = :C_PRESTACIO'
      
        '         INTO :TIPUS, :FACTURAR, :RESUM, :N_PRESTACIO, :N_PRESTA' +
        'CIO2, :CENTRE;'
      ''
      '         /*'
      '         SELECT C_ESPECIAL, METGE'
      '         FROM   METGES'
      '         WHERE  CODI = :C_COORDINADOR'
      '         INTO  :C_ESPECIAL, :N_COORDINADOR;'
      '         */'
      '         '
      '         SELECT METGE'
      '         FROM   METGES'
      '         WHERE  CODI = :METGE_PROGRAMA'
      '         INTO  :NOM_METGE_PROGRAMA;'
      ''
      '         SELECT N_CODI, R_CODI'
      '         FROM   CODICAMPS'
      '         WHERE  TIPUSCODI = "MOTIU"'
      '         AND    C_CODI = :C_MOTIU'
      '         INTO  :N_MOTIU, :MOTIU;'
      ''
      '         SELECT N_CODI, R_CODI'
      '         FROM   CODICAMPS'
      '         WHERE  TIPUSCODI = "ATENCIO.MODALITAT"'
      '         AND    C_CODI = :C_MODALITAT'
      '         INTO  :N_MODALITAT, :MODALITAT;'
      ''
      '         SUSPEND;'
      '      END;'
      '   END;'
      ''
      '   /* Nom'#233's ens passen la PRESTACI'#211' */'
      '   IF ((EC_METGE IS NULL) AND NOT (EC_PRESTACIO IS NULL)) THEN'
      '   BEGIN'
      
        '      FOR SELECT C_Espera, C_Prestacio, C_Motiu, C_MODALITAT, C_' +
        'Historia, NOMCOMPLET, Nom, Cognom1, Cognom2, Telefon, Data_Prein' +
        'gres,'
      
        '                 Hora_PreIngres, C_Unitat, C_Coordinador, C_Trac' +
        'tamentDesti, C_Estat, DATA_INCLUSIO, Comentari, EXCLOS, C_OM, SE' +
        'XO, Lloc,'
      
        '                 Metge_Programa, Data_Naix, CIP, C_CentreFac, C_' +
        'CLIENT, IDREGISTRE, C_TRANSPORT_SANITARI, C_Procedencia, C_Tract' +
        'amentOrigen'
      '          FROM   ESPERA'
      '          WHERE  C_PRESTACIO = :EC_PRESTACIO'
      '          AND    DATA_PREINGRES >= :FECHA_DESDE'
      '          AND    DATA_PREINGRES <= :FECHA_HASTA'
      
        '          AND    ((C_ESTAT BETWEEN 30 AND 39) OR (C_ESTAT BETWEE' +
        'N 95 AND 99))'
      '          AND    EXCLOS = "N"'
      '          ORDER  BY HORA_PREINGRES'
      
        '          INTO  :C_Espera, :C_Prestacio, :C_Motiu, :C_MODALITAT,' +
        ' :C_Historia,  :NOMCOMPLET, :Nom, :Cognom1, :Cognom2, :Telefon, ' +
        ':Data_Preingres,'
      
        '                :Hora_PreIngres, :C_Unitat, :C_Coordinador, :C_T' +
        'ractamentDesti, :C_Estat, :DATA_INCLUSIO, :COMENTARI, :EXCLOS, :' +
        'C_OM, :SEXE, :CONSULTA,'
      
        '                :METGE_PROGRAMA, :Data_Naix, :CIP, :CentreFac, :' +
        'C_CLIENT, :IDREGISTRE, :C_TRANSPORT_SANITARI, :C_Procedencia, :C' +
        '_TractamentOrigen'
      '      DO BEGIN'
      '         N_MOTIU = NULL;'
      '         MOTIU = NULL;'
      '         N_MODALITAT = NULL;'
      '         MODALITAT = NULL;'
      ''
      '         IF (C_HISTORIA IS NULL) THEN'
      '         BEGIN'
      '              EDAT=NULL;'
      '              Unitat_Medica=NULL;'
      '         END;'
      '         ELSE SELECT F.EDAT, U.N_UNITATM'
      '              FROM FILIACIO F'
      '              JOIN UNITATM  U ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '              WHERE F.NUM_HIST = :C_HISTORIA INTO :EDAT, :Unitat' +
        '_Medica;'
      ''
      
        '         IF ((Unitat_Medica IS NULL) OR (Unitat_Medica='#39#39')) THEN' +
        ' SELECT N_CODI FROM CODICAMPS WHERE TIPUSCODI='#39'UNITATS'#39' AND C_CO' +
        'DI=:C_UNITAT INTO :Unitat_Medica;'
      ''
      
        '         IF (C_TractamentOrigen IS NULL) THEN C_TractamentOrigen' +
        ' = 0;'
      ''
      '         /*'
      '         IF (C_TRACTAMENTDESTI IS NULL) THEN VISITAT = "N";'
      '         ELSE BEGIN'
      '            VISITAT = "S";'
      
        '            IF (NOT ((DATA_PREINGRES IS NULL) OR (DATA_INCLUSIO ' +
        'IS NULL))) THEN'
      '            BEGIN'
      
        '               IF (DATA_PREINGRES = DATA_INCLUSIO) THEN VISITAT ' +
        '= "F";'
      '            END;'
      '         END;'
      '         */'
      '         IF (C_ESTAT BETWEEN 95 AND 99) THEN'
      '         BEGIN'
      '            VISITAT  = "S";'
      
        '            IF ((DATA_PREINGRES IS NOT NULL) AND (DATA_PREINGRES' +
        ' = DATA_INCLUSIO)) THEN VISITAT = "F";'
      '         END'
      '         ELSE VISITAT  = "N";'
      ''
      '         CENTREFAC = '#39#39'; CLIENT='#39#39';'
      ''
      '         SELECT T.C_CENTREFAC, T.C_CLIENT'
      '         FROM   TRACTAMENTS T'
      
        '         LEFT   OUTER JOIN PRESTACION P ON P.C_PRESTACIO = T.C_P' +
        'RESTACIO'
      '         WHERE  T.C_HISTORIA = :C_HISTORIA'
      '         AND    P.TIPUS <> 0'
      '         ORDER  BY T.DATA_INGRES DESC'
      '         ROWS   1'
      '         INTO  :CENTREFAC, :CLIENT;'
      ''
      
        '         SELECT TIPUS, FACTURAR, RESUM, N_PRESTACIO, N_PRESTACIO' +
        '2, CENTRE FROM PRESTACION'
      '         WHERE C_PRESTACIO = :C_PRESTACIO'
      
        '         INTO :TIPUS, :FACTURAR, :RESUM, :N_PRESTACIO, :N_PRESTA' +
        'CIO2, :CENTRE;'
      ''
      '         SELECT M.C_ESPECIAL, M.METGE, E.N_ESPECIAL'
      '         FROM   METGES M'
      '         JOIN   ESPECIAL E ON M.C_ESPECIAL=E.C_ESPECIAL'
      '         WHERE  M.CODI = :C_COORDINADOR'
      '         INTO  :C_ESPECIAL, :N_COORDINADOR, :N_ESPECIAL;'
      '         '
      '         SELECT METGE'
      '         FROM   METGES'
      '         WHERE  CODI = :METGE_PROGRAMA'
      '         INTO  :NOM_METGE_PROGRAMA;'
      '         '
      '         SELECT N_CODI, R_CODI'
      '         FROM   CODICAMPS'
      '         WHERE  TIPUSCODI = "MOTIU"'
      '         AND    C_CODI = :C_MOTIU'
      '         INTO  :N_MOTIU, :MOTIU;'
      '         '
      '         SELECT N_CODI, R_CODI'
      '         FROM   CODICAMPS'
      '         WHERE  TIPUSCODI = "ATENCIO.MODALITAT"'
      '         AND    C_CODI = :C_MODALITAT'
      '         INTO  :N_MODALITAT, :MODALITAT;'
      ''
      ''
      '         SUSPEND;'
      '      END;'
      '   END;'
      ''
      'END')
    Select.Strings = (
      'SELECT * FROM P_ESPERA_AGENDA(NULL, NULL, "TODAY", "TODAY")'
      '[FILTRO]'
      '[ORDEN]')
    Dic1 = Espera
    Dic2 = wDataCodis.CodiCamps
    Dic1Name = 'Espera'
    Dic2Name = 'Codis'
    Abierta = False
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
    ModiFecha = 37168.762686794
    Left = 32
    Top = 80
  end
  object CalculaDuracionI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'CalculaDuracion'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER<>"REPLICATOR") THEN'
      '   BEGIN'
      
        '      NEW.DURACIO = (((NEW.hhasta*60)+NEW.mhasta) - ((NEW.hdesde' +
        '*60)+NEW.mdesde));'
      '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_HORARIO, 1);'
      '   END;'
      'END')
    Dic1 = Horario
    Dic1Name = 'Horario'
    Abierta = False
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
    ModiFecha = 37160.7846755556
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 166
    Top = 140
  end
  object P_Llits: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'llits'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_DATA     DATE, '
      '  NOMESBUITS CHAR'
      ' )'
      'RETURNS'
      '('
      '  PLANTA          VARCHAR(15),'
      '  N_PLANTA        VARCHAR(20),'
      '  UNITAT          SMALLINT, '
      '  N_UNITAT        VARCHAR(40),'
      '  C_LLIT          VARCHAR(3),'
      '  HISTORIA        INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      '  METGE           VARCHAR(3),'
      
        '  PACIENT         VARCHAR(100),            /* Hi posem el NOM DE' +
        'L PACIENT o b'#233' EL MOTIU DEL BLOQUEIG */'
      
        '  TIPUS           CHAR,                    /* B: BLOQUEJAT,  L: ' +
        'LLIURE,  O: OCUPAT */'
      '  DATA_INGRES     DATE, '
      '  DATA_ALTA       DATE,'
      '  HORA_DINAR      CHAR(5),'
      '  UBICACIO_DINAR  VARCHAR(40),'
      '  MOTIU_BLOQUEIG  VARCHAR(20),'
      
        '  PLANTA_TIPUS    VARCHAR(1)               /* CODICAMPSCURT.TIPU' +
        'SCODI='#39'PLANTES.TIPUS'#39' */'
      ')'
      'AS'
      '  DECLARE VARIABLE BLOCK        INTEGER;'
      '  DECLARE VARIABLE C_ESTAT      CHAR(1);'
      '  DECLARE VARIABLE TANCAT       INTEGER;'
      'BEGIN'
      ''
      '   IF (NOMESBUITS IS NULL) THEN NOMESBUITS = "N";'
      ''
      '   IF (E_DATA IS NULL)     THEN E_DATA = "TODAY";'
      '   '
      '   PLANTA_TIPUS=NULL;'
      
        '   FOR SELECT L.C_LLIT, L.C_PLANTA, L.C_ESTAT, P.N_PLANTA, T.C_H' +
        'ISTORIA, T.C_COORDINADOR, F.NOMCOMPLET, T.DATA_INGRES, T.DATA_AL' +
        'TA, T.C_TRACTAMENT, F.HORA_DINAR, C.N_CODI, P.TIPUS'
      '       FROM   LLITS L'
      
        '       LEFT OUTER JOIN TRACTAMENTS T ON (T.DATA_ALTA IS NULL OR ' +
        'T.DATA_ALTA > "TODAY") AND L.C_LLIT = T.C_LLIT'
      '       LEFT OUTER JOIN PLANTES     P ON P.C_PLANTA = L.C_PLANTA'
      
        '       LEFT OUTER JOIN FILIACIO    F ON T.C_HISTORIA = F.NUM_HIS' +
        'T'
      
        '       LEFT OUTER JOIN CODICAMPS   C ON C.TIPUSCODI='#39'UBICACIO_DI' +
        'NAR'#39' AND F.C_UBICACIO_DINAR = C.C_CODI'
      '       ORDER BY T.DATA_INGRES'
      
        '       INTO :C_LLIT, :PLANTA, :C_ESTAT, :N_PLANTA, :HISTORIA, :M' +
        'ETGE, :PACIENT, :DATA_INGRES, :DATA_ALTA, :C_TRACTAMENT, :HORA_D' +
        'INAR, :UBICACIO_DINAR, :PLANTA_TIPUS'
      '   DO BEGIN'
      '      MOTIU_BLOQUEIG = NULL;'
      '            '
      '      IF (NOT HISTORIA IS NULL) THEN'
      '      BEGIN'
      '         SELECT F.UNITAT, C.N_CODI'
      '         FROM   FILIACIO F'
      
        '         JOIN   CODICAMPS C ON C.TIPUSCODI = "UNITATS" AND C_COD' +
        'I = F.UNITAT'
      '         WHERE  NUM_HIST = :HISTORIA'
      '         INTO  :UNITAT, :N_UNITAT;'
      '      END;'
      ''
      '      IF (HISTORIA IS NULL) THEN   '
      '      BEGIN'
      '            /*  Mirem si el llit est'#224' BLOQUEJAT */'
      '/*            SELECT COUNT(*) */'
      '            SELECT MOTIU_BLOQUEIG'
      '            FROM   LLITBLOQUEIG'
      '            WHERE  C_LLIT = :C_LLIT'
      '            AND   (Data_Fi IS NULL OR Data_Fi >= "TODAY")'
      '            ORDER  BY DATA_INICI'
      '            ROWS  1'
      '            INTO :MOTIU_BLOQUEIG;'
      '/*            INTO  :BLOCK;*/'
      ''
      '/*            IF (BLOCK <> 0) THEN*/'
      '            IF (MOTIU_BLOQUEIG IS NOT NULL) THEN'
      '            BEGIN'
      '                TIPUS = "B";'
      '                PACIENT = "** BLOQUEJAT **";'
      '            END;'
      '            ELSE BEGIN'
      '               TIPUS = "L";'
      '               PACIENT = "** LLIURE **";'
      '            END;'
      '      END'
      '      ELSE BEGIN'
      '            TIPUS = "O";'
      '            IF (DATA_ALTA = "TODAY") THEN '
      '            BEGIN  '
      '                  TIPUS = "L";'
      '            END'
      '      END;'
      '      '
      '      /* IF (C_ESTAT = '#39'T'#39') THEN - parte 56547 - i */'
      '      TANCAT=0;'
      '      SELECT COUNT(*) FROM LLITTANCAMENT'
      '      WHERE (C_LLIT = :C_LLIT)'
      
        '      AND   (DATA_INICI<="TODAY" AND (DATA_FI>"TODAY" OR DATA_FI' +
        ' IS NULL))'
      '      INTO :TANCAT;'
      '      IF (TANCAT IS NULL) THEN TANCAT=0;'
      '      '
      '      IF (TANCAT<>0) THEN'
      '      /* parte 56547 - f */'
      '      BEGIN'
      '          TIPUS = "T";'
      '          PACIENT = "** LLIT TANCAT **";'
      '      END;'
      '      '
      ''
      '      IF (NOMESBUITS = "S") THEN'
      '      BEGIN'
      
        '          IF ((TIPUS = "L") OR (TIPUS = "B") OR (TIPUS = "Q")) T' +
        'HEN SUSPEND;'
      
        '          IF ((TIPUS = "O") AND (DATA_ALTA = :E_DATA)) THEN SUSP' +
        'END;'
      '      END;'
      '      '
      '      ELSE SUSPEND;'
      ''
      ''
      '      PLANTA          = NULL;'
      '      N_PLANTA        = NULL;'
      '      UNITAT          = NULL;'
      '      N_UNITAT        = NULL;'
      '      C_LLIT          = NULL;'
      '      HISTORIA        = NULL;'
      '      C_TRACTAMENT    = NULL;'
      '      METGE           = NULL;'
      '      PACIENT         = NULL;'
      '      TIPUS           = NULL;'
      '      DATA_INGRES     = NULL;'
      '      DATA_ALTA       = NULL;'
      '      PLANTA_TIPUS    = NULL;'
      ''
      '   END;'
      '   '
      
        '   /* llistem els ingressos provisionals per poder-los posar lli' +
        't (excloem els de bcn!) */'
      '   IF (NOMESBUITS='#39'P'#39') THEN'
      '   BEGIN'
      '       N_PLANTA=NULL; TIPUS='#39'P'#39'; PLANTA_TIPUS=NULL;'
      '       '
      
        '       FOR SELECT T.C_PLANTA,F.UNITAT,C.N_CODI,T.C_LLIT,T.C_HIST' +
        'ORIA,T.C_TRACTAMENT,T.C_COORDINADOR,'
      
        '                  F.NOMCOMPLET,T.DATA_INGRES,T.DATA_ALTA,F.HORA_' +
        'DINAR,C2.N_CODI'
      '       FROM TRACTAMENTS T'
      '       LEFT JOIN FILIACIO F         ON T.C_HISTORIA=F.NUM_HIST'
      
        '       LEFT JOIN CODICAMPS C        ON C.TIPUSCODI='#39'UNITATS'#39' AND' +
        ' C.C_CODI=F.UNITAT'
      
        '       LEFT OUTER JOIN CODICAMPS C2 ON C2.TIPUSCODI='#39'UBICACIO_DI' +
        'NAR'#39' AND F.C_UBICACIO_DINAR = C2.C_CODI'
      '       WHERE (T.ESPROVISIONAL<>0) AND (T.C_LLIT IS NULL)'
      '       AND T.C_PRESTACIOORIGEN <> '#39'5001'#39
      '       ORDER BY T.C_PLANTA, T.C_HISTORIA'
      
        '       INTO :PLANTA,:UNITAT,:N_UNITAT,:C_LLIT,:HISTORIA,:C_TRACT' +
        'AMENT,:METGE,:PACIENT,:DATA_INGRES,:DATA_ALTA,:HORA_DINAR,:UBICA' +
        'CIO_DINAR'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '   END;'
      'END'
      '')
    Select.Strings = (
      'SELECT * FROM P_ESPERA_LLITS(NULL, "N")'
      '[FILTRO]'
      '[ORDEN]'
      '')
    Dic1 = Espera
    Dic2 = Llits
    Dic1Name = 'Espera'
    Dic2Name = 'llits'
    Abierta = False
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
    ModiFecha = 37160.7846761343
    Left = 302
    Top = 200
  end
  object RangBloqueigs: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RangBloqueigs'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  LLIT       CHAR(3),'
      '  FECHADESDE DATE,'
      '  FECHAHASTA DATE'
      ')'
      'RETURNS'
      '('
      '  LIBRE CHAR'
      ')'
      'AS'
      ''
      ' DECLARE VARIABLE CONT INTEGER;'
      ' DECLARE VARIABLE TMP_FECHADESDE DATE;'
      ' DECLARE VARIABLE TMP_FECHAHASTA DATE;'
      ''
      'BEGIN'
      ''
      '   IF (FECHAHASTA IS NULL) THEN'
      '   BEGIN'
      '      '
      '      FOR SELECT DATA_INICI, DATA_FI'
      '      FROM LLITBLOQUEIG '
      '      WHERE C_LLIT = :LLIT '
      '        AND (DATA_FI IS NULL OR DATA_FI >= :FECHADESDE)'
      '      INTO :TMP_FECHADESDE, :TMP_FECHAHASTA'
      '      DO BEGIN'
      ''
      '            IF (TMP_FECHADESDE >= FECHADESDE) THEN'
      '            BEGIN'
      '               LIBRE = "N";'
      '               SUSPEND;'
      '               EXIT;'
      #9#9'END'
      ''
      '            IF  (TMP_FECHAHASTA IS NULL) THEN'
      '            BEGIN'
      '               LIBRE = "N";'
      '               SUSPEND;'
      '               EXIT;'
      #9#9'END'
      ''
      '            IF (TMP_FECHADESDE <= FECHADESDE) THEN'
      '            BEGIN'
      '                 IF (TMP_FECHAHASTA >= FECHADESDE) THEN'
      '                 BEGIN'
      '                    LIBRE = "N";'
      '                    SUSPEND;'
      '                    EXIT;'
      '                 END'
      '            END'
      '       '
      '      END;'
      ''
      '      LIBRE = "S";'
      '   END'
      '   ELSE'
      '   BEGIN'
      '        '
      '         SELECT COUNT(*) '
      '         FROM LLITBLOQUEIG '
      '         WHERE C_LLIT = :LLIT '
      
        '           AND (   ((DATA_INICI >= :FECHADESDE AND DATA_INICI <=' +
        ' :FECHAHASTA ) AND (DATA_FI IS NULL) )'
      
        '                OR (DATA_FI >= :FECHADESDE  AND DATA_FI <= :FECH' +
        'AHASTA)      )'
      '         INTO :CONT;'
      '        '
      '         IF (CONT = 0) '
      '         THEN LIBRE = "S";'
      '         ELSE LIBRE = "N";'
      ''
      '   END;'
      ''
      '   SUSPEND;'
      'END')
    Select.Strings = (
      
        'SELECT * FROM P_LLITBLOQUEIG_RANGBLOQUEIGS( "101", "22.06.2001",' +
        ' NULL)'
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
      ''
      ''
      ''
      ''
      '')
    Dic1 = Bloqueig
    Dic1Name = 'Bloqueig'
    Abierta = False
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
    ModiFecha = 37076.7607845833
    Left = 222
    Top = 200
  end
  object SegonaVisita2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'SegonaVisita2'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '   E_HISTORIA     INTEGER,'
      '   E_DATAINGRES   DATE, '
      '   E_Especial     CHAR (2)'
      '/* E_METGE?????????????????????????*/'
      ')'
      'RETURNS '
      '('
      '   C_PRESTACIO    CHAR(4)'
      ')'
      'AS'
      '   DECLARE VARIABLE CONTA INTEGER;'
      'BEGIN'
      ''
      '            SELECT COUNT(*)'
      
        '            FROM (INFREVILIN R JOIN TRACTAMENTS T ON R.C_TRACTAM' +
        'ENT= T.C_TRACTAMENT)'
      '            JOIN METGES M ON R.C_USUARI = M.CODI'
      '            WHERE T.C_HISTORIA  = :E_HISTORIA'
      '              AND F_ADDyear(F_DATE0(R.DATA),1) >= :E_DATAINGRES'
      '              AND M.C_ESPECIAL  = :E_ESPECIAL'
      '              AND T.C_PRESTACIO = "2014"'
      '/*            AND M.CODI = E_METGE?????????????????????????*/'
      '            INTO :CONTA;'
      ''
      '            IF (CONTA IS NULL) THEN CONTA = 0;'
      ''
      '            IF (CONTA > 0) '
      '            THEN C_PRESTACIO = "2002";'
      '            ELSE C_PRESTACIO = "2001";'
      ''
      '            SUSPEND;'
      'END'
      ''
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
    Modi = True
    ModiFecha = 37160.784680544
    Left = 888
    Top = 140
  end
  object InsProg: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'InsProg'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      E_TRACTAMENT INTEGER,'
      '      E_PRESTACIO VARCHAR(4),'
      '      E_MOTIU SMALLINT,'
      '      E_FREQUENCIA VARCHAR(7),'
      '      E_CARACTER SMALLINT,'
      '      E_COMENTARI_METGE VARCHAR(40),'
      '      E_COMENTARI_INFERMERIA VARCHAR(40),'
      '      E_METGE_PREALTA VARCHAR(5),'
      '      E_TEPROGRAMADA CHAR,'
      '      E_ESPERAROGRAMADA INTEGER'
      ')'
      'RETURNS '
      '('
      '      C_ESPERA INTEGER'
      ')'
      'AS'
      '      DECLARE VARIABLE C_Historia INTEGER;'
      '      DECLARE VARIABLE Nom VARCHAR (20);'
      '      DECLARE VARIABLE Cognom1 VARCHAR (20);'
      '      DECLARE VARIABLE Cognom2 VARCHAR (20);'
      '      DECLARE VARIABLE TELEFON VARCHAR (10);'
      '      DECLARE VARIABLE C_Unitat SMALLINT;'
      'BEGIN'
      ' '
      '      C_ESPERA = NULL;'
      '      IF (E_TEPROGRAMADA IS NULL) THEN E_TEPROGRAMADA = "N";'
      ''
      
        '      /*En aquest procedure centralitzem la creacio de una esper' +
        'a programada en la prealta de*/'
      '      /*de un tractament actiu*/'
      '      '
      
        '      SELECT T.C_HISTORIA, F.APELLIDO1, F.APELLIDO2, F.NOMBRE, F' +
        '.TELEFONO, F.UNITAT, T.C_EsperaProgramada'
      '      FROM TRACTAMENTS T JOIN FILIACIO F '
      '      ON T.C_HISTORIA = F.NUM_HIST'
      '      WHERE C_TRACTAMENT = :E_TRACTAMENT'
      
        '      INTO :C_HISTORIA, :COGNOM1, :COGNOM2, :NOM, :TELEFON, :C_U' +
        'NITAT, :C_Espera;'
      ''
      ''
      '      IF ((C_Espera IS NULL) AND (E_TEPROGRAMADA = "N")) THEN'
      '      BEGIN'
      ''
      '            C_ESPERA = GEN_ID(CONTALLISTAESPERA,1);'
      ''
      '            INSERT INTO ESPERA '
      '            ('
      
        '                  C_Espera  , C_Prestacio,    C_Coordinador, Dat' +
        'a_Inclusio,'
      
        '                  C_Historia, Nom,            Cognom1,       Cog' +
        'nom2,       TELEFON,  C_Unitat,'
      
        '                  C_Caracter, C_Procedencia,  C_Motiu,       C_F' +
        'recuencia,'
      
        '                  C_Estat   , ComentariMetge, ComentariInfermera' +
        ', C_TractamentOrigen'
      '            )'
      '             VALUES'
      '            ('
      
        '                  :C_Espera  , :E_Prestacio,      :E_METGE_PREAL' +
        'TA, "TODAY",'
      
        '                  :C_Historia, :Nom,              :Cognom1,     ' +
        '    :Cognom2,         :TELEFON,         :C_Unitat,'
      
        '                  :E_CARACTER, 8   ,              :E_Motiu,     ' +
        '    :E_FREQUENCIA,'
      
        '                  10         , :E_Comentari_Metge,:E_Comentari_I' +
        'nfermerIa, :E_Tractament'
      ''
      '            );'
      '       END'
      '       ELSE BEGIN'
      ''
      
        '            IF (C_Espera IS NULL) THEN C_ESPERA = E_ESPERAROGRAM' +
        'ADA;'
      ''
      '            UPDATE  ESPERA  SET'
      '            C_PRESTACIO              = :E_PRESTACIO,'
      '            C_MOTIU                  = :E_MOTIU ,'
      '            C_CARACTER               = :E_CARACTER ,'
      '            C_Frecuencia             = :E_FREQUENCIA ,'
      '            COMENTARIMETGE           = :E_COMENTARI_METGE,'
      '            COMENTARIINFERMERA       = :E_COMENTARI_INFERMERIA,'
      '            C_COORDINADOR            = :E_METGE_PREALTA,'
      '            C_TRACTAMENTORIGEN       = :E_TRACTAMENT'
      '            WHERE C_ESPERA = :C_ESPERA;'
      ''
      '       END'
      ''
      '       SUSPEND;'
      'END'
      '')
    Dic1 = Espera
    Abierta = False
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
    ModiFecha = 37144.5251904514
    Left = 537
    Top = 20
  end
  object CalculaDuracionU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'CalculaDuracionU'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      ''
      '      IF (USER<>"REPLICATOR") THEN '
      
        '          NEW.DURACIO = (((NEW.hhasta*60)+NEW.mhasta) - ((NEW.hd' +
        'esde*60)+NEW.mdesde));'
      ''
      'END')
    Dic1 = Horario
    Dic1Name = 'Horario'
    Abierta = False
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
    ModiFecha = 37160.7846812384
    Accion1 = taANTES
    Accion2 = taUPDATE
    Left = 253
    Top = 140
  end
  object DiaMetgePle: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DiaMetgePle'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_COORDINADOR VARCHAR(5),'
      '  E_PRESTACIO   VARCHAR(4),'
      '  E_DESDE       DATE,'
      '  E_HASTA       DATE'
      ')'
      'RETURNS '
      '('
      '  FECHA         DATE,'
      '  DIA_SEMANA    INTEGER,'
      '  DIA_PLE       CHAR,'
      '  DURADA_HORARI INTEGER,'
      '  MINUTS_VISITES INTEGER,'
      '  QUANTES_PRESTA INTEGER,'
      '  DURADA_ACUMULADA INTEGER'
      ''
      ''
      ')'
      'AS'
      '/*    DECLARE VARIABLE DURADA_HORARI INTEGER;*/'
      '      DECLARE VARIABLE TMP INTEGER;'
      '      DECLARE VARIABLE TEMP INTEGER;'
      '/*      DECLARE VARIABLE DURADA_ACUMULADA INTEGER;*/'
      '      DECLARE VARIABLE ALGUN_MAX_LLIURE CHAR;'
      '      DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      '      DECLARE VARIABLE MAX_VISITES INTEGER;'
      '/*    DECLARE VARIABLE MINUTS_VISITES INTEGER;'
      '    DECLARE VARIABLE QUANTES_PRESTA INTEGER;*/'
      '      DECLARE VARIABLE TMP2   INTEGER;'
      'BEGIN'
      ''
      ''
      '      IF (E_DESDE IS NULL) THEN E_DESDE = "TODAY";'
      '      IF (E_HASTA IS NULL) THEN E_HASTA = E_DESDE + (360*2);'
      ''
      ''
      '      FOR SELECT DIA, SUM(H.DURACIO) '
      '      FROM HORARIO H'
      '      WHERE H.C_METGE = :E_COORDINADOR'
      '      GROUP BY DIA'
      '      INTO :DIA_SEMANA, :DURADA_HORARI'
      '      DO BEGIN'
      '      '
      
        '            /* Posem a Fecha el primer dia de la semana a partir' +
        ' de E_DESDE                */'
      '            FECHA = E_DESDE;'
      '            WHILE ( F_DIADELASEMANA(FECHA) <> DIA_SEMANA) DO'
      '            BEGIN'
      '                  FECHA = FECHA + 1;'
      '            END'
      '      '
      
        '            /* Anirem incrementant la fecha amb 7 dies, fins que' +
        ' sigui superior a E_HASTA  */'
      '      '
      '            WHILE (FECHA <= E_HASTA) DO'
      '            BEGIN'
      '      '
      '                  DURADA_ACUMULADA = 0;'
      '                  ALGUN_MAX_LLIURE = "N";'
      ''
      
        '                  FOR SELECT MP.C_PRESTACIO, MP.MAX_VISITES, MP.' +
        'MINUTS ,COUNT(E.C_ESPERA)'
      '                  FROM METGEPRESTA MP LEFT JOIN ESPERA E '
      '                  ON MP.CODI = E.C_COORDINADOR '
      '                  AND E.C_PRESTACIO = MP.C_PRESTACIO'
      '                  AND E.DATA_PREINGRES = :FECHA'
      '/*                  AND E.C_ESTAT BETWEEN 30 AND 39*/'
      '/*                  AND E.C_ESTAT NOT BETWEEN 50 AND 59*/'
      '                    AND E.EXCLOS = "N"'
      '                  WHERE MP.CODI = :E_COORDINADOR'
      
        '                  and mp.c_prestacio in (select dp.c_prestacio f' +
        'rom dretspresta dp where dp.c_dret = "P2")'
      
        '                  GROUP BY MP.C_PRESTACIO, MP.MAX_VISITES, MP.MI' +
        'NUTS'
      
        '                  INTO :C_PRESTACIO, :MAX_VISITES, :MINUTS_VISIT' +
        'ES, :QUANTES_PRESTA'
      '                  DO BEGIN'
      ''
      '                  /*      ALGUN_MAX_LLIURE = "N";*/'
      ''
      
        '                        IF ( MAX_VISITES IS NULL ) THEN MAX_VISI' +
        'TES = 0;'
      
        '                        IF ( MINUTS_VISITES IS NULL ) THEN MINUT' +
        'S_VISITES = 0;'
      ''
      
        '                        IF ((MAX_VISITES > 0) AND (MINUTS_VISITE' +
        'S = 0)) THEN'
      '                        BEGIN'
      
        '                              MINUTS_VISITES = DURADA_HORARI / M' +
        'AX_VISITES;'
      '                        END'
      ''
      
        '                        IF ((MAX_VISITES = 0) AND (MINUTS_VISITE' +
        'S > 0)) THEN'
      '                        BEGIN'
      
        '                              MAX_VISITES = DURADA_HORARI / MINU' +
        'TS_VISITES;'
      '                        END'
      ''
      '/*'
      
        ' TEMP = F_DIME("(METGE:.."||:E_COORDINADOR||") PRESTACIO:.."||:E' +
        '_PRESTACIO);'
      
        ' TEMP = F_DIME("(DURACIO ACUMULADA:.."||DURADA_ACUMULADA||") (MI' +
        'NUTS VISITA:.."||MINUTS_VISITES||") (NUM PRESTA:.."||QUANTES_PRE' +
        'STA||")");'
      '*/'
      
        '                        DURADA_ACUMULADA = DURADA_ACUMULADA + (M' +
        'INUTS_VISITES * QUANTES_PRESTA);'
      
        '                        IF ( (E_PRESTACIO IS NULL) OR (E_PRESTAC' +
        'IO=:C_PRESTACIO) ) THEN'
      '                        BEGIN'
      
        '                              IF (  MAX_VISITES =  0 ) THEN ALGU' +
        'N_MAX_LLIURE = "S";'
      
        '                              IF ( (MAX_VISITES <> 0 ) AND (QUAN' +
        'TES_PRESTA < MAX_VISITES) ) THEN ALGUN_MAX_LLIURE = "S";'
      '                        END'
      ''
      '                  END'
      ''
      '                  IF (DURADA_ACUMULADA = 0)'
      '                  THEN DIA_PLE = "N";'
      '                  ELSE BEGIN'
      '                        IF (DURADA_ACUMULADA >= DURADA_HORARI) '
      '                        THEN DIA_PLE = "S";'
      '                        ELSE BEGIN'
      '                              IF (ALGUN_MAX_LLIURE = "S")'
      '                              THEN DIA_PLE = "N";'
      '                              ELSE DIA_PLE = "S";'
      '                        END'
      '                  END'
      ''
      '                  TMP=0;'
      '                  IF (E_PRESTACIO IS NOT NULL) THEN   '
      '                  BEGIN'
      '                      select COUNT(*)'
      '                      from horariopresta hp'
      '                      where hp.c_metge = :e_coordinador'
      '                      AND HP.C_PRESTACIO = :E_PRESTACIO'
      '                      AND DIA = :DIA_SEMANA'
      '                      INTO :TMP;'
      '                      IF (TMP IS NULL) THEN TMP=0;'
      '                      '
      
        '                      /* parte 48096 - i. Cal mirar si hi ha m'#233's' +
        ' d'#39'un tram aquell dia i si la prestaci'#243' es pot filiar en algun d' +
        #39'ells */'
      '                      IF (TMP=0) THEN SUSPEND;'
      '                      ELSE BEGIN'
      '                          select COUNT(*) from HORARIO'
      
        '                          where c_metge = :e_coordinador AND DIA' +
        ' = :DIA_SEMANA'
      '                          INTO :TMP2;'
      '                          '
      '                          IF (TMP2 IS NULL) THEN TMP2=0;'
      
        '                          IF (TMP<>TMP2) THEN SUSPEND;  /* si hi' +
        ' ha algun horari que no estigui excl'#242's, el pintem */'
      '                      '
      '                      END;'
      '                      /* parte 48096 - f. */'
      '                  END'
      '                  /* parte 48096  IF (TMP=0) THEN SUSPEND; */'
      '                  FECHA = FECHA + 7;'
      ''
      '            END'
      '      END'
      ''
      'END'
      ''
      ''
      ''
      ''
      ''
      
        '/*                      FOR SELECT E.C_PRESTACIO, MP.MAX_VISITES' +
        ', MP.MINUTS ,COUNT(*)'
      
        '                        FROM ESPERA E RIGHT JOIN METGEPRESTA MP ' +
        'ON (E.C_COORDINADOR = MP.CODI AND E.C_PRESTACIO = MP.C_PRESTACIO'
      '                        AND E.DATA_PREINGRES = :FECHA'
      '                        AND E.C_ESTAT BETWEEN 30 AND 39'
      '                        AND E.C_COORDINADOR = :E_COORDINADOR)'
      
        '                        GROUP BY E.C_PRESTACIO, MP.MAX_VISITES, ' +
        'MP.MINUTS'
      
        '                        INTO :C_PRESTACIO, :MAX_VISITES, :MINUTS' +
        '_VISITES, :QUANTES_PRESTA*/'
      ''
      ''
      
        '/*                FOR SELECT MP2.C_PRESTACIO, MP2.MAX_VISITES, M' +
        'P2.MINUTS'
      
        '                  FROM METGEPRESTA MP2 JOIN DRETSPRESTA DP ON MP' +
        '2.C_PRESTACIO = DP.C_PRESTACIO'
      '                  WHERE MP2.CODI = "U02" AND DP.C_DRET = "P2"'
      
        '                  INTO :C_PRESTACIO, :MAX_VISITES, :MINUTS_VISIT' +
        'ES'
      '                  DO BEGIN'
      ''
      '                        FOR SELECT COUNT(*)'
      '                        FROM ESPERA E '
      '                        WHERE E.DATA_PREINGRES = :FECHA'
      '                        AND E.C_PRESTACIO = :C_PRESTACIO'
      '                        AND E.C_ESTAT BETWEEN 30 AND 39'
      '                        AND E.C_COORDINADOR = :E_COORDINADOR'
      '                        INTO :QUANTES_PRESTA*/')
    Select.Strings = (
      'SELECT * FROM P_ESPERA_DIAMETGEPLE'
      '("P05",null,"03.07.2001","03.07.2001")'
      '[FILTRO]'
      '[ORDEN]'
      '')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    ModiFecha = 37102.8141583796
    Left = 252
    Top = 80
  end
  object DiaPrestaPle: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DiaPrestaPle'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_PRESTACIO   VARCHAR(4),'
      '  E_DESDE       DATE,'
      '  E_HASTA       DATE'
      ')'
      'RETURNS '
      '('
      '  C_COORDINADOR VARCHAR(5),'
      '  FECHA         DATE,'
      '  DIA_SEMANA    INTEGER,'
      '  METGES_PLENS       INTEGER,'
      '  METGES_LLIURES    INTEGER'
      ')'
      'AS'
      #9'DECLARE VARIABLE TMP CHAR;'
      #9'DECLARE VARIABLE TRENCA DATE;'
      #9'DECLARE VARIABLE PRIMENS INTEGER;'
      'BEGIN'
      ''
      ''
      '     FOR SELECT MP.CODI '
      '     FROM METGEPRESTA MP JOIN METGES M ON M.CODI = MP.CODI'
      '     WHERE MP.C_PRESTACIO = :E_PRESTACIO '
      #9'AND M.BAIXA = "N"'
      '     INTO :C_COORDINADOR'
      '     DO BEGIN'
      ''
      '          FOR SELECT FECHA, DIA_SEMANA, DIA_PLE '
      
        '          FROM P_ESPERA_DIAMETGEPLE(:C_COORDINADOR, :E_PRESTACIO' +
        ', :E_DESDE, :E_HASTA)'
      '          INTO :FECHA, :DIA_SEMANA, :TMP '
      '          DO BEGIN '
      #9#9#9'METGES_PLENS = 0;'
      #9#9#9'METGES_LLIURES = 0;'
      #9#9#9'IF (TMP="S") THEN METGES_PLENS = 1;'
      #9#9#9'IF (TMP="N") THEN METGES_LLIURES = 1;'
      #9#9#9'SUSPEND;'
      '          END'
      ''
      '     END'
      ''
      ''
      ''
      ''
      'END'
      ''
      ''
      ''
      '/*'
      ''
      ''
      '          FOR SELECT FECHA, DIA_SEMANA, DIA_PLE '
      
        '          FROM P_ESPERA_DIAMETGEPLE(:C_COORDINADOR, :E_PRESTACIO' +
        ', :E_DESDE, :E_HASTA)'
      '          INTO :FECHA, :DIA_SEMANA, :TMP '
      '          DO BEGIN '
      #9#9#9'DIA_PLE = 0;'
      #9#9#9'DIA_LLIURE = 0;'
      #9#9#9'IF (TMP="S") THEN DIA_PLE = 1;'
      #9#9#9'IF (TMP="N") THEN DIA_LLIURE = 1;'
      #9#9#9'SUSPEND;'
      '          END'
      ''
      ''
      ''
      '*/')
    Select.Strings = (
      ''
      'SELECT *'
      'FROM P_ESPERA_DIAPRESTAPLE'
      '("2002","01.01.2001","30.04.2001", "S" )'
      ''
      '/*'
      ''
      
        'SELECT FECHA, DIA_SEMANA, SUM(METGES_PLENS) AS METGES_PLENS, SUM' +
        '(METGES_LLIURES) AS METGES_LLIURES'
      'FROM P_ESPERA_DIAPRESTAPLE'
      '("2002","01.01.2001","30.04.2001" )'
      'GROUP BY FECHA, DIA_SEMANA'
      '*/'
      '[FILTRO]'
      '[ORDEN]'
      '')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    ModiFecha = 37103.6098594097
    Left = 321
    Top = 80
  end
  object DiaPrestaPle2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DiaPrestaPle2'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_PRESTACIO   VARCHAR(4),'
      '  E_DESDE       DATE,'
      '  E_HASTA       DATE'
      ')'
      'RETURNS '
      '('
      '  FECHA         DATE,'
      '  DIA_SEMANA    INTEGER,'
      '  DIA_PLE'#9'    CHAR'
      ')'
      'AS'
      ''
      #9'DECLARE VARIABLE METGES_PLENS      INTEGER;'
      #9'DECLARE VARIABLE METGES_LLIURES    INTEGER;'
      ''
      'BEGIN'
      ''
      
        #9'FOR SELECT FECHA, DIA_SEMANA, SUM(METGES_PLENS), SUM(METGES_LLI' +
        'URES)'
      #9'FROM P_ESPERA_DIAPRESTAPLE'
      #9'(:E_PRESTACIO,:E_DESDE, :E_HASTA)'
      #9'GROUP BY FECHA, DIA_SEMANA'
      #9'INTO :FECHA, :DIA_SEMANA, :METGES_PLENS, :METGES_LLIURES'
      #9'DO BEGIN'
      ''
      #9#9'IF (METGES_LLIURES>0)'
      #9#9'THEN DIA_PLE = "N";'
      #9#9'ELSE DIA_PLE = "S";'
      ''
      #9#9'SUSPEND;'
      #9'END'
      ''
      ''
      ''
      'END'
      ''
      '')
    Select.Strings = (
      'SELECT *'
      'FROM P_ESPERA_DIAPRESTAPLE2'
      '("2002",NULL,NULL,NULL)'
      ''
      ''
      ''
      '[FILTRO]'
      '[ORDEN]'
      '')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    ModiFecha = 37103.6098741319
    Left = 394
    Top = 80
  end
  object DiasVisitables: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DiasVisitables'
    ForceNombreDB = False
    Body.Strings = (
      '/* '
      'MIRAR QUE DIAS DE LA SEMANA, PUEDE HACER VISITA MEDICO/PRESTA '
      '*/'
      ''
      '(    '
      '  E_Metge      VARCHAR (5), '
      '  E_PRESTACIO  VARCHAR (4)'
      ')    '
      'RETURNS '
      '(    '
      '  DIA INTEGER'
      ')    '
      'AS'
      '  DECLARE VARIABLE CONTA INTEGER;'
      '  DECLARE VARIABLE HDESDE INTEGER;'
      '  DECLARE VARIABLE MDESDE INTEGER;'
      '  DECLARE VARIABLE HHASTA INTEGER;'
      '  DECLARE VARIABLE MHASTA INTEGER;'
      'BEGIN'
      ''
      '  /* FOR SELECT DISTINCT H.DIA'
      '   FROM ((METGEPRESTA P'
      
        '              JOIN METGES M ON M.CODI = P.CODI AND M.BAIXA = "N"' +
        ')'
      '              JOIN HORARIO H ON P.CODI = H.C_METGE)'
      ''
      '   WHERE P.C_PRESTACIO IN (SELECT DP.C_PRESTACIO'
      '                           FROM   DRETSPRESTA DP'
      '                           WHERE  DP.C_PRESTACIO = P.C_PRESTACIO'
      '                             AND  DP.C_DRET = "P2")'
      ''
      '   AND   NOT H.DIA IN ( SELECT HP.DIA'
      '                        FROM   HORARIOPRESTA HP'
      '                        WHERE  HP.C_METGE = M.CODI'
      '                          AND  HP.C_PRESTACIO = P.C_PRESTACIO'
      '                      )'
      '   AND   (:E_METGE IS NULL OR P.CODI = :E_METGE)'
      '   AND   (:E_PRESTACIO IS NULL OR P.C_PRESTACIO = :E_PRESTACIO)'
      ''
      '   INTO :DIA'
      '   DO BEGIN'
      ''
      '     SUSPEND;'
      ''
      '   END  */'
      '   '
      
        '   FOR SELECT DISTINCT H.DIA, h.hdesde, h.mdesde, h.hhasta, h.mh' +
        'asta'
      '   FROM ((METGEPRESTA P'
      
        '              JOIN METGES M ON M.CODI = P.CODI AND M.BAIXA = "N"' +
        ')'
      '              JOIN HORARIO H ON P.CODI = H.C_METGE)'
      '   WHERE P.C_PRESTACIO IN (SELECT DP.C_PRESTACIO'
      '                           FROM   DRETSPRESTA DP'
      '                           WHERE  DP.C_PRESTACIO = P.C_PRESTACIO'
      '                             AND  DP.C_DRET = "P2")'
      '   AND   (:E_METGE IS NULL OR P.CODI = :E_METGE)'
      '   AND   (:E_PRESTACIO IS NULL OR P.C_PRESTACIO = :E_PRESTACIO)'
      ''
      '   INTO :DIA, :HDESDE, :MDESDE, :HHASTA, :MHASTA'
      '   DO BEGIN'
      
        '       /* PARTE 48156 - mirem que aquesta prestaci'#243' t'#233' almenys u' +
        'n horari disponible aquest dia */'
      '       CONTA=0;'
      
        '       IF ((E_METGE IS NOT NULL) AND (E_PRESTACIO IS NOT NULL)) ' +
        'THEN'
      '       BEGIN'
      
        '           /* La taula HORARIOPRESTA es refereix a exclusions de' +
        ' prestacions en certes hores o dies *'
      '              Per aix'#242' mirem que NO hi sigui */'
      '           SELECT COUNT(*) FROM HORARIOPRESTA'
      
        '           WHERE C_METGE = :E_METGE AND C_PRESTACIO = :E_PRESTAC' +
        'IO AND DIA = :DIA'
      
        '           AND HDESDE = :HDESDE AND MDESDE = :MDESDE AND HHASTA ' +
        '= :HHASTA AND MHASTA = :MHASTA'
      '           INTO :CONTA;'
      ''
      '           IF (CONTA IS NULL) THEN CONTA=0;'
      '       END;'
      '       IF (CONTA=0) THEN SUSPEND;'
      '   END'
      ''
      'END;'
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
      'SELECT * FROM P_TRACTAMENTS_DIASVISITABLES("U02", NULL)'
      '[FILTRO][ORDEN]'
      ''
      ''
      '')
    Dic1 = wDataBasics.Tractaments
    Dic2 = wDataCodis.Festius
    Dic3 = Vacaciones
    Dic1Name = 'Tractaments'
    Dic2Name = 'Festius'
    Dic3Name = 'Vacaciones'
    Abierta = False
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
    ModiFecha = 37103.6098822454
    Left = 471
    Top = 80
  end
  object ListMetgePresta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS '
      '(  '
      '      C_PRESTACIO VARCHAR(4),'
      '      N_PRESTACIO VARCHAR(20),'
      '      C_METGE VARCHAR(5),'
      '      N_METGE VARCHAR(70),'
      '      N_ESPECIAL VARCHAR(40)'
      ')'
      'AS'
      'DECLARE VARIABLE TRACTE VARCHAR(5);'
      'DECLARE VARIABLE METGE  VARCHAR(20);'
      'DECLARE VARIABLE COGNOM VARCHAR(16);'
      'BEGIN'
      ''
      '      FOR SELECT C_PRESTACIO, RESUM'
      '      FROM PRESTACION P'
      
        '      JOIN DRETSPRESTA D ON P.C_PRESTACIO = D.C_PRESTACIO AND P.' +
        'TIPUS > -1'
      '      WHERE D.C_DRET = "P2"'
      '      INTO :C_PRESTACIO, :N_PRESTACIO'
      '      DO BEGIN'
      ''
      '            C_METGE = NULL;'
      '            N_METGE = "<TOTS>";'
      '            N_ESPECIAL = NULL;'
      '            N_PRESTACIO =  C_PRESTACIO || " - " || N_PRESTACIO;'
      ''
      '            SUSPEND;'
      ''
      
        '/*            FOR SELECT DISTINCT MP.CODI, F_STRNULL(M.TRACTE," ' +
        '") || " " || F_STRNULL(M.METGE," ") || " " || F_STRNULL(M.COGNOM' +
        '," "), E.N_ESPECIAL */'
      
        '            FOR SELECT DISTINCT MP.CODI, M.TRACTE, M.METGE, M.CO' +
        'GNOM, E.N_ESPECIAL'
      
        '            FROM METGEPRESTA MP JOIN METGES M ON MP.CODI = M.COD' +
        'I'
      
        '                                JOIN ESPECIAL E ON M.C_ESPECIAL ' +
        '= E.C_ESPECIAL'
      '            WHERE MP.C_PRESTACIO = :C_PRESTACIO '
      '              AND M.BAIXA = "N"'
      '              AND M.CODI IN (SELECT C_METGE FROM HORARIO)'
      '/*            INTO :C_METGE ,:N_METGE, :N_ESPECIAL */'
      '            INTO :C_METGE ,:TRACTE, :METGE, :COGNOM, :N_ESPECIAL'
      '            DO BEGIN'
      '/*                  N_METGE = C_METGE || " - " || N_METGE; */'
      ''
      '                  IF (TRACTE IS NULL) THEN TRACTE = '#39#39';'
      '                                      ELSE TRACTE = TRACTE||'#39' '#39';'
      '                  IF (METGE  IS NULL) THEN METGE  = '#39#39';'
      '                  IF (COGNOM IS NULL) THEN COGNOM = '#39#39';'
      '                                      ELSE COGNOM = '#39' '#39'||COGNOM;'
      '                                      '
      
        '                  N_METGE = C_METGE || " - " || TRACTE || METGE ' +
        '|| COGNOM;'
      ''
      '                  SUSPEND;'
      '            END'
      '      END'
      ''
      '      C_PRESTACIO = NULL;'
      '      N_PRESTACIO = "<TOTES>";'
      ''
      
        '/*      FOR SELECT DISTINCT MP.CODI, F_STRNULL(M.TRACTE," ") || ' +
        '" " || F_STRNULL(M.METGE," ") || " " || F_STRNULL(M.COGNOM," "),' +
        ' E.N_ESPECIAL*/'
      
        '      FOR SELECT DISTINCT MP.CODI, M.TRACTE, M.METGE, M.COGNOM, ' +
        'E.N_ESPECIAL'
      '      FROM METGEPRESTA MP JOIN METGES M ON MP.CODI = M.CODI'
      
        '                          JOIN ESPECIAL E ON M.C_ESPECIAL = E.C_' +
        'ESPECIAL'
      
        '                          JOIN PRESTACION P ON MP.C_PRESTACIO = ' +
        'P.C_PRESTACIO AND P.TIPUS > -1'
      '      WHERE M.BAIXA = "N"'
      '      AND M.CODI IN (SELECT C_METGE FROM HORARIO)'
      '/*      INTO :C_METGE ,:N_METGE, :N_ESPECIAL */'
      '      INTO :C_METGE ,:TRACTE, :METGE, :COGNOM, :N_ESPECIAL'
      '      DO BEGIN'
      '/*            N_METGE = C_METGE || " - " || N_METGE; */'
      '            '
      '            IF (TRACTE IS NULL) THEN TRACTE = '#39#39';'
      '                                ELSE TRACTE = TRACTE||'#39' '#39';'
      '            IF (METGE  IS NULL) THEN METGE  = '#39#39';'
      '            IF (COGNOM IS NULL) THEN COGNOM = '#39#39';'
      '                                ELSE COGNOM = '#39' '#39'||COGNOM;'
      ''
      
        '            N_METGE = C_METGE || " - " || TRACTE || METGE || COG' +
        'NOM;'
      '            '
      '            SUSPEND;'
      '      END'
      ''
      ''
      ''
      ''
      'END')
    Select.Strings = (
      'SELECT * FROM P_METGEPRESTA_LIST'
      '[filtro]'
      '[ORDEN]')
    Dic1 = wDataCodis.MetgePresta
    Dic1Name = 'MetgePresta'
    Abierta = False
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
    ModiFecha = 37105.7442958565
    Left = 888
    Top = 80
  end
  object Activitat: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Activitat'
    ForceNombreDB = False
    Body.Strings = (
      '( '
      ''
      '   E_FECHADESDE         DATE,'
      '   E_FECHAHASTA         DATE,'
      '   VALOR                INTEGER'
      ') '
      'RETURNS '
      '('
      ''
      '   C_ESPERA             INTEGER,'
      '   C_TRACTAMENT         INTEGER,'
      ''
      '   C_HISTORIA           INTEGER,'
      '   NOMCOMPLET           VARCHAR(80),'
      ''
      '   DATA_INCLUSIO        DATE,'
      '   DATA_INGRES          DATE,'
      '   DATA_PREINGRES       DATE,'
      '   HORA_PREINGRES       VARCHAR(7),'
      '   C_PRESTACIO          VARCHAR(4),'
      '   N_PRESTACIO          VARCHAR(35),'
      '   RESUM                VARCHAR(8),'
      '   DESCRIPCIO           VARCHAR(100),'
      ''
      '   C_COORDINADOR        VARCHAR(5),'
      ''
      '   DATA_PREALTA         DATE,'
      '   DATA_ALTA            DATE,'
      ''
      '   C_ESTAT              INTEGER,'
      '   GRUPO                INTEGER, '
      
        '/*   ELEMENTOS            INTEGER,      ara la gesti'#243' d'#39'hist'#242'rie' +
        's cl'#237'niques en paper es fa des d'#39'un altre programa GHCP*/'
      ''
      '   EDAT                 INTEGER, '
      ''
      '   C_CARACTER           INTEGER,'
      '   N_CARACTER           VARCHAR(20),'
      '   C_UNITAT             INTEGER,'
      ''
      '   C_ESTATFAC           INTEGER,'
      '   N_ESTATFAC           VARCHAR(40),'
      ''
      
        '/*   HISTORIA_CLINICA     VARCHAR(200), ara la gesti'#243' d'#39'hist'#242'rie' +
        's cl'#237'niques en paper es fa des d'#39'un altre programa GHCP*/'
      '   DIAANT               INTEGER'
      ''
      ')'
      'AS                                  '
      '   DECLARE VARIABLE TMP_DATA       DATE;'
      '   DECLARE VARIABLE TMP_ELEMENTOS  INTEGER;'
      '   DECLARE VARIABLE VALOR1         INTEGER;'
      '   DECLARE VARIABLE VALOR2         INTEGER;'
      '   DECLARE VARIABLE VALOR3         INTEGER;'
      '   DECLARE VARIABLE VALOR4         INTEGER;'
      '   DECLARE VARIABLE VALOR5         INTEGER;'
      ''
      '/*--   DECLARE VARIABLE TMP          INTEGER; --*/'
      ''
      'BEGIN'
      ''
      '    DIAANT = VALOR;'
      ''
      '    IF (E_FECHADESDE IS NULL) THEN  E_FECHADESDE = "TODAY";'
      '    IF (E_FECHAHASTA IS NULL) THEN  E_FECHAHASTA = "TODAY";'
      '       '
      '    VALOR1 = 1; VALOR2 = 2; VALOR3 = 4; VALOR4 = 8; VALOR5 = 16;'
      ''
      
        '    /** TODOS LOS TRATAMIENTOS ACTIVOS + TODA AGENDA Y LISTA ESP' +
        'ERA NO FILIADAS QUE ESTEN PROGRAMADAS PARA HOY **/ '
      ''
      
        '   FOR SELECT T.C_PRESTACIO, E.C_ESPERA, T.C_TRACTAMENT,  T.C_HI' +
        'STORIA, T.NOMCOMPLET, T.EDAT, E.C_CARACTER, C.N_CODI, E.C_UNITAT' +
        ', '
      
        '              T.DATA_INGRES, E.DATA_PREINGRES, E.HORA_PREINGRES,' +
        ' '
      
        '              T.N_PRESTACIO, T.RESUM, CAST(T.C_COORDINADOR AS VA' +
        'RCHAR(5)), '
      
        '              T.DATA_PREALTA, T.DATA_ALTA, E.C_ESTAT, T.TIPUS, E' +
        '.DATA_INCLUSIO, CAST(T1.C_ESTATFAC as INTEGER), CAST(X.N_CODI as' +
        ' VARCHAR(40))'
      ''
      '       FROM V_TRACTAMENTS_LIST T'
      
        '       LEFT JOIN ESPERA E ON T.C_TRACTAMENT = E.C_TRACTAMENTDEST' +
        'I'
      
        '       LEFT JOIN CODICAMPS C ON C.TIPUSCODI = "CARACTER" AND C.C' +
        '_CODI = E.C_CARACTER'
      '       JOIN TRACTAMENTS T1 ON T.C_TRACTAMENT = T1.C_TRACTAMENT'
      
        '       JOIN CODICAMPS X ON T1.C_ESTATFAC = X.C_CODI AND X.TIPUSC' +
        'ODI = "ESTATFACTU" AND X.R_CODI <> 9'
      ''
      
        '       where t.data_ingres between :e_fechadesde and :e_fechaHas' +
        'ta'
      
        '       or (t.data_prealta between :e_fechadesde and :e_fechaHast' +
        'a and (t.data_alta is null or t.data_alta >= t.data_prealta))'
      '       or t.data_alta between :e_fechadesde and :e_fechaHasta'
      ''
      '       UNION'
      ''
      ''
      
        '       SELECT E.C_PRESTACIO, E.C_ESPERA, CAST( NULL AS INTEGER),' +
        ' E.C_HISTORIA, E.NOMCOMPLET, F.EDAT, E.C_CARACTER, C.N_CODI, E.C' +
        '_UNITAT,'
      
        '              CAST(NULL AS DATE), E.DATA_PREINGRES, E.HORA_PREIN' +
        'GRES, '
      
        '              P.N_PRESTACIO, P.RESUM, CAST(E.C_COORDINADOR AS VA' +
        'RCHAR(5)), '
      
        '              CAST(NULL AS DATE), CAST(NULL AS DATE), E.C_ESTAT,' +
        ' P.TIPUS, E.DATA_INCLUSIO, cast(NULL as Integer), cast(NULL as v' +
        'archar(40))'
      ''
      '       FROM ESPERA E'
      '       LEFT JOIN PRESTACION P ON E.C_PRESTACIO = P.C_PRESTACIO'
      '       LEFT JOIN FILIACIO F ON F.NUM_HIST = E.C_HISTORIA'
      
        '       LEFT JOIN CODICAMPS C ON C.TIPUSCODI = "CARACTER" AND C.C' +
        '_CODI = E.C_CARACTER'
      ''
      
        '       WHERE ((E.DATA_PREINGRES >= :E_FECHADESDE) AND (E.DATA_PR' +
        'EINGRES <= :E_FECHAHASTA))'
      '       AND E.C_ESTAT BETWEEN 20 AND 39'
      '       AND E.EXCLOS = "N"'
      ''
      '   ORDER BY 14, 10'
      ''
      
        '   INTO :C_PRESTACIO,  :C_ESPERA,       :C_TRACTAMENT,   :C_HIST' +
        'ORIA, :NOMCOMPLET, :EDAT, :C_CARACTER, :N_CARACTER, :C_UNITAT, '
      '        :DATA_INGRES,  :DATA_PREINGRES, :HORA_PREINGRES,  '
      '        :N_PRESTACIO,  :RESUM,          :C_COORDINADOR,  '
      
        '        :DATA_PREALTA, :DATA_ALTA,      :C_ESTAT,        :GRUPO,' +
        '      :DATA_INCLUSIO, :C_ESTATFAC, :N_ESTATFAC'
      ''
      '   DO BEGIN'
      '      '
      '      DESCRIPCIO = NULL;'
      '      IF (GRUPO IS NULL) '
      '      THEN GRUPO = 0;'
      ''
      
        '            IF ((NOT DATA_PREINGRES IS NULL) AND (DATA_INGRES IS' +
        ' NULL)) THEN DESCRIPCIO = "PREINGRES";'
      ''
      '            IF (GRUPO = 2) THEN '
      '            BEGIN'
      '                  DESCRIPCIO = "VISITAT";'
      '       '
      '                  IF (C_ESTAT BETWEEN 20 AND 29)'
      '                  THEN DESCRIPCIO = "LLISTA ESPERA PROGRAMADA";'
      ''
      '                  IF (C_ESTAT BETWEEN 30 AND 39)'
      '                  THEN DESCRIPCIO = "AGENDA PROGRAMADA";'
      '            END;'
      ''
      '            IF (GRUPO = 1) THEN'
      '            BEGIN '
      ''
      
        '                IF ((NOT DATA_PREALTA IS NULL) OR (NOT DATA_ALTA' +
        ' IS NULL)) THEN'
      '                BEGIN'
      
        '                   IF (DATA_PREALTA = E_FECHADESDE) THEN DESCRIP' +
        'CIO = "PREALTA";'
      
        '                   IF (DATA_ALTA = E_FECHADESDE) THEN DESCRIPCIO' +
        ' = "ALTA";'
      
        '                   IF ((DATA_ALTA = E_FECHADESDE) AND (DATA_PREA' +
        'LTA IS NULL)) THEN DESCRIPCIO = "ALTA FOR'#199'ADA";'
      '                END'
      '                ELSE'
      '                BEGIN '
      
        '                   IF ((DATA_INCLUSIO = DATA_INGRES) AND (E_FECH' +
        'ADESDE = DATA_INGRES))'
      '                   THEN DESCRIPCIO = "INGR'#200'S FOR'#199'AT";'
      
        '                   ELSE IF (DATA_INGRES = E_FECHADESDE )THEN DES' +
        'CRIPCIO = "INGR'#200'S";'
      '                END;'
      ''
      '                   IF (C_PRESTACIO = "2005") THEN'
      '                   BEGIN'
      '                     IF  (NOT DATA_PREINGRES IS NULL) THEN '
      '                     BEGIN'
      '                         IF (DATA_INGRES IS NULL)  '
      
        '                         THEN DESCRIPCIO = "CIRURG'#205'A PROGRAMADA"' +
        ';'
      
        '                         ELSE DESCRIPCIO = "CIRURG'#205'A REALITZADA"' +
        ';'
      '                     END;'
      '                   END;'
      ''
      '            END;'
      ''
      '            IF (GRUPO = 3) THEN '
      '            BEGIN '
      
        '                IF ((NOT DATA_PREALTA IS NULL) OR (NOT DATA_ALTA' +
        ' IS NULL)) THEN'
      '                BEGIN'
      
        '                   IF (DATA_PREALTA = E_FECHADESDE) THEN DESCRIP' +
        'CIO = "PREALTA";'
      
        '                   IF (DATA_ALTA = E_FECHADESDE) THEN DESCRIPCIO' +
        ' = "ALTA";'
      
        '                   IF ((DATA_ALTA = E_FECHADESDE) AND (DATA_PREA' +
        'LTA IS NULL)) THEN DESCRIPCIO = "ALTA FOR'#199'ADA";'
      '                END'
      '                ELSE'
      '                BEGIN '
      
        '                   IF (DATA_INGRES = E_FECHADESDE )THEN DESCRIPC' +
        'IO = "INICI";'
      
        '                   IF (DATA_INCLUSIO = DATA_INGRES) THEN DESCRIP' +
        'CIO = "INICI FOR'#199'AT";'
      '                END;'
      '            END;'
      ''
      ''
      ''
      '      TMP_DATA = "01.01.1800";'
      ''
      
        '/*    Ara la gesti'#243' d'#39'hist'#242'ries cl'#237'niques en paper es fa des d'#39'u' +
        'n altre programa GHCP'
      ''
      '      ELEMENTOS = 0;'
      ''
      '      FOR SELECT MAX(DATA), ELEMENTOS '
      '      FROM MOV_HCLINICA '
      '      WHERE NUM_HIST = :C_HISTORIA'
      '      GROUP BY ELEMENTOS'
      '      ORDER BY 1'
      '      INTO :TMP_DATA, :TMP_ELEMENTOS'
      '      DO BEGIN'
      '          ELEMENTOS = TMP_ELEMENTOS;'
      '      END'
      '            '
      '      IF (ELEMENTOS IS NULL) THEN ELEMENTOS = 0;'
      '      IF (TMP_ELEMENTOS IS NULL) THEN TMP_ELEMENTOS = 0;'
      ''
      '      HISTORIA_CLINICA = "";'
      '*/'
      ''
      ''
      
        '      /*---------------------------| D AKI SACAMOS EL TEXTO |---' +
        '---------------------------*/ '
      ''
      ''
      '/*      IF (ELEMENTOS <> 0) THEN  HISTORIA_CLINICA = "-";'
      ''
      '      TMP_ELEMENTOS = TMP_ELEMENTOS - VALOR5;'
      '      IF (TMP_ELEMENTOS >= 0) '
      '      THEN  HISTORIA_CLINICA = HISTORIA_CLINICA||" Altres -";'
      '      ELSE  TMP_ELEMENTOS = TMP_ELEMENTOS + VALOR5;'
      ''
      '      TMP_ELEMENTOS = TMP_ELEMENTOS - VALOR4;'
      '      IF (TMP_ELEMENTOS >= 0) '
      
        '      THEN  HISTORIA_CLINICA = HISTORIA_CLINICA||" RX Urologia -' +
        '";'
      '      ELSE  TMP_ELEMENTOS = TMP_ELEMENTOS + VALOR4;'
      ''
      '      TMP_ELEMENTOS = TMP_ELEMENTOS - VALOR3;'
      '      IF (TMP_ELEMENTOS >= 0) '
      '      THEN  HISTORIA_CLINICA = HISTORIA_CLINICA||" RX Varis -";'
      '      ELSE  TMP_ELEMENTOS = TMP_ELEMENTOS + VALOR3;'
      ''
      '      TMP_ELEMENTOS = TMP_ELEMENTOS - VALOR2;'
      '      IF (TMP_ELEMENTOS >= 0) '
      
        '      THEN  HISTORIA_CLINICA = HISTORIA_CLINICA||" RX Columna -"' +
        ';'
      '      ELSE  TMP_ELEMENTOS = TMP_ELEMENTOS + VALOR2;'
      ''
      '      TMP_ELEMENTOS = TMP_ELEMENTOS - VALOR1;'
      
        '      IF (TMP_ELEMENTOS >= 0) THEN  HISTORIA_CLINICA = HISTORIA_' +
        'CLINICA||" Hist'#242'ria -";'
      '      ELSE  TMP_ELEMENTOS = TMP_ELEMENTOS + VALOR1;'
      '*/'
      '      SUSPEND;    '
      ''
      '      DESCRIPCIO       = NULL;'
      '      C_ESPERA         = NULL;'
      '      C_TRACTAMENT     = NULL;'
      '      C_HISTORIA       = NULL;'
      '      NOMCOMPLET       = NULL;'
      '      DATA_INCLUSIO    = NULL;'
      '      DATA_INGRES      = NULL;'
      '      DATA_PREINGRES   = NULL;'
      '      HORA_PREINGRES   = NULL;'
      '      C_PRESTACIO      = NULL;'
      '      N_PRESTACIO      = NULL;'
      '      RESUM            = NULL;'
      '      C_COORDINADOR    = NULL;'
      '      DATA_PREALTA     = NULL;'
      '      DATA_ALTA        = NULL;'
      '      C_ESTAT          = NULL;'
      '      GRUPO            = NULL;'
      '/*      ELEMENTOS        = NULL; */'
      '      EDAT             = NULL;'
      '/*      HISTORIA_CLINICA = NULL; */'
      ''
      '   END'
      ''
      'END')
    Select.Strings = (
      ''
      'SELECT * FROM P_ESPERA_ACTIVITAT(NULL, NULL, 0)'
      '[FILTRO]'
      '[ORDEN]')
    Dic1 = Espera
    Dic2 = wDataBasics.Filiacio
    Dic3 = wDataBasics.Tractaments
    Dic1Name = 'Espera'
    Dic2Name = 'Filiacio'
    Dic3Name = 'Tractaments'
    Abierta = False
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
    ModiFecha = 37160.8936502083
    Left = 817
    Top = 80
  end
  object CrearEspera: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CrearEspera'
    ForceNombreDB = False
    Body.Strings = (
      '(     E_COORDINADOR     VARCHAR(5),'
      '      E_PRESTACIO       VARCHAR(4),'
      '      E_HISTORIA        INTEGER,'
      '      E_DATAPREINGRES      DATE, '
      '      E_TRACTAMENTDESTI INTEGER,'
      '      E_ESTAT           INTEGER'
      ')'
      'RETURNS '
      '('
      '      C_ESPERA INTEGER'
      ')'
      'AS'
      '      DECLARE VARIABLE NOM     VARCHAR (20);'
      '      DECLARE VARIABLE COGNOM1 VARCHAR (20);'
      '      DECLARE VARIABLE COGNOM2 VARCHAR (20);'
      '      DECLARE VARIABLE TELEFON VARCHAR (10);'
      '      DECLARE VARIABLE UNITAT  SMALLINT;'
      'BEGIN'
      ''
      '    C_ESPERA = GEN_ID(CONTALLISTAESPERA,1);'
      ''
      '    SELECT NOMBRE, APELLIDO1, APELLIDO2, TELEFONO, UNITAT '
      '      FROM FILIACIO '
      '     WHERE NUM_HIST = :E_HISTORIA '
      '     INTO :NOM, :COGNOM1, :COGNOM2, :TELEFON, :UNITAT;'
      ''
      '    INSERT INTO ESPERA '
      
        '    ( C_Espera , C_Prestacio, C_Coordinador, Data_Inclusio, Data' +
        '_PreIngres, C_Historia, Nom, Cognom1, Cognom2, TELEFON, '
      '      C_Unitat , C_TractamentDesti , C_ESTAT )'
      '    VALUES'
      
        '    ( :C_ESPERA, :E_PRESTACIO, :E_COORDINADOR, "TODAY", :E_DATAP' +
        'REINGRES, :E_HISTORIA, :NOM, :COGNOM1, :COGNOM2, :TELEFON, '
      '      :UNITAT  , :E_TRACTAMENTDESTI, :E_ESTAT );'
      ''
      '    SUSPEND;'
      'END')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    ModiFecha = 37160.7846834375
    Left = 595
    Top = 20
  end
  object DietesLlits: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DietesiLlits'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS'
      '('
      ''
      '  LLIT            VARCHAR(3),'
      '  PLANTA          VARCHAR(15),'
      '  TRAC_LLIT       VARCHAR(3),'
      '  TRAC_PLANTA     VARCHAR(20),'
      '  HISTORIA        INTEGER,'
      '  TRACTAMENT      INTEGER,'
      '  METGE           VARCHAR(3),'
      
        '  PACIENT         VARCHAR(100),            /* NOM DEL PACIENT O ' +
        'MOTIU DEL BLOQUEIG */'
      '  DIETA           VARCHAR(40),'
      '  OBS_DIETA       VARCHAR(40),'
      
        '  TIPUS           CHAR,                    /* B: BLOQUEJAT  L: L' +
        'LIURE  O: OCUPAT */'
      '  DATA_INGRES     DATE, '
      '  DATA_ALTA       DATE,'
      '  FECHA_NAC       DATE,'
      '  CODI_DIETA      INTEGER,'
      '  PRESTACIO       VARCHAR(4),'
      '  C_UNITAT        INTEGER,'
      '  UNITAT          VARCHAR(40),'
      '  TSI             VARCHAR(14)'
      ')'
      'AS'
      '  DECLARE VARIABLE BLOCK INTEGER;'
      '  DECLARE VARIABLE D_ALTAADMIN DATE;'
      '  DECLARE VARIABLE ESTAT CHAR(1);'
      '  DECLARE VARIABLE TANCAT INTEGER;'
      'BEGIN'
      ''
      
        '  FOR SELECT L.C_LLIT, L.C_ESTAT, L.C_PLANTA, T.C_LLIT, T.C_PLAN' +
        'TA, T.C_HISTORIA, F.NOMCOMPLET, T.C_TRACTAMENT, T.C_COORDINADOR,'
      
        '             F.OBS_DIETA, C.C_CODI, C.N_CODI, T.DATA_INGRES, T.D' +
        'ATA_ALTA, T.C_PRESTACIO, F.UNITAT, C2.N_CODI, F.FECHA_NAC, F.TSI'
      '      FROM  LLITS L'
      
        '      LEFT JOIN TRACTAMENTS T ON L.C_LLIT = T.C_LLIT AND (T.DATA' +
        '_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      '      LEFT JOIN FILIACIO F    ON F.NUM_HIST = T.C_HISTORIA'
      
        '      LEFT JOIN CODICAMPS C   ON C.TIPUSCODI ="DIETES" AND C.C_C' +
        'ODI = F.C_DIETA'
      
        '      LEFT JOIN CODICAMPS C2  ON C2.TIPUSCODI ="UNITATS" AND C2.' +
        'C_CODI = F.UNITAT'
      '      ORDER BY L.C_LLIT'
      
        '      INTO :LLIT, :ESTAT, :PLANTA, :TRAC_LLIT, :TRAC_PLANTA, :HI' +
        'STORIA, :PACIENT, :TRACTAMENT, :METGE,'
      
        '           :OBS_DIETA, :CODI_DIETA, :DIETA, :DATA_INGRES, :DATA_' +
        'ALTA, :PRESTACIO, :C_UNITAT, :UNITAT, :FECHA_NAC, :TSI'
      '  DO BEGIN'
      ''
      '      D_ALTAADMIN = NULL;'
      ''
      '      IF (HISTORIA IS NULL) THEN'
      '      BEGIN'
      ''
      '            SELECT COUNT(*) FROM LLITBLOQUEIG'
      '            WHERE C_LLIT = :LLIT'
      '            AND (Data_Fi IS NULL OR Data_Fi >= "TODAY")'
      '            INTO :BLOCK;'
      ''
      '            IF (BLOCK <> 0) THEN   '
      '            BEGIN'
      '                TIPUS = "B";'
      '                PACIENT = "** BLOQUEJAT **";'
      '            END;'
      '            '
      '            ELSE BEGIN'
      '               TIPUS = "L";'
      '               PACIENT = "** LLIURE **";'
      '            END;'
      '      END'
      '      ELSE BEGIN'
      ''
      '            TIPUS = "O";'
      '            '
      '            IF (DATA_ALTA = "TODAY") THEN TIPUS = "L";'
      '            '
      '            /* AFEGIM LES ALTES ADMINISTRATIVES */'
      '            /* JA NO EXISTEIXEN!'
      '            ELSE BEGIN'
      ''
      '                  SELECT DATA_ALTA_ADMIN FROM ALTESADMIN'
      '                  WHERE  C_TRACTAMENT = :TRACTAMENT'
      '                  AND    ESTAT = 0'
      '                  INTO  :D_ALTAADMIN;'
      '                '
      
        '                  /*  23.12.2008  pintem les altes administrativ' +
        'es que marxaran avui'
      
        '                  IF ((D_ALTAADMIN IS NOT NULL) AND (D_ALTAADMIN' +
        ' = "TODAY")) THEN'
      '                  BEGIN'
      '                        TIPUS = "A";'
      
        '                        /* PACIENT = "** ALTA ADMINISTRATIVA **"' +
        '; */'
      
        '                        /* IF (D_ALTAADMIN < "TODAY") THEN PACIE' +
        'NT = "** ALTA ADMINISTRATIVA **";'
      '                  END'
      ''
      '            END */'
      '      END;'
      ''
      '/* parte 57073 - i'
      
        '      IF (ESTAT <> '#39'T'#39') THEN SUSPEND;  /* els llits tancats no e' +
        'ls mostrem */'
      ''
      '      TANCAT=0;'
      '      SELECT COUNT(*) FROM LLITTANCAMENT'
      '      WHERE (C_LLIT = :LLIT)'
      
        '      AND   (DATA_INICI<="TODAY" AND (DATA_FI>"TODAY" OR DATA_FI' +
        ' IS NULL))'
      '      INTO :TANCAT;'
      '      IF (TANCAT IS NULL) THEN TANCAT=0;'
      ''
      '      IF (TANCAT=0) THEN SUSPEND;'
      '/* parte 57073 - f */'
      ''
      '  END;'
      'END;')
    Select.Strings = (
      'SELECT * FROM P_TRACTAMENTS_DIETESILLITS'
      '[FILTRO]'
      '[ORDEN]'
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
    Modi = True
    ModiFecha = 37194.7325127315
    Left = 686
    Top = 260
  end
  object SegonaVisita: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'SegonaVisita'
    ForceNombreDB = False
    Body.Strings = (
      '(  '
      '   E_HISTORIA     INTEGER,'
      '/*   E_PRESTACIO    VARCHAR(4),*/'
      '   E_DATAINGRES   DATE,'
      '   E_COORDINADOR  VARCHAR(5),'
      
        '   ES_PRESENCIAL  CHAR(1)      /* S- prestacio presencial; N - p' +
        'restacio no presencial */'
      ')'
      'RETURNS'
      '('
      '   C_PRESTACIO VARCHAR(4),'
      '   Traza VARCHAR(200)'
      ')'
      'AS'
      ''
      '   DECLARE VARIABLE C_Especial      CHAR (2);'
      '   DECLARE VARIABLE CONTA           INTEGER;'
      '   DECLARE VARIABLE TMPINGRES       DATE;'
      '   DECLARE VARIABLE TMPALTA         DATE;'
      '   DECLARE VARIABLE TMPTRACTAMENT   INTEGER;'
      'BEGIN'
      ''
      
        '    /*-----MIRAMOS QUE NO HAYA UN TRATAMIENTO DESDE LA FECHA ACU' +
        'TAL HASTA MENOS UN A'#209'O DE ESTA--------*/'
      ''
      '    SELECT COUNT(*)'
      
        '    FROM TRACTAMENTS T JOIN PRESTACION P ON T.C_PRESTACIO = P.C_' +
        'PRESTACIO'
      '    WHERE C_HISTORIA = :E_HISTORIA'
      
        '      /*AND ((DATA_ALTA >= F_ADDYEAR(:E_DATAINGRES, -1)) OR DATA' +
        '_ALTA IS NULL)*/'
      '      AND ((DATA_ALTA >= F_ADDYEAR(:E_DATAINGRES, -1)))'
      '      AND P.TIPUS <> 0'
      '    INTO :CONTA;'
      ''
      '    IF (CONTA IS NULL) THEN CONTA = 0;'
      '    IF (CONTA = 0) THEN '
      '    BEGIN'
      '        IF (ES_PRESENCIAL = '#39'N'#39') THEN C_PRESTACIO = "6001";'
      '                                 ELSE C_PRESTACIO = "2001";'
      '        Traza = "NO HI HA CAP TRACTAMENT EN UN ANY";'
      '        SUSPEND;'
      '        EXIT;'
      '    END;'
      '    Traza = "HI HAN "||CONTA||" TRACTAMENTS EN L'#39'ULTIM ANY";'
      '    SUSPEND;'
      ''
      '    /*-----AGAFEM LA ESPECIALITAT DEL METGE COORDINADOR-----*/'
      '    SELECT C_ESPECIAL '
      '    FROM METGES'
      '    WHERE CODI = :E_COORDINADOR'
      '    INTO :C_ESPECIAL;'
      ''
      
        '    /*-----MIREM SI HAN TRACTAMENTS DE VISITA DE LA MATEIXA ESPE' +
        'CIALITAT DURANT L'#39'ULTIM ANY-----*/'
      '    SELECT COUNT(*)'
      
        '    FROM TRACTAMENTS T LEFT JOIN METGES M ON T.C_COORDINADOR = M' +
        '.CODI'
      '    WHERE (T.C_HISTORIA = :E_HISTORIA)'
      '      AND (T.DATA_ALTA >= F_ADDYEAR(:E_DATAINGRES, -1))'
      
        '      AND (T.C_PRESTACIO IN ("2001", "2002", "2011", "2012", "20' +
        '06", "2013", "6002"))'
      '      AND (M.C_ESPECIAL = :C_ESPECIAL)'
      '    INTO :CONTA;'
      ''
      '    IF (CONTA IS NULL) THEN CONTA = 0;'
      '    IF (CONTA > 0) THEN '
      '    BEGIN'
      '        IF (ES_PRESENCIAL = '#39'N'#39') THEN C_PRESTACIO = "6002";'
      '                                 ELSE C_PRESTACIO = "2002";'
      
        '        Traza = "HI HAN TRACTAMENTS EN L'#39'ULTIM ANY DE LA MATEIXA' +
        ' ESPECIALITAT";'
      '        SUSPEND;'
      '        EXIT;'
      '    END;'
      
        '    Traza = "NO HI HAN TRACTAMENTS EN L'#39'ULTIM ANY DE LA MATEIXA ' +
        'ESPECIALITAT";'
      '    SUSPEND;'
      ''
      
        '/*  MIREM SI HI HAN REVISIONS "2004"  en el ultim any passat NOM' +
        'ES SI LA ESPECIALITAT ES: 01 02 03 15 08]  */'
      '    IF (C_ESPECIAL IN ("01", "02", "03", "15", "08") )THEN'
      '    BEGIN'
      
        '         TRAZA = "La especialitat es susceptible a les revisions' +
        '";'
      '         suspend;'
      ''
      '         SELECT COUNT(*)'
      '         FROM TRACTAMENTS T            '
      '         WHERE T.C_HISTORIA  = :E_HISTORIA'
      '         and   t.c_prestacio IN ("2004","6004")'
      '         and   t.data_ingres >= F_ADDYEAR(:E_DATAINGRES, -1)'
      '         INTO :CONTA;'
      ''
      '         IF (CONTA IS NULL) THEN CONTA = 0;'
      '         IF (CONTA > 0) THEN '
      '         BEGIN'
      
        '              IF (ES_PRESENCIAL = '#39'N'#39') THEN C_PRESTACIO = "6002"' +
        ';'
      
        '                                       ELSE C_PRESTACIO = "2002"' +
        ';'
      
        '              traza = " Te revisio ultim any de especialitat: 01' +
        ' 02 03 15 08";'
      '              SUSPEND;'
      '              EXIT;'
      '          END;'
      
        '          traza = " No te cap revisio ultim any de especialitat:' +
        ' 01 02 03 15 08";'
      '          SUSPEND;'
      '    END'
      ''
      
        '    traza = "ARA MIREM SI EL ULTIM ANY, HA TINGUT ALGUN TRACT DE' +
        ' LA MATEIXA ESPE";'
      '    SUSPEND;'
      ''
      ''
      
        '/* ------- MIREM SI UN ANY ENRRERA si hi han  prestacion de "201' +
        '4", "1008", "2007", "2008", "2009", "1004" */'
      ''
      ''
      '    FOR SELECT T.C_TRACTAMENT, T.DATA_ALTA, T.DATA_INGRES'
      '    FROM TRACTAMENTS T JOIN METGES M ON T.C_COORDINADOR = M.CODI'
      '    WHERE T.C_HISTORIA = :E_HISTORIA'
      '      AND (T.DATA_ALTA >= F_ADDYEAR(:E_DATAINGRES, -1))'
      
        '      AND (T.C_PRESTACIO IN ("2014", "1008", "2007", "2008", "20' +
        '09", "1004"))'
      '      AND M.C_ESPECIAL = :C_ESPECIAL'
      '    ORDER BY T.DATA_INGRES desc'
      '    INTO :TMPTRACTAMENT, :TMPALTA, :TMPINGRES'
      '    DO BEGIN'
      ''
      
        '      /*----MIRAMOS QUE HAYAN PASADO 30 DIAS DESDE LA FECHA DE A' +
        'LTA----*/'
      '      IF ((TMPALTA + 30) >= :E_DATAINGRES) THEN'
      '      BEGIN'
      '         IF (ES_PRESENCIAL = '#39'N'#39') THEN C_PRESTACIO = "6002";'
      '                                  ELSE C_PRESTACIO = "2002";'
      '         traza = "menos de 30 dias de la ultima ALTA";'
      '         SUSPEND;'
      '         EXIT;'
      '      END;'
      '      Traza = "mes de 30 dies de una alta";'
      '      suspend;'
      ''
      ''
      
        '      /* Si han pasado mas de 30 dias, mirem si en el ultim any ' +
        'de aquest ingres, te visites de la mateixa espe */    '
      '      SELECT COUNT(*)'
      
        '      FROM TRACTAMENTS T JOIN METGES M ON T.C_COORDINADOR = M.CO' +
        'DI'
      '      WHERE  T.C_HISTORIA = :E_HISTORIA'
      '        AND (T.DATA_ALTA >= F_ADDYEAR(:TMPINGRES, -1))'
      
        '        AND  T.C_PRESTACIO IN ("2001", "2002", "2011", "2012", "' +
        '2006", "2013", "6002")'
      '        AND  M.C_ESPECIAL = :C_ESPECIAL'
      '      INTO :CONTA;'
      '          '
      '      IF (CONTA IS NULL) THEN CONTA = 0;'
      '      IF (CONTA > 0) THEN '
      '      BEGIN'
      '           IF (ES_PRESENCIAL = '#39'N'#39') THEN C_PRESTACIO = "6002";'
      '                                    ELSE C_PRESTACIO = "2002";'
      
        '           traza = "Te una visita de la especialitat, de 1 any d' +
        'el ultim ingres";'
      '           SUSPEND;'
      '           EXIT;'
      '      END'
      
        '      traza = "NO Te una visita de la especialitat, de 1 any del' +
        ' ultim ingres";'
      '      SUSPEND;'
      ''
      '      IF (C_ESPECIAL NOT IN ("01", "02", "03", "15", "08") )THEN'
      '      BEGIN'
      ''
      
        '            TRAZA = "La especialitat es susceptible a les revisi' +
        'ons";'
      '            suspend;'
      ''
      '            SELECT COUNT(*)'
      '            FROM TRACTAMENTS T            '
      '            WHERE T.C_HISTORIA  = :E_HISTORIA'
      '            and   t.c_prestacio IN ("2004", "6004")'
      '            and t.data_ingres >= F_ADDYEAR(:tmpINGRES, -1)'
      '            INTO :CONTA;'
      ''
      '            IF (CONTA IS NULL) THEN CONTA = 0;'
      '            IF (CONTA > 0) THEN '
      '            BEGIN'
      
        '                 IF (ES_PRESENCIAL = '#39'N'#39') THEN C_PRESTACIO = "60' +
        '02";'
      
        '                                          ELSE C_PRESTACIO = "20' +
        '02";'
      
        '                 TRAZA = "Revis any anterior de la ultima ingres' +
        ' de espe: 01 02 03 15 08";'
      '                 SUSPEND;'
      '                 EXIT;'
      '            END;'
      
        '            TRAZA = "NO TE Revis any anterior de la ultima ingre' +
        's de espe: 01 02 03 15 08";'
      '            SUSPEND;'
      '      END'
      ''
      '   END;'
      ''
      '   IF (ES_PRESENCIAL = '#39'N'#39') THEN C_PRESTACIO = "6001";'
      '                            ELSE C_PRESTACIO = "2001";'
      '   traza = "no trova cap condicio, llavors, es primera visita";'
      '   SUSPEND;'
      ''
      'END')
    Select.Strings = (
      'SELECT * FROM P_TRACTAMENTS_SEGONAVISITA'
      '(2002, "TODAY", "P12")'
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
    Modi = True
    ModiFecha = 37160.7846792593
    Left = 817
    Top = 140
  end
  object Ins_NomComplet: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'INS_NOMCOMPLET'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE COMPTA  INTEGER;'
      'DECLARE VARIABLE CIP     VARCHAR(14);'
      'DECLARE VARIABLE UNICAS  CHAR(1);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /*'
      
        '      IF ((NEW.NOM     = '#39#39') OR (NEW.NOM     IS NULL)) THEN NEW.' +
        'NOM     = '#39'-'#39';'
      
        '      IF ((NEW.COGNOM1 = '#39#39') OR (NEW.COGNOM1 IS NULL)) THEN NEW.' +
        'COGNOM1 = '#39'-'#39';'
      '      */'
      
        '      IF ((NEW.NOM = '#39#39') OR (NEW.NOM IS NULL) OR (NEW.COGNOM1 = ' +
        #39#39') OR (NEW.COGNOM1 IS NULL)) THEN EXCEPTION E_FILIACIO_NOMPLE;'
      ''
      
        '      IF ((NEW.COGNOM2 = '#39#39') OR (NEW.COGNOM2 IS NULL)) THEN NEW.' +
        'COGNOM2 = '#39'-'#39';'
      ''
      
        '      NEW.NOMCOMPLET = NEW.COGNOM1 || '#39' '#39' || NEW.COGNOM2 || '#39', '#39 +
        ' || NEW.NOM;'
      ''
      ''
      '      /* PROC'#201'S NR */'
      
        '      /* Si inserten una visita de seguiment, li associem el pro' +
        'c'#233's NR actiu si no ve donat */'
      
        '      IF ((NEW.C_PRESTACIO = "2003") AND (NEW.C_PROCES IS NULL))' +
        ' THEN'
      '      BEGIN'
      '            SELECT C_PROCES'
      '            FROM   TRACTAMENTS'
      '            WHERE  C_HISTORIA = NEW.C_HISTORIA'
      '            AND    C_PRESTACIO = "2014"'
      '            AND   (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY")'
      '            INTO   NEW.C_PROCES;'
      '      END;'
      '      '
      ''
      
        '      /* HCCC: Si inserten una visita d'#39'un pacient SCS, la posem' +
        ' pendent de publicar */'
      ''
      
        '      /* Si entren una visita activa amb data preingr'#233's futura: ' +
        '*/'
      
        '      IF ((NEW.DATA_PREINGRES > "TODAY") AND (NEW.C_ESTAT BETWEE' +
        'N 30 AND 39) AND (NEW.EXCLOS = "N")) THEN'
      '      BEGIN'
      
        '            /* Mirem si s'#39'ha de publicar a l'#39'agenda de l'#39'HCCC (D' +
        'retPrestaci'#243') */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' NEW.C_PRESTACIO AND C_DRET = "P140" INTO :COMPTA;'
      ''
      '            IF (COMPTA > 0) THEN'
      '            BEGIN'
      
        '                  /* Mirem si t'#233' CIP a Filiaci'#243' o si l'#39'han intro' +
        'du'#239't a Espera */'
      
        '                  IF (NEW.C_HISTORIA IS NOT NULL) THEN SELECT TS' +
        'I FROM FILIACIO WHERE NUM_HIST = NEW.C_HISTORIA INTO :CIP;'
      
        '                                                  ELSE CIP = NEW' +
        '.CIP;'
      ''
      
        '                  IF ((CIP IS NULL) OR (F_StringLength(CIP) < 10' +
        ')) THEN CIP = '#39#39';'
      ''
      '                  IF (CIP <> '#39#39') THEN NEW.ACCIO_HCCC = "A";'
      '            END;'
      '      END;'
      '      '
      
        '      /* UNICAS: Si inserten una visita d'#39'un pacient UNICAS, la ' +
        'posem pendent de publicar */'
      
        '      /* Si entren una visita activa amb data preingr'#233's futura: ' +
        '*/'
      
        '      IF ((NEW.DATA_PREINGRES > "TODAY") AND (NEW.C_ESTAT BETWEE' +
        'N 30 AND 39) AND (NEW.EXCLOS = "N")) THEN'
      '      BEGIN'
      
        '            /* Mirem si s'#39'ha de publicar a l'#39'agenda de l'#39'HCCC (D' +
        'retPrestaci'#243') */'
      
        '            SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PRESTACIO =' +
        ' NEW.C_PRESTACIO AND C_DRET = "P264" INTO :COMPTA;'
      ''
      '            IF (COMPTA > 0) THEN'
      '            BEGIN'
      
        '                  /* Mirem si el pacient est'#224' identificat com pa' +
        'cient UNICAS a Filiaci'#243' */'
      
        '                  IF (NEW.C_HISTORIA IS NOT NULL) THEN SELECT UN' +
        'ICAS FROM FILIACIO WHERE NUM_HIST = NEW.C_HISTORIA INTO :UNICAS;'
      ''
      '                  IF (UNICAS IS NULL) THEN UNICAS = '#39#39';'
      ''
      
        '                  IF (UNICAS = '#39'S'#39') THEN INSERT INTO INTEGRACIO_' +
        'CITES(C_ESPERA, ACCIO) VALUES(NEW.C_ESPERA, "A");'
      '            END;'
      '      END;'
      ''
      ''
      '   END;'
      ''
      'END')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    Left = 98
    Top = 20
  end
  object Upd_NomComplet: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'UPD_NOMCOMPLET'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_PROCES INTEGER;'
      'DECLARE VARIABLE COMPTA   INTEGER;'
      'DECLARE VARIABLE CIP      VARCHAR(14);'
      'DECLARE VARIABLE PUBLICAR CHAR(1);'
      'DECLARE VARIABLE UNICAS   CHAR(1);'
      'DECLARE VARIABLE OLD_ACCIO_UNC CHAR(1);'
      'DECLARE VARIABLE OLD_ESTAT_UNC CHAR(1);'
      'DECLARE VARIABLE ACCIO_UNC CHAR(1);'
      'BEGIN'
      ''
      '   IF  (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      '
      
        '      IF ((NEW.NOM = '#39#39') OR (NEW.NOM IS NULL) OR (NEW.COGNOM1 = ' +
        #39#39') OR (NEW.COGNOM1 IS NULL)) THEN EXCEPTION E_FILIACIO_NOMPLE;'
      ''
      
        '      IF ((NEW.NOM <> OLD. NOM) OR (NEW.COGNOM1 <> OLD.COGNOM1) ' +
        'OR (NEW.COGNOM2 <> OLD.COGNOM2)) THEN'
      '      BEGIN'
      '            /*'
      
        '            IF ((NEW.NOM     = '#39#39') OR (NEW.NOM     IS NULL)) THE' +
        'N NEW.NOM     = '#39'-'#39';'
      
        '            IF ((NEW.COGNOM1 = '#39#39') OR (NEW.COGNOM1 IS NULL)) THE' +
        'N NEW.COGNOM1 = '#39'-'#39';'
      '            */'
      
        '            IF ((NEW.COGNOM2 = '#39#39') OR (NEW.COGNOM2 IS NULL)) THE' +
        'N NEW.COGNOM2 = '#39'-'#39';'
      ''
      
        '            NEW.NOMCOMPLET = NEW.COGNOM1 || '#39' '#39' || NEW.COGNOM2 |' +
        '| '#39', '#39' || NEW.NOM;'
      '      END;'
      ''
      ''
      
        '      IF ((F_LRTrim(NEW.LLOC) = '#39#39') AND (OLD.LLOC <> '#39#39')) THEN N' +
        'EW.LLOC = NULL;'
      '            '
      '            '
      '      /* PROC'#201'S NR */'
      
        '      /* Si modifiquen la prestaci'#243' i passa a ser visita de segu' +
        'iment, li associem el proc'#233's NR */'
      
        '      IF ((NEW.C_PRESTACIO = "2003") AND (NEW.C_PROCES IS NULL))' +
        ' THEN'
      '      BEGIN'
      '            SELECT C_PROCES'
      '            FROM   TRACTAMENTS'
      '            WHERE  C_HISTORIA = NEW.C_HISTORIA'
      '            AND    C_PRESTACIO = "2014"'
      '            AND   (DATA_ALTA IS NULL OR DATA_ALTA >= "TODAY")'
      '            INTO   NEW.C_PROCES;'
      '      END;'
      ''
      ''
      
        '      /* PROC'#201'S NR: Si introdueixen o modifiquen la data de prei' +
        'ngr'#233's d'#39'un ambulatori,'
      
        '                    assignem la freq'#252#232'ncia que li tocar'#224' segons ' +
        'el torn de la pauta NR */'
      
        '      IF ((NEW.C_PRESTACIO = "2014") AND (OLD.DATA_PREINGRES <> ' +
        'NEW.DATA_PREINGRES) AND (NEW.DATA_PREINGRES IS NOT NULL)) THEN'
      '      BEGIN'
      
        '            /* Busquem el torn que li tocar'#224' segons la nova data' +
        ' de preingr'#233's */'
      '            SELECT T.TORN'
      '            FROM   PROCESNR_TORNS T'
      '            JOIN   PROCESNR P ON T.C_PROCES = P.C_PROCES'
      '            WHERE  P.C_HISTORIA = NEW.C_HISTORIA'
      
        '            AND    NEW.DATA_PREINGRES BETWEEN T.DIA_INICI AND T.' +
        'DIA_INICI + 7   /* Setmana de la data de preingr'#233's */'
      
        '            ROWS   1                                            ' +
        '                /* De fet nom'#233's hauria de sortir una l'#237'nia */'
      '            INTO   NEW.C_FRECUENCIA;'
      '      END;'
      ''
      ''
      
        '      /* HCCC: Si modifiquen una visita, en funci'#243' de com canvi'#239 +
        ' repercutim els canvis a l'#39'HCCC (alta, modificaci'#243' o baixa) */'
      
        '      /*       excepte si el que es modifica '#233's l'#39'estat quan es ' +
        'filia */'
      
        '      IF (((OLD.C_PRESTACIO <> NEW.C_PRESTACIO) OR (OLD.DATA_PRE' +
        'INGRES <> NEW.DATA_PREINGRES) OR (OLD.HORA_PREINGRES <> NEW.HORA' +
        '_PREINGRES) OR'
      
        '           (OLD.C_COORDINADOR <> NEW.C_COORDINADOR) OR (OLD.EXCL' +
        'OS <> NEW.EXCLOS) OR (OLD.C_ESTAT <> NEW.C_ESTAT) OR (OLD.CIP <>' +
        ' NEW.CIP) OR'
      
        '           ((OLD.CIP IS NULL) AND (NEW.CIP IS NOT NULL)) OR ((NE' +
        'W.CIP IS NULL) AND (OLD.CIP IS NOT NULL)))'
      '      AND (NEW.C_ESTAT < 90))'
      '      THEN BEGIN'
      '      '
      '            PUBLICAR = "-";'
      '            '
      
        '            /* Si '#233's una visita activa amb data preingr'#233's futura' +
        ': */'
      
        '            IF ((NEW.DATA_PREINGRES > "TODAY") AND (NEW.C_ESTAT ' +
        'BETWEEN 30 AND 39) AND (NEW.EXCLOS = "N")) THEN'
      '            BEGIN'
      
        '                  /* Mirem si la prestaci'#243' '#233's publicable (DretPr' +
        'estaci'#243') */'
      
        '                  SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PREST' +
        'ACIO = NEW.C_PRESTACIO AND C_DRET = "P140" INTO :COMPTA;'
      ''
      '                  IF (COMPTA > 0) THEN'
      '                  BEGIN'
      
        '                        /* Mirem si t'#233' CIP a Filiaci'#243' o si l'#39'han' +
        ' introdu'#239't a Espera */'
      
        '                        IF (NEW.C_HISTORIA IS NOT NULL) THEN SEL' +
        'ECT TSI FROM FILIACIO WHERE NUM_HIST = NEW.C_HISTORIA INTO :CIP;'
      
        '                                                        ELSE CIP' +
        ' = NEW.CIP;'
      ''
      
        '                        IF ((CIP IS NULL) OR (F_StringLength(CIP' +
        ') < 10)) THEN CIP = '#39#39';'
      ''
      '                        IF (CIP <> '#39#39') THEN PUBLICAR = "S";'
      '                                       ELSE PUBLICAR = "N";'
      '                  END;'
      '            '
      '                  ELSE PUBLICAR = "N";'
      '            END;'
      '      '
      
        '            /* Si exclouen una visita futura, la despublicarem *' +
        '/'
      
        '            ELSE IF ((NEW.DATA_PREINGRES > "TODAY") AND (NEW.EXC' +
        'LOS = "S")) THEN PUBLICAR = "N";'
      ''
      '      '
      '            /* Si s'#39'ha de publicar: */'
      '            IF (PUBLICAR = "S") THEN'
      '            BEGIN'
      
        '                  /* Si est'#224' publicada  ->  s'#39'haur'#224' de modificar' +
        ' a l'#39'HCCC'
      
        '                     Altrament          ->  s'#39'haur'#224' d'#39'afegir a l' +
        #39'HCCC     */'
      
        '                  IF (OLD.ESTAT_HCCC = "P") THEN NEW.ACCIO_HCCC ' +
        '= "M";'
      
        '                                            ELSE NEW.ACCIO_HCCC ' +
        '= "A";'
      '            END;'
      '            /* Si no s'#39'ha de publicar */'
      '            ELSE IF (PUBLICAR = "N") THEN'
      '            BEGIN'
      
        '                  /* Si est'#224' publicada  ->  s'#39'haur'#224' de donar de ' +
        'baixa'
      
        '                     Altrament, si est'#224' marcada per publicar  ->' +
        '  s'#39'ha de treure la marca */'
      
        '                  IF (OLD.ESTAT_HCCC = "P") THEN NEW.ACCIO_HCCC ' +
        '= "B";'
      
        '                                            ELSE IF (OLD.ACCIO_H' +
        'CCC = "A") THEN NEW.ACCIO_HCCC = "";'
      '            END;'
      ''
      ''
      
        '            /* Si '#233's una modificaci'#243' i el CIP ha canviat, ho ano' +
        'tem, ja que caldr'#224' donar de baixa el CIP antic i donar d'#39'alta el' +
        ' CIP nou */'
      
        '            IF (((NEW.ACCIO_HCCC = "M") OR (NEW.ACCIO_HCCC = "B"' +
        '))'
      
        '            AND ((OLD.CIP <> NEW.CIP) OR ((OLD.CIP IS NOT NULL) ' +
        'AND (NEW.CIP IS NULL)))) THEN'
      '            BEGIN'
      
        '                  /* Si el CIP_ANTIC ja estava informat, vol dir' +
        ' que tornen a canviar-lo, i hem de mantenir el que ja hi havia (' +
        'el m'#233's antic)'
      
        '                     Per tant, nom'#233's posem OLD.CIP a CIP_ANTIC s' +
        'i estava buit */'
      
        '                  IF ((OLD.CIP_ANTIC IS NULL) OR (OLD.CIP_ANTIC ' +
        '= '#39#39')) THEN NEW.CIP_ANTIC = OLD.CIP;'
      '                  '
      
        '                  /* A m'#233's, si el nou CIP coincideix amb CIP_ANT' +
        'IC, vol dir q han desfet la modificaci'#243' de CIP (i no cal tenir e' +
        'n compte els canvis)'
      
        '                     Per tant, en aquest cas, traiem CIP_ANTIC *' +
        '/'
      
        '                  ELSE IF (OLD.CIP_ANTIC = NEW.CIP) THEN NEW.CIP' +
        '_ANTIC = NULL;'
      '            END;'
      '      END;'
      '      '
      
        '      /* UNICAS: Si modifiquen una visita, en funci'#243' de com canv' +
        'i'#239' repercutim els canvis a UNICAS (alta, modificaci'#243' o baixa) */'
      
        '      /*       excepte si el que es modifica '#233's l'#39'estat quan es ' +
        'filia */'
      
        '      IF (((OLD.C_PRESTACIO <> NEW.C_PRESTACIO) OR (OLD.DATA_PRE' +
        'INGRES <> NEW.DATA_PREINGRES) OR (OLD.HORA_PREINGRES <> NEW.HORA' +
        '_PREINGRES) OR'
      
        '           (OLD.C_COORDINADOR <> NEW.C_COORDINADOR) OR (OLD.EXCL' +
        'OS <> NEW.EXCLOS) OR (OLD.C_ESTAT <> NEW.C_ESTAT))'
      '      AND (NEW.C_ESTAT < 90))'
      '      THEN BEGIN'
      ''
      '            PUBLICAR = "-";'
      ''
      
        '            /* Si '#233's una visita activa amb data preingr'#233's futura' +
        ': */'
      
        '            IF ((NEW.DATA_PREINGRES > "TODAY") AND (NEW.C_ESTAT ' +
        'BETWEEN 30 AND 39) AND (NEW.EXCLOS = "N")) THEN'
      '            BEGIN'
      
        '                  /* Mirem si la prestaci'#243' '#233's publicable (DretPr' +
        'estaci'#243') */'
      
        '                  SELECT COUNT(*) FROM DRETSPRESTA WHERE C_PREST' +
        'ACIO = NEW.C_PRESTACIO AND C_DRET = "P264" INTO :COMPTA;'
      ''
      '                  IF (COMPTA > 0) THEN'
      '                  BEGIN'
      
        '                        /* Mirem si el pacient est'#224' identificat ' +
        'com pacient UNICAS a Filiaci'#243' */'
      
        '                        IF (NEW.C_HISTORIA IS NOT NULL) THEN SEL' +
        'ECT UNICAS FROM FILIACIO WHERE NUM_HIST = NEW.C_HISTORIA INTO :U' +
        'NICAS;'
      ''
      '                        IF (UNICAS IS NULL) THEN UNICAS = '#39#39';'
      ''
      '                        IF (UNICAS <> '#39#39') THEN PUBLICAR = "S";'
      '                                          ELSE PUBLICAR = "N";'
      '                  END;'
      ''
      '                  ELSE PUBLICAR = "N";'
      '            END;'
      ''
      
        '            /* Si exclouen una visita futura, la despublicarem *' +
        '/'
      
        '            ELSE IF ((NEW.DATA_PREINGRES > "TODAY") AND (NEW.EXC' +
        'LOS = "S")) THEN PUBLICAR = "N";'
      '            '
      
        '            SELECT ACCIO, ESTAT FROM INTEGRACIO_CITES WHERE C_ES' +
        'PERA = NEW.C_ESPERA ORDER BY ID DESC ROWS 1'
      '            INTO :OLD_ESTAT_UNC, :OLD_ACCIO_UNC;'
      ''
      ''
      '            /* Si s'#39'ha de publicar: */'
      '            IF (PUBLICAR = "S") THEN'
      '            BEGIN'
      
        '                  /* Si est'#224' publicada  ->  s'#39'haur'#224' de modificar' +
        ' a UNICAS'
      
        '                     Altrament          ->  s'#39'haur'#224' d'#39'afegir a U' +
        'NICAS     */'
      '                  IF (OLD_ESTAT_UNC = "P") THEN ACCIO_UNC = "M";'
      '                                           ELSE ACCIO_UNC = "A";'
      '            END;'
      '            /* Si no s'#39'ha de publicar */'
      '            ELSE IF (PUBLICAR = "N") THEN'
      '            BEGIN'
      
        '                  /* Si est'#224' publicada  ->  s'#39'haur'#224' de donar de ' +
        'baixa'
      
        '                     Altrament, si est'#224' marcada per publicar  ->' +
        '  s'#39'ha de treure la marca */'
      '                  IF (OLD_ESTAT_UNC = "P") THEN ACCIO_UNC = "B";'
      
        '                                           ELSE IF (OLD_ACCIO_UN' +
        'C = "A") THEN ACCIO_UNC = "";'
      '            END;'
      '            '
      
        '            INSERT INTO INTEGRACIO_CITES(C_ESPERA, ACCIO) VALUES' +
        '(NEW.C_ESPERA, :ACCIO_UNC);'
      '      END;'
      ''
      '      '
      ''
      '   END;'
      'END'
      ''
      '')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    Left = 188
    Top = 20
  end
  object Tasques: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Tasquesillits'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS'
      '('
      ''
      '  LLIT            VARCHAR(3),'
      '  PLANTA          VARCHAR(15),'
      '  TRAC_LLIT       VARCHAR(3),'
      '  TRAC_PLANTA     VARCHAR(20),'
      '  HISTORIA        INTEGER,'
      '  TRACTAMENT      INTEGER,'
      '  METGE           VARCHAR(3),'
      
        '  PACIENT         VARCHAR(100),            /*VALDRA PER AL NOM D' +
        'EL PACIENT O EL MOTIU DEL BLOQUEIG*/'
      '  CENTRE_FACT     VARCHAR(20),'
      
        '  TIPUS           CHAR,                    /*B:BLOQUEIXAT L:LLIU' +
        'RE O:OCUPAT*/'
      '  DATA_INGRES     DATE,'
      '  DATA_ALTA       DATE,'
      '  INFERMERIA      VARCHAR(3),'
      '  N_INFERMERIA    VARCHAR (20)'
      ''
      ''
      ')'
      'AS'
      '  DECLARE VARIABLE BLOCK  INTEGER;'
      '  DECLARE VARIABLE ESTAT  CHAR(1);'
      '  DECLARE VARIABLE TANCAT INTEGER;'
      'BEGIN'
      ''
      
        '  FOR  SELECT L.C_LLIT, L.C_ESTAT, L.C_PLANTA, T.C_LLIT, T.C_PLA' +
        'NTA, T.C_HISTORIA, F.NOMCOMPLET,  T.C_COORDINADOR,'
      
        '               T.DATA_INGRES ,T.C_INFERMERIA ,M.METGE, CF.N_CENT' +
        'REFAC'
      '  FROM ((LLITS L'
      '                LEFT OUTER JOIN TRACTAMENTS T '
      '                            ON L.C_LLIT = T.C_LLIT '
      
        '                           AND (T.DATA_ALTA IS NULL OR T.DATA_AL' +
        'TA >= "TODAY"))'
      
        '                LEFT JOIN FILIACIO F ON F.NUM_HIST = T.C_HISTORI' +
        'A)'
      '                LEFT JOIN METGES M ON T.C_INFERMERIA=M.CODI'
      
        '                LEFT JOIN CENTREFAC CF ON T.C_CENTREFAC = CF.C_C' +
        'ENTREFAC'
      ''
      '  ORDER BY L.C_LLIT'
      
        '  INTO :LLIT, :ESTAT, :PLANTA, :TRAC_LLIT, :TRAC_PLANTA, :HISTOR' +
        'IA, :PACIENT,  :METGE,'
      '       :DATA_INGRES ,INFERMERIA ,N_INFERMERIA, :CENTRE_FACT'
      '  DO BEGIN'
      '        '
      '      IF (HISTORIA IS NULL) THEN   '
      '      BEGIN '
      ''
      '            SELECT COUNT(*) FROM LLITBLOQUEIG'
      '            WHERE C_LLIT = :LLIT'
      '            AND (Data_Fi IS NULL OR Data_Fi >= "TODAY")'
      '            INTO :BLOCK;'
      ''
      '            IF (BLOCK <> 0) THEN   '
      '            BEGIN'
      '                TIPUS = "B";'
      '                PACIENT = "** BLOQUEJAT **";'
      '            END;'
      '            ELSE   '
      '            BEGIN '
      '               TIPUS = "L";'
      '               PACIENT = "** LLIURE **";'
      '            END;'
      '      END'
      '      ELSE BEGIN'
      '            TIPUS = "O";'
      '            IF (DATA_ALTA = "TODAY") THEN '
      '            BEGIN  '
      '                  TIPUS = "L";'
      '            END'
      '      END'
      '      '
      '      /* parte 56547 - i */'
      
        '      /*IF (ESTAT<>'#39'T'#39') THEN SUSPEND;  /* els llits tancats no e' +
        'ls mostrem */'
      '      TANCAT=0;'
      '      SELECT COUNT(*) FROM LLITTANCAMENT'
      '      WHERE (C_LLIT = :LLIT)'
      
        '      AND   (DATA_INICI<="TODAY" AND (DATA_FI>"TODAY" OR DATA_FI' +
        ' IS NULL))'
      '      INTO :TANCAT;'
      '      IF (TANCAT IS NULL) THEN TANCAT=0;'
      ''
      '      IF (TANCAT=0) THEN SUSPEND;'
      '      /* parte 56547 - f */'
      '        '
      '  END;'
      'END;')
    Select.Strings = (
      'SELECT * FROM P_TRACTAMENTS_DIETESILLITS'
      '[FILTRO]'
      '[ORDEN]'
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
    Modi = True
    ModiFecha = 37194.7325127315
    Left = 809
    Top = 382
  end
  object AltesAdmin: TDic
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
        AutoContador.Generator = 'G_ALTESADMIN'
        Comentario = 'pk'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria'
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
        Aplica = kcFecha
        Nombre = 'Data alta administrativa'
        NombreDB = 'Data_Alta_Admin'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data reingr'#233's prevista'
        NombreDB = 'Data_Reingres_Prev'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data reingr'#233's'
        NombreDB = 'Data_Reingres'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'Estat'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = '0: pendent, 1: reingressat, 2: anul'#183'lat'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat facturaci'#243
        NombreDB = 'C_EstatFac'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Centre de facturaci'#243
        NombreDB = 'C_CentreFac'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Client'
        NombreDB = 'C_Client'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Delegaci'#243
        NombreDB = 'C_Delegacio'
        Longitud = 4
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
        Nombre = 'data_alta'
        NombreDB = 'data_alta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data alta administrativa')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'data_reingres'
        NombreDB = 'data_reingres'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data reingr'#233's')
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
      end>
    Consultas = <
      item
        Nombre = 'tract'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'Tractament')
        CopiarOrigen.Strings = (
          'Tractament'
          'Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Tractament'
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
        WhereFiltro = 'C_PRESTACIO = '#39'1004'#39
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
        WhereFiltro = 'TIPUSCODI = '#39'ALTA ADMIN'#39
      end
      item
        Nombre = 'hist'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Hist'#242'ria')
        CopiarOrigen.Strings = (
          'Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end>
    Nombre = 'Altes administratives'
    NombreTabla = 'AltesAdmin'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Hist'#242'ria'
      'Tractament'
      'Data alta administrativa'
      'Data reingr'#233's prevista'
      'Data reingr'#233's'
      'Estat'
      'Estat facturaci'#243
      'Centre de facturaci'#243
      'Client'
      'Delegaci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 881
    Top = 506
  end
  object OrtesisProveidor: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'OrtesisProveidor'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAINI DATE, DATAFIN DATE, PROV CHAR(10))'
      'RETURNS (HISTORIA INTEGER,'
      '         NOM_PACIENT VARCHAR(80),'
      '         METGE VARCHAR(20),'
      '         ELEMENT VARCHAR(250),'
      '         DATA_SOLICITUD DATE,'
      '         DATA_COMANDA DATE,'
      '         DATA_ENTREGA DATE,'
      '         DATA_TANCAMENT_PROCES DATE,'
      '         CODI_PROVEIDOR VARCHAR(10),'
      '         PROVEIDOR CHAR(40))'
      'AS'
      '    DECLARE VARIABLE INTERCON INTEGER;'
      'BEGIN'
      
        '  /* SI UNA DE LES DATES '#201'S NUL'#183'LA LLAVORS NO FILTREM PER DATES ' +
        '*/'
      '  IF ((DATAINI IS NOT NULL) AND (DATAFIN IS NOT NULL)) THEN'
      '  BEGIN'
      '      /* SI HAN INFORMAT PROVEIDOR */'
      '      IF (PROV IS NOT NULL) THEN'
      '      BEGIN'
      
        '          FOR SELECT I.C_INTERCON, I.DATA1, I.C_HISTORIA, F.NOMC' +
        'OMPLET, M.METGE, IO.N_GRUP, P.C_PROV, P.N_PROV'
      '          FROM INTERCON I'
      '          JOIN FILIACIO F ON I.C_HISTORIA = F.NUM_HIST'
      '          JOIN VMETGES M ON I.C_METGE1 = M.CODI'
      
        '          JOIN INTERCONORTESIS IO ON I.C_INTERCON = IO.C_INTERCO' +
        'N'
      
        '          JOIN INTERCONORTESISLIN IOL ON I.C_INTERCON = IOL.C_IN' +
        'TERCON'
      '          JOIN PROVEIDORS P ON IOL.C_PROV = P.C_PROV'
      
        '          JOIN INTERCONORTESISREG IOR ON I.C_INTERCON = IOR.C_IN' +
        'TERCON AND IOR.TIPUS = '#39'202'#39
      '          WHERE I.C_TIPUS = '#39'ORTESIS'#39
      '          AND I.DATA1 >= :DATAINI'
      '          AND I.DATA1 <= :DATAFIN'
      '          AND IOL.C_PROV = :PROV'
      '          ORDER BY I.DATA1'
      
        '          INTO :INTERCON, :DATA_SOLICITUD, :HISTORIA, :NOM_PACIE' +
        'NT, :METGE, :ELEMENT, :CODI_PROVEIDOR, :PROVEIDOR'
      '          DO BEGIN'
      '              /* INICIALITZAR VARIABLES */'
      '              DATA_COMANDA = NULL;'
      '              DATA_ENTREGA = NULL;'
      '              DATA_TANCAMENT_PROCES = NULL;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'203'#39
      '              INTO :DATA_COMANDA;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'206'#39
      '              INTO :DATA_ENTREGA;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'208'#39
      '              INTO :DATA_TANCAMENT_PROCES;'
      ''
      '              SUSPEND;'
      '          END;'
      '      END'
      
        '      /* SI NO HAN INFORMAT PROVEIDOR - NOM'#201'S FILTRE PER DATES *' +
        '/'
      '      ELSE BEGIN'
      
        '          FOR SELECT I.C_INTERCON, I.DATA1, I.C_HISTORIA, F.NOMC' +
        'OMPLET, M.METGE, IO.N_GRUP, P.C_PROV, P.N_PROV'
      '          FROM INTERCON I'
      '          JOIN FILIACIO F ON I.C_HISTORIA = F.NUM_HIST'
      '          JOIN VMETGES M ON I.C_METGE1 = M.CODI'
      
        '          JOIN INTERCONORTESIS IO ON I.C_INTERCON = IO.C_INTERCO' +
        'N'
      
        '          JOIN INTERCONORTESISLIN IOL ON I.C_INTERCON = IOL.C_IN' +
        'TERCON'
      '          JOIN PROVEIDORS P ON IOL.C_PROV = P.C_PROV'
      
        '          JOIN INTERCONORTESISREG IOR ON I.C_INTERCON = IOR.C_IN' +
        'TERCON AND IOR.TIPUS = '#39'202'#39
      '          WHERE I.C_TIPUS = '#39'ORTESIS'#39
      '          AND I.DATA1 >= :DATAINI'
      '          AND I.DATA1 <= :DATAFIN'
      '          ORDER BY I.DATA1'
      
        '          INTO :INTERCON, :DATA_SOLICITUD, :HISTORIA, :NOM_PACIE' +
        'NT, :METGE, :ELEMENT, :CODI_PROVEIDOR, :PROVEIDOR'
      '          DO BEGIN'
      '              /* INICIALITZAR VARIABLES */'
      '              DATA_COMANDA = NULL;'
      '              DATA_ENTREGA = NULL;'
      '              DATA_TANCAMENT_PROCES = NULL;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'203'#39
      '              INTO :DATA_COMANDA;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'206'#39
      '              INTO :DATA_ENTREGA;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'208'#39
      '              INTO :DATA_TANCAMENT_PROCES;'
      ''
      '              SUSPEND;'
      '          END;'
      '      END;'
      '  END'
      '  ELSE BEGIN'
      '      /* NOM'#201'S FILTRE PER PROVEIDOR */'
      '      IF (PROV IS NOT NULL) THEN'
      '      BEGIN'
      
        '          FOR SELECT I.C_INTERCON, I.DATA1, I.C_HISTORIA, F.NOMC' +
        'OMPLET, M.METGE, IO.N_GRUP, P.C_PROV,P.N_PROV'
      '          FROM INTERCON I'
      '          JOIN FILIACIO F ON I.C_HISTORIA = F.NUM_HIST'
      '          JOIN VMETGES M ON I.C_METGE1 = M.CODI'
      
        '          JOIN INTERCONORTESIS IO ON I.C_INTERCON = IO.C_INTERCO' +
        'N'
      
        '          JOIN INTERCONORTESISLIN IOL ON I.C_INTERCON = IOL.C_IN' +
        'TERCON'
      '          JOIN PROVEIDORS P ON IOL.C_PROV = P.C_PROV'
      
        '          JOIN INTERCONORTESISREG IOR ON I.C_INTERCON = IOR.C_IN' +
        'TERCON AND IOR.TIPUS = '#39'202'#39
      '          WHERE I.C_TIPUS = '#39'ORTESIS'#39
      '          AND IOL.C_PROV = :PROV'
      '          ORDER BY I.DATA1'
      
        '          INTO :INTERCON, :DATA_SOLICITUD, :HISTORIA, :NOM_PACIE' +
        'NT, :METGE, :ELEMENT, :CODI_PROVEIDOR, :PROVEIDOR'
      '          DO BEGIN'
      '              /* INICIALITZAR VARIABLES */'
      '              DATA_COMANDA = NULL;'
      '              DATA_ENTREGA = NULL;'
      '              DATA_TANCAMENT_PROCES = NULL;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'203'#39
      '              INTO :DATA_COMANDA;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'206'#39
      '              INTO :DATA_ENTREGA;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'208'#39
      '              INTO :DATA_TANCAMENT_PROCES;'
      ''
      '              SUSPEND;'
      '          END;'
      '      END'
      '      /* SENSE CAP FILTRE, NI DATES NI PROVEIDOR */'
      '      ELSE BEGIN'
      
        '          FOR SELECT I.C_INTERCON, I.DATA1, I.C_HISTORIA, F.NOMC' +
        'OMPLET, M.METGE, IO.N_GRUP, P.C_PROV, P.N_PROV'
      '          FROM INTERCON I'
      '          JOIN FILIACIO F ON I.C_HISTORIA = F.NUM_HIST'
      '          JOIN VMETGES M ON I.C_METGE1 = M.CODI'
      
        '          JOIN INTERCONORTESIS IO ON I.C_INTERCON = IO.C_INTERCO' +
        'N'
      
        '          JOIN INTERCONORTESISLIN IOL ON I.C_INTERCON = IOL.C_IN' +
        'TERCON'
      '          JOIN PROVEIDORS P ON IOL.C_PROV = P.C_PROV'
      
        '          JOIN INTERCONORTESISREG IOR ON I.C_INTERCON = IOR.C_IN' +
        'TERCON AND IOR.TIPUS = '#39'202'#39
      '          WHERE I.C_TIPUS = '#39'ORTESIS'#39
      '          ORDER BY I.DATA1'
      
        '          INTO :INTERCON, :DATA_SOLICITUD, :HISTORIA, :NOM_PACIE' +
        'NT, :METGE, :ELEMENT, :CODI_PROVEIDOR,:PROVEIDOR'
      '          DO BEGIN'
      '              /* INICIALITZAR VARIABLES */'
      '              DATA_COMANDA = NULL;'
      '              DATA_ENTREGA = NULL;'
      '              DATA_TANCAMENT_PROCES = NULL;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'203'#39
      '              INTO :DATA_COMANDA;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'206'#39
      '              INTO :DATA_ENTREGA;'
      ''
      
        '              SELECT DATA FROM INTERCONORTESISREG WHERE C_INTERC' +
        'ON = :INTERCON'
      '              AND TIPUS = '#39'208'#39
      '              INTO :DATA_TANCAMENT_PROCES;'
      ''
      '              SUSPEND;'
      '          END;'
      '      END;'
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
    Left = 809
    Top = 440
  end
  object CalendariAM: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
        Consulta = 'Metges'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Dia'
        NombreDB = 'Dia'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 15
        Consulta = 'Tipus'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari '
        NombreDB = 'Comentari'
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
          'Codi Metge'
          'Dia')
        Tipo = tiPrimario
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
          'Codi Metge')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'id'
        NombreDB = 'id'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID')
        Tipo = tiSecundario
        Unico = True
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metges'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Codi Metge')
        CopiarOrigen.Strings = (
          'Codi Metge')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Tipus'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CALENDARIAM.TIPUS'#39
      end>
    Nombre = 'Calendari Area Medica'
    NombreTabla = 'CALENDARI_AM'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Metge'
      'Dia'
      'Comentari '
      'Tipus')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 412
    Top = 140
  end
  object InformesSol: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Historia'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data i hora'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy hh":"mm":"ss'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
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
        Nombre = 'Metge a qui es demana l'#39'informe'
        NombreDB = 'C_METGE'
        Longitud = 5
        Consulta = 'Metges'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Sol'#183'licitant'
        NombreDB = 'SOLICITANT'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Parentesc'
        NombreDB = 'PARENTSC'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'DNI'
        NombreDB = 'DNI'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Motiu'
        NombreDB = 'C_MOTIU'
        Longitud = 15
        Consulta = 'Motiu'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Forma d'#39'entrega'
        NombreDB = 'C_ENTREGA'
        Longitud = 40
        Consulta = 'Entrega'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Urgent'
        NombreDB = 'URGENT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat sol'#183'licitud'
        NombreDB = 'C_ESTAT'
        Longitud = 4
        Consulta = 'Estat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data realitzaci'#243' informe'
        NombreDB = 'DATA_INFORME'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom Informe'
        NombreDB = 'NOM_INFORME'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data impressi'#243
        NombreDB = 'DATA_IMPRES'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Reimpressions'
        NombreDB = 'REIMPRESSIONS'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltima reimpressi'#243
        NombreDB = 'DATA_ULT_REIMP'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari anul'#183'la'
        NombreDB = 'C_USER_ANUL'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data anul'#183'laci'#243
        NombreDB = 'DATA_ANUL'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Motiu anul'#183'laci'#243
        NombreDB = 'M_ANULA'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Fax'
        NombreDB = 'FAX'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari que fa la correcci'#243
        NombreDB = 'C_CORRECCIO'
        Longitud = 5
        Consulta = 'Correccio'
        zType = tcIB_Varchar
        zNotNull = False
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
        Aplica = kcSiNo
        Nombre = #201's c'#242'pia'
        NombreDB = 'ES_COPIA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data entrega informes'
        NombreDB = 'DATA_ENTREGA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Signat'
        NombreDB = 'SIGNAT'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        zDefault = 'S'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge valida'
        NombreDB = 'METGE_VALIDA'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Id informe de l'#39'HC3'
        NombreDB = 'HCCC_INFORME'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Alarma vista'
        NombreDB = 'VISTA'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge vista'
        NombreDB = 'METGE_VISTA'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data vista'
        NombreDB = 'DATA_VISTA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Publicar a l'#39'HC3?'
        NombreDB = 'PUBLICAR_HC3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Historia'
          'Data i hora'
          'Motiu')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Motiu'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Motiu')
        CopiarOrigen.Strings = (
          'Motiu')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'TIPUSINFORMES'#39
      end
      item
        Nombre = 'Entrega'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Forma d'#39'entrega')
        CopiarOrigen.Strings = (
          'Forma d'#39'entrega')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "FORMAENTREGA"'
      end
      item
        Nombre = 'Estat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat sol'#183'licitud')
        CopiarOrigen.Strings = (
          'Estat sol'#183'licitud')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATSOL"'
      end
      item
        Nombre = 'Fili'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Historia')
        CopiarOrigen.Strings = (
          'Historia')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Metges'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge a qui es demana l'#39'informe')
        CopiarOrigen.Strings = (
          'Metge a qui es demana l'#39'informe')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        WhereFiltro = 'BAIXA = "N"'
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
        WhereFiltro = 'BAIXA = "N"'
      end
      item
        Nombre = 'Correccio'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari que fa la correcci'#243)
        CopiarOrigen.Strings = (
          'Usuari que fa la correcci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        WhereFiltro = 'BAIXA = "N"'
      end>
    Nombre = 'Informes Sol'#183'licitats'
    NombreTabla = 'InformesSol'
    Organiza = tbBase
    CamposVer.Strings = (
      'Historia'
      'Data i hora'
      'Usuari'
      'Sol'#183'licitant'
      'Parentesc'
      'DNI'
      'Motiu'
      'Forma d'#39'entrega'
      'Urgent'
      'Estat sol'#183'licitud'
      'Data impressi'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 374
  end
  object llistat: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'llistat'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (REG      VARCHAR(5),'
      '         METGE    VARCHAR(100),'
      '         TIPUS    VARCHAR(10),'
      '         NUM_INF  INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE AUX INTEGER;'
      '  DECLARE VARIABLE AUX2 INTEGER;'
      '  DECLARE VARIABLE ID_INFORME INTEGER;'
      'BEGIN'
      '      '
      '    AUX2=0;'
      
        '    /* unitat lesionats medul'#183'lars: P05, P04, P07, P24, P18(nens' +
        ' i adults) */'
      '    AUX=0; TIPUS = '#39'nens'#39'; REG='#39'1.1'#39';'
      '    FOR SELECT M.NOMSENCER, COUNT(*)'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR ON I.ID_INFORME = IR.ID_INFORME AND IR.' +
        'LINIA = 1'
      
        '    JOIN METGES       M  ON I.C_USUARI = M.CODI AND M.CODI IN('#39'P' +
        '04'#39','#39'P05'#39','#39'P07'#39','#39'P18'#39','#39'P24'#39')'
      '    /*FROM INFORMESSOL I'
      
        '    JOIN METGES M ON I.C_METGE = M.CODI AND M.CODI IN('#39'P04'#39','#39'P05' +
        #39','#39'P07'#39','#39'P18'#39','#39'P24'#39')*/'
      
        '    JOIN FILIACIO     F  ON I.C_HISTORIA = F.NUM_HIST AND F.EDAT' +
        ' < 18'
      '    /*WHERE I.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(4,5)*/'
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(6,10)'
      '    GROUP BY M.NOMSENCER'
      '    INTO :METGE, :NUM_INF'
      '    DO BEGIN'
      '        AUX=AUX+NUM_INF;'
      '        SUSPEND;'
      '    END;'
      '    '
      '    TIPUS='#39#39';'
      '    FOR SELECT M.NOMSENCER, COUNT(*)'
      '    /*FROM INFORMESSOL I'
      
        '    JOIN METGES M ON I.C_METGE = M.CODI AND M.CODI IN('#39'P04'#39','#39'P05' +
        #39','#39'P07'#39','#39'P18'#39','#39'P24'#39') */'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR ON I.ID_INFORME = IR.ID_INFORME AND IR.' +
        'LINIA = 1'
      
        '    JOIN METGES       M  ON I.C_USUARI = M.CODI AND M.CODI IN('#39'P' +
        '04'#39','#39'P05'#39','#39'P07'#39','#39'P18'#39','#39'P24'#39')'
      
        '    JOIN FILIACIO     F  ON I.C_HISTORIA = F.NUM_HIST AND F.EDAT' +
        ' >= 18'
      '    /*WHERE I.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(4,5)*/'
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(6,10)'
      '    GROUP BY M.NOMSENCER'
      '    INTO :METGE, :NUM_INF'
      '    DO BEGIN'
      '        AUX=AUX+NUM_INF;'
      '        SUSPEND;'
      '    END;'
      ''
      '    METGE='#39'UNITAT LESIONATS MEDUL'#183'LARS'#39'; NUM_INF=AUX; REG='#39'1'#39';'
      '    SUSPEND;'
      '    AUX2=AUX2+AUX;'
      ''
      '    /* unitat dany cerebral */'
      '    AUX=0; TIPUS = '#39'nens'#39'; REG='#39'2.1'#39';'
      '    FOR SELECT M.NOMSENCER, COUNT(*)'
      '    /*FROM INFORMESSOL I'
      
        '    JOIN METGES M ON I.C_METGE = M.CODI AND M.CODI IN('#39'P06'#39','#39'P03' +
        #39','#39'P10'#39','#39'P19'#39','#39'P27'#39','#39'P31'#39')*/'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR ON I.ID_INFORME = IR.ID_INFORME AND IR.' +
        'LINIA = 1'
      
        '    JOIN METGES       M  ON I.C_USUARI = M.CODI AND M.CODI IN('#39'P' +
        '06'#39','#39'P03'#39','#39'P10'#39','#39'P19'#39','#39'P27'#39','#39'P31'#39')'
      
        '    JOIN FILIACIO     F  ON I.C_HISTORIA = F.NUM_HIST AND F.EDAT' +
        ' < 18'
      '    /*WHERE I.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(4,5) */'
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(6,10)'
      '    GROUP BY M.NOMSENCER'
      '    INTO :METGE, :NUM_INF'
      '    DO BEGIN'
      '        AUX=AUX+NUM_INF;'
      '        SUSPEND;'
      '    END;'
      '    '
      '    TIPUS = '#39#39';'
      '    FOR SELECT M.NOMSENCER, COUNT(*)'
      '    /*FROM INFORMESSOL I'
      
        '    JOIN METGES M ON I.C_METGE = M.CODI AND M.CODI IN('#39'P06'#39','#39'P03' +
        #39','#39'P10'#39','#39'P19'#39','#39'P27'#39','#39'P31'#39')*/'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR ON I.ID_INFORME = IR.ID_INFORME AND IR.' +
        'LINIA = 1'
      
        '    JOIN METGES       M  ON I.C_USUARI = M.CODI AND M.CODI IN('#39'P' +
        '06'#39','#39'P03'#39','#39'P10'#39','#39'P19'#39','#39'P27'#39','#39'P31'#39')'
      
        '    JOIN FILIACIO F ON I.C_HISTORIA = F.NUM_HIST AND F.EDAT >= 1' +
        '8'
      '    /*WHERE I.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(4,5)*/'
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(6,10)'
      '    GROUP BY M.NOMSENCER'
      '    INTO :METGE, :NUM_INF'
      '    DO BEGIN'
      '        AUX=AUX+NUM_INF;'
      '        SUSPEND;'
      '    END;'
      ''
      '    METGE='#39'UNITAT DANY CEREBRAL'#39'; NUM_INF=AUX; REG='#39'2'#39';'
      '    SUSPEND;'
      '    AUX2=AUX2+AUX;'
      '    '
      '    /* urologia */'
      '    AUX=0; TIPUS = '#39#39'; REG='#39'3.1'#39';'
      '    FOR SELECT M.NOMSENCER,COUNT(*)'
      '    /*FROM INFORMESSOL I'
      '    JOIN METGES M ON I.C_METGE = M.CODI AND M.C_ESPECIAL = '#39'03'#39
      '    WHERE I.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(4,5) */'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR ON I.ID_INFORME = IR.ID_INFORME AND IR.' +
        'LINIA = 1'
      
        '    JOIN METGES       M  ON I.C_USUARI = M.CODI AND M.C_ESPECIAL' +
        ' = '#39'03'#39
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF'
      '    AND I.C_ESTAT IN(6,10)'
      '    GROUP BY M.NOMSENCER'
      '    INTO :METGE, :NUM_INF'
      '    DO BEGIN'
      '        AUX=AUX+NUM_INF;'
      '        SUSPEND;'
      '    END;'
      ''
      '    METGE='#39'UROLOGIA'#39'; NUM_INF=AUX; REG='#39'3'#39';'
      '    SUSPEND;'
      '    AUX2=AUX2+AUX;'
      ''
      '    /* varis */'
      '    AUX=0; TIPUS = '#39#39'; REG='#39'4.1'#39';'
      '    FOR SELECT M.NOMSENCER,COUNT(*)'
      '    /*FROM INFORMESSOL I'
      
        '    JOIN METGES M ON I.C_METGE = M.CODI AND M.C_GRUP = '#39'ME'#39' AND ' +
        'NOT M.CODI IN ('#39'P04'#39','#39'P05'#39','#39'P07'#39','#39'P18'#39','#39'P24'#39','#39'P06'#39','#39'P03'#39','#39'P10'#39','#39 +
        'P19'#39','#39'P27'#39','#39'P31'#39')'
      '    WHERE I.C_ESTAT IN(4,5)'
      '    AND I.DATA BETWEEN :DATAI AND :DATAF || '#39' 23:59:59'#39' */'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR ON I.ID_INFORME = IR.ID_INFORME AND IR.' +
        'LINIA = 1'
      
        '    JOIN METGES M ON I.C_USUARI = M.CODI AND M.C_GRUP = '#39'ME'#39' AND' +
        ' NOT M.CODI IN ('#39'P04'#39','#39'P05'#39','#39'P07'#39','#39'P18'#39','#39'P24'#39','#39'P06'#39','#39'P03'#39','#39'P10'#39',' +
        #39'P19'#39','#39'P27'#39','#39'P31'#39')'
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF || '#39' 23:59:59'#39
      '    AND I.C_ESTAT IN(6,10)'
      '    GROUP BY M.NOMSENCER'
      '    INTO :METGE, :NUM_INF'
      '    DO BEGIN'
      '        AUX=AUX+NUM_INF;'
      '        SUSPEND;'
      '    END;'
      ''
      '    /*'
      
        '    METGE='#39'SECRES'#39'; -- C'#210'PIES D'#39'INFORMES SOL'#183'LICITADES JA IMPRES' +
        'ES --'
      '    SELECT COUNT(*)'
      '    FROM INFORMESSOL'
      '    WHERE ES_COPIA = '#39'S'#39' AND C_ESTAT = 5'
      '    AND DATA BETWEEN :DATAI AND :DATAF || '#39' 23:59:59'#39
      '    INTO :NUM_INF;'
      '    '
      '    AUX=AUX+NUM_INF;'
      '    IF (NUM_INF > 0) THEN SUSPEND;'
      '    Es deixen de demanar c'#242'pies - es fan reimpressions */'
      
        '    /* implementat i provat ok per'#242' jo no ho mostraria pq surt c' +
        'om que ho han demanat les secres i s'#243'n reimpressions. No '#233's el m' +
        'ateix.'
      '    AUX = 0; NUM_INF= 0;'
      '    FOR SELECT DISTINCT I.ID_INFORME'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR ON I.ID_INFORME = IR.ID_INFORME AND IR.' +
        'LINIA = 1'
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF || '#39' 23:59:59'#39
      '    AND   I.C_ESTAT = 10'
      '    ORDER BY I.ID_INFORME'
      '    INTO :ID_INFORME'
      '    DO BEGIN'
      '        SELECT COUNT(*) FROM INFORMES_REG'
      '        WHERE ID_INFORME = :ID_INFORME'
      '        AND   ACCIO = 6'
      
        '        AND   NOT (COMENTARI LIKE '#39'%1%'#39')  -- que no sigui la pri' +
        'mera impressi'#243' --'
      '        INTO :AUX;'
      '        '
      '        IF (AUX IS NULL) THEN AUX=0;'
      '        NUM_INF = NUM_INF + AUX;'
      '    END;'
      '    IF (NUM_INF > 0) THEN SUSPEND;   */'
      '    '
      '    METGE='#39'VARIS'#39'; NUM_INF=AUX; REG='#39'4'#39';'
      '    SUSPEND;'
      '    AUX2=AUX2+AUX;'
      ''
      '    /* psico-social */'
      '    AUX=0; TIPUS = '#39#39'; REG='#39'5.1'#39';'
      '    FOR SELECT M.NOMSENCER,COUNT(*)'
      '    /*FROM INFORMESSOL I'
      
        '    JOIN METGES M ON I.C_METGE = M.CODI AND M.C_GRUP IN('#39'PS'#39','#39'AS' +
        #39','#39'LO'#39')'
      '    WHERE I.C_ESTAT IN(4,5)'
      '    AND I.DATA BETWEEN :DATAI AND :DATAF || '#39' 23:59:59'#39'*/'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR ON I.ID_INFORME=IR.ID_INFORME AND IR.LI' +
        'NIA = 1'
      
        '    JOIN METGES       M  ON I.C_USUARI = M.CODI AND M.C_GRUP IN(' +
        #39'PS'#39','#39'AS'#39','#39'LO'#39')'
      '    WHERE I.C_ESTAT IN(6,10)'
      '    AND IR.DATA BETWEEN :DATAI AND :DATAF || '#39' 23:59:59'#39
      '    GROUP BY M.NOMSENCER'
      '    INTO :METGE, :NUM_INF'
      '    DO BEGIN'
      '        AUX=AUX+NUM_INF;'
      '        SUSPEND;'
      '    END;'
      ''
      '    METGE='#39'PSICO-SOCIALS'#39'; NUM_INF=AUX; REG='#39'5'#39';'
      '    SUSPEND;'
      '    AUX2=AUX2+AUX;'
      '    '
      '    METGE='#39' T O T A L '#39'; NUM_INF=AUX2; REG='#39'6'#39';'
      '    SUSPEND;'
      ''
      '    /* altres informes */'
      '    METGE='#39'INFORMES VARIS'#39'; NUM_INF=AUX2; REG='#39'7.1'#39';'
      '    SUSPEND;'
      ''
      '    METGE='#39'INFORMES PROVES ESPECIALS'#39';'
      '    SELECT COUNT(*) FROM INTERCON'
      '    WHERE DATA1 BETWEEN :DATAI AND :DATAF'
      '    AND C_TIPUS = '#39'PROVESP'#39
      '    AND NOT ESTAT BETWEEN 80 AND 89'
      '    INTO :NUM_INF;'
      '    SUSPEND;'
      '    AUX2=AUX2+NUM_INF;'
      '    '
      '    METGE='#39'INFORMES REVISIONS M'#200'DIQUES'#39';'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND C_PRESTACIO = '#39'2004'#39
      '    INTO :NUM_INF;'
      '    SUSPEND;'
      '    AUX2=AUX2+NUM_INF;'
      '    '
      '    METGE='#39'INFORMES ALTES HOSPITAL DE DIA'#39';'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND C_PRESTACIO = '#39'1008'#39
      '    INTO :NUM_INF;'
      '    SUSPEND;'
      '    AUX2=AUX2+NUM_INF;'
      '    '
      '    METGE='#39'INFORMES ALTES REHABILITACI'#211' INFANTIL'#39';'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND C_PRESTACIO = '#39'2008'#39
      '    INTO :NUM_INF;'
      '    SUSPEND;'
      '    AUX2=AUX2+NUM_INF;'
      ''
      '    METGE='#39'INFORMES ALTES FUNCIONS SUPERIORS'#39';'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND C_PRESTACIO = '#39'2007'#39
      '    INTO :NUM_INF;'
      '    SUSPEND;'
      '    AUX2=AUX2+NUM_INF;'
      ''
      '    METGE='#39'INFORMES ALTES HOSPITAL'#192'RIES'#39';'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND C_PRESTACIO = '#39'1004'#39
      '    INTO :NUM_INF;'
      '    SUSPEND;'
      '    AUX2=AUX2+NUM_INF;'
      ''
      '    METGE='#39'INFORMES ALTES AMBULAT'#210'RIES'#39';'
      '    SELECT COUNT(*) FROM TRACTAMENTS'
      '    WHERE DATA_ALTA BETWEEN :DATAI AND :DATAF'
      '    AND C_PRESTACIO = '#39'2014'#39
      '    INTO :NUM_INF;'
      '    SUSPEND;'
      '    AUX2=AUX2+NUM_INF;'
      ''
      '    METGE='#39' T  O  T  A  L  '#39'; NUM_INF=AUX2; REG='#39'7'#39';'
      '    SUSPEND;'
      'END')
    Dic1 = InformesSol
    Dic1Name = 'informessol'
    Abierta = False
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
    Top = 374
  end
  object LogSol: TDic
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
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy"."hh"."nn"."ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'METGE'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat inicial'
        NombreDB = 'ESTAT_I'
        Longitud = 40
        Consulta = 'ESTATI'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat final'
        NombreDB = 'ESTAT_F'
        Longitud = 40
        Consulta = 'ESTATF'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'FILI'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Motiu'
        NombreDB = 'C_MOTIU'
        Longitud = 15
        Consulta = 'MOTIU'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom fitxer'
        NombreDB = 'NOM_FITXER'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Acci'#243
        NombreDB = 'ACCIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'I:insert;U:update;A:anula'
        ValidChars = 'IUA'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom fitxer abans'
        NombreDB = 'NOM_FITXER_ABANS'
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'METGE'
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
        Nombre = 'ESTATI'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat inicial')
        CopiarOrigen.Strings = (
          'Estat inicial')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATSOL"'
      end
      item
        Nombre = 'ESTATF'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat final')
        CopiarOrigen.Strings = (
          'Estat final')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATSOL"'
      end
      item
        Nombre = 'MOTIU'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Motiu')
        CopiarOrigen.Strings = (
          'Motiu')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = "TIPUSINFORMES" AND C_CODI <> '#39'***'#39
      end
      item
        Nombre = 'FILI'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Hist'#242'ria')
        CopiarOrigen.Strings = (
          'Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end>
    Nombre = 'LogInformesSol'
    NombreTabla = 'LogInformesSol'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Data'
      'Usuari'
      'Estat inicial'
      'Estat final'
      'Hist'#242'ria'
      'Motiu')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 94
    Top = 374
  end
  object tsi_dni: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'tsi_dni'
    ForceNombreDB = False
    Body.Strings = (
      '(OPCIO INTEGER)'
      'RETURNS (HISTORIA INTEGER,'
      '         NOM      VARCHAR(80),'
      '         EDAT     INTEGER,'
      '         SEXE     CHAR(1),'
      '         PAIS     VARCHAR(3),'
      '         UM       SMALLINT,'
      '         UM_ANTIGA SMALLINT,'
      '         DNI       VARCHAR(9)'
      '         )'
      'AS'
      'BEGIN'
      '      '
      '   IF (OPCIO=1) THEN'
      '   BEGIN'
      
        '       FOR SELECT DISTINCT F.NUM_HIST, F.NOMCOMPLET, F.EDAT, F.S' +
        'EXO, F.PAIS, F.C_UNITATMEDICA, F.UM_ANTIGA, F.DNI'
      '       FROM FILIACIO F'
      
        '       JOIN FILIACIO F2 ON F.DNI = F2.DNI AND F2.NUM_HIST <> F.N' +
        'UM_HIST'
      '       WHERE F_STRINGLENGTH(F_LRTRIM(F.DNI)) < 9'
      '       AND F.ESVIU = '#39'S'#39
      '       ORDER BY F.NUM_HIST, F.DNI'
      
        '       INTO :HISTORIA, :NOM, :EDAT, :SEXE, :PAIS, :UM, :UM_ANTIG' +
        'A, :DNI'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '   END;'
      '   '
      '   IF (OPCIO=2) THEN'
      '   BEGIN'
      
        '       FOR SELECT F.NUM_HIST, F.NOMCOMPLET, F.EDAT, F.SEXO, F.PA' +
        'IS, F.C_UNITATMEDICA, F.UM_ANTIGA, F.DNI'
      '       FROM FILIACIO F'
      
        '       JOIN FILIACIO F2 ON F.DNI = F2.DNI AND F2.NUM_HIST <> F.N' +
        'UM_HIST'
      '       WHERE F_STRINGLENGTH(F_LRTRIM(F.DNI)) = 9'
      '       AND F.ESVIU = '#39'S'#39
      '       ORDER BY F.NUM_HIST, F.DNI'
      
        '       INTO :HISTORIA, :NOM, :EDAT, :SEXE, :PAIS, :UM, :UM_ANTIG' +
        'A, :DNI'
      '       DO BEGIN'
      '           SUSPEND;'
      '       END;'
      '   END;'
      ''
      'END')
    Dic1 = wDataBasics.Filiacio
    Dic1Name = 'filiacio'
    Abierta = False
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
    Left = 880
    Top = 440
  end
  object LogDietes: TDic
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
        Aplica = kcCaracter
        Nombre = 'Planta'
        NombreDB = 'C_PLANTA'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Llit'
        NombreDB = 'C_LLIT'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dieta Antiga'
        NombreDB = 'DIETA_ANT'
        Longitud = 40
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions Antigues'
        NombreDB = 'OBS_ANT'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Modificacions'
        NombreDB = 'MODIF'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Bloc impressi'#243
        NombreDB = 'BLOC'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Feta impresssi'#243
        NombreDB = 'PRINT_OK'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'S:s'#237';N:no;E:error;B:impressores buides;'
        ValidChars = 'SNEB'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data impressi'#243
        NombreDB = 'DATA_PRINT'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom del PC'
        NombreDB = 'NOMPC'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Login de Novell'
        NombreDB = 'LOGIN'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Hora Dinar'
        NombreDB = 'HORA_DINAR'
        Longitud = 5
        MaskDisplay = 'HH:MM'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ubicaci'#243' dinar'
        NombreDB = 'C_UBICACIO_DINAR'
        Longitud = 3
        Consulta = 'UbiDinar'
        zType = tcIB_Smallint
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
        Nombre = 'UbiDinar'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Ubicaci'#243' dinar')
        CopiarOrigen.Strings = (
          'Ubicaci'#243' dinar')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI="UBICACIO_DINAR"'
      end>
    Nombre = 'LogDietes'
    NombreTabla = 'LogDietes'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id'
      'Data'
      'Usuari'
      'Hist'#242'ria'
      'Planta'
      'Llit'
      'Dieta Antiga'
      'Observacions Antigues'
      'Modificacions'
      'Feta impresssi'#243
      'Bloc impressi'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 750
    Top = 260
  end
  object Tasques2: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Tasquesillits2'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS'
      '('
      '  LLIT             VARCHAR(3),'
      '  PLANTA           VARCHAR(15),'
      '  TRAC_LLIT        VARCHAR(3),'
      '  TRAC_PLANTA      VARCHAR(20),'
      '  HISTORIA         INTEGER,'
      '  TRACTAMENT       INTEGER,'
      '  METGE            VARCHAR(3),'
      
        '  PACIENT          VARCHAR(100),            /*VALDRA PER AL NOM ' +
        'DEL PACIENT O EL MOTIU DEL BLOQUEIG*/'
      '  EDAT             INTEGER,'
      '  SEXE             CHAR(1),'
      
        '  TIPUS            CHAR,                    /*B:BLOQUEIXAT L:LLI' +
        'URE O:OCUPAT S:SENSE LLIT*/'
      '  DATA_INGRES      DATE,'
      '  DATA_PREALTA     DATE,'
      '  DATA_ALTA        DATE,'
      '  INFERMERIA       VARCHAR(3),'
      '  N_INFERMERIA     VARCHAR (20),'
      '  PASSI_AUTORITZAT CHAR(1)'
      ''
      ')'
      'AS'
      '  DECLARE VARIABLE BLOCK  INTEGER;'
      '  DECLARE VARIABLE ESTAT  CHAR(1);'
      '  DECLARE VARIABLE TANCAT INTEGER;'
      'BEGIN'
      ''
      
        '  FOR  SELECT L.C_LLIT, L.C_ESTAT, L.C_PLANTA, T.C_LLIT, T.C_PLA' +
        'NTA, T.C_HISTORIA, F.NOMCOMPLET,  T.C_COORDINADOR,'
      
        '               T.DATA_INGRES ,T.C_INFERMERIA ,M.METGE, F.EDAT, F' +
        '.SEXO, T.DATA_PREALTA, T.DATA_ALTA, T.PASSI'
      '  FROM ((LLITS L'
      '                LEFT OUTER JOIN TRACTAMENTS T '
      '                            ON L.C_LLIT = T.C_LLIT '
      
        '                           AND (T.DATA_ALTA IS NULL OR T.DATA_AL' +
        'TA >= "TODAY"))'
      
        '                LEFT JOIN FILIACIO F ON F.NUM_HIST = T.C_HISTORI' +
        'A)'
      '                LEFT JOIN METGES M ON T.C_INFERMERIA=M.CODI'
      ''
      '  ORDER BY L.C_LLIT'
      
        '  INTO :LLIT, :ESTAT, :PLANTA, :TRAC_LLIT, :TRAC_PLANTA, :HISTOR' +
        'IA, :PACIENT, :METGE,'
      
        '       :DATA_INGRES, :INFERMERIA, :N_INFERMERIA, :EDAT, :SEXE, :' +
        'DATA_PREALTA, :DATA_ALTA, :PASSI_AUTORITZAT'
      '  DO BEGIN'
      '        '
      '      IF (HISTORIA IS NULL) THEN   '
      '      BEGIN '
      ''
      '            SELECT COUNT(*) FROM LLITBLOQUEIG'
      '            WHERE C_LLIT = :LLIT'
      '            AND (Data_Fi IS NULL OR Data_Fi >= "TODAY")'
      '            INTO :BLOCK;'
      ''
      '            IF (BLOCK <> 0) THEN   '
      '            BEGIN'
      '                TIPUS = "B";'
      '                PACIENT = "** BLOQUEJAT **";'
      '            END;'
      '            ELSE   '
      '            BEGIN '
      '               TIPUS = "L";'
      '               PACIENT = "** LLIURE **";'
      '            END;'
      '      END'
      '      ELSE BEGIN'
      '            TIPUS = "O";'
      '            IF (DATA_ALTA = "TODAY") THEN '
      '            BEGIN  '
      '                  TIPUS = "L";'
      '            END'
      '      END'
      '      '
      
        '      /*IF (ESTAT<>'#39'T'#39') THEN SUSPEND;  /* els llits tancats no e' +
        'ls mostrem */'
      '      TANCAT=0;'
      '      SELECT COUNT(*) FROM LLITTANCAMENT'
      '      WHERE (C_LLIT = :LLIT)'
      
        '      AND   (DATA_INICI<="TODAY" AND (DATA_FI>"TODAY" OR DATA_FI' +
        ' IS NULL))'
      '      INTO :TANCAT;'
      '      IF (TANCAT IS NULL) THEN TANCAT=0;'
      ''
      '      IF (TANCAT=0) THEN SUSPEND;'
      '      /* parte 56547 - f */'
      '        '
      '  END;'
      '  '
      '  /* AFEGIM ELS INGRESSATS QUE NO TENEN LLIT ASSIGNAT */'
      '  LLIT=NULL; ESTAT=NULL; PLANTA=NULL;'
      
        '  FOR SELECT T.C_LLIT, T.C_PLANTA, T.C_HISTORIA, F.NOMCOMPLET,  ' +
        'T.C_COORDINADOR, T.DATA_INGRES, T.C_INFERMERIA,'
      
        '             M.METGE, F.EDAT, F.SEXO, T.DATA_PREALTA, T.DATA_ALT' +
        'A, T.PASSI'
      '  FROM TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON F.NUM_HIST = T.C_HISTORIA'
      '  LEFT JOIN METGES M ON T.C_INFERMERIA=M.CODI'
      
        '  WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY") AND (T.C' +
        '_LLIT IS NULL OR (T.C_LLIT ='#39#39')) AND T.C_PRESTACIO='#39'1004'#39
      '  ORDER BY 1'
      
        '  INTO :TRAC_LLIT, :TRAC_PLANTA, :HISTORIA, :PACIENT, :METGE, :D' +
        'ATA_INGRES ,:INFERMERIA ,:N_INFERMERIA,'
      
        '       :EDAT, :SEXE, :DATA_PREALTA, :DATA_ALTA, :PASSI_AUTORITZA' +
        'T'
      '  DO BEGIN'
      '      TIPUS = "S";'
      '      SUSPEND;'
      '  END;'
      'END;')
    Select.Strings = (
      'SELECT * FROM P_TRACTAMENTS_DIETESILLITS'
      '[FILTRO]'
      '[ORDEN]'
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
    Modi = True
    ModiFecha = 37194.7325127315
    Left = 880
    Top = 382
  end
  object DinarsNadal: TDic
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
        Nombre = 'Tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus dinar'
        NombreDB = 'C_DINAR'
        Longitud = 40
        Consulta = 'Dinar'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus registre'
        NombreDB = 'C_TIPUS'
        Longitud = 8
        Consulta = 'Tipus'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Valor registre'
        NombreDB = 'C_VALOR'
        Longitud = 3
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'S:s'#237',N:no,H:habitaci'#243',M:menjador,n'#186':acompanyants'
        ValidChars = ' '
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari registre'
        NombreDB = 'C_USUARI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Actiu'
        NombreDB = 'ACTIU'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
        Comentario = 'S:actiu;N:anul'#183'lat'
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
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
        Nombre = 'Dinar'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus dinar')
        CopiarOrigen.Strings = (
          'Tipus dinar')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DINARSNADAL"'
      end
      item
        Nombre = 'Tipus'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus registre')
        CopiarOrigen.Strings = (
          'Tipus registre')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "DINARS.TIPUS"'
      end>
    Nombre = 'DinarsNadal'
    NombreTabla = 'DinarsNadal'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Tractament'
      'Data registre'
      'Tipus registre'
      'Valor registre'
      'Usuari registre'
      'Actiu')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 432
  end
  object List: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      '(UH VARCHAR(15),LLISTAT INTEGER)'
      'RETURNS (NOMCOMPLET VARCHAR(80),'
      '         LLIT       VARCHAR(3),'
      '         PLANTA     VARCHAR(15),'
      '         LLOCA      VARCHAR(10),'
      '         ACOMPA     INTEGER,'
      '         LLOCB      VARCHAR(10),'
      '         ACOMPB     INTEGER,'
      '         LLOCC      VARCHAR(10),'
      '         ACOMPC     INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE C_DINAR   SMALLINT;'
      '  DECLARE VARIABLE C_TIPUS   SMALLINT;'
      '  DECLARE VARIABLE C_VALOR   VARCHAR(3);'
      '  DECLARE VARIABLE TRACT_ACT INTEGER;'
      '  DECLARE VARIABLE TRACT_ANT INTEGER;'
      '  DECLARE VARIABLE HC_ACT    INTEGER;'
      '  DECLARE VARIABLE HC_ANT    INTEGER;'
      '  DECLARE VARIABLE NOM_ACT   VARCHAR(80);'
      '  DECLARE VARIABLE NOM_ANT   VARCHAR(80);'
      '  DECLARE VARIABLE LLIT_ACT  VARCHAR(3);'
      '  DECLARE VARIABLE LLIT_ANT  VARCHAR(3);'
      '  DECLARE VARIABLE PRIMER    SMALLINT;'
      '  DECLARE VARIABLE TOTLLOCAH INTEGER;'
      '  DECLARE VARIABLE TOTLLOCAM INTEGER;'
      '  DECLARE VARIABLE TOTACOMPA INTEGER;'
      '  DECLARE VARIABLE TOTLLOCBH INTEGER;'
      '  DECLARE VARIABLE TOTLLOCBM INTEGER;'
      '  DECLARE VARIABLE TOTACOMPB INTEGER;'
      '  DECLARE VARIABLE TOTLLOCCH INTEGER;'
      '  DECLARE VARIABLE TOTLLOCCM INTEGER;'
      '  DECLARE VARIABLE TOTACOMPC INTEGER;'
      '  DECLARE VARIABLE CONTA     INTEGER;'
      '  DECLARE VARIABLE DPINI     DATE;'
      '  DECLARE VARIABLE DPFIN     DATE;'
      'BEGIN'
      ''
      '  PLANTA=UH;'
      '  TRACT_ANT=0;HC_ANT=0;NOM_ANT=NULL;LLIT_ANT=NULL;PRIMER=0;'
      
        '  LLOCA=NULL;ACOMPA=NULL;LLOCB=NULL;ACOMPB=NULL;LLOCC=NULL;ACOMP' +
        'C=NULL;'
      '  TOTLLOCAH=0;TOTLLOCAM=0;TOTACOMPA=0;'
      '  TOTLLOCBH=0;TOTLLOCBM=0;TOTACOMPB=0;'
      '  TOTLLOCCH=0;TOTLLOCCM=0;TOTACOMPC=0;'
      
        '  IF (LLISTAT=1) THEN BEGIN DPINI='#39'24.12.2011'#39'; DPFIN='#39'26.12.201' +
        '1'#39'; END;    /* ojo! aix'#242' s'#39'ha de canviar a par'#224'metres d'#39'entrada ' +
        ' */'
      
        '                 ELSE BEGIN DPINI='#39'31.12.2011'#39'; DPFIN='#39'06.01.201' +
        '2'#39'; END;    /* i tocar el codi d'#39'admissions per als propers anys' +
        ' */'
      ''
      
        '  FOR SELECT T.C_TRACTAMENT,T.C_HISTORIA,F.NOMCOMPLET,T.C_LLIT,D' +
        '.C_DINAR,D.C_TIPUS,D.C_VALOR'
      '  FROM TRACTAMENTS T'
      '  LEFT JOIN FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      
        '  LEFT JOIN ALTESADMIN A ON T.C_TRACTAMENT=A.C_TRACTAMENT AND A.' +
        'ESTAT=1'
      '  JOIN DINARSNADAL D ON T.C_TRACTAMENT=D.C_TRACTAMENT'
      
        '  WHERE (T.DATA_ALTA IS NULL OR (T.DATA_ALTA>="TODAY")) AND (T.C' +
        '_PRESTACIO='#39'1004'#39')'
      
        '  /*AND (T.PASSI='#39'N'#39')*/ AND (A.ID IS NULL) AND (D.C_VALOR<>'#39'X'#39') ' +
        '/* sense passi, alta ni alta administrativa*/'
      '  AND (T.C_PLANTA=:UH)'
      '  AND (   ((:LLISTAT=1) AND (D.C_DINAR IN(1,2,3)))'
      '       OR ((:LLISTAT=2) AND (D.C_DINAR IN(4,5,6))))'
      '  ORDER BY T.C_LLIT,D.C_DINAR,D.C_TIPUS'
      
        '  INTO :TRACT_ACT, :HC_ACT, :NOM_ACT, :LLIT_ACT, :C_DINAR, :C_TI' +
        'PUS, :C_VALOR'
      '  DO BEGIN'
      '      IF ((PRIMER=0) OR (TRACT_ANT=TRACT_ACT)) THEN'
      '      BEGIN'
      '          PRIMER=1;'
      '          IF      ((C_DINAR=1) OR (C_DINAR=4)) THEN'
      '          BEGIN'
      
        '              IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR' +
        ' */'
      '              BEGIN'
      
        '                  IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCA='#39'Habita' +
        'ci'#243#39'; TOTLLOCAH=TOTLLOCAH+1; END;'
      
        '                  ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCA='#39'Menjad' +
        'or'#39';  TOTLLOCAM=TOTLLOCAM+1; END;'
      '              END;'
      '              ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '              BEGIN'
      '                  ACOMPA=C_VALOR; TOTACOMPA=TOTACOMPA+ACOMPA;'
      '              END;'
      '          END;'
      '          ELSE IF ((C_DINAR=2) OR (C_DINAR=5)) THEN'
      '          BEGIN'
      
        '              IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR' +
        ' */'
      '              BEGIN'
      
        '                  IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCB='#39'Habita' +
        'ci'#243#39'; TOTLLOCBH=TOTLLOCBH+1; END;'
      
        '                  ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCB='#39'Menjad' +
        'or'#39';  TOTLLOCBM=TOTLLOCBM+1; END;'
      '              END;'
      '              ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '              BEGIN'
      '                  ACOMPB=C_VALOR; TOTACOMPB=TOTACOMPB+ACOMPB;'
      '              END;'
      '          END;'
      '          ELSE IF ((C_DINAR=3) OR (C_DINAR=6)) THEN'
      '          BEGIN'
      
        '              IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR' +
        ' */'
      '              BEGIN'
      
        '                  IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCC='#39'Habita' +
        'ci'#243#39'; TOTLLOCCH=TOTLLOCCH+1; END;'
      
        '                  ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCC='#39'Menjad' +
        'or'#39';  TOTLLOCCM=TOTLLOCCM+1; END;'
      '              END;'
      '              ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '              BEGIN'
      '                  ACOMPC=C_VALOR; TOTACOMPC=TOTACOMPC+ACOMPC;'
      '              END;'
      '          END;'
      '      END;'
      '      ELSE BEGIN'
      '          NOMCOMPLET=NOM_ANT; LLIT=LLIT_ANT;'
      '          /* Nom'#233's si no t'#233' passi d'#39'infermeria */'
      
        '          SELECT COUNT(*) FROM PASSIS WHERE C_HISTORIA=:HC_ANT A' +
        'ND INICI<=:DPFIN AND FI>=:DPINI INTO :CONTA;'
      '          IF (CONTA=0) THEN SUSPEND;'
      '          '
      
        '          LLOCA=NULL;ACOMPA=NULL;LLOCB=NULL;ACOMPB=NULL;LLOCC=NU' +
        'LL;ACOMPC=NULL;'
      '          IF      ((C_DINAR=1) OR (C_DINAR=4)) THEN'
      '          BEGIN'
      
        '              IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR' +
        ' */'
      '              BEGIN'
      
        '                  IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCA='#39'Habita' +
        'ci'#243#39'; TOTLLOCAH=TOTLLOCAH+1; END;'
      
        '                  ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCA='#39'Menjad' +
        'or'#39';  TOTLLOCAM=TOTLLOCAM+1; END;'
      '              END;'
      '              ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '              BEGIN'
      '                  ACOMPA=C_VALOR; TOTACOMPA=TOTACOMPA+ACOMPA;'
      '              END;'
      '          END;'
      '          ELSE IF ((C_DINAR=2) OR (C_DINAR=5)) THEN'
      '          BEGIN'
      
        '              IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR' +
        ' */'
      '              BEGIN'
      
        '                  IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCB='#39'Habita' +
        'ci'#243#39'; TOTLLOCBH=TOTLLOCBH+1; END;'
      
        '                  ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCB='#39'Menjad' +
        'or'#39';  TOTLLOCBM=TOTLLOCBM+1; END;'
      '              END;'
      '              ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '              BEGIN'
      '                  ACOMPB=C_VALOR; TOTACOMPB=TOTACOMPB+ACOMPB;'
      '              END;'
      '          END;'
      '          ELSE IF ((C_DINAR=3) OR (C_DINAR=6)) THEN'
      '          BEGIN'
      
        '              IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR' +
        ' */'
      '              BEGIN'
      
        '                  IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCC='#39'Habita' +
        'ci'#243#39'; TOTLLOCCH=TOTLLOCCH+1; END;'
      
        '                  ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCC='#39'Menjad' +
        'or'#39';  TOTLLOCCM=TOTLLOCCM+1; END;'
      '              END;'
      '              ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '              BEGIN'
      '                  ACOMPC=C_VALOR; TOTACOMPC=TOTACOMPC+ACOMPC;'
      '              END;'
      '          END;'
      '      END;'
      
        '      TRACT_ANT=TRACT_ACT; HC_ANT=HC_ACT; NOM_ANT=NOM_ACT; LLIT_' +
        'ANT=LLIT_ACT;'
      '  END;'
      '  /* Tractem l'#39#250'ltim registre */'
      '  IF      ((C_DINAR=1) OR (C_DINAR=4)) THEN'
      '  BEGIN'
      '      IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR */'
      '      BEGIN'
      
        '          IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCA='#39'Habitaci'#243#39'; TO' +
        'TLLOCAH=TOTLLOCAH+1; END;'
      
        '          ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCA='#39'Menjador'#39';  TO' +
        'TLLOCAM=TOTLLOCAM+1; END;'
      '      END;'
      '      ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '      BEGIN'
      '          ACOMPA=C_VALOR; TOTACOMPA=TOTACOMPA+ACOMPA;'
      '      END;'
      '  END;'
      '  ELSE IF ((C_DINAR=2) OR (C_DINAR=5)) THEN'
      '  BEGIN'
      '      IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR */'
      '      BEGIN'
      
        '          IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCB='#39'Habitaci'#243#39'; TO' +
        'TLLOCBH=TOTLLOCBH+1; END;'
      
        '          ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCB='#39'Menjador'#39';  TO' +
        'TLLOCBM=TOTLLOCBM+1; END;'
      '      END;'
      '      ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '      BEGIN'
      '          ACOMPB=C_VALOR; TOTACOMPB=TOTACOMPB+ACOMPB;'
      '      END;'
      '  END;'
      '  ELSE IF ((C_DINAR=3) OR (C_DINAR=6)) THEN'
      '  BEGIN'
      '      IF (C_TIPUS=1) THEN        /* HABITACI'#211' / MENJADOR */'
      '      BEGIN'
      
        '          IF      (C_VALOR='#39'H'#39') THEN BEGIN LLOCC='#39'Habitaci'#243#39'; TO' +
        'TLLOCCH=TOTLLOCCH+1; END;'
      
        '          ELSE IF (C_VALOR='#39'M'#39') THEN BEGIN LLOCC='#39'Menjador'#39';  TO' +
        'TLLOCCM=TOTLLOCCM+1; END;'
      '      END;'
      '      ELSE IF (C_TIPUS=2) THEN  /* ACOMPANYANTS */'
      '      BEGIN'
      '          ACOMPC=C_VALOR; TOTACOMPC=TOTACOMPC+ACOMPC;'
      '      END;'
      '  END;'
      ''
      '  NOMCOMPLET=NOM_ANT; LLIT=LLIT_ANT;'
      
        '  IF ((LLOCA IS NOT NULL) OR (ACOMPA IS NOT NULL) OR (LLOCB IS N' +
        'OT NULL) OR (ACOMPB IS NOT NULL) OR (LLOCC IS NOT NULL) OR (ACOM' +
        'PC IS NOT NULL))'
      '  THEN SUSPEND;'
      '  '
      '  /* Pinto registre de TOTALS */'
      
        '/*  IF ((TOTLLOCAH>0) OR (TOTLLOCAM>0) OR (TOTACOMPA>0) OR (TOTL' +
        'LOCBH>0) OR (TOTLLOCBM>0) OR (TOTACOMPB>0) OR'
      '      (TOTLLOCCH>0) OR (TOTLLOCCM>0) OR (TOTACOMPC>0))'
      '  THEN BEGIN'
      '      ACOMPA=NULL;ACOMPB=NULL;ACOMPC=NULL;'
      
        '      NOMCOMPLET='#39'TOTALS'#39'; LLIT='#39'HAB'#39'; LLOCA=TOTLLOCAH; LLOCB=TO' +
        'TLLOCBH; LLOCC=TOTLLOCCH; SUSPEND;'
      
        '      NOMCOMPLET='#39'TOTALS'#39'; LLIT='#39'MEN'#39'; LLOCA=TOTLLOCAM; LLOCB=TO' +
        'TLLOCBM; LLOCC=TOTLLOCCM; SUSPEND;'
      
        '      NOMCOMPLET='#39'TOTALS'#39'; LLIT='#39'ACO'#39'; LLOCA=TOTACOMPA; LLOCB=TO' +
        'TACOMPB; LLOCC=TOTACOMPC; SUSPEND;'
      '  END;*/'
      '  '
      'END')
    Dic1 = DinarsNadal
    Dic1Name = 'DinarsNadal'
    Abierta = False
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
    Left = 190
    Top = 432
  end
  object Totals: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Totals'
    ForceNombreDB = False
    Body.Strings = (
      '(UH VARCHAR(15),LLISTAT INTEGER)'
      'RETURNS (SUMAAH   INTEGER,'
      '         CONTAH   INTEGER,'
      '         SUMAAM   INTEGER,'
      '         CONTAM   INTEGER,'
      '         SUMABH   INTEGER,'
      '         CONTBH   INTEGER,'
      '         SUMABM   INTEGER,'
      '         CONTBM   INTEGER,'
      '         SUMACH   INTEGER,'
      '         CONTCH   INTEGER,'
      '         SUMACM   INTEGER,'
      '         CONTCM   INTEGER'
      '         )'
      'AS'
      '  DECLARE VARIABLE LLOC VARCHAR(10);'
      '  DECLARE VARIABLE SUMA INTEGER;'
      '  DECLARE VARIABLE CONT INTEGER;'
      'BEGIN'
      ''
      
        '   SUMAAH=0;CONTAH=0;SUMAAM=0;CONTAM=0;SUMABH=0;CONTBH=0;SUMABM=' +
        '0;CONTBM=0;SUMACH=0;CONTCH=0;SUMACM=0;CONTCM=0;'
      ''
      
        '   FOR SELECT LLOCA,SUM(ACOMPA),COUNT(*) FROM P_DINARSNADAL_LIST' +
        '(:UH,:LLISTAT)'
      '   WHERE LLOCA<>'#39#39' GROUP BY LLOCA'
      '   INTO :LLOC, :SUMA, :CONT'
      '   DO BEGIN'
      
        '       IF      (LLOC='#39'Habitaci'#243#39') THEN BEGIN SUMAAH=SUMA; CONTAH' +
        '=CONT; END;'
      
        '       ELSE IF (LLOC='#39'Menjador'#39')  THEN BEGIN SUMAAM=SUMA; CONTAM' +
        '=CONT; END;'
      '   END;'
      '   '
      
        '   FOR SELECT LLOCB,SUM(ACOMPB),COUNT(*) FROM P_DINARSNADAL_LIST' +
        '(:UH,:LLISTAT)'
      '   WHERE LLOCB<>'#39#39' GROUP BY LLOCB'
      '   INTO :LLOC, :SUMA, :CONT'
      '   DO BEGIN'
      
        '       IF      (LLOC='#39'Habitaci'#243#39') THEN BEGIN SUMABH=SUMA; CONTBH' +
        '=CONT; END;'
      
        '       ELSE IF (LLOC='#39'Menjador'#39')  THEN BEGIN SUMABM=SUMA; CONTBM' +
        '=CONT; END;'
      '   END;'
      '   '
      
        '   FOR SELECT LLOCC,SUM(ACOMPC),COUNT(*) FROM P_DINARSNADAL_LIST' +
        '(:UH,:LLISTAT)'
      '   WHERE LLOCC<>'#39#39' GROUP BY LLOCC'
      '   INTO :LLOC, :SUMA, :CONT'
      '   DO BEGIN'
      
        '       IF      (LLOC='#39'Habitaci'#243#39') THEN BEGIN SUMACH=SUMA; CONTCH' +
        '=CONT; END;'
      
        '       ELSE IF (LLOC='#39'Menjador'#39')  THEN BEGIN SUMACM=SUMA; CONTCM' +
        '=CONT; END;'
      '   END;'
      ''
      '   SUSPEND;'
      'END')
    Dic1 = DinarsNadal
    Dic1Name = 'DinarsNadal'
    Abierta = False
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
    Left = 237
    Top = 432
  end
  object Transport: TDic
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
        Nombre = 'Pacient'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge '
        NombreDB = 'C_METGE'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = False
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
        Aplica = kcFecha
        Nombre = 'Data petici'#243
        NombreDB = 'DATA'
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
          'Pacient')
        CopiarOrigen.Strings = (
          'Pacient')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
        WhereFiltro = 'ESVIU="S"'
      end
      item
        Nombre = 'Metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge ')
        CopiarOrigen.Strings = (
          'Metge ')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        WhereFiltro = 'BAIXA="N" AND C_GRUP="ME"'
      end>
    Nombre = 'Transport'
    NombreTabla = 'Transport'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Pacient'
      'Metge '
      'Usuari'
      'Data petici'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 490
  end
  object DinarsNadalbloqueig: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Planta'
        NombreDB = 'C_PLANTA'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data bloqueig'
        NombreDB = 'DATA_BLOQUEIG'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
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
        Aplica = kcCaracter
        Nombre = 'Nom PC'
        NombreDB = 'NOMPC'
        Longitud = 20
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
          'Planta')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'DinarsNadalbloqueig'
    NombreTabla = 'DinarsNadalbloqueig'
    Organiza = tbBase
    CamposVer.Strings = (
      'Planta'
      'Data bloqueig'
      'Usuari'
      'Nom PC')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 117
    Top = 432
  end
  object Ocupacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Ocupacio'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE)'
      'RETURNS'
      '('
      '  DIES INTEGER,'
      '  OBERTS DOUBLE PRECISION,'
      '  TANCATS DOUBLE PRECISION,'
      '  BLOQUEJATS DOUBLE PRECISION'
      ')'
      'AS'
      '  DECLARE VARIABLE C_LLIT        INTEGER;'
      '  DECLARE VARIABLE NUM_LLITS     INTEGER;'
      '  DECLARE VARIABLE TOTAL_LLITS   INTEGER;'
      '  DECLARE VARIABLE DIES_BLOQUEIG INTEGER;'
      '  DECLARE VARIABLE DIES_TANCAT   INTEGER;'
      '  DECLARE VARIABLE DATA_TANCAT   DATE;'
      '  DECLARE VARIABLE DATA_REOBERT  DATE;'
      'BEGIN'
      '      DIES = F_TRUNCATE(DATA2 - DATA1) + 1;'
      ''
      '      SELECT COUNT(*) FROM LLITS INTO :NUM_LLITS;'
      '      '
      '      TOTAL_LLITS = DIES * NUM_LLITS;'
      ''
      '      OBERTS = TOTAL_LLITS;'
      '      TANCATS = 0;'
      '      BLOQUEJATS = 0;'
      ''
      
        '      /* Recorrem la taula de llits, i per cadascun mirem bloque' +
        'jos i tancaments */'
      '      FOR SELECT C_LLIT'
      '          FROM   LLITS'
      '          ORDER  BY C_LLIT'
      '          INTO  :C_LLIT'
      '      DO BEGIN'
      ''
      '            /* BLOQUEJOS */'
      '      '
      
        '            /* Calculem els dies que el llit ha estat bloquejat ' +
        'dins l'#39'interval de la consulta */'
      
        '            SELECT SUM(F_MINDATEBVG(DATA_FI, :DATA2) - F_MAXDATE' +
        'BVG(DATA_INICI, :DATA1) + 1)'
      '            FROM   LLITBLOQUEIG'
      
        '            WHERE  C_LLIT = :C_LLIT                     /* De fe' +
        't es podria eliminar aquesta l'#237'nia i treure el select fora del F' +
        'OR de LLITS */'
      '            AND    DATA_INICI <= :DATA2'
      '            AND   (DATA_FI >= :DATA1 OR DATA_FI IS NULL)'
      '            INTO  :DIES_BLOQUEIG;'
      '            '
      '            IF (DIES_BLOQUEIG IS NULL) THEN DIES_BLOQUEIG = 0;'
      '            '
      '            BLOQUEJATS = BLOQUEJATS + DIES_BLOQUEIG;'
      '            '
      '            '
      '            '
      '            /* TANCAMENTS */'
      ''
      
        '            /* Calculem els dies que el llit ha estat tancat din' +
        's l'#39'interval de la consulta */'
      
        '            SELECT SUM(F_MINDATEBVG(DATA_FI, :DATA2) - F_MAXDATE' +
        'BVG(DATA_INICI, :DATA1) + 1)'
      '            FROM   LLITTANCAMENT'
      
        '            WHERE  C_LLIT = :C_LLIT                     /* De fe' +
        't es podria eliminar aquesta l'#237'nia i treure el select fora del F' +
        'OR de LLITS */'
      '            AND    DATA_INICI <= :DATA2'
      '            AND   (DATA_FI >= :DATA1 OR DATA_FI IS NULL)'
      '            INTO  :DIES_TANCAT;'
      ''
      '            IF (DIES_TANCAT IS NULL) THEN DIES_TANCAT = 0;'
      ''
      '            TANCATS = TANCATS + DIES_TANCAT;'
      '            OBERTS  = OBERTS  - DIES_TANCAT;'
      ''
      '      END;'
      '      '
      '      OBERTS = OBERTS / DIES;'
      '      BLOQUEJATS = BLOQUEJATS / DIES;'
      '      TANCATS = TANCATS / DIES;'
      ''
      '      SUSPEND;'
      'END'
      ''
      ''
      '')
    Dic1 = Llits
    Dic1Name = 'llits'
    Abierta = False
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
    Left = 494
    Top = 200
  end
  object Tancaments: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Llit'
        NombreDB = 'C_Llit'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Inici Tancament'
        NombreDB = 'Data_Inici'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Fi Tancament'
        NombreDB = 'Data_Fi'
        Longitud = 10
        MaskDisplay = 'dd"."mm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
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
          'Llit'
          'Inici Tancament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Llit'
        NombreDB = 'Llit'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Llit')
        Tipo = tiForaneo
        ForaneoDic = Llits
        ForaneoCampos.Strings = (
          'N'#186' Llit')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Tancament de llits'
    NombreTabla = 'LLITTANCAMENT'
    Organiza = tbBase
    CamposVer.Strings = (
      'Llit'
      'Inici Tancament'
      'Fi Tancament')
    IndiceVer = 'Prima'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540165857
    Left = 366
    Top = 200
  end
  object TancaRang: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Rang'
    ForceNombreDB = False
    Body.Strings = (
      '(DATA1 DATE, DATA2 DATE, C_LLIT1 INTEGER, C_LLIT2 INTEGER)'
      'RETURNS'
      '('
      '  C_LLIT INTEGER,'
      '  DATA_INICI DATE,'
      '  DATA_FI DATE,'
      '  QUEFEM VARCHAR(100)'
      ')'
      'AS'
      '  DECLARE VARIABLE ESTAVATANCAT SMALLINT;'
      '  DECLARE VARIABLE NUM_REG SMALLINT;'
      'BEGIN'
      ''
      ''
      '      FOR SELECT C_LLIT'
      '          FROM LLITS'
      '          WHERE C_LLIT BETWEEN :C_LLIT1 AND :C_LLIT2'
      '          ORDER BY C_LLIT'
      '          INTO :C_LLIT'
      '      DO BEGIN'
      ''
      '            DATA_INICI = NULL;'
      '            DATA_FI = NULL;'
      '            ESTAVATANCAT = 0;'
      '            QUEFEM = '#39#39';'
      ''
      
        '            /* Si el llit ha estat tancat una part del per'#237'ode, ' +
        'hem de completar el tancament */'
      '            '
      '            NUM_REG = 1;'
      ''
      
        '            /* Mirem els tancaments del llit que coincideixin am' +
        'b el per'#237'ode que tanquem */'
      '            FOR SELECT DATA_INICI, DATA_FI'
      '                FROM   LLITTANCAMENT'
      '                WHERE  C_LLIT = :C_LLIT'
      '                AND    DATA_INICI <= :DATA2'
      '                AND   (DATA_FI >= :DATA1 OR DATA_FI IS NULL)'
      '                INTO  :DATA_INICI, :DATA_FI'
      '            DO BEGIN'
      '                  ESTAVATANCAT = 1;'
      '                  '
      
        '                  /* Si '#233's el 1r tancament que coincideix amb el' +
        ' per'#237'ode */'
      '                  IF (NUM_REG = 1) THEN'
      '                  BEGIN'
      '                        NUM_REG = NUM_REG + 1;'
      '                        '
      
        '                        /* Si el llit s'#39'ha tancat dins del per'#237'o' +
        'de hem de modificar l'#39'inici del tancament (allargar el tancament' +
        ' per l'#39'inici) */'
      '                        IF (DATA_INICI > DATA1) THEN'
      '                        BEGIN'
      '                              UPDATE LLITTANCAMENT'
      '                              SET    DATA_INICI = :DATA1'
      '                              WHERE  C_LLIT = :C_LLIT'
      '                              AND    DATA_INICI = :DATA_INICI;'
      '                              '
      
        '                              QUEFEM = '#39'   UPDATE DATA_INICI = '#39 +
        ' || DATA1;'
      '                        END;'
      ''
      
        '                        /* Si el llit s'#39'ha reobert dins del per'#237 +
        'ode, hem de modificar la reobertura (allargar el tancament pel f' +
        'inal) */'
      
        '                        IF ((DATA_FI IS NOT NULL) AND (DATA_FI <' +
        ' DATA2)) THEN'
      '                        BEGIN'
      '                              UPDATE LLITTANCAMENT'
      '                              SET    DATA_FI = :DATA2'
      '                              WHERE  C_LLIT = :C_LLIT'
      '                              AND    DATA_INICI = :DATA_INICI;'
      '                              '
      
        '                              QUEFEM = QUEFEM || '#39'   UPDATE DATA' +
        '_FI = '#39' || DATA2;'
      '                        END;'
      ''
      
        '                        /* Si el llit s'#39'ha tancat abans del per'#237 +
        'ode i segueix tancat despr'#233's'
      
        '                           no modifiquem el tancament (nul o > D' +
        'ata1)  */'
      '                        '
      '                  END;'
      '                  '
      
        '                  /* Si no '#233's el 1r tancament que coincideix amb' +
        ' el per'#237'ode,'
      
        '                   (Segur que s'#39'haur'#224' iniciat dins del per'#237'ode, ' +
        'perqu'#232' no pot coincidir amb l'#39'anterior tancament) */'
      '                  ELSE BEGIN'
      
        '                        /* si finalitza despr'#233's del per'#237'ode, li ' +
        'canviem la data d'#39'inici del tancament */'
      '                        IF (DATA_FI > DATA2) THEN'
      '                        BEGIN'
      '                              UPDATE LLITTANCAMENT'
      '                              SET    DATA_INICI = :DATA2'
      '                              WHERE  C_LLIT = :C_LLIT'
      '                              AND    DATA_INICI = :DATA_INICI;'
      '                              '
      
        '                              QUEFEM = QUEFEM || '#39'    UPDATE DAT' +
        'A_INICI = '#39' || DATA2 || '#39' (2n tancament)'#39';'
      '                        END;'
      '                              '
      
        '                        /* si finalitza dins del per'#237'ode, l'#39'elim' +
        'inem (ja queda incl'#242's en el tancament del per'#237'ode */'
      '                        ELSE BEGIN'
      '                              DELETE FROM LLITTANCAMENT'
      '                              WHERE  C_LLIT = :C_LLIT'
      '                              AND    DATA_INICI = :DATA_INICI'
      '                              AND    DATA_FI = :DATA_FI;'
      '                              '
      
        '                              QUEFEM = QUEFEM || '#39'    DELETE 2n ' +
        'tancament (DATA_FI > '#39' || DATA2 || '#39')'#39';'
      '                        END;'
      '                  '
      '                  END;'
      '            '
      '            END;'
      ''
      
        '            /* Si no ha estat tancat durant el per'#237'ode, insertem' +
        ' registre de tancament amb inici i fi */'
      '            IF (ESTAVATANCAT = 0) THEN'
      '            BEGIN'
      
        '                  INSERT INTO LLITTANCAMENT (C_LLIT, DATA_INICI,' +
        ' DATA_FI)'
      '                  VALUES (:C_LLIT, :DATA1, :DATA2);'
      '                  '
      '                  QUEFEM = '#39'   INSERT DATA1 i DATA2'#39';'
      '            END;'
      '                                          '
      '            SUSPEND;'
      '      END;'
      'END')
    Dic1 = Tancaments
    Dic1Name = 'tancaments'
    Abierta = False
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
    Left = 430
    Top = 200
  end
  object PassisLlista: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Llista'
    ForceNombreDB = False
    Body.Strings = (
      '(E_DATA DATE)'
      'RETURNS'
      '('
      '   TE_PASSI          CHAR,'
      '   C_TRACTAMENT      INTEGER,'
      '   C_HISTORIA        INTEGER,'
      '   NOMCOMPLET        VARCHAR(100),'
      '   C_COORDINADOR     CHAR(5),'
      '   C_PLANTA          VARCHAR (10),'
      '   C_LLIT            VARCHAR(3),'
      '   DATA_INICI        DATE,'
      '   DATA_FI           DATE,'
      '   METGE_AUTORITZA   VARCHAR(5),'
      '   INFER_PASSI       VARCHAR(5),'
      '   MEDICACIO         CHAR,'
      '   C_CENTREFAC       VARCHAR(2)'
      ')'
      'AS'
      '  DECLARE VARIABLE COMPTA INTEGER;'
      '  DECLARE VARIABLE ADM_INICI DATE;'
      'BEGIN'
      ''
      '      IF (E_DATA IS NULL) THEN E_DATA = "TODAY";'
      ''
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPLET, T.C' +
        '_COORDINADOR, T.C_PLANTA, T.C_LLIT, T.C_METGEPASSI, T.C_INFERMER' +
        'APASSI, T.C_CENTREFAC'
      '          FROM   TRACTAMENTS T'
      '          JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACIO'
      '          JOIN   FILIACIO    F ON F.NUM_HIST = T.C_HISTORIA'
      
        '          WHERE (T.DATA_ALTA IS NULL OR (T.DATA_ALTA >= "TODAY" ' +
        'AND T.DATA_ALTA > :E_DATA))'
      '          AND    T.PASSI = "S"      /* Passi autoritzat */'
      
        '          AND    D.C_DRET = "P93"   /* Prestaci'#243' amb dret de ten' +
        'ir passis (1004) */'
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :C_COOR' +
        'DINADOR, :C_PLANTA, :C_LLIT, :METGE_AUTORITZA, :INFER_PASSI, :C_' +
        'CENTREFAC'
      '      DO BEGIN '
      ''
      '            DATA_INICI = NULL;'
      '            DATA_FI    = NULL;'
      '            ADM_INICI  = NULL;'
      '            MEDICACIO = "N";'
      '            '
      '            SELECT COUNT(*)'
      '            FROM   PASSIS'
      '            WHERE  C_HISTORIA = :C_HISTORIA'
      '            AND    INICI >= :E_DATA'
      '            INTO  :COMPTA;'
      '               '
      '            IF (COMPTA = 0) THEN TE_PASSI = "N";'
      '            '
      '            ELSE BEGIN'
      '                  SELECT INICI, FI, ADM_INICI'
      '                  FROM   PASSIS'
      '                  WHERE  C_HISTORIA = :C_HISTORIA'
      '                  AND    INICI >= :E_DATA'
      '                  ORDER  BY INICI'
      '                  ROWS   1'
      '                  INTO  :DATA_INICI, :DATA_FI, :ADM_INICI;'
      '                '
      '                  TE_PASSI = "S";'
      '                  '
      
        '                  IF (ADM_INICI IS NOT NULL) THEN MEDICACIO = "S' +
        '";'
      '            END;'
      '               '
      '            SUSPEND;'
      ''
      '            C_TRACTAMENT    = NULL;'
      '            C_HISTORIA      = NULL;'
      '            NOMCOMPLET      = NULL;'
      '            C_COORDINADOR   = NULL;'
      '            C_PLANTA        = NULL;'
      '            C_LLIT          = NULL;'
      '            METGE_AUTORITZA = NULL;'
      '            INFER_PASSI     = NULL;'
      '      END'
      ''
      'END;'
      ''
      '')
    Select.Strings = (
      'SELECT * FROM P_ESPERA_PASSIS(NULL)'
      '[FILTRO]'
      '[ORDEN]'
      '')
    Dic1 = Passis
    Dic1Name = 'passis'
    Abierta = False
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
    ModiFecha = 37160.7846772917
    Left = 222
    Top = 260
  end
  object LogCalAM: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#186' identificador de registre'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi Metge'
        NombreDB = 'C_METGE'
        Longitud = 5
        Consulta = 'Metge'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Dia que era V,C,G,A,...'
        NombreDB = 'DIA'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy" "hh":"nn":"ss'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus'
        NombreDB = 'TIPUS'
        Longitud = 15
        Consulta = 'Tipus'
        zType = tcIB_Varchar
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
        Nombre = 'Acci'#243
        NombreDB = 'Accio'
        Longitud = 1
        Consulta = 'Accio'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Insert, Delete, entrada Massiva'
      end>
    Indices = <
      item
        Nombre = 'Pk'
        NombreDB = 'Pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Metges'
        NombreDB = 'Metges'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Metge')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Codi Metge')
        CopiarOrigen.Strings = (
          'Codi Metge')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'Tipus'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CALENDARIAM.TIPUS'#39
      end
      item
        Nombre = 'Accio'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Acci'#243)
        CopiarOrigen.Strings = (
          'Acci'#243)
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'CALENDARIAM.ACCIO'#39
      end>
    Nombre = 'LogCalAM'
    NombreTabla = 'LogCalAM'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' identificador de registre'
      'Codi Metge'
      'Dia que era V,C,G,A,...'
      'Tipus'
      'Acci'#243
      'Codi usuari'
      'Data registre')
    IndiceVer = 'Pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 559
    Top = 139
  end
  object ContaCalAM: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'Conta'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN      '
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(CONTALOGCALAM,1) ' +
        ';'
      '   END'
      'END')
    Dic1 = LogCalAM
    Abierta = False
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
    ModiFecha = 36998.5412283333
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 619
    Top = 139
  end
  object LogBLlitsInf: TDic
    CalcNivel = False
    Projecto = wDataHola.ProjecteHola
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero d'#39'identificador de registre'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Llit'
        NombreDB = 'C_Llit'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Inici Bloqueig'
        NombreDB = 'Data_Inici'
        Longitud = 8
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Fi Bloqueig'
        NombreDB = 'Data_Fi'
        Longitud = 8
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Motiu Bloqueig'
        NombreDB = 'Motiu_Bloqueig'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari bloqueig'
        NombreDB = 'C_USUARI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data i hora bloqueig'
        NombreDB = 'DATA'
        Longitud = 8
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Vist'
        NombreDB = 'VIST'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end>
    Indices = <
      item
        Nombre = 'ID'
        NombreDB = 'ID'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'mero d'#39'identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Bloqueig de llits'
    NombreTabla = 'LOGBLLITSINF'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'mero d'#39'identificador de registre'
      'Llit'
      'Data Inici Bloqueig'
      'Data Fi Bloqueig'
      'Motiu Bloqueig'
      'Usuari bloqueig'
      'Data i hora bloqueig'
      'Vist')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540165857
    Left = 406
    Top = 486
  end
  object LogInfSAP: TDic
    CalcNivel = False
    Projecto = wDataHola.ProjecteHola
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
        Aplica = kcFecha
        Nombre = 'Data modificaci'#243
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari modificaci'#243
        NombreDB = 'C_USUARI'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tractament modificat'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Centre facturaci'#243' anterior'
        NombreDB = 'CENTREFAC_ANT'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Client anterior'
        NombreDB = 'CLIENT_ANT'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Delegaci'#243' anterior'
        NombreDB = 'DELEGACIO_ANT'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Centre facturaci'#243' nou'
        NombreDB = 'CENTREFAC_NOU'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Client nou'
        NombreDB = 'CLIENT_NOU'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Delegaci'#243' nova'
        NombreDB = 'DELEGACIO_NOU'
        Longitud = 4
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
      end>
    Consultas = <>
    Nombre = 'LogInfSAP'
    NombreTabla = 'LogInfSAP'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Data modificaci'#243
      'Usuari modificaci'#243
      'Tractament modificat'
      'Centre facturaci'#243' anterior'
      'Client anterior'
      'Delegaci'#243' anterior'
      'Centre facturaci'#243' nou'
      'Client nou'
      'Delegaci'#243' nova')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 336
    Top = 486
  end
  object Sol_Ingres: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'm. Registre'
        NombreDB = 'IDRegistre'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi Metge'
        NombreDB = 'C_Metge'
        Longitud = 5
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
          'N'#250'm. Registre')
        Tipo = tiPrimario
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
          'Codi Metge')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Sol'#183'licituds d'#39'ingr'#233's'
    NombreTabla = 'Sol_Ingres'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'm. Registre'
      'Codi Metge')
    IndiceVer = 'metge'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 237
    Top = 374
  end
  object Consultes: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi consulta'
        NombreDB = 'C_CONSULTA'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom consulta'
        NombreDB = 'N_CONSULTA'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Planta'
        NombreDB = 'C_PLANTA'
        Longitud = 10
        Consulta = 'Planta'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'C_ESTAT'
        Longitud = 40
        Consulta = 'Estat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Rec'#224'rrega baclof'#232'n'
        NombreDB = 'Recarrega_BCF'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Centre'
        NombreDB = 'Centre'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'HB'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi consulta')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
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
        WhereFiltro = 'TIPUSCODI='#39'ESTATCONSULTA'#39
      end
      item
        Nombre = 'Planta'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Planta')
        CopiarOrigen.Strings = (
          'Planta')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'PLANTES'#39
      end>
    Nombre = 'CONSULTES'
    NombreTabla = 'CONSULTES'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi consulta'
      'Nom consulta'
      'Planta')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 408
    Top = 432
  end
  object Horaris: TDic
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
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi consulta'
        NombreDB = 'C_CONSULTA'
        Longitud = 10
        Consulta = 'Consulta'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Porta'
        NombreDB = 'C_PORTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Porta'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Dia setmana'
        NombreDB = 'DIA_SETMANA'
        Longitud = 4
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hora inici'
        NombreDB = 'HORAIN'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Minuts inici'
        NombreDB = 'MININI'
        Longitud = 8
        MaskDisplay = '#,##0;0;0'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hora final'
        NombreDB = 'HORAFI'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Minuts final'
        NombreDB = 'MINFIN'
        Longitud = 8
        MaskDisplay = '#,##0;0;0'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'C_METGE'
        Longitud = 5
        Consulta = 'metge'
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
          'PK')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Consultes'
        NombreDB = 'Consultes'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi consulta')
        Tipo = tiForaneo
        ForaneoDic = Consultes
        ForaneoCampos.Strings = (
          'Codi consulta')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Metge'
        NombreDB = 'Metge'
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
        Nombre = 'metgeunic'
        NombreDB = 'metgeunic'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Metge'
          'Dia setmana'
          'Hora inici'
          'Minuts inici')
        Tipo = tiUnique
        Unico = False
        Descending = False
      end>
    Consultas = <
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
        WhereFiltro = 'BAIXA='#39'N'#39
      end
      item
        Nombre = 'Consulta'
        Master = Consultes
        BuscaOrigen.Strings = (
          'Codi consulta')
        CopiarOrigen.Strings = (
          'Codi consulta')
        CopiarMaster.Strings = (
          'Codi consulta')
        BuscaMaster.Strings = (
          'Codi consulta')
      end
      item
        Nombre = 'Porta'
        Master = Portes
        BuscaOrigen.Strings = (
          'Codi consulta'
          'Porta')
        CopiarOrigen.Strings = (
          'Codi consulta'
          'Porta')
        CopiarMaster.Strings = (
          'Codi consulta'
          'Porta')
        BuscaMaster.Strings = (
          'Codi consulta'
          'Porta')
      end>
    Nombre = 'HORARI'
    NombreTabla = 'HORARI'
    Organiza = tbBase
    CamposVer.Strings = (
      'Porta'
      'Codi consulta'
      'Hora inici'
      'Hora final'
      'Metge')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 507
    Top = 432
  end
  object Portes: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Codi consulta'
        NombreDB = 'C_CONSULTA'
        Longitud = 10
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Porta'
        NombreDB = 'C_PORTA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'C_ESTAT'
        Longitud = 40
        Consulta = 'Estat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'QMATIC Server Point'
        NombreDB = 'QMATIC_SERVICEPOINT'
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
          'Codi consulta'
          'Porta')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Consultes'
        NombreDB = 'Consultes'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi consulta')
        Tipo = tiForaneo
        ForaneoDic = Consultes
        ForaneoCampos.Strings = (
          'Codi consulta')
        Unico = False
        Descending = False
      end>
    Consultas = <
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
        WhereFiltro = 'TIPUSCODI='#39'ESTATPORTA'#39
      end>
    Nombre = 'PORTES'
    NombreTabla = 'PORTES'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi consulta'
      'Porta'
      'Estat'
      'QMATIC Server Point')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 459
    Top = 432
  end
  object DatesNadal: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Any'
        NombreDB = 'ANY_'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Inici per'#237'ode 1'
        NombreDB = 'INICI_PERIODE1'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Final per'#237'ode 1'
        NombreDB = 'FINAL_PERIODE1'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Inici per'#237'ode 2'
        NombreDB = 'INICI_PERIODE2'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Final per'#237'ode 2'
        NombreDB = 'FINAL_PERIODE2'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Inici per'#237'ode 3'
        NombreDB = 'INICI_PERIODE3'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Final per'#237'ode 3'
        NombreDB = 'FINAL_PERIODE3'
        Longitud = 11
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
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
          'Any')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'DatesNadal'
    NombreTabla = 'DatesNadal'
    Organiza = tbBase
    CamposVer.Strings = (
      'Any'
      'Inici per'#237'ode 1'
      'Final per'#237'ode 1'
      'Inici per'#237'ode 2'
      'Final per'#237'ode 2')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 104
    Top = 490
  end
  object vLlocs: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'C_Prestaci'#243
        NombreDB = 'C_Prestacio'
        Longitud = 4
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Lloc'
        NombreDB = 'Lloc'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcSiNo
        Nombre = 'Recarrega_BCF'
        NombreDB = 'Recarrega_BCF'
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
          'C_Prestaci'#243
          'Lloc')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Plantes Llocs Virtual'
    NombreTabla = 'V_Plantes_Llocs'
    Organiza = tbBase
    CamposVer.Strings = (
      'Lloc')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 632
    Top = 200
  end
  object V_Plantes_Llocs: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'Llocs'
    ForceNombreDB = False
    Body.Strings = (
      
        'select distinct D.C_PRESTACIO, P.C_PLANTA as LLOC, "N" as RECARR' +
        'EGA_BCF'
      'from PLANTES P'
      
        'join DRETSPRESTA D on D.C_DRET = '#39'P1'#39'        /* prestaci'#243' assign' +
        'able a la llista d'#39'espera */'
      
        'join DRETSPRESTA D2 on D2.C_DRET = '#39'P13'#39'  /* prestaci'#243' pot tenir' +
        ' planta de preingr'#233's prevista */'
      'union'
      'select D.C_PRESTACIO, C.C_CONSULTA as LLOC, C.RECARREGA_BCF'
      'from CONSULTES C'
      
        'join DRETSPRESTA D on D.C_DRET = '#39'P2'#39'        /* prestaci'#243' assign' +
        'able a l'#39'agenda */'
      '')
    Dic1 = Plantas
    Dic1Name = 'Plantas'
    Abierta = False
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
    ModiFecha = 37076.760782037
    CamposVista2.Strings = (
      'C_PRESTACIO, LLOC, RECARREGA_BCF')
    Left = 569
    Top = 200
  end
  object Espera_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN   '
      '   '
      
        '      /* SEGUIMENT REHABILITACI'#211': Inicialitzem la data de caduci' +
        'tat */'
      
        '      IF ((NEW.C_PRESTACIO = "2003") AND (NEW.DATA_PREINGRES IS ' +
        'NOT NULL)) THEN'
      '      BEGIN'
      '          UPDATE SEGUIMENTPLA SP'
      '          SET SP.DATA_CADUCA = NEW.DATA_PREINGRES + 1'
      '          WHERE SP.C_PLA IN (SELECT SC.C_PLA'
      '                             FROM SEGUIMENTCAP SC'
      
        '                             WHERE SC.C_HISTORIA = NEW.C_HISTORI' +
        'A'
      '                             AND SC.TANCAT = 0);'
      '                             '
      '      END;'
      '   END'
      'END')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    ModiFecha = 37173.8121759259
    Accion1 = taDESPUES
    Accion2 = taINSERT
    Left = 272
    Top = 20
  end
  object Cua: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Id tractament'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'QMATIC Server Point'
        NombreDB = 'QMATIC_SERVICEPOINT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'SERVICEPOINT'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'ESTAT'
        Longitud = 40
        Consulta = 'ESTAT'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'QMATIC Impresora sortida tiquet'
        NombreDB = 'QMATIC_ENTRYPOINTS'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'QMATIC Localitzador pacient'
        NombreDB = 'QMATIC_LOCPATIENT'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data filiaci'#243' pacient'
        NombreDB = 'DATA_INSERCIO'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data cridat pacient'
        NombreDB = 'DATA_CRIDAT'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data finalitzada visita'
        NombreDB = 'DATA_VISITAT'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat qmatic'
        NombreDB = 'ESTAT_QMATIC'
        Longitud = 40
        Consulta = 'ESTAT'
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
          'Id tractament')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'ESTAT'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat')
        CopiarOrigen.Strings = (
          'Estat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'ESTATCUA'#39
      end
      item
        Nombre = 'SERVICEPOINT'
        Master = Portes
        BuscaOrigen.Strings = (
          'QMATIC Server Point')
        CopiarOrigen.Strings = (
          'QMATIC Server Point')
        CopiarMaster.Strings = (
          'QMATIC Server Point')
        BuscaMaster.Strings = (
          'QMATIC Server Point')
      end>
    Nombre = 'CuaQmatic'
    NombreTabla = 'CuaQmatic'
    Organiza = tbBase
    CamposVer.Strings = (
      'Id tractament'
      'QMATIC Server Point'
      'Estat'
      'QMATIC Impresora sortida tiquet')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 552
    Top = 432
  end
  object ActivitatNPC: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ActivitatNPC'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAIN DATE, DATAFI DATE, DRETPRESTA CHAR(10))'
      'RETURNS (HORES DOUBLE PRECISION'
      '         )'
      'AS'
      ' DECLARE VARIABLE C_HISTORIA   INTEGER;'
      ' DECLARE VARIABLE CONTA        DOUBLE PRECISION;'
      ' DECLARE VARIABLE DIA          DATE;'
      ' DECLARE VARIABLE DOW          INTEGER;'
      ' DECLARE VARIABLE DINGRES      DATE;'
      ' DECLARE VARIABLE DALTA        DATE;'
      ' DECLARE VARIABLE DESDE        DATE;'
      ' DECLARE VARIABLE DFINS        DATE;'
      ' DECLARE VARIABLE TIPUSASS     INTEGER;'
      ' DECLARE VARIABLE TRACT        INTEGER;'
      'BEGIN'
      '    HORES=0;'
      ''
      
        '    FOR SELECT DISTINCT T.C_HISTORIA, T.DATA_INGRES, T.DATA_ALTA' +
        ', T.C_TRACTAMENT'
      '    FROM  TRACTAMENTS T'
      
        '    JOIN  CODICAMPS X         ON T.C_ESTATFAC = X.C_CODI AND X.T' +
        'IPUSCODI = "ESTATFACTU" AND X.R_CODI <> 9'
      
        '    JOIN  ASSISTENCIAGIMNAS A ON T.C_TRACTAMENT=A.C_TRACTAMENT A' +
        'ND A.C_TIPUSASS IN (1,2,4,6)'
      
        '    JOIN  AGENDAPACIENT AG    ON T.C_HISTORIA=AG.C_HISTORIA AND ' +
        'AG.C_ACTIVITAT LIKE '#39'NPC%'#39' AND NOT (C_ACTIVITAT LIKE '#39'%*'#39')'
      
        '    JOIN  DRETSPRESTA DP      ON T.C_PRESTACIO=DP.C_PRESTACIO AN' +
        'D DP.C_DRET=:DRETPRESTA'
      
        '    JOIN  CODICAMPSALFA CA    ON AG.C_ACTIVITAT = CA.C_CODI AND ' +
        'CA.TIPUSCODI STARTING WITH '#39'ACTIVITAT'#39' AND CA.C_GRUP='#39'FI'#39
      
        '    WHERE T.DATA_INGRES<=:DATAFI AND (T.DATA_ALTA IS NULL OR T.D' +
        'ATA_ALTA>=:DATAIN)'
      '    AND   A.DATA BETWEEN :DATAIN AND :DATAFI'
      
        '    AND   AG.DATAI<=:DATAFI AND (AG.DATAF IS NULL OR AG.DATAF>:D' +
        'ATAIN)'
      
        '/*    AND   (AG.DATAI <> AG.DATAF OR AG.DATAF IS NULL) no cal, l' +
        'a lnia anterior ja ho contempla */'
      '    ORDER BY T.C_HISTORIA'
      '    INTO :C_HISTORIA, :DINGRES, :DALTA, :TRACT'
      '    DO BEGIN'
      
        '        /* Per cada dia del mes, calcular les hores que tenia pr' +
        'ogramades a l'#39'agenda */'
      '        IF (DINGRES > DATAIN)      THEN DESDE=DINGRES;'
      '                                   ELSE DESDE=DATAIN;'
      '        IF (DALTA IS NULL)         THEN DFINS=DATAFI;'
      '        ELSE IF (DALTA < DATAFI)   THEN DFINS=DALTA;'
      '                                   ELSE DFINS=DATAFI;'
      ''
      '        DIA=DESDE;'
      '        DOW=F_DIADELASEMANA(:DESDE);'
      ''
      '        WHILE (DIA<=DFINS) DO'
      '        BEGIN'
      '            TIPUSASS=NULL; CONTA=0;'
      
        '            SELECT C_TIPUSASS FROM ASSISTENCIAGIMNAS WHERE C_TRA' +
        'CTAMENT=:TRACT AND DATA=:DIA INTO :TIPUSASS;'
      ''
      
        '            /*  Qu fem quan ha vingut fora de freqncia? No sabem' +
        ' quina agenda ha fet ==> no comptem res */'
      '            IF ((TIPUSASS IS NOT NULL) AND (TIPUSASS=1)) THEN'
      '            BEGIN'
      '                SELECT COUNT(*)*0.5 FROM AGENDAPACIENT AG'
      
        '                JOIN  CODICAMPSALFA CA ON AG.C_ACTIVITAT = CA.C_' +
        'CODI AND CA.TIPUSCODI STARTING WITH '#39'ACTIVITAT'#39' AND CA.C_GRUP='#39'F' +
        'I'#39
      
        '                WHERE AG.C_ACTIVITAT LIKE '#39'NPC%'#39' AND NOT (AG.C_A' +
        'CTIVITAT LIKE '#39'%*'#39')  /* No comptar les activitats fictcies */'
      
        '                AND   AG.C_HISTORIA=:C_HISTORIA  AND AG.DIA_SEMA' +
        'NA=:DOW'
      
        '                AND   AG.DATAI<=:DIA AND (AG.DATAF IS NULL OR AG' +
        '.DATAF>:DIA)'
      
        '                /* AND   (AG.DATAI <> AG.DATAF OR AG.DATAF IS NU' +
        'LL) no cal, la lnia anterior ja ho contempla */'
      '                INTO :CONTA;'
      '            END;'
      ''
      
        '            IF ((CONTA IS NOT NULL) AND (CONTA<>0)) THEN HORES=H' +
        'ORES+CONTA;'
      ''
      '            DIA=DIA+1;'
      '            DOW=F_DIADELASEMANA(:DIA);'
      '        END;'
      '    END;'
      ''
      '    SUSPEND;'
      'END')
    Dic1 = wDataBasics.Tract_Resum
    Dic1Name = 'wDataBasics.Tract_Resum'
    Abierta = False
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
    Left = 760
    Top = 80
  end
  object Espera_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN   '
      ''
      
        '      /* SEGUIMENT REHABILITACI'#211': Actualitzem la data de caducit' +
        'at */'
      '      IF ((NEW.C_PRESTACIO = "2003") AND'
      '          (NEW.DATA_PREINGRES IS NOT NULL) AND'
      
        '          ((NEW.DATA_PREINGRES <> OLD.DATA_PREINGRES) OR OLD.DAT' +
        'A_PREINGRES IS NULL)) THEN'
      '      BEGIN'
      '          UPDATE SEGUIMENTPLA SP'
      '          SET SP.DATA_CADUCA = NEW.DATA_PREINGRES + 1'
      '          WHERE SP.C_PLA IN (SELECT SC.C_PLA'
      '                             FROM SEGUIMENTCAP SC'
      
        '                             WHERE SC.C_HISTORIA = NEW.C_HISTORI' +
        'A'
      '                             AND SC.TANCAT = 0);'
      '      END;'
      '      '
      '      /* REC'#192'RREGUES BACLOF'#200'N:'
      
        '         Si '#233's cma per Rec'#224'rrega de Baclof'#232'n, i canvien la data ' +
        'de preingr'#233's,'
      
        '         modifiquem tamb'#233' la data d'#39'inici de l'#39'ordre m'#232'dica asso' +
        'ciada i la data de rec'#224'rrega */'
      
        '      IF ((NEW.C_PRESTACIO = "2006") AND (NEW.C_MOTIU = 19) AND ' +
        '(NEW.C_OM IS NOT NULL) AND (OLD.DATA_PREINGRES <> NEW.DATA_PREIN' +
        'GRES)) THEN'
      '      BEGIN'
      
        '          UPDATE ORDRESMEDIQUES SET DATA_INICI = NEW.DATA_PREING' +
        'RES WHERE C_ORDREMEDICA = NEW.C_OM;'
      
        '          UPDATE BCFRECARREGUES SET DATA_PROPERA = NEW.DATA_PREI' +
        'NGRES WHERE C_OM_FUTURA = NEW.C_OM AND DATA_PROPERA = OLD.DATA_P' +
        'REINGRES;'
      '      END;'
      '      '
      '   END'
      'END')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    Accion1 = taDESPUES
    Accion2 = taUPDATE
    Left = 336
    Top = 20
  end
  object V_PrestaCodicampsL: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'L'
    ForceNombreDB = False
    Body.Strings = (
      
        'SELECT CP.C_Prestacio, C.TipusCodi, C.C_Codi, C.N_Codi, C.N_Codi' +
        '2, C.R_Codi, C.Ordre'
      'FROM CODICAMPS C JOIN PRESTACODICAMPS CP'
      'ON ( CP.TipusCodi = C.Tipuscodi and CP.C_Codi=C.C_Codi  )'
      '')
    Dic1 = PrestaCodiCamps
    Dic1Name = 'PrestaCC'
    Abierta = False
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
    ModiFecha = 37076.760782037
    Left = 785
    Top = 20
  end
  object Dietes: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Dietes'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_DATA     DATE,'
      '  C_USUARI   VARCHAR(5)'
      ' )'
      'RETURNS'
      '('
      '  C_PLANTA        VARCHAR(15),'
      '  PLANTA          VARCHAR(20),'
      '  C_LLIT          VARCHAR(3),'
      '  HISTORIA        INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      '  METGE           VARCHAR(3),'
      
        '  PACIENT         VARCHAR(100),            /* NOM DEL PACIENT O ' +
        'MOTIU DEL BLOQUEIG */'
      '  FECHA_NAC       DATE,'
      '  SEXO            CHAR(1),'
      '  DIETA           VARCHAR(40),'
      '  OBS_DIETA       VARCHAR(40),'
      
        '  TIPUS           CHAR,                    /* B: BLOQUEJAT  L: L' +
        'LIURE  O: OCUPAT  T: TANCAT */'
      '  DATA_INGRES     DATE, '
      '  DATA_ALTA       DATE,'
      '  CODI_DIETA      INTEGER,'
      '  PRESTACIO       VARCHAR(4),'
      '  UNITAT          INTEGER,'
      '  HORA_DINAR      CHAR(5),'
      '  C_UBICACIO_DINAR SMALLINT,'
      '  UBICACIO_DINAR   VARCHAR(40)'
      ''
      ')'
      'AS'
      '  DECLARE VARIABLE BLOCK       INTEGER;'
      '/*  DECLARE VARIABLE D_ALTAADMIN DATE; */'
      '  DECLARE VARIABLE ESTAT       CHAR(1);'
      '  DECLARE VARIABLE TANCAT      INTEGER;'
      '  DECLARE VARIABLE BLOQUEIG    CHAR(1);'
      '  DECLARE VARIABLE AUTORITZAT  INTEGER;'
      'BEGIN'
      ''
      '   IF (E_DATA IS NULL)     THEN E_DATA = "TODAY";'
      ''
      
        '   FOR SELECT L.C_LLIT, T.C_PLANTA, L.C_ESTAT, T.C_HISTORIA, T.C' +
        '_COORDINADOR, F.NOMCOMPLET, T.DATA_INGRES, T.DATA_ALTA, T.C_TRAC' +
        'TAMENT,'
      
        '              F.C_DIETA, C.N_CODI, F.OBS_DIETA, T.C_PRESTACIO, F' +
        '.UNITAT, F.SEXO, F.FECHA_NAC, F.HORA_DINAR, F.BLOQUEIG, F.C_UBIC' +
        'ACIO_DINAR, C2.N_CODI'
      '       FROM   TRACTAMENTS T'
      '       LEFT OUTER JOIN LLITS L      ON L.C_LLIT = T.C_LLIT'
      '       LEFT OUTER JOIN FILIACIO F   ON T.C_HISTORIA = F.NUM_HIST'
      
        '       LEFT OUTER JOIN CODICAMPS C  ON C.TIPUSCODI = "DIETES" AN' +
        'D C.C_CODI = F.C_DIETA'
      '       LEFT OUTER JOIN METGES M     ON M.CODI = T.C_COORDINADOR'
      
        '       LEFT OUTER JOIN CODICAMPS C2 ON C2.TIPUSCODI='#39'UBICACIO_DI' +
        'NAR'#39' AND F.C_UBICACIO_DINAR=C2.C_CODI'
      '       WHERE (T.DATA_ALTA IS NULL OR T.DATA_ALTA >= "TODAY")'
      
        '       AND   (T.C_PRESTACIO IN (SELECT DP.C_PRESTACIO FROM DRETS' +
        'PRESTA DP WHERE DP.C_PRESTACIO = T.C_PRESTACIO AND C_DRET in ("P' +
        '108","P118"))'
      
        '          OR (T.C_PRESTACIO = '#39'9999'#39' AND T.C_PRESTACIOORIGEN = '#39 +
        '1004'#39'))'
      
        '       INTO  :C_LLIT, :PLANTA, :ESTAT, :HISTORIA, :METGE, :PACIE' +
        'NT, :DATA_INGRES,'
      
        '             :DATA_ALTA, :C_TRACTAMENT, :CODI_DIETA, :DIETA, :OB' +
        'S_DIETA, : PRESTACIO, :UNITAT, :SEXO, :FECHA_NAC, :HORA_DINAR, :' +
        'BLOQUEIG, :C_UBICACIO_DINAR, :UBICACIO_DINAR'
      '   DO BEGIN'
      '/*      D_ALTAADMIN = NULL; */'
      '      '
      '      IF (HISTORIA IS NULL) THEN'
      '      BEGIN'
      '            /*  MIREM SI EL LLIT EST'#192' BLOQUEJAT  */'
      ''
      '            SELECT COUNT(*) FROM LLITBLOQUEIG'
      '            WHERE  C_LLIT = :C_LLIT'
      '            AND   (Data_Fi IS NULL OR Data_Fi >= "TODAY")'
      '            INTO :BLOCK;'
      ''
      '            IF (BLOCK <> 0) THEN   '
      '            BEGIN'
      '                TIPUS = "B";'
      '                PACIENT = "** BLOQUEJAT **";'
      '            END;'
      '            ELSE BEGIN'
      '               TIPUS = "L";'
      '               PACIENT = "** LLIURE **";'
      '            END;'
      '      END'
      '      ELSE BEGIN'
      '            TIPUS = "O";'
      '            IF (DATA_ALTA = "TODAY") THEN TIPUS = "L";'
      '            '
      
        '            /* 08.2011 JA NO EXISTEIX EL CONCEPTE D'#39'ALTES ADMINI' +
        'STRATIVES'
      '            /* AFEGIM LES ALTES ADMINISTRATIVES'
      '            ELSE BEGIN'
      '                  SELECT DATA_ALTA_ADMIN FROM ALTESADMIN'
      '                  WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    ESTAT = 0'
      '                  INTO  :D_ALTAADMIN;'
      ''
      
        '                  /*  23.12.2008  ho fem en funci'#243' de si ja esta' +
        'n fora o marxen avui'
      
        '                  IF ((D_ALTAADMIN IS NOT NULL) AND (D_ALTAADMIN' +
        ' <= "TODAY")) THEN'
      '                  BEGIN'
      '                        TIPUS = "A";'
      
        '                        /* si no tenen llit, '#233's que ja han marxa' +
        't'
      
        '                        IF (C_LLIT IS NULL) THEN PACIENT = "** A' +
        'LTA ADMINISTRATIVA **";'
      
        '                        /* IF (D_ALTAADMIN < "TODAY") THEN PACIE' +
        'NT = "** ALTA ADMINISTRATIVA **";'
      '                  END'
      '            END'
      '            */'
      '      END;'
      '      '
      '      /* No mostrem els llits tancats */'
      
        '      /* Els 2014 no tenen llit (els 9999 potser tampoc) => l'#39'ES' +
        'TAT ser'#224' null per'#242' cal mostrar-los */'
      '/* parte 57130 - i'
      '      IF ((ESTAT <> '#39'T'#39') OR (ESTAT IS NULL)) THEN SUSPEND; */'
      ''
      '      TANCAT=0;'
      '      SELECT COUNT(*) FROM LLITTANCAMENT'
      '      WHERE (C_LLIT = :C_LLIT)'
      
        '      AND   (DATA_INICI<="TODAY" AND (DATA_FI>"TODAY" OR DATA_FI' +
        ' IS NULL))'
      '      INTO :TANCAT;'
      '      IF (TANCAT IS NULL) THEN TANCAT=0;'
      ''
      '      IF (TANCAT=0) THEN /* SUSPEND;*/'
      '/* parte 57130 - f */'
      ''
      
        '      /* En funci'#243' de si l'#39'usuari ve informat i/o el tipus del b' +
        'loqueig del pacient, el mostrem o no */'
      '      BEGIN'
      '        IF (C_USUARI IS NULL) THEN'
      '        BEGIN'
      '          /* No mostrem cap pacient bloquejat */'
      '          IF (BLOQUEIG IS NULL) THEN SUSPEND;'
      '        END;'
      '        ELSE BEGIN'
      
        '          /* Si '#233's bloqueig parcial, mirem si l'#39'usuari est'#224' auto' +
        'ritzat */'
      
        '          /* altrament, nom'#233's el retornem si no t'#233' cap bloqueig ' +
        '*/'
      '          IF (BLOQUEIG IS NULL) THEN SUSPEND;'
      '          ELSE IF (BLOQUEIG = '#39'P'#39') THEN'
      '          BEGIN'
      
        '              SELECT COUNT(*) FROM BLOQUEJOS WHERE C_HISTORIA = ' +
        ':HISTORIA AND C_USUARI = :C_USUARI INTO :AUTORITZAT;'
      '              IF (AUTORITZAT = 1) THEN SUSPEND;'
      '          END;'
      '        END;'
      '      END;'
      '              '
      '   END;'
      'END'
      ''
      ''
      ''
      ''
      
        '/*   FOR SELECT L.C_LLIT, L.C_PLANTA, T.C_HISTORIA, T.C_COORDINA' +
        'DOR, F.NOMCOMPLET, T.DATA_INGRES, T.DATA_ALTA, T.C_TRACTAMENT, F' +
        '.C_DIETA, C.N_CODI, F.OBS_DIETA, F.UNITAT'
      '   FROM (((LLITS L '
      
        '               LEFT OUTER JOIN TRACTAMENTS T ON (T.DATA_ALTA IS ' +
        'NULL OR T.DATA_ALTA >= "TODAY") AND L.C_LLIT = T.C_LLIT) '
      
        '               LEFT OUTER JOIN FILIACIO F ON  T.C_HISTORIA = F.N' +
        'UM_HIST) '
      
        '               LEFT OUTER JOIN CODICAMPS C ON C.TIPUSCODI = "DIE' +
        'TES" AND C.C_CODI = F.C_DIETA)'
      
        '               LEFT OUTER JOIN METGES M ON M.CODI = T.C_COORDINA' +
        'DOR'
      '*/')
    Select.Strings = (
      'SELECT * FROM P_TRACTAMENTS_DIETES(NULL)'
      '[FILTRO]'
      '[ORDEN]'
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
    Modi = True
    ModiFecha = 37168.7626893403
    Left = 622
    Top = 260
  end
  object PermisosSortida: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Permis Sortida'
        NombreDB = 'c_permis'
        Longitud = 10
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_PermisosSortida'
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
        Aplica = kcMODELS
        Nombre = 'Tractament'
        NombreDB = 'C_Tractament'
        Longitud = 10
        Consulta = 'tract'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat'
        NombreDB = 'C_Estat'
        Longitud = 1
        Consulta = 'estat'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'Tipus'
        Longitud = 1
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Motiu'
        NombreDB = 'Motiu'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Autoritzaci'#243
        NombreDB = 'Autoritzacio'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ausencia'
        NombreDB = 'Ausencia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Entrada / sortida'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Permanent'
        NombreDB = 'Permanent'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data Sortida'
        NombreDB = 'data_permis'
        Longitud = 40
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora sortida'
        NombreDB = 'hora_permis'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Duraci'#243' sortida'
        NombreDB = 'Horaentrada'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Permis Sortida')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
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
        Nombre = 'tractt'
        NombreDB = 'tractt'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tractament'
          'Tipus')
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
      end>
    Consultas = <
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
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Estat')
        CopiarOrigen.Strings = (
          'Estat')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'tipuscodi = "PERMIS_SORTIDA.ESTAT"'
      end
      item
        Nombre = 'tipus'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'tipuscodi = "PERMIS_SORTIDA.TIPUS"'
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
      end>
    Nombre = 'PermisosSortida'
    NombreTabla = 'PermisosSortida'
    Organiza = tbBase
    CamposVer.Strings = (
      'Permis Sortida'
      'Tractament'
      'Estat'
      'Tipus'
      'Motiu'
      'Autoritzaci'#243
      'Ausencia')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 316
  end
  object PermisosSortidaLog: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'Log'
        NombreDB = 'c_log'
        Longitud = 10
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'HY$G_PermisosSortidaLog'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Permis'
        NombreDB = 'C_Permis'
        Longitud = 10
        Consulta = 'permis'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accio'
        NombreDB = 'c_accio'
        Longitud = 1
        Consulta = 'accio'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari'
        NombreDB = 'c_usuari'
        Longitud = 5
        Consulta = 'usuari'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data'
        NombreDB = 'data'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora'
        NombreDB = 'hora'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Observacions'
        NombreDB = 'Observacions'
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
          'Log')
        Tipo = tiPrimario
        Unico = False
        Descending = False
        AutoGenerator = True
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
        Nombre = 'permis'
        NombreDB = 'permis'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Permis')
        Tipo = tiForaneo
        ForaneoDic = PermisosSortida
        ForaneoCampos.Strings = (
          'Permis Sortida')
        Unico = False
        Descending = False
      end>
    Consultas = <
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
        Nombre = 'permis'
        Master = PermisosSortida
        BuscaOrigen.Strings = (
          'Permis')
        CopiarOrigen.Strings = (
          'Permis')
        CopiarMaster.Strings = (
          'Permis Sortida')
        BuscaMaster.Strings = (
          'Permis Sortida')
      end
      item
        Nombre = 'accio'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Accio')
        CopiarOrigen.Strings = (
          'Accio')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'tipuscodi = "PERMIS_SORTIDA.ESTAT"'
      end>
    Nombre = 'PermisosSortidaLog'
    NombreTabla = 'PermisosSortidaLog'
    Organiza = tbBase
    CamposVer.Strings = (
      'Log'
      'Permis'
      'Accio'
      'Usuari'
      'Data'
      'Hora')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 124
    Top = 316
  end
  object Inclou: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Inclou'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE)'
      'RETURNS (C_ESPERA       INTEGER,'
      '         C_PRESTACIO    VARCHAR(4),'
      '         C_HISTORIA     INTEGER,'
      '         DATA_PREINGRES DATE,'
      '         MOTIUEXCLUSIO  VARCHAR(50)'
      '         )'
      'AS'
      'BEGIN'
      
        '        FOR SELECT E.C_ESPERA, E.C_PRESTACIO, E.C_HISTORIA, E.DA' +
        'TA_PREINGRES, E.MOTIUEXCLUSIO'
      '        FROM ESPERA E'
      
        '        JOIN PRESTACION P ON E.C_PRESTACIO=P.C_PRESTACIO AND P.E' +
        'SEASE<>'#39'C'#39
      '        WHERE E.DATA_PREINGRES BETWEEN :DATAI AND :DATAF'
      '        AND E.EXCLOS='#39'S'#39
      '        AND E.MOTIUEXCLUSIO<>'#39'--EXITUS--'#39
      '        AND E.C_PRESTACIO <> '#39'2003'#39
      '        AND E.C_ESTAT=30'
      
        '        INTO :C_ESPERA, :C_PRESTACIO, :C_HISTORIA, :DATA_PREINGR' +
        'ES, :MOTIUEXCLUSIO'
      '        DO BEGIN'
      '            UPDATE ESPERA'
      '            SET EXCLOS='#39'N'#39', DATA_EXCLUSIO = NULL'
      '            WHERE C_ESPERA = :C_ESPERA;'
      '      '
      '            SUSPEND;'
      '        END;'
      'END')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    Top = 80
  end
  object Garants: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Garant'
        NombreDB = 'ID_GARANT'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'Primaria, es integer'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom 1'
        NombreDB = 'COGNOM1'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom 2'
        NombreDB = 'COGNOM2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'NOM'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'nulable'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Tipus de document'
        NombreDB = 'T_DOC'
        Longitud = 1
        Consulta = 'TipusDoc'
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dni'
        NombreDB = 'DNI'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a'
        NombreDB = 'ADRESA'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi Postal'
        NombreDB = 'CODIGO'
        Longitud = 5
        Consulta = 'CP'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Codig Postal, consulta a CPostal'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Poblaci'#243
        NombreDB = 'POBLACIO'
        Longitud = 44
        Consulta = 'Poblacio'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a poblacio'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Provincia'
        NombreDB = 'PROVINCIA'
        Longitud = 44
        Consulta = 'Provincia'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'consulta a provincia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pais'
        NombreDB = 'PAIS'
        Longitud = 3
        Consulta = 'Pais'
        zType = tcIB_Varchar
        zNotNull = False
        zDefault = '34'
        Comentario = 'Consulta a pais'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tel'#233'fon'
        NombreDB = 'TELEFONO'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Tel'#232'fon amb prefixos'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Email'
        NombreDB = 'email'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Adre'#231'a electr'#243'nica'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Relaci'#243
        NombreDB = 'RELACIO'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Id persona HCE'
        NombreDB = 'id_person'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Garant'
        NombreDB = 'Garant'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Garant')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Cognoms'
        NombreDB = 'Apellidos'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Cognom 1'
          'Cognom 2'
          'Nom')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Pais'
        Master = wDataCodis.Pais
        BuscaOrigen.Strings = (
          'Pais')
        CopiarOrigen.Strings = (
          'Pais')
        CopiarMaster.Strings = (
          'Codi Pa'#237's')
        BuscaMaster.Strings = (
          'Codi Pa'#237's')
      end
      item
        Nombre = 'CP'
        Master = wDataCodis.Poblacio
        BuscaOrigen.Strings = (
          'Codi Postal')
        CopiarOrigen.Strings = (
          'Codi Postal'
          'Poblaci'#243
          'Provincia')
        CopiarMaster.Strings = (
          'Codi Postal'
          'Poblaci'#243
          'Prov'#237'ncia')
        BuscaMaster.Strings = (
          'Codi Postal')
      end
      item
        Nombre = 'poblacio'
        Master = wDataCodis.Poblacio
        BuscaOrigen.Strings = (
          'Poblaci'#243)
        CopiarOrigen.Strings = (
          'Poblaci'#243
          'Provincia'
          'Codi Postal')
        CopiarMaster.Strings = (
          'Poblaci'#243
          'Prov'#237'ncia'
          'Codi Postal')
        BuscaMaster.Strings = (
          'Poblaci'#243)
        ValidateValue = True
      end
      item
        Nombre = 'Provincia'
        Master = wDataCodis.Provincia
        BuscaOrigen.Strings = (
          'Provincia')
        CopiarOrigen.Strings = (
          'Provincia')
        CopiarMaster.Strings = (
          'Prov'#237'ncia')
        BuscaMaster.Strings = (
          'Prov'#237'ncia')
        ValidateValue = True
      end
      item
        Nombre = 'TipusDoc'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Tipus de document')
        CopiarOrigen.Strings = (
          'Tipus de document')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'tipuscodi = '#39'TIPUSDOCUMENT'#39
      end>
    Nombre = 'Garants'
    NombreTabla = 'GARANTS'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Garant'
      'Cognom 1'
      'Cognom 2'
      'Nom'
      'Tipus de document'
      'Dni'
      'Adre'#231'a'
      'Codi Postal'
      'Poblaci'#243
      'Provincia'
      'Pais'
      'Tel'#233'fon'
      'Email'
      'Relaci'#243)
    IndiceVer = 'Garant'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945160301
    Left = 31
    Top = 553
  end
  object Facilitadors: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'N'#186' Facilitador'
        NombreDB = 'ID_FACILITADOR'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'Primaria, es integer'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom 1'
        NombreDB = 'COGNOM1'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Cognom 2'
        NombreDB = 'COGNOM2'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nom'
        NombreDB = 'NOM'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Nom del pacient o Nom sencer de l'#39'empresa'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom d'#39'usuari'
        NombreDB = 'NOM_USUARI'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'Facilitador'
        NombreDB = 'Facilitador'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#186' Facilitador')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Cognoms'
        NombreDB = 'Apellidos'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Cognom 1'
          'Cognom 2'
          'Nom')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Facilitadors'
    NombreTabla = 'FACILITADORS'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#186' Facilitador'
      'Cognom 1'
      'Cognom 2'
      'Nom'
      'Nom d'#39'usuari')
    IndiceVer = 'Facilitador'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37662.4945160301
    Left = 104
    Top = 553
  end
  object T_Passis_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '      IF (USER <> '#39'REPLICATOR'#39') THEN'
      '      BEGIN'
      
        '            IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_PASSIS, 1' +
        ');'
      '      END;'
      'END')
    Dic1 = Passis
    Dic1Name = 'Passis'
    Abierta = False
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
    Left = 88
    Top = 260
  end
  object T_Passis_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE COMPTA SMALLINT;'
      'DECLARE VARIABLE MAXPASSIS SMALLINT;'
      'DECLARE VARIABLE DESTINATARI VARCHAR(40);'
      'DECLARE VARIABLE NOMCOMPLET VARCHAR(80);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      '      SELECT COUNT(*)'
      '      FROM   PASSIS'
      '      WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '      INTO  :COMPTA;'
      '      '
      '      SELECT MAXPASSISCDS FROM CONFIG INTO :MAXPASSIS;'
      '      '
      '      IF (COMPTA >= MAXPASSIS) THEN'
      '      BEGIN'
      '            SELECT EMAIL'
      '            FROM   METGES M'
      '            JOIN   TRACTAMENTS T ON M.CODI = T.C_COORDINADOR'
      '            WHERE  T.C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            INTO  :DESTINATARI;'
      '            '
      '            SELECT NOMCOMPLET'
      '            FROM   FILIACIO'
      '            WHERE  NUM_HIST = NEW.C_HISTORIA'
      '            INTO  :NOMCOMPLET;'
      '            '
      
        '            INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, AS' +
        'SUMPTE, COS, DESTINATARI)'
      '            VALUES ("NOW",'
      '                    29,'
      '                    "Av'#237's PASSIS DE CAP DE SETMANA",'
      
        '                    "El pacient " || NEW.C_HISTORIA || " - " || ' +
        ':NOMCOMPLET || " sortir'#224' de passi de cap de setmana per " || :CO' +
        'MPTA || "a vegada el proper " || F_DATETOSTR(NEW.INICI) || ". " ' +
        '|| F_NLine() ||'
      
        '                    "Es recomana donar l'#39#39'alta al pacient quan a' +
        'quest ja ha sortit " || :MAXPASSIS || " vegades de passi.",'
      '                    :DESTINATARI);'
      '      END;'
      '   END;'
      'END')
    Dic1 = Passis
    Dic1Name = 'Passis'
    Abierta = False
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
    Left = 152
    Top = 260
  end
  object P_Permisos_Caduca: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Caduca'
    ForceNombreDB = False
    Body.Strings = (
      '(DIES_ENRERE INTEGER)'
      'returns (ret varchar(100))'
      'AS'
      '  DECLARE VARIABLE DIA1     DATE;'
      '  DECLARE VARIABLE C_PERMIS INTEGER;'
      '  DECLARE VARIABLE C_LOG    INTEGER;'
      '  DECLARE VARIABLE C_ACCIO  VARCHAR(1);'
      '  DECLARE VARIABLE DATA     DATE;'
      'BEGIN'
      ''
      '      /* El par'#224'metre dies_enrere ha de ser >= 1 (o nul) */'
      '      '
      '      DIA1 = "YESTERDAY";'
      
        '      IF  (DIES_ENRERE IS NULL) THEN DIA1 = '#39'1.2.2020'#39';         ' +
        '   /* Data d'#39'implantaci'#243' dels Permisos de sortida */'
      
        '      ELSE IF (DIES_ENRERE > 0) THEN DIA1 = DIA1 - DIES_ENRERE; ' +
        '   /* si dies enrere '#233's 0 , no faria res, per aix'#242' inicialitzo a' +
        ' yesterday */'
      '      '
      
        '      /* Caduquem els passis permanents (verds i grocs) de tract' +
        'aments que han estat alta */'
      '      FOR SELECT P.C_PERMIS'
      '          FROM   PERMISOSSORTIDA P'
      
        '          JOIN   TRACTAMENTS T ON P.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  T.DATA_ALTA >=  :DIA1'
      '          AND    T.DATA_ALTA < "TODAY"'
      '          AND    P.DATA_PERMIS IS NULL'
      '          AND    P.C_ESTAT IN ('#39'S'#39','#39'A'#39')'
      '          INTO  :C_PERMIS'
      '      DO BEGIN'
      '            UPDATE PERMISOSSORTIDA'
      '            SET    C_ESTAT = '#39'K'#39
      '            WHERE  C_PERMIS = :C_PERMIS;'
      '      END'
      ''
      ''
      '      /* Caduquem els passis blancs actius que ja han passat */'
      '      UPDATE PERMISOSSORTIDA'
      '      SET    C_ESTAT = '#39'K'#39
      '      WHERE  C_ESTAT IN ('#39'S'#39', '#39'A'#39')'
      '      AND    DATA_PERMIS >= :DIA1'
      '      AND    DATA_PERMIS < "TODAY";'
      '      '
      ''
      
        '      /* Anul'#183'lem les abs'#232'ncies corresponents a passis blancs i ' +
        'grocs que ahir (b'#233', x dies enrere) no van tornar */'
      '      FOR SELECT C_PERMIS, MAX(C_LOG)'
      '          FROM   PERMISOSSORTIDALOG'
      '          WHERE (C_ACCIO = '#39'E'#39' OR C_ACCIO = '#39'X'#39')'
      '          AND    DATA >= :DIA1'
      '          AND    DATA < "TODAY"'
      '          GROUP  BY C_PERMIS'
      '          INTO  :C_PERMIS, :C_LOG'
      '      DO BEGIN'
      ''
      '            C_ACCIO = '#39#39';'
      ''
      '            SELECT C_ACCIO, DATA'
      '            FROM   PERMISOSSORTIDALOG'
      '            WHERE  C_LOG = :C_LOG'
      '            INTO  :C_ACCIO, :DATA;'
      ''
      '            IF (C_ACCIO = '#39'X'#39') THEN'
      '            BEGIN'
      
        '                  INSERT INTO PERMISOSSORTIDALOG (C_PERMIS, C_AC' +
        'CIO, DATA, HORA, OBSERVACIONS)'
      
        '                  VALUES (:C_PERMIS, '#39'E'#39', :DATA +1, '#39'00:00'#39', '#39'En' +
        'trada autom'#224'tica (el pacient no ha tornat)'#39');'
      '            END'
      '      END'
      'END')
    Dic1 = PermisosSortida
    Dic1Name = 'PermisosSortida'
    Abierta = False
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
    Left = 228
    Top = 316
  end
  object sms_Bdn: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'sms_Bdn'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_DATA     DATE'
      ' )'
      'RETURNS'
      '('
      '  C_HISTORIA        INTEGER,'
      '  IDIOMA            SMALLINT,'
      '  TRACTE            CHAR(4),'
      '  COGNOM1           VARCHAR(20),'
      '  DATA_PREINGRES    DATE,'
      '  HORA_PREINGRES    CHAR(5),'
      '  TELEFON           VARCHAR(10),'
      '  TELEFONO          VARCHAR(10),'
      '  TELEFO1_FAM       VARCHAR(10),'
      '  TELEFO2_FAM       VARCHAR(10),'
      '  C_PRESTACIO       VARCHAR(4),'
      '  C_ESPERA          INTEGER,'
      '  SMS               CHAR(1),'
      '  NOMCOMPLET        VARCHAR(80),'
      '  C_DRET            CHAR(10),'
      '  DM_DRET           CHAR(10),'
      '  C_MOTIU           SMALLINT,'
      '  C_ESPECIAL        CHAR(2)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_ESPERA_ANT INTEGER;'
      'BEGIN'
      ''
      '   IF (E_DATA IS NULL) THEN E_DATA = "TODAY";'
      '   C_ESPERA_ANT = 0;'
      ''
      
        '   FOR SELECT E.C_HISTORIA, F.IDIOMA, M.TRACTE, M.COGNOM1, E.DAT' +
        'A_PREINGRES, E.HORA_PREINGRES, E.TELEFON, F.TELEFONO,'
      
        '              F.TELEFO1_FAM, F.TELEFO2_FAM, E.C_PRESTACIO, E.C_E' +
        'SPERA, F.SMS, F.NOMCOMPLET, E.C_MOTIU, M.C_ESPECIAL'
      '   FROM ESPERA          E'
      '   JOIN METGES          M  ON E.C_COORDINADOR=M.CODI'
      '   JOIN DRETSPRESTA     DP ON E.C_PRESTACIO=DP.C_PRESTACIO'
      '   LEFT JOIN FILIACIO   F  ON E.C_HISTORIA=F.NUM_HIST'
      '   LEFT JOIN DRETSMOTIU DM ON E.C_MOTIU=DM.C_MOTIU'
      
        '   WHERE (E.DATA_PREINGRES >= (:E_DATA + 1)) AND (E.DATA_PREINGR' +
        'ES<= (:E_DATA + 8))'
      '   AND E.EXCLOS="N" AND ((F.PAIS="34") OR (F.NUM_HIST IS NULL))'
      
        '   AND (E.C_ESTAT BETWEEN 30 AND 39) AND (E.C_PRESTACIO <> "2004' +
        '") AND (E.C_PRESTACIO <> "6004")'
      '   AND (DP.C_DRET="P184" OR DP.C_DRET="P169" OR DM.C_DRET="X17")'
      '   ORDER BY E.DATA_PREINGRES,M.METGE,E.HORA_PREINGRES'
      
        '   INTO :C_HISTORIA, :IDIOMA, :TRACTE, :COGNOM1, :DATA_PREINGRES' +
        ', :HORA_PREINGRES, :TELEFON, :TELEFONO,'
      
        '        :TELEFO1_FAM, :TELEFO2_FAM, :C_PRESTACIO, :C_ESPERA, :SM' +
        'S, :NOMCOMPLET, :C_MOTIU, :C_ESPECIAL'
      '   DO BEGIN'
      '       C_DRET=NULL; DM_DRET=NULL;'
      ''
      
        '       SELECT C_DRET FROM DRETSPRESTA WHERE C_PRESTACIO = :C_PRE' +
        'STACIO AND C_DRET IN("P184","P169") INTO :C_DRET;'
      
        '       IF (C_MOTIU IS NOT NULL) THEN SELECT C_DRET FROM DRETSMOT' +
        'IU  WHERE C_MOTIU = :C_MOTIU AND C_DRET = "X17" INTO :DM_DRET;'
      ''
      '       IF (C_ESPERA_ANT <> C_ESPERA) THEN SUSPEND;'
      '       C_ESPERA_ANT = C_ESPERA;'
      '   END;'
      ''
      
        '   FOR SELECT E.C_HISTORIA, F.IDIOMA, M.TRACTE, M.COGNOM1, E.DAT' +
        'A_PREINGRES, E.HORA_PREINGRES, E.TELEFON, F.TELEFONO,'
      
        '              F.TELEFO1_FAM, F.TELEFO2_FAM, E.C_PRESTACIO, E.C_E' +
        'SPERA, F.SMS, F.NOMCOMPLET, E.C_MOTIU, M.C_ESPECIAL'
      '   FROM ESPERA          E'
      '   JOIN METGES          M  ON E.C_COORDINADOR=M.CODI'
      '   JOIN DRETSPRESTA     DP ON E.C_PRESTACIO=DP.C_PRESTACIO'
      '   LEFT JOIN FILIACIO   F  ON E.C_HISTORIA=F.NUM_HIST'
      '   LEFT JOIN DRETSMOTIU DM ON E.C_MOTIU=DM.C_MOTIU'
      
        '   WHERE (E.DATA_PREINGRES >= (:E_DATA + 1)) AND (E.DATA_PREINGR' +
        'ES<= (:E_DATA + 38))'
      '   AND E.EXCLOS="N" AND ((F.PAIS="34") OR (F.NUM_HIST IS NULL))'
      
        '   AND (E.C_ESTAT BETWEEN 30 AND 39) AND ((E.C_PRESTACIO = "2004' +
        '") OR (E.C_PRESTACIO = "6004"))'
      '   AND (DP.C_DRET="P184" OR DP.C_DRET="P169" OR DM.C_DRET="X17")'
      '   ORDER BY E.DATA_PREINGRES,M.METGE,E.HORA_PREINGRES'
      
        '   INTO :C_HISTORIA, :IDIOMA, :TRACTE, :COGNOM1, :DATA_PREINGRES' +
        ', :HORA_PREINGRES, :TELEFON, :TELEFONO,'
      
        '        :TELEFO1_FAM, :TELEFO2_FAM, :C_PRESTACIO, :C_ESPERA, :SM' +
        'S, :NOMCOMPLET, :C_MOTIU, :C_ESPECIAL'
      '   DO BEGIN'
      '       C_DRET=NULL; DM_DRET=NULL;'
      ''
      
        '       SELECT C_DRET FROM DRETSPRESTA WHERE C_PRESTACIO = :C_PRE' +
        'STACIO AND C_DRET IN("P184","P169") INTO :C_DRET;'
      
        '       IF (C_MOTIU IS NOT NULL) THEN SELECT C_DRET FROM DRETSMOT' +
        'IU  WHERE C_MOTIU = :C_MOTIU AND C_DRET = "X17" INTO :DM_DRET;'
      ''
      '       IF (C_ESPERA_ANT <> C_ESPERA) THEN SUSPEND;'
      '       C_ESPERA_ANT = C_ESPERA;'
      '   END;'
      'END'
      '')
    Select.Strings = (
      'SELECT * FROM P_TRACTAMENTS_DIETES(NULL)'
      '[FILTRO]'
      '[ORDEN]'
      '')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    ModiFecha = 37168.7626893403
    Left = 886
    Top = 260
  end
  object CensCuina: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CensCuina'
    ForceNombreDB = False
    Body.Strings = (
      '(E_DATAHORA DATE)'
      'RETURNS'
      '('
      '  C_TRACTAMENT    INTEGER,'
      '  C_PRESTACIO     VARCHAR(4),'
      '  DATA_INGRES     DATE,'
      '  FECHA_NAC       DATE,'
      '  C_HISTORIA      INTEGER,'
      '  NOMBRE          VARCHAR(20),'
      '  APELLIDO1       VARCHAR(20),'
      '  APELLIDO2       VARCHAR(20),'
      
        '  C_PLANTA        VARCHAR(15),       /* UH-x, M1 M2;  A Coquus e' +
        's diu "UNIDAD", aquest camp - M1/M2 per diferenciar el torn del ' +
        'dinar dels ambulatoris */'
      '  C_LLIT          VARCHAR(3),'
      '  FREQUENCIA      VARCHAR(10),'
      '  ABSENT          CHAR(1),'
      
        '  APAT            VARCHAR(10),       /* Nom'#233's s'#39'ha d'#39'omplir en c' +
        'as que no sigui pensi'#243' completa, '#233's a dir, per a ingressats '#233's "' +
        '" */'
      
        '  DIETA           VARCHAR(10),       /* Passem dieta normal per ' +
        'pacients ambulatoris, per'#242' la integraci'#243' nom'#233's en far'#224' cas si a ' +
        'Coquus no hi ha una dieta assignada */'
      '  FORAFREQ        VARCHAR(10),'
      '  DATA_ALTA       DATE'
      ')'
      'AS'
      '  DECLARE VARIABLE Data DATE;'
      '  DECLARE VARIABLE Assistencia_Gimnas INTEGER;'
      '  DECLARE VARIABLE Hora_Dinar CHAR(5);'
      '  DECLARE VARIABLE Es_Festiu integer;'
      '  DECLARE VARIABLE Es_Festiu_Avui integer;'
      '  DECLARE VARIABLE Data_Inici_Passi date;'
      '  DECLARE VARIABLE Data_Fi_Passi date;'
      '  DECLARE VARIABLE Inici_Passi date;'
      '  DECLARE VARIABLE Fi_Passi date;'
      '  DECLARE VARIABLE C_Espera integer;'
      '  DECLARE VARIABLE Volta SMALLINT;'
      '  DECLARE VARIABLE Planta_Tipus VARCHAR(1);'
      'BEGIN'
      ''
      ''
      '   IF (E_DATAHORA IS NULL) THEN E_DATAHORA = "NOW";'
      ''
      '   Data = F_SoloFecha(E_DATAHORA);'
      ''
      
        '   /* Si criden la consulta abans de les 9h, forcem la inicialit' +
        'zaci'#243' de la taula AssistenciaGimnas perqu'#232' generi els -1 que cor' +
        'responguin */'
      
        '   IF (F_SoloHora("NOW") < 9) THEN EXECUTE PROCEDURE P_TRACTAMEN' +
        'TS_PREPARADIA(:Data);'
      '   '
      '   /* Mirem si el dia que es consulta '#233's festiu */'
      
        '   SELECT COUNT(*) FROM FESTIUS WHERE DATA = :Data INTO Es_Festi' +
        'u_Avui;'
      ''
      ''
      ''
      '/*'
      '   P227 Enviar a Coquus - tots els '#224'pats (ingressats) - 1004'
      '*/'
      ''
      
        '   FOR SELECT ET.C_TRACTAMENT, ET.C_PRESTACIO, ET.DATA_INGRES, F' +
        '.FECHA_NAC, ET.C_HISTORIA, F.NOMBRE, F.APELLIDO1, F.APELLIDO2, E' +
        'T.C_PLANTA, ET.C_LLIT, ET.DATA_ALTA, P.TIPUS'
      '      FROM   TRACTAMENTS ET'
      '      JOIN   FILIACIO    F ON ET.C_HISTORIA = F.NUM_HIST'
      
        '      JOIN   DRETSPRESTA D ON ET.C_PRESTACIO = D.C_PRESTACIO AND' +
        ' D.C_DRET = '#39'P227'#39
      '      LEFT   OUTER JOIN PLANTES P ON ET.C_PLANTA = P.C_PLANTA'
      
        '      WHERE (ET.DATA_ALTA IS NULL OR ET.DATA_ALTA + 15/24 >= :E_' +
        'DATAHORA)'
      
        '       INTO :C_TRACTAMENT, :C_PRESTACIO, :DATA_INGRES, :FECHA_NA' +
        'C, :C_HISTORIA, :NOMBRE, :APELLIDO1, :APELLIDO2, :C_PLANTA, :C_L' +
        'LIT, :DATA_ALTA, :Planta_Tipus'
      '   DO BEGIN'
      ''
      '      ABSENT = '#39'N'#39';'
      '      APAT = '#39#39';'
      '      DIETA = '#39#39';'
      '      FORAFREQ = '#39#39';'
      '      FREQUENCIA = '#39#39';'
      ''
      
        '      /* Interpretem que per defecte els pacients marxen d'#39'alta ' +
        'a la tarda, despr'#233's de dinar */'
      
        '      IF (DATA_ALTA IS NOT NULL) THEN DATA_ALTA = DATA_ALTA + 15' +
        '/24;'
      ''
      '      Data_Inici_Passi = NULL;'
      '      Data_Fi_Passi = NULL;'
      '      Inici_Passi = NULL;'
      '      Fi_Passi = NULL;'
      ''
      '      Volta = 0;'
      '      FOR SELECT F_SoloFecha(INICI), F_SoloFecha(FI)'
      '          FROM   PASSIS'
      
        '          WHERE  C_HISTORIA = :C_HISTORIA AND :Data BETWEEN INIC' +
        'I AND FI'
      '          ORDER  BY INICI, FI'
      '          INTO  :Data_Inici_Passi, :Data_Fi_Passi'
      '      DO BEGIN'
      '            Volta = Volta + 1;'
      '      END'
      ''
      '      IF (Volta > 1) THEN'
      '      BEGIN'
      
        '            INSERT INTO AVISOS_CORREU (ID_AVIS, DATA_GENERAT, AS' +
        'SUMPTE, COS)'
      
        '            VALUES (51, "NOW", '#39'Av'#237's SOLAPAMENT de PASSI de cap ' +
        'de setmana'#39', '#39'El NHC '#39' ||:C_HISTORIA|| '#39' t'#233' 2 passis de caps de ' +
        'setmana que se solapen.'#39');'
      '      END;'
      ''
      '      IF (Data_Inici_Passi IS NOT NULL) THEN'
      '      BEGIN'
      
        '            /* Altrament, interpretem que marxa a la tarda, aban' +
        's de sopar */'
      
        '            /* Si marxa en cap de setmana o festiu, interpretem ' +
        'que marxa al mat'#237', despr'#233's d'#39'esmorzar */'
      
        '            IF (F_DiaDeLaSemana(Data_Inici_Passi) IN (6,7)) THEN' +
        ' Inici_Passi = Data_Inici_Passi + 10/24;'
      '            ELSE BEGIN'
      ''
      
        '                  SELECT COUNT(*) FROM FESTIUS WHERE DATA = :Dat' +
        'a_Inici_Passi INTO :Es_Festiu;'
      ''
      
        '                  IF (Es_Festiu > 0) THEN Inici_Passi = Data_Ini' +
        'ci_Passi + 10/24;'
      
        '                                     ELSE Inici_Passi = Data_Ini' +
        'ci_Passi + 15/24;'
      '            END'
      ''
      
        '            /* Si torna en cap de setmana o festiu, interpretem ' +
        'que torna a la tarda, abans de sopar */'
      
        '            /* Altrament, interpretem que torna al mat'#237', despr'#233's' +
        ' d'#39'esmorzar */'
      
        '            IF (F_DiaDeLaSemana(Data_Fi_Passi) IN (6,7)) THEN Fi' +
        '_Passi= Data_Fi_Passi + 15/24;'
      '            ELSE BEGIN'
      ''
      
        '                  SELECT COUNT(*) FROM FESTIUS WHERE DATA = :Dat' +
        'a_Fi_Passi INTO :Es_Festiu;'
      ''
      
        '                  IF (Es_Festiu > 0) THEN Fi_Passi = Data_Fi_Pas' +
        'si + 15/24;'
      
        '                                     ELSE Fi_Passi = Data_Fi_Pas' +
        'si + 10/24;'
      '            END'
      ''
      
        '            /* Si ens demanen el cens a una hora que queda dins ' +
        'del passi, retornem el pacient com a absent */'
      
        '            IF ((:E_DATAHORA >= Inici_Passi) AND (:E_DATAHORA <=' +
        ' Fi_Passi)) THEN ABSENT = '#39'S'#39';'
      '      END'
      ''
      '      IF (Planta_Tipus = '#39'Q'#39') THEN'
      '      BEGIN'
      
        '            SELECT C_LLIT   FROM LLITBLOQUEIG WHERE (DATA_FI IS ' +
        'NULL OR (DATA_FI >= "NOW")) AND MOTIU_BLOQUEIG = '#39'BQ-'#39'||:C_HISTO' +
        'RIA INTO :C_LLIT;'
      
        '            SELECT C_PLANTA FROM LLITS        WHERE C_LLIT = :C_' +
        'LLIT INTO :C_PLANTA;'
      '      END;'
      ''
      '      SUSPEND;'
      '   END'
      ''
      ''
      ''
      '/*'
      '   P229 Enviar a Cooqus - cap '#224'pat (CMA/hosp.dia) - 1008, 2005'
      '*/'
      
        '   FOR SELECT ET.C_TRACTAMENT, ET.C_PRESTACIO, ET.DATA_INGRES, F' +
        '.FECHA_NAC, ET.C_HISTORIA, F.NOMBRE, F.APELLIDO1, F.APELLIDO2, E' +
        'T.C_PLANTA, ET.C_LLIT, P.TIPUS'
      '       FROM   TRACTAMENTS ET'
      '       JOIN   FILIACIO    F ON ET.C_HISTORIA = F.NUM_HIST'
      
        '       JOIN   DRETSPRESTA D ON ET.C_PRESTACIO = D.C_PRESTACIO AN' +
        'D D.C_DRET = '#39'P229'#39
      '       LEFT   OUTER JOIN PLANTES P ON ET.C_PLANTA = P.C_PLANTA'
      '       WHERE (ET.DATA_ALTA IS NULL OR ET.DATA_ALTA >= :Data)'
      
        '       INTO  :C_TRACTAMENT, :C_PRESTACIO, :DATA_INGRES, :FECHA_N' +
        'AC, :C_HISTORIA, :NOMBRE, :APELLIDO1, :APELLIDO2, :C_PLANTA, :C_' +
        'LLIT, :Planta_Tipus'
      '   DO BEGIN'
      ''
      '      ABSENT = '#39'N'#39';'
      '      APAT = '#39'NO'#39';'
      '      DIETA = '#39#39';'
      '      FORAFREQ = '#39#39';'
      '      FREQUENCIA = '#39#39';'
      '      DATA_ALTA = NULL;'
      ''
      '      IF (Planta_Tipus = '#39'Q'#39') THEN'
      '      BEGIN'
      
        '          SELECT C_LLIT   FROM LLITBLOQUEIG WHERE (DATA_FI IS NU' +
        'LL OR DATA_FI >= "NOW") AND MOTIU_BLOQUEIG = '#39'BQ-'#39'||:C_HISTORIA ' +
        'INTO :C_LLIT;'
      
        '          SELECT C_PLANTA FROM LLITS        WHERE C_LLIT = :C_LL' +
        'IT INTO :C_PLANTA;'
      '      END;'
      ''
      '      SUSPEND;'
      '   END'
      ''
      ''
      ''
      '/*'
      
        '   P228 Enviar a Coquus - nom'#233's dina els dies que ve (ambulatori' +
        's) - 2014, 2114, 2214'
      '*/'
      ''
      
        '   FOR SELECT ET.C_TRACTAMENT, ET.C_PRESTACIO, A.CODI2, ET.DATA_' +
        'INGRES, f.FECHA_NAC, ET.C_HISTORIA, F.NOMBRE, F.APELLIDO1, F.APE' +
        'LLIDO2, ET.DATA_ALTA, F.HORA_DINAR'
      '       FROM   TRACTAMENTS ET'
      '       JOIN   FILIACIO    F ON ET.C_HISTORIA = F.NUM_HIST'
      
        '       JOIN   DRETSPRESTA D ON D.C_PRESTACIO = ET.C_PRESTACIO AN' +
        'D D.C_DRET = '#39'P228'#39
      '       JOIN   TORNAMB     A ON ET.C_FREQUENCIA = A.CODI'
      '       WHERE (ET.DATA_ALTA IS NULL OR ET.DATA_ALTA >= :Data)'
      
        '       INTO  :C_TRACTAMENT, :C_PRESTACIO, :FREQUENCIA, :DATA_ING' +
        'RES, :FECHA_NAC, :C_HISTORIA, :NOMBRE, :APELLIDO1, :APELLIDO2, :' +
        'DATA_ALTA, :Hora_Dinar'
      '   DO BEGIN'
      ''
      '      ABSENT = '#39'N'#39';'
      '      APAT = '#39'DINAR'#39';'
      
        '      DIETA = '#39'NORMAL'#39';      /* Passem dieta normal. A Coquus no' +
        'm'#233's en faran cas si no hi ha dieta assignada. '#201's una manera de p' +
        'osar "normal" per defecte als pacients ambulatoris nous */'
      '      FORAFREQ = '#39#39';'
      ''
      
        '      /* Enviem la freq'#252#232'ncia de l'#39'ambulatori perqu'#232' no el tingu' +
        'in en compte els dies que no ve */'
      ''
      
        '      /* Interpretem que per defecte els pacients marxen d'#39'alta ' +
        'a la tarda, despr'#233's de dinar */'
      
        '      IF (DATA_ALTA IS NOT NULL) THEN DATA_ALTA = DATA_ALTA + 15' +
        '/24;'
      ''
      '      /* Si '#233's festiu => tothom absent */'
      '      IF (Es_Festiu_Avui > 0) THEN ABSENT = '#39'S'#39';'
      '      /* Altrament mirem assist'#232'ncia */'
      '      ELSE BEGIN'
      '            Assistencia_Gimnas = -1;'
      '            '
      
        '            /* Si t'#233' assist'#232'ncia = "N" (per al llsita de cuina),' +
        ' el marquem com a absent */'
      '            SELECT COUNT(*)'
      '            FROM   ASSISTENCIAGIMNAS A'
      
        '            JOIN   CODISASSISTENCIA C ON C.C_TIPUSASS = A.C_TIPU' +
        'SASS AND C.LLISTATCUINA = '#39'N'#39'  /* = assist'#232'ncia no */'
      '            WHERE  A.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    A.DATA = :Data'
      '            INTO  :Assistencia_Gimnas;'
      ''
      '            IF (Assistencia_Gimnas > 0) THEN ABSENT = '#39'S'#39';'
      '            Assistencia_Gimnas = -1;'
      '            '
      
        '            /* Si no hi ha registre a AssistenciaGimnas, '#233's que ' +
        'no li toca venir avui => El marquem com a absent */'
      '            SELECT COUNT(*)'
      '            FROM   ASSISTENCIAGIMNAS A'
      '            WHERE  A.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    A.DATA = :Data'
      '            INTO  :Assistencia_Gimnas;'
      ''
      '            IF (Assistencia_Gimnas = 0) THEN ABSENT = '#39'S'#39';'
      '            Assistencia_Gimnas = -1;'
      '            '
      
        '            /* Si ha vingut fora de freq'#252#232'ncia, ser'#224' present per' +
        #242' ho indiquem */'
      '            SELECT COUNT(*)'
      '            FROM   ASSISTENCIAGIMNAS A'
      '            WHERE  A.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    A.DATA = :Data'
      '            AND    C_TIPUSASS IN (2,4)   /* Fora freq'#252#232'ncia */'
      '            INTO  :Assistencia_Gimnas;'
      ''
      '            IF (Assistencia_Gimnas > 0) THEN FORAFREQ = '#39'S'#39';'
      '            Assistencia_Gimnas = -1;'
      '      END'
      ''
      '      IF (Hora_Dinar = '#39'00:00'#39') THEN'
      '      BEGIN'
      '            APAT = '#39'NO'#39';'
      '            C_PLANTA = '#39'M1'#39';'
      '      END;'
      '      ELSE IF (Hora_Dinar = '#39'13:00'#39') THEN C_PLANTA = '#39'M1'#39';'
      '      ELSE IF (Hora_Dinar = '#39'14:00'#39') THEN C_PLANTA = '#39'M2'#39';'
      '                                     ELSE C_PLANTA = '#39'M1'#39';'
      '/*                                ELSE C_PLANTA = '#39'M2'#39'; */'
      ''
      '      C_LLIT = '#39#39';'
      ''
      '      SUSPEND;'
      '   END'
      ''
      ''
      '/*'
      
        '   P228 llista d'#39'espera, enviar a Coquus els ambulatoris previst' +
        'os com a absents'
      '*/'
      ''
      
        '   FOR SELECT E.C_ESPERA, E.C_PRESTACIO, E.DATA_PREINGRES, F.FEC' +
        'HA_NAC, E.C_HISTORIA, F.NOMBRE, F.APELLIDO1, F.APELLIDO2'
      '       FROM   ESPERA      E'
      '       JOIN   FILIACIO    F ON E.C_HISTORIA = F.NUM_HIST'
      
        '       JOIN   DRETSPRESTA D ON D.C_PRESTACIO = E.C_PRESTACIO AND' +
        ' D.C_DRET = "P228"'
      '       WHERE  E.DATA_PREINGRES >=  "TODAY"'
      '       AND    E.DATA_PREINGRES <= "TODAY" + 7'
      '       AND    E.EXCLOS = "N"'
      '       AND    E.C_ESTAT BETWEEN 20 AND 29'
      
        '       INTO  :C_Espera, :C_PRESTACIO, :DATA_INGRES, :FECHA_NAC, ' +
        ':C_HISTORIA, :NOMBRE, :APELLIDO1, :APELLIDO2'
      '   DO BEGIN'
      ''
      '      APAT = '#39'DINAR'#39';'
      '      DIETA = '#39'NORMAL'#39';'
      '      ABSENT = '#39'S'#39';'
      '      FORAFREQ = '#39#39';'
      '      FREQUENCIA = '#39#39';'
      
        '      C_PLANTA = '#39'M1'#39';  /* de fet encara no tenen hora_dinar ja ' +
        'que quan es filia la 2014,  es reseteja perqu'#232' l'#39'assignin */'
      '      C_LLIT = '#39#39';'
      '      C_TRACTAMENT = (-1)*C_Espera;'
      ''
      '      SUSPEND;'
      '   END'
      ''
      'END')
    Select.Strings = (
      'SELECT * FROM P_TRACTAMENTS_DIETES(NULL)'
      '[FILTRO]'
      '[ORDEN]'
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
    Modi = True
    ModiFecha = 37168.7626893403
    Left = 808
    Top = 260
  end
  object Passis_Festius: TDic
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
        Aplica = kcFecha
        Nombre = 'Inici'
        NombreDB = 'Data_inici'
        Longitud = 19
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Fi'
        NombreDB = 'Data_fi'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
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
        Nombre = 'data1'
        NombreDB = 'data1'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Inici')
        Tipo = tiSecundario
        Unico = True
        Descending = False
      end
      item
        Nombre = 'data2'
        NombreDB = 'data2'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Fi')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Passis_Festius'
    NombreTabla = 'Passis_Festius'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'Inici'
      'Fi')
    IndiceVer = 'iD'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37236.7540184375
    Left = 296
    Top = 260
  end
  object HorariVisitaMetge: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HorariVisitaMetge'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  E_Metge      VARCHAR (5), '
      '  E_PRESTACIO  VARCHAR (4)'
      ')    '
      'RETURNS '
      '(    '
      '  DIA INTEGER,'
      '  HDESDE INTEGER,'
      '  MDESDE INTEGER,'
      '  HHASTA INTEGER,'
      '  MHASTA INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE CONTA INTEGER;'
      'BEGIN'
      ''
      ''
      
        '   FOR SELECT DISTINCT H.DIA, H.HDESDE, H.MDESDE, H.HHASTA, H.MH' +
        'ASTA'
      '       FROM   METGEPRESTA  P'
      
        '       JOIN   METGES       M ON M.CODI = P.CODI AND M.BAIXA = "N' +
        '"'
      '       JOIN   HORARIO      H ON P.CODI = H.C_METGE'
      
        '       JOIN   DRETSPRESTA DP ON DP.C_PRESTACIO = P.C_PRESTACIO A' +
        'ND DP.C_DRET = "P2"'
      '       WHERE  P.CODI = :E_METGE'
      '       AND    P.C_PRESTACIO = :E_PRESTACIO'
      '       INTO  :DIA, :HDESDE, :MDESDE, :HHASTA, :MHASTA'
      '   DO BEGIN'
      ''
      
        '      /* mirem que aquesta prestaci'#243' t'#233' almenys un horari dispon' +
        'ible aquest dia */'
      '      CONTA = 0;'
      
        '      IF ((E_METGE IS NOT NULL) AND (E_PRESTACIO IS NOT NULL)) T' +
        'HEN'
      '      BEGIN'
      
        '           /* La taula HORARIOPRESTA es refereix a exclusions de' +
        ' prestacions en certes hores o dies *'
      '              Per aix'#242' mirem que NO hi sigui */'
      '           SELECT COUNT(*)'
      '           FROM   HORARIOPRESTA'
      '           WHERE  C_METGE = :E_METGE'
      '           AND    C_PRESTACIO = :E_PRESTACIO'
      '           AND    DIA = :DIA'
      
        '           AND    HDESDE = :HDESDE AND MDESDE = :MDESDE AND HHAS' +
        'TA = :HHASTA AND MHASTA = :MHASTA'
      '           INTO  :CONTA;'
      ''
      '           IF (CONTA IS NULL) THEN CONTA = 0;'
      '      END;'
      '      '
      '      IF (CONTA = 0) THEN SUSPEND;'
      '   END'
      'END;'
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
      'SELECT * FROM P_TRACTAMENTS_DIASVISITABLES("U02", NULL)'
      '[FILTRO][ORDEN]'
      ''
      ''
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
    Modi = True
    ModiFecha = 37103.6098822454
    Left = 555
    Top = 80
  end
  object CalendariAM_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN      '
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_CALENDARIAM, 1)' +
        ' ;'
      '   END;'
      'END')
    Dic1 = CalendariAM
    Dic1Name = 'CalendariAM'
    Abierta = False
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
    ModiFecha = 36998.5412283333
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 483
    Top = 139
  end
  object Previsio2014SCS: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Previsio2014SCS'
    ForceNombreDB = False
    Body.Strings = (
      '(TOTS CHAR(1), DETALL CHAR(1))'
      'RETURNS ('
      '      NHC INTEGER,'
      '      MOTIU SMALLINT,'
      '      FREQ VARCHAR(7),'
      '      DL INTEGER,'
      '      DT INTEGER,'
      '      DC INTEGER,'
      '      DJ INTEGER,'
      '      DV INTEGER,'
      '      ORIGEN VARCHAR(10),'
      '      MITJANA FLOAT'
      '  )'
      'AS'
      '      DECLARE VARIABLE AVUI DATE;'
      '      DECLARE VARIABLE DL_VINENT  DATE;'
      '/*      DECLARE VARIABLE NHC  INTEGER;'
      '      DECLARE VARIABLE FREQ VARCHAR(7);'
      '      DECLARE VARIABLE DL INTEGER;'
      '      DECLARE VARIABLE DT INTEGER;'
      '      DECLARE VARIABLE DC INTEGER;'
      '      DECLARE VARIABLE DJ INTEGER;'
      '      DECLARE VARIABLE DV INTEGER; */'
      ''
      'BEGIN'
      
        '      /* C'#224'rrega mitjana di'#224'ria d'#39'ambulatoris SCS previstos per ' +
        'la propera setmana:'
      '         - ambulatoris SCS actius que encara no s'#243'n alta'
      '         - ambulatoris SCS en llista d'#39'espera'
      '      */'
      ''
      '      AVUI = '#39'TODAY'#39';'
      
        '      DL_VINENT = AVUI + 8 - F_DiaDeLaSemana(AVUI );  /* dilluns' +
        ' que ve */'
      '      DL = 0; DT = 0; DC = 0; DJ = 0; DV = 0;'
      '      MITJANA = NULL;'
      '    '
      
        '      FOR SELECT T.C_HISTORIA, T.C_MOTIU, COALESCE(P.TORN, T.C_F' +
        'REQUENCIA), Cast("ACTIUS" as VarChar(10))'
      '          FROM   TRACTAMENTS T'
      
        '          LEFT OUTER JOIN PROCESNR_TORNS P ON T.C_PROCES = P.C_P' +
        'ROCES AND P.DIA_INICI = :DL_VINENT                        /* fre' +
        'q'#252#232'ncia prevista per la setmana que ve */'
      '          WHERE  T.C_PRESTACIO = '#39'2014'#39
      '          AND    T.C_CENTREFAC = '#39'04'#39
      
        '          AND   (COALESCE(T.DATA_ALTA, T.DATA_PREALTA) IS NULL O' +
        'R COALESCE(T.DATA_ALTA, T.DATA_PREALTA) >= :DL_VINENT +7) /* alt' +
        'es posteriors a la setmana que ve */'
      '          UNION'
      
        '          SELECT T.C_HISTORIA, T.C_MOTIU, COALESCE(P.TORN, T.C_F' +
        'REQUENCIA), Cast("ALTES_P" as Varchar(10))'
      '          FROM   TRACTAMENTS T'
      
        '          LEFT OUTER JOIN PROCESNR_TORNS P ON T.C_PROCES = P.C_P' +
        'ROCES AND P.DIA_INICI = :DL_VINENT                        /* fre' +
        'q'#252#232'ncia prevista per la setmana que ve */'
      '          WHERE  T.C_PRESTACIO = '#39'2014'#39
      '          AND    T.C_CENTREFAC = '#39'04'#39
      
        '          AND   (COALESCE(T.DATA_ALTA, T.DATA_PREALTA) BETWEEN :' +
        'DL_VINENT AND :DL_VINENT +4)                              /* alt' +
        'es previstes la setmana que ve */'
      '          UNION'
      
        '          SELECT E.C_HISTORIA, E.C_MOTIU, E.C_FRECUENCIA, Cast("' +
        'PREVISTOS" as VarChar(10))'
      '          FROM   ESPERA E'
      '          WHERE  E.C_PRESTACIO = '#39'2014'#39
      '          AND    E.C_CENTREFAC = '#39'04'#39
      '          AND    E.EXCLOS = '#39'N'#39
      
        '          AND    E.DATA_PREINGRES BETWEEN :DL_VINENT AND :DL_VIN' +
        'ENT +4                                                    /* amb' +
        'ulatoris previstos per la setmana que ve dilluns-divendres */'
      '          '
      '          INTO  :NHC, :MOTIU, :FREQ, :ORIGEN'
      '      DO BEGIN'
      '            IF ((TOTS = '#39'S'#39') OR (ORIGEN <> "ALTES_P")) THEN'
      '            BEGIN'
      '                  IF (F_Mid(FREQ,0,1) = '#39'X'#39') THEN DL = DL+1;'
      '                  IF (F_Mid(FREQ,1,1) = '#39'X'#39') THEN DT = DT+1;'
      '                  IF (F_Mid(FREQ,2,1) = '#39'X'#39') THEN DC = DC+1;'
      '                  IF (F_Mid(FREQ,3,1) = '#39'X'#39') THEN DJ = DJ+1;'
      '                  IF (F_Mid(FREQ,4,1) = '#39'X'#39') THEN DV = DV+1;'
      '            END;'
      '            '
      '            IF (DETALL = '#39'S'#39') THEN SUSPEND;'
      '      END'
      ''
      '      MITJANA = (DL+DT+DC+DJ+DV)/5;'
      '      NHC = NULL;'
      '      FREQ = NULL;'
      '      ORIGEN = NULL;'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic2 = Espera
    Dic1Name = 'wDataBasics.Tractaments'
    Dic2Name = 'Espera'
    Abierta = False
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
    Top = 552
  end
  object Cues: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi cita'
        NombreDB = 'C_TRACTAMENT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'L'#237'nia'
        NombreDB = 'LINIA'
        Longitud = 10
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Accio'
        NombreDB = 'ACCIO'
        Longitud = 10
        Consulta = 'CUES.ACCIO'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Impressora'
        NombreDB = 'IMPRESSORA'
        Longitud = 10
        Consulta = 'CUES.IMPRESSORA'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'DATA'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Localitzador'
        NombreDB = 'LOCALITZADOR'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ubicaci'#243
        NombreDB = 'UBICACIO'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi resposta'
        NombreDB = 'C_RESPOSTA'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' resposta'
        NombreDB = 'N_RESPOSTA'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'METGE'
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
          'Codi cita'
          'L'#237'nia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'METGE'
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
        Nombre = 'CUES.ACCIO'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Accio')
        CopiarOrigen.Strings = (
          'Accio')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'tipuscodi='#39'CUES.ACCIO'#39
      end
      item
        Nombre = 'CUES.IMPRESSORA'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Impressora')
        CopiarOrigen.Strings = (
          'Impressora')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'CUES.IMPRESSORA'#39
      end>
    Nombre = 'Cues'
    NombreTabla = 'Cues'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi cita'
      'L'#237'nia'
      'Accio'
      'Impressora'
      'Data registre'
      'Localitzador'
      'Ubicaci'#243
      'Codi resposta'
      'Descripci'#243' resposta'
      'Usuari')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 560
    Top = 488
  end
  object LINIA: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'LINIA'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE LINIA INTEGER;'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '      SELECT MAX(LINIA) FROM CUES WHERE C_TRACTAMENT = NEW.C_TRA' +
        'CTAMENT INTO :LINIA;'
      '      IF (LINIA IS NULL) THEN LINIA = 0;'
      '      NEW.LINIA = LINIA + 1;'
      '   END'
      'END')
    Dic1 = Cues
    Dic1Name = 'LogCuaWB'
    Abierta = False
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
    Left = 618
    Top = 490
  end
  object ListWB: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ListWB'
    ForceNombreDB = False
    Body.Strings = (
      '(C_COORDINADOR VARCHAR(5))'
      'RETURNS (C_TRACTAMENT INTEGER,'
      '         C_HISTORIA   INTEGER,'
      '         NOMCOMPLET   VARCHAR(80),'
      '         DATA_INGRES  DATE,'
      '         PROGRAMAT    CHAR(5),'
      '         ARRIBADA     CHAR(5),'
      '         C_ACCIO      SMALLINT,'
      '         ACCIO        VARCHAR(40),'
      '         IMPRESSORA   VARCHAR(40),'
      '         DATA         DATE,'
      '         LOCALITZADOR VARCHAR(15),'
      '         UBICACIO     VARCHAR(40),'
      '         C_RESPOSTA   VARCHAR(5),'
      '         N_RESPOSTA   VARCHAR(250),'
      '         C_USUARI     VARCHAR(5)'
      '         )'
      'AS'
      '  DECLARE VARIABLE UBI VARCHAR(40);'
      'BEGIN'
      '      '
      
        '    FOR SELECT DISTINCT C.C_TRACTAMENT, T.C_HISTORIA, F.NOMCOMPL' +
        'ET, T.DATA_INGRES, E.HORA_PREINGRES, T.HORA'
      '    FROM CUES C'
      
        '    JOIN TRACTAMENTS  T on C.C_TRACTAMENT = T.C_TRACTAMENT AND T' +
        '.C_ESTATFAC <> 55'
      '    JOIN ESPERA       E on T.C_TRACTAMENT = E.C_TRACTAMENTDESTI'
      '    JOIN FILIACIO     F on T.C_HISTORIA = F.NUM_HIST'
      '    WHERE T.DATA_INGRES = "TODAY"'
      '    AND   T.C_COORDINADOR = :C_COORDINADOR'
      '    ORDER BY T.DATA_INGRES, T.HORA, T.C_TRACTAMENT, C.LINIA'
      
        '    INTO :C_TRACTAMENT, :C_HISTORIA, :NOMCOMPLET, :DATA_INGRES, ' +
        ':PROGRAMAT, :ARRIBADA'
      '    DO BEGIN'
      
        '        SELECT LOCALITZADOR FROM CUES WHERE C_TRACTAMENT = :C_TR' +
        'ACTAMENT AND LOCALITZADOR IS NOT NULL ORDER BY LINIA DESC ROWS 1' +
        ' INTO :LOCALITZADOR;'
      '        '
      '        SELECT CC.N_CODI'
      '        FROM CUES C'
      
        '        JOIN CODICAMPS CC ON C.IMPRESSORA = CC.C_CODI AND CC.TIP' +
        'USCODI ='#39'CUES.IMPRESSORA'#39
      
        '        WHERE C.C_TRACTAMENT = :C_TRACTAMENT AND C.IMPRESSORA IS' +
        ' NOT NULL'
      '        ORDER BY C.LINIA'
      '        DESC ROWS 1'
      '        INTO :IMPRESSORA;'
      '        '
      
        '        SELECT UBICACIO     FROM CUES WHERE C_TRACTAMENT = :C_TR' +
        'ACTAMENT AND UBICACIO     IS NOT NULL ORDER BY LINIA      ROWS 1' +
        ' INTO :UBI;'
      '    '
      '        IF ((UBI IS NOT NULL) AND (UBI <> ""))'
      
        '        THEN SELECT C_CONSULTA || '#39' Porta '#39' || C_PORTA FROM PORT' +
        'ES WHERE QMATIC_SERVICEPOINT = :UBI INTO :UBICACIO;'
      '        ELSE UBICACIO = NULL;'
      '    '
      
        '        SELECT CC.N_CODI, C.ACCIO, C.DATA, C.C_RESPOSTA, C.N_RES' +
        'POSTA, C.C_USUARI'
      '        FROM CUES C'
      
        '        JOIN CODICAMPS CC ON C.ACCIO = CC.C_CODI AND CC.TIPUSCOD' +
        'I = '#39'CUES.ACCIO'#39
      '        WHERE C.C_TRACTAMENT = :C_TRACTAMENT  AND C.ACCIO <> 11'
      '        ORDER BY C.LINIA DESC'
      '        ROWS 1'
      
        '        INTO :ACCIO, :C_ACCIO, :DATA, :C_RESPOSTA, :N_RESPOSTA, ' +
        ':C_USUARI;'
      ''
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = Cues
    Dic1Name = 'LogCuaWB'
    Abierta = False
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
    Left = 672
    Top = 488
  end
  object ExportaWB: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ExportaWB'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_TRACT      INTEGER,'
      '         DINSERT      DATE,'
      '         DCRIDAT      DATE,'
      '         DINICI       DATE,'
      '         DVISITAT     DATE,'
      '         DPREINGR     DATE,'
      '         HPREINGR     VARCHAR(5),'
      '         ESTAT_QM     SMALLINT'
      '         )'
      'AS'
      '  DECLARE VARIABLE ACCIO SMALLINT;'
      '  DECLARE VARIABLE DATA  DATE;'
      'BEGIN'
      '    ESTAT_QM=0;'
      '        '
      
        '    FOR SELECT DISTINCT C.C_TRACTAMENT, E.DATA_PREINGRES, E.HORA' +
        '_PREINGRES'
      '    FROM CUES C'
      
        '    JOIN TRACTAMENTS  T on C.C_TRACTAMENT = T.C_TRACTAMENT AND T' +
        '.C_ESTATFAC <> 55'
      '    JOIN ESPERA       E on T.C_TRACTAMENT = E.C_TRACTAMENTDESTI'
      '    ORDER BY C.C_TRACTAMENT'
      '    INTO :C_TRACT, :DPREINGR, :HPREINGR'
      '    DO BEGIN'
      '        DINSERT = NULL; DCRIDAT = NULL; DVISITAT = NULL;'
      '    '
      '        FOR SELECT ACCIO, MAX(DATA)'
      '        FROM CUES'
      '        WHERE C_TRACTAMENT = :C_TRACT'
      '        GROUP BY ACCIO'
      '        INTO :ACCIO, :DATA'
      '        DO BEGIN'
      '            IF      (ACCIO = 1) THEN DINSERT  = DATA;'
      '            ELSE IF (ACCIO = 2) THEN DCRIDAT  = DATA;'
      '            ELSE IF (ACCIO = 3) THEN DINICI   = DATA;'
      '            ELSE IF (ACCIO = 4) THEN DVISITAT = DATA;'
      '            ELSE IF (ACCIO = 9) THEN'
      '                 BEGIN'
      '                     IF (DATA > DCRIDAT)   THEN DCRIDAT  = NULL;'
      '                     IF (DATA > DINICI)    THEN DINICI   = NULL;'
      '                     IF (DATA > DVISITAT)  THEN DVISITAT = NULL;'
      '                 END;'
      '        END;'
      ''
      '        SUSPEND;'
      '    END;'
      'END')
    Dic1 = Cues
    Dic1Name = 'LogCuaWB'
    Abierta = False
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
    Left = 672
    Top = 544
  end
  object P_2014TIRprevistos: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = '2014TIRprevistos'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS (COMPTA SMALLINT,'
      '         COS VARCHAR(30000))'
      'AS'
      '  DECLARE VARIABLE Avui           DATE;'
      '  DECLARE VARIABLE DillunsQueVe   DATE;'
      '  DECLARE VARIABLE NHC            INTEGER;'
      '  DECLARE VARIABLE NomComplet     VARCHAR(100);'
      '  DECLARE VARIABLE Data_Preingres DATE;'
      '  DECLARE VARIABLE C_Coord        VARCHAR(5);'
      'BEGIN'
      ''
      '  COMPTA = 0;'
      '  COS = '#39#39';'
      ''
      '  Avui = "TODAY";'
      '  DillunsQueVe = Avui + 8 - F_DiaDeLaSemana(Avui);'
      ''
      
        '  FOR SELECT DISTINCT E.C_HISTORIA, E.NOMCOMPLET, E.DATA_PREINGR' +
        'ES, E.C_COORDINADOR'
      '      FROM ESPERA E'
      
        '      JOIN DRETSMOTIU D ON E.C_MOTIU = D.C_MOTIU AND D.C_DRET = ' +
        #39'X1'#39
      
        '      LEFT OUTER JOIN TRACTAMENTS T ON E.C_HISTORIA = T.C_HISTOR' +
        'IA'
      
        '                                   AND T.C_PRESTACIO IN ('#39'1004'#39',' +
        ' '#39'2014'#39')'
      
        '                                   AND (T.DATA_ALTA >= E.DATA_PR' +
        'EINGRES -30 OR T.DATA_ALTA IS NULL)'
      
        '      LEFT OUTER JOIN DRETSMOTIU DT ON T.C_MOTIU = DT.C_MOTIU AN' +
        'D DT.C_DRET = '#39'X1'#39
      '      WHERE E.C_PRESTACIO = '#39'2014'#39
      '      AND E.DATA_PREINGRES >= :DillunsQueVe'
      '      AND E.DATA_PREINGRES <= :DillunsQueVe + 5'
      '      AND E.EXCLOS = '#39'N'#39
      '      AND E.C_ESTAT < 90'
      '      AND DT.C_DRET IS NULL'
      '      INTO :NHC, :NomComplet, :Data_Preingres, :C_Coord'
      '  DO BEGIN'
      ''
      
        '      COS = COS || '#39'  - '#39' || NHC || '#39' - '#39' || NomComplet || '#39' (Da' +
        'ta prevista: '#39' || F_DateToStr(Data_Preingres) || '#39', Coord.: '#39' ||' +
        ' C_Coord || '#39')'#39' ||F_NLine();'
      ''
      '      COMPTA = COMPTA + 1;'
      '  END;'
      ''
      
        '  IF (COS <> '#39#39') THEN COS = '#39'Pacients que inicien tractament amb' +
        'ulatori TIR la setmana vinent i que no tenen tractament TIR prev' +
        'i el darrer mes:'#39' || F_NLine() || F_NLine() || COS;'
      ''
      '  IF ((EXECUTA = '#39'S'#39') AND (COS <> '#39#39'))'
      '  THEN'
      
        '      INSERT INTO AVISOS_CORREU (ID_AVIS, DATA_GENERAT, ASSUMPTE' +
        ', COS)'
      
        '      VALUES(57, "NOW", '#39'Av'#237's d'#39#39'AMBULATORIS TIR (CE) PREVISTOS ' +
        'per la setmana que ve'#39', :COS);'
      ''
      '  SUSPEND;'
      '  '
      'END')
    Dic1 = Espera
    Dic1Name = 'Espera'
    Abierta = False
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
    Left = 808
    Top = 312
  end
  object P_AltesEfectives: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AltesEfectives'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  DATA_ULTIM DATE,'
      '  COS        VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_TRACTAMENT  INTEGER;'
      '      DECLARE VARIABLE C_HISTORIA    INTEGER;'
      '      DECLARE VARIABLE NOMCOMPLET    VARCHAR(100);'
      '      DECLARE VARIABLE DATA_REGISTRE DATE;'
      '      DECLARE VARIABLE USUARI        VARCHAR(100);'
      '      DECLARE VARIABLE DATA_ALTA     DATE;'
      '      DECLARE VARIABLE COORDINADOR   VARCHAR(100);'
      '      DECLARE VARIABLE C_ANOTACIO    INTEGER;'
      '      DECLARE VARIABLE ANOTACIO      VARCHAR(5000);'
      '      DECLARE VARIABLE ASSUMPTE      VARCHAR(200);'
      'BEGIN'
      
        '      /* Informem Admissions de les altes donades per Infermeria' +
        ' a trav'#233's de l'#39'anotaci'#243' d'#39'alta efectiva. */'
      
        '      /* Reportem '#250'nicament l'#39#250'ltim registre de cada tractament,' +
        ' nom'#233's si est'#224' fet per infermeria i nom'#233's si no '#233's anul'#183'laci'#243' d'#39 +
        'alta. */'
      
        '      /* Ho fem cada nit (programador IB) i, per si algun dia no' +
        ' s'#39'ha enviat, revisem tots els registres des de l'#39#250'ltim correu g' +
        'enerat. */'
      ''
      '      /* Busquem quan es va generar l'#39#250'ltim av'#237's */'
      
        '      SELECT MAX(DATA_GENERAT) FROM AVISOS_CORREU WHERE ID_AVIS ' +
        '= 62 INTO :DATA_ULTIM;'
      ''
      '      IF (DATA_ULTIM IS NULL) THEN DATA_ULTIM = "YESTERDAY";'
      '      '
      '      COS = '#39#39';'
      '      '
      
        '      /* Recorrem els tractaments de LogAltes amb registres prov' +
        'inents d'#39'anotaci'#243' d'#39'alta efectiva i posteriors a la data d'#39#250'ltim' +
        'a generaci'#243' de l'#39'av'#237's */'
      '      FOR SELECT DISTINCT C_TRACTAMENT'
      '          FROM   LOGALTES'
      '          WHERE  DATA_REGISTRE >= :DATA_ULTIM'
      '          AND    C_ANOTACIO IS NOT NULL'
      '          INTO  :C_TRACTAMENT'
      '      DO BEGIN'
      '            C_HISTORIA = NULL;'
      '            NOMCOMPLET = NULL;'
      '            DATA_REGISTRE = NULL;'
      '            USUARI = NULL;'
      '            DATA_ALTA = NULL;'
      '            COORDINADOR = NULL;'
      '      '
      
        '            /* Ara busquem l'#39#250'ltim registre de log altes d'#39'aques' +
        't tractament */'
      
        '            SELECT T.C_HISTORIA, F.NOMCOMPLET, A.DATA_REGISTRE, ' +
        'I.NOMSENCER, A.DATA_ALTA, F_LRTrim(T.C_COORDINADOR)||'#39' - '#39'||M.NO' +
        'MSENCER, C_ANOTACIO'
      '            FROM   LOGALTES A'
      
        '            JOIN   TRACTAMENTS T ON T.C_TRACTAMENT = A.C_TRACTAM' +
        'ENT'
      '            JOIN   FILIACIO    F ON F.NUM_HIST = T.C_HISTORIA'
      '            JOIN   METGES      I ON I.CODI = A.C_USUARI'
      '            JOIN   METGES      M ON M.CODI = T.C_COORDINADOR'
      '            WHERE  A.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    A.DATA_REGISTRE >= :DATA_ULTIM'
      '            ORDER  BY DATA_REGISTRE DESC'
      '            ROWS   1'
      
        '            INTO  :C_HISTORIA, :NOMCOMPLET, :DATA_REGISTRE, :USU' +
        'ARI, :DATA_ALTA, :COORDINADOR, :C_ANOTACIO;'
      '            '
      
        '            /* Si l'#39#250'ltim registre de LogAltes '#233's una alta regis' +
        'trada des de l'#39'anotaci'#243' d'#39'alta efectiva, l'#39'afegim a l'#39'informe */'
      
        '            IF ((DATA_ALTA IS NOT NULL) AND (C_ANOTACIO IS NOT N' +
        'ULL)) THEN'
      '            BEGIN'
      
        '                  SELECT ANOTACIO FROM HISTORIA WHERE C_ANOTACIO' +
        ' = :C_ANOTACIO INTO :ANOTACIO;'
      '                  '
      '                  COS = COS || F_NLine() || F_NLine() ||'
      
        '                        '#39'   * '#39' || C_HISTORIA ||'#39' - '#39'|| NOMCOMPL' +
        'ET || '#39' (coordinador: '#39' || COORDINADOR || '#39') '#39' || F_NLine() ||'
      
        '                        '#39'     Alta el dia '#39' || F_DateToStr(DATA_' +
        'ALTA) || '#39' registrada per '#39' || USUARI || '#39' el dia '#39' || F_DateToS' +
        'tr(DATA_REGISTRE) || '#39' a les '#39' || F_HoraToStr(DATA_REGISTRE) || ' +
        #39'.'#39' || F_NLine() ||'
      '                        '#39'     Anotaci'#243': '#39'|| ANOTACIO;'
      '            END'
      '      END'
      '      '
      
        '      COS = '#39'Altes registrades per infermeria des del dia '#39' || F' +
        '_DateTimeToStr(DATA_ULTIM) || COS;'
      '      '
      '      IF ((EXECUTA = '#39'S'#39') AND (COS <> '#39#39')) THEN'
      '      BEGIN'
      
        '            ASSUMPTE = '#39'Av'#237's: Resum d'#39#39'ALTES HOSPITAL'#192'RIES regis' +
        'trades per Infermeria'#39';'
      '            '
      
        '            INSERT INTO AVISOS_CORREU (ID_AVIS, DATA_GENERAT, AS' +
        'SUMPTE, COS_LLARG)'
      '            VALUES (62, "NOW", :ASSUMPTE, :COS);'
      '      END;'
      '            '
      '      SUSPEND;'
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
    Left = 360
    Top = 316
  end
  object P_CNIFinalitzats: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'CNIFinalitzats'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  DATA_ULTIM DATE,'
      '  COS        VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA        INTEGER;'
      '      DECLARE VARIABLE NOMCOMPLET        VARCHAR(100);'
      '      DECLARE VARIABLE DATA_FINALITZACIO DATE;'
      '      DECLARE VARIABLE USUARI            VARCHAR(100);'
      '      DECLARE VARIABLE ASSUMPTE          VARCHAR(100);'
      '      DECLARE VARIABLE ID_INFORME        INTEGER;'
      '      DECLARE VARIABLE PROCEDIMENT       VARCHAR(250);'
      '      DECLARE VARIABLE MODALITAT         VARCHAR(250);'
      'BEGIN'
      
        '      /* Informem Admissions dels '#250'ltims consentiments informats' +
        ' finalitzats. */'
      
        '      /* Ho fem cada nit (programador IB) i, per si algun dia no' +
        ' s'#39'ha enviat, revisem tots els registres des de l'#39#250'ltim correu g' +
        'enerat. */'
      ''
      '      /* Busquem quan es va generar l'#39#250'ltim av'#237's */'
      
        '      SELECT MAX(DATA_GENERAT) FROM AVISOS_CORREU WHERE ID_AVIS ' +
        '= 66 INTO :DATA_ULTIM;'
      ''
      '      IF (DATA_ULTIM IS NULL) THEN DATA_ULTIM = "YESTERDAY";'
      '      '
      '      COS = '#39#39';'
      '      '
      
        '      /* Recorrem els tractaments de LogAltes amb registres prov' +
        'inents d'#39'anotaci'#243' d'#39'alta efectiva i posteriors a la data d'#39#250'ltim' +
        'a generaci'#243' de l'#39'av'#237's */'
      
        '      FOR SELECT DISTINCT I.C_HISTORIA, F.NOMCOMPLET, R.DATA, M.' +
        'NOMSENCER, I.ID_INFORME'
      '          FROM INFORMES I'
      
        '          JOIN INFORMES_REG R ON I.ID_INFORME = R.ID_INFORME AND' +
        ' R.ACCIO = 6'
      
        '          JOIN INFORMES_PLANTILLES P ON P.C_TIPUS='#39'CNI'#39' AND I.C_' +
        'PLANTILLA = P.C_PLANTILLA AND P.TIPUSECB = 2'
      '          JOIN FILIACIO F ON I.C_HISTORIA = F.NUM_HIST'
      '          JOIN VMETGES M ON I.C_USUARI = M.CODI'
      '          WHERE I.C_TIPUS='#39'CNI'#39' AND I.C_ESTAT = 10'
      '          AND R.DATA >= :DATA_ULTIM'
      
        '          INTO  :C_HISTORIA, :NOMCOMPLET, :DATA_FINALITZACIO, :U' +
        'SUARI, :ID_INFORME'
      '      DO BEGIN'
      '            PROCEDIMENT = '#39#39'; MODALITAT ='#39#39';'
      '      '
      
        '            SELECT CAST(F_LEFT(TEXT, 250) AS VARCHAR(250)) FROM ' +
        'INFORMES_LIN'
      '            WHERE ID_INFORME = :ID_INFORME'
      '            AND   C_ITEM = 561'
      '            INTO  :PROCEDIMENT;'
      ''
      
        '            SELECT CAST(F_LEFT(TEXT, 250) AS VARCHAR(250)) FROM ' +
        'INFORMES_LIN'
      '            WHERE ID_INFORME = :ID_INFORME'
      '            AND   C_ITEM = 550'
      '            INTO  :MODALITAT;'
      '      '
      '            COS = COS || F_NLine() || F_NLine() ||'
      
        '                  '#39'   * '#39' || C_HISTORIA ||'#39' - '#39'|| NOMCOMPLET || ' +
        'F_NLine() ||'
      
        '                  '#39'     CNI realitzat per '#39' || USUARI || '#39' final' +
        'itzat el dia '#39' || F_DateToStr(DATA_FINALITZACIO) || '#39' a les '#39' ||' +
        ' F_HoraToStr(DATA_FINALITZACIO) || '#39'.'#39';'
      ''
      
        '            IF (PROCEDIMENT <> '#39#39') THEN COS = COS || F_NLine() |' +
        '| '#39'     Procediment: '#39' || PROCEDIMENT;'
      
        '            IF (MODALITAT   <> '#39#39') THEN COS = COS || F_NLine() |' +
        '| '#39'     Modalitat: '#39'   || MODALITAT;'
      '      END'
      ''
      '      '
      '      IF ((EXECUTA = '#39'S'#39') AND (COS <> '#39#39')) THEN'
      '      BEGIN'
      
        '            COS = '#39'Consentiments Informats finalitzats des del d' +
        'ia '#39' || F_DateTimeToStr(DATA_ULTIM) || COS;'
      
        '            ASSUMPTE = '#39'Av'#237's: Resum de CONSENTIMENTS INFORMATS f' +
        'inalitzats'#39';'
      '            '
      
        '            INSERT INTO AVISOS_CORREU (ID_AVIS, DATA_GENERAT, AS' +
        'SUMPTE, COS_LLARG)'
      '            VALUES (66, "NOW", :ASSUMPTE, :COS);'
      '      END;'
      '            '
      '      SUSPEND;'
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic1Name = 'Informes'
    Dic2Name = 'Informes_Reg'
    Abierta = False
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
    Left = 456
    Top = 316
  end
  object EsperaProgramada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EsperaProgramada'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  C_ESPERA     INTEGER,'
      '  C_TRACTAMENT INTEGER'
      ')'
      'AS'
      'BEGIN'
      
        '      /* Actualitzar ESPERA.C_TRACTAMENTORIGEN amb el C_TRACTAME' +
        'NT de TRACTAMENTS amb C_ESPERA_PROGRAMADA=C_ESPERA de les prepro' +
        'gramaci'#243'n (F8) pendents */'
      ''
      '      FOR SELECT E.C_ESPERA, T.C_TRACTAMENT'
      '      FROM ESPERA E'
      '      JOIN TRACTAMENTS T ON E.C_ESPERA = T.C_ESPERAPROGRAMADA'
      '      WHERE E.C_ESTAT BETWEEN 10 AND 19'
      '      AND   E.EXCLOS = '#39'N'#39
      '      AND   E.C_TRACTAMENTORIGEN IS NULL'
      '      ORDER BY E.C_ESPERA'
      '      INTO :C_ESPERA, :C_TRACTAMENT'
      '      DO BEGIN'
      '          IF (EXECUTA = '#39'S'#39') THEN'
      '          BEGIN'
      
        '              UPDATE ESPERA SET C_TRACTAMENTORIGEN = :C_TRACTAME' +
        'NT'
      '              WHERE C_ESPERA = :C_ESPERA;'
      '          END;'
      '      '
      '          SUSPEND;'
      '      END;'
      ''
      'END')
    Dic1 = wDataBasics.Tractaments
    Dic2 = Espera
    Dic1Name = 'Tractaments'
    Dic2Name = 'Espera'
    Abierta = False
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
    Left = 362
    Top = 370
  end
end
