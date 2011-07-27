unit uEstoque;

interface
uses SysUtils, Dialogs;

type
  TEstoque = class(TObject)
  private
    novoCusto, totalEstoque: Double;
    sqlStr: String;
    QCompra: Double;  // Armazena Valores que existiam na tabela
    QEntrada: Double;
    QSaida: Double;
    QVenda: Double;
    QDevCompra: Double;
    QDevVenda: Double;
    QPerda: Double;
    PCompra: Double;
    PCompraUltima: Double;
    PCusto: Double;
    PCustoAnterior: Double;
    PVenda: Double;
    QSaldo: Double;
    QInventario: Double;
    QMes  : TDateTime;
    QSaldoAnterior : Double;
    jaConsultado : String;
    resultadoJaInserido : Boolean;
    mesAnoAnterior : TDateTime;
    mesAnoPosterior : TDateTime;
    temMesPosterior: Boolean;
    function getCodProduto: Integer;
    function getCodDetalhe: Integer;
    function getLote: String;
    function getUn: String;
    function getMesAno: TDateTime;
    function getMesAnoPost: TDateTime;
    function getCentroCusto: Integer;
    function getQtdeCompra: Double;
    function getQtdeVenda: Double;
    function getQtdeEntrada: Double;
    function getQtdeSaida: Double;
    function getQtdePerda: Double;
    function getQtdeInventario: Double;
    function getQtdeDevCompra: Double;
    function getQtdeDevVenda: Double;
    function getPrecoCompra: Double;
    function getPrecoCompraUltima: Double;
    function getPrecoCusto: Double;
    function getPrecoVenda: Double;
    function getSaldoAnterior: Double;
    procedure setCodProduto(const Value: Integer);
    procedure setCodDetalhe(const Value: Integer);
    procedure setMesAno(const Value: TDateTime);
    procedure setMesAnoPost(const Value: TDateTime);
    procedure setCentroCusto(const Value: Integer);
    procedure setLote(const Value: String);
    procedure setUn(const Value: String);
    procedure setQtdeCompra(const Value: Double);
    procedure setQtdeVenda(const Value: Double);
    procedure setQtdeInventario(const Value: Double);
    procedure setQtdeEntrada(const Value: Double);
    procedure setQtdeSaida(const Value: Double);
    procedure setQtdePerda(const Value: Double);
    procedure setQtdeDevCompra(const Value: Double);
    procedure setQtdeDevVenda(const Value: Double);
    procedure setPrecoCompra(const Value: Double);
    procedure setPrecoCompraUltima(const Value: Double);
    procedure setPrecoCusto(const Value: Double);
    procedure setPrecoVenda(const Value: Double);
    procedure setSaldoAnterior(const Value: Double);
    function jaFoiInserido(): Boolean;
    procedure corrigeCustoEstoquePosterior; // Qdo Inseri uma entrada no mes Anterior e existe movimento Mes Posterior
    function mesAnterior(MesAtual: TDateTime): TDateTime;
    function validoMovimento(): Boolean;
  protected
    //Atributos
    _codProduto: Integer;
    _codDetalhe: Integer;
    _lote: String;
    _mesano: TDateTime;
    _un: String;
    _qtdeCompra: Double;
    _qtdeVenda: Double;
    _qtdeEntrada: Double;
    _qtdeSaida: Double;
    _qtdeDevCompra: Double;
    _qtdeDevVenda: Double;
    _qtdePerda: Double;
    _qtdeInventario: Double;    
    _precoCusto: Double;
    _precoCompra: Double;
    _precoCompraUltima: Double;
    _precoVenda: Double;
    _saldoAnterior: Double;
    _centroCusto: integer;
    _mesAnoPost: TDateTime;
  public
    property CodProduto: Integer read getCodProduto write setCodProduto;
    property CodDetalhe: Integer read getCodDetalhe write setCodDetalhe;
    property MesAno: TDateTime read getMesAno write setMesAno;
    property MesAnoPost: TDateTime read getMesAno write setMesAno;
    property CentroCusto: Integer read getCentroCusto write setCentroCusto;
    property Lote: String read getLote write setLote;
    property Un: String read getUn write setUn;
    property QtdeCompra: Double read getQtdeCompra write setQtdeCompra;
    property QtdeVenda: Double read getQtdeVenda write setQtdeVenda;
    property QtdeInventario: Double read getQtdeInventario write setQtdeInventario;    
    property QtdeEntrada: Double read getQtdeEntrada write setQtdeEntrada;
    property QtdeSaida: Double read getQtdeSaida write setQtdeSaida;
    property QtdePerda: Double read getQtdePerda write setQtdePerda;
    property QtdeDevCompra: Double read getQtdeDevCompra write setQtdeDevCompra;
    property QtdeDevVenda: Double read getQtdeDevVenda write setQtdeDevVenda;
    property PrecoCusto: Double read getPrecoCusto write setPrecoCusto;
    property PrecoCompra: Double read getPrecoCompra write setPrecoCompra;
    property PrecoCompraUltima: Double read getPrecoCompraUltima write setPrecoCompraUltima;
    property PrecoVenda: Double read getPrecoVenda write setPrecoVenda;
    property SaldoAnterior: Double read getSaldoAnterior write setSaldoAnterior;
    //Metodos
    function inserirMes(): Boolean;
    function verEstoque(MesAno: TDateTime): Boolean;
    function excluirMes(): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;
  
  const
    TABLENAME = 'ESTOQUE';

