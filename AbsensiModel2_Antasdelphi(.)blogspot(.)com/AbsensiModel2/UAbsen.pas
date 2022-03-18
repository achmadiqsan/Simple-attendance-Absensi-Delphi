unit UAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  jpeg, Mask, DBCtrls;

type
  TFAbsen = class(TForm)
    Timer1: TTimer;
    ADOTampil: TADOQuery;
    ADOKaryawan: TADOQuery;
    DataSource1: TDataSource;
    ADOKaryawanNIK: TWideStringField;
    ADOKaryawanNama: TWideStringField;
    ADOKaryawanJenisKelamin: TWideStringField;
    ADOKaryawanTempat_Lahir: TWideStringField;
    ADOKaryawanTanggal_Lahir: TDateTimeField;
    ADOKaryawanAlamat: TWideStringField;
    ADOKaryawanNoTelepon: TWideStringField;
    ADOKaryawanStatus: TBooleanField;
    ADOSimpan: TADOQuery;
    ADOCari: TADOQuery;
    Panel2: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    Label7: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    RBMasuk: TRadioButton;
    RBPulang: TRadioButton;
    RBCuti: TRadioButton;
    RBIzin: TRadioButton;
    DBGrid1: TDBGrid;
    BitKeluar: TBitBtn;
    shp1: TShape;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    Label3: TLabel;
    ADO_proses: TADOQuery;
    ADO_prosesNIK: TWideStringField;
    ADO_prosesTanggalAbsen: TDateTimeField;
    ADO_prosesMasuk: TDateTimeField;
    ADO_prosesPulang: TDateTimeField;
    ADO_prosesIzin: TSmallintField;
    ADO_prosesCuti: TSmallintField;
    ADO_prosesKeterangan: TWideStringField;
    ADO_prosesFlag: TWideStringField;
    ADO_prosesNama: TStringField;
    ADO_open: TADOQuery;
    ADOTampilNama: TStringField;
    ADOTampilNIK: TWideStringField;
    ADOTampilTanggalAbsen: TDateTimeField;
    ADOTampilMasuk: TDateTimeField;
    ADOTampilPulang: TDateTimeField;
    ADOTampilIzin: TSmallintField;
    ADOTampilCuti: TSmallintField;
    ADOTampilKeterangan: TWideStringField;
    ADOTampilFlag: TWideStringField;
    ADO_openNIK: TWideStringField;
    ADO_openNama_Karyawan: TWideStringField;
    ADO_openMasuk: TWideStringField;
    ADO_openPulang: TWideStringField;
    ADO_openIzin: TWideStringField;
    ADO_openCuti: TWideStringField;
    ADO_openKeterangan: TWideStringField;
    CEKLIST: TCheckBox;
    EdCatatan: TDBEdit;
    ADO_openFlag: TWideStringField;
    ADOShow: TADOTable;
    ADOShowNIK: TWideStringField;
    ADOShowNama_Karyawan: TWideStringField;
    ADOShowMasuk: TWideStringField;
    ADOShowPulang: TWideStringField;
    ADOShowIzin: TWideStringField;
    ADOShowCuti: TWideStringField;
    ADOShowKeterangan: TWideStringField;
    ADOShowFLAG: TWideStringField;
    Label5: TLabel;
    DTTanggal: TDateTimePicker;
    Label1: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Label2: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Shape7: TShape;
    Panel6: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DTTanggalChange(Sender: TObject);
    procedure DTTanggalCloseUp(Sender: TObject);
    procedure RBIzinClick(Sender: TObject);
    procedure RBCutiClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure CEKLISTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RBPulangClick(Sender: TObject);
    procedure EdCatatanKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure TampilkanAbsen;
    PROCEDURE ABSENMASUK;
    PROCEDURE ABSENIZIN;
    PROCEDURE ABSENCUTI;
    PROCEDURE ABSENPULANG;
  public
    { Public declarations }
  end;

var
  FAbsen: TFAbsen;
  Keterangan:string;
implementation

uses UDModule,UListKaryawan, UMenu, UFormUtama, ULogin;

{$R *.dfm}
procedure FocusCell(const DBGrid : TDBGrid;const column : integer) ; overload;
begin
   with TStringGrid(DBGrid) do
   begin
     Col := column;
     SetFocus;
   end;
