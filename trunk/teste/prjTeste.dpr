program prjTeste;

uses
  Forms,
  TestFrameWork,
  GuiTestRunner,
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule},
  uEstoqueTeste in 'uEstoqueTeste.pas',
  uEstoque in '..\comercial\src\uEstoque.pas';
{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  GUITestRunner.RunRegisteredTests;
end.

