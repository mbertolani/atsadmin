unit uOsClasse;

interface

uses  SysUtils, Dialogs, dbXpress, uMovimentoDetalhe, DateUtils;

Type
  TOsClasse = class(TObject)
  private
    function getCodCliente: Integer;
    function getCodOs: Integer;
    function getCodUsuario: Integer;
    function getCodVeiculo: String; // Placa
    function getDataFim: TDateTime;
    function getDataInicio: TDateTime;
    function getDataOs: TDateTime;
    function getKm: Integer;
    function getStatus: String;
    function executaSql(strSql: String): Boolean;
    procedure setCodCliente(const Value: Integer);
    procedure setCodOs(const Value: Integer);
    procedure setCodUsuario(const Value: Integer);
    procedure setCodVeiculo(const Value: String);
    procedure setDataFim(const Value: TDateTime);
    procedure setDataInicio(const Value: TDateTime);
    procedure setDataOs(const Value: TDateTime);
    procedure setKm(const Value: Integer);
    procedure setStatus(const Value: String);
  protected
    //Atributos
    _codOs      : Integer;
    _codCliente : Integer;
    _codVeiculo : String;
    _dataOs     : TDateTime;
    _dataInicio : TDateTime;
    _dataFim    : TDateTime;
    _status     : String;
    _codUsuario : Integer;
    _km         : Integer;

  public
    property codOs : Integer read getCodOs write setCodOs;
    property codCliente : Integer read getCodCliente write setCodCliente;
    property codVeiculo: String read getCodVeiculo write setCodVeiculo;
    property dataOs: TDateTime read getDataOs write setDataOs;
    property dataInicio: TDateTime read getDataInicio write setDataInicio;
    property dataFim: TDateTime read getDataFim write setDataFim;
    property status: String read getStatus write setStatus;
    property codUsuario: Integer read getCodUsuario write setCodUsuario;
    property km: Integer read getKm write setKm;

    function IncluirOs(codOsI: Integer): Integer;
    function alterarOs(codOsA: Integer): Boolean;
    function excluirOs(codMovE: Integer): Boolean;

    procedure ListaOs(DataIni: TdateTime; DataFim: TDateTime; codCliente: Integer);

  end;

implementation

uses UDm;

{ TOsClasse }

function TOsClasse.alterarOs(codOsA: Integer): Boolean;
var sqlAltera: String;
begin
  try
    sqlAltera := 'UPDATE OS SET ';
    sqlAltera := sqlAltera + ' CODCLIENTE = ' + IntToStr(Self.codCliente) + ', ';
    sqlAltera := sqlAltera + ' CODVEICULO = ' + QuotedStr(Self.codVeiculo) + ', ';
    sqlAltera := sqlAltera + ' CODUSUARIO = ' + IntToStr(Self.codUsuario) + ', ';
    sqlAltera := sqlAltera + ' DATAOS     = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.dataOs)) + ', ';
    sqlAltera := sqlAltera + ' DATA_INI   = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.dataInicio)) + ', ';
    sqlAltera := sqlAltera + ' DATA_FIM   = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.dataFim)) + ', ';
    sqlAltera := sqlAltera + ' STATUS     = ' + QuotedStr(Self.status) + ', ';
    sqlAltera := sqlAltera + ' KM         = ' + IntToStr(Self.km);
    sqlAltera := sqlAltera + ' WHERE CODOS= ' + IntToStr(Self.codOs);

    executaSql(sqlAltera);
    Result := True;
  except
    Result := False;
  end;

end;

function TOsClasse.excluirOs(codMovE: Integer): Boolean;
var sqlExclui: String;
begin
  {
    So e permitido excluir OS  PENDENTE
  }
  Result := False;
  sqlExclui := 'DELETE FROM OS ';
  sqlExclui := sqlExclui + ' WHERE CODOS  = ' + IntToStr(Self.codOs);
  sqlExclui := sqlExclui + '   AND STATUS = ' + QuotedStr('P');

  if (executaSql(sqlExclui)) then
    Result := True;

end;

function TOsClasse.executaSql(strSql: String): Boolean;
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

function TOsClasse.getCodCliente: Integer;
begin
  Result := _codCliente;
end;

function TOsClasse.getCodOs: Integer;
begin
  Result := _codOs;
end;

function TOsClasse.getCodUsuario: Integer;
begin
  Result := _codUsuario;
end;

function TOsClasse.getCodVeiculo: String;
begin
  Result := Trim(_codVeiculo);
end;

function TOsClasse.getDataFim: TDateTime;
begin
  Result := _dataFim;
end;

function TOsClasse.getDataInicio: TDateTime;
begin
  Result := _dataInicio;
end;

function TOsClasse.getDataOs: TDateTime;
begin
  Result := _dataOs;
end;

function TOsClasse.getKm: Integer;
begin
  Result := _km;
end;

function TOsClasse.getStatus: String;
begin
  Result := Trim(_status);
end;

function TOsClasse.IncluirOs(codOsI: Integer): Integer;
var sqlInsere: String;
begin
  try
    _codOs := codOsI;
    if (Self.CodOs = 0) then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_OS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      _codOs := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
    end;
    sqlInsere := 'INSERT INTO OS(CODOS, CODCLIENTE, CODVEICULO, CODUSUARIO, DATAOS,'+
      'DATA_SISTEMA, DATA_INI, DATA_FIM, KM, STATUS) VALUES (';
    sqlInsere := sqlInsere + IntToStr(Self.codOs) + ', ';
    sqlInsere := sqlInsere + IntToStr(Self.codCliente) + ', ';
    sqlInsere := sqlInsere + QuotedStr(Self.codVeiculo) + ', ';
    sqlInsere := sqlInsere + IntToStr(Self.codUsuario) + ', ';
    sqlInsere := sqlInsere + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.dataOs)) + ', ';
    sqlInsere := sqlInsere + QuotedStr(FormatDateTime('mm/dd/yyyy', today)) + ', ';
    sqlInsere := sqlInsere + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.dataInicio)) + ', ';
    sqlInsere := sqlInsere + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.dataFim)) + ', ';
    sqlInsere := sqlInsere + QuotedStr(Self.status) + ', ';
    sqlInsere := sqlInsere + IntToStr(Self.km) + ')';
    executaSql(sqlInsere);
    Result := Self.codOs;
  except
    Result := 0;
  end;
end;

procedure TOsClasse.ListaOs(DataIni, DataFim: TDateTime;
  codCliente: Integer);
begin

end;

procedure TOsClasse.setCodCliente(const Value: Integer);
begin
  _codCliente := Value;
end;

procedure TOsClasse.setCodOs(const Value: Integer);
begin
  _codOs := Value;
end;

procedure TOsClasse.setCodUsuario(const Value: Integer);
begin
  _codUsuario := Value;
end;

procedure TOsClasse.setCodVeiculo(const Value: String);
begin
  _codVeiculo := Value;
end;

procedure TOsClasse.setDataFim(const Value: TDateTime);
begin
  _dataFim := Value;
end;

procedure TOsClasse.setDataInicio(const Value: TDateTime);
begin
  _dataInicio := Value;
end;

procedure TOsClasse.setDataOs(const Value: TDateTime);
begin
  _dataOs := Value;
end;

procedure TOsClasse.setKm(const Value: Integer);
begin
  _km := Value;
end;

procedure TOsClasse.setStatus(const Value: String);
begin
  _status := Value;
end;

end.