end;
//(Masuk pagi, masuk siang, izin, cuti , dan dinas luar)
Procedure TFAbsen.TampilkanAbsen;
var
     kolom_header, kolom_value,keterangan : string;
     kode_karyawan,nama_karyawan,Masuk,Pulang,Izin,Cuti:string;
begin
kolom_header := '[FLAG] TEXT(2),[NIK] TEXT(15), [Nama_Karyawan] TEXT(50),[Masuk] TEXT(6),[Pulang] TEXT(6),[Izin] TEXT(6),[Cuti] TEXT(6),[Keterangan] TEXT(100)';
with ADOTampil do begin
      close;
      sql.Clear;
      sql.Add('DROP table tbl_tempABS');
      execSQL;

      sql.Clear;
      sql.Add('create table [tbl_tempABS] (' + kolom_header + ')');
      execSQL;
end;

with ADOKaryawan do begin
      close;
      sql.Clear;
      sql.Add('select*from tbl_karyawan where NIK="'+Flogin.NIK+'"');
      execSQL;

     with ADO_proses do begin
     close;
     sql.Clear;
     sql.Add('select * from TBL_ABSEN WHERE NIK="'+Flogin.NIK+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
     open;
     end;

     kode_karyawan := ADOKaryawanNIK.Value;
     nama_karyawan := ADOKaryawanNama.Value;
     Masuk := FormatDateTime('HH:mm',ADO_prosesMasuk.Value);
     Pulang := FormatDateTime('HH:mm',ADO_prosesPulang.Value);
     Izin := IntToStr(ADO_prosesIzin.Value);
     Cuti := IntToStr(ADO_prosesCuti.Value);
     keterangan := ADO_prosesKeterangan.Value;

     if not ADO_proses.eof then
     begin
           kolom_value := '"1","'+kode_karyawan+ '", "' +nama_karyawan + '","'+Masuk+ '","'+Pulang+ '","'+Izin+ '","'+Cuti+ '","'+Keterangan+ '"';
            with ADO_open do begin
              close;
              sql.Clear;
              sql.Add('insert into tbl_tempABS values('+ kolom_value+ ')');
              execSQL;
            end;
     end else
     Begin
          kolom_value := '"'+kode_karyawan+ '", "' +nama_karyawan + '"';
          with ADO_open do begin
              close;
              sql.Clear;
              sql.Add('insert into tbl_tempABS (NIK,Nama_Karyawan) values('+ kolom_value+ ')');
              execSQL;
            end;
     End;
end;

with ADOShow do
  begin
  Close;
  TableName:='tbl_tempABS';
  Open;
  end;
end;

Procedure TFAbsen.ABSENMASUK;
BEGIN
if FormatDateTime('HH:HH',now)>'08:00' then
keterangan:='Terlambat';
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+FLogin.NIK+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"'+FormatDateTime('HH:mm',now)+'",0,0,0,"'+Keterangan+'","'+FormatDateTime('HH:mm',now)+'")');
   ADOSIMPAN.ExecSQL;
   ADOShow.Edit;
   ADOShowFLAG.Value:='1';
   ADOShowMasuk.Value:=FormatDateTime('HH:mm',Now);
   ADOShowKeterangan.Value:=Keterangan;
   ADOShow.Post;
END;

Procedure TFAbsen.ABSENIZIN;
BEGIN
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+FLogin.NIK+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"00:00","00:00",1,0,"","Izin")');
   ADOSIMPAN.ExecSQL;
   ADOShow.Edit;
   ADOShowIzin.Value:='1';
   ADOShow.Post;
   END;

Procedure TFAbsen.ABSENCUTI;
BEGIN
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+FLogin.NIK+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"00:00","00:00",0,1,"","Cuti")');
   ADOSIMPAN.ExecSQL;
   ADOShow.Edit;
   ADOShowCuti.Value:='1';
   ADOShow.Post;
END;

