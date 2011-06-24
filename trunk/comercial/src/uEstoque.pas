unit uEstoque;

interface
uses SysUtils, Dialogs;

type
  TEstoque = class(TObject)
  private
    function getCodProduto: Integer;
    function getLote: String;
    function getUn: String;
    function getMes: Integer;
    function getCentroCusto: Integer;
    function getQtdeCompra: Double;
    function getQtdeVenda: Double;
    function getQtdeEntrada: Double;
    function getQtdeSaida: Double;
    function getQtdePerda: Double;
    function getQtdeDevolucao: Double;
    function getPrecoCusto: Double;
    function getPrecoVenda: Double;
    procedure setCodProduto(const Value: Integer);
    procedure setMes(const Value: Integer);
    procedure setCentroCusto(const Value: Integer);
    procedure setLote(const Value: String);
    procedure setUn(const Value: String);
    procedure setQtdeCompra(const Value: Double);
    procedure setQtdeVenda(const Value: Double);
    procedure setQtdeEntrada(const Value: Double);
    procedure setQtdeSaida(const Value: Double);
    procedure setQtdePerda(const Value: Double);
    procedure setQtdeDevolucao(const Value: Double);
    procedure setPrecoCusto(const Value: Double);
    procedure setPrecoVenda(const Value: Double);

    function jaFoiInserido(CodProduto: Integer): Boolean;
  protected
    //Atributos
    _codProduto: Integer;
    _lote: String;
    _mesano: Integer;
    _un: String;
    _qtdeCompra: Double;
    _qtdeVenda: Double;
    _qtdeEntrada: Double;
    _qtdeSaida: Double;
    _qtdeDevolucao: Double;
    _qtdePerda: Double;
    _precoCusto: Double;
    _precoVenda: Double;
    _centroCusto: integer;
  public
    property CodProduto: Integer read getCodProduto write setCodProduto;
    property Mes: Integer read getMes write setMes;
    property CentroCusto: Integer read getCentroCusto write setCentroCusto;    
    property Lote: String read getLote write setLote;
    property Un: String read getUn write setUn;
    property QtdeCompra: Double read getQtdeCompra write setQtdeCompra;
    property QtdeVenda: Double read getQtdeVenda write setQtdeVenda;
    property QtdeEntrada: Double read getQtdeEntrada write setQtdeEntrada;
    property QtdeSaida: Double read getQtdeSaida write setQtdeSaida;
    property QtdePerda: Double read getQtdePerda write setQtdePerda;
    property QtdeDevolucao: Double read getQtdeDevolucao write setQtdeDevolucao;
    property PrecoCusto: Double read getPrecoCusto write setPrecoCusto;
    property PrecoVenda: Double read getPrecoVenda write setPrecoVenda;

    //Metodos
    function inserirMes(): Boolean;
    function verEstoque(Mes: Integer): Boolean;

  end;


  const
    TABLENAME = 'ESTOQUE';

implementation

uses UDm, SqlExpr, DB;

{ TEstoque }

function TEstoque.getCentroCusto: Integer;
begin
  Result := _centroCusto;
end;

function TEstoque.getCodProduto: Integer;
begin
  Result := _codProduto;
end;

function TEstoque.getLote: String;
begin
  Result := _lote;
end;

function TEstoque.getMes: Integer;
begin
  Result := _mesano;
end;

function TEstoque.getPrecoCusto: Double;
begin
  Result := _precoCusto;
end;

function TEstoque.getPrecoVenda: Double;
begin
  Result := _precoVenda;
end;

function TEstoque.getQtdeCompra: Double;
begin
  Result := _qtdeCompra;
end;

function TEstoque.getQtdeDevolucao: Double;
begin
  Result := _qtdeDevolucao;
end;

function TEstoque.getQtdeEntrada: Double;
begin
  Result := _qtdeEntrada;
end;

function TEstoque.getQtdePerda: Double;
begin
  Result := _qtdePerda;
end;

function TEstoque.getQtdeSaida: Double;
begin
  Result := _qtdeSaida;
end;

function TEstoque.getQtdeVenda: Double;
begin
  Result := _qtdeVenda;
end;

function TEstoque.getUn: String;
begin
  Result := _un;
end;

function TEstoque.inserirMes: Boolean;
var sql: String;
begin
  Try
    Result := false;
    sql := 'INSERT INTO ESTOQUEMES (CODPRODUTO, LOTE, MESANO, QTDEENTRADA, ' +
      'QTDECOMPRA, QTDEDEVOLUCAO, QTDESAIDA, QTDEVENDA, QTDEPERDA, PRECOCUSTO, ' +
      'PRECOVENDA, CENTROCUSTO) VALUES (';
    sql := sql + IntToStr(Self.CodProduto) + ', ';
    sql := sql + QuotedStr(Self.Lote) + ', ';
    sql := sql + IntToStr(Self.Mes) + ', ';
    DecimalSeparator := '.';
    sql := sql + FloatToStr(Self.QtdeEntrada) + ', ';
    sql := sql + FloatToStr(Self.QtdeCompra) + ', ';
    sql := sql + FloatToStr(Self.QtdeDevolucao) + ', ';
    sql := sql + FloatToStr(Self.QtdeSaida) + ', ';
    sql := sql + FloatToStr(Self.QtdeVenda) + ', ';
    sql := sql + FloatToStr(Self.QtdePerda) + ', ';
    sql := sql + FloatToStr(Self.PrecoCusto) + ', ';
    sql := sql + FloatToStr(Self.PrecoVenda) + ', ';
    sql := sql + IntToStr(Self.CentroCusto) + ')';
    Try
      dm.sqlsisAdimin.ExecuteDirect(sql);
      Result := True;
    Except
    end;
  Except
    on E : Exception do
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
  end;
end;

function TEstoque.jaFoiInserido(CodProduto: Integer): Boolean;
begin
  With dm, sqlBusca do begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVOLUCAO, QTDESAIDA, QTDEVENDA,' +
      'QTDEPERDA, PRECOCUSTO, PRECOVENDA ' +
      ' FROM ESTOQUEMES ' +
      'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
      '  AND LOTE        = ' + QuotedStr(Self.Lote) +
      '  AND MESANO      = ' + IntToStr(Self.Mes) +
      '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto));
    Open;
    if (sqlBusca.IsEmpty) then
    begin
      Result := False;
    end
    else begin
      Result := True;
      Self.QtdeEntrada := FieldByName('QTDEENTRADA').AsFloat;
    end;
  end;
end;

procedure TEstoque.setCentroCusto(const Value: Integer);
begin
  _centroCusto := Value;
end;

procedure TEstoque.setCodProduto(const Value: Integer);
begin
  _codProduto := Value;
end;

procedure TEstoque.setLote(const Value: String);
begin
  _lote := Trim(Value);
end;

procedure TEstoque.setMes(const Value: Integer);
begin
  _mesano := Value;
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

procedure TEstoque.setQtdeDevolucao(const Value: Double);
begin
  _qtdeDevolucao := Value;
end;

procedure TEstoque.setQtdeEntrada(const Value: Double);
begin
  _qtdeEntrada := Value;
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

procedure TEstoque.setUn(const Value: String);
begin
  _un := Trim(Value);
end;

function TEstoque.verEstoque(Mes: Integer): Boolean;
begin
  Result := false;
end;

end.
