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
  strAtualizaLote: String;
  sqlB: TSqlQuery;
  strMudaStatus: String;
  TDA: TTransactionDesc;
begin
  sqlB := TSqlQuery.Create(nil);
  try
    sqlB.SQLConnection := dm.sqlsisAdimin;
    sqlB.sql.Add('SELECT INSERIDO, DATA_MODIFICADO FROM ATUALIZA WHERE CODATUALIZA = 5000');
    sqlB.Open;
    strMudaStatus := 'S';
    if ((sqlB.FieldByName('INSERIDO').AsString = 'N') or (sqlB.FieldByName('INSERIDO').IsNull)) then
    begin
      strMudaStatus := 'N';
    end;
    if (strMudaStatus = 'S') then
    begin
      if ((now - sqlB.FieldByName('DATA_MODIFICADO').AsDateTime) > 1) then
        strMudaStatus := 'N';
    end;    
  finally
    sqlB.Destroy;
  end;

  if (strMudaStatus = 'N') then
  begin
    TDA.TransactionID  := 1;
    TDA.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TDA);
    try
      dm.sqlsisAdimin.ExecuteDirect('UPDATE ATUALIZA SET INSERIDO = ' +
        QuotedStr('S') +
        ' , DATA_MODIFICADO = ' + QuotedStr(formatdatetime('mm/dd/yy', now)) +
        ' WHERE CODATUALIZA = 5000');
      dm.sqlsisAdimin.Commit(TDA);
      strMudaStatus := 'S';
    except
      on E : Exception do
      begin
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
      end;
    end;

    Priority := tpLower;
    if (dm.cdsBusca.Active) then
      dm.cdsBusca.Close;
    dm.cdsBusca.CommandText := 'SELECT FIRST 50 DISTINCT MD.CODPRODUTO, ' +
     ' M.CODALMOXARIFADO, MD.LOTE , ' +
     ' ve.PRECO_CUSTO, ve.ESTOQUE, ve.PRECO_COMPRA ' +
     '  FROM MOVIMENTO M, MOVIMENTODETALHE MD, NATUREZAOPERACAO NP, VIEW_ESTOQUE ve ' +
     ' WHERE M.CODMOVIMENTO = MD.CODMOVIMENTO ' +
     '   AND M.CODNATUREZA = NP.CODNATUREZA ' +
     '   AND MD.CODPRODUTO = ve.CODPRODUTO ' +
     '   AND NP.BAIXAMOVIMENTO in (0,1) ' +
     '   ORDER BY M.CODMOVIMENTO DESC ';
    dm.cdsBusca.Open;
    DecimalSeparator := '.';
    dm.sqlsisAdimin.StartTransaction(TDA);
    try
      while not dm.cdsBusca.eof do
      begin
        strAtualiza := 'UPDATE PRODUTOS SET VALORUNITARIOATUAL = ';
        strAtualiza := strAtualiza + FloatToStr(dm.cdsBusca.FieldByName('PRECO_COMPRA').asfloat);
        strAtualiza := strAtualiza + ' , PRECOMEDIO = ';
        strAtualiza := strAtualiza + FloatToStr(dm.cdsBusca.FieldByName('PRECO_CUSTO').asfloat);
        strAtualiza := strAtualiza + ' , ESTOQUEATUAL = ';
        strAtualiza := strAtualiza + FloatToStr(dm.cdsBusca.FieldByName('ESTOQUE').asfloat);
        strAtualiza := strAtualiza + ' WHERE CODPRODUTO = ' +
        IntToStr(dm.cdsBusca.FieldByName('CODPRODUTO').asInteger);
        dm.sqlsisAdimin.ExecuteDirect(strAtualiza);
        // atualiza lote
        {if (dm.cdsBusca.FieldByName('LOTE').asString <> '0') then
        begin
          if (sqlBuscaEstoque.active) then
            sqlBuscaEstoque.Close;
          sqlBuscaEstoque.sql.clear;
          strEstoqueAtual := 'SELECT ESTOQUE, PRECO FROM LOTES WHERE CODPRODUTO = ' +
            IntToStr(dm.cdsBusca.FieldByName('CODPRODUTO').asInteger) +
            ' AND LOTE = ' + QuotedStr(dm.cdsBusca.FieldByName('LOTE').asString);
          sqlBuscaEstoque.SQL.Add(strEstoqueAtual);
          sqlBuscaEstoque.Open;
          if (sqlBuscaEstoque.IsEmpty) then
          begin
            strAtualizaLote := 'INSERT INTO LOTE, CODPRODUTO, DATAFABRICACAO ' +
              ', DATAVENCIMENTO, ESTOQUE, PRECO, NOTAFISCAL, SERIEINI, SERIEFIM '
          end
          else
          begin
          end;
        end;}
        dm.cdsBusca.next;
      end;
      DecimalSeparator := ',';
      dm.sqlsisAdimin.Commit(TDA);
    except
      on E : Exception do
      begin
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
      end;
    end;
    dm.sqlsisAdimin.StartTransaction(TDA);
    try
      dm.sqlsisAdimin.ExecuteDirect('UPDATE ATUALIZA SET INSERIDO = ' + QuotedStr('N') +
          ' , DATA_MODIFICADO = null ' +
          ' WHERE CODATUALIZA = 5000');
      dm.sqlsisAdimin.Commit(TDA);
    except
      on E : Exception do
      begin
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
      end;
    end;
  end;
end;

end.