Procedure TFAbsen.ABSENPULANG;
BEGIN
ADOCari.Close;
ADOCari.SQL.Clear;
ADOCari.SQL.Add('select nik,pulang from tbl_absen where nik ="'+Flogin.NIK+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',now)+'#');
ADOCari.Open;
if (ADOCari.FieldByName('Pulang').IsNull) or (ADOCari.FieldByName('Pulang').Value='00:00') then
Begin
   ADOSimpan.Close;
   ADOSimpan.SQL.Clear;
   ADOSimpan.SQL.Add('UPDATE tbl_absen SET Pulang="'+FormatDateTime('HH:mm',now)+'" where NIK="'+Flogin.NIK+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',now)+'#');
   ADOSimpan.ExecSQL;
   ADOShow.Edit;
   ADOShowPulang.Value:=FormatDateTime('HH:mm',Now);
   ADOShow.Post;
end
END;

procedure TFAbsen.Timer1Timer(Sender: TObject);
var jam, menit, detik,Ms:word;
begin
Label6.Caption:=FormatDateTime('dddd',now);

//atur saja tiap wilayah beda 1 jam
DecodeTime(now, jam, menit, detik,Ms);
Label7.Caption:=inttostr(jam)+':'+inttostr(menit)+':'+inttostr(detik);
Label1.Caption:=inttostr(jam+1)+':'+inttostr(menit)+':'+inttostr(detik);
Label2.Caption:=inttostr(jam+2)+':'+inttostr(menit)+':'+inttostr(detik);
end;

procedure TFAbsen.BitKeluarClick(Sender: TObject);
begin
fAbsen.Close;
fUtama.Show;
end;

procedure TFAbsen.FormShow(Sender: TObject);
begin
DTTanggal.Date:=now;
TampilkanAbsen;
ShowScrollBar(DBGrid1.Handle, SB_VERT, False);
RBMasuk.Checked:=true;
Label3.Visible:=False;
EdCatatan.Text:='';
FocusCell(DBGrid1,0);
end;

procedure TFAbsen.DTTanggalChange(Sender: TObject);
begin
TampilkanAbsen;
end;

procedure TFAbsen.DTTanggalCloseUp(Sender: TObject);
begin
if DTTanggal.DateTime>date then
begin
DTTanggal.Date:=now;
RBMasuk.Enabled:=true;
RBPulang.Enabled:=true;
RBIzin.Enabled:=true;
RBCuti.Enabled:=true;
RBMasuk.SetFocus;
TampilkanAbsen;
Label3.Visible:=False;
end
else
begin
RBMasuk.Enabled:=False;
RBPulang.Enabled:=False;
RBIzin.Enabled:=true;
RBCuti.Enabled:=true;
Label3.Visible:=True;
RBIzin.SetFocus;
end
end;

procedure TFAbsen.RBIzinClick(Sender: TObject);
begin
CEKLIST.Checked:=False;
end;

procedure TFAbsen.RBCutiClick(Sender: TObject);
begin
CEKLIST.Checked:=False;
end;

procedure TFAbsen.btn2Click(Sender: TObject);
begin
ShowScrollBar(DBGrid1.Handle, SB_VERT, False);
end;

procedure TFAbsen.btn1Click(Sender: TObject);
begin
ShowScrollBar(DBGrid1.Handle, SB_VERT, True);
end;

procedure TFAbsen.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  grid : TDBGrid;
  maskValue,JAM,Kosong : String;
  aRect : TRect;
begin
  maskValue := 'Ya';
  JAM := '';
  Kosong := '';
  aRect := Rect;
  grid := sender as TDBGrid;

    if column.FieldName = 'Masuk' then
  begin
    if (ADOShowMasuk.Value='00:00') or (ADOShowMasuk.Value='0:00') or (ADOShowMasuk.Value='') then
    begin
    grid.Canvas.FillRect(Rect);
    DrawText(grid.Canvas.Handle, PChar(JAM), Length(JAM), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
      end
  end;

      if column.FieldName = 'Pulang' then
  begin
    if (ADOShowPulang.Value='00:00') or (ADOShowPulang.Value='0:00') or (ADOShowPulang.Value='')  then
    begin
    grid.Canvas.FillRect(Rect);
    DrawText(grid.Canvas.Handle, PChar(JAM), Length(JAM), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
      end
  end;

  if column.FieldName = 'Izin' then
  begin
    if ADOShowIzin.Value='1' then
    begin
    grid.Canvas.FillRect(Rect);
    DrawText(grid.Canvas.Handle, PChar(maskValue), Length(maskValue), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end   else
    begin
    grid.Canvas.FillRect(Rect);
    DrawText(grid.Canvas.Handle, PChar(Kosong), Length(Kosong), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end
  end;

    if column.FieldName = 'Cuti' then
  begin
    if ADOShowCuti.Value='1' then
    begin
    grid.Canvas.FillRect(Rect);
    DrawText(grid.Canvas.Handle, PChar(maskValue), Length(maskValue), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end    else
    begin
    grid.Canvas.FillRect(Rect);
    DrawText(grid.Canvas.Handle, PChar(Kosong), Length(Kosong), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end
  end;

  if (gdFocused in State) then
  begin
    BEGIN
    if (Column.Field.FieldName = 'FLAG') then
    with CEKLIST do begin
     Left := Rect.Left + DBGrid1.Left + 9;
     Top := Rect.Top + DBGrid1.top + 2;
     Height := Rect.Bottom - Rect.Top;
     Visible := True;
    end;

    if (Column.Field.FieldName = 'Keterangan') then
    with EdCatatan do begin
      Left := Rect.Left + DBGrid1.Left + 1;
      Top := Rect.Top + DBGrid1.Top+2;
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top;
    end;
    END;
  end;

end;

procedure TFAbsen.DBGrid1ColExit(Sender: TObject);
begin
 EdCatatan.Visible := False;
end;

procedure TFAbsen.DBGrid1CellClick(Column: TColumn);
begin

  if (DBGrid1.SelectedField.FieldName = 'Keterangan') then
  begin
  EdCatatan.Visible := True;
  EdCatatan.SetFocus
  end;

  if (DBGrid1.SelectedField.FieldName = 'FLAG') then
  begin
  CEKLIST.Visible := True;
  CEKLIST.SetFocus
  end

end;

procedure TFAbsen.CEKLISTMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ADOKaryawan.Close;
  ADOKaryawan.SQL.Clear;
  ADOKaryawan.SQL.Add('select * from TBL_KARYAwan where NIK="'+FLogin.NIK+'" and status=True');
  ADOKaryawan.Open;
IF NOT ADOKaryawan.Eof THEN
BEGIN
  If RBMasuk.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+FLogin.NIK+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',now)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
      MessageDlg('ANDA SUDAH ABSEN HARI INI !!',mtInformation,[mbOK],0);
      CEKLIST.Checked:=true;
      END
      ELSE
        ABSENMASUK;
    End;

    If RBPulang.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from tbl_absen WHERE NIK="'+Flogin.NIK+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',now)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      begin
      ABSENPULANG
      end
      ELSE
      begin
      MessageDlg('ANDA BELUM ABSEN, SILAHKAN ABSEN DULU !!',mtError,[mbOK],0);
      CEKLIST.Checked:=False;
      end
    End
  ELSE
    If RBIzin.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+FLogin.NIK+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
        MessageDlg('ANDA SUDAH ABSEN HARI INI!!',mtInformation,[mbOK],0);
        CEKLIST.Checked:=True;
      END
      ELSE
        ABSENIZIN;
    End
  ELSE
    If RBCuti.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+FLogin.NIK+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
        MessageDlg('ANDA SUDAH ABSEN HARI INI!!',mtInformation,[mbOK],0);
        CEKLIST.Checked:=True;
      END
      ELSE
        ABSENCUTI;
    End;

END
ELSE
MessageDlg('STATUS ANDA SUDAH TIDAK AKTIF !!',mtError,[mbOK],0)

end;

procedure TFAbsen.RBPulangClick(Sender: TObject);
begin
CEKLIST.Checked:=False;
end;

procedure TFAbsen.EdCatatanKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
begin
  BEGIN
   ADOSimpan.Close;
   ADOSimpan.SQL.Clear;
   ADOSimpan.SQL.Add('UPDATE tbl_absen SET keterangan="'+EdCatatan.Text+'" WHERE nik="'+Flogin.NIK+'" and tanggalABSEN=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.Date)+'#');
   ADOSimpan.ExecSQL;
   ADOShow.Edit;
   ADOShowKeterangan.Value:=EdCatatan.Text;
   ADOShow.Post;
   FocusCell(DBGrid1,1);
   EdCatatan.Visible := False;
  END

end
end;

end.
