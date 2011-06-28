unit uEstoqueTeste;

interface
uses TestFramework, uEstoque;

type
  TEstoqueTeste = class(TTestCase)
  private
    FEstoque: TEstoque;
    pcusto, pTeste : Double;

  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestInserirPrimeiraEntradaSistema;
    procedure TestNovaEntradaNoMes;   // Segunda entrada no mesmo mes
    procedure TestInserirPrimeiraEntradaNovoMes; // Entrada em um novo mes, com estoque no mes anterior
    procedure TestInserirEntradaNoMesAnteriorNaoFechado; // Entrada no mes Anterior Nao Fechado, e que ja houve Movimento mes Posterior
    procedure TestInserirEntradaNoMesAnteriorFechado; // Entrada no mes Anterior que ja foi fechado
    procedure TestSaidaSemTerSaldo;
    procedure TestSaidaSemSaldoNoMes;
    procedure TestSaidaComSaldoNoMes;
end;

  const
    CCodProduto  = 50;
    CCentroCusto =  0;
    CLote        = '0';
    CMesAno      = '01/06/2011';
    CMesAnoAnterior = '25/05/2011';
    CMesAnoPosterior = '01/07/2011';
implementation

uses SysUtils, UDm;


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

procedure TEstoqueTeste.TestInserirPrimeiraEntradaSistema;
begin
  FEstoque.QtdeCompra := 20;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoCusto  := 2.5;

  // Se ja houver este lançamneto Limpo a tabela
  dm.sqlsisAdimin.ExecuteDirect('DELETE FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
        //'  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +

  // Testa se esta Inserindo novo valor

  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat = 2.5 , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 20 , 'Quantidade Compra Errado.');
end;

procedure TEstoqueTeste.TestInserirPrimeiraEntradaNovoMes;
begin
  // Teste se esta Somando esta nova inclusão no item q ja existe
  FEstoque.QtdeCompra := 40;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAnoPosterior);
  FEstoque.PrecoCusto  := 4;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  //DecimalSeparator := '.';
  pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 10000) / 10000;  // 4 Casas Decimais
  pTeste := StrToFloat('3,5714');
  //DecimalSeparator := ',';
  check(pCusto = pTeste , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 70 , 'Quantidade Compra Errado.');

end;


procedure TEstoqueTeste.TestNovaEntradaNoMes;
begin
  // Teste se esta Somando esta nova inclusão no item q ja existe
  FEstoque.QtdeCompra := 10;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoCusto  := 4;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat = 3 , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 30 , 'Quantidade Compra Errado.');
end;

procedure TEstoqueTeste.TestSaidaComSaldoNoMes;
begin
  // Teste uma Saida com Saldo No Mes
  FEstoque.QtdeVenda  := 20;
  FEstoque.PrecoVenda := 3.9;
  FEstoque.QtdeCompra := 0;
  FEstoque.CodProduto := 50;
  FEstoque.Lote       := '0';
  FEstoque.CentroCusto := 0;
  FEstoque.MesAno      := StrToDate('06/01/2011');
  FEstoque.PrecoCusto  := 4;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat = 3 , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 30 , 'Quantidade Compra Errado.');

end;

procedure TEstoqueTeste.TestSaidaSemSaldoNoMes;
begin
  check(False , 'Nao Validado.');
end;

procedure TEstoqueTeste.TestSaidaSemTerSaldo;
begin
  check(False , 'Nao Validado.');
end;

procedure TEstoqueTeste.TestInserirEntradaNoMesAnteriorFechado;
begin
  check(False , 'Nao Validado.');
end;

procedure TEstoqueTeste.TestInserirEntradaNoMesAnteriorNaoFechado;
begin
  // Testa uma Entrada no Mes Anterior onde existe lançamento em mes posterior
  FEstoque.QtdeCompra := 30;
  FEstoque.CodProduto := 50;
  FEstoque.Lote       := '0';
  FEstoque.CentroCusto := 0;
  FEstoque.MesAno      := StrToDate('06/01/2011');
  FEstoque.PrecoCusto  := 9;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 10000) / 10000;  // 4 Casas Decimais
  pTeste := StrToFloat('4,5');

  check(pCusto = pTeste , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 60 , 'Quantidade Compra Errado.');

end;

initialization
  RegisterTest('Tutorial/Teste', TEstoqueTeste.Suite);

end.