implementation

uses SqlExpr, DB, UDm;

{ TEstoque }

procedure TEstoque.corrigeCustoEstoquePosterior;
var sqlBuscaPosterior : TSqlQuery;
    mesPost, mesAnt: TDateTime;
    PCusto1, Estoque1, EstoqueAnterior1, VlrEstoque1: Double;
begin
  // Corrigindo Custo e Estoque mes Posterior

  // Busca os meses posteriores que existirem
  sqlStr := 'SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
      'QTDEPERDA, PRECOCUSTO, PRECOVENDA, MESANO ' +
      '  FROM ESTOQUEMES ' +
      ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
      '   AND LOTE        = ' + QuotedStr(Self.Lote) +
      '   AND MESANO      > ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.MesAno)) +
      '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
      ' ORDER BY MESANO';

  sqlBuscaPosterior := TSqlQuery.Create(nil);
  sqlBuscaPosterior.SQLConnection := dm.sqlsisAdimin;
  sqlBuscaPosterior.SQL.Add(sqlStr);
  sqlBuscaPosterior.Active := True;
  mesAnt := Self.MesAno;
  While (not sqlBuscaPosterior.Eof) do
  begin
    mesPost := sqlBuscaPosterior.fieldByName('MESANO').AsDateTime;
    mesAnt := mesAnterior(mesPost);
    self.MesAnoPost := mesPost;
    With dm  do begin
      // Mes Atual
      sqlStr := 'SELECT PRECOCUSTO , MESANO, SALDOMESANTERIOR, SALDOESTOQUE ' +
        '  FROM ESTOQUEMES ' +
        ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
        '   AND LOTE        = ' + QuotedStr(Self.Lote) +
        '   AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', mesAnt)) +
        '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
        ' ORDER BY MESANO';
      if (sqlBusca.Active) then
        sqlBusca.Close;
      sqlBusca.SQL.Clear;
      sqlBusca.SQL.Add(sqlStr);
      sqlBusca.Open;

      PCusto1             := sqlBusca.FieldByName('PRECOCUSTO').AsFloat;
      Estoque1            := sqlBusca.FieldByName('SALDOESTOQUE').AsFloat;
      EstoqueAnterior1    := sqlBusca.FieldByName('SALDOMESANTERIOR').AsFloat;
      VlrEstoque1         := PCusto1 * Estoque1;

      sqlStr := 'SELECT PRECOCOMPRA , MESANO, (SALDOESTOQUE - SALDOMESANTERIOR) as SALDOESTOQUE ' +
        '  FROM ESTOQUEMES ' +
        ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
        '   AND LOTE        = ' + QuotedStr(Self.Lote) +
        '   AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', mesPost)) +
        '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
        ' ORDER BY MESANO';
      if (sqlBusca.Active) then
        sqlBusca.Close;
      sqlBusca.SQL.Clear;
      sqlBusca.SQL.Add(sqlStr);
      sqlBusca.Open;
      PCusto     := sqlBusca.FieldByName('PRECOCOMPRA').AsFloat;
      QSaldo     := sqlBusca.FieldByName('SALDOESTOQUE').AsFloat;
      QMes       := sqlBusca.FieldByName('MESANO').AsDateTime;

      //Estoque1   := Estoque1 + QSaldo;
      PCusto1    := ((PCusto * QSaldo) + VlrEstoque1) / (Estoque1 + Qsaldo);
    end;

    // Atualiza mes Posterior
    DecimalSeparator := '.';
    sqlStr := 'UPDATE ESTOQUEMES SET ';
    sqlStr := sqlStr + ' SALDOMESANTERIOR  = ' + FloatToStr(Estoque1);
    sqlStr := sqlStr + '     , PRECOCUSTO  = ' + FloatToStr(PCusto1);
    sqlStr := sqlStr + ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto);
    sqlStr := sqlStr + '   AND LOTE        = ' + QuotedStr(Self.Lote);
    sqlStr := sqlStr + '   AND MESANO      = ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', QMes));
    sqlStr := sqlStr + '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto);
    DecimalSeparator := ',';
    dm.sqlsisAdimin.ExecuteDirect(sqlStr);
    //QSaldoAnterior := dm.sqlBusca.FieldByName('SALDOMESANTERIOR').AsFloat;
    sqlBuscaPosterior.Next;
  end;
  sqlBuscaPosterior.Free;
