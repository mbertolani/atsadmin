unit uEstoqueTeste;

interface
uses TestFramework, uEstoque;

type
  TEstoqueTeste = class(TTestCase)
  private
    FEstoque: TEstoque;

  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestInserirMes;
end;


implementation


{ TEstoqueTeste }

procedure TEstoqueTeste.SetUp;
begin
  inherited;
  FEstoque := TEstoque.Create;
end;

procedure TEstoqueTeste.TearDown;
begin
  inherited;
  FEstoque.Free;
end;

procedure TEstoqueTeste.TestInserirMes;
begin
  check(FEstoque.inserirMes, 'Não Fez a inserção');
end;

initialization
  RegisterTest('Tutorial/Teste', TEstoqueTeste.Suite);

end.
 