unit uOsClasse;

interface

uses Windows, Forms, Dialogs, Messages, SysUtils, Classes,
    DBXpress, DB, SqlExpr, DBClient, Provider, StdCtrls, DateUtils,
    Variants, Graphics, Controls,
    FMTBcd, Buttons, ExtCtrls, DBCtrls;


Type
  TOsClasse = class
  private
    FCodCond : String;
    FCodMaq : String;
    FDataMov: String;
    FDataVcto: String;
    FCodCli: Integer;
    FCodCResult: Integer;
    FCodDet: Integer;
    FCodMov: String;
    FCodNat: Integer;
    FCodProd: Integer;
    FCodResp: Integer;
    FCodUser: Integer;
    FCodVenda: Integer;
    FNf: Integer;
    FObsMov: String;
    FPreco: Double;
    FQtde: Double;
    FSerie: String;
    FStatus: String;
    FVlrVenda: Double;
    FtotalProdutos: Double;
    Fdataini: String;
    Fdatafim: String;
    codMov : string;    
    function getCodCli: Integer;
    function getCodCResult: Integer;
    function getCodDet: Integer;
    function getCodMov: String;
    function getCodNat: Integer;
    function getCodProd: Integer;
    function getCodResp: Integer;
    function getCodUser: Integer;
    function getCodVenda: Integer;
    function getDataMov: String;
    function getDataVcto: String;
    function getNf: Integer;
    function getObsMov: String;
    function getPreco: Double;
    function getQtde: Double;
    function getSerie: String;
    function getStatus: String;
    function getVlrVenda: Double;
    function totalProdutos: Double;
    procedure setCodCli(const Value: Integer);
    procedure setCodCResult(const Value: Integer);
    procedure setCodDet(const Value: Integer);
    procedure setCodMov(const Value: String);
    procedure setCodNat(const Value: Integer);
    procedure setCodProd(const Value: Integer);
    procedure setCodResp(const Value: Integer);
    procedure setCodUser(const Value: Integer);
    procedure setCodVenda(const Value: Integer);
    procedure setDataMov(const Value: String);
    procedure setDataVcto(const Value: String);
    procedure setNf(const Value: Integer);
    procedure setObsMov(const Value: String);
    procedure setPreco(const Value: Double);
    procedure setQtde(const Value: Double);
    procedure setSerie(const Value: String);
    procedure setStatus(const Value: String);
    procedure setTotalProdutos(const Value: Double);
    procedure setVlrVenda(const Value: Double);
    procedure setCodMaq(const Value: String);
    procedure setCodCond(const Value: String);
    procedure setdataini(const Value: String);
    procedure setdatafim(const Value: String);
  public
    procedure IncluiOs;
    procedure EditaOs;
    procedure ExcluiOs;
    procedure ListaOs(DataIni: TdateTime; DataFim: TDateTime; codCliente: Integer);
    property codCondutor: String read FCodCond write setCodCond;
    property codMaquina: String read FCodMaq write setCodMaq;
    property codMovimento: String read FCodMov write setCodMov;
    property dataMovimento: String read FDataMov write setDataMov;
    property codNatureza: Integer read FCodNat write setCodNat;
    property status: String read FStatus write setStatus;
    property codCliente : Integer read FCodCli write setCodCli;
    property codUsuario: Integer read FCodUser write setCodUser;
    property codResponsavel: Integer read FCodResp write setCodResp;
    property codCentroResultado: Integer read FCodCResult write setCodCResult;
    property obsMovimento : String read FObsMov write setObsMov;
    property codDetalhe : Integer read FCodDet write setCodDet;
    property codProduto : Integer read FCodProd write setCodProd;
    property Quantidade : Double read FQtde write setQtde;
    property preco : Double read FPreco write setPreco;
    property TotalProduto: Double read FtotalProdutos write setTotalProdutos;
    property codVenda: Integer read FCodVenda write setCodVenda;
    property dataVencimento: String read FDataVcto write setDataVcto;
    property valorVenda: Double read FVlrVenda write setVlrVenda;
    property serie : String read FSerie write setSerie;
    property notaFiscal: Integer read FNf write setNf;
    property codigo: Integer read FNf write setNf;
    property datainicio: String read Fdataini write setdataini;
    property datafinal: String read Fdatafim write setdatafim;
  end;

