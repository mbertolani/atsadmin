unit uCompraTeste;

interface
uses TestFramework, uCompraCls;

type
  TCompraTeste = class(TTestCase)
  private
    FCompra: TCompraCls;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestCompraInclusao;
    procedure TestCompraAlteracao;
    procedure TestCompraExclusao;
end;

  {const
    CCodCli       = 950000;
    CCodEndereco  = 950000;}

implementation

uses SysUtils, UDm, DateUtils;


{ TClienteTeste }

procedure TCompraTeste.SetUp;
begin
  inherited;
  FCompra := TCompraCls.Create;
end;

procedure TCompraTeste.TearDown;
begin
  FCompra.Destroy;
  inherited;
end;

procedure TCompraTeste.TestCompraAlteracao;
begin
  {FCompra.verCompra(IntToStr(CCodCli),'CODCompra', 'INTEGER');
  FCompra.NomeCompra := 'TESTE Compra 1 PONTO 2';
  FCompra.Status      := 1;
  FCompra.TipoFirma   := 0;
  FCompra.Cnpj        := '115.555.999-02';
  FCompra.InscEstadual:= '54.987.987-EP';
  FCompra.alterarCompra(CCodCli);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT NOMECompra, RAZAOSOCIAL, CNPJ, INSCESTADUAL,' +
        'LOGRADOURO, BAIRRO, CIDADE, CD_IBGE, CEP, E_MAIL ' +
        ' FROM CompraS C, ENDERECOCompra CE ' +
        'WHERE C.CODCompra = CE.CODCompra ' +
        '  AND C.CODCompra = ' + IntToStr(FCompra.CodCli));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('NOMECompra').AsString = FCompra.NomeCompra , 'Nome Compra Errado.');
  check(dm.sqlBusca.FieldByName('CNPJ').AsString        = FCompra.Cnpj , 'CNPJ/CPF Errado.');
  check(dm.sqlBusca.FieldByName('INSCESTADUAL').AsString= FCompra.InscEstadual , 'Insc. Estadual Errado.');
   }
end;

procedure TCompraTeste.TestCompraExclusao;                      
begin
  // Testa exclusão
  FCompra.excluirCompra(1002501);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO ' +
    ' FROM Compra ' +
    'WHERE CODMOVIMENTO  = ' + IntToStr(1002501));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'Compra Excluído.')
  else
    check(1 = 2 , 'Compra não Excluído.')

end;

procedure TCompraTeste.TestCompraInclusao;
var codCompra: Integer;
begin
  FCompra.CodCompra     := 0;
  FCompra.CodFornecedor := 0;
  FCompra.CodUsuario    := 1;
  FCompra.CodComprador  := 1;
  FCompra.DataCompra    := Today;
  FCompra.DataVcto      := Today;
  FCompra.CodCCusto     := 0;
  Fcompra.NotaFiscal    := 99999991;
  Fcompra.Serie         := 'O';
  FCompra.CodMov        := 476;

  codCompra := FCompra.inserirCompra(0);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODCOMPRA' +
        '  FROM Compra C ' +
        ' WHERE C.SERIE = ' + QuotedStr('O') +
        '   AND C.NOTAFISCAL = 99999991');
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CODCOMPRA').AsInteger = codCompra , 'Compra Não Gravada.');
end;


initialization
  RegisterTest('Compra/Teste', TCompraTeste.Suite);

end.
