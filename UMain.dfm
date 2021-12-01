object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'FMain'
  ClientHeight = 463
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 528
    Top = 128
    object DataMaster1: TMenuItem
      Action = DataMaster
      object AsetAktif1: TMenuItem
        Action = aset_aktif
        Caption = 'Aset Aktif'
      end
      object daftarakunsaldo1: TMenuItem
        Action = daftar_akun_saldo
        Caption = 'Daftar Akun Saldo'
      end
      object KategoriAsetTetap1: TMenuItem
        Action = kategori_aset_tetap
        Caption = 'Kategori Aset Tetap'
      end
      object kategoriakun1: TMenuItem
        Action = kategori_akun
        Caption = 'Kategori Akun'
      end
    end
    object ransaksi1: TMenuItem
      Action = Transaksi
    end
    object Laporan1: TMenuItem
      Action = Laporan
    end
  end
  object ActionList1: TActionList
    Left = 528
    Top = 200
    object aset_aktif: TAction
      Category = 'Fitur'
      Caption = 'Aset_aktif'
      OnExecute = aset_aktifExecute
    end
    object daftar_akun_saldo: TAction
      Category = 'Fitur'
      Caption = 'daftar_akun_saldo'
      OnExecute = daftar_akun_saldoExecute
    end
    object kategori_aset_tetap: TAction
      Category = 'Fitur'
      Caption = 'kategori_aset_tetap'
      OnExecute = kategori_aset_tetapExecute
    end
    object DataMaster: TAction
      Category = 'Control'
      Caption = 'DataMaster'
      OnExecute = DataMasterExecute
    end
    object Transaksi: TAction
      Category = 'Control'
      Caption = 'Transaksi'
      OnExecute = TransaksiExecute
    end
    object Laporan: TAction
      Category = 'Control'
      Caption = 'Laporan'
      OnExecute = LaporanExecute
    end
    object kategori_akun: TAction
      Category = 'Fitur'
      Caption = 'kategori_akun'
      OnExecute = kategori_akunExecute
    end
  end
end
