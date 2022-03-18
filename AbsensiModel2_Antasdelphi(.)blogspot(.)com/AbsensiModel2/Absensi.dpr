program Absensi;

uses
  Forms,
  UAbsen in 'UAbsen.pas' {FAbsen},
  UListKaryawan in 'UListKaryawan.pas' {FListKaryawan},
  Unit1 in 'Unit1.pas' {FKaryawan},
  UMenu in 'UMenu.pas' {FLapABSEN},
  ULapAbsen1 in 'ULapAbsen1.pas' {FREPAbsen1},
  UFormUtama in 'UFormUtama.pas' {fUtama},
  URepAbsenALL in 'URepAbsenALL.pas' {FRepAbsenALL},
  URepAbsenALL2 in 'URepAbsenALL2.pas' {FRepAbsenALL2},
  ULogin in 'ULogin.pas' {FLogin},
  UDModule in 'UDModule.pas' {DModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ABSENSI';
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TfUtama, fUtama);
  Application.CreateForm(TFAbsen, FAbsen);
  Application.CreateForm(TFLapABSEN, FLapABSEN);
  Application.CreateForm(TFListKaryawan, FListKaryawan);
  Application.CreateForm(TFKaryawan, FKaryawan);
  Application.CreateForm(TFREPAbsen1, FREPAbsen1);
  Application.CreateForm(TFRepAbsenALL, FRepAbsenALL);
  Application.CreateForm(TFRepAbsenALL2, FRepAbsenALL2);
  Application.CreateForm(TDModule, DModule);
  Application.Run;
end.
