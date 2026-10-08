object wDataBlocQuirurgic: TwDataBlocQuirurgic
  OldCreateOrder = False
  Left = 559
  Top = 310
  Height = 369
  Width = 696
  object BQuirurgic: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Intervenci'#243
        NombreDB = 'c_interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'clau'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Tractament'
        NombreDB = 'c_tractament'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'tractaments'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'for'#224'nia a tractaments'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Hist'#242'ria'
        NombreDB = 'c_historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'filiacio'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'for'#224'nia a filiaci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus prestaci'#243
        NombreDB = 'tipus_presta'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'ambulatori / ingr'#233's. A TRACTAMENTS (data_alta = null) o a LLISTA' +
          ' D'#39'ESPERA'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Diag. operaci'#243
        NombreDB = 'c_diag_op'
        Longitud = 15
        Consulta = 'diag_op'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a codis ICD'
      end
      item
        Aplica = kcCaracter
        Nombre = 'N Diag. operaci'#243
        NombreDB = 'n_diag_op'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Literal que entra el  metge'
      end
      item
        Aplica = kcCaracter
        Nombre = 'G Diag. operaci'#243
        NombreDB = 'g_diag_op'
        Longitud = 15
        Consulta = 'gdiag_op'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a sin'#242'nims ICD'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Procediment'
        NombreDB = 'c_procediment'
        Longitud = 15
        Consulta = 'proced'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a codis ICD'
      end
      item
        Aplica = kcCaracter
        Nombre = 'N Procediment'
        NombreDB = 'n_procediment'
        Longitud = 80
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Literal que entra el  metge'
      end
      item
        Aplica = kcCaracter
        Nombre = 'G Procediment'
        NombreDB = 'g_procediment'
        Longitud = 15
        Consulta = 'gproced'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'consulta a sin'#242'nims ICD'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data / hora previstes'
        NombreDB = 'data_prev'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy" "hh":"nn'
        MaskEdit = '!99/99/9999 99:99;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'data i hora previstes'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Anest'#232'sia prevista'
        NombreDB = 't_anestesia'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'tipus d'#39'anest'#232'sia prevista. Literal lliure.'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pot dinar?'
        NombreDB = 'dinarSN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'S/N - obsolet'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Dieta absoluta'
        NombreDB = 'dieta_absSN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'S/N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cal rasurar la zona?'
        NombreDB = 'RasurarSN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S/N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cal via venosa?'
        NombreDB = 'viaSN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'S/N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cal tenir sang?'
        NombreDB = 'sangSN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'S/N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cal premedicaci'#243' sedant?'
        NombreDB = 'premedicacioSN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        Comentario = 'S/N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Zones a preparar'
        NombreDB = 'zones'
        Longitud = 94
        zType = tcIB_Char
        zNotNull = False
        Comentario = 
          'Guardo un vector on cada posici'#243' indica si el quadrat correspone' +
          'nt est'#224' pintat.'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions'
        NombreDB = 'observacions'
        Longitud = 255
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'observacions del metge sobre la preparaci'#243' operat'#242'ria'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge sol'#183'licitant'
        NombreDB = 'c_metge_prepara'
        Longitud = 5
        Consulta = 'metge'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'metge que entra la preparaci'#243' operat'#242'ria'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data sol'#183'licitud'
        NombreDB = 'data_prepara'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy" "hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Bany general (incl'#242's cabell)'
        NombreDB = 'item1_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Bany'
        NombreDB = 'item1_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Neteja d'#39'ungles'
        NombreDB = 'item2_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Ungles'
        NombreDB = 'item2_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Rasurat'
        NombreDB = 'item3_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Rasurat'
        NombreDB = 'item3_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pintat de la zona operat'#242'ria'
        NombreDB = 'item4_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Pintat'
        NombreDB = 'item4_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Col'#183'lector col'#183'locat'
        NombreDB = 'item5_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Col'#183'lector'
        NombreDB = 'item5_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'S.V.P. col'#183'locada'
        NombreDB = 'item6_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf S.V.P.'
        NombreDB = 'item6_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Premedicaci'#243' administrada'
        NombreDB = 'item7_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Premedicaci'#243
        NombreDB = 'item7_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Demanada sang'
        NombreDB = 'item8_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Sang'
        NombreDB = 'item8_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Retirada de joies'
        NombreDB = 'item9_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Joies'
        NombreDB = 'item9_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Retirada de pintures'
        NombreDB = 'item10_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Pintures'
        NombreDB = 'item10_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Retirada de pr'#242'tesis'
        NombreDB = 'item11_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Pr'#242'tesi'
        NombreDB = 'item11_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Via venosa'
        NombreDB = 'item12_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Via'
        NombreDB = 'item12_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Constants'
        NombreDB = 'item13_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Constants'
        NombreDB = 'item13_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'RX'
        NombreDB = 'item14_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf RX'
        NombreDB = 'item14_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'E.C.G.'
        NombreDB = 'item15_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf E.C.G.'
        NombreDB = 'item15_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Laboratori'
        NombreDB = 'item16_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Laboratori'
        NombreDB = 'item16_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Documentaci'#243' lliurada'
        NombreDB = 'item17_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Documentaci'#243
        NombreDB = 'item17_I'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data realitzaci'#243' cures'
        NombreDB = 'data_cures'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy" "hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Cirurgi'#224
        NombreDB = 'c_cirurgia'
        Longitud = 5
        Consulta = 'cirurgia'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          'Consulta a metges. Filtre C_GRUP = '#39'ME'#39'. Dret E11 per especialit' +
          'at'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Altre cirurgi'#224
        NombreDB = 'n_cirurgia'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'literal per cirurgi'#224' no registrat a "Metges" - obsolet'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Anestesi'#242'leg'
        NombreDB = 'c_anestesioleg'
        Longitud = 5
        Consulta = 'anest'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          'Consulta a metges. Filtre C_GRUP = '#39'ME'#39'. Dret E10 per especialit' +
          'at'
      end
      item
        Aplica = kcCaracter
        Nombre = 'N Procediment 2'
        NombreDB = 'n_procediment2'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 
          'Literal que entra el metge. '#201's el procediment q realment es real' +
          'itza'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Tipus anest'#232'sia'
        NombreDB = 'c_anestesia'
        Longitud = 2
        Consulta = 'anestesia'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Codicamps  "ANESTESIA"'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Pr'#242'tesi'
        NombreDB = 'c_protesi'
        Longitud = 15
        Consulta = 'protesi'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'CodicampsAlfa   '#39'SI'#39' (sense determinar), '#39'NO'#39', codis'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Profilaxi'
        NombreDB = 'c_profilaxi'
        Longitud = 2
        Consulta = 'profilaxi'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'fer FK a taula profilaxis'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Tipus cirurgia'
        NombreDB = 'c_tipuscirurgia'
        Longitud = 2
        Consulta = 'tipuscir'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Codicamps "CIRURGIA"'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Bi'#242'psia'
        NombreDB = 'c_biopsia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'N'#186' de peces trameses a A.P.'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Tipus intervenci'#243
        NombreDB = 'c_tipusinterv'
        Longitud = 2
        Consulta = 'tipusinterv'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Codicamps  "TIPUSINTERV"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Quir'#242'fan'
        NombreDB = 'c_quirofan'
        Longitud = 2
        Consulta = 'quirofan'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Codicamps  "QUIROFAN"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Especialitat'
        NombreDB = 'c_especialitat'
        Longitud = 2
        Consulta = 'especialit'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Codicamps  "ESPECIALITAT"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Sang'
        NombreDB = 'c_sang'
        Longitud = 2
        Consulta = 'sang'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Codicamps  "SANG" - actualment nom'#233's 0-No, 1-S'#237
      end
      item
        Aplica = kcMODELS
        Nombre = 'Bosses'
        NombreDB = 'bosses'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'N'#186' de bosses - obsolet'
      end
      item
        Aplica = kcMODELS
        Nombre = 'concentrat hematies'
        NombreDB = 'conchematies'
        Longitud = 2
        MaskEdit = '!99;1; '
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'n'#250'mero de bosses'
      end
      item
        Aplica = kcMODELS
        Nombre = 'plaquetes'
        NombreDB = 'plaquetes'
        Longitud = 2
        MaskEdit = '!99;1; '
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'n'#250'mero de bosses'
      end
      item
        Aplica = kcMODELS
        Nombre = 'plasma fresc'
        NombreDB = 'plasmafresc'
        Longitud = 2
        MaskEdit = '!99;1; '
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'n'#250'mero de bosses'
      end
      item
        Aplica = kcMODELS
        Nombre = 'sang total'
        NombreDB = 'sangtotal'
        Longitud = 2
        MaskEdit = '!99;1; '
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'n'#250'mero de bosses'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data entrada'
        NombreDB = 'data_entrada'
        Longitud = 10
        MaskDisplay = 'dd"/"mm"/"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'Data intervenci'#243' i hora entrada quir'#242'fan'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Inici Anest'#232'sia'
        NombreDB = 'tempsA'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'el que importa '#233's l'#39'hora'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Inici Intervenci'#243
        NombreDB = 'tempsB'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'el que importa '#233's l'#39'hora'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Fi intervenci'#243
        NombreDB = 'tempsC'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'el que importa '#233's l'#39'hora'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Sortida '#192'rea Quir.'
        NombreDB = 'tempsD'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'el que importa '#233's l'#39'hora'
      end
      item
        Aplica = kcMemo
        Nombre = 'Comentari'
        NombreDB = 'comentari'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
        Comentario = 'Camp memo'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Entrada'
        NombreDB = 'entrada'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 
          '= data_entrada, serveix per tenir l'#39'hora d'#39'entrada, es calcula p' +
          'er programa'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Motiu anul'#183'laci'#243
        NombreDB = 'anulacio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'motiu d'#39'anul'#183'laci'#243' de la intervenci'#243
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge anul'#183'laci'#243
        NombreDB = 'm_anulacio'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'metge que anu'#183'la la intervenci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Data anul'#183'laci'#243
        NombreDB = 'data_anulacio'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy" "hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
        Comentario = 'data d'#39'anul'#183'laci'#243' de la intervenci'#243
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat intervenci'#243
        NombreDB = 'estat'
        Longitud = 2
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = True
        zDefault = '0'
        Comentario = 'codicamps "ESTATQUIROFAN"'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Numeraci'#243
        NombreDB = 'numeracio'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'numeraci'#243' "oficial" (com entrada i sortida) - obsolet'
      end
      item
        Aplica = kcMODELS
        Nombre = 'N'#250'm. Intervenci'#243
        NombreDB = 'num_interv'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'compta el n'#250'mero d'#39'intervencions del tractament.'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge finalitzaci'#243
        NombreDB = 'c_metge_fi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'metge que omple el full quir'#250'rgic met'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fi metge'
        NombreDB = 'data_metge_fi'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy" "hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Infermer/a finalitzaci'#243
        NombreDB = 'c_infer_fi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'infermer-a que omple el full quir'#250'rgic inf'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data fi ifermeria'
        NombreDB = 'data_infer_fi'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy" "hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'C Espera'
        NombreDB = 'c_espera'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'per trobar el tractament que li correspon, a la taula ESPERA'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Tipus Material'
        NombreDB = 'TipusMaterial'
        Longitud = 4
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'nom'#233's visible per Farmacia.'
      end
      item
        Aplica = kcMemo
        Nombre = 'Coment Farmacia'
        NombreDB = 'ComentFarmacia'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
        Comentario = 'nom'#233's visible per Farmacia.'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Polsera Identificaci'#243
        NombreDB = 'item18_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Polsera'
        NombreDB = 'item18_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Pacient en dej'#250
        NombreDB = 'item19_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Pacient'
        NombreDB = 'item19_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ATB Profilaxi administrada'
        NombreDB = 'item20_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf ATB'
        NombreDB = 'item20_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = '2a dosi ATB'
        NombreDB = 'item21_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf ATB 2'
        NombreDB = 'item21_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Full de medicaci'#243
        NombreDB = 'item22_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf full medicaci'#243
        NombreDB = 'item22_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat enquesta CMA'
        NombreDB = 'estat_CMA'
        Longitud = 2
        Consulta = 'estatCMA'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Complicacions intraoperat'#242'ries'
        NombreDB = 'ComplicaIntraSN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Consentiment informat'
        NombreDB = 'item23_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf consentiment informat'
        NombreDB = 'item23_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Preoperatori'
        NombreDB = 'item24_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Preoperatori'
        NombreDB = 'item24_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Consentiment anest'#232'sic'
        NombreDB = 'item25_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = True
        zDefault = 'NO'
        Comentario = 'S'#205' / NO / NP (no precisa)'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Consentiment anest'#232'sic'
        NombreDB = 'item25_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi infermer/a'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID Neuro Diagn'#242'stic'
        NombreDB = 'IDNeuroD'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID Neuro Procediment'
        NombreDB = 'IDNeuroP'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Reintervenci'#243
        NombreDB = 'Reintervencio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Verificaci'#243' entrada'
        NombreDB = 'VerificaEntrada'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Sign In'
        NombreDB = 'SignIn'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Time Out'
        NombreDB = 'TimeOut'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Sign Out'
        NombreDB = 'SignOut'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Per complicaci'#243' o mal funcionament'
        NombreDB = 'PerComplicacio'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat de facturacio'
        NombreDB = 'c_estatfac'
        Longitud = 10
        Consulta = 'EstatFac'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Centre facturacio'
        NombreDB = 'c_centrefac'
        Longitud = 2
        Consulta = 'Centrefac'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Client'
        NombreDB = 'c_client'
        Longitud = 3
        Consulta = 'Client'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Delegacio'
        NombreDB = 'c_delegacio'
        Longitud = 4
        Consulta = 'Delegacio'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari modificaci'#243
        NombreDB = 'User_UModi'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data darrera modificaci'#243
        NombreDB = 'Data_UModi'
        Longitud = 19
        MaskDisplay = 'dd"/"mm"/"yyyy" "hh":"nn":"ss'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Realitzada'
        NombreDB = 'Realitzada'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'S/N o null'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Pr'#242'tesi 2'
        NombreDB = 'C_Protesi2'
        Longitud = 15
        Consulta = 'protesi2'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Bilateral'
        NombreDB = 'Bilateral'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'Preu'
        NombreDB = 'Preu'
        Longitud = 13
        MaskDisplay = '#,##0.###;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Refer'#232'ncia'
        NombreDB = 'Referencia'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Implant'
        NombreDB = 'Implant'
        Longitud = 1
        Consulta = 'implant'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Enviat a SAP'
        NombreDB = 'Enviat_SAP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
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
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM SubCodi'
        NombreDB = 'VersioCIM_G'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Descontaminaci'#243' pell'
        NombreDB = 'Descont_Pell'
        Longitud = 2
        Consulta = 'descontpell'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Higiene bucal'
        NombreDB = 'item26_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Higiene bucal'
        NombreDB = 'item26_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Bata de paper'
        NombreDB = 'item27_OK'
        Longitud = 2
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inf Bata paper'
        NombreDB = 'item27_i'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora inici ATB 1'
        NombreDB = 'HoraIniATB1'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora fi ATB 1'
        NombreDB = 'HoraFiATB1'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora inici ATB 2'
        NombreDB = 'HoraIniATB2'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Hora fi ATB 2'
        NombreDB = 'HoraFiATB2'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!90:00;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Control temperatura'
        NombreDB = 'CtlTemperatura'
        Longitud = 2
        Consulta = 'temperatura'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Control glic'#232'mia'
        NombreDB = 'CtlGlicemia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Cal demanar material?'
        NombreDB = 'MaterialSN'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'S/N'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Validat'
        NombreDB = 'Validat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'ur'#242'legs validen que tingui proves preoperatori recents'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Usuari validaci'#243
        NombreDB = 'C_Usr_Valida'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data  validaci'#243
        NombreDB = 'Data_Valida'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi motiu anul'#183'laci'#243' intervenci'#243
        NombreDB = 'C_Motiu_Anula'
        Longitud = 3
        Consulta = 'motiu_anula'
        zType = tcIB_Smallint
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'c_interv'
        NombreDB = 'c_interv'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Intervenci'#243)
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'historia'
        NombreDB = 'historia'
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
        Nombre = 'c_tractament'
        NombreDB = 'c_tractament'
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
        Nombre = 'cirurgia'
        NombreDB = 'cirurgia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Cirurgi'#224)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
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
          'Hist'#242'ria'
          'Data entrada')
        Tipo = tiSecundario
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'num_interv'
        NombreDB = 'num_interv'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Tractament'
          'N'#250'm. Intervenci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'entrada'
        NombreDB = 'entrada'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data entrada')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'especialitat'
        NombreDB = 'especialitat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Especialitat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'metge_fi'
        NombreDB = 'metge_fi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Metge finalitzaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'infer_fi'
        NombreDB = 'infer_fi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'Infermer/a finalitzaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'espera'
        NombreDB = 'espera'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = True
        CamposOrden.Strings = (
          'C Espera')
        Tipo = tiForaneo
        ForaneoDic = wDataAdmisio.Espera
        ForaneoCampos.Strings = (
          'N'#186' Llista Espera')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'profilaxi'
        NombreDB = 'profilaxi'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Profilaxi')
        Tipo = tiForaneo
        ForaneoDic = wDataOMComun.Profilaxis
        ForaneoCampos.Strings = (
          'Codi')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'realitzada'
        NombreDB = 'realitzada'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Realitzada')
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
          'Estat intervenci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'validat'
        NombreDB = 'validat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Validat')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'diag_op'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'C Diag. operaci'#243)
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'C Diag. operaci'#243)
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
        ValidateValue = True
      end
      item
        Nombre = 'proced'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'C Procediment')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'C Procediment')
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
        ValidateValue = True
      end
      item
        Nombre = 'cirurgia'
        Master = wDataBasics.MetgesVirtual
        BuscaOrigen.Strings = (
          'C Cirurgi'#224)
        CopiarOrigen.Strings = (
          'C Cirurgi'#224)
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
        WhereFiltro = 'C_GRUP = "ME"'
        ValidateValue = True
      end
      item
        Nombre = 'anest'
        Master = wDataBasics.MetgesVirtual
        BuscaOrigen.Strings = (
          'C Anestesi'#242'leg')
        CopiarOrigen.Strings = (
          'C Anestesi'#242'leg')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
        WhereFiltro = 'C_GRUP = "ME"'
        ValidateValue = True
      end
      item
        Nombre = 'anestesia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Tipus anest'#232'sia')
        CopiarOrigen.Strings = (
          'C Tipus anest'#232'sia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ANESTESIA"'
        ValidateValue = True
      end
      item
        Nombre = 'protesi'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'C Pr'#242'tesi')
        CopiarOrigen.Strings = (
          'C Pr'#242'tesi')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = "PROTESI"'
        ValidateValue = True
      end
      item
        Nombre = 'tipuscir'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Tipus cirurgia')
        CopiarOrigen.Strings = (
          'C Tipus cirurgia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "CIRURGIA"'
        ValidateValue = True
      end
      item
        Nombre = 'tipusinterv'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Tipus intervenci'#243)
        CopiarOrigen.Strings = (
          'C Tipus intervenci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "TIPUSINTERV"'
        ValidateValue = True
      end
      item
        Nombre = 'quirofan'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Quir'#242'fan')
        CopiarOrigen.Strings = (
          'C Quir'#242'fan')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "QUIROFAN"'
        ValidateValue = True
      end
      item
        Nombre = 'especialit'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Especialitat')
        CopiarOrigen.Strings = (
          'C Especialitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESPECIALITAT"'
        ValidateValue = True
      end
      item
        Nombre = 'sang'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Sang')
        CopiarOrigen.Strings = (
          'C Sang')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "SANG"'
        ValidateValue = True
      end
      item
        Nombre = 'metge'
        Master = wDataBasics.MetgesVirtual
        BuscaOrigen.Strings = (
          'Metge sol'#183'licitant')
        CopiarOrigen.Strings = (
          'Metge sol'#183'licitant')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
        ValidateValue = True
      end
      item
        Nombre = 'estat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat intervenci'#243)
        CopiarOrigen.Strings = (
          'Estat intervenci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATQUIROFAN"'
        ValidateValue = True
      end
      item
        Nombre = 'filiacio'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Hist'#242'ria')
        CopiarOrigen.Strings = (
          'Hist'#242'ria')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'tractaments'
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
        Nombre = 'profilaxi'
        Master = wDataOMComun.Profilaxis
        BuscaOrigen.Strings = (
          'C Profilaxi')
        CopiarOrigen.Strings = (
          'C Profilaxi')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
      end
      item
        Nombre = 'estatCMA'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat enquesta CMA')
        CopiarOrigen.Strings = (
          'Estat enquesta CMA')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESTATPOST'#39
      end
      item
        Nombre = 'gdiag_op'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'G Diag. operaci'#243)
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'G Diag. operaci'#243)
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM SubCodi')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'gproced'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'G Procediment')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'G Procediment')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM SubCodi')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end
      item
        Nombre = 'EstatFac'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat de facturacio')
        CopiarOrigen.Strings = (
          'Estat de facturacio')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESTATFACTU"'
      end
      item
        Nombre = 'Centrefac'
        Master = wDataFactu.CentreFac
        BuscaOrigen.Strings = (
          'Centre facturacio')
        CopiarOrigen.Strings = (
          'Centre facturacio')
        CopiarMaster.Strings = (
          'N'#186' Centre')
        BuscaMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Client'
        Master = wDataFactu.Clients
        BuscaOrigen.Strings = (
          'Centre facturacio'
          'Client')
        CopiarOrigen.Strings = (
          'Centre facturacio'
          'Client')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
        FiltroOrigen.Strings = (
          'Centre facturacio')
        FiltroMaster.Strings = (
          'N'#186' Centre')
      end
      item
        Nombre = 'Delegacio'
        Master = wDataFactu.Delega
        BuscaOrigen.Strings = (
          'Centre facturacio'
          'Client'
          'Delegacio')
        CopiarOrigen.Strings = (
          'Centre facturacio'
          'Client'
          'Delegacio')
        CopiarMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        BuscaMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client'
          'N'#186' Delegaci'#243)
        FiltroOrigen.Strings = (
          'Centre facturacio'
          'Client')
        FiltroMaster.Strings = (
          'N'#186' Centre'
          'N'#186' Client')
      end
      item
        Nombre = 'protesi2'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'C Pr'#242'tesi 2')
        CopiarOrigen.Strings = (
          'C Pr'#242'tesi 2')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = "PROTESI" AND ORDRE>0'
      end
      item
        Nombre = 'implant'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Implant')
        CopiarOrigen.Strings = (
          'Implant')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'BQ.IMPLANT'#39
      end
      item
        Nombre = 'descontpell'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Descontaminaci'#243' pell')
        CopiarOrigen.Strings = (
          'Descontaminaci'#243' pell')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "BQ.DESCONT_PELL"'
      end
      item
        Nombre = 'temperatura'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Control temperatura')
        CopiarOrigen.Strings = (
          'Control temperatura')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "BQ.CTL_TEMPERATURA"'
      end
      item
        Nombre = 'motiu_anula'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Codi motiu anul'#183'laci'#243' intervenci'#243)
        CopiarOrigen.Strings = (
          'Codi motiu anul'#183'laci'#243' intervenci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI='#39'BQ.MOTIU_ANULA'#39
      end>
    Nombre = 'Bloc Quir'#250'rgic'
    NombreTabla = 'BQuirurgic'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Intervenci'#243
      'C Tractament'
      'Hist'#242'ria'
      'N Diag. operaci'#243
      'N Procediment'
      'Data / hora previstes'
      'Estat intervenci'#243
      'Estat enquesta CMA')
    IndiceVer = 'histdata'
    Navegar = False
    Nivel = 8
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37524.569203912
    Left = 32
    Top = 80
  end
  object BQProcediments: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Intervenci'#243
        NombreDB = 'c_interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'for'#224'nia'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'c intervenci'#243
        Comentario = 'ordre dels altres procediments'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Procediment'
        NombreDB = 'c_procediment'
        Longitud = 15
        Consulta = 'proced'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a codis ICD'
      end
      item
        Aplica = kcCaracter
        Nombre = 'N Procediment'
        NombreDB = 'n_procediment'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Literal que entra el  metge'
      end
      item
        Aplica = kcCaracter
        Nombre = 'G Procediment'
        NombreDB = 'g_procediment'
        Longitud = 15
        Consulta = 'gproced'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a sin'#242'nims ICD'
      end
      item
        Aplica = kcCaracter
        Nombre = 'ID Neuro Procediment'
        NombreDB = 'IDNEUROP'
        Longitud = 15
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
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Versi'#243' CIM SubCodi'
        NombreDB = 'VersioCIM_G'
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
          'C Intervenci'#243
          'Ordre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'c_intervencio'
        NombreDB = 'c_intervencio'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C Intervenci'#243)
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'proced'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM'
          'C Procediment')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM'
          'C Procediment')
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
        ValidateValue = True
      end
      item
        Nombre = 'gproced'
        Master = wDataCodis.CodiICD
        BuscaOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'G Procediment')
        CopiarOrigen.Strings = (
          'Versi'#243' CIM SubCodi'
          'G Procediment')
        CopiarMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        BuscaMaster.Strings = (
          'Versi'#243' CIM'
          'C'#243'di')
        FiltroOrigen.Strings = (
          'Versi'#243' CIM SubCodi')
        FiltroMaster.Strings = (
          'Versi'#243' CIM')
      end>
    Nombre = 'Procediments'
    NombreTabla = 'BQProcediments'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Intervenci'#243
      'Ordre'
      'C Procediment'
      'N Procediment')
    IndiceVer = 'clau'
    Navegar = False
    Nivel = 11
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37509.7809443634
    Left = 114
    Top = 144
  end
  object BQAjudants: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Intervenci'#243
        NombreDB = 'c_interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'For'#224'nia a BQuirurgic'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Metge'
        NombreDB = 'c_metge'
        Longitud = 5
        Consulta = 'metge'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a metges. For'#224'nia a Metges'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Altre ajudant'
        NombreDB = 'n_ajudant'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Literal per a ajudant no registrat a "Metges"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tipus'
        NombreDB = 'tipus'
        Longitud = 1
        Consulta = 'personal'
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'A'
        Comentario = 'A ajudant, I instrumentista, C: infer circulant, X: auxiliar'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'c intervenci'#243
      end>
    Indices = <
      item
        Nombre = 'clau'
        NombreDB = 'clau'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Intervenci'#243
          'Tipus'
          'Ordre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'intervencio'
        NombreDB = 'intervencio'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C Intervenci'#243)
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
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
          'C Metge')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'metge'
        Master = wDataBasics.MetgesVirtual
        BuscaOrigen.Strings = (
          'C Metge')
        CopiarOrigen.Strings = (
          'C Metge')
        CopiarMaster.Strings = (
          'Codi')
        BuscaMaster.Strings = (
          'Codi')
        ValidateValue = True
      end
      item
        Nombre = 'personal'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Tipus')
        CopiarOrigen.Strings = (
          'Tipus')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'BQ_PERSONAL'#39
      end>
    Nombre = 'Altres ajudants i instrumentistes'
    NombreTabla = 'BQAjudants'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Intervenci'#243
      'C Metge'
      'Tipus'
      'Ordre'
      'Altre ajudant')
    IndiceVer = 'clau'
    Navegar = False
    Nivel = 11
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37524.5692059028
    Left = 194
    Top = 144
  end
  object BQObservInf: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C Intervenci'#243
        NombreDB = 'c_interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'for'#224'nia'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Infermer'
        NombreDB = 'c_infermer'
        Longitud = 5
        Consulta = 'infermer'
        zType = tcIB_Varchar
        zNotNull = True
        Comentario = 'Consulta a metges. Filtre per infermeria'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observaci'#243
        NombreDB = 'observacio'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'c intervenci'#243
        Comentario = 'ordre'
      end>
    Indices = <
      item
        Nombre = 'clau'
        NombreDB = 'clau'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C Intervenci'#243
          'Ordre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'intervencio'
        NombreDB = 'intervencio'
        EsVirtual = False
        DelOnCascade = True
        UpOnCascade = True
        CamposOrden.Strings = (
          'C Intervenci'#243)
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'infermer'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'C Infermer')
        CopiarOrigen.Strings = (
          'C Infermer')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        WhereFiltro = 'C_GRUP = '#39'UN'#39
        ValidateValue = True
      end>
    Nombre = 'Observacions infermeria'
    NombreTabla = 'BQObservInf'
    Organiza = tbBase
    CamposVer.Strings = (
      'C Intervenci'#243
      'C Infermer'
      'Observaci'#243
      'Ordre')
    IndiceVer = 'clau'
    Navegar = False
    Nivel = 11
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37509.7809450926
    Left = 270
    Top = 144
  end
  object BQuirurgic_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '   '
      '      /* PK de BQuirurgic */'
      
        '      IF (NEW.C_INTERV IS NULL) THEN NEW.C_INTERV = GEN_ID(G_BLO' +
        'CQUIRURGIC, 1);'
      '      '
      '      /* Comptador d'#39'intervencions */'
      '      IF (NEW.NUM_INTERV IS NULL)'
      '      THEN'
      '            SELECT COUNT(*) +1'
      '            FROM   BQUIRURGIC'
      '            WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '            AND    ESTAT <> 40'
      '            INTO   NEW.NUM_INTERV;'
      ''
      
        '      /* El Bloc Quir'#250'rgic se segueix codificant amb CIM-9 fins ' +
        'que canviem el sistema i anem amb cat'#224'leg propi */'
      '      IF (NEW.VERSIOCIM   IS NULL) THEN NEW.VERSIOCIM   = 9;'
      '      IF (NEW.VERSIOCIM_G IS NULL) THEN NEW.VERSIOCIM_G = 9;'
      '   END'
      'END')
    Dic1 = BQuirurgic
    Dic1Name = 'BQuirurgic'
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
    ModiFecha = 37509.7805334838
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 104
    Top = 80
  end
  object Coordenades: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Quadrat'
        NombreDB = 'Quadrat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'identificador del quadrat'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'XLEFT'
        NombreDB = 'XLEFT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'm'#224'xima esquerra'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'XRIGHT'
        NombreDB = 'XRIGHT'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'm'#224'xima dreta'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'YUP'
        NombreDB = 'YUP'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        AutoContador.Tipo = tcSubContador
        AutoContador.Activo = True
        AutoContador.Campo = 'c intervenci'#243
        Comentario = 'm'#224'xima superior'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'YDOWN'
        NombreDB = 'YDOWN'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'm'#224'xima inferior'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'X'
        NombreDB = 'X'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'coordenada x identificativa, central'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Y'
        NombreDB = 'Y'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
        zDefault = '0'
        Comentario = 'coordenada y identificativa, central'
      end>
    Indices = <
      item
        Nombre = 'quadrat'
        NombreDB = 'quadrat'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Quadrat')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'left'
        NombreDB = 'left'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'XLEFT')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'up'
        NombreDB = 'up'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'YUP')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'Coordenades per les zones a pintar'
    NombreTabla = 'COORDENADES'
    Organiza = tbBase
    CamposVer.Strings = (
      'Quadrat'
      'XLEFT'
      'XRIGHT'
      'YUP'
      'YDOWN'
      'X'
      'Y')
    IndiceVer = 'quadrat'
    Navegar = False
    Nivel = 11
    Grupo = 0
    Oculto = False
    Modi = True
    ModiFecha = 37509.7809456366
    Left = 32
    Top = 144
  end
  object Preoperatori: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'id'
        NombreDB = 'id'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Historia'
        NombreDB = 'c_historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'historia'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'fk a filiaci'#243
      end
      item
        Aplica = kcCaracter
        Nombre = 'Diagn'#242'stic'
        NombreDB = 'diagnostic'
        Longitud = 40
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Intervenci'#243' prevista'
        NombreDB = 'IntPrevista'
        Longitud = 60
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Especialitat'
        NombreDB = 'Especialitat'
        Longitud = 2
        Consulta = 'motiu'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'consulta a codicamps'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Urgent'
        NombreDB = 'Urgent'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        Comentario = 'S/N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Antecedents quir'#250'rgics'
        NombreDB = 'AntecedentsQ'
        Longitud = 150
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'S.Nervi'#243's Normal'
        NombreDB = 'Nerv_Normal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Dem'#232'ncia'
        NombreDB = 'Nerv_Demencia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Depressi'#243
        NombreDB = 'Nerv_Depressio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Epil'#232'psia'
        NombreDB = 'Nerv_Epilepsia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Patologia Psiqui'#224'trica'
        NombreDB = 'Nerv_Pat_Psiq'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'AVC antic'
        NombreDB = 'Nerv_AVC_antic'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Alteraci'#243' de conducta'
        NombreDB = 'Nerv_conducta'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Dany cerebral'
        NombreDB = 'Nerv_Cerebral'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cap Sistema Nervi'#243's'
        NombreDB = 'Nerv_Cap'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Respiratori Normal'
        NombreDB = 'Resp_Normal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Asma'
        NombreDB = 'Resp_Asma'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'MPOC'
        NombreDB = 'Resp_MPOC'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Insufici'#232'ncia Respirat'#242'ria'
        NombreDB = 'Resp_Insuficiencia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Desviaci'#243' traqueal'
        NombreDB = 'Resp_Desviacio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Respiratori - Patologia restrictiva'
        NombreDB = 'Resp_Patologia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cardio Vascular Normal'
        NombreDB = 'Vasc_Normal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'YN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'HTA'
        NombreDB = 'Vasc_HTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Coronariopatia'
        NombreDB = 'Vasc_Corona'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'IAM antic'
        NombreDB = 'Vasc_IAM_antic'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Varius'
        NombreDB = 'Vasc_Varius'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Arr'#237'tmia'
        NombreDB = 'Vasc_Arritmia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Insufici'#232'ncia Card'#237'aca'
        NombreDB = 'Vasc_Insuficiencia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Valvulopatia'
        NombreDB = 'Vasc_valvula'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Arteriopatia'
        NombreDB = 'Vasc_arteria'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Shock'
        NombreDB = 'Vasc_shock'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Portador de marcap'#224's'
        NombreDB = 'Vasc_marcapas'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cardiopatia cong'#232'nita'
        NombreDB = 'Vasc_congenita'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Funci'#243' renal Normal'
        NombreDB = 'Ren_Normal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Insufici'#232'ncia renal'
        NombreDB = 'Ren_insuficiencia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prostatisme'
        NombreDB = 'Ren_prostata'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hemodi'#224'lisi'
        NombreDB = 'Ren_hemodialisi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Endocr'#237' Normal'
        NombreDB = 'End_Normal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Obesitat'
        NombreDB = 'End_obesitat'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Diabetes amb dieta'
        NombreDB = 'End_diabetes_dieta'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Diabetes amb ADO'
        NombreDB = 'End_diabetes_ADO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Diabetes amb insulina'
        NombreDB = 'End_insulina'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hipertiro'#239'disme'
        NombreDB = 'End_hipertiroides'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hipotiro'#239'disme'
        NombreDB = 'End_hipotiroides'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hiperaldosteronisme'
        NombreDB = 'End_hiperaldosterona'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Digestiu Normal'
        NombreDB = 'Dig_Normal'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ulcus'
        NombreDB = 'Dig_ulcus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hernia hiatus'
        NombreDB = 'Dig_hiatus'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Disp'#232'psia'
        NombreDB = 'Dig_dispepsia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hepatitis'
        NombreDB = 'Dig_hepatitis'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Cirrosi'
        NombreDB = 'Dig_cirrosi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'No altres patologies'
        NombreDB = 'Pat_sense'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Artrosi'
        NombreDB = 'Pat_artrosi'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Coagulopaties'
        NombreDB = 'Pat_coagul'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Neoplasia'
        NombreDB = 'Pat_neoplasia'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Sepsis'
        NombreDB = 'Pat_sepsis'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Altres'
        NombreDB = 'Pat_altres'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMemo
        Nombre = 'Medicaci'#243
        NombreDB = 'Medicacio'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tabac'
        NombreDB = 'Tabac'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Enolisme'
        NombreDB = 'Enolisme'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Cannabis'
        NombreDB = 'Cannabis'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Coca'
        NombreDB = 'Coca'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Altres drogues'
        NombreDB = 'Drogues'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Transfusions'
        NombreDB = 'Transfusions'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Data '#250'ltima transfusi'#243
        NombreDB = 'Data_Transf'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ag. Aust.'
        NombreDB = 'Ag_Aust'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'HIV'
        NombreDB = 'HIV'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Pes'
        NombreDB = 'Pes'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'Kg'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Talla'
        NombreDB = 'Talla'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'cm'
      end
      item
        Aplica = kcMODELS
        Nombre = 'TA'
        NombreDB = 'TA'
        Longitud = 7
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'xxx/xxx'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'FC'
        NombreDB = 'FC'
        Longitud = 3
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumDecimal
        Nombre = 'IMC'
        NombreDB = 'IMC'
        Longitud = 5
        MaskDisplay = '#,##0.##;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Boca'
        NombreDB = 'Boca'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Coll'
        NombreDB = 'Coll'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mallampati'
        NombreDB = 'Mallampati'
        Longitud = 1
        zType = tcIB_Smallint
        zNotNull = False
        ValidChars = '12345'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Columna'
        NombreDB = 'Columna'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ap. Respiratori'
        NombreDB = 'A_Respiratori'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Ap. Circulatori'
        NombreDB = 'A_Circulatori'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'RX T'#242'rax'
        NombreDB = 'RXTorax'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ECG'
        NombreDB = 'ECG'
        Longitud = 200
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Anal'#237'tica'
        NombreDB = 'Analitica'
        Longitud = 200
        zType = tcIB_Varchar
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
        Aplica = kcCaracter
        Nombre = 'ASA'
        NombreDB = 'ASA'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'IV'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat intervenci'#243
        NombreDB = 'Estat_interv'
        Longitud = 2
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'consulta a codicamps'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Sedaci'#243
        NombreDB = 'Sedacio'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'General'
        NombreDB = 'General'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Intradural'
        NombreDB = 'Intradural'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Epidural'
        NombreDB = 'Epidural'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Axil'#183'lar'
        NombreDB = 'Axilar'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Reg. end.'
        NombreDB = 'Regend'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Peri'
        NombreDB = 'Peri'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'T'#242'pica'
        NombreDB = 'Topica'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Local'
        NombreDB = 'Local'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Altra'
        NombreDB = 'Altra'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Modalitat'
        NombreDB = 'Modalitat'
        Longitud = 1
        Consulta = 'modalitat'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'consulta a codicamps'
        ValidChars = '123'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Prot. gr'#224'stica'
        NombreDB = 'Fer_gastrica'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Profilaxi TVP amb HBPM'
        NombreDB = 'Fer_TVP_HBPM'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Protocol insulina'
        NombreDB = 'Fer_insulina'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Deixar antiagregants'
        NombreDB = 'Fer_antiagregants'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Profilaxi endocarditis'
        NombreDB = 'Fer_endocarditis'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMemo
        Nombre = 'Notificacions'
        NombreDB = 'Notificacions'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data d'#39'autoritzacio'
        NombreDB = 'Data_autoritzacio'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge '#250'ltima modificaci'#243
        NombreDB = 'C_Metge'
        Longitud = 5
        Consulta = 'metge'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk a metges'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data '#250'ltima modificaci'#243
        NombreDB = 'Data_Ultmodi'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data caducitat (reactivats)'
        NombreDB = 'Data_caduca2'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge crea full'
        NombreDB = 'Metge_creador'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data creaci'#243' full'
        NombreDB = 'Data_creacio'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Interconsulta RX'
        NombreDB = 'nInterconRX'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Interconsulta Anal'#237'tica'
        NombreDB = 'nInterconAnal'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Al'#183'l'#232'rgies en el moment de fer el preoperatori'
        NombreDB = 'Alergies'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data reactivaci'#243
        NombreDB = 'Data_Reactivacio'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari reactivaci'#243
        NombreDB = 'Usuari_Reactivacio'
        Longitud = 5
        Consulta = 'metge_reactiva'
        zType = tcIB_Varchar
        zNotNull = False
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'id')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'historia'
        NombreDB = 'historia'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Historia')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
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
          'Metge '#250'ltima modificaci'#243)
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
          'Estat intervenci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'datault'
        NombreDB = 'datault'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Data '#250'ltima modificaci'#243)
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'motiu'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Especialitat')
        CopiarOrigen.Strings = (
          'Especialitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ESPECIALITAT"'
      end
      item
        Nombre = 'modalitat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Modalitat')
        CopiarOrigen.Strings = (
          'Modalitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "MODALITATINTERVENCIO"'
      end
      item
        Nombre = 'estat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Estat intervenci'#243)
        CopiarOrigen.Strings = (
          'Estat intervenci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'ESTATPREOPERA'#39
      end
      item
        Nombre = 'metge'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Metge '#250'ltima modificaci'#243)
        CopiarOrigen.Strings = (
          'Metge '#250'ltima modificaci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'historia'
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
        Nombre = 'metge_reactiva'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari reactivaci'#243)
        CopiarOrigen.Strings = (
          'Usuari reactivaci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Preoperatori'
    NombreTabla = 'PREOPERATORI'
    Organiza = tbBase
    CamposVer.Strings = (
      'Historia'
      'Estat intervenci'#243
      'id')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 24
  end
  object EnquestaCMA: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Interv'
        NombreDB = 'C_Interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'c_interv'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'pk i fk a bquirurgic'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tel'#232'fons'
        NombreDB = 'Telefons'
        Longitud = 254
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data de l'#39'enquesta'
        NombreDB = 'Data_enquesta'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Febre'
        NombreDB = 'Febre'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Dolor'
        NombreDB = 'Dolor'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Escala EVA'
        NombreDB = 'EscalaEVA'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tolera alimentaci'#243
        NombreDB = 'Alimentacio'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Taca ap'#242'sit'
        NombreDB = 'Aposit'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Inflamaci'#243' de la zona'
        NombreDB = 'Inflamacio'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Presenta algun problema'
        NombreDB = 'Problema'
        Longitud = 1
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions'
        NombreDB = 'Observacions'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari finalitzaci'#243
        NombreDB = 'c_usuari_fi'
        Longitud = 5
        Consulta = 'metges'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk a metges'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data finalitzaci'#243
        NombreDB = 'data_fi'
        Longitud = 19
        MaskDisplay = 'dd"."mm"."yyyy hh":"nn":"ss'
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
          'C_Interv')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'intervencio'
        NombreDB = 'intervencio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Interv')
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
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
          'Usuari finalitzaci'#243)
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'metges'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari finalitzaci'#243)
        CopiarOrigen.Strings = (
          'Usuari finalitzaci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'c_interv'
        Master = BQuirurgic
        BuscaOrigen.Strings = (
          'C_Interv')
        CopiarOrigen.Strings = (
          'C_Interv')
        CopiarMaster.Strings = (
          'C Intervenci'#243)
        BuscaMaster.Strings = (
          'C Intervenci'#243)
      end>
    Nombre = 'EnquestaCMA'
    NombreTabla = 'EnquestaCMA'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Interv'
      'Data de l'#39'enquesta'
      'Usuari finalitzaci'#243)
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 110
    Top = 208
  end
  object trauma: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'trauma'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE,DATAF DATE,TIPUS CHAR(1))'
      'RETURNS (TEXT       VARCHAR(250),'
      '         QUANTITAT  INTEGER'
      '         )'
      'AS'
      #9'DECLARE VARIABLE ID     VARCHAR(15);'
      '      DECLARE VARIABLE ICD    VARCHAR(15);'
      '      DECLARE VARIABLE PARENT VARCHAR(100);'
      'BEGIN'
      ''
      ' IF (TIPUS='#39'D'#39') THEN'
      ' BEGIN'
      '   FOR SELECT ID,PARENT,TEXT,G_ICD'
      '   FROM ICDNEUROTRAUMA'
      '   WHERE TIPUS = '#39'D'#39' AND ESTAT = '#39'A'#39
      '   ORDER BY ID'
      '   INTO :ID, :PARENT, :TEXT, :ICD'
      '   DO BEGIN'
      '/*     IF (ICD IS NULL) THEN'
      '     BEGIN'
      '         QUANTITAT = NULL;'
      '         SUSPEND;'
      '     END'
      '     ELSE BEGIN*/'
      '         QUANTITAT = 0;'
      '     '
      '         SELECT COUNT(*) FROM BQUIRURGIC'
      '         WHERE DATA_PREV BETWEEN :DATAI AND :DATAF'
      '         AND ESTAT <> 40 /* INTERVENCI'#211' NO ANUL'#183'LADA */'
      '         AND IDNEUROD = :ID'
      '         INTO :QUANTITAT;'
      ''
      '         SUSPEND;'
      '/*     END;*/'
      '   END;'
      ' END;'
      ' '
      ' IF (TIPUS='#39'P'#39') THEN'
      ' BEGIN'
      '   FOR SELECT ID,PARENT,TEXT,G_ICD'
      '   FROM ICDNEUROTRAUMA'
      '   WHERE TIPUS = '#39'P'#39' AND ESTAT = '#39'A'#39
      '   ORDER BY ID'
      '   INTO :ID, :PARENT, :TEXT, :ICD'
      '   DO BEGIN'
      '/*     IF (ICD IS NULL) THEN'
      '     BEGIN'
      '         QUANTITAT = NULL;'
      '         SUSPEND;'
      '     END'
      '     ELSE BEGIN*/'
      '         QUANTITAT = 0;'
      ''
      '         SELECT COUNT(*) FROM BQUIRURGIC'
      '         WHERE DATA_PREV BETWEEN :DATAI AND :DATAF'
      '         AND ESTAT <> 40 /* INTERVENCI'#211' NO ANUL'#183'LADA */'
      '         AND IDNEUROP = :ID'
      '         INTO :QUANTITAT;'
      ''
      '         SUSPEND;'
      '/*     END;*/'
      '   END;'
      ' END;'
      ' '
      'END')
    Dic1 = BQuirurgic
    Dic1Name = 'BQUIRURGIC'
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
    Top = 24
  end
  object BQAnestesia: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Intervencio'
        NombreDB = 'C_INTERV'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'c_interv'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'pk i fk a bquirurgic'
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 11
        MaskDisplay = 'dd"."mmm"."yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_usuari'
        Longitud = 5
        Consulta = 'metges'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'fk a metges'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Ar'#237'tmia'
        NombreDB = 'G1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Bradic'#224'rdia'
        NombreDB = 'G2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Taquic'#224'rdia'
        NombreDB = 'G3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hipotensi'#243
        NombreDB = 'G4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Hipertensi'#243
        NombreDB = 'G5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Aturada respirat'#242'ria i/o card'#237'aca'
        NombreDB = 'G6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Dificultat d'#39'intubaci'#243
        NombreDB = 'CG1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Impossibilitat intubaci'#243' endotraqueal'
        NombreDB = 'CG2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Extubaci'#243' inadvertida'
        NombreDB = 'CG3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Desconnexi'#243' ventilador mec'#224'nic'
        NombreDB = 'CG4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Broncoespasme'
        NombreDB = 'CG5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Injuria dental durant la intubaci'#243
        NombreDB = 'CG6'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Despertar intraoperatori inadvertit'
        NombreDB = 'CG7'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 
          'lesi'#243' nerviosa per posici'#243' incorrecta del pacient i falta de pro' +
          'tecci'#243' de parts toves'
        NombreDB = 'CG8'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Par'#224'lisis'
        NombreDB = 'CG9'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Dany cerebral per hipoxia'
        NombreDB = 'CG10'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'V.Toxicitat per injecci'#243' intravascular'
        NombreDB = 'CLV1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'V.Hematoma per punci'#243' arterial o venosa'
        NombreDB = 'CLV2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'N.Toxicitat sist'#232'mica'
        NombreDB = 'CLN1'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'N.Toxicitat local'
        NombreDB = 'CLN2'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Bloqueig raquidi total'
        NombreDB = 'CL3'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Infecci'#243
        NombreDB = 'CL4'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Reacci'#243' al'#183'l'#232'rgica'
        NombreDB = 'CL5'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Broncoaspiraci'#243
        NombreDB = 'CG11'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Reintubaci'#243' abans de sortir del BQ'
        NombreDB = 'CG12'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Reacci'#243' al'#183'l'#232'rgica (general)'
        NombreDB = 'CG13'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = True
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grau severitat'
        NombreDB = 'Grau_Severitat'
        Longitud = 1
        Consulta = 'grau'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Codicamps "BQ.GRAUSEVERITAT"'
      end
      item
        Aplica = kcCaracter
        Nombre = 'C Anestesi'#242'leg'
        NombreDB = 'c_anestesioleg'
        Longitud = 5
        Consulta = 'anest'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'Consulta a metges. C_GRUP = "ME"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Tipus anest'#232'sia'
        NombreDB = 'c_anestesia'
        Longitud = 2
        Consulta = 'anestesia'
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Codicamps "ANESTESIA"'
      end
      item
        Aplica = kcMODELS
        Nombre = 'C Estat'
        NombreDB = 'c_estat'
        Longitud = 2
        Consulta = 'estat'
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'Codicamps "BQANESTESIA.ESTAT"'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Intervencio')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'intervencio'
        NombreDB = 'intervencio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Intervencio')
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
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
          'Usuari')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end>
    Consultas = <
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
        Nombre = 'c_interv'
        Master = BQuirurgic
        BuscaOrigen.Strings = (
          'Intervencio')
        CopiarOrigen.Strings = (
          'Intervencio')
        CopiarMaster.Strings = (
          'C Intervenci'#243)
        BuscaMaster.Strings = (
          'C Intervenci'#243)
      end
      item
        Nombre = 'grau'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Grau severitat')
        CopiarOrigen.Strings = (
          'Grau severitat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'BQ.GRAUSEVERITAT'#39
      end
      item
        Nombre = 'anest'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'C Anestesi'#242'leg')
        CopiarOrigen.Strings = (
          'C Anestesi'#242'leg')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
        WhereFiltro = 'C_GRUP = "ME"'
      end
      item
        Nombre = 'anestesia'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Tipus anest'#232'sia')
        CopiarOrigen.Strings = (
          'C Tipus anest'#232'sia')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = "ANESTESIA"'
      end
      item
        Nombre = 'estat'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'C Estat')
        CopiarOrigen.Strings = (
          'C Estat')
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI  = "BQANESTESIA.ESTAT"'
      end>
    Nombre = 'Complicacions Anestesia'
    NombreTabla = 'BQANESTESIA'
    Organiza = tbBase
    CamposVer.Strings = (
      'Intervencio'
      'Data'
      'Usuari')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 208
  end
  object Isquemies: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'Intervencio'
        NombreDB = 'C_INTERV'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'c_interv'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'pk i fk a bquirurgic'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Ordre'
        NombreDB = 'Ordre'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        AutoContador.Tipo = tcSubContador
        Comentario = 'pk'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Localitzaci'#243' isqu'#232'mia'
        NombreDB = 'LOCALITZACIO'
        Longitud = 250
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Temps inici isqu'#232'mia'
        NombreDB = 'TEMPS_INICI'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Temps finalitzaci'#243' isqu'#232'mia'
        NombreDB = 'TEMPS_FINAL'
        Longitud = 16
        MaskDisplay = 'hh":"nn'
        MaskEdit = '!99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Durada'
        NombreDB = 'Durada'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 'en minuts'
      end>
    Indices = <
      item
        Nombre = 'pk'
        NombreDB = 'pk'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Intervencio'
          'Ordre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'intervencio'
        NombreDB = 'intervencio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Intervencio')
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'c_interv'
        Master = BQuirurgic
        BuscaOrigen.Strings = (
          'Intervencio')
        CopiarOrigen.Strings = (
          'Intervencio')
        CopiarMaster.Strings = (
          'C Intervenci'#243)
        BuscaMaster.Strings = (
          'C Intervenci'#243)
      end>
    Nombre = 'Isquemies'
    NombreTabla = 'BQISQUEMIES'
    Organiza = tbBase
    CamposVer.Strings = (
      'Intervencio'
      'Ordre')
    IndiceVer = 'pk'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 344
    Top = 144
  end
  object Ulceres: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'Ulceres'
    ForceNombreDB = False
    Body.Strings = (
      '(ESPECIAL CHAR(2))'
      'RETURNS (ANYO   INTEGER,'
      '         QUANTS INTEGER)'
      'AS'
      '  DECLARE VARIABLE ANYO_ANT INTEGER;'
      '  DECLARE VARIABLE ANYO_ACT INTEGER;'
      '  DECLARE VARIABLE AUX      INTEGER;'
      '  DECLARE VARIABLE ACUM     INTEGER;'
      '  DECLARE VARIABLE PRIMER   INTEGER;'
      'BEGIN'
      ''
      '  ANYO_ANT=NULL; ACUM=0; PRIMER=0;'
      ''
      '  IF (ESPECIAL IS NULL) THEN'
      '  BEGIN'
      '      FOR SELECT F_YEAR(DATA_ENTRADA),COUNT(*) FROM BQUIRURGIC'
      '      WHERE (C_DIAG_OP LIKE '#39'707%'#39' OR G_DIAG_OP LIKE '#39'707%'#39')'
      '      AND   (VERSIOCIM = 9)'
      '      AND   (ESTAT <> 40)'
      '      GROUP BY DATA_ENTRADA'
      '      INTO :ANYO_ACT, :AUX'
      '      DO BEGIN'
      '          IF ((ANYO_ACT=ANYO_ANT) OR (PRIMER=0)) THEN'
      '          BEGIN'
      '              PRIMER=1;'
      '              ACUM=ACUM+AUX;'
      '          END;'
      '          ELSE BEGIN'
      '              ANYO=ANYO_ANT;'
      '              QUANTS=ACUM;'
      '              SUSPEND;'
      '              ACUM=AUX;'
      '          END;'
      '          ANYO_ANT=ANYO_ACT;'
      '      END;'
      '  END;'
      '  ELSE BEGIN'
      '      FOR SELECT F_YEAR(DATA_ENTRADA),COUNT(*) FROM BQUIRURGIC B'
      '      LEFT JOIN METGES M  ON B.C_CIRURGIA = M.CODI'
      '      LEFT JOIN METGES M2 ON B.C_METGE_PREPARA = M2.CODI'
      '      LEFT JOIN METGES M3 ON B.C_METGE_FI = M3.CODI'
      '      WHERE (C_DIAG_OP LIKE '#39'707%'#39' OR G_DIAG_OP LIKE '#39'707%'#39')'
      '      AND   (VERSIOCIM = 9)'
      '      AND   (ESTAT <> 40)'
      
        '      AND   (M.C_ESPECIAL=:ESPECIAL OR M2.C_ESPECIAL=:ESPECIAL O' +
        'R M3.C_ESPECIAL=:ESPECIAL)'
      '      GROUP BY DATA_ENTRADA'
      '      INTO :ANYO_ACT, :AUX'
      '      DO BEGIN'
      '          IF ((ANYO_ACT=ANYO_ANT) OR (PRIMER=0)) THEN'
      '          BEGIN'
      '              PRIMER=1;'
      '              ACUM=ACUM+AUX;'
      '          END;'
      '          ELSE BEGIN'
      '              ANYO=ANYO_ANT;'
      '              QUANTS=ACUM;'
      '              SUSPEND;'
      '              ACUM=AUX;'
      '          END;'
      '          ANYO_ANT=ANYO_ACT;'
      '      END;'
      '  END;'
      ''
      '  /* pintar l'#39#250'ltim resgistre */'
      '  ANYO=ANYO_ANT;'
      '  QUANTS=ACUM;'
      '  SUSPEND;'
      'END')
    Dic1 = BQuirurgic
    Dic1Name = 'BQUIRURGIC'
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
    Top = 24
  end
  object EliminaTract: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'EliminaTract'
    ForceNombreDB = False
    Body.Strings = (
      'returns (ret varchar(100))'
      'AS'
      '  DECLARE VARIABLE C_INTERV INTEGER;'
      'BEGIN'
      ''
      '      /* Procedure que va al programador.'
      
        '         La passarem cada dia a la matinada  i  mirarem les alte' +
        's de les dues '#250'ltimes setmanes menys 2 dies.'
      ''
      
        '      /* A les intervencions que estaven previstes per despr'#233's d' +
        'e la data d'#39'alta, els traurem el C_Tractament i el C_Espera'
      
        '         i aix'#237' s'#39'omplir'#224' amb el C_Tractament actiu quan el paci' +
        'ent torni a ingressar i facin la intervenci'#243' */'
      '        '
      '      FOR SELECT B.C_INTERV'
      '          FROM   BQUIRURGIC B'
      
        '          JOIN   TRACTAMENTS T ON B.C_TRACTAMENT = T.C_TRACTAMEN' +
        'T'
      '          WHERE  B.ESTAT = 10'
      '          AND    T.DATA_ALTA IS NOT NULL'
      
        '          AND    T.DATA_ALTA >= "TODAY" - 15 AND T.DATA_ALTA <= ' +
        '"TODAY" - 2'
      '          AND    B.DATA_PREV > T.DATA_ALTA'
      '          INTO  :C_INTERV'
      '      DO BEGIN'
      ''
      '            UPDATE BQUIRURGIC'
      '            SET    C_TRACTAMENT =  NULL,'
      '                   C_ESPERA     =  NULL'
      '            WHERE  C_INTERV     = :C_INTERV;'
      '            '
      '            ret = '#39'INTEV '#39'||C_INTERV;'
      '            SUSPEND;'
      '      END;'
      'END')
    Dic1 = BQuirurgic
    Dic1Name = 'BQUIRURGIC'
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
    Top = 80
  end
  object BQuirurgic_BU: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BU'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_PRESTACIO  VARCHAR(4);'
      'BEGIN'
      ''
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      ''
      
        '      /* Si obtenim el C_Tractament de la intervenci'#243'  (s'#39'havia ' +
        'programat mentre no hi havia cap tractament actiu)'
      
        '         o b'#233' el C_Tractament de la intervenci'#243' canvia (s'#39'havia ' +
        'programat la intervenci'#243' durant un tractament anterior)'
      '      -> busquem el n'#250'mero d'#39'intervenci'#243' que li correspon */'
      '         '
      '      IF  ((NEW.C_TRACTAMENT IS NOT NULL)'
      
        '      AND ((OLD.C_TRACTAMENT IS NULL) OR (OLD.C_TRACTAMENT <> NE' +
        'W.C_TRACTAMENT))) THEN'
      '      BEGIN'
      '            IF (OLD.C_TRACTAMENT IS NULL)'
      '            THEN'
      '                  SELECT COUNT(*) + 1'
      '                  FROM   BQUIRURGIC'
      '                  WHERE  C_TRACTAMENT = NEW.C_TRACTAMENT'
      '                  AND    DATA_ENTRADA IS NOT NULL'
      '                  AND    ESTAT <> 40'
      '                  INTO   NEW.NUM_INTERV;'
      '      END;'
      '      '
      '   END;'
      'END')
    Dic1 = BQuirurgic
    Dic1Name = 'BQuirurgic'
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
    Left = 176
    Top = 80
  end
  object BQCompl_PQ: TDic
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
        Nombre = 'C_Interv'
        NombreDB = 'C_Interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = True
      end
      item
        Aplica = kcFecha
        Nombre = 'Data'
        NombreDB = 'Data'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = True
      end
      item
        Aplica = kcMODELS
        Nombre = 'Complicacions'
        NombreDB = 'Complicacions'
        Longitud = 1
        Consulta = 'compl'
        zType = tcIB_Char
        zNotNull = False
        Comentario = 'S'#237' / No / No seguiment'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Grau de la infecci'#243
        NombreDB = 'G_Infeccio'
        Longitud = 2
        MaskDisplay = '#,##0;; '
        Consulta = 'grau_infeccio'
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Grau de complicaci'#243
        NombreDB = 'G_Complicacio'
        Longitud = 5
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Comentari'
        NombreDB = 'Comentari'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data de registre'
        NombreDB = 'Data_R'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'Usuari_R'
        Longitud = 5
        Consulta = 'usuari'
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
        Nombre = 'ordre'
        NombreDB = 'ordre'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Interv'
          'Data')
        Tipo = tiSecundario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'C_Interv'
        NombreDB = 'C_Interv'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Interv')
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
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
      end>
    Consultas = <
      item
        Nombre = 'grau_infeccio'
        Master = wDataCodis.CodiCamps
        BuscaOrigen.Strings = (
          'Grau de la infecci'#243)
        CopiarOrigen.Strings = (
          'Grau de la infecci'#243)
        CopiarMaster.Strings = (
          'C'#243'di')
        BuscaMaster.Strings = (
          'C'#243'di')
        WhereFiltro = 'TIPUSCODI = '#39'BQ.INFECCIONSPQ'#39
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
        Nombre = 'compl'
        Master = wDataCodis.CodiCampsCurt
        BuscaOrigen.Strings = (
          'Complicacions')
        CopiarOrigen.Strings = (
          'Complicacions')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = "BQ_COMPLICACIONS"'
      end>
    Nombre = 'Complicacions postquir'#250'rgiqes'
    NombreTabla = 'BQCOMPL_PQ'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'C_Interv'
      'Data')
    IndiceVer = 'ordre'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 200
    Top = 208
  end
  object BQCompl_PQA: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcNumEntero
        Nombre = 'C_Interv'
        NombreDB = 'C_Interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'interv'
        zType = tcIB_Integer
        zNotNull = True
        Comentario = 'PK amb Mesos. FK a BQuirurgic'
      end
      item
        Aplica = kcMODELS
        Nombre = 'Mesos'
        NombreDB = 'Mesos'
        Longitud = 2
        zType = tcIB_Smallint
        zNotNull = True
        Comentario = 'PK amb C_Interv.  1 o 12.  '
      end
      item
        Aplica = kcFecha
        Nombre = 'Data alarma'
        NombreDB = 'Data_Alarma'
        Longitud = 10
        MaskDisplay = 'dd"-"mm"-"yyyy'
        MaskEdit = '!99/99/9999;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Metge'
        NombreDB = 'Metge'
        Longitud = 5
        Consulta = 'metge'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'a quin metge s'#39'avisa'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Especialitat'
        NombreDB = 'Especialitat'
        Longitud = 2
        Consulta = 'esp'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'a quines especialitats s'#39'avisa'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Implant'
        NombreDB = 'C_Implant'
        Longitud = 15
        Consulta = 'protesi'
        zType = tcIB_Varchar
        zNotNull = False
        Comentario = 'codi de l'#39'artr'#242'desi o pr'#242'tesi'
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
        Comentario = '0 pendent, 1 entrades, 2 sense, 3 sense (retirada)'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'ID Complicacions'
        NombreDB = 'IDCompl'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'compl'
        zType = tcIB_Integer
        zNotNull = False
        Comentario = 's'#39'informa quan entren les complicacions'
      end>
    Indices = <
      item
        Nombre = 'PK'
        NombreDB = 'PK'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Interv'
          'Mesos')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'C_Interv'
        NombreDB = 'C_Interv'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Interv')
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
        Unico = False
        Descending = False
      end
      item
        Nombre = 'ID_Compl'
        NombreDB = 'ID_Compl'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'ID Complicacions')
        Tipo = tiForaneo
        ForaneoDic = BQCompl_PQ
        ForaneoCampos.Strings = (
          'ID')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'implant'
        NombreDB = 'implant'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'C_Interv'
          'Implant')
        Tipo = tiSecundario
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
          'Metge')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Metges
        ForaneoCampos.Strings = (
          'C'#243'dig Usuari')
        Unico = False
        Descending = False
      end
      item
        Nombre = 'esp'
        NombreDB = 'esp'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Especialitat')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Especial
        ForaneoCampos.Strings = (
          'Codi Especialitat')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'interv'
        Master = BQuirurgic
        BuscaOrigen.Strings = (
          'C_Interv')
        CopiarOrigen.Strings = (
          'C_Interv')
        CopiarMaster.Strings = (
          'C Intervenci'#243)
        BuscaMaster.Strings = (
          'C Intervenci'#243)
      end
      item
        Nombre = 'compl'
        Master = BQCompl_PQ
        BuscaOrigen.Strings = (
          'ID Complicacions')
        CopiarOrigen.Strings = (
          'ID Complicacions')
        CopiarMaster.Strings = (
          'ID')
        BuscaMaster.Strings = (
          'ID')
      end
      item
        Nombre = 'protesi'
        Master = wDataCodis.CodiCampsAlfa
        BuscaOrigen.Strings = (
          'Implant')
        CopiarOrigen.Strings = (
          'Implant')
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI = '#39'PROTESI'#39
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
        WhereFiltro = 'TIPUSCODI = "BQ.ESTATPQA"'
      end
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
      end
      item
        Nombre = 'esp'
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
    Nombre = 'Complicacions postquir'#250'rgiqes Alarmes'
    NombreTabla = 'BQCOMPL_PQA'
    Organiza = tbBase
    CamposVer.Strings = (
      'C_Interv'
      'Data alarma'
      'Estat')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 384
    Top = 208
  end
  object T_BQCompl_PQ_AI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'AI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE NOU_ESTAT SMALLINT;'
      'BEGIN'
      ''
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      '     '
      '      /* Si entren complicacions, eliminem les alarmes */'
      '      '
      
        '      IF      (NEW.COMPLICACIONS = '#39'S'#39') THEN NOU_ESTAT = 1;   /*' +
        ' complicacions introdu'#239'des */'
      '      '
      
        '      ELSE IF (NEW.COMPLICACIONS = '#39'N'#39') THEN                  /*' +
        ' no hi ha complicacions */'
      '      BEGIN'
      
        '            IF (NEW.COMENTARI = '#39'Implant retirat.'#39') THEN NOU_EST' +
        'AT = 3;   /* - ho indiquen des de Full Quir'#250'rgic (retirada d'#39'imp' +
        'lant */'
      
        '                                                    ELSE NOU_EST' +
        'AT = 2;   /* - ho indiquen des de les alarmes */'
      '      END;'
      ''
      
        '      ELSE IF (NEW.COMPLICACIONS = '#39'X'#39') THEN NOU_ESTAT = 4;   /*' +
        ' no s'#39'ha pogut fer el seguiment del pacient  - ho indiquen des d' +
        'e les alarmes */'
      '      '
      
        '      /* Si no hi ha complicacions per'#242' no han retirat l'#39'implant' +
        ', nom'#233's eliminem l'#39'alarma ven'#231'uda */'
      
        '      /* Si no han pogut fer el seguiment del pacient, tamb'#233' (po' +
        'tser d'#39'aqu'#237' a un any s'#237' que poden? I si no, q tornin a dir "no s' +
        'eguiment") */'
      '      IF (NOU_ESTAT IN (2,4)) THEN  UPDATE BQCOMPL_PQA'
      '                                    SET    IDCOMPL = NEW.ID,'
      '                                           ESTAT = :NOU_ESTAT'
      
        '                                    WHERE  C_INTERV = NEW.C_INTE' +
        'RV'
      '                                    AND    ESTAT = 0'
      
        '                                    AND    DATA_ALARMA <= "TODAY' +
        '";'
      '                              '
      '                              ELSE  UPDATE BQCOMPL_PQA'
      '                                    SET    IDCOMPL = NEW.ID,'
      '                                           ESTAT = :NOU_ESTAT'
      
        '                                    WHERE  C_INTERV = NEW.C_INTE' +
        'RV'
      '                                    AND    ESTAT = 0;'
      '                              '
      '   END;'
      'END')
    Dic1 = BQCompl_PQ
    Dic1Name = 'BQCompl_PQ'
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
    Left = 288
    Top = 208
  end
  object CirurgiaMultinivell: TDic
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
        Nombre = 'Hist'#242'ria cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Fili'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero d'#39'intervenci'#243
        NombreDB = 'C_INTERV'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: Flexe cadera'
        NombreDB = 'PD_FLEXE_CADERA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: Adductor cadera'
        NombreDB = 'PD_ADD_CADERA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: Escur'#231'ament isquiotibial'
        NombreDB = 'PD_ESCURCA_ISQUIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: Flexe genoll'
        NombreDB = 'PD_FLEXE_GENOLL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: R'#242'tula alta'
        NombreDB = 'PD_ROTULA_ALTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: Rotaci'#243' tibial externa'
        NombreDB = 'PD_ROT_TIB_EXT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: Peu pla-valg'
        NombreDB = 'PD_PEU_PLA_VALG'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: Peu equ'#237
        NombreDB = 'PD_PEU_EQUI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema dreta: Peu var'
        NombreDB = 'PD_PEU_VAR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: Flexe cadera'
        NombreDB = 'PE_FLEXE_CADERA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: Adductor cadera'
        NombreDB = 'PE_ADD_CADERA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: Escur'#231'ament isquiotibial'
        NombreDB = 'PE_ESCURCA_ISQUIO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: Flexe genoll'
        NombreDB = 'PE_FLEXE_GENOLL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: R'#242'tula alta'
        NombreDB = 'PE_ROTULA_ALTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: Rotaci'#243' tibial externa'
        NombreDB = 'PE_ROT_TIB_EXT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: Peu pla-valg'
        NombreDB = 'PE_PEU_PLA_VALG'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: Peu equ'#237
        NombreDB = 'PE_PEU_EQUI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Problema esquerra: Peu var'
        NombreDB = 'PE_PEU_VAR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari Problemes'
        NombreDB = 'C_USER_P'
        Longitud = 5
        Consulta = 'MetgeP'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Problemes'
        NombreDB = 'DATA_P'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. Psoas'
        NombreDB = 'SD_TPSOAS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. Recte anterior'
        NombreDB = 'SD_TRECTE_ANT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. Adductor'
        NombreDB = 'SD_TADDUCTOR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. Isquiotibials'
        NombreDB = 'SD_TISQUIOS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: O. Femoral deflexora'
        NombreDB = 'SD_OFEM_DEFLEX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: O. Femoral derrotatoria'
        NombreDB = 'SD_OFEM_DERRO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. Recte anterior distal'
        NombreDB = 'SD_TRECTE_ANT_DISTAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: Descens TTA'
        NombreDB = 'SD_DESCENS_TTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: O. Tibial derrotatoria'
        NombreDB = 'SD_OTIB_DERRO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: Kalix'
        NombreDB = 'SD_KALIX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: Artrodesi talonavicular'
        NombreDB = 'SD_ATRO_TALO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: Triple artrodesi'
        NombreDB = 'SD_TRI_ARTRODESI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. Aquil'#183'les'
        NombreDB = 'SD_TAQUILES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. Tr'#237'ceps sural'
        NombreDB = 'SD_TTRICEPS_SURAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. TP'
        NombreDB = 'SD_TTP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' dreta: T. TA'
        NombreDB = 'SD_TTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. Psoas'
        NombreDB = 'SE_TPSOAS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. Recte anterior'
        NombreDB = 'SE_TRECTE_ANT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. Adductor'
        NombreDB = 'SE_TADDUCTOR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. Isquiotibials'
        NombreDB = 'SE_TISQUIOS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: O. Femoral deflexora'
        NombreDB = 'SE_OFEM_DEFLEX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: O. Femoral derrotatoria'
        NombreDB = 'SE_OFEM_DERRO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. Recte anterior distal'
        NombreDB = 'SE_TRECTE_ANT_DISTAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: Descens TTA'
        NombreDB = 'SE_DESCENS_TTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: O. Tibial derrotatoria'
        NombreDB = 'SE_OTIB_DERRO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: Kalix'
        NombreDB = 'SE_KALIX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: Artrodesi talonavicular'
        NombreDB = 'SE_ATRO_TALO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: Triple artrodesi'
        NombreDB = 'SE_TRI_ARTRODESI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. Aquil'#183'les'
        NombreDB = 'SE_TAQUILES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. Tr'#237'ceps sural'
        NombreDB = 'SE_TTRICEPS_SURAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. TP'
        NombreDB = 'SE_TTP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        ValidChars = 'X'
      end
      item
        Aplica = kcCodigo
        Nombre = 'Soluci'#243' esquerra: T. TA'
        NombreDB = 'SE_TTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari Solucions'
        NombreDB = 'C_USER_S'
        Longitud = 5
        Consulta = 'MetgeS'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data Solucions'
        NombreDB = 'DATA_S'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. Psoas'
        NombreDB = 'PD_TPSOAS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. Recte anterior'
        NombreDB = 'PD_TRECTE_ANT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. Adductor'
        NombreDB = 'PD_TADDUCTOR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. Isquiotibials'
        NombreDB = 'PD_TISQUIOS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: O. Femoral deflexora'
        NombreDB = 'PD_OFEM_DEFLEX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: O. Femoral derrotatoria'
        NombreDB = 'PD_OFEM_DERRO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. Recte anterior distal'
        NombreDB = 'PD_TRECTE_ANT_DISTAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: Descens TTA'
        NombreDB = 'PD_DESCENS_TTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: O. Tibial derrotatoria'
        NombreDB = 'PD_OTIB_DERRO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: Kalix'
        NombreDB = 'PD_KALIX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: Artrodesi talonavicular'
        NombreDB = 'PD_ATRO_TALO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: Triple artrodesi'
        NombreDB = 'PD_TRI_ARTRODESI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. Aquil'#183'les'
        NombreDB = 'PD_TAQUILES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. Tr'#237'ceps sural'
        NombreDB = 'PD_TTRICEPS_SURAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. TP'
        NombreDB = 'PD_TTP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' dreta: T. TA'
        NombreDB = 'PD_TTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. Psoas'
        NombreDB = 'PE_TPSOAS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. Recte anterior'
        NombreDB = 'PE_TRECTE_ANT'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. Adductor'
        NombreDB = 'PE_TADDUCTOR'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. Isquiotibials'
        NombreDB = 'PE_TISQUIOS'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: O. Femoral deflexora'
        NombreDB = 'PE_OFEM_DEFLEX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: O. Femoral derrotatoria'
        NombreDB = 'PE_OFEM_DERRO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. Recte anterior distal'
        NombreDB = 'PE_TRECTE_ANT_DISTAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: Descens TTA'
        NombreDB = 'PE_DESCENS_TTA'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: O. Tibial derrotatoria'
        NombreDB = 'PE_OTIB_DERRO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: Kalix'
        NombreDB = 'PE_KALIX'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: Artrodesi talonavicular'
        NombreDB = 'PE_ATRO_TALO'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: Triple artrodesi'
        NombreDB = 'PE_TRI_ARTRODESI'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. Aquil'#183'les'
        NombreDB = 'PE_TAQUILES'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. Tr'#237'ceps sural'
        NombreDB = 'PE_TTRICEPS_SURAL'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. TP'
        NombreDB = 'PE_TTP'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Previsi'#243' esquerra: T. TA'
        NombreDB = 'PE_TTA'
        Longitud = 1
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
          'Identificador de registre')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Intervencio'
        NombreDB = 'intervencio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'mero d'#39'intervenci'#243)
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Fili'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'Hist'#242'ria cl'#237'nica')
        CopiarOrigen.Strings = (
          'Hist'#242'ria cl'#237'nica')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'MetgeP'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari Problemes')
        CopiarOrigen.Strings = (
          'Usuari Problemes')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgeS'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari Solucions')
        CopiarOrigen.Strings = (
          'Usuari Solucions')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'BQMULTINIVELL'
    NombreTabla = 'BQMULTINIVELL'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador de registre'
      'Hist'#242'ria cl'#237'nica'
      'N'#250'mero d'#39'intervenci'#243
      'Problema dreta: Flexe cadera'
      'Problema dreta: Adductor cadera'
      'Problema dreta: Escur'#231'ament isquiotibial'
      'Problema dreta: Flexe genoll'
      'Problema dreta: R'#242'tula alta'
      'Problema dreta: Rotaci'#243' tibial externa'
      'Problema dreta: Peu pla-valg'
      'Problema dreta: Peu equ'#237
      'Problema dreta: Peu var'
      'Problema esquerra: Flexe cadera'
      'Problema esquerra: Adductor cadera'
      'Problema esquerra: Escur'#231'ament isquiotibial'
      'Problema esquerra: Flexe genoll'
      'Problema esquerra: R'#242'tula alta'
      'Problema esquerra: Rotaci'#243' tibial externa'
      'Problema esquerra: Peu pla-valg'
      'Problema esquerra: Peu equ'#237
      'Problema esquerra: Peu var'
      'Usuari Problemes'
      'Data Problemes'
      'Soluci'#243' dreta: T. Psoas'
      'Soluci'#243' dreta: T. Recte anterior'
      'Soluci'#243' dreta: T. Adductor'
      'Soluci'#243' dreta: T. Isquiotibials'
      'Soluci'#243' dreta: O. Femoral deflexora'
      'Soluci'#243' dreta: O. Femoral derrotatoria'
      'Soluci'#243' dreta: T. Recte anterior distal'
      'Soluci'#243' dreta: Descens TTA'
      'Soluci'#243' dreta: O. Tibial derrotatoria'
      'Soluci'#243' dreta: Kalix'
      'Soluci'#243' dreta: Artrodesi talonavicular'
      'Soluci'#243' dreta: Triple artrodesi'
      'Soluci'#243' dreta: T. Aquil'#183'les'
      'Soluci'#243' dreta: T. Tr'#237'ceps sural'
      'Soluci'#243' dreta: T. TP'
      'Soluci'#243' dreta: T. TA'
      'Soluci'#243' esquerra: T. Psoas'
      'Soluci'#243' esquerra: T. Recte anterior'
      'Soluci'#243' esquerra: T. Adductor'
      'Soluci'#243' esquerra: T. Isquiotibials'
      'Soluci'#243' esquerra: O. Femoral deflexora'
      'Soluci'#243' esquerra: O. Femoral derrotatoria'
      'Soluci'#243' esquerra: T. Recte anterior distal'
      'Soluci'#243' esquerra: Descens TTA'
      'Soluci'#243' esquerra: O. Tibial derrotatoria'
      'Soluci'#243' esquerra: Kalix'
      'Soluci'#243' esquerra: Artrodesi talonavicular'
      'Soluci'#243' esquerra: Triple artrodesi'
      'Soluci'#243' esquerra: T. Aquil'#183'les'
      'Soluci'#243' esquerra: T. Tr'#237'ceps sural'
      'Soluci'#243' esquerra: T. TP'
      'Soluci'#243' esquerra: T. TA'
      'Usuari Solucions'
      'Data Solucions'
      'Previsi'#243' dreta: T. Psoas'
      'Previsi'#243' dreta: T. Recte anterior'
      'Previsi'#243' dreta: T. Adductor'
      'Previsi'#243' dreta: T. Isquiotibials'
      'Previsi'#243' dreta: O. Femoral deflexora'
      'Previsi'#243' dreta: O. Femoral derrotatoria'
      'Previsi'#243' dreta: T. Recte anterior distal'
      'Previsi'#243' dreta: Descens TTA'
      'Previsi'#243' dreta: O. Tibial derrotatoria'
      'Previsi'#243' dreta: Kalix'
      'Previsi'#243' dreta: Artrodesi talonavicular'
      'Previsi'#243' dreta: Triple artrodesi'
      'Previsi'#243' dreta: T. Aquil'#183'les'
      'Previsi'#243' dreta: T. Tr'#237'ceps sural'
      'Previsi'#243' dreta: T. TP'
      'Previsi'#243' dreta: T. TA'
      'Previsi'#243' esquerra: T. Psoas'
      'Previsi'#243' esquerra: T. Recte anterior'
      'Previsi'#243' esquerra: T. Adductor'
      'Previsi'#243' esquerra: T. Isquiotibials'
      'Previsi'#243' esquerra: O. Femoral deflexora'
      'Previsi'#243' esquerra: O. Femoral derrotatoria'
      'Previsi'#243' esquerra: T. Recte anterior distal'
      'Previsi'#243' esquerra: Descens TTA'
      'Previsi'#243' esquerra: O. Tibial derrotatoria'
      'Previsi'#243' esquerra: Kalix'
      'Previsi'#243' esquerra: Artrodesi talonavicular'
      'Previsi'#243' esquerra: Triple artrodesi'
      'Previsi'#243' esquerra: T. Aquil'#183'les'
      'Previsi'#243' esquerra: T. Tr'#237'ceps sural'
      'Previsi'#243' esquerra: T. TP'
      'Previsi'#243' esquerra: T. TA')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 201
    Top = 272
  end
  object BQProcs_BI: THYSqlTrigger
    Projecto = wData.Projecte
    NombreDB = 'BI'
    ForceNombreDB = False
    Body.Strings = (
      'DECLARE VARIABLE C_PRESTACIO VARCHAR(4);'
      'BEGIN'
      '   IF (USER <> "REPLICATOR") THEN'
      '   BEGIN'
      
        '      /* El Bloc Quir'#250'rgic se segueix codificant amb CIM-9 fins ' +
        'que canviem el sistema i anem amb cat'#224'leg propi */'
      '      IF (NEW.VERSIOCIM   IS NULL) THEN NEW.VERSIOCIM   = 9;'
      '      IF (NEW.VERSIOCIM_G IS NULL) THEN NEW.VERSIOCIM_G = 9;'
      '   END'
      'END')
    Dic1 = BQProcediments
    Dic1Name = 'BQProcediments'
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
    ModiFecha = 37509.7805334838
    Accion1 = taANTES
    Accion2 = taINSERT
    Left = 416
    Top = 144
  end
  object BQPreinduccio: TDic
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
        Nombre = 'N'#250'mero d'#8217'Hist'#242'ria Cl'#237'nica'
        NombreDB = 'C_HISTORIA'
        Longitud = 8
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Codi intervenci'#243
        NombreDB = 'C_INTERV'
        Longitud = 8
        Consulta = 'Interv'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia card'#237'aca'
        NombreDB = 'FREQ_CARD'
        Longitud = 2
        MaskDisplay = '##;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Freq'#252#232'ncia respirat'#242'ria'
        NombreDB = 'FREQ_RESP'
        Longitud = 3
        MaskDisplay = '###;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Temperatura'
        NombreDB = 'TEMP'
        Longitud = 4
        MaskDisplay = '##.#;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tensi'#243' arterial diast'#242'lica'
        NombreDB = 'TENS_ART_DIAS'
        Longitud = 3
        MaskDisplay = '###;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Tensi'#243' arterial sist'#242'lica'
        NombreDB = 'TENS_ART_SIST'
        Longitud = 3
        MaskDisplay = '###;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'ASA'
        NombreDB = 'ASA'
        Longitud = 3
        zType = tcIB_Varchar
        zNotNull = False
        ValidChars = 'IV'
      end
      item
        Aplica = kcMODELS
        Nombre = 'MALLAMPATI'
        NombreDB = 'MALLAMPATI'
        Longitud = 1
        MaskDisplay = '#;; '
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Pes'
        NombreDB = 'PES'
        Longitud = 5
        MaskDisplay = '###.#;; '
        zType = tcIB_Double
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Talla'
        NombreDB = 'TALLA'
        Longitud = 3
        MaskDisplay = '###;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcMemo
        Nombre = 'Medicaci'#243
        NombreDB = 'MEDICACIO'
        Longitud = 1
        zType = tcIB_Blob
        zNotNull = False
        zBlobSubTipo = 'TEXT'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Observacions'
        NombreDB = 'OBSERVACIONS'
        Longitud = 3000
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari'
        NombreDB = 'C_USUARI'
        Longitud = 5
        Consulta = 'Metges'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data i hora del registre'
        NombreDB = 'DATA'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Motiu anul'#183'laci'#243
        NombreDB = 'MOTIU_ANULA'
        Longitud = 100
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari anul'#183'laci'#243
        NombreDB = 'C_USER_ANULA'
        Longitud = 5
        Consulta = 'MetgeAnula'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data anul'#183'laci'#243
        NombreDB = 'DATA_ANULA'
        Longitud = 19
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcSiNo
        Nombre = 'Anulat'
        NombreDB = 'ANULAT'
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
          'ID')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Interv'
        NombreDB = 'Interv'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi intervenci'#243)
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Filiacio'
        NombreDB = 'Filiacio'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'mero d'#8217'Hist'#242'ria Cl'#237'nica')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Interv'
        Master = BQuirurgic
        BuscaOrigen.Strings = (
          'Codi intervenci'#243)
        CopiarOrigen.Strings = (
          'Codi intervenci'#243)
        CopiarMaster.Strings = (
          'C Intervenci'#243)
        BuscaMaster.Strings = (
          'C Intervenci'#243)
      end
      item
        Nombre = 'Metges'
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
        Nombre = 'MetgeAnula'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari anul'#183'laci'#243)
        CopiarOrigen.Strings = (
          'Usuari anul'#183'laci'#243)
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'Preinduccio anestesica'
    NombreTabla = 'BQPREINDUCCIO'
    Organiza = tbBase
    CamposVer.Strings = (
      'ID'
      'N'#250'mero d'#8217'Hist'#242'ria Cl'#237'nica'
      'Codi intervenci'#243
      'Freq'#252#232'ncia card'#237'aca'
      'Freq'#252#232'ncia respirat'#242'ria'
      'Temperatura'
      'Tensi'#243' arterial diast'#242'lica'
      'Tensi'#243' arterial sist'#242'lica'
      'ASA'
      'MALLAMPATI'
      'Pes'
      'Talla'
      'Medicaci'#243
      'Observacions')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 32
    Top = 272
  end
  object TraspasAnestesia: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'TraspasAnestesia'
    ForceNombreDB = False
    Body.Strings = (
      'AS'
      ' DECLARE VARIABLE C_INTERV       INTEGER;'
      ' DECLARE VARIABLE BQ_ESTAT       INTEGER;'
      ' DECLARE VARIABLE BQA_ESTAT      INTEGER;'
      ' DECLARE VARIABLE C_ANESTESIOLEG VARCHAR(5);'
      ' DECLARE VARIABLE C_ANESTESIA    SMALLINT;'
      ' DECLARE VARIABLE BQ_NOU_ESTAT   INTEGER;'
      ' DECLARE VARIABLE BQA_CINTERV    INTEGER;'
      ' DECLARE VARIABLE BQA_NOU_ESTAT  INTEGER;'
      'BEGIN'
      ''
      
        '  FOR SELECT B.C_INTERV, B.ESTAT, B.C_ANESTESIA, B.C_ANESTESIOLE' +
        'G, A.C_INTERV, A.C_ESTAT FROM BQUIRURGIC B'
      '  LEFT JOIN BQANESTESIA A ON B.C_INTERV = A.C_INTERV'
      '  WHERE B.ESTAT IN(30,31,32,33,34,35,36)'
      '  ORDER BY B.C_INTERV'
      
        '  INTO :C_INTERV, :BQ_ESTAT, :C_ANESTESIA, :C_ANESTESIOLEG, :BQA' +
        '_CINTERV, :BQA_ESTAT'
      '  DO BEGIN'
      ''
      
        '      IF ((BQ_ESTAT = 30) OR (BQ_ESTAT = 31) OR (BQ_ESTAT = 32) ' +
        'OR (BQ_ESTAT = 36)) THEN         /* 30-Intervenci'#243' finalitzada o' +
        ' 31-Falta omplir full quir'#250'rgic (metges) o*/'
      
        '      BEGIN                                                     ' +
        '                                 /* 32-Falta omplir full quir'#250'rg' +
        'ic (infermeria) o 36-Falten fulls Metges i Infermeria */'
      
        '          IF ((C_ANESTESIA IS NOT NULL) AND (C_ANESTESIA <> 9)) ' +
        '      THEN BQA_NOU_ESTAT = 2;    /* si t'#233' anestesia informada i ' +
        'no '#233's 9-No, el full d'#39'Anest'#232'sia ja est'#224' fet => 2 */'
      
        '                                                                ' +
        '      ELSE BQA_NOU_ESTAT = NULL; /* altrament, el full d'#39'Anest'#232's' +
        'ia no s'#39'ha de fer => NULL */'
      '      END;'
      
        '      ELSE IF ((BQ_ESTAT = 33) OR (BQ_ESTAT = 34) OR (BQ_ESTAT =' +
        ' 35)) THEN BQA_NOU_ESTAT = 1;    /* 33-Falta omplir full anest'#232's' +
        'ia o 34-Falten fulls Infermeria i Anest'#232'sia o 35-Falten fulls Me' +
        'tges i Anest'#232'sia => full d'#39'Anest'#232'sia pendent => 1 */'
      
        '                                                                ' +
        '      ELSE BQA_NOU_ESTAT = NULL; /* Altrament, no te full d'#39'Anes' +
        'tesia */'
      ''
      '      IF (BQA_NOU_ESTAT IS NOT NULL) THEN'
      '      BEGIN'
      '          IF (BQA_CINTERV IS NULL) THEN'
      '          BEGIN'
      
        '              INSERT INTO BQANESTESIA(C_INTERV, DATA, C_USUARI, ' +
        'G1, G2, G3, G4, G5, G6, CG1, CG2, CG3, CG4, CG5, CG6, CG7, CG8, ' +
        'CG9, CG10, CLV1, CLV2, CLN1, CLN2, CL3, CL4, CL5, CG11, CG12, CG' +
        '13, GRAU_SEVERITAT,  C_ANESTESIOLEG,  C_ANESTESIA,        C_ESTA' +
        'T)'
      
        '                               VALUES(:C_INTERV, NULL,     NULL,' +
        '"", "", "", "", "", "",  "",  "",  "",  "",  "",  "",  "",  "", ' +
        ' "",  "",    "",   "",   "",   "",  "",  "",  "",   "",   "",   ' +
        '"",           NULL, :C_ANESTESIOLEG, :C_ANESTESIA, :BQA_NOU_ESTA' +
        'T);'
      '          END;'
      '          ELSE BEGIN'
      
        '              UPDATE BQANESTESIA SET C_ESTAT = :BQA_NOU_ESTAT WH' +
        'ERE C_INTERV = :C_INTERV;'
      '          END;'
      '      END;'
      ''
      ''
      
        '      /* 33-Falta omplir full anest'#232'sia:         a 30-Intervenci' +
        #243' finalitzada                  i bqanestesia.c_estat=1'
      
        '         34-Falten fulls Infermeria i Anest'#232'sia: a 32-Falta ompl' +
        'ir full quir'#250'rgic (infermeria) i bqanestesia.c_estat=1'
      
        '         35-Falten fulls Metges i Anest'#232'sia:     a 31-Falta ompl' +
        'ir full quir'#250'rgic (metges)     i bqanestesia.c_estat=1  */'
      '      IF      (BQ_ESTAT = 33) THEN BQ_NOU_ESTAT = 30;'
      '      ELSE IF (BQ_ESTAT = 34) THEN BQ_NOU_ESTAT = 32;'
      '      ELSE IF (BQ_ESTAT = 35) THEN BQ_NOU_ESTAT = 31;'
      '                              ELSE BQ_NOU_ESTAT = NULL;'
      ''
      
        '      IF (BQ_NOU_ESTAT IS NOT NULL) THEN UPDATE BQUIRURGIC SET E' +
        'STAT = :BQ_NOU_ESTAT WHERE C_INTERV = :C_INTERV;'
      '  END;'
      ''
      '  '
      'END')
    Dic1 = BQuirurgic
    Dic2 = BQAnestesia
    Dic1Name = 'BQuirurgic'
    Dic2Name = 'BQAnestesia'
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
    Top = 80
  end
  object BQMat_Lin: TDic
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
        AutoContador.Dic = BQMat_Lin
        AutoContador.Campo = 'ID'
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Codi intervenci'#243
        NombreDB = 'C_Interv'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Interv'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'N'#250'mero hist'#242'ria cl'#237'nica'
        NombreDB = 'C_Historia'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        Consulta = 'Filiacio'
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'EMDN '
        NombreDB = 'EMDN'
        Longitud = 15
        Consulta = 'EMDN'
        zType = tcIB_Varchar
        zNotNull = False
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
        Aplica = kcCaracter
        Nombre = 'Codi producte'
        NombreDB = 'C_Prod'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = 'Quantitat'
        NombreDB = 'Quantitat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Integer
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Tipus d'#39'intervenci'#243
        NombreDB = 'C_Tipus'
        Longitud = 3
        Consulta = 'Tipus'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'N'#250'mero de s'#232'rie'
        NombreDB = 'Num_Serie'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Lot'
        NombreDB = 'Lot'
        Longitud = 20
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data caducitat'
        NombreDB = 'Data_Caducitat'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'NIF prove'#239'dor'
        NombreDB = 'NIF_Prov'
        Longitud = 9
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Nom prove'#239'dor'
        NombreDB = 'N_Prov'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Casa comercial'
        NombreDB = 'Casa_Comercial'
        Longitud = 50
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data registre'
        NombreDB = 'Data_R'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari registre'
        NombreDB = 'C_Usuari_R'
        Longitud = 5
        Consulta = 'MetgeR'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Estat validaci'#243' factura'
        NombreDB = 'C_Estat'
        Longitud = 8
        MaskDisplay = '#,##0;; '
        zType = tcIB_Smallint
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data validaci'#243' factura'
        NombreDB = 'Data_V'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari validaci'#243' factura'
        NombreDB = 'C_Usuari_V'
        Longitud = 5
        Consulta = 'MetgeV'
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data generaci'#243' excel'
        NombreDB = 'Data_E'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCaracter
        Nombre = 'Usuari generaci'#243' excel'
        NombreDB = 'C_Usuari_E'
        Longitud = 5
        Consulta = 'MetgeE'
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
          'Identificador')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end
      item
        Nombre = 'Interv'
        NombreDB = 'Interv'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'Codi intervenci'#243)
        Tipo = tiForaneo
        ForaneoDic = BQuirurgic
        ForaneoCampos.Strings = (
          'C Intervenci'#243)
        Unico = False
        Descending = False
      end
      item
        Nombre = 'NHC'
        NombreDB = 'NHC'
        EsVirtual = False
        DelOnCascade = False
        UpOnCascade = False
        CamposOrden.Strings = (
          'N'#250'mero hist'#242'ria cl'#237'nica')
        Tipo = tiForaneo
        ForaneoDic = wDataBasics.Filiacio
        ForaneoCampos.Strings = (
          'N'#186' Historia')
        Unico = False
        Descending = False
      end>
    Consultas = <
      item
        Nombre = 'Interv'
        Master = BQuirurgic
        BuscaOrigen.Strings = (
          'Codi intervenci'#243)
        CopiarOrigen.Strings = (
          'Codi intervenci'#243)
        CopiarMaster.Strings = (
          'C Intervenci'#243)
        BuscaMaster.Strings = (
          'C Intervenci'#243)
      end
      item
        Nombre = 'Filiacio'
        Master = wDataBasics.Filiacio
        BuscaOrigen.Strings = (
          'N'#250'mero hist'#242'ria cl'#237'nica')
        CopiarOrigen.Strings = (
          'N'#250'mero hist'#242'ria cl'#237'nica')
        CopiarMaster.Strings = (
          'N'#186' Historia')
        BuscaMaster.Strings = (
          'N'#186' Historia')
      end
      item
        Nombre = 'Tipus'
        Master = wDataCodis.CodiCamps3
        BuscaOrigen.Strings = (
          'Tipus d'#39'intervenci'#243)
        CopiarOrigen.Strings = (
          'Tipus d'#39'intervenci'#243)
        CopiarMaster.Strings = (
          'C_Codi')
        BuscaMaster.Strings = (
          'C_Codi')
        WhereFiltro = 'TIPUSCODI='#39'BQMAT.TIPUS'#39
      end
      item
        Nombre = 'MetgeR'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari registre')
        CopiarOrigen.Strings = (
          'Usuari registre')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'MetgeV'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari validaci'#243' factura')
        CopiarOrigen.Strings = (
          'Usuari validaci'#243' factura')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end
      item
        Nombre = 'EMDN'
        Master = EMDN
        BuscaOrigen.Strings = (
          'EMDN ')
        CopiarOrigen.Strings = (
          'EMDN ')
        CopiarMaster.Strings = (
          'Identificador')
        BuscaMaster.Strings = (
          'Identificador')
      end
      item
        Nombre = 'MetgeE'
        Master = wDataBasics.Metges
        BuscaOrigen.Strings = (
          'Usuari generaci'#243' excel')
        CopiarOrigen.Strings = (
          'Usuari generaci'#243' excel')
        CopiarMaster.Strings = (
          'C'#243'dig Usuari')
        BuscaMaster.Strings = (
          'C'#243'dig Usuari')
      end>
    Nombre = 'BQMat_Lin'
    NombreTabla = 'BQMat_Lin'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador'
      'Codi intervenci'#243
      'N'#250'mero hist'#242'ria cl'#237'nica'
      'EMDN '
      'Descripci'#243
      'Quantitat'
      'N'#250'mero de s'#232'rie'
      'Lot'
      'Data caducitat'
      'NIF prove'#239'dor'
      'Nom prove'#239'dor'
      'Data registre'
      'Usuari registre'
      'Estat validaci'#243' factura'
      'Data validaci'#243' factura'
      'Usuari validaci'#243' factura'
      'Tipus d'#39'intervenci'#243)
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 536
    Top = 24
  end
  object EMDN: TDic
    CalcNivel = False
    Projecto = wData.Projecte
    Campos = <
      item
        Aplica = kcCaracter
        Nombre = 'Identificador'
        NombreDB = 'ID'
        Longitud = 15
        zType = tcIB_Varchar
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
        Aplica = kcFecha
        Nombre = 'Data inici'
        NombreDB = 'Data_Inici'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcFecha
        Nombre = 'Data final'
        NombreDB = 'Data_Final'
        Longitud = 11
        MaskDisplay = 'dd"-"mm"-"yyyy hh":"nn":"ss'
        MaskEdit = '!99/99/9999 99:99:99;1; '
        zType = tcIB_Date
        zNotNull = False
      end
      item
        Aplica = kcCodigo
        Nombre = 'Categoria'
        NombreDB = 'Categoria'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
      end
      item
        Aplica = kcMODELS
        Nombre = 'Nivell'
        NombreDB = 'Nivell'
        Longitud = 3
        zType = tcIB_Smallint
        zNotNull = False
        Comentario = 'Valors de 1 a 7'
      end
      item
        Aplica = kcSiNo
        Nombre = 'Nivell inferior'
        NombreDB = 'Nivell_Inferior'
        Longitud = 1
        zType = tcIB_Char
        zNotNull = False
        zDefault = 'N'
        ValidChars = 'SN'
      end
      item
        Aplica = kcCaracter
        Nombre = 'Codi pare'
        NombreDB = 'Codi_Pare'
        Longitud = 15
        zType = tcIB_Varchar
        zNotNull = False
      end
      item
        Aplica = kcNumEntero
        Nombre = #201's freq'#252'ent'
        NombreDB = 'C_Frequent'
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
          'Identificador')
        Tipo = tiPrimario
        Unico = False
        Descending = False
      end>
    Consultas = <>
    Nombre = 'EMDN'
    NombreTabla = 'EMDN'
    Organiza = tbBase
    CamposVer.Strings = (
      'Identificador'
      'Descripci'#243
      'Nivell'
      'Nivell inferior'
      'Codi pare')
    IndiceVer = 'PK'
    Navegar = False
    Nivel = 0
    Grupo = 0
    Oculto = False
    Modi = False
    Left = 480
    Top = 24
  end
  object AltaMassiva: THYSqlProc
    Projecto = wData.Projecte
    NombreDB = 'AltaMassiva'
    ForceNombreDB = False
    Body.Strings = (
      '(DATAI DATE, DATAF DATE, ENTORN CHAR(3))'
      'RETURNS (CODI_CENTRE_SANITARI VARCHAR(9),'
      '         CODI_PROCEDIMENT  VARCHAR(15),'
      '         DATA_INTERVENCIO  DATE,'
      '         HISTORIA_CLINICA  INTEGER,'
      '         AMBIT_ASSISTENCIAL VARCHAR(6),'
      '         TIPUS_INTERVENCIO CHAR(3),'
      '         SEXE              CHAR(6),'
      '         IDENTITAT_GENERE  VARCHAR(10),'
      '         DATA_NAIXEMENT    DATE,'
      '         CONSENTIMENT_INFORMAT CHAR(2),'
      '         TELEFON           VARCHAR(15),'
      '         CORREU_ELECTRONIC VARCHAR(60),'
      '         NOM               VARCHAR(20),'
      '         COGNOM1           VARCHAR(20),'
      '         COGNOM2           VARCHAR(20),'
      '         NACIONALITAT      VARCHAR(3),'
      '         TIPUS_IDENTIFICACIO VARCHAR(8),'
      '         TIPUS_IDENTIFICACIO_VALOR VARCHAR(15),'
      '         CIP               VARCHAR(20),'
      '         CIUTAT            VARCHAR(5),'
      '         CODI_POSTAL       VARCHAR(5),'
      '         LLETRA            VARCHAR(3),'
      '         NOM_VIA           VARCHAR(50),'
      '         NUM_VIA           VARCHAR(10),'
      '         PAIS              VARCHAR(3),'
      '         PIS               VARCHAR(5),'
      '         PROVINCIA         VARCHAR(2),'
      '         TIPUS_VIA         VARCHAR(2),'
      '         LOT_1             VARCHAR(20),'
      '         NUMERO_SERIE_1    VARCHAR(20),'
      '         CODI_EMDN_1       VARCHAR(15),'
      '         DATA_CADUCITAT_1  DATE,'
      '         CODI_PRODUCTE_1   VARCHAR(20),'
      '         NIF_EMPRESA_1     VARCHAR(9),'
      '         NOM_EMPRESA_1     VARCHAR(50),'
      '         LOT_2             VARCHAR(20),'
      '         NUMERO_SERIE_2    VARCHAR(20),'
      '         CODI_EMDN_2       VARCHAR(15),'
      '         DATA_CADUCITAT_2  DATE,'
      '         CODI_PRODUCTE_2   VARCHAR(20),'
      '         NIF_EMPRESA_2     VARCHAR(9),'
      '         NOM_EMPRESA_2     VARCHAR(50),'
      '         LOT_3             VARCHAR(20),'
      '         NUMERO_SERIE_3    VARCHAR(20),'
      '         CODI_EMDN_3       VARCHAR(15),'
      '         DATA_CADUCITAT_3  DATE,'
      '         CODI_PRODUCTE_3   VARCHAR(20),'
      '         NIF_EMPRESA_3     VARCHAR(9),'
      '         NOM_EMPRESA_3     VARCHAR(50),'
      '         LOT_4             VARCHAR(20),'
      '         NUMERO_SERIE_4    VARCHAR(20),'
      '         CODI_EMDN_4       VARCHAR(15),'
      '         DATA_CADUCITAT_4  DATE,'
      '         CODI_PRODUCTE_4   VARCHAR(20),'
      '         NIF_EMPRESA_4     VARCHAR(9),'
      '         NOM_EMPRESA_4     VARCHAR(50),'
      '         LOT_5             VARCHAR(20),'
      '         NUMERO_SERIE_5    VARCHAR(20),'
      '         CODI_EMDN_5       VARCHAR(15),'
      '         DATA_CADUCITAT_5  DATE,'
      '         CODI_PRODUCTE_5   VARCHAR(20),'
      '         NIF_EMPRESA_5     VARCHAR(9),'
      '         NOM_EMPRESA_5     VARCHAR(50),'
      '         LOT_6             VARCHAR(20),'
      '         NUMERO_SERIE_6    VARCHAR(20),'
      '         CODI_EMDN_6       VARCHAR(15),'
      '         DATA_CADUCITAT_6  DATE,'
      '         CODI_PRODUCTE_6   VARCHAR(20),'
      '         NIF_EMPRESA_6     VARCHAR(9),'
      '         NOM_EMPRESA_6     VARCHAR(50),'
      '         LOT_7             VARCHAR(20),'
      '         NUMERO_SERIE_7    VARCHAR(20),'
      '         CODI_EMDN_7       VARCHAR(15),'
      '         DATA_CADUCITAT_7  DATE,'
      '         CODI_PRODUCTE_7   VARCHAR(20),'
      '         NIF_EMPRESA_7     VARCHAR(9),'
      '         NOM_EMPRESA_7     VARCHAR(50),'
      '         LOT_8             VARCHAR(20),'
      '         NUMERO_SERIE_8    VARCHAR(20),'
      '         CODI_EMDN_8       VARCHAR(15),'
      '         DATA_CADUCITAT_8  DATE,'
      '         CODI_PRODUCTE_8   VARCHAR(20),'
      '         NIF_EMPRESA_8     VARCHAR(9),'
      '         NOM_EMPRESA_8     VARCHAR(50),'
      '         LOT_9             VARCHAR(20),'
      '         NUMERO_SERIE_9    VARCHAR(20),'
      '         CODI_EMDN_9       VARCHAR(15),'
      '         DATA_CADUCITAT_9  DATE,'
      '         CODI_PRODUCTE_9   VARCHAR(20),'
      '         NIF_EMPRESA_9     VARCHAR(9),'
      '         NOM_EMPRESA_9     VARCHAR(50),'
      '         LOT_10            VARCHAR(20),'
      '         NUMERO_SERIE_10   VARCHAR(20),'
      '         CODI_EMDN_10      VARCHAR(15),'
      '         DATA_CADUCITAT_10 DATE,'
      '         CODI_PRODUCTE_10  VARCHAR(20),'
      '         NIF_EMPRESA_10    VARCHAR(9),'
      '         NOM_EMPRESA_10    VARCHAR(50),'
      '         C_INTERV          INTEGER'
      ')'
      'AS'
      '  DECLARE VARIABLE C_TIPUS VARCHAR(3);'
      '  DECLARE VARIABLE T_DOC CHAR(1);'
      '  DECLARE VARIABLE LOT VARCHAR(20);'
      '  DECLARE VARIABLE NUM_SERIE VARCHAR(20);'
      '  DECLARE VARIABLE EMDN VARCHAR(15);'
      '  DECLARE VARIABLE DATA_CADUCITAT DATE;'
      '  DECLARE VARIABLE C_PROD VARCHAR(40);'
      '  DECLARE VARIABLE NIF_PROV VARCHAR(9);'
      '  DECLARE VARIABLE N_PROV VARCHAR(50);'
      '  DECLARE VARIABLE NUM_IMPLANT INTEGER;'
      '  DECLARE VARIABLE VERSIOCIM INTEGER;'
      '  DECLARE VARIABLE C_CENTREFAC CHAR(2);'
      'BEGIN'
      ''
      '  CODI_CENTRE_SANITARI = '#39'H08000723'#39';'
      '  CONSENTIMENT_INFORMAT = '#39'S'#39';  /* per defecte '#233's s'#237' */'
      '  IDENTITAT_GENERE = NULL;      /* '#233's opcional i no el tenim */'
      ''
      
        '  FOR SELECT DISTINCT L.C_INTERV, L.C_TIPUS, BQ.C_CENTREFAC, BQ.' +
        'C_PROCEDIMENT, BQ.VERSIOCIM, f_solofecha(BQ.DATA_ENTRADA), L.C_H' +
        'ISTORIA, CAST(CCS.R_CODI AS VARCHAR(6)), F.FECHA_NAC,'
      
        '             P.PREFIX || F.TELEFONO, F.EMAIL, F.NOMBRE, F.APELLI' +
        'DO1, F.APELLIDO2, P.C_ISO, F.T_DOC, F.DNI, F.TSI, F.CODIGO, CAST' +
        '(F_LEFT(F.RESIDENCIA,5) AS varchar(5)), F.PORTA,'
      
        '             F.NOMVIA, F.NUMERO, F.PIS, CAST(F_LEFT(F.RESIDENCIA' +
        ',2) AS varchar(2)), CV.C_CODI'
      '  FROM BQMAT_LIN L'
      '  LEFT JOIN BQUIRURGIC BQ ON L.C_INTERV=BQ.C_INTERV'
      '  LEFT JOIN FILIACIO F ON L.C_HISTORIA=F.NUM_HIST'
      
        '  LEFT JOIN CODICAMPSCURT CCS ON F.SEXO = CCS.C_CODI AND CCS.TIP' +
        'USCODI='#39'GENERE'#39
      '  LEFT JOIN PAIS P ON F.PAIS = P.C_PAIS'
      '  LEFT JOIN CODIVIA CV ON F.TIPUSVIA = CV.C_VIA'
      '  WHERE BQ.DATA_ENTRADA BETWEEN :DATAI and :DATAF'
      '  AND (L.EMDN <> '#39#39') AND (L.C_ESTAT<3)'
      '  AND (L.NIF_PROV <> '#39#39') AND (L.N_PROV <> '#39#39')'
      '  ORDER BY L.C_INTERV, L.C_TIPUS'
      
        '  INTO :C_INTERV, :C_TIPUS, :C_CENTREFAC, :CODI_PROCEDIMENT, :VE' +
        'RSIOCIM, :DATA_INTERVENCIO, :HISTORIA_CLINICA, :SEXE, :DATA_NAIX' +
        'EMENT, :TELEFON, :CORREU_ELECTRONIC, :NOM,'
      
        '       :COGNOM1, :COGNOM2, :NACIONALITAT, :T_DOC, :TIPUS_IDENTIF' +
        'ICACIO_VALOR, :CIP, :CODI_POSTAL, :CIUTAT, :LLETRA, :NOM_VIA, :N' +
        'UM_VIA, :PIS, :PROVINCIA, :TIPUS_VIA'
      '  DO BEGIN'
      '      IF      (T_DOC = '#39'D'#39') THEN TIPUS_IDENTIFICACIO = '#39'DNI'#39';'
      '      ELSE IF (T_DOC = '#39'N'#39') THEN TIPUS_IDENTIFICACIO = '#39'NIE'#39';'
      
        '      ELSE IF (T_DOC = '#39'P'#39') THEN TIPUS_IDENTIFICACIO = '#39'PASSPORT' +
        #39';'
      '      '
      '      IF (C_CENTREFAC = '#39'04'#39') THEN AMBIT_ASSISTENCIAL = '#39'PUB'#39';'
      '                              ELSE AMBIT_ASSISTENCIAL = '#39'PRIV'#39';'
      ''
      '      /* netejem camps */'
      
        '      LOT_1 = NULL; LOT_2 = NULL; LOT_3 = NULL; LOT_4 = NULL; LO' +
        'T_5 = NULL; LOT_6 = NULL; LOT_7 = NULL; LOT_8 = NULL; LOT_9 = NU' +
        'LL; LOT_10 = NULL;'
      
        '      NUMERO_SERIE_1 = NULL; NUMERO_SERIE_2 = NULL; NUMERO_SERIE' +
        '_3 = NULL; NUMERO_SERIE_4 = NULL; NUMERO_SERIE_5 = NULL; NUMERO_' +
        'SERIE_6 = NULL; NUMERO_SERIE_7 = NULL; NUMERO_SERIE_8 = NULL; NU' +
        'MERO_SERIE_9 = NULL; NUMERO_SERIE_10 = NULL;'
      
        '      CODI_EMDN_1 = NULL; CODI_EMDN_2 = NULL; CODI_EMDN_3 = NULL' +
        '; CODI_EMDN_4 = NULL; CODI_EMDN_5 = NULL; CODI_EMDN_6 = NULL; CO' +
        'DI_EMDN_7 = NULL; CODI_EMDN_8 = NULL; CODI_EMDN_9 = NULL; CODI_E' +
        'MDN_10 = NULL;'
      
        '      DATA_CADUCITAT_1 = NULL; DATA_CADUCITAT_2 = NULL; DATA_CAD' +
        'UCITAT_3 = NULL; DATA_CADUCITAT_4 = NULL; DATA_CADUCITAT_5 = NUL' +
        'L; DATA_CADUCITAT_6 = NULL; DATA_CADUCITAT_7 = NULL; DATA_CADUCI' +
        'TAT_8 = NULL; DATA_CADUCITAT_9 = NULL; DATA_CADUCITAT_10 = NULL;'
      
        '      CODI_PRODUCTE_1 = NULL; CODI_PRODUCTE_2 = NULL; CODI_PRODU' +
        'CTE_3 = NULL; CODI_PRODUCTE_4 = NULL; CODI_PRODUCTE_5 = NULL; CO' +
        'DI_PRODUCTE_6 = NULL; CODI_PRODUCTE_7 = NULL; CODI_PRODUCTE_8 = ' +
        'NULL; CODI_PRODUCTE_9 = NULL; CODI_PRODUCTE_10 = NULL;'
      
        '      NIF_EMPRESA_1 = NULL; NIF_EMPRESA_2 = NULL; NIF_EMPRESA_3 ' +
        '= NULL; NIF_EMPRESA_4 = NULL; NIF_EMPRESA_5 = NULL; NIF_EMPRESA_' +
        '6 = NULL; NIF_EMPRESA_7 = NULL; NIF_EMPRESA_8 = NULL; NIF_EMPRES' +
        'A_9 = NULL; NIF_EMPRESA_10 = NULL;'
      
        '      NOM_EMPRESA_1 = NULL; NOM_EMPRESA_2 = NULL; NOM_EMPRESA_3 ' +
        '= NULL; NOM_EMPRESA_4 = NULL; NOM_EMPRESA_5 = NULL; NOM_EMPRESA_' +
        '6 = NULL; NOM_EMPRESA_7 = NULL; NOM_EMPRESA_8 = NULL; NOM_EMPRES' +
        'A_9 = NULL; NOM_EMPRESA_10 = NULL;'
      '  '
      '      PAIS = NACIONALITAT;'
      ''
      '      /* a l'#39'entorn PRE anonimitzem les dades */'
      '      IF (ENTORN = '#39'PRE'#39') THEN'
      '      BEGIN'
      '          SEXE = '#39'male'#39';'
      '          AMBIT_ASSISTENCIAL = '#39'PUB'#39';'
      '          DATA_NAIXEMENT = '#39'1954-04-03'#39';'
      '          CONSENTIMENT_INFORMAT = '#39'S'#39';'
      '          TELEFON = '#39'+34934977700'#39';'
      '          CORREU_ELECTRONIC = '#39'prova@gmail.com'#39';'
      '          NOM = '#39'CIUTADA'#39';'
      '          COGNOM1 = '#39'FICTICI'#39';'
      '          COGNOM2 = '#39'ACTIU'#39';'
      '          NACIONALITAT = '#39'724'#39';'
      '          TIPUS_IDENTIFICACIO = '#39'DNI'#39';'
      '          TIPUS_IDENTIFICACIO_VALOR = '#39'99999990S'#39';'
      '          CIP = '#39'FIAC0540403002'#39';'
      '          CIUTAT = '#39'08017'#39';'
      '          CODI_POSTAL = '#39'08017'#39';'
      '          LLETRA = '#39#39';'
      '          NOM_VIA = '#39'CAMI DE CAN RUTI'#39';'
      '          NUM_VIA = '#39'249'#39';'
      '          PAIS = '#39'724'#39';'
      '          PIS = '#39's/n'#39';'
      '          PROVINCIA = '#39'08'#39';'
      '          TIPUS_VIA = '#39'CM'#39';'
      '      END;'
      ''
      '      NUM_IMPLANT=1;'
      ''
      
        '      FOR SELECT C_TIPUS, LOT, NUM_SERIE, EMDN, DATA_CADUCITAT, ' +
        'C_PROD, NIF_PROV, N_PROV'
      '      FROM BQMAT_LIN'
      
        '      WHERE C_INTERV = :C_INTERV AND C_TIPUS = :C_TIPUS AND (C_E' +
        'STAT < 3)'
      '      AND (NIF_PROV <> '#39#39') AND (N_PROV <> '#39#39') AND (EMDN <> '#39#39')'
      '      ORDER BY ID'
      
        '      INTO :TIPUS_INTERVENCIO, :LOT, :NUM_SERIE, :EMDN, :DATA_CA' +
        'DUCITAT, :C_PROD, :NIF_PROV, :N_PROV'
      '      DO BEGIN'
      '      '
      '          IF (NUM_IMPLANT = 1) THEN'
      '          BEGIN'
      '              LOT_1 = LOT;'
      '              NUMERO_SERIE_1 = NUM_SERIE;'
      '              CODI_EMDN_1 = EMDN;'
      '              DATA_CADUCITAT_1 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_1 = C_PROD;'
      '              NIF_EMPRESA_1 = NIF_PROV;'
      '              NOM_EMPRESA_1 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 2) THEN'
      '          BEGIN'
      '              LOT_2 = LOT;'
      '              NUMERO_SERIE_2 = NUM_SERIE;'
      '              CODI_EMDN_2 = EMDN;'
      '              DATA_CADUCITAT_2 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_2 = C_PROD;'
      '              NIF_EMPRESA_2 = NIF_PROV;'
      '              NOM_EMPRESA_2 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 3) THEN'
      '          BEGIN'
      '              LOT_3 = LOT;'
      '              NUMERO_SERIE_3 = NUM_SERIE;'
      '              CODI_EMDN_3 = EMDN;'
      '              DATA_CADUCITAT_3 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_3 = C_PROD;'
      '              NIF_EMPRESA_3 = NIF_PROV;'
      '              NOM_EMPRESA_3 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 4) THEN'
      '          BEGIN'
      '              LOT_4 = LOT;'
      '              NUMERO_SERIE_4 = NUM_SERIE;'
      '              CODI_EMDN_4 = EMDN;'
      '              DATA_CADUCITAT_4 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_4 = C_PROD;'
      '              NIF_EMPRESA_4 = NIF_PROV;'
      '              NOM_EMPRESA_4 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 5) THEN'
      '          BEGIN'
      '              LOT_5 = LOT;'
      '              NUMERO_SERIE_5 = NUM_SERIE;'
      '              CODI_EMDN_5 = EMDN;'
      '              DATA_CADUCITAT_5 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_5 = C_PROD;'
      '              NIF_EMPRESA_5 = NIF_PROV;'
      '              NOM_EMPRESA_5 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 6) THEN'
      '          BEGIN'
      '              LOT_6 = LOT;'
      '              NUMERO_SERIE_6 = NUM_SERIE;'
      '              CODI_EMDN_6 = EMDN;'
      '              DATA_CADUCITAT_6 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_6 = C_PROD;'
      '              NIF_EMPRESA_6 = NIF_PROV;'
      '              NOM_EMPRESA_6 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 7) THEN'
      '          BEGIN'
      '              LOT_7 = LOT;'
      '              NUMERO_SERIE_7 = NUM_SERIE;'
      '              CODI_EMDN_7 = EMDN;'
      '              DATA_CADUCITAT_7 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_7 = C_PROD;'
      '              NIF_EMPRESA_7 = NIF_PROV;'
      '              NOM_EMPRESA_7 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 8) THEN'
      '          BEGIN'
      '              LOT_8 = LOT;'
      '              NUMERO_SERIE_8 = NUM_SERIE;'
      '              CODI_EMDN_8 = EMDN;'
      '              DATA_CADUCITAT_8 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_8 = C_PROD;'
      '              NIF_EMPRESA_8 = NIF_PROV;'
      '              NOM_EMPRESA_8 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 9) THEN'
      '          BEGIN'
      '              LOT_9 = LOT;'
      '              NUMERO_SERIE_9 = NUM_SERIE;'
      '              CODI_EMDN_9 = EMDN;'
      '              DATA_CADUCITAT_9 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_9 = C_PROD;'
      '              NIF_EMPRESA_9 = NIF_PROV;'
      '              NOM_EMPRESA_9 = N_PROV;'
      '          END;'
      '          ELSE IF (NUM_IMPLANT = 10) THEN'
      '          BEGIN'
      '              LOT_10 = LOT;'
      '              NUMERO_SERIE_10 = NUM_SERIE;'
      '              CODI_EMDN_10 = EMDN;'
      '              DATA_CADUCITAT_10 = DATA_CADUCITAT;'
      '              CODI_PRODUCTE_10 = C_PROD;'
      '              NIF_EMPRESA_10 = NIF_PROV;'
      '              NOM_EMPRESA_10 = N_PROV;'
      '          END;'
      ''
      '          NUM_IMPLANT = NUM_IMPLANT + 1;'
      '          '
      
        '          /* Si una intervenci'#243' t'#233' m'#233's de 10 implents, hem de fe' +
        'r una nova l'#237'nia */'
      '          IF (NUM_IMPLANT > 10) THEN'
      '          BEGIN'
      '              SUSPEND;'
      '              '
      '              /* netejem camps */'
      
        '              LOT_1 = NULL; LOT_2 = NULL; LOT_3 = NULL; LOT_4 = ' +
        'NULL; LOT_5 = NULL; LOT_6 = NULL; LOT_7 = NULL; LOT_8 = NULL; LO' +
        'T_9 = NULL; LOT_10 = NULL;'
      
        '              NUMERO_SERIE_1 = NULL; NUMERO_SERIE_2 = NULL; NUME' +
        'RO_SERIE_3 = NULL; NUMERO_SERIE_4 = NULL; NUMERO_SERIE_5 = NULL;' +
        ' NUMERO_SERIE_6 = NULL; NUMERO_SERIE_7 = NULL; NUMERO_SERIE_8 = ' +
        'NULL; NUMERO_SERIE_9 = NULL; NUMERO_SERIE_10 = NULL;'
      
        '              CODI_EMDN_1 = NULL; CODI_EMDN_2 = NULL; CODI_EMDN_' +
        '3 = NULL; CODI_EMDN_4 = NULL; CODI_EMDN_5 = NULL; CODI_EMDN_6 = ' +
        'NULL; CODI_EMDN_7 = NULL; CODI_EMDN_8 = NULL; CODI_EMDN_9 = NULL' +
        '; CODI_EMDN_10 = NULL;'
      
        '              DATA_CADUCITAT_1 = NULL; DATA_CADUCITAT_2 = NULL; ' +
        'DATA_CADUCITAT_3 = NULL; DATA_CADUCITAT_4 = NULL; DATA_CADUCITAT' +
        '_5 = NULL; DATA_CADUCITAT_6 = NULL; DATA_CADUCITAT_7 = NULL; DAT' +
        'A_CADUCITAT_8 = NULL; DATA_CADUCITAT_9 = NULL; DATA_CADUCITAT_10' +
        ' = NULL;'
      
        '              CODI_PRODUCTE_1 = NULL; CODI_PRODUCTE_2 = NULL; CO' +
        'DI_PRODUCTE_3 = NULL; CODI_PRODUCTE_4 = NULL; CODI_PRODUCTE_5 = ' +
        'NULL; CODI_PRODUCTE_6 = NULL; CODI_PRODUCTE_7 = NULL; CODI_PRODU' +
        'CTE_8 = NULL; CODI_PRODUCTE_9 = NULL; CODI_PRODUCTE_10 = NULL;'
      
        '              NIF_EMPRESA_1 = NULL; NIF_EMPRESA_2 = NULL; NIF_EM' +
        'PRESA_3 = NULL; NIF_EMPRESA_4 = NULL; NIF_EMPRESA_5 = NULL; NIF_' +
        'EMPRESA_6 = NULL; NIF_EMPRESA_7 = NULL; NIF_EMPRESA_8 = NULL; NI' +
        'F_EMPRESA_9 = NULL; NIF_EMPRESA_10 = NULL;'
      
        '              NOM_EMPRESA_1 = NULL; NOM_EMPRESA_2 = NULL; NOM_EM' +
        'PRESA_3 = NULL; NOM_EMPRESA_4 = NULL; NOM_EMPRESA_5 = NULL; NOM_' +
        'EMPRESA_6 = NULL; NOM_EMPRESA_7 = NULL; NOM_EMPRESA_8 = NULL; NO' +
        'M_EMPRESA_9 = NULL; NOM_EMPRESA_10 = NULL;'
      ''
      '              NUM_IMPLANT=1;'
      '          END;'
      '      END;'
      '      '
      '      SUSPEND;'
      '  END;'
      'END')
    Dic1 = BQMat_Lin
    Dic1Name = 'BQMat_Lin'
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
    Left = 537
    Top = 77
  end
end
