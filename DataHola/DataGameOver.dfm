object wDataGameOver: TwDataGameOver
  OldCreateOrder = False
  Left = 597
  Top = 274
  Height = 234
  Width = 477
  object Professionals: TDic
    CalcNivel = False
    Projecto = wDataHola.ProjecteHola
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero identificador'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
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
        Nombre = 'Primer Cognom'
        NombreDB = 'Cognom1'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Segon Cognom'
        NombreDB = 'Cognom2'
        Longitud = 25
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Naixement'
        NombreDB = 'DataNaixement'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tel'#232'fon'
        NombreDB = 'Telefon'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Poden guardar m'#233's d'#39'un tel'#232'fon.'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a'
        NombreDB = 'Adreca'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Poblaci'#243
        NombreDB = 'Poblacio'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Comarca'
        NombreDB = 'Comarca'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'comarca'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'M'#242'bil'
        NombreDB = 'Mobil'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'E-mail'
        NombreDB = 'Email'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Estudis'
        NombreDB = 'Estudis'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'S.Laboral'
        NombreDB = 'SLaboral'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pagament'
        NombreDB = 'Pagament'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Disponibilitat'
        NombreDB = 'Disponibilitat'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Altres dades'
        NombreDB = 'Altres'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus de pensi'#243
        NombreDB = 'T_pensio'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cotxe'
        NombreDB = 'Cotxe'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'M'#224'xim n'#186' de xerrades al mes'
        NombreDB = 'MAX_XERRADES_MES'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Baixa'
        NombreDB = 'BAIXA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        Comentario = 'S:baixa;N:actiu'
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
          'N'#250'mero identificador')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'NOM'
        NombreDB = 'NOM'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Primer Cognom'
          'Segon Cognom'
          'Nom')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'comarca'
        Master = wDataHolaComu.Codis
        BuscaOrigen.Strings = (
          'Comarca')
        CopiarOrigen.Strings = (
          'Comarca')
        CopiarMaster.Strings = (
          'c_codi')
        BuscaMaster.Strings = (
          'c_codi')
        WhereFiltro = 'tipuscodi = '#39'COMARCA'#39
      end>
    Nombre = 'PROFESSIONALS'
    NombreTabla = 'PROFESSIONALS'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'mero identificador'
      'Nom'
      'Primer Cognom'
      'Segon Cognom'
      'Comarca'
      'Tel'#232'fon'
      'Adre'#231'a'
      'Poblaci'#243
      'E-mail'
      'M'#242'bil'
      'Data Naixement'
      'Estudis'
      'Pagament'
      'S.Laboral'
      'Disponibilitat'
      'Altres dades'
      'Tipus de pensi'#243
      'Cotxe'
      'M'#224'xim n'#186' de xerrades al mes')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 16
  end
  object Escoles: TDic
    CalcNivel = False
    Projecto = wDataHola.ProjecteHola
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero identificador'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom escola'
        NombreDB = 'NomEscola'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tel'#232'fon'
        NombreDB = 'Telefon'
        Longitud = 30
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Poden guardar m'#233's d'#39'un tel'#232'fon.'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Adre'#231'a'
        NombreDB = 'Adreca'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Poblacio'
        NombreDB = 'Poblacio'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Comarca'
        NombreDB = 'Comarca'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'comarca'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'E-mail'
        NombreDB = 'Email'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi postal'
        NombreDB = 'c_postal'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions'
        NombreDB = 'Observacio'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions internes'
        NombreDB = 'ObsInternes'
        Longitud = 250
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
          'N'#250'mero identificador')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'comarca'
        Master = wDataHolaComu.Codis
        BuscaOrigen.Strings = (
          'Comarca')
        CopiarOrigen.Strings = (
          'Comarca')
        CopiarMaster.Strings = (
          'c_codi')
        BuscaMaster.Strings = (
          'c_codi')
        WhereFiltro = 'tipuscodi ='#39'COMARCA'#39
      end>
    Nombre = 'ESCOLES'
    NombreTabla = 'ESCOLES'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'mero identificador'
      'Nom escola'
      'Comarca'
      'Tel'#232'fon'
      'Adre'#231'a'
      'E-mail'
      'Poblacio'
      'Codi postal'
      'Observacions'
      'Observacions internes')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 96
    Top = 16
  end
  object Processos: TDic
    CalcNivel = False
    Projecto = wDataHola.ProjecteHola
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero de proc'#233's'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data trucada'
        NombreDB = 'Data_Trucada'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data sol'#183'licitud'
        NombreDB = 'DataSollicitud'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Escola'
        NombreDB = 'Escola'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Escola'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data e-mail Escola'
        NombreDB = 'Data_Escola'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Monitor'
        NombreDB = 'Monitor'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Professional'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data e-mail Monitor'
        NombreDB = 'Data_Monitor'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Estat proc'#233's'
        NombreDB = 'Estat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Estat'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Anul'#183'lat'
        NombreDB = 'Data_Anula'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Horari'
        NombreDB = 'Horari'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Curs'
        NombreDB = 'Curs'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Persona de contacte'
        NombreDB = 'Contacte'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero d'#39'alumnes'
        NombreDB = 'Num_alumnes'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero de grup'
        NombreDB = 'Num_grup'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Tipus de sessio'
        NombreDB = 'Tipus_sessio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Tipussessio'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Observacions'
        NombreDB = 'Observacions'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Canvis'
        NombreDB = 'Canvis'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Literal Canvis'
        NombreDB = 'L_canvis'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Facturat'
        NombreDB = 'Facturat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = '3er ESO'
        NombreDB = 'Curs3erESO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = '4rt ESO'
        NombreDB = 'Curs4rtESO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = '1er BAT'
        NombreDB = 'Curs1erBAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = '2on BAT'
        NombreDB = 'Curs2onBAT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cicles formatius'
        NombreDB = 'CiclesFormatius'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Altres Cursos'
        NombreDB = 'AltresCursos'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Petici'#243' de'
        NombreDB = 'Peticio_De'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'PeticioDe'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Petici'#243' de altres'
        NombreDB = 'Peticio_De_Altres'
        Longitud = 40
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
          'N'#250'mero de proc'#233's')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Professional'
        Master = Professionals
        BuscaOrigen.Strings = (
          'Monitor')
        CopiarOrigen.Strings = (
          'Monitor')
        CopiarMaster.Strings = (
          'N'#250'mero identificador')
        BuscaMaster.Strings = (
          'N'#250'mero identificador')
        WhereFiltro = 'BAIXA='#39'N'#39
      end
      item
        Nombre = 'Escola'
        Master = Escoles
        BuscaOrigen.Strings = (
          'Escola')
        CopiarOrigen.Strings = (
          'Escola')
        CopiarMaster.Strings = (
          'N'#250'mero identificador')
        BuscaMaster.Strings = (
          'N'#250'mero identificador')
      end
      item
        Nombre = 'TipusSessio'
        Master = wDataHolaComu.Codis
        BuscaOrigen.Strings = (
          'Tipus de sessio')
        CopiarOrigen.Strings = (
          'Tipus de sessio')
        CopiarMaster.Strings = (
          'c_codi')
        BuscaMaster.Strings = (
          'c_codi')
        WhereFiltro = 'tipuscodi = '#39'TIPUSSESSIO'#39
      end
      item
        Nombre = 'Estat'
        Master = wDataHolaComu.Codis
        BuscaOrigen.Strings = (
          'Estat proc'#233's')
        CopiarOrigen.Strings = (
          'Estat proc'#233's')
        CopiarMaster.Strings = (
          'c_codi')
        BuscaMaster.Strings = (
          'c_codi')
        WhereFiltro = 'tipuscodi = '#39'ESTAT'#39
      end
      item
        Nombre = 'PeticioDe'
        Master = wDataHolaComu.Codis
        BuscaOrigen.Strings = (
          'Petici'#243' de')
        CopiarOrigen.Strings = (
          'Petici'#243' de')
        CopiarMaster.Strings = (
          'c_codi')
        BuscaMaster.Strings = (
          'c_codi')
        WhereFiltro = 'tipuscodi="GAMEOVER.PETICIODE"'
      end>
    Nombre = 'PROCESSOS'
    NombreTabla = 'PROCESSOS'
    Organiza = tbBase
    CamposVer.Strings = (
      'N'#250'mero de proc'#233's'
      'Escola'
      'Data trucada'
      'Monitor'
      'Estat proc'#233's'
      'Data sol'#183'licitud'
      'Data Anul'#183'lat'
      'Horari'
      'Curs'
      'Persona de contacte'
      'N'#250'mero d'#39'alumnes'
      'N'#250'mero de grup'
      'Tipus de sessio'
      'Observacions'
      'Data e-mail Escola'
      'Data e-mail Monitor')
    IndiceVer = 'ID'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 72
  end
  object BaixesProf: TDic
    CalcNivel = False
    Projecto = wDataHola.ProjecteHola
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Identificador de registre'
        NombreDB = 'PK'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID professional'
        NombreDB = 'ID'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data inici baixa'
        NombreDB = 'DATA_INICI'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data final baixa'
        NombreDB = 'DATA_FINAL'
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
          'Identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'BaixesProf'
    NombreTabla = 'BaixesProf'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID professional'
      'Data inici baixa'
      'Data final baixa')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 96
    Top = 72
  end
  object Bloqueig: TDic
    CalcNivel = False
    Projecto = wDataHola.ProjecteHola
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
        Nombre = 'Dia bloquejat'
        NombreDB = 'DIA'
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
      end>
    Consultas = <>
    Nombre = 'Bloqueig'
    NombreTabla = 'Bloqueig'
    Organiza = tbBase
    CamposVer.Strings = (
      'Dia bloquejat'
      'Id')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 128
  end
  object P_Calendari: THYSqlProc
    Projecto = wDataHola.ProjecteHola
    NombreDB = 'Calendari'
    ForceNombreDB = False
    Body.Strings = (
      'RETURNS ('
      '  FACTURAT CHAR(1),'
      '  ESTAT INTEGER,'
      '  DATASOLLICITUD TIMESTAMP,'
      '  NOMESCOLA VARCHAR(60),'
      '  NUM_GRUP INTEGER,'
      '  NUM_ALUMNES INTEGER,'
      '  CURS VARCHAR(100),'
      '  POBLACIO VARCHAR(50),'
      '  COMARCA VARCHAR(40),'
      '  HORARI VARCHAR(40),'
      '  CONTACTE VARCHAR(40),'
      '  NOM VARCHAR(20),'
      '  COGNOM1 VARCHAR(25),'
      '  COGNOM2 VARCHAR(25),'
      '  CANVIS CHAR(1),'
      '  ID INTEGER,'
      '  PETICIODE VARCHAR(40),'
      '  PETICIODEALTRES VARCHAR(40),'
      '  EMAIL_ESCOLA VARCHAR(50),'
      '  TELEFON_ESCOLA VARCHAR(30),'
      '  N_ESTAT VARCHAR(40)'
      ') AS'
      '  DECLARE VARIABLE CURS3ERESO      CHAR(1);'
      '  DECLARE VARIABLE CURS4RTESO      CHAR(1);'
      '  DECLARE VARIABLE CURS1ERBAT      CHAR(1);'
      '  DECLARE VARIABLE CURS2ONBAT      CHAR(1);'
      '  DECLARE VARIABLE CICLESFORMATIUS CHAR(1);'
      '  DECLARE VARIABLE ALTRESCURSOS    CHAR(1);'
      '  DECLARE VARIABLE CURS_           VARCHAR(40);'
      'BEGIN'
      
        '    FOR SELECT P.FACTURAT, P.ESTAT, P.DATASOLLICITUD, E.NOMESCOL' +
        'A, P.NUM_GRUP, P.NUM_ALUMNES, E.POBLACIO,'
      
        '               C.N_CODI AS COMARCA, P.HORARI, P.CONTACTE, M.NOM,' +
        ' M.COGNOM1, M.COGNOM2, P.CANVIS, P.ID,'
      
        '               P.CURS, P.CURS3ERESO, P.CURS4RTESO, P.CURS1ERBAT,' +
        ' P.CURS2ONBAT, P.CICLESFORMATIUS, P.ALTRESCURSOS,'
      
        '               CC.N_CODI, P.PETICIO_DE_ALTRES, E.EMAIL, E.TELEFO' +
        'N, CE.N_CODI'
      '    FROM PROCESSOS P'
      '    LEFT OUTER JOIN PROFESSIONALS M ON P.MONITOR = M.ID'
      '    LEFT OUTER JOIN ESCOLES E ON P.ESCOLA = E.ID'
      
        '    LEFT OUTER JOIN CODIS C   ON E.COMARCA = C.C_CODI AND C.TIPU' +
        'SCODI = '#39'COMARCA'#39
      
        '    LEFT OUTER JOIN CODIS CC  ON P.PETICIO_DE = CC.C_CODI AND CC' +
        '.TIPUSCODI = '#39'GAMEOVER.PETICIODE'#39
      
        '    LEFT OUTER JOIN CODIS CE  ON P.ESTAT = CE.C_CODI AND CE.TIPU' +
        'SCODI = '#39'ESTAT'#39
      '    ORDER BY P.DATASOLLICITUD'
      
        '    INTO :FACTURAT, :ESTAT, :DATASOLLICITUD, :NOMESCOLA, :NUM_GR' +
        'UP, :NUM_ALUMNES, :POBLACIO, :COMARCA, :HORARI, :CONTACTE,'
      
        '         :NOM, :COGNOM1, :COGNOM2, :CANVIS, :ID, :CURS_, :CURS3E' +
        'RESO, :CURS4RTESO, :CURS1ERBAT, :CURS2ONBAT,'
      
        '         :CICLESFORMATIUS, :ALTRESCURSOS, :PETICIODE, :PETICIODE' +
        'ALTRES, :EMAIL_ESCOLA, :TELEFON_ESCOLA, :N_ESTAT'
      '    DO BEGIN'
      '        CURS='#39#39';'
      '        IF (CURS3ERESO='#39'S'#39') THEN CURS='#39'3er ESO;'#39';'
      '        IF (CURS4RTESO='#39'S'#39') THEN CURS=CURS||'#39'4rt ESO;'#39';'
      '        IF (CURS1ERBAT='#39'S'#39') THEN CURS=CURS||'#39'1er BAT;'#39';'
      '        IF (CURS2ONBAT='#39'S'#39') THEN CURS=CURS||'#39'2on BAT;'#39';'
      
        '        IF (CICLESFORMATIUS='#39'S'#39') THEN CURS=CURS||'#39'CICLES FORMATI' +
        'US;'#39';'
      '        IF (ALTRESCURSOS='#39'S'#39') THEN'
      '        BEGIN'
      
        '            IF ((CURS_ IS NOT NULL) AND (CURS_ <> '#39#39')) THEN CURS' +
        '=CURS||CURS_;'
      
        '                                                       ELSE CURS' +
        '=CURS||'#39'ALTRES;'#39';'
      '        END;'
      ''
      
        '        IF ((CURS3ERESO='#39'N'#39') AND (CURS4RTESO='#39'N'#39') AND (CURS1ERBA' +
        'T='#39'N'#39') AND (CURS2ONBAT='#39'N'#39') AND (CICLESFORMATIUS='#39'N'#39') AND (ALTRE' +
        'SCURSOS='#39'N'#39'))'
      '        THEN BEGIN'
      '            IF (CURS_ IS NULL) THEN CURS='#39#39';'
      '                               ELSE CURS=CURS_;'
      '        END'
      '        SUSPEND;'
      '    END'
      'END')
    Dic1 = Processos
    Dic1Name = 'Processos'
    Abierta = False
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
    Left = 168
    Top = 16
  end
  object P_Cursos: THYSqlProc
    Projecto = wDataHola.ProjecteHola
    NombreDB = 'Cursos'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI TIMESTAMP,DATAF TIMESTAMP)'
      'RETURNS ('
      '  CURS VARCHAR(40),'
      '  NUM_PROCESSOS INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE CONTA INTEGER;'
      'BEGIN'
      ''
      '  /* 3er ESO */'
      '  CURS = '#39'3er ESO'#39';'
      
        '  SELECT COUNT(*) FROM PROCESSOS WHERE DATASOLLICITUD BETWEEN :D' +
        'ATAI AND :DATAF'
      '  AND CURS3ERESO = '#39'S'#39
      '  INTO :NUM_PROCESSOS;'
      ''
      '  SUSPEND;'
      ''
      '  /* 4rt ESO */'
      '  CURS = '#39'4rt ESO'#39';'
      
        '  SELECT COUNT(*) FROM PROCESSOS WHERE DATASOLLICITUD BETWEEN :D' +
        'ATAI AND :DATAF'
      '  AND CURS4RTESO = '#39'S'#39
      '  INTO :NUM_PROCESSOS;'
      ''
      '  SUSPEND;'
      ''
      '  /* 1er BAT */'
      '  CURS = '#39'1er BAT'#39';'
      
        '  SELECT COUNT(*) FROM PROCESSOS WHERE DATASOLLICITUD BETWEEN :D' +
        'ATAI AND :DATAF'
      '  AND CURS1ERBAT = '#39'S'#39
      '  INTO :NUM_PROCESSOS;'
      ''
      '  SUSPEND;'
      ''
      '  /* 2on BAT */'
      '  CURS = '#39'2on BAT'#39';'
      
        '  SELECT COUNT(*) FROM PROCESSOS WHERE DATASOLLICITUD BETWEEN :D' +
        'ATAI AND :DATAF'
      '  AND CURS2ONBAT = '#39'S'#39
      '  INTO :NUM_PROCESSOS;'
      ''
      '  SUSPEND;'
      ''
      '  /* Cicles Formatius */'
      '  CURS = '#39'Cicles Formatius'#39';'
      
        '  SELECT COUNT(*) FROM PROCESSOS WHERE DATASOLLICITUD BETWEEN :D' +
        'ATAI AND :DATAF'
      '  AND CICLESFORMATIUS = '#39'S'#39
      '  INTO :NUM_PROCESSOS;'
      ''
      '  SUSPEND;'
      ''
      '  /* Altres */'
      '  CURS = '#39'ALTRES'#39';'
      
        '  SELECT COUNT(*) FROM PROCESSOS WHERE DATASOLLICITUD BETWEEN :D' +
        'ATAI AND :DATAF'
      '  AND ALTRESCURSOS = '#39'S'#39
      '  INTO :NUM_PROCESSOS;'
      ''
      '  SUSPEND;'
      ''
      ''
      'END')
    Dic1 = Processos
    Dic1Name = 'Processos'
    Abierta = False
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
    Left = 240
    Top = 16
  end
  object P_EstadisticaMonitors: THYSqlProc
    Projecto = wDataHola.ProjecteHola
    NombreDB = 'EstadisticaMonitors'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  DATAI TIMESTAMP,'
      '  DATAF TIMESTAMP'
      ')'
      'RETURNS ('
      '  MONITOR VARCHAR(70),'
      '  DESCRIPCIO VARCHAR(25),'
      '  GRUPS INTEGER,'
      '  QUANTITAT INTEGER'
      ')'
      'AS'
      'BEGIN'
      ''
      '    /* De la mateixa comarca */'
      '    DESCRIPCIO='#39'De la mateixa comarca'#39';'
      
        '    FOR SELECT M.NOM||" "||M.COGNOM1||" "||M.COGNOM2 AS MONITOR,' +
        ' SUM(NUM_GRUP), COUNT(*)'
      '    FROM PROCESSOS P'
      '    JOIN PROFESSIONALS M ON P.MONITOR = M.ID'
      '    JOIN ESCOLES E ON P.ESCOLA = E.ID AND M.COMARCA = E.COMARCA'
      
        '    WHERE P.ESTAT = 4 AND P.DATASOLLICITUD BETWEEN :DATAI AND :D' +
        'ATAF'
      '    GROUP BY M.NOM, M.COGNOM1, M.COGNOM2'
      '    INTO :MONITOR, :GRUPS, :QUANTITAT'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END'
      ''
      '    /* De diferent comarca */'
      '    DESCRIPCIO='#39'De diferent comarca'#39';'
      
        '    FOR SELECT M.NOM||" "||M.COGNOM1||" "||M.COGNOM2 AS MONITOR,' +
        ' SUM(NUM_GRUP), COUNT(*)'
      '    FROM PROCESSOS P'
      '    JOIN PROFESSIONALS M ON P.MONITOR = M.ID'
      
        '    JOIN ESCOLES E ON P.ESCOLA = E.ID AND ((M.COMARCA <> E.COMAR' +
        'CA) OR (E.COMARCA IS NULL))'
      
        '    WHERE P.ESTAT = 4 AND P.DATASOLLICITUD BETWEEN :DATAI AND :D' +
        'ATAF'
      '    GROUP BY M.NOM, M.COGNOM1, M.COGNOM2'
      '    INTO :MONITOR, :GRUPS, :QUANTITAT'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END'
      ''
      '    /* Sense monitor assignat */'
      '    DESCRIPCIO='#39'Sense monitor assignat'#39';'
      '    MONITOR='#39#39';'
      '    SELECT SUM(NUM_GRUP), COUNT(*)'
      '    FROM PROCESSOS'
      '    WHERE ESTAT = 4 AND DATASOLLICITUD BETWEEN :DATAI AND :DATAF'
      '    AND MONITOR IS NULL'
      '    INTO :GRUPS, :QUANTITAT;'
      '    SUSPEND;'
      ''
      'END')
    Dic1 = Processos
    Dic1Name = 'Processos'
    Abierta = False
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
  object P_EstMoniMesos: THYSqlProc
    Projecto = wDataHola.ProjecteHola
    NombreDB = 'EstMoniMesos'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  ANYO INTEGER'
      ') RETURNS ('
      '  MES INTEGER,'
      '  MONITOR VARCHAR(70),'
      '  DESCRIPCIO VARCHAR(25),'
      '  GRUPS INTEGER,'
      '  QUANTITAT INTEGER'
      ') AS'
      'BEGIN'
      ''
      '  MES=1;'
      '  WHILE (MES<= 12) DO'
      '  BEGIN'
      '    /* De la mateixa comarca */'
      '    DESCRIPCIO='#39'De la mateixa comarca'#39';'
      
        '    FOR SELECT M.NOM||" "||M.COGNOM1||" "||M.COGNOM2 AS MONITOR,' +
        ' SUM(NUM_GRUP), COUNT(*)'
      '    FROM PROCESSOS P'
      '    JOIN PROFESSIONALS M ON P.MONITOR = M.ID'
      '    JOIN ESCOLES E ON P.ESCOLA = E.ID AND M.COMARCA = E.COMARCA'
      
        '    WHERE P.ESTAT = 4 AND F_MONTH(P.DATASOLLICITUD) = :MES AND F' +
        '_YEAR(P.DATASOLLICITUD)=:ANYO'
      '    GROUP BY M.NOM, M.COGNOM1, M.COGNOM2'
      '    INTO :MONITOR, :GRUPS, :QUANTITAT'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END'
      ''
      '    /* De diferent comarca */'
      '    DESCRIPCIO='#39'De diferent comarca'#39';'
      
        '    FOR SELECT M.NOM||" "||M.COGNOM1||" "||M.COGNOM2 AS MONITOR,' +
        ' SUM(NUM_GRUP), COUNT(*)'
      '    FROM PROCESSOS P'
      '    JOIN PROFESSIONALS M ON P.MONITOR = M.ID'
      
        '    JOIN ESCOLES E ON P.ESCOLA = E.ID AND ((M.COMARCA <> E.COMAR' +
        'CA) OR (E.COMARCA IS NULL))'
      
        '    WHERE P.ESTAT = 4 AND F_MONTH(P.DATASOLLICITUD) = :MES AND F' +
        '_YEAR(P.DATASOLLICITUD)=:ANYO'
      '    GROUP BY M.NOM, M.COGNOM1, M.COGNOM2'
      '    INTO :MONITOR, :GRUPS, :QUANTITAT'
      '    DO BEGIN'
      '        SUSPEND;'
      '    END'
      ''
      '    /* Sense monitor assignat */'
      '    DESCRIPCIO='#39'Sense monitor assignat'#39';'
      '    MONITOR='#39#39';'
      '    SELECT SUM(NUM_GRUP), COUNT(*)'
      '    FROM PROCESSOS'
      
        '    WHERE ESTAT = 4 AND F_MONTH(DATASOLLICITUD) = :MES AND F_YEA' +
        'R(DATASOLLICITUD)=:ANYO'
      '    AND MONITOR IS NULL'
      '    INTO :GRUPS, :QUANTITAT;'
      '    SUSPEND;'
      ''
      '    MES=MES+1;'
      '  END'
      'END')
    Dic1 = Processos
    Dic1Name = 'Processos'
    Abierta = False
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
    Left = 176
    Top = 72
  end
  object P_MesAny: THYSqlProc
    Projecto = wDataHola.ProjecteHola
    NombreDB = 'MesAny'
    ForceNombreDB = False
    Body.Strings = (
      '('
      '  ANYO CHAR(4)'
      ') RETURNS ('
      '  MES VARCHAR(8),'
      '  NUM_ESCOLES INTEGER,'
      '  NUM_MONITORS INTEGER,'
      '  NUM_ALUMNES INTEGER,'
      '  NUM_SESSIONS INTEGER,'
      '  NUM_GRUPS INTEGER'
      ') AS'
      '      DECLARE VARIABLE MESI INTEGER;'
      '      DECLARE VARIABLE T_ESCOLES INTEGER;'
      '      DECLARE VARIABLE T_MONITORS INTEGER;'
      '      DECLARE VARIABLE T_ALUMNES INTEGER;'
      '      DECLARE VARIABLE T_SESSIONS INTEGER;'
      '      DECLARE VARIABLE T_GRUPS INTEGER;'
      'BEGIN'
      ''
      '  /* INICIALITZEM TOTALS */'
      '  T_ESCOLES=0;T_MONITORS=0;T_ALUMNES=0;T_SESSIONS=0;T_GRUPS=0;'
      ''
      '  MESI = 1;'
      '  WHILE (MESI < 13) DO'
      '  BEGIN'
      '      /* INICIALITZEM VARIABLES */'
      
        '      NUM_ESCOLES = 0; NUM_MONITORS = 0; NUM_ALUMNES = 0; NUM_SE' +
        'SSIONS = 0; NUM_GRUPS = 0;'
      ''
      '      IF (MESI = 1) THEN MES = '#39'GENER'#39';'
      '      IF (MESI = 2) THEN MES = '#39'FEBRER'#39';'
      '      IF (MESI = 3) THEN MES = '#39'MAR'#199#39';'
      '      IF (MESI = 4) THEN MES = '#39'ABRIL'#39';'
      '      IF (MESI = 5) THEN MES = '#39'MAIG'#39';'
      '      IF (MESI = 6) THEN MES = '#39'JUNY'#39';'
      '      IF (MESI = 7) THEN MES = '#39'JULIOL'#39';'
      '      IF (MESI = 8) THEN MES = '#39'AGOST'#39';'
      '      IF (MESI = 9) THEN MES = '#39'SETEMBRE'#39';'
      '      IF (MESI = 10) THEN MES = '#39'OCTUBRE'#39';'
      '      IF (MESI = 11) THEN MES = '#39'NOVEMBRE'#39';'
      '      IF (MESI = 12) THEN MES = '#39'DESEMBRE'#39';'
      ''
      '      SELECT COUNT(DISTINCT ESCOLA) FROM PROCESSOS'
      '      WHERE F_MONTH(DATASOLLICITUD) = :MESI'
      '      AND F_YEAR(DATASOLLICITUD) = :ANYO'
      '      AND ESTAT <> 5  /* no anul'#183'lades */'
      '      INTO :NUM_ESCOLES;'
      ''
      '      IF (NUM_ESCOLES IS NULL) THEN NUM_ESCOLES = 0;'
      ''
      '      SELECT COUNT(DISTINCT MONITOR) FROM PROCESSOS'
      '      WHERE F_MONTH(DATASOLLICITUD) = :MESI'
      '      AND F_YEAR(DATASOLLICITUD) = :ANYO'
      '      AND ESTAT <> 5  /* no anul'#183'lades */'
      '      INTO :NUM_MONITORS;'
      ''
      '      IF (NUM_MONITORS IS NULL) THEN NUM_MONITORS = 0;'
      ''
      '      SELECT SUM(NUM_ALUMNES) FROM PROCESSOS'
      '      WHERE F_MONTH(DATASOLLICITUD) = :MESI'
      '      AND F_YEAR(DATASOLLICITUD) = :ANYO'
      '      AND ESTAT <> 5  /* no anul'#183'lades */'
      '      INTO :NUM_ALUMNES;'
      ''
      '      IF (NUM_ALUMNES IS NULL) THEN NUM_ALUMNES = 0;'
      ''
      '      SELECT COUNT(*) FROM PROCESSOS'
      '      WHERE F_MONTH(DATASOLLICITUD) = :MESI'
      '      AND F_YEAR(DATASOLLICITUD) = :ANYO'
      '      AND ESTAT <> 5  /* no anul'#183'lades */'
      '      INTO :NUM_SESSIONS;'
      ''
      '      IF (NUM_SESSIONS IS NULL) THEN NUM_SESSIONS = 0;'
      ''
      '      SELECT SUM(NUM_GRUP) FROM PROCESSOS'
      '      WHERE F_MONTH(DATASOLLICITUD) = :MESI'
      '      AND F_YEAR(DATASOLLICITUD) = :ANYO'
      '      AND ESTAT <> 5  /* no anul'#183'lades */'
      '      INTO :NUM_GRUPS;'
      ''
      '      IF (NUM_GRUPS IS NULL) THEN NUM_GRUPS = 0;'
      ''
      '      /* ACUMULEM TOTALS */'
      '      T_ESCOLES = T_ESCOLES + NUM_ESCOLES;'
      '      T_MONITORS = T_MONITORS + NUM_MONITORS;'
      '      T_ALUMNES = T_ALUMNES + NUM_ALUMNES;'
      '      T_SESSIONS = T_SESSIONS + NUM_SESSIONS;'
      '      T_GRUPS = T_GRUPS + NUM_GRUPS;'
      ''
      '      SUSPEND;'
      '      MESI = MESI + 1;'
      '  END'
      ''
      '  /* registre de totals */'
      '/*  MES = '#39'TOTALS'#39';'
      '  NUM_ESCOLES = T_ESCOLES;'
      '  NUM_MONITORS = T_MONITORS;'
      '  NUM_ALUMNES = T_ALUMNES;'
      '  NUM_SESSIONS = T_SESSIONS;'
      '  NUM_GRUPS = T_GRUPS;'
      ''
      '  SUSPEND;  -  a partir d'#39'ara l'#39'obtenim per programa */'
      ''
      
        '  /* TOTALS - 2/10/2012 - ELS TORNEM A FER PER PROCEDURE PERQU'#200' ' +
        'ES VOL DISTINC D'#39'ESCOLES I MONITORS */'
      '  MES='#39'TOT ANY'#39';'
      '  SELECT COUNT(DISTINCT ESCOLA) FROM PROCESSOS'
      '  WHERE F_YEAR(DATASOLLICITUD) = :ANYO'
      '  AND ESTAT <> 5  /* no anul'#183'lades */'
      '  INTO :NUM_ESCOLES;'
      ''
      '  IF (NUM_ESCOLES IS NULL) THEN NUM_ESCOLES = 0;'
      ''
      '  SELECT COUNT(DISTINCT MONITOR) FROM PROCESSOS'
      '  WHERE F_YEAR(DATASOLLICITUD) = :ANYO'
      '  AND ESTAT <> 5  /* no anul'#183'lades */'
      '  INTO :NUM_MONITORS;'
      ''
      '  IF (NUM_MONITORS IS NULL) THEN NUM_MONITORS = 0;'
      ''
      '  SELECT SUM(NUM_ALUMNES) FROM PROCESSOS'
      '  WHERE F_YEAR(DATASOLLICITUD) = :ANYO'
      '  AND ESTAT <> 5  /* no anul'#183'lades */'
      '  INTO :NUM_ALUMNES;'
      ''
      '  IF (NUM_ALUMNES IS NULL) THEN NUM_ALUMNES = 0;'
      ''
      '  SELECT COUNT(*) FROM PROCESSOS'
      '  WHERE F_YEAR(DATASOLLICITUD) = :ANYO'
      '  AND ESTAT <> 5  /* no anul'#183'lades */'
      '  INTO :NUM_SESSIONS;'
      ''
      '  IF (NUM_SESSIONS IS NULL) THEN NUM_SESSIONS = 0;'
      ''
      '  SELECT SUM(NUM_GRUP) FROM PROCESSOS'
      '  WHERE F_YEAR(DATASOLLICITUD) = :ANYO'
      '  AND ESTAT <> 5  /* no anul'#183'lades */'
      '  INTO :NUM_GRUPS;'
      ''
      '  IF (NUM_GRUPS IS NULL) THEN NUM_GRUPS = 0;'
      '  SUSPEND;'
      ''
      'END')
    Dic1 = Processos
    Dic1Name = 'Processos'
    Abierta = False
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
    Top = 72
  end
end
