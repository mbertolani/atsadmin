unit uCliente;

interface

uses SysUtils, Dialogs, dbXpress;

type

  TCliente = class(TObject)
  private
    function getCodCli     : Integer;

    procedure setCodcli(const Value: Integer);
  protected
    //Atributos
    _codCli          : Integer;
    _nomeCliente     : String;
    _razaoSocial     : String;
    function executaSql(strSql: String): Boolean;
  public
    property CodCli      : Integer read getCodCli write setCodCli;

    //Metodos
    function inserirCliente(): Integer;
    function verCliente(Controle: String; Campo: String; Tipo: String): Integer;
    function excluirCliente(codCliE: Integer): Boolean;
    function alterarCliente(codCliA: Integer): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'CLIENTE';

implementation

uses SqlExpr, DB, UDm, DBClient;


{ TCliente }

function TCliente.alterarCliente(codCliA: Integer): Boolean;
begin
  // Altera Cadastro Cliente
end;

constructor TCliente.Create;
begin
end;

destructor TCliente.Destroy;
begin

  inherited;
end;

function TCliente.excluirCliente(codCliE: Integer): Boolean;
begin
  // Excluir Cadastro Cliente
end;

function TCliente.executaSql(strSql: String): Boolean;
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

function TCliente.getCodCli: Integer;
begin
  Result := _codCli;
end;

function TCliente.inserirCliente: Integer;
begin
  // Cadastrar Cliente
end;

procedure TCliente.setCodcli(const Value: Integer);
begin
  _codCli := Value;
end;

function TCliente.verCliente(Controle, Campo, Tipo: String): Integer;
begin

end;

end.
