program prjTeste;

uses
  Forms,
  TestFrameWork,
  GuiTestRunner,
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule},
  uEstoqueTeste in 'uEstoqueTeste.pas',
  uEstoque in '..\comercial\src\uEstoque.pas',
  uMovimento in '..\comercial\src\uMovimento.pas',
  uMovimentoDetalhe in '..\comercial\src\uMovimentoDetalhe.pas',
  uMovimentoTeste in 'uMovimentoTeste.pas',
  uCliente in '..\comercial\src\uCliente.pas',
  uClienteEnderecos in '..\comercial\src\uClienteEnderecos.pas',
  uClienteTeste in 'uClienteTeste.pas',
  uCompraCls in '..\comercial\src\uCompraCls.pas',
  uCompraTeste in 'uCompraTeste.pas',
  uVendaTeste in 'uVendaTeste.pas',
  uVendaCls in '..\comercial\src\uVendaCls.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  //TestFrameWork.RegisterTest('Testa Estoque', TEstoqueTeste.Suite);
  //TestFrameWork.RegisterTest('Testa Movimento', TMovimentoTeste.Suite);
  { São Registrados na propriedade  Initialization em cada Classe }
  GUITestRunner.RunRegisteredTests;
end.

