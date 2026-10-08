object wPrintFullFiliacio: TwPrintFullFiliacio
  Left = 289
  Top = 162
  Width = 819
  Height = 801
  Caption = 'wPrintFullFiliacio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 811
    Height = 770
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object qrFullFiliacio: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = qHistorico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 2
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100
          2970
          100
          2100
          100
          100
          0)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = First
        PrintIfEmpty = False
        SnapToGrid = True
        Units = Pixels
        Zoom = 100
        object QRBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 512
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            1354.66666666667
            1899.70833333333)
          BandType = rbTitle
          object TITOL: TQRLabel
            Left = 216
            Top = 33
            Width = 441
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.9166666666667
              571.5
              87.3125
              1166.8125)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Full de Filiaci'#243
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object lCognoms: TQRLabel
            Left = 74
            Top = 128
            Width = 60
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              338.666666666667
              158.75)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cognoms:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lAdreca: TQRLabel
            Left = 74
            Top = 191
            Width = 46
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.9166666666667
              195.791666666667
              505.354166666667
              121.708333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Adre'#231'a:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lPoblacio: TQRLabel
            Left = 74
            Top = 211
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              558.270833333333
              148.166666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Poblaci'#243':'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lCodi: TQRLabel
            Left = 74
            Top = 231
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              611.1875
              82.0208333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Codi:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lHistoria: TQRLabel
            Left = 497
            Top = 128
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1314.97916666667
              338.666666666667
              129.645833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Hist'#242'ria:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lTelefon: TQRLabel
            Left = 495
            Top = 231
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1309.6875
              611.1875
              127)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#232'fon:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lFinancament: TQRLabel
            Left = 74
            Top = 386
            Width = 80
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              1021.29166666667
              211.666666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Finan'#231'ament:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lNSSocial: TQRLabel
            Left = 74
            Top = 406
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              1074.20833333333
              177.270833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'N.S.Social:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lTitular: TQRLabel
            Left = 498
            Top = 382
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1317.625
              1010.70833333333
              108.479166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Titular:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lDiagnostic: TQRLabel
            Left = 74
            Top = 443
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              1172.10416666667
              174.625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Diagn'#242'stic:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lMoviments: TQRLabel
            Left = 68
            Top = 490
            Width = 112
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              179.916666666667
              1296.45833333333
              296.333333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '--- MOVIMENTS ---'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape1: TQRShape
            Left = 68
            Top = 109
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              288.395833333333
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape2: TQRShape
            Left = 68
            Top = 174
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              460.375
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape3: TQRShape
            Left = 68
            Top = 294
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              777.875
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape4: TQRShape
            Left = 68
            Top = 425
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              1124.47916666667
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape5: TQRShape
            Left = 68
            Top = 467
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              1235.60416666667
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape6: TQRShape
            Left = 68
            Top = 370
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              978.958333333333
              1611.3125)
            Shape = qrsHorLine
          end
          object lDatanaix: TQRLabel
            Left = 74
            Top = 305
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              806.979166666667
              171.979166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Data Naix.:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lLloc: TQRLabel
            Left = 74
            Top = 325
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              859.895833333333
              164.041666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Lloc Naix.:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lDNI: TQRLabel
            Left = 74
            Top = 345
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              912.8125
              103.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'D.N.I.:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel6: TQRLabel
            Left = 498
            Top = 345
            Width = 64
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1317.625
              912.8125
              169.333333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Estat Civil:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lSexe: TQRLabel
            Left = 498
            Top = 305
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1317.625
              806.979166666667
              89.9583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexe:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lTSI: TQRLabel
            Left = 498
            Top = 402
            Width = 26
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1317.625
              1063.625
              68.7916666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TSI:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object Exitus: TQRLabel
            Left = 298
            Top = 305
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              788.458333333333
              806.979166666667
              100.541666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Exitus'
            Color = clWhite
            OnPrint = ExitusPrint
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData1: TQRSysData
            Left = 546
            Top = 0
            Width = 131
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1444.625
              0
              346.604166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Text = 'Dia i hora: '
            Transparent = False
            FontSize = 10
          end
          object QRShape7: TQRShape
            Left = 68
            Top = 251
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              664.104166666667
              1611.3125)
            Shape = qrsHorLine
          end
          object QRLabel1: TQRLabel
            Left = 74
            Top = 261
            Width = 112
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              690.5625
              296.333333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#232'fons Familiars:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 358
            Top = 261
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              947.208333333333
              690.5625
              187.854166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Comentaris:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel2: TQRLabel
            Left = 178
            Top = 231
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              470.958333333333
              611.1875
              153.458333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object Logo: TQRImage
            Left = 72
            Top = 24
            Width = 140
            Height = 36
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              95.25
              190.5
              63.5
              370.416666666667)
            Picture.Data = {
              0A544A504547496D616765C6350000FFD8FFE000104A46494600010101006000
              600000FFE1003A4578696600004D4D002A000000080003511000010000000101
              000000511100040000000100000B12511200040000000100000B1200000000FF
              DB00430002010102010102020202020202020305030303030306040403050706
              07070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E
              0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0CFFC0001108007101D803012200021101031101FFC4001F
              0000010501010101010100000000000000000102030405060708090A0BFFC400
              B5100002010303020403050504040000017D0102030004110512213141061351
              6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
              2728292A3435363738393A434445464748494A535455565758595A6364656667
              68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
              A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
              E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
              010101010000000000000102030405060708090A0BFFC400B511000201020404
              0304070504040001027700010203110405213106124151076171132232810814
              4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
              3738393A434445464748494A535455565758595A636465666768696A73747576
              7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
              B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
              E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800
              A2BCAFF6C4FDB53E1AFEC15F052FBC7FF14BC4F67E19F0FD99F2E332664B9D42
              72095B7B78572F34AD838550700163B555987F383FF0548FF83AE3E337ED79A8
              6A5E19F8392DF7C1BF877216896E2CE6C788F548FA6E96E94FFA303D425BED65
              E4195C53B5C0FE853F6C1FF82A57ECFBFB05C457E2B7C53F0BF85F50D81D74A1
              2B5EEAAEA7A30B3B75927DA7FBDB36FBD7E757C73FF83D2FE03783279ADFC05F
              0DFE2478E2685B6ACF7A6DB45B3987AA3179A5C63FBD129F6EF5FCD56ABAB5D6
              BDA9DC5EDF5CDC5E5E5DC8D2CF3CF2192599D8E59998E4B313C9279355E9F281
              FD2B7FC1397FE0EC1D53FE0A09FB79F807E10AFC0ED3FC21A6F8DEEE6B53A81F
              15BEA13D9F976B34FBB6FD92257C98B18E301BBE39AFFF0007317FC1C09E2CFD
              89FC6717C07F825A845A4F8F26B14BDF14788BCA5966D0A29943416D6C1B2AB7
              0F1912348CA7623C7B3E66DD1FE46FFC1B87FF0029B0F80BFF00615BDFFD36DD
              D43FF0715787B58F0E7FC1687E3C47ADC77097175ACC1776ED2927CCB592CEDD
              A02A4F55F28A018E9B71DA8B6A07CF7A97EDC5F1AB58F14C9AE5D7C5EF8A171A
              D4B37DA1EFE4F14DF35CB49D9FCC32EEDC3039CE78AFDA6FF836DFFE0E2BF1E7
              C55F8EDA2FECFBF1EF5E9BC59FF093036DE12F15DF107508AF154B2D95E49C19
              D650AC2395B328976A31712031FE03D7BAFF00C12FBC37AB78B7FE0A49F00AC7
              438E7935493E2168524061255E329A840E64C8E5422A962DD8293DAA80FEDEE8
              A28ACC028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A002BC17FE0A3FFF000511F00FFC131FF661D5FE25F8F2EB7C76FF00E8BA
              46930C816EF5FBE65262B5841CF2704B3E0844566390307DB3C4DE26D3FC17E1
              BD4358D5EFAD74DD2749B692F6F6F2E6411C369046A5E491D8F0AAAA0B127800
              135FC74FFC1713FE0AB3AC7FC1567F6C9D47C4714D736FF0E7C2AD2E95E0CD31
              B72AC3661FE6BA743D27B82A1DF23214471E488C1A680F31FF00828BFF00C149
              7E277FC14EBE3EDDF8EBE246ACD3042F168FA35BB15D3B40B52C4882DE3FCB74
              8D977201627031E0345759F03BE06F8BBF695F8B3A1F817C07A06A1E27F16789
              2E45A69DA6D920696E2439279242AAAA82CCEC42A2AB3310A091607275EA5FB3
              9FEC41F18BF6BCBC787E18FC31F1BF8E9617D934FA3E9135CDB5B1F496655F2E
              3FF81B0AFE85BFE0945FF0696FC33FD9CF46D37C5DFB4347A7FC52F1EB059C68
              0199BC39A3B7508C9C1BD71D0994795C90236C073FAF5E1AF0CE9BE0CD06D74A
              D1F4FB1D274BB18C456D676702C16F6E83A2A2280AAA3D0002A7980FE70FFE08
              73FF000404FDAB7F662FF8292FC27F8A9F103E19C7E16F07F85EFEE6E2FE7B8F
              1069B35C246F657112910C33BC9F7E4518201E738C735FA51FF05EDFF8202695
              FF000566D0F4DF19784354D3FC27F193C3569F61B5BDBE0DFD9FAE5982CEB6B7
              45159D0A3BB1499558A8775656054A7E91514AE07F20BA9FFC1B1DFB6E69DE2F
              6D1D7E0ACD747CCD89790F88F49366EBCFCFE61B9002E0670D86ED8078AFD8EF
              F82047FC1B6DFF000EE0F1B47F177E2EEA3A3F88BE2B25B3C1A369FA7169AC3C
              2EB2A6C96412B0532DD3233C65828445670A5F76E1FAD9451700A8750D46DF48
              D3E7BBBB9E1B5B5B58DA59A695C2471228CB3331E02800924F000A9ABE23FF00
              838EBE246AFF000ABFE08A5F1E754D0E77B7BEB8D2ECB49775CE7ECF7BA9DA59
              5C2F1FDE82E255FC6901F9B1FF00052EFF0083C6B5DD17E266ABE13FD9A7C37E
              1F9B42D2E76B56F18788617BA6D50A921A4B4B657458E2DC32AF2972EA726342
              6BC7BF658FF83CBFE3C7813C7B6C3E2C784FC17E3EF09CD30FB58D32CDB4AD52
              D93A130387685B1F7B6C91FCC4637A0391F8E7455D901FDD5FEC9DFB557827F6
              D7FD9FBC37F133E1EEACBAC7857C516DF68B694AED9A0604AC904A993B258DC3
              23AE4E194F24609F45AFC3AFF8323BE28EB9AE7C00F8EDE0EBA92E24F0FF0087
              35DD2F54D3D5CE638E7BC82E52E02F71C59C048E996CF526BF716A0028A28A00
              28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
              28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
              28A28A0028A28A0028A28A0028A28A0028A28A00FC91FF0083BC7FE0A0571FB3
              4FEC2FA5FC24F0FDE1B7F127C6AB992D6F9A36C49068D6DB1AE471C8F3A47862
              E7868CCE2BF97DAFD1EFF83A9FF69C9BF686FF0082BF78CB498EE1A6D1FE18E9
              F67E14B150F940E91FDA2E4E3A06173713213D488973D001F9C356809F4CD32E
              75AD4ADECECEDE7BBBCBB95618208633249348C4054551CB31240007249AFEB6
              3FE0DF9FF8226E87FF0004BAFD9F2D7C49E28D36CEFBE3878D2CD25D7B506512
              368703ED75D3206E42AA103CD65FF5920EAC891E3F1ABFE0D33FD81ED7F6B6FF
              00828BC9E3DD7ACC5DF85FE07DA45AF6C65DD1CBAB4AEC9A7A30FF0064C77170
              0FF7ED507209AFEA9A948028A28A900A28A2800A28A2800AF3CFDACFF66AF0FF
              00ED8DFB34F8DBE17F8A9643A0F8E3499B4BB9923FF596C5D7E49D33C7991481
              245CF1B9067238AF43A2803F899FF828AFFC12EBE2EFFC1323E2FDF7867E2378
              72F23D2FED0D1E93E24B581DF48D762E76C904D8DBB8AF2626C489D194753E53
              F00FF674F1DFED4BF126C7C1FF000EFC27AE78CBC49A938486C74BB569E41938
              DEE47CB1C63AB48E551464B100135FDD9EAFA3D9F8834C9ACB50B5B6BEB3B85D
              92C17110922957D19581047B1AA1E0DF87DA07C3AD3DAD3C3FA1E8FA15AB9DCD
              0E9D671DAC6C79E4AA003B9FCCD57301F22FFC1093FE0960DFF04A0FD88EDFC1
              FAC5D59EA5E3CF145F36BDE29BBB5F9A14B978D234B5898805A286345504FDE7
              32B8003E07DA54515201451450014515F11FFC1733FE0B11A27FC1243F6644D4
              AD61B3D6BE27F8C3CDB3F08E8D3B7EE8C8A17CDBCB80086FB3C219490BCBBB22
              02A199D003DE3F6CDFF82827C1DFF827DF80A3F117C5CF1D68FE11B3B9DC2CED
              E52D35F6A2CA39582DA30D2CB8E3255485C8DC4039AFCADF8E7FF07B37C2FF00
              0B6B335BFC3BF82FE34F195AC4DB56EB5AD62DF4159B9E595638EE9B6F71B802
              78C81DBF003F692FDA6BC79FB5EFC60D5BC7BF123C4DAA78B3C55AD485EE2F6F
              65DC51724AC51A8F962893242468151070A00AFA77F628FF00837AFF006A8FDB
              B7C2567E25F0BFC3EFF847FC27A82092D35AF145DAE956D768C32B2451B833CB
              1B0E44891321ECD55CA07E8D786BFE0F88B85BC65D63F66D85ADDA4F95ECFC74
              55E24FF75AC0876F7DCA2BEC6FD8EFFE0EC6FD95FF0069DD6ADF47F135FF0088
              3E0FEB370CB1A1F155BA0D325763D05E42EE91A8EEF388547AD7E52F8FBFE0CD
              FF00DAD3C1DA0CB79A76AFF077C57711A165B1D2BC41771DC4A4630A0DD5A411
              E4F6CB81C72457E75FED47FB1CFC51FD8A3E21B7857E2B781FC41E07D708678A
              1D46DF6C7788A706482652629E3078DF1332E7BD16407F73BA3EB367E22D26DA
              FF004FBAB6BEB1BC8966B7B8B7944B0CF1B0CABA3292194820820E08AB35FCBD
              FF00C1ACDFF050AFDA2BC0FF00B5E681F05FC1FA7EADF123E15EB721975BD16E
              A73F67F08DAEEFDE6A704CF916CA8CD968BEE4E5B605F35D187F50953B005145
              14005145140057E687FC151BFE0E5CF03FFC12EBF6AEBCF853AF7C33F1678A75
              0B3D36D75237FA7DFDBC30B2CEA582ED719C8C735FA5F5FCA57FC1DD3FF298DD
              6BFEC55D23FF00453D3407EF37FC11DFFE0B39E19FF82C37873C79A9786FC17A
              F783A3F01DCD9DB4E9A9DD4539BA372B33295F2FA6DF24E73EA2BECFAFC26FF8
              31FF00FE4977ED11FF00615D0FFF0044DF57EECD2607E75FFC15C7FE0E25F05F
              FC123FF690D13E1BF88BE1CF8A3C5D7DAD786A0F12A5E69B7D0411471CB75756
              E222B273B81B566CF4C38F435D57FC11DFFE0BA7E13FF82C37893C79A6F86FC0
              9E22F0749E04B6B3B99DF53BC8671742E5A6550BE5F4DBE49CE7D457E39FFC1E
              99FF002949F00FFD92BD3FFF004EFAC57AF7FC18FF00FF00254BF688FF00B056
              87FF00A3AF6AADA01FD0C5145152014514500145145001451450014514500145
              145001451450014514500145145001451450014514500145145007F0DFFF0005
              0AF1FCFF00153F6F6F8D9E24B8690CBAEF8EF5BBE21CE4A092FE6654EA701410
              A06480001DABC7EBD0BF6B7B792D3F6ACF89D0CD1BC52C5E2CD551D1D76B230B
              C941047623D2BCF6B403FA77FF008332FE0D41E0BFF826B78BFC60D101A878DB
              C6F72BE60C7CD6B696D6F144BC73C4AD7279C7DEE9DCFEBCD7E5DFFC1A11ABDB
              EA5FF047BB18609049269FE30D5ADEE14023CB7261902FFDF1221E3FBDEB9AFD
              44A87B805145148028A28A002BC77FE0A23F1235BF839FF04FEF8E9E2EF0CDFC
              9A5788FC2BF0F75FD634ABD8D15DACEEEDF4DB89A19406054959115B0C0838E4
              115EC55E03FF00055EFF00945B7ED29FF64AFC51FF00A68BAA00FE5A7FE223CF
              DB63FE8BD7883FF055A6FF00F2351FF111E7EDB1FF0045EBC41FF82AD37FF91A
              BE23A2B403EDCFF888F3F6D8FF00A2F5E20FFC1569BFFC8D47FC4479FB6C7FD1
              7AF107FE0AB4DFFE46AF88E8A00FD57FF825AFFC178FF6B6F8F1FF00051BF825
              E0BF16FC67D6B5AF0C78A3C63A769BAA5849A6D8225DDBCB3AABC659205600A9
              232A41F7AFEA66BF8ACFF822CFFCA5AFF673FF00B1FF0049FF00D294AFED4EA6
              4014514548057F1AFF00F05EFF00DB66FBF6E8FF0082A2FC4CF10B5E4971E1DF
              0BEA327853C3B1EF2D143616323C21E3193859A5134FF59CF03A0FEC8EFA792D
              ACA692285EE248D199224215A52064282C4004F4C9207BD7F0337B7B36A57B35
              C5C48F35C5C3B49248E72CEC4E4927D4939AA881FB2DFF0006A6FF00C117BC3F
              FB5CF8A352F8FDF14F47875AF04F82F511A7F86B45BB8B75AEB1A9C612492E26
              53C490C01900420ABC8E73C44CADFD2A2208D02A80AAA30001C015F157FC1BAB
              E10D3BC15FF045DF80F6FA6AA08AEF469F5099860979E7BDB89A5248EA43BB0E
              7A00076AFB5A9300AF29FDB2BF629F86FF00B7CFC0ED4BE1EFC50F0DDAF88341
              D414B44ECA16EB4C9F690B736D2E37433264E197A82558329653F1CFEDE5FF00
              073CFC03FF008278FED5FE2AF83BE34F08FC5ED53C4DE0FF00B27DB2E744D2B4
              E9AC65FB4D9C1791F96F35F4521C477080EE8D70C180C8C13E43FF0011A67ECB
              7FF420FC7EFF00C12691FF00CB3A2CC0FBA7FE098DFF0004B7F867FF0004AAF8
              0A3C17F0FECE5BABED41C5CEBBE21BE553A8EBD7033B5A565002C680958E25F9
              50127966776FA46BF217FE234CFD96FF00E841F8FDFF00824D23FF009675F7C7
              FC1357FE0A47E07FF82A6FECEF3FC4CF87DA578B347D06DF589F45683C436D6F
              6F766685227660B04D326C2265C1DF9C83C0E32B503F9B7FDB37FE0E06FDB13E
              1AFED83F15FC39A1FC6ED734FD17C3FE31D5F4DD3ED534CD3996DADE1BD9A38A
              305ADCB10A8AA32493C724D7F40BFF000406FDA3FC6DFB5BFF00C124FE13FC42
              F88BAF5C789FC65E20FED8FED0D4E78A28A4B9F2759BEB78B2B1AAA0DB1451AF
              0A385E72726BF932FF0082837FC9FBFC6FFF00B1FF005EFF00D38CF5FD4B7FC1
              AF3FF282DF81BFF71EFF00D48352AA7B01F597ED9DE36D53E1A7EC7BF15FC47A
              1DE3E9FAD787FC1DABEA5A7DD22AB35B5C43653491480302A4ABAA9C10471C83
              5FC9AFFC4479FB6C7FD17AF107FE0AB4DFFE46AFEAD7FE0A11FF00260FF1C3FE
              C40D7BFF004DD3D7F0DD4440FEB8BFE0B2FF00B627C4AFD9AFFE085B1FC54F03
              F8AAEFC3FF00100E9FE1B98EB11410C92EFB996D5673B24468FE712383F2F1BB
              8C57F2C5FB51FED67F113F6D3F8AF378E3E28789AEBC5BE2AB8B68ACE4D42E20
              861768A20446BB62445E013DB35FD97693FB2F780FF6C6FF00827E7813C03F12
              BC3B6FE2AF08EA9E1AD166BAD3A79A5852678A08258C968995C6D7553C30E95F
              CC17FC1C8DFB267C3BFD8AFF00E0A6DAA781FE17F866D7C25E15B7F0F69B791E
              9F6F3CD322CB2C6C646DD2BBB7240EF8A2207CFDFB1DFF00C14BFE397EC03A6E
              BD67F07FE20EA3E09B7F134B0CDA9A5B5A5ACE2EDE10E2327CE89F1B448FF771
              F7B9CD7F4D9FB577ED8BF12BC01FF06D6697F1B347F155DD8FC52B8F85BE16D7
              A4D7D6085A66BDBB4D38DC4DB190C597334B91B30379C01C63F303FE0D43FF00
              8267FC0DFDBFFC01F1AAF3E307C3FD3FC6D71E19D4349874C7B9BCBA83EC8934
              7766403C99501DC634FBD9FBBC62BFA02F18FEC75F0D7C7FFB2C43F04F58F0AD
              ADF7C2DB7D22CF418F4069E65856CAD0442DE1F315C4B8410C583BF71D8324F3
              91EE07F15BFB5CFEDADF147F6EFF0089163E2EF8B5E2EBCF19F88F4DD363D1ED
              AF6E6DE081A2B449659922021445C092795B2467E73CE318D6FD8EFF00E0A19F
              197F601D4B5EBCF83FE39BFF0004DCF89A2861D4DEDAD6DA7FB5A425CC60F9D1
              B81B4C8FF771F7B9AFAFFF00E0E93FD8A3E177EC1FFF000501F07F843E12F846
              CFC19E1BD4BE1ED96B173656D713CEB2DDBEA5A9C2F29699DDB2638225C038F9
              0719CE7D2BFE0D43FF0082797C1AFDBFFE207C6AB3F8C1E06B1F1B5B78674FD2
              66D312E6EAE60168F349762423C99133B8469F7B3F778C557403F4FF00C77FB7
              4FC58D27FE0D7783E3B5BF8CAF63F8B2DE0EB1D48F8885B406637126A50C2F27
              97E5F95931B32E36639E99AFC46F86BFF0725FED81A57C45D02EBC45F1C3C497
              DE1FB6D4ADE5D4EDA2D274DDF716AB2A99517F70BCB20603E61D7A8EB5FBE7FF
              0005D0F829E17FD9C7FE0DF8F8BDE07F04E910E83E15F0D6836367A669F148F2
              25A44354B5214348CCC7927A9279AFE456A6207E997FC147BFE0E90FDA2BF6C3
              F1BEA567F0EFC47A9FC17F876B2B25858787E7FB3EB171167E596E6F97F7A252
              3276C0D1A2E71872BBCFC91E00FF0082A7FED2DF0C3C530EB5A2FC7CF8BD6D7F
              0B6ECCBE2BBDB98A5F692296468E45EFB5D5867B57F44BFF000492FF008365BE
              07FECE7FB34787754F8CDE03D27E247C55F1058C57DAC8D7E137167A23CA818D
              8C36C4F95FBACED695959D9C3105576A2FE76FFC1D4BFF000461F877FB052F81
              FE2E7C20D08F85BC27E30D424D075BD16191DEC6C6FF00CA69EDE483792C8258
              E3B8DD183B54C00A81B88A3403EA1FF82727FC1DD9E19BFF00D8D7C6577FB43C
              4ADF153E1FD9C72E9E9A4C0907FC27E1DC468228C011C170AE54CA0610213222
              E15A35FCC0FDBA7FE0E37FDA93F6D6F1ADF4F6FF0010B5CF85FE1391DD6CFC3D
              E0EBE934C8E0849FBB35CC4567B862B80C5DB6139DA88095AF8A7E1C7C3FD5BE
              2CFC43D07C2BA05A35FEBBE26D46DF4AD3AD9485371733CAB145182781B9DD46
              4F1CD7F595FB0CFF00C1B47FB30FECB5F0374BD1BC5DF0EFC3BF14BC69359A0D
              775EF1044D78B737040327D9E173E5C112B6426D50FB40DCCCD9346880FE6B7E
              09FF00C1613F6A2FD9F7C5906B1E1AF8F1F13D6E21916436FA96BD3EA963311F
              F3D2DAE9A485FD3E643C57F4C7FF000406FF0082D05BFF00C15C7F67AD54788A
              CF4FD0FE2B780DE1B7F1158D9E56DAFA29437937D02B12551CA3AB265B63A75D
              AE99FC46FF00839E7FE091DE0CFF008265FED23E0DD7BE18D9CFA4FC3FF8A569
              7735BE90F3B4E9A45F5A3442E2389DC97F2596E20755724826400ED015763FE0
              CF3F1EEA5E16FF0082B54DA4DACCCB63E26F05EA7697D113F2C8B1BDBDC2363A
              6E0F10C1EA0330E8C687B01FD4378FBC7BA2FC2CF046ADE24F11EA965A2E81A0
              DA4B7FA8DFDDCA2282CE08D4BBC8EC780AAA0926BF9B1FF82ABFFC1DA9F14FE3
              AF8DB55F0B7ECED7727C36F87D6B2BDBC5AFFD995B5ED714123CD0D2022D236C
              02AA8A25039671928BF5E7FC1E6DFB6DEA5F0ABF664F00FC13D0EF1ED9BE27DE
              CDAAEBE626C33E9F62D118A06E7EE4B7122BF4E4DA6338C83F863FF04D2FD80B
              C51FF0531FDB07C31F09FC2D347A7C9AB17BAD4F549636921D1EC211BA7B9703
              AE06151720349246B95DD9025D40A93FFC14CFF68FBAF117F6BC9F1FBE3536A9
              BC49F6A3E36D4BCD0C0607CDE767800003B018E95F777EC0FF00F0762FC76F80
              9A26A5E17F8B7A85CFC4EF0FDF69F3DB586B2F1C49AFE8370D130866597012E9
              15C82C9382E7A890636B7ED7FECE9FF06E4FEC83FB3CFC3BB5D0CFC21D07C6B7
              CB008AF359F1486D4EF6F9F1F348779F2E227D214403B0CE49FCFDFF0082FBFF
              00C1B1FF000EBE1DFECE1E23F8D3FB3AE8F75E17BFF05DB49AA7887C291DCC97
              5637D608374F736DE6B33C32429BA468C318D911B6AA3280E6807E68FF00C447
              9FB6C7FD17AF107FE0AB4DFF00E46AFEB2BF631F1B6A9F12FF0063DF851E23D7
              2F1F50D6BC41E0ED2352D42E9D555AE6E26B286496421405059D98E00039E00A
              FE166BFB91FF00827BFF00C983FC0FFF00B10341FF00D37414480FE58FE21FFC
              1C55FB68E8FE3FD72CEDBE3B6BD15BDAEA1710C4834AD34844591801CDB76005
              7B3FC71FF83B4BF682F13FECB5E09F00F81EFCF87BC5563A4A43E2BF1D5E5B5B
              CFAB6B37649DFF00668C27916D1ED3B7704690E0153111CFE617C56FF92A3E24
              FF00B0ADD7FE8E6AFD9FFF0083657FE0DFEF007ED85F0727F8F7F1C74797C49E
              1BBBD425B1F097875E7786CEF85BB18E7BDB8F2C869104C1A248F705CC12970E
              19407A01F9672FFC14EFF6929BC5275B6F8FFF001A0EAC64F37ED5FF0009AEA5
              E66EC63AF9DD31C63A638C638AFD6CFF0082087FC1CF7E3AF10FC71F0E7C18FD
              A3B5A87C4BA578AAE63D3341F195CA2437DA75DB9090C178C802CD0C8DB544CC
              03A3365D9D4929F477FC17EBFE0801F01E7FF827FF008EBE25FC29F87BA1FC3B
              F1D7C33D35F5F56D06136B69A95941F3DD433C0BFBB38804922B850E1A3505B6
              9615FCCBDA5DCB61751CF049243342E248E48D8AB46C0E410472083CE451B81F
              DDDFED13E24BEF077ECFDE3AD634DB86B5D4B4AF0F5FDE5A4EA0130CB1DB48E8
              C01041C3007904715FC8E7FC4479FB6C7FD17AF107FE0AB4DFFE46AFEAABC6DE
              2DBAF1F7FC13A757D76FCAB5F6B5F0E26BFB82A300C92E98CED8FF008131AFE1
              E69440FD5BFDB53FE0EC8F8F5F1ABE19786FC1BF0BEFA7F8756B61A259D9EBBE
              23F2A1935FD7EF56DD16E660E018ED236983B2884093073BC03B07C33A57FC15
              0BF694D17C5235AB7FDA03E3426A9BFCC370DE33D45D9CF7DDBA62181EE18104
              718AFD8BFF00836F3FE0DDCF863F18BF660D2FE3C7C78F0E278CAE7C64CF3786
              3C3B7B23A58595923B462EA74461E749332B1547CA2C7B5B0CCFF274DFF07307
              FC108FE0AFC2DFD86758F8DFF087C15A6FC3EF117802E6D5B56B2D194C361AB5
              84F711DB366DF3B12589E5470F185CAF981837C854D006FF00C1BC3FF072B78A
              BF697F8BFA4FC08FDA0EFAD353F116BC3ECFE14F16AC096D25FDC2A922CAF150
              08CC8EA311CAAAA5980460CCE1A8AFC0BFD9EBC557DE05F8FBE07D734BB87B5D
              4F47F10585F5A4E870D0CD15CC6E8C0FA86507F0A28E503DE3FE0B7BF0525FD9
              FF00FE0AD9F1FF00C3B242F6F1CBE30BCD66DE36FE1835022FE203FD9F2EE571
              ED8EA6BE57AFDB4FF83D17F6359FC13FB4AFC3BF8E5A7DB1FEC9F1CE967C37AB
              3A27CB16A1664BC2EEDDDA5B7936A8F4B36F6AFC4BAA407F409FF064C7ED4F6A
              DE1FF8CBF04EF2E963BC8EE6DFC6DA55B9619991912CEF580EBF294B01C67EFF
              006C73FBD95FC45FFC131FF6ECD67FE09BDFB6D781FE2D6931CD7906817661D5
              EC236C7F69E9D3031DCC1C903718D8942DC2C8B1B7F0D7F69DF06BE30F86FF00
              681F853E1FF1B783F56B5D73C2FE29B18B52D36FADDB29710C8A194FAAB0E854
              E0AB0208041153203A6A28A2A4028A28A002B88FDA67E08DAFED31FB37FC41F8
              6F7D7D71A658FC40F0D6A3E1AB8BC8103CB691DE5AC96ED2A2B70594485803C1
              22BB7A2803F11BFE2090F85BFF0045BFC7FF00F829B4FF001AFC14FDB2FE15F8
              53E067ED59F107C17E07D76F7C4FE16F08EB973A3D86AD7488926A2B6EE6269B
              09F2ED67572B8EAA54D7F571FF0007067FC1526C7FE0999FB09EB13E97A8C70F
              C50F88114BA1F842D91879D0C8CB89EFF19C84B78DB706C11E6B42A786247F1F
              8EED2316625998E493DEAA202514515407D3BFF0459FF94B5FECE7FF0063FE93
              FF00A5295FDA9D7F159FF0459FF94B5FECE7FF0063FE93FF00A5295FDA9D4C80
              28A28A900AFE1B7F6FBFD9CAF3F645FDB5FE297C35BCB736EDE0FF0012DED85B
              8DBB44B6A2566B69547F76481A275F6715FDC957E1B7FC1DA9FF00046FD5BE32
              5843FB4E7C35D224D4758F0FE9EB65E3AD3AD222F71756508FDCEA4AABCB1813
              31CBD4889636E1627355103D0FFE0CFEFF008284E8FF00197F62ABAF80BAA6A1
              0C3E34F853737175A6DA4B28F36FF47BA9DA6F3501E5BC9B89A58D80CEC57839
              01801FB0D5FC21FECF5FB4478D3F652F8C5A1F8FFE1EF886FF00C2FE2EF0E4FF
              0068B0D42D08DD19C10CACAC0AC91B292AD1B8647562AC082457F413FB077FC1
              E61F0DFC6DE17B3D2BF683F08EB1E09F12431AA4DAE7876D8EA1A3DEB0037486
              0DDF68B724F445130E0FCE38143407CF7FF05E4FF820DFED5DFB67FF00C1577E
              2AFC4AF86BF0ABFE124F04F893FB23FB3B51FF00849B47B3FB4791A3D8DB4BFB
              AB8BB8E55DB34322FCC833B72320827E2EF1BFFC1B5BFB6A7C36F05EAFE22D7B
              E0E5BE97A1E836536A3A8DECFE34F0FAC5696D0A3492CAE7EDDC2AA2B313E82B
              F7EBC4DFF07517EC41A0E8725DDAFC59D4B5AB841916565E10D6167938CE019A
              D638FDB971D7D39AFC79FF0082E07FC1CD1E20FF008290782AEFE16FC2DD1B54
              F00FC27BA97FE2693DECC9FDAFE274560C91CCB19296F06402625772E546E7DB
              94A15C0FCA3AFEBC3FE0D84F82179F04BFE08C7F0B7FB42192DEFBC5CF7FE257
              8DD76E22B9BB93ECEC3D43DB240E0FFB7F89FE67FF00E0955FF04E6F157FC14F
              BF6C5F0DFC37F0FC1750E90D2ADEF8975748C98F44D311879D331C101D87C91A
              9FBD23A0E0648FED2BC07E07D2BE18F81B45F0D683650E9BA1F87AC60D334EB4
              88623B5B686358E28D47F7551540F614480FE20FFE0A0DFF0027EFF1BFFEC7FD
              7BFF004E33D7F525FF0006B9DDC573FF000432F82691C91C8F6EFAF472AAB026
              36FEDED45B0DE876B29C1ECC0F7AFE75FF00E0E00FD9AB52FD97FF00E0AEBF1B
              34BBEB5920B3F1478827F17699214DB1DCDB6A4E6EF747EAA92492C471C06858
              76AFB87FE0D98FF82FCFC38FD84FE116B1F04FE376A57DE1FF000CC9AABEAFE1
              BF10A59CB796D64D30513DA5C2421A4452EAB223AA30CC92EF2802927403F79F
              FE0A14E23FD813E38B310AABF0FF005E249E807F675C57F0DF5FD1A7FC176BFE
              0E5FF825E36FD89BC5FF000A7E04789A5F1EF8A7E2469F2E85A8EA3069F736B6
              1A369F3A94B9CB4F1A19659216689563042F98CCCC0A856FC09FD963F67BD6FF
              006B0FDA43C0FF000D7C3B04B71AC78DB5AB6D22DC22EEF2BCD902BCADE891A6
              E762780A8C4F00D3881FDB9FECA1FF0026B5F0D7FEC55D2FFF004922AFE627FE
              0EE9FF0094C6EB5FF62AE91FFA29EBFAA7F0CF876CFC1FE1BD3F49D3E15B7B0D
              2EDA3B4B68946047146A1114638E14015FCAC7FC1DD3FF00298DD6BFEC55D23F
              F453D2881F6E7FC18FFF00F24BBF688FFB0AE87FFA26FABF766BF09BFE0C7FFF
              00925DFB447FD85743FF00D137D5FBB34A5B81FCC4FF00C1E99FF2949F00FF00
              D92BD3FF00F4EFAC57AF7FC18FFF00F254BF688FFB05687FFA3AF6BC87FE0F4C
              FF0094A4F807FEC95E9FFF00A77D62BD7BFE0C7FFF0092A5FB447FD82B43FF00
              D1D7B4FA01FA77FF00071EFF00CA13FE3D7FD82ACBFF004E7695FC937ECBD650
              EA7FB4C7C3BB6B88D26B7B8F13E9B1CB1B8CABAB5D440823D0838AFEB67FE0E3
              DFF9427FC7AFFB05597FE9CED2BF92BFD943FE4E97E1AFFD8D5A5FFE95C54440
              FEEC6BF287FE0F20B78E6FF824BE92CF1A3343F1074C78CB2E4A37D96FD723D0
              E0919F426BF57ABF293FE0F1BFF944A69BFF0063FE97FF00A4D7D5207E0DFF00
              C10A742B6F117FC1607F679B7BA4F3228FC656974A3D248774B19FC1D14FE15F
              D9FD7F199FF040DFF94C6FECF9FF0063545FFA2A4AFECCEAA407E137FC1F01FF
              0024BBF677FF00B0AEB9FF00A26C6BE23FF8345BFE531BA2FF00D8ABABFF00E8
              A4AFB73FE0F80FF925DFB3BFFD8575CFFD13635F11FF00C1A2DFF298DD17FEC5
              5D5FFF0045251D00F62FF83D7E2997F6EEF84D232C9E43780B6A31076961A85D
              6E00F4C80573F51ED4EFF83282E7478FF6E7F8B51DC793FDBD278141B224FEF3
              ECC2FEDBED000CF4DE6D89E3B0E9DFEC2FF83C5FF60BD4FE3C7EC8FE11F8CDE1
              DB17BCD43E10DD4F06B71C485A43A4DE7961A638E488278A32463849E5624053
              5F813FF04F4FDBABC5FF00F04E1FDACBC2FF00163C17E54FA86832B4777A7CEE
              56DF57B2906C9ED65C670AE8786C128E11C0CA8A37407F70B5C7FED0775A6D8F
              C03F1C4DAC35BAE910F87EFDEF9A71988402DE43217FF676E73ED5F0F7ECE9FF
              000747FEC7BF1C3E1B5AEB1ADFC429BE1CEB5E487BED0BC41A65D7DA2D1F1F30
              59618DE199739DA51F711825549C57E7E7FC17CFFE0E7EF07FED07F01F5DF827
              FB3A5C6A1AA697E2EB77D3FC4DE2FB9B392CE396C5B892D2CE2942CA7CD5CA49
              2488A046595558BEF45603F08EBFB91FF827BFFC983FC0FF00FB10341FFD3741
              5FC3757F723FF04F7FF9307F81FF00F620683FFA6E829C80FE237E2B7FC951F1
              27FD856EBFF47357F619FF0006FD6956FA37FC11A7F67F86D6258637F0D79ECA
              BDDE4B89A476FC5D98FE35FC79FC56FF0092A3E24FFB0ADD7FE8E6AFEC53FE08
              1BFF002872FD9F3FEC558BFF0046C94480F57FF828D69D0EB1FF0004F5F8F167
              731896DEEBE1DF88219509237A369B7008E39E4135FC3AD7F723FF000508FF00
              9307F8E1FF006206BDFF00A6E9EBF86EA2207F6E5FF38B6FFBA57FFB88AFE236
              BFB72FF9C5B7FDD2BFFDC457F11B4440FEE0BFE09A1E1DB6F08FFC1397E01E99
              66A56DEC7E1D787E14C81B9B1A6DBFCCD8006E279270324935E5FF00F05F440F
              FF000470FDA08300DFF14B48791DC4B1915EBFFF0004F7FF009307F81FFF0062
              0683FF00A6E82BC87FE0BE5FF2872FDA0FFEC5597FF46C75207F1D7F0A7FE4A8
              F86FFEC2B6BFFA3968A3E14FFC951F0DFF00D856D7FF00472D15A01FD9FF00FC
              15ABF600D3BFE0A5FF00B08F8D7E165CBC36BAC5F42350F0EDEC9F76C354832F
              6EE4F38463BA273827CB9A4C738AFE2DFC7DE03D63E16F8EB59F0CF88B4FB9D2
              75EF0F5F4DA6EA56370BB66B3B985CC72C4E3FBCAEAC0FB8AFEF6ABF0E3FE0EA
              0FF8218DE7C63B2BFF00DA67E11E8CD75E25D2ED94F8E744B28374BAA5B46B85
              D4A245196962401651D5A350FD636DF3103F9D6AFD4AFF008379FF00E0E04BAF
              F82677893FE159FC4E9750D5BE086BD74658E58834F71E0FB97397B8853ABDB3
              B1CCB12F20FEF1016DE92FE5AD15407F7A5F0C7E287873E357C3FD27C57E11D7
              34BF12786F5DB75BAD3F53D3AE16E2D6F223D191D49079041F420838208ADEAF
              E2AFFE09DDFF00057AF8EBFF0004C2F13B5CFC31F1648BA0DD4BE75FF8635556
              BCD13503C659A02C3CB90E0032C2D1C840037638AFDAEFD92BFE0F45F847E3AD
              3EDECFE327C3BF15780756DA164BFD0D9359D32460065CA9F2E788139C204971
              FDE3D6A7940FDA6A2BE1BF0A7FC1C9BFB1378C2CA39ADFE3A68F6BE623318EFB
              45D4ECDD36A9620892D979E0818CEE3C2E4919E6BE2A7FC1D23FB157C33D2249
              EDFE295EF8B2F153CC4B1D0FC39A84B34A39180F2C31C20F1D1A407A7622A40F
              D09AF9C7FE0A53FF000549F853FF0004B6F829378B3E22EAEADA95D232E89E1C
              B3756D535E987F043193F2C60E37CAD8440464962AADF8EBFB70FF00C1E95AF7
              8A34BBBD1FF67CF86E3C31E70644F11F8BDE3BABD8D4F01A3B18498639075CC9
              2CCBCE0A1C64FE2CFC7CFDA1BC71FB527C50D47C69F113C51AC78C3C51AAB6EB
              9D4752B8334AC39C22F648D7242A2008A38000E2A9440F47FF00828F7FC143BC
              79FF000537FDA8758F89BE3CB811CD743EC9A4E950C85AD741B0566315A439C7
              0BB9999B00BBB3B900B60783515D77C06F811E2CFDA6FE30787FC07E06D12F7C
              45E2AF13DDAD969F616A859E573C963D9515416676C2A2AB331001354072C965
              3496525CAC32B5BC2EB13CA10EC4760C5549E80908E40EFB5BD0D455FB43FF00
              05C7FF008255F86FFE0939FF000450F837E0CB17B5D53C69AE7C408B52F17EB9
              1A11FDA77DFD99783CB8C91BBECF082523040E373901A47AFC5EA00FA77FE08B
              3FF296BFD9CFFEC7FD27FF004A52BFB53AFE2B3FE08B3FF296BFD9CFFEC7FD27
              FF004A52BFB53A990051451520148E82442AC032B0C10470452D1401F8BBFF00
              0564FF0083473C27FB47789F54F1E7ECEFAAE93F0E7C4FA8C8D737BE16D41597
              C3F7921CB335BBC6ACF68CC7F802BC5C80A22039FC71F8E7FF00040CFDB07F67
              FD666B3D57E02F8F35A58DB0971E19B2FF008482198670194D9194807AE18061
              DC0E6BFB30A2AB980FE1FF00C33FF04CAFDA43C677E2D74AF803F1A2FA6CA822
              1F056A4C23C9C02C7C9C2AE7BB1007AD7D9DFB127FC1A75FB4F7ED31AF59DC78
              F34BD3FE0CF84D9D5A7BCD7664B8D49E33D7C9B2858BEF1E93B423DCF4AFEACA
              8A3980F9E7FE09C1FF0004C4F853FF0004B8F825FF00086FC33D26449AF8A4DA
              D6B97C565D535E9D410249E4000DAB96091A05440CD85CB316FA1A8A2A40F83F
              FE0B89FF00043BF0BFFC15F3E18699756BA9DBF847E2A78462923D075E920324
              1730B7CC6CAEC2FCCD017F995972D133332860CE8FFCEDFC7AFF0083747F6C6F
              801E279F4FB9F82FE20F155B472148751F0B3C7AC5ADDAF67510932A29F49634
              6F502BFB14A29F301FC69FC2AFF82017ED8BF17FC4D1E97A7FC03F1C69923328
              7B8D7204D1ED6204FDE325D346A40C1242E5BD012403FBDDFF000412FF008377
              74AFF825B3CDF11BE216A1A5F8BBE346A36EF6B04D63BDB4EF0C5B38C4915B17
              5569269070F3155C292880297693F4FA8A2E015FCFBFFC1C5FFF000443FDA83F
              6EFF00F82956A9F103E14FC31FF84ABC2371A069B651DFFF00C247A4D8EE9A24
              6122F9773751C9C12392B83D89AFE8228A407E4EFF00C1ABFF00F04D0F8DDFF0
              4E0F017C66B2F8D1E0AFF8436EBC59A86953E949FDB161A8FDA9218EE96539B4
              9E50BB4C89C3E09DDC67071FAC5451401F84FF00F073CFFC11AFF692FF008287
              7EDEFE11F1AFC1DF871FF09878674BF0059E897379FF00090697A7F95791EA3A
              94CF17977573148711DC42DB82953BF00E4103D1BFE0D5FF00F82547C7CFF827
              078FBE335EFC68F01FFC21B6BE2CD3F4A834A7FEDBD3B51FB53C325D34A31697
              1295DA244E5F00EEE33838FD92A29DC0F967FE0B5DFB3978CFF6B8FF00825DFC
              5CF875F0F746FF008483C65E27B0B5834CD3FED705A7DA5D2FADA561E6CEE912
              E12373967038C752057F3C3FB3E7FC1B45FB6D781FE3DF81F5AD53E0AFD974CD
              1FC41617B7737FC25FA0BF930C5711BBB6D5BD2C70AA4E0024E3804D7F589451
              700AFCFBFF0083953F621F8A1FB7FF00FC13BEC7C0BF08FC31FF0009678AA1F1
              8586A8F63FDA369618B68A0BA477F32EA58A3E1A4418DDB8EEE01C1C7E825148
              0FE667FE0915FF0006F97ED7BFB307FC14ABE0EFC40F1D7C23FEC3F08F857C40
              97BAA5FF00FC253A2DCFD96108E0B7970DE3C8DC91C2293ED5FD335145007E4E
              FF00C1D41FF04D0F8DDFF051FF00017C19B2F82FE0AFF84CAEBC27A86AB3EAA9
              FDB161A77D95268ED56239BB9E20DB8C6FC2648DBCE3233F2CFF00C1BA1FF044
              3FDA83F610FF008295697F103E2B7C31FF008457C236FA06A56525FF00FC247A
              4DF6D9A54511AF976D75249C90790B81DC8AFE8228A7702A6BDA0D8F8A743BDD
              2F52B3B6D434DD4A07B5BBB5B88C490DCC4EA55E3753C32B292083C1048AFE78
              3FE0AC5FF0686F8CBC31E3BD47C61FB2D8B7F12F85F5095EE24F05EA17F1DB6A
              1A3B13B8A5ACF332C73C039DAB23ACAA02AE66396AFE8AA8A407F14F75FF0004
              64FDACECFC4EBA43FECE5F191AE9890244F0ADDC96BC123FE3E150C23A1EAFC8
              C1E8413F727EC11FF068BFC68F8BDA26A5E28F8D518F87BA5D9E9F3DC697E1AB
              7BCB79B5CD72E844C6089D83341691349B7733B193195D899F317FA74A2AB980
              FE42FF00E2179FDBA7FE886FFE5E7E1FFF00E4EAFEAB7F639F016ADF0AFF0064
              5F857E17D7AD7EC1AE786FC21A4E97A8DB79A92FD9EE60B28629537A1646DAEA
              C32A4A9C641239AF47A295C0FE48FE207FC1B1BFB716B9E3DD72F6D7E08F9B6B
              79A84F3C2FFF00098E80BBD1A46653837C08C82383CD7F49DFF048AF80DE2CFD
              97FF00E09ABF077E1FF8EB49FEC3F177857404B2D52C3ED30DCFD9660EE4AF99
              0BBC6DC11CA311EF5F475145C0F38FDB1BC05AB7C54FD917E2A785F41B5FB7EB
              9E24F086ADA5E9D6DE6A45F68B99ECA68A24DEE551773B28CB10A339240E6BF9
              52FF00885E7F6E9FFA21BFF979F87FFF0093ABFAF4A28B81E43FF0ABB5DFF860
              8FF842BEC3FF001537FC201FD89F63F3A3FF008FCFECEF27CAF337797FEB3E5D
              DBB6F7CE39AFE5A7FE2179FDBA7FE886FF00E5E7E1FF00FE4EAFEBD28A2E079C
              7EC73E02D5BE15FEC8BF0AFC2FAF5AFD835CF0DF84349D2F51B6F3525FB3DCC1
              650C52A6F42C8DB5D586549538C824735E71FF000575F80DE2CFDA83FE09ABF1
              8BE1FF0081749FEDCF1778AB407B2D2EC3ED30DB7DAA62E842F9933A46BC03CB
              B01EF5F4751480FE48FE1FFF00C1B1BFB71687E3DD0EF6EBE08F956B67A8413C
              CFFF00098E80DB11645663817C49C00781CD15FD6E5155CC0145145481F84FFF
              0005E3FF00835B1BE24EADAE7C64FD9974B821D72EDDEFB5FF000145B2186F58
              FCCF3E9BD1524272CD6C4ED724F9654E227FE7D7C4BE19D4BC17E21BED2358D3
              EFB49D5B4D9DEDAF2CAF20682E2D6543B5A39236019194820A900822BFBE2AF9
              2BFE0A49FF000450F809FF000542D2E4B8F1F7867FB37C649108AD7C5DA1ECB4
              D6610A308AF26D2B711AF40932B8033B769E6A9480FE3128AFD76FDB57FE0CF1
              FDA03E095F5D6A1F08F58F0FFC62F0FA9678AD84C9A3EB51A0E70D14EFE43E07
              1949B731070832057E71FC73FD833E367ECCD77343F103E12FC44F08ADB9399F
              53D02E60B6703396498A796EBC1F99588E0F3540792D1454FA6E9973AC5EC76D
              676F3DD5C4A7091431991DCF5E00E4D0041457D45FB397FC1157F6AAFDAAAEA1
              5F07FC0DF1E35ACE46DBFD5AC7FB16C48EA585C5E18A36007F7589F404E057EA
              97EC1DFF00065CCDF6AB3D6BF68CF8870F92BB643E19F06B1667E41D935F4C83
              1C7CACB1447A9DB28C024B81F8D7FB157EC1DF153FE0A11F182DFC13F0A7C277
              FE25D558A3DE4EA3CBB1D261638F3EEA73F24318E796396236A866214FF54DFF
              000458FF0082187807FE0921F0EA4BEF32DFC5DF1735FB610EBBE277876AC499
              DC6D2C95B98ADC10BB89F9E5650CD801113EA8FD99BF650F871FB1AFC2FB5F06
              7C2FF0768BE0BF0DDA1DC2D34F876999FA19259189926908C03248CCE70324D7
              A1543607E32FFC1EBBFF002611F0A7FEC7F5FF00D375DD7F3535FD5EFF00C1D0
              DFF04F9F8BDFF0514FD91BE1FF0085FE0DF847FE130D7343F178D52F6DBFB52C
              B4FF0026DBEC57316FDF753448DF3C8830A4B739C60135F87DFF0010BCFEDD3F
              F4437FF2F3F0FF00FF002753881E41FF000459FF0094B5FECE7FF63FE93FFA52
              95FDA9D7F303FF0004C2FF008377BF6C4FD9E3FE0A21F05FC75E31F83FFD8FE1
              5F09F8C34ED5355BEFF84AF44B8FB2DB453ABC8FE5C578D23E1413845663D81A
              FE9FA89005145152014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              014514500145145007E69FFC14C7AEBDFF006301FF00DA95F4F7EC13FF00318F
              FAF4B6FF00D9E8A2803E8EA28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2803FFD9}
            Stretch = True
          end
          object COGNOMS: TQRDBText
            Left = 177
            Top = 128
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              338.666666666667
              187.854166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'APELLIDO1'
            OnPrint = COGNOMSPrint
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object HISTORIA: TQRDBText
            Left = 566
            Top = 128
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1497.54166666667
              338.666666666667
              171.979166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'NUM_HIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object ADRECA: TQRDBText
            Left = 177
            Top = 191
            Width = 55
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              505.354166666667
              145.520833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'ADRESA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object POBLACIO: TQRDBText
            Left = 177
            Top = 211
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              558.270833333333
              177.270833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'POBLACIO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object CODI: TQRDBText
            Left = 118
            Top = 231
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              312.208333333333
              611.1875
              137.583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'CODIGO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object TELEFON: TQRDBText
            Left = 565
            Top = 231
            Width = 70
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1494.89583333333
              611.1875
              185.208333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TELEFONO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object NSSOCIAL: TQRDBText
            Left = 177
            Top = 406
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              1074.20833333333
              76.7291666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'SOE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object TITULAR: TQRDBText
            Left = 568
            Top = 382
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1502.83333333333
              1010.70833333333
              137.583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TITULAR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object DIAGNOSTIC: TQRDBText
            Left = 177
            Top = 443
            Width = 180
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              1172.10416666667
              476.25)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'C_DIAGNOSTICNEUROLOGIC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object DATANAIXE: TQRDBText
            Left = 177
            Top = 305
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              806.979166666667
              209.020833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'FECHA_NAC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object LLOCNAIX: TQRDBText
            Left = 177
            Top = 325
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              859.895833333333
              209.020833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'LUGAR_NAC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object DNI: TQRDBText
            Left = 177
            Top = 345
            Width = 22
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              912.8125
              58.2083333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'DNI'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object ESTATCIVIL: TQRDBText
            Left = 568
            Top = 345
            Width = 82
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1502.83333333333
              912.8125
              216.958333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'ESTADO_CIV'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object SEXE: TQRDBText
            Left = 568
            Top = 305
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1502.83333333333
              806.979166666667
              95.25)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object TSI: TQRDBText
            Left = 568
            Top = 402
            Width = 20
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1502.83333333333
              1063.625
              52.9166666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TSI'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object PROVINCIA: TQRDBText
            Left = 238
            Top = 231
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              629.708333333333
              611.1875
              187.854166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'PROVINCIA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object TELEFON1: TQRDBText
            Left = 188
            Top = 261
            Width = 93
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              497.416666666667
              690.5625
              246.0625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TELEFO1_FAM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object TELEFON2: TQRDBText
            Left = 268
            Top = 261
            Width = 93
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              709.083333333333
              690.5625
              246.0625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TELEFO2_FAM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object COMENTARI1: TQRDBText
            Left = 438
            Top = 261
            Width = 87
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1158.875
              690.5625
              230.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'DESCRIPCIO1'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object COMENTARI2: TQRDBText
            Left = 438
            Top = 281
            Width = 87
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1158.875
              743.479166666667
              230.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'DESCRIPCIO2'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 344
            Top = 305
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              910.166666666667
              806.979166666667
              95.25)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'EsViu'
            OnPrint = QRDBText4Print
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 286
            Top = 443
            Width = 180
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              756.708333333333
              1172.10416666667
              476.25)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'N_DIAGNOSTICNEUROLOGIC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel3: TQRLabel
            Left = 74
            Top = 152
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              402.166666666667
              84.6666666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nom:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText6: TQRDBText
            Left = 177
            Top = 152
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              402.166666666667
              153.458333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'NOMBRE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 177
            Top = 386
            Width = 93
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              1021.29166666667
              246.0625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'FINAN'#199'AMENT'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            OnPrint = QRLabel4Print
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand1: TQRBand
          Left = 38
          Top = 676
          Width = 359
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.9791666666667
            949.854166666667)
          BandType = rbDetail
          object QRDBText3: TQRDBText
            Left = 277
            Top = 0
            Width = 66
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.3333333333333
              732.895833333333
              0
              174.625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qHistorico
            DataField = 'DATA_ALTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            OnPrint = QRDBText3Print
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText2: TQRDBText
            Left = 145
            Top = 0
            Width = 85
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.3333333333333
              383.645833333333
              0
              224.895833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qHistorico
            DataField = 'C_PRESTACIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            OnPrint = QRDBText2Print
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText1: TQRDBText
            Left = 25
            Top = 0
            Width = 84
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.3333333333333
              66.1458333333333
              0
              222.25)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qHistorico
            DataField = 'DATA_INGRES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
        end
        object ChildBand1: TQRChildBand
          Left = 38
          Top = 550
          Width = 718
          Height = 126
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = ChildBand1BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            333.375
            1899.70833333333)
          ParentBand = QRBand1
          object QRDBRichText1: TQRDBRichText
            Left = 67
            Top = 8
            Width = 614
            Height = 113
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              298.979166666667
              177.270833333333
              21.1666666666667
              1624.54166666667)
            Alignment = taLeftJustify
            AutoStretch = False
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            DataField = 'ANTICSTRACTAMENTS'
            DataSet = qFiliacio
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object qrFullFiliacio2: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = qHistorico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 2
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100
          2970
          100
          2100
          100
          100
          0)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = First
        PrintIfEmpty = False
        SnapToGrid = True
        Units = Pixels
        Zoom = 100
        object QRBand2: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 451
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            1193.27083333333
            1899.70833333333)
          BandType = rbTitle
          object QRLabel7: TQRLabel
            Left = 216
            Top = 33
            Width = 441
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.9166666666667
              571.5
              87.3125
              1166.8125)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Full de Filiaci'#243
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel8: TQRLabel
            Left = 74
            Top = 128
            Width = 60
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              338.666666666667
              158.75)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cognoms:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel9: TQRLabel
            Left = 74
            Top = 191
            Width = 46
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.9166666666667
              195.791666666667
              505.354166666667
              121.708333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Adre'#231'a:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 74
            Top = 211
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              558.270833333333
              148.166666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Poblaci'#243':'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel11: TQRLabel
            Left = 74
            Top = 231
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              611.1875
              82.0208333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Codi:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel12: TQRLabel
            Left = 497
            Top = 128
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1314.97916666667
              338.666666666667
              129.645833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Hist'#242'ria:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 495
            Top = 231
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1309.6875
              611.1875
              127)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#232'fon:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel15: TQRLabel
            Left = 74
            Top = 383
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              1013.35416666667
              177.270833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'N.S.Social:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel16: TQRLabel
            Left = 498
            Top = 382
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1317.625
              1010.70833333333
              108.479166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Titular:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape8: TQRShape
            Left = 68
            Top = 109
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              288.395833333333
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape9: TQRShape
            Left = 68
            Top = 174
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              460.375
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape10: TQRShape
            Left = 68
            Top = 294
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              777.875
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape11: TQRShape
            Left = 68
            Top = 425
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              1124.47916666667
              1611.3125)
            Shape = qrsHorLine
          end
          object QRShape13: TQRShape
            Left = 68
            Top = 370
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              978.958333333333
              1611.3125)
            Shape = qrsHorLine
          end
          object QRLabel19: TQRLabel
            Left = 74
            Top = 305
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              806.979166666667
              171.979166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Data Naix.:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel20: TQRLabel
            Left = 74
            Top = 325
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              859.895833333333
              164.041666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Lloc Naix.:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel21: TQRLabel
            Left = 74
            Top = 345
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              912.8125
              103.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'D.N.I.:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel22: TQRLabel
            Left = 498
            Top = 345
            Width = 64
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1317.625
              912.8125
              169.333333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Estat Civil:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel23: TQRLabel
            Left = 498
            Top = 305
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1317.625
              806.979166666667
              89.9583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexe:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel24: TQRLabel
            Left = 498
            Top = 402
            Width = 26
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1317.625
              1063.625
              68.7916666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TSI:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel25: TQRLabel
            Left = 298
            Top = 305
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              788.458333333333
              806.979166666667
              100.541666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Exitus'
            Color = clWhite
            OnPrint = ExitusPrint
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData2: TQRSysData
            Left = 546
            Top = 0
            Width = 131
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1444.625
              0
              346.604166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Text = 'Dia i hora: '
            Transparent = False
            FontSize = 10
          end
          object QRShape14: TQRShape
            Left = 68
            Top = 251
            Width = 609
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.1041666666667
              179.916666666667
              664.104166666667
              1611.3125)
            Shape = qrsHorLine
          end
          object QRLabel26: TQRLabel
            Left = 74
            Top = 261
            Width = 112
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              690.5625
              296.333333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#232'fons Familiars:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel27: TQRLabel
            Left = 358
            Top = 261
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              947.208333333333
              690.5625
              187.854166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Comentaris:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel28: TQRLabel
            Left = 178
            Top = 231
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              470.958333333333
              611.1875
              153.458333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText7: TQRDBText
            Left = 177
            Top = 128
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              338.666666666667
              187.854166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'APELLIDO1'
            OnPrint = COGNOMSPrint
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText8: TQRDBText
            Left = 566
            Top = 128
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1497.54166666667
              338.666666666667
              171.979166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'NUM_HIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText9: TQRDBText
            Left = 177
            Top = 191
            Width = 55
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              505.354166666667
              145.520833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'ADRESA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText10: TQRDBText
            Left = 177
            Top = 211
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              558.270833333333
              177.270833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'POBLACIO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText11: TQRDBText
            Left = 118
            Top = 231
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              312.208333333333
              611.1875
              137.583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'CODIGO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 565
            Top = 231
            Width = 70
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1494.89583333333
              611.1875
              185.208333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TELEFONO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 177
            Top = 383
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              1013.35416666667
              76.7291666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'SOE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText14: TQRDBText
            Left = 568
            Top = 382
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1502.83333333333
              1010.70833333333
              137.583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TITULAR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText16: TQRDBText
            Left = 177
            Top = 305
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              806.979166666667
              209.020833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'FECHA_NAC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText17: TQRDBText
            Left = 177
            Top = 325
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              859.895833333333
              209.020833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'LUGAR_NAC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText18: TQRDBText
            Left = 177
            Top = 345
            Width = 22
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              912.8125
              58.2083333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'DNI'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText19: TQRDBText
            Left = 568
            Top = 345
            Width = 82
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1502.83333333333
              912.8125
              216.958333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'ESTADO_CIV'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText20: TQRDBText
            Left = 568
            Top = 305
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1502.83333333333
              806.979166666667
              95.25)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText21: TQRDBText
            Left = 568
            Top = 402
            Width = 20
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1502.83333333333
              1063.625
              52.9166666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TSI'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText22: TQRDBText
            Left = 238
            Top = 231
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              629.708333333333
              611.1875
              187.854166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'PROVINCIA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText23: TQRDBText
            Left = 188
            Top = 261
            Width = 93
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              497.416666666667
              690.5625
              246.0625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TELEFO1_FAM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText24: TQRDBText
            Left = 268
            Top = 261
            Width = 93
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              709.083333333333
              690.5625
              246.0625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'TELEFO2_FAM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText25: TQRDBText
            Left = 438
            Top = 261
            Width = 87
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1158.875
              690.5625
              230.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'DESCRIPCIO1'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText26: TQRDBText
            Left = 438
            Top = 281
            Width = 87
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1158.875
              743.479166666667
              230.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'DESCRIPCIO2'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText27: TQRDBText
            Left = 344
            Top = 305
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              910.166666666667
              806.979166666667
              95.25)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'EsViu'
            OnPrint = QRDBText4Print
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel29: TQRLabel
            Left = 74
            Top = 152
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              195.791666666667
              402.166666666667
              84.6666666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nom:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText29: TQRDBText
            Left = 177
            Top = 152
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              468.3125
              402.166666666667
              153.458333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qFiliacio
            DataField = 'NOMBRE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRImage1: TQRImage
            Left = 72
            Top = 24
            Width = 140
            Height = 36
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              95.25
              190.5
              63.5
              370.416666666667)
            Picture.Data = {
              0A544A504547496D616765C6350000FFD8FFE000104A46494600010101006000
              600000FFE1003A4578696600004D4D002A000000080003511000010000000101
              000000511100040000000100000B12511200040000000100000B1200000000FF
              DB00430002010102010102020202020202020305030303030306040403050706
              07070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E
              0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0CFFC0001108007101D803012200021101031101FFC4001F
              0000010501010101010100000000000000000102030405060708090A0BFFC400
              B5100002010303020403050504040000017D0102030004110512213141061351
              6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
              2728292A3435363738393A434445464748494A535455565758595A6364656667
              68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
              A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
              E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
              010101010000000000000102030405060708090A0BFFC400B511000201020404
              0304070504040001027700010203110405213106124151076171132232810814
              4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
              3738393A434445464748494A535455565758595A636465666768696A73747576
              7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
              B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
              E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800
              A2BCAFF6C4FDB53E1AFEC15F052FBC7FF14BC4F67E19F0FD99F2E332664B9D42
              72095B7B78572F34AD838550700163B555987F383FF0548FF83AE3E337ED79A8
              6A5E19F8392DF7C1BF877216896E2CE6C788F548FA6E96E94FFA303D425BED65
              E4195C53B5C0FE853F6C1FF82A57ECFBFB05C457E2B7C53F0BF85F50D81D74A1
              2B5EEAAEA7A30B3B75927DA7FBDB36FBD7E757C73FF83D2FE03783279ADFC05F
              0DFE2478E2685B6ACF7A6DB45B3987AA3179A5C63FBD129F6EF5FCD56ABAB5D6
              BDA9DC5EDF5CDC5E5E5DC8D2CF3CF2192599D8E59998E4B313C9279355E9F281
              FD2B7FC1397FE0EC1D53FE0A09FB79F807E10AFC0ED3FC21A6F8DEEE6B53A81F
              15BEA13D9F976B34FBB6FD92257C98B18E301BBE39AFFF0007317FC1C09E2CFD
              89FC6717C07F825A845A4F8F26B14BDF14788BCA5966D0A29943416D6C1B2AB7
              0F1912348CA7623C7B3E66DD1FE46FFC1B87FF0029B0F80BFF00615BDFFD36DD
              D43FF0715787B58F0E7FC1687E3C47ADC77097175ACC1776ED2927CCB592CEDD
              A02A4F55F28A018E9B71DA8B6A07CF7A97EDC5F1AB58F14C9AE5D7C5EF8A171A
              D4B37DA1EFE4F14DF35CB49D9FCC32EEDC3039CE78AFDA6FF836DFFE0E2BF1E7
              C55F8EDA2FECFBF1EF5E9BC59FF093036DE12F15DF107508AF154B2D95E49C19
              D650AC2395B328976A31712031FE03D7BAFF00C12FBC37AB78B7FE0A49F00AC7
              438E7935493E2168524061255E329A840E64C8E5422A962DD8293DAA80FEDEE8
              A28ACC028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A002BC17FE0A3FFF000511F00FFC131FF661D5FE25F8F2EB7C76FF00E8BA
              46930C816EF5FBE65262B5841CF2704B3E0844566390307DB3C4DE26D3FC17E1
              BD4358D5EFAD74DD2749B692F6F6F2E6411C369046A5E491D8F0AAAA0B127800
              135FC74FFC1713FE0AB3AC7FC1567F6C9D47C4714D736FF0E7C2AD2E95E0CD31
              B72AC3661FE6BA743D27B82A1DF23214471E488C1A680F31FF00828BFF00C149
              7E277FC14EBE3EDDF8EBE246ACD3042F168FA35BB15D3B40B52C4882DE3FCB74
              8D977201627031E0345759F03BE06F8BBF695F8B3A1F817C07A06A1E27F16789
              2E45A69DA6D920696E2439279242AAAA82CCEC42A2AB3310A091607275EA5FB3
              9FEC41F18BF6BCBC787E18FC31F1BF8E9617D934FA3E9135CDB5B1F496655F2E
              3FF81B0AFE85BFE0945FF0696FC33FD9CF46D37C5DFB4347A7FC52F1EB059C68
              0199BC39A3B7508C9C1BD71D0994795C90236C073FAF5E1AF0CE9BE0CD06D74A
              D1F4FB1D274BB18C456D676702C16F6E83A2A2280AAA3D0002A7980FE70FFE08
              73FF000404FDAB7F662FF8292FC27F8A9F103E19C7E16F07F85EFEE6E2FE7B8F
              1069B35C246F657112910C33BC9F7E4518201E738C735FA51FF05EDFF8202695
              FF000566D0F4DF19784354D3FC27F193C3569F61B5BDBE0DFD9FAE5982CEB6B7
              45159D0A3BB1499558A8775656054A7E91514AE07F20BA9FFC1B1DFB6E69DE2F
              6D1D7E0ACD747CCD89790F88F49366EBCFCFE61B9002E0670D86ED8078AFD8EF
              F82047FC1B6DFF000EE0F1B47F177E2EEA3A3F88BE2B25B3C1A369FA7169AC3C
              2EB2A6C96412B0532DD3233C65828445670A5F76E1FAD9451700A8750D46DF48
              D3E7BBBB9E1B5B5B58DA59A695C2471228CB3331E02800924F000A9ABE23FF00
              838EBE246AFF000ABFE08A5F1E754D0E77B7BEB8D2ECB49775CE7ECF7BA9DA59
              5C2F1FDE82E255FC6901F9B1FF00052EFF0083C6B5DD17E266ABE13FD9A7C37E
              1F9B42D2E76B56F18788617BA6D50A921A4B4B657458E2DC32AF2972EA726342
              6BC7BF658FF83CBFE3C7813C7B6C3E2C784FC17E3EF09CD30FB58D32CDB4AD52
              D93A130387685B1F7B6C91FCC4637A0391F8E7455D901FDD5FEC9DFB557827F6
              D7FD9FBC37F133E1EEACBAC7857C516DF68B694AED9A0604AC904A993B258DC3
              23AE4E194F24609F45AFC3AFF8323BE28EB9AE7C00F8EDE0EBA92E24F0FF0087
              35DD2F54D3D5CE638E7BC82E52E02F71C59C048E996CF526BF716A0028A28A00
              28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
              28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
              28A28A0028A28A0028A28A0028A28A0028A28A00FC91FF0083BC7FE0A0571FB3
              4FEC2FA5FC24F0FDE1B7F127C6AB992D6F9A36C49068D6DB1AE471C8F3A47862
              E7868CCE2BF97DAFD1EFF83A9FF69C9BF686FF0082BF78CB498EE1A6D1FE18E9
              F67E14B150F940E91FDA2E4E3A06173713213D488973D001F9C356809F4CD32E
              75AD4ADECECEDE7BBBCBB95618208633249348C4054551CB31240007249AFEB6
              3FE0DF9FF8226E87FF0004BAFD9F2D7C49E28D36CEFBE3878D2CD25D7B506512
              368703ED75D3206E42AA103CD65FF5920EAC891E3F1ABFE0D33FD81ED7F6B6FF
              00828BC9E3DD7ACC5DF85FE07DA45AF6C65DD1CBAB4AEC9A7A30FF0064C77170
              0FF7ED507209AFEA9A948028A28A900A28A2800A28A2800AF3CFDACFF66AF0FF
              00ED8DFB34F8DBE17F8A9643A0F8E3499B4BB9923FF596C5D7E49D33C7991481
              245CF1B9067238AF43A2803F899FF828AFFC12EBE2EFFC1323E2FDF7867E2378
              72F23D2FED0D1E93E24B581DF48D762E76C904D8DBB8AF2626C489D194753E53
              F00FF674F1DFED4BF126C7C1FF000EFC27AE78CBC49A938486C74BB569E41938
              DEE47CB1C63AB48E551464B100135FDD9EAFA3D9F8834C9ACB50B5B6BEB3B85D
              92C17110922957D19581047B1AA1E0DF87DA07C3AD3DAD3C3FA1E8FA15AB9DCD
              0E9D671DAC6C79E4AA003B9FCCD57301F22FFC1093FE0960DFF04A0FD88EDFC1
              FAC5D59EA5E3CF145F36BDE29BBB5F9A14B978D234B5898805A286345504FDE7
              32B8003E07DA54515201451450014515F11FFC1733FE0B11A27FC1243F6644D4
              AD61B3D6BE27F8C3CDB3F08E8D3B7EE8C8A17CDBCB80086FB3C219490BCBBB22
              02A199D003DE3F6CDFF82827C1DFF827DF80A3F117C5CF1D68FE11B3B9DC2CED
              E52D35F6A2CA39582DA30D2CB8E3255485C8DC4039AFCADF8E7FF07B37C2FF00
              0B6B335BFC3BF82FE34F195AC4DB56EB5AD62DF4159B9E595638EE9B6F71B802
              78C81DBF003F692FDA6BC79FB5EFC60D5BC7BF123C4DAA78B3C55AD485EE2F6F
              65DC51724AC51A8F962893242468151070A00AFA77F628FF00837AFF006A8FDB
              B7C2567E25F0BFC3EFF847FC27A82092D35AF145DAE956D768C32B2451B833CB
              1B0E44891321ECD55CA07E8D786BFE0F88B85BC65D63F66D85ADDA4F95ECFC74
              55E24FF75AC0876F7DCA2BEC6FD8EFFE0EC6FD95FF0069DD6ADF47F135FF0088
              3E0FEB370CB1A1F155BA0D325763D05E42EE91A8EEF388547AD7E52F8FBFE0CD
              FF00DAD3C1DA0CB79A76AFF077C57711A165B1D2BC41771DC4A4630A0DD5A411
              E4F6CB81C72457E75FED47FB1CFC51FD8A3E21B7857E2B781FC41E07D708678A
              1D46DF6C7788A706482652629E3078DF1332E7BD16407F73BA3EB367E22D26DA
              FF004FBAB6BEB1BC8966B7B8B7944B0CF1B0CABA3292194820820E08AB35FCBD
              FF00C1ACDFF050AFDA2BC0FF00B5E681F05FC1FA7EADF123E15EB721975BD16E
              A73F67F08DAEEFDE6A704CF916CA8CD968BEE4E5B605F35D187F50953B005145
              14005145140057E687FC151BFE0E5CF03FFC12EBF6AEBCF853AF7C33F1678A75
              0B3D36D75237FA7DFDBC30B2CEA582ED719C8C735FA5F5FCA57FC1DD3FF298DD
              6BFEC55D23FF00453D3407EF37FC11DFFE0B39E19FF82C37873C79A9786FC17A
              F783A3F01DCD9DB4E9A9DD4539BA372B33295F2FA6DF24E73EA2BECFAFC26FF8
              31FF00FE4977ED11FF00615D0FFF0044DF57EECD2607E75FFC15C7FE0E25F05F
              FC123FF690D13E1BF88BE1CF8A3C5D7DAD786A0F12A5E69B7D0411471CB75756
              E222B273B81B566CF4C38F435D57FC11DFFE0BA7E13FF82C37893C79A6F86FC0
              9E22F0749E04B6B3B99DF53BC8671742E5A6550BE5F4DBE49CE7D457E39FFC1E
              99FF002949F00FFD92BD3FFF004EFAC57AF7FC18FF00FF00254BF688FF00B056
              87FF00A3AF6AADA01FD0C5145152014514500145145001451450014514500145
              145001451450014514500145145001451450014514500145145007F0DFFF0005
              0AF1FCFF00153F6F6F8D9E24B8690CBAEF8EF5BBE21CE4A092FE6654EA701410
              A06480001DABC7EBD0BF6B7B792D3F6ACF89D0CD1BC52C5E2CD551D1D76B230B
              C941047623D2BCF6B403FA77FF008332FE0D41E0BFF826B78BFC60D101A878DB
              C6F72BE60C7CD6B696D6F144BC73C4AD7279C7DEE9DCFEBCD7E5DFFC1A11ABDB
              EA5FF047BB18609049269FE30D5ADEE14023CB7261902FFDF1221E3FBDEB9AFD
              44A87B805145148028A28A002BC77FE0A23F1235BF839FF04FEF8E9E2EF0CDFC
              9A5788FC2BF0F75FD634ABD8D15DACEEEDF4DB89A19406054959115B0C0838E4
              115EC55E03FF00055EFF00945B7ED29FF64AFC51FF00A68BAA00FE5A7FE223CF
              DB63FE8BD7883FF055A6FF00F2351FF111E7EDB1FF0045EBC41FF82AD37FF91A
              BE23A2B403EDCFF888F3F6D8FF00A2F5E20FFC1569BFFC8D47FC4479FB6C7FD1
              7AF107FE0AB4DFFE46AF88E8A00FD57FF825AFFC178FF6B6F8F1FF00051BF825
              E0BF16FC67D6B5AF0C78A3C63A769BAA5849A6D8225DDBCB3AABC659205600A9
              232A41F7AFEA66BF8ACFF822CFFCA5AFF673FF00B1FF0049FF00D294AFED4EA6
              4014514548057F1AFF00F05EFF00DB66FBF6E8FF0082A2FC4CF10B5E4971E1DF
              0BEA327853C3B1EF2D143616323C21E3193859A5134FF59CF03A0FEC8EFA792D
              ACA692285EE248D199224215A52064282C4004F4C9207BD7F0337B7B36A57B35
              C5C48F35C5C3B49248E72CEC4E4927D4939AA881FB2DFF0006A6FF00C117BC3F
              FB5CF8A352F8FDF14F47875AF04F82F511A7F86B45BB8B75AEB1A9C612492E26
              53C490C01900420ABC8E73C44CADFD2A2208D02A80AAA30001C015F157FC1BAB
              E10D3BC15FF045DF80F6FA6AA08AEF469F5099860979E7BDB89A5248EA43BB0E
              7A00076AFB5A9300AF29FDB2BF629F86FF00B7CFC0ED4BE1EFC50F0DDAF88341
              D414B44ECA16EB4C9F690B736D2E37433264E197A82558329653F1CFEDE5FF00
              073CFC03FF008278FED5FE2AF83BE34F08FC5ED53C4DE0FF00B27DB2E744D2B4
              E9AC65FB4D9C1791F96F35F4521C477080EE8D70C180C8C13E43FF0011A67ECB
              7FF420FC7EFF00C12691FF00CB3A2CC0FBA7FE098DFF0004B7F867FF0004AAF8
              0A3C17F0FECE5BABED41C5CEBBE21BE553A8EBD7033B5A565002C680958E25F9
              50127966776FA46BF217FE234CFD96FF00E841F8FDFF00824D23FF009675F7C7
              FC1357FE0A47E07FF82A6FECEF3FC4CF87DA578B347D06DF589F45683C436D6F
              6F766685227660B04D326C2265C1DF9C83C0E32B503F9B7FDB37FE0E06FDB13E
              1AFED83F15FC39A1FC6ED734FD17C3FE31D5F4DD3ED534CD3996DADE1BD9A38A
              305ADCB10A8AA32493C724D7F40BFF000406FDA3FC6DFB5BFF00C124FE13FC42
              F88BAF5C789FC65E20FED8FED0D4E78A28A4B9F2759BEB78B2B1AAA0DB1451AF
              0A385E72726BF932FF0082837FC9FBFC6FFF00B1FF005EFF00D38CF5FD4B7FC1
              AF3FF282DF81BFF71EFF00D48352AA7B01F597ED9DE36D53E1A7EC7BF15FC47A
              1DE3E9FAD787FC1DABEA5A7DD22AB35B5C43653491480302A4ABAA9C10471C83
              5FC9AFFC4479FB6C7FD17AF107FE0AB4DFFE46AFEAD7FE0A11FF00260FF1C3FE
              C40D7BFF004DD3D7F0DD4440FEB8BFE0B2FF00B627C4AFD9AFFE085B1FC54F03
              F8AAEFC3FF00100E9FE1B98EB11410C92EFB996D5673B24468FE712383F2F1BB
              8C57F2C5FB51FED67F113F6D3F8AF378E3E28789AEBC5BE2AB8B68ACE4D42E20
              861768A20446BB62445E013DB35FD97693FB2F780FF6C6FF00827E7813C03F12
              BC3B6FE2AF08EA9E1AD166BAD3A79A5852678A08258C968995C6D7553C30E95F
              CC17FC1C8DFB267C3BFD8AFF00E0A6DAA781FE17F866D7C25E15B7F0F69B791E
              9F6F3CD322CB2C6C646DD2BBB7240EF8A2207CFDFB1DFF00C14BFE397EC03A6E
              BD67F07FE20EA3E09B7F134B0CDA9A5B5A5ACE2EDE10E2327CE89F1B448FF771
              F7B9CD7F4D9FB577ED8BF12BC01FF06D6697F1B347F155DD8FC52B8F85BE16D7
              A4D7D6085A66BDBB4D38DC4DB190C597334B91B30379C01C63F303FE0D43FF00
              8267FC0DFDBFFC01F1AAF3E307C3FD3FC6D71E19D4349874C7B9BCBA83EC8934
              7766403C99501DC634FBD9FBBC62BFA02F18FEC75F0D7C7FFB2C43F04F58F0AD
              ADF7C2DB7D22CF418F4069E65856CAD0442DE1F315C4B8410C583BF71D8324F3
              91EE07F15BFB5CFEDADF147F6EFF0089163E2EF8B5E2EBCF19F88F4DD363D1ED
              AF6E6DE081A2B449659922021445C092795B2467E73CE318D6FD8EFF00E0A19F
              197F601D4B5EBCF83FE39BFF0004DCF89A2861D4DEDAD6DA7FB5A425CC60F9D1
              B81B4C8FF771F7B9AFAFFF00E0E93FD8A3E177EC1FFF000501F07F843E12F846
              CFC19E1BD4BE1ED96B173656D713CEB2DDBEA5A9C2F29699DDB2638225C038F9
              0719CE7D2BFE0D43FF0082797C1AFDBFFE207C6AB3F8C1E06B1F1B5B78674FD2
              66D312E6EAE60168F349762423C99133B8469F7B3F778C557403F4FF00C77FB7
              4FC58D27FE0D7783E3B5BF8CAF63F8B2DE0EB1D48F8885B406637126A50C2F27
              97E5F95931B32E36639E99AFC46F86BFF0725FED81A57C45D02EBC45F1C3C497
              DE1FB6D4ADE5D4EDA2D274DDF716AB2A99517F70BCB20603E61D7A8EB5FBE7FF
              0005D0F829E17FD9C7FE0DF8F8BDE07F04E910E83E15F0D6836367A669F148F2
              25A44354B5214348CCC7927A9279AFE456A6207E997FC147BFE0E90FDA2BF6C3
              F1BEA567F0EFC47A9FC17F876B2B25858787E7FB3EB171167E596E6F97F7A252
              3276C0D1A2E71872BBCFC91E00FF0082A7FED2DF0C3C530EB5A2FC7CF8BD6D7F
              0B6ECCBE2BBDB98A5F692296468E45EFB5D5867B57F44BFF000492FF008365BE
              07FECE7FB34787754F8CDE03D27E247C55F1058C57DAC8D7E137167A23CA818D
              8C36C4F95FBACED695959D9C3105576A2FE76FFC1D4BFF000461F877FB052F81
              FE2E7C20D08F85BC27E30D424D075BD16191DEC6C6FF00CA69EDE483792C8258
              E3B8DD183B54C00A81B88A3403EA1FF82727FC1DD9E19BFF00D8D7C6577FB43C
              4ADF153E1FD9C72E9E9A4C0907FC27E1DC468228C011C170AE54CA0610213222
              E15A35FCC0FDBA7FE0E37FDA93F6D6F1ADF4F6FF0010B5CF85FE1391DD6CFC3D
              E0EBE934C8E0849FBB35CC4567B862B80C5DB6139DA88095AF8A7E1C7C3FD5BE
              2CFC43D07C2BA05A35FEBBE26D46DF4AD3AD9485371733CAB145182781B9DD46
              4F1CD7F595FB0CFF00C1B47FB30FECB5F0374BD1BC5DF0EFC3BF14BC69359A0D
              775EF1044D78B737040327D9E173E5C112B6426D50FB40DCCCD9346880FE6B7E
              09FF00C1613F6A2FD9F7C5906B1E1AF8F1F13D6E21916436FA96BD3EA963311F
              F3D2DAE9A485FD3E643C57F4C7FF000406FF0082D05BFF00C15C7F67AD54788A
              CF4FD0FE2B780DE1B7F1158D9E56DAFA29437937D02B12551CA3AB265B63A75D
              AE99FC46FF00839E7FE091DE0CFF008265FED23E0DD7BE18D9CFA4FC3FF8A569
              7735BE90F3B4E9A45F5A3442E2389DC97F2596E20755724826400ED015763FE0
              CF3F1EEA5E16FF0082B54DA4DACCCB63E26F05EA7697D113F2C8B1BDBDC2363A
              6E0F10C1EA0330E8C687B01FD4378FBC7BA2FC2CF046ADE24F11EA965A2E81A0
              DA4B7FA8DFDDCA2282CE08D4BBC8EC780AAA0926BF9B1FF82ABFFC1DA9F14FE3
              AF8DB55F0B7ECED7727C36F87D6B2BDBC5AFFD995B5ED714123CD0D2022D236C
              02AA8A25039671928BF5E7FC1E6DFB6DEA5F0ABF664F00FC13D0EF1ED9BE27DE
              CDAAEBE626C33E9F62D118A06E7EE4B7122BF4E4DA6338C83F863FF04D2FD80B
              C51FF0531FDB07C31F09FC2D347A7C9AB17BAD4F549636921D1EC211BA7B9703
              AE06151720349246B95DD9025D40A93FFC14CFF68FBAF117F6BC9F1FBE3536A9
              BC49F6A3E36D4BCD0C0607CDE767800003B018E95F777EC0FF00F0762FC76F80
              9A26A5E17F8B7A85CFC4EF0FDF69F3DB586B2F1C49AFE8370D130866597012E9
              15C82C9382E7A890636B7ED7FECE9FF06E4FEC83FB3CFC3BB5D0CFC21D07C6B7
              CB008AF359F1486D4EF6F9F1F348779F2E227D214403B0CE49FCFDFF0082FBFF
              00C1B1FF000EBE1DFECE1E23F8D3FB3AE8F75E17BFF05DB49AA7887C291DCC97
              5637D608374F736DE6B33C32429BA468C318D911B6AA3280E6807E68FF00C447
              9FB6C7FD17AF107FE0AB4DFF00E46AFEB2BF631F1B6A9F12FF0063DF851E23D7
              2F1F50D6BC41E0ED2352D42E9D555AE6E26B286496421405059D98E00039E00A
              FE166BFB91FF00827BFF00C983FC0FFF00B10341FF00D37414480FE58FE21FFC
              1C55FB68E8FE3FD72CEDBE3B6BD15BDAEA1710C4834AD34844591801CDB76005
              7B3FC71FF83B4BF682F13FECB5E09F00F81EFCF87BC5563A4A43E2BF1D5E5B5B
              CFAB6B37649DFF00668C27916D1ED3B7704690E0153111CFE617C56FF92A3E24
              FF00B0ADD7FE8E6AFD9FFF0083657FE0DFEF007ED85F0727F8F7F1C74797C49E
              1BBBD425B1F097875E7786CEF85BB18E7BDB8F2C869104C1A248F705CC12970E
              19407A01F9672FFC14EFF6929BC5275B6F8FFF001A0EAC64F37ED5FF0009AEA5
              E66EC63AF9DD31C63A638C638AFD6CFF0082087FC1CF7E3AF10FC71F0E7C18FD
              A3B5A87C4BA578AAE63D3341F195CA2437DA75DB9090C178C802CD0C8DB544CC
              03A3365D9D4929F477FC17EBFE0801F01E7FF827FF008EBE25FC29F87BA1FC3B
              F1D7C33D35F5F56D06136B69A95941F3DD433C0BFBB38804922B850E1A3505B6
              9615FCCBDA5DCB61751CF049243342E248E48D8AB46C0E410472083CE451B81F
              DDDFED13E24BEF077ECFDE3AD634DB86B5D4B4AF0F5FDE5A4EA0130CB1DB48E8
              C01041C3007904715FC8E7FC4479FB6C7FD17AF107FE0AB4DFFE46AFEAABC6DE
              2DBAF1F7FC13A757D76FCAB5F6B5F0E26BFB82A300C92E98CED8FF008131AFE1
              E69440FD5BFDB53FE0EC8F8F5F1ABE19786FC1BF0BEFA7F8756B61A259D9EBBE
              23F2A1935FD7EF56DD16E660E018ED236983B2884093073BC03B07C33A57FC15
              0BF694D17C5235AB7FDA03E3426A9BFCC370DE33D45D9CF7DDBA62181EE18104
              718AFD8BFF00836F3FE0DDCF863F18BF660D2FE3C7C78F0E278CAE7C64CF3786
              3C3B7B23A58595923B462EA74461E749332B1547CA2C7B5B0CCFF274DFF07307
              FC108FE0AFC2DFD86758F8DFF087C15A6FC3EF117802E6D5B56B2D194C361AB5
              84F711DB366DF3B12589E5470F185CAF981837C854D006FF00C1BC3FF072B78A
              BF697F8BFA4FC08FDA0EFAD353F116BC3ECFE14F16AC096D25FDC2A922CAF150
              08CC8EA311CAAAA5980460CCE1A8AFC0BFD9EBC557DE05F8FBE07D734BB87B5D
              4F47F10585F5A4E870D0CD15CC6E8C0FA86507F0A28E503DE3FE0B7BF0525FD9
              FF00FE0AD9F1FF00C3B242F6F1CBE30BCD66DE36FE1835022FE203FD9F2EE571
              ED8EA6BE57AFDB4FF83D17F6359FC13FB4AFC3BF8E5A7DB1FEC9F1CE967C37AB
              3A27CB16A1664BC2EEDDDA5B7936A8F4B36F6AFC4BAA407F409FF064C7ED4F6A
              DE1FF8CBF04EF2E963BC8EE6DFC6DA55B9619991912CEF580EBF294B01C67EFF
              006C73FBD95FC45FFC131FF6ECD67FE09BDFB6D781FE2D6931CD7906817661D5
              EC236C7F69E9D3031DCC1C903718D8942DC2C8B1B7F0D7F69DF06BE30F86FF00
              681F853E1FF1B783F56B5D73C2FE29B18B52D36FADDB29710C8A194FAAB0E854
              E0AB0208041153203A6A28A2A4028A28A002B88FDA67E08DAFED31FB37FC41F8
              6F7D7D71A658FC40F0D6A3E1AB8BC8103CB691DE5AC96ED2A2B70594485803C1
              22BB7A2803F11BFE2090F85BFF0045BFC7FF00F829B4FF001AFC14FDB2FE15F8
              53E067ED59F107C17E07D76F7C4FE16F08EB973A3D86AD7488926A2B6EE6269B
              09F2ED67572B8EAA54D7F571FF0007067FC1526C7FE0999FB09EB13E97A8C70F
              C50F88114BA1F842D91879D0C8CB89EFF19C84B78DB706C11E6B42A786247F1F
              8EED2316625998E493DEAA202514515407D3BFF0459FF94B5FECE7FF0063FE93
              FF00A5295FDA9D7F159FF0459FF94B5FECE7FF0063FE93FF00A5295FDA9D4C80
              28A28A900AFE1B7F6FBFD9CAF3F645FDB5FE297C35BCB736EDE0FF0012DED85B
              8DBB44B6A2566B69547F76481A275F6715FDC957E1B7FC1DA9FF00046FD5BE32
              5843FB4E7C35D224D4758F0FE9EB65E3AD3AD222F71756508FDCEA4AABCB1813
              31CBD4889636E1627355103D0FFE0CFEFF008284E8FF00197F62ABAF80BAA6A1
              0C3E34F853737175A6DA4B28F36FF47BA9DA6F3501E5BC9B89A58D80CEC57839
              01801FB0D5FC21FECF5FB4478D3F652F8C5A1F8FFE1EF886FF00C2FE2EF0E4FF
              0068B0D42D08DD19C10CACAC0AC91B292AD1B8647562AC082457F413FB077FC1
              E61F0DFC6DE17B3D2BF683F08EB1E09F12431AA4DAE7876D8EA1A3DEB0037486
              0DDF68B724F445130E0FCE38143407CF7FF05E4FF820DFED5DFB67FF00C1577E
              2AFC4AF86BF0ABFE124F04F893FB23FB3B51FF00849B47B3FB4791A3D8DB4BFB
              AB8BB8E55DB34322FCC833B72320827E2EF1BFFC1B5BFB6A7C36F05EAFE22D7B
              E0E5BE97A1E836536A3A8DECFE34F0FAC5696D0A3492CAE7EDDC2AA2B313E82B
              F7EBC4DFF07517EC41A0E8725DDAFC59D4B5AB841916565E10D6167938CE019A
              D638FDB971D7D39AFC79FF0082E07FC1CD1E20FF008290782AEFE16FC2DD1B54
              F00FC27BA97FE2693DECC9FDAFE274560C91CCB19296F06402625772E546E7DB
              94A15C0FCA3AFEBC3FE0D84F82179F04BFE08C7F0B7FB42192DEFBC5CF7FE257
              8DD76E22B9BB93ECEC3D43DB240E0FFB7F89FE67FF00E0955FF04E6F157FC14F
              BF6C5F0DFC37F0FC1750E90D2ADEF8975748C98F44D311879D331C101D87C91A
              9FBD23A0E0648FED2BC07E07D2BE18F81B45F0D683650E9BA1F87AC60D334EB4
              88623B5B686358E28D47F7551540F614480FE20FFE0A0DFF0027EFF1BFFEC7FD
              7BFF004E33D7F525FF0006B9DDC573FF000432F82691C91C8F6EFAF472AAB026
              36FEDED45B0DE876B29C1ECC0F7AFE75FF00E0E00FD9AB52FD97FF00E0AEBF1B
              34BBEB5920B3F1478827F17699214DB1DCDB6A4E6EF747EAA92492C471C06858
              76AFB87FE0D98FF82FCFC38FD84FE116B1F04FE376A57DE1FF000CC9AABEAFE1
              BF10A59CB796D64D30513DA5C2421A4452EAB223AA30CC92EF2802927403F79F
              FE0A14E23FD813E38B310AABF0FF005E249E807F675C57F0DF5FD1A7FC176BFE
              0E5FF825E36FD89BC5FF000A7E04789A5F1EF8A7E2469F2E85A8EA3069F736B6
              1A369F3A94B9CB4F1A19659216689563042F98CCCC0A856FC09FD963F67BD6FF
              006B0FDA43C0FF000D7C3B04B71AC78DB5AB6D22DC22EEF2BCD902BCADE891A6
              E762780A8C4F00D3881FDB9FECA1FF0026B5F0D7FEC55D2FFF004922AFE627FE
              0EE9FF0094C6EB5FF62AE91FFA29EBFAA7F0CF876CFC1FE1BD3F49D3E15B7B0D
              2EDA3B4B68946047146A1114638E14015FCAC7FC1DD3FF00298DD6BFEC55D23F
              F453D2881F6E7FC18FFF00F24BBF688FFB0AE87FFA26FABF766BF09BFE0C7FFF
              00925DFB447FD85743FF00D137D5FBB34A5B81FCC4FF00C1E99FF2949F00FF00
              D92BD3FF00F4EFAC57AF7FC18FFF00F254BF688FFB05687FFA3AF6BC87FE0F4C
              FF0094A4F807FEC95E9FFF00A77D62BD7BFE0C7FFF0092A5FB447FD82B43FF00
              D1D7B4FA01FA77FF00071EFF00CA13FE3D7FD82ACBFF004E7695FC937ECBD650
              EA7FB4C7C3BB6B88D26B7B8F13E9B1CB1B8CABAB5D440823D0838AFEB67FE0E3
              DFF9427FC7AFFB05597FE9CED2BF92BFD943FE4E97E1AFFD8D5A5FFE95C54440
              FEEC6BF287FE0F20B78E6FF824BE92CF1A3343F1074C78CB2E4A37D96FD723D0
              E0919F426BF57ABF293FE0F1BFF944A69BFF0063FE97FF00A4D7D5207E0DFF00
              C10A742B6F117FC1607F679B7BA4F3228FC656974A3D248774B19FC1D14FE15F
              D9FD7F199FF040DFF94C6FECF9FF0063545FFA2A4AFECCEAA407E137FC1F01FF
              0024BBF677FF00B0AEB9FF00A26C6BE23FF8345BFE531BA2FF00D8ABABFF00E8
              A4AFB73FE0F80FF925DFB3BFFD8575CFFD13635F11FF00C1A2DFF298DD17FEC5
              5D5FFF0045251D00F62FF83D7E2997F6EEF84D232C9E43780B6A31076961A85D
              6E00F4C80573F51ED4EFF83282E7478FF6E7F8B51DC793FDBD278141B224FEF3
              ECC2FEDBED000CF4DE6D89E3B0E9DFEC2FF83C5FF60BD4FE3C7EC8FE11F8CDE1
              DB17BCD43E10DD4F06B71C485A43A4DE7961A638E488278A32463849E5624053
              5F813FF04F4FDBABC5FF00F04E1FDACBC2FF00163C17E54FA86832B4777A7CEE
              56DF57B2906C9ED65C670AE8786C128E11C0CA8A37407F70B5C7FED0775A6D8F
              C03F1C4DAC35BAE910F87EFDEF9A71988402DE43217FF676E73ED5F0F7ECE9FF
              000747FEC7BF1C3E1B5AEB1ADFC429BE1CEB5E487BED0BC41A65D7DA2D1F1F30
              59618DE199739DA51F711825549C57E7E7FC17CFFE0E7EF07FED07F01F5DF827
              FB3A5C6A1AA697E2EB77D3FC4DE2FB9B392CE396C5B892D2CE2942CA7CD5CA49
              2488A046595558BEF45603F08EBFB91FF827BFFC983FC0FF00FB10341FFD3741
              5FC3757F723FF04F7FF9307F81FF00F620683FFA6E829C80FE237E2B7FC951F1
              27FD856EBFF47357F619FF0006FD6956FA37FC11A7F67F86D6258637F0D79ECA
              BDDE4B89A476FC5D98FE35FC79FC56FF0092A3E24FFB0ADD7FE8E6AFEC53FE08
              1BFF002872FD9F3FEC558BFF0046C94480F57FF828D69D0EB1FF0004F5F8F167
              731896DEEBE1DF88219509237A369B7008E39E4135FC3AD7F723FF000508FF00
              9307F8E1FF006206BDFF00A6E9EBF86EA2207F6E5FF38B6FFBA57FFB88AFE236
              BFB72FF9C5B7FDD2BFFDC457F11B4440FEE0BFE09A1E1DB6F08FFC1397E01E99
              66A56DEC7E1D787E14C81B9B1A6DBFCCD8006E279270324935E5FF00F05F440F
              FF000470FDA08300DFF14B48791DC4B1915EBFFF0004F7FF009307F81FFF0062
              0683FF00A6E82BC87FE0BE5FF2872FDA0FFEC5597FF46C75207F1D7F0A7FE4A8
              F86FFEC2B6BFFA3968A3E14FFC951F0DFF00D856D7FF00472D15A01FD9FF00FC
              15ABF600D3BFE0A5FF00B08F8D7E165CBC36BAC5F42350F0EDEC9F76C354832F
              6EE4F38463BA273827CB9A4C738AFE2DFC7DE03D63E16F8EB59F0CF88B4FB9D2
              75EF0F5F4DA6EA56370BB66B3B985CC72C4E3FBCAEAC0FB8AFEF6ABF0E3FE0EA
              0FF8218DE7C63B2BFF00DA67E11E8CD75E25D2ED94F8E744B28374BAA5B46B85
              D4A245196962401651D5A350FD636DF3103F9D6AFD4AFF008379FF00E0E04BAF
              F82677893FE159FC4E9750D5BE086BD74658E58834F71E0FB97397B8853ABDB3
              B1CCB12F20FEF1016DE92FE5AD15407F7A5F0C7E287873E357C3FD27C57E11D7
              34BF12786F5DB75BAD3F53D3AE16E2D6F223D191D49079041F420838208ADEAF
              E2AFFE09DDFF00057AF8EBFF0004C2F13B5CFC31F1648BA0DD4BE75FF8635556
              BCD13503C659A02C3CB90E0032C2D1C840037638AFDAEFD92BFE0F45F847E3AD
              3EDECFE327C3BF15780756DA164BFD0D9359D32460065CA9F2E788139C204971
              FDE3D6A7940FDA6A2BE1BF0A7FC1C9BFB1378C2CA39ADFE3A68F6BE623318EFB
              45D4ECDD36A9620892D979E0818CEE3C2E4919E6BE2A7FC1D23FB157C33D2249
              EDFE295EF8B2F153CC4B1D0FC39A84B34A39180F2C31C20F1D1A407A7622A40F
              D09AF9C7FE0A53FF000549F853FF0004B6F829378B3E22EAEADA95D232E89E1C
              B3756D535E987F043193F2C60E37CAD8440464962AADF8EBFB70FF00C1E95AF7
              8A34BBBD1FF67CF86E3C31E70644F11F8BDE3BABD8D4F01A3B18498639075CC9
              2CCBCE0A1C64FE2CFC7CFDA1BC71FB527C50D47C69F113C51AC78C3C51AAB6EB
              9D4752B8334AC39C22F648D7242A2008A38000E2A9440F47FF00828F7FC143BC
              79FF000537FDA8758F89BE3CB811CD743EC9A4E950C85AD741B0566315A439C7
              0BB9999B00BBB3B900B60783515D77C06F811E2CFDA6FE30787FC07E06D12F7C
              45E2AF13DDAD969F616A859E573C963D9515416676C2A2AB331001354072C965
              3496525CAC32B5BC2EB13CA10EC4760C5549E80908E40EFB5BD0D455FB43FF00
              05C7FF008255F86FFE0939FF000450F837E0CB17B5D53C69AE7C408B52F17EB9
              1A11FDA77DFD99783CB8C91BBECF082523040E373901A47AFC5EA00FA77FE08B
              3FF296BFD9CFFEC7FD27FF004A52BFB53AFE2B3FE08B3FF296BFD9CFFEC7FD27
              FF004A52BFB53A990051451520148E82442AC032B0C10470452D1401F8BBFF00
              0564FF0083473C27FB47789F54F1E7ECEFAAE93F0E7C4FA8C8D737BE16D41597
              C3F7921CB335BBC6ACF68CC7F802BC5C80A22039FC71F8E7FF00040CFDB07F67
              FD666B3D57E02F8F35A58DB0971E19B2FF008482198670194D9194807AE18061
              DC0E6BFB30A2AB980FE1FF00C33FF04CAFDA43C677E2D74AF803F1A2FA6CA822
              1F056A4C23C9C02C7C9C2AE7BB1007AD7D9DFB127FC1A75FB4F7ED31AF59DC78
              F34BD3FE0CF84D9D5A7BCD7664B8D49E33D7C9B2858BEF1E93B423DCF4AFEACA
              8A3980F9E7FE09C1FF0004C4F853FF0004B8F825FF00086FC33D26449AF8A4DA
              D6B97C565D535E9D410249E4000DAB96091A05440CD85CB316FA1A8A2A40F83F
              FE0B89FF00043BF0BFFC15F3E18699756BA9DBF847E2A78462923D075E920324
              1730B7CC6CAEC2FCCD017F995972D133332860CE8FFCEDFC7AFF0083747F6C6F
              801E279F4FB9F82FE20F155B472148751F0B3C7AC5ADDAF67510932A29F49634
              6F502BFB14A29F301FC69FC2AFF82017ED8BF17FC4D1E97A7FC03F1C69923328
              7B8D7204D1ED6204FDE325D346A40C1242E5BD012403FBDDFF000412FF008377
              74AFF825B3CDF11BE216A1A5F8BBE346A36EF6B04D63BDB4EF0C5B38C4915B17
              5569269070F3155C292880297693F4FA8A2E015FCFBFFC1C5FFF000443FDA83F
              6EFF00F82956A9F103E14FC31FF84ABC2371A069B651DFFF00C247A4D8EE9A24
              6122F9773751C9C12392B83D89AFE8228A407E4EFF00C1ABFF00F04D0F8DDFF0
              4E0F017C66B2F8D1E0AFF8436EBC59A86953E949FDB161A8FDA9218EE96539B4
              9E50BB4C89C3E09DDC67071FAC5451401F84FF00F073CFFC11AFF692FF008287
              7EDEFE11F1AFC1DF871FF09878674BF0059E897379FF00090697A7F95791EA3A
              94CF17977573148711DC42DB82953BF00E4103D1BFE0D5FF00F82547C7CFF827
              078FBE335EFC68F01FFC21B6BE2CD3F4A834A7FEDBD3B51FB53C325D34A31697
              1295DA244E5F00EEE33838FD92A29DC0F967FE0B5DFB3978CFF6B8FF00825DFC
              5CF875F0F746FF008483C65E27B0B5834CD3FED705A7DA5D2FADA561E6CEE912
              E12373967038C752057F3C3FB3E7FC1B45FB6D781FE3DF81F5AD53E0AFD974CD
              1FC41617B7737FC25FA0BF930C5711BBB6D5BD2C70AA4E0024E3804D7F589451
              700AFCFBFF0083953F621F8A1FB7FF00FC13BEC7C0BF08FC31FF0009678AA1F1
              8586A8F63FDA369618B68A0BA477F32EA58A3E1A4418DDB8EEE01C1C7E825148
              0FE667FE0915FF0006F97ED7BFB307FC14ABE0EFC40F1D7C23FEC3F08F857C40
              97BAA5FF00FC253A2DCFD96108E0B7970DE3C8DC91C2293ED5FD335145007E4E
              FF00C1D41FF04D0F8DDFF051FF00017C19B2F82FE0AFF84CAEBC27A86AB3EAA9
              FDB161A77D95268ED56239BB9E20DB8C6FC2648DBCE3233F2CFF00C1BA1FF044
              3FDA83F610FF008295697F103E2B7C31FF008457C236FA06A56525FF00FC247A
              4DF6D9A54511AF976D75249C90790B81DC8AFE8228A7702A6BDA0D8F8A743BDD
              2F52B3B6D434DD4A07B5BBB5B88C490DCC4EA55E3753C32B292083C1048AFE78
              3FE0AC5FF0686F8CBC31E3BD47C61FB2D8B7F12F85F5095EE24F05EA17F1DB6A
              1A3B13B8A5ACF332C73C039DAB23ACAA02AE66396AFE8AA8A407F14F75FF0004
              64FDACECFC4EBA43FECE5F191AE9890244F0ADDC96BC123FE3E150C23A1EAFC8
              C1E8413F727EC11FF068BFC68F8BDA26A5E28F8D518F87BA5D9E9F3DC697E1AB
              7BCB79B5CD72E844C6089D83341691349B7733B193195D899F317FA74A2AB980
              FE42FF00E2179FDBA7FE886FFE5E7E1FFF00E4EAFEAB7F639F016ADF0AFF0064
              5F857E17D7AD7EC1AE786FC21A4E97A8DB79A92FD9EE60B28629537A1646DAEA
              C32A4A9C641239AF47A295C0FE48FE207FC1B1BFB716B9E3DD72F6D7E08F9B6B
              79A84F3C2FFF00098E80BBD1A46653837C08C82383CD7F49DFF048AF80DE2CFD
              97FF00E09ABF077E1FF8EB49FEC3F177857404B2D52C3ED30DCFD9660EE4AF99
              0BBC6DC11CA311EF5F475145C0F38FDB1BC05AB7C54FD917E2A785F41B5FB7EB
              9E24F086ADA5E9D6DE6A45F68B99ECA68A24DEE551773B28CB10A339240E6BF9
              52FF00885E7F6E9FFA21BFF979F87FFF0093ABFAF4A28B81E43FF0ABB5DFF860
              8FF842BEC3FF001537FC201FD89F63F3A3FF008FCFECEF27CAF337797FEB3E5D
              DBB6F7CE39AFE5A7FE2179FDBA7FE886FF00E5E7E1FF00FE4EAFEBD28A2E079C
              7EC73E02D5BE15FEC8BF0AFC2FAF5AFD835CF0DF84349D2F51B6F3525FB3DCC1
              650C52A6F42C8DB5D586549538C824735E71FF000575F80DE2CFDA83FE09ABF1
              8BE1FF0081749FEDCF1778AB407B2D2EC3ED30DB7DAA62E842F9933A46BC03CB
              B01EF5F4751480FE48FE1FFF00C1B1BFB71687E3DD0EF6EBE08F956B67A8413C
              CFFF00098E80DB11645663817C49C00781CD15FD6E5155CC0145145481F84FFF
              0005E3FF00835B1BE24EADAE7C64FD9974B821D72EDDEFB5FF000145B2186F58
              FCCF3E9BD1524272CD6C4ED724F9654E227FE7D7C4BE19D4BC17E21BED2358D3
              EFB49D5B4D9DEDAF2CAF20682E2D6543B5A39236019194820A900822BFBE2AF9
              2BFE0A49FF000450F809FF000542D2E4B8F1F7867FB37C649108AD7C5DA1ECB4
              D6610A308AF26D2B711AF40932B8033B769E6A9480FE3128AFD76FDB57FE0CF1
              FDA03E095F5D6A1F08F58F0FFC62F0FA9678AD84C9A3EB51A0E70D14EFE43E07
              1949B731070832057E71FC73FD833E367ECCD77343F103E12FC44F08ADB9399F
              53D02E60B6703396498A796EBC1F99588E0F3540792D1454FA6E9973AC5EC76D
              676F3DD5C4A7091431991DCF5E00E4D0041457D45FB397FC1157F6AAFDAAAEA1
              5F07FC0DF1E35ACE46DBFD5AC7FB16C48EA585C5E18A36007F7589F404E057EA
              97EC1DFF00065CCDF6AB3D6BF68CF8870F92BB643E19F06B1667E41D935F4C83
              1C7CACB1447A9DB28C024B81F8D7FB157EC1DF153FE0A11F182DFC13F0A7C277
              FE25D558A3DE4EA3CBB1D261638F3EEA73F24318E796396236A866214FF54DFF
              000458FF0082187807FE0921F0EA4BEF32DFC5DF1735FB610EBBE277876AC499
              DC6D2C95B98ADC10BB89F9E5650CD801113EA8FD99BF650F871FB1AFC2FB5F06
              7C2FF0768BE0BF0DDA1DC2D34F876999FA19259189926908C03248CCE70324D7
              A1543607E32FFC1EBBFF002611F0A7FEC7F5FF00D375DD7F3535FD5EFF00C1D0
              DFF04F9F8BDFF0514FD91BE1FF0085FE0DF847FE130D7343F178D52F6DBFB52C
              B4FF0026DBEC57316FDF753448DF3C8830A4B739C60135F87DFF0010BCFEDD3F
              F4437FF2F3F0FF00FF002753881E41FF000459FF0094B5FECE7FF63FE93FFA52
              95FDA9D7F303FF0004C2FF008377BF6C4FD9E3FE0A21F05FC75E31F83FFD8FE1
              5F09F8C34ED5355BEFF84AF44B8FB2DB453ABC8FE5C578D23E1413845663D81A
              FE9FA89005145152014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              014514500145145007E69FFC14C7AEBDFF006301FF00DA95F4F7EC13FF00318F
              FAF4B6FF00D9E8A2803E8EA28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2803FFD9}
            Stretch = True
          end
        end
      end
    end
  end
  object qFiliacio: TQuery
    Active = True
    DatabaseName = 'Interna'
    SQL.Strings = (
      'SELECT *  FROM FILIACIO WHERE  NUM_HIST = :C_HISTORIA')
    Left = 568
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'C_HISTORIA'
        ParamType = ptUnknown
      end>
    object qFiliacioNUM_HIST: TIntegerField
      FieldName = 'NUM_HIST'
      Origin = 'FILIACIO.NUM_HIST'
    end
    object qFiliacioAPELLIDO1: TStringField
      FieldName = 'APELLIDO1'
      Origin = 'FILIACIO.APELLIDO1'
    end
    object qFiliacioAPELLIDO2: TStringField
      FieldName = 'APELLIDO2'
      Origin = 'FILIACIO.APELLIDO2'
    end
    object qFiliacioNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'FILIACIO.NOMBRE'
    end
    object qFiliacioDNI: TStringField
      FieldName = 'DNI'
      Origin = 'FILIACIO.DNI'
      Size = 9
    end
    object qFiliacioNOMVIA: TStringField
      FieldName = 'NOMVIA'
      Origin = 'FILIACIO.NOMVIA'
      Size = 50
    end
    object qFiliacioTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'FILIACIO.TELEFONO'
      Size = 10
    end
    object qFiliacioTIPUSVIA: TStringField
      FieldName = 'TIPUSVIA'
      Origin = 'FILIACIO.TIPUSVIA'
      Size = 4
    end
    object qFiliacioCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FILIACIO.CODIGO'
      Size = 5
    end
    object qFiliacioNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'FILIACIO.NUMERO'
      Size = 10
    end
    object qFiliacioBLOC: TStringField
      FieldName = 'BLOC'
      Origin = 'FILIACIO.BLOC'
      Size = 2
    end
    object qFiliacioESCALA: TStringField
      FieldName = 'ESCALA'
      Origin = 'FILIACIO.ESCALA'
      Size = 2
    end
    object qFiliacioPIS: TStringField
      FieldName = 'PIS'
      Origin = 'FILIACIO.PIS'
      Size = 5
    end
    object qFiliacioPORTA: TStringField
      FieldName = 'PORTA'
      Origin = 'FILIACIO.PORTA'
      Size = 3
    end
    object qFiliacioPOBLACIO: TStringField
      FieldName = 'POBLACIO'
      Origin = 'FILIACIO.POBLACIO'
      Size = 44
    end
    object qFiliacioPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Origin = 'FILIACIO.PROVINCIA'
      Size = 44
    end
    object qFiliacioRESIDENCIA: TStringField
      FieldName = 'RESIDENCIA'
      Origin = 'FILIACIO.RESIDENCIA'
      Size = 7
    end
    object qFiliacioSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'FILIACIO.SEXO'
      Size = 1
    end
    object qFiliacioFECHA_NAC: TDateTimeField
      FieldName = 'FECHA_NAC'
      Origin = 'FILIACIO.FECHA_NAC'
    end
    object qFiliacioLUGAR_NAC: TStringField
      FieldName = 'LUGAR_NAC'
      Origin = 'FILIACIO.LUGAR_NAC'
      Size = 44
    end
    object qFiliacioESTADO_CIV: TStringField
      FieldName = 'ESTADO_CIV'
      Origin = 'FILIACIO.ESTADO_CIV'
      Size = 2
    end
    object qFiliacioSOE: TStringField
      FieldName = 'SOE'
      Origin = 'FILIACIO.SOE'
      Size = 12
    end
    object qFiliacioTSI: TStringField
      FieldName = 'TSI'
      Origin = 'FILIACIO.TSI'
      Size = 14
    end
    object qFiliacioTITULAR: TStringField
      FieldName = 'TITULAR'
      Origin = 'FILIACIO.TITULAR'
      Size = 1
    end
    object qFiliacioPENSIONIST: TStringField
      FieldName = 'PENSIONIST'
      Origin = 'FILIACIO.PENSIONIST'
      Size = 1
    end
    object qFiliacioTELEFO1_FAM: TStringField
      FieldName = 'TELEFO1_FAM'
      Origin = 'FILIACIO.TELEFO1_FAM'
      Size = 10
    end
    object qFiliacioDESCRIPCIO1: TStringField
      FieldName = 'DESCRIPCIO1'
      Origin = 'FILIACIO.DESCRIPCIO1'
      Size = 30
    end
    object qFiliacioTELEFO2_FAM: TStringField
      FieldName = 'TELEFO2_FAM'
      Origin = 'FILIACIO.TELEFO2_FAM'
      Size = 10
    end
    object qFiliacioDESCRIPCIO2: TStringField
      FieldName = 'DESCRIPCIO2'
      Origin = 'FILIACIO.DESCRIPCIO2'
      Size = 30
    end
    object qFiliacioAMIC: TFloatField
      FieldName = 'AMIC'
      Origin = 'FILIACIO.AMIC'
    end
    object qFiliacioMORT: TDateTimeField
      FieldName = 'MORT'
      Origin = 'FILIACIO.MORT'
    end
    object qFiliacioUSRA: TIntegerField
      FieldName = 'USRA'
      Origin = 'FILIACIO.USRA'
    end
    object qFiliacioBLOQUEIG: TStringField
      FieldName = 'BLOQUEIG'
      Origin = 'FILIACIO.BLOQUEIG'
      Size = 1
    end
    object qFiliacioOBJECTIUS: TIntegerField
      FieldName = 'OBJECTIUS'
      Origin = 'FILIACIO.OBJECTIUS'
    end
    object qFiliacioESVIU: TStringField
      FieldName = 'ESVIU'
      Origin = 'FILIACIO.ESVIU'
      Size = 1
    end
    object qFiliacioN_ETIOLOGIA: TStringField
      FieldName = 'N_ETIOLOGIA'
      Origin = 'FILIACIO.N_ETIOLOGIA'
      Size = 40
    end
    object qFiliacioN_CODI_E: TStringField
      FieldName = 'N_CODI_E'
      Origin = 'FILIACIO.N_CODI_E'
      Size = 40
    end
    object qFiliacioFRANKEL: TStringField
      FieldName = 'FRANKEL'
      Origin = 'FILIACIO.FRANKEL'
      Size = 2
    end
    object qFiliacioDATA_LESSIO: TDateTimeField
      FieldName = 'DATA_LESSIO'
      Origin = 'FILIACIO.DATA_LESSIO'
    end
    object qFiliacioC_CLASANAT: TSmallintField
      FieldName = 'C_CLASANAT'
      Origin = 'FILIACIO.C_CLASANAT'
    end
    object qFiliacioC_FRACTURAVERTEBRAL: TSmallintField
      FieldName = 'C_FRACTURAVERTEBRAL'
      Origin = 'FILIACIO.C_FRACTURAVERTEBRAL'
    end
    object qFiliacioC_TIPUSBUFETA: TSmallintField
      FieldName = 'C_TIPUSBUFETA'
      Origin = 'FILIACIO.C_TIPUSBUFETA'
    end
    object qFiliacioC_BIPEDESTACIO: TSmallintField
      FieldName = 'C_BIPEDESTACIO'
      Origin = 'FILIACIO.C_BIPEDESTACIO'
    end
    object qFiliacioC_DISREFLEXIA: TSmallintField
      FieldName = 'C_DISREFLEXIA'
      Origin = 'FILIACIO.C_DISREFLEXIA'
    end
    object qFiliacioC_CADIRA: TSmallintField
      FieldName = 'C_CADIRA'
      Origin = 'FILIACIO.C_CADIRA'
    end
    object qFiliacioC_FUNCIOSEXUAL: TSmallintField
      FieldName = 'C_FUNCIOSEXUAL'
      Origin = 'FILIACIO.C_FUNCIOSEXUAL'
    end
    object qFiliacioC_ERECCIO: TSmallintField
      FieldName = 'C_ERECCIO'
      Origin = 'FILIACIO.C_ERECCIO'
    end
    object qFiliacioC_EJACULACIO: TSmallintField
      FieldName = 'C_EJACULACIO'
      Origin = 'FILIACIO.C_EJACULACIO'
    end
    object qFiliacioC_SEMEN: TSmallintField
      FieldName = 'C_SEMEN'
      Origin = 'FILIACIO.C_SEMEN'
    end
    object qFiliacioC_TRACTAMENTORTOPEDIC: TSmallintField
      FieldName = 'C_TRACTAMENTORTOPEDIC'
      Origin = 'FILIACIO.C_TRACTAMENTORTOPEDIC'
    end
    object qFiliacioC_DEAMBULACIO: TSmallintField
      FieldName = 'C_DEAMBULACIO'
      Origin = 'FILIACIO.C_DEAMBULACIO'
    end
    object qFiliacioC_BITUTORS: TSmallintField
      FieldName = 'C_BITUTORS'
      Origin = 'FILIACIO.C_BITUTORS'
    end
    object qFiliacioC_AJUDES: TSmallintField
      FieldName = 'C_AJUDES'
      Origin = 'FILIACIO.C_AJUDES'
    end
    object qFiliacioC_DRENATGEURINARI: TSmallintField
      FieldName = 'C_DRENATGEURINARI'
      Origin = 'FILIACIO.C_DRENATGEURINARI'
    end
    object qFiliacioALERGIES: TStringField
      FieldName = 'ALERGIES'
      Origin = 'FILIACIO.ALERGIES'
      Size = 40
    end
    object qFiliacioDATA_CONTACTE: TDateTimeField
      FieldName = 'DATA_CONTACTE'
      Origin = 'FILIACIO.DATA_CONTACTE'
    end
    object qFiliacioDATA_ULTIMCONTACTE: TDateTimeField
      FieldName = 'DATA_ULTIMCONTACTE'
      Origin = 'FILIACIO.DATA_ULTIMCONTACTE'
    end
    object qFiliacioPAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'FILIACIO.PAIS'
      Size = 3
    end
    object qFiliacioC_INFECCIOURINARIA: TSmallintField
      FieldName = 'C_INFECCIOURINARIA'
      Origin = 'FILIACIO.C_INFECCIOURINARIA'
    end
    object qFiliacioCOMODIN: TStringField
      FieldName = 'COMODIN'
      Origin = 'FILIACIO.COMODIN'
      Size = 100
    end
    object qFiliacioANTICSTRACTAMENTS: TMemoField
      FieldName = 'ANTICSTRACTAMENTS'
      Origin = 'FILIACIO.ANTICSTRACTAMENTS'
      BlobType = ftMemo
      Size = 1
    end
    object qFiliacioIDIOMA: TSmallintField
      FieldName = 'IDIOMA'
      Origin = 'FILIACIO.IDIOMA'
    end
    object qFiliacioC_ETIOLOGIA: TStringField
      FieldName = 'C_ETIOLOGIA'
      Origin = 'FILIACIO.C_ETIOLOGIA'
      Size = 15
    end
    object qFiliacioC_CODI_E: TStringField
      FieldName = 'C_CODI_E'
      Origin = 'FILIACIO.C_CODI_E'
      Size = 15
    end
    object qFiliacioC_DIAGNOSTICNEUROLOGIC: TStringField
      FieldName = 'C_DIAGNOSTICNEUROLOGIC'
      Origin = 'FILIACIO.C_DIAGNOSTICNEUROLOGIC'
      Size = 15
    end
    object qFiliacioN_DIAGNOSTICNEUROLOGIC: TStringField
      FieldName = 'N_DIAGNOSTICNEUROLOGIC'
      Origin = 'FILIACIO.N_DIAGNOSTICNEUROLOGIC'
      Size = 40
    end
    object qFiliacioUNITAT: TSmallintField
      FieldName = 'UNITAT'
      Origin = 'FILIACIO.UNITAT'
    end
    object qFiliacioC_UNITATMEDICA: TSmallintField
      FieldName = 'C_UNITATMEDICA'
      Origin = 'FILIACIO.C_UNITATMEDICA'
    end
    object qFiliacioOBS_DIETA: TStringField
      FieldName = 'OBS_DIETA'
      Origin = 'FILIACIO.OBS_DIETA'
      Size = 40
    end
    object qFiliacioNOMCOMPLET: TStringField
      FieldName = 'NOMCOMPLET'
      Origin = 'FILIACIO.NOMCOMPLET'
      Size = 80
    end
    object qFiliacioEDAT: TIntegerField
      FieldName = 'EDAT'
      Origin = 'FILIACIO.EDAT'
    end
    object qFiliacioC_DIETA: TSmallintField
      FieldName = 'C_DIETA'
      Origin = 'FILIACIO.C_DIETA'
    end
    object qFiliacioADRESA: TStringField
      FieldName = 'ADRESA'
      Origin = 'FILIACIO.ADRESA'
      Size = 80
    end
  end
  object dsFiliacio: TDataSource
    DataSet = qFiliacio
    Left = 648
    Top = 96
  end
  object qHistorico: TQuery
    Active = True
    DatabaseName = 'Interna'
    DataSource = dsFiliacio
    SQL.Strings = (
      
        'SELECT * FROM TRACTAMENTS WHERE C_HISTORIA = :NUM_HIST and Not C' +
        '_Prestacio in (Select c_Prestacio from DretsPresta dp where c_Dr' +
        'et = "P110")'
      'ORDER BY DATA_INGRES DESC')
    Left = 568
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUM_HIST'
        ParamType = ptUnknown
        Size = 4
      end>
  end
end
