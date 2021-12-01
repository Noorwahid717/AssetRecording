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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 270
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = -24
    ExplicitWidth = 541
    ExplicitHeight = 321
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
    object Deskripsi: TLabeledEdit
      Left = 440
      Top = 133
      Width = 193
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Deskripsi'
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object KodeKategoriSaldo: TLabeledEdit
      Left = 440
      Top = 80
      Width = 193
      Height = 21
      EditLabel.Width = 96
      EditLabel.Height = 13
      EditLabel.Caption = 'Kode Kategori Saldo'
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object KodeKategoriAset: TLabeledEdit
      Left = 112
      Top = 133
      Width = 193
      Height = 21
      EditLabel.Width = 92
      EditLabel.Height = 13
      EditLabel.Caption = 'Kode Kategori Aset'
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object BiayaAkuisisi: TLabeledEdit
      Left = 440
      Top = 29
      Width = 193
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Biaya Akuisisi'
      LabelPosition = lpLeft
      TabOrder = 4
    end
    object TanggalAkuisisi: TLabeledEdit
      Left = 112
      Top = 188
      Width = 193
      Height = 21
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = 'Tanggal Akuisisi'
      LabelPosition = lpLeft
      TabOrder = 5
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
    ExplicitLeft = 168
    ExplicitTop = 112
    ExplicitWidth = 185
    object btnBatal: TButton
      Left = 558
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 0
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
end
