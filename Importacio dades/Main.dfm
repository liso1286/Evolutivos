object wMain: TwMain
  Left = 766
  Top = 158
  Width = 649
  Height = 846
  BorderWidth = 10
  Caption = 'Importaci'#243' de dades IB a DBF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Foto: TJvDBImage
    Left = 32
    Top = 246
    Width = 149
    Height = 211
    BorderStyle = bsNone
    Ctl3D = False
    DataField = 'FOTO'
    DataSource = dsFotos
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    Stretch = True
    TabOrder = 2
    Proportional = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      621
      41)
    object sbSortir: TSpeedButton
      Left = 568
      Top = 1
      Width = 43
      Height = 38
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101010707
        0F0F0F07070F0F0F07070F0F0F0000000F0F07070F0F010101010101070F0F0F
        07070F0F0F07070F0F0F07070F000909000F0F0F07070F0F0101010F0F07070F
        0F0F07070F0F0F07070F0F0F070009090100070F0F0F07070F0107070F0F0F07
        070F0F0F07070F0F0F07070F0F00090901010007070F0F0F07070F0F07070F0F
        0F07070F0F0F07070F0F0F0707000909010101000F07070F0F0F070F0F0F0707
        0F0F0F07070F0F0F07070F0F0F00090901010101000F0F07070F000000000000
        000000000000000F0F0F07070F000909010101010100000000000F0F0F0F0F0F
        0F0F0F0F0F0F0007070F0F0F0700090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0F0F0F000F0F07070F0F00090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0F070F0000000000000000090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0007070008080808080800090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0000070008080808080800090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0001000008080808080800090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0001010008080808080800090901000001010008070F0F0F0F0F0F0707
        0707070009010100080808080800090900080001010008070F0F0F0F0F070707
        07070700090901010008080808000909000F0001010008070F0F0F0F00000000
        0000000009090901010008080800090901000001010008070F0F0F0001010101
        0101010109090909010100080800090901010101010008070F0F0F0009090909
        0909090909090909090101000800090901010101010008070F0F0F0009090F0F
        0F0F0F0F0F0F0F0F090901000800090901010101010008070F0F0F0009090909
        0909090909090F09090100080800090901010101010008070F0F0F0F00000000
        00000000090F0909010008080800090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0009090901000808080800090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0009090100080808080800090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0009010008080808080800090901010101010008070F0F0F0F0F0F0F0F
        0F0F0F0001000008080808080808000909010101010008070F0F0F0F0F0F0F0F
        0F0F0F00000F0008080808080808080009090101010008070F0F0F0F0F0F0F0F
        0F0F0F0F0F0F0008080808080808080800090901010008070F0F0F0F0F0F0F0F
        0F0F0F0F0F0F0008080808080808080808000909010008070F0F0F0F0F0F0F0F
        0F0F0F0F0F0F00080808080808080808080800090900080F0F0F0F0F0F0F0F0F
        0F0F0F0F0F0F000000000000000000000000000000000F0F0F0F0F0F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F}
      OnClick = sbSortirClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 621
    Height = 505
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object rg: TRadioGroup
      Left = 0
      Top = 0
      Width = 621
      Height = 371
      Align = alTop
      Columns = 2
      Items.Strings = (
        'Filiats (FILIACIO)'
        'Filiats antic (FILIACIO)'
        'Tractaments (TRACTAMENTS)'
        'Prestacions (PRESTACION)'
        'Bloc quir'#250'rgic (BQUIRURGIC)'
        'Banc de sang (BANCSANG)'
        'Cap'#231'alera escales (ESCALESCAP)'
        'Caigudes (CAIGUDES)'
        'Educaci'#243' cap'#231'aleres (EDUCAP)'
        'Educaci'#243' l'#237'nies (EDULIN)'
        'Educaci'#243' par'#224'metres (EDUPARAMS)'
        'UPP (UPPCAP)'
        'UPP seguiments (UPPLIN)'
        'Dades infermeria (INFERDADES)'
        'Documents infermeria (DOCSINFER)'
        'Codicamps (CODICAMPS)'
        'Unitats m'#232'diques (UNITATM)'
        'Estats interconsultes (ESTATINTERCON)'
        'Interconsultes (INTERCON)'
        'Resum/evoluci'#243' (HISTORIA)'
        'Passis (PASSIS)'
        'Fotos pacients (FOTOPACIENTE)'
        'Anest'#232'sia (BQANESTESIA)'
        'Grup Terap'#232'utic Nacional (GTN)'
        'Log canvis de llit  (LOGCANVISLLIT)'
        'Radiografies (RX)'
        'Parafarm'#224'cia (MOVIMENTS)'
        'Usuaris (METGES)'
        'Preses (OMADMPRESES)'
        'Agenda pacient (AGENDAPACIENT)'
        'Ordres m'#232'diques a infermeria (ORDRESINFERMERIA)'
        'Tasques d'#39'infermeria (INFERTASQUES)'
        'Objectius SC (P_OBJCAP_ACTIUSTOT)'
        'Fotos pacients (cares)'
        'Farm'#224'cia (productes)'
        'Farm'#224'cia (estocs)'
        'Cues Qmatic (CUAQMATIC)'
        'Sem'#224'for COVID'
        'Vacunes'
        'REGPROC'
        'Grafica ingressats '#250'ltim valor'
        'Cues Button (LOGCUABUTTON)'
        'REC pacients ingressats (SEMAFOR REC)')
      TabOrder = 0
      OnClick = rgClick
    end
    object P1: TPanel
      Left = 0
      Top = 381
      Width = 621
      Height = 124
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 1
      Visible = False
      object bImport: TButton
        Left = 443
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Importa'
        TabOrder = 0
        OnClick = bImportClick
      end
      object Barra: TProgressBar
        Left = 8
        Top = 93
        Width = 509
        Height = 23
        Min = 1
        Max = 100
        Position = 1
        Smooth = True
        TabOrder = 1
      end
      object pPeriode: TPanel
        Left = 8
        Top = 48
        Width = 509
        Height = 37
        BevelOuter = bvLowered
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 278
          Top = 13
          Width = 42
          Height = 13
          Caption = '23:59:59'
        end
        object Label3: TLabel
          Left = 125
          Top = 12
          Width = 42
          Height = 13
          Caption = '00.00:00'
        end
        object eDesde: THYTextEdit
          Left = 5
          Top = 8
          Width = 117
          Height = 19
          Tipo = teDate
          CustDataType = dtDate
          EditMask = '!99/99/9999;1; '
          Eti = 'Per'#237'ode'
          EtiSepara = 50
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Size = 10
          TabOrder = 0
          TabStop = True
          AutoSelect = False
        end
        object eFins: THYTextEdit
          Left = 204
          Top = 8
          Width = 68
          Height = 19
          Tipo = teDate
          CustDataType = dtDate
          EditMask = '!99/99/9999;1; '
          EtiSepara = 0
          EtiOrienta = eoIzquierda
          EtiAlign = taLeftJustify
          Size = 10
          TabOrder = 1
          TabStop = True
          AutoSelect = False
        end
      end
      object Panel4: TPanel
        Left = 8
        Top = 8
        Width = 425
        Height = 37
        BevelOuter = bvNone
        TabOrder = 3
        object Label1: TLabel
          Left = 5
          Top = 12
          Width = 49
          Height = 13
          Caption = 'Fitxer DBF'
        end
        object Nom: TEdit
          Left = 59
          Top = 9
          Width = 366
          Height = 21
          TabOrder = 0
          Text = 'C:\FILIACIO.dbf'
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 371
      Width = 621
      Height = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object Dbf: THalcyonDataSet
    About = 'Halcyon Version 06.53 (10 Sep 99)'
    Exclusive = True
    IndexDefs = <>
    LockProtocol = Default
    TableName = 'FILIACIO.DBF'
    TranslateASCII = True
    UseDeleted = False
    UserID = 1
    Left = 86
    Top = 6
  end
  object Select: TQuery
    DatabaseName = 'InternaImportaAdbf'
    SQL.Strings = (
      'SELECT * FROM TRAZACONTROL')
    Left = 132
    Top = 6
  end
  object CreaFili: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'NUM_HIST;N;5;0'
      'APELLIDO1;C;20;0'
      'APELLIDO2;C;20;0'
      'NOMBRE;C;20;0'
      'DNI;C;9;0'
      'NOMVIA;C;50;0'
      'TELEFONO;C;10;0'
      'TIPUSVIA;C;4;0'
      'CODIGO;C;5;0'
      'NUMERO;C;10;0'
      'BLOC;C;2;0'
      'ESCALA;C;2;0'
      'PIS;C;5;0'
      'PORTA;C;3;0'
      'POBLACIO;C;44;0'
      'PROVINCIA;C;44;0'
      'RESIDENCIA;C;7;0'
      'PAIS;C;3;0'
      'SEXO;C;1;0'
      'FECHA_NAC;D;8;0'
      'LUGAR_NAC;C;44;0'
      'ESTADO_CIV;C;2;0'
      'SOE;C;12;0'
      'TSI;C;14;0'
      'TITULAR;C;1;0'
      'PENSIONIST;C;1;0'
      'IDIOMA;C;1;0'
      'TELEFO1_FA;C;10;0'
      'DESCRIP1;C;30;0'
      'TELEFO2_FA;C;10;0'
      'DESCRIP2;C;30;0'
      'AMIC;N;5;0'
      'MORT;D;8;0'
      'USRA;N;5;0'
      'UNITAT;N;2;0'
      'UMEDICA;N;4;0'
      'EDAT;N;3;0'
      'ESVIU;C;1;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 35
    Top = 6
  end
  object gdb: TDatabase
    AliasName = 'GUTTMANN'
    DatabaseName = 'InternaImportaAdbf'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=miope')
    SessionName = 'Default'
    Left = 183
    Top = 7
  end
  object CreaUM: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_UNITATM;N;3;0'
      'N_UNITATM;C;30;0'
      'C_UNITATA;N;3;0'
      'C_UNITATRM;N;3;0'
      'BAIXA;C;1;0'
      'C_GRUP;C;1;0'
      'N_GRUP;C;30;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 315
    Top = 602
  end
  object CreaTract: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_TRACTA;N;10;0'
      'C_HIST;N;5;0'
      'C_PRESTA;C;4;0'
      'DATA_ING;D;8;0'
      'C_COORDINA;C;5;0'
      'DATA_ALTA;D;8;0'
      'DATA_PREAL;D;8;0'
      'C_LLIT;C;3;0'
      'C_PLANTA;C;15;0'
      'DURADA;F;15;3'
      'ESTATINFAL;N;2;0'
      'C_MOTIU;N;5;0'
      'C_PROCES;N;5;0'
      'FI_PROCES;C;1;0'
      'ESPROV;N;2;0'
      'C_INFER;C;5;0'
      'CF;C;2;0'
      'C_FISIO;C;5;0'
      'C_LOGO;C;5;0 '
      'C_MUSIC;C;5;0'
      'C_PSICO;C;5;0'
      'C_TRS;C;5;0'
      'C_TO;C;5;0'
      'C_FI_LM;C;5;0'
      'C_FI_AR;C;5;0'
      'C_ORIGEN;N;5;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 19
    Top = 550
  end
  object CreaPresta: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_PRESTA;C;4;0'
      'N_PRESTA;C;35;0'
      'N_PRESTA2;C;35;0'
      'RESUM;C;8;0'
      'TIPUS;N;2;0'
      'CODIFACT;C;40;0'
      'DESCSCS;C;40;0'
      'ESEASE;C;1;0'
      'PLANTA;C;10;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 75
    Top = 550
  end
  object CreaBQ: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_INTERV;N;8;0'
      'C_TRACT;N;8;0'
      'C_HIST;N;5;0'
      'TIPUS_P;C;1;0'
      'C_DIAGP;C;15;0'
      'C_PROC;C;15;0'
      'DATA_PREV;C;20;0'
      'T_ANEST;C;40;0'
      'C_M_PREP;C;5;0'
      'DATA_PREP;C;20;0'
      'ITEM1_OK;C;2;0'
      'ITEM1_I;C;3;0'
      'ITEM2_OK;C;2;0'
      'ITEM2_I;C;3;0'
      'ITEM3_OK;C;2;0'
      'ITEM3_I;C;3;0'
      'ITEM4_OK;C;2;0'
      'ITEM4_I;C;3;0'
      'ITEM5_OK;C;2;0'
      'ITEM5_I;C;3;0'
      'ITEM6_OK;C;2;0'
      'ITEM6_I;C;3;0'
      'ITEM7_OK;C;2;0'
      'ITEM7_I;C;3;0'
      'ITEM8_OK;C;2;0'
      'ITEM8_I;C;3;0'
      'ITEM9_OK;C;2;0'
      'ITEM9_I;C;3;0'
      'ITEM10_OK;C;2;0'
      'ITEM10_I;C;3;0'
      'ITEM11_OK;C;2;0'
      'ITEM11_I;C;3;0'
      'ITEM12_OK;C;2;0'
      'ITEM12_I;C;3;0'
      'ITEM13_OK;C;2;0'
      'ITEM13_I;C;3;0'
      'ITEM14_OK;C;2;0'
      'ITEM14_I;C;3;0'
      'ITEM15_OK;C;2;0'
      'ITEM15_I;C;3;0'
      'ITEM16_OK;C;2;0'
      'ITEM16_I;C;3;0'
      'ITEM17_OK;C;2;0'
      'ITEM17_I;C;3;0'
      'CIRURGIA;C;5;0'
      'ANESTESIO;C;5;0'
      'CBIOPSIA;N;2;0'
      'BOSSES;N;3;0'
      'D_ENTRADA;C;20;0'
      'TEMPSA;C;20;0'
      'TEMPSB;C;20;0'
      'TEMPSC;C;20;0'
      'TEMPSD;C;20;0'
      'ANULACIO;C;40;0'
      'M_ANULA;C;5;0'
      'DATA_ANUL;C;20;0'
      'ESTAT;N;2;0'
      'D_CURES;C;20;0'
      'NUMERACIO;N;10;0'
      'NUM_INT;N;3;0'
      'OBSERVA;C;255;0'
      'N_CIRURGI;C;20;0'
      'C_METGEFI;C;5;0'
      'D_METGEFI;C;20;0'
      'C_INFERFI;C;5;0'
      'D_INFERFI;C;20;0'
      'C_ESPERA;N;8;0'
      'N_PROC2;C;40;0'
      'PROFILAXI;C;2;0'
      'DIETA_ABS;C;1;0'
      'VIA_SN;C;1;0'
      'SANG_SN;C;1;0'
      'PREMEDICA;C;1;0'
      'N_DIAGP;C;80;0'
      'N_PROC;C;80;0'
      'ITEM18_OK;C;2;0'
      'ITEM18_I;C;3;0'
      'ITEM19_OK;C;2;0'
      'ITEM19_I;C;3;0'
      'ITEM20_OK;C;2;0'
      'ITEM20_I;C;3;0'
      'ITEM21_OK;C;2;0'
      'ITEM21_I;C;3;0'
      'ITEM22_OK;C;2;0'
      'ITEM22_I;C;3;0'
      'ESTAT_CMA;N;2;0'
      'COMPLICA;C;1;0'
      'ITEM23_OK;C;2;0'
      'ITEM23_I;C;3;0'
      'ITEM24_OK;C;2;0'
      'ITEM24_I;C;3;0'
      'ITEM25_OK;C;2;0'
      'ITEM25_I;C;3;0'
      'G_DIAGP;C;15;0'
      'G_PROC;C;15;0'
      'IDNEUROD;C;15;0'
      'IDNEUROP;C;15;0'
      'REINTERV;C;1;0'
      'VERIFENT;C;1;0'
      'SIGNIN;C;1;0'
      'TIMEOUT;C;1;0'
      'SIGNOUT;C;1;0'
      'RASURARSN;C;1;0'
      'DINARSN;C;1;0'
      'C_ANESTES;N;3;0'
      'C_PROTESI;C;15;0'
      'T_CIRURGI;N;2;0'
      'T_INTERV;C;2;0'
      'C_QUIRO;N;2;0'
      'C_SANG;N;2;0'
      'CONMATIES;N;2;0'
      'PLAQUETES;N;2;0'
      'PLASMAF;N;2;0'
      'SANGTOTAL;N;2;0'
      'PCOMPLICA;C;1;0'
      'ESPECIAL;N;3;0'
      'REALITZA;C;1;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 136
    Top = 550
  end
  object CreaBSang: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_INTERCON;N;8;0'
      'EDAT;N;8;0'
      'PES;N;15;3'
      'URGENCIA;N;2;0'
      'HEMATIES;N;2;0'
      'PLASMAF;N;2;0'
      'PLAQUETES;N;2;0'
      'CRIOPRE;N;2;0'
      'HEMATOCRIT;N;3;0'
      'AP;N;3;0'
      'APLAQUETES;N;4;0'
      'FIBRINOGEN;N;2;0'
      'INF_EXTR;C;5;0'
      'DATA_EXTR;C;20;0'
      'TRANSFUSIO;C;1;0'
      'INF_TRANS;C;5;0'
      'DATA_TRANS;C;20;0'
      'REACSN;C;1;0'
      'REAC;C;250;0'
      'INF_REAC;C;5;0'
      'DATA_REAC;C;20;0'
      'TRANSF_ANT;C;1;0'
      'DATA_ANT;D;8;0'
      'REAC_ANT;C;250;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 192
    Top = 550
  end
  object CreaOMAdm: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'ID;N;8;0'
      'C_HIST;N;5;0'
      'C_OM;N;10;0'
      'DATA_PRESA;C;20;0'
      'ADMINISTRA;C;1;0'
      'C_MOTIU;N;5;0'
      'N_MOTIU;C;40;0'
      'DATA_ADMIN;C;20;0'
      'USER_ADMIN;C;5;0'
      'USER_RISC;C;5;0'
      'U_INSULINA;N;3;0'
      'COMENTARI;C;80;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 256
    Top = 550
  end
  object CreaCaigudes: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'ID;N;8;0'
      'C_HIST;N;5;0'
      'D_CAIGUDA;D;8;0'
      'HORA;C;2;0'
      'C_USUARI;C;5;0'
      'D_COMUNICA;D;8;0'
      'C_TRACT;N;10;0'
      'LLIT;C;3;0'
      'PAT_ADD;N;2;0'
      'LLOC;N;2;0'
      'ALTFUNCSUP;C;1;0'
      'PACIENTCOM;N;2;0'
      'CAUSA;N;2;0'
      'LESIONS;N;2;0'
      'PACIENT_ON;N;4;0'
      'LLITBAIX;N;2;0'
      'INFORMACIO;C;1;0'
      'VALORACIO;C;1;0'
      'MESURES;C;255;0'
      'OBSERVA;C;255;0'
      'ESC_ANT;N;3;0'
      'ESC_NOU;N;3;0'
      'INFORMAT_F;C;1;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 324
    Top = 550
  end
  object CreaEduCap: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_EDUCAP;N;8;0'
      'C_HIST;N;5;0'
      'C_TRACT;N;10;0'
      'C_PARAM;N;3;0'
      'A_QUI;C;1;0'
      'D_DETECCIO;C;20;0'
      'C_USUARI;C;5;0'
      'ESTAT;N;3;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 390
    Top = 550
  end
  object CreaEduLin: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_EDULIN;N;8;0'
      'C_EDUCAP;N;8;0'
      'C_TRACT;N;10;0'
      'C_ACTUA;N;4;0'
      'DATA;C;20;0'
      'C_USUARI;C;5;0'
      'ANULAT;C;1;0'
      'DATA_ANULAT;C;20;0'
      'ANOTACIO;C;3000;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 450
    Top = 550
  end
  object CreaEduP: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_PARAM;N;8;0'
      'N_PARAM;C;80;0'
      'C_AREA;C;3;0'
      'INFO;C;255;0'
      'RESUM;C;255;0'
      'TIPUS;N;2;0'
      'ORDRE;N;4;0'
      'BAIXA;C;1;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 506
    Top = 550
  end
  object CreaUppCap: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'ID;N;8;0'
      'C_HIST;N;5;0'
      'C_TRACT;N;10;0'
      'D_CREACIO;D;8;0'
      'INT_EXT;C;1;0'
      'ESTAT;N;3;0'
      'LOCALITZA;N;3;0'
      'DATA_FINAL;D;8;0'
      'USER_FINAL;C;5;0'
      'DATA_ANULA;D;8;0'
      'USER_ANULA;C;5;0'
      'DFINALAUTO;C;20;0'
      'MOTIU_FIN;N;3;0'
      'VISTO;C;1;0'
      'USER_VISTO;C;5;0'
      'D_VISTO;D;8;0'
      'UPP;C;1;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 18
    Top = 602
  end
  object CreaUppLin: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'ID;N;8;0'
      'DATA;C;20;0'
      'MIDA1;N;4;0'
      'MIDA2;N;4;0'
      'GRAU;N;3;0'
      'SEDESTACIO;N;3;0'
      'COIXINS;N;2;0'
      'POSTURA;N;3;0'
      'ANULAT;C;1;0'
      'DATA_ANULA;C;20;0'
      'MIDA3;N;4;0'
      'EXUDAT;N;3;0'
      'TEIXIT;N;3;0'
      'C_USUARI;C;5;0'
      'USER_ANULA;C;5;0'
      'PUNTUACIO;N;4;0'
      'LINIA;N;3;0'
      'OBSERVA;C;255;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 81
    Top = 602
  end
  object CreaInfD: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_TRACT;N;10;0'
      'C_ITEM;N;5;0'
      'DATA_VALOR;C;20;0'
      'VALOR;C;15;0'
      'USUARI;C;5;0'
      'DATA;C;20;0'
      'ID;N;8;0'
      'ANULAT;C;1;0'
      'DATA_ANULA;C;20;0'
      'MONITOR;N;3;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 137
    Top = 602
  end
  object CreaDocsI: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'ID;N;8;0'
      'C_HIST;N;6;0'
      'C_TRACT;N;10;0'
      'C_DOC;N;3;0'
      'C_USUARI;C;5;0'
      'DATA;C;20;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 193
    Top = 602
  end
  object CreaCodiC: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'TIPUSCODI;C;20;0'
      'C_CODI;N;8;0'
      'N_CODI;C;40;0'
      'N_CODI2;C;40;0'
      'R_CODI;C;10;0'
      'PARAMS;C;254;0'
      'ORDRE;N;5;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 257
    Top = 602
  end
  object CreaEstInt: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_ESTAT;N;8;0'
      'FET;C;20;0'
      'PENDENT;C;20;0'
      'ANULABLE;C;1;0'
      'TITULCURS;C;40;0'
      'NEXTESTAT;N;8;0'
      'NEXTESTRES;N;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 369
    Top = 602
  end
  object CreaInt: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_INTERCON;N;8;0'
      'C_ESPECIAL;C;2;0'
      'C_TIPUS;C;10;0'
      'URGENT;C;1;0'
      'C_HISTORIA;N;5;0'
      'C_TRACTA;N;8;0'
      'DATA1;C;20;0'
      'D_RESP;C;20;0'
      'D_FI;C;20;0'
      'D_PROVA;C;20;0'
      'C_METGE1;C;5;0'
      'D_PREVISTA;C;20;0'
      'ESTAT;N;3;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 425
    Top = 602
  end
  object CreaOM: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_ORDREM;N;8;0'
      'C_TRACTA;N;10;0'
      'C_HISTORIA;N;5;0'
      'C_VIA;C;3;0'
      'C_FREQ;C;4;0'
      'DOSI;F;15;3'
      'UMESURA;C;4;0'
      'DATA_INI;D;8;0'
      'HORA_INI;N;2;0'
      'C_ESTAT;C;15;0'
      'DATA_SUSP;C;20;0'
      'GTN;C;7;0'
      'RISC;C;1;0'
      'C_PROD;N;10;0'
      'C_PROD2;N;10;0'
      'OBSERV;C;50;0'
      'D_PAUTAT;C;20;0'
      'COMFARM;C;100;0'
      'COMINF;C;40;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 470
    Top = 602
  end
  object SelectB: TQuery
    DatabaseName = 'InternaImportaAdbfB'
    SQL.Strings = (
      'SELECT * FROM FOTOPACIENTE')
    Left = 260
    Top = 6
  end
  object gdbB: TDatabase
    AliasName = 'FOTOS'
    DatabaseName = 'InternaImportaAdbfB'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=miope')
    SessionName = 'Default'
    Left = 311
    Top = 7
  end
  object CreaFoto: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_HISTORIA;N;5;0'
      'FECHAFOTO;C;20;0'
      'USUARI;C;5;0'
      'FECHAFOTO1;C;20;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 83
    Top = 654
  end
  object CreaPassis: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_HISTORIA;N;5;0'
      'INICI;D;8;0'
      'FI;D;8;0'
      'ADM_INICI;C;20;0'
      'ADM_FI;C;20;0'
      'DATA_ADMIN;C;20;0'
      'TRACTAMENT;N;10;0'
      'INFERPASSI;C;5;0'
      'DATA_PASSI;C;20;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 19
    Top = 654
  end
  object CreaAnestesia: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_INTERV;N;8;0'
      'DATA;C;20;0'
      'C_USUARI;C;5;0'
      'G1;C;1;0'
      'G2;C;1;0'
      'G3;C;1;0'
      'G4;C;1;0'
      'G5;C;1;0'
      'G6;C;1;0'
      'CG1;C;1;0'
      'CG2;C;1;0'
      'CG3;C;1;0'
      'CG4;C;1;0'
      'CG5;C;1;0'
      'CG6;C;1;0'
      'CG7;C;1;0'
      'CG8;C;1;0'
      'CG9;C;1;0'
      'CG10;C;1;0'
      'CLV1;C;1;0'
      'CLV2;C;1;0'
      'CLN1;C;1;0'
      'CLN2;C;1;0'
      'CL3;C;1;0'
      'CL4;C;1;0'
      'CL5;C;1;0'
      'CG11;C;1;0'
      'CG12;C;1;0'
      'CG13;C;1;0'
      'GRAU_SEV;N;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 147
    Top = 654
  end
  object CreaGTN: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'GTN;C;7;0'
      'N_GTN;C;80;0'
      'C_FAMILIA;C;5;0'
      'C_ESTAT;C;1;0'
      'USREST;C;1;0'
      'ESGUIA;C;1;0'
      'RISCA;C;1;0'
      'RISCB;C;1;0'
      'RISCC;C;1;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 514
    Top = 602
  end
  object CreaLOGCANVISLLIT: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'ID;N;8;0'
      'C_HISTORIA;N;8;0'
      'LLIT_ANTIC;C;3;0'
      'LLIT_NOU;C;3;0'
      'DATA;C;20;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 240
    Top = 654
  end
  object CreaRX: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'NUM_HIST;N;8;0'
      'C_INTERCON;N;8;0'
      'DATA;D;8;0'
      'METGE;C;5;0'
      'REALITZA;C;3;0'
      'TIPUSEX;N;8;0'
      'POSIC;C;15;0'
      'URGENT;C;1;0'
      'INFORME;C;1;0'
      'PROVA;C;15;0'
      'NUMERO;N;8;0'
      'C_TRACTAM;N;8;0'
      'TIPOPLACA;C;15;0'
      'TUBO;C;15;0'
      'DISPAROS;N;8;0'
      'DISPDEF;N;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 324
    Top = 654
  end
  object CreaMov: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'T_MOV;C;2;0'
      'CC;N;8;0'
      'C_PROD;N;8;0'
      'N_PROD;C;30;0'
      'CANTITAT;N;8;0'
      'PREU;C;15;0'
      'PREUMITG;C;15;0'
      'DATAMOV;D;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 380
    Top = 654
  end
  object CreaMETGES: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'CODI;C;5;0'
      'NOMBRE;C;20;0'
      'COGNOM1;C;20;0'
      'COGNOM;C;15;0'
      'C_GRUP;C;2;0'
      'NC;C;6;0'
      'BAIXA;C;1;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 444
    Top = 654
  end
  object CreaFiliOld: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'NUMHIST;N;5;0'
      'NOM;C;20;0'
      'COGNOM1;C;20;0'
      'COGNOM2;C;20;0'
      'DATANAIX;D;8;0'
      'SEXE;C;1;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 371
    Top = 6
  end
  object CreaPRESES: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'HC;N;8;0'
      'ID_PRESA;N;8;0'
      'C_OM;N;8;0'
      'D_PRESA;D;8;0'
      'ESTAT_I;C;1;0'
      'USUARI_I;C;5;0'
      'ESTAT_F;C;1;0'
      'USUARI_R;C;5;0'
      'C_MOTIU;N;8;0'
      'N_MOTIU;C;40;0'
      'INSULINA;N;8;0'
      'COMENTAR;C;80;0'
      'D_ULTIMA;D;8;0'
      'USUARI_U;C;5;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 516
    Top = 654
  end
  object CreaAgendaPa: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'ID;N;8;0'
      'NH;N;8;0'
      'DIA_SET;N;8;0'
      'DATAI;N;8;0'
      'DATAF;N;8;0'
      'C_ACTIV;C;15;0'
      'USUARII;C;5;0'
      'USUARIF;C;5;0'
      'HORA;N;8;0'
      'METGEV;C;5;0'
      'DATAV;D;8;0'
      'C_TRACT;N;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 28
    Top = 710
  end
  object CreaOI: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'NH;N;8;0'
      'DATA_I;D;8;0'
      'COMENT;C;100;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 100
    Top = 710
  end
  object CreaTasquesI: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_TRACT;N;8;0'
      'TASCA;C;250;0'
      'DATA_I;D;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 164
    Top = 710
  end
  object CreaObjSC: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'CPLANTA;C;10;0'
      'CLLIT;N;8;0'
      'HC;N;8;0'
      'NOM;C;80;0'
      'TRACT;N;8;0'
      'DINGRES;D;8;0'
      'DPALTA;D;8;0'
      'COORD;C;5;0'
      'D1SESS;D;8;0'
      'DUSESS;D;8;0'
      'CAREA;C;3;0'
      'CPARE;N;8;0'
      'NPARE;C;50;0'
      'CGRUP;N;8;0'
      'NGRUP;C;50;0'
      'CITEM;N;8;0'
      'NITEM;C;50;0'
      'MARCAT;C;1;0'
      'ASSOLIT;C;1;0'
      'DASSOL;D;8;0'
      'UASSOL;C;5;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 228
    Top = 710
  end
  object qFotos: TIBQuery
    Database = GdbFotos
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from FOTOPACIENTE'
      'where C_HISTORIA = :c_historia')
    Left = 435
    Top = 469
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_historia'
        ParamType = ptInput
      end>
  end
  object dsFotos: TDataSource
    DataSet = qFotos
    Left = 475
    Top = 469
  end
  object GdbFotos: TIBDatabase
    Connected = True
    DatabaseName = 'ntguttmann7:e:\dades\fotos.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=miope')
    LoginPrompt = False
    DefaultTransaction = Trans
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    AllowStreamedConnected = False
    Left = 528
    Top = 472
  end
  object Trans: TIBTransaction
    Active = False
    DefaultDatabase = GdbFotos
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 584
    Top = 472
  end
  object CreaFarPro: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_PROD;N;8;0'
      'N_REG;C;30;0'
      'N_REG2;C;30;0'
      'N_REG3;C;50;0'
      'EAN;C;13;0'
      'REF;C;16;0'
      'T_PROD;C;1;0'
      'RISC;C;1;0'
      'C_ESTAT;C;1;0'
      'GAVETA;C;1;0'
      'UBI;C;10;0'
      'GTN;C;7;0'
      'CCOMPT;N;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 284
    Top = 710
  end
  object CreaFarEst: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_PROD;N;8;0'
      'N_REG2;C;30;0'
      'STOCKFIX;N;8;0'
      'C_COST;N;8;0'
      'N_REG3;C;50;0'
      'EAN;C;13;0'
      'UBI_UH;C;5;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 340
    Top = 710
  end
  object CreaCua: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_TRACT;N;8;0'
      'DINSERT;C;20;0'
      'DCRIDAT;C;20;0'
      'DVISITAT;C;20;0'
      'DPREINGR;C;20;0'
      'HPREINGR;C;5;0'
      'ESTAT_QM;N;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 580
    Top = 550
  end
  object CreaCOVID: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'HC;N;8;0'
      'ESTAT;C;40;0'
      'ID;N;8;0'
      'TIPUS;C;3;0'
      'DATA;D;8;0'
      'INFO;C;250;0'
      'DATA_REG;D;8;0'
      'USER;C;5;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 578
    Top = 602
  end
  object CreaVac: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'ID;N;8;0'
      'HC;N;8;0'
      'TIPUS;C;3;0'
      'ESTAT;C;40;0'
      'DATA;D;8;0'
      'INFO;C;250;0'
      'DATA_REG;D;8;0'
      'USER;C;5;0'
      'ANULAT;C;1;0'
      'DATA_ANU;D;8;0'
      'USER_ANU;C;5;0'
      'REGINFER;N;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 578
    Top = 652
  end
  object CreaRegProc: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_LLIT;C;3;0'
      'C_PLANTA;C;15;0'
      'T_REG;N;8;0'
      'TIP_REG;C;40;0'
      'HC;N;8;0'
      'C_TRACT;N;8;0'
      'C_UM;N;8;0'
      'N_UM;C;30;0'
      'C_GRUPUM;C;1;0'
      'N_GRUPUM;C;30;0'
      'D_INGRES;D;8;0'
      'D_ALTA;D;8;0'
      'DI_REAL;D;8;0'
      'C_USER_I;C;5;0'
      'C_TIPUS;N;8;0'
      'DI_AUTO;D;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 402
    Top = 708
  end
  object CreaGrafica: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'HC;N;8;0'
      'C_TRACT;N;8;0'
      'D_INGRES;D;8;0'
      'C_LLIT;C;3;0'
      'C_PLANTA;C;10;0'
      'C_ITEM;N;8;0'
      'VALOR;C;15;0'
      'D_VALOR;D;8;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 466
    Top = 708
  end
  object CreaEscCap: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'CLAU;N;8;0'
      'C_ESCALA;N;8;0'
      'C_HIST;N;5;0'
      'C_TRACT;N;10;0'
      'C_ENTRADA;N;5;0'
      'DATA;D;8;0'
      'ANULAT;C;1;0'
      'D_ANULAT;D;8;0'
      'C_USUARI;C;5;0'
      'TIPUS;C;1;0'
      'DATA_ADM;D;8;0'
      'TOTAL;C;15;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 535
    Top = 708
  end
  object CreaHistoria: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'C_HIST;N;5;0'
      'C_TRACT;N;8;0'
      'PRESTA;C;4;0'
      'DATA;D;8;0'
      'USER;C;5;0'
      'ANULAT;C;1;0'
      'TIPUS;N;3;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 592
    Top = 710
  end
  object CreaREC: TCreateHalcyonDataSet
    AutoOverwrite = False
    CreateFields.Strings = (
      'NH;N;8;0'
      'NOM;C;80;0'
      'SEXE;C;1;0'
      'EDAT;N;3;0'
      'C_ESTAT;N;3;0'
      'N_ESTAT;C;40;0'
      'ACTIU;C;1;0'
      'DATA;D;8;0'
      'DATAREG;D;8;0'
      'USER_R;C;5;0'
      'IDREG;N;3;0'
      'PRESTA;C;4;0'
      'COORD;C;5;0'
      'DATA_I;D;8;0'
      'DATA_A;D;8;0'
      'TRACT;N;8;0'
      'INFO;C;250;0')
    DBFTable = Dbf
    DBFType = DBaseIII
    Left = 28
    Top = 758
  end
end
