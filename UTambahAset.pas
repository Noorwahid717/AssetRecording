unit UTambahAset;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  MemDS, DBAccess, Uni, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TfTambahAset = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Kode: TLabeledEdit;
    Nama: TLabeledEdit;
    ListKategoriAset: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    btnBatal: TButton;
    btnSimpan: TButton;
    QKategoriAset: TUniQuery;
    dsKategoriAset: TDataSource;
    QKategoriAsetKode: TStringField;
    QKategoriAsetNama: TStringField;
    BiayaAkuisisi: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListKategoriAkun: TDBLookupComboBox;
    QKategoriAkun: TUniQuery;
    dsKategoriAkun: TDataSource;
    QKategoriAkunKode: TStringField;
    QKategoriAkunNama: TStringField;
    Label3: TLabel;
    Deskripsi: TLabeledEdit;

    procedure btnSimpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTambahAset: TfTambahAset;

implementation

{$R *.dfm}


procedure TfTambahAset.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfTambahAset.btnSimpanClick(Sender: TObject);
begin
  ModalResult  := mrOk
end;

procedure TfTambahAset.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

end.
