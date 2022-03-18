unit ULapAbsen1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFREPAbsen1 = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape6: TQRShape;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FREPAbsen1: TFREPAbsen1;

implementation
uses UMenu;
{$R *.dfm}


procedure TFREPAbsen1.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel11.Caption:='Periode :'+FormatDateTime('dd-MM-yyyy',FLapABSEN.TDTTanggalAwal.Date)+ ' s/d '+FormatDateTime('dd-MM-yyyy',FLapABSEN.TDTTanggalAkhir.Date);
end;

procedure TFREPAbsen1.QRDBText4Print(sender: TObject; var Value: String);
begin
Value:=FormatDateTime('dddd',FLapABSEN.ADOProsesTanggalAbsen.Value)
end;

procedure TFREPAbsen1.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if FLapABSEN.ADOProses.FieldByName('FLAG').Value='Izin' then
   QRDBText3.Font.Color :=clBlue else
if FLapABSEN.ADOProses.FieldByName('FLAG').Value='Cuti' then
   QRDBText3.Font.Color :=clRed else
if FLapABSEN.ADOProses.FieldByName('FLAG').Value='Dinas' then
   QRDBText3.Font.Color :=clYellow
else
   QRDBText3.Font.Color :=clBlack;

if FormatDateTime('dddd',FLapABSEN.ADOProsesTanggalAbsen.Value)='Minggu' then
   QRDBText4.Font.Color :=clRed
else
   QRDBText4.Font.Color :=clBlack;

end;

end.
