unit uPagarTeste;

interface
uses TestFramework, uPagarCls;

type
  TPagTeste = class(TTestCase)
  private
    FPag: TPagarCls;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestPagInclusao;
    procedure TestPagAlteracao;
    procedure TestPagExclusao;
end;



implementation

{ TPagTeste }

procedure TPagTeste.SetUp;
begin
  inherited;
  FPag := TPagarCls.Create;
end;

procedure TPagTeste.TearDown;
begin
  FPag.Destroy;
  inherited;

end;

procedure TPagTeste.TestPagAlteracao;
begin

end;

procedure TPagTeste.TestPagExclusao;
begin

end;

procedure TPagTeste.TestPagInclusao;
begin

end;

initialization
  RegisterTest('Pagarr/Teste', TPagTeste.Suite);


end.
