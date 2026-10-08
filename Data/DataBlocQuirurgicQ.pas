unit DataBlocQuirurgicQ;

interface

uses
  SysUtils, Classes, DB, DBTables, HYSql, Graphics, ComCtrls,
  HYDialogConsulta, MessageBox, IBCustomDataSet, IBQuery;

type
  TwDataBlocQuirurgicQ = class(TDataModule)
    dsIntervencions: TDataSource;
    dsObservInf: TDataSource;
    bProcediments: THYSqlBrowse;
    bProcediments_c_interv: TIntegerField;
    bProcediments_ordre: TSmallintField;
    bProcediments_c_procediment: TStringField;
    bProcediments_n_procediment: TStringField;
    bProcediments_g_procediment: TStringField;
    bProcediments_IDNEUROP: TStringField;
    bProcediments_C0_0: TStringField;
    bProcediments_C0_1: TStringField;
    bProcediments_C0_2: TStringField;
    bProcediments_C0_3: TStringField;
    bProcediments_C0_4: TStringField;
    bProcediments_C0_5: TStringField;
    bProcediments_C0_6: TStringField;
    bProcediments_C0_7: TStringField;
    bProcediments_C0_8: TStringField;
    bProcediments_C0_9: TStringField;
    bProcediments_C0_10: TSmallintField;
    bProcediments_C0_11: TStringField;
    bProcediments_C1_0: TStringField;
    bProcediments_C1_1: TStringField;
    bProcediments_C1_2: TStringField;
    bProcediments_C1_3: TStringField;
    bProcediments_C1_4: TStringField;
    bProcediments_C1_5: TStringField;
    bProcediments_C1_6: TStringField;
    bProcediments_C1_7: TStringField;
    bProcediments_C1_8: TStringField;
    bProcediments_C1_9: TStringField;
    bProcediments_C1_10: TSmallintField;
    bProcediments_C1_11: TStringField;
    dsProcediments: TDataSource;
    bPersonalBQ: THYSqlBrowse;
    bPersonalBQ_c_interv: TIntegerField;
    bPersonalBQ_c_metge: TStringField;
    bPersonalBQ_tipus: TStringField;
    bPersonalBQ_ordre: TSmallintField;
    bPersonalBQ_n_ajudant: TStringField;
    bPersonalBQnom: TStringField;
    bPersonalBQ_C0_0: TStringField;
    bPersonalBQ_C0_1: TStringField;
    bPersonalBQ_C0_2: TStringField;
    bPersonalBQ_C0_3: TStringField;
    bPersonalBQ_C0_4: TStringField;
    bPersonalBQ_C0_5: TStringField;
    bPersonalBQ_C0_6: TStringField;
    bPersonalBQ_C0_7: TStringField;
    bPersonalBQ_C0_8: TStringField;
    bPersonalBQ_C1_0: TStringField;
    bPersonalBQ_C1_1: TStringField;
    dsPersonalBQ: TDataSource;
    qCompAnest: TQuery;
    dsCompAnest: TDataSource;
    qQuadrat: TQuery;
    bIsq: THYSqlBrowse;
    bIsq_C_INTERV: TIntegerField;
    bIsq_LOCALITZACIO: TStringField;
    bIsq_TEMPS_INICI: TDateTimeField;
    bIsq_TEMPS_FINAL: TDateTimeField;
    bIsq_Durada: TIntegerField;
    bIsq_Ordre: TSmallintField;
    bIsq_C0_0: TIntegerField;
    bIsq_C0_1: TIntegerField;
    bIsq_C0_2: TIntegerField;
    bIsq_C0_3: TStringField;
    bIsq_C0_4: TSmallintField;
    dsIsq: TDataSource;
    bPreoperatoris: THYSqlBrowse;
    bPreoperatoris_id: TIntegerField;
    bPreoperatoris_c_historia: TIntegerField;
    bPreoperatoris_diagnostic: TStringField;
    bPreoperatoris_IntPrevista: TStringField;
    bPreoperatoris_Especialitat: TSmallintField;
    bPreoperatoris_Urgent: TStringField;
    bPreoperatoris_AntecedentsQ: TStringField;
    bPreoperatoris_Nerv_Normal: TStringField;
    bPreoperatoris_Nerv_Demencia: TStringField;
    bPreoperatoris_Nerv_Depressio: TStringField;
    bPreoperatoris_Nerv_Epilepsia: TStringField;
    bPreoperatoris_Nerv_Pat_Psiq: TStringField;
    bPreoperatoris_Nerv_AVC_antic: TStringField;
    bPreoperatoris_Nerv_conducta: TStringField;
    bPreoperatoris_Nerv_Cerebral: TStringField;
    bPreoperatoris_Nerv_Cap: TStringField;
    bPreoperatoris_Resp_Normal: TStringField;
    bPreoperatoris_Resp_Asma: TStringField;
    bPreoperatoris_Resp_MPOC: TStringField;
    bPreoperatoris_Resp_Insuficiencia: TStringField;
    bPreoperatoris_Resp_Desviacio: TStringField;
    bPreoperatoris_Resp_Patologia: TStringField;
    bPreoperatoris_Vasc_Normal: TStringField;
    bPreoperatoris_Vasc_HTA: TStringField;
    bPreoperatoris_Vasc_Corona: TStringField;
    bPreoperatoris_Vasc_IAM_antic: TStringField;
    bPreoperatoris_Vasc_Varius: TStringField;
    bPreoperatoris_Vasc_Arritmia: TStringField;
    bPreoperatoris_Vasc_Insuficiencia: TStringField;
    bPreoperatoris_Vasc_valvula: TStringField;
    bPreoperatoris_Vasc_arteria: TStringField;
    bPreoperatoris_Vasc_shock: TStringField;
    bPreoperatoris_Vasc_marcapas: TStringField;
    bPreoperatoris_Vasc_congenita: TStringField;
    bPreoperatoris_Ren_Normal: TStringField;
    bPreoperatoris_Ren_insuficiencia: TStringField;
    bPreoperatoris_Ren_prostata: TStringField;
    bPreoperatoris_Ren_hemodialisi: TStringField;
    bPreoperatoris_End_Normal: TStringField;
    bPreoperatoris_End_obesitat: TStringField;
    bPreoperatoris_End_diabetes_dieta: TStringField;
    bPreoperatoris_End_diabetes_ADO: TStringField;
    bPreoperatoris_End_insulina: TStringField;
    bPreoperatoris_End_hipertiroides: TStringField;
    bPreoperatoris_End_hipotiroides: TStringField;
    bPreoperatoris_End_hiperaldosterona: TStringField;
    bPreoperatoris_Dig_Normal: TStringField;
    bPreoperatoris_Dig_ulcus: TStringField;
    bPreoperatoris_Dig_hiatus: TStringField;
    bPreoperatoris_Dig_dispepsia: TStringField;
    bPreoperatoris_Dig_hepatitis: TStringField;
    bPreoperatoris_Dig_cirrosi: TStringField;
    bPreoperatoris_Pat_sense: TStringField;
    bPreoperatoris_Pat_artrosi: TStringField;
    bPreoperatoris_Pat_coagul: TStringField;
    bPreoperatoris_Pat_neoplasia: TStringField;
    bPreoperatoris_Pat_sepsis: TStringField;
    bPreoperatoris_Pat_altres: TStringField;
    bPreoperatoris_Medicacio: TMemoField;
    bPreoperatoris_Tabac: TStringField;
    bPreoperatoris_Enolisme: TStringField;
    bPreoperatoris_Cannabis: TStringField;
    bPreoperatoris_Coca: TStringField;
    bPreoperatoris_Drogues: TStringField;
    bPreoperatoris_Transfusions: TStringField;
    bPreoperatoris_Data_Transf: TStringField;
    bPreoperatoris_Ag_Aust: TStringField;
    bPreoperatoris_HIV: TStringField;
    bPreoperatoris_Pes: TIntegerField;
    bPreoperatoris_Talla: TIntegerField;
    bPreoperatoris_TA: TStringField;
    bPreoperatoris_FC: TIntegerField;
    bPreoperatoris_IMC: TFloatField;
    bPreoperatoris_Boca: TStringField;
    bPreoperatoris_Coll: TStringField;
    bPreoperatoris_Mallampati: TSmallintField;
    bPreoperatoris_Columna: TStringField;
    bPreoperatoris_A_Respiratori: TStringField;
    bPreoperatoris_A_Circulatori: TStringField;
    bPreoperatoris_RXTorax: TStringField;
    bPreoperatoris_ECG: TStringField;
    bPreoperatoris_Analitica: TStringField;
    bPreoperatoris_Observacions: TMemoField;
    bPreoperatoris_ASA: TStringField;
    bPreoperatoris_Estat_interv: TSmallintField;
    bPreoperatoris_Sedacio: TStringField;
    bPreoperatoris_General: TStringField;
    bPreoperatoris_Intradural: TStringField;
    bPreoperatoris_Epidural: TStringField;
    bPreoperatoris_Axilar: TStringField;
    bPreoperatoris_Regend: TStringField;
    bPreoperatoris_Peri: TStringField;
    bPreoperatoris_Topica: TStringField;
    bPreoperatoris_Local: TStringField;
    bPreoperatoris_Altra: TStringField;
    bPreoperatoris_Modalitat: TSmallintField;
    bPreoperatoris_Fer_gastrica: TStringField;
    bPreoperatoris_Fer_TVP_HBPM: TStringField;
    bPreoperatoris_Fer_insulina: TStringField;
    bPreoperatoris_Fer_antiagregants: TStringField;
    bPreoperatoris_Fer_endocarditis: TStringField;
    bPreoperatoris_Notificacions: TMemoField;
    bPreoperatoris_Data_autoritzacio: TDateTimeField;
    bPreoperatoris_C_Metge: TStringField;
    bPreoperatoris_Data_Ultmodi: TDateTimeField;
    bPreoperatoris_Data_caduca2: TDateTimeField;
    bPreoperatoris_Metge_creador: TStringField;
    bPreoperatoris_Data_creacio: TDateTimeField;
    bPreoperatoris_nInterconRX: TIntegerField;
    bPreoperatoris_nInterconAnal: TIntegerField;
    bPreoperatoris_Alergies: TStringField;
    dsPreoperatoris: TDataSource;
    qEspera: TQuery;
    updReactiva: TQuery;
    qObservInf: TQuery;
    qIntervencions: TQuery;
    qIntervencionsdiag_ICD: TStringField;
    qIntervencionsproc_ICD: TStringField;
    qIntervencionsC_INTERV: TIntegerField;
    qIntervencionsC_TRACTAMENT: TIntegerField;
    qIntervencionsC_HISTORIA: TIntegerField;
    qIntervencionsTIPUS_PRESTA: TStringField;
    qIntervencionsC_DIAG_OP: TStringField;
    qIntervencionsC_PROCEDIMENT: TStringField;
    qIntervencionsDATA_PREV: TDateTimeField;
    qIntervencionsT_ANESTESIA: TStringField;
    qIntervencionsC_METGE_PREPARA: TStringField;
    qIntervencionsDATA_PREPARA: TDateTimeField;
    qIntervencionsITEM1_OK: TStringField;
    qIntervencionsITEM1_I: TStringField;
    qIntervencionsITEM2_OK: TStringField;
    qIntervencionsITEM2_I: TStringField;
    qIntervencionsITEM3_OK: TStringField;
    qIntervencionsITEM3_I: TStringField;
    qIntervencionsITEM4_OK: TStringField;
    qIntervencionsITEM4_I: TStringField;
    qIntervencionsITEM5_OK: TStringField;
    qIntervencionsITEM5_I: TStringField;
    qIntervencionsITEM6_OK: TStringField;
    qIntervencionsITEM6_I: TStringField;
    qIntervencionsITEM7_OK: TStringField;
    qIntervencionsITEM7_I: TStringField;
    qIntervencionsITEM8_OK: TStringField;
    qIntervencionsITEM8_I: TStringField;
    qIntervencionsITEM9_OK: TStringField;
    qIntervencionsITEM9_I: TStringField;
    qIntervencionsITEM10_OK: TStringField;
    qIntervencionsITEM10_I: TStringField;
    qIntervencionsITEM11_OK: TStringField;
    qIntervencionsITEM11_I: TStringField;
    qIntervencionsITEM12_OK: TStringField;
    qIntervencionsITEM12_I: TStringField;
    qIntervencionsITEM13_OK: TStringField;
    qIntervencionsITEM13_I: TStringField;
    qIntervencionsITEM14_OK: TStringField;
    qIntervencionsITEM14_I: TStringField;
    qIntervencionsITEM15_OK: TStringField;
    qIntervencionsITEM15_I: TStringField;
    qIntervencionsITEM16_OK: TStringField;
    qIntervencionsITEM16_I: TStringField;
    qIntervencionsITEM17_OK: TStringField;
    qIntervencionsITEM17_I: TStringField;
    qIntervencionsC_CIRURGIA: TStringField;
    qIntervencionsC_ANESTESIOLEG: TStringField;
    qIntervencionsC_BIOPSIA: TIntegerField;
    qIntervencionsBOSSES: TSmallintField;
    qIntervencionsDATA_ENTRADA: TDateTimeField;
    qIntervencionsTEMPSA: TDateTimeField;
    qIntervencionsTEMPSB: TDateTimeField;
    qIntervencionsTEMPSC: TDateTimeField;
    qIntervencionsTEMPSD: TDateTimeField;
    qIntervencionsCOMENTARI: TMemoField;
    qIntervencionsANULACIO: TStringField;
    qIntervencionsM_ANULACIO: TStringField;
    qIntervencionsDATA_ANULACIO: TDateTimeField;
    qIntervencionsESTAT: TSmallintField;
    qIntervencionsDATA_CURES: TDateTimeField;
    qIntervencionsNUMERACIO: TIntegerField;
    qIntervencionsNUM_INTERV: TSmallintField;
    qIntervencionsOBSERVACIONS: TStringField;
    qIntervencionsN_CIRURGIA: TStringField;
    qIntervencionsC_METGE_FI: TStringField;
    qIntervencionsDATA_METGE_FI: TDateTimeField;
    qIntervencionsC_INFER_FI: TStringField;
    qIntervencionsDATA_INFER_FI: TDateTimeField;
    qIntervencionsC_ESPERA: TIntegerField;
    qIntervencionsN_PROCEDIMENT2: TStringField;
    qIntervencionsC_PROFILAXI: TStringField;
    qIntervencionsDIETA_ABSSN: TStringField;
    qIntervencionsVIASN: TStringField;
    qIntervencionsSANGSN: TStringField;
    qIntervencionsPREMEDICACIOSN: TStringField;
    qIntervencionsZONES: TStringField;
    qIntervencionsN_DIAG_OP: TStringField;
    qIntervencionsN_PROCEDIMENT: TStringField;
    qIntervencionsTIPUSMATERIAL: TStringField;
    qIntervencionsCOMENTFARMACIA: TMemoField;
    qIntervencionsENTRADA: TDateTimeField;
    qIntervencionsITEM18_OK: TStringField;
    qIntervencionsITEM18_I: TStringField;
    qIntervencionsITEM19_OK: TStringField;
    qIntervencionsITEM19_I: TStringField;
    qIntervencionsITEM20_OK: TStringField;
    qIntervencionsITEM20_I: TStringField;
    qIntervencionsITEM21_OK: TStringField;
    qIntervencionsITEM21_I: TStringField;
    qIntervencionsITEM22_OK: TStringField;
    qIntervencionsITEM22_I: TStringField;
    qIntervencionsESTAT_CMA: TSmallintField;
    qIntervencionsCOMPLICAINTRASN: TStringField;
    qIntervencionsITEM23_OK: TStringField;
    qIntervencionsITEM23_I: TStringField;
    qIntervencionsITEM24_OK: TStringField;
    qIntervencionsITEM24_I: TStringField;
    qIntervencionsITEM25_OK: TStringField;
    qIntervencionsITEM25_I: TStringField;
    qIntervencionsG_DIAG_OP: TStringField;
    qIntervencionsG_PROCEDIMENT: TStringField;
    qIntervencionsIDNEUROD: TStringField;
    qIntervencionsIDNEUROP: TStringField;
    qIntervencionsREINTERVENCIO: TStringField;
    qIntervencionsDINARSN: TStringField;
    qIntervencionsRASURARSN: TStringField;
    qIntervencionsC_ANESTESIA: TSmallintField;
    qIntervencionsC_PROTESI: TStringField;
    qIntervencionsC_TIPUSCIRURGIA: TSmallintField;
    qIntervencionsC_TIPUSINTERV: TSmallintField;
    qIntervencionsC_QUIROFAN: TSmallintField;
    qIntervencionsC_SANG: TSmallintField;
    qIntervencionsC_ESPECIALITAT: TSmallintField;
    qIntervencionsCONCHEMATIES: TSmallintField;
    qIntervencionsPLAQUETES: TSmallintField;
    qIntervencionsPLASMAFRESC: TSmallintField;
    qIntervencionsSANGTOTAL: TSmallintField;
    qIntervencionsVERIFICAENTRADA: TStringField;
    qIntervencionsSIGNIN: TStringField;
    qIntervencionsTIMEOUT: TStringField;
    qIntervencionsSIGNOUT: TStringField;
    qIntervencionsPERCOMPLICACIO: TStringField;
    qIntervencionsC_PRESTACIO: TStringField;
    qIntervencionsC_PLANTA: TStringField;
    qIntervencionsMETGE_METGE: TStringField;
    qIntervencionsDIAG_OP_N_ICD: TStringField;
    qIntervencionsPROCED_N_ICD: TStringField;
    qIntervencionsGDIAG_OP_N_ICD: TStringField;
    qIntervencionsGPROCED_N_ICD: TStringField;
    qIntervencionsCIRURGIA_METGE: TStringField;
    qIntervencionsANEST_METGE: TStringField;
    qIntervencionsPROTESI_N_CODI: TStringField;
    qIntervencionsPROFILAXI_N_PROFI: TStringField;
    qIntervencionsTIPUSCIR_N_CODI: TStringField;
    qIntervencionsTIPUSINTERV_N_CODI: TStringField;
    qIntervencionsQUIROFAN_N_CODI: TStringField;
    qIntervencionsESPECIALIT_N_CODI: TStringField;
    qIntervencionsSANG_N_CODI: TStringField;
    qIntervencionsESTAT_N_CODI: TStringField;
    qIntervencionsORDRE: TSmallintField;
    qIntervencionsN_ESTAT_CMA: TStringField;
    qIntervencionsUSER_UMODI: TStringField;
    qIntervencionsMETGE_UMODI: TStringField;
    qIntervencionsDATA_UMODI: TDateTimeField;
    qIntervencionsC_ESTATFAC: TSmallintField;
    qIntervencionsC_CENTREFAC: TStringField;
    qIntervencionsC_CLIENT: TStringField;
    qIntervencionsC_DELEGACIO: TStringField;
    qIntervencionsREALITZADA: TStringField;
    qIntervencionsC_PROTESI2: TStringField;
    qIntervencionsPROTESI2_N_CODI: TStringField;
    qIntervencionsBILATERAL: TStringField;
    qEnquestaCMA: TQuery;
    dsEnquestaCMA: TDataSource;
    qComplPQ: TQuery;
    dsComplPQ: TDataSource;
    cComplPQ: THYConsulta;
    MB: TMessageBoxes;
    qCMultinivell: TQuery;
    dsCMultinivell: TDataSource;
    qCMN: TQuery;
    dsCMN: TDataSource;
    qCMNID: TIntegerField;
    qCMNC_HISTORIA: TIntegerField;
    qCMNC_INTERV: TIntegerField;
    qCMNPD_FLEXE_CADERA: TStringField;
    qCMNPD_ADD_CADERA: TStringField;
    qCMNPD_ESCURCA_ISQUIO: TStringField;
    qCMNPD_FLEXE_GENOLL: TStringField;
    qCMNPD_ROTULA_ALTA: TStringField;
    qCMNPD_ROT_TIB_EXT: TStringField;
    qCMNPD_PEU_PLA_VALG: TStringField;
    qCMNPD_PEU_EQUI: TStringField;
    qCMNPD_PEU_VAR: TStringField;
    qCMNPE_FLEXE_CADERA: TStringField;
    qCMNPE_ADD_CADERA: TStringField;
    qCMNPE_ESCURCA_ISQUIO: TStringField;
    qCMNPE_FLEXE_GENOLL: TStringField;
    qCMNPE_ROTULA_ALTA: TStringField;
    qCMNPE_ROT_TIB_EXT: TStringField;
    qCMNPE_PEU_PLA_VALG: TStringField;
    qCMNPE_PEU_EQUI: TStringField;
    qCMNPE_PEU_VAR: TStringField;
    qCMNC_USER_P: TStringField;
    qCMNDATA_P: TDateTimeField;
    qCMNSD_TPSOAS: TStringField;
    qCMNSD_TADDUCTOR: TStringField;
    qCMNSD_TRECTE_ANT: TStringField;
    qCMNSD_TISQUIOS: TStringField;
    qCMNSD_OFEM_DEFLEX: TStringField;
    qCMNSD_OFEM_DERRO: TStringField;
    qCMNSD_TRECTE_ANT_DISTAL: TStringField;
    qCMNSD_DESCENS_TTA: TStringField;
    qCMNSD_OTIB_DERRO: TStringField;
    qCMNSD_KALIX: TStringField;
    qCMNSD_ATRO_TALO: TStringField;
    qCMNSD_TAQUILES: TStringField;
    qCMNSD_TRI_ARTRODESI: TStringField;
    qCMNSD_TTRICEPS_SURAL: TStringField;
    qCMNSD_TTP: TStringField;
    qCMNSE_TPSOAS: TStringField;
    qCMNSE_TADDUCTOR: TStringField;
    qCMNSE_TRECTE_ANT: TStringField;
    qCMNSE_TISQUIOS: TStringField;
    qCMNSE_OFEM_DEFLEX: TStringField;
    qCMNSE_OFEM_DERRO: TStringField;
    qCMNSE_TRECTE_ANT_DISTAL: TStringField;
    qCMNSE_DESCENS_TTA: TStringField;
    qCMNSE_OTIB_DERRO: TStringField;
    qCMNSE_KALIX: TStringField;
    qCMNSE_ATRO_TALO: TStringField;
    qCMNSE_TAQUILES: TStringField;
    qCMNSE_TRI_ARTRODESI: TStringField;
    qCMNSE_TTRICEPS_SURAL: TStringField;
    qCMNSE_TTP: TStringField;
    qCMNC_USER_S: TStringField;
    qCMNDATA_S: TDateTimeField;
    qCMNDATA_PREV: TDateTimeField;
    qCMNENTRADA: TDateTimeField;
    qCMNMETGEP: TStringField;
    qCMNMETGES: TStringField;
    qCMNSD_TTA: TStringField;
    qCMNSE_TTA: TStringField;
    qCMNPD_TPSOAS: TStringField;
    qCMNPD_TRECTE_ANT: TStringField;
    qCMNPD_TADDUCTOR: TStringField;
    qCMNPD_TISQUIOS: TStringField;
    qCMNPD_OFEM_DEFLEX: TStringField;
    qCMNPD_OFEM_DERRO: TStringField;
    qCMNPD_TRECTE_ANT_DISTAL: TStringField;
    qCMNPD_DESCENS_TTA: TStringField;
    qCMNPD_OTIB_DERRO: TStringField;
    qCMNPD_KALIX: TStringField;
    qCMNPD_ATRO_TALO: TStringField;
    qCMNPD_TRI_ARTRODESI: TStringField;
    qCMNPD_TAQUILES: TStringField;
    qCMNPD_TTRICEPS_SURAL: TStringField;
    qCMNPD_TTP: TStringField;
    qCMNPD_TTA: TStringField;
    qCMNPE_TPSOAS: TStringField;
    qCMNPE_TRECTE_ANT: TStringField;
    qCMNPE_TADDUCTOR: TStringField;
    qCMNPE_TISQUIOS: TStringField;
    qCMNPE_OFEM_DEFLEX: TStringField;
    qCMNPE_OFEM_DERRO: TStringField;
    qCMNPE_TRECTE_ANT_DISTAL: TStringField;
    qCMNPE_DESCENS_TTA: TStringField;
    qCMNPE_OTIB_DERRO: TStringField;
    qCMNPE_KALIX: TStringField;
    qCMNPE_ATRO_TALO: TStringField;
    qCMNPE_TRI_ARTRODESI: TStringField;
    qCMNPE_TAQUILES: TStringField;
    qCMNPE_TTRICEPS_SURAL: TStringField;
    qCMNPE_TTP: TStringField;
    qCMNPE_TTA: TStringField;
    qIntervencionsPREU: TFloatField;
    qIntervencionsREFERENCIA: TStringField;
    qIntervencionsIMPLANT: TSmallintField;
    qIntervencionsENVIAT_SAP: TStringField;
    qIntervencionsVERSIOCIM: TIntegerField;
    qIntervencionsVERSIOCIM_G: TIntegerField;
    qIntervencionsDESCONT_PELL: TSmallintField;
    qIntervencionsDESCONTAMINACIO_PELL: TStringField;
    qIntervencionsITEM26_OK: TStringField;
    qIntervencionsITEM26_I: TStringField;
    qIntervencionsITEM27_OK: TStringField;
    qIntervencionsITEM27_I: TStringField;
    qIntervencionsHORAINIATB1: TDateTimeField;
    qIntervencionsHORAFIATB1: TDateTimeField;
    qIntervencionsHORAINIATB2: TDateTimeField;
    qIntervencionsHORAFIATB2: TDateTimeField;
    qIntervencionsCTLTEMPERATURA: TSmallintField;
    qIntervencionsCTLGLICEMIA: TStringField;
    qIntervencionsN_TEMPERATURA: TStringField;
    qIntervencionsMATERIALSN: TStringField;
    qPreinduccio: TQuery;
    dsPreinduccio: TDataSource;
    qCompAnestC_INTERV: TIntegerField;
    qCompAnestDATA: TDateTimeField;
    qCompAnestC_USUARI: TStringField;
    qCompAnestG1: TStringField;
    qCompAnestG2: TStringField;
    qCompAnestG3: TStringField;
    qCompAnestG4: TStringField;
    qCompAnestG5: TStringField;
    qCompAnestG6: TStringField;
    qCompAnestCG1: TStringField;
    qCompAnestCG2: TStringField;
    qCompAnestCG3: TStringField;
    qCompAnestCG4: TStringField;
    qCompAnestCG5: TStringField;
    qCompAnestCG6: TStringField;
    qCompAnestCG7: TStringField;
    qCompAnestCG8: TStringField;
    qCompAnestCG9: TStringField;
    qCompAnestCG10: TStringField;
    qCompAnestCLV1: TStringField;
    qCompAnestCLV2: TStringField;
    qCompAnestCLN1: TStringField;
    qCompAnestCLN2: TStringField;
    qCompAnestCL3: TStringField;
    qCompAnestCL4: TStringField;
    qCompAnestCL5: TStringField;
    qCompAnestCG11: TStringField;
    qCompAnestCG12: TStringField;
    qCompAnestCG13: TStringField;
    qCompAnestGRAU_SEVERITAT: TSmallintField;
    qCompAnestC_ANESTESIOLEG: TStringField;
    qCompAnestC_ANESTESIA: TSmallintField;
    qCompAnestC_ESTAT: TSmallintField;
    qCompAnestMETGE: TStringField;
    qCompAnestANESTESIA_N_CODI: TStringField;
    qCompAnestESTAT_N_CODI: TStringField;
    qIntervencionsC_ESTAT: TSmallintField;
    qIntervencionsESTAT_FULLANESTESIA: TStringField;
    bPreoperatoris_Data_Reactivacio: TDateTimeField;
    bPreoperatoris_Usuari_Reactivacio: TStringField;
    bPreoperatoris_C0_0: TSmallintField;
    bPreoperatoris_C0_1: TStringField;
    bPreoperatoris_C0_2: TSmallintField;
    bPreoperatoris_C0_3: TStringField;
    bPreoperatoris_C0_4: TStringField;
    bPreoperatoris_C0_5: TStringField;
    bPreoperatoris_C1_0: TSmallintField;
    bPreoperatoris_C1_1: TStringField;
    bPreoperatoris_C1_2: TSmallintField;
    bPreoperatoris_C1_3: TStringField;
    bPreoperatoris_C1_4: TStringField;
    bPreoperatoris_C1_5: TStringField;
    bPreoperatoris_C2_0: TSmallintField;
    bPreoperatoris_C2_1: TStringField;
    bPreoperatoris_C2_2: TSmallintField;
    bPreoperatoris_C2_3: TStringField;
    bPreoperatoris_C2_4: TStringField;
    bPreoperatoris_C2_5: TStringField;
    bPreoperatoris_C3_0: TStringField;
    bPreoperatoris_C3_1: TStringField;
    bPreoperatoris_C3_2: TStringField;
    bPreoperatoris_C3_3: TStringField;
    bPreoperatoris_C3_4: TStringField;
    bPreoperatoris_C3_5: TStringField;
    bPreoperatoris_C3_6: TStringField;
    bPreoperatoris_C3_7: TIntegerField;
    bPreoperatoris_C3_8: TStringField;
    bPreoperatoris_C3_9: TStringField;
    bPreoperatoris_C3_10: TSmallintField;
    bPreoperatoris_C3_11: TStringField;
    bPreoperatoris_C3_12: TStringField;
    bPreoperatoris_C3_13: TStringField;
    bPreoperatoris_C3_14: TStringField;
    bPreoperatoris_C3_15: TStringField;
    bPreoperatoris_C3_16: TIntegerField;
    bPreoperatoris_C3_17: TDateTimeField;
    bPreoperatoris_C4_0: TIntegerField;
    bPreoperatoris_C4_1: TStringField;
    bPreoperatoris_C4_2: TStringField;
    bPreoperatoris_C4_3: TIntegerField;
    bPreoperatoris_C4_4: TStringField;
    bPreoperatoris_C4_5: TStringField;
    bPreoperatoris_C4_6: TStringField;
    bPreoperatoris_C4_7: TStringField;
    bPreoperatoris_C4_8: TSmallintField;
    bPreoperatoris_C4_9: TSmallintField;
    bPreoperatoris_C4_10: TStringField;
    bPreoperatoris_C4_11: TStringField;
    bPreoperatoris_C4_12: TDateTimeField;
    bPreoperatoris_C4_13: TStringField;
    bPreoperatoris_C4_14: TStringField;
    bPreoperatoris_C4_15: TStringField;
    bPreoperatoris_C4_16: TStringField;
    bPreoperatoris_C4_17: TSmallintField;
    bPreoperatoris_C4_18: TSmallintField;
    bPreoperatoris_C4_19: TStringField;
    bPreoperatoris_C4_20: TStringField;
    bPreoperatoris_C4_21: TStringField;
    bPreoperatoris_C4_22: TStringField;
    bPreoperatoris_C4_23: TStringField;
    bPreoperatoris_C4_24: TSmallintField;
    bPreoperatoris_C4_25: TStringField;
    bPreoperatoris_C4_26: TSmallintField;
    bPreoperatoris_C4_27: TStringField;
    bPreoperatoris_C4_28: TStringField;
    bPreoperatoris_C4_29: TStringField;
    bPreoperatoris_C4_30: TIntegerField;
    bPreoperatoris_C5_0: TStringField;
    bPreoperatoris_C5_1: TStringField;
    bPreoperatoris_C5_2: TStringField;
    bPreoperatoris_C5_3: TStringField;
    bPreoperatoris_C5_4: TStringField;
    bPreoperatoris_C5_5: TStringField;
    bPreoperatoris_C5_6: TStringField;
    bPreoperatoris_C5_7: TIntegerField;
    bPreoperatoris_C5_8: TStringField;
    bPreoperatoris_C5_9: TStringField;
    bPreoperatoris_C5_10: TSmallintField;
    bPreoperatoris_C5_11: TStringField;
    bPreoperatoris_C5_12: TStringField;
    bPreoperatoris_C5_13: TStringField;
    bPreoperatoris_C5_14: TStringField;
    bPreoperatoris_C5_15: TStringField;
    bPreoperatoris_C5_16: TIntegerField;
    bPreoperatoris_C5_17: TDateTimeField;
    qInsertBQ: TQuery;
    qIntervencionsMOTIU_ANULACIO: TStringField;
    procedure bPreoperatorisAfterScroll(DataSet: TDataSet);
    procedure qIntervencionsAfterScroll(DataSet: TDataSet);
    procedure qIntervencionsCalcFields(DataSet: TDataSet);
    procedure bPersonalBQCalcFields(DataSet: TDataSet);
    procedure qEnquestaCMAAfterScroll(DataSet: TDataSet);
    procedure cComplPQEnActivar(Sender: TObject);
    procedure cComplPQEnDesactivar(Sender: TObject);
    procedure cComplPQAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
    procedure cComplPQAlTancar(Sender: THYConsulta);
    procedure qCMultinivellAfterScroll(DataSet: TDataSet);
    procedure qPreinduccioAfterScroll(DataSet: TDataSet);
  private
    obert: Boolean;
  public
    MesosComplPQ: Smallint;
    InfeccioPQ: Boolean;
    C_IntervOrigen: Integer;
    procedure ObreQueries;
    procedure TancaQueries;
  end;