implementation

uses UDm, uUtils, uMaquinaControle;

var VarPeriodoIni, VarPeriodoFim : String;

{ TOsClasse }

function TOsClasse.GetCodMov: String;
var t: TUtils;
begin
  t := TUtils.Create;
  result := t.buscaChave('GENMOV');
  t.Destroy;
end;


procedure TOsClasse.EditaOs;
var sqlEdit: String;
  TD: TTransactionDesc;
begin
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    // Movimento
    DecimalSeparator := '.';
    codMov := IntToStr(fMaquinasControle.varCodMovimento);
    sqlEdit := 'UPDATE MOVIMENTO set DATAMOVIMENTO = ' + QuotedStr(getDataMov) + ', ' +
                 'CODCLIENTE = ' + IntToStr(getCodCli) + ', ' +
                 'CODNATUREZA = ' + IntToStr(getCodNat) + ', ' +
                 'STATUS = ' + getStatus + ', ' +
                 'CODUSUARIO = ' + IntToStr(getCodUser) + ', ' +
                 'CODVENDEDOR = ' + FCodCond + ', ' +
                 'CODALMOXARIFADO = ' + IntToStr(getCodCResult) + ', ' +
                 'DATA_SISTEMA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',today)) + ', ' +
                 'COD_VEICULO = ' + FCodMaq +
                 ' where CODMOVIMENTO = ' + codMov;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(sqlEdit);

    // MovimentoDetalhe               ]
    sqlEdit := 'UPDATE MOVIMENTODETALHE SET CODPRODUTO = ' + IntToStr(getCodProd) + ', ' +
      'QUANTIDADE = ' + FloatToStr(getQtde) + ', ' +
      'PRECO = ' + FloatToStr(getPreco) + ', ' +
      'DESCPRODUTO = ' + QuotedStr(getObsMov) + ', ' +
      'PERIODOINI = ' + QuotedStr(FormatDateTime('MM/dd/yyyy hh:mm', StrToDateTime(DateToStr(today) + Fdataini))) + ', ' +
      'PERIODOFIM = ' + QuotedStr(FormatDateTime('MM/dd/yyyy hh:mm', StrToDateTime(DateToStr(today) + Fdatafim))) +
      ' where CODMOVIMENTO = ' + codMov;
    dm.sqlsisAdimin.ExecuteDirect(sqlEdit);

    // Venda
    sqlEdit := 'UPDATE VENDA SET CODCLIENTE = ' + IntToStr(getCodCli) + ', ' +
      'DATAVENDA = ' + QuotedStr(getDataMov) + ', ' +
      'DATAVENCIMENTO = ' + QuotedStr(getDataVcto) + ', ' +
      'CODVENDEDOR = ' + FCodCond + ', ' +
      'STATUS = ' + getStatus + ', ' +
      'CODUSUARIO = ' + IntToStr(getCodUser) + ', ' +
      'DATASISTEMA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',today)) +  ', ' +
      'VALOR = ' + FloatToStr(getVlrVenda) + ', ' +
      'NOTAFISCAL = ' + IntToStr(getNf) + ', ' +
      'SERIE = ' + QuotedStr(getSerie) + ', ' +
      'DESCONTO = 0, ' +
      'CODCCUSTO = ' + IntToStr(getCodCResult) + ', ' +
      'N_PARCELA = 1, ' + 'FORMARECEBIMENTO = 1, ' + 'MULTA_JUROS = 0, ' +
      'APAGAR = ' + FloatToStr(getVlrVenda) + ', ' +
      'VALOR_PAGAR = '+ FloatToStr(getVlrVenda) + ', ' +
      'ENTRADA = 0' + ' where CODMOVIMENTO = ' + codMov;
    dm.sqlsisAdimin.ExecuteDirect(sqlEdit);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
  except
    DecimalSeparator := ',';
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar o lançamento.', mtError, [mbOK], 0);
  end;
