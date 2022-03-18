object FAbsen: TFAbsen
  Left = -1
  Top = 35
  Width = 1032
  Height = 746
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 64
    Align = alTop
    Alignment = taLeftJustify
    Caption = '      Menu Absensi'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Elephant'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 1024
    Height = 648
    Align = alClient
    BevelInner = bvLowered
    Caption = 'Panel1'
    Color = clGreen
    ParentBackground = False
    TabOrder = 1
    object shp1: TShape
      Left = 43
      Top = 14
      Width = 926
      Height = 152
      Brush.Color = clSilver
    end
    object Shape1: TShape
      Left = 281
      Top = 22
      Width = 222
      Height = 65
      Brush.Color = clSilver
      Pen.Color = clGray
      Shape = stRoundRect
    end
    object Label7: TLabel
      Left = 289
      Top = 25
      Width = 205
      Height = 65
      Alignment = taCenter
      AutoSize = False
      Caption = '00:00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape2: TShape
      Left = 53
      Top = 115
      Width = 905
      Height = 1
      Pen.Color = clGray
    end
    object Shape3: TShape
      Left = 53
      Top = 124
      Width = 905
      Height = 1
      Pen.Color = clGray
    end
    object Shape4: TShape
      Left = 54
      Top = 157
      Width = 905
      Height = 1
      Pen.Color = clGray
    end
    object btn1: TSpeedButton
      Left = 972
      Top = 172
      Width = 23
      Height = 22
      Hint = 'Show ScrollBar'
      Caption = 'v'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btn1Click
    end
    object btn2: TSpeedButton
      Left = 972
      Top = 196
      Width = 23
      Height = 22
      Hint = 'Hide ScrollBar'
      Caption = 'x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btn2Click
    end
    object Label3: TLabel
      Left = 44
      Top = 586
      Width = 720
      Height = 20
      Align = alCustom
      Caption = 
        'Tidak Bisa Absen Masuk,Pilih sesuai ketentuan dan Isi Keterangan' +
        ' Kenapa Tidak Absen !!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 59
      Top = 132
      Width = 52
      Height = 16
      Caption = 'Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape5: TShape
      Left = 507
      Top = 22
      Width = 222
      Height = 65
      Brush.Color = clSilver
      Pen.Color = clGray
      Shape = stRoundRect
    end
    object Label1: TLabel
      Left = 515
      Top = 26
      Width = 205
      Height = 65
      Alignment = taCenter
      AutoSize = False
      Caption = '00:00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape6: TShape
      Left = 733
      Top = 22
      Width = 222
      Height = 65
      Brush.Color = clSilver
      Pen.Color = clGray
      Shape = stRoundRect
    end
    object Label2: TLabel
      Left = 740
      Top = 26
      Width = 205
      Height = 65
      Alignment = taCenter
      AutoSize = False
      Caption = '00:00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 728
      Top = 133
      Width = 216
      Height = 13
      Caption = '[Isi keterangan langsung dikolom Keterangan]'
      Transparent = True
    end
    object Shape7: TShape
      Left = 54
      Top = 22
      Width = 222
      Height = 65
      Brush.Color = clSilver
      Pen.Color = clGray
      Shape = stRoundRect
    end
    object Label6: TLabel
      Left = 68
      Top = 27
      Width = 185
      Height = 60
      Alignment = taCenter
      AutoSize = False
      Caption = '-'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RBMasuk: TRadioButton
      Left = 350
      Top = 130
      Width = 113
      Height = 17
      Caption = 'Masuk'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object RBPulang: TRadioButton
      Left = 450
      Top = 132
      Width = 121
      Height = 17
      Caption = 'Pulang'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = RBPulangClick
    end
    object RBCuti: TRadioButton
      Left = 644
      Top = 131
      Width = 61
      Height = 17
      Caption = 'Cuti'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = RBCutiClick
    end
    object RBIzin: TRadioButton
      Left = 552
      Top = 131
      Width = 60
      Height = 17
      Caption = 'Izin'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnClick = RBIzinClick
    end
    object DBGrid1: TDBGrid
      Left = 43
      Top = 171
      Width = 924
      Height = 409
      Color = clGray
      DataSource = DataSource1
      FixedColor = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnColExit = DBGrid1ColExit
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'FLAG'
          Title.Alignment = taCenter
          Title.Caption = '-'
          Title.Color = clMedGray
          Width = 30
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'NIK'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Color = clMedGray
          Width = 100
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Nama_Karyawan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nama Karyawan'
          Title.Color = clMedGray
          Width = 225
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'Masuk'
          Title.Alignment = taCenter
          Title.Color = clMedGray
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'Pulang'
          Title.Alignment = taCenter
          Title.Color = clMedGray
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'Izin'
          Title.Alignment = taCenter
          Title.Color = clMedGray
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'Cuti'
          Title.Alignment = taCenter
          Title.Color = clMedGray
          Width = 70
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Keterangan'
          Title.Alignment = taCenter
          Title.Color = clMedGray
          Width = 250
          Visible = True
        end>
    end
    object BitKeluar: TBitBtn
      Left = 876
      Top = 583
      Width = 91
      Height = 27
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitKeluarClick
    end
    object CEKLIST: TCheckBox
      Left = 696
      Top = 204
      Width = 15
      Height = 17
      Color = clWhite
      ParentColor = False
      TabOrder = 6
      Visible = False
      OnMouseUp = CEKLISTMouseUp
    end
    object EdCatatan: TDBEdit
      Left = 728
      Top = 209
      Width = 121
      Height = 21
      DataField = 'Keterangan'
      DataSource = DataSource1
      TabOrder = 7
      Visible = False
      OnKeyPress = EdCatatanKeyPress
    end
    object DTTanggal: TDateTimePicker
      Left = 138
      Top = 128
      Width = 185
      Height = 23
      CalColors.TitleBackColor = clLime
      Date = 41205.410351018520000000
      Format = 'dd MMMM yyyy'
      Time = 41205.410351018520000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnCloseUp = DTTanggalCloseUp
      OnChange = DTTanggalChange
    end
    object Panel3: TPanel
      Left = 282
      Top = 89
      Width = 220
      Height = 23
      BevelOuter = bvLowered
      Caption = 'Waktu Indonesia Barat'
      Color = clSilver
      TabOrder = 9
    end
    object Panel4: TPanel
      Left = 509
      Top = 89
      Width = 220
      Height = 23
      BevelOuter = bvLowered
      Caption = 'Waktu Indonesia Tengah'
      Color = clSilver
      TabOrder = 10
    end
    object Panel5: TPanel
      Left = 736
      Top = 89
      Width = 220
      Height = 23
      BevelOuter = bvLowered
      Caption = 'Waktu Indonesia Timur'
      Color = clSilver
      TabOrder = 11
    end
    object Panel6: TPanel
      Left = 55
      Top = 89
      Width = 220
      Height = 23
      BevelOuter = bvLowered
      Caption = 'Hari Sekarang'
      Color = clSilver
      TabOrder = 12
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 704
    Top = 16
  end
  object ADOTampil: TADOQuery
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from Tbl_Absen')
    Left = 738
    Top = 17
    object ADOTampilNama: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama'
      LookupDataSet = ADOKaryawan
      LookupKeyFields = 'NIK'
      LookupResultField = 'Nama'
      KeyFields = 'NIK'
      Size = 50
      Lookup = True
    end
    object ADOTampilNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOTampilTanggalAbsen: TDateTimeField
      FieldName = 'TanggalAbsen'
    end
    object ADOTampilMasuk: TDateTimeField
      FieldName = 'Masuk'
    end
    object ADOTampilPulang: TDateTimeField
      FieldName = 'Pulang'
    end
    object ADOTampilIzin: TSmallintField
      FieldName = 'Izin'
    end
    object ADOTampilCuti: TSmallintField
      FieldName = 'Cuti'
    end
    object ADOTampilKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object ADOTampilFlag: TWideStringField
      FieldName = 'Flag'
      Size = 50
    end
  end
  object ADOKaryawan: TADOQuery
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from tbl_Karyawan')
    Left = 776
    Top = 16
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
  object DataSource1: TDataSource
    DataSet = ADOShow
    Left = 66
    Top = 450
  end
  object ADOSimpan: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_absen')
    Left = 808
    Top = 16
  end
  object ADOCari: TADOQuery
    Connection = DModule.conKoneksi
    Parameters = <>
    Left = 840
    Top = 16
  end
  object ADO_proses: TADOQuery
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_absen')
    Left = 24
    Top = 238
    object ADO_prosesNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADO_prosesTanggalAbsen: TDateTimeField
      FieldName = 'TanggalAbsen'
    end
    object ADO_prosesMasuk: TDateTimeField
      FieldName = 'Masuk'
    end
    object ADO_prosesPulang: TDateTimeField
      FieldName = 'Pulang'
    end
    object ADO_prosesIzin: TSmallintField
      FieldName = 'Izin'
    end
    object ADO_prosesCuti: TSmallintField
      FieldName = 'Cuti'
    end
    object ADO_prosesKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object ADO_prosesFlag: TWideStringField
      FieldName = 'Flag'
      Size = 50
    end
    object ADO_prosesNama: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama'
      LookupDataSet = ADOKaryawan
      LookupKeyFields = 'NIK'
      LookupResultField = 'Nama'
      KeyFields = 'NIK'
      Size = 50
      Lookup = True
    end
  end
  object ADO_open: TADOQuery
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_tempABS')
    Left = 59
    Top = 238
    object ADO_openFlag: TWideStringField
      FieldName = 'Flag'
      Size = 2
    end
    object ADO_openNIK: TWideStringField
      FieldName = 'NIK'
      Size = 15
    end
    object ADO_openNama_Karyawan: TWideStringField
      FieldName = 'Nama_Karyawan'
      Size = 50
    end
    object ADO_openMasuk: TWideStringField
      FieldName = 'Masuk'
      Size = 6
    end
    object ADO_openPulang: TWideStringField
      FieldName = 'Pulang'
      Size = 6
    end
    object ADO_openIzin: TWideStringField
      FieldName = 'Izin'
      Size = 6
    end
    object ADO_openCuti: TWideStringField
      FieldName = 'Cuti'
      Size = 6
    end
    object ADO_openKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object ADOShow: TADOTable
    Connection = DModule.conKoneksi
    CursorType = ctStatic
    TableName = 'tbl_tempABS'
    Left = 32
    Top = 448
    object ADOShowFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 2
    end
    object ADOShowNIK: TWideStringField
      FieldName = 'NIK'
      Size = 15
    end
    object ADOShowNama_Karyawan: TWideStringField
      FieldName = 'Nama_Karyawan'
      Size = 50
    end
    object ADOShowMasuk: TWideStringField
      FieldName = 'Masuk'
      Size = 6
    end
    object ADOShowPulang: TWideStringField
      FieldName = 'Pulang'
      Size = 6
    end
    object ADOShowIzin: TWideStringField
      FieldName = 'Izin'
      Size = 6
    end
    object ADOShowCuti: TWideStringField
      FieldName = 'Cuti'
      Size = 6
    end
    object ADOShowKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
end
