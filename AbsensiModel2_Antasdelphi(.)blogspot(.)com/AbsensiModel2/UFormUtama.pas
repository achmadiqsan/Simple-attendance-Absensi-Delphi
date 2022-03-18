unit UFormUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, ComCtrls;

type
  TfUtama = class(TForm)
    MainMenu1: TMainMenu;
    ABSEN1: TMenuItem;
    formMenu: TMenuItem;
    KELUAR1: TMenuItem;
    Keluar2: TMenuItem;
    EntryPegawai1: TMenuItem;
    Laporan1: TMenuItem;
    Absensi1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    stat1: TStatusBar;
    procedure formMenuClick(Sender: TObject);
    procedure Keluar2Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
    procedure EntryPegawai1Click(Sender: TObject);
    procedure Absensi1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUtama: TfUtama;

implementation

uses UAbsen, UListKaryawan, Unit1, UMenu;

{$R *.dfm}

procedure TfUtama.formMenuClick(Sender: TObject);
begin
fabsen.show;
end;

procedure TfUtama.Keluar2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfUtama.KELUAR1Click(Sender: TObject);
begin
FListKaryawan.Label2.Caption:='Karyawan';
FListKaryawan.ShowModal;
end;

procedure TfUtama.EntryPegawai1Click(Sender: TObject);
begin
Fkaryawan.ShowModal
end;

procedure TfUtama.Absensi1Click(Sender: TObject);
begin
FLapABSEN.ShowModal;
end;

procedure TfUtama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