end;

constructor TEstoque.Create;
begin
  jaConsultado := 'NAO';
end;

destructor TEstoque.Destroy;
begin
  inherited;
end;

function TEstoque.excluirMes: Boolean;
begin
  // Movimento Excluído

end;

function TEstoque.getCentroCusto: Integer;
begin
  Result := _centroCusto;
end;

function TEstoque.getCodDetalhe: Integer;
begin
  Result := _codDetalhe;
end;

function TEstoque.getCodProduto: Integer;
begin
  Result := _codProduto;
end;

function TEstoque.getLote: String;
begin
  if (_lote = '') then
    Result := '0'
  else
    Result := _lote;
end;

function TEstoque.getMesAno: TDateTime;
begin
  mesAnterior(_mesAno);
  Result := _mesano;
end;

function TEstoque.getMesAnoPost: TDateTime;
begin
  Result := _mesAnoPost;
end;

function TEstoque.getPrecoCompra: Double;
begin
  totalEstoque := QCompra;
  novoCusto    := (PCompra * QCompra);
  if ((totalEstoque + _qtdeCompra) > 0) then
  begin
    novoCusto    := (novoCusto + (_precoCompra * _qtdeCompra))/(totalEstoque + _qtdeCompra);
    Result       := novoCusto;
  end else
    Result := _precoCompra;
end;

function TEstoque.getPrecoCompraUltima: Double;
begin
  Result := _precoCompraUltima;
end;

function TEstoque.getPrecoCusto: Double;
begin
  totalEstoque := QSaldo + QSaldoAnterior;
  novoCusto := (PCusto * QSaldo) + (QSaldoAnterior * PCustoAnterior);
  if ((totalEstoque + _qtdeCompra) > 0) then
  begin
    novoCusto := (novoCusto + (_precoCompra * _qtdeCompra))/(totalEstoque + _qtdeCompra);
    Result := novoCusto;
  end else
    Result := _precoCompra;
end;

function TEstoque.getPrecoVenda: Double;
begin
  totalEstoque := QVenda;
  novoCusto    := (PVenda * QVenda);
  if ((totalEstoque + _qtdeVenda) > 0) then
  begin
    novoCusto    := (novoCusto + (_precoVenda * _qtdeVenda))/(totalEstoque + _qtdeVenda);
    Result       := novoCusto;
  end else
    Result := _precoVenda;
end;

function TEstoque.getQtdeCompra: Double;
begin
  Result := _qtdeCompra + QCompra
end;

function TEstoque.getQtdeDevCompra: Double;
begin
  Result := _qtdeDevCompra + QDevCompra;
end;

function TEstoque.getQtdeDevVenda: Double;
begin
  Result := _qtdeDevVenda + QDevVenda;
end;

function TEstoque.getQtdeEntrada: Double;
begin
  Result := _qtdeEntrada + QEntrada;
end;

function TEstoque.getQtdeInventario: Double;
begin
  Result := _qtdeInventario + QInventario;
end;

function TEstoque.getQtdePerda: Double;
begin
  Result := _qtdePerda + QPerda;
end;

function TEstoque.getQtdeSaida: Double;
begin
  Result := _qtdeSaida + QSaida;
end;

function TEstoque.getQtdeVenda: Double;
begin
  Result := _qtdeVenda + QVenda;
