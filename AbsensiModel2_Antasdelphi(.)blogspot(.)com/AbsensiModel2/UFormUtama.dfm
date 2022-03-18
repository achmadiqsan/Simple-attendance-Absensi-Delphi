object fUtama: TfUtama
  Left = -7
  Top = 201
  Width = 1032
  Height = 746
  Caption = 'DISNAKERTRANS PROV. KALIMANTAN TENGAH'
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object stat1: TStatusBar
    Left = 0
    Top = 673
    Width = 1024
    Height = 19
    Panels = <>
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 16
    object ABSEN1: TMenuItem
      Caption = 'Menu'
      object formMenu: TMenuItem
        Caption = 'Mulai Absen'
        OnClick = formMenuClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object EntryPegawai1: TMenuItem
        Caption = 'Entry Pegawai'
        OnClick = EntryPegawai1Click
      end
      object KELUAR1: TMenuItem
        Caption = 'Data Pegawai'
        OnClick = KELUAR1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Keluar2: TMenuItem
        Caption = 'Keluar'
        OnClick = Keluar2Click
      end
    end
    object Laporan1: TMenuItem
      Caption = 'Laporan'
      object Absensi1: TMenuItem
        Caption = 'Absensi'
        OnClick = Absensi1Click
      end
    end
  end
end
