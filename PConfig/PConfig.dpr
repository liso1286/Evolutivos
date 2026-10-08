program PConfig;

uses
  Forms,
  Funciones,
  utili16,
  Main in 'Main.pas' {wMain},
  DataObj in '..\Data\DataObj.pas' {wDataObj: TDataModule},
  DataAnalit in '..\Data\DataAnalit.pas' {wDataAnalit: TDataModule},
  DataBasics in '..\Data\DataBasics.pas' {wDataBasics: TDataModule},
  DataCodis in '..\Data\DataCodis.pas' {wDataCodis: TDataModule},
  DataConfig in '..\Data\DataConfig.pas' {wDataConfig: TDataModule},
  DataCurs in '..\Data\DataCurs.pas' {wDataCurs: TDataModule},
  DataFactu in '..\Data\DataFactu.pas' {wDataFactu: TDataModule},
  DataGimnas in '..\Data\DataGimnas.pas' {wDataGimnas: TDataModule},
  DataInterCon in '..\Data\DataInterCon.pas' {wDataIntercon: TDataModule},
  Data in '..\Data\Data.pas' {wData: TDataModule},
  FichaInterCon in 'FichaInterCon.pas' {wFichaInterCon},
  FichaConfig in 'FichaConfig.pas' {wFichaConfig},
  FichaAccesos in 'FichaAccesos.pas' {wFichaAccesos},
  FichaAreas in 'FichaAreas.pas' {wFichaAreas},
  FichaTraza in 'FichaTraza.pas' {wFichaTraza},
  FichaFestius in 'FichaFestius.pas' {wFichaFestius},
  FichaCodiRevi in 'FichaCodiRevi.pas' {wFichaCodiRevi},
  FichaDrets in 'FichaDrets.pas' {wFichaDrets},
  FichaEspecial in 'FichaEspecial.pas' {wFichaEspecial},
  FichaGrups in 'FichaGrups.pas' {wFichaGrups},
  FichaObjCodis in 'FichaObjCodis.pas' {wFichaObjCodis},
  FichaHistoricTraza in 'FichaHistoricTraza.pas' {wFichaHistoricTraza},
  FichaUnitat in 'FichaUnitat.pas' {wFichaUnitat},
  FichaObjectius in 'FichaObjectius.pas' {wFichaObjectius},
  FichaMetges in 'FichaMetges.pas' {wFichaMetges},
  FichaAcces in '..\Data\FichaAcces.pas' {wFichaAcces},
  DataAmics in '..\Data\DataAmics.pas' {wDataAmics: TDataModule},
  DataAdmisio in '..\Data\DataAdmisio.pas' {wDataAdmisio: TDataModule},
  FichaFili in 'FichaFili.pas' {wFichaFili},
  FichaTractaments in 'FichaTractaments.pas' {wFichaTractaments},
  FichaHisto in 'FichaHisto.pas' {wFichaHisto},
  FichaAnulaAlta in 'FichaAnulaAlta.pas' {wFichaAnulaAlta},
  FichaPrestacio in 'FichaPrestacio.pas' {wFichaPrestacio},
  FitxaManteniments in 'FitxaManteniments.pas' {wFitxaManteniments},
  FitxaMantenimentLlistadespera in 'FitxaMantenimentLlistadespera.pas' {wFitxaMantenimentLlistadespera},
  DataDocumentacio in '..\Data\DataDocumentacio.pas' {wDataDocumentacio: TDataModule},
  FichaUsra in 'FichaUsra.pas' {wFichaUsra},
  FichaInterCon2 in 'FichaInterCon2.pas' {wFichaInterCon2},
  FichaInfRevi in 'FichaInfRevi.pas' {wFichaInfRevi},
  DialogHistoria in '..\Data\DialogHistoria.pas' {wDialogHistoria},
  FitxaVia in '..\Admissions\Fitxes\Codis\FitxaVia.pas' {wFitxaVia},
  FitxaHospital in '..\Admissions\Fitxes\Codis\FitxaHospital.pas' {wFitxaHospital},
  FitxaIdioma in '..\Admissions\Fitxes\Codis\FitxaIdioma.pas' {wFitxaIdioma},
  FitxaPais in '..\Admissions\Fitxes\Codis\FitxaPais.pas' {wFitxaPais},
  FitxaProvincia in '..\Admissions\Fitxes\Codis\FitxaProvincia.pas' {wFitxaProvincia},
  FitxaEstatCivil in '..\Admissions\Fitxes\Codis\FitxaEstatCivil.pas' {wFitxaEstatCivil},
  FitxaMantenimentLlitsiPlantes in 'FitxaMantenimentLlitsiPlantes.pas' {wFitxaMantenimentLlitsiPlantes},
  DataEscales in '..\Data\DataEscales.pas' {wDataEscales: TDataModule},
  FichaInfCabe in 'FichaInfCabe.pas' {wFichaInfCabe},
  FitxaFacturasPConfig in 'FitxaFacturasPConfig.pas' {wFitxaFacturas},
  FichaProvaEspecial in '..\Admissions\Factu\FichaProvaEspecial.pas' {wFichaProvaEspecial},
  DialogAvisImportant in '..\Utilitats\DialogAvisImportant.pas' {wDialogAvisImportant},
  FichaCodiCampsCurt in 'FichaCodiCampsCurt.pas' {wFichaCodiCampsCurt},
  FichaCodiCampsAlfa in 'FichaCodiCampsAlfa.pas' {wFichaCodiCampsAlfa},
  FitxaNumerosFactu in 'FitxaNumerosFactu.pas' {wFitxaNumerosFactu},
  FitxaEscales in 'FitxaEscales.pas' {wFitxaEscales},
  DataBlocQuirurgic in '..\Data\DataBlocQuirurgic.pas' {wDataBlocQuirurgic: TDataModule},
  FitxaBlocQuirurgic in 'FitxaBlocQuirurgic.pas' {wFitxaBlocQuirurgic},
  FitxaEF in 'FitxaEF.pas' {wFitxaEF},
  DataScs in '..\Data\DataScs.pas' {wDataSCS: TDataModule},
  FichaScsContractes in 'FichaScsContractes.pas' {wFichaScsContractes},
  DataCobro in '..\Data\DataCobro.pas' {wDataCobro: TDataModule},
  DataProductes in '..\Data\DataProductes.pas' {wDataProductes: TDataModule},
  DataOrtesis in '..\Data\DataOrtesis.pas' {wDataOrtesis: TDataModule},
  FichaCodiCobros in 'FichaCodiCobros.pas' {wFichaCodiCobros},
  FitxaFactuPConfig in 'FitxaFactuPConfig.pas' {wFitxaFactuPConfig},
  FitxaProductes in '..\admissions\factu\FitxaProductes.pas' {wFitxaProductes},
  FichaProveidor in '..\admissions\factu\FichaProveidor.pas' {wFichaProveidor},
  DataBarbara in '..\Data\DataBarbara.pas' {wDataBarbara: TDataModule},
  FitxaProtocolsRHF in 'FitxaProtocolsRHF.pas' {wFitxaProtocolsRHF},
  DataCMB in '..\Data\DataCMB.pas' {wDataCMB: TDataModule},
  DataSeguiment in '..\Data\DataSeguiment.pas' {wDataSeguiment: TDataModule},
  DataOMComun in '..\Data\DataOMComun.pas' {wDataOMComun: TDataModule},
  FichaCobros in 'FichaCobros.pas' {wFichaCobros},
  FitxaSeguimentAmbulatoris in 'FitxaSeguimentAmbulatoris.pas' {wFitxaSeguimentAmbulatoris},
  FitxaECB in 'FitxaECB.pas' {wFitxaECB},
  FitxaECBItems in 'FitxaECBItems.pas' {wFitxaECBItems},
  DataECBDics in '..\Data\DataECBDics.pas' {wDataECBDics: TDataModule},
  FitxaOMConfig in 'FitxaOMConfig.pas' {wFitxaOMConfig},
  DataOMdics in '..\Data\DataOMdics.pas' {wDataOMdics: TDataModule},
  FitxaOMDesbloqueig in 'FitxaOMDesbloqueig.pas' {wFitxaOMDesbloqueig},
  DBGrids in '..\UTILITATS\dbgrids.pas',
  FitxaInferGrafica in 'FitxaInferGrafica.pas' {wFitxaInferGrafica},
  FitxaInferTasques in 'FitxaInferTasques.pas' {wFitxaInferTasques},
  FitxaInferItems in 'FitxaInferItems.pas' {wFitxaInferItems},
  DataInfermeria in '..\Data\DataInfermeria.pas' {wDataInfermeria: TDataModule},
  FitxaMedicaments in 'FitxaMedicaments.pas' {wFitxaMedicaments},
  FitxaStocks in 'FitxaStocks.pas' {wFitxaStocks},
  Firma in 'Firma.pas' {wFirma},
  FitxaEscalaASIA in 'FitxaEscalaASIA.pas' {wFitxaEscalaASIA},
  FitxaEscalaEFA in 'FitxaEscalaEFA.pas' {wFitxaEscalaEFA},
  fitxaescalesTRS in 'fitxaescalesTRS.pas' {wFitxaEscalesTRS},
  FitxaEscalaCIQ in 'FitxaEscalaCIQ.pas' {wFitxaEscalaCIQ},
  FitxaEscalaEVSF in 'FitxaEscalaEVSF.pas' {wFitxaEscalaEVSF},
  FitxaEscalaESIG1aV in 'FitxaEscalaESIG1aV.pas' {wFitxaEscalaESIG1aV},
  FitxaEscalaESIGSeg in 'FitxaEscalaESIGSeg.pas' {wFitxaEscalaESIGSeg},
  DataImatges in '..\Data\DataImatges.pas' {wDataImatges: TDataModule},
  FitxaEscalesPendents in 'FitxaEscalesPendents.pas' {wFitxaEscalesPendents},
  FitxaEscalaBATERIA in 'FitxaEscalaBATERIA.pas' {wFitxaEscalaBateria},
  FitxaEscalaBateriaInf in 'FitxaEscalaBateriaInf.pas' {wFitxaEscalaBateriaInf},
  FitxaAccesFarma in 'FitxaAccesFarma.pas' {wFitxaAccesFarma},
  FitxaEscalaPEDI in 'FitxaEscalaPEDI.pas' {wFitxaEscalaPEDI},
  PlanillesOM in 'PlanillesOM.pas' {wPlanillesOM},
  FitxaHistoricInfer in 'FitxaHistoricInfer.pas' {wFitxaHistoricInfer},
  DataV in '..\Data\DataV.pas' {wDataV: TDataModule},
  DataVIP in '..\Data\DataVIP.pas' {wDataVIP: TDataModule},
  FitxaPreoperatori in 'FitxaPreoperatori.pas' {wFitxaPreoperatori},
  FitxaClauDePasPrint in 'FitxaClauDePasPrint.pas' {wFitxaClauDePasPrint},
  FitxaEscEntrevistaDolor in 'FitxaEscEntrevistaDolor.pas' {wFitxaEscEntrevistaDolor},
  FitxaEducacio in 'FitxaEducacio.pas' {wFitxaEducacio},
  DataEducacio in '..\Data\DataEducacio.pas' {wDataEducacio: TDataModule},
  FitxaEduDocs in 'FitxaEduDocs.pas' {wFitxaEduDocs},
  FitxaEduParams in 'FitxaEduParams.pas' {wFitxaEduParams},
  FitxaEscalesItems in 'FitxaEscalesItems.pas' {wFitxaEscalesItems},
  FitxaAillaments in 'FitxaAillaments.pas' {wAillaments},
  DocsInfer in 'DocsInfer.pas' {wDocsInfer},
  QuiTeDret in 'QuiTeDret.pas' {wQuiTeDret},
  EscObliga in 'EscObliga.pas' {wEscObliga},
  SessionsTRC in 'SessionsTRC.pas' {wSessionsTRC},
  SessionsLogopedia in 'SessionsLogopedia.pas' {wSessionsLogopedia},
  DataMosar in '..\Data\DataMosar.pas' {wDataMosar: TDataModule},
  FitxaCodiICF in 'FitxaCodiICF.pas' {wFitxaCodiICF},
  BloqueigHistories in 'BloqueigHistories.pas' {wBloqueigHistories},
  FitxaHistoricRenovacionsOM in 'FitxaHistoricRenovacionsOM.pas' {wFitxaHistoricRenovacionsOM},
  ICDNT in 'ICDNT.pas' {wICDNT},
  TotICD9 in 'TotICD9.pas' {wTotICD9},
  FitxaLogFili in 'FitxaLogFili.pas' {wFitxaLogFili},
  FitxaCaigudes in 'FitxaCaigudes.pas' {wFitxaCaigudes},
  FitxaUPP in 'FitxaUPP.pas' {wFitxaUPP},
  FitxaBaclofen in 'FitxaBaclofen.pas' {wFitxaBaclofen},
  DataMHDA in '..\Data\DataMHDA.pas' {wDataMHDA: TDataModule},
  FitxaAdmDesbloqueig in 'FitxaAdmDesbloqueig.pas' {wFitxaAdmDesbloqueig},
  FitxaClauDePas in '..\Data\FitxaClauDePas.pas' {wFitxaClauDePas},
  FitxaCanviClau in '..\Data\FitxaCanviClau.pas' {wFitxaCanviClau},
  FitxaGrupsLletres in 'FitxaGrupsLletres.pas' {wFitxaGrupsLletres},
  FitxaLogClaus in 'FitxaLogClaus.pas' {wFitxaLogClaus},
  FitxaRICGLF in 'FitxaRICGLF.pas' {wFitxaRICGLF},
  FitxaHistoricFarma in 'FitxaHistoricFarma.pas' {wFitxaHistoricFarma},
  FitxaDocsImprimir in 'FitxaDocsImprimir.pas' {wFitxaDocsImprimir},
  FitxaIntervencions in '..\Admissions\factu\FitxaIntervencions.pas' {wIntervencio},
  FitxaSID in 'FitxaSID.pas' {wFitxaSID},
  FitxaVol in 'FitxaVol.pas' {wFitxaVol},
  DataPades in '..\Data\DataPades.pas' {wDataPades: TDataModule},
  FitxaGym in 'FitxaGym.pas' {wFitxaGym},
  FitxaDreantges in 'FitxaDreantges.pas' {wFitxaDreantges},
  FitxaEPFStock in 'FitxaEPFStock.pas' {wFitxaEPFStock},
  FitxaEPFReceptes in 'FitxaEPFReceptes.pas' {wFitxaEPFReceptes},
  DataHola in '..\Data\DataHola.pas' {wDataHola: TDataModule},
  DataHl7Log in '..\Data\DataHl7Log.pas' {wDataHl7Log: TDataModule},
  FitxaToxinaBotulinica in 'FitxaToxinaBotulinica.pas' {wFitxaToxinaBotulinica},
  DialogHistoriaSIRE in '..\ReceptaElectronica\DialogHistoriaSIRE.pas' {wDialogHistoriaSIRE},
  FitxaNutricioEnteral in 'FitxaNutricioEnteral.pas' {wFitxaNutricioEnteral},
  FitxaResourceE in 'FitxaResourceE.pas' {wFitxaResourceE},
  FitxaInformesInfer in 'FitxaInformesInfer.pas' {wFitxaInformesInfer},
  FitxaCuaQmatic in 'FitxaCuaQmatic.pas' {wFitxaCuaQmatic},
  FitxaHoraris in 'FitxaHoraris.pas' {wFitxaHoraris},
  DataPerfilsNR in '..\Data\DataPerfilsNR.pas' {wDataPerfilsNR: TDataModule},
  FitxaInformesNPC in 'FitxaInformesNPC.pas' {wFitxaInformesNPC},
  FitxaSolIngres in 'FitxaSolIngres.pas' {wFitxaSolIngres},
  DataHolaInformes in '..\Data\DataHolaInformes.pas' {wDataHolaInformes: TDataModule},
  DataHolaVirtuals in '..\Data\DataHolaVirtuals.pas' {wDataHolaVirtuals: TDataModule},
  DataEASE in '..\Data\DataEASE.pas' {wDataEASE: TDataModule},
  FitxaTractEM in 'FitxaTractEM.pas' {wFitxaTractEM},
  FitxaEASEPIParams in 'FitxaEASEPIParams.pas' {wFitxaEASEPIParams},
  FitxaEASEPI in 'FitxaEASEPI.pas' {wFitxaEASEPI},
  FichaCodiCamps3 in 'FichaCodiCamps3.pas' {wFichaCodiCamps3},
  FitxaTimeOut in 'FitxaTimeOut.pas' {wFitxaTimeOut},
  DataSeguretat in '..\Data\DataSeguretat.pas' {wDataSeguretat: TDataModule},
  FitxaInformesCodis in 'FitxaInformesCodis.pas' {wFitxaInformesCodis},
  DataInformes in '..\Data\DataInformes.pas' {wDataInformes: TDataModule},
  FitxaInformes in 'FitxaInformes.pas' {wFitxaInformes},
  DataHCE in '..\Data\DataHCE.pas' {wDataHCE: TDataModule},
  DataHC3 in '..\Data\DataHC3.pas' {wDataHC3: TDataModule},
  FitxaPassaport in 'FitxaPassaport.pas' {wFitxaPassaport},
  FitxaCodisPassaport in 'FitxaCodisPassaport.pas' {wFitxaCodisPassaport},
  DataFarmatools in '..\Data\DataFarmatools.pas' {wDataFarmatools: TDataModule},
  FitxaFTFormaFarma in 'FitxaFTFormaFarma.pas' {wFitxaFTFormaFarma},
  FitxaFTFreq in 'FitxaFTFreq.pas' {wFitxaFTFreq},
  FitxaFTProd in 'FitxaFTProd.pas' {wFitxaFTProd},
  FitxaFTUM in 'FitxaFTUM.pas' {wFitxaFTUM},
  FitxaFTVies in 'FitxaFTVies.pas' {wFitxaFTVies},
  FitxaFTPrescripcions in 'FitxaFTPrescripcions.pas' {wFitxaFTPrescripcions},
  FitxaFTFacturacio in 'FitxaFTFacturacio.pas' {wFitxaFTFacturacio},
  FitxaDretsAutogestionats in 'FitxaDretsAutogestionats.pas' {wFitxaDretsAutogestionats};

