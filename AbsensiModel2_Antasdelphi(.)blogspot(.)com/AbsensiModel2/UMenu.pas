unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TFLapABSEN = class(TForm)
    pnl1: TPanel;
    Label5: TLabel;
    shp1: TShape;
    shp2: TShape;
    Label3: TLabel;
    TDTTanggalAwal: TDateTimePicker;
    TDTTanggalAkhir: TDateTimePicker;
    BitProses: TBitBtn;
    BitKeluar: TBitBtn;
    ADOKaryawan: TADOQuery;
    ADOKaryawanNIK: TWideStringField;
    ADOKaryawanNama: TWideStringField;
    ADOKaryawanJenisKelamin: TWideStringField;
    ADOKaryawanTempat_Lahir: TWideStringField;
    ADOKaryawanTanggal_Lahir: TDateTimeField;
    ADOKaryawanAlamat: TWideStringField;
    ADOKaryawanNoTelepon: TWideStringField;
    ADOKaryawanStatus: TBooleanField;
    ADOProses: TADOQuery;
    ADOProsesNamakaryawan: TStringField;
    Panel1: TPanel;
    RBPerson: TRadioButton;
    RBALL: TRadioButton;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    EdID: TEdit;
    BitButtonBitCari: TBitBtn;
    EdNama: TEdit;
    LabelStatus: TLabel;
    mysql_proses: TADOQuery;
    mysql_open: TADOQuery;
    mysql_tampil: TADOQuery;
    Label6: TLabel;
    ADOIZIN: TADOQuery;
    ADOCUTI: TADOQuery;
    ADODINAS: TADOQuery;
    GroupBox2: TGroupBox;
    RBModel1: TRadioButton;
    RBModel2: TRadioButton;
    ADOProsesNIK: TWideStringField;
    ADOProsesTanggalAbsen: TDateTimeField;
    ADOProsesMasuk: TDateTimeField;
    ADOProsesPulang: TDateTimeField;
    ADOProsesIzin: TSmallintField;
    ADOProsesCuti: TSmallintField;
    ADOProsesKeterangan: TWideStringField;
    ADOProsesFlag: TWideStringField;
    procedure BitKeluarClick(Sender: TObject);
    procedure EdIDKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitButtonBitCariClick(Sender: TObject);
    procedure BitProsesClick(Sender: TObject);
    procedure TDTTanggalAwalChange(Sender: TObject);
    procedure RBPersonClick(Sender: TObject);
    procedure RBALLClick(Sender: TObject);
  private
    { Private declarations }
   PROCEDURE TAMPILKANABSENSI;
  public
    { Public declarations }
  end;

var
  FLapABSEN: TFLapABSEN;
  CariField:Tfield;
implementation
uses UDModule,UAbsen,Unit1,UListKaryawan, DateUtils, ULapAbsen1, URepAbsenALL,
  URepAbsenALL2;
{$R *.dfm}

PROCEDURE TFLapABSEN.TAMPILKANABSENSI;
var
   tgl_1, tgl_x, i : integer;
   tahun, bulan, hari, thn, bln, hr :word;
   kolom_header, kolom_value : string;
   kode_karyawan, nama_karyawan:string;
   no,IZIN,CUTI : integer;
BEGIN
Application.ProcessMessages;
decodedate(now, tahun, bulan, hari);
decodedate(TDTTanggalAwal.Date,thn,bln,hr);
tgl_1 := 1;
tgl_x := daysinmonth(TDTTanggalAwal.Date);

//membuah header kolom pada tabel
kolom_header := '[No] TEXT(5), [Nama_Karyawan] TEXT(50),[IZIN] TEXT(5),[CUTI] TEXT(5),';
for i:=tgl_1 to tgl_x do
begin
       kolom_header := kolom_header + '[hari_' + inttostr(i) + '] TEXT (10)';
       if i <> tgl_x then
              kolom_header := kolom_header + ',';

