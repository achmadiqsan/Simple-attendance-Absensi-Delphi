unit UListKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls;

type
  TFListKaryawan = class(TForm)
    pDataKaryawan: TPanel;
    DBGrid1: TDBGrid;
    ADOList: TADOQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    BitCari: TBitBtn;
    BitKeluar: TBitBtn;
    Label2: TLabel;
    BitTampil: TBitBtn;
    EdCari: TEdit;
    CBFilter: TComboBox;
    ADOListNIK: TWideStringField;
    ADOListNama: TWideStringField;
    ADOListJenisKelamin: TWideStringField;
    ADOListTempat_Lahir: TWideStringField;
    ADOListTanggal_Lahir: TDateTimeField;
    ADOListAlamat: TWideStringField;
    ADOListNoTelepon: TWideStringField;
    ADOListStatus: TBooleanField;
    ADOListPassword: TWideStringField;
    DCHKStatus: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BitCariClick(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitTampilClick(Sender: TObject);
    procedure EdCariKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure TampilkanKaryawan;
  public
    { Public declarations }
  end;

var
  FListKaryawan: TFListKaryawan;

implementation
uses UDModule,UAbsen,Unit1,umenu;
{$R *.dfm}
procedure TFListKaryawan.TampilkanKaryawan ;
begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select * from tbl_Karyawan order by nama');
ADOList.Open;
end;

procedure TFListKaryawan.FormShow(Sender: TObject);
begin
EdCari.Text:='';
CBFilter.ItemIndex:=1;
BitTampil.SetFocus;

ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select  top 5 * from tbl_Karyawan rand  order by nama');
ADOList.Open;
end;

procedure TFListKaryawan.BitCariClick(Sender: TObject);
begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select*from tbl_karyawan where '+CBFilter.Text+' like "%'+EdCari.Text+'%" ');
ADOList.Open;
end;

procedure TFListKaryawan.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFListKaryawan.DBGrid1DblClick(Sender: TObject);
begin
if Label2.Caption='Laporan' then
Begin
  if ADOList.IsEmpty then
  else
  begin
  FLapABSEN.EdID.Text:=ADOListNIK.Value;
  FLapABSEN.EdNama.Text:=ADOListNama.Value;
    if ADOListStatus.Value=True then
    FLapABSEN.LabelStatus.Caption:='Active'
    else
    FLapABSEN.LabelStatus.Caption:='Not Active';
  close
  end
End
Else
BEGIN
  if ADOList.IsEmpty then
  else
  begin
  FKaryawan.Edit1.Text:=ADOListNIK.Value;
  FKaryawan.Edit2.Text:=ADOListNama.Value;
  FKaryawan.ComboBox1.Text:=ADOListJenisKelamin.Value;
  FKaryawan.Edit3.Text:=ADOListTempat_Lahir.Value;
  FKaryawan.DateTimePicker1.date:=ADOListTanggal_Lahir.AsDateTime;
  FKaryawan.ShowModal
  end
END

end;

procedure TFListKaryawan.BitTampilClick(Sender: TObject);
begin
TampilkanKaryawan;
EdCari.Text:='';
CBFilter.ItemIndex:=1
end;

procedure TFListKaryawan.EdCariKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
Begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select*from tbl_karyawan where '+CBFilter.Text+' like "%'+EdCari.Text+'%" ');
ADOList.Open;
End
end;

procedure TFListKaryawan.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked : array[Boolean] of Integer = 
      (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = DCHKStatus.DataField) then
    begin
     DCHKStatus.Left := Rect.Left + DBGrid1.Left + 2;
     DCHKStatus.Top := Rect.Top + DBGrid1.top + 2;
     DCHKStatus.Width := Rect.Right - Rect.Left;
     DCHKStatus.Height := Rect.Bottom - Rect.Top;

     DCHKStatus.Visible := True;
    end
  end
  else
  begin
    if (Column.Field.FieldName = DCHKStatus.DataField) then
    begin
      DrawRect:=Rect;
      InflateRect(DrawRect,-1,-1);

      DrawState := ISChecked[Column.Field.AsBoolean];

      DBGrid1.Canvas.FillRect(Rect);
      DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect, 
                       DFC_BUTTON, DrawState);
    end;
  end; 
end;

procedure TFListKaryawan.DBGrid1ColExit(Sender: TObject);
begin
   if DBGrid1.SelectedField.FieldName = DCHKStatus.DataField then
    DCHKStatus.Visible := False
end;

procedure TFListKaryawan.FormCreate(Sender: TObject);
begin
DCHKStatus.Visible    := False;
end;

end.
