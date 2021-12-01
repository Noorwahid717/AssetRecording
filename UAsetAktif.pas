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
    begin
      if Application.FindComponent('fTambahAset') = nil then
      begin
        Application.CreateForm(TfTambahAset, fTambahAset);
        fTambahAset.Show;
      end
      else
        fTambahAset.BringToFront;
      fTambahAset.Show;
    end;
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