end;

function TEstoque.getSaldoAnterior: Double;
begin
  Result := _saldoAnterior;
end;

function TEstoque.getUn: String;
begin
  Result := _un;
end;

function TEstoque.inserirMes: Boolean;
begin
  {// Valida se o Tipo de Movimento é Válido
  if (validoMovimento = False) then
  begin
    exit;
  end;}
  Try
    Result := false;
    DecimalSeparator := '.';
    if (jaFoiInserido = True) then   // Ja tenho dados no mes so Adiciono
    begin
      sqlStr := 'UPDATE ESTOQUEMES SET ';
      sqlStr := sqlStr + '  QTDEENTRADA   = ' + FloatToStr(Self.QtdeEntrada);
      sqlStr := sqlStr + ', QTDECOMPRA    = ' + FloatToStr(Self.QtdeCompra);
      sqlStr := sqlStr + ', QTDEDEVCOMPRA = ' + FloatToStr(Self.QtdeDevCompra);
      sqlStr := sqlStr + ', QTDEDEVVENDA  = ' + FloatToStr(Self.QtdeDevVenda);
      sqlStr := sqlStr + ', QTDESAIDA     = ' + FloatToStr(Self.QtdeSaida);
      sqlStr := sqlStr + ', QTDEVENDA     = ' + FloatToStr(Self.QtdeVenda);
      sqlStr := sqlStr + ', QTDEPERDA     = ' + FloatToStr(Self.QtdePerda);
      sqlStr := sqlStr + ', QTDEINVENTARIO= ' + FloatToStr(Self.QtdeInventario);
      sqlStr := sqlStr + ', PRECOCUSTO    = ' + FloatToStr(Self.PrecoCusto);
      sqlStr := sqlStr + ', PRECOCOMPRA   = ' + FloatToStr(Self.PrecoCompra);
      sqlStr := sqlStr + ', PRECOCOMPRAULTIMA  = ' + FloatToStr(Self.PrecoCompraUltima);
      sqlStr := sqlStr + ', PRECOVENDA    = ' + FloatToStr(Self.PrecoVenda);
      sqlStr := sqlStr + ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto);
      sqlStr := sqlStr + '   AND LOTE        = ' + QuotedStr(Self.Lote);
      sqlStr := sqlStr + '   AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.MesAno));
      sqlStr := sqlStr + '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto);
    end
    else begin  // Primeira Entrada no Mes
      sqlStr := 'INSERT INTO ESTOQUEMES (CODPRODUTO, LOTE, MESANO, QTDEENTRADA, ' +
        'QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA, QTDEPERDA, PRECOCUSTO, ' +
        'PRECOCOMPRA, PRECOVENDA, CENTROCUSTO, SALDOMESANTERIOR, PRECOCOMPRAULTIMA, QTDEINVENTARIO) VALUES (';
      sqlStr := sqlStr + IntToStr(Self.CodProduto) + ', ';
      sqlStr := sqlStr + QuotedStr(Self.Lote) + ', ';
      sqlStr := sqlStr + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.MesAno)) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeEntrada) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeCompra) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeDevCompra) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeDevVenda) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeSaida) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeVenda) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdePerda) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.PrecoCusto) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.PrecoCompra) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.PrecoVenda) + ', ';
      sqlStr := sqlStr + IntToStr(Self.CentroCusto) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.PrecoCompraUltima) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeInventario) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.SaldoAnterior) + ')';
    end;
    Try
      DecimalSeparator := ',';
      dm.sqlsisAdimin.ExecuteDirect(sqlStr);
      //dm.sqlsisAdimin.Commit();

      // Se tiver Movimento no Mes posterior, o Custo tem que ser Refeito
      if (temMesPosterior = True) then
      begin
        // ********************** carregar aqui o preco de custo e o saldo do mes que acabou de ser inserido
        QSaldoAnterior := totalEstoque;
        PCustoAnterior := Self.PrecoCusto;
        corrigeCustoEstoquePosterior;
      end;

      // Atualiza Cadastro de Produtos
      sqlStr := 'UPDATE PRODUTOS SET ESTOQUEATUAL = ' + FloatToStr(totalEstoque);

      // Se foi Compra, Atualiza valores
      if (Self.QtdeCompra > 0) then
      begin
        sqlStr := sqlStr + ', VALORUNITARIOATUAL = ' + FloatToStr(Self.PrecoCompra);
        sqlStr := sqlStr + ', PRECOMEDIO         = ' + FloatToStr(Self.PrecoCusto);
      end;

      sqlStr := sqlStr + ' WHERE CODPRODUTO = ' + IntToStr(Self.CodProduto);
      dm.sqlsisAdimin.ExecuteDirect(sqlStr);

      sqlStr := 'UPDATE MOVIMENTODETALHE SET STATUS = ' + QuotedStr('9') + ' WHERE CODDETALHE = ' + IntToStr(Self.CodDetalhe);
      dm.sqlsisAdimin.ExecuteDirect(sqlStr);

      Result := True;
    Except
      DecimalSeparator := ',';
    end;
  Except
    on E : Exception do
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
  end;
