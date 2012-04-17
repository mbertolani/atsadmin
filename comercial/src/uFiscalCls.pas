unit uFiscalCls;

interface

uses Windows, Forms, Dialogs, Messages, SysUtils, Classes, DBCtrls,
    DBXpress, DB, SqlExpr, DBClient, Provider, StdCtrls, rpcompobase, rpvclreport,
    JvTransparentButton;

Type
  TFiscalCls = class(TObject)

  private
     // Entrar com variaveis
     sqlConsulta : TSqlQuery;
     v_SqlTexto, v_NomePerfil : string;
     v_Status, v_natureza : Integer;
     //Imprimir para porta Serial ou em Arquivo
     procedure ImprimirPreviaLPT;
     procedure ImprimirReciboLPT;
     procedure ImprimirComandaLPT;
     procedure ImprimirDeliveryLPT;
     procedure ImprimirSetor1;
     procedure ImprimirSetor2;
     //Imprimir porta USB usando a DLL da Bematech
     procedure ImprimirPreviaDLL;
     procedure ImprimirReciboDLL;
     procedure ImprimirComandaDLL;
     procedure ImprimirDeliveryDLL;
  protected

  public
    v_DataCaixa : TDateTime;
    v_CodMovimento : Integer;
    v_CodCliente, v_Cod_Caixa : Integer;
    var_TipoCliente  : Integer;
    function NomeComputador: string;
    function VerificaCaixaAberto(): Boolean;
    function BuscaPerfilUsuario(nome : String): string;
    function PegaStatusdoMovimento(CodCliente : Integer; DataCaixa : TDateTime) : string;
    function PegaCodigoCliente(codcli : string; tipoCliente : Integer) : Integer;
   // function ColocaNomeEmBotoes(Form: TForm; regiao : Integer; status : Integer) : String;
    constructor Create;
    Destructor  Destroy; Override;
  end;

  const
    cJustif = #27#97#51;
    cEject = #12;
    { Tamanho da fonte }
    c10cpi = #18;
    c12cpi = #27#77;
    c17cpi = #15;
    cIExpandido = #14;
    cFExpandido = #20;
    { Formatação da fonte }
    cINegrito = #27#71;
    cFNegrito = #27#72;
    cIItalico = #27#52;
    cFItalico = #27#53;

implementation

