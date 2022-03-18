unit UDModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDModule = class(TDataModule)
    conKoneksi: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DModule: TDModule;

implementation

{$R *.dfm}

end.
