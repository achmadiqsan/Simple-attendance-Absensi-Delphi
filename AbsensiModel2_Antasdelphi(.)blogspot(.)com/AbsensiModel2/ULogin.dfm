object FLogin: TFLogin
  Left = 323
  Top = 134
  BorderStyle = bsNone
  ClientHeight = 247
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 247
    Align = alClient
    BevelInner = bvRaised
    Caption = 'pnl1'
    Color = clGreen
    TabOrder = 0
    object shp1: TShape
      Left = 9
      Top = 12
      Width = 395
      Height = 223
      Brush.Color = clSilver
      Pen.Color = clGray
      Shape = stRoundRect
    end
    object grp1: TGroupBox
      Left = 53
      Top = 43
      Width = 309
      Height = 140
      Caption = 'Login'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 38
        Top = 51
        Width = 19
        Height = 13
        Caption = 'NIK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 39
        Top = 86
        Width = 54
        Height = 13
        Caption = 'Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdNIK: TEdit
        Left = 125
        Top = 50
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'EdNIK'
        OnKeyPress = EdNIKKeyPress
      end
      object EdPass: TEdit
        Left = 124
        Top = 80
        Width = 145
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
        Text = 'EdPass'
        OnKeyPress = EdPassKeyPress
      end
    end
    object BitLogin: TButton
      Left = 202
      Top = 186
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 1
      OnClick = BitLoginClick
    end
    object BitClose: TButton
      Left = 284
      Top = 185
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 2
      OnClick = BitCloseClick
    end
  end
  object ADOLogin: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    Left = 62
    Top = 190
  end
  object ADOKaryawan: TADOQuery
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from tbl_Karyawan')
    Left = 12
    Top = 190
  end
end
