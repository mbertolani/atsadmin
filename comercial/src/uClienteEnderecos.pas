unit uClienteEnderecos;

interface

uses SysUtils, Dialogs, dbXpress;

type

  TEnderecos = class(TObject)
  private
    function getBairro: String;
    function getCep: String;
    function getCidade: String;
    function getCodCli: Integer;
    function getCodEndereco: Integer;
    function getCodIbge: String;
    function getComplemento: String;
    function getDadosAdicionais: String;
    function getDdd1: String;
    function getDdd2: String;
    function getDdd3: String;
    function getDdd4: String;
    function getEmail: String;
    function getFax: String;
    function getFone1: String;
    function getFone2: String;
    function getFone3: String;
    function getLogradouro: String;
    function getNumero: String;
    function getPais: String;
    function getRamal: String;
    function getTipoEndereco: Smallint;
    function getUf: String;
    procedure setBairro(const Value: String);
    procedure setCep(const Value: String);
    procedure setCidade(const Value: String);
    procedure setCodCli(const Value: Integer);
    procedure setCodEndereco(const Value: Integer);
    procedure setCodIbge(const Value: String);
    procedure setComplemento(const Value: String);
    procedure setDadosAdicionais(const Value: String);
    procedure setDdd1(const Value: String);
    procedure setDdd2(const Value: String);
    procedure setDdd3(const Value: String);
    procedure setDdd4(const Value: String);
    procedure setEmail(const Value: String);
    procedure setFax(const Value: String);
    procedure setFone1(const Value: String);
    procedure setFone2(const Value: String);
    procedure setFone3(const Value: String);
    procedure setLogradouro(const Value: String);
    procedure setNumero(const Value: String);
    procedure setPais(const Value: String);
    procedure setRamal(const Value: String);
    procedure setTipoEndereco(const Value: Smallint);
    procedure setUf(const Value: String);
  protected
    //Atributos
    _codCli          : Integer;
    _codEndereco     : Integer;
    _tipoEndereco    : Smallint;
    _logradouro      : String;
    _bairro          : String;
    _cidade          : String;
    _uf              : String;
    _complemento     : String;
    _numero          : String;
    _cep             : String;
    _fone1           : String;
    _fone2           : String;
    _fone3           : String;
    _ddd1            : String;
    _ddd2            : String;
    _ddd3            : String;
    _ddd4            : String;
    _email           : String;
    _ramal           : String;
    _fax             : String;
    _codIbge         : String;
    _dadosAdicionais : String;
    _pais            : String;

    function executaSql(strSql: String): Boolean;
  public
    property CodCli      : Integer read getCodCli write setCodCli;
    property CodEndereco : Integer read getCodEndereco write setCodEndereco;
    property TipoEndereco: Smallint read getTipoEndereco write setTipoEndereco;
    property Logradouro  : String read getLogradouro write setLogradouro;
    property Bairro      : String read getBairro write setBairro;
    property Cidade      : String read getCidade write setCidade;
    property Uf          : String read getUf write setUf;
    property Pais        : String read getPais write setPais;
    property Complemento : String read getComplemento write setComplemento;
    property Numero      : String read getNumero write setNumero;
    property Cep         : String read getCep write setCep;
    property Fone1       : String read getFone1 write setFone1;
    property Fone2       : String read getFone2 write setFone2;
    property Fone3       : String read getFone3 write setFone3;
    property Fax         : String read getFax write setFax;
    property DDD1        : String read getDdd1 write setDdd1;
    property DDD2        : String read getDdd2 write setDdd2;
    property DDD3        : String read getDdd3 write setDdd3;
    property DDD4        : String read getDdd4 write setDdd4;
    property Email       : String read getEmail write setEmail;
    property Ramal       : String read getRamal write setRamal;
    property CodIbge     : String read getCodIbge write setCodIbge;
    property DadosAdicionais  : String read getDadosAdicionais write setDadosAdicionais;

    //Metodos
    function inserirEndereco(): Integer;
    function verEndereco(Controle: String; Campo: String; Tipo: String): Integer;
    function excluirEndereco(codEndE: Integer): Boolean;
    function alterarEndereco(codEndA: Integer): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'ENDERECOCLIENTE';

implementation

uses SqlExpr, DB, UDm, DBClient;

{ TEnderecos }

function TEnderecos.alterarEndereco(codEndA: Integer): Boolean;
begin
  // Altera Endereco
end;

constructor TEnderecos.Create;
begin

end;

destructor TEnderecos.Destroy;
begin

  inherited;
end;

function TEnderecos.excluirEndereco(codEndE: Integer): Boolean;
begin
  // Exclui Endereco
end;

function TEnderecos.executaSql(strSql: String): Boolean;
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

