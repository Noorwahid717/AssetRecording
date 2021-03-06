object fTambahAset: TfTambahAset
  Left = 0
  Top = 0
  Caption = 'Tambah Aset'
  ClientHeight = 311
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 270
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 43
      Top = 128
      Width = 65
      Height = 13
      Caption = 'Kategori Aset'
    end
    object Label2: TLabel
      Left = 33
      Top = 169
      Width = 75
      Height = 13
      Caption = 'Tanggal Akuisisi'
    end
    object Label3: TLabel
      Left = 336
      Top = 83
      Width = 96
      Height = 13
      Caption = 'Kategori Akun Saldo'
    end
    object Kode: TLabeledEdit
      Left = 112
      Top = 29
      Width = 121
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Kode'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object Nama: TLabeledEdit
      Left = 112
      Top = 80
      Width = 193
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nama'
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object ListKategoriAset: TDBLookupComboBox
      Left = 114
      Top = 126
      Width = 145
      Height = 21
      KeyField = 'Kode'
      ListField = 'Nama'
      ListSource = dsKategoriAset
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 114
      Top = 167
      Width = 186
      Height = 21
      Date = 44536.000000000000000000
      Time = 0.880995185187202900
      TabOrder = 3
    end
    object BiayaAkuisisi: TLabeledEdit
      Left = 440
      Top = 29
      Width = 121
      Height = 21
      EditLabel.Width = 60
      EditLabel.Height = 13
      EditLabel.Caption = 'BiayaAkuisisi'
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 4
    end
    object ListKategoriAkun: TDBLookupComboBox
      Left = 440
      Top = 80
      Width = 145
      Height = 21
      KeyField = 'Kode'
      ListField = 'Nama'
      ListSource = dsKategoriAkun
      TabOrder = 5
    end
    object Deskripsi: TLabeledEdit
      Left = 440
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Deskripsi'
      LabelPosition = lpLeft
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 270
    Width = 684
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnBatal: TButton
      Left = 558
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 0
      OnClick = btnBatalClick
    end
    object btnSimpan: TButton
      Left = 440
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
  end
  object QKategoriAset: TUniQuery
    Connection = DM.UniConnection1
    SQL.Strings = (
      'SELECT'
      #9'tbl_kategori_aset_tetap.Kode, '
      #9'tbl_kategori_aset_tetap.Nama'
      'FROM'
      #9'tbl_kategori_aset_tetap')
    Active = True
    Left = 320
    Top = 216
    object QKategoriAsetKode: TStringField
      FieldName = 'Kode'
      FixedChar = True
      Size = 50
    end
    object QKategoriAsetNama: TStringField
      FieldName = 'Nama'
      Size = 255
    end
  end
  object dsKategoriAset: TDataSource
    DataSet = QKategoriAset
    Left = 472
    Top = 216
  end
  object QKategoriAkun: TUniQuery
    Connection = DM.UniConnection1
    SQL.Strings = (
      'SELECT '
      #9'tbl_daftar_akun_saldo.Kode, '
      #9'tbl_daftar_akun_saldo.Nama'
      'FROM'
      #9'tbl_daftar_akun_saldo')
    Active = True
    Left = 392
    Top = 216
    object QKategoriAkunKode: TStringField
      FieldName = 'Kode'
      FixedChar = True
      Size = 50
    end
    object QKategoriAkunNama: TStringField
      FieldName = 'Nama'
      Size = 255
    end
  end
  object dsKategoriAkun: TDataSource
    DataSet = QKategoriAkun
    Left = 560
    Top = 208
  end
end