end;
if tgl_x=31 then
begin
FRepAbsenALL.QRDBText32.DataField:='hari_31';
FRepAbsenALL.QRDBText32.DataSet:=FLapABSEN.mysql_tampil;
end else
begin
FRepAbsenALL.QRDBText32.DataField:='';
FRepAbsenALL.QRDBText32.DataSet:=nil;
FRepAbsenALL2.SP31.Brush.Color :=clGreen;
end;
//hapus dan menyisipkan table temp di database dengan rincian kolom sesuai variabel kolom_header
with mysql_proses do begin
      close;
      sql.Clear;
      sql.Add('DROP table tbl_temp [IF EXISTS]');
      execSQL;

      sql.Clear;
      sql.Add('create table [tbl_temp] (' + kolom_header + ')');
      execSQL;
end;

//rekapitulasi data dan penyisipan ke tabel temp
with mysql_open do begin
     close;
     sql.Clear;
     sql.Add('select * from tbl_karyawan order by Nama');
     open;

     no := 0;
     first;
     while not eof do begin
           no := no + 1;
           kode_karyawan := fieldbyname('NIK').AsString;
           nama_karyawan := fieldbyname('Nama').AsString;

           with ADOIZIN do  // hitung jummlah Izin
           begin
           close;
           sql.Clear;
           sql.Add('select sum(izin) as JIzin from tbl_absen where month(TanggalAbsen)="'+FormatDateTime('MM',TDTTanggalAwal.Date)+'" and year(TanggalAbsen)="'+FormatDateTime('yyyy',TDTTanggalAwal.Date)+'" and NIK="'+kode_karyawan+'"');
           open;
           end;
           IZIN:=ADOIZIN.FIELDBYNAME('JIZIN').AsInteger;

           with ADOCUTI do  // hitung jummlah CUTI
           begin
           close;
           sql.Clear;
           sql.Add('select sum(CUTI) as JCUTI from tbl_absen where month(TanggalAbsen)="'+FormatDateTime('MM',TDTTanggalAwal.Date)+'" and year(TanggalAbsen)="'+FormatDateTime('yyyy',TDTTanggalAwal.Date)+'" and NIK="'+kode_karyawan+'"');
           open;
           end;
           CUTI:=ADOCUTI.FIELDBYNAME('JCUTI').AsInteger;

            kolom_value := '"'+inttostr(no) + '", "' +nama_karyawan + '","'+inttostr(IZIN) + '","'+inttostr(CUTI) + '",';


           for i:= tgl_1 to tgl_x do begin
                  with mysql_proses do begin
                       close;
                       sql.Clear;
                       sql.Add('select * from tbl_absen where NIK="'+kode_karyawan+'" and year(TanggalAbsen)="'+inttostr(thn)+'" and month(TanggalAbsen)="'+inttostr(bln)+'" and day(TanggalAbsen)="'+inttostr(i)+'"');
                       open;

                       kolom_value :=  kolom_value + '"' + fieldbyname('flag').AsString + '"';

                       if i <> tgl_x then
                               kolom_value :=  kolom_value +',';
                  end;
            end;

            with mysql_proses do begin
              close;
              sql.Clear;
              sql.Add('insert into tbl_temp values('+ kolom_value+ ')');
              execSQL;
            end;
           next;

     end;

end;
//open data rekap
with mysql_tampil do
begin
close;
sql.Clear;
sql.Add('select * from tbl_temp order by Nama_Karyawan');
open;
end;

   FLapABSEN.mysql_tampil.FindField('hari_31');
if Assigned(FLapABSEN.mysql_tampil.FindField('hari_31')) then
   BEGIN
   FRepAbsenALL.QRLabel35.Enabled:=TRUE;
   FRepAbsenALL.QRDBText32.Enabled:=TRUE;
   FRepAbsenALL2.QRLabel35.Enabled:=TRUE;
   FRepAbsenALL2.SP31.Enabled:=TRUE;
   END
   ELSE
   BEGIN
   FRepAbsenALL.QRLabel35.Enabled:=FALSE;
   FRepAbsenALL.QRDBText32.Enabled:=FALSE;
   FRepAbsenALL2.QRLabel35.Enabled:=FALSE;
   FRepAbsenALL2.SP31.Enabled:=FALSE;
   END
