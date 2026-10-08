object wDataUnicas: TwDataUnicas
  OldCreateOrder = False
  Left = 748
  Top = 238
  Height = 207
  Width = 450
  object http: TIdHTTP
    IOHandler = ssl
    MaxLineAction = maException
    Port = 443
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    ConnectTimeout = 10000
    Left = 166
    Top = 14
  end
  object ssl: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv23
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 219
    Top = 14
  end
  object Encoder: TIdEncoderMIME
    FillChar = '='
    Left = 208
    Top = 72
  end
end
