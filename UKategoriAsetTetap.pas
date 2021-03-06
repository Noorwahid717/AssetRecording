unit UKategoriAsetTetap;

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
  TfKategoriAsetTetap = class(TfInduk)
    Button2: TButton;
    Kode: TLabeledEdit;
    Nama: TLabeledEdit;
    procedure TampilDataExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fKategoriAsetTetap: TfKategoriAsetTetap;

implementation

{$R *.dfm}

uses UDM;



procedure TfKategoriAsetTetap.TampilDataExecute(Sender: TObject);
begin
  inherited;
  with UniStoredProc1 do
  begin
    SQL.Clear;
    CreateProcCall('sp_tbl_kategori_aset_tetap_view');
    ExecProc;
  end;

  { Fit Grid }
  DM.FitGrid(DBGrid1);
end;

end.
