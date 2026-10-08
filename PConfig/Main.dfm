object wMain: TwMain
  Left = 219
  Top = 209
  Width = 986
  Height = 161
  Caption = 'Config Curs Cl'#237'nic'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TaskBar1: TTaskBar
    Left = 0
    Top = 0
    Width = 978
    Height = 29
    AutoSize = True
    Caption = 'TaskBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Images = wData.Images
    List = True
    ParentFont = False
    PopupMenu = TaskBar1.Alineacion
    ShowCaptions = True
    TabOrder = 0
    ImageOn = 11
    ImageOff = 12
    OnlyMDIForms = True
    AutoChange = False
  end
  object MainMenu: TMainMenu
    Images = wData.Images
    Left = 19
    Top = 32
    object Proves: TMenuItem
      Caption = '# # #  GDB PROVES  # # #   '
    end
    object Configuraci1: TMenuItem
      Caption = 'Configuraci'#243
      ImageIndex = 1
      object CursClinic1: TMenuItem
        Caption = 'Config &Curs Clinic'
        ShortCut = 32835
        OnClick = CursClinic1Click
      end
      object InformesCapceleres1: TMenuItem
        Caption = 'Informes Cap'#231'aleres'
        OnClick = InformesCapceleres1Click
      end
      object GDBCheck1: TMenuItem
        Caption = 'GDB Check'
        OnClick = GDBCheck1Click
      end
      object PlanillesOM1: TMenuItem
        Caption = 'Planilles OM (obsolet)'
        OnClick = PlanillesOM1Click
      end
    end
    object Accesos2: TMenuItem
      Caption = 'Accesos'
      ImageIndex = 33
      object FitxerAccesos1: TMenuItem
        Caption = 'Fitxer &Accesos'
        ShortCut = 32833
        OnClick = FitxerAccesos1Click
      end
      object FitxerUsuaris: TMenuItem
        Caption = 'Fitxer &Usuaris'
        ShortCut = 32845
        OnClick = FitxerUsuarisClick
      end
      object Claudepas1: TMenuItem
        Caption = 'Clau de &pas'
        ShortCut = 32848
        Visible = False
        OnClick = Claudepas1Click
      end
      object BloqueigHistories: TMenuItem
        Caption = 'Bloqueig d'#39'hist'#242'ries'
        OnClick = BloqueigHistoriesClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object SeguimentAccessos: TMenuItem
        Caption = '&Seguiment Accesos'
        ShortCut = 32851
        OnClick = SeguimentAccessosClick
      end
      object SegFarmacia: TMenuItem
        Caption = 'Seguiment Accessos &Farm'#224'cia'
        OnClick = SegFarmaciaClick
      end
      object LogdeFiliaci1: TMenuItem
        Caption = '&Log de Filiaci'#243' (dades b'#224'siques)'
        OnClick = LogdeFiliaci1Click
      end
      object HistoricSeg: TMenuItem
        Caption = 'Passar a hist'#242'ric Seguiment d'#39'Accessos'
        OnClick = HistoricSegClick
      end
      object HistoricGraficaInfer: TMenuItem
        Caption = 'Passar a hist'#242'ric Dades d'#39'Infermeria'
        OnClick = HistoricGraficaInferClick
      end
      object HistoricRenovacionsOM: TMenuItem
        Caption = 'Passar a hist'#242'ric Renovacions OM'
        OnClick = HistoricRenovacionsOMClick
      end
      object HistoricFarma: TMenuItem
        Caption = 'Passar a hist'#242'ric Moviments de Farm'#224'cia'
        OnClick = HistoricFarmaClick
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Informemensual1: TMenuItem
        Caption = '&Informe mensual accessos'
        OnClick = Informemensual1Click
      end
    end
    object Basics1: TMenuItem
      Caption = 'B'#224'sics'
      ImageIndex = 27
      object Filiaci1: TMenuItem
        Caption = '&Filiaci'#243
        ShortCut = 32838
        OnClick = Filiaci1Click
      end
      object Tractaments1: TMenuItem
        Caption = '&Tractaments'
        ShortCut = 32852
        OnClick = Tractaments1Click
      end
      object Histores1: TMenuItem
        Caption = '&Hist'#242'ries'
        ShortCut = 32840
        OnClick = Histores1Click
      end
      object InterConsultes1: TMenuItem
        Caption = '&InterConsultes'
        ShortCut = 32841
        OnClick = InterConsultes1Click
      end
      object OrdresMediques: TMenuItem
        Caption = 'Ordres m'#232'diques'
        object GestiOM1: TMenuItem
          Caption = 'Manteniment &OM'
          ShortCut = 32847
          OnClick = GestiOM1Click
        end
        object DesbloqueigRecuperacio: TMenuItem
          Caption = 'Desbloqueig i recuperaci'#243' OM'
          OnClick = DesbloqueigRecuperacioClick
        end
        object DesbloqueigAdm: TMenuItem
          Caption = 'Desbloqueig Administraci'#243
          OnClick = DesbloqueigAdmClick
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object AnulacionsdAltes1: TMenuItem
        Caption = 'Anul'#183'lacions d'#39'altes'
        OnClick = AnulacionsdAltes1Click
      end
      object BlocQuirrgic1: TMenuItem
        Caption = 'Bloc Quir'#250'rgic'
        object Intervencions1: TMenuItem
          Caption = 'Intervencions'
          ShortCut = 32849
          OnClick = Intervencions1Click
        end
        object Preoperatori1: TMenuItem
          Caption = '&Preoperatori'
          ShortCut = 32848
          OnClick = Preoperatori1Click
        end
        object TimeOut: TMenuItem
          Caption = 'Time Out'
          OnClick = TimeOutClick
        end
      end
      object EASEPladintervenci1: TMenuItem
        Caption = 'EASE - Pla d'#39'intervenci'#243
        OnClick = EASEPladintervenci1Click
      end
      object ECB: TMenuItem
        Caption = 'ECB'
        OnClick = ECBClick
      end
      object Educacio1: TMenuItem
        Caption = 'Educaci'#243
        OnClick = Educacio1Click
      end
      object Escales1: TMenuItem
        Caption = '&Escales'
        object ASIA1: TMenuItem
          Caption = 'ASIA'
          OnClick = ASIA1Click
        end
        object BATERIA1: TMenuItem
          Caption = 'Bateria'
          OnClick = BATERIA1Click
        end
        object BateriaInfantil1: TMenuItem
          Caption = 'Bateria Infantil'
          OnClick = BateriaInfantil1Click
        end
        object ESIG1aV1: TMenuItem
          Caption = 'ESIG 1a Valoraci'#243
          OnClick = ESIG1aV1Click
        end
        object ESIGSeguiment1: TMenuItem
          Caption = 'ESIG Seguiment'
          OnClick = ESIGSeguiment1Click
        end
        object EnqTRSInfants1: TMenuItem
          Caption = 'Enq. TRS Infants'
          OnClick = EnqTRSInfants1Click
        end
        object EntrevistaDolor1: TMenuItem
          Caption = 'Entrevista Dolor'
          OnClick = EntrevistaDolor1Click
        end
        object EVSFIG1: TMenuItem
          Caption = 'EVSF-IG'
          OnClick = EVSFIG1Click
        end
        object CIQ1: TMenuItem
          Caption = 'CIQ'
          OnClick = CIQ1Click
        end
        object EFA1: TMenuItem
          Caption = 'EFA'
          OnClick = EFA1Click
        end
        object PEDI1: TMenuItem
          Caption = 'PEDI'
          OnClick = PEDI1Click
        end
        object General1: TMenuItem
          Caption = 'ALTRES &ESCALES'
          ShortCut = 32837
          OnClick = Escales1Click
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object Escalespendents1: TMenuItem
          Caption = 'Escales pendents'
          OnClick = Escalespendents1Click
        end
        object Escalesobligatries1: TMenuItem
          Caption = 'Escales obligat'#242'ries'
          OnClick = Escalesobligatries1Click
        end
      end
      object GestFarmacia: TMenuItem
        Caption = 'Farm'#224'cia'
        object MedicamentsHosp: TMenuItem
          Caption = 'MHDA - Facturaci'#243' (Interf)'
          OnClick = MedicamentsHospClick
        end
        object Stocks: TMenuItem
          Caption = 'Dispensaci'#243' d'#39'estocs'
          OnClick = StocksClick
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object Estocdestupefaents1: TMenuItem
          Caption = 'Estoc d'#39'estupefaents'
          OnClick = Estocdestupefaents1Click
        end
        object Receptesoficialsdestupefaents1: TMenuItem
          Caption = 'Receptes oficials d'#39'estupefaents'
          OnClick = Receptesoficialsdestupefaents1Click
        end
        object N12: TMenuItem
          Caption = '-'
        end
        object Farmatools1: TMenuItem
          Caption = 'Farmatools'
          object Prescripcions1: TMenuItem
            Caption = 'Prescripcions'
            OnClick = Prescripcions1Click
          end
          object Facturaci1: TMenuItem
            Caption = 'Facturaci'#243
            OnClick = Facturaci1Click
          end
        end
      end
      object Gimns1: TMenuItem
        Caption = '&Gimn'#224's'
        object Gimnas2: TMenuItem
          Caption = 'Agenda pacient'
          OnClick = Gimnas2Click
        end
        object Gimnas1: TMenuItem
          Caption = 'Informes NPC'
          OnClick = Gimnas1Click
        end
      end
      object Infermeria: TMenuItem
        Caption = 'Infermeria'
        object Documentaci1: TMenuItem
          Caption = 'Documentaci'#243
          OnClick = Documentaci1Click
        end
        object Drenatges: TMenuItem
          Caption = 'Drenatges'
          OnClick = DrenatgesClick
        end
        object Dretsautogestionats1: TMenuItem
          Caption = 'Drets autogestionats'
          OnClick = Dretsautogestionats1Click
        end
        object InferGrafica: TMenuItem
          Caption = '&Gr'#224'fica'
          ShortCut = 32839
          OnClick = InferGraficaClick
        end
        object Informes1: TMenuItem
          Caption = 'Informes'
          OnClick = Informes1Click
        end
        object Allaments1: TMenuItem
          Caption = 'Registres'
          OnClick = Allaments1Click
        end
        object InferTasques: TMenuItem
          Caption = 'Tasques'
          OnClick = InferTasquesClick
        end
        object UPP1: TMenuItem
          Caption = 'UPP'
          OnClick = UPP1Click
        end
      end
      object Informes3: TMenuItem
        Caption = 'Informes'
        OnClick = Informes3Click
      end
      object MHDA1: TMenuItem
        Caption = 'MHDA'
        object Baclofen: TMenuItem
          Caption = '&Baclof'#232'n'
          ShortCut = 32834
          OnClick = BaclofenClick
        end
        object oxinaBotulnica1: TMenuItem
          Caption = '&Toxina Botul'#237'nica'
          OnClick = oxinaBotulnica1Click
        end
        object N11: TMenuItem
          Caption = '-'
        end
        object Nutricio: TMenuItem
          Caption = 'Nutrici'#243' enteral'
          OnClick = NutricioClick
        end
        object TractamentEM: TMenuItem
          Caption = 'Tractament de l'#39'EM'
          OnClick = TractamentEMClick
        end
        object Resourceespessant1: TMenuItem
          Caption = 'Resource espessant'
          OnClick = Resourceespessant1Click
        end
      end
      object Objectius1: TMenuItem
        Caption = 'Objectius'
        OnClick = Objectius1Click
      end
      object Passaportpacient1: TMenuItem
        Caption = 'Passaport pacient'
        OnClick = Passaportpacient1Click
      end
      object Previrnec1: TMenuItem
        Caption = 'Previrnec'
        object RC1: TMenuItem
          Caption = 'TRC'
          OnClick = RC1Click
        end
        object Logopdia1: TMenuItem
          Caption = 'Logop'#232'dia'
          OnClick = Logopdia1Click
        end
      end
      object Revisions1: TMenuItem
        Caption = '&Revisions'
        ShortCut = 32850
        OnClick = Revisions1Click
      end
      object Seguimentambulatori1: TMenuItem
        Caption = '&Seguiment Ambulatori'
        ShortCut = 32851
        OnClick = SeguimentAmbulatori1Click
      end
      object Seguretat1: TMenuItem
        Caption = 'Seguretat'
        object Caigudes1: TMenuItem
          Caption = 'Caigudes'
          OnClick = Caigudes1Click
        end
      end
      object Usra1: TMenuItem
        Caption = 'Usra'
        OnClick = Usra1Click
      end
    end
    object Cdis1: TMenuItem
      Caption = 'Codis'
      ImageIndex = 22
      object Areas1: TMenuItem
        Caption = #192'rees'
        OnClick = Areas1Click
      end
      object Especialitats1: TMenuItem
        Caption = 'Especialitats'
        OnClick = Especialitats1Click
      end
      object Grups1: TMenuItem
        Caption = 'Grups'
        OnClick = Grups1Click
      end
      object CdigsInterConsultes1: TMenuItem
        Caption = 'InterConsultes'
        OnClick = CdigsInterConsultes1Click
      end
      object Unitats1: TMenuItem
        Caption = 'Unitats M'#232'diques'
        OnClick = Unitats1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ClausPas: TMenuItem
        Caption = 'Claus de pas'
        object GrupsLletres1: TMenuItem
          Caption = 'Grups i Lletres'
          OnClick = GrupsLletres1Click
        end
        object LogClaus1: TMenuItem
          Caption = 'Log Claus'
          OnClick = LogClaus1Click
        end
      end
      object CodiCamps1: TMenuItem
        Caption = 'CodiCamps'
        OnClick = CodiCamps1Click
      end
      object CodiCampsCurt1: TMenuItem
        Caption = 'CodiCampsCurt'
        OnClick = CodiCampsCurt1Click
      end
      object CodiCamps31: TMenuItem
        Caption = 'CodiCamps3'
        OnClick = CodiCamps31Click
      end
      object CodiCampsAlfa1: TMenuItem
        Caption = 'CodiCampsAlfa'
        OnClick = CodiCampsAlfa1Click
      end
      object DocsImprimir: TMenuItem
        Caption = 'Documents per imprimir'
        OnClick = DocsImprimirClick
      end
      object Drets1: TMenuItem
        Caption = 'Drets'
        OnClick = Drets1Click
      end
      object Quitdret1: TMenuItem
        Caption = 'Drets (qui t'#233' dret)'
        OnClick = Quitdret1Click
      end
      object EASEPIparmetres1: TMenuItem
        Caption = 'EASE - PI par'#224'metres'
        OnClick = EASEPIparmetres1Click
      end
      object ECBItems: TMenuItem
        Caption = 'ECB ('#237'tems)'
        OnClick = ECBItemsClick
      end
      object Educacio2: TMenuItem
        Caption = 'Educaci'#243
        object EduParams: TMenuItem
          Caption = 'Par'#224'metres'
          OnClick = EduParamsClick
        end
        object EduDocs: TMenuItem
          Caption = 'Documentaci'#243
          OnClick = EduDocsClick
        end
      end
      object EscItems1: TMenuItem
        Caption = 'Escales ('#237'tems i obligacions)'
        OnClick = EscItems1Click
      end
      object Farmatools2: TMenuItem
        Caption = 'Farmatools'
        object Formafarmacutica1: TMenuItem
          Caption = 'Formes farmac'#232'utiques'
          OnClick = Formafarmacutica1Click
        end
        object Freqncies1: TMenuItem
          Caption = 'Freq'#252#232'ncies'
          Visible = False
        end
        object Productes1: TMenuItem
          Caption = 'Productes'
          OnClick = Productes1Click
        end
        object Unitatsdemesura1: TMenuItem
          Caption = 'Unitats de mesura'
          OnClick = Unitatsdemesura1Click
        end
        object Viesdadministraci1: TMenuItem
          Caption = 'Vies d'#39'administraci'#243
          OnClick = Viesdadministraci1Click
        end
      end
      object Festius1: TMenuItem
        Caption = 'Festius'
        OnClick = Festius1Click
      end
      object InferParams: TMenuItem
        Caption = 'Gr'#224'fica Infermeria (par'#224'metres)'
        OnClick = InferParamsClick
      end
      object CodisICD1: TMenuItem
        Caption = 'ICD'
        object ICD91: TMenuItem
          Caption = 'ICD9'
          OnClick = ICD91Click
        end
        object NeuroTraumes1: TMenuItem
          Caption = 'Neuro Traumes'
          OnClick = NeuroTraumes1Click
        end
        object RIC1: TMenuItem
          Caption = 'RIC - GLF'
          OnClick = RIC1Click
        end
      end
      object CodisICF1: TMenuItem
        Caption = 'ICF (D'#232'ficits)'
        OnClick = CodisICF1Click
      end
      object Informes2: TMenuItem
        Caption = 'Informes'
        OnClick = Informes2Click
      end
      object CodiITEMS1: TMenuItem
        Caption = #205'tems (informes Infermeria)'
        OnClick = CodiITEMS1Click
      end
      object CdisObjectius1: TMenuItem
        Caption = 'Objectius'
        OnClick = CdisObjectius1Click
      end
      object wCodisPassaport: TMenuItem
        Caption = 'Passaport pacient'
        OnClick = wCodisPassaportClick
      end
      object CodigsPrestacions1: TMenuItem
        Caption = 'Prestacions'
        OnClick = CodigsPrestacions1Click
      end
      object ProtocolsRHF1: TMenuItem
        Caption = 'Protocols NR/RHF'
        OnClick = ProtocolsRHF1Click
      end
      object CodigsRevisions1: TMenuItem
        Caption = 'Revisions'
        OnClick = CodigsRevisions1Click
      end
    end
    object Admissions1: TMenuItem
      Caption = 'Admissions'
      ImageIndex = 55
      object Basics2: TMenuItem
        Caption = '&Manteniments'
        object Paisos1: TMenuItem
          Caption = '&Pa'#239'sos'
          OnClick = Paisos1Click
        end
        object Provincies1: TMenuItem
          Caption = 'Poblacions i Pr&ov'#237'ncies'
          OnClick = Provincies1Click
        end
        object Idiomes1: TMenuItem
          Caption = '&Idiomes'
          OnClick = Idiomes1Click
        end
        object Vies1: TMenuItem
          Caption = '&Vies'
          OnClick = Vies1Click
        end
        object EstatsCivils1: TMenuItem
          Caption = '&Estats Civils'
          OnClick = EstatsCivils1Click
        end
        object Hospitals1: TMenuItem
          Caption = '&Hospitals'
          OnClick = Hospitals1Click
        end
        object LlitsiPlantes1: TMenuItem
          Caption = '&Llits i Plantes'
          OnClick = LlitsiPlantes1Click
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object LListadespera1: TMenuItem
        Caption = '&LLista d'#39'espera'
        OnClick = LListadespera1Click
      end
      object Cues1: TMenuItem
        Caption = '&Cues'
        OnClick = Cues1Click
      end
      object Horaris1: TMenuItem
        Caption = '&Horaris'
        OnClick = Horaris1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object Informessollicitats1: TMenuItem
        Caption = 'Informes sol'#183'licitats'
        Visible = False
        OnClick = Informessollicitats1Click
      end
      object LogInformesSollicitats1: TMenuItem
        Caption = 'Log Informes Sol'#183'licitats'
        Visible = False
        OnClick = LogInformesSollicitats1Click
      end
      object N10: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Sollicitudsdingrs1: TMenuItem
        Caption = 'Sol'#183'licituds d'#39'ingr'#233's'
        OnClick = Sollicitudsdingrs1Click
      end
    end
    object Facturacio1: TMenuItem
      Caption = '&Facturaci'#243
      ImageIndex = 4
      object Factures1: TMenuItem
        Caption = '&Factures'
        OnClick = Factures1Click
      end
      object ElementsFacturables1: TMenuItem
        Caption = '&Elements Facturables'
        OnClick = ElementsFacturables1Click
      end
      object CodiCobros1: TMenuItem
        Caption = 'Codi Cobros'
        OnClick = CodiCobros1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object NumerosFacturacio1: TMenuItem
        Caption = '&N'#250'meros Facturaci'#243
        OnClick = NumerosFacturacio1Click
      end
      object ContractesSCS1: TMenuItem
        Caption = 'Contractes SCS'
        OnClick = ContractesSCS1Click
      end
    end
    object Consultes1: TMenuItem
      Caption = 'Consultes'
      ImageIndex = 28
      object PrestacionsActives1: TMenuItem
        Caption = 'Tractaments Actius'
        OnClick = PrestacionsActives1Click
      end
      object Totselstractaments1: TMenuItem
        Caption = 'Tots els tractaments (inclou anul'#183'lats)'
        OnClick = Totselstractaments1Click
      end
    end
    object Ease1: TMenuItem
      Caption = 'Altres Programes'
      ImageIndex = 16
      object Pades1: TMenuItem
        Caption = 'EASE'
        Enabled = False
        OnClick = Pades1Click
      end
      object SID1: TMenuItem
        Caption = 'SID'
        OnClick = SID1Click
      end
      object Voluntariat1: TMenuItem
        Caption = 'Voluntariat'
        OnClick = Voluntariat1Click
      end
      object arreglaRMP1: TMenuItem
        Caption = 'arregla RMP'
        Enabled = False
        OnClick = arreglaRMP1Click
      end
    end
    object TODOAQI1: TMenuItem
      Caption = 'TOT AQU'#205
      ImageIndex = 50
    end
    object Sortir1: TMenuItem
      Caption = 'Tanca PConfig'
      ImageIndex = 14
      OnClick = Sortir1Click
    end
  end
  object PrestaActives: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT *'
      'FROM V_TRACTAMENTS_ACTIUS'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Tractaments
    Titulo = 'Tract. Actius'
    Orden.Strings = (
      'Ingr'#233's')
    OrdenDB.Strings = (
      'data_ingres')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = PrestaActivesAlSeleccionar
    Left = 83
    Top = 32
  end
  object PrestaList: THYConsulta
    Abierta = False
    SqlDic.Strings = (
      'SELECT *'
      'FROM V_TRACTAMENTS_LIST'
      '[FILTRO]'
      '[ORDEN]')
    Dicionario1 = wDataBasics.Tractaments
    Titulo = 'Tract. Actius'
    Orden.Strings = (
      'Ingr'#233's')
    OrdenDB.Strings = (
      'data_ingres')
    Filtros = <>
    OrdenAuto = True
    AgrupaPagina = False
    MultiSelect = False
    RowSelect = False
    PrintAncho = 0
    SoloUnaLinea = False
    AlSeleccionar = PrestaActivesAlSeleccionar
    AlPintarGrid = PrestaActivesAlPintarGrid
    Left = 147
    Top = 32
  end
  object HyMenuOptions1: THyMenuOptions
    Items = <
      item
        Caption = 'wDataSCS'
        Group = 'wDataSCS'
        ItemType = miDataModule
        ItemObject = 'wDataSCS'
        Tag = 0
      end
      item
        Caption = 'wDataCurs'
        Group = 'wDataCurs'
        ItemType = miDataModule
        ItemObject = 'wDataCurs'
        Tag = 0
      end
      item
        Caption = 'wDataBasics'
        Group = 'wDataBasics'
        ItemType = miDataModule
        ItemObject = 'wDataBasics'
        Tag = 0
      end
      item
        Caption = 'wDataIntercon'
        Group = 'wDataIntercon'
        ItemType = miDataModule
        ItemObject = 'wDataIntercon'
        Tag = 0
      end
      item
        Caption = 'wDataFactu'
        Group = 'wDataFactu'
        ItemType = miDataModule
        ItemObject = 'wDataFactu'
        Tag = 0
      end
      item
        Caption = 'wDataCodis'
        Group = 'wDataCodis'
        ItemType = miDataModule
        ItemObject = 'wDataCodis'
        Tag = 0
      end
      item
        Caption = 'wDataCobro'
        Group = 'wDataCobro'
        ItemType = miDataModule
        ItemObject = 'wDataCobro'
        Tag = 0
      end
      item
        Caption = 'wDataConfig'
        Group = 'wDataConfig'
        ItemType = miDataModule
        ItemObject = 'wDataConfig'
        Tag = 0
      end
      item
        Caption = 'wDataOrtesis'
        Group = 'wDataOrtesis'
        ItemType = miDataModule
        ItemObject = 'wDataOrtesis'
        Tag = 0
      end
      item
        Caption = 'wDataProductes'
        Group = 'wDataProductes'
        ItemType = miDataModule
        ItemObject = 'wDataProductes'
        Tag = 0
      end
      item
        Caption = 'wDataAdmisio'
        Group = 'wDataAdmisio'
        ItemType = miDataModule
        ItemObject = 'wDataAdmisio'
        Tag = 0
      end
      item
        Caption = 'wDataGimnas'
        Group = 'wDataGimnas'
        ItemType = miDataModule
        ItemObject = 'wDataGimnas'
        Tag = 0
      end
      item
        Caption = 'wDataBarbara'
        Group = 'wDataBarbara'
        ItemType = miDataModule
        ItemObject = 'wDataBarbara'
        Tag = 0
      end
      item
        Caption = 'wDataObj'
        Group = 'wDataObj'
        ItemType = miDataModule
        ItemObject = 'wDataObj'
        Tag = 0
      end
      item
        Caption = 'wDataDocumentacio'
        Group = 'wDataDocumentacio'
        ItemType = miDataModule
        ItemObject = 'wDataDocumentacio'
        Tag = 0
      end
      item
        Caption = 'wDataBlocQuirurgic'
        Group = 'wDataBlocQuirurgic'
        ItemType = miDataModule
        ItemObject = 'wDataBlocQuirurgic'
        Tag = 0
      end
      item
        Caption = 'wDataAnalit'
        Group = 'wDataAnalit'
        ItemType = miDataModule
        ItemObject = 'wDataAnalit'
        Tag = 0
      end
      item
        Caption = 'wDataAmics'
        Group = 'wDataAmics'
        ItemType = miDataModule
        ItemObject = 'wDataAmics'
        Tag = 0
      end
      item
        Caption = 'wDataVerHis'
        Group = 'wDataVerHis'
        ItemType = miDataModule
        ItemObject = 'wDataVerHis'
        Tag = 0
      end
      item
        Caption = 'wData'
        Group = 'wData'
        ItemType = miDataModule
        ItemObject = 'wData'
        Tag = 0
      end
      item
        Caption = 'wDataOMbvg'
        Group = 'wDataOMbvg'
        ItemType = miDataModule
        ItemObject = 'wDataOMbvg'
        Tag = 0
      end
      item
        Caption = 'wDataOMComun'
        Group = 'wDataOMComun'
        ItemType = miDataModule
        ItemObject = 'wDataOMComun'
        Tag = 0
      end
      item
        Caption = 'wDataECBDics'
        Group = 'wDataECBDics'
        ItemType = miDataModule
        ItemObject = 'wDataECBDics'
        Tag = 0
      end
      item
        Caption = 'wDataEscales'
        Group = 'wDataEscales'
        ItemType = miDataModule
        ItemObject = 'wDataEscales'
        Tag = 0
      end
      item
        Caption = 'wDataOMdics'
        Group = 'wDataOMdics'
        ItemType = miDataModule
        ItemObject = 'wDataOMdics'
        Tag = 0
      end
      item
        Caption = 'wDataECB'
        Group = 'wDataECB'
        ItemType = miDataModule
        ItemObject = 'wDataECB'
        Tag = 0
      end
      item
        Caption = 'wDataInfermeria'
        Group = 'wDataInfermeria'
        ItemType = miDataModule
        ItemObject = 'wDataInfermeria'
        Tag = 0
      end
      item
        Caption = 'wDataImatges'
        Group = 'wDataImatges'
        ItemType = miDataModule
        ItemObject = 'wDataImatges'
        Tag = 0
      end
      item
        Caption = 'wDataEducacio'
        Group = 'wDataEducacio'
        ItemType = miDataModule
        ItemObject = 'wDataEducacio'
        Tag = 0
      end
      item
        Caption = 'wDataVIP'
        Group = 'wDataVIP'
        ItemType = miDataModule
        ItemObject = 'wDataVIP'
        Tag = 0
      end
      item
        Caption = 'wDataV'
        Group = 'wDataV'
        ItemType = miDataModule
        ItemObject = 'wDataV'
        Tag = 0
      end
      item
        Caption = 'wDataMosar'
        Group = 'wDataMosar'
        ItemType = miDataModule
        ItemObject = 'wDataMosar'
        Tag = 0
      end
      item
        Caption = 'wDataMHDA'
        Group = 'wDataMHDA'
        ItemType = miDataModule
        ItemObject = 'wDataMHDA'
        Tag = 0
      end
      item
        Caption = 'wDataHola'
        Group = 'wDataHola'
        ItemType = miDataModule
        ItemObject = 'wDataHola'
        Tag = 0
      end
      item
        Caption = 'wDataHolaVirtuals'
        Group = 'wDataHolaVirtuals'
        ItemType = miDataModule
        ItemObject = 'wDataHolaVirtuals'
        Tag = 0
      end
      item
        Caption = 'wDataPades'
        Group = 'wDataPades'
        ItemType = miDataModule
        ItemObject = 'wDataPades'
        Tag = 0
      end
      item
        Caption = 'wDataCMB'
        Group = 'wDataCMB'
        ItemType = miDataModule
        ItemObject = 'wDataCMB'
        Tag = 0
      end
      item
        Caption = 'wDataHl7Log'
        Group = 'wDataHl7Log'
        ItemType = miDataModule
        ItemObject = 'wDataHl7Log'
        Tag = 0
      end
      item
        Caption = 'wDataBenchmarking'
        Group = 'wDataBenchmarking'
        ItemType = miDataModule
        ItemObject = 'wDataBenchmarking'
        Tag = 0
      end
      item
        Caption = 'wDataPerfilsNR'
        Group = 'wDataPerfilsNR'
        ItemType = miDataModule
        ItemObject = 'wDataPerfilsNR'
        Tag = 0
      end
      item
        Caption = 'wDataHolaInformes'
        Group = 'wDataHolaInformes'
        ItemType = miDataModule
        ItemObject = 'wDataHolaInformes'
        Tag = 0
      end
      item
        Caption = 'wDataEASE'
        Group = 'wDataEASE'
        ItemType = miDataModule
        ItemObject = 'wDataEASE'
        Tag = 0
      end
      item
        Caption = 'wDataInformes'
        Group = 'wDataInformes'
        ItemType = miDataModule
        ItemObject = 'wDataInformes'
        Tag = 0
      end
      item
        Caption = 'wDataHC3'
        Group = 'wDataHC3'
        ItemType = miDataModule
        ItemObject = 'wDataHC3'
        Tag = 0
      end
      item
        Caption = 'wDataFarmatools'
        Group = 'wDataFarmatools'
        ItemType = miDataModule
        ItemObject = 'wDataFarmatools'
        Tag = 0
      end
      item
        Caption = 'wDataHCE'
        Group = 'wDataHCE'
        ItemType = miDataModule
        ItemObject = 'wDataHCE'
        Tag = 0
      end
      item
        Caption = 'wDataSeguiment'
        Group = 'wDataSeguiment'
        ItemType = miDataModule
        ItemObject = 'wDataSeguiment'
        Tag = 0
      end>
    Menu = MainMenu
    Project = wData.Projecte
    AddDataModules = False
    MenuItem = TODOAQI1
    Left = 223
    Top = 32
  end
end
