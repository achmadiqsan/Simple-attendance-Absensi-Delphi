object FListKaryawan: TFListKaryawan
  Left = 96
  Top = 90
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 614
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pDataKaryawan: TPanel
    Left = 5
    Top = 7
    Width = 790
    Height = 598
    Caption = 'pDataKaryawan'
    Color = clGreen
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 161
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Filter : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 568
      Width = 32
      Height = 13
      Caption = 'Label2'
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 41
      Width = 770
      Height = 521
      Color = clGray
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'NIK'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Nama'
          Title.Alignment = taCenter
          Width = 200
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'JenisKelamin'
          Title.Alignment = taCenter
          Title.Caption = 'Jenis Kelamin'
          Width = 80
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Tempat_Lahir'
          Title.Alignment = taCenter
          Title.Caption = 'Tempat Lahir'
          Width = 100
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Tanggal_Lahir'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal Lahir'
          Width = 100
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'NoTelepon'
          Title.Alignment = taCenter
          Title.Caption = 'Telepon'
          Width = 100
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Status'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object BitCari: TBitBtn
      Left = 683
      Top = 10
      Width = 81
      Height = 25
      Caption = 'CARI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitCariClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        080000000000000100000000000000000000000100000000000038669200FFFF
        D100FFFFFD00FFFCE300B77D78000F6EE000339EFF0036A3FE00B78A7F00C098
        8600F6DAA200D0A59000EAA86B00FFFFD500F0C08500FCFBCC00D9C8AA00D4AD
        9400FFEEB000EFBC7F00D8B59900FCDD9B00FFFFEC00A7847300FFFFDA00FDF4
        C100FCF2BA00A87B7E00FEE2A000FBEAB2003A4C5E00C5ACA6009F736E00BA97
        7D00FEF8C5008B767400BCA3A300F3EBE500EBE0B700B6837D00146CCE00F0D4
        A300F6D09400FBDEA200C18E8700F8E2B400F3EEC400F0C58F00A0CAE700F8F6
        CB00B596810036A0FF00EEB77E00F3EBD100C9A29000FFFFF700FAD79500E3CF
        B000915C5900FFFCCA00EEEAC1003AAAFF00FFFECF0000000000000000000000
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
        00000000000000000000000000000000000000000000000000003F1E1B3F3F3F
        3F3F3F3F3F3F3F3F3F3F000500043F3F3F3F3F3F3F3F3F3F3F3F06330500043F
        3F3F3F3F3F3F3F3F3F3F3F07060500043F3F3F3F3F3F3F3F3F3F3F3F07060500
        1B3F3F3F3F3F3F3F3F3F3F3F3F0706281E3F3A08362C3F3F3F3F3F3F3F3F3D30
        2317263E0F0F39093F3F3F3F3F3F3F240B123B3E3E0D1625203F3F3F3F3F3F04
        0A2A193E18160202103F3F3F3F3F3F0B15341A01183702033C273F3F3F3F3F14
        380C0A3E0D03030D31323F3F3F3F3F111C0C131D010101012E083F3F3F3F3F08
        1D2D2F0E0A19223E103F3F3F3F3F3F3F140203130C0E2B1A173F3F3F3F3F3F3F
        3F1F3512151C29093F3F3F3F3F3F3F3F3F3F2109110B3F3F3F3F}
    end
    object BitKeluar: TBitBtn
      Left = 687
      Top = 566
      Width = 89
      Height = 24
      Caption = 'KELUAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitKeluarClick
    end
    object BitTampil: TBitBtn
      Left = 8
      Top = 10
      Width = 137
      Height = 25
      Caption = 'Tampilkan Semua'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitTampilClick
    end
    object EdCari: TEdit
      Left = 360
      Top = 12
      Width = 316
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'eCari'
      OnKeyPress = EdCariKeyPress
    end
    object CBFilter: TComboBox
      Left = 208
      Top = 12
      Width = 145
      Height = 23
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        'NIK'
        'Nama'
        'Jenis_Kelamin'
        'Tempat_Lahir'
        'Telepon'
        'Status')
    end
    object DCHKStatus: TDBCheckBox
      Left = 585
      Top = 110
      Width = 17
      Height = 17
      Color = clWhite
      DataField = 'Status'
      DataSource = DataSource1
      ParentColor = False
      ReadOnly = True
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object ADOList: TADOQuery
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_karyawan')
    Left = 16
    Top = 96
    object ADOListNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOListNama: TWideStringField
      FieldName = 'Nama'
      Size = 30
    end
    object ADOListJenisKelamin: TWideStringField
      FieldName = 'JenisKelamin'
      Size = 10
    end
    object ADOListTempat_Lahir: TWideStringField
      FieldName = 'Tempat_Lahir'
      Size = 30
    end
    object ADOListTanggal_Lahir: TDateTimeField
      FieldName = 'Tanggal_Lahir'
    end
    object ADOListAlamat: TWideStringField
      FieldName = 'Alamat'
      Size = 50
    end
    object ADOListNoTelepon: TWideStringField
      FieldName = 'NoTelepon'
    end
    object ADOListStatus: TBooleanField
      FieldName = 'Status'
    end
    object ADOListPassword: TWideStringField
      FieldName = 'Password'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOList
    Left = 48
    Top = 96
  end
end