end;

procedure TOsClasse.ExcluiOs;
var sqlInsere: String;
  TD: TTransactionDesc;
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    // Movimento
    DecimalSeparator := '.';
    codMov := IntToStr(fMaquinasControle.varCodMovimento);
    sqlInsere := 'DELETE FROM MOVIMENTO WHERE CODMOVIMENTO = ' + codMov;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
    fMaquinasControle.varCodMovimento := 0;
  end;
end;

function TOsClasse.getCodCli: Integer;
begin
  result := FCodCli;
end;

function TOsClasse.getCodCResult: Integer;
begin
  result := FCodCResult;
end;

function TOsClasse.getCodDet: Integer;
begin
  result := FCodDet;
end;

function TOsClasse.getCodNat: Integer;
begin
  result := FCodNat;
end;

function TOsClasse.getCodProd: Integer;
begin
  result := FCodProd;
end;

function TOsClasse.getCodResp: Integer;
begin
  result := FCodResp;
end;

function TOsClasse.getCodUser: Integer;
begin
  result := FCodUser;
end;

function TOsClasse.getCodVenda: Integer;
begin
  result := FCodVenda;
end;

function TOsClasse.getDataMov: String;
begin
  result := FDataMov;
end;

function TOsClasse.getDataVcto: String;
begin
  result := FDataVcto;
end;

function TOsClasse.getNf: Integer;
begin
  result := FNf;
end;

function TOsClasse.getObsMov: String;
begin
  result := FObsMov;
end;

function TOsClasse.getPreco: Double;
begin
  result := FPreco;
end;

function TOsClasse.getQtde: Double;
begin
  result := FQtde;
end;

function TOsClasse.getSerie: String;
begin
  result := FSerie;
end;

function TOsClasse.getStatus: String;
begin
  result := FStatus;
end;

function TOsClasse.getVlrVenda: Double;
begin
  result := FVlrVenda;
end;

procedure TOsClasse.IncluiOs;
var sqlInsere: String;
  TD: TTransactionDesc;
begin
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    // Movimento
    DecimalSeparator := '.';
    codMov := getCodMov;
    sqlInsere := 'INSERT INTO MOVIMENTO(CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE,'+
      ' CODNATUREZA, STATUS, CODUSUARIO, CODVENDEDOR, CODALMOXARIFADO, ' +
      'DATA_SISTEMA, COD_VEICULO) VALUES (';
    sqlInsere := sqlInsere + codMov + ', ' + QuotedStr(getDataMov) + ', ' + IntToStr(getCodCli) +
       ', ' + IntToStr(getCodNat) + ', ' + getStatus + ', ' + IntToStr(getCodUser) +
       ', ' + FCodCond + ', ' + IntToStr(getCodCResult) + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',today)) +
       ', ' + FCodMaq + ')'
       ;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
    // MovimentoDetalhe               ]
    sqlInsere := 'INSERT INTO MOVIMENTODETALHE(CODDETALHE, CODMOVIMENTO, CODPRODUTO,' +
      ' QUANTIDADE, PRECO, DESCPRODUTO, PERIODOINI, PERIODOFIM) VALUES (' ;
    sqlInsere := sqlInsere + 'Gen_id(GENMOVDET, 1), ' + codMov + ', ' +
      IntToStr(getCodProd) + ', ' + FloatToStr(getQtde) + ', ' + FloatToStr(getPreco) +
      ', ' + QuotedStr(getObsMov) + ', ' +
      QuotedStr(FormatDateTime('MM/dd/yyyy hh:mm', StrToDateTime(DateToStr(today) + Fdataini))) + ', ' +
      QuotedStr(FormatDateTime('MM/dd/yyyy hh:mm', StrToDateTime(DateToStr(today) + Fdatafim))) +')';
    dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
    // Venda
    sqlInsere := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, ' +
      'DATAVENCIMENTO, CODVENDEDOR, STATUS, CODUSUARIO, DATASISTEMA, VALOR, ' +
      'NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA, FORMARECEBIMENTO, ' +
      'MULTA_JUROS, APAGAR, VALOR_PAGAR, ENTRADA ) VALUES (';
    sqlInsere := sqlInsere + 'Gen_id(GENVENDA, 1), ' + codMov + ', ' + IntToStr(getCodCli) +
      ', ' + QuotedStr(getDataMov) + ', ' + QuotedStr(getDataVcto) +
      ', ' + FCodCond + ', ' + getStatus +
      ', ' + IntToStr(getCodUser) + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',today)) +
      ', ' + FloatToStr(getVlrVenda) + ', ' + IntToStr(getNf) + ', ' + QuotedStr(getSerie) +
      ', 0, ' + IntToStr(getCodCResult) + ', 1, 1, 0, ' + FloatToStr(getVlrVenda) +
      ', ' + FloatToStr(getVlrVenda) +  ',0)';
    dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
  except
    DecimalSeparator := ',';
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar o lançamento.', mtError, [mbOK], 0);
  end;
