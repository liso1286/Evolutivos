object wDataInformes: TwDataInformes
  OldCreateOrder = False
  Left = 260
  Top = 212
  Height = 631
  Width = 1568
  object Informes_Reg: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'ID Informe'
        NombreDB = 'ID_Informe'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'informe'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'L'#237'nia'
        NombreDB = 'Linia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'ID Informe'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Acci'#243
        NombreDB = 'Accio'
        Longitud = 2
        Consulta = 'accio'
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
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
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari'
        NombreDB = 'Comentari'
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
          'ID Informe'
          'L'#237'nia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'informe'
        NombreDB = 'informe'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Informe')
        Tipo = tiForaneo
        ForaneoDic = Informes
        ForaneoCampos.Strings = (
          'ID Informe')
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
        Nombre = 'accio'
        NombreDB = 'accio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Informe'
          'Acci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'iddata'
        NombreDB = 'iddata'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Informe'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'informe'
        Master = Informes
        BuscaOrigen.Strings = (
          'ID Informe')
        CopiarOrigen.Strings = (
          'ID Informe')
        CopiarMaster.Strings = (
          'ID Informe')
        BuscaMaster.Strings = (
          'ID Informe')
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
        Nombre = 'accio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Acci'#243)
        CopiarOrigen.Strings = (
          'Acci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "INFORMES.ACCIO"'
      end>
    Nombre = 'Informes Registres'
    NombreTabla = 'Informes_Reg'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID Informe'
      'L'#237'nia'
      'Acci'#243
      'Usuari'
      'Data')
    IndiceVer = 'informe'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 216
    Top = 144
  end
  object Informes_Tipus: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCodigo
        Nombre = 'Codi tipus'
        NombreDB = 'C_Tipus'
        Longitud = 3
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' tipus'
        NombreDB = 'N_Tipus'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Centre'
        NombreDB = 'Centre'
        Longitud = 1
        Consulta = 'centre'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'H'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Sol'#183'licitable'
        NombreDB = 'Solicitable'
        Longitud = 1
        Consulta = 'solicitable'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
        Comentario = 
          'Si es pot sol'#183'licitar (o, si es genera autom'#224'ticament des d'#8217'algu' +
          'n proc'#233's)'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Anul'#183'lable'
        NombreDB = 'Anulable'
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
        Consulta = 'ordre'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dret prestaci'#243' alta'
        NombreDB = 'C_DretPresta'
        Longitud = 10
        Consulta = 'dretpresta'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'generaci'#243' autom'#224'tica d'#39'informe d'#39'alta per a tractaments d'#39'aquest' +
          'es prestacions'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Dret motiu alta'
        NombreDB = 'C_DretMotiu'
        Longitud = 10
        Consulta = 'dretmotiu'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'generaci'#243' autom'#224'tica d'#39'informe d'#39'alta per a tractaments amb aque' +
          'sts motius'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Conjunt'
        NombreDB = 'Conjunt'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Si hi contribueixen diferents autors'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Bolca anotaci'#243' al Curs'
        NombreDB = 'Bolca_Anota'
        Longitud = 1
        Consulta = 'bolcaanota'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 
          'bolca els '#237'tems introdu'#239'ts com a anotaci'#243' al Curs Cl'#237'nic (s'#237', no' +
          ', opcional)'
        ValidChars = 'SNO'
      end
      item
        Aplica = kcSiNo
        Nombre = 'S'#39'ha de corregir'
        NombreDB = 'Corregir'
        Longitud = 1
        Consulta = 'corregir'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'Indica si ha de ser corregit i per qui, abans de ser validat'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Validaci'#243' autom'#224'tica'
        NombreDB = 'ValidacioAuto'
        Longitud = 1
        Consulta = 'validar'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 
          'S: ha de quedar validat directament en ser generat, P: preguntar' +
          ' (dispara di'#224'leg de validaci'#243'), N: no (manual des de pendents)'
        ValidChars = 'SNP'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Autors a la signatura final'
        NombreDB = 'Autors'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 
          'Si s'#39'han d'#39'inserir els noms dels autors al final del document (n' +
          'om'#233's per a informes conjunts)'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Bolcar a Interbase'
        NombreDB = 'Bolca_IB'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'bolca informe validat com un rtf a Tractaments.InformeAlta'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'PDF directe'
        NombreDB = 'PDFdirecte'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'si es converteix l'#39'informe en pdf autom'#224'ticament en ser validat'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Gestionat per'
        NombreDB = 'Gestionat'
        Longitud = 2
        Consulta = 'gestionat'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 
          'Quina '#224'rea gestiona, finalitza (publica) i entrega l'#39'informe. "F' +
          'inalitzaci'#243' autom'#224'tica" => s'#39'imprimeix directament i es posa a I' +
          'nformesImprimir'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Impressi'#243' autom'#224'tica'
        NombreDB = 'ImpressioAuto'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'indica si en validar l'#39'informe s'#39'ha d'#39'imprimir autom'#224'ticament'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Publicar a l'#39'HC3'
        NombreDB = 'Publicar_HC3'
        Longitud = 1
        Consulta = 'publicar'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'P: preguntar-ho en validar-lo'
        ValidChars = 'SNP'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Publicar a l'#39'APP'
        NombreDB = 'Publicar_APP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Utilitza diagn'#242'stic a l'#39'alta'
        NombreDB = 'Diagnostic_Alta'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 
          'Si en publicar s'#39'ha d'#39'agafar el diagn'#242'stic a l'#39'alta (S) del trac' +
          'tament o el d'#39'ingr'#233's (N)'
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
        ValidChars = 'BN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ruta inici'
        NombreDB = 'Ruta_Inici'
        Longitud = 20
        Consulta = 'ruta1'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'carpeta on hi ha l'#39'informe en curs'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data arxiu'
        NombreDB = 'Data_Arxiu'
        Longitud = 2
        Consulta = 'data'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '1'
        Comentario = 
          'si s'#39'agafa la data d'#39'alta o la data de validaci'#243' per confegir el' +
          ' nom de l'#39'arxiu'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ruta fi'
        NombreDB = 'Ruta_Fi'
        Longitud = 20
        Consulta = 'ruta2'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'carpeta on va a parar l'#39'informe finalitzat'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Bolca a plantilla final'
        NombreDB = 'PlantillaFinal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Elimina apartats buits'
        NombreDB = 'EliminaBuits'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 
          'En bolcar els '#237'tems al Word, elimina els apartats que han quedat' +
          ' buits'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Publicar a UNICAS'
        NombreDB = 'Publicar_UNC'
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
          'Codi tipus')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'alfabetic'
        NombreDB = 'alfabetic'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Descripci'#243' tipus')
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
      end
      item
        Nombre = 'solicit'
        NombreDB = 'solicit'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Sol'#183'licitable')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ruta'
        NombreDB = 'ruta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Ruta fi')
        Tipo = tiForaneo
        ForaneoDic = wDataConfig.Directoris
        ForaneoCampos.Strings = (
          'Nom')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'centre'
        NombreDB = 'centre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Centre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'conjunt'
        NombreDB = 'conjunt'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Conjunt')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'corregible'
        NombreDB = 'corregible'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'S'#39'ha de corregir')
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
        Nombre = 'dretpresta'
        NombreDB = 'dretpresta'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Dret prestaci'#243' alta')
        Tipo = tiForaneo
        ForaneoDic = wDataConfig.Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'dretmotiu'
        NombreDB = 'dretmotiu'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Dret motiu alta')
        Tipo = tiForaneo
        ForaneoDic = wDataConfig.Drets
        ForaneoCampos.Strings = (
          'C'#243'dig de Dret')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'gestionat'
        NombreDB = 'gestionat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Gestionat per')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'validaauto'
        NombreDB = 'validaauto'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Validaci'#243' autom'#224'tica')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'printauto'
        NombreDB = 'printauto'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Impressi'#243' autom'#224'tica')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'ruta1'
        Master = wDataConfig.Directoris
        BuscaOrigen.Strings = (
          'Ruta inici')
        CopiarOrigen.Strings = (
          'Ruta inici')
        CopiarMaster.Strings = (
          'Nom')
        BuscaMaster.Strings = (
          'Nom')
      end
      item
        Nombre = 'data'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Data arxiu')
        CopiarOrigen.Strings = (
          'Data arxiu')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.DATA'#39
      end
      item
        Nombre = 'ruta2'
        Master = wDataConfig.Directoris
        BuscaOrigen.Strings = (
          'Ruta fi')
        CopiarOrigen.Strings = (
          'Ruta fi')
        CopiarMaster.Strings = (
          'Nom')
        BuscaMaster.Strings = (
          'Nom')
      end
      item
        Nombre = 'corregir'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'S'#39'ha de corregir')
        CopiarOrigen.Strings = (
          'S'#39'ha de corregir')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.CORREGIR'#39
      end
      item
        Nombre = 'gestionat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Gestionat per')
        CopiarOrigen.Strings = (
          'Gestionat per')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.GESTIONA'#39
      end
      item
        Nombre = 'solicitable'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Sol'#183'licitable')
        CopiarOrigen.Strings = (
          'Sol'#183'licitable')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.SOLICITABLE'#39
      end
      item
        Nombre = 'publicar'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Publicar a l'#39'HC3')
        CopiarOrigen.Strings = (
          'Publicar a l'#39'HC3')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.PUBLICARHC3'#39
      end
      item
        Nombre = 'centre'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Centre')
        CopiarOrigen.Strings = (
          'Centre')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.CENTRE'#39
      end
      item
        Nombre = 'dretpresta'
        Master = wDataConfig.Drets
        BuscaOrigen.Strings = (
          'Dret prestaci'#243' alta')
        CopiarOrigen.Strings = (
          'Dret prestaci'#243' alta')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'C_DRET starting with '#39'P'#39
      end
      item
        Nombre = 'dretmotiu'
        Master = wDataConfig.Drets
        BuscaOrigen.Strings = (
          'Dret motiu alta')
        CopiarOrigen.Strings = (
          'Dret motiu alta')
        CopiarMaster.Strings = (
          'C'#243'dig de Dret')
        BuscaMaster.Strings = (
          'C'#243'dig de Dret')
        WhereFiltro = 'C_DRET starting with '#39'X'#39
      end
      item
        Nombre = 'ordre'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Ordre')
        CopiarOrigen.Strings = (
          'Ordre')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.ORDRE'#39
      end
      item
        Nombre = 'bolcaanota'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Bolca anotaci'#243' al Curs')
        CopiarOrigen.Strings = (
          'Bolca anotaci'#243' al Curs')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.BOLCAANOTA'#39
      end
      item
        Nombre = 'validar'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Validaci'#243' autom'#224'tica')
        CopiarOrigen.Strings = (
          'Validaci'#243' autom'#224'tica')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.VALIDAR'#39
      end>
    Nombre = 'Informes Tipus'
    NombreTabla = 'Informes_Tipus'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi tipus'
      'Descripci'#243' tipus'
      'Centre'
      'Sol'#183'licitable'
      'Ordre'
      'Conjunt'
      'S'#39'ha de corregir'
      'Validaci'#243' autom'#224'tica'
      'Impressi'#243' autom'#224'tica'
      'Gestionat per'
      'Publicar a l'#39'HC3'
      'Utilitza diagn'#242'stic a l'#39'alta'
      'Publicar a l'#39'APP')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 44
    Top = 24
  end
  object Informes_Plantilles: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Codi Plantilla'
        NombreDB = 'C_Plantilla'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_INFORMESPLANTILLES'
        Comentario = 
          'per si un mateix tipus d'#39'informe t'#233' diferents plantilles en func' +
          'i'#243' d'#39'altres par'#224'metres (unitat m'#232'dica del pacient, per exemple)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Descripci'#243' plantilla'
        NombreDB = 'N_Plantilla'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Codi Tipus'
        NombreDB = 'C_Tipus'
        Longitud = 3
        Consulta = 'Tipus'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Idioma'
        NombreDB = 'Idioma'
        Longitud = 15
        MaskDisplay = '#,##0;; '
        Consulta = 'idioma'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Arxiu'
        NombreDB = 'Arxiu'
        Longitud = 100
        zType = tcIB_Varchar
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
        Aplica = kcMODELS
        Nombre = 'Tipus ECB'
        NombreDB = 'TipusECB'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'determina quina plantilla seleccionar segons el tipus d'#39'ECB intr' +
          'odu'#239't'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Plantilla')
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
          'Codi Tipus')
        Tipo = tiForaneo
        ForaneoDic = Informes_Tipus
        ForaneoCampos.Strings = (
          'Codi tipus')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'idioma'
        NombreDB = 'idioma'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Idioma')
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
        Nombre = 'tipusecb'
        NombreDB = 'tipusecb'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi Tipus'
          'Tipus ECB')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Tipus'
        Master = Informes_Tipus
        BuscaOrigen.Strings = (
          'Codi Tipus')
        CopiarOrigen.Strings = (
          'Codi Tipus')
        CopiarMaster.Strings = (
          'Codi tipus')
        BuscaMaster.Strings = (
          'Codi tipus')
      end
      item
        Nombre = 'idioma'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Idioma')
        CopiarOrigen.Strings = (
          'Idioma')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'IDIOMA'#39
      end>
    Nombre = 'Informes Plantilles'
    NombreTabla = 'Informes_Plantilles'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi Plantilla'
      'Descripci'#243' plantilla'
      'Codi Tipus'
      'Idioma'
      'Arxiu'
      'Tipus ECB')
    IndiceVer = 'Tipus'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 448
    Top = 24
  end
  object Informes: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'ID Informe'
        NombreDB = 'ID_Informe'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_Informes'
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
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Tipus'
        NombreDB = 'C_Tipus'
        Longitud = 3
        Consulta = 'tipus'
        zType = tcIB_Char
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_Usuari'
        Longitud = 5
        Consulta = 'usuari'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'a qui es demana l'#39'informe'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Sol'#183'licitant'
        NombreDB = 'Solicitant'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Parentiu'
        NombreDB = 'Parentiu'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'del sol'#183'licitant respecte del pacient'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus document'
        NombreDB = 'T_DOC'
        Longitud = 1
        Consulta = 'tdoc'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'del sol'#183'licitant'
      end
      item
        Aplica = kcCaracter
        Nombre = 'N'#250'm. Document'
        NombreDB = 'NUM_DOC'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'del sol'#183'licitant'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Forma d'#39'entrega'
        NombreDB = 'C_Entrega'
        Longitud = 2
        Consulta = 'entrega'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Contacte'
        NombreDB = 'Contacte'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fax, email, tel'#232'fon del sol'#183'licitant, per a fer l'#39'entrega'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Urgent'
        NombreDB = 'Urgent'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari'
        NombreDB = 'Comentari'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
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
        Aplica = kcCaracter
        Nombre = 'Arxiu'
        NombreDB = 'Arxiu'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi de plantilla'
        NombreDB = 'C_Plantilla'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'plantilla'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Gestionat per'
        NombreDB = 'Gestionat'
        Longitud = 2
        Consulta = 'gestionat'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Anotaci'#243
        NombreDB = 'C_Anotacio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'anota'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Publicar a l'#39'HC3'
        NombreDB = 'Publicar_HC3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 
          'si el tipus sigui publicar_HC3 = "N" per'#242' es vol publicar aquest' +
          ' informe concret'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Versi'#243
        NombreDB = 'Versio'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        zDefault = '1'
        Comentario = 
          'versionat en cas de canvis posteriors a la finalitzaci'#243' de l'#39'inf' +
          'orme'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Idioma'
        NombreDB = 'Idioma'
        Longitud = 2
        Consulta = 'idioma'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'idioma de l'#39'informe'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tipus plantilla'
        NombreDB = 'Tipus_Plantilla'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Per filtrar el formulari d'#39#237'tems si cal'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Informe')
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
        Nombre = 'tipus'
        NombreDB = 'tipus'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus')
        Tipo = tiForaneo
        ForaneoDic = Informes_Tipus
        ForaneoCampos.Strings = (
          'Codi tipus')
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
          'Tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'plantilla'
        NombreDB = 'plantilla'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi de plantilla')
        Tipo = tiForaneo
        ForaneoDic = Informes_Plantilles
        ForaneoCampos.Strings = (
          'Codi Plantilla')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'anota'
        NombreDB = 'anota'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Anotaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataCurs.Historia
        ForaneoCampos.Strings = (
          'N'#186' Anotaci'#243)
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
        Nombre = 'tipus'
        Master = Informes_Tipus
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'Codi tipus')
        BuscaMaster.Strings = (
          'Codi tipus')
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
        Nombre = 'tdoc'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Tipus document')
        CopiarOrigen.Strings = (
          'Tipus document')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = "TIPUSDOCUMENT"'
      end
      item
        Nombre = 'entrega'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Forma d'#39'entrega')
        CopiarOrigen.Strings = (
          'Forma d'#39'entrega')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "INFORMES.ENTREGA"'
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
        WhereFiltro = 'TIPUSCODI = "INFORMES.ESTAT"'
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
        Nombre = 'plantilla'
        Master = Informes_Plantilles
        BuscaOrigen.Strings = (
          'Codi de plantilla')
        CopiarOrigen.Strings = (
          'Codi de plantilla')
        CopiarMaster.Strings = (
          'Codi Plantilla')
        BuscaMaster.Strings = (
          'Codi Plantilla')
      end
      item
        Nombre = 'gestionat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Gestionat per')
        CopiarOrigen.Strings = (
          'Gestionat per')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.GESTIONA'#39
      end
      item
        Nombre = 'anota'
        Master = wDataCurs.Historia
        BuscaOrigen.Strings = (
          'C Anotaci'#243)
        CopiarOrigen.Strings = (
          'C Anotaci'#243)
        CopiarMaster.Strings = (
          'N'#186' Anotaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Anotaci'#243)
      end
      item
        Nombre = 'idioma'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Idioma')
        CopiarOrigen.Strings = (
          'Idioma')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'IDIOMA'#39
      end>
    Nombre = 'Informes'
    NombreTabla = 'Informes'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID Informe'
      'N'#250'm. Hist.'
      'Tipus'
      'Usuari'
      'Urgent'
      'Estat'
      'Arxiu'
      'Publicar a l'#39'HC3')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 44
    Top = 144
  end
  object P_Plantilles_Omple: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Omple'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  C_PLANTILLA     INTEGER,'
      '  C_HISTORIA      INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      
        '  FASE            SMALLINT,    /* 1: s'#39'obre l'#39'informe per 1a veg' +
        'ada;'
      '                                  2: validaci'#243' de l'#39'informe;'
      
        '                                  3: obertura posterior de l'#39'inf' +
        'orme, es poden completar '#237'tems */'
      
        '  C_USUARI        VARCHAR(5),  /* per a la fase 2 '#233's el validado' +
        'r;'
      
        '                                  per a la fase 1 '#233's l'#39'usuari qu' +
        'e crea l'#39'informe */'
      '  ID_INFORME      INTEGER,'
      '  DATA_I          DATE,'
      '  DATA_F          DATE'
      ')'
      'RETURNS ('
      '  TAG          VARCHAR(15),'
      
        '  ORDRE        INTEGER,           /* ORDRE: Serveix per ordenar ' +
        'valors quan es retorna m'#233's d'#39'un registre per tag (p.ex: diagn'#242'st' +
        'ics o anotacions). */'
      
        '  VALOR        VARCHAR(30000),    /*        Tamb'#233' serveix per fe' +
        'r "InsertAfter" en comptes d'#39'un replace directe, ja que aquest '#250 +
        'ltim falla en cas de cadenes llargues. (Es fa per codi per Ordre' +
        ' < 0) */'
      '  C_ITEM       INTEGER,'
      '  COS          CHAR(1),'
      '  SQL_COMPROVA VARCHAR(255),'
      '  SQL_BOLCATGE VARCHAR(255),'
      '  IDIOMA       SMALLINT'
      ')'
      'AS'
      '      DECLARE VARIABLE TEXT          VARCHAR(30000);'
      '      DECLARE VARIABLE FT_ON         SMALLINT;'
      '      DECLARE VARIABLE C_TIPUS       VARCHAR(3);'
      '      DECLARE VARIABLE TIPUSECB      SMALLINT;'
      '      DECLARE VARIABLE NOM           VARCHAR(30);'
      '      DECLARE VARIABLE COGNOM1       VARCHAR(20);'
      '      DECLARE VARIABLE COGNOM2       VARCHAR(20);'
      '      DECLARE VARIABLE NOMCOMPLET    VARCHAR(80);'
      '      DECLARE VARIABLE COGNOMS       VARCHAR(50);'
      '      DECLARE VARIABLE DATA_NAIX     DATE;'
      '      DECLARE VARIABLE EDAT          INTEGER;'
      '      DECLARE VARIABLE SEXE          CHAR(1);'
      '      DECLARE VARIABLE ADRESA        VARCHAR(80);'
      '      DECLARE VARIABLE CODI_POSTAL   VARCHAR(5);'
      '      DECLARE VARIABLE POBLACIO      VARCHAR(50);'
      '      DECLARE VARIABLE PROVINCIA     VARCHAR(44);'
      '      DECLARE VARIABLE EMAIL         VARCHAR(60);'
      '      DECLARE VARIABLE TELEFON       VARCHAR(10);'
      '      DECLARE VARIABLE CIP           VARCHAR(14);'
      '      DECLARE VARIABLE CIP_AUT       VARCHAR(14);'
      '      DECLARE VARIABLE CIP_SNS       VARCHAR(16);'
      '      DECLARE VARIABLE DATA_LESIO    DATE;'
      '      DECLARE VARIABLE DIAG_NEURO    VARCHAR(40);'
      '      DECLARE VARIABLE ETIOLOGIA     VARCHAR(100);'
      '      DECLARE VARIABLE ALERGIES      VARCHAR(3000);'
      '      DECLARE VARIABLE ALERGIES_TOT  VARCHAR(3000);'
      '      DECLARE VARIABLE DATA_INGRES   DATE;'
      '      DECLARE VARIABLE HORA_INGRES   VARCHAR(5);'
      '      DECLARE VARIABLE DATA_PREALTA  DATE;'
      '      DECLARE VARIABLE DATA_ALTA     DATE;'
      '      DECLARE VARIABLE PROCEDENCIA   VARCHAR(70);'
      '      DECLARE VARIABLE LESIO         VARCHAR(40);'
      '      DECLARE VARIABLE DIAG          VARCHAR(40);'
      '      DECLARE VARIABLE DATA_SC       DATE;'
      '      DECLARE VARIABLE SOE           VARCHAR(12);'
      '      DECLARE VARIABLE T_DOC         CHAR(1);'
      '      DECLARE VARIABLE DNI           VARCHAR(9);'
      '      DECLARE VARIABLE ESTAT_CIVIL   VARCHAR(2);'
      '      DECLARE VARIABLE LLOC_NAIX     VARCHAR(44);'
      '      DECLARE VARIABLE C_PAIS        VARCHAR(3);'
      '      DECLARE VARIABLE PAIS_CA       VARCHAR(40);'
      '      DECLARE VARIABLE PAIS_ES       VARCHAR(40);'
      '      DECLARE VARIABLE METGE         VARCHAR(20);'
      '      DECLARE VARIABLE MET_NOM       VARCHAR(20);'
      '      DECLARE VARIABLE MET_COGNOM1   VARCHAR(15);'
      '      DECLARE VARIABLE MET_COGNOM2   VARCHAR(20);'
      '      DECLARE VARIABLE MET_NC        VARCHAR(10);'
      '      DECLARE VARIABLE MET_NOMSENCER VARCHAR(40);'
      '      DECLARE VARIABLE MET_TRACTE    VARCHAR(4);'
      
        '      DECLARE VARIABLE MET_TITULACIO VARCHAR(100); /* titulaci'#243' ' +
        'segons idioma, es busca a Especial_Prof */'
      '      DECLARE VARIABLE MET_GRUP      VARCHAR(2);'
      '      DECLARE VARIABLE ANOTACIO      VARCHAR(30000);'
      '      DECLARE VARIABLE RETORNA       SMALLINT;'
      
        '      DECLARE VARIABLE TITULACIO     VARCHAR(100); /* titulaci'#243' ' +
        'segons idioma, es busca a Especial_Prof */'
      
        '      DECLARE VARIABLE SERVEI_CA     VARCHAR(20);  /* especialit' +
        'at metge coordinador en catal'#224' */'
      
        '      DECLARE VARIABLE SERVEI_ES     VARCHAR(20);  /* especialit' +
        'at metge coordinador en castell'#224' */'
      '      DECLARE VARIABLE CENTREFAC     VARCHAR(2);'
      '      DECLARE VARIABLE CLIENT        VARCHAR(3);'
      '      DECLARE VARIABLE C_PLANTA      VARCHAR(10);'
      '      DECLARE VARIABLE PRESTACIO_CA  VARCHAR(40);'
      '      DECLARE VARIABLE PRESTACIO_ES  VARCHAR(40);'
      '      DECLARE VARIABLE MOTIU_CA      VARCHAR(40);'
      '      DECLARE VARIABLE MOTIU_ES      VARCHAR(40);'
      '      DECLARE VARIABLE C_GRUP        VARCHAR(2);'
      '      DECLARE VARIABLE GRUP_ANOTA    VARCHAR(2);'
      '      DECLARE VARIABLE TITOL_ANOTA   VARCHAR(80);'
      '      DECLARE VARIABLE A_INTERCON    INTEGER;'
      '      DECLARE VARIABLE A_DATA_PROVA  DATE;'
      '      DECLARE VARIABLE I_PROVA       VARCHAR(80);'
      '      DECLARE VARIABLE I_RSLT        VARCHAR(80);'
      '      DECLARE VARIABLE I_PAT         VARCHAR(2);'
      '      DECLARE VARIABLE I_REF         VARCHAR(80);'
      '      DECLARE VARIABLE A_PROVA       VARCHAR(3000);'
      '      DECLARE VARIABLE A_RSLT        VARCHAR(3000);'
      '      DECLARE VARIABLE A_REF         VARCHAR(80);'
      '      DECLARE VARIABLE USUARI        VARCHAR(80);'
      '      DECLARE VARIABLE NUMCOL        VARCHAR(9);'
      '/*      DECLARE VARIABLE NOM_SIGNANT2  VARCHAR(100);'
      '      DECLARE VARIABLE NUM_SIGNANT2  VARCHAR(20);'
      '      DECLARE VARIABLE VERBAL        VARCHAR(10);'
      '      DECLARE VARIABLE FRASE_VERBAL  VARCHAR(3000);'
      '      DECLARE VARIABLE FRASE_VERBAL2 VARCHAR(3000); */'
      '      DECLARE VARIABLE METGE_PAUTA_CONTENCIO VARCHAR(40);'
      '      DECLARE VARIABLE DATA_PAUTA_CONTENCIO  DATE;'
      '      DECLARE VARIABLE CODI_METGE_PAUTA_CONTENCIO VARCHAR(5);'
      '      DECLARE VARIABLE TEXT_CA       VARCHAR(3000);'
      '      DECLARE VARIABLE TEXT_ES       VARCHAR(3000);'
      '      DECLARE VARIABLE TEXT_EN       VARCHAR(3000);'
      'BEGIN'
      
        '      /* Algunes dades s'#243'n pr'#242'pies d'#39'alguna de les fases per'#242' ho' +
        ' busquem tot aqu'#237' per fer-ho m'#233's f'#224'cil i per si un cas */'
      ''
      
        '      SELECT C_TIPUS, IDIOMA, TIPUSECB FROM INFORMES_PLANTILLES ' +
        'WHERE C_PLANTILLA = :C_PLANTILLA INTO :C_TIPUS, :IDIOMA, :TIPUSE' +
        'CB;'
      ''
      
        '      SELECT ESTAT FROM CONFIGBLOQ WHERE CAMP = '#39'FT_ON'#39' INTO :FT' +
        '_ON;'
      ''
      '      /* Agrupem les dades de filiaci'#243' en un '#250'nic select */'
      
        '      SELECT NOMBRE, APELLIDO1, APELLIDO2, FECHA_NAC, EDAT, SEXO' +
        ', ADRESA, CODIGO, POBLACIO, PROVINCIA, EMAIL, TELEFONO, TSI, NOM' +
        'COMPLET,'
      
        '             DATA_LESSIO, N_DIAGNOSTICNEUROLOGIC, AnsiLower(N_ET' +
        'IOLOGIA), ALERGIES, ALERGIES_TOT, SOE, T_DOC, DNI, ESTADO_CIV, L' +
        'UGAR_NAC, PAIS'
      '      FROM   FILIACIO'
      '      WHERE  NUM_HIST = :C_HISTORIA'
      
        '      INTO  :NOM, :COGNOM1, :COGNOM2, :DATA_NAIX, :EDAT, :SEXE, ' +
        ':ADRESA, :CODI_POSTAL, POBLACIO, :PROVINCIA, :EMAIL, :TELEFON, :' +
        'CIP, :NOMCOMPLET,'
      
        '            :DATA_LESIO, :DIAG_NEURO, :ETIOLOGIA, :ALERGIES, :AL' +
        'ERGIES_TOT, :SOE, :T_DOC, :DNI, :ESTAT_CIVIL, :LLOC_NAIX, :C_PAI' +
        'S;'
      ''
      
        '      SELECT N_PAIS, N_PAIS2 FROM PAIS WHERE C_PAIS = :C_PAIS IN' +
        'TO :PAIS_CA, :PAIS_ES;'
      ''
      
        '      IF (FT_ON = 1) THEN ALERGIES = ALERGIES_TOT;  /* AnsiLower' +
        '(ALERGIES_TOT);'
      
        '                     ELSE ALERGIES = AnsiUpper(F_Left(ALERGIES, ' +
        '1)) || AnsiLower(F_Right(ALERGIES, F_StringLength(ALERGIES)-1));' +
        ' */'
      ''
      '      IF (COGNOM2 IS NULL) THEN COGNOM2 = '#39#39';'
      '      COGNOMS = F_LRTrim(COGNOM1 || '#39' '#39' || COGNOM2);'
      ''
      
        '      /* Nom'#233's informarem aquestes dades si el pacient '#233's 04 (ho' +
        ' mirem a continuaci'#243', per tractament) */'
      '      CIP_AUT = '#39'-'#39';  CIP_SNS = '#39'-'#39';'
      ''
      
        '      /* No sempre calen dades del tractament, per'#242' ho unifiquem' +
        ' aqu'#237' */'
      '      IF (C_TRACTAMENT IS NOT NULL) THEN'
      '      BEGIN'
      
        '            SELECT T.DATA_INGRES, T.HORA, T.DATA_PREALTA, T.DATA' +
        '_ALTA, H.N_HOSPITAL, P.N_PRESTACIO, P.N_PRESTACIO2, AnsiLower(C.' +
        'N_CODI), AnsiLower(C.N_CODI2),'
      
        '                     M.C_GRUP, S.N_ESPECIAL, S.N_ESPECIAL2, T.C_' +
        'CENTREFAC, T.C_CLIENT, C_PLANTA'
      '            FROM   TRACTAMENTS T'
      '            JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO'
      
        '            JOIN   CODICAMPS C ON T.C_MOTIU = C.C_CODI AND C.TIP' +
        'USCODI = '#39'MOTIU'#39
      '            JOIN   METGES M ON T.C_COORDINADOR = M.CODI'
      
        '            LEFT   OUTER JOIN ESPECIAL S ON M.C_ESPECIAL = S.C_E' +
        'SPECIAL'
      
        '            LEFT   OUTER JOIN HOSPITAL H ON T.C_HOSPITALORIGEN =' +
        ' H.C_HOSPITAL'
      '            WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      
        '            INTO  :DATA_INGRES, :HORA_INGRES, :DATA_PREALTA, :DA' +
        'TA_ALTA, :PROCEDENCIA, :PRESTACIO_CA, :PRESTACIO_ES, :MOTIU_CA, ' +
        ':MOTIU_ES,'
      
        '                  :C_GRUP, :SERVEI_CA, :SERVEI_ES, :CENTREFAC, :' +
        'CLIENT, :C_PLANTA;'
      ''
      '            IF (CENTREFAC = '#39'04'#39') THEN'
      '            BEGIN'
      '                  CIP_AUT = CIP;'
      
        '                  SELECT CDI FROM FILI_TDI WHERE C_HISTORIA = :C' +
        '_HISTORIA AND TDI = '#39'SNS'#39' AND CDI STARTING WITH '#39'BBBBBBBB'#39' INTO ' +
        ':CIP_SNS;'
      '            END;'
      '      END;'
      ''
      
        '      /* No sempre calen dades de l'#39'usuari que fa/valida l'#39'infor' +
        'me, per'#242' ho unifiquem aqu'#237' */'
      
        '      SELECT METGE, NOMBRE, COGNOM1, COGNOM, F_LRTrim(COALESCE(M' +
        '.NC, M.NMETGERECEPTA, '#39#39')), NOMSENCER, COALESCE(TRACTE, '#39#39'), COA' +
        'LESCE(LOWER(E.TITOL), '#39#39'), M.C_GRUP'
      '      FROM   METGES M'
      
        '      LEFT   OUTER JOIN ESPECIAL_PROF E ON M.C_ESPECIAL = E.C_ES' +
        'PECIAL AND E.C_IDIOMA = :IDIOMA'
      '      WHERE  M.CODI = :C_USUARI'
      
        '      INTO  :METGE, :MET_NOM, :MET_COGNOM1, :MET_COGNOM2, :MET_N' +
        'C, :MET_NOMSENCER, :MET_TRACTE, :MET_TITULACIO, :MET_GRUP;'
      ''
      ''
      '      /* Dades de l'#39'anal'#237'tica - test r'#224'pid */'
      '      IF (C_PLANTILLA = 27) THEN'
      '      BEGIN'
      
        '            /* Busquem la interconsulta generada avui i finalitz' +
        'ada (tipus ANAL i Informe intern "G")'
      
        '               En principi nom'#233's n'#39'hi haur'#224' una del dia, per'#242' co' +
        'm que l'#39'informe corresponent es crida just al moment d'#39'entrar el' +
        's resultats, agafem l'#39#250'ltima per si un cas */'
      '            SELECT C_INTERCON, DATA_PROVA'
      '            FROM   INTERCON'
      '            WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    C_TIPUS = '#39'ANAL'#39
      '            AND    INFORMERX = '#39'G'#39
      '            AND    DATA1 = "TODAY"'
      '            AND    ESTAT = 91'
      '            ORDER  BY C_INTERCON DESC'
      '            ROWS   1'
      '            INTO  :A_INTERCON, :A_DATA_PROVA;'
      '            '
      '            A_PROVA = '#39#39';'
      '            A_RSLT  = '#39#39';'
      '            A_REF   = '#39#39';'
      
        '            FOR SELECT F_Left(C.DESCRIPCIO, 80), F_Left(L.TEXTE,' +
        ' 80), Coalesce(L.PATO, '#39#39'), F_Left(C.NORMA, 80)'
      '                FROM   ANACABE A'
      
        '                JOIN   ANALIT  L ON A.NILAB = L.NILAB AND A.DATA' +
        ' = L.DATA'
      '                JOIN   CODRSANA_APA C ON L.CODI = C.CODI'
      '                WHERE  A.C_INTERCON = :A_INTERCON'
      '                INTO  :I_PROVA, :I_RSLT, :I_PAT, :I_REF'
      '            DO BEGIN'
      '                  A_PROVA = A_PROVA || F_NLine() || I_PROVA;'
      
        '                  A_RSLT  = A_RSLT  || F_NLine() || I_RSLT ||'#39' '#39 +
        '|| I_PAT;'
      '                  A_REF   = A_REF   || F_NLine() || I_REF;'
      '            END'
      '      END'
      '      '
      '      '
      '      /* Dades espec'#237'fiques del CNI de contencions mec'#224'niques */'
      '      IF ((C_TIPUS = '#39'CNI'#39') AND (TIPUSECB = 5)) THEN'
      '      BEGIN'
      '            SELECT M.CODI, M.NOMSENCER, O.DATA_PAUTAT'
      '            FROM   ORDRESINFERMERIA O'
      '            JOIN   METGES M ON O.METGE_PAUTAT = M.CODI'
      
        '            WHERE  O.C_TRACTAMENT = :C_TRACTAMENT AND O.CONTENCI' +
        'O = '#39'S'#39' AND O.C_ESTAT = '#39'V'#39
      '            ORDER  BY O.DATA_PAUTAT DESC ROWS 1'
      
        '            INTO  :CODI_METGE_PAUTA_CONTENCIO, :METGE_PAUTA_CONT' +
        'ENCIO, :DATA_PAUTA_CONTENCIO;'
      '      END;'
      ''
      
        '      /* En formularis amb 2 signants, s'#39'ha de composar el text ' +
        'del signant del segon'
      '      NOM_SIGNANT2 = '#39#39';'
      '      NUM_SIGNANT2 = '#39#39';'
      '      */'
      ''
      
        '      /* Per cada etiqueta de la plantilla seleccionada, busquem' +
        ' el seu valor */'
      
        '      FOR SELECT T.TAG, I.C_ITEM, I.SQL_COMPROVA, I.SQL_BOLCATGE' +
        ', L.TEXT, T.COS'
      '          FROM   INFORMES_TAGS T'
      
        '          LEFT   OUTER JOIN INFORMES_PLANTILLES P ON P.C_TIPUS =' +
        ' T.C_TIPUS AND P.C_PLANTILLA = :C_PLANTILLA'
      
        '          LEFT   OUTER JOIN INFORMES_ITEMS      I ON I.C_TIPUSIN' +
        'FORME = T.C_TIPUS AND T.TAG = '#39'%'#39'||I.TAG||'#39'%'#39'       /* Informaci' +
        #243' de l'#39'item associat al tag, */'
      
        '                                               AND ((F_Modulo(I.' +
        'TIPUSECB, P.TIPUSECB) = 0) OR (I.TIPUSECB IS NULL)) /* si a la p' +
        'lantilla li correspon. */'
      
        '          LEFT   OUTER JOIN INFORMES_LIN        L ON L.C_ITEM = ' +
        'I.C_ITEM AND L.ID_INFORME = :ID_INFORME             /* Informaci' +
        #243' introdu'#239'da al formulari sistematitzat, si el tag t'#233' '#237'tem assoc' +
        'iat a la plantilla */'
      '          WHERE  T.C_TIPUS = :C_TIPUS'
      '          AND    T.FASE = :FASE'
      
        '          INTO  :TAG, :C_ITEM, :SQL_COMPROVA, :SQL_BOLCATGE, :TE' +
        'XT, :COS'
      '      DO BEGIN'
      '            VALOR = '#39#39';'
      '            ANOTACIO = NULL;'
      
        '            /* Els textos llargs fallen en fer ReplaceText al Wo' +
        'rd; per'#242' amb "InsertText" funciona; per aix'#242' el marco amb ordre ' +
        '-1 encara que nom'#233's retorno 1 registre */'
      
        '            /* Tamb'#233' retornem ordre -1 si ens cal quedar-nos ubi' +
        'cats en aquell punt despr'#233's de fer la substituci'#243' del tag (en ca' +
        's d'#39'eliminar apartats) */'
      
        '            /* Al cos del document, retornem ordre -1 per fer un' +
        ' InsertText al Word (els texto llargs fallen en fer ReplaceText)' +
        ' i perqu'#232' ens cal quedar-nos ubicats all'#224' per eliminar apartats ' +
        'si cal */'
      
        '            IF ((C_ITEM IS NOT NULL) OR (COS = "S")) THEN ORDRE ' +
        '= -1;'
      
        '                                                     ELSE ORDRE ' +
        '= 0;'
      '            RETORNA = 1;'
      ''
      '            /* Dades que provenen del formulari sistematitzat */'
      '            IF (TEXT IS NOT NULL) THEN VALOR = TEXT;'
      ''
      
        '            /* CNI: ens guardem la informaci'#243' per'#242' no la retorne' +
        'm encara perqu'#232' hem de saber si hi ha 2n signant per composar el' +
        ' text corresponent'
      
        '            IF      (TAG = '#39'%NOM_SIGNANT2%'#39')  THEN BEGIN NOM_SIG' +
        'NANT2 = VALOR;  RETORNA = 0; END;'
      
        '            ELSE IF (TAG = '#39'%NUM_DOC_SIG2%'#39')  THEN BEGIN NUM_SIG' +
        'NANT2 = VALOR;  RETORNA = 0; END;'
      '            ELSE IF (TAG = '#39'%VERBAL%'#39')        THEN RETORNA = 0;'
      '            ELSE IF (TAG = '#39'%SIGNANT2%'#39')      THEN RETORNA = 0;'
      '            */'
      ''
      '            /* Tags que es busquen a altres llocs */'
      
        '            ELSE IF (TAG = '#39'%NHC%'#39')        THEN VALOR = C_HISTOR' +
        'IA;'
      '            ELSE IF (TAG = '#39'%NOM%'#39')        THEN VALOR = NOM;'
      '            ELSE IF (TAG = '#39'%COGNOM1%'#39')    THEN VALOR = COGNOM1;'
      '            ELSE IF (TAG = '#39'%COGNOM2%'#39')    THEN VALOR = COGNOM2;'
      '            ELSE IF (TAG = '#39'%COGNOMS%'#39')    THEN VALOR = COGNOMS;'
      
        '            ELSE IF (TAG = '#39'%NOMCOMPLET%'#39') THEN VALOR = NOMCOMPL' +
        'ET;'
      
        '            ELSE IF (TAG = '#39'%D_NAIX%'#39')     THEN VALOR = F_DateTo' +
        'Str(DATA_NAIX);'
      '            ELSE IF (TAG = '#39'%EDAT%'#39')       THEN VALOR = EDAT;'
      '            ELSE IF (TAG = '#39'%SOE%'#39')        THEN VALOR = SOE;'
      '            ELSE IF (TAG = '#39'%SEXE%'#39')       THEN'
      '            BEGIN'
      '                  IF (IDIOMA = 1) THEN'
      '                  BEGIN'
      '                        IF (SEXE = '#39'H'#39') THEN VALOR = '#39'home'#39';'
      '                                        ELSE VALOR = '#39'dona'#39';'
      '                  END'
      '                  ELSE IF (IDIOMA = 2) THEN'
      '                  BEGIN'
      
        '                        IF (SEXE = '#39'H'#39') THEN VALOR = '#39'masculino'#39 +
        ';'
      '                                        ELSE VALOR = '#39'femenino'#39';'
      '                  END'
      '                  ELSE IF (IDIOMA = 3) THEN'
      '                  BEGIN'
      '                        IF (SEXE = '#39'H'#39') THEN VALOR = '#39'male'#39';'
      '                                        ELSE VALOR = '#39'female'#39';'
      '                  END'
      '            END;'
      '            ELSE IF (TAG = '#39'%AFECTAT/ADA%'#39') THEN'
      '            BEGIN'
      '                  IF (SEXE = '#39'H'#39') THEN'
      '                  BEGIN'
      '                        IF (IDIOMA = 2) THEN VALOR = '#39'afectado'#39';'
      '                                        ELSE VALOR = '#39'afectat'#39';'
      '                  END;'
      '                  ELSE VALOR = '#39'afectada'#39';'
      '            END;'
      '            ELSE IF (TAG = '#39'%SH%'#39')      THEN'
      '            BEGIN'
      '                IF (SEXE = '#39'H'#39') THEN VALOR = '#39'X'#39';'
      '                                ELSE VALOR = '#39' '#39';'
      '            END;'
      '            ELSE IF (TAG = '#39'%SD%'#39')      THEN'
      '            BEGIN'
      '                IF (SEXE = '#39'D'#39') THEN VALOR = '#39'X'#39';'
      '                                ELSE VALOR = '#39' '#39';'
      '            END;'
      '            ELSE IF (TAG = '#39'%T1%'#39')      THEN'
      '            BEGIN'
      '                IF (T_DOC='#39'D'#39') THEN VALOR = '#39'X'#39';'
      '                               ELSE VALOR = '#39' '#39';'
      '            END;'
      '            ELSE IF (TAG = '#39'%T2%'#39')      THEN'
      '            BEGIN'
      '                IF (T_DOC='#39'N'#39') THEN VALOR = '#39'X'#39';'
      '                               ELSE VALOR = '#39' '#39';'
      '            END;'
      
        '            ELSE IF (TAG = '#39'%ESTATCIVIL%'#39') THEN VALOR = ESTAT_CI' +
        'VIL;'
      
        '            ELSE IF (TAG = '#39'%LLOC_NAIX%'#39')  THEN VALOR = LLOC_NAI' +
        'X;'
      '            ELSE IF (TAG = '#39'%ADRE'#199'A%'#39')     THEN VALOR = ADRESA;'
      
        '            ELSE IF (TAG = '#39'%CODI_POST%'#39')  THEN VALOR = CODI_POS' +
        'TAL;'
      
        '            ELSE IF (TAG = '#39'%PROVINCIA%'#39')  THEN VALOR = PROVINCI' +
        'A;'
      
        '            ELSE IF (TAG = '#39'%POBLACIO%'#39')   THEN VALOR = POBLACIO' +
        ';'
      '            ELSE IF (TAG = '#39'%EMAIL%'#39')      THEN VALOR = EMAIL;'
      '            ELSE IF (TAG = '#39'%TELEFON%'#39')    THEN VALOR = TELEFON;'
      '            ELSE IF (TAG = '#39'%PAIS%'#39')       THEN VALOR = PAIS_CA;'
      '            ELSE IF (TAG = '#39'%PAIS_ES%'#39')    THEN VALOR = PAIS_ES;'
      '            ELSE IF (TAG = '#39'%NUM_CIP%'#39')    THEN VALOR = CIP;'
      '            ELSE IF (TAG = '#39'%ETI_CIP%'#39')    THEN'
      '            BEGIN'
      '                  IF (CIP IS NULL) THEN VALOR = '#39#39';'
      '                  ELSE BEGIN'
      '                        VALOR = '#39'CIP:'#39';'
      '                        IF (IDIOMA = 2) THEN VALOR = '#39'C.I.P.:'#39';'
      '                  END;'
      '            END;'
      
        '            ELSE IF (TAG = '#39'%ETI_ID%'#39') THEN    /* per a informe ' +
        'TRD */'
      '            BEGIN'
      '                  IF (CIP IS NULL) THEN'
      '                  BEGIN'
      '                     VALOR = '#39'SOE'#39';'
      '                     IF (IDIOMA = 2) THEN VALOR = '#39'S.O.E.'#39';'
      '                  END;'
      '                  ELSE BEGIN'
      '                     VALOR = '#39'CIP'#39';'
      '                     IF (IDIOMA = 2) THEN VALOR = '#39'C.I.P.'#39';'
      '                  END;'
      '            END;'
      '            ELSE IF (TAG = '#39'%NUM_ID%'#39') THEN'
      '            BEGIN'
      '                  IF (CIP IS NULL) THEN VALOR = SOE;'
      '                                   ELSE VALOR = CIP;'
      '            END;'
      
        '            ELSE IF (TAG = '#39'%CIP_AUT%'#39')     THEN VALOR = CIP_AUT' +
        ';'
      
        '            ELSE IF (TAG = '#39'%CIP_SNS%'#39')     THEN VALOR = CIP_SNS' +
        ';'
      '            '
      '            ELSE IF (TAG = '#39'%ETI_DOC%'#39') THEN'
      '            BEGIN'
      '                  IF (T_DOC = '#39'D'#39') THEN'
      '                  BEGIN'
      '                     VALOR = "DNI";'
      '                     IF (IDIOMA = 2) THEN VALOR = '#39'D.N.I.'#39';'
      '                  END;'
      '                  ELSE IF (T_DOC = '#39'N'#39') THEN'
      '                  BEGIN'
      '                     VALOR = "NIE";'
      '                     IF (IDIOMA = 2) THEN VALOR = '#39'N.I.E.'#39';'
      '                  END;'
      '            END;'
      ''
      '            ELSE IF (TAG = '#39'%NUM_DOC%'#39')      THEN VALOR = DNI;'
      
        '            ELSE IF (TAG = '#39'%PROCEDENCIA%'#39')  THEN VALOR = PROCED' +
        'ENCIA;'
      
        '            ELSE IF (TAG = '#39'%DIAGNOSTIC%'#39')   THEN VALOR = DIAG_N' +
        'EURO;'
      
        '            ELSE IF (TAG = '#39'%ETIOLOGIA%'#39')    THEN VALOR = ETIOLO' +
        'GIA;'
      
        '            ELSE IF (TAG = '#39'%DATA_LESIO%'#39')   THEN VALOR = F_Date' +
        'ToStr(DATA_LESIO);'
      
        '            ELSE IF (TAG = '#39'%ALERGIES%'#39')     THEN VALOR = ALERGI' +
        'ES;'
      ''
      
        '            ELSE IF (TAG = '#39'%UH%'#39')           THEN VALOR = C_PLAN' +
        'TA;'
      
        '            ELSE IF (TAG = '#39'%DATA_INGRES%'#39')  THEN VALOR = F_Date' +
        'ToStr(DATA_INGRES);'
      
        '            ELSE IF (TAG = '#39'%DATA_PREALTA%'#39') THEN VALOR = F_Date' +
        'ToStr(DATA_PREALTA);'
      '            ELSE IF ((TAG = '#39'%DATA_ALTA%'#39')'
      '                 OR  (TAG = '#39'%D_ALTA%'#39'))     THEN BEGIN'
      
        '                                                IF (DATA_ALTA IS' +
        ' NULL) THEN'
      '                                                BEGIN'
      
        '                                                   IF (DATA_PREA' +
        'LTA IS NULL) THEN VALOR = TAG;'
      
        '                                                                ' +
        '             ELSE VALOR = F_DateToStr(DATA_PREALTA);'
      '                                                END;'
      
        '                                                ELSE VALOR = F_D' +
        'ateToStr(DATA_ALTA);'
      '                                             END;'
      
        '            ELSE IF (TAG = '#39'%DATAH_INGRES%'#39') THEN VALOR = F_Date' +
        'ToStr(DATA_INGRES) ||'#39' '#39'|| HORA_INGRES;'
      ''
      
        '            ELSE IF (TAG = '#39'%D_TRS%'#39')        THEN VALOR = F_Date' +
        'ToStr("TODAY");'
      ''
      
        '            ELSE IF (TAG = '#39'%MES_ANY%'#39')      THEN VALOR = F_Just' +
        'ificaWith(F_Month(DATA_I), 2, '#39'0'#39') ||'#39'/'#39'|| F_Year(DATA_I);'
      ''
      '            ELSE IF (TAG = '#39'%N_PRESTACIO%'#39') THEN'
      '            BEGIN'
      '                  IF (IDIOMA = 2) THEN VALOR = PRESTACIO_ES;'
      '                                  ELSE VALOR = PRESTACIO_CA;'
      '            END;'
      '            ELSE IF (TAG = '#39'%MOTIU%'#39') THEN'
      '            BEGIN'
      '                  IF (IDIOMA = 2) THEN VALOR = MOTIU_ES;'
      '                                  ELSE VALOR = MOTIU_CA;'
      '            END;'
      '            ELSE IF (TAG = '#39'%SERVEI%'#39') THEN'
      '            BEGIN'
      '                  IF (IDIOMA = 2) THEN VALOR = SERVEI_ES;'
      '                                  ELSE VALOR = SERVEI_CA;'
      '            END'
      '            ELSE IF (TAG = '#39'%LESIONS%'#39') THEN'
      '            BEGIN'
      '                  FOR SELECT DISTINCT N_LESIO'
      '                      FROM   LESIONS'
      '                      WHERE  C_HISTORIA = :C_HISTORIA'
      '                      AND    C_LESIO <> '#39'--'#39
      '                      AND    F_StringLength(N_LESIO) > 1'
      '                      AND    Upper(N_LESIO) <> '#39'NO'#39
      '                      INTO  :LESIO'
      '                  DO BEGIN'
      '                        VALOR = LESIO;'
      '                        ORDRE = ORDRE + 1;'
      '                        SUSPEND;'
      '                  END;'
      ''
      
        '                  IF (ORDRE = 0) THEN VALOR = '#39'...'#39';   /* Si no ' +
        'hem trobat cap lesi'#243', posem "..." perqu'#232' les escriguin a m'#224' */'
      
        '                                 ELSE RETORNA = 0;     /* Altram' +
        'ent, ja hem anat fent els "Suspend" corresponents */'
      '            END;'
      ''
      
        '            ELSE IF (TAG = '#39'%DIAGNOSTICS%'#39') THEN    /* aqu'#237' no h' +
        'i entra si el TAG coincideix amb un dels TAGS dels '#237'tems */'
      '            BEGIN'
      
        '                  /*-- ORDRE = 0; ja est'#224' inicialitzat a cada it' +
        'eraci'#243' */'
      '                  FOR SELECT DIAGNOSTIC'
      
        '                      FROM P_INFORMES_PLANTILLES_DIAGNOSTICS(:C_' +
        'HISTORIA, :C_TRACTAMENT)'
      '                      INTO  :VALOR'
      '                  DO BEGIN'
      '                        ORDRE = ORDRE + 1;'
      '                        SUSPEND;'
      '                  END;'
      ''
      
        '                  IF (ORDRE = 0) THEN VALOR = '#39'...'#39';   /* Si no ' +
        'hem trobat cap diagn'#242'stic, posem "..." perqu'#232' els escriguin a m'#224 +
        ' */'
      
        '                                 ELSE RETORNA = 0;     /* Altram' +
        'ent, ja hem anat fent els "Suspend" corresponents */'
      '            END;'
      ''
      '            /* Data de sessi'#243' conjunta */'
      '            ELSE IF (TAG = '#39'%DATA_SC%'#39') THEN'
      '            BEGIN'
      '                  SELECT MAX(DATA_SESSIO)'
      '                  FROM   OBJPROPERES P'
      
        '                  JOIN   OBJPRESTA   O ON P.C_OBJECTIU = O.C_OBJ' +
        'ECTIU'
      '                  WHERE  O.C_HISTORIA = :C_HISTORIA'
      
        '                  AND    P.DATA_SESSIO < "TODAY" + 1    /* Poso ' +
        '< estricte que dem'#224', perqu'#232' la data sessi'#243' t'#233' hora */'
      '                  INTO  :DATA_SC;'
      ''
      
        '                  IF (DATA_SC IS NOT NULL) THEN VALOR = F_DateTo' +
        'Str(DATA_SC);'
      '            END;'
      ''
      '            /* Anotaci'#243' evoluci'#243' - metges */'
      
        '            ELSE IF (TAG = '#39'%EVOLUCIO%'#39') THEN   /* aqu'#237' no hi en' +
        'tra si el TAG coincideix amb un dels TAGS dels '#237'tems */'
      '            BEGIN'
      
        '                  SELECT F_ReplaceText('#39'* * *  R E S U M  /  E V' +
        ' O L U C I '#211'  * * * '#39'||F_NLine(), '#39#39', ANOTACIO)'
      '                  FROM   HISTORIA'
      '                  WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    DATA >= "TODAY" - 30'
      '                  AND    ANULAT = '#39'N'#39
      '                  AND    QUEES = 11'
      '                  AND   (C_GRUP = '#39'ME'#39' OR C_GRUP = '#39'RE'#39')'
      
        '                  ORDER  BY DATA DESC     /* Ordenem al rev'#233's pe' +
        'rqu'#232' busquem l'#39#250'ltima anotaci'#243' */'
      '                  ROWS   1'
      '                  INTO  :ANOTACIO;'
      ''
      
        '                  IF (ANOTACIO IS NULL) THEN VALOR = '#39'...'#39';     ' +
        '  /* Si no hem trobat cap diagn'#242'stic, posem "..." perqu'#232' els esc' +
        'riguin a m'#224' */'
      '                                        ELSE BEGIN'
      '                                             VALOR = ANOTACIO;'
      
        '                                             ORDRE = -1;        ' +
        '  /* Els textos llargs fallen en fer ReplaceText al Word; per'#242' a' +
        'mb "Paste" funciona; per aix'#242' el marco amb ordre -1 encara que n' +
        'om'#233's retorno 1 registre */'
      '                                        END'
      '            END;'
      ''
      
        '            /* Anotaci'#243' evoluci'#243' mensual informes m'#250'tua - difere' +
        'nts "grups" de GBCN */'
      '            ELSE IF (TAG STARTING WITH '#39'%EVOL_MENS_'#39') THEN'
      '            BEGIN'
      '                  GRUP_ANOTA = F_Mid(TAG, 11, 2);'
      ''
      '                  USUARI = '#39#39';'
      '                  TITULACIO = '#39#39';'
      '                  NUMCOL = '#39#39';'
      '                  '
      
        '                  SELECT H.ANOTACIO, M.TRACTE ||'#39' '#39'|| M.NOMSENCE' +
        'R, COALESCE(E.TITOL, '#39#39'), F_LRTrim(COALESCE(M.NC, M.NMETGERECEPT' +
        'A, '#39#39'))'
      '                  FROM   HISTORIA H'
      '                  JOIN   METGES M ON H.C_USUARI = M.CODI'
      
        '                  LEFT   OUTER JOIN ESPECIAL_PROF E ON M.C_ESPEC' +
        'IAL = E.C_ESPECIAL AND E.C_IDIOMA = :IDIOMA'
      '                  WHERE  H.C_HISTORIA = :C_HISTORIA'
      '                  AND    H.DATA >= :DATA_I'
      '                  AND    H.DATA <  :DATA_F'
      '                  AND    H.ANULAT = '#39'N'#39
      '                  AND    H.C_GRUP = :GRUP_ANOTA'
      '                  AND    H.QUEES = 26'
      
        '                  ORDER  BY H.DATA DESC     /* Agafem l'#39'anotaci'#243 +
        ' d'#39'evoluci'#243' m'#233's recent */'
      '                  ROWS   1'
      '                  INTO  :ANOTACIO, :USUARI, :TITULACIO, :NUMCOL;'
      '                  '
      '                  /* T'#237'tol de l'#39'apartat */'
      '                  IF (F_Mid(TAG, 13, 1) = '#39'T'#39') THEN'
      '                  BEGIN'
      '                        IF (ANOTACIO IS NOT NULL) THEN'
      '                        BEGIN'
      
        '                              IF      (GRUP_ANOTA = '#39'ME'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243' m'#232'dica '#39';'
      
        '                              ELSE IF (GRUP_ANOTA = '#39'FI'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243' de Fisioter'#224'pia '#39';'
      
        '                              ELSE IF (GRUP_ANOTA = '#39'TO'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243' Ter'#224'pia ocupacional '#39';'
      
        '                              ELSE IF (GRUP_ANOTA = '#39'EF'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243' de Ci'#232'ncies de l'#39#39'activitat f'#237'sica i de ' +
        'l'#39#39'esport '#39';'
      
        '                              ELSE IF (GRUP_ANOTA = '#39'PS'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243' de Neuropsicologia '#39';'
      
        '                              ELSE IF (GRUP_ANOTA = '#39'LO'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243' de Logop'#232'dia '#39';'
      
        '                              ELSE IF (GRUP_ANOTA = '#39'MS'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243'n de Musicoter'#224'pia '#39';'
      
        '                              ELSE IF (GRUP_ANOTA = '#39'AS'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243'n de Treball social '#39';'
      
        '                              ELSE IF (GRUP_ANOTA = '#39'UN'#39') THEN T' +
        'ITOL_ANOTA = '#39'Valoraci'#243'n d'#39#39'Infermeria '#39';'
      '                              '
      
        '                              VALOR = F_NLine()||F_NLine()|| TIT' +
        'OL_ANOTA || F_NLine();'
      '                        END;'
      '                        SUSPEND;'
      '                  END;'
      '                  /* Dades professionsl */'
      '                  ELSE IF (F_Mid(TAG, 13, 1) = '#39'U'#39') THEN'
      '                  BEGIN'
      '                        IF (ANOTACIO IS NOT NULL) THEN'
      '                        BEGIN'
      
        '                              IF (GRUP_ANOTA = '#39'ME'#39') THEN VALOR ' +
        '= '#39'['#39'||USUARI||'#39', '#39'||TITULACIO||'#39', N'#250'm. Col. '#39'||NUMCOL||'#39']'#39'||F_N' +
        'Line()||F_NLine();  /* Per a metges hi posem l'#39'especialitat */'
      
        '                                                     ELSE VALOR ' +
        '= '#39'['#39'||USUARI||'#39', N'#250'm. Col. '#39'||NUMCOL||'#39']'#39'||F_NLine()||F_NLine()' +
        ';'
      '                        END;'
      '                        SUSPEND;'
      '                  END;'
      '                  /* Anotaci'#243' del professional */'
      '                  ELSE IF (F_Mid(TAG, 13, 1) = '#39'%'#39') THEN'
      '                  BEGIN'
      '                        VALOR = ANOTACIO;'
      '                        ORDRE = -1;'
      '                        SUSPEND;'
      '                  END;'
      '                  '
      
        '                  RETORNA = 0; /* Ja no mantenim el tag. Si no h' +
        'an escrit quan toca, no surt pq l'#39'informe es genera i finalitza ' +
        'd'#39'una atacada */'
      '            END;'
      ''
      
        '            /* Dues '#250'ltimes anotacions (20 dies enrere m'#224'xim) de' +
        'l grup del coordinador del tractament - renovaci'#243' autoritzaci'#243' t' +
        'ractament GBCN */'
      '            ELSE IF (TAG = '#39'%ULT_ANOTA%'#39') THEN'
      '            BEGIN'
      '                  FOR SELECT ANOTACIO'
      '                      FROM   HISTORIA'
      '                      WHERE  C_HISTORIA = :C_HISTORIA'
      '                      AND   (C_GRUP = :C_GRUP'
      
        '                         OR (C_GRUP = '#39'FI'#39' AND :C_GRUP = '#39'TO'#39')  ' +
        ' /* FI i TO van junts */'
      '                         OR (C_GRUP = '#39'TO'#39' AND :C_GRUP = '#39'FI'#39'))'
      '                      AND    DATA >= "TODAY" - 20'
      '                      AND    ANULAT = '#39'N'#39
      '                      ORDER BY DATA DESC'
      '                      INTO :ANOTACIO'
      '                  DO BEGIN'
      '                        VALOR = ANOTACIO;'
      '                        ORDRE = ORDRE - 1;'
      '                        SUSPEND;'
      '                  END;'
      ''
      
        '                  IF (ORDRE = 0) THEN VALOR = TAG;  /* Si no hem' +
        ' trobat cap anotaci'#243' del TAG que ens ocupa, mantenim el TAG per ' +
        'substituir-lo en obertures posteriors de l'#39'informe */'
      
        '                                 ELSE RETORNA = 0;  /* Altrament' +
        ', ja hem fet els "Suspend" corresponets */'
      '            END;'
      ''
      
        '            /* Usuari de l'#39'anotaci'#243' a l'#39'alta dels professionals ' +
        'de cada grup no metge */'
      '            ELSE IF (TAG STARTING WITH '#39'%UALTA_'#39') THEN'
      '            BEGIN'
      
        '                  SELECT USUARI FROM P_INFORMES_ITEMS_ANOTACIOAL' +
        'TA(:C_TRACTAMENT, F_Left(F_ReplaceText('#39'%UALTA_'#39', '#39#39', :TAG), 2))' +
        ' INTO :VALOR;'
      '            END;'
      ''
      '            ELSE IF (TAG = '#39'%CE_MOTIU_CmA%'#39') THEN'
      '            BEGIN'
      '                SELECT H.ANOTACIO'
      '                FROM   HISTORIA H'
      
        '                JOIN   TRACTAMENTS T ON H.C_TRACTAMENT = T.C_TRA' +
        'CTAMENT'
      '                WHERE  T.C_TRACTAMENT = :C_TRACTAMENT'
      '                AND    H.C_USUARI = :C_USUARI'
      '                AND    H.ANULAT = "N"'
      '                AND    H.QUEES = 40  /* rec'#224'rrega BCF */'
      '                ORDER  BY H.DATA DESC'
      '                ROWS   1'
      '                INTO  :VALOR;'
      ''
      '                ORDRE = -1;'
      '            END'
      '            '
      
        '            /* Medicaci'#243' actual - si ja est'#224' guardada a l'#39#237'tem e' +
        'n un bolcat anterior, no passarem per aqu'#237' (ja haurem retornat e' +
        'l valor al primer "if") */'
      '            ELSE IF (TAG = '#39'%MEDICACIO_ACT%'#39') THEN'
      '            BEGIN'
      
        '                  /* Si farmatools est'#224' actiu, haurem de cridar ' +
        'el WS de Prescripcions de FT */'
      '                  IF (FT_ON = 1) THEN'
      '                  BEGIN'
      '                        VALOR = '#39'WS_FARMATOOLS'#39';'
      '                        ORDRE = -1;    /* text llarg */'
      '                  END;'
      
        '                  /* Altrament busquem la medicaci'#243' a OrdresMedi' +
        'ques */'
      '                  ELSE BEGIN'
      '                        FOR SELECT PRESCRIPCIO'
      
        '                            FROM   P_INFORMES_PLANTILLES_MEDICAC' +
        'IO(:C_TRACTAMENT, :IDIOMA)'
      '                            INTO  :VALOR'
      '                        DO BEGIN'
      '                              ORDRE = ORDRE + 1;'
      '                              SUSPEND;'
      '                        END;'
      ''
      
        '                        IF (ORDRE = 0) THEN VALOR = '#39'...'#39';   /* ' +
        'Si no hem trobat medicaci'#243' activa, posem "..." perqu'#232' l'#39'escrigui' +
        'n a m'#224' */'
      
        '                                       ELSE RETORNA = 0;     /* ' +
        'Altrament, ja hem anat fent els "Suspend" corresponents */'
      '                  END;'
      '            END;'
      '            '
      '            /* Frases extres segons certes condicions */'
      '            ELSE IF (TAG = '#39'%FRASE_EXTRA%'#39') THEN'
      '            BEGIN'
      
        '                  SELECT ANOTACIO FROM P_INFORMES_PLANTILLES_FRA' +
        'SEEXTRA(:C_HISTORIA, :C_TRACTAMENT, :IDIOMA, :C_TIPUS, :ID_INFOR' +
        'ME, :TIPUSECB, '#39'N'#39') INTO :VALOR;'
      
        '                  ORDRE = -1;  /* Els textos llargs fallen en fe' +
        'r ReplaceText al Word; per'#242' amb "Paste" funciona; per aix'#242' el ma' +
        'rco amb ordre -1 encara que nom'#233's retorno 1 registre */'
      '            END;'
      ''
      '            /* Frases fixes en algunes plantilles */'
      '            ELSE IF (TAG STARTING WITH '#39'%FF_'#39') THEN'
      '            BEGIN'
      
        '                  SELECT TEXT_CA, TEXT_ES, TEXT_EN FROM INFORMES' +
        '_LLISTES WHERE GRUPS_UM = :TAG AND BAIXA = '#39'N'#39' AND AUTOMATIC = "' +
        'S" INTO :TEXT_CA, :TEXT_ES, :TEXT_EN;'
      ''
      '                  IF      (IDIOMA = 1) THEN VALOR = :TEXT_CA;'
      '                  ELSE IF (IDIOMA = 2) THEN VALOR = :TEXT_ES;'
      '                  ELSE IF (IDIOMA = 3) THEN VALOR = :TEXT_EN;'
      ''
      
        '                  ORDRE = -1;  /* Els textos llargs fallen en fe' +
        'r ReplaceText al Word; per'#242' amb "Paste" funciona; per aix'#242' el ma' +
        'rco amb ordre -1 encara que nom'#233's retorno 1 registre */'
      '            END'
      ''
      '            ELSE IF (TAG = '#39'%METGE%'#39') THEN VALOR = METGE;'
      '            ELSE IF (TAG = '#39'%MET_NOM%'#39') THEN VALOR = MET_NOM;'
      
        '            ELSE IF (TAG = '#39'%MET_COGNOM1%'#39') THEN VALOR = MET_COG' +
        'NOM1;'
      
        '            ELSE IF (TAG = '#39'%MET_COGNOM2%'#39') THEN VALOR = MET_COG' +
        'NOM2;'
      
        '            ELSE IF (TAG = '#39'%MET_TRACTENOM%'#39') THEN VALOR = MET_T' +
        'RACTE ||'#39' '#39'|| MET_NOMSENCER;'
      '            ELSE IF (TAG = '#39'%MET_NC%'#39') THEN  VALOR = MET_NC;'
      
        '            ELSE IF (TAG = '#39'%MET_NOMSENCER%'#39') THEN VALOR = MET_N' +
        'OMSENCER;'
      
        '            ELSE IF (TAG = '#39'%MET_TITULACIO%'#39') THEN VALOR = MET_T' +
        'ITULACIO;'
      ''
      '            ELSE IF (TAG = '#39'%SIGNATURA_UN%'#39') THEN'
      '            BEGIN'
      
        '                  IF (MET_GRUP = '#39'UN'#39') THEN VALOR = MET_TRACTE |' +
        '|'#39' '#39'|| MET_NOMSENCER || F_NLine() || MET_TITULACIO || F_NLine() ' +
        '|| '#39'N'#250'm. Col.: '#39' || MET_NC;'
      '                                       ELSE VALOR = '#39#39';'
      '            END;'
      '            '
      
        '            ELSE IF (TAG = '#39'%DATA_VALIDA%'#39') THEN VALOR = F_DateT' +
        'oStr("TODAY");'
      ''
      
        '            ELSE IF (TAG = '#39'%A_DATA_PROVA%'#39') THEN VALOR = F_Date' +
        'ToStr(A_DATA_PROVA);'
      
        '            ELSE IF (TAG = '#39'%A_PROVA%'#39')      THEN BEGIN VALOR = ' +
        'F_LTrim(A_PROVA); ORDRE = -1; END'
      
        '            ELSE IF (TAG = '#39'%A_RSLT%'#39')       THEN BEGIN VALOR = ' +
        'F_LTrim(A_RSLT); ORDRE = -1; END'
      
        '            ELSE IF (TAG = '#39'%A_REF%'#39')        THEN BEGIN VALOR = ' +
        'F_LTrim(A_REF); ORDRE = -1; END'
      ''
      '            ELSE IF (TAG = '#39'%PCAT%'#39') THEN'
      '            BEGIN'
      '                  SELECT L.D_ITEM'
      '                  FROM   ESCALESLIN L'
      '                  JOIN   ESCALESCAP C ON L.CLAU = C.CLAU'
      '                  WHERE  C.C_HISTORIA = :C_HISTORIA'
      '                  AND    L.C_ITEM = 1267'
      '                  AND    ANULAT = "N"'
      '                  ORDER  BY C.DATA_ADM DESC'
      '                  ROWS   1'
      '                  INTO   :VALOR;'
      ''
      '                  IF (VALOR = '#39#39') THEN VALOR = TAG;'
      '            END;'
      ''
      '            ELSE IF (TAG = '#39'%ESCALES_ATD%'#39') THEN'
      '            BEGIN'
      
        '                  SELECT ANOTACIO FROM P_INFORMES_PLANTILLES_ESC' +
        'ALESATD(:C_TRACTAMENT, :IDIOMA) INTO :VALOR;'
      
        '                  ORDRE = -1;  /* Els textos llargs fallen en fe' +
        'r ReplaceText al Word; per'#242' amb "Paste" funciona; per aix'#242' el ma' +
        'rco amb ordre -1 encara que nom'#233's retorno 1 registre */'
      '            END;'
      '            '
      '            /* CNI contencions */'
      
        '            ELSE IF (TAG = '#39'%METGE_VALIDA%'#39') THEN VALOR = CODI_M' +
        'ETGE_PAUTA_CONTENCIO;'
      
        '            ELSE IF (TAG = '#39'%METGE_VALIDA%'#39') THEN VALOR = CODI_M' +
        'ETGE_PAUTA_CONTENCIO;'
      
        '            ELSE IF (TAG = '#39'%METGE_PAUTA%'#39')  THEN VALOR = METGE_' +
        'PAUTA_CONTENCIO;'
      
        '            ELSE IF (TAG = '#39'%DATA_PAUTA%'#39')   THEN VALOR = F_Date' +
        'TimeToStr(DATA_PAUTA_CONTENCIO);'
      '            '
      '            '
      
        '            /* Si encara no hem fet el suspend, el fem ara (per ' +
        'als diagn'#242'stics i certes anotacions l'#39'hem fet durant els bucles ' +
        'respectius ja que n'#39'hi poden haver m'#233's d'#39'un) */'
      '            IF (RETORNA = 1) THEN SUSPEND;'
      '      END;'
      '      '
      '      '
      
        '      /* CNI: Ara que ja hem recuperat la info de tots els TAGS,' +
        ' hem de composar l'#39#237'tem del 2n signant'
      '      IF ((C_TIPUS = '#39'CNI'#39') AND (FASE = 1)) THEN'
      '      BEGIN'
      
        '            IF (NOM_SIGNANT2 = '#39#39') THEN BEGIN NOM_SIGNANT2 = NUL' +
        'L; VERBAL = '#39#39'; FRASE_VERBAL = '#39#39'; FRASE_VERBAL2 = '#39#39'; END;'
      '                                   ELSE VERBAL = '#39'VERBAL'#39';'
      '            TAG = '#39'%SIGNANT2%'#39';'
      
        '            VALOR = NOM_SIGNANT2 || F_NLine() || '#39'DNI/NIF/ID: '#39' ' +
        '|| NUM_SIGNANT2;  /* la concatenaci'#243' amb "null", retorna null'
      '            SUSPEND;'
      '      END;'
      '      */'
      'END')
    Dic1 = Informes_Plantilles
    Dic1Name = 'Plantilles'
    Abierta = False
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
    Left = 1388
    Top = 24
  end
  object Informes_HCCC: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'ID Informe'
        NombreDB = 'ID_Informe'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'informe'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'L'#237'nia'
        NombreDB = 'Linia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'ID Informe'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID HCCC'
        NombreDB = 'ID_HCCC'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ID de publicaci'#243' a l'#39'HC3'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID HCCC anterior'
        NombreDB = 'ID_HCCC_OLD'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ID aterior de publicaci'#243' a l'#39'HC3'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Republica'
        NombreDB = 'Republica'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID nova HCE'
        NombreDB = 'ID_nHCE'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Camp autoincremental pel watcher d'#39'informes de la nova HCE'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Publicar HC3'
        NombreDB = 'Publicar_HC3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SNDR'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Publicar APP'
        NombreDB = 'Publicar_APP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SNDR'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID APP'
        NombreDB = 'ID_APP'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ID de publicaci'#243' a l'#39'APP de Guttmann'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID APP anterior'
        NombreDB = 'ID_APP_OLD'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ID anterior de publicaci'#243' a l'#39'APP de Guttmann'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Publicar UNICAS'
        NombreDB = 'Publicar_UNC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SNDR'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID UNICAS'
        NombreDB = 'ID_UNC'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ID de publicaci'#243' a UNICAS'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID UNICAS anterior'
        NombreDB = 'ID_UNC_OLD'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'ID de publicaci'#243' anterior a UNICAS'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Informe'
          'L'#237'nia')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'informe'
        NombreDB = 'informe'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Informe')
        Tipo = tiForaneo
        ForaneoDic = Informes
        ForaneoCampos.Strings = (
          'ID Informe')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'informe'
        Master = Informes
        BuscaOrigen.Strings = (
          'ID Informe')
        CopiarOrigen.Strings = (
          'ID Informe')
        CopiarMaster.Strings = (
          'ID Informe')
        BuscaMaster.Strings = (
          'ID Informe')
      end>
    Nombre = 'Informes HCCC'
    NombreTabla = 'Informes_HCCC'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID Informe'
      'L'#237'nia'
      'ID HCCC'
      'ID HCCC anterior'
      'Republica'
      'ID nova HCE'
      'Publicar HC3'
      'Publicar APP'
      'ID APP'
      'ID APP anterior'
      'Publicar UNICAS'
      'ID UNICAS'
      'ID UNICAS anterior')
    IndiceVer = 'informe'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 308
    Top = 144
  end
  object T_InfReg_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      '
      '      IF (NEW.LINIA IS NULL) THEN'
      '      BEGIN'
      '            SELECT MAX(LINIA) + 1'
      '            FROM   INFORMES_REG'
      '            WHERE  ID_INFORME = NEW.ID_INFORME'
      '            INTO   NEW.LINIA;'
      '            '
      '            IF (NEW.LINIA IS NULL) THEN NEW.LINIA = 1;'
      '      END;'
      '   END;'
      '     '
      'END')
    Dic1 = Informes_Reg
    Dic1Name = 'Informes_Reg'
    Abierta = False
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
    Left = 216
    Top = 194
  end
  object T_InfHCCC_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_ESTAT INTEGER;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      '
      '      IF (NEW.LINIA IS NULL) THEN'
      '      BEGIN'
      '            SELECT MAX(LINIA) + 1'
      '            FROM   INFORMES_HCCC'
      '            WHERE  ID_INFORME = NEW.ID_INFORME'
      '            INTO   NEW.LINIA;'
      '            '
      '            IF (NEW.LINIA IS NULL) THEN NEW.LINIA = 1;'
      '      END;'
      '      '
      
        '      /* Informem l'#39'ID nova HCE via generator, nom'#233's si l'#39'inform' +
        'e ja est'#224' finalitat */'
      '      IF (NEW.ID_nHCE IS NULL) THEN'
      '      BEGIN'
      
        '            SELECT C_ESTAT FROM INFORMES WHERE ID_INFORME = NEW.' +
        'ID_INFORME INTO :C_ESTAT;'
      ''
      '            IF (C_ESTAT = 10)'
      '            THEN NEW.ID_nHCE = GEN_ID(G_INFORME_nHCE, 1);'
      '      END'
      '   END;'
      '     '
      'END')
    Dic1 = Informes_HCCC
    Dic1Name = 'Informes_HCCC'
    Abierta = False
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
    Left = 308
    Top = 194
  end
  object P_Informes_List: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE, AREA SMALLINT)'
      'RETURNS (C_HISTORIA           INTEGER,'
      '         C_USUARI             VARCHAR(5),'
      '         SOLICITANT           VARCHAR(80),'
      '         PARENTIU             VARCHAR(80),'
      '         C_TIPUS              CHAR(3),'
      '         N_TIPUS              VARCHAR(80),'
      '         ENTREGA              VARCHAR(40),'
      '         URGENT               CHAR(1),'
      '         ESTAT                VARCHAR(40),'
      '         ARXIU                VARCHAR(100),'
      '         DATA_SOLICITUD       DATE,'
      '         DATA_IMPRES          DATE,'
      '         DATA_ULT_IMPRES      DATE,'
      '         REIMPRESSIONS        VARCHAR(25),'
      '         C_USER_ENTREGA       VARCHAR(5),'
      '         DATA_ENTREGA         DATE,'
      '         C_USER_PETICIO_ANULA VARCHAR(5),'
      '         DATA_PETICIO_ANULA   DATE,'
      '         MOTIU_PETICIO_ANULA  VARCHAR(250),'
      '         C_USER_ANULA         VARCHAR(5),'
      '         DATA_ANULA           DATE,'
      '         MOTIU_ANULA          VARCHAR(250),'
      '         CONTACTE             VARCHAR(40),'
      '         COMENTARI            VARCHAR(250),'
      '         GESTIONAT            SMALLINT,'
      '         AREA_GESTIONAT       VARCHAR(40)'
      '         )'
      'AS'
      '  DECLARE VARIABLE ID_INFORME INTEGER;'
      'BEGIN'
      ''
      '  IF (AREA IS NULL) THEN'
      '  BEGIN'
      
        '    FOR SELECT I.ID_INFORME, I.C_HISTORIA, I.C_USUARI, I.SOLICIT' +
        'ANT, I.PARENTIU, I.C_TIPUS, T.N_TIPUS, C2.N_CODI, I.URGENT, C.N_' +
        'CODI, I.ARXIU, IR.DATA, I.CONTACTE, I.COMENTARI,'
      '               I.GESTIONAT, CC.N_CODI'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR   ON I.ID_INFORME = IR.ID_INFORME AND I' +
        'R.ACCIO=1 AND IR.LINIA=1'
      
        '    JOIN CODICAMPS C       ON I.C_ESTAT   = C.C_CODI  AND C.TIPU' +
        'SCODI ='#39'INFORMES.ESTAT'#39
      
        '    LEFT JOIN CODICAMPS C2 ON I.C_ENTREGA = C2.C_CODI AND C2.TIP' +
        'USCODI='#39'INFORMES.ENTREGA'#39
      
        '    LEFT JOIN CODICAMPS CC ON I.GESTIONAT = CC.C_CODI AND CC.TIP' +
        'USCODI='#39'INFORMES.GESTIONA'#39
      '    JOIN INFORMES_TIPUS T  ON I.C_TIPUS = T.C_TIPUS'
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF'
      '    ORDER BY IR.DATA, I.C_HISTORIA'
      
        '    INTO :ID_INFORME, :C_HISTORIA, :C_USUARI, :SOLICITANT, :PARE' +
        'NTIU, :C_TIPUS, :N_TIPUS, :ENTREGA, :URGENT, :ESTAT, :ARXIU, :DA' +
        'TA_SOLICITUD, :CONTACTE, :COMENTARI,'
      '         :GESTIONAT, :AREA_GESTIONAT'
      '    DO BEGIN'
      '  '
      '      SELECT DATA FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 6'
      '      ORDER BY DATA'
      '      ROWS 1'
      '      INTO :DATA_IMPRES;'
      ''
      '      SELECT DATA, F_LEFT(COMENTARI,25) FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 6'
      '      ORDER BY DATA DESC'
      '      ROWS 1'
      '      INTO :DATA_ULT_IMPRES, :REIMPRESSIONS;'
      ''
      '      SELECT C_USUARI, DATA FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 7'
      '      ORDER BY DATA'
      '      ROWS 1'
      '      INTO :C_USER_ENTREGA, :DATA_ENTREGA;'
      '      '
      '      SELECT C_USUARI, DATA, COMENTARI FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 9'
      '      ORDER BY DATA'
      '      ROWS 1'
      '      INTO :C_USER_ANULA, :DATA_ANULA, :MOTIU_ANULA;'
      '      '
      '      SELECT C_USUARI, DATA, COMENTARI FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 8'
      '      ORDER BY DATA'
      '      ROWS 1'
      
        '      INTO :C_USER_PETICIO_ANULA, :DATA_PETICIO_ANULA, :MOTIU_PE' +
        'TICIO_ANULA;'
      ''
      '      SUSPEND;'
      '      '
      '      /* Netegem camps */'
      
        '      DATA_IMPRES=NULL; DATA_ULT_IMPRES=NULL; REIMPRESSIONS=NULL' +
        '; C_USER_ENTREGA=NULL; DATA_ENTREGA=NULL; C_USER_ANULA=NULL;'
      
        '      DATA_ANULA=NULL; MOTIU_ANULA=NULL; C_USER_PETICIO_ANULA=NU' +
        'LL; DATA_PETICIO_ANULA=NULL; MOTIU_PETICIO_ANULA=NULL;'
      '    END;'
      '  END;'
      '  ELSE BEGIN'
      
        '    FOR SELECT I.ID_INFORME, I.C_HISTORIA, I.C_USUARI, I.SOLICIT' +
        'ANT, I.PARENTIU, I.C_TIPUS, T.N_TIPUS, C2.N_CODI, I.URGENT, C.N_' +
        'CODI, I.ARXIU, IR.DATA, I.CONTACTE, I.COMENTARI,'
      '               I.GESTIONAT, CC.N_CODI'
      '    FROM INFORMES I'
      
        '    JOIN INFORMES_REG IR   ON I.ID_INFORME = IR.ID_INFORME AND I' +
        'R.ACCIO=1 AND IR.LINIA=1'
      
        '    JOIN CODICAMPS C       ON I.C_ESTAT   = C.C_CODI  AND C.TIPU' +
        'SCODI ='#39'INFORMES.ESTAT'#39
      
        '    LEFT JOIN CODICAMPS C2 ON I.C_ENTREGA = C2.C_CODI AND C2.TIP' +
        'USCODI='#39'INFORMES.ENTREGA'#39
      
        '    LEFT JOIN CODICAMPS CC ON I.GESTIONAT = CC.C_CODI AND CC.TIP' +
        'USCODI='#39'INFORMES.GESTIONA'#39
      '    JOIN INFORMES_TIPUS T  ON I.C_TIPUS = T.C_TIPUS'
      '    WHERE IR.DATA BETWEEN :DATAI AND :DATAF'
      '    AND   I.GESTIONAT = :AREA'
      '    ORDER BY IR.DATA, I.C_HISTORIA'
      
        '    INTO :ID_INFORME, :C_HISTORIA, :C_USUARI, :SOLICITANT, :PARE' +
        'NTIU, :C_TIPUS, :N_TIPUS, :ENTREGA, :URGENT, :ESTAT, :ARXIU, :DA' +
        'TA_SOLICITUD, :CONTACTE, :COMENTARI,'
      '         :GESTIONAT, :AREA_GESTIONAT'
      '    DO BEGIN'
      ''
      '      SELECT DATA FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 6'
      '      ORDER BY DATA'
      '      ROWS 1'
      '      INTO :DATA_IMPRES;'
      ''
      '      SELECT DATA, F_LEFT(COMENTARI,25) FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 6'
      '      ORDER BY DATA DESC'
      '      ROWS 1'
      '      INTO :DATA_ULT_IMPRES, :REIMPRESSIONS;'
      ''
      '      SELECT C_USUARI, DATA FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 7'
      '      ORDER BY DATA'
      '      ROWS 1'
      '      INTO :C_USER_ENTREGA, :DATA_ENTREGA;'
      ''
      '      SELECT C_USUARI, DATA, COMENTARI FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 9'
      '      ORDER BY DATA'
      '      ROWS 1'
      '      INTO :C_USER_ANULA, :DATA_ANULA, :MOTIU_ANULA;'
      ''
      '      SELECT C_USUARI, DATA, COMENTARI FROM INFORMES_REG'
      '      WHERE ID_INFORME = :ID_INFORME AND ACCIO = 8'
      '      ORDER BY DATA'
      '      ROWS 1'
      
        '      INTO :C_USER_PETICIO_ANULA, :DATA_PETICIO_ANULA, :MOTIU_PE' +
        'TICIO_ANULA;'
      ''
      '      SUSPEND;'
      ''
      '      /* Netegem camps */'
      
        '      DATA_IMPRES=NULL; DATA_ULT_IMPRES=NULL; REIMPRESSIONS=NULL' +
        '; C_USER_ENTREGA=NULL; DATA_ENTREGA=NULL; C_USER_ANULA=NULL;'
      
        '      DATA_ANULA=NULL; MOTIU_ANULA=NULL; C_USER_PETICIO_ANULA=NU' +
        'LL; DATA_PETICIO_ANULA=NULL; MOTIU_PETICIO_ANULA=NULL;'
      '    END;'
      '  END;'
      ''
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Top = 144
  end
  object P_Inf_GeneraEMM: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraEMM'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA DATE, EXECUTA CHAR(1), NHC INTEGER)'
      
        'RETURNS (C_HISTORIA INTEGER, C_TRACTAMENT INTEGER, C_COORDINADOR' +
        ' VARCHAR(5))'
      'AS'
      '      DECLARE VARIABLE INICI_MES DATE;'
      '      DECLARE VARIABLE FI_MES DATE;'
      '      DECLARE VARIABLE ID_INFORME INTEGER;'
      '      DECLARE VARIABLE LINIA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      'BEGIN'
      
        '      /* Farem c'#243'rrer aquesta procedure els '#250'ltims dies de cada ' +
        'mes (a partir del dia 23)'
      
        '         perqu'#232' generi la sol'#183'licitud d'#39'informes d'#39'Evoluci'#243' Mens' +
        'ual per a M'#250'tua dels pacients que el requereixin: */'
      '         '
      
        '      IF (DIA IS NULL) THEN DIA = "TODAY";  /* Per a proves o pe' +
        'r for'#231'ar la generaci'#243' d'#39'un informe antic */'
      '      '
      '      IF (F_DAYOFMONTH(DIA) >= 23) THEN'
      '      BEGIN'
      
        '            INICI_MES = '#39'1.'#39' || F_MONTH(DIA) ||'#39'.'#39'|| F_YEAR(DIA)' +
        ';'
      
        '            FI_MES = F_LASTDAYOFMONTH(F_MONTH(DIA), F_YEAR(DIA))' +
        ' || '#39'.'#39' || F_MONTH(DIA) || '#39'.'#39' || F_YEAR(DIA);'
      '            '
      
        '            /* Per tots els pacients ingressats i ambulatoris, q' +
        'ue no siguin alta el mes actual, i la m'#250'tua dels quals sol'#183'licit' +
        'i informe d'#39'evoluci'#243' */'
      
        '            FOR SELECT  T.C_TRACTAMENT, T.C_HISTORIA, T.C_COORDI' +
        'NADOR'
      '                FROM    TRACTAMENTS T'
      
        '                JOIN    CLIENTS C ON T.C_CENTREFAC = C.C_CENTREF' +
        'AC AND T.C_CLIENT = C.C_CLIENT AND C.INFORME_EMM = '#39'S'#39'          ' +
        '    /* M'#250'tues que demanen informe */'
      
        '                JOIN    DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRE' +
        'STACIO AND D.C_DRET = '#39'P182'#39'                                    ' +
        '    /* Prestacions per les que s'#39'ha de fer informe EMM */'
      
        '                WHERE ((F_DateNull(T.DATA_ALTA, T.DATA_PREALTA) ' +
        '> :FI_MES)  OR  (T.DATA_ALTA IS NULL AND T.DATA_PREALTA IS NULL)' +
        ')   /* Alta no prevista dins d'#39'aquest mes */'
      '                AND   ((T.C_HISTORIA = :NHC) OR (:NHC IS NULL))'
      
        '                INTO   :C_TRACTAMENT, :C_HISTORIA, :C_COORDINADO' +
        'R'
      '            DO BEGIN'
      '                  ID_INFORME = 0;'
      '                  '
      
        '                  /* Comprovem que la sol'#183'licitud encara no s'#39'ha' +
        'gi generat'
      
        '                    (si est'#224' anul'#183'lada tampoc no la generem - l'#39 +
        'hauran de recuperar des d'#39'Admissions pequ'#232' es mogui el fitxer co' +
        'rresponent a l'#39'informe, si ja estava creat */'
      '                  SELECT I.ID_INFORME'
      '                  FROM   INFORMES I'
      
        '                  JOIN   INFORMES_REG R on I.ID_INFORME = R.ID_I' +
        'NFORME AND LINIA = 1'
      '                  WHERE  I.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    I.C_TIPUS = "EMM"'
      '                  AND    R.DATA >= :INICI_MES'
      '                  AND    R.DATA <= :FI_MES'
      '                  ROWS   1'
      '                  INTO  :ID_INFORME;'
      ''
      '                  IF (ID_INFORME IS NULL) THEN ID_INFORME = 0;'
      '                  '
      '                  /* Si no existeix sol'#183'licitud, la generem */'
      '                  IF (ID_INFORME = 0) THEN'
      '                  BEGIN'
      '                     IF (EXECUTA = '#39'S'#39') THEN'
      '                     BEGIN'
      '                        ID_INFORME = GEN_ID(G_INFORMES, 1);'
      '                  '
      
        '                        /* Cap'#231'alera sol'#183'licitud informe EMM    ' +
        '-    dirigits al coordinador del tractament; s'#39'entreguen via e-m' +
        'ail; s'#243'n gestionsats per Admissions */'
      
        '                        INSERT INTO INFORMES (ID_INFORME, C_HIST' +
        'ORIA, C_TRACTAMENT, C_TIPUS, C_USUARI, C_ENTREGA, URGENT, C_ESTA' +
        'T, GESTIONAT)'
      
        '                        VALUES (:ID_INFORME, :C_HISTORIA, :C_TRA' +
        'CTAMENT, "EMM", :C_COORDINADOR, 4, "S", 0, 0);'
      ''
      '                        /* Registrem l'#39'acci'#243' (sol'#183'licitud) */'
      
        '                        IF (DIA = "TODAY") THEN DATA = "NOW";   ' +
        '       /* Si estem for'#231'ant la inserci'#243' d'#39'un informe antic, li po' +
        'sem la data introdu'#239'da (antiga) */'
      '                                           ELSE DATA = :DIA;'
      ''
      
        '                        INSERT INTO INFORMES_REG (ID_INFORME, LI' +
        'NIA, ACCIO, DATA, COMENTARI)'
      
        '                        VALUES (:ID_INFORME, 1, 1, :DIA, "Sol'#183'li' +
        'citud EMM autom'#224'tica");'
      '                     END;'
      ''
      '                     SUSPEND;'
      '                  END'
      ''
      '            END;'
      '      END;'
      '   '
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 44
    Top = 424
  end
  object P_Inf_GeneraRNP: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraRNP'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA DATE)'
      
        '/* RETURNS (C_HISTORIA INTEGER, C_TRACTAMENT INTEGER, C_COORDINA' +
        'DOR VARCHAR(5), DATA_INGRES DATE)   /* -- Nom'#233's per proves */'
      'AS'
      '      DECLARE VARIABLE C_HISTORIA INTEGER;'
      '      DECLARE VARIABLE C_TRACTAMENT INTEGER;'
      '      DECLARE VARIABLE C_COORDINADOR VARCHAR(5);'
      '      DECLARE VARIABLE DATA_INGRES DATE;'
      '      DECLARE VARIABLE ID_INFORME INTEGER;'
      'BEGIN'
      
        '      /* Generarem una sol'#183'licitud d'#39'informe de Revisi'#243' No Prese' +
        'ncial per als pacients que l'#39'hagin feta */'
      ''
      
        '      /* Des del programador volem que la procedure s'#39'executi mi' +
        'rant revisions del dia anterior (=> passarem par'#224'metre NULL)'
      
        '         per si algun pacient s'#39'ha filiat per'#242' finalment no s'#39'ha' +
        ' pogut contactar amb ell i, per tant, no s'#39'ha fet la revisi'#243' */'
      '      IF (DIA IS NULL) THEN'
      '      BEGIN'
      '            DIA = "TODAY";'
      
        '            IF      (F_DiaDeLaSemana(DIA) in (6,7)) THEN EXIT;  ' +
        '    /* En cap de setmana no fem res */'
      
        '            ELSE IF (F_DiaDeLaSemana(DIA) = 1) THEN DIA = DIA - ' +
        '3;  /* Dilluns generem les del divendres anterior */'
      
        '                                               ELSE DIA = DIA - ' +
        '1;'
      '      END;'
      '      '
      
        '      /* Per tots els pacients amb revisi'#243' no presencial de fa 2' +
        ' dies */'
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_COORDINADOR, ' +
        'T.DATA_INGRES'
      '          FROM   TRACTAMENTS T'
      '          WHERE  T.C_PRESTACIO = '#39'6004'#39
      '          AND    T.DATA_INGRES = :DIA'
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :C_COORDINADOR, :DAT' +
        'A_INGRES'
      '      DO BEGIN'
      '            ID_INFORME = 0;'
      '            '
      
        '            /* Comprovem que la sol'#183'licitud encara no s'#39'hagi gen' +
        'erat'
      
        '              (si est'#224' anul'#183'lada tampoc no la generem - l'#39'hauran' +
        ' de recuperar des d'#39'Admissions perqu'#232' es mogui el fitxer corresp' +
        'onent a l'#39'informe, si ja estava creat */'
      '            SELECT I.ID_INFORME'
      '            FROM   INFORMES I'
      
        '            JOIN   INFORMES_REG R on I.ID_INFORME = R.ID_INFORME' +
        ' AND LINIA = 1'
      '            WHERE  I.C_TRACTAMENT = :C_TRACTAMENT'
      '            AND    I.C_TIPUS = "RNP"'
      
        '            AND    R.DATA BETWEEN :DIA-15 AND :DIA+15  /* ho mir' +
        'em amb un marge de 15 dies per si s'#39'ha creat manualment */'
      '            ROWS   1'
      '            INTO  :ID_INFORME;'
      ''
      '            IF (ID_INFORME IS NULL) THEN ID_INFORME = 0;'
      '                  '
      '            /* Si no existeix sol'#183'licitud, la generem */'
      '            IF (ID_INFORME = 0) THEN'
      '            BEGIN'
      ''
      '                  ID_INFORME = GEN_ID(G_INFORMES, 1);'
      '                  '
      '                  /* Cap'#231'alera sol'#183'licitud informe EMM */'
      
        '                  INSERT INTO INFORMES (ID_INFORME, C_HISTORIA, ' +
        'C_TRACTAMENT, C_TIPUS, C_USUARI, C_ENTREGA, C_ESTAT, GESTIONAT)'
      
        '                  VALUES (:ID_INFORME, :C_HISTORIA, :C_TRACTAMEN' +
        'T, "RNP", :C_COORDINADOR, 1, 0, 2);                             ' +
        '   /* entrega per correu postal, gestionat per secretaria m'#232'dica' +
        ' */'
      ''
      '                  /* Registrem l'#39'acci'#243' (sol'#183'licitud) */'
      
        '                  INSERT INTO INFORMES_REG (ID_INFORME, LINIA, A' +
        'CCIO, DATA, COMENTARI)'
      
        '                  VALUES (:ID_INFORME, 1, 1, "NOW", "Sol'#183'licitud' +
        ' RNP autom'#224'tica");'
      ''
      '/*                  SUSPEND;   /* -- per proves */'
      '            END'
      '      END;'
      '   '
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 246
    Top = 374
  end
  object P_Inf_GeneraEMB: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraEMB'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA DATE, EXECUTA CHAR(1), NHC INTEGER)'
      
        'RETURNS (C_HISTORIA INTEGER, COMENTARI VARCHAR(250), C_USUARI VA' +
        'RCHAR(5))'
      'AS'
      '      DECLARE VARIABLE INICI_MES DATE;'
      '      DECLARE VARIABLE FI_MES DATE;'
      '      DECLARE VARIABLE ID_INFORME INTEGER;'
      '      DECLARE VARIABLE COORDINADOR VARCHAR(5);'
      '      DECLARE VARIABLE GRUP VARCHAR(2);'
      '      DECLARE VARIABLE DATA DATE;'
      'BEGIN'
      
        '      /* Farem c'#243'rrer aquesta procedure els '#250'ltims dies de cada ' +
        'mes (a partir del dia 15)'
      
        '         perqu'#232' generi la sol'#183'licitud d'#39'informes d'#39'Evoluci'#243' Mens' +
        'ual per a M'#250'tua dels pacients de Barcelona: */'
      '         '
      
        '      IF (DIA IS NULL) THEN DIA = "TODAY";  /* Per a proves o pe' +
        'r for'#231'ar la generaci'#243' d'#39'un informe antic */'
      '      '
      '      IF (F_DAYOFMONTH(DIA) >= 15) THEN'
      '      BEGIN'
      
        '            INICI_MES = '#39'1.'#39' || F_MONTH(DIA) ||'#39'.'#39'|| F_YEAR(DIA)' +
        ';'
      
        '            FI_MES = F_LASTDAYOFMONTH(F_MONTH(DIA), F_YEAR(DIA))' +
        ' || '#39'.'#39' || F_MONTH(DIA) || '#39'.'#39' || F_YEAR(DIA);'
      '            '
      
        '            /* Per cada pacients ambulatori de GBHI, que no sigu' +
        'i alta el mes actual */'
      '            FOR SELECT  DISTINCT T.C_HISTORIA'
      '                FROM    TRACTAMENTS T'
      
        '                JOIN    DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRE' +
        'STACIO AND D.C_DRET = '#39'P195'#39'                                    ' +
        '     /* Prestacions per les que s'#39'ha de fer informe EMB */'
      
        '                JOIN    CENTREFAC C ON T.C_CENTREFAC = C.C_CENTR' +
        'EFAC AND C.ESMUTUA = '#39'S'#39'                                        ' +
        '     /* En demanen totes les m'#250'tues */'
      
        '                WHERE  ((F_DateNull(T.DATA_ALTA, T.DATA_PREALTA)' +
        ' > :FI_MES)  OR  (T.DATA_ALTA IS NULL AND T.DATA_PREALTA IS NULL' +
        '))   /* Alta no prevista dins d'#39'aquest mes */'
      '                AND   ((T.C_HISTORIA = :NHC) OR (:NHC IS NULL))'
      '                INTO   :C_HISTORIA'
      '            DO BEGIN'
      '                  ID_INFORME = 0;'
      '                  '
      
        '                  /* Comprovem que la sol'#183'licitud encara no s'#39'ha' +
        'gi generat'
      
        '                     Ho mirem per NHC i data, no per tractament,' +
        ' ja que a GNPC els pacients tenen diverses prestacions actives a' +
        'lhora, per'#242' formen part del mateix tractament.'
      
        '                    (si est'#224' anul'#183'lada tampoc no la generem - l'#39 +
        'hauran de recuperar des d'#39'Admissions pequ'#232' es mogui el fitxer co' +
        'rresponent a l'#39'informe, si ja estava creat) */'
      '                  SELECT I.ID_INFORME'
      '                  FROM   INFORMES I'
      
        '                  JOIN   INFORMES_REG R on I.ID_INFORME = R.ID_I' +
        'NFORME AND LINIA = 1'
      '                  WHERE  I.C_HISTORIA = :C_HISTORIA'
      '                  AND    I.C_TIPUS = "EMB"'
      '                  AND    R.DATA >= :INICI_MES'
      '                  AND    R.DATA <= :FI_MES'
      '                  ROWS   1'
      '                  INTO  :ID_INFORME;'
      ''
      '                  IF (ID_INFORME IS NULL) THEN ID_INFORME = 0;'
      '                  '
      '                  /* Si no existeix sol'#183'licitud, la generem */'
      '                  IF (ID_INFORME = 0) THEN'
      '                  BEGIN'
      
        '                        /* Guardarem al camp "Comentari" (coment' +
        'ari de sol'#183'licitud) els coordinadors de les prestacions actives ' +
        'implicades  */'
      '                        COMENTARI = '#39#39';'
      '                        C_USUARI = NULL;'
      ''
      
        '                        FOR SELECT DISTINCT T.C_COORDINADOR, M.C' +
        '_GRUP'
      '                            FROM   TRACTAMENTS T'
      
        '                             JOIN  DRETSPRESTA D ON T.C_PRESTACI' +
        'O = D.C_PRESTACIO AND D.C_DRET = '#39'P195'#39'              /* Prestaci' +
        'ons per les que s'#39'ha de fer informe */'
      
        '                             JOIN  CENTREFAC C ON T.C_CENTREFAC ' +
        '= C.C_CENTREFAC AND C.ESMUTUA = '#39'S'#39'                  /* En deman' +
        'en totes les m'#250'tues */'
      
        '                             JOIN  METGES M ON T.C_COORDINADOR =' +
        ' M.CODI'
      '                             WHERE T.C_HISTORIA = :C_HISTORIA'
      
        '                             AND ((T.DATA_ALTA > :FI_MES)       ' +
        '                                                     /* Mirem qu' +
        'e no tingui l'#39'alta aquest mes (de fet, si l'#39'alta '#233's futura no es' +
        'tar'#224' entrada) */'
      
        '                              OR  (T.DATA_ALTA IS NULL AND (T.DA' +
        'TA_PREALTA > :FI_MES OR T.DATA_PREALTA IS NULL)))    /* Si l'#39'alt' +
        'a no est'#224' entrada, mirem que no tingui la prealta aquest mes */'
      '                            ORDER BY M.C_GRUP, T.C_COORDINADOR'
      '                            INTO :COORDINADOR, :GRUP'
      '                        DO BEGIN'
      
        '                              IF (COMENTARI <> '#39#39') THEN COMENTAR' +
        'I = COMENTARI || '#39',  '#39';'
      '                              '
      
        '                              COMENTARI = COMENTARI || F_LRTrim(' +
        ':COORDINADOR) || '#39' ('#39' || :GRUP || '#39')'#39';'
      '                              '
      
        '                              IF (GRUP = "ME") THEN C_USUARI = :' +
        'COORDINADOR;'
      '                        END;'
      ''
      '                        IF (EXECUTA = '#39'S'#39') THEN'
      '                        BEGIN'
      
        '                              ID_INFORME = GEN_ID(G_INFORMES, 1)' +
        ';'
      ''
      
        '                              /* Cap'#231'alera sol'#183'licitud informe E' +
        'MB    -    s'#39'entreguen via e-mail; s'#243'n gestionsats per Admission' +
        's BCN */'
      
        '                              /* No anir'#224' associada a cap tracta' +
        'ment ja que hi poden haver diverses prestacions implicades'
      
        '                                 per'#242' si el coordinador d'#39'algun ' +
        'dels tractaments '#233's METGE, el posarem com a USUARI a qui se sol'#183 +
        'licita l'#39'informe,'
      
        '                                 perqu'#232' li surti a la seva llist' +
        'a particular i per retornar-lo amb els autors de l'#39'informe en el' +
        ' moment de posar les signatures. */'
      
        '                              INSERT INTO INFORMES (ID_INFORME, ' +
        'C_HISTORIA, C_TIPUS, C_ENTREGA, URGENT, C_ESTAT, GESTIONAT, COME' +
        'NTARI, C_USUARI)'
      
        '                              VALUES (:ID_INFORME, :C_HISTORIA, ' +
        '"EMB", 4, "S", 0, 1, :COMENTARI, :C_USUARI);'
      ''
      
        '                              /* Registrem l'#39'acci'#243' (sol'#183'licitud)' +
        ' */'
      
        '                              IF (DIA = "TODAY") THEN DATA = "NO' +
        'W";          /* Si estem for'#231'ant la inserci'#243' d'#39'un informe antic,' +
        ' li posem la data introdu'#239'da (antiga) */'
      
        '                                                 ELSE DATA = :DI' +
        'A;'
      ''
      
        '                              INSERT INTO INFORMES_REG (ID_INFOR' +
        'ME, LINIA, ACCIO, DATA, COMENTARI)'
      
        '                              VALUES (:ID_INFORME, 1, 1, :DIA, "' +
        'Sol'#183'licitud EMB autom'#224'tica");'
      ''
      '                        END;'
      ''
      '                        SUSPEND;'
      '                  END'
      '            END;'
      '      END;'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 144
    Top = 424
  end
  object P_Inf_Autors: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Autors'
    ForceNombreDB = False
    Body.Strings = (
      '(ID_INFORME INTEGER)'
      'RETURNS (C_USUARI VARCHAR(5), C_GRUP VARCHAR(2))'
      'AS'
      '      DECLARE VARIABLE C_GRUP_ANT VARCHAR(2);'
      'BEGIN'
      ''
      '      C_GRUP_ANT = '#39#39';'
      ''
      '      FOR SELECT  DISTINCT R.C_USUARI, M.C_GRUP'
      '          FROM    INFORMES_REG R'
      '          JOIN    INFORMES I ON R.ID_INFORME = I.ID_INFORME'
      '          JOIN    METGES M ON R.C_USUARI = M.CODI'
      
        '          JOIN    DRETSMETGES D ON M.CODI = D.C_USUARI AND (D.C_' +
        'DRET = '#39'M267'#39' OR D.C_DRET = '#39'M287'#39')  /* usuaris amb dret de vali' +
        'dar informes conjunts */'
      '          WHERE   ID_INFORME = :ID_INFORME'
      
        '          AND    (R.C_USUARI <> I.C_USUARI  OR I.C_USUARI IS NUL' +
        'L)               /* Excloem l'#39'usuari a qui es demana, perqu'#232' ja ' +
        'l'#39'hem posat al principi */'
      
        '          AND     R.ACCIO = 12                                  ' +
        '                 /* obertura/edici'#243' de l'#39'informe */'
      '          ORDER   BY M.C_GRUP, R.DATA'
      '          INTO    :C_USUARI, :C_GRUP'
      '      DO BEGIN'
      
        '            IF ((C_GRUP_ANT <> C_GRUP) OR (C_GRUP = '#39'EA'#39')) THEN ' +
        'SUSPEND;         /* Els usuaris que fan informes conjunts de l'#39'h' +
        'ospital, s'#243'n tots del grup EASE; per aix'#242' els llistem sempre */'
      
        '            C_GRUP_ANT = C_GRUP;                                ' +
        '                 /* Per als de BCN, llistem el 1r de cada grup q' +
        'ue ha editat l'#39'informe ---- potser es pot canviar i llistar-los ' +
        'sempre tots?? */'
      '      END;'
      '      '
      ''
      
        '      /* Al final retornem l'#39'usuari a qui es demana l'#39'informe (s' +
        'i n'#39'hi ha, probablement ser'#224' el metge)'
      '      C_USUARI = NULL;'
      '      '
      '      SELECT C_USUARI, C_GRUP'
      '      FROM   INFORMES I'
      '      JOIN   METGES M ON I.C_USUARI = M.CODI'
      '      WHERE  ID_INFORME = :ID_INFORME'
      '      INTO  :C_USUARI, :C_GRUP;'
      ''
      '      IF (C_USUARI IS NULL) THEN C_USUARI = '#39#39';'
      '      IF (C_USUARI <> '#39#39') THEN SUSPEND;'
      '      */'
      ''
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 1492
    Top = 24
  end
  object P_Inf_GeneraRMB: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraRMB'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA DATE, EXECUTA CHAR(1), NHC INTEGER)'
      'RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      '  C_COORDINADOR   VARCHAR(5),'
      '  C_GRUP          VARCHAR(2),'
      '  CADUCAPERMIS    DATE'
      ')'
      'AS'
      '      DECLARE VARIABLE ID_INFORME INTEGER;'
      '      DECLARE VARIABLE COMENTARI  VARCHAR(250);'
      '      DECLARE VARIABLE DATA       DATE;'
      'BEGIN'
      
        '      /* Farem c'#243'rrer aquesta procedure cada dia, per generar la' +
        ' sol'#183'licitud d'#39'informe de Renovaci'#243' d'#39'autoritzaci'#243
      
        '         (m'#250'tua o intermediaris) dels pacients de Barcelona als ' +
        'quals caduqui el perm'#237's en els 10 dies seg'#252'ents: */'
      '         '
      
        '      IF (DIA IS NULL) THEN DIA = "TODAY";  /* Per a proves o pe' +
        'r for'#231'ar la generaci'#243' d'#39'un informe antic */'
      ''
      
        '      /* Per cada pacient ambulatori de GBCN, que tingui tractam' +
        'ents de diferents grups assistencials per renovar */'
      '      FOR SELECT DISTINCT T.C_HISTORIA, T.CADUCAPERMIS, M.C_GRUP'
      '          FROM   TRACTAMENTS T'
      '          JOIN   METGES      M ON T.C_COORDINADOR = M.CODI'
      
        '          JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACIO ' +
        'AND D.C_DRET = '#39'P197'#39'                                           ' +
        '    /* Prestacions per les que s'#39'ha de demanar renovaci'#243' d'#39'autor' +
        'itzaci'#243' a la m'#250'tua*/'
      
        '          JOIN   CENTREFAC   C ON T.C_CENTREFAC = C.C_CENTREFAC ' +
        'AND (C.ESMUTUA = '#39'S'#39' OR C.ESMUTUA = '#39'I'#39')                        ' +
        '    /* En demanen totes les m'#250'tues i els intermediaris */'
      
        '          WHERE  T.CADUCAPERMIS BETWEEN :DIA AND :DIA + 10      ' +
        '                                                                ' +
        '    /* Autoritzaci'#243' caduca en els propers 10 dies */'
      
        '          AND  ((F_DateNull(T.DATA_ALTA, T.DATA_PREALTA) > T.CAD' +
        'UCAPERMIS)  OR  (T.DATA_ALTA IS NULL AND T.DATA_PREALTA IS NULL)' +
        ')   /* Alta no prevista per abans la caducitat del perm'#237's */'
      '          AND  ((T.C_HISTORIA = :NHC) OR (:NHC IS NULL))'
      '          INTO  :C_HISTORIA, :CADUCAPERMIS, :C_GRUP'
      '      DO BEGIN'
      '            ID_INFORME = 0;'
      ''
      
        '            /* Comprovem que la sol'#183'licitud encara no s'#39'hagi gen' +
        'erat'
      
        '              (si est'#224' anul'#183'lada tampoc no la generem - l'#39'hauran' +
        ' de recuperar des d'#39'Admissions pequ'#232' es mogui el fitxer correspo' +
        'nent a l'#39'informe, si ja estava creat) */'
      '            SELECT I.ID_INFORME'
      '            FROM   INFORMES I'
      
        '            JOIN   INFORMES_REG R on I.ID_INFORME = R.ID_INFORME' +
        ' AND LINIA = 1'
      '            WHERE  I.C_HISTORIA = :C_HISTORIA'
      '            AND    I.C_TIPUS = "RMB"'
      
        '            AND    I.COMENTARI LIKE '#39'%('#39' || :C_GRUP || '#39')%'#39'   /*' +
        ' agrupem en un '#250'nic informe els tractaments del mateix grup assi' +
        'stencial */'
      
        '            AND    R.DATA >= :CADUCAPERMIS - 15               /*' +
        ' mirem sol'#183'licituds generades els darrers 15 dies, per no solapa' +
        'r amb renovacions anteriors */'
      '            ROWS   1'
      '            INTO  :ID_INFORME;'
      ''
      '            IF (ID_INFORME IS NULL) THEN ID_INFORME = 0;'
      '                  '
      '            /* Si no existeix sol'#183'licitud, la generem */'
      '            IF (ID_INFORME = 0) THEN'
      '            BEGIN'
      '                  COMENTARI = '#39#39';'
      '                  '
      
        '                  /* Busquem els tractaments implicats per al pa' +
        'cient i grup assistencial en curs, per posar-hi tots els coordin' +
        'adors */'
      '                  FOR SELECT C_COORDINADOR, MIN(C_TRACTAMENT)'
      '                      FROM   TRACTAMENTS T'
      
        '                      JOIN   DRETSPRESTA D ON T.C_PRESTACIO = D.' +
        'C_PRESTACIO AND D.C_DRET = '#39'P197'#39
      
        '                      JOIN   CENTREFAC   C ON T.C_CENTREFAC = C.' +
        'C_CENTREFAC AND (C.ESMUTUA = '#39'S'#39' OR C.ESMUTUA = '#39'I'#39')'
      
        '                      JOIN   METGES      M ON T.C_COORDINADOR = ' +
        'M.CODI      AND M.C_GRUP = :C_GRUP'
      '                      WHERE  T.C_HISTORIA = :C_HISTORIA'
      
        '                      AND    T.CADUCAPERMIS BETWEEN :DIA AND :DI' +
        'A + 10'
      
        '                      AND  ((F_DateNull(T.DATA_ALTA, T.DATA_PREA' +
        'LTA) > T.CADUCAPERMIS)  OR  (T.DATA_ALTA IS NULL AND T.DATA_PREA' +
        'LTA IS NULL))'
      '                      GROUP  BY C_COORDINADOR'
      '                      INTO  :C_COORDINADOR, :C_TRACTAMENT'
      '                  DO BEGIN'
      
        '                        IF (COMENTARI <> '#39#39') THEN COMENTARI = CO' +
        'MENTARI || '#39',  '#39';'
      
        '                        COMENTARI = COMENTARI || F_LRTrim(:C_COO' +
        'RDINADOR) || '#39' ('#39' || :C_GRUP || '#39')'#39';  /* Posem els coordinadors ' +
        'i el grup al comentari, perqu'#232' puguin filtrar si busquen per GBC' +
        'N */'
      '                  END;'
      ''
      '                  IF (EXECUTA = '#39'S'#39') THEN'
      '                  BEGIN'
      '                        ID_INFORME = GEN_ID(G_INFORMES, 1);'
      ''
      
        '                        /* Cap'#231'alera sol'#183'licitud informe RMB  - ' +
        'entrega via e-mail; gestionats per Admissions BCN */'
      
        '                        /* Assignarem el coordinador com a usuar' +
        'i a qui se sol'#183'licita l'#39'informe. */'
      
        '                        INSERT INTO INFORMES (ID_INFORME, C_HIST' +
        'ORIA, C_TRACTAMENT, C_TIPUS, C_ENTREGA, URGENT, C_ESTAT, GESTION' +
        'AT, COMENTARI, C_USUARI)'
      
        '                        VALUES (:ID_INFORME, :C_HISTORIA, :C_TRA' +
        'CTAMENT, "RMB", 4, "S", 0, 1, :COMENTARI, :C_COORDINADOR);'
      ''
      '                        /* Registrem l'#39'acci'#243' (sol'#183'licitud) */'
      
        '                        IF (DIA = "TODAY") THEN DATA = "NOW";   ' +
        '       /* Si estem for'#231'ant la inserci'#243' d'#39'un informe antic, li po' +
        'sem la data introdu'#239'da (antiga) */'
      '                                           ELSE DATA = :DIA;'
      ''
      
        '                        INSERT INTO INFORMES_REG (ID_INFORME, LI' +
        'NIA, ACCIO, DATA, COMENTARI)'
      
        '                        VALUES (:ID_INFORME, 1, 1, :DATA, "Sol'#183'l' +
        'icitud RMB autom'#224'tica");'
      '                  END;'
      ''
      '                  SUSPEND;'
      '            END;'
      '      END;'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 144
    Top = 374
  end
  object P_Inf_GeneraACU: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraACU'
    ForceNombreDB = False
    Body.Strings = (
      '(DIA DATE, EXECUTA CHAR(1), NHC INTEGER)'
      
        'RETURNS (C_HISTORIA INTEGER, C_TRACTAMENT INTEGER, C_COORDINADOR' +
        ' VARCHAR(5))'
      'AS'
      '      DECLARE VARIABLE DATA_TALL DATE;'
      '      DECLARE VARIABLE REFERENCIA VARCHAR(40);'
      '      DECLARE VARIABLE ID_INFORME INTEGER;'
      '      DECLARE VARIABLE LINIA INTEGER;'
      '      DECLARE VARIABLE DATA DATE;'
      'BEGIN'
      ''
      
        '      /* Farem c'#243'rrer aquesta procedure cada dia per generar la ' +
        'sol'#183'licitud d'#39'informe d'#39'Alta Complexitat Unespa'
      
        '         dels pacients que el requereixin, ingressats durant els' +
        ' darrers 30 dies (per si entren/modifiquen la data de sinistre t' +
        'ard): */'
      ''
      
        '      IF (DIA IS NULL) THEN DIA = "TODAY";  /* Per a proves o pe' +
        'r for'#231'ar la generaci'#243' d'#39'un informe antic */'
      ''
      
        '      /* Busquem la data de tall de sinistres del conveni Unespa' +
        ' 2021 */'
      
        '      SELECT DATA FROM UNESPADATES WHERE ID = '#39'TALL_2021'#39' INTO :' +
        'DATA_TALL;'
      ''
      
        '      /* Per tots els pacients Unespa ingressats i ambulatoris, ' +
        'amb data sinistre posterior a la del conveni 2021 d'#39'Unespa */'
      
        '      FOR SELECT  T.C_TRACTAMENT, T.C_HISTORIA, T.C_COORDINADOR,' +
        ' T.REFERENCIA'
      '          FROM    TRACTAMENTS T'
      
        '          JOIN    CLIENTS C ON T.C_CENTREFAC = C.C_CENTREFAC AND' +
        ' T.C_CLIENT = C.C_CLIENT AND C.INFORME_EMM = '#39'S'#39'              /*' +
        ' M'#250'tues que demanen informe */'
      
        '          JOIN    DRETSPRESTA D ON T.C_PRESTACIO = D.C_PRESTACIO' +
        ' AND D.C_DRET = '#39'P205'#39'                                        /*' +
        ' Prestacions per les que s'#39'ha de fer informe ACU */'
      
        '          WHERE   T.DATA_SINISTRE >= :DATA_TALL                 ' +
        '                                                              /*' +
        ' Data sinistre posterior a la data de tall del conveni 2021 */'
      
        '          AND     T.DATA_INGRES >= :DIA - 30                    ' +
        '                                                              /*' +
        ' ingressats el darrer mes */'
      '          AND   ((T.C_HISTORIA = :NHC) OR (:NHC IS NULL))'
      
        '          INTO   :C_TRACTAMENT, :C_HISTORIA, :C_COORDINADOR, :RE' +
        'FERENCIA'
      '      DO BEGIN'
      '            ID_INFORME = 0;'
      '                  '
      
        '            /* Comprovem que la sol'#183'licitud encara no s'#39'hagi gen' +
        'erat per al mateix n'#250'mero de refer'#232'ncia'
      
        '              (si est'#224' anul'#183'lada tampoc no la generem - l'#39'hauran' +
        ' de recuperar des d'#39'Admissions pequ'#232' es mogui el fitxer correspo' +
        'nent a l'#39'informe, si ja estava creat */'
      '            SELECT I.ID_INFORME'
      '            FROM   INFORMES I'
      
        '            JOIN   INFORMES_REG R on I.ID_INFORME = R.ID_INFORME' +
        ' AND LINIA = 1'
      
        '            JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAM' +
        'ENT'
      
        '            WHERE  I.C_HISTORIA = :C_HISTORIA                   ' +
        '                       /* ho mirem per hist'#242'ria */'
      
        '            AND    I.C_TIPUS = "ACU"                            ' +
        '                       /* perqu'#232' nom'#233's hem de generar un ACU per' +
        ' sinistre, */'
      
        '            AND    (T.REFERENCIA = :REFERENCIA                  ' +
        '                       /* '#233's a dir, si hi ha un ACU associat a u' +
        'n tractament amb la mateixa referencia TIREA, ja no cal genera-n' +
        'e un altre */'
      '                    OR'
      
        '                   (:REFERENCIA IS NULL AND T.REFERENCIA IS NULL' +
        ' AND I.C_TRACTAMENT = :C_TRACTAMENT))   /* afegeixo aix'#242' per si ' +
        'encara no han introdu'#239't el n'#250'mero de refer'#232'ncia al tractament */'
      '            ROWS   1'
      '            INTO  :ID_INFORME;'
      ''
      '            IF (ID_INFORME IS NULL) THEN ID_INFORME = 0;'
      '                  '
      '            /* Si no existeix sol'#183'licitud, la generem */'
      '            IF (ID_INFORME = 0) THEN'
      '            BEGIN'
      '                  IF (EXECUTA = '#39'S'#39') THEN'
      '                  BEGIN'
      '                        ID_INFORME = GEN_ID(G_INFORMES, 1);'
      '                  '
      
        '                        /* Cap'#231'alera sol'#183'licitud informe ACU    ' +
        '-    dirigits al coordinador del tractament; s'#39'entreguen via e-m' +
        'ail; s'#243'n gestionats per Admissions */'
      
        '                        INSERT INTO INFORMES (ID_INFORME, C_HIST' +
        'ORIA, C_TRACTAMENT, C_TIPUS, C_USUARI, C_ENTREGA, URGENT, C_ESTA' +
        'T, GESTIONAT)'
      
        '                        VALUES (:ID_INFORME, :C_HISTORIA, :C_TRA' +
        'CTAMENT, "ACU", "P06", 4, "S", 0, 0);  /* M'#201'S ENDAVANT CANVIAREM' +
        ' P06 per :C_COORDINADOR */'
      ''
      '                        /* Registrem l'#39'acci'#243' (sol'#183'licitud) */'
      
        '                        IF (DIA = "TODAY") THEN DATA = "NOW";   ' +
        '       /* Si estem for'#231'ant la inserci'#243' d'#39'un informe antic, li po' +
        'sem la data introdu'#239'da (antiga) */'
      '                                           ELSE DATA = :DIA;'
      ''
      
        '                        INSERT INTO INFORMES_REG (ID_INFORME, LI' +
        'NIA, ACCIO, DATA, COMENTARI)'
      
        '                        VALUES (:ID_INFORME, 1, 1, :DIA, "Sol. a' +
        'utom'#224'tica - " || :REFERENCIA); /* Guardem el n'#250'mero de refer'#232'nci' +
        'a al comentari, per trobar-lo despr'#233's */'
      '                  END;'
      ''
      '                  SUSPEND;'
      '            END'
      '      END;'
      '   '
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 44
    Top = 374
  end
  object Informes_Items: TDic
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
        AutoContador.Activo = True
        AutoContador.Generator = 'G_INFORMESITEMS'
        Comentario = 'PK'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus informe'
        NombreDB = 'C_TipusInforme'
        Longitud = 3
        Consulta = 'tipusinforme'
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'FK Informes_Tipus'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descripci'#243' '#237'tem'
        NombreDB = 'N_Item'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Obligatori'
        NombreDB = 'Obligatori'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
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
        Nombre = 'Nivell'
        NombreDB = 'Nivell'
        Longitud = 1
        Consulta = 'nivell'
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'Apartat, t'#237'tol, subt'#237'tol, par'#224'metre...'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus '#237'tem'
        NombreDB = 'C_TipusItem'
        Longitud = 2
        Consulta = 'tipusitem'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'selecci'#243' m'#250'ltiple, consulta, data, num'#232'ric o lliure'
      end
      item
        Aplica = kcMODELS
        Nombre = 'SQL selecci'#243
        NombreDB = 'SQL_Select'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tag'
        NombreDB = 'Tag'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'FK Informes_Tags'
      end
      item
        Aplica = kcCaracter
        Nombre = 'SQL comprovaci'#243
        NombreDB = 'SQL_Comprova'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'si obliga = '#39'C'#39
      end
      item
        Aplica = kcMODELS
        Nombre = 'SQL bolcatge'
        NombreDB = 'SQL_Bolcatge'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus ECB'
        NombreDB = 'TipusECB'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 
          'determina si l'#39#237'tem ha de sortir en funci'#243' del tipus d'#39'ECB omple' +
          'rt a l'#39'ingr'#233's'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Editable'
        NombreDB = 'Editable'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'S'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Indicacions'
        NombreDB = 'Indicacions'
        Longitud = 3000
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
          'Codi '#237'tem')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'FK_tipusinforme'
        NombreDB = 'FK_tipusinforme'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus informe')
        Tipo = tiForaneo
        ForaneoDic = Informes_Tipus
        ForaneoCampos.Strings = (
          'Codi tipus')
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
          'Tipus informe'
          'Ordre')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'nivell'
        NombreDB = 'nivell'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Nivell')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tipusitem'
        NombreDB = 'tipusitem'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus '#237'tem')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tipusecb'
        NombreDB = 'tipusecb'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Tipus informe'
          'Tipus ECB')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tipusinforme'
        Master = Informes_Tipus
        BuscaOrigen.Strings = (
          'Tipus informe')
        CopiarOrigen.Strings = (
          'Tipus informe')
        CopiarMaster.Strings = (
          'Codi tipus')
        BuscaMaster.Strings = (
          'Codi tipus')
      end
      item
        Nombre = 'nivell'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Nivell')
        CopiarOrigen.Strings = (
          'Nivell')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.NIVELLITEM'#39
      end
      item
        Nombre = 'tipusitem'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Tipus '#237'tem')
        CopiarOrigen.Strings = (
          'Tipus '#237'tem')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.TIPUSITEM'#39
      end>
    Nombre = 'Informes Items'
    NombreTabla = 'Informes_Items'
    Organiza = tbBase
    CamposVer.Strings = (
      'Codi '#237'tem'
      'Tipus informe'
      'Descripci'#243' '#237'tem'
      'Obligatori'
      'Ordre'
      'Nivell'
      'Tipus '#237'tem'
      'SQL selecci'#243
      'Tag'
      'SQL comprovaci'#243
      'SQL bolcatge'
      'Tipus ECB'
      'Editable')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 144
    Top = 24
  end
  object Informes_Lin: TDic
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
        AutoContador.Generator = 'G_INFORMESLIN'
        Comentario = 'pk'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID Informe'
        NombreDB = 'ID_Informe'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'informe'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'fk Informes'
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
        Comentario = 'fk informes_items'
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
        Aplica = kcMODELS
        Nombre = 'Text_Tmp'
        NombreDB = 'Text_Tmp'
        Longitud = 30000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data_Tmp'
        NombreDB = 'Data_Tmp'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari_Tmp'
        NombreDB = 'C_Usuari_Tmp'
        Longitud = 5
        Consulta = 'usuarit'
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
        Nombre = 'informe'
        NombreDB = 'informe'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Informe')
        Tipo = tiForaneo
        ForaneoDic = Informes
        ForaneoCampos.Strings = (
          'ID Informe')
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
        ForaneoDic = Informes_Items
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
        Nombre = 'usuarit'
        NombreDB = 'usuarit'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Usuari_Tmp')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'informe'
        Master = Informes
        BuscaOrigen.Strings = (
          'ID Informe')
        CopiarOrigen.Strings = (
          'ID Informe')
        CopiarMaster.Strings = (
          'ID Informe')
        BuscaMaster.Strings = (
          'ID Informe')
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
        Master = Informes_Items
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
        Nombre = 'usuarit'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari_Tmp')
        CopiarOrigen.Strings = (
          'Usuari_Tmp')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Informes L'#237'nies'
    NombreTabla = 'Informes_Lin'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'ID Informe'
      'Codi '#237'tem'
      'Text'
      'Usuari'
      'Data')
    IndiceVer = 'informe'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 128
    Top = 144
  end
  object Informes_Tags: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Tipus informe'
        NombreDB = 'C_Tipus'
        Longitud = 3
        Consulta = 'tipus'
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tag'
        NombreDB = 'Tag'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Fase'
        NombreDB = 'Fase'
        Longitud = 1
        Consulta = 'Fase'
        zType = tcIB_Smallint
        zNotNull = True
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
        AutoContador.Generator = 'G_INFORMESTAGS'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cos'
        NombreDB = 'Cos'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 
          'S: TAG del cos de l'#39'informe que hem d'#39'identificar per fer insert' +
          'Text i quedar-nos a lloc despr'#233's de substituir-lo'
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
          'Tipus informe'
          'Tag'
          'Fase')
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
          'Tipus informe')
        Tipo = tiForaneo
        ForaneoDic = Informes_Tipus
        ForaneoCampos.Strings = (
          'Codi tipus')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'fase'
        NombreDB = 'fase'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Fase')
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
          'Tipus informe'
          'Fase'
          'Tag')
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
        Nombre = 'Fase'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Fase')
        CopiarOrigen.Strings = (
          'Fase')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'INFORMES.FASES'#39
      end
      item
        Nombre = 'tipus'
        Master = Informes_Tipus
        BuscaOrigen.Strings = (
          'Tipus informe')
        CopiarOrigen.Strings = (
          'Tipus informe')
        CopiarMaster.Strings = (
          'Codi tipus')
        BuscaMaster.Strings = (
          'Codi tipus')
      end>
    Nombre = 'Informes Tags'
    NombreTabla = 'Informes_Tags'
    Organiza = tbBase
    CamposVer.Strings = (
      'Tipus informe'
      'Tag'
      'Fase')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 344
    Top = 24
  end
  object T_Plantilles_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /* Informem l'#39'ID via generator */'
      
        '      IF (NEW.C_PLANTILLA IS NULL) THEN NEW.C_PLANTILLA = GEN_ID' +
        '(G_INFORMESPLANTILLES, 1);'
      '   END;'
      'END')
    Dic1 = Informes_Plantilles
    Dic1Name = 'Plantilles'
    Abierta = False
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
    Left = 448
    Top = 74
  end
  object T_Items_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE COMPTA SMALLINT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /* Informem l'#39'ID via generator */'
      
        '      IF (NEW.C_ITEM IS NULL) THEN NEW.C_ITEM = GEN_ID(G_INFORME' +
        'SITEMS, 1);'
      '      '
      
        '      /* Si informen el TAG, l'#39'inserim a Informes_Tags si no hi ' +
        'era */'
      '      IF (NEW.TAG IS NOT NULL) THEN'
      '      BEGIN'
      '      '
      '            SELECT COUNT(*)'
      '            FROM   INFORMES_TAGS'
      '            WHERE  C_TIPUS = NEW.C_TIPUSINFORME'
      '            AND    TAG = "%"||NEW.TAG||"%"'
      '            AND    FASE = 1'
      '            INTO  :COMPTA;'
      '            '
      
        '            IF (COMPTA = 0) THEN    INSERT INTO INFORMES_TAGS (C' +
        '_TIPUS, TAG, FASE)'
      
        '                                    VALUES (NEW.C_TIPUSINFORME, ' +
        '"%"||NEW.TAG||"%", 1);'
      '      END'
      '      '
      '   END;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Informes_Items'
    Abierta = False
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
    Left = 114
    Top = 74
  end
  object T_Tags_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE COMPTA SMALLINT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /* Els '#237'tems de fase 3 tamb'#233' s'#243'n de fase 1 */'
      '      IF (NEW.FASE = 3) THEN'
      '      BEGIN'
      '            SELECT COUNT(*)'
      '            FROM   INFORMES_TAGS'
      '            WHERE  C_TIPUS = NEW.C_TIPUS'
      '            AND    TAG = NEW.TAG'
      '            AND    FASE = 1'
      '            INTO  :COMPTA;'
      '            '
      
        '            IF (COMPTA = 0) THEN    INSERT INTO INFORMES_TAGS(C_' +
        'TIPUS, TAG, FASE)'
      
        '                                    VALUES (NEW.C_TIPUS, NEW.TAG' +
        ', 1);'
      '      END'
      '   END;'
      'END')
    Dic1 = Informes_Tags
    Dic1Name = 'Informes_Tags'
    Abierta = False
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
    Left = 376
    Top = 74
  end
  object T_Items_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE COMPTA SMALLINT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      /* Si informen el TAG, l'#39'inserim a Informes_Tags si no hi ' +
        'era */'
      '      IF (((OLD.TAG IS NULL) AND (NEW.TAG IS NOT NULL))'
      '      OR   (OLD.TAG <> NEW.TAG)) THEN'
      '      BEGIN'
      '      '
      '            SELECT COUNT(*)'
      '            FROM   INFORMES_TAGS'
      '            WHERE  C_TIPUS = NEW.C_TIPUSINFORME'
      '            AND    TAG = "%"||NEW.TAG||"%"'
      '            AND    FASE = 1'
      '            INTO  :COMPTA;'
      '            '
      
        '            IF (COMPTA = 0) THEN    INSERT INTO INFORMES_TAGS (C' +
        '_TIPUS, TAG, FASE)'
      
        '                                    VALUES (NEW.C_TIPUSINFORME, ' +
        '"%"||NEW.TAG||"%", 1);'
      '      END'
      '      '
      '   END;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Informes_Items'
    Abierta = False
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
    Left = 174
    Top = 74
  end
  object P_Items_Evolucio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Evolucio'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      'BEGIN'
      ''
      
        '      SELECT F_ReplaceText('#39'* * *  R E S U M  /  E V O L U C I '#211 +
        '  * * * '#39'||F_NLine(), '#39#39', ANOTACIO)'
      '      FROM   HISTORIA'
      '      WHERE  C_TRACTAMENT = :c_tractament'
      '      AND    DATA >= "TODAY" - 20'
      '      AND    ANULAT = '#39'N'#39
      '      AND    QUEES = 11'
      '      AND   (C_GRUP = '#39'ME'#39' OR C_GRUP = '#39'RE'#39')'
      '      ORDER  BY DATA DESC'
      '      ROWS 1'
      '      INTO  :ANOTACIO;'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 696
    Top = 24
  end
  object P_Items_Anal1: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Anal1'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      DIES_ENRERE  SMALLINT'
      ')'
      'RETURNS'
      '('
      '      DATA_PROVA  DATE,'
      '      PETICIO_CA  VARCHAR(3000),'
      '      PETICIO_ES  VARCHAR(3000),'
      '      RESPOSTA    VARCHAR(3000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON   INTEGER;'
      '      DECLARE VARIABLE SOLICITA     VARCHAR(3000);'
      '      DECLARE VARIABLE C_GRUP       VARCHAR(2);'
      '      DECLARE VARIABLE N_CODI1      VARCHAR(255);'
      '      DECLARE VARIABLE N_CODI2      VARCHAR(255);'
      '      DECLARE VARIABLE GRUPOPRUEBA  VARCHAR(255);'
      'BEGIN'
      ''
      '      /* Llistem les ANAL'#205'TIQUES finalitzades */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, RESPOSTA, SOLICITA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'ANAL'#39
      '          AND    ESTAT = 91'
      '          AND    RESPOSTA NOT LIKE '#39'Resultat: Negatiu%'#39
      
        '          AND ((:DIES_ENRERE IS NULL) OR (DATA_PROVA >= "TODAY" ' +
        '-:DIES_ENRERE))'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :RESPOSTA, :SOLICITA'
      '      DO BEGIN'
      '      '
      
        '            IF (DATA_PROVA IS NOT NULL) THEN DATA_PROVA = F_Solo' +
        'Fecha(DATA_PROVA);'
      '            '
      
        '            /* mostrem el tipus d'#39'anal'#237'tica (hemograma, microbio' +
        'logia, bioqu'#237'mica... ) */'
      '            PETICIO_CA = '#39#39';'
      '            PETICIO_ES = '#39#39';'
      ''
      
        '            FOR SELECT DISTINCT C.GRUP, A.N_CODI, A.N_CODI2, C.G' +
        'RUPOPRUEBA'
      '                FROM   ANALIT_SOLICITUD S'
      '                JOIN   CODRSANA_APA C ON S.CODI = C.CODI'
      
        '                LEFT   OUTER JOIN CODICAMPSALFA A ON C.GRUP = A.' +
        'C_CODI AND A.TIPUSCODI = '#39'ANALIT.GRUPPROVA'#39
      '                WHERE  S.C_INTERCON = :C_INTERCON'
      '                INTO  :C_GRUP, :N_CODI1, :N_CODI2, :GRUPOPRUEBA'
      '            DO BEGIN'
      
        '                  IF (N_CODI1 IS NULL) THEN N_CODI1 = GRUPOPRUEB' +
        'A;'
      
        '                  IF (N_CODI2 IS NULL) THEN N_CODI2 = GRUPOPRUEB' +
        'A;'
      ''
      
        '                  /* Si no trobem descripci'#243' del grup (tipus Alt' +
        'res o tipus no informat) o b'#233' '#233's Microbiologia, llistem les desc' +
        'ripcions de les proves concretes */'
      '                  IF ((N_CODI1 IS NULL) OR (C_GRUP = '#39'MI'#39')) THEN'
      '                  BEGIN'
      '                        '
      
        '                        FOR SELECT C.DESCRIPCIO              /* ' +
        'En aquest cas nom'#233's tenim un idioma perqu'#232' dep'#232'n d'#39'APA */'
      '                            FROM   ANALIT_SOLICITUD S'
      
        '                            JOIN   CODRSANA_APA C ON S.CODI = C.' +
        'CODI'
      '                            WHERE  S.C_INTERCON = :C_INTERCON'
      
        '                            AND (((C.GRUP = '#39#39' OR C.GRUP = '#39'AL'#39' ' +
        ') AND (GRUPOPRUEBA IS NULL OR GRUPOPRUEBA = '#39#39'))'
      '                                  OR'
      '                                  (C.GRUP = '#39'MI'#39'))'
      '                            INTO  :N_CODI1'
      '                        DO BEGIN'
      '                              IF (PETICIO_CA <> '#39#39') THEN'
      '                              BEGIN'
      
        '                                    PETICIO_CA = PETICIO_CA || '#39 +
        ', '#39';'
      
        '                                    PETICIO_ES = PETICIO_ES || '#39 +
        ', '#39';'
      '                              END'
      ''
      
        '                              PETICIO_CA = PETICIO_CA || N_CODI1' +
        ';'
      
        '                              PETICIO_ES = PETICIO_ES || N_CODI1' +
        ';'
      '                        END'
      '                  END'
      ''
      
        '                  /* Altrament, llistem la descripci'#243' del grup o' +
        ' subgrup */'
      '                  ELSE BEGIN'
      '                        IF (PETICIO_CA <> '#39#39') THEN'
      '                        BEGIN'
      '                              PETICIO_CA = PETICIO_CA || '#39', '#39';'
      '                              PETICIO_ES = PETICIO_ES || '#39', '#39';'
      '                        END'
      ''
      '                        PETICIO_CA = PETICIO_CA || N_CODI1;'
      '                        PETICIO_ES = PETICIO_ES || N_CODI2;'
      '                  END'
      '            END'
      '            '
      '            IF (PETICIO_CA = '#39#39') THEN'
      '            BEGIN'
      '                PETICIO_CA = SOLICITA;'
      '                PETICIO_ES = SOLICITA;'
      '                RESPOSTA = RESPOSTA || F_NLine();'
      '            END'
      ''
      '            SUSPEND;'
      '      END'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 74
  end
  object P_Plantilles_Medicacio: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Medicacio'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER,'
      '       IDIOMA     SMALLINT'
      ')'
      'RETURNS ('
      '      PRESCRIPCIO VARCHAR(250)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_HISTORIA INTEGER;'
      '  DECLARE VARIABLE DATA_ALTA  DATE;'
      '  DECLARE VARIABLE DATA_PALTA DATE;'
      '  DECLARE VARIABLE MEDICAMENT VARCHAR(200);'
      '  DECLARE VARIABLE PRESENT_CA VARCHAR(30);'
      '  DECLARE VARIABLE PRESENT_ES VARCHAR(30);'
      '  DECLARE VARIABLE PRESENT    VARCHAR(30);'
      '  DECLARE VARIABLE DOSI       VARCHAR(10);'
      '  DECLARE VARIABLE UM_CA      VARCHAR(25);'
      '  DECLARE VARIABLE UM_ES      VARCHAR(25);'
      '  DECLARE VARIABLE UM         VARCHAR(25);'
      '  DECLARE VARIABLE FREQ_CA    VARCHAR(40);'
      '  DECLARE VARIABLE FREQ_ES    VARCHAR(40);'
      '  DECLARE VARIABLE FREQ       VARCHAR(80);'
      '  DECLARE VARIABLE DEMANAHORA CHAR(1);'
      '  DECLARE VARIABLE HORA_INICI SMALLINT;'
      '  DECLARE VARIABLE ALES       VARCHAR(10);'
      'BEGIN'
      ''
      '      SELECT C_HISTORIA, DATA_ALTA, DATA_PREALTA'
      '      FROM TRACTAMENTS'
      '      WHERE C_TRACTAMENT = :C_TRACTAMENT'
      '      INTO :C_HISTORIA, :DATA_ALTA, :DATA_PALTA;'
      ''
      '      IF (DATA_ALTA IS NULL) THEN DATA_ALTA = :DATA_PALTA;'
      '      IF (DATA_ALTA IS NULL) THEN DATA_ALTA = '#39'TODAY'#39';'
      '      '
      '      EXECUTE PROCEDURE P_ORDRESMEDIQUES_CADUCA(0, :C_HISTORIA);'
      ''
      ''
      '      PRESCRIPCIO = '#39#39';'
      ''
      
        '      FOR SELECT F_IfLong(G.N_GTN, "=", "", O.N_MEDICAMENT_FG, G' +
        '.N_GTN), P.N_PRESENTACIO_CA, P.N_PRESENTACIO_ES, F_FloatToStr(O.' +
        'DOSI), U.N_UM_CA, U.N_UM_ES, F.N_FREQ_CA, F.N_FREQ_ES, F.DEMANAH' +
        'ORA, O.HORA_INICI'
      '          FROM ORDRESMEDIQUES O'
      '          LEFT OUTER JOIN GTN           G ON O.GTN = G.GTN'
      
        '          LEFT OUTER JOIN PRESENTACIONS P ON O.C_PRESENTACIO = P' +
        '.C_PRESENTACIO'
      
        '          JOIN FREQUENCIES   F ON O.C_FREQUENCIA = F.C_FREQUENCI' +
        'A'
      '          JOIN UNITATSMIDA   U ON O.UNITAT_MESURA = U.C_UM'
      '          WHERE O.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND ((:DATA_ALTA >= "TODAY" AND O.C_ESTAT = "V")'
      '                OR'
      
        '               (:DATA_ALTA < "TODAY" AND O.C_ESTAT = "C" AND DAT' +
        'A_SUSPENSIO = :DATA_ALTA ||" 23:55:00"))'
      '          ORDER BY 1'
      
        '          INTO :MEDICAMENT, :PRESENT_CA, :PRESENT_ES, :DOSI, :UM' +
        '_CA, :UM_ES, :FREQ_CA, :FREQ_ES, :DEMANAHORA, :HORA_INICI'
      '      DO BEGIN'
      ''
      
        '            IF (IDIOMA = 2) THEN BEGIN PRESENT = PRESENT_ES;   U' +
        'M = UM_ES;   FREQ = FREQ_ES;   ALES = '#39' a las '#39'; END;'
      
        '                            ELSE BEGIN PRESENT = PRESENT_CA;   U' +
        'M = UM_CA;   FREQ = FREQ_CA;   ALES = '#39' a les '#39'; END;'
      ''
      
        '            IF (DEMANAHORA = '#39'S'#39') THEN FREQ = FREQ || ALES || HO' +
        'RA_INICI || '#39'h'#39';'
      '            '
      '            IF (PRESENT IS NULL) THEN PRESENT = '#39#39';'
      '                                 ELSE PRESENT = PRESENT || '#39', '#39';'
      ''
      
        '            PRESCRIPCIO = F_LRTrim(Upper(F_Left(MEDICAMENT, 1)) ' +
        '|| Lower(F_Right(MEDICAMENT, F_StringLength(MEDICAMENT)-1))) ||'#39 +
        ', '#39'|| PRESENT || DOSI ||'#39' '#39'|| UM ||'#39', '#39'|| FREQ;'
      ''
      '            SUSPEND;'
      '      END'
      ''
      'END')
    Dic1 = Informes_Plantilles
    Dic1Name = 'Plantilles'
    Abierta = False
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
    Left = 1388
    Top = 74
  end
  object P_Items_RX: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'RX'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE N_PROVA            VARCHAR(255);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(255);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      /* Llistem les RADIOGRAFIES finalitzades */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'RX'#39
      '          AND    ESTAT = 92'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :RESPOSTA'
      '      DO BEGIN'
      '      '
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      '            '
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      '            DESCRIPCIO = '#39#39';'
      ''
      '            FOR SELECT C.N_PROVARX'
      '                FROM   INTERCONRX I'
      '                JOIN   CODIRX C ON I.C_PROVARX = C.C_PROVARX'
      '                WHERE  I.C_INTERCON = :C_INTERCON'
      '                INTO  :N_PROVA'
      '            DO BEGIN'
      ''
      
        '                  IF (DESCRIPCIO <> '#39#39') THEN DESCRIPCIO = DESCRI' +
        'PCIO || '#39', '#39';'
      ''
      '                  DESCRIPCIO = DESCRIPCIO || N_PROVA;'
      '            END'
      '            '
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = N_PROVA || F_NLine' +
        '() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = N_PROVA || F_NLine' +
        '() || '#39'Data: '#39';'
      '                  '
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 124
  end
  object P_Items_Ecos: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ECOS'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE DATA_R             DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(40);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      /* Llistem les ECOGRAFIES finalitzades */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'ECOS'#39
      '          AND    ESTAT = 95'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      '      '
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      '            '
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Fecha: '#39';'
      '                            ELSE DESCRIPCIO = '#39'Data: '#39';'
      '                  '
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 174
  end
  object P_Items_Uros: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'UROS'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE DATA_R             DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(40);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      /* Llistem les URODIN'#192'MIES finalitzades */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'UROS'#39
      '          AND    ESTAT = 96'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      '      '
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      '            '
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Fecha: '#39';'
      '                            ELSE DESCRIPCIO = '#39'Data: '#39';'
      '                  '
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 224
  end
  object P_Items_EMG: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EMG'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE DATA_R             DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(40);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      /* Llistem les ELECTROMIOGRAFIES finalitzades */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'EMG'#39
      '          AND    ESTAT = 98'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      '      '
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      '            '
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Fecha: '#39';'
      '                            ELSE DESCRIPCIO = '#39'Data: '#39';'
      '                  '
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 274
  end
  object P_Items_FSA: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FSA'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE DATA_R             DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(40);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      
        '      /* Llistem les interconsultes de MAPA DE PRESSI'#211' finalitza' +
        'des */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'FSA'#39
      '          AND    ESTAT = 90'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      '      '
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      '            '
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Fecha: '#39';'
      '                            ELSE DESCRIPCIO = '#39'Data: '#39';'
      '                  '
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 374
  end
  object P_Items_Videofl: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Videofl'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE DATA_R             DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(40);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      
        '      /* Llistem les VIDEOFLUOROSC'#210'PIES contestades o finalitzad' +
        'es */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_ESPECIAL = '#39'25'#39
      '          AND    ESTAT IN (50, 90)'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      '      '
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      '            '
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Fecha: '#39';'
      '                            ELSE DESCRIPCIO = '#39'Data: '#39';'
      '                  '
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 324
  end
  object P_Items_ProvesEsp: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ProvesEsp'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE N_PROVA_CA         VARCHAR(40);'
      '      DECLARE VARIABLE N_PROVA_ES         VARCHAR(40);'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(80);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      /* Llistem les PROVES ESPECIALS finalitzades */'
      
        '      /* No incloem les proves aportades pel pacient (tenen esta' +
        't 97 i no tenen dades a InterconProvaEsp) ja que s'#243'n fetes fora ' +
        'de l'#39'ingr'#233's */'
      
        '      FOR SELECT I.C_INTERCON, AnsiUpper(C.N_PROVAESP), AnsiUppe' +
        'r(C.N_PROVAESP2), I.DATA_PROVA, I.RESPOSTA'
      '          FROM   INTERCON I'
      
        '          JOIN   INTERCONPROVAESP P ON I.C_INTERCON = P.C_INTERC' +
        'ON'
      '          JOIN   CODIPROVAESP C ON P.C_PROVA = C.C_PROVAESP'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'PROVESP'#39
      '          AND    ESTAT = 93'
      '          ORDER BY DATA_PROVA'
      
        '          INTO  :C_INTERCON, :N_PROVA_CA, :N_PROVA_ES, :DATA_PRO' +
        'VA, :RESPOSTA'
      '      DO BEGIN'
      '      '
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      '            '
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = N_PROVA_ES || F_NL' +
        'ine() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = N_PROVA_CA || F_NL' +
        'ine() || '#39'Data: '#39';'
      '                  '
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 424
  end
  object P_Items_Procediments: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Procediments'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA        INTEGER,'
      '      C_TRACTAMENT      INTEGER,'
      '      IDIOMA            SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO          VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE PROCEDIMENT      VARCHAR(100);'
      '  DECLARE VARIABLE DATA             DATE;'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      FOR SELECT DISTINCT PROCEDIMENT, DATA'
      
        '          FROM   P_INFORMES_ITEMS_PROCS (:C_HISTORIA, :C_TRACTAM' +
        'ENT, :IDIOMA)'
      '          ORDER  BY ORDRE, DATA'
      '          INTO   :PROCEDIMENT, :DATA'
      '      DO BEGIN'
      '      '
      
        '            IF (DATA IS NULL) THEN ANOTACIO = ANOTACIO || PROCED' +
        'IMENT || F_NLine();'
      
        '                              ELSE ANOTACIO = ANOTACIO || PROCED' +
        'IMENT || '#39', '#39' || F_DateToStr(DATA) || F_NLine();'
      '                              '
      '      END;'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 1140
    Top = 24
  end
  object P_Plantilles_Diagnostics: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Diagnostics'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA        INTEGER,'
      '      C_TRACTAMENT      INTEGER'
      ')'
      'RETURNS ('
      '      DIAGNOSTIC        VARCHAR(100)'
      ')'
      'AS'
      '  DECLARE VARIABLE DIAG_NEURO    VARCHAR(40);'
      '  DECLARE VARIABLE ETIOLOGIA     VARCHAR(100);'
      'BEGIN'
      ''
      
        '      /* Al principi hi bolquem el diang'#242'stic neurol'#242'gic i l'#39'eti' +
        'ologia */'
      ''
      '      SELECT N_DIAGNOSTICNEUROLOGIC, Lower(N_ETIOLOGIA)'
      '      FROM   FILIACIO'
      '      WHERE  NUM_HIST = :C_HISTORIA'
      '      INTO  :DIAG_NEURO, :ETIOLOGIA;'
      ''
      '      DIAGNOSTIC = DIAG_NEURO;'
      '      SUSPEND;'
      ''
      '      DIAGNOSTIC = ETIOLOGIA;'
      '      SUSPEND;'
      ''
      '      /* Diagn'#242'stics detectats a l'#39'ingr'#233's */'
      '      FOR SELECT DISTINCT N_DIAGNOSTIC'
      '          FROM   DIAGNOSTICS'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      
        '          AND    TIPUS = "I"                    /* La classe del' +
        's "I" '#233's sempre "K" o nul'#183'la */'
      '          AND    CLASSE IS NULL'
      
        '          AND    F_StringLength(N_DIAGNOSTIC) > 1  /* Amb aix'#242' e' +
        'xcloem punts i guionets */'
      '          AND    TotUpper(N_DIAGNOSTIC) <> '#39'NO'#39
      '          INTO  :DIAGNOSTIC'
      '      DO BEGIN'
      '            SUSPEND;'
      '      END'
      ''
      '      /* Comorbiditats detectades a l'#39'ingr'#233's */'
      '      FOR SELECT DISTINCT N_DIAGNOSTIC'
      '          FROM   DIAGNOSTICS'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    TIPUS = "I"'
      
        '          AND    CLASSE = "K"                   /* La classe del' +
        's "I" '#233's sempre "K" o nul'#183'la */'
      '          AND    F_StringLength(N_DIAGNOSTIC) > 1'
      '          AND    TotUpper(N_DIAGNOSTIC) <> '#39'NO'#39
      '          INTO  :DIAGNOSTIC'
      '      DO BEGIN'
      '            SUSPEND;'
      '      END'
      ''
      
        '      /* Complicacions i altres diagn'#242'stics detectats durant el ' +
        'proc'#233's */'
      '      FOR SELECT DISTINCT N_DIAGNOSTIC'
      '          FROM   DIAGNOSTICS'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      
        '          AND    TIPUS = "P"                    /* La classe del' +
        's "P" '#233's sempre "C" o nul'#183'la */'
      '          AND    F_StringLength(N_DIAGNOSTIC) > 1'
      '          AND    TotUpper(N_DIAGNOSTIC) <> '#39'NO'#39
      '          AND    TotUpper(N_DIAGNOSTIC) <> '#39'PROA'#39
      '          INTO  :DIAGNOSTIC'
      '      DO BEGIN'
      '            SUSPEND;'
      '      END'
      ''
      '      /* Lesions associades */'
      '      FOR SELECT DISTINCT N_LESIO'
      '          FROM   LESIONS'
      '          WHERE  C_HISTORIA = :C_HISTORIA'
      '          AND    C_LESIO <> '#39'--'#39
      '          AND    F_StringLength(N_LESIO) > 1'
      '          AND    TotUpper(N_LESIO) <> '#39'NO'#39
      '          INTO  :DIAGNOSTIC'
      '      DO BEGIN'
      '            SUSPEND;'
      '      END'
      ''
      'END')
    Dic1 = Informes_Plantilles
    Dic1Name = 'Plantilles'
    Abierta = False
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
    Left = 1388
    Top = 124
  end
  object Informes_Llistes: TDic
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
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_INFORMESLLISTES'
      end
      item
        Aplica = kcMODELS
        Nombre = #205'tem'
        NombreDB = 'C_Item'
        Longitud = 8
        Consulta = 'item'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'fk a informes_items'
      end
      item
        Aplica = kcMODELS
        Nombre = #192'rea'
        NombreDB = 'C_Area'
        Longitud = 3
        Consulta = 'area'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk a arees'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grups UM'
        NombreDB = 'Grups_UM'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = #192'utom'#224'tic'
        NombreDB = 'Automatic'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 
          'S: Es bolca autom'#224'ticament, X: es bolca si el camp SQL retorna u' +
          'n valor > 0'
        ValidChars = 'SNX'
      end
      item
        Aplica = kcCaracter
        Nombre = 'SQL'
        NombreDB = 'SQL'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          'ha de ser un select count(*) amb un par'#224'metre %d on hi bolcarem ' +
          'el c_tractament'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Text catal'#224
        NombreDB = 'Text_CA'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Text castell'#224
        NombreDB = 'Text_ES'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Text angl'#232's'
        NombreDB = 'Text_EN'
        Longitud = 3000
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
        Aplica = kcCaracter
        Nombre = 'Tipus informe'
        NombreDB = 'C_Tipus'
        Longitud = 3
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
          'ID')
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
          #205'tem'
          #192'rea'
          'Ordre')
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
        Nombre = 'item'
        NombreDB = 'item'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          #205'tem')
        Tipo = tiForaneo
        ForaneoDic = Informes_Items
        ForaneoCampos.Strings = (
          'Codi '#237'tem')
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
          'Tipus informe')
        Tipo = tiForaneo
        ForaneoDic = Informes_Tipus
        ForaneoCampos.Strings = (
          'Codi tipus')
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
      end
      item
        Nombre = 'item'
        Master = Informes_Items
        BuscaOrigen.Strings = (
          #205'tem')
        CopiarOrigen.Strings = (
          #205'tem')
        CopiarMaster.Strings = (
          'Codi '#237'tem')
        BuscaMaster.Strings = (
          'Codi '#237'tem')
      end>
    Nombre = 'Informes Llistes'
    NombreTabla = 'Informes_Llistes'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      #205'tem'
      #192'rea'
      'Grups UM'
      'Text catal'#224)
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 1
    Grupo = 0
    Oculto = False
    Modi = True
    Left = 250
    Top = 24
  end
  object T_Llistes_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /* Informem l'#39'ID via generator */'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_INFORMESLLISTES' +
        ', 1);'
      '   END;'
      'END')
    Dic1 = Informes_Llistes
    Dic1Name = 'Llistes'
    Abierta = False
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
    Left = 250
    Top = 74
  end
  object P_Items_Recomanacions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Recomanacions'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA        INTEGER,'
      '      IDIOMA            SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO          VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE DESC_CA VARCHAR(3000);'
      '  DECLARE VARIABLE DESC_ES VARCHAR(3000);'
      '  DECLARE VARIABLE DESC_EN VARCHAR(3000);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      '      '
      '      FOR SELECT TEXT_CA, TEXT_ES, TEXT_EN'
      '          FROM   INFORMES_LLISTES'
      '          WHERE  C_ITEM = 42'
      '          AND    C_AREA = '#39'MET'#39
      '          AND    BAIXA = '#39'N'#39
      '          AND    AUTOMATIC = '#39'S'#39
      
        '          AND   (GRUPS_UM = '#39'*'#39'  OR GRUPS_UM LIKE (SELECT '#39'%'#39'||U' +
        '.C_GRUP||'#39'%'#39
      
        '                                                   FROM   UNITAT' +
        'M U'
      
        '                                                   JOIN   FILIAC' +
        'IO F ON F.C_UNITATMEDICA = U.C_UNITATM'
      
        '                                                   WHERE  F.NUM_' +
        'HIST = :C_HISTORIA))'
      '          INTO :DESC_CA, :DESC_ES, :DESC_EN'
      '      DO BEGIN'
      '      '
      
        '            IF      (IDIOMA = 1) THEN ANOTACIO = ANOTACIO || DES' +
        'C_CA || F_NLine();'
      
        '            ELSE IF (IDIOMA = 2) THEN ANOTACIO = ANOTACIO || DES' +
        'C_ES || F_NLine();'
      
        '            ELSE IF (IDIOMA = 3) THEN ANOTACIO = ANOTACIO || DES' +
        'C_EN || F_NLine();'
      '      '
      '      END'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 1265
    Top = 24
  end
  object P_Plantilles_FraseExtra: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'FraseExtra'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT,'
      '      C_TIPUS      VARCHAR(3),'
      '      ID_INFORME   INTEGER,'
      '      TIPUSECB     SMALLINT,'
      '      TMP          CHAR(1)'
      ')'
      'RETURNS ('
      '      ANOTACIO     VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE DESC_CA    VARCHAR(3000);'
      '  DECLARE VARIABLE DESC_ES    VARCHAR(3000);'
      '  DECLARE VARIABLE DESC_EN    VARCHAR(3000);'
      '  DECLARE VARIABLE POSAIDIOMA CHAR(1);'
      '  DECLARE VARIABLE COMPTA     INTEGER;'
      '  DECLARE VARIABLE CENTREFAC  VARCHAR(2);'
      '  DECLARE VARIABLE CriteriA   INTEGER;'
      '  DECLARE VARIABLE CriteriB   INTEGER;'
      '  DECLARE VARIABLE CriteriC   INTEGER;'
      '  DECLARE VARIABLE CriteriD   INTEGER;'
      'BEGIN'
      '      /* Les frases extra estan a Informes_Llistes.'
      '         No estan associades a cap '#237'tem => tenen C_Item NULL.'
      
        '         Poden tenir Tipus d'#39'informe associat (poden no tenir-ne' +
        ', si s'#243'n comunes per diversos informes).'
      
        '         Si n'#39'hi ha m'#233's d'#39'una per a un mateix tipus d'#39'informe, c' +
        'al filtrar d'#39'alguna manera en funci'#243' del tipus de plantilla, del' +
        ' camp GRUPS_UM o altres condicions */'
      '         '
      
        '      /* Tamb'#233' utilitzem aquesta procedure per determinar alguns' +
        ' TAGs segons algoritme (cas IN3) */'
      ''
      '      ANOTACIO = '#39#39';'
      '      POSAIDIOMA = '#39'N'#39';'
      ''
      
        '      /* Informes d'#39'alta m'#232'dica (hospital'#224'ria o ambulat'#242'ria) i d' +
        'e trasllat */'
      
        '      /* Pacients amb pauta d'#39#224'cid zoledr'#242'nic durant l'#39'ingr'#233's ->' +
        ' Frase 33 (DENSITOMETRIA) */'
      
        '      IF ((C_TIPUS = '#39'AHO'#39') OR (C_TIPUS = '#39'TRS'#39') OR (C_TIPUS = '#39 +
        'AAM'#39')) THEN'
      '      BEGIN'
      '            SELECT COUNT(*)'
      '            FROM   ORDRESMEDIQUES O'
      '            JOIN   PRODUCTES P ON O.C_PRODUCTE = P.C_PROD'
      '            WHERE  O.C_TRACTAMENT = :C_TRACTAMENT'
      
        '            AND    P.GTN = '#39'M05BA08'#39'                            ' +
        '                                     /* prescripcions d'#39#224'cid zol' +
        'edr'#242'nic */'
      
        '            AND   (O.DATA_SUSPENSIO >= O.DATA_INICI + (HORA_INIC' +
        'I+1)/24  OR DATA_SUSPENSIO IS NULL)  /* que no s'#39'hagin susp'#232's ab' +
        'ans d'#39'iniciar-se */'
      '            INTO  :COMPTA;'
      '      '
      '            IF (COMPTA > 0) THEN'
      '            BEGIN'
      '                  SELECT TEXT_CA, TEXT_ES, TEXT_EN'
      '                  FROM   INFORMES_LLISTES'
      '/*                  WHERE  ID = 33 */'
      '                  WHERE  GRUPS_UM STARTING WITH '#39'DENSITOMETRIA'#39
      '                  INTO  :DESC_CA, :DESC_ES, :DESC_EN;'
      '                  '
      '                  ANOTACIO = F_NLine() || F_NLine();'
      '                  POSAIDIOMA = '#39'S'#39';'
      '            END;'
      '      END;'
      ''
      '      /* Informe d'#39'alta m'#232'dica de GBCN */'
      
        '      /* Pacients amb finan'#231'ament 50-intermediaris -> Frase AVI'#211 +
        '  (frase extra ATB) */'
      '      IF (C_TIPUS = '#39'ATB'#39') THEN'
      '      BEGIN'
      '            CENTREFAC = '#39#39';'
      '      '
      '            SELECT T.C_CENTREFAC'
      '            FROM   TRACTAMENTS T'
      
        '            JOIN   PRESTACION P ON T.C_PRESTACIO = P.C_PRESTACIO' +
        ' AND P.ESEASE = '#39'C'#39
      '            WHERE  T.C_TRACTAMENT = :C_TRACTAMENT'
      '            INTO  :CENTREFAC;'
      ''
      '            IF (CENTREFAC = '#39'50'#39') THEN'
      '            BEGIN'
      '                  SELECT TEXT_CA, TEXT_ES, TEXT_EN'
      '                  FROM   INFORMES_LLISTES'
      '/*                  WHERE  ID = 34 */'
      '                  WHERE  C_TIPUS = '#39'ATB'#39
      '                  AND    GRUPS_UM STARTING WITH '#39'AVI'#211#39
      '                  INTO  :DESC_CA, :DESC_ES, :DESC_EN;'
      ''
      '                  ANOTACIO = F_NLine() || F_NLine();'
      '                  POSAIDIOMA = '#39'S'#39';'
      '            END'
      '      END;'
      '      '
      ''
      
        '      /* CNI: Frase a afegir quan el consentiment '#233's verbal i si' +
        'gnen 2 testimonis */'
      
        '      /*      Canvia una mica en funci'#243' de la plantilla (dues fr' +
        'ases diferents)  frase extra CNI*/'
      '      IF (C_TIPUS = '#39'CNI'#39') THEN'
      '      BEGIN'
      
        '            /* Busquem la frase extra entre les llistes de CNI s' +
        'ense '#237'tem i segons plantilla (en tenim el producte al camp ORDRE' +
        ') */'
      '            SELECT TEXT_CA, TEXT_ES, TEXT_EN'
      '            FROM   INFORMES_LLISTES'
      '            WHERE  C_TIPUS = '#39'CNI'#39
      '            AND    GRUPS_UM STARTING WITH '#39'FRASE VERBAL'#39
      '            AND    F_MODULO(ORDRE, :TIPUSECB) = 0'
      '            INTO  :DESC_CA, :DESC_ES, :DESC_EN;'
      ''
      '            POSAIDIOMA = '#39'S'#39';'
      '      END;'
      ''
      ''
      '      /* Informes de valoraci'#243' de depend'#232'ncia grau III+ */'
      
        '      /* En funci'#243' del cas d'#39#250's (ie. la plantilla, ie. el tipusE' +
        'CB) apliquen uns criteris o uns altres per determinar l'#39'acomplim' +
        'ent */'
      '      IF (C_TIPUS = '#39'IN3'#39') THEN'
      '      BEGIN'
      '      '
      '         IF (TMP = '#39'S'#39') THEN'
      '         BEGIN'
      '            /* ELA */'
      '            IF (TIPUSECB = 2) THEN'
      '            BEGIN'
      
        '                SELECT COUNT(*) FROM INFORMES_LIN WHERE ID_INFOR' +
        'ME = :ID_INFORME AND TEXT_TMP = '#39'S'#237#39' INTO :COMPTA;'
      ''
      '                IF (COMPTA >= 2) THEN ANOTACIO = '#39'ACOMPLEIX'#39';'
      '                                 ELSE ANOTACIO = '#39'NO ACOMPLEIX'#39';'
      '            END;'
      ''
      '            /* Irreversibles i d'#39'alta complexitat */'
      '            ELSE IF (TIPUSECB = 3) THEN'
      '            BEGIN'
      '                  /* Acompliment criteri A:  A.1 = S */'
      '                  SELECT COUNT(*)'
      '                  FROM   INFORMES_LIN L'
      '                  JOIN   INFORMES_ITEMS I ON L.C_ITEM = I.C_ITEM'
      '                  WHERE  L.ID_INFORME = :ID_INFORME'
      
        '                  AND   (I.TAG = '#39'IN3_CA1'#39' AND L.TEXT_TMP = '#39'S'#237#39 +
        ')'
      '                  INTO  :CriteriA;'
      ''
      
        '                  /* Acompliment criteri B:  B.1 = S o B.2 = N *' +
        '/'
      '                  SELECT COUNT(*)'
      '                  FROM   INFORMES_LIN L'
      '                  JOIN   INFORMES_ITEMS I ON L.C_ITEM = I.C_ITEM'
      '                  WHERE  L.ID_INFORME = :ID_INFORME'
      
        '                  AND  ((I.TAG = '#39'IN3_CB1'#39' AND L.TEXT_TMP = '#39'S'#237#39 +
        ')'
      
        '                     OR (I.TAG = '#39'IN3_CB2'#39' AND L.TEXT_TMP = '#39'No'#39 +
        '))'
      '                  INTO  :CriteriB;'
      ''
      
        '                  /* Acompliment criteri C:  C.1 = S i C.2 = S *' +
        '/'
      '                  SELECT COUNT(*)'
      '                  FROM   INFORMES_LIN L'
      '                  JOIN   INFORMES_ITEMS I ON L.C_ITEM = I.C_ITEM'
      '                  WHERE  L.ID_INFORME = :ID_INFORME'
      
        '                  AND  ((I.TAG = '#39'IN3_CC1'#39' AND L.TEXT_TMP = '#39'S'#237#39 +
        ')'
      
        '                     OR (I.TAG = '#39'IN3_CC2'#39' AND L.TEXT_TMP = '#39'S'#237#39 +
        '))'
      '                  INTO  :CriteriC;'
      ''
      '                  IF (CriteriC < 2) THEN CriteriC = 0;'
      ''
      
        '                  /* Acompliment criteri D:  D.1 = S o D.2 = S *' +
        '/'
      '                  SELECT COUNT(*)'
      '                  FROM   INFORMES_LIN L'
      '                  JOIN   INFORMES_ITEMS I ON L.C_ITEM = I.C_ITEM'
      '                  WHERE  L.ID_INFORME = :ID_INFORME'
      
        '                  AND  ((I.TAG = '#39'IN3_CD1'#39' AND L.TEXT_TMP = '#39'S'#237#39 +
        ')'
      
        '                     OR (I.TAG = '#39'IN3_CD2'#39' AND L.TEXT_TMP = '#39'S'#237#39 +
        '))'
      '                  INTO  :CriteriD;'
      ''
      
        '                  /* S'#39'han d'#39'acomplir tots els criteris => si al' +
        'gun '#233's 0, ja no s'#39'acompleix */'
      
        '                  IF (CriteriA * CriteriB * CriteriC * CriteriD ' +
        '= 0) THEN ANOTACIO = '#39'NO ACOMPLEIX'#39';'
      
        '                                                                ' +
        '     ELSE ANOTACIO = '#39'ACOMPLEIX'#39';'
      '             END;'
      '         END;'
      '            '
      '         ELSE BEGIN'
      '            /* ELA */'
      '            IF (TIPUSECB = 2) THEN'
      '            BEGIN'
      
        '                SELECT COUNT(*) FROM INFORMES_LIN WHERE ID_INFOR' +
        'ME = :ID_INFORME AND TEXT = '#39'S'#237#39' INTO :COMPTA;'
      ''
      '                IF (COMPTA >= 2) THEN ANOTACIO = '#39'ACOMPLEIX'#39';'
      '                                 ELSE ANOTACIO = '#39'NO ACOMPLEIX'#39';'
      '            END;'
      ''
      '            /* Irreversibles i d'#39'alta complexitat */'
      '            ELSE IF (TIPUSECB = 3) THEN'
      '            BEGIN'
      '                  /* Acompliment criteri A:  A.1 = S */'
      '                  SELECT COUNT(*)'
      '                  FROM   INFORMES_LIN L'
      '                  JOIN   INFORMES_ITEMS I ON L.C_ITEM = I.C_ITEM'
      '                  WHERE  L.ID_INFORME = :ID_INFORME'
      '                  AND   (I.TAG = '#39'IN3_CA1'#39' AND L.TEXT = '#39'S'#237#39')'
      '                  INTO  :CriteriA;'
      '                  '
      
        '                  /* Acompliment criteri B:  B.1 = S o B.2 = N *' +
        '/'
      '                  SELECT COUNT(*)'
      '                  FROM   INFORMES_LIN L'
      '                  JOIN   INFORMES_ITEMS I ON L.C_ITEM = I.C_ITEM'
      '                  WHERE  L.ID_INFORME = :ID_INFORME'
      '                  AND  ((I.TAG = '#39'IN3_CB1'#39' AND L.TEXT = '#39'S'#237#39')'
      '                     OR (I.TAG = '#39'IN3_CB2'#39' AND L.TEXT = '#39'No'#39'))'
      '                  INTO  :CriteriB;'
      '                  '
      
        '                  /* Acompliment criteri C:  C.1 = S i C.2 = S *' +
        '/'
      '                  SELECT COUNT(*)'
      '                  FROM   INFORMES_LIN L'
      '                  JOIN   INFORMES_ITEMS I ON L.C_ITEM = I.C_ITEM'
      '                  WHERE  L.ID_INFORME = :ID_INFORME'
      '                  AND  ((I.TAG = '#39'IN3_CC1'#39' AND L.TEXT = '#39'S'#237#39')'
      '                     OR (I.TAG = '#39'IN3_CC2'#39' AND L.TEXT = '#39'S'#237#39'))'
      '                  INTO  :CriteriC;'
      '                  '
      '                  IF (CriteriC < 2) THEN CriteriC = 0;'
      ''
      
        '                  /* Acompliment criteri D:  D.1 = S o D.2 = S *' +
        '/'
      '                  SELECT COUNT(*)'
      '                  FROM   INFORMES_LIN L'
      '                  JOIN   INFORMES_ITEMS I ON L.C_ITEM = I.C_ITEM'
      '                  WHERE  L.ID_INFORME = :ID_INFORME'
      '                  AND  ((I.TAG = '#39'IN3_CD1'#39' AND L.TEXT = '#39'S'#237#39')'
      '                     OR (I.TAG = '#39'IN3_CD2'#39' AND L.TEXT = '#39'S'#237#39'))'
      '                  INTO  :CriteriD;'
      '                  '
      
        '                  /* S'#39'han d'#39'acomplir tots els criteris => si al' +
        'gun '#233's 0, ja no s'#39'acompleix */'
      
        '                  IF (CriteriA * CriteriB * CriteriC * CriteriD ' +
        '= 0) THEN ANOTACIO = '#39'NO ACOMPLEIX'#39';'
      
        '                                                                ' +
        '     ELSE ANOTACIO = '#39'ACOMPLEIX'#39';'
      '             END;'
      '         END;'
      '      END;'
      ''
      ''
      '      /* Retornem el text en l'#39'idioma corresponent si cal */'
      '      IF (POSAIDIOMA = '#39'S'#39') THEN'
      '      BEGIN'
      
        '            IF      (IDIOMA = 2) THEN ANOTACIO = DESC_ES || ANOT' +
        'ACIO;'
      
        '            ELSE IF (IDIOMA = 3) THEN ANOTACIO = DESC_EN || ANOT' +
        'ACIO;'
      
        '                                 ELSE ANOTACIO = DESC_CA || ANOT' +
        'ACIO;'
      '      END;'
      ''
      ''
      '      SUSPEND;'
      'END'
      ''
      '')
    Dic1 = Informes_Plantilles
    Dic1Name = 'Plantilles'
    Abierta = False
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
    Left = 1388
    Top = 224
  end
  object P_Items_Procs: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Procs'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA        INTEGER,'
      '      C_TRACTAMENT      INTEGER,'
      '      IDIOMA            SMALLINT'
      ')'
      'RETURNS ('
      '      PROCEDIMENT       VARCHAR(100),'
      '      DATA              DATE,'
      '      ORDRE             SMALLINT'
      ')'
      'AS'
      '  DECLARE VARIABLE ORDRE_P          SMALLINT;'
      '  DECLARE VARIABLE DATA_INGRES      DATE;'
      '  DECLARE VARIABLE DATA_ALTA        DATE;'
      '  DECLARE VARIABLE DADES            VARCHAR(100);'
      '  DECLARE VARIABLE NUM              SMALLINT;'
      '  DECLARE VARIABLE HEMATIES         SMALLINT;'
      '  DECLARE VARIABLE PLASMAFRESC      SMALLINT;'
      '  DECLARE VARIABLE PLAQUETES        SMALLINT;'
      '  DECLARE VARIABLE CRIOPRECIPITATS  SMALLINT;'
      '  DECLARE VARIABLE CONCENTRACIO     INTEGER;'
      '  DECLARE VARIABLE T_REG            SMALLINT;'
      '  DECLARE VARIABLE REG_CA           VARCHAR(40);'
      '  DECLARE VARIABLE REG_ES           VARCHAR(40);'
      '  DECLARE VARIABLE MOD_CA           VARCHAR(100);'
      '  DECLARE VARIABLE MOD_ES           VARCHAR(100);'
      '  DECLARE VARIABLE LPP              SMALLINT;'
      '  DECLARE VARIABLE C_OM             INTEGER;'
      '  DECLARE VARIABLE N_GTN            VARCHAR(80);'
      '  DECLARE VARIABLE ADMINISTRACIO    CHAR(1);'
      '  DECLARE VARIABLE DATA_PRESA       DATE;'
      'BEGIN'
      ''
      
        '      SELECT DATA_INGRES, DATA_ALTA FROM TRACTAMENTS WHERE C_TRA' +
        'CTAMENT = :C_TRACTAMENT INTO :DATA_INGRES, :DATA_ALTA;'
      ''
      '      /* Procediments de proc'#233's */'
      '      ORDRE = 0;'
      '      '
      '      FOR SELECT AnsiLower(N_PROCEDIMENT), DATA, ORDRE'
      '          FROM   TPROCEDIMENTS'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    TIPUS = '#39'P'#39
      '          AND    F_StringLength(N_PROCEDIMENT) > 1'
      '          AND    Upper(N_PROCEDIMENT) <> "NO"'
      '          ORDER  BY ORDRE'
      '          INTO   :PROCEDIMENT, :DATA, :ORDRE'
      '      DO BEGIN'
      '            IF (DATA_INGRES = DATA_ALTA) THEN DATA = NULL;'
      ''
      
        '            PROCEDIMENT = AnsiUpper(F_Left(PROCEDIMENT, 1)) || F' +
        '_Right(PROCEDIMENT, F_StringLength(PROCEDIMENT)-1);'
      ''
      '            SUSPEND;'
      '      END;'
      ''
      '      PROCEDIMENT = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      NUM = NULL;'
      ''
      '      /* Transfusions sangu'#237'nies */'
      '      ORDRE = 50;'
      ''
      
        '      FOR SELECT DATA_TRANSFUSIO, HEMATIES, PLASMAFRESC, PLAQUET' +
        'ES, CRIOPRECIPITATS'
      '          FROM   BANCSANG B'
      '          JOIN   INTERCON I ON B.C_INTERCON = I.C_INTERCON'
      '          WHERE  I.C_HISTORIA = :C_HISTORIA'
      '          AND    B.TRANSFUSIO = "S"'
      '          AND    B.DATA_TRANSFUSIO >= :DATA_INGRES'
      
        '          AND   (B.DATA_TRANSFUSIO <= :DATA_ALTA  OR :DATA_ALTA ' +
        'IS NULL)'
      '          ORDER  BY B.DATA_TRANSFUSIO'
      
        '          INTO   :DATA, :HEMATIES, :PLASMAFRESC, :PLAQUETES, :CR' +
        'IOPRECIPITATS'
      '      DO BEGIN'
      '            IF (DATA_INGRES = DATA_ALTA) THEN DATA = NULL;'
      ''
      '            IF (HEMATIES > 0) THEN'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Transfusi'#243 +
        'n de hemat'#237'as ('#39' || HEMATIES || '#39' unidades)'#39';'
      
        '                                  ELSE PROCEDIMENT = '#39'Transfusi'#243 +
        ' d'#39#39'hematies ('#39'  || HEMATIES || '#39' unitats)'#39';'
      '                  SUSPEND;'
      '            END'
      '            IF (PLASMAFRESC > 0) THEN'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Transfusi'#243 +
        'n de plasma fresco ('#39' || PLASMAFRESC || '#39' unidades)'#39';'
      
        '                                  ELSE PROCEDIMENT = '#39'Transfusi'#243 +
        ' de plasma fresc ('#39'   || PLASMAFRESC || '#39' unitats)'#39';'
      '                  SUSPEND;'
      '            END'
      '            IF (PLAQUETES > 0) THEN'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Transfusi'#243 +
        'n de plaquetas ('#39' || PLAQUETES || '#39' unidades)'#39';'
      
        '                                  ELSE PROCEDIMENT = '#39'Transfusi'#243 +
        ' de plaquetes ('#39'  || PLAQUETES || '#39' unitats)'#39';'
      ''
      '                  SUSPEND;'
      '            END'
      '            IF (CRIOPRECIPITATS > 0) THEN'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Transfusi'#243 +
        'n de crioprecipitados ('#39' || CRIOPRECIPITATS || '#39' unidades)'#39';'
      
        '                                  ELSE PROCEDIMENT = '#39'Transfusi'#243 +
        ' de crioprecipitats ('#39'   || CRIOPRECIPITATS || '#39' unitats)'#39';'
      ''
      '                  SUSPEND;'
      '            END'
      '      END'
      '      '
      '      PROCEDIMENT = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      NUM = NULL;'
      ''
      '      /* Nutrici'#243' enteral o parenteral */'
      '      ORDRE = 51;'
      '      '
      '      FOR SELECT DISTINCT O.C_VIA'
      '          FROM   ORDRESMEDIQUES O'
      '          JOIN   PRODUCTES P ON O.C_PRODUCTE = P.C_PROD'
      
        '          JOIN   GTN G ON P.GTN = G.GTN AND G.ESNUTRICIOENTERAL ' +
        '= "S"'
      '          WHERE  O.C_TRACTAMENT = :C_TRACTAMENT'
      
        '          AND   (O.DATA_SUSPENSIO > O.DATA_INICI + O.HORA_INICI/' +
        '24 + 1/24 OR O.DATA_SUSPENSIO IS NULL)'
      '          ORDER  BY O.DATA_INICI'
      '          INTO  :DADES'
      '      DO BEGIN'
      ''
      
        '            IF ((DADES = '#39'IV'#39') OR (DADES = '#39'PIV'#39') OR (DADES = '#39'B' +
        'I'#39')) THEN'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Nutrici'#243'n ' +
        'parenteral'#39';'
      
        '                                  ELSE PROCEDIMENT = '#39'Nutrici'#243' p' +
        'arenteral'#39';'
      '            END'
      '            ELSE BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Nutrici'#243'n ' +
        'enteral'#39';'
      
        '                                  ELSE PROCEDIMENT = '#39'Nutrici'#243' e' +
        'nteral'#39';'
      '            END'
      '            '
      '            SUSPEND;'
      '      END'
      '      '
      '      PROCEDIMENT = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      NUM = NULL;'
      ''
      '      /* Rec'#224'rrega de Baclof'#232'n */'
      '      ORDRE = 52;'
      '      '
      '      FOR SELECT AMPOLLES, G.BCFCONCENTRACIO, DATA_RECARREGA'
      '          FROM   BCFRECARREGUES B'
      '          JOIN   ORDRESMEDIQUES O ON B.C_OM = O.C_ORDREMEDICA'
      '          JOIN   GTN G ON O.GTN = G.GTN'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    ACCIO = 1'
      '          AND    ANULAT = "N"'
      '          ORDER  BY B.DATA_RECARREGA'
      '          INTO  :NUM, :CONCENTRACIO, :DATA'
      '      DO BEGIN'
      '            IF (DATA_INGRES = DATA_ALTA) THEN DATA = NULL;'
      ''
      
        '            IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Recarga de bomba' +
        ' de baclofeno: '#39'  || NUM|| '#39' botellas a concentraci'#243'n '#39' || CONCE' +
        'NTRACIO;'
      
        '                            ELSE PROCEDIMENT = '#39'Rec'#224'rrega de bom' +
        'ba de baclof'#232'n: '#39' || NUM|| '#39' ampolles a concentraci'#243' '#39'  || CONCE' +
        'NTRACIO;'
      '            '
      '            SUSPEND;'
      '      END'
      '      '
      '      PROCEDIMENT = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      NUM = NULL;'
      ''
      '      /* Infiltraci'#243' Toxina Botul'#237'nica */'
      '      ORDRE = 53;'
      ''
      '      FOR SELECT DISTINCT DATA_INICI'
      '          FROM   ORDRESMEDIQUES O'
      '          JOIN   PRODUCTES P ON O.C_PRODUCTE = P.C_PROD'
      '          JOIN   GTN G ON P.GTN = G.GTN'
      '          WHERE  O.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    GTN LIKE "M03AX%"'
      
        '          AND   (O.DATA_SUSPENSIO > O.DATA_INICI + O.HORA_INICI/' +
        '24 + 1/24 OR O.DATA_SUSPENSIO IS NULL)'
      '          ORDER  BY O.DATA_INICI'
      '          INTO  :DATA'
      '      DO BEGIN'
      '            IF (DATA_INGRES = DATA_ALTA) THEN DATA = NULL;'
      '            '
      
        '            IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Infiltraci'#243'n int' +
        'ramuscular con toxina botul'#237'nica'#39';'
      
        '                            ELSE PROCEDIMENT = '#39'Infiltraci'#243' intr' +
        'amuscular amb toxina botul'#237'nica'#39';'
      ''
      '            SUSPEND;'
      '      END'
      '      '
      '      '
      ''
      '      PROCEDIMENT = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      NUM = NULL;'
      '      '
      '      /* Registres d'#39'infermeria */'
      '      ORDRE = 54;'
      ''
      
        '      FOR SELECT DISTINCT R.T_REG, T.N_CODI, T.N_CODI2, M.N_CODI' +
        ', M.N_CODI2'
      '          FROM   REGISTRESINFER R'
      
        '          JOIN   CODICAMPS T ON T.TIPUSCODI = '#39'INFER.TIPUSREG'#39' A' +
        'ND R.T_REG = T.C_CODI'
      
        '          LEFT   OUTER JOIN CODICAMPS M ON M.TIPUSCODI = T.PARAM' +
        'S||'#39'_TIPUS'#39' AND R.C_TIPUS = M.C_CODI'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    T.C_CODI IN (1,3,4,5,6,7,9,12,13,17,18,22,23)'
      '          AND    C_MOTIU <> 99'
      '          ORDER  BY T.ORDRE'
      '          INTO  :T_REG, :REG_CA, :REG_ES, :MOD_CA, :MOD_ES'
      '      DO BEGIN'
      '      '
      '            IF (MOD_CA IS NULL) THEN MOD_CA = '#39#39';'
      '            IF (MOD_ES IS NULL) THEN MOD_ES = '#39#39';'
      '            '
      '            PROCEDIMENT = '#39#39';'
      '            '
      
        '            IF (T_REG IN (1,6,7,12,17,23)) THEN                 ' +
        '  /* Cat'#232'ters, sondes, col'#183'lectors... */'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Instauraci' +
        #243'n/cambio de '#39' || AnsiLower(REG_ES) || '#39' '#39';'
      
        '                                  ELSE PROCEDIMENT = '#39'Instauraci' +
        #243'/canvi de '#39'  || AnsiLower(REG_CA) || '#39' '#39';'
      '            END'
      ''
      
        '            ELSE IF (T_REG IN (22,25,27)) THEN                  ' +
        '  /* Cateterismes intermitents, mobilitzaci'#243' secrecions, ter'#224'pia' +
        ' pressi'#243' negativa */'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = REG_ES || '#39 +
        ' '#39';'
      
        '                                  ELSE PROCEDIMENT = REG_CA || '#39 +
        ' '#39';'
      '            END'
      '            '
      
        '            ELSE IF (T_REG IN (5,9,13,18)) THEN                 ' +
        '  /* Ostomies i sondes que no s'#39'implanten ni es canvien a planta' +
        ' */'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Curas de '#39 +
        ' || AnsiLower(REG_ES) || '#39' '#39';'
      
        '                                  ELSE PROCEDIMENT = '#39'Cures de '#39 +
        ' || AnsiLower(REG_CA) || '#39' '#39';'
      '            END'
      ''
      
        '            IF (IDIOMA = 2) THEN PROCEDIMENT = PROCEDIMENT || MO' +
        'D_ES;'
      
        '                            ELSE PROCEDIMENT = PROCEDIMENT || MO' +
        'D_CA;'
      ''
      '            SUSPEND;'
      '      END'
      '      '
      '      /* Cures LPP */'
      '      ORDRE = 55;'
      '      '
      '      SELECT COUNT(*)'
      '      FROM   UPPCAP    U'
      '      JOIN   UPPLIN    L ON U.ID = L.ID'
      
        '      JOIN   CODICAMPS C ON U.LOCALITZACIO = C.C_CODI AND C.TIPU' +
        'SCODI = '#39'UPP.LOCALITZACIO'#39
      '      WHERE  U.C_TRACTAMENT= :C_TRACTAMENT'
      
        '      AND    U.ESTAT <> 4              /* excloem les anul'#183'lades' +
        ' */'
      '      INTO  :LPP;'
      '      '
      '      IF (LPP > 0) THEN'
      '      BEGIN'
      
        '            IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Realizaci'#243'n de c' +
        'uras de la Lesi'#243'n por presi'#243'n'#39';'
      
        '                            ELSE PROCEDIMENT = '#39'Realitzaci'#243' de c' +
        'ures de la lesi'#243' per pressi'#243#39';'
      '      END'
      ''
      '      /* Vacunes */'
      '      ORDRE = 56;'
      '      '
      '      FOR SELECT O.C_ORDREMEDICA, G.N_GTN'
      '          FROM   ORDRESMEDIQUES O'
      '          JOIN   GTN G ON O.GTN = G.GTN'
      '          WHERE  O.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    O.GTN STARTING WITH "J07"'
      '          INTO  :C_OM, :N_GTN'
      '      DO BEGIN'
      '      '
      '            PROCEDIMENT = '#39#39';'
      '            '
      '            SELECT ADMINISTRACIO, F_SoloFecha(DATA_PRESA)'
      '            FROM   OMADMINISTRACIO'
      '            WHERE  C_ORDREMEDICA = :C_OM'
      '            ORDER  BY DATA_ADMIN DESC'
      '            ROWS   1'
      '            INTO  :ADMINISTRACIO, :DATA_PRESA;'
      '            '
      '            IF (ADMINISTRACIO = '#39'S'#39') THEN'
      '            BEGIN'
      ''
      
        '                  IF (IDIOMA = 2) THEN PROCEDIMENT = '#39'Administra' +
        'ci'#243'n de '#39' || N_GTN || '#39' el dia '#39' || F_DateToStr(DATA_PRESA);'
      
        '                                  ELSE PROCEDIMENT = '#39'Administra' +
        'ci'#243' de '#39'  || N_GTN || '#39' el d'#237'a '#39' || F_DateToStr(DATA_PRESA);'
      '                                  '
      '                  SUSPEND;'
      '            END'
      '      END'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 1140
    Top = 74
  end
  object T_InfLin_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /* Informem l'#39'ID via generator */'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_INFORMESLIN, 1)' +
        ';'
      '   END;'
      'END')
    Dic1 = Informes_Lin
    Dic1Name = 'Informes_Lin'
    Abierta = False
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
    Left = 128
    Top = 194
  end
  object P_Items_Anal: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Anal'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT,'
      '      DIES_ENRERE  SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE N_DATA       VARCHAR(10);'
      '      DECLARE VARIABLE DATA         DATE;'
      '      DECLARE VARIABLE PETICIO_ES   VARCHAR(3000);'
      '      DECLARE VARIABLE PETICIO_CA   VARCHAR(3000);'
      '      DECLARE VARIABLE PETICIO      VARCHAR(3000);'
      '      DECLARE VARIABLE RESPOSTA     VARCHAR(3000);'
      '      DECLARE VARIABLE SURT         SMALLINT;'
      'BEGIN'
      ''
      '      IF (IDIOMA = 2) THEN N_DATA = '#39'Fecha: '#39';'
      '                      ELSE N_DATA = '#39'Data: '#39';'
      ''
      '      ANOTACIO = '#39#39';'
      '      PETICIO_ES = '#39#39';'
      '      PETICIO_CA = '#39#39';'
      '      PETICIO = '#39#39';'
      '      RESPOSTA = '#39#39';'
      ''
      '      SURT = 0;'
      '      '
      '      FOR SELECT DATA_PROVA, PETICIO_ES, PETICIO_CA, RESPOSTA'
      
        '          FROM   P_INFORMES_ITEMS_ANAL1 (:C_HISTORIA, :C_TRACTAM' +
        'ENT, :DIES_ENRERE)'
      '          INTO  :DATA, :PETICIO_ES, :PETICIO_CA, :RESPOSTA'
      '      DO BEGIN'
      '            IF (SURT = 0) THEN'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN PETICIO = TotUpper(PETICI' +
        'O_ES);'
      
        '                                  ELSE PETICIO = TotUpper(PETICI' +
        'O_CA);'
      ''
      
        '                  IF (ANOTACIO <> '#39#39') THEN ANOTACIO = ANOTACIO |' +
        '| F_NLine();'
      ''
      
        '                  IF (F_STRINGLENGTH(ANOTACIO) + F_STRINGLENGTH(' +
        'PETICIO) + F_STRINGLENGTH(RESPOSTA) > 28000) THEN'
      '                  BEGIN'
      
        '                        ANOTACIO = ANOTACIO || F_NLine() || '#39'ANO' +
        'TACIO INCOMPLETA'#39';'
      '                        SURT = 1;'
      '                  END;'
      
        '                  ELSE ANOTACIO = ANOTACIO || PETICIO || F_NLine' +
        '() || N_DATA || F_DateToStr(DATA) || F_NLine() || RESPOSTA;'
      ''
      '                  PETICIO = '#39#39';'
      '                  RESPOSTA = '#39#39';'
      '            END;'
      '      END'
      ''
      ''
      '      IF (ANOTACIO = '#39#39') THEN'
      '      BEGIN'
      
        '            IF      (IDIOMA = 2) THEN ANOTACIO = '#39'No se han requ' +
        'erido pruebas de laboratorio.'#39';'
      
        '            ELSE IF (IDIOMA = 3) THEN ANOTACIO = '#39'No laboratory ' +
        'tests have been required.'#39';'
      
        '                                 ELSE ANOTACIO = '#39'No s'#39#39'han requ' +
        'erit proves de laboratori.'#39';'
      '      END'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 24
  end
  object P_Inf_GeneraAlta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraAlta'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1), E_TRACTAMENT INTEGER)'
      'RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      '  C_PRESTACIO     VARCHAR(4),'
      '  C_MOTIU         SMALLINT,'
      '  C_COORDINADOR   VARCHAR(5),'
      '  NOVA            CHAR(1),'
      '  ID_INFORME      INTEGER,'
      '  C_TIPUS         VARCHAR(3),'
      '  C_ESTAT         INTEGER,'
      '  GESTIONAT       SMALLINT,'
      '  COMENTARI       VARCHAR(250),'
      '  ORDRE           SMALLINT'
      ')'
      'AS'
      '  DECLARE VARIABLE CONJUNT    CHAR(1);'
      '  DECLARE VARIABLE C_PRESTACIOORIGEN VARCHAR(4);'
      '  DECLARE VARIABLE FISIO      VARCHAR (30);'
      '  DECLARE VARIABLE TERAP      VARCHAR (30);'
      '  DECLARE VARIABLE INFER      VARCHAR (30);'
      '  DECLARE VARIABLE PSICO      VARCHAR (30);'
      '  DECLARE VARIABLE TSOCIAL    VARCHAR (30);'
      'BEGIN'
      
        '      /* Per generar sol'#183'licituds d'#39'informes d'#39'alta autom'#224'ticame' +
        'nt per als tractaments que es vagin incorporant al motor d'#39'infor' +
        'mes */'
      
        '      /* Farem c'#243'rrer aquesta procedure cada dia, per generar le' +
        's sol'#183'licituds d'#39'informe d'#39'alta que calgui */'
      
        '      /* Tamb'#233' serveix per for'#231'ar la generaci'#243' de l'#39'informe d'#39'al' +
        'ta des del curs cl'#237'nic */'
      ''
      
        '      /* Prestacions amb dret P226 (generar informe d'#39'alta del t' +
        'ipus que li corresponguii segons altres drets parametritzats a I' +
        'nformes_Tipus */'
      ''
      
        '      /* Per cada tractament que hagi de tenir informe d'#39'alta i ' +
        'que sigui alta en els propers 15 dies o que hagi estat alta la s' +
        'etmana anterior */'
      
        '      FOR SELECT DISTINCT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRES' +
        'TACIO, T.C_PRESTACIOORIGEN, T.C_MOTIU, T.C_COORDINADOR'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   CODICAMPS C ON C.TIPUSCODI = '#39'ESTATFACTU'#39' AND C' +
        '.C_CODI = T.C_ESTATFAC AND C.R_CODI <> 9  /* Excloem tractament ' +
        'anul'#183'lats. */'
      
        '          JOIN   DRETSPRESTA D ON  D.C_DRET = '#39'P226'#39'            ' +
        '                                          /* Alguns motius es fa' +
        'n servir per a diferents prestacions / tenim parametritzat el ti' +
        'pus d'#39'informe segons drets de prestaci'#243' per'#242' algunes van amb sis' +
        'tema antic d'#39'altes. */'
      
        '                              AND (D.C_PRESTACIO = T.C_PRESTACIO' +
        ' OR D.C_PRESTACIO = T.C_PRESTACIOORIGEN)  /* Si '#233's ingr'#233's provis' +
        'ional, mirarem i agafarem prestaci'#243' origen. */'
      '          WHERE ('
      
        '                  (     T.C_TRACTAMENT = :E_TRACTAMENT          ' +
        '                                          /* Amb aix'#242' podem for'#231 +
        'ar la generaci'#243' per a un tractament concret  */'
      
        '                   AND (T.DATA_ALTA    IS NULL OR T.DATA_ALTA   ' +
        ' >= "TODAY")                              /* que no tingui alta ' +
        'prevista en el termini esperat (Ctrl+F2) */'
      
        '                   AND (T.DATA_PREALTA IS NULL OR T.DATA_PREALTA' +
        ' >= "TODAY")'
      '                  )'
      '                OR'
      
        '                  (     :E_TRACTAMENT IS NULL                   ' +
        '                                          /* i amb aix'#242', generem' +
        ' el que toca dins del rang actual d'#39'altes (7 dies enrere i 15 en' +
        'davant). */'
      
        '                   AND ((T.DATA_ALTA >= "TODAY" - 7 AND T.DATA_A' +
        'LTA <= "TODAY" + 15)'
      '                        OR'
      
        '                        (T.DATA_ALTA IS NULL AND T.DATA_PREALTA ' +
        '>= "TODAY" - 7 AND T.DATA_PREALTA <= "TODAY" + 15)'
      '                       )'
      '                  )'
      '                )'
      
        '          AND   T.OBS_SECRE IS NULL                             ' +
        '                                         /* Aix'#242' serveix per no ' +
        'generar els que ja s'#39'han iniciat amb el sistema antic. */'
      
        '          INTO :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :C_PRES' +
        'TACIOORIGEN, :C_MOTIU, :C_COORDINADOR'
      '      DO BEGIN'
      ''
      '            C_TIPUS = NULL;'
      '            CONJUNT = '#39'N'#39';'
      '            GESTIONAT = NULL;'
      '            ORDRE = NULL;'
      '            ID_INFORME = NULL;'
      '            C_ESTAT = NULL;'
      '            COMENTARI = '#39#39';'
      '            NOVA = '#39'N'#39';'
      ''
      
        '            IF (C_PRESTACIO = '#39'9999'#39') THEN C_PRESTACIO = C_PREST' +
        'ACIOORIGEN;'
      ''
      
        '            /* Busquem si al tractament que '#233's alta li correspon' +
        ' sol'#183'licitud autom'#224'tica d'#39'algun tipus d'#39'informe a l'#39'alta */'
      '            SELECT T.C_TIPUS, T.CONJUNT, T.GESTIONAT, T.ORDRE'
      '            FROM   INFORMES_TIPUS T'
      
        '            LEFT   OUTER JOIN DRETSPRESTA P ON T.C_DRETPRESTA = ' +
        'P.C_DRET'
      
        '            LEFT   OUTER JOIN DRETSMOTIU M ON T.C_DRETMOTIU = M.' +
        'C_DRET'
      
        '            WHERE (T.C_DRETMOTIU IS NOT NULL OR T.C_DRETPRESTA I' +
        'S NOT NULL)'
      
        '            AND   (P.C_PRESTACIO = :C_PRESTACIO OR M.C_MOTIU = :' +
        'C_MOTIU)'
      '            INTO  :C_TIPUS, :CONJUNT, :GESTIONAT, :ORDRE;'
      '            '
      '            IF (C_TIPUS IS NOT NULL) THEN'
      '            BEGIN'
      
        '                  /* Comprovem que la sol'#183'licitud encara no s'#39'ha' +
        'gi generat'
      
        '                    (si est'#224' anul'#183'lada tampoc no la generem - l'#39 +
        'hauran de recuperar des del programa d'#39'Admissions pequ'#232' es mogui' +
        ' el fitxer corresponent a l'#39'informe, si ja estava creat) */'
      '                  SELECT I.ID_INFORME, I.C_ESTAT'
      '                  FROM   INFORMES I'
      '                  WHERE  I.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    I.C_TIPUS = :C_TIPUS'
      '                  ROWS   1'
      '                  INTO  :ID_INFORME, :C_ESTAT;'
      ''
      '                  /* Si no existeix sol'#183'licitud, la generem */'
      '                  IF (ID_INFORME IS NULL) THEN'
      '                  BEGIN'
      '                        NOVA = '#39'S'#39';'
      ''
      
        '                        /* Si l'#39'informe '#233's conjunt, busquem els ' +
        'professionals (equip assistencial) que hi hauran de participar *' +
        '/'
      '                        IF (CONJUNT = '#39'S'#39') THEN'
      '                        BEGIN'
      
        '                              SELECT C_FISIOTERAPEUTA, C_TERAPEU' +
        'TA, C_INFERMERIA, C_PSICOLEG, C_TREVALLSOCIAL'
      '                              FROM   TRACTAMENTS'
      
        '                              WHERE  C_TRACTAMENT = :C_TRACTAMEN' +
        'T'
      
        '                              INTO  :FISIO, :TERAP, :INFER, :PSI' +
        'CO, :TSOCIAL;'
      ''
      
        '                              IF (FISIO IS NULL) THEN FISIO = '#39#39 +
        ';'
      
        '                                                 ELSE FISIO = FI' +
        'SIO || '#39' (FI),  '#39';'
      
        '                              IF (TERAP IS NULL) THEN TERAP = '#39#39 +
        ';'
      
        '                                                 ELSE TERAP = TE' +
        'RAP || '#39' (TO),  '#39';'
      
        '                              IF (INFER IS NULL) THEN INFER = '#39#39 +
        ';'
      
        '                                                 ELSE INFER = IN' +
        'FER || '#39' (UN),  '#39';'
      
        '                              IF (PSICO IS NULL) THEN PSICO = '#39#39 +
        ';'
      
        '                                                 ELSE PSICO = PS' +
        'ICO || '#39' (PS),  '#39';'
      
        '                              IF (TSOCIAL IS NULL) THEN TSOCIAL ' +
        '= '#39#39';'
      
        '                                                   ELSE TSOCIAL ' +
        '= TSOCIAL || '#39' (AS),  '#39';'
      ''
      
        '                              COMENTARI = FISIO || TERAP || INFE' +
        'R || PSICO || TSOCIAL;'
      ''
      '                              /*'
      
        '                              SELECT F_StrNull(C_FISIOTERAPEUTA ' +
        '|| '#39' (FI),  '#39', '#39#39') || F_StrNull(C_TERAPEUTA || '#39' (TO),  '#39', '#39#39') |' +
        '|'
      
        '                                     F_StrNull(C_INFERMERIA     ' +
        '|| '#39' (UN),  '#39', '#39#39') || F_StrNull(C_PSICOLEG  || '#39' (PS),  '#39', '#39#39') |' +
        '|'
      
        '                                     F_StrNull(C_TREVALLSOCIAL  ' +
        '|| '#39' (AS)'#39', '#39#39')'
      '                              FROM   TRACTAMENTS'
      
        '                              WHERE  C_TRACTAMENT = :C_TRACTAMEN' +
        'T'
      '                              INTO  :COMENTARI;'
      '                              */'
      '                        END;'
      ''
      '                        IF (EXECUTA = '#39'S'#39') THEN'
      '                        BEGIN'
      
        '                              ID_INFORME = GEN_ID(G_INFORMES, 1)' +
        ';'
      ''
      '                              /* Cap'#231'alera sol'#183'licitud */'
      
        '                              /* Assignarem el coordinador com a' +
        ' usuari a qui se sol'#183'licita l'#39'informe. */'
      
        '                              INSERT INTO INFORMES (ID_INFORME, ' +
        'C_HISTORIA, C_TRACTAMENT, C_TIPUS, URGENT, C_ESTAT, GESTIONAT, C' +
        '_USUARI, COMENTARI)'
      
        '                              VALUES (:ID_INFORME, :C_HISTORIA, ' +
        ':C_TRACTAMENT, :C_TIPUS, "N", 0, :GESTIONAT, :C_COORDINADOR, :CO' +
        'MENTARI);'
      ''
      
        '                              /* Registrem l'#39'acci'#243' (sol'#183'licitud)' +
        ' */'
      
        '                              INSERT INTO INFORMES_REG (ID_INFOR' +
        'ME, LINIA, ACCIO, DATA, COMENTARI)'
      
        '                              VALUES (:ID_INFORME, 1, 1, "NOW", ' +
        '"Sol'#183'licitud autom'#224'tica d'#39#39'informe d'#39#39'alta");'
      '                        END;'
      ''
      '                        SUSPEND;'
      '                  END;'
      '            END;'
      '      END;'
      'END'
      '')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Top = 374
  end
  object P_Items_ComentariIQ: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ComentariIQ'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER,'
      '       IDIOMA       SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE NO_R             VARCHAR(30);'
      '  DECLARE VARIABLE N_PROCEDIMENT    VARCHAR(80);'
      '  DECLARE VARIABLE DATA             DATE;'
      '  DECLARE VARIABLE REALITZADA       VARCHAR(1);'
      '  DECLARE VARIABLE COMENTARI        VARCHAR(5000);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      '      '
      '      IF (IDIOMA = 2) THEN NO_R = '#39'Intervenci'#243'n no realizada '#39';'
      '                      ELSE NO_R = '#39'Intervenci'#243' no realitzada '#39';'
      '      '
      
        '      FOR SELECT N_PROCEDIMENT, F_SoloFecha(DATA_ENTRADA), REALI' +
        'TZADA, COMENTARI'
      '          FROM   BQUIRURGIC'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    ESTAT <> 40'
      '          INTO  :N_PROCEDIMENT, :DATA, :REALITZADA, :COMENTARI'
      '      DO BEGIN'
      '      '
      '            IF (COMENTARI IS NULL) THEN COMENTARI = '#39#39';'
      '      '
      
        '            ANOTACIO = ANOTACIO || F_DateToStr(:DATA) || '#39' - '#39' |' +
        '| N_PROCEDIMENT || F_NLine();'
      '            '
      
        '            IF (REALITZADA = '#39'N'#39') THEN ANOTACIO = ANOTACIO || NO' +
        '_R || F_NLine();'
      '            '
      
        '            ANOTACIO = ANOTACIO || COMENTARI || F_NLine() || F_N' +
        'Line();'
      ''
      '      END;'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 696
    Top = 124
  end
  object P_Inf_GeneraTrasllat: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraTrasllat'
    ForceNombreDB = False
    Body.Strings = (
      
        '(NHC INTEGER, C_TRACTAMENT INTEGER, C_METGE VARCHAR(5), EXECUTA ' +
        'CHAR(1))'
      'RETURNS ('
      '  ID_INFORME      INTEGER,'
      '  C_TIPUS         VARCHAR(3),'
      '  C_ESTAT         INTEGER,'
      '  GESTIONAT       SMALLINT,'
      '  ORDRE           SMALLINT'
      ')'
      'AS'
      'BEGIN'
      
        '      /* Per generar sol'#183'licituds d'#39'informes de trasllat quan co' +
        'nvingui */'
      ''
      '      C_TIPUS = "TRS";'
      ''
      
        '      /* Mirem si ja existeix un informe de trasllat en curs, d'#39 +
        'avui, no anul'#183'lat */'
      '      SELECT I.ID_INFORME, I.C_ESTAT'
      '      FROM   INFORMES I'
      
        '      JOIN   INFORMES_REG R ON I.ID_INFORME = R.ID_INFORME AND R' +
        '.ACCIO = 1'
      '      WHERE  I.C_TRACTAMENT = :C_TRACTAMENT'
      '      AND    I.C_TIPUS = :C_TIPUS'
      '      AND    F_SoloFecha(R.DATA) = "TODAY"'
      
        '      AND  ((I.C_ESTAT = 10 AND :EXECUTA = "N")   /* Si estem CO' +
        'NSULTANT si existeix informe de trasllat d'#39'avui, incloem els fin' +
        'alitzats per preguntar si volen generar-ne un de nou encara que ' +
        'n'#39'existeixi un de fet */'
      
        '         OR (I.C_ESTAT <= 6))                     /* Si estem EX' +
        'ECUTANT la creaci'#243' d'#39'informe de trasllat, excloem els finalitzat' +
        's (per for'#231'ar-la si han respost que volen generar-ne un de nou)*' +
        '/'
      '      ORDER  BY I.ID_INFORME DESC'
      '      ROWS   1'
      '      INTO  :ID_INFORME, :C_ESTAT;'
      '      '
      '      SELECT T.GESTIONAT, ORDRE'
      '      FROM   INFORMES_TIPUS T'
      '      WHERE  C_TIPUS = "TRS"'
      '      INTO  :GESTIONAT, :ORDRE;'
      '            '
      '      IF ((EXECUTA = '#39'S'#39') AND (ID_INFORME IS NULL)) THEN'
      '      BEGIN'
      '            ID_INFORME = GEN_ID(G_INFORMES, 1);'
      '            C_ESTAT = 0;'
      ''
      '            /* Cap'#231'alera sol'#183'licitud */'
      
        '            INSERT INTO INFORMES (ID_INFORME, C_HISTORIA, C_TRAC' +
        'TAMENT, C_TIPUS, URGENT, C_ESTAT, GESTIONAT, C_USUARI)'
      
        '            VALUES (:ID_INFORME, :NHC, :C_TRACTAMENT, "TRS", "N"' +
        ', :C_ESTAT, :GESTIONAT, :C_METGE);'
      ''
      '            /* Registrem l'#39'acci'#243' (sol'#183'licitud) */'
      
        '            INSERT INTO INFORMES_REG (ID_INFORME, LINIA, ACCIO, ' +
        'DATA)'
      '            VALUES (:ID_INFORME, 1, 1, "NOW");'
      '      END;'
      ''
      '      SUSPEND;'
      'END'
      '')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 452
    Top = 374
  end
  object P_Items_ECB: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'ECB'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_TRACTAMENT      INTEGER,'
      '      C_ITEM            INTEGER,'
      '      ECB_ANTERIOR      CHAR(1)'
      ')'
      'RETURNS ('
      '      ANOTACIO    VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_PROCES    INTEGER;'
      '  DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      '  DECLARE VARIABLE DATA_INGRES DATE;'
      '  DECLARE VARIABLE VEGADA      SMALLINT;'
      '  DECLARE VARIABLE C_TRACT_ANT INTEGER;'
      'BEGIN'
      ''
      '      SELECT ANOTACIO'
      '      FROM   ECBLIN'
      '      WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '      AND    C_ITEM = :C_ITEM'
      '      AND    PROVISIONAL = "N"'
      '      INTO  :ANOTACIO;'
      ''
      ''
      '      IF ((ANOTACIO IS NULL) AND (ECB_ANTERIOR = '#39'S'#39')) THEN'
      '      BEGIN'
      
        '            /* Si '#233's un ambulatori que prov'#233' d'#39'un altre tractame' +
        'nt, anem a buscar les dades del tractament anterior del mateix p' +
        'roc'#233's */'
      '            '
      '            SELECT C_PROCES, C_PRESTACIO, DATA_INGRES, VEGADA'
      '            FROM   TRACTAMENTS'
      '            WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      
        '            INTO  :C_PROCES, :C_PRESTACIO, :DATA_INGRES, :VEGADA' +
        ';'
      '            '
      '            IF ((C_PRESTACIO = '#39'2014'#39') AND (VEGADA > 0)) THEN'
      '            BEGIN'
      '                  C_TRACT_ANT = NULL;'
      '                  '
      '                  SELECT C_TRACTAMENT'
      '                  FROM   TRACTAMENTS T'
      
        '                  JOIN   ECBCAP E ON T.C_TRACTAMENT = E.C_TRACTA' +
        'MENT  /* que tingui ECB introdu'#239't */'
      '                  WHERE  T.C_PROCES = :C_PROCES'
      '                  AND    T.DATA_INGRES < :DATA_INGRES'
      '                  ORDER  BY T.DATA_INGRES DESC'
      '                  ROWS 1'
      '                  INTO  :C_TRACT_ANT;'
      '                  '
      '                  IF (C_TRACT_ANT IS NOT NULL)'
      '                  THEN'
      
        '                        SELECT ANOTACIO FROM P_INFORMES_ITEMS_EC' +
        'B(:C_TRACT_ANT, :C_ITEM, :ECB_ANTERIOR) INTO :ANOTACIO;'
      '            END;'
      '      END;'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 596
    Top = 24
  end
  object P_Items_Diags: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Diags'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA        INTEGER,'
      '      C_TRACTAMENT      INTEGER,'
      '      IDIOMA            SMALLINT'
      ')'
      'RETURNS ('
      '      DIAGNOSTIC  VARCHAR(30000),'
      '      ORDRE       SMALLINT'
      ')'
      'AS'
      '  DECLARE VARIABLE DIAG_NEU    VARCHAR(45);'
      '  DECLARE VARIABLE ETIOLOG     VARCHAR(100);'
      '  DECLARE VARIABLE DIAG_I      VARCHAR(40);'
      '  DECLARE VARIABLE DIAG_A      VARCHAR(40);'
      '  DECLARE VARIABLE TIPUS       CHAR(1);'
      '  DECLARE VARIABLE DADES       VARCHAR(100);'
      '  DECLARE VARIABLE DATA        DATE;'
      '  DECLARE VARIABLE ID          INTEGER;'
      '  DECLARE VARIABLE NUM         INTEGER;'
      '  DECLARE VARIABLE IMC_MIN     DOUBLE PRECISION;'
      '  DECLARE VARIABLE IMC_MAX     DOUBLE PRECISION;'
      '  DECLARE VARIABLE PCT         DOUBLE PRECISION;'
      '  DECLARE VARIABLE P1          VARCHAR(5);'
      '  DECLARE VARIABLE P2          VARCHAR(5);'
      '  DECLARE VARIABLE DESC_CA     VARCHAR(100);'
      '  DECLARE VARIABLE DESC_ES     VARCHAR(100);'
      '  DECLARE VARIABLE EDAT        INTEGER;'
      '  DECLARE VARIABLE T_REG       SMALLINT;'
      '  DECLARE VARIABLE INFECCIO    VARCHAR(100);'
      '  DECLARE VARIABLE DIAGNOSTICD VARCHAR(40);'
      '  DECLARE VARIABLE TEGERMENS   CHAR(1);'
      '  DECLARE VARIABLE C_INTERCON  INTEGER;'
      'BEGIN'
      ''
      
        '      SELECT EDAT FROM FILIACIO WHERE NUM_HIST = :C_HISTORIA INT' +
        'O :EDAT;'
      ''
      
        '      /* Al principi hi bolquem el diagn'#242'stic neurol'#242'gic i l'#39'eti' +
        'ologia */'
      '      SELECT N_DIAGNOSTICNEUROLOGIC, N_ETIOLOGIA'
      '      FROM   FILIACIO'
      '      WHERE  NUM_HIST = :C_HISTORIA'
      '      INTO  :DIAG_NEU, :ETIOLOG;'
      '      '
      '      IF (DIAG_NEU IS NULL) THEN DIAG_NEU = '#39#39';'
      '                            ELSE DIAG_NEU = DIAG_NEU || '#39', '#39';'
      '                            '
      '      IF (ETIOLOG IS NULL) THEN ETIOLOG = '#39#39';'
      '      '
      '      DIAGNOSTIC = DIAG_NEU || ETIOLOG;'
      ''
      '      IF (DIAGNOSTIC <> '#39#39') THEN'
      '      BEGIN'
      '          ORDRE = 1;'
      '          SUSPEND;'
      '      END'
      ''
      '      /* Diagn'#242'stic principal */'
      ''
      '      DIAGNOSTIC = NULL;'
      '      DIAG_I = NULL;'
      '      DIAG_A = NULL;'
      '      '
      
        '      SELECT N_DIAGNOSTICINGRES, N_DIAGNOSTICALTA FROM TRACTAMEN' +
        'TS WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :DIAG_I, DIAG_A;'
      ''
      '      IF (DIAG_A IS NULL) THEN DIAGNOSTIC = DIAG_I;'
      '                          ELSE DIAGNOSTIC = DIAG_A;'
      '      '
      '      IF (DIAGNOSTIC IS NOT NULL) THEN'
      '      BEGIN'
      '          ORDRE = 3;'
      '          SUSPEND;'
      '      END'
      '      '
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      ''
      
        '      /* Diagn'#242'stics a l'#39'ingr'#233's, introdu'#239'ts a la impressi'#243' diagn' +
        #242'stica de l'#39'ECB */'
      ''
      
        '      SELECT ANOTACIO FROM P_INFORMES_ITEMS_ECB(:C_TRACTAMENT, 6' +
        '8, '#39'S'#39') INTO :DIAGNOSTIC;'
      ''
      '      IF (DIAGNOSTIC IS NOT NULL) THEN'
      '      BEGIN'
      '          ORDRE = 4;'
      '          SUSPEND;'
      '      END'
      '      '
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      ''
      '      /* Diagn'#242'stics a l'#39'ingr'#233's i de proc'#233's */'
      '      FOR SELECT distinct N_DIAGNOSTIC, TIPUS, ORDRE'
      '          FROM   DIAGNOSTICS'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND   (TIPUS = '#39'I'#39' OR TIPUS = '#39'P'#39')'
      '          AND    F_StringLength(N_DIAGNOSTIC) > 1'
      '          AND    Upper(N_DIAGNOSTIC) <> "NO"'
      '          AND    TotUpper(N_DIAGNOSTIC) <> '#39'PROA'#39
      
        '          ORDER BY ORDRE                        /* El d'#39'ordre 0 ' +
        '(quir'#242'fan si ingr'#233's per cirurgia, quedar'#224' primer; ja '#233's ok */'
      '          INTO   :DIAGNOSTIC, :TIPUS, :ORDRE'
      '      DO BEGIN'
      '            IF (ORDRE <> 0) THEN'
      '            BEGIN'
      '                  IF      (TIPUS = '#39'I'#39') THEN ORDRE = 4;'
      '                  ELSE IF (TIPUS = '#39'P'#39') THEN ORDRE = 5;'
      '            END'
      '            '
      
        '            DIAGNOSTIC = AnsiUpper(F_Left(DIAGNOSTIC, 1)) || F_R' +
        'ight(DIAGNOSTIC, F_StringLength(DIAGNOSTIC)-1); /* Posem 1a llet' +
        'ra en maj'#250'scules */'
      ''
      '            SUSPEND;'
      '      END;'
      '      '
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      ''
      '      /* Infeccions */'
      '      ORDRE = 6;'
      ''
      '      FOR SELECT DISTINCT I.N_INFECCIO, G.N_GERMEN'
      '          FROM   OMCOMUNICATS C'
      
        '          JOIN   TIPUSINFECCIONS I ON I.C_INFECCIO = C.TIPUS_INF' +
        'ECCIO'
      '          JOIN   GERMENS G ON C.GERMEN1 = G.C_GERMEN'
      '          WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C.ESTATANTIBIOGRAMA = '#39'AMB'#39
      '          AND    C.GERMEN1 <> '#39#39
      '          AND    C.GERMEN1 <> '#39'12'#39
      '          AND    C.GERMEN1 <> '#39'98'#39
      '          AND    C.GERMEN1 <> '#39'99'#39
      '          UNION'
      '          SELECT DISTINCT I.N_INFECCIO, G.N_GERMEN'
      '          FROM   OMCOMUNICATS C'
      
        '          JOIN   TIPUSINFECCIONS I ON I.C_INFECCIO = C.TIPUS_INF' +
        'ECCIO'
      '          JOIN   GERMENS G ON C.GERMEN2 = G.C_GERMEN'
      '          WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C.ESTATANTIBIOGRAMA = '#39'AMB'#39
      '          AND    C.GERMEN2 <> '#39#39
      '          AND    C.GERMEN2 <> '#39'12'#39
      '          AND    C.GERMEN2 <> '#39'98'#39
      '          AND    C.GERMEN2 <> '#39'99'#39
      '          ORDER  BY 1'
      '          INTO  :INFECCIO, :DADES'
      '      DO BEGIN'
      
        '            IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Infecci'#243'n '#39' || An' +
        'siLower(INFECCIO) || '#39' por '#39' || AnsiLower(DADES);'
      
        '                            ELSE DIAGNOSTIC = '#39'Infecci'#243' '#39'  || An' +
        'siLower(INFECCIO) || '#39' per '#39' || AnsiLower(DADES);'
      ''
      '            SUSPEND;'
      '      END;'
      '      '
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      ''
      '      FOR SELECT DISTINCT P.DIAGNOSTICD, P.C_INTERCON'
      '          FROM INTERCON_COMUNICATEPI P'
      '          JOIN INTERCON I ON I.C_INTERCON = P.C_INTERCON'
      '          WHERE P.ENVIAR_DIAG_INFALTA = '#39'S'#39
      '          AND I.C_TRACTAMENT = :C_TRACTAMENT'
      '          INTO :DIAGNOSTIC, :C_INTERCON'
      '      DO BEGIN'
      
        '            IF ((DIAGNOSTIC IS NOT NULL) AND (DIAGNOSTIC <> '#39#39'))' +
        ' THEN SUSPEND;'
      '            TEGERMENS = '#39'N'#39';'
      '            '
      '            FOR SELECT DISTINCT G.N_GERMEN'
      '            FROM INTERCON_CEPI_GERMEN IG'
      
        '            JOIN INTERCON_COMUNICATEPI P ON IG.C_INTERCON = P.C_' +
        'INTERCON'
      '            JOIN GERMEN G ON G.C_GERMEN = IG.C_GERMEN'
      
        '            WHERE IG.C_INTERCON = :C_INTERCON AND P.ENVIAR_DIAG_' +
        'INFALTA = '#39'S'#39
      '            INTO :DADES'
      '            DO BEGIN'
      '                IF (TEGERMENS = '#39'N'#39') THEN'
      '                BEGIN'
      
        '                    IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'G'#233'rmenes:' +
        ' '#39';'
      
        '                                    ELSE DIAGNOSTIC = '#39'G'#232'rmens: ' +
        #39';'
      '                    SUSPEND;'
      '                    TEGERMENS = '#39'S'#39';'
      '                END;'
      '                DIAGNOSTIC = DADES;'
      '                SUSPEND;'
      '            END;'
      '      END;'
      ''
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      ''
      '      /* Covid actiu durant l'#39'ingr'#233's */'
      '      ORDRE = 7;'
      '      '
      '      SELECT Count(*)'
      '      FROM   SEMAFORS S'
      
        '      JOIN   TRACTAMENTS T ON S.C_HISTORIA = T.C_HISTORIA AND T.' +
        'C_TRACTAMENT = :C_TRACTAMENT'
      '      WHERE  C_HISTORIA = :C_HISTORIA'
      '      AND    S.TIPUS = '#39'CoV'#39
      '      AND    S.C_ESTAT = 3'
      '      AND    S.DATA >= T.DATA_INGRES'
      '      AND   (S.DATA <= T.DATA_ALTA OR DATA_ALTA IS NULL)'
      '      INTO   NUM;'
      '      '
      '      IF (NUM > 0) THEN'
      '      BEGIN'
      
        '            IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Infecci'#243'n por SAR' +
        'S-CoV-2'#39';'
      
        '                            ELSE DIAGNOSTIC = '#39'Infecci'#243' per SARS' +
        '-CoV-2'#39';'
      ''
      '            SUSPEND;'
      '      END;'
      '      '
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      ''
      '      /* Estat vegetatiu - escala GOSE valor 2 durant ingr'#233's */'
      '      ORDRE = 8;'
      '      '
      '      SELECT Count(*)'
      '      FROM   ESCALESCAP C'
      '      JOIN   ESCALESLIN L  ON C.CLAU = L.CLAU'
      '      WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '      AND    C.ANULAT = "N"'
      '      AND    L.C_ITEM = 416'
      '      AND    L.D_ITEM = 2'
      '      INTO  :NUM;'
      '      '
      '      IF (NUM > 0) THEN'
      '      BEGIN'
      
        '            IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Estado vegetativo' +
        #39';'
      '                            ELSE DIAGNOSTIC = '#39'Estat vegetatiu'#39';'
      ''
      '            SUSPEND;'
      '      END;'
      ''
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      ''
      '      /* UPP localitzaci'#243' i grau m'#224'xim assolit */'
      '      ORDRE = 9;'
      '      '
      '      FOR SELECT   U.ID, C.N_CODI, C.N_CODI2, Max(L.GRAU)'
      '            FROM   UPPCAP    U'
      '            JOIN   UPPLIN    L ON U.ID = L.ID'
      
        '            JOIN   CODICAMPS C ON U.LOCALITZACIO = C.C_CODI AND ' +
        'C.TIPUSCODI = '#39'UPP.LOCALITZACIO'#39
      '            WHERE  U.C_TRACTAMENT= :C_TRACTAMENT'
      
        '            AND    U.ESTAT <> 4              /* excloem les anul' +
        #183'lades */'
      '            GROUP  BY U.ID, C.N_CODI, C.N_CODI2'
      '            INTO  :ID, :DESC_CA, :DESC_ES, :NUM'
      '      DO BEGIN'
      ''
      '            IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'LPP '#39' || DESC_ES;'
      '                            ELSE DIAGNOSTIC = '#39'LPP '#39' || DESC_CA;'
      ''
      '            DESC_CA = '#39#39';'
      '            DESC_ES = '#39#39';'
      '            SELECT N_CODI, N_CODI2'
      '            FROM   CODICAMPS'
      '            WHERE  TIPUSCODI = '#39'UPP.GRAU'#39
      '            AND    C_CODI = :NUM'
      '            INTO  :DESC_CA, :DESC_ES;'
      ''
      
        '            IF (IDIOMA = 2) THEN DIAGNOSTIC = DIAGNOSTIC || '#39', d' +
        'e grado '#39' || DESC_ES;'
      
        '                            ELSE DIAGNOSTIC = DIAGNOSTIC || '#39', d' +
        'e grau '#39'  || DESC_CA;'
      ''
      '            SUSPEND;'
      '      END;'
      ''
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      '      '
      '      /* IMC - Nens: percentil baix o alt */'
      '      ORDRE = 10;'
      '      '
      '      IF (EDAT <= 16) THEN'
      '      BEGIN'
      
        '            SELECT  Min(F_ReplaceText('#39','#39', '#39'.'#39', VALOR)), Max(F_R' +
        'eplaceText('#39','#39', '#39'.'#39', VALOR))'
      '            FROM    INFERDADES'
      '            WHERE   C_TRACTAMENT = :C_TRACTAMENT'
      '            AND     C_ITEM = 57'
      '            AND     ANULAT = '#39'N'#39
      '            INTO   :IMC_MIN, :IMC_MAX;'
      ''
      '            IF (IMC_MIN <= -3) THEN'
      '            BEGIN'
      '                  PCT = IMC_MIN;'
      '                  '
      
        '                  IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39#205'ndice de m' +
        'asa corporal (IMC) bajo. '#39';'
      
        '                                ELSE DIAGNOSTIC = '#39#205'ndex de mass' +
        'a corporal (IMC) baix. '#39';'
      '            END;'
      '            ELSE IF (IMC_MAX >= 2) THEN'
      '            BEGIN'
      '                  PCT = IMC_MAX;'
      '                  '
      
        '                  IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39#205'ndice de m' +
        'asa corporal (IMC) alto. '#39';'
      
        '                                  ELSE DIAGNOSTIC = '#39#205'ndex de ma' +
        'ssa corporal (IMC) alt. '#39';'
      '            END;'
      ''
      '            IF (DIAGNOSTIC IS NOT NULL) THEN'
      '            BEGIN'
      
        '                  SELECT PERCENTIL FROM IMC_PERCENTILS WHERE VAL' +
        'ORZ = (SELECT Max(VALORZ) FROM IMC_PERCENTILS WHERE VALORZ <= :P' +
        'CT) INTO :P1;   /* inferior immediat */'
      
        '                  SELECT PERCENTIL FROM IMC_PERCENTILS WHERE VAL' +
        'ORZ = (SELECT Min(VALORZ) FROM IMC_PERCENTILS WHERE VALORZ >= :P' +
        'CT) INTO :P2;   /* superior immediat */'
      ''
      '                  IF      (P1 = P2) THEN DADES = P1;'
      
        '                  ELSE IF (P1 = '#39#39') THEN DADES = '#39'per sota de '#39' ' +
        ' || P2;'
      
        '                  ELSE IF (P2 = '#39#39') THEN DADES = '#39'per sobre de '#39 +
        ' || P1;'
      
        '                                    ELSE DADES = '#39'entre '#39' || P1 ' +
        '|| '#39' i '#39' || P2;'
      ''
      
        '                  DIAGNOSTIC = DIAGNOSTIC || '#39'Percentil: '#39' || F_' +
        'FloatToStr(PCT) || '#39' ('#39' || DADES || '#39')'#39';'
      '            END;'
      '      END;'
      '      '
      '      /* IMC baix o alt - Adults */'
      '      ELSE BEGIN'
      
        '            SELECT  Min(F_ReplaceText('#39','#39', '#39'.'#39', VALOR)), Max(F_R' +
        'eplaceText('#39','#39', '#39'.'#39', VALOR))'
      '            FROM    INFERDADES'
      '            WHERE   C_TRACTAMENT = :C_TRACTAMENT'
      
        '            AND     C_ITEM = 20                       /* percent' +
        'il nens '#237'tem 57 ? */'
      '            AND     ANULAT = '#39'N'#39
      '            INTO   :IMC_MIN, :IMC_MAX;'
      ''
      '            IF (IMC_MIN IS NOT NULL) THEN'
      '            BEGIN'
      '                  IF(IMC_MIN < 19) THEN'
      '                  BEGIN'
      
        '                      IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39#205'ndice ' +
        'de masa corporal (IMC) bajo: '#39' || F_FloatToStr(IMC_MIN);'
      
        '                                      ELSE DIAGNOSTIC = '#39#205'ndex d' +
        'e massa corporal (IMC) baix. '#39' || F_FloatToStr(IMC_MIN);'
      '                  END;'
      '                  ELSE IF (IMC_MAX >= 25) THEN'
      '                  BEGIN'
      
        '                      IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39#205'ndice ' +
        'de masa corporal (IMC) alto: '#39' || F_FloatToStr(IMC_MAX);'
      
        '                                      ELSE DIAGNOSTIC = '#39#205'ndex d' +
        'e massa corporal (IMC) alt: '#39'  || F_FloatToStr(IMC_MAX);'
      '                  END;'
      '            END;'
      '      END;'
      ''
      '      IF (DIAGNOSTIC IS NOT NULL) THEN SUSPEND;'
      ''
      '      DIAGNOSTIC = NULL;'
      '      DADES = NULL;'
      '      DATA = NULL;'
      '      ID = NULL;'
      '      NUM = NULL;'
      '      '
      '      /* Bomba BCF */'
      '      ORDRE = 11;'
      '      '
      '      SELECT ID_BOMBA, DATA_IMPLANTACIO, NUM_SERIE'
      '      FROM   BCFBOMBES'
      '      WHERE  C_HISTORIA = :C_HISTORIA'
      '      AND    ESTAT = '#39'V'#39
      '      ORDER  BY ID_BOMBA DESC'
      '      ROWS   1'
      '      INTO  :ID, :DATA, :DADES;'
      '      '
      '      IF (DADES IS NULL) THEN DADES = '#39#39';'
      '                         ELSE DADES = '#39'N'#250'm. S'#232'rie: '#39' || DADES;'
      '      '
      '      IF (ID IS NOT NULL) THEN'
      '      BEGIN'
      '      '
      '            IF (DATA IS NOT NULL) THEN'
      '            BEGIN'
      
        '                  DIAGNOSTIC = '#39'(Data implantaci'#243': '#39' || F_DateTo' +
        'Str(DATA);'
      
        '                  IF (DADES <> '#39#39') THEN DIAGNOSTIC = DIAGNOSTIC ' +
        '||'#39' '#39'|| DADES;'
      '                  DIAGNOSTIC = DIAGNOSTIC ||'#39')'#39';'
      '            END'
      
        '            ELSE IF (DADES <> '#39#39') THEN DIAGNOSTIC = '#39'('#39'||DADES||' +
        #39')'#39';'
      ''
      
        '            DIAGNOSTIC = '#39'Portador/a de bomba de baclof'#232'n '#39' || D' +
        'IAGNOSTIC;'
      ''
      '            SUSPEND;'
      '      END;'
      '      '
      '      /* ESTATS */'
      '      ORDRE = 12;'
      '      '
      
        '      /* 15: marcap'#224's diafragm'#224'tic, 16: SARS, 21: f'#237'stula arteri' +
        'ovenosa 24: Glucotest */'
      '      FOR SELECT DISTINCT R.T_REG, T.N_CODI, T.N_CODI2'
      '          FROM   REGISTRESINFER R'
      
        '          JOIN   CODICAMPS T ON T.TIPUSCODI = '#39'INFER.TIPUSREG'#39' A' +
        'ND R.T_REG = T.C_CODI'
      
        '          LEFT   OUTER JOIN CODICAMPS M ON M.TIPUSCODI = T.PARAM' +
        'S||'#39'_TIPUS'#39' AND R.C_TIPUS = M.C_CODI'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    T.C_CODI IN (3,4,15,16,21,24)'
      '          AND    C_MOTIU <> 99'
      '          ORDER  BY T.ORDRE'
      '          INTO  :T_REG, :DESC_CA, :DESC_ES'
      '      DO BEGIN'
      '      '
      '            DIAGNOSTIC = '#39#39';'
      '            '
      '            IF (T_REG = 3) THEN'
      '            BEGIN'
      
        '                  IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Dependencia' +
        ' de respirador '#39';'
      
        '                                  ELSE DIAGNOSTIC = '#39'Depend'#232'ncia' +
        ' de respirador '#39';'
      '            END'
      '            ELSE BEGIN'
      
        '                  IF (IDIOMA = 2) THEN DIAGNOSTIC = '#39'Portador/a ' +
        'de '#39' || AnsiLower(DESC_ES) || '#39' '#39';'
      
        '                                  ELSE DIAGNOSTIC = '#39'Portador/a ' +
        'de '#39' || AnsiLower(DESC_CA) || '#39' '#39';'
      '            END'
      '            '
      '            SUSPEND;'
      '      END;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 1022
    Top = 74
  end
  object P_Items_Diagnostics: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Diagnostics'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA        INTEGER,'
      '      C_TRACTAMENT      INTEGER,'
      '      IDIOMA            SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO          VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE DIAGNOSTIC VARCHAR(30000);'
      '  DECLARE VARIABLE ORDRE      SMALLINT;'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      FOR SELECT DIAGNOSTIC, MIN(ORDRE)'
      
        '          FROM   P_INFORMES_ITEMS_DIAGS (:C_HISTORIA, :C_TRACTAM' +
        'ENT, :IDIOMA)'
      '          GROUP  BY DIAGNOSTIC'
      '          ORDER  BY ORDRE'
      '          INTO   :DIAGNOSTIC, :ORDRE'
      '      DO BEGIN'
      ''
      '            ANOTACIO = ANOTACIO || DIAGNOSTIC || F_NLine();'
      ''
      '      END;'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 1022
    Top = 24
  end
  object P_Inf_GeneraAltesAntigues: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraAltesAntigues'
    ForceNombreDB = False
    Body.Strings = (
      
        '(DESDE DATE, FINS DATE, EXECUTA CHAR(1), NHC INTEGER, DRET VARCH' +
        'AR(15))'
      'RETURNS ('
      '  C_HISTORIA      INTEGER,'
      '  C_TRACTAMENT    INTEGER,'
      '  C_PRESTACIO     VARCHAR(4),'
      '  C_MOTIU         SMALLINT,'
      '  DATA_ALTA       DATE,'
      '  C_COORDINADOR   VARCHAR(5),'
      '  NOVA            CHAR(1),'
      '  ID_INFORME      INTEGER,'
      '  C_TIPUS         VARCHAR(3),'
      '  C_ESTAT         INTEGER,'
      '  GESTIONAT       SMALLINT,'
      '  COMENTARI       VARCHAR(250)'
      ')'
      'AS'
      '  DECLARE VARIABLE DATA_PREALTA DATE;'
      '  DECLARE VARIABLE CONJUNT      CHAR(1);'
      'BEGIN'
      
        '      /* Per generar sol'#183'licituds d'#39'informes d'#39'alta per una hist' +
        #242'ria i una data d'#39'alta o prealta concreta */'
      ''
      
        '      FOR SELECT T.C_TRACTAMENT, T.C_HISTORIA, T.C_PRESTACIO, T.' +
        'C_MOTIU, T.C_COORDINADOR, DATA_ALTA, DATA_PREALTA'
      '          FROM   TRACTAMENTS T'
      
        '          JOIN   CODICAMPS C ON C.TIPUSCODI = '#39'ESTATFACTU'#39' AND C' +
        '.C_CODI = T.C_ESTATFAC AND C.R_CODI <> 9     /* Excloem tractame' +
        'nt anul'#183'lats */'
      
        '          JOIN   DRETSPRESTA D ON D.C_PRESTACIO = T.C_PRESTACIO ' +
        'AND D.C_DRET = '#39'P226'#39'                        /* Alguns motius es' +
        ' fan servir per a diferents prestacions / tenim parametritzat el' +
        ' tipus d'#39'informe segons drets de prestaci'#243' per'#242' algunes van amb ' +
        'sistema antic d'#39'altes */'
      
        '          JOIN   DRETSPRESTA D2 ON D2.C_PRESTACIO = T.C_PRESTACI' +
        'O AND (D2.C_DRET = :DRET OR (:DRET IS NULL and D2.C_DRET = '#39'P226' +
        #39'))   /* Per restringir a la creaci'#243' d'#39'un '#250'nic tipus d'#39'informe, ' +
        'per prestaci'#243' */'
      
        '          WHERE (T.C_HISTORIA = :NHC OR :NHC IS NULL)           ' +
        '                                             /* Amb aix'#242' podem f' +
        'or'#231'ar la generaci'#243' per a un NHC */'
      
        '          AND   (T.DATA_ALTA >= :DESDE OR (T.DATA_ALTA IS NULL A' +
        'ND T.DATA_PREALTA >= :DESDE))                /* Amb aix'#242', per al' +
        'tes entre dates */'
      
        '          AND   (T.DATA_ALTA <= :FINS  OR (T.DATA_ALTA IS NULL A' +
        'ND T.DATA_PREALTA <= :FINS))'
      
        '          AND    T.OBS_SECRE IS NULL                            ' +
        '                                             /* Aix'#242' serveix per' +
        ' no generar els que ja s'#39'han iniciat amb el sistema antic */'
      
        '          INTO  :C_TRACTAMENT, :C_HISTORIA, :C_PRESTACIO, :C_MOT' +
        'IU, :C_COORDINADOR, :DATA_ALTA, :DATA_PREALTA'
      '      DO BEGIN'
      '      '
      
        '            IF ((DATA_ALTA IS NULL) AND (DATA_PREALTA IS NOT NUL' +
        'L)) THEN DATA_ALTA = DATA_PREALTA;'
      '            '
      '            ID_INFORME = NULL;'
      '            C_ESTAT = NULL;'
      '            NOVA = '#39'N'#39';'
      '            C_TIPUS = NULL;'
      '            CONJUNT = "N";'
      '            GESTIONAT = NULL;'
      
        '            /* Busquem si al tractament que '#233's alta li correspon' +
        ' sol'#183'licitud autom'#224'tica d'#39'algun tipus d'#39'informe a l'#39'alta */'
      '            SELECT T.C_TIPUS, T.CONJUNT, T.GESTIONAT'
      '            FROM   INFORMES_TIPUS T'
      
        '            LEFT   OUTER JOIN DRETSPRESTA P ON T.C_DRETPRESTA = ' +
        'P.C_DRET'
      
        '            LEFT   OUTER JOIN DRETSMOTIU M ON T.C_DRETMOTIU = M.' +
        'C_DRET'
      
        '            WHERE (T.C_DRETMOTIU IS NOT NULL OR T.C_DRETPRESTA I' +
        'S NOT NULL)'
      
        '            AND   (P.C_PRESTACIO = :C_PRESTACIO OR M.C_MOTIU = :' +
        'C_MOTIU)'
      '            INTO  :C_TIPUS, :CONJUNT, :GESTIONAT;'
      '            '
      '            IF (C_TIPUS IS NOT NULL) THEN'
      '            BEGIN'
      
        '                  /* Comprovem que la sol'#183'licitud encara no s'#39'ha' +
        'gi generat'
      
        '                    (si est'#224' anul'#183'lada tampoc no la generem - l'#39 +
        'hauran de recuperar des del programa d'#39'Admissions pequ'#232' es mogui' +
        ' el fitxer corresponent a l'#39'informe, si ja estava creat) */'
      '                  SELECT I.ID_INFORME, I.C_ESTAT'
      '                  FROM   INFORMES I'
      '                  WHERE  I.C_TRACTAMENT = :C_TRACTAMENT'
      '                  AND    I.C_TIPUS = :C_TIPUS'
      '                  ROWS   1'
      '                  INTO  :ID_INFORME, :C_ESTAT;'
      ''
      '                  COMENTARI = '#39#39';'
      ''
      
        '                  /* Si l'#39'informe '#233's conjunt, busquem els profes' +
        'sionals (equip assistencial) que hi hauran de participar */'
      '                  IF (CONJUNT = '#39'S'#39') THEN'
      '                  BEGIN'
      
        '                        SELECT F_StrNull(C_FISIOTERAPEUTA || '#39' (' +
        'FI),  '#39', '#39#39') || F_StrNull(C_TERAPEUTA || '#39' (TO),  '#39', '#39#39') ||'
      
        '                               F_StrNull(C_INFERMERIA     || '#39' (' +
        'UN),  '#39', '#39#39') || F_StrNull(C_PSICOLEG  || '#39' (PS),  '#39', '#39#39') ||'
      
        '                               F_StrNull(C_TREVALLSOCIAL  || '#39' (' +
        'AS)'#39', '#39#39')'
      '                        FROM   TRACTAMENTS'
      '                        WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '                        INTO  :COMENTARI;'
      '                  END;'
      ''
      '                  /* Si no existeix sol'#183'licitud, la generem */'
      '                  IF (ID_INFORME IS NULL) THEN'
      '                  BEGIN'
      '                        NOVA = '#39'S'#39';'
      '                        '
      '                        IF (EXECUTA = '#39'S'#39') THEN'
      '                        BEGIN'
      
        '                              ID_INFORME = GEN_ID(G_INFORMES, 1)' +
        ';'
      ''
      '                              /* Cap'#231'alera sol'#183'licitud */'
      
        '                              /* Assignarem el coordinador com a' +
        ' usuari a qui se sol'#183'licita l'#39'informe. */'
      
        '                              INSERT INTO INFORMES (ID_INFORME, ' +
        'C_HISTORIA, C_TRACTAMENT, C_TIPUS, URGENT, C_ESTAT, GESTIONAT, C' +
        '_USUARI, COMENTARI)'
      
        '                              VALUES (:ID_INFORME, :C_HISTORIA, ' +
        ':C_TRACTAMENT, :C_TIPUS, "N", 0, :GESTIONAT, :C_COORDINADOR, :CO' +
        'MENTARI);'
      ''
      
        '                              /* Registrem l'#39'acci'#243' (sol'#183'licitud)' +
        ' */'
      
        '                              IF (DESDE >= "TODAY"-7) THEN DATA ' +
        '= "TODAY";'
      
        '                                                      ELSE DATA ' +
        '= :DATA_ALTA;     /* Si estem for'#231'ant la inserci'#243' d'#39'un informe a' +
        'ntic, li posem la data introdu'#239'da (antiga) */'
      ''
      
        '                              INSERT INTO INFORMES_REG (ID_INFOR' +
        'ME, LINIA, ACCIO, DATA, COMENTARI)'
      
        '                              VALUES (:ID_INFORME, 1, 1, :DATA, ' +
        '"Sol'#183'licitud autom'#224'tica d'#39#39'informe d'#39#39'alta");'
      '                        END;'
      '                  END;'
      '            '
      '                  SUSPEND;'
      '            END;'
      '      END;'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Top = 424
  end
  object P_Items_AnotacioAlta: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AnotacioAlta'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER,'
      '       C_GRUP       VARCHAR(2)'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000),'
      '      USUARI   VARCHAR(50)'
      ')'
      'AS'
      '  DECLARE VARIABLE DATA_ALTA DATE;'
      'BEGIN'
      ''
      ''
      '      /* Retornem l'#39#250'ltima anotaci'#243' de tipus "anotaci'#243' a l'#39'alta"'
      '         feta per un usuari del grup indicat'
      '         durant els 20 dies anteriors a l'#39'alta */'
      
        '      SELECT F_DATENULL(DATA_ALTA, DATA_PREALTA) FROM TRACTAMENT' +
        'S WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :DATA_ALTA;'
      ''
      '      IF (DATA_ALTA IS NULL) THEN DATA_ALTA = "TODAY";'
      ''
      '      SELECT H.ANOTACIO, M.METGE'
      '      FROM   HISTORIA H'
      '      JOIN   METGES M ON H.C_USUARI = M.CODI'
      '      WHERE  H.C_TRACTAMENT = :c_tractament'
      '      AND    H.DATA >= :DATA_ALTA - 20'
      '      AND    H.ANULAT = '#39'N'#39
      '      AND    H.QUEES = 18'
      '      AND    H.C_GRUP = :C_GRUP'
      '      ORDER BY H.DATA DESC'
      '      ROWS 1'
      '      INTO  :ANOTACIO, :USUARI;'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 696
    Top = 174
  end
  object T_Informes_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE COS    VARCHAR(3000);'
      'DECLARE VARIABLE ID_HC3 VARCHAR(250);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '   '
      
        '      /* Si anul'#183'len un informe que s'#39'ha publicat a l'#39'HC3, s'#39'ha ' +
        'de despublicar */'
      
        '      /* Ara mateix no hi ha despublicaci'#243' autom'#224'tica, per tant,' +
        ' enviem correu a Inform'#224'tica per fer-ho manualment */'
      ''
      
        '      IF  ((NEW.C_ESTAT IN (8,9)) AND (OLD.C_ESTAT NOT IN (8,9))' +
        ') THEN'
      '      BEGIN'
      '      '
      '            COS = NULL;'
      '            '
      '            FOR SELECT ID_HCCC'
      '                FROM   INFORMES_HCCC'
      '                WHERE  ID_INFORME = NEW.ID_INFORME'
      '                ORDER  BY LINIA'
      '                INTO  :ID_HC3'
      '            DO BEGIN'
      '                  COS = F_NLine() || '#39'ID_HCCC = '#39'|| ID_HC3;'
      '            END'
      '            '
      '            IF (COS IS NOT NULL) THEN'
      '            BEGIN'
      
        '                  COS = "S'#39'ha anul'#183'lat l'#39'informe " || NEW.C_TIPU' +
        'S || " del NHC " || NEW.C_HISTORIA || " amb ID_INFORME = " || NE' +
        'W.ID_INFORME || "." || F_NLine() ||'
      '                        "Cal despublicar-lo de l'#39'HC3." || COS;'
      ''
      
        '                  INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AV' +
        'IS, ASSUMPTE, COS)'
      
        '                  VALUES ("NOW", 52 , "Av'#237's ANUL'#183'LACI'#211' INFORME p' +
        'ublicat a l'#39'HC3", :COS);'
      '            END'
      '      END'
      ''
      
        '      /* En finalitzar un informe, informem l'#39'ID_NHCE d'#39'Informes' +
        '_HCCC per activar-ne la publicaci'#243' */'
      '      IF ((OLD.C_ESTAT <> 10) AND (NEW.C_ESTAT = 10)) THEN'
      '      BEGIN'
      '            UPDATE INFORMES_HCCC'
      '            SET    ID_nHCE = GEN_ID(G_INFORME_nHCE, 1)'
      '            WHERE  ID_INFORME = NEW.ID_INFORME'
      '            AND    ID_nHCE IS NULL;'
      '      END'
      '   END;'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 44
    Top = 194
  end
  object P_Plantiilles_EscalesATD: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscalesATD'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER,'
      '       IDIOMA SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_ESCALA   INTEGER;'
      '  DECLARE VARIABLE ESCALA_ANT INTEGER;'
      '  DECLARE VARIABLE ESCALA     VARCHAR(50);'
      '  DECLARE VARIABLE C_ITEM     INTEGER;'
      '  DECLARE VARIABLE ITEM_ANT   INTEGER;'
      '  DECLARE VARIABLE ITEM_CA    VARCHAR(40);'
      '  DECLARE VARIABLE ITEM_ES    VARCHAR(40);'
      '  DECLARE VARIABLE ITEM       VARCHAR(40);'
      '  DECLARE VARIABLE VALOR      VARCHAR(15);'
      '  DECLARE VARIABLE C_TIPUS    VARCHAR(1);'
      '  DECLARE VARIABLE TIPUS_CA   VARCHAR(40);'
      '  DECLARE VARIABLE TIPUS_ES   VARCHAR(40);'
      '  DECLARE VARIABLE TIPUS      VARCHAR(40);'
      '  DECLARE VARIABLE GUIONET VARCHAR(5);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      '      ESCALA_ANT = -1;'
      '      ITEM_ANT = -1;'
      '      GUIONET = '#39' - '#39';'
      ''
      
        '      FOR SELECT C.C_ESCALA, E.R_ESCALA, C_ITEM, I.N_ITEM, I.N_I' +
        'TEM2, F_LRTrim(L.D_ITEM), T.N_TIPUS_CA, T.N_TIPUS_ES'
      '          FROM   ESCALESCAP   C'
      '          JOIN   ESCALES      E ON C.C_ESCALA = E.C_ESCALA'
      '          JOIN   ESCALESTIPUS T ON Upper(C.TIPUS) = T.TIPUS'
      
        '          JOIN   ESCALESITEMS I ON E.C_ESCALA = I.C_ESCALA AND I' +
        '.BOLCA = "D"'
      
        '          JOIN   ESCALESLIN   L ON C.CLAU = L.CLAU AND I.C_ITEM ' +
        '= L.C_ITEM'
      '          WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C.ANULAT = "N"'
      
        '          AND   (Upper(C.TIPUS) = "I" OR Upper(C.TIPUS) = "T" OR' +
        ' Upper(C.TIPUS) = "A")'
      
        '          ORDER  BY E.C_GRUP, C.C_ESCALA, I.ORDRE, T.TIPUS DESC ' +
        '              /* grup_escala, c_escala, ordre_'#237'tem, tipus_escala' +
        ' */'
      
        '          INTO  :C_ESCALA, :ESCALA, :C_ITEM, :ITEM_CA, :ITEM_ES,' +
        ' :VALOR, :TIPUS_CA, :TIPUS_ES'
      '          DO BEGIN'
      '          '
      
        '            IF (IDIOMA = 2) THEN BEGIN  ITEM = ITEM_ES;  TIPUS =' +
        ' TIPUS_ES;  END;'
      
        '                            ELSE BEGIN  ITEM = ITEM_CA;  TIPUS =' +
        ' TIPUS_CA;  END;'
      '                            '
      
        '            ITEM = AnsiUpper(F_Left(ITEM, 1)) || AnsiLower(F_Rig' +
        'ht(ITEM, F_StringLength(ITEM)-1));'
      '                            '
      '            IF (ESCALA_ANT = C_ESCALA) THEN'
      '            BEGIN'
      '                  ESCALA = '#39#39';'
      '                  IF (ITEM_ANT = C_ITEM) THEN ITEM = '#39'  -  '#39';'
      
        '                                         ELSE ITEM = F_NLine() |' +
        '|GUIONET|| ITEM || '#39':  '#39';'
      '            END;'
      '            ELSE BEGIN'
      
        '                  IF (ESCALA_ANT <> -1) THEN ESCALA = F_NLine() ' +
        '|| F_NLine() || ESCALA;'
      '                  ITEM = F_NLine() ||GUIONET|| ITEM || '#39':  '#39';'
      '            END;'
      ''
      
        '            ANOTACIO = ANOTACIO || ESCALA || ITEM || TIPUS || '#39' ' +
        #39' || VALOR ;'
      '          '
      '            ESCALA_ANT = C_ESCALA;'
      '            ITEM_ANT   = C_ITEM;'
      '      END'
      '      '
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Plantilles
    Dic1Name = 'Plantilles'
    Abierta = False
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
    Left = 1388
    Top = 174
  end
  object T_Tags_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      
        '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_INFORMESTAGS, 1' +
        ');'
      '   END;'
      'END')
    Dic1 = Informes_Tags
    Dic1Name = 'Informes_Tags'
    Abierta = False
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
    Left = 320
    Top = 74
  end
  object P_Anotacio1BCN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Anotacio1BCN'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER,'
      '       C_GRUP       VARCHAR(2)'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '  DECLARE VARIABLE DATA_INGRES DATE;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      'BEGIN'
      ''
      
        '      /* Retornem la primera anotaci'#243' de GBCN feta per un usuari' +
        ' del grup indicat'
      
        '         feta des de l'#39'ingr'#233's del tractament que '#233's alta (pot es' +
        'tar associada a altres tractaments del pack) */'
      ''
      
        '      SELECT C_HISTORIA, DATA_INGRES, DATA_ALTA FROM TRACTAMENTS' +
        ' WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :C_HISTORIA, :DATA_INGR' +
        'ES, :DATA_ALTA;'
      ''
      '      SELECT H.ANOTACIO'
      '      FROM   HISTORIA H'
      
        '      JOIN   PRESTACION P ON H.C_PRESTACIO = P.C_PRESTACIO AND P' +
        '.ESEASE = '#39'C'#39'  /* prestacions de GBCN */'
      '      JOIN   METGES M ON H.C_USUARI = M.CODI'
      '      WHERE  H.C_HISTORIA = :C_HISTORIA'
      '      AND    H.DATA >= :DATA_INGRES'
      '      AND   (H.DATA <= :DATA_ALTA OR :DATA_ALTA IS NULL)'
      
        '      AND   (H.C_GRUP = :C_GRUP OR (:C_GRUP = "FI" AND H.C_GRUP ' +
        '= "TO"))'
      '      AND    H.QUEES <> 18   /* excloem l'#39'anotaci'#243' a l'#39'alta */'
      '      AND    H.ANULAT = '#39'N'#39
      '      ORDER BY H.DATA'
      '      ROWS 1'
      '      INTO  :ANOTACIO;'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Informes_Items'
    Abierta = False
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
    Left = 696
    Top = 374
  end
  object P_AnotacioAltaBCN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AnotacioAltaBCN'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER,'
      '       C_GRUP       VARCHAR(2)'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '  DECLARE VARIABLE DATA_INGRES DATE;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      'BEGIN'
      ''
      ''
      
        '      /* Retornem l'#39#250'ltima anotaci'#243' de tipus "anotaci'#243' a l'#39'alta"' +
        '  feta per un usuari del grup indicat'
      
        '         durant els 20 dies anteriors a l'#39'alta (pot estar associ' +
        'ada a altres tractaments del pack) */'
      ''
      
        '      SELECT C_HISTORIA, DATA_INGRES, DATA_ALTA FROM TRACTAMENTS' +
        ' WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :C_HISTORIA, :DATA_INGR' +
        'ES, :DATA_ALTA;'
      ''
      '      IF (DATA_ALTA IS NULL) THEN DATA_ALTA = "TODAY";'
      ''
      '      SELECT H.ANOTACIO'
      '      FROM   HISTORIA H'
      
        '      JOIN   PRESTACION P ON H.C_PRESTACIO = P.C_PRESTACIO AND P' +
        '.ESEASE = '#39'C'#39'  /* prestacions de GBCN */'
      '      JOIN   METGES M ON H.C_USUARI = M.CODI'
      '      WHERE  H.C_HISTORIA = :C_HISTORIA'
      '      AND    H.DATA >= :DATA_ALTA - 20'
      '      AND    H.DATA >= :DATA_INGRES'
      '      AND    H.DATA <= :DATA_ALTA + 7'
      
        '      AND   (H.C_GRUP = :C_GRUP OR (:C_GRUP = "FI" AND H.C_GRUP ' +
        '= "TO"))'
      '      AND    H.QUEES = 18'
      '      AND    H.ANULAT = '#39'N'#39
      '      ORDER BY H.DATA DESC'
      '      ROWS 1'
      '      INTO  :ANOTACIO;'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Informes_Items'
    Abierta = False
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
    Left = 696
    Top = 424
  end
  object P_1VisitaBCN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = '1VisitaBCN'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '  DECLARE VARIABLE DATA_INGRES DATE;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      'BEGIN'
      ''
      
        '      /* Retornem l'#39'anotaci'#243' de la darrera primera visita anteri' +
        'or a l'#39'inici del tractament (m'#224'xim 3 mesos abans), si n'#39'hi ha */'
      ''
      
        '      SELECT C_HISTORIA, DATA_INGRES, DATA_ALTA FROM TRACTAMENTS' +
        ' WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :C_HISTORIA, :DATA_INGR' +
        'ES, :DATA_ALTA;'
      ''
      '      SELECT H.ANOTACIO'
      '      FROM   HISTORIA H'
      
        '      JOIN   DRETSPRESTA D ON H.C_PRESTACIO = D.C_PRESTACIO AND ' +
        'D.C_DRET = "P248"  /* visites m'#232'diques de GBCN */'
      '      JOIN   METGES M ON H.C_USUARI = M.CODI'
      '      WHERE  H.C_HISTORIA = :C_HISTORIA'
      '      AND    H.DATA_INGRES >= :DATA_INGRES - 90'
      '      AND    H.DATA_INGRES <= :DATA_INGRES'
      '      AND    H.C_GRUP = "ME"'
      '      AND    H.ANULAT = "N"'
      '      ORDER BY H.C_PRESTACIO, H.DATA DESC'
      '      ROWS 1'
      '      INTO  :ANOTACIO;'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Informes_Items'
    Abierta = False
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
    Left = 696
    Top = 224
  end
  object P_EvolsBCN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EvolsBCN'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER'
      ')'
      'RETURNS ('
      '      ANOTACIO    VARCHAR(9000),'
      '      ORDRE       INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '  DECLARE VARIABLE DATA_INGRES DATE;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      '  DECLARE VARIABLE DATA        DATE;'
      '  DECLARE VARIABLE DIA         VARCHAR(10);'
      'BEGIN'
      ''
      
        '      /* Retornem les 3 '#250'ltimes anotacions de GBCN fetes per un ' +
        'usuari del grup indicat (METGE)'
      
        '         feta des de l'#39'ingr'#233's del tractament que '#233's alta (pot es' +
        'tar associada a altres tractaments del pack) */'
      ''
      
        '      SELECT C_HISTORIA, DATA_INGRES, DATA_ALTA FROM TRACTAMENTS' +
        ' WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :C_HISTORIA, :DATA_INGR' +
        'ES, :DATA_ALTA;'
      ''
      '      ANOTACIO = '#39#39';'
      '      ORDRE = 0;'
      ''
      '      FOR SELECT H.ANOTACIO, H.DATA'
      '          FROM   HISTORIA H'
      
        '          JOIN   PRESTACION P ON H.C_PRESTACIO = P.C_PRESTACIO A' +
        'ND P.ESEASE = '#39'C'#39'  /* prestacions de GBCN */'
      '          JOIN   METGES M ON H.C_USUARI = M.CODI'
      '          WHERE  H.C_HISTORIA = :C_HISTORIA'
      '          AND    H.DATA >= :DATA_INGRES'
      
        '          AND   (H.DATA <= :DATA_ALTA OR :DATA_ALTA IS NULL OR H' +
        '.C_TRACTAMENT = :C_TRACTAMENT)'
      '          AND    H.C_GRUP = "ME"'
      '          AND    H.ANULAT = '#39'N'#39
      '          ORDER BY H.DATA DESC'
      '          ROWS 3'
      '          INTO  :ANOTACIO, :DATA'
      '      DO BEGIN'
      
        '            ORDRE = ORDRE - 1;  /* Agafem les 3 '#250'ltimes anotacio' +
        'ns ordenades al rev'#233's, i aix'#237' es reordenaran b'#233' */'
      ''
      
        '            DIA = extract(day from DATA) || '#39'/'#39' || extract(month' +
        ' from DATA) || '#39'/'#39' || extract(year from DATA);'
      ''
      '            ANOTACIO = DIA || F_NLine() || ANOTACIO;'
      ''
      '            SUSPEND;'
      '      END'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Informes_Items'
    Abierta = False
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
    Left = 696
    Top = 324
  end
  object P_Items_EscalesBCN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EscalesBCN'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER,'
      '       IDIOMA SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE C_HISTORIA  INTEGER;'
      '  DECLARE VARIABLE DATA_INGRES DATE;'
      '  DECLARE VARIABLE DATA_ALTA   DATE;'
      '  DECLARE VARIABLE C_ESCALA    INTEGER;'
      '  DECLARE VARIABLE ESCALA_ANT  INTEGER;'
      '  DECLARE VARIABLE ESCALA      VARCHAR(50);'
      '  DECLARE VARIABLE C_ITEM      INTEGER;'
      '  DECLARE VARIABLE ITEM_ANT    INTEGER;'
      '  DECLARE VARIABLE ITEM_CA     VARCHAR(40);'
      '  DECLARE VARIABLE ITEM_ES     VARCHAR(40);'
      '  DECLARE VARIABLE ITEM        VARCHAR(40);'
      '  DECLARE VARIABLE VALOR       VARCHAR(15);'
      '  DECLARE VARIABLE C_TIPUS     VARCHAR(1);'
      '  DECLARE VARIABLE TIPUS_CA    VARCHAR(40);'
      '  DECLARE VARIABLE TIPUS_ES    VARCHAR(40);'
      '  DECLARE VARIABLE TIPUS       VARCHAR(40);'
      '  DECLARE VARIABLE GUIONET     VARCHAR(5);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      '      ESCALA_ANT = -1;'
      '      ITEM_ANT = -1;'
      '      GUIONET = '#39' - '#39';'
      '      '
      
        '      SELECT C_HISTORIA, DATA_INGRES, DATA_ALTA FROM TRACTAMENTS' +
        ' WHERE C_TRACTAMENT = :C_TRACTAMENT INTO :C_HISTORIA, :DATA_INGR' +
        'ES, :DATA_ALTA;'
      ''
      
        '      FOR SELECT C.C_ESCALA, E.R_ESCALA, C_ITEM, I.N_ITEM, I.N_I' +
        'TEM2, F_LRTrim(L.D_ITEM), T.N_TIPUS_CA, T.N_TIPUS_ES'
      '          FROM   ESCALESCAP   C'
      
        '          JOIN   TRACTAMENTS  R ON C.C_TRACTAMENT = R.C_TRACTAME' +
        'NT'
      
        '          JOIN   PRESTACION   P ON R.C_PRESTACIO = P.C_PRESTACIO' +
        ' AND P.ESEASE = '#39'C'#39'  /* prestacions de GBCN */'
      '          JOIN   ESCALES      E ON C.C_ESCALA = E.C_ESCALA'
      '          JOIN   ESCALESTIPUS T ON Upper(C.TIPUS) = T.TIPUS'
      
        '          JOIN   ESCALESITEMS I ON E.C_ESCALA = I.C_ESCALA AND I' +
        '.BOLCA = "S"'
      
        '          JOIN   ESCALESLIN   L ON C.CLAU = L.CLAU AND I.C_ITEM ' +
        '= L.C_ITEM'
      '          WHERE  C.C_HISTORIA = :C_HISTORIA'
      '          AND    C.DATA_ADM >= :DATA_INGRES'
      
        '          AND   (C.DATA_ADM <= :DATA_ALTA + 15 OR :DATA_ALTA IS ' +
        'NULL OR C.C_TRACTAMENT = :C_TRACTAMENT)'
      '          AND    C.ANULAT = "N"'
      
        '          AND   (Upper(C.TIPUS) = "I" OR Upper(C.TIPUS) = "T" OR' +
        ' Upper(C.TIPUS) = "A")'
      
        '          ORDER  BY E.C_GRUP, C.C_ESCALA, I.ORDRE, T.TIPUS DESC ' +
        '              /* grup_escala, c_escala, ordre_'#237'tem, tipus_escala' +
        ' */'
      
        '          INTO  :C_ESCALA, :ESCALA, :C_ITEM, :ITEM_CA, :ITEM_ES,' +
        ' :VALOR, :TIPUS_CA, :TIPUS_ES'
      '          DO BEGIN'
      '          '
      
        '            IF (IDIOMA = 2) THEN BEGIN  ITEM = ITEM_ES;  TIPUS =' +
        ' TIPUS_ES;  END;'
      
        '                            ELSE BEGIN  ITEM = ITEM_CA;  TIPUS =' +
        ' TIPUS_CA;  END;'
      '                            '
      
        '            ITEM = AnsiUpper(F_Left(ITEM, 1)) || AnsiLower(F_Rig' +
        'ht(ITEM, F_StringLength(ITEM)-1));'
      '                            '
      '            IF (ESCALA_ANT = C_ESCALA) THEN'
      '            BEGIN'
      '                  ESCALA = '#39#39';'
      '                  IF (ITEM_ANT = C_ITEM) THEN ITEM = '#39'  -  '#39';'
      
        '                                         ELSE ITEM = F_NLine() |' +
        '|GUIONET|| ITEM || '#39':  '#39';'
      '            END;'
      '            ELSE BEGIN'
      
        '                  IF (ESCALA_ANT <> -1) THEN ESCALA = F_NLine() ' +
        '|| F_NLine() || ESCALA;'
      '                  ITEM = F_NLine() ||GUIONET|| ITEM || '#39':  '#39';'
      '            END;'
      ''
      
        '            ANOTACIO = ANOTACIO || ESCALA || ITEM || TIPUS || '#39' ' +
        #39' || VALOR ;'
      '          '
      '            ESCALA_ANT = C_ESCALA;'
      '            ITEM_ANT   = C_ITEM;'
      '      END'
      '      '
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 902
    Top = 174
  end
  object P_EvolucioBCN: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EvolucioBCN'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER'
      ')'
      'RETURNS ('
      '      ANOTACIO    VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE ANOTA VARCHAR(30000);'
      '  DECLARE VARIABLE ORDRE SMALLINT;'
      'BEGIN'
      ''
      
        '      /* Recopilem les anotacions que retorna la procedure P_Inf' +
        'ormes_Items_EvolsBCN */'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      FOR SELECT ANOTACIO'
      '          FROM   P_INFORMES_ITEMS_EVOLSBCN(:C_TRACTAMENT)'
      '          ORDER  BY ORDRE'
      '          INTO   :ANOTA'
      '      DO BEGIN'
      
        '            IF (ANOTACIO IS NOT NULL) THEN ANOTACIO = ANOTACIO |' +
        '| ANOTA || F_NLine() || F_NLine();'
      '      END;'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Informes_Items'
    Abierta = False
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
    Left = 696
    Top = 274
  end
  object P_Inf_Genera: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Genera'
    ForceNombreDB = False
    Body.Strings = (
      
        '(E_TIPUS VARCHAR(3), NHC INTEGER, C_TRACTAMENT INTEGER, C_USUARI' +
        ' VARCHAR(5), EXECUTA CHAR(1))'
      'RETURNS ('
      '  ID_INFORME      INTEGER,'
      '  C_TIPUS         VARCHAR(3),'
      '  C_ESTAT         INTEGER,'
      '  GESTIONAT       SMALLINT,'
      '  NOVA            CHAR(1),'
      '  U_SOLICITUD     VARCHAR(5),'
      '  ORDRE           SMALLINT'
      ')'
      'AS'
      'BEGIN'
      
        '      /* Genera una sol'#183'licitud d'#39'informe a l'#39'usuari C_USUARI de' +
        ' tipus C_TIPUS per al n'#250'mero d'#39'hist'#242'ria NHC */'
      ''
      '      C_TIPUS = E_TIPUS;'
      ''
      '      ID_INFORME = NULL;'
      '      NOVA = '#39'S'#39';'
      ''
      '      SELECT T.GESTIONAT, T.ORDRE'
      '      FROM   INFORMES_TIPUS T'
      '      WHERE  C_TIPUS = :C_TIPUS'
      '      INTO  :GESTIONAT, :ORDRE;'
      '      '
      
        '      /* Si estem consultant, mirem si ja existeix un informe d'#39 +
        'aquest tipus en curs, no anul'#183'lat */'
      '      IF (EXECUTA = "N") THEN'
      '      BEGIN'
      '            SELECT I.ID_INFORME, I.C_ESTAT, I.C_USUARI'
      '            FROM   INFORMES I'
      
        '            JOIN   INFORMES_REG R ON I.ID_INFORME = R.ID_INFORME' +
        ' AND R.ACCIO = 1'
      '            WHERE  I.C_HISTORIA = :NHC'
      '            AND    I.C_TIPUS = :C_TIPUS'
      '            AND    I.C_ESTAT <= 6'
      '            ORDER  BY I.ID_INFORME DESC'
      '            ROWS   1'
      '            INTO  :ID_INFORME, :C_ESTAT, :U_SOLICITUD;'
      ''
      '            IF (ID_INFORME IS NOT NULL) THEN NOVA = '#39'N'#39';'
      '      END;'
      '      '
      '      IF (EXECUTA = '#39'S'#39') THEN'
      '      BEGIN'
      '            ID_INFORME = GEN_ID(G_INFORMES, 1);'
      '            C_ESTAT = 0;'
      '            U_SOLICITUD = :C_USUARI;'
      ''
      '            /* Cap'#231'alera sol'#183'licitud */'
      
        '            INSERT INTO INFORMES (ID_INFORME, C_HISTORIA, C_TRAC' +
        'TAMENT, C_TIPUS, URGENT, C_ESTAT, GESTIONAT, C_USUARI)'
      
        '            VALUES (:ID_INFORME, :NHC, :C_TRACTAMENT, :C_TIPUS, ' +
        '"N", :C_ESTAT, :GESTIONAT, :C_USUARI);'
      ''
      '            /* Registrem l'#39'acci'#243' (sol'#183'licitud) */'
      
        '            INSERT INTO INFORMES_REG (ID_INFORME, LINIA, ACCIO, ' +
        'DATA, C_USUARI)'
      '            VALUES (:ID_INFORME, 1, 1, "NOW", :C_USUARI);'
      '      END;'
      ''
      '      /*IF (ID_INFORME IS NOT NULL) THEN */ SUSPEND;'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 44
    Top = 478
  end
  object P_Escales: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Escales'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER'
      ')'
      'RETURNS ('
      '      C_ESCALA   INTEGER,'
      '      C_ITEM     INTEGER,'
      '      VALOR_I    VARCHAR(15),'
      '      VALOR_A    VARCHAR(15),'
      '      OBLIGADA_I VARCHAR(10),'
      '      OBLIGADA_A VARCHAR(10)'
      '      )'
      'AS'
      '  DECLARE VARIABLE PRESTACIO  VARCHAR(4);'
      '  DECLARE VARIABLE GRUP_UM    VARCHAR(1);'
      ''
      '  DECLARE VARIABLE ESCALA_ANT INTEGER;'
      '  DECLARE VARIABLE ITEM_ANT   INTEGER;'
      '  DECLARE VARIABLE C_TIPUS    CHAR(1);'
      '  DECLARE VARIABLE VALOR      VARCHAR(15);'
      '  DECLARE VARIABLE OBLIGA_I   CHAR(1);'
      '  DECLARE VARIABLE OBLIGA_T   CHAR(1);'
      '  DECLARE VARIABLE OBLIGA_A   CHAR(1);'
      ''
      '  DECLARE VARIABLE C_ESCALA2  INTEGER;'
      '  DECLARE VARIABLE C_ITEM2    INTEGER;'
      '  DECLARE VARIABLE C_TIPUS2   CHAR(1);'
      '  DECLARE VARIABLE VALOR2     VARCHAR(15);'
      '  DECLARE VARIABLE OBLIGA_I2  CHAR(1);'
      '  DECLARE VARIABLE OBLIGA_T2  CHAR(1);'
      '  DECLARE VARIABLE OBLIGA_A2  CHAR(1);'
      ''
      'BEGIN'
      ''
      '      SELECT T.C_PRESTACIO, U.C_GRUP'
      '      FROM   TRACTAMENTS T'
      '      JOIN   FILIACIO F ON T.C_HISTORIA = F.NUM_HIST'
      '      JOIN   UNITATM U ON F.C_UNITATMEDICA = U.C_UNITATM'
      '      WHERE  T.C_TRACTAMENT = :C_TRACTAMENT'
      '      INTO  :PRESTACIO, :GRUP_UM;'
      ''
      '      ESCALA_ANT = -1;'
      '      ITEM_ANT = -1;'
      '      VALOR_I = '#39#39';'
      '      VALOR_A = '#39#39';'
      ''
      
        '      /* Partim dels '#237'tems que cal bolcar i busquem entrades int' +
        'rodu'#239'des i informaci'#243' d'#39'obligatorietat */'
      
        '      /* Aix'#237' detectem les escales no introdu'#239'des que ho haurien' +
        ' d'#39'estar */'
      
        '      FOR SELECT I.C_ESCALA, Upper(C.TIPUS), I.C_ITEM, F_LRTrim(' +
        'L.D_ITEM), O.OBLIGA_I, O.OBLIGA_T, O.OBLIGA_A'
      '          FROM   ESCALESITEMS I'
      '          JOIN   ESCALES      E ON  I.C_ESCALA = E.C_ESCALA'
      
        '          LEFT   OUTER JOIN ESCALESCAP   C ON  E.C_ESCALA = C.C_' +
        'ESCALA'
      
        '                                          AND  C.C_TRACTAMENT = ' +
        ':C_TRACTAMENT'
      '                                          AND  C.ANULAT = "N"'
      
        '                                          AND (Upper(C.TIPUS) = ' +
        '"I" OR Upper(C.TIPUS) = "T" OR Upper(C.TIPUS) = "A")'
      
        '          LEFT   OUTER JOIN ESCALESLIN   L ON C.CLAU = L.CLAU AN' +
        'D I.C_ITEM = L.C_ITEM'
      
        '          LEFT   OUTER JOIN ESCALESOBLIGACIONS O ON E.C_ESCALA =' +
        ' O.C_ESCALA AND (O.C_PRESTACIO = :PRESTACIO OR O.C_PRESTACIO = '#39 +
        '*'#39') AND (O.GRUP = :GRUP_UM OR O.GRUP = '#39'*'#39')'
      '          WHERE  I.BOLCA = "S"'
      
        '          AND   (O.OBLIGA_I = '#39'X'#39' OR OBLIGA_T = '#39'X'#39' OR OBLIGA_A ' +
        '= '#39'X'#39')'
      
        '          ORDER  BY E.C_GRUP, C.C_ESCALA, I.ORDRE, 2 desc       ' +
        '        /* grup_escala, c_escala, ordre_'#237'tem, tipus */'
      ''
      '      /*'
      
        '      /* Partim de les entrades introdu'#239'des dels '#237'tems que cal b' +
        'olcar i busquem obligatorietats  => nom'#233's detectem escales intro' +
        'du'#239'des per les quals falta algun valor (I o A)'
      
        '      FOR SELECT C.C_ESCALA, Upper(C.TIPUS), L.C_ITEM, L.D_ITEM,' +
        ' OBLIGA_I, OBLIGA_T, OBLIGA_A'
      '          FROM   ESCALESCAP   C'
      '          JOIN   ESCALES      E ON C.C_ESCALA = E.C_ESCALA'
      
        '          JOIN   ESCALESITEMS I ON E.C_ESCALA = I.C_ESCALA AND I' +
        '.BOLCA = "S"'
      
        '          JOIN   ESCALESLIN   L ON C.CLAU = L.CLAU AND I.C_ITEM ' +
        '= L.C_ITEM'
      
        '          LEFT   OUTER JOIN ESCALESOBLIGACIONS O ON E.C_ESCALA =' +
        ' O.C_ESCALA AND (O.C_PRESTACIO = :PRESTACIO OR O.C_PRESTACIO = '#39 +
        '*'#39') AND (O.GRUP = :GRUP_UM OR O.GRUP = '#39'*'#39')'
      '          WHERE  C.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C.ANULAT = "N"'
      
        '          AND   (Upper(C.TIPUS) = "I" OR Upper(C.TIPUS) = "T" OR' +
        ' Upper(C.TIPUS) = "A")'
      
        '          ORDER  BY E.C_GRUP, C.C_ESCALA, I.ORDRE               ' +
        '/* grup_escala, c_escala, ordre_'#237'tem */'
      '      /**/'
      
        '          INTO  :C_ESCALA2, :C_TIPUS2, :C_ITEM2, :VALOR2, :OBLIG' +
        'A_I2, :OBLIGA_T2, :OBLIGA_A2'
      '      DO BEGIN'
      
        '            /* Si en aquesta iteraci'#243' canvia l'#39#237'tem o l'#39'escala, ' +
        'retornem el registre anterior (si no '#233's 1a iteraci'#243') */'
      
        '            IF ((ESCALA_ANT <> -1) AND ((ITEM_ANT <> C_ITEM2) OR' +
        ' (ESCALA_ANT <> C_ESCALA2))) THEN SUSPEND;'
      '            '
      
        '            /* Ara actualitzem les varliables de sortida amb val' +
        'ors retornats pel select */'
      
        '            C_ESCALA = C_ESCALA2;  C_TIPUS = C_TIPUS2;  C_ITEM =' +
        ' C_ITEM2;  VALOR = VALOR2;  OBLIGA_I = OBLIGA_I2;  OBLIGA_T = OB' +
        'LIGA_T2;  OBLIGA_A = OBLIGA_A2;'
      ''
      '            IF  (OBLIGA_I = '#39'X'#39')  THEN OBLIGADA_I = '#39'INGR'#201'S'#39';'
      '                                  ELSE OBLIGADA_I = '#39#39';'
      '            IF ((OBLIGA_T = '#39'X'#39')'
      '            OR  (OBLIGA_A = '#39'X'#39')) THEN OBLIGADA_A = '#39'ALTA'#39';'
      '                                  ELSE OBLIGADA_A = '#39#39';'
      ''
      
        '            IF ((ESCALA_ANT <> C_ESCALA) OR (ITEM_ANT <> C_ITEM)' +
        ') THEN'
      '            BEGIN'
      '                  VALOR_I = '#39#39';'
      '                  VALOR_A = '#39#39';'
      '            END;'
      ''
      '            IF (C_TIPUS = '#39'I'#39') THEN VALOR_I = VALOR;'
      '                               ELSE VALOR_A = VALOR;'
      ''
      '            ESCALA_ANT = C_ESCALA;'
      '            ITEM_ANT = C_ITEM;'
      '      END;'
      '      '
      '      SUSPEND; /* retornem l'#39#250'ltim registre */'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 902
    Top = 74
  end
  object P_Items_Escales: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Escales'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '       C_TRACTAMENT INTEGER,'
      '       IDIOMA SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      '      )'
      'AS'
      '  DECLARE VARIABLE ESCALA_ANT INTEGER;'
      '  DECLARE VARIABLE C_ESCALA   INTEGER;'
      '  DECLARE VARIABLE N_ESCALA   VARCHAR(80);'
      '  DECLARE VARIABLE TIPUS_I    VARCHAR(40);'
      '  DECLARE VARIABLE TIPUS_A    VARCHAR(40);'
      '  DECLARE VARIABLE ITEM_CA    VARCHAR(200);'
      '  DECLARE VARIABLE ITEM_ES    VARCHAR(200);'
      '  DECLARE VARIABLE N_ITEM     VARCHAR(200);'
      '  DECLARE VARIABLE VALOR_I    VARCHAR(60);'
      '  DECLARE VARIABLE VALOR_A    VARCHAR(60);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      '      ESCALA_ANT = -1;'
      ''
      
        '      FOR SELECT C.C_ESCALA, E.R_ESCALA ||'#39' ('#39'|| E.N_ESCALA ||'#39')' +
        #39', I.N_ITEM, I.N_ITEM2, C.VALOR_I, C.VALOR_A'
      '          FROM   P_INFORMES_ESCALES(:C_TRACTAMENT) C'
      '          JOIN   ESCALES      E ON C.C_ESCALA = E.C_ESCALA'
      '          JOIN   ESCALESITEMS I ON C.C_ITEM   = I.C_ITEM'
      '          WHERE (C.VALOR_I <> '#39#39' OR C.VALOR_A <> '#39#39')'
      
        '          ORDER  BY E.C_GRUP, E.R_ESCALA, I.ORDRE               ' +
        '/* grup_escala, r_escala, ordre_'#237'tem */'
      
        '          INTO  :C_ESCALA, :N_ESCALA, ITEM_CA, :ITEM_ES, :VALOR_' +
        'I, :VALOR_A'
      '          DO BEGIN'
      ''
      '            IF (IDIOMA = 2) THEN'
      '            BEGIN'
      
        '                  SELECT N_TIPUS_ES FROM ESCALESTIPUS WHERE TIPU' +
        'S = '#39'I'#39' INTO :TIPUS_I;'
      
        '                  SELECT N_TIPUS_ES FROM ESCALESTIPUS WHERE TIPU' +
        'S = '#39'A'#39' INTO :TIPUS_A;'
      '                  N_ITEM = ITEM_ES;'
      '            END;'
      '            ELSE BEGIN'
      
        '                  SELECT N_TIPUS_CA FROM ESCALESTIPUS WHERE TIPU' +
        'S = '#39'I'#39' INTO :TIPUS_I;'
      
        '                  SELECT N_TIPUS_CA FROM ESCALESTIPUS WHERE TIPU' +
        'S = '#39'A'#39' INTO :TIPUS_A;'
      '                  N_ITEM = ITEM_CA;'
      '            END;'
      ''
      
        '            N_ITEM = AnsiUpper(F_Left(N_ITEM, 1)) || AnsiLower(F' +
        '_Right(N_ITEM, F_StringLength(N_ITEM)-1));'
      ''
      
        '            IF (VALOR_I = '#39#39') THEN VALOR_I = '#39#39'; ELSE VALOR_I = ' +
        'TIPUS_I || '#39' '#39' || VALOR_I;'
      
        '            IF (VALOR_A = '#39#39') THEN VALOR_A = '#39#39'; ELSE VALOR_A = ' +
        'TIPUS_A || '#39' '#39' || VALOR_A;'
      '            '
      
        '            IF ((VALOR_I <> '#39#39') AND (VALOR_A <> '#39#39')) THEN VALOR_' +
        'I = VALOR_I ||'#39'  -  '#39';'
      '            '
      ''
      '            IF (ESCALA_ANT = C_ESCALA) THEN N_ESCALA = '#39#39';'
      
        '            ELSE IF (ESCALA_ANT <> -1) THEN N_ESCALA = F_NLine()' +
        ' || F_NLine() || N_ESCALA;'
      ''
      ''
      
        '            ANOTACIO = ANOTACIO || N_ESCALA || F_NLine() || '#39' - ' +
        #39' || N_ITEM || '#39':  '#39' || VALOR_I || VALOR_A;'
      '                  '
      '            ESCALA_ANT = C_ESCALA;'
      '      END'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Informes_Items'
    Abierta = False
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
    Left = 902
    Top = 24
  end
  object P_Escales_Comprova: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Escales_Comprova'
    ForceNombreDB = False
    Body.Strings = (
      '(C_TRACTAMENT INTEGER)'
      'RETURNS (RESPOSTA VARCHAR(3000))'
      'AS'
      '      DECLARE VARIABLE C_ESCALA INTEGER;'
      '      DECLARE VARIABLE QUE_FALTA VARCHAR(50);'
      'BEGIN'
      ''
      '      RESPOSTA = '#39#39';'
      '      '
      
        '      FOR SELECT DISTINCT C_ESCALA, R_ESCALA || '#39': '#39' || F_IF(VAL' +
        'OR_I,'#39'='#39','#39#39', OBLIGADA_I || '#39' '#39', '#39#39') || F_IF(VALOR_A,'#39'='#39','#39#39', OBLI' +
        'GADA_A, '#39#39')'
      '          FROM   P_INFORMES_ESCALES (:C_TRACTAMENT) P'
      '          JOIN   ESCALES E ON P.C_ESCALA = E.C_ESCALA'
      '          WHERE  (VALOR_I = '#39#39' OR  VALOR_A = '#39#39')'
      '          INTO  :C_ESCALA, :QUE_FALTA'
      '      DO BEGIN'
      
        '            IF (RESPOSTA = '#39#39') THEN RESPOSTA = '#39'FALTEN LES SEG'#220'E' +
        'NTS ESCALES: '#39' || F_NLine();'
      '            '
      '            RESPOSTA = RESPOSTA || F_NLine()|| QUE_FALTA;'
      '      END;'
      ''
      '      IF (RESPOSTA <> '#39#39') THEN'
      '      BEGIN'
      
        '            RESPOSTA = RESPOSTA || F_NLine() || F_NLine() || '#39'VO' +
        'LEU BOLCAR LA INFORMACI'#211' DE TOTES MANERES?'#39' || F_NLine() || '#39'Res' +
        'poneu "NO" per bolcar-la en edicions posteriors de l'#39#39'informe.'#39';'
      '            SUSPEND;'
      '      END'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 902
    Top = 124
  end
  object P_Inf_PassaAUrgent: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'PassaAUrgent'
    ForceNombreDB = False
    Body.Strings = (
      '(EXECUTA CHAR(1))'
      'RETURNS ('
      '  ID_INFORME      INTEGER,'
      '  C_TIPUS         CHAR(3),'
      '  C_MOTIU         SMALLINT,'
      '  DATA_PREALTA    DATE,'
      '  DATA_ALTA       DATE,'
      '  PASSA_A_URGENT  CHAR(1)'
      ')'
      'AS'
      '      DECLARE VARIABLE URGENT CHAR(1);'
      'BEGIN'
      
        '      /* INFORMES D'#39'ALTA PENDENTS ---> URGENTS SI ALTA IMMINENT ' +
        '*/'
      ''
      
        '      FOR SELECT I.ID_INFORME, T.C_MOTIU, T.DATA_PREALTA, T.DATA' +
        '_ALTA, I.C_TIPUS, I.URGENT'
      '          FROM   INFORMES I'
      '          JOIN   INFORMES_TIPUS P ON I.C_TIPUS = P.C_TIPUS'
      
        '          JOIN   TRACTAMENTS T ON I.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T AND DATA_ALTA >= "TODAY"-30'
      '          WHERE  P.ORDRE = 1       /* informes d'#39'alta */'
      '          AND    I.C_ESTAT < 4     /* pendents de validar */'
      
        '          INTO  :ID_INFORME, :C_MOTIU, :DATA_PREALTA, :DATA_ALTA' +
        ', :C_TIPUS, :URGENT'
      '      DO BEGIN'
      ''
      
        '            /* AHO-TIR: urgents 3 dies abans de l'#39'alta, ja que h' +
        'an d'#39'estar "pre-validats" 48 hores abans de l'#39'alta */'
      '            IF ((C_TIPUS = '#39'AHO'#39') AND (C_MOTIU = 101)) THEN'
      '            BEGIN'
      '                  IF ((DATA_PREALTA <= "TODAY" +3)'
      
        '                  OR  (DATA_ALTA    <= "TODAY" -2)) THEN PASSA_A' +
        '_URGENT = '#39'S'#39';'
      
        '                                                    ELSE PASSA_A' +
        '_URGENT = '#39'N'#39';'
      '            END;'
      '            '
      
        '            /* Tractament ambulatori (adults i nens): urgents un' +
        'a setmana abans de l'#39'alta perqu'#232' els puguin anar preparant perqu' +
        #232' estiguin fets el dia de l'#39'alta */'
      
        '            ELSE IF ((C_TIPUS = '#39'AAM'#39') OR (C_TIPUS = '#39'ARI'#39')) THE' +
        'N'
      '            BEGIN'
      '                  IF ((DATA_PREALTA <= "TODAY" +7)'
      
        '                  OR  (DATA_ALTA    <= "TODAY" +7)) THEN PASSA_A' +
        '_URGENT = '#39'S'#39';'
      
        '                                                    ELSE PASSA_A' +
        '_URGENT = '#39'N'#39';'
      '            END;'
      '            '
      '            /* Altres altes: urgents a partir del dia d'#39'alta */'
      '            ELSE BEGIN'
      
        '                  IF (DATA_ALTA <= "TODAY") THEN PASSA_A_URGENT ' +
        '= '#39'S'#39';'
      
        '                                            ELSE PASSA_A_URGENT ' +
        '= '#39'N'#39';'
      '            END;'
      ''
      '            IF (PASSA_A_URGENT <> URGENT) THEN'
      '            BEGIN'
      
        '                  IF (EXECUTA = '#39'S'#39') THEN UPDATE INFORMES SET UR' +
        'GENT = :PASSA_A_URGENT WHERE ID_INFORME = :ID_INFORME;'
      '                  '
      '                  SUSPEND;'
      '            END;'
      '      END;'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Top = 478
  end
  object P_Inf_Desbloqueja: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'DesbloquejaInf'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (QUANTS INTEGER)'
      'AS'
      '  DECLARE VARIABLE QUANTS_ABANS   INTEGER;'
      '  DECLARE VARIABLE QUANTS_DESPRES INTEGER;'
      'BEGIN'
      
        '      SELECT COUNT(*) FROM BLOQUEIG_ACC WHERE QUE = '#39'INFORMES'#39' I' +
        'NTO :QUANTS_ABANS;'
      '      '
      '      DELETE FROM BLOQUEIG_ACC'
      '      WHERE  QUE = '#39'INFORMES'#39
      '      AND   (DATA < "TODAY" AND DATA < "NOW"-3/24);'
      '      '
      
        '      SELECT COUNT(*) FROM BLOQUEIG_ACC WHERE QUE = '#39'INFORMES'#39' I' +
        'NTO :QUANTS_DESPRES;'
      '      '
      '      QUANTS = QUANTS_ABANS - QUANTS_DESPRES;'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = wDataConfig.BloqueigAcc
    Dic1Name = 'BloqueigAcc'
    Abierta = False
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
    Left = 44
    Top = 316
  end
  object HC3_Auto_Eliminada: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'HC3_Auto'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS (C_HISTORIA  INTEGER,'
      '         ID_INFORME  INTEGER,'
      '         C_TIPUS     CHAR(3),'
      '         HCCC_ID     VARCHAR(50)'
      '         )'
      'AS'
      'BEGIN'
      ''
      
        '  FOR SELECT I.C_HISTORIA, I.ID_INFORME, I.C_TIPUS,  CAST(F_LEFT' +
        '(T.HCCC_INFORME_ALTA,50) AS VARCHAR(50))'
      '  FROM INFORMES I'
      
        '  /* JOIN INFORMES_TIPUS IT ON I.C_TIPUS=IT.C_TIPUS AND IT.PUBLI' +
        'CAR_HC3='#39'A'#39'*/'
      
        '  JOIN TRACTAMENTS T ON I.C_TRACTAMENT=T.C_TRACTAMENT AND T.C_CE' +
        'NTREFAC='#39'04'#39' AND T.C_CLIENT='#39'UP'#39
      '  JOIN FILIACIO F ON I.C_HISTORIA=F.NUM_HIST'
      '  LEFT JOIN INFORMES_HCCC H ON I.ID_INFORME=H.ID_INFORME'
      '  WHERE I.C_TIPUS IN ('#39'AAM'#39', '#39'AHO'#39', '#39'CMA'#39', '#39'RMP'#39')'
      '  AND   I.C_ESTAT = 10 AND H.ID_INFORME IS NULL'
      '  ORDER BY I.ID_INFORME'
      '  INTO :C_HISTORIA, :ID_INFORME, :C_TIPUS, :HCCC_ID'
      '  DO BEGIN'
      
        '      INSERT INTO INFORMES_HCCC (ID_INFORME,   ID_HCCC, PUBLICAR' +
        '_HC3, PUBLICAR_APP)'
      
        '                         VALUES (:ID_INFORME, :HCCC_ID,         ' +
        ' '#39'S'#39',          '#39'N'#39');'
      '      SUSPEND;'
      '  END;'
      '  '
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 508
    Top = 144
  end
  object ListPublicacions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'List'
    ForceNombreDB = False
    Body.Strings = (
      '(ID_INFORME INTEGER)'
      'RETURNS (LINIA INTEGER,'
      '         HC3 VARCHAR(100),'
      '         APP VARCHAR(100)'
      '         )'
      'AS'
      '  DECLARE VARIABLE PUBLICAR_HC3 CHAR(1);'
      '  DECLARE VARIABLE ID_HCCC      VARCHAR(50);'
      '  DECLARE VARIABLE PUBLICAR_APP CHAR(1);'
      '  DECLARE VARIABLE ID_APP       VARCHAR(50);'
      'BEGIN'
      ''
      '  HC3 = '#39#39'; APP = '#39#39';'
      '  FOR SELECT LINIA, PUBLICAR_HC3, ID_HCCC, PUBLICAR_APP, ID_APP'
      '  FROM INFORMES_HCCC'
      '  WHERE ID_INFORME = :ID_INFORME'
      '  ORDER BY LINIA'
      '  INTO :LINIA, :PUBLICAR_HC3, :ID_HCCC, :PUBLICAR_APP, :ID_APP'
      '  DO BEGIN'
      
        '      IF      (PUBLICAR_HC3 = '#39'N'#39') THEN HC3 = '#39'No publicar a l'#39#39 +
        'HC3'#39';'
      '      ELSE IF (PUBLICAR_HC3 = '#39'S'#39') THEN'
      '      BEGIN'
      
        '          IF (ID_HCCC IS NULL) THEN HC3 = '#39'Pendent de publicar a' +
        ' l'#39#39'HC3'#39';'
      '                               ELSE HC3 = '#39'Publicat a l'#39#39'HC3'#39';'
      '      END'
      '      ELSE IF (PUBLICAR_HC3 = '#39'R'#39') THEN'
      '      BEGIN'
      
        '          IF (ID_HCCC IS NULL) THEN HC3 = '#39'Pendent de republicar' +
        ' a l'#39#39'HC3'#39';'
      '                               ELSE HC3 = '#39'Republicat a l'#39#39'HC3'#39';'
      '      END;'
      '      ELSE IF (PUBLICAR_HC3 = '#39'D'#39') THEN'
      '      BEGIN'
      
        '          IF (ID_HCCC IS NULL) THEN HC3 = '#39'Pendent de despublica' +
        'r a l'#39#39'HC3'#39';'
      
        '                               ELSE HC3 = '#39'Despubicat de l'#39#39'HC3'#39 +
        ';'
      '      END;'
      ''
      ''
      
        '      IF      (PUBLICAR_APP = '#39'N'#39') THEN APP = '#39'No publicar a l'#39#39 +
        'APP'#39';'
      '      ELSE IF (PUBLICAR_APP = '#39'S'#39') THEN'
      '      BEGIN'
      
        '          IF (ID_APP IS NULL) THEN APP = '#39'Pendent de publicar a ' +
        'l'#39#39'APP'#39';'
      '                              ELSE APP = '#39'Publicat a l'#39#39'APP'#39';'
      '      END'
      '      ELSE IF (PUBLICAR_APP = '#39'R'#39') THEN'
      '      BEGIN'
      
        '          IF (ID_APP IS NULL) THEN APP = '#39'Pendent de republicar ' +
        'a l'#39#39'APP'#39';'
      '                              ELSE APP = '#39'Republicat a l'#39#39'APP'#39';'
      '      END;'
      '      ELSE IF (PUBLICAR_APP = '#39'D'#39') THEN'
      '      BEGIN'
      
        '          IF (ID_APP IS NULL) THEN APP = '#39'Pendent de despublicar' +
        ' a l'#39#39'APP'#39';'
      '                              ELSE APP = '#39'Despubicat de l'#39#39'APP'#39';'
      '      END;'
      ''
      '      SUSPEND;'
      '      HC3 = '#39#39'; APP = '#39#39';'
      '  END;'
      ''
      'END')
    Dic1 = Informes_HCCC
    Dic1Name = 'Informes_HCCC'
    Abierta = False
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
    Top = 193
  end
  object P_Items_Altres_Diags: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Altres_Diagnostics'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA        INTEGER,'
      '      C_TRACTAMENT      INTEGER,'
      '      IDIOMA            SMALLINT,'
      '      EXCLOU_ORDRE      SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO          VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE DIAGNOSTIC VARCHAR(30000);'
      '  DECLARE VARIABLE ORDRE      SMALLINT;'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      FOR SELECT DIAGNOSTIC, MIN(ORDRE)'
      
        '          FROM   P_INFORMES_ITEMS_DIAGS (:C_HISTORIA, :C_TRACTAM' +
        'ENT, :IDIOMA)'
      '          WHERE  ORDRE <> :EXCLOU_ORDRE'
      '          GROUP  BY DIAGNOSTIC'
      '          ORDER  BY ORDRE'
      '          INTO   :DIAGNOSTIC, :ORDRE'
      '      DO BEGIN'
      ''
      '            ANOTACIO = ANOTACIO || DIAGNOSTIC || F_NLine();'
      '            DIAGNOSTIC = '#39#39';'
      ''
      '      END'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 1022
    Top = 124
  end
  object P_Items_AltresProves: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AltresProves'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE N_PROVA_CA         VARCHAR(40);'
      '      DECLARE VARIABLE N_PROVA_ES         VARCHAR(40);'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE DATA_R             DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(40);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      
        '      /* Llistem les URODIN'#192'MIES finalitzades, excloent les imat' +
        'ges (CUMS) */'
      '      FOR SELECT I.C_INTERCON, I.DATA_PROVA, I.DATA2, I.RESPOSTA'
      '          FROM   INTERCON I'
      
        '          LEFT   OUTER JOIN INTERCONRX R ON I.C_INTERCON = R.C_I' +
        'NTERCON'
      '          WHERE  I.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    I.C_TIPUS = '#39'UROS'#39
      '          AND    I.ESTAT = 96'
      '          AND    R.C_INTERCON IS NULL'
      '          ORDER BY I.DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      ''
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      ''
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Urodinamia'#39' || F_' +
        'NLine() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = '#39'Urodin'#224'mia'#39' || F_' +
        'NLine() || '#39'Data: '#39';'
      ''
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      /* Llistem les ELECTROMIOGRAFIES finalitzades */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'EMG'#39
      '          AND    ESTAT = 98'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      ''
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      ''
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Electromiograf'#237'a'#39 +
        ' || F_NLine() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = '#39'Electromiografia'#39 +
        ' || F_NLine() || '#39'Data: '#39';'
      ''
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      /* Llistem les PROVES EXTERNES finalitzades */'
      
        '      /* No incloem les proves aportades pel pacient (tenen esta' +
        't 97 i no tenen dades a InterconProvaEsp) ja que s'#243'n fetes fora ' +
        'de l'#39'ingr'#233's */'
      
        '      FOR SELECT I.C_INTERCON, AnsiUpper(C.N_PROVAESP), AnsiUppe' +
        'r(C.N_PROVAESP2), I.DATA_PROVA, I.RESPOSTA'
      '          FROM   INTERCON I'
      
        '          JOIN   INTERCONPROVAESP P ON I.C_INTERCON = P.C_INTERC' +
        'ON'
      '          JOIN   CODIPROVAESP C ON P.C_PROVA = C.C_PROVAESP'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'PROVESP'#39
      '          AND    ESTAT = 93'
      '          ORDER BY DATA_PROVA'
      
        '          INTO  :C_INTERCON, :N_PROVA_CA, :N_PROVA_ES, :DATA_PRO' +
        'VA, :RESPOSTA'
      '      DO BEGIN'
      ''
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      ''
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = N_PROVA_ES || F_NL' +
        'ine() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = N_PROVA_CA || F_NL' +
        'ine() || '#39'Data: '#39';'
      ''
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      '      '
      
        '      /* Llistem les interconsultes de MAPA DE PRESSI'#211' finalitza' +
        'des */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'FSA'#39
      '          AND    ESTAT = 90'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      ''
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      ''
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Mapa de presi'#243'n'#39' ' +
        '|| F_NLine() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = '#39'Mapa de pressi'#243#39' ' +
        '|| F_NLine() || '#39'Data: '#39';'
      ''
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      ''
      '      IF (ANOTACIO = '#39#39') THEN'
      '      BEGIN'
      
        '            IF      (IDIOMA = 2) THEN ANOTACIO = '#39'No se han requ' +
        'erido otras pruebas complementarias.'#39';'
      
        '            ELSE IF (IDIOMA = 3) THEN ANOTACIO = '#39'No additional ' +
        'investigations were required'#39';'
      
        '                                 ELSE ANOTACIO = '#39'No s'#39#39'han requ' +
        'erit altres proves complement'#224'ries'#39';'
      '      END'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 524
  end
  object P_Items_Imatges: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Imatges'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_HISTORIA   INTEGER,'
      '      C_TRACTAMENT INTEGER,'
      '      IDIOMA       SMALLINT,'
      '      DIES_ENRERE  SMALLINT'
      ')'
      'RETURNS'
      '('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '      DECLARE VARIABLE C_INTERCON         INTEGER;'
      '      DECLARE VARIABLE DATA_PROVA         DATE;'
      '      DECLARE VARIABLE DATA_R             DATE;'
      '      DECLARE VARIABLE RESPOSTA           VARCHAR(3000);'
      '      DECLARE VARIABLE N_PROVA            VARCHAR(255);'
      '      DECLARE VARIABLE DESCRIPCIO         VARCHAR(255);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      ''
      '      /* Llistem les RADIOGRAFIES finalitzades */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'RX'#39
      '          AND    ESTAT = 92'
      
        '          AND ((:DIES_ENRERE IS NULL) OR (DATA_PROVA >= "TODAY" ' +
        '-:DIES_ENRERE))'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :RESPOSTA'
      '      DO BEGIN'
      '      '
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      '            '
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      '            DESCRIPCIO = '#39#39';'
      ''
      '            FOR SELECT C.N_PROVARX'
      '                FROM   INTERCONRX I'
      '                JOIN   CODIRX C ON I.C_PROVARX = C.C_PROVARX'
      '                WHERE  I.C_INTERCON = :C_INTERCON'
      '                INTO  :N_PROVA'
      '            DO BEGIN'
      ''
      
        '                  IF (DESCRIPCIO <> '#39#39') THEN DESCRIPCIO = DESCRI' +
        'PCIO || '#39', '#39';'
      ''
      '                  DESCRIPCIO = DESCRIPCIO || N_PROVA;'
      '            END'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Radiograf'#237'a '#39' || ' +
        'N_PROVA || F_NLine() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = '#39'Radiografia '#39' || ' +
        'N_PROVA || F_NLine() || '#39'Data: '#39';'
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      '      '
      '      /* Llistem les ECOGRAFIES finalitzades */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_TIPUS = '#39'ECOS'#39
      '          AND    ESTAT = 95'
      
        '          AND ((:DIES_ENRERE IS NULL) OR (DATA_PROVA >= "TODAY" ' +
        '-:DIES_ENRERE))'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      ''
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      ''
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Ecograf'#237'a'#39' || F_N' +
        'Line() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = '#39'Ecografia'#39' || F_N' +
        'Line() || '#39'Data: '#39';'
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      '      /* Llistem les CUMS finalitzades */'
      '      FOR SELECT I.C_INTERCON, I.DATA_PROVA, I.DATA2, I.RESPOSTA'
      '          FROM   INTERCON I'
      '          JOIN   INTERCONRX R ON I.C_INTERCON = R.C_INTERCON'
      '          WHERE  I.C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    I.C_TIPUS = '#39'UROS'#39
      '          AND    I.ESTAT = 96'
      '          AND    R.C_PROVARX = 12'
      
        '          AND ((:DIES_ENRERE IS NULL) OR (DATA_PROVA >= "TODAY" ' +
        '-:DIES_ENRERE))'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      ''
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      ''
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'CUMS'#39' || F_NLine(' +
        ') || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = '#39'CUMS'#39' || F_NLine(' +
        ') || '#39'Data: '#39';'
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      
        '      /* Llistem les VIDEOFLUOROSC'#210'PIES contestades o finalitzad' +
        'es */'
      '      FOR SELECT C_INTERCON, DATA_PROVA, DATA2, RESPOSTA'
      '          FROM   INTERCON'
      '          WHERE  C_TRACTAMENT = :C_TRACTAMENT'
      '          AND    C_ESPECIAL = '#39'25'#39
      '          AND    ESTAT IN (50, 90)'
      
        '          AND ((:DIES_ENRERE IS NULL) OR (DATA_PROVA >= "TODAY" ' +
        '-:DIES_ENRERE))'
      '          ORDER BY DATA_PROVA'
      '          INTO  :C_INTERCON, :DATA_PROVA, :DATA_R, :RESPOSTA'
      '      DO BEGIN'
      ''
      '            IF (DATA_PROVA IS NULL) THEN DATA_PROVA = DATA_R;'
      '            DATA_PROVA = F_SoloFecha(DATA_PROVA);'
      ''
      '            IF (RESPOSTA IS NULL) THEN RESPOSTA = '#39#39';'
      ''
      
        '            IF (IDIOMA = 2) THEN DESCRIPCIO = '#39'Videofluoroscopia' +
        #39' || F_NLine() || '#39'Fecha: '#39';'
      
        '                            ELSE DESCRIPCIO = '#39'Videofluorosc'#242'pia' +
        #39' || F_NLine() || '#39'Data: '#39';'
      ''
      
        '            ANOTACIO = ANOTACIO || DESCRIPCIO || F_DateToStr(DAT' +
        'A_PROVA) || F_NLine() || RESPOSTA || F_NLine();'
      '      END'
      ''
      ''
      '      IF (ANOTACIO = '#39#39') THEN'
      '      BEGIN'
      
        '            IF      (IDIOMA = 2) THEN ANOTACIO = '#39'No se han requ' +
        'erido pruebas de diagn'#243'stico por la imagen.'#39';'
      
        '            ELSE IF (IDIOMA = 3) THEN ANOTACIO = '#39'No diagnostic ' +
        'imaging tests have been required.'#39';'
      
        '                                 ELSE ANOTACIO = '#39'No s'#39#39'han requ' +
        'erit proves de diagn'#242'stic per la imatge.'#39';'
      '      END'
      ''
      '      SUSPEND;'
      ''
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 794
    Top = 474
  end
  object P_Items_Complicacions: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Complicacions'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_TRACTAMENT INTEGER'
      ')'
      'RETURNS ('
      '      ANOTACIO VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE ANOTA VARCHAR(30000);'
      'BEGIN'
      ''
      '      ANOTACIO = '#39#39';'
      '      ANOTA = '#39#39';'
      ''
      '      FOR SELECT ANOTACIO'
      '          FROM   HISTORIA'
      '          WHERE  C_TRACTAMENT = :c_tractament'
      '          AND    DATA >= "TODAY" - 7'
      '          AND    ANULAT = '#39'N'#39
      '          AND    QUEES = 45'
      '          AND   (C_GRUP = '#39'ME'#39' OR C_GRUP = '#39'RE'#39')'
      '          ORDER  BY DATA'
      '          INTO  :ANOTA'
      '      DO BEGIN'
      '      '
      
        '            ANOTACIO = ANOTACIO || F_NLine() || F_NLine() || ANO' +
        'TA;'
      '      END'
      '      '
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 696
    Top = 74
  end
  object T_InfHCCC_AU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AU'
    ForceNombreDB = False
    Body.Strings = (
      ' DECLARE VARIABLE COMENTARI VARCHAR(100);'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      ''
      
        '      IF ((OLD.ID_APP IS NULL) AND (NEW.ID_APP IS NOT NULL))   T' +
        'HEN'
      '      BEGIN'
      
        '          IF      (NEW.PUBLICAR_APP = '#39'R'#39') THEN COMENTARI = '#39'REp' +
        'ublicat '#39' || NEW.ID_APP;'
      
        '          ELSE IF (NEW.PUBLICAR_APP = '#39'D'#39') THEN COMENTARI = '#39'DES' +
        'publicat '#39'|| NEW.ID_APP;'
      
        '                                           ELSE COMENTARI = NEW.' +
        'ID_APP;'
      '          '
      
        '          INSERT INTO INFORMES_REG(ID_INFORME,ACCIO,DATA,COMENTA' +
        'RI)'
      
        '                           VALUES (NEW.ID_INFORME,61,"NOW",:COME' +
        'NTARI);'
      '      END;'
      
        '                                                                ' +
        '  '
      
        '      IF ((OLD.ID_HCCC IS NULL) AND (NEW.ID_HCCC IS NOT NULL)) T' +
        'HEN'
      '      BEGIN'
      
        '          IF      (NEW.PUBLICAR_HC3 = '#39'R'#39') THEN COMENTARI = '#39'REp' +
        'ublicat '#39'|| NEW.ID_HCCC;'
      
        '          ELSE IF (NEW.PUBLICAR_HC3 = '#39'D'#39') THEN COMENTARI = '#39'DES' +
        'publicat '#39'|| NEW.ID_HCCC;'
      
        '                                           ELSE COMENTARI = NEW.' +
        'ID_HCCC;'
      ''
      
        '          INSERT INTO INFORMES_REG(ID_INFORME,ACCIO,DATA,COMENTA' +
        'RI)'
      
        '                           VALUES (NEW.ID_INFORME,62,"NOW",:COME' +
        'NTARI);'
      '      END;'
      ''
      '   END;'
      '     '
      'END')
    Dic1 = Informes_HCCC
    Dic1Name = 'Informes_HCCC'
    Abierta = False
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
    Left = 308
    Top = 250
  end
  object P_Inf_GeneraCE: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraCE'
    ForceNombreDB = False
    Body.Strings = (
      
        '(E_TIPUS VARCHAR(3), NHC INTEGER, C_TRACTAMENT INTEGER, C_USUARI' +
        ' VARCHAR(5), EXECUTA CHAR(1))'
      'RETURNS ('
      '  ID_INFORME      INTEGER,'
      '  C_TIPUS         VARCHAR(3),'
      '  C_ESTAT         INTEGER,'
      '  GESTIONAT       SMALLINT,'
      '  NOVA            CHAR(1),'
      '  U_SOLICITUD     VARCHAR(5),'
      '  ORDRE           SMALLINT'
      ')'
      'AS'
      'BEGIN'
      
        '      /* Genera o recupera una sol'#183'licitud d'#39'informe de CE a l'#39'u' +
        'suari C_USUARI per al n'#250'mero d'#39'hist'#242'ria NHC */'
      ''
      '      C_TIPUS = E_TIPUS;'
      '      '
      '      ID_INFORME = NULL;'
      '      NOVA = '#39'S'#39';'
      ''
      '      SELECT T.GESTIONAT, T.ORDRE'
      '      FROM   INFORMES_TIPUS T'
      '      WHERE  C_TIPUS = :C_TIPUS'
      '      INTO  :GESTIONAT, :ORDRE;'
      '      '
      
        '      /* Mirem si ja existeix un informe d'#39'aquest tipus en curs,' +
        ' no anul'#183'lat */'
      '      SELECT I.ID_INFORME, I.C_ESTAT, I.C_USUARI'
      '      FROM   INFORMES I'
      
        '      JOIN   INFORMES_REG R ON I.ID_INFORME = R.ID_INFORME AND R' +
        '.ACCIO = 1'
      '      WHERE  I.C_TRACTAMENT = :C_TRACTAMENT'
      '      AND    I.C_TIPUS = :C_TIPUS'
      '      AND    I.C_ESTAT IN (0,1)'
      '      ORDER  BY I.ID_INFORME DESC'
      '      ROWS   1'
      '      INTO  :ID_INFORME, :C_ESTAT, :U_SOLICITUD;'
      '            '
      '      IF (ID_INFORME IS NOT NULL) THEN NOVA = '#39'N'#39';'
      ''
      '      ELSE IF (EXECUTA = '#39'S'#39') THEN'
      '      BEGIN'
      '            ID_INFORME = GEN_ID(G_INFORMES, 1);'
      '            C_ESTAT = 0;'
      '            U_SOLICITUD = :C_USUARI;'
      ''
      '            /* Cap'#231'alera sol'#183'licitud */'
      
        '            INSERT INTO INFORMES (ID_INFORME, C_HISTORIA, C_TRAC' +
        'TAMENT, C_TIPUS, URGENT, C_ESTAT, GESTIONAT, C_USUARI)'
      
        '            VALUES (:ID_INFORME, :NHC, :C_TRACTAMENT, :C_TIPUS, ' +
        '"N", :C_ESTAT, :GESTIONAT, :C_USUARI);'
      ''
      '            /* Registrem l'#39'acci'#243' (sol'#183'licitud) */'
      
        '            INSERT INTO INFORMES_REG (ID_INFORME, LINIA, ACCIO, ' +
        'DATA, C_USUARI)'
      '            VALUES (:ID_INFORME, 1, 1, "NOW", :C_USUARI);'
      '      END;'
      '      '
      '      SUSPEND;'
      'END'
      '')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 144
    Top = 478
  end
  object CI_Procediments: TDic
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
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_CI_PROCS'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Procediment'
        NombreDB = 'N_PROCEDIMENT'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
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
          'Identificador')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'ConsentimentsInformats_Procediments'
    NombreTabla = 'CI_PROCS'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador'
      'Procediment')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 992
    Top = 288
  end
  object CI_Especialitat: TDic
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
        Nombre = 'Identificador procediment'
        NombreDB = 'ID_PROC'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Proc'
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_CI_PROCS'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Codi especialitat'
        NombreDB = 'C_ESPECIAL'
        Longitud = 10
        Consulta = 'Especial'
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
          'Identificador procediment'
          'Codi especialitat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Proc'
        NombreDB = 'Proc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Identificador procediment')
        Tipo = tiForaneo
        ForaneoDic = CI_Procediments
        ForaneoCampos.Strings = (
          'Identificador')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Especial'
        NombreDB = 'Especial'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi especialitat')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
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
          'Identificador')
        Tipo = tiUnique
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Proc'
        Master = CI_Procediments
        BuscaOrigen.Strings = (
          'Identificador procediment')
        CopiarOrigen.Strings = (
          'Identificador procediment')
        CopiarMaster.Strings = (
          'Identificador')
        BuscaMaster.Strings = (
          'Identificador')
      end
      item
        Nombre = 'Especial'
        Master = wDataBasics.Especial
        BuscaOrigen.Strings = (
          'Codi especialitat')
        CopiarOrigen.Strings = (
          'Codi especialitat')
        CopiarMaster.Strings = (
          'Codi Especialitat')
        BuscaMaster.Strings = (
          'Codi Especialitat')
      end>
    Nombre = 'ConsentimentsInformats_Especialitat'
    NombreTabla = 'CI_ESPECIAL'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador procediment'
      'Codi especialitat'
      'Identificador')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 1080
    Top = 288
  end
  object CI_FullInformatiu: TDic
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
        Nombre = 'Identificador procediment'
        NombreDB = 'ID_PROC'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Proc'
        zType = tcIB_Integer
        zNotNull = True
        AutoContador.Tipo = tcGenerator
        AutoContador.Activo = True
        AutoContador.Generator = 'G_CI_PROCS'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Idioma'
        NombreDB = 'IDIOMA'
        Longitud = 2
        Consulta = 'Idioma'
        zType = tcIB_Smallint
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'URL'
        NombreDB = 'URL'
        Longitud = 750
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Procediment traducci'#243
        NombreDB = 'N_PROCEDIMENT'
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
          'Identificador procediment'
          'Idioma')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Proc'
        NombreDB = 'Proc'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Identificador procediment')
        Tipo = tiForaneo
        ForaneoDic = CI_Procediments
        ForaneoCampos.Strings = (
          'Identificador')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Proc'
        Master = CI_Procediments
        BuscaOrigen.Strings = (
          'Identificador procediment')
        CopiarOrigen.Strings = (
          'Identificador procediment')
        CopiarMaster.Strings = (
          'Identificador')
        BuscaMaster.Strings = (
          'Identificador')
      end
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
        WhereFiltro = 'TIPUSCODI='#39'IDIOMA'#39
      end>
    Nombre = 'ConsentimentsInformats_FullInformatiu'
    NombreTabla = 'CI_FULL_INFORMATIU'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador procediment'
      'Idioma'
      'URL')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 1169
    Top = 287
  end
  object T_CI_Procs_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE COMPTA SMALLINT;'
      'BEGIN'
      '   IF (USER <> '#39'REPLICATOR'#39') THEN'
      '   BEGIN'
      '      /* Informem l'#39'ID via generator */'
      '      IF (NEW.ID IS NULL) THEN NEW.ID = GEN_ID(G_CI_PROCS, 1);'
      '   END;'
      'END')
    Dic1 = CI_Procediments
    Dic1Name = 'CI_Procediments'
    Abierta = False
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
    Left = 994
    Top = 338
  end
  object P_Inf_GeneraExtern: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'GeneraExtern'
    ForceNombreDB = False
    Body.Strings = (
      
        '(E_TIPUS VARCHAR(3), NHC INTEGER, C_TRACTAMENT INTEGER, C_USUARI' +
        ' VARCHAR(5), ARXIU VARCHAR(100))'
      'RETURNS ('
      '  ID_INFORME      INTEGER,'
      '  C_TIPUS         VARCHAR(3),'
      '  C_ESTAT         INTEGER,'
      '  GESTIONAT       SMALLINT,'
      '  NOVA            CHAR(1),'
      '  U_SOLICITUD     VARCHAR(5),'
      '  ORDRE           SMALLINT'
      ')'
      'AS'
      'BEGIN'
      
        '      /* Genera una sol'#183'licitud d'#39'informe a l'#39'usuari C_USUARI de' +
        ' tipus C_TIPUS per al n'#250'mero d'#39'hist'#242'ria NHC */'
      ''
      '      C_TIPUS = E_TIPUS;'
      ''
      '      ID_INFORME = NULL;'
      '      NOVA = '#39'S'#39';'
      ''
      '      SELECT T.GESTIONAT, T.ORDRE'
      '      FROM   INFORMES_TIPUS T'
      '      WHERE  C_TIPUS = :C_TIPUS'
      '      INTO  :GESTIONAT, :ORDRE;'
      '      '
      '      ID_INFORME = GEN_ID(G_INFORMES, 1);'
      '      C_ESTAT = 10;'
      '      U_SOLICITUD = :C_USUARI;'
      ''
      
        '      /* Inserir registre cap'#231'alera a la taula INFORMES en estat' +
        ' 10 finalitzat */'
      
        '      INSERT INTO INFORMES (ID_INFORME, C_HISTORIA, C_TRACTAMENT' +
        ', C_TIPUS, URGENT, C_ESTAT, GESTIONAT, C_USUARI, ARXIU)'
      
        '      VALUES (:ID_INFORME, :NHC, :C_TRACTAMENT, :C_TIPUS, "N", :' +
        'C_ESTAT, :GESTIONAT, :C_USUARI, :ARXIU);'
      ''
      
        '      /* Inserir registre a INFORMES_REG (acci'#243' realitzada i dat' +
        'a -> crear nova acci'#243' "recepci'#243' informe extern") */'
      
        '      INSERT INTO INFORMES_REG (ID_INFORME, LINIA, ACCIO, DATA, ' +
        'C_USUARI)'
      '      VALUES (:ID_INFORME, 1, 21, "NOW", :C_USUARI);'
      ''
      ''
      
        '      /* Inserir registre a INFORMES_HCCC amb publicar APP = '#39'S'#39 +
        ' */'
      
        '      INSERT INTO INFORMES_HCCC (ID_INFORME, LINIA, PUBLICAR_APP' +
        ', PUBLICAR_HC3, REPUBLICA)'
      '      VALUES (:ID_INFORME, 1, "S", "N", "N");'
      ''
      '      SUSPEND;'
      'END')
    Dic1 = Informes
    Dic1Name = 'Informes'
    Abierta = False
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
    Left = 44
    Top = 534
  end
  object P_Items_Llista: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Llista'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '      C_ITEM      INTEGER,'
      '      IDIOMA      SMALLINT'
      ')'
      'RETURNS ('
      '      ANOTACIO    VARCHAR(30000)'
      ')'
      'AS'
      '  DECLARE VARIABLE TEXT_CA VARCHAR(3000);'
      '  DECLARE VARIABLE TEXT_ES VARCHAR(3000);'
      '  DECLARE VARIABLE TEXT_EN VARCHAR(3000);'
      'BEGIN'
      ''
      '      SELECT TEXT_CA, TEXT_ES, TEXT_EN'
      '      FROM   INFORMES_LLISTES'
      '      WHERE  C_ITEM = :C_ITEM'
      '      AND    BAIXA = "N"'
      '      INTO   :TEXT_CA, :TEXT_ES, :TEXT_EN;'
      ''
      '      IF      (IDIOMA = 1) THEN ANOTACIO = TEXT_CA;'
      '      ELSE IF (IDIOMA = 2) THEN ANOTACIO = TEXT_ES;'
      '                           ELSE ANOTACIO = TEXT_EN;'
      '                           '
      '      SUSPEND;'
      'END')
    Dic1 = Informes_Items
    Dic1Name = 'Items'
    Abierta = False
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
    Left = 596
    Top = 74
  end
end
