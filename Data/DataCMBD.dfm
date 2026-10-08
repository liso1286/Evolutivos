object wDataCMBD: TwDataCMBD
  OldCreateOrder = False
  Left = 1147
  Top = 208
  Height = 264
  Width = 215
  object cmbd_aea: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcMODELS
        Nombre = 'c_tractament'
        NombreDB = 'c_tractament'
        Longitud = 8
        Consulta = 'tractament'
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'data publica'
        NombreDB = 'data_publica'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'data visita'
        NombreDB = 'data_visita'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'data primera'
        NombreDB = 'data_primera'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'diagnostic'
        NombreDB = 'diagnostic'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'especialitat'
        NombreDB = 'especialitat'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'tipus visita'
        NombreDB = 'tipus_visita'
        Longitud = 2
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'publicacio id'
        NombreDB = 'publicacio_id'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'obs'
        NombreDB = 'obs'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'entorn'
        NombreDB = 'entorn'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'data cosulta'
        NombreDB = 'data_consulta'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'data inicial'
        NombreDB = 'data_inicial'
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
          'c_tractament'
          'entorn')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'tractament'
        NombreDB = 'tractament'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'c_tractament')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Tractaments
        ForaneoCampos.Strings = (
          'N'#186' Tractament')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'tractament'
        Master = wDataBasics.Tractaments
        BuscaOrigen.Strings = (
          'c_tractament')
        CopiarOrigen.Strings = (
          'c_tractament')
        CopiarMaster.Strings = (
          'N'#186' Tractament')
        BuscaMaster.Strings = (
          'N'#186' Tractament')
      end>
    Nombre = 'cmbd_aea'
    NombreTabla = 'cmbd_aea'
    Organiza = tbBase
    CamposVer.Strings = (
      'c_tractament'
      'data publica'
      'data visita'
      'data primera'
      'diagnostic'
      'especialitat'
      'tipus visita'
      'publicacio id')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 16
    Top = 16
  end
  object tractaments_cmbd_aea: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'cmbd_aea'
    ForceNombreDB = False
    Body.Strings = (
      '(data_maxima datetime)'
      'RETURNS ()'
      'AS'
      '      DECLARE VARIABLE xxxxxx tipoxxxxx;'
      'BEGIN'
      '      '
      
        '   FOR SELECT t.c_tractament, t.C_PRESTACIO, t.DATA_INGRES, t.CM' +
        'BD_AEA, t.C_DIAGNOSTICINGRES, e.CODISIRE'
      '   FROM tractaments t'
      '   LEFT JOIN metges m ON m.CODI = t.C_COORDINADOR'
      '   LEFT JOIN ESPECIAL e ON e.C_ESPECIAL = m.C_ESPECIAL'
      '   LEFT JOIN DRETSPRESTA DP ON dp.c_prestacio = t.c_prestacio'
      '   WHERE dp.c_dret = '#39'P165'#39
      '   and not e.c_especial in ('#39'30'#39','#39'31'#39','#39'32'#39')'
      '   ORDER BY t.DATA_INGRES, t.HORA'
      '      '
      '        SUSPEND;'
      'END')
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
    Left = 112
    Top = 16
  end
  object visites: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'cmbd_aea'
    ForceNombreDB = False
    Body.Strings = (
      
        'SELECT t.c_historia, t.c_tractament, t.C_PRESTACIO, t.c_motiu, t' +
        '.c_modalitat, t.DATA_INGRES, t.hora, t.CMBD_AEA, t.C_DIAGNOSTICI' +
        'NGRES, e.CODISIRE'
      '   FROM tractaments t'
      '   LEFT JOIN metges m ON m.CODI = t.C_COORDINADOR'
      '   LEFT JOIN ESPECIAL e ON e.C_ESPECIAL = m.C_ESPECIAL'
      '   LEFT JOIN DRETSPRESTA DP ON dp.c_prestacio = t.c_prestacio'
      
        '   join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI =' +
        ' "ESTATFACTU" and X.R_CODI <> 9'
      '   WHERE dp.c_dret = '#39'P165'#39
      '   and not e.c_especial in ('#39'30'#39','#39'31'#39','#39'32'#39')')
    Select.Strings = (
      
        'SELECT t.c_tractament, t.C_PRESTACIO, t.DATA_INGRES, t.CMBD_AEA,' +
        ' t.C_DIAGNOSTICINGRES, e.CODISIRE'
      '   FROM tractaments t'
      '   LEFT JOIN metges m ON m.CODI = t.C_COORDINADOR'
      '   LEFT JOIN ESPECIAL e ON e.C_ESPECIAL = m.C_ESPECIAL'
      '   LEFT JOIN DRETSPRESTA DP ON dp.c_prestacio = t.c_prestacio'
      
        '   join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI =' +
        ' "ESTATFACTU" and X.R_CODI <> 9'
      '   WHERE dp.c_dret = '#39'P165'#39
      '   and not e.c_especial in ('#39'30'#39','#39'31'#39','#39'32'#39')'
      '   ORDER BY t.DATA_INGRES, t.HORA')
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
    Left = 32
    Top = 80
  end
  object altes: THYSqlView
    Projecto = wData.Projecte
    NombreDB = 'cmbd_ah'
    ForceNombreDB = False
    Body.Strings = (
      
        'SELECT t.c_tractament, t.C_PRESTACIO, t.DATA_INGRES, T.HORA, t.d' +
        'ata_alta, T.HORA_ALTA, t.CMBD_AEA, t.C_DIAGNOSTICINGRES, T.publi' +
        'cacio_cmdb'
      '   FROM tractaments t'
      '   LEFT JOIN metges m ON m.CODI = t.C_COORDINADOR'
      '   LEFT JOIN ESPECIAL e ON e.C_ESPECIAL = m.C_ESPECIAL'
      '   LEFT JOIN DRETSPRESTA DP ON dp.c_prestacio = t.c_prestacio'
      
        '   join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI =' +
        ' "ESTATFACTU" and X.R_CODI <> 9'
      '   WHERE dp.c_dret = '#39'P143'#39)
    Select.Strings = (
      
        'SELECT t.c_tractament, t.C_PRESTACIO, t.DATA_INGRES, t.CMBD_AEA,' +
        ' t.C_DIAGNOSTICINGRES, T.publicacio_cmdb'
      '   FROM tractaments t'
      '   LEFT JOIN metges m ON m.CODI = t.C_COORDINADOR'
      '   LEFT JOIN ESPECIAL e ON e.C_ESPECIAL = m.C_ESPECIAL'
      '   LEFT JOIN DRETSPRESTA DP ON dp.c_prestacio = t.c_prestacio'
      
        '   join CODICAMPS X on T.C_ESTATFAC = X.C_CODI and X.TIPUSCODI =' +
        ' "ESTATFACTU" and X.R_CODI <> 9'
      '   WHERE dp.c_dret = '#39'P143'#39
      '   ORDER BY t.DATA_INGRES, t.HORA'
      '   ')
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
    Left = 105
    Top = 84
  end
end
