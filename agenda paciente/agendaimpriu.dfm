object agendaimpri: Tagendaimpri
  Left = 0
  Top = 0
  Width = 916
  Height = 639
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
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
  Page.Columns = 1
  Page.Orientation = poLandscape
  Page.PaperSize = A5
  Page.Values = (
    50.000000000000000000
    1480.000000000000000000
    50.000000000000000000
    2100.000000000000000000
    50.000000000000000000
    20.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object DetailBand1: TQRBand
    Left = 19
    Top = 19
    Width = 890
    Height = 715
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
      1891.770833333333000000
      2354.791666666667000000)
    BandType = rbDetail
    object QRImage1: TQRImage
      Left = 0
      Top = 0
      Width = 849
      Height = 593
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        1568.979166666667000000
        0.000000000000000000
        0.000000000000000000
        2246.312500000000000000)
      AutoSize = True
      Stretch = True
    end
  end
end