uses UDm;

    // Funções para uso da DLL Bematech Impressoras não Fiscal...
    function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
    function IniciaPorta(Porta:string):integer; stdcall; far; external 'Mp2032.dll';
    function FechaPorta: integer	;  stdcall; far; external 'Mp2032.dll';
    function BematechTX(BufTrans:string):integer; stdcall; far; external 'Mp2032.dll';
    function FormataTX(BufTras:string; TpoLtra:integer; Italic:integer; Sublin:integer; expand:integer; enfat:integer):integer; stdcall; far; external 'Mp2032.dll';
    function ComandoTX (BufTrans:string;TamBufTrans:integer):integer; stdcall; far; external 'Mp2032.dll';
    function Status_Porta:integer; stdcall; far; external 'Mp2032.dll';
    function AutenticaDoc(BufTras:string;Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function Le_Status:integer; stdcall; far; external 'Mp2032.dll';
    function Le_Status_Gaveta:integer; stdcall; far; external 'Mp2032.dll';
    function DocumentInserted:integer; stdcall; far; external 'Mp2032.dll';
    function ConfiguraTamanhoExtrato(NumeroLinhas:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function HabilitaExtratoLongo(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function HabilitaEsperaImpressao(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function EsperaImpressao:integer; stdcall; far; external 'Mp2032.dll';
    function AcionaGuilhotina(Modo:integer):integer; stdcall; far; external 'Mp2032.dll';
    function HabilitaPresenterRetratil(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function ProgramaPresenterRetratil(Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function CaracterGrafico(Buffer: string; TamBuffer: integer):integer; stdcall; far; external 'Mp2032.dll';
    function VerificaPapelPresenter():integer; stdcall; far; external 'Mp2032.dll';
    function AjustaLarguraPapel(PaperWidth :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
    //===========================================================================

{ TFiscalCls }

function TFiscalCls.BuscaPerfilUsuario(nome: String): string;
var v_codPerfil : Integer;
begin
  // Primeiro busco o codigo do perfil do usuario conectado
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    // PEGO O PERFIL DO USUARIO
    v_SqlTexto := 'SELECT A.UCPROFILE FROM UCTABUSERS a WHERE A.UCTYPEREC = ' + QuotedStr('U');
    v_SqlTexto := v_SqlTexto + ' AND A.UCUSERNAME = ' + QuotedStr(nome);
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    v_codPerfil := sqlConsulta.Fields[0].AsInteger;
  finally
    sqlConsulta.Free;
  end;
  // Agora pego a descrição do perfil do usuario
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    // PEGO O PERFIL DO USUARIO
    v_SqlTexto := 'SELECT A.UCUSERNAME FROM UCTABUSERS a WHERE A.UCIDUSER = ' + IntToStr(v_codPerfil);
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    Result := sqlConsulta.Fields[0].AsString;
  finally
    sqlConsulta.Free;
  end;
end;

constructor TFiscalCls.Create;
begin
  // teste
end;

destructor TFiscalCls.Destroy;
begin
  //teste
  inherited;
end;

procedure TFiscalCls.ImprimirComandaDLL;
begin

end;

procedure TFiscalCls.ImprimirComandaLPT;
begin

end;

procedure TFiscalCls.ImprimirDeliveryDLL;
begin

end;

procedure TFiscalCls.ImprimirDeliveryLPT;
begin

end;

procedure TFiscalCls.ImprimirPreviaDLL;
begin

end;

procedure TFiscalCls.ImprimirPreviaLPT;
begin

end;

procedure TFiscalCls.ImprimirReciboDLL;
begin

end;

procedure TFiscalCls.ImprimirReciboLPT;
begin

end;

procedure TFiscalCls.ImprimirSetor1;
begin

end;

procedure TFiscalCls.ImprimirSetor2;
begin

end;

function TFiscalCls.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

function TFiscalCls.PegaCodigoCliente(codcli: string; tipoCliente : Integer): Integer;
begin
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    v_SqlTexto := 'select CODCLIENTE  from CLIENTES where CODCLIENTE = ' + QuotedStr(codcli);
    v_SqlTexto := v_SqlTexto + ' and REGIAO = ' + IntToStr(tipoCliente); // 0 = Cliente 1 = Comanda/Mesa 2 = COlaboradores
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    if (sqlConsulta.IsEmpty) then
       Result := 0
    else
       Result := sqlConsulta.Fields[0].AsInteger;
  finally
    sqlConsulta.Free;
  end;
end;

function TFiscalCls.PegaStatusdoMovimento(CodCliente: Integer; DataCaixa: TDateTime): string;
begin
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    v_SqlTexto := 'select BLOQUEADO, CODCLIENTE from CLIENTES where CODCLIENTE = ' + IntToStr(CodCliente);
    v_SqlTexto := v_SqlTexto + ' and REGIAO = ' + IntToStr(var_TipoCliente); // 0 = Cliente 1 = Comanda/Mesa 2 = COlaboradores
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    if (sqlConsulta.IsEmpty) then
    begin
       Result := 'NAOLOCALIZADA';
    end
    else
    begin
      if (sqlConsulta.Fields[0].AsString = 'S') then
        Result := 'BLOQUEADO'
      else
        Result := '';
      v_CodCliente := sqlConsulta.Fields[1].AsInteger;
    end;
  finally
    sqlConsulta.Free;
  end;

  if (Result = '') then
  begin
    try
      sqlConsulta :=  TSqlQuery.Create(nil);
      sqlConsulta.SQLConnection := dm.sqlsisAdimin;
      v_SqlTexto := 'select CODNATUREZA, STATUS, CODMOVIMENTO from MOVIMENTO where CODCLIENTE = ' + IntToStr(CodCliente);
      v_SqlTexto := v_SqlTexto + ' and DATAMOVIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', DataCaixa));
      sqlConsulta.SQL.Add(v_SqlTexto);
      sqlConsulta.Open;
      if (sqlConsulta.IsEmpty) then // se não Aberta verifico o perfil de abertura
      begin
          if Dm.cds_parametro.Active then
             dm.cds_parametro.Close;
          dm.cds_parametro.Params[0].AsString := 'PERFILSEMAUTORIZACAO';
          dm.cds_parametro.Open;
          v_NomePerfil :=  BuscaPerfilUsuario(nome_user);
          if (dm.cds_parametroD1.AsString = v_NomePerfil) then
            Result := 'SEMAUTORIZACAO'
          else
            Result := 'ABRIRCOMANDA';
          sqlConsulta :=  TSqlQuery.Create(nil);
          sqlConsulta.SQLConnection := dm.sqlsisAdimin;
      end
      else
      begin
        v_natureza := sqlConsulta.Fields[0].AsInteger;
        v_Status   := sqlConsulta.Fields[1].AsInteger;
        v_CodMovimento   := sqlConsulta.Fields[2].AsInteger;
        if ((v_natureza = 3) and (v_Status = 0)) then
           Result := 'FINALIZADA';
        if ((v_natureza = 13) and (v_Status = 0)) then
           Result := 'ABERTA';
        if ((v_natureza = 13) and (v_Status = 2)) then
           Result := 'CANCELADA';
        if ((v_natureza = 13) and (v_Status = 3)) then
           Result := 'RETORNO';
      end;
    finally
      sqlConsulta.Free;
    end;
  end;
end;

function TFiscalCls.VerificaCaixaAberto(): Boolean;
begin
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PERFILSEMAUTORIZACAO';
  dm.cds_parametro.Open;
  v_NomePerfil :=  BuscaPerfilUsuario(nome_user);
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    if (dm.cds_parametroD1.AsString <> v_NomePerfil) then
    begin
      v_SqlTexto := 'Select DATAABERTURA, CODCAIXA from CAIXA_CONTROLE where MAQUINA = ' + QuotedStr(NomeComputador);
      v_SqlTexto := v_SqlTexto + ' and SITUACAO = ' + QuotedStr('A');
    end
    else
    begin
      v_SqlTexto := 'Select DATAABERTURA, CODCAIXA from CAIXA_CONTROLE where SITUACAO = ' + QuotedStr('A');
    end;
    dm.cds_parametro.Close;
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    if (sqlConsulta.IsEmpty) then
    begin
       Result := False;
    end
    else
    begin
       Result := True;
       v_DataCaixa := sqlConsulta.Fields[0].AsDateTime;
       v_Cod_Caixa  := sqlConsulta.Fields[1].AsInteger;
    end;
  finally
    sqlConsulta.Free;
  end;
end;

end.
 