{$R *.RES}

begin
  Application.Initialize;

  Application.Tag := 0;
  
//  Application.Tag := 2222;               // EMERGÈNCIA: DESASTERISCAR AQUESTA LÍNIA PER ATACAR AL REPLICADOR
//  Application.Tag := 3333;               // REPLICADOR: DESASTERISCAR AQUESTA LÍNIA PER ATACAR AL REPLICADOR EN LOCAL
//  Application.Tag := 1111;               // HISTÒRIC:   DESASTERISCAR AQUESTA LÍNIA PER ATACAR LA BD HISTÒRICA

  if (Application.Tag = 0) and (not copiafacil) then begin Application.Terminate; Exit; end;

  Application.CreateForm(TwData, wData);
  if (not wData.Gdb.Connected) then Exit;
  Application.CreateForm(TwDataObj, wDataObj);
  Application.CreateForm(TwDataAnalit, wDataAnalit);
  Application.CreateForm(TwDataConfig, wDataConfig);
  Application.CreateForm(TwDataBasics, wDataBasics);
  Application.CreateForm(TwDataFarmatools, wDataFarmatools);    
  Application.CreateForm(TwDataCodis, wDataCodis);
  Application.CreateForm(TwDataCurs, wDataCurs);
  Application.CreateForm(TwDataFactu, wDataFactu);
  Application.CreateForm(TwDataGimnas, wDataGimnas);
  Application.CreateForm(TwDataIntercon, wDataIntercon);
  Application.CreateForm(TwDataAmics, wDataAmics);
  Application.CreateForm(TwDataAdmisio, wDataAdmisio);
  Application.CreateForm(TwDataDocumentacio, wDataDocumentacio);
  Application.CreateForm(TwDataEscales, wDataEscales);
  Application.CreateForm(TwDataBlocQuirurgic, wDataBlocQuirurgic);
  Application.CreateForm(TwDataSCS, wDataSCS);
  Application.CreateForm(TwDataCobro, wDataCobro);
  Application.CreateForm(TwDataECBDics, wDataECBDics);
  Application.CreateForm(TwDataEducacio, wDataEducacio);
  Application.CreateForm(TwDataHola, wDataHola);
  Application.CreateForm(TwDataHC3, wDataHC3);
  Application.CreateForm(TwDataPerfilsNR, wDataPerfilsNR);
  Application.CreateForm(TwDataHolaVirtuals, wDataHolaVirtuals);
  Application.CreateForm(TwDataHolaInformes, wDataHolaInformes);
  Application.CreateForm(TwDataInfermeria, wDataInfermeria);
  Application.CreateForm(TwDataInformes, wDataInformes);
  Application.CreateForm(TwDataOMComun, wDataOMComun);
  Application.CreateForm(TwDataOrtesis, wDataOrtesis);
  Application.CreateForm(TwDataSeguiment, wDataSeguiment);
  Application.CreateForm(TwDataBarbara, wDataBarbara);
  Application.CreateForm(TwDataCMB, wDataCMB);
  Application.CreateForm(TwDataHl7Log, wDataHl7Log);
  Application.CreateForm(TwDataMosar, wDataMosar);
  Application.CreateForm(TwDataProductes, wDataProductes);
  Application.CreateForm(TwDataOMdics, wDataOMdics);
  Application.CreateForm(TwDataVIP, wDataVIP);
  Application.CreateForm(TwDataImatges, wDataImatges);
  Application.CreateForm(TwDataMHDA, wDataMHDA);
  Application.CreateForm(TwDataPades, wDataPades);
  Application.CreateForm(TwDataV, wDataV);
  Application.CreateForm(TwDataSeguretat, wDataSeguretat);
  Application.CreateForm(TwDataEASE, wDataEASE);
  Application.CreateForm(TwDataHCE, wDataHCE);  
  Application.CreateForm(TwMain, wMain);
  Application.Run;
end.