var
  wDataBlocQuirurgicQ: TwDataBlocQuirurgicQ;

implementation

uses DataBlocQuirurgic, DataVerHis, Data, DataBasics, FichaVerHis, Funciones,
  FuncionsCurs, BlocQuirurgic;

{$R *.dfm}

{ TwDataBlocQuirurgicQ }



procedure TwDataBlocQuirurgicQ.ObreQueries;
begin
    obert := False;

    qPreinduccio.Close;
    qCMultinivell.Close;
    qComplPQ.Close;
    qEnquestaCMA.Close;
    qCompAnest.Close;
    bPersonalBQ.Close;
    bIsq.Close;
    qObservInf.Close;
    bProcediments.Close;
    qIntervencions.Close;
    bPreoperatoris.Close;

    bPreoperatoris.Open;
    qIntervencions.Open;
    bProcediments.Open;
    qObservInf.Open;
    bIsq.Open;
    bPersonalBQ.Open;
    qCompAnest.Open;
    qEnquestaCMA.Open;
    qComplPQ.Open;
    qCMultinivell.Open;
    qCMultinivell.First;
    qPreinduccio.Open;

    obert := True;
end;


procedure TwDataBlocQuirurgicQ.TancaQueries;
begin
    qPreinduccio.Close;
    qCMultinivell.Close;
    qComplPQ.Close;
    qEnquestaCMA.Close;
    qCompAnest.Close;
    bPersonalBQ.Close;
    bIsq.Close;
    qObservInf.Close;
    bProcediments.Close;
    qIntervencions.Close;
    bPreoperatoris.Close;
    
    obert := False;
