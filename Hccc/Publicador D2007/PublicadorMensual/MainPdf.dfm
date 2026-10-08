object wMainPdf: TwMainPdf
  Left = 934
  Top = 305
  Width = 380
  Height = 300
  Caption = 'Finalitzaci'#243' d'#39'informes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lFinalitzant: TLabel
    Left = 125
    Top = 30
    Width = 81
    Height = 13
    Caption = #218'ltima execuci'#243': '
  end
  object lArxivant: TLabel
    Left = 124
    Top = 143
    Width = 81
    Height = 13
    Caption = #218'ltima execuci'#243': '
  end
  object lVIDSigner: TLabel
    Left = 124
    Top = 197
    Width = 81
    Height = 13
    Caption = #218'ltima execuci'#243': '
  end
  object lGenerantCEX: TLabel
    Left = 125
    Top = 86
    Width = 81
    Height = 13
    Caption = #218'ltima execuci'#243': '
  end
  object bFinalitzaInf: TButton
    Left = 10
    Top = 16
    Width = 106
    Height = 41
    Caption = 'Finalitza Informes'
    TabOrder = 0
    OnClick = bFinalitzaInfClick
  end
  object bSortir: TButton
    Left = 266
    Top = 233
    Width = 90
    Height = 25
    Caption = 'Surt'
    TabOrder = 1
    OnClick = bSortirClick
  end
  object bVIDSigner: TButton
    Left = 11
    Top = 184
    Width = 105
    Height = 39
    Caption = 'Finalitza VIDSigner'
    TabOrder = 2
    OnClick = bVIDSignerClick
  end
  object bArxivaInf: TButton
    Left = 11
    Top = 130
    Width = 105
    Height = 39
    Caption = 'Arxiva Informes'
    TabOrder = 3
    OnClick = bArxivaInfClick
  end
  object bGeneraCEX: TButton
    Left = 10
    Top = 72
    Width = 106
    Height = 41
    Caption = 'Generar CEX'
    TabOrder = 4
    OnClick = bGeneraCEXClick
  end
  object TimerFinalitza: TJvThreadTimer
    Enabled = True
    Interval = 600000
    OnTimer = TimerFinalitzaTimer
    Left = 240
    Top = 16
  end
  object Timer23h: TJvThreadTimer
    Enabled = True
    Interval = 3600000
    OnTimer = Timer23hTimer
    Left = 240
    Top = 130
  end
  object qInfCEXGenerar: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select I.*'
      'from INFORMES I'
      'join INFORMES_TIPUS T on I.C_TIPUS = T.C_TIPUS '
      'where T.ORDRE = 5'
      'and I.C_ESTAT= 14')
    Left = 32
    Top = 304
  end
  object qPath_ELIMINAR: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select RUTA from DIRECTORIS where NOM='#39'ALTA_FI'#39)
    Left = 115
    Top = 358
  end
  object qInformes: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select I.C_TRACTAMENT, I.NOM_INFORME, N.C_HISTORIA, F.NOMCOMPLET' +
        ', I.Tipus, I.DATA_VALIDAT, I.NOM_DESTI, I.SIGNAT, I.METGE_VALIDA' +
        ', I.COMENTARI, i.id_informe, n.c_estat'
      'from INFORMESIMPRIMIR I'
      'join INFORMES N ON I.ID_INFORME=N.ID_INFORME'
      'join FILIACIO F on N.C_HISTORIA = F.NUM_HIST'
      'where I.tipus <>'#39'REV'#39)
    Left = 32
    Top = 246
  end
  object delInformesImprimir: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from INFORMESIMPRIMIR '
      'where C_TRACTAMENT = :c_tractament'
      'and data_validat = :data_validat')
    Left = 112
    Top = 246
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'c_tractament'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_validat'
        ParamType = ptUnknown
      end>
  end
  object updInforme: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE INFORMES'
      'SET C_ESTAT=:c_estat, ARXIU=:arxiu'
      'WHERE ID_INFORME = :ID_INFORME')
    Left = 32
    Top = 427
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'c_estat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'arxiu'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_INFORME'
        ParamType = ptUnknown
      end>
  end
  object qInformesReg: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select Max(LINIA) as Maxim '
      'from INFORMES_REG'
      'where ID_INFORME = :ID_INFORME')
    Left = 112
    Top = 426
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_INFORME'
        ParamType = ptUnknown
      end>
  end
  object insInformesReg: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO INFORMES_REG(ID_INFORME, LINIA, ACCIO, DATA, COMENTA' +
        'RI)'
      'VALUES(:ID_INFORME, :LINIA, :ACCIO, "NOW", :COMENTARI)')
    Left = 206
    Top = 427
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_INFORME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LINIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACCIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMENTARI'
        ParamType = ptUnknown
      end>
  end
  object qInsAvisos: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO AVISOS_CORREU (DATA_GENERAT, ID_AVIS, ASSUMPTE, COS)' +
        ' '
      'VALUES("NOW", 61, :assumpte, :cos)')
    Left = 298
    Top = 426
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'assumpte'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cos'
        ParamType = ptUnknown
      end>
  end
  object qInfArxivar: TIBQuery
    Database = wData.IBGuttmann
    Transaction = wData.IBTransGutt
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select I.ID_INFORME, I.ARXIU, I.C_HISTORIA, I.C_TIPUS, I.C_ESTAT' +
        ', D.RUTA   /*, IR.DATA as DATA_IMPRESSIO */'
      'from INFORMES I'
      'join INFORMES_TIPUS P on I.C_TIPUS = P.C_TIPUS'
      'join DIRECTORIS D on P.RUTA_INICI = D.NOM'
      
        'join TRACTAMENTS T on I.C_TRACTAMENT=T.C_TRACTAMENT and (T.C_CEN' +
        'TREFAC = '#39'04'#39' or T.C_CENTREFAC = '#39'05'#39')'
      
        '/*left outer join INFORMES_REG IR on I.ID_INFORME = IR.ID_INFORM' +
        'E and IR.ACCIO = 11     ----  no cal mirar-hoi pq els metges ja ' +
        'no ho imprimeixen */'
      'where I.C_TIPUS in ('#39'CEX'#39', '#39'CmA'#39') '
      'and I.C_ESTAT = 6'
      'union'
      
        'select I.ID_INFORME, I.ARXIU, I.C_HISTORIA, I.C_TIPUS, I.C_ESTAT' +
        ', D.RUTA   /*, IR.DATA as DATA_IMPRESSIO */'
      'from INFORMES I'
      'join INFORMES_TIPUS P on I.C_TIPUS = P.C_TIPUS'
      'join DIRECTORIS D on P.RUTA_INICI = D.NOM'
      
        'join TRACTAMENTS T on I.C_TRACTAMENT = T.C_TRACTAMENT and T.C_CE' +
        'NTREFAC <> '#39'50'#39
      
        'join DRETSPRESTA DP on T.C_PRESTACIO = DP.C_PRESTACIO and DP.C_D' +
        'RET = '#39'P246'#39
      
        '/*left outer join INFORMES_REG IR on I.ID_INFORME = IR.ID_INFORM' +
        'E and IR.ACCIO = 11     ----  no cal mirar-hoi pq els metges ja ' +
        'no ho imprimeixen */'
      'where I.C_TIPUS = '#39'CEB'#39' '
      'and I.C_ESTAT between 3 and 6'
      'order by 1')
    Left = 32
    Top = 358
  end
end