function TEnderecos.getBairro: String;
begin
  Result := Trim(_bairro);
end;

function TEnderecos.getCep: String;
begin
  Result := Trim(_cep);
end;

function TEnderecos.getCidade: String;
begin
  Result := Trim(_cidade);
end;

function TEnderecos.getCodCli: Integer;
begin
  Result := _codCli;
end;

function TEnderecos.getCodEndereco: Integer;
begin
  Result := _codEndereco;
end;

function TEnderecos.getCodIbge: String;
begin
  Result := Trim(_codIbge);
end;

function TEnderecos.getComplemento: String;
begin
  Result := Trim(_complemento);
end;

function TEnderecos.getDadosAdicionais: String;
begin
  Result := Trim(_dadosAdicionais);
end;

function TEnderecos.getDdd1: String;
begin
  Result := Trim(_ddd1);
end;

function TEnderecos.getDdd2: String;
begin
  Result := Trim(_ddd2);
end;

function TEnderecos.getDdd3: String;
begin
  Result := Trim(_ddd3);
end;

function TEnderecos.getDdd4: String;
begin
  Result := Trim(_ddd4);
end;

function TEnderecos.getEmail: String;
begin
  Result := Trim(_email);
end;

function TEnderecos.getFax: String;
begin
  Result := Trim(_fax);
end;

function TEnderecos.getFone1: String;
begin
  Result := Trim(_fone1);
end;

function TEnderecos.getFone2: String;
begin
  Result := Trim(_fone2);
end;

function TEnderecos.getFone3: String;
begin
  Result := Trim(_fone3);
end;

function TEnderecos.getLogradouro: String;
begin
  Result := Trim(_logradouro);
end;

function TEnderecos.getNumero: String;
begin
  Result := Trim(_numero);
end;

function TEnderecos.getPais: String;
begin
  Result := Trim(_pais);
end;

function TEnderecos.getRamal: String;
begin
  Result := Trim(_ramal);
end;

function TEnderecos.getTipoEndereco: Smallint;
begin
  Result := _tipoEndereco;
end;

function TEnderecos.getUf: String;
begin
  Result := Trim(_uf);
end;

function TEnderecos.inserirEndereco: Integer;
begin
  // Inserir Endereco
end;

procedure TEnderecos.setBairro(const Value: String);
begin
  _bairro := Value;
end;

procedure TEnderecos.setCep(const Value: String);
begin
  _cep := Value;
end;

procedure TEnderecos.setCidade(const Value: String);
begin
  _cidade := Value;
end;

procedure TEnderecos.setCodCli(const Value: Integer);
begin
  _codCli := Value;
end;

procedure TEnderecos.setCodEndereco(const Value: Integer);
begin
  _codEndereco := Value;
end;

procedure TEnderecos.setCodIbge(const Value: String);
begin
 _codIbge := Value;
end;

procedure TEnderecos.setComplemento(const Value: String);
begin
  _complemento := Value;
end;

procedure TEnderecos.setDadosAdicionais(const Value: String);
begin
  _dadosAdicionais := Value;
end;

procedure TEnderecos.setDdd1(const Value: String);
begin
  _ddd1 := Value;
end;

procedure TEnderecos.setDdd2(const Value: String);
begin
  _ddd2 := Value;
end;

procedure TEnderecos.setDdd3(const Value: String);
begin
  _ddd3 := Value;
end;

procedure TEnderecos.setDdd4(const Value: String);
begin
  _ddd4 := Value;
end;

procedure TEnderecos.setEmail(const Value: String);
begin
  _email := Value;
end;

procedure TEnderecos.setFax(const Value: String);
begin
  _fax := Value;
end;

procedure TEnderecos.setFone1(const Value: String);
begin
  _fone1 := Value;
end;

procedure TEnderecos.setFone2(const Value: String);
begin
  _fone2 := Value;
end;

procedure TEnderecos.setFone3(const Value: String);
begin
  _fone3 := Value;
end;

procedure TEnderecos.setLogradouro(const Value: String);
begin
  _logradouro := Value;
end;

procedure TEnderecos.setNumero(const Value: String);
begin
  _numero := Value;
end;

procedure TEnderecos.setPais(const Value: String);
begin
  _pais := Value;
end;

procedure TEnderecos.setRamal(const Value: String);
begin
  _ramal := Value;
end;

procedure TEnderecos.setTipoEndereco(const Value: Smallint);
begin
  _tipoEndereco := Value;
end;

procedure TEnderecos.setUf(const Value: String);
begin
  _uf := Value;
end;

function TEnderecos.verEndereco(Controle, Campo, Tipo: String): Integer;
begin
  // VerEndereco
end;

end.