end;

function TEstoque.jaFoiInserido(): Boolean;
begin
  With dm  do begin
    // Verificando se existe Lancamento em Mes Posterior o mes que esta inserindo
    if (sqlBusca.Active) then
      sqlBusca.Close;
    sqlBusca.sql.Clear;
    sqlBusca.sql.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
      'QTDEPERDA, PRECOCUSTO, PRECOVENDA, SALDOESTOQUE, PRECOCOMPRAULTIMA, QTDEINVENTARIO ' +
      ' FROM ESTOQUEMES ' +
      'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
      '  AND LOTE        = ' + QuotedStr(Self.Lote) +
      '  AND MESANO      > ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.MesAno)) +
      '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto));
    sqlBusca.Open;
    temMesPosterior := False;
    if (not sqlBusca.IsEmpty) then
      temMesPosterior := True;

    // Verificando se ja foi feito algum lancameno no mes do lancamento
    if (sqlBusca.Active) then
      sqlBusca.Close;
    sqlBusca.sql.Clear;
    sqlBusca.sql.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
      'QTDEPERDA, PRECOCUSTO, PRECOVENDA, SALDOESTOQUE, PRECOCOMPRA, PRECOCOMPRAULTIMA, QTDEINVENTARIO ' +
      ' FROM ESTOQUEMES ' +
      'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
      '  AND LOTE        = ' + QuotedStr(Self.Lote) +
      '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.MesAno)) +
      '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto));
    sqlBusca.Open;
    jaConsultado := 'SIM';
    if (sqlBusca.IsEmpty) then
    begin
      Result := False;
      QEntrada   := 0;
      QCompra    := 0;
      QDevCompra := 0;
      QDevVenda  := 0;
      QSaida     := 0;
      QVenda     := 0;
      QPerda     := 0;
      QSaldo     := 0;
      QInventario := 0;
      PCusto     := 0;
      PCompra    := 0;
      PCompraUltima := 0;
      PVenda     := 0;
      // Não Encontrou mes atual , busca Qtdes e Precos do Mês Anterior
      sqlBusca.Close;
      sqlBusca.sql.Clear;
      sqlBusca.sql.Add('SELECT PRECOCUSTO, SALDOESTOQUE' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(Self.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', mesAnoAnterior)) +
        '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto));
      sqlBusca.Open;
      if (sqlBusca.IsEmpty) then      // Não achou nada no sistema
      begin
        PCustoAnterior := 0;
        QSaldoAnterior := 0;
      end else begin
        PCustoAnterior := sqlBusca.FieldByName('PRECOCUSTO').AsFloat;
        QSaldoAnterior := sqlBusca.FieldByName('SALDOESTOQUE').AsFloat;
        Self.SaldoAnterior := QSaldoAnterior;
        //Self.PrecoCusto    := PCustoAnterior;
      end;
      resultadoJaInserido := True;
    end
    else begin
      Result := True;
      resultadoJaInserido := True;
      QEntrada   := sqlBusca.FieldByName('QTDEENTRADA').AsFloat;
      QCompra    := sqlBusca.FieldByName('QTDECOMPRA').AsFloat;
      QDevCompra := sqlBusca.FieldByName('QTDEDEVCOMPRA').AsFloat;
      QDevVenda  := sqlBusca.FieldByName('QTDEDEVVENDA').AsFloat;
      QSaida     := sqlBusca.FieldByName('QTDESAIDA').AsFloat;
      QVenda     := sqlBusca.FieldByName('QTDEVENDA').AsFloat;
      QPerda     := sqlBusca.FieldByName('QTDEPERDA').AsFloat;
      QInventario     := sqlBusca.FieldByName('QTDEINVENTARIO').AsFloat;
      PCusto     := sqlBusca.FieldByName('PRECOCUSTO').AsFloat;
      PCompra    := sqlBusca.FieldByName('PRECOCOMPRA').AsFloat;
      PCompraUltima    := sqlBusca.FieldByName('PRECOCOMPRAULTIMA').AsFloat;
      PVenda     := sqlBusca.FieldByName('PRECOVENDA').AsFloat;
      QSaldo     := sqlBusca.FieldByName('SALDOESTOQUE').AsFloat;
    end;
  end;
end;

function TEstoque.mesAnterior(MesAtual: TDateTime): TDateTime;
  var    ano, mes, dia: word;
begin
  decodedate(MesAtual, ano, mes, dia);
  dia := 1;
  mes := mes - 1;
  if (mes = 0) then
    mes := 12;
  mesAnoAnterior := encodedate(ano, mes, dia);
  mes := mes + 2; // Mes Anterior + 2
  if (mes > 12) then
    mes := 1;
  mesAnoPosterior := encodedate(ano, mes, dia);
  Result := mesAnoAnterior;
end;

procedure TEstoque.setCentroCusto(const Value: Integer);
begin
  _centroCusto := Value;
end;

procedure TEstoque.setCodDetalhe(const Value: Integer);
begin
  _codDetalhe := Value;
end;

procedure TEstoque.setCodProduto(const Value: Integer);
begin
  _codProduto := Value;
end;

procedure TEstoque.setLote(const Value: String);
begin
  _lote := Trim(Value);
end;


procedure TEstoque.setMesAno(const Value: TDateTime);
  var    anoa, mesa, diaa: word;
begin
  decodedate(Value, anoa, mesa, diaa);
  diaa := 1;
  _mesAno := EncodeDate(anoa, mesa, diaa);
end;

procedure TEstoque.setMesAnoPost(const Value: TDateTime);
begin
  _mesAnoPost := Value;
end;

procedure TEstoque.setPrecoCompra(const Value: Double);
begin
  _precoCompra := Value;
end;

procedure TEstoque.setPrecoCompraUltima(const Value: Double);
begin
  _precoCompraUltima := Value;
end;

procedure TEstoque.setPrecoCusto(const Value: Double);
begin
  _precoCusto := Value;
end;

procedure TEstoque.setPrecoVenda(const Value: Double);
begin
  _precoVenda := Value;
end;

procedure TEstoque.setQtdeCompra(const Value: Double);
begin
  _qtdeCompra := Value;
end;

procedure TEstoque.setQtdeDevCompra(const Value: Double);
begin
  _qtdeDevCompra := Value;
end;

procedure TEstoque.setQtdeDevVenda(const Value: Double);
begin
  _qtdeDevVenda := Value;
end;

procedure TEstoque.setQtdeEntrada(const Value: Double);
begin
  _qtdeEntrada := Value;
end;

procedure TEstoque.setQtdeInventario(const Value: Double);
begin
  _qtdeInventario := Value;
end;

procedure TEstoque.setQtdePerda(const Value: Double);
begin
  _qtdePerda := Value;
end;

procedure TEstoque.setQtdeSaida(const Value: Double);
begin
  _qtdeSaida := Value;
end;

procedure TEstoque.setQtdeVenda(const Value: Double);
begin
  _qtdeVenda := Value;
end;

procedure TEstoque.setSaldoAnterior(const Value: Double);
begin
  _saldoAnterior := Value;
end;

procedure TEstoque.setUn(const Value: String);
begin
  _un := Trim(Value);
end;

function TEstoque.validoMovimento: Boolean;
begin
  {sqlBusca.Close;
  sqlBusca.sql.Clear;
  sqlBusca.sql.Add('SELECT BAIXAMOVIMENTO ' +
    ' FROM NATUREZAOPERACAO ' +
    'WHERE CODNATUREZA = ' + IntToStr(Self.CodProduto) +
    '  AND LOTE        = ' + QuotedStr(Self.Lote) +
    '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', mesAnoAnterior)) +
    '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto));
  sqlBusca.Open;
  if (sqlBusca.IsEmpty) then      // Não achou nada no sistema
  begin
  end;}
end;

function TEstoque.verEstoque(MesAno: TDateTime): Boolean;
begin
  Result := false;
end;

end.
