unit UDaftarAkunSaldo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UInduk, Data.DB, Vcl.Menus,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfDaftarAkunSaldo = class(TfInduk)
    Button2: TButton;
    Kode: TLabeledEdit;
    Nama: TLabeledEdit;
    KodeKategoriAkun: TLabeledEdit;
    Pajak: TLabeledEdit;
    Saldo: TLabeledEdit;
    procedure TampilDataExecute(Sender: TObject);
    procedure InsertExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDaftarAkunSaldo: TfDaftarAkunSaldo;

implementation

{$R *.dfm}

uses UDM;


procedure TfDaftarAkunSaldo.InsertExecute(Sender: TObject);
begin
  inherited;
  try
    with dm.UniStoredProc1 do
    begin
      SQL.Clear;
      CreateProcCall('sp_tbl_daftar_akun_saldo_insert');
      ParamByName('pKode').AsString := Kode.Text;
      ParamByName('pNama').AsString := Nama.Text;
      ParamByName('pKategori_akun').AsString := KodeKategoriAkun.Text;
      ParamByName('pPajak').AsString := Pajak.Text;
      ParamByName('pSaldo').AsString := Saldo.Text;
      Execute;
      { message }
      MessageDlg('Data Berhasil disimpan', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes], 0);
      { Refresh }
      TampilDataExecute(Sender);
    end;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfDaftarAkunSaldo.TampilDataExecute(Sender: TObject);
begin
  inherited;
  with UniStoredProc1 do
  begin
    SQL.Clear;
    CreateProcCall('sp_tbl_daftar_akun_saldo_view');
    ExecProc;
  end;
  { FitGrid }
  dm.FitGrid(DBGrid1);
end;

end.
