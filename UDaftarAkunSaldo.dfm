inherited fDaftarAkunSaldo: TfDaftarAkunSaldo
  Caption = 'Daftar Akun Saldo'
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited Button1: TButton
      PopupMenu = PopupMenu1
    end
    object Button2: TButton
      Left = 97
      Top = 130
      Width = 75
      Height = 25
      Action = Insert
      TabOrder = 1
    end
    object Kode: TLabeledEdit
      Left = 112
      Top = 18
      Width = 209
      Height = 23
      EditLabel.Width = 27
      EditLabel.Height = 15
      EditLabel.Caption = 'Kode'
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object Nama: TLabeledEdit
      Left = 112
      Top = 51
      Width = 209
      Height = 23
      EditLabel.Width = 32
      EditLabel.Height = 15
      EditLabel.Caption = 'Nama'
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object KodeKategoriAkun: TLabeledEdit
      Left = 112
      Top = 86
      Width = 209
      Height = 23
      EditLabel.Width = 105
      EditLabel.Height = 15
      EditLabel.Caption = 'Kode Kategori Akun'
      LabelPosition = lpLeft
      TabOrder = 4
    end
    object Pajak: TLabeledEdit
      Left = 408
      Top = 18
      Width = 169
      Height = 23
      EditLabel.Width = 28
      EditLabel.Height = 15
      EditLabel.Caption = 'Pajak'
      LabelPosition = lpLeft
      TabOrder = 5
    end
    object Saldo: TLabeledEdit
      Left = 408
      Top = 51
      Width = 169
      Height = 23
      EditLabel.Width = 58
      EditLabel.Height = 15
      EditLabel.Caption = 'Saldo (IDR)'
      LabelPosition = lpLeft
      TabOrder = 6
    end
  end
  inherited ActionList1: TActionList
    inherited Insert: TAction
      OnExecute = InsertExecute
    end
  end
end
