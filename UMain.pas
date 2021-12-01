unit UMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    kategori_aset_tetap: TAction;
    DataMaster: TAction;
    DataMaster1: TMenuItem;
    KategoriAsetTetap1: TMenuItem;
    Transaksi: TAction;
    Laporan: TAction;
    ransaksi1: TMenuItem;
    Laporan1: TMenuItem;
    aset_aktif: TAction;
    AsetAktif1: TMenuItem;
    daftar_akun_saldo: TAction;
    kategori_akun: TAction;
    daftarakunsaldo1: TMenuItem;
    kategoriakun1: TMenuItem;
    procedure DataMasterExecute(Sender: TObject);
    procedure TransaksiExecute(Sender: TObject);
    procedure LaporanExecute(Sender: TObject);
    procedure kategori_aset_tetapExecute(Sender: TObject);
    procedure aset_aktifExecute(Sender: TObject);
    procedure daftar_akun_saldoExecute(Sender: TObject);
    procedure kategori_akunExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

uses UAsetAktif, UKategoriAkun, UKategoriAsetTetap, UDaftarAkunSaldo;

procedure TFMain.aset_aktifExecute(Sender: TObject);
begin
  // Panggil Form Jenis Barang
  if Application.FindComponent('fAsetAktif') = nil then
  begin
    Application.CreateForm(TfAsetAktif, fAsetAktif);
    fAsetAktif.Show;
  end
  else
    fAsetAktif.BringToFront;
  fAsetAktif.Show;

end;

procedure TFMain.daftar_akun_saldoExecute(Sender: TObject);
begin
  if Application.FindComponent('fDaftarAkunSaldo') = nil then
  begin
    Application.CreateForm(TfDaftarAkunSaldo, fDaftarAkunSaldo);
    fDaftarAkunSaldo.Show;
  end
  else
    fDaftarAkunSaldo.BringToFront;
  fDaftarAkunSaldo.Show;
end;

procedure TFMain.DataMasterExecute(Sender: TObject);
begin
  //
end;

procedure TFMain.kategori_akunExecute(Sender: TObject);
begin
  if Application.FindComponent('fKategoriAkun') = nil then
  begin
    Application.CreateForm(TfKategoriAkun, fKategoriAkun);
    fKategoriAkun.Show;
  end
  else
    fKategoriAkun.BringToFront;
  fKategoriAkun.Show;
end;

procedure TFMain.kategori_aset_tetapExecute(Sender: TObject);
begin
  // Panggil Form Jenis Barang
  if Application.FindComponent('fKategoriAsetTetap') = nil then
  begin
    Application.CreateForm(TfKategoriAsetTetap, fKategoriAsetTetap);
    fKategoriAsetTetap.Show;
  end
  else
    fKategoriAsetTetap.BringToFront;
  fKategoriAsetTetap.Show;
end;

procedure TFMain.LaporanExecute(Sender: TObject);
begin
  //
end;

procedure TFMain.TransaksiExecute(Sender: TObject);
begin
  //
end;

end.