END;

procedure TFLapABSEN.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFLapABSEN.EdIDKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
begin
ADOKaryawan.Close;
ADOKaryawan.SQL.Clear;
ADOKaryawan.SQL.Add('select * from tbl_Karyawan where Nik="'+EdID.Text+'"');
ADOKaryawan.Open;
if not ADOKaryawan.Eof then
  begin
  EdID.Text:=ADOKaryawanNIK.Value;
  EdNama.Text:=ADOKaryawanNama.Value;
  BitProses.SetFocus;
  if ADOKaryawanStatus.Value=True then
    LabelStatus.Caption:='Active'
    else
    LabelStatus.Caption:='Not Active'
  end
  else
  begin
  MessageDlg('Maaf. Data Tidak Ditemukan',mtError,[mbOK],0);
  EdID.SetFocus;
  end

end
end;

procedure TFLapABSEN.FormShow(Sender: TObject);
begin
EdID.Text:='';
EdNama.Text:='';
LabelStatus.Caption:='-';
TDTTanggalAwal.Date:=StartOfTheMonth(now);
TDTTanggalAkhir.Date:=now;
RBPerson.Checked:=True;
RBPersonClick(sender);
end;

procedure TFLapABSEN.BitButtonBitCariClick(Sender: TObject);
begin
FListKaryawan.Label2.Caption:='Laporan';
FListKaryawan.ShowModal;
end;

procedure TFLapABSEN.BitProsesClick(Sender: TObject);
begin
Label6.Visible:=True;
Cursor:=crSQLWait;
IF RBPerson.Checked=True THEN
BEGIN
  Cursor:=crSQLWait;
  ADOProses.Close;
  ADOProses.SQL.Clear;
  ADOProses.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen>=#'+FormatDateTime('yyyy-MM-dd',TDTTanggalAwal.Date)+'# and tanggalabsen<=#'+FormatDateTime('yyyy-MM-dd',TDTTanggalAkhir.Date)+'# order by tanggalabsen');
  ADOProses.Open;

  if not ADOProses.Eof then
  begin
  fREPabsen1.QuickRep1.Preview;
  Cursor:=crDefault;
  Label6.Visible:=FALSE;
  end
  else
  begin
  MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
  Label6.Visible:=FALSE;
  end
END ELSE
IF RBALL.Checked=True THEN
BEGIN
try
  Cursor:=crSQLWait;
  TAMPILKANABSENSI;
  Cursor:=crDefault;
  if RBModel1.Checked=true then
  begin
  FRepAbsenALL.QuickRep1.Prepare;
  FRepAbsenALL.QuickRep1.Preview;
  end else
  if RBModel2.Checked=true then
  begin
  FRepAbsenALL2.QuickRep1.Prepare;
  FRepAbsenALL2.QuickRep1.Preview;
  end;
  Label6.Visible:=FALSE;
except
end;
END

end;

procedure TFLapABSEN.TDTTanggalAwalChange(Sender: TObject);
begin
TDTTanggalAkhir.Date:=EndOfTheMonth(TDTTanggalAwal.Date)
end;

procedure TFLapABSEN.RBPersonClick(Sender: TObject);
begin
GroupBox1.Enabled:=True;
TDTTanggalAkhir.Visible:=True;
Label3.Visible:=True;
TDTTanggalAwal.Format:='dd MMMM yyyy';
EdID.SetFocus;
RBModel1.Checked:=False;
RBModel2.Checked:=False;
GroupBox2.Enabled:=False;
end;

procedure TFLapABSEN.RBALLClick(Sender: TObject);
begin
GroupBox1.Enabled:=False;
TDTTanggalAkhir.Visible:=False;
Label3.Visible:=False;
TDTTanggalAwal.Format:='MMMM yyyy';
GroupBox2.Enabled:=True;
RBModel1.Checked:=True;
end;

end.
