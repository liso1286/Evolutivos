object wDialegIntroduccioPreusOrtesis: TwDialegIntroduccioPreusOrtesis
  Left = 287
  Top = 140
  BorderStyle = bsDialog
  Caption = 'Introducci'#243' preus Ortesi'
  ClientHeight = 169
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 64
    Width = 329
    Height = 97
    Caption = ' Venda '
    TabOrder = 1
    object edIvaVenta: THYTextEdit
      Left = 8
      Top = 64
      Width = 105
      Height = 19
      Projecto = wData.Projecte
      Tipo = teFloat
      CustDataType = dtFloat
      Eti = 'IVA'
      EtiSepara = 60
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      OnKeyPress = capturakeypress
      TabOrder = 0
      TabStop = True
      AutoSelect = False
    end
    object edPreuVenta: THYTextEdit
      Left = 136
      Top = 64
      Width = 179
      Height = 19
      Projecto = wData.Projecte
      Tipo = teFloat
      CustDataType = dtFloat
      Eti = 'Preu sense IVA'
      EtiSepara = 90
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      OnKeyPress = capturakeypress
      TabOrder = 1
      TabStop = True
      AutoSelect = False
    end
    object edPreuMaxim: THYTextEdit
      Left = 136
      Top = 19
      Width = 179
      Height = 19
      Projecto = wData.Projecte
      Tipo = teFloat
      CustDataType = dtFloat
      Eti = 'Preu m'#224'xim'
      EtiSepara = 90
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Ctl3D = False
      ParentCtl3D = False
      OnKeyPress = capturakeypress
      TabOrder = 2
      TabStop = True
      AutoSelect = False
      ReadOnly = True
    end
    object Button1: TButton
      Left = 8
      Top = 19
      Width = 105
      Height = 19
      Caption = 'C'#224'lcul autom'#224'tic'
      TabOrder = 3
      OnClick = Button1Click
    end
    object edAportacioServei: THYTextEdit
      Left = 136
      Top = 41
      Width = 179
      Height = 19
      Projecto = wData.Projecte
      Tipo = teFloat
      CustDataType = dtFloat
      Eti = 'Preu aportaci'#243
      EtiSepara = 90
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      Ctl3D = False
      ParentCtl3D = False
      OnKeyPress = capturakeypress
      TabOrder = 4
      TabStop = True
      AutoSelect = False
      ReadOnly = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 329
    Height = 52
    Caption = ' Compra '
    TabOrder = 0
    object edIvaCompra: THYTextEdit
      Left = 8
      Top = 22
      Width = 105
      Height = 19
      Projecto = wData.Projecte
      Tipo = teFloat
      CustDataType = dtFloat
      Eti = 'IVA'
      EtiSepara = 60
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      OnKeyPress = capturakeypress
      TabOrder = 0
      TabStop = True
      AutoSelect = False
    end
    object edPreuCompra: THYTextEdit
      Left = 136
      Top = 22
      Width = 179
      Height = 19
      Projecto = wData.Projecte
      Tipo = teFloat
      CustDataType = dtFloat
      Eti = 'Preu sense IVA'
      EtiSepara = 90
      EtiOrienta = eoIzquierda
      EtiAlign = taLeftJustify
      OnKeyPress = capturakeypress
      TabOrder = 1
      TabStop = True
      AutoSelect = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 344
    Top = 14
    Width = 97
    Height = 30
    Caption = '&Valida preus'
    ModalResult = 1
    TabOrder = 2
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 344
    Top = 49
    Width = 97
    Height = 30
    Caption = 'Cancel'#183'la'
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
end
