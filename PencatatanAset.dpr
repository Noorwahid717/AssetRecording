program PencatatanAset;

uses
  Vcl.Forms,
  UMain in 'F:\project\AssetRecording\UMain.pas' {FMain},
  UInduk in 'F:\project\AssetRecording\Lib\UInduk.pas' {fInduk},
  UDM in 'F:\project\AssetRecording\Lib\UDM.pas' {DM: TDataModule},
  UKategoriAkun in 'F:\project\AssetRecording\UKategoriAkun.pas' {fKategoriAkun},
  UKategoriAsetTetap in 'F:\project\AssetRecording\UKategoriAsetTetap.pas' {fKategoriAsetTetap},
  UAsetAktif in 'F:\project\AssetRecording\UAsetAktif.pas' {fAsetAktif},
  UDaftarAkunSaldo in 'F:\project\AssetRecording\UDaftarAkunSaldo.pas' {fDaftarAkunSaldo},
  UTambahAset in 'F:\project\AssetRecording\UTambahAset.pas' {fTambahAset};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TfAsetAktif, fAsetAktif);
  Application.CreateForm(TfDaftarAkunSaldo, fDaftarAkunSaldo);
  Application.CreateForm(TfTambahAset, fTambahAset);
  Application.Run;
end.