end;


procedure TwDataBlocQuirurgicQ.bPreoperatorisAfterScroll(DataSet: TDataSet);
var
  data_caduca: TDateTime;
begin
    if not obert then Exit;

    if Assigned(wDataVerHis.F.FormBlocquirurgic) then with wDataVerHis.F.FormBlocquirurgic do
    begin
      Modificar.Enabled := False;
      Reactivar.Enabled := False;
      Anular.Enabled := False;
      panelEstat.Tag := 0;
      panelEstat.Hide;

      if (bPreoperatoris.RecordCount = 0) then Exit;

      CASE wDataBlocQuirurgicQ.bPreoperatoris.FieldByName('Estat_Interv').AsInteger OF
      -3,8: begin // CONTRAINDICADA
                labelEstat.Caption := Format('INTERVENCIÓ CONTRAINDICADA per %s el dia %s.',
                                             [bPreoperatoris.FieldbyName('metge_metge').AsString,
                                              FormatDateTime('dd/mm/yyyy', bPreoperatoris.FieldbyName('data_ultmodi').AsDateTime)]);
                labelEstat.Font.Color := clRed;
            end;
      -2,6: begin // CADUCAT - mostrem la data d'autorització (si s'havia autoritzat) i de caducitat
                if bPreoperatoris.FieldByName('data_autoritzacio').IsNull then
                begin
                    data_caduca := bPreoperatoris.FieldByName('data_ultmodi').AsDateTime + 90;
                    labelEstat.Caption := Format('Full CADUCAT el dia %s', [FormatDateTime('dd/mm/yyyy', data_caduca)]);
                end
                else if (bPreoperatoris.FieldByName('data_caduca2').IsNull)
                then begin
                    data_caduca := bPreoperatoris.FieldByName('data_autoritzacio').AsDateTime + 90;
                    labelEstat.Caption := Format('Full autoritzat per %s el dia %s i CADUCAT el dia %s.',
                                                 [bPreoperatoris.FieldbyName('metge_metge').AsString,
                                                  FormatDateTime('dd/mm/yyyy', bPreoperatoris.FieldByName('data_autoritzacio').AsDateTime),
                                                  FormatDateTime('dd/mm/yyyy', data_caduca)]);
                end
                else begin
                    data_caduca := bPreoperatoris.FieldByName('data_caduca2').AsDateTime;
                    labelEstat.Caption := Format('Full autoritzat per %s el dia %s, reactivat el dia %s i CADUCAT el dia %s.',
                                                 [bPreoperatoris.FieldbyName('metge_metge').AsString,
                                                  FormatDateTime('dd/mm/yyyy', bPreoperatoris.FieldByName('data_autoritzacio').AsDateTime),
                                                  FormatDateTime('dd/mm/yyyy', data_caduca - 30),
                                                  FormatDateTime('dd/mm/yyyy', data_caduca)]);
                end;
                labelEstat.Font.Color := clBlack;
            end;
      -1,7: begin // ANUL·LAT - mostrem la data d'anul·lació en vermell
                labelEstat.Caption := Format('FULL ANUL·LAT per %s el dia %s.',
                                             [bPreoperatoris.FieldbyName('metge_metge').AsString,
                                              FormatDateTime('dd/mm/yyyy', bPreoperatoris.FieldbyName('data_ultmodi').AsDateTime)]);
                labelEstat.Font.Color := clRed;
            end;
         1: begin // EN CURS
                labelEstat.Caption := 'FULL EN CURS';
                labelEstat.Font.Color := $002978C7;
            end;
         2: begin // AJORNADA
                labelEstat.Caption := 'INTERVENCIÓ AJORNADA';
                labelEstat.Font.Color := $002978C7;
            end;
         4: begin // PENDENT DE VALIDAR
                labelEstat.Caption := 'FULL PENDENT DE VALIDAR (anestesiòleg)';
                labelEstat.Font.Color := clBlue;
            end;
         5: begin // AUTORITZAT
                labelEstat.Caption := Format('FULL AUTORITZAT per %s el dia %s.',
                                             [bPreoperatoris.FieldbyName('metge_metge').AsString,
                                              FormatDateTime('dd/mm/yyyy', bPreoperatoris.FieldbyName('data_autoritzacio').AsDateTime)]);
                // Si ha estat reactivat després d'haver caducat, ho afegim:
                if not bPreoperatoris.FieldByName('data_caduca2').IsNull then
                begin
                    if bPreoperatoris.FieldByName('data_reactivacio').IsNull then
                    begin
                        data_caduca := bPreoperatoris.FieldByName('data_caduca').AsDateTime;
                        labelEstat.Caption := labelEstat.Caption + Format(' Reactivat el %s per %s.', [FormatDateTime('dd/mm/yyyy hh:nn:ss', data_caduca -30)]);
                    end
                    else begin
                        data_caduca := bPreoperatoris.FieldByName('data_reactivacio').AsDateTime;
                        labelEstat.Caption := labelEstat.Caption + Format(' Reactivat el %s per %s.', [FormatDateTime('dd/mm/yyyy hh:nn:ss', data_caduca), bPreoperatoris.FieldbyName('metge_reactiva_metge').AsString]);
                    end;
                end;
                labelEstat.Font.Color := clGreen;
            end;
         else panelEstat.Tag := 1;
      END;

      if (panelEstat.Tag = 0) then panelEstat.Show;

      if (bPreoperatoris.FieldByName('Urgent').AsString = 'S') then begin
                                                                   Check_Preoperatori_Urgent.Font.Color := clRed;
                                                                   Check_Preoperatori_Urgent.Font.Style := [fsBold];
                                                               end
                                                               else begin
                                                                   Check_Preoperatori_Urgent.Font.Color := clWindowText;
                                                                   Check_Preoperatori_Urgent.Font.Style := [];
                                                               end;

      // Es poden reactivar els caducats que havien estat autoritzats (fins a 3 mesos després que hagin caducat. Ho comprovem després)
      Reactivar.Enabled := (bPreoperatoris.FieldByName('Estat_Interv').AsInteger = -2)
                            and not bPreoperatoris.FieldByName('Data_Autoritzacio').IsNull;   // 10-2012: també caduquem els que no autoritzats que no s'han modificat en els 3 últims mesos, però aquests no es poden reactivar 
                          
      // Es poden modificar o anul·lar els que estan en curs, ajornats o pendents de validar
      Modificar.Enabled := (bPreoperatoris.FieldByName('Estat_Interv').AsInteger in [1,2,4]);
      Anular.Enabled := Modificar.Enabled;
    end;
