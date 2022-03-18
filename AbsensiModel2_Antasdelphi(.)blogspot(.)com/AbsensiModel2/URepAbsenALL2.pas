unit URepAbsenALL2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFRepAbsenALL2 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    SP1: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape3: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel40: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel45: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRDBText35: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel46: TQRLabel;
    QRShape2: TQRShape;
    SP2: TQRShape;
    SP3: TQRShape;
    SP4: TQRShape;
    SP5: TQRShape;
    SP6: TQRShape;
    SP7: TQRShape;
    SP8: TQRShape;
    SP9: TQRShape;
    SP10: TQRShape;
    SP11: TQRShape;
    SP12: TQRShape;
    SP13: TQRShape;
    SP14: TQRShape;
    SP15: TQRShape;
    SP16: TQRShape;
    SP17: TQRShape;
    SP18: TQRShape;
    SP19: TQRShape;
    SP20: TQRShape;
    SP21: TQRShape;
    SP22: TQRShape;
    SP23: TQRShape;
    SP24: TQRShape;
    SP25: TQRShape;
    SP26: TQRShape;
    SP27: TQRShape;
    SP28: TQRShape;
    SP29: TQRShape;
    SP30: TQRShape;
    SP31: TQRShape;
    QRDBText1: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape12: TQRShape;
    QRLabel51: TQRLabel;
    QRDBText2: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepAbsenALL2: TFRepAbsenALL2;
implementation

uses UMenu;

{$R *.dfm}

procedure TFRepAbsenALL2.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   FLapABSEN.mysql_tampil.FindField('hari_31');
if Assigned(FLapABSEN.mysql_tampil.FindField('hari_31')) then
   BEGIN
if FLapABSEN.mysql_tampil.FieldByName('hari_31').Value='Izin' then
   SP31.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_31').Value='Cuti' then
   SP31.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_31').Value='Dinas' then
   SP31.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_31').Value='' then
   SP31.Brush.Color :=clWhite else
   SP31.Brush.Color :=clGreen;
END ELSE
BEGIN
   SP31.Brush.Color :=clWhite;
END;

if FLapABSEN.mysql_tampil.FieldByName('hari_1').Value='Izin' then
   SP1.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_1').Value='Cuti' then
   SP1.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_1').Value='Dinas' then
   SP1.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_1').Value='' then
   SP1.Brush.Color :=clWhite else
   SP1.Brush.Color :=clGreen;

