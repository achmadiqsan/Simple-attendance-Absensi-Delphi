unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TFLogin = class(TForm)
    pnl1: TPanel;
    grp1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdNIK: TEdit;
    EdPass: TEdit;
    BitLogin: TButton;
    BitClose: TButton;
    ADOLogin: TADOQuery;
    ADOKaryawan: TADOQuery;
    shp1: TShape;
    procedure BitCloseClick(Sender: TObject);
    procedure BitLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNIKKeyPress(Sender: TObject; var Key: Char);
    procedure EdPassKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     NIK,PASS:string;
  end;

var
  FLogin: TFLogin;

implementation
uses UDModule, UFormUtama;
{$R *.dfm}

procedure TFLogin.BitCloseClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFLogin.BitLoginClick(Sender: TObject);
begin
ADOKaryawan.Close;
ADOKaryawan.SQL.Clear;
ADOKaryawan.SQL.Add('select Nik,Password from tbl_Karyawan where nik="'+EdNIK.Text+'"');
ADOKaryawan.Open;
if not ADOKaryawan.Eof then
  begin
  NIK:=ADOKaryawan.Fieldbyname('NIK').Value;
  PASS:= ADOKaryawan.Fieldbyname('Password').Value;
  if EdPass.Text<>PASS then
  MessageDlg('Password salah !!',mtError,[mbOK],0)
  else
  begin
  futama.Show;
  hide
  end
  end
else
  MessageDlg('Data Tidak ditemukan !!',mtError,[mbOK],0)


end;

procedure TFLogin.FormShow(Sender: TObject);
begin
EdNIK.Text:='';
EdPass.Text:='';
end;

procedure TFLogin.EdNIKKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
EdPass.SetFocus;
end;

procedure TFLogin.EdPassKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
BitLogin.SetFocus;
end;

end.
