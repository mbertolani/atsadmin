unit uOsDetalheClasse;

interface

uses  SysUtils, Dialogs, dbXpress;

Type
  TOsDetalheClasse = class(TObject)
  private
    function getCodDet: Integer;
    function getCodOs : Integer;
    function getCodUsuario: Integer;
    function getStatus: String;
    function executaSql(strSql: String): Boolean;
    function getDescricao: String;
    function getKm: Integer;
    function getPreco: Double;
    function getQtde: Double;
    function getServExecutado: String;
    procedure setCodDet(const Value: Integer);
    procedure setCodOs(const Value: Integer);
    procedure setCodUsuario(const Value: Integer);
    procedure setStatus(const Value: String);
    procedure setDescricao(const Value: String);
    procedure setKm(const Value: Integer);
    procedure setPreco(const Value: Double);
    procedure setQtde(const Value: Double);
    procedure setServExecutado(const Value: String);
  protected
    //Atributos
    _codOs      : Integer;
    _codDet     : Integer;
    _codUsuario : Integer;
    _status     : String;
    _descricao  : String;
    _servExecutado : String;
    _preco      : Double;
    _qtde       : Double;
    _km         : Integer;

  public
    property CodOs         : Integer read getCodOs write setCodOs;
    property CodDet        : Integer read getCodDet write setCodDet;
    property CodUsuario    : Integer read getCodUsuario write setCodUsuario;
    property Status        : String read getStatus write setStatus;
    property km            : Integer read getKm write setKm;
    property Descricao     : String read getDescricao write setDescricao;
    property ServExecutado : String read getServExecutado write setServExecutado;
    property Qtde          : Double read getQtde write setQtde;
    property Preco         : Double read getPreco write setPreco;

    function IncluirOsDet(codOsDetI: Integer): Integer;
    function alterarOsDet(codOsDetA: Integer): Boolean;
    function excluirOsDet(codMovDetE: Integer): Boolean;

    procedure ListaOs(DataIni: TdateTime; DataFim: TDateTime; codCliente: Integer);

  end;

implementation

uses UDm;

{ TOsDetalheClasse }

function TOsDetalheClasse.alterarOsDet(codOsDetA: Integer): Boolean;
var sqlAltera: String;
begin
  // Alteracao
  try
    DecimalSeparator := '.';
    sqlAltera := 'UPDATE OS_DET SET ';
    sqlAltera := sqlAltera + ' CODUSUARIO      = ' + IntToStr(Self.codUsuario) + ', ';
    sqlAltera := sqlAltera + ' DESCRICAO       = ' + QuotedStr(Self.Descricao) + ', ';
    sqlAltera := sqlAltera + ' SERV_EXECUTADO  = ' + QuotedStr(Self.ServExecutado) + ', ';
    sqlAltera := sqlAltera + ' STATUS          = ' + QuotedStr(Self.status) + ', ';
    sqlAltera := sqlAltera + ' QTDE            = ' + FloatToStr(Self.Qtde);
    sqlAltera := sqlAltera + ' PRECO           = ' + FloatToStr(Self.Preco);
    sqlAltera := sqlAltera + ' WHERE ID_OS_DET = ' + IntToStr(Self.CodDet);
    executaSql(sqlAltera);
    Result := True;
    DecimalSeparator := ',';
  except
    Result := False;
    DecimalSeparator := ',';
  end;
end;

function TOsDetalheClasse.excluirOsDet(codMovDetE: Integer): Boolean;
var sqlExclui: String;
begin
  // Exclusao
  {
    So e permitido excluir OS  PENDENTE
  }
  Result := False;
  sqlExclui := 'DELETE FROM OS_DET ';
  sqlExclui := sqlExclui + ' WHERE ID_OS_DET  = ' + IntToStr(Self.CodDet);
  sqlExclui := sqlExclui + '   AND STATUS     = ' + QuotedStr('P');

  if (executaSql(sqlExclui)) then
    Result := True;

end;

function TOsDetalheClasse.executaSql(strSql: String): Boolean;
var     TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    dm.sqlsisAdimin.Commit(TD);
    Result := True;
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
      Result := False;
    end;
  end;
end;

function TOsDetalheClasse.getCodDet: Integer;
begin
  Result := _codDet;
end;

function TOsDetalheClasse.getCodOs: Integer;
begin
  Result := _codOs;
end;


function TOsDetalheClasse.getCodUsuario: Integer;
begin
  Result := _codUsuario;
end;

function TOsDetalheClasse.getDescricao: String;
begin
  Result := Trim(_descricao);
end;

function TOsDetalheClasse.getKm: Integer;
begin
  Result := _km;
end;

function TOsDetalheClasse.getPreco: Double;
begin
  Result := _preco;
end;

function TOsDetalheClasse.getQtde: Double;
begin
  Result := _qtde;
end;

function TOsDetalheClasse.getServExecutado: String;
begin
  Result := Trim(_servExecutado);
end;

function TOsDetalheClasse.getStatus: String;
begin
  Result := Trim(_status);
end;

function TOsDetalheClasse.IncluirOsDet(codOsDetI: Integer): Integer;
var sqlInsere: String;
begin
  // Inclusao
  try
    _codDet := codOsDetI;
    if (Self.CodDet = 0) then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_OSDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      _codDet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
    end;
    sqlInsere := 'INSERT INTO OS_DET(ID_OS_DET, ID_OS, CODUSUARIO, '+
      'DESCRICAO, SERV_EXECUTADO, QTDE, PRECO, STATUS) VALUES (';
    sqlInsere := sqlInsere + IntToStr(Self.CodDet) + ', ';
    sqlInsere := sqlInsere + IntToStr(Self.CodOs) + ', ';
    sqlInsere := sqlInsere + IntToStr(Self.codUsuario) + ', ';
    sqlInsere := sqlInsere + QuotedStr(Self.Descricao) + ', ';
    sqlInsere := sqlInsere + QuotedStr(Self.ServExecutado) + ', ';
    sqlInsere := sqlInsere + QuotedStr(Self.status) + ', ';
    sqlInsere := sqlInsere + FloatToStr(Self.Qtde) + ', ';
    sqlInsere := sqlInsere + FloatToStr(Self.Preco) + ')';
    executaSql(sqlInsere);
    Result := Self.CodDet;
  except
    Result := 0;
  end;

end;

procedure TOsDetalheClasse.ListaOs(DataIni, DataFim: TDateTime;
  codCliente: Integer);
begin
  // Lista
end;

procedure TOsDetalheClasse.setCodDet(const Value: Integer);
begin
  _codDet := Value;
end;

procedure TOsDetalheClasse.setCodOs(const Value: Integer);
begin
  _codOs := Value;
end;

procedure TOsDetalheClasse.setCodUsuario(const Value: Integer);
begin
  _codUsuario := Value;
end;

procedure TOsDetalheClasse.setDescricao(const Value: String);
begin
  _descricao := Value;
end;

procedure TOsDetalheClasse.setKm(const Value: Integer);
begin
  _km := Value;
end;

procedure TOsDetalheClasse.setPreco(const Value: Double);
begin
  _preco := Value;
end;

procedure TOsDetalheClasse.setQtde(const Value: Double);
begin
  _qtde := Value;
end;

procedure TOsDetalheClasse.setServExecutado(const Value: String);
begin
  _servExecutado := Value;
end;

procedure TOsDetalheClasse.setStatus(const Value: String);
begin
  _status := Value;
end;

end.