end;


procedure TwDataBlocQuirurgicQ.qIntervencionsCalcFields(DataSet: TDataSet);
begin
    qIntervencions.FieldByName('Diag_ICD').AsString := '[' + qIntervencions.FieldByName('G_Diag_op'    ).AsString + ']  '+
                                                             qIntervencions.FieldByName('Diag_op_N_ICD').AsString;
    qIntervencions.FieldByName('Proc_ICD').AsString := '[' + qIntervencions.FieldByName('G_Procediment').AsString + ']  '+
                                                             qIntervencions.FieldByName('Proced_N_ICD' ).AsString;
end;


procedure TwDataBlocQuirurgicQ.qIntervencionsAfterScroll(DataSet: TDataSet);
var
  activa: TTabSheet;
begin
    if not obert then Exit;

    if Assigned(wDataVerHis.F.FormBlocquirurgic) then with wDataVerHis.F.FormBlocquirurgic do
    begin
      pAnulacio.Visible := (qIntervencions.FieldByName('Estat').AsInteger = 40);

      activa := pcIntervencions.ActivePage;

      OmplePreparacio;
      OmpleCuresInfer;
      OmpleFullQuirurgic;

      if canviat then pcIntervencions.ActivePage := activa
                 else CASE qIntervencions.FieldByName('Estat').AsInteger OF
                        10,40: pcIntervencions.ActivePage := tabPreparacio;
                           20: pcIntervencions.ActivePage := tabCuresInfer;
                       30..39: pcIntervencions.ActivePage := tabFullQuirurgic;
                      END;

      tabEnquestaCMA.TabVisible := not qIntervencions.FieldByName('Estat_CMA').IsNull;

      Anular.Enabled := (qIntervencions.FieldByName('Estat').AsInteger in [10..29]);
      bCanviDataHora.Visible  := Anular.Enabled;
      lbCanviQuirofan.Visible := Anular.Enabled;
      CuresInfermeria.Enabled := Anular.Enabled;
      Imprimir.Enabled        := Anular.Enabled;

      // es pot editar mentre no s'hagi validat alguna línia o no n'hagin entrat cap - ho limito a que no hagin anul·lat la intervenció
      MaterialBQ.Enabled      := (not qIntervencions.FieldByName('C_Interv').IsNull) and (qIntervencions.FieldByName('Estat').AsInteger <> 40);

      lbCanviProfilaxi.Visible     := Anular.Enabled;
      lbCanviTipusCirurgia.Visible := Anular.Enabled;
      lbCanviOM.Visible            := Anular.Enabled;
      FullQuirurgic.Enabled := (qIntervencions.FieldByName('Estat').AsInteger in [10,20,31,32,34,35,36]); // falta algun full quirúrgic
      FullAnestesia.Enabled := qCompAnest.FieldByName('C_ESTAT').IsNull or (qCompAnest.FieldByName('C_ESTAT').AsInteger = 1); //(qIntervencions.FieldByName('Estat').AsInteger in [10,20,33,34,35]);       // falta full anestèsia
      PreinduccioAnestesica.Enabled := (qIntervencions.FieldByName('Estat').AsInteger in [10..39]) and
                                       (qIntervencions.FieldByName('Estat').AsInteger <> 30)       and
                                       (qPreinduccio.FieldByName('ID').IsNull or (qPreinduccio.FieldByName('ANULAT').AsString='S'));

      // Podran regularitzar l'estoc d'estupefaents de quiròfan si la intervenció s'ha fet en els 7 darrers dies i ja ha passat l'hora prevista.
      EstupefaentsBQ.Enabled := (qIntervencions.FieldByName('Data_Prev').AsDateTime >= DateServer-7) and
                                (qIntervencions.FieldByName('Data_Prev').AsDateTime < NowServer);

      // Enquesta CMA: intervencions fetes per prestacions 1008 i 2005
      // (Estat_CMA s'inicialitza a 0 en fer el FQ d'infermeria, i només si és 1008 o 2005)
      EnquestaCMA.Enabled := (not  qIntervencions.FieldByName('Estat_CMA').IsNull)
                              and (qIntervencions.FieldByName('Estat_CMA').AsInteger in [0,1]);   // Enquesta CMA pendent o en curs

      // Complicacions post-quirúrgiques: si la intervenció s'ha realizat (Realitzada s'inicialitza en omplir el Full Quirúrgic)
      ComplicacionsPQ.Enabled := (qIntervencions.FieldByName('Realitzada').AsString = 'S') and   // realitzada 
                                 (qIntervencions.FieldByName('Estat').AsInteger <> 40);          // no anul·lada

      // Cirurgia Multinivell - hi ha d'haver una intervenció no anul·lada a la que associem la cirurgia multinivell. No validem dates
      CirurgiaMultinivell.Enabled := (qIntervencions.RecordCount > 0) and (qIntervencions.FieldByName('Estat').AsInteger <> 40);
      OmpleCMN(qIntervencions.FieldByName('C_Interv').AsInteger);
    end;
