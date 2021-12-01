program PencatatanAset;

uses
  Vcl.Forms,
  UMain in 'C:\Users\noorw\ProjectDelphi\vclcrud\UMain.pas' {FMain},
  UInduk in 'C:\Users\noorw\ProjectDelphi\vclcrud\Lib\UInduk.pas' {fInduk},
  UDM in 'C:\Users\noorw\ProjectDelphi\vclcrud\Lib\UDM.pas' {DM: TDataModule},
  UKategoriAkun in 'C:\Users\noorw\ProjectDelphi\vclcrud\UKategoriAkun.pas' {fKategoriAkun},
  UKategoriAsetTetap in 'C:\Users\noorw\ProjectDelphi\vclcrud\UKategoriAsetTetap.pas' {fKategoriAsetTetap},
  UAsetAktif in 'C:\Users\noorw\ProjectDelphi\vclcrud\UAsetAktif.pas' {fAsetAktif},
  UDaftarAkunSaldo in 'C:\Users\noorw\ProjectDelphi\vclcrud\UDaftarAkunSaldo.pas' {fDaftarAkunSaldo},
  UTambahAset in 'C:\Users\noorw\ProjectDelphi\vclcrud\UTambahAset.pas' {fTambahAset};

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
