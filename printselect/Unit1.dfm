object Form1: TForm1
  Left = 585
  Top = 235
  Width = 815
  Height = 364
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    799
    325)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 0
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 16
    Top = 64
    Width = 128
    Height = 25
    Caption = 'Lista de impresoras'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 96
    Width = 128
    Height = 25
    Caption = 'Cambiar impresora'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 184
    Top = 32
    Width = 329
    Height = 289
    ItemHeight = 13
    TabOrder = 2
  end
  object Button3: TButton
    Left = 16
    Top = 136
    Width = 129
    Height = 25
    Caption = 'Impresora por defecto'
    TabOrder = 3
    OnClick = Button3Click
  end
  object ListBox2: TListBox
    Left = 528
    Top = 32
    Width = 265
    Height = 289
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 4
  end
  object Button4: TButton
    Left = 16
    Top = 176
    Width = 128
    Height = 25
    Caption = 'Prueba impresion multiple'
    TabOrder = 5
    OnClick = Button4Click
  end
end
