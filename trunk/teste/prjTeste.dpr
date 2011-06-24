program prjTeste;

uses
  TestFrameWork,
  GuiTestRunner,
  uEstoqueTeste in 'uEstoqueTeste.pas',
  uEstoque in '..\comercial\src\uEstoque.pas',
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule};

{$R *.res}

begin
  //Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.

