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
  FVenda.excluirVenda(1);
  
  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda ' +
    ' FROM Venda ' +
    'WHERE CODVenda  = ' + IntToStr(1));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'Venda Excluído.')
  else
    check(1 = 2 , 'Venda não Excluído.')

end;

procedure TVendaTeste.TestVendaInclusao;
var codVenda: Integer;
begin
  FVenda.CodVenda     := 2942;
  FVenda.CodCliente   := 1000002;
  FVenda.CodUsuario   := 1;
  FVenda.CodVendedor  := 1;
  FVenda.DataVenda    := 6/2/2008;
  FVenda.DataVcto     := 6/2/2008;
  FVenda.CodCCusto    := 51;
  FVenda.NotaFiscal   := 10;
  FVenda.Serie        := 'V';
  FVenda.CodMov       := 1000001;
  FVenda.NParcela     := 1;

  codVenda := FVenda.inserirVenda(2942);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda' +
        '  FROM Venda C ' +
        ' WHERE C.SERIE = ' + QuotedStr('C') +
        '   AND C.NOTAFISCAL = 10');
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CodVenda').AsInteger = codVenda , 'Venda Não Gravada.');
end;


initialization
  RegisterTest('Venda/Teste', TVendaTeste.Suite);

end.
