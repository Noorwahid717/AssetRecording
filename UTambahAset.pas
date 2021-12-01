unit UTambahAset;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfTambahAset = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Kode: TLabeledEdit;
    Deskripsi: TLabeledEdit;
    KodeKategoriSaldo: TLabeledEdit;
    KodeKategoriAset: TLabeledEdit;
    BiayaAkuisisi: TLabeledEdit;
    TanggalAkuisisi: TLabeledEdit;
    Nama: TLabeledEdit;
    btnBatal: TButton;
    btnSimpan: TButton;
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTambahAset: TfTambahAset;

implementation

{$R *.dfm}

uses UDM;

procedure TfTambahAset.btnSimpanClick(Sender: TObject);
begin
  try
    with dm.UniStoredProc1 do
    begin
      SQL.Clear;
      CreateProcCall('sp_tbl_aset_aktif_insert');
      ParamByName('pKode').AsString := Kode.Text;
      ParamByName('pNama').AsString := Nama.Text;
      ParamByName('pKode_kategori_aset').AsString := KodeKategoriAset.Text;
      ParamByName('pTanggal').AsString := TanggalAkuisisi.Text;
      ParamByName('pBiaya_akuisisi').AsString := BiayaAkuisisi.Text;
      ParamByName('pKode_kategori_saldo').AsString := KodeKategoriSaldo.Text;
      ParamByName('pDeskripsi').AsString := Deskripsi.Text;
      Execute;
      { message }
      MessageDlg('Data Berhasil disimpan', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes], 0);
      { Refresh }

    end;
    Close;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

end.