end;

procedure TwDataBlocQuirurgicQ.bPersonalBQCalcFields(DataSet: TDataSet);
begin
    if  (DataSet.FieldByName('metge_Metge').AsString <> '')
    then DataSet.FieldByName('nom').AsString := DataSet.FieldByName('metge_Metge').AsString
    else DataSet.FieldByName('nom').AsString := DataSet.FieldByName('n_ajudant'  ).AsString;
end;

procedure TwDataBlocQuirurgicQ.qEnquestaCMAAfterScroll(DataSet: TDataSet);
begin
    if Assigned(wDataVerHis.F.FormBlocquirurgic)
    then wDataVerHis.F.FormBlocquirurgic.edEscalaEva.Visible := (qEnquestaCMA.FieldByName('Dolor').AsString = 'S');
end;

procedure TwDataBlocQuirurgicQ.cComplPQEnActivar(Sender: TObject);
begin
     if (not TeDretAcces([99], False, False)) and Assigned(wDataVerHis.F) then
     begin
         TxHYDialogConsulta(Sender).Enabled := False;
         wDataVerHis.F.Show;
         Exit;
     end;
end;

procedure TwDataBlocQuirurgicQ.cComplPQEnDesactivar(Sender: TObject);
begin
    TxHYDialogConsulta(Sender).Enabled := True;
