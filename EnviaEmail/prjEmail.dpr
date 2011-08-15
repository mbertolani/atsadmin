program prjEmail;

uses
  Forms,
  uEmail in 'uEmail.pas' {Form1},
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