if FLapABSEN.mysql_tampil.FieldByName('hari_2').Value='Izin' then
   SP2.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_2').Value='Cuti' then
   SP2.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_2').Value='Dinas' then
   SP2.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_2').Value='' then
   SP2.Brush.Color :=clWhite else
   SP2.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_3').Value='Izin' then
   SP3.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_3').Value='Cuti' then
   SP3.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_3').Value='Dinas' then
   SP3.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_3').Value='' then
   SP3.Brush.Color :=clWhite else
   SP3.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_4').Value='Izin' then
   SP4.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_4').Value='Cuti' then
   SP4.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_4').Value='Dinas' then
   SP4.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_4').Value='' then
   SP4.Brush.Color :=clWhite else
   SP4.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_5').Value='Izin' then
   SP5.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_5').Value='Cuti' then
   SP5.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_5').Value='Dinas' then
   SP5.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_5').Value='' then
   SP5.Brush.Color :=clWhite else
   SP5.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_6').Value='Izin' then
   SP6.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_6').Value='Cuti' then
   SP6.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_6').Value='Dinas' then
   SP6.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_6').Value='' then
   SP6.Brush.Color :=clWhite else
   SP6.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_7').Value='Izin' then
   SP7.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_7').Value='Cuti' then
   SP7.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_7').Value='Dinas' then
   SP7.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_7').Value='' then
   SP7.Brush.Color :=clWhite else
   SP7.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_8').Value='Izin' then
   SP8.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_8').Value='Cuti' then
   SP8.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_8').Value='Dinas' then
   SP8.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_8').Value='' then
   SP8.Brush.Color :=clWhite else
   SP8.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_9').Value='Izin' then
   SP9.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_9').Value='Cuti' then
   SP9.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_9').Value='Dinas' then
   SP9.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_9').Value='' then
   SP9.Brush.Color :=clWhite else
   SP9.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_10').Value='Izin' then
   SP10.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_10').Value='Cuti' then
   SP10.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_10').Value='Dinas' then
   SP10.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_10').Value='' then
   SP10.Brush.Color :=clWhite else
   SP10.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_11').Value='Izin' then
   SP11.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_11').Value='Cuti' then
   SP11.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_11').Value='Dinas' then
   SP11.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_11').Value='' then
   SP11.Brush.Color :=clWhite else
   SP11.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_12').Value='Izin' then
   SP12.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_12').Value='Cuti' then
   SP12.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_12').Value='Dinas' then
   SP12.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_12').Value='' then
   SP12.Brush.Color :=clWhite else
   SP12.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_13').Value='Izin' then
   SP13.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_13').Value='Cuti' then
   SP13.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_13').Value='Dinas' then
   SP13.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_13').Value='' then
   SP13.Brush.Color :=clWhite else
   SP13.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_14').Value='Izin' then
   SP14.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_14').Value='Cuti' then
   SP14.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_14').Value='Dinas' then
   SP14.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_14').Value='' then
   SP14.Brush.Color :=clWhite else
   SP14.Brush.Color :=clGreen;

   if FLapABSEN.mysql_tampil.FieldByName('hari_15').Value='Izin' then
   SP15.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_15').Value='Cuti' then
   SP15.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_15').Value='Dinas' then
   SP15.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_15').Value='' then
   SP15.Brush.Color :=clWhite else
   SP15.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_16').Value='Izin' then
   SP16.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_16').Value='Cuti' then
   SP16.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_16').Value='Dinas' then
   SP16.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_16').Value='' then
   SP16.Brush.Color :=clWhite else
   SP16.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_17').Value='Izin' then
   SP17.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_17').Value='Cuti' then
   SP17.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_17').Value='Dinas' then
   SP17.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_17').Value='' then
   SP17.Brush.Color :=clWhite else
   SP17.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_18').Value='Izin' then
   SP18.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_18').Value='Cuti' then
   SP18.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_18').Value='Dinas' then
   SP18.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_18').Value='' then
   SP18.Brush.Color :=clWhite else
   SP18.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_19').Value='Izin' then
   SP19.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_19').Value='Cuti' then
   SP19.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_19').Value='Dinas' then
   SP19.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_19').Value='' then
   SP19.Brush.Color :=clWhite else
   SP19.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_20').Value='Izin' then
   SP20.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_20').Value='Cuti' then
   SP20.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_20').Value='Dinas' then
   SP20.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_20').Value='' then
   SP20.Brush.Color :=clWhite else
   SP20.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_21').Value='Izin' then
   SP21.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_21').Value='Cuti' then
   SP21.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_21').Value='Dinas' then
   SP21.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_21').Value='' then
   SP21.Brush.Color :=clWhite else
   SP21.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_22').Value='Izin' then
   SP22.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_22').Value='Cuti' then
   SP22.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_22').Value='Dinas' then
   SP22.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_22').Value='' then
   SP22.Brush.Color :=clWhite else
   SP22.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_23').Value='Izin' then
   SP23.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_23').Value='Cuti' then
   SP23.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_23').Value='Dinas' then
   SP23.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_23').Value='' then
   SP23.Brush.Color :=clWhite else
   SP23.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_24').Value='Izin' then
   SP24.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_24').Value='Cuti' then
   SP24.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_24').Value='Dinas' then
   SP24.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_24').Value='' then
   SP24.Brush.Color :=clWhite else
   SP24.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_25').Value='Izin' then
   SP25.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_25').Value='Cuti' then
   SP25.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_25').Value='Dinas' then
   SP25.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_25').Value='' then
   SP25.Brush.Color :=clWhite else
   SP25.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_26').Value='Izin' then
   SP26.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_26').Value='Cuti' then
   SP26.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_26').Value='Dinas' then
   SP26.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_26').Value='' then
   SP26.Brush.Color :=clWhite else
   SP26.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_27').Value='Izin' then
   SP27.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_27').Value='Cuti' then
   SP27.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_27').Value='Dinas' then
   SP27.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_27').Value='' then
   SP27.Brush.Color :=clWhite else
   SP27.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_28').Value='Izin' then
   SP28.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_28').Value='Cuti' then
   SP28.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_28').Value='Dinas' then
   SP28.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_28').Value='' then
   SP28.Brush.Color :=clWhite else
   SP28.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_29').Value='Izin' then
   SP29.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_29').Value='Cuti' then
   SP29.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_29').Value='Dinas' then
   SP29.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_29').Value='' then
   SP29.Brush.Color :=clWhite else
   SP29.Brush.Color :=clGreen;

      if FLapABSEN.mysql_tampil.FieldByName('hari_30').Value='Izin' then
   SP30.Brush.Color :=clBlue else
if FLapABSEN.mysql_tampil.FieldByName('hari_30').Value='Cuti' then
   SP30.Brush.Color :=clRed else
if FLapABSEN.mysql_tampil.FieldByName('hari_30').Value='Dinas' then
   SP30.Brush.Color :=clYellow else
if FLapABSEN.mysql_tampil.FieldByName('hari_30').Value='' then
   SP30.Brush.Color :=clWhite else
   SP30.Brush.Color :=clGreen;

end;

procedure TFRepAbsenALL2.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel10.Caption:=FormatDateTime('mmmm YYYY',FLapAbsen.TDTTanggalAwal.Date);
end;

end.
