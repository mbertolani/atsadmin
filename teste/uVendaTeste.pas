unit uVendaTeste;

interface
uses TestFramework, uVendaCls;

type
  TVendaTeste = class(TTestCase)
  private
    FVenda: TVendaCls;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestVendaInclusao;
    procedure TestVendaAlteracao;
    procedure TestVendaExclusao;
end;

  {const
    CCodCli       = 950000;
    CCodEndereco  = 950000;}

implementation

uses SysUtils, UDm, DateUtils;


{ TClienteTeste }

procedure TVendaTeste.SetUp;
begin
  inherited;
  FVenda := TVendaCls.Create;
end;

procedure TVendaTeste.TearDown;
begin
  FVenda.Destroy;
  inherited;
end;

procedure TVendaTeste.TestVendaAlteracao;
begin
  {FVenda.verVenda(IntToStr(CCodCli),'CODVenda', 'INTEGER');
  FVenda.NomeVenda := 'TESTE Venda 1 PONTO 2';
  FVenda.Status      := 1;
  FVenda.TipoFirma   := 0;
  FVenda.Cnpj        := '115.555.999-02';
  FVenda.InscEstadual:= '54.987.987-EP';
  FVenda.alterarVenda(CCodCli);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT NOMEVenda, RAZAOSOCIAL, CNPJ, INSCESTADUAL,' +
        'LOGRADOURO, BAIRRO, CIDADE, CD_IBGE, CEP, E_MAIL ' +
        ' FROM VendaS C, ENDERECOVenda CE ' +
        'WHERE C.CODVenda = CE.CODVenda ' +
        '  AND C.CODVenda = ' + IntToStr(FVenda.CodCli));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('NOMEVenda').AsString = FVenda.NomeVenda , 'Nome Venda Errado.');
  check(dm.sqlBusca.FieldByName('CNPJ').AsString        = FVenda.Cnpj , 'CNPJ/CPF Errado.');
  check(dm.sqlBusca.FieldByName('INSCESTADUAL').AsString= FVenda.InscEstadual , 'Insc. Estadual Errado.');
   }
end;

procedure TVendaTeste.TestVendaExclusao;
begin
  // Testa exclusão
  {FVenda.excluirVenda(CCodCli);
  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda ' +
    ' FROM VendaS ' +
    'WHERE CODVenda  = ' + IntToStr(CCodCli));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'Venda Excluído.')
  else
    check(1 = 2 , 'Venda não Excluído.')
   }
end;

procedure TVendaTeste.TestVendaInclusao;
var codVenda: Integer;
begin
  FVenda.CodVenda     := 0;
  FVenda.CodCliente   := 0;
  FVenda.CodUsuario   := 1;
  FVenda.CodVendedor  := 1;
  FVenda.DataVenda    := Today;
  FVenda.DataVcto     := Today;
  FVenda.CodCCusto    := 0;
  FVenda.NotaFiscal   := 99999992;
  FVenda.Serie        := 'I';
  FVenda.CodMov       := 476;

  codVenda := FVenda.inserirVenda(0);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda' +
        '  FROM Venda C ' +
        ' WHERE C.SERIE = ' + QuotedStr('I') +
        '   AND C.NOTAFISCAL = 99999992');
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CodVenda').AsInteger = codVenda , 'Venda Não Gravada.');
end;


initialization
  RegisterTest('Venda/Teste', TVendaTeste.Suite);

end.
