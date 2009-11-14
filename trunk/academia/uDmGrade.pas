unit uDmGrade;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr;

type
  Tdm = class(TDataModule)
    sconn: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  sconn.Connected := False;
  sconn.LoadParamsFromIniFile('dbxconnections.ini');
  sconn.LibraryName := 'dbexpUIBfire15.dll';
  sconn.VendorLib := 'FBCLIENT.DLL';
end;

end.