end;

procedure TwDataBlocQuirurgicQ.cComplPQAlSeleccionar(Sender: TxHYDialogConsulta; Datos: TDataSet);
var
  historia: String;
  F: TwFichaVerHis;
  pregunta: String;
  Complicacions: String;
begin
    historia := Datos.FieldByName('C_Historia').AsString;

    WaitON('Obrint . . .');
    TRY F := TwFichaVerHis(AbrirForm(TwFichaVerHis));
    FINALLY WaitOff;
    END;

    with F do
    begin
        // Ens col·loquem a la intervenció corresponent, a la pestanya del Bloc Quirúrgic
        MiConsulta := Sender;
        ObrirHistoria(historia, False);
        Tabs.ActivePage := TabBQuirurgic;
        Quirof.Tag := 1;
        QuirofExecute(Self);
        qIntervencions.Locate('C_Interv', Datos.FieldByName('C_Interv').AsInteger, []);

        // Demanem usuari i mirem drets
        MetgeCrea := PreguntaMetge;
        if (MetgeCrea.Codi = '') then Exit;
        if not TeDretGrup(wDataVerHis.F.MetgeCrea.Grup, [22]) then begin FerError(Error1); Exit; end;  // Metges

        // Ens guardem els mesos de l'alarma per indicar-los al full de complicacions si cal
        MesosComplPQ := Datos.FieldByName('Mesos').AsInteger;

        // Preguntarem si hi ha hagut infecció i, en cas que no, si hi ha hagut complicacions

        pregunta := NLine + ' EL PACIENT HA PRESENTAT ALGUNA INFECCIÓ DEL LLOC QUIRÚRGIC ' + NLine +
                            ' DURANT ELS DARRERS 30 DIES? ' + NLine + NLine +
                            ' (També podeu respondre que no s''ha pogut fer el seguiment del pacient) ' + NLine + NLine;

        if (MesosComplPQ = 12) then pregunta := Replace('ELS DARRERS 30 DIES', 'EL DARRER ANY', pregunta);

        MB.Items[0].Body.Text := pregunta;
        Complicacions := '';
        CASE MB.Execute('ComplPQ-I') OF
          // Sí -> demanarem l'escala d'infeccions i la de complicacions
          1: begin
               InfeccioPQ := True;
               Estado := 172;
             end;

          // No -> preguntem si hi ha hagut alguna complicació
          2: begin
                 pregunta := NLine + ' EL PACIENT HA PRESENTAT ALGUNA COMPLICACIÓ ' + NLine +
                                     ' DURANT ELS DARRERS 30 DIES? ' + NLine + NLine;

                 if (MesosComplPQ = 12) then pregunta := Replace('ELS DARRERS 30 DIES', 'EL DARRER ANY', pregunta);

                 MB.Items[1].Body.Text := pregunta;
                 CASE MB.Execute('ComplPQ-C') OF
                   // Sí -> demanarem només l'escala de complicacions
                   1: begin
                        InfeccioPQ := False;
                        Estado := 172;
                      end;
                   // No -> generarem registre de No complicacions
                   2: Complicacions := 'N';
                   else Exit;
                 END;
             end;

          // No seguiment -> generem registre de no seguiment
          3: Complicacions := 'X';

          // Cancel·la -> sortim
          else Exit;
        END;

        // Si diuen que hi ha hagut complicacions, les fem entrar
        if (Estado <> 2) then
        begin
            Estado := 172;
            Refrescar;
        end

        // Si no n'hi ha hagut o no n'han fet el seguiment, insertem el registre corresponent
        else begin
            GutExecute('insert into BQCOMPL_PQ (ID, C_INTERV, DATA, COMPLICACIONS, DATA_R, USUARI_R) ' +
                       'values (Gen_ID(G_BQCOMPLPQ, 1),  %d, "%s",          "%s",   "NOW",     "%s") ',
                       [Datos.FieldByName('C_Interv').AsInteger,
                        FormatDateTime('dd.mm.yyyy', DateServer),
                        Complicacions,
                        MetgeCrea.Codi]);

            wDataBlocQuirurgicQ.qComplPQ.Close;
            wDataBlocQuirurgicQ.qComplPQ.Open;
        end;
    end;
