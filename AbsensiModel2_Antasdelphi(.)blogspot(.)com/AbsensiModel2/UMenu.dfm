object FLapABSEN: TFLapABSEN
  Left = 420
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'LAPORAN'
  ClientHeight = 291
  ClientWidth = 449
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 11
    Top = 54
    Width = 430
    Height = 227
    TabOrder = 0
    object Label5: TLabel
      Left = 25
      Top = 117
      Width = 48
      Height = 19
      Caption = 'Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object shp1: TShape
      Left = 11
      Top = 110
      Width = 403
      Height = 1
      Pen.Color = clGray
    end
    object shp2: TShape
      Left = 11
      Top = 149
      Width = 403
      Height = 1
      Pen.Color = clGray
    end
    object Label3: TLabel
      Left = 240
      Top = 116
      Width = 10
      Height = 23
      Caption = '-'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 16
      Top = 198
      Width = 161
      Height = 13
      Caption = 'Loading... Harap Tunggu !!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object TDTTanggalAwal: TDateTimePicker
      Left = 89
      Top = 117
      Width = 152
      Height = 23
      CalColors.TitleBackColor = clLime
      Date = 41205.410351018520000000
      Format = 'dd MMMM yyyy'
      Time = 41205.410351018520000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = TDTTanggalAwalChange
    end
    object TDTTanggalAkhir: TDateTimePicker
      Left = 252
      Top = 116
      Width = 145
      Height = 23
      Date = 41206.664803032410000000
      Format = 'dd MMMM yyyy'
      Time = 41206.664803032410000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitProses: TBitBtn
      Left = 225
      Top = 160
      Width = 91
      Height = 28
      Caption = 'Preview'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitProsesClick
    end
    object BitKeluar: TBitBtn
      Left = 320
      Top = 160
      Width = 91
      Height = 28
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitKeluarClick
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 0
      Width = 417
      Height = 105
      TabOrder = 4
      object Label1: TLabel
        Left = 25
        Top = 22
        Width = 25
        Height = 19
        Caption = 'NIP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 25
        Top = 53
        Width = 89
        Height = 19
        Caption = 'Nama Pegawai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 22
        Top = 76
        Width = 41
        Height = 19
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LabelStatus: TLabel
        Left = 145
        Top = 82
        Width = 5
        Height = 13
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdID: TEdit
        Left = 145
        Top = 18
        Width = 161
        Height = 25
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'EdID'
        OnKeyPress = EdIDKeyPress
      end
      object BitButtonBitCari: TBitBtn
        Left = 312
        Top = 18
        Width = 78
        Height = 25
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitButtonBitCariClick
      end
      object EdNama: TEdit
        Left = 145
        Top = 53
        Width = 248
        Height = 23
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = 'EdNama'
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 152
      Width = 209
      Height = 41
      Caption = 'Model untuk Report By All'
      TabOrder = 5
      object RBModel1: TRadioButton
        Left = 24
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Model 1'
        TabOrder = 0
      end
      object RBModel2: TRadioButton
        Left = 104
        Top = 16
        Width = 90
        Height = 17
        Caption = 'Model 2'
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 10
    Top = 8
    Width = 432
    Height = 41
    Caption = 'Panel1'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 12
      Width = 65
      Height = 13
      Caption = 'Report By :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RBPerson: TRadioButton
      Left = 120
      Top = 14
      Width = 113
      Height = 17
      Caption = 'Person'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RBPersonClick
    end
    object RBALL: TRadioButton
      Left = 256
      Top = 14
      Width = 113
      Height = 17
      Caption = 'ALL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RBALLClick
    end
  end
  object ADOKaryawan: TADOQuery
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    Filter = 'ADOKaryawan'
    Parameters = <>
    SQL.Strings = (
      'Select*from tbl_Karyawan')
    Left = 14
    Top = 28
    object ADOKaryawanNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOKaryawanNama: TWideStringField
      FieldName = 'Nama'
      Size = 30
    end
    object ADOKaryawanJenisKelamin: TWideStringField
      FieldName = 'JenisKelamin'
      Size = 10
    end
    object ADOKaryawanTempat_Lahir: TWideStringField
      FieldName = 'Tempat_Lahir'
      Size = 30
    end
    object ADOKaryawanTanggal_Lahir: TDateTimeField
      FieldName = 'Tanggal_Lahir'
    end
    object ADOKaryawanAlamat: TWideStringField
      FieldName = 'Alamat'
      Size = 50
    end
    object ADOKaryawanNoTelepon: TWideStringField
      FieldName = 'NoTelepon'
    end
    object ADOKaryawanStatus: TBooleanField
      FieldName = 'Status'
    end
  end
  object ADOProses: TADOQuery
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TBL_ABSEN')
    Left = 16
    Top = 71
    object ADOProsesNamakaryawan: TStringField
      FieldKind = fkLookup
      FieldName = 'Namakaryawan'
      LookupDataSet = ADOKaryawan
      LookupKeyFields = 'NIK'
      LookupResultField = 'Nama'
      KeyFields = 'NIK'
      Size = 30
      Lookup = True
    end
    object ADOProsesNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOProsesTanggalAbsen: TDateTimeField
      FieldName = 'TanggalAbsen'
    end
    object ADOProsesMasuk: TDateTimeField
      FieldName = 'Masuk'
    end
    object ADOProsesPulang: TDateTimeField
      FieldName = 'Pulang'
    end
    object ADOProsesIzin: TSmallintField
      FieldName = 'Izin'
    end
    object ADOProsesCuti: TSmallintField
      FieldName = 'Cuti'
    end
    object ADOProsesKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object ADOProsesFlag: TWideStringField
      FieldName = 'Flag'
      Size = 50
    end
  end
  object mysql_proses: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    Left = 12
    Top = 239
  end
  object mysql_open: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    Left = 83
    Top = 238
  end
  object mysql_tampil: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    Left = 137
    Top = 241
  end
  object ADOIZIN: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    Left = 242
    Top = 8
  end
  object ADOCUTI: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    Left = 274
    Top = 8
  end
  object ADODINAS: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    Left = 314
    Top = 16
  end
end
