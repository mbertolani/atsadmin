unit uEstoqueAtualiza;

interface

uses Classes, SqlExpr, dbxpress;

type
  TEstoqueAtualiza=class(TThread)
  protected
    procedure Execute; override;
end;

implementation

uses UDm, SysUtils;



{ TEstoqueAtualiza }

procedure TEstoqueAtualiza.Execute;
var strBuscaItem: string;
  strEstoqueAtual: String;
  strAtualiza: String;
  sqlBuscaEstoque: TSqlQuery;
  TDA: TTransactionDesc;
begin
  TDA.TransactionID  := 1;
  TDA.IsolationLevel := xilREADCOMMITTED;

  sqlBuscaEstoque := TSqlQuery.Create(nil);
  try
    sqlBuscaEstoque.SQLConnection := dm.sqlsisAdimin;
    Priority := tpLower;
    if (dm.cdsBusca.Active) then
      dm.cdsBusca.Close;
    dm.cdsBusca.CommandText := 'SELECT FIRST 500 DISTINCT MD.CODPRODUTO, M.CODALMOXARIFADO, MD.LOTE ' +
      '  FROM MOVIMENTO M, MOVIMENTODETALHE MD, NATUREZAOPERACAO NP  ' +
      ' WHERE M.CODMOVIMENTO = MD.CODMOVIMENTO ' +
      '   AND M.CODNATUREZA = NP.CODNATUREZA ' +
      '   AND NP.BAIXAMOVIMENTO in (0,1)' +
      '   ORDER BY M.CODMOVIMENTO DESC ';
    dm.cdsBusca.Open;
    while not dm.cdsBusca.eof do
    begin
      if (sqlBuscaEstoque.active) then
        sqlBuscaEstoque.Close;
      sqlBuscaEstoque.sql.clear;
      strEstoqueAtual := 'select ev.PRECOCUSTO, ev.SALDOFIMACUM, ev.PRECOCOMPRA' +
        '   from ESTOQUE_VIEW_CUSTO( ' +
        '       current_date,' +
        IntToStr(dm.cdsBusca.FieldByName('CODPRODUTO').asInteger) + ', ' +
        IntToStr(dm.cdsBusca.FieldByName('CODALMOXARIFADO').asInteger) + ', ';
        if ((dm.cdsBusca.FieldByName('LOTE').isnull) or (dm.cdsBusca.FieldByName('LOTE').asString = '0')) then
          strEstoqueAtual := strEstoqueAtual + QuotedStr('TODOS OS LOTES CADASTRADOS NO SISTEMA')
        else
          strEstoqueAtual := strEstoqueAtual + QuotedStr(dm.cdsBusca.FieldByName('LOTE').asString);
        strEstoqueAtual := strEstoqueAtual + ') ev  ';
      sqlBuscaEstoque.sql.Add(strEstoqueAtual);
      sqlBuscaEstoque.Open;
      if (not sqlBuscaEstoque.IsEmpty) then      // Nao achou nada no sistema
      begin
        strAtualiza := 'UPDATE PRODUTOS SET VALORUNITARIOATUAL = ';
        try
          DecimalSeparator := '.';
          strAtualiza := strAtualiza + FloatToStr(sqlBuscaEstoque.FieldByName('PRECOCOMPRA').asfloat);
          strAtualiza := strAtualiza + ' , PRECOMEDIO = ';
          strAtualiza := strAtualiza + FloatToStr(sqlBuscaEstoque.FieldByName('PRECOCUSTO').asfloat);
          strAtualiza := strAtualiza + ' , ESTOQUEATUAL = ';
          strAtualiza := strAtualiza + FloatToStr(sqlBuscaEstoque.FieldByName('SALDOFIMACUM').asfloat);
          strAtualiza := strAtualiza + ' WHERE CODPRODUTO = ' +
            IntToStr(dm.cdsBusca.FieldByName('CODPRODUTO').asInteger);
          dm.sqlsisAdimin.StartTransaction(TDA);
          try
            dm.sqlsisAdimin.ExecuteDirect(strAtualiza);
            dm.sqlsisAdimin.Commit(TDA);
          except
            on E : Exception do
            begin
              dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
            end;
          end;
        finally
          DecimalSeparator := ',';
        end;
      end;  
      dm.cdsBusca.next;
    end;
  finally
    sqlBuscaEstoque.Destroy;
  end;
  inherited;

end;

end.