end;


procedure TwDataBlocQuirurgicQ.cComplPQAlTancar(Sender: THYConsulta);
begin
    FLAG_FORM := False;
end;

procedure TwDataBlocQuirurgicQ.qCMultinivellAfterScroll(DataSet: TDataSet);
begin
  if Assigned(wDataVerHis.F.FormBlocquirurgic)
  then wDataVerHis.F.FormBlocquirurgic.OmpleCMN(DataSet.FieldByName('c_interv').AsInteger,DataSet.FieldByName('id').AsInteger);
end;

procedure TwDataBlocQuirurgicQ.qPreinduccioAfterScroll(DataSet: TDataSet);
begin
  wDataVerHis.F.FormBlocQuirurgic.lAnulacio.Caption := Format('Full anul·lat per %s el %s. Motiu: %s',
                                                              [DataSet.FieLdByName('C_USER_ANULA').AsString,
                                                               FormatDateTime('dd-mm-yyyy hh:nn:ss', DataSet.FieLdByName('DATA_ANULA').AsDateTime),
                                                               DataSet.FieLdByName('MOTIU_ANULA').AsString]);

  wDataVerHis.F.FormBlocQuirurgic.lAnulacio.Visible := (not DataSet.FieldByName('id').IsNull) and (DataSet.FieldByName('ANULAT').AsString = 'S');
end;

end.
