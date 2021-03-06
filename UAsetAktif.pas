unit UAsetAktif;

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
  UInduk,
  Data.DB,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList,
  MemDS,
  DBAccess,
  Uni,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfAsetAktif = class(TfInduk)
    procedure TampilDataExecute(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAsetAktif: TfAsetAktif;

implementation

{$R *.dfm}

uses UDM, UTambahAset;

procedure TfAsetAktif.btnTambahClick(Sender: TObject);
begin
  inherited;

      if Application.FindComponent('fTambahAset') = nil then
      begin
        Application.CreateForm(TfTambahAset, fTambahAset);
        fTambahAset.ShowModal;

        if fTambahAset.ModalResult = mrOk then
        begin
          with dm.UniStoredProc1 do
            begin
              SQL.Clear;
              CreateProcCall('sp_tbl_aset_aktif_insert');
              ParamByName('pKode').AsString := fTambahAset.Kode.Text;
              ParamByName('pNama').AsString := fTambahAset.Nama.Text;
              ParamByName('pKode_kategori_aset').AsString := fTambahAset.QKategoriAsetKode.AsString;
              ParamByName('pTanggal').AsString := FormatDateTime('yyyy-mm-dd', fTambahAset.DateTimePicker1.Date);
              ParamByName('pBiaya_akuisisi').AsString := fTambahAset.BiayaAkuisisi.Text;
              ParamByName('pKode_kategori_saldo').AsString := fTambahAset.QKategoriAkunKode.AsString;
              ParamByName('pDeskripsi').AsString := fTambahAset.Deskripsi.Text;
              Execute;
              { message }
              MessageDlg('Data Berhasil disimpan', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes], 0);

              ShowMessage(SQL.Text);

            end;

            fTambahAset.Close;
        end;

      end
      else fTambahAset.ShowModal;
end;

procedure TfAsetAktif.TampilDataExecute(Sender: TObject);
begin
  inherited;
  with UniStoredProc1 do
  begin
    SQL.Clear;
    CreateProcCall('sp_tbl_aset_aktif_view');
    ExecProc;
  end;

  { Fit Grid }
  DM.FitGrid(DBGrid1);
end;


end.