end;

procedure TOsClasse.ListaOs(DataIni, DataFim: TDateTime; codCliente: Integer);
begin

end;

procedure TOsClasse.setCodCli(const Value: Integer);
begin
  FCodCli := Value;
end;

procedure TOsClasse.setCodCResult(const Value: Integer);
begin
  FCodCResult := Value;
end;

procedure TOsClasse.setCodDet(const Value: Integer);
begin
  FCodDet := Value;
end;

procedure TOsClasse.setCodMov(const Value: String);
begin
  FCodMov := Value;
end;

procedure TOsClasse.setCodNat(const Value: Integer);
begin
  FCodNat := Value;
end;

procedure TOsClasse.setCodProd(const Value: Integer);
begin
  if (Value > 0) then
    FCodProd := Value
  else
    raise Exception.Create('Produto não informado.');
end;

procedure TOsClasse.setCodResp(const Value: Integer);
begin
  FCodResp := Value;
end;

procedure TOsClasse.setCodUser(const Value: Integer);
begin
  FCodUser := Value;
end;

procedure TOsClasse.setCodVenda(const Value: Integer);
begin
  FCodVenda := Value;
end;

procedure TOsClasse.setDataMov(const Value: String);
begin
  FDataMov := FormatDateTime('mm/dd/yyyy', StrToDateTime(Value));
end;

procedure TOsClasse.setDataVcto(const Value: String);
begin
  FDataVcto := FormatDateTime('mm/dd/yyyy', StrToDateTime(Value));
end;

procedure TOsClasse.setNf(const Value: Integer);
begin
  FNf := Value;
end;

procedure TOsClasse.setObsMov(const Value: String);
begin
  FObsMov := Value;
end;

procedure TOsClasse.setPreco(const Value: Double);
begin
  FPreco := Value;
end;

procedure TOsClasse.setQtde(const Value: Double);
begin
  FQtde := Value;
end;

procedure TOsClasse.setSerie(const Value: String);
begin
  FSerie := Value;
end;

procedure TOsClasse.setStatus(const Value: String);
begin
  FStatus := Value;
end;

procedure TOsClasse.setTotalProdutos(const Value: Double);
begin
  FtotalProdutos := FQtde * FPreco;
end;

procedure TOsClasse.setVlrVenda(const Value: Double);
begin
  FVlrVenda := Value;
end;

function TOsClasse.totalProdutos: Double;
begin

end;

procedure TOsClasse.setCodMaq(const Value: String);
begin
  FCodMaq := Value;
end;

procedure TOsClasse.setCodCond(const Value: String);
begin
  FCodCond := Value;
end;


procedure TOsClasse.setdataini(const Value: String);
begin
  Fdataini := Value;
end;

procedure TOsClasse.setdatafim(const Value: String);
begin
  Fdatafim := Value;
end;

end.
