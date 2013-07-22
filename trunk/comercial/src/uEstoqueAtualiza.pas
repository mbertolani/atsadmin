unit uEstoqueAtualiza;

interface

uses Classes, SqlExpr, dbxpress, SyncObjs;

type
  TEstoqueAtualiza=class(TThread)
  protected
    procedure Execute; override;
    procedure atualiza;
end;


implementation

uses UDm, SysUtils;



{ TEstoqueAtualiza }

procedure TEstoqueAtualiza.atualiza;
var strBuscaItem: string;
  strEstoqueAtual: String;
  strAtualiza: String;
  strAtualizaLote: String;
  sqlB: TSqlQuery;
  strMudaStatus: String;
  TDA: TTransactionDesc;
  dataAgora: double;
begin
  sqlB := TSqlQuery.Create(nil);
  try
    sqlB.SQLConnection := dm.SQl;
    sqlB.sql.Add('SELECT INSERIDO, DATA_MODIFICADO FROM ATUALIZA WHERE CODATUALIZA = 5000');
    sqlB.Open;
    strMudaStatus := 'S';
    if ((sqlB.FieldByName('INSERIDO').AsString = 'N') or (sqlB.FieldByName('INSERIDO').IsNull)) then
    begin
      strMudaStatus := 'N';
    end;
    if (strMudaStatus = 'S') then
    begin
      dataAgora := now - sqlB.FieldByName('DATA_MODIFICADO').AsDateTime;
      if (dataAgora > 0.001) then
        strMudaStatus := 'N';
    end;
  finally
    sqlB.Destroy;
  end;

  if (strMudaStatus = 'N') then
  begin
    TDA.TransactionID  := 1;
    TDA.IsolationLevel := xilREADCOMMITTED;
    dm.SQl.StartTransaction(TDA);
    try
      dm.SQl.ExecuteDirect('UPDATE ATUALIZA SET INSERIDO = ' +
        QuotedStr('S') +
        ' , DATA_MODIFICADO = ' + QuotedStr(formatdatetime('mm/dd/yy hh:MM', now)) +
        ' WHERE CODATUALIZA = 5000');
      dm.SQl.Commit(TDA);
      strMudaStatus := 'S';
    except
      on E : Exception do
      begin
        dm.SQl.Rollback(TDA); //on failure, undo the changes}
      end;
    end;

    Priority := tpLower;
    if (dm.cdsBusca.Active) then
      dm.cdsBusca.Close;
    dm.sdsBusca.SQLConnection := dm.SQl;
    dm.cdsBusca.CommandText := 'SELECT FIRST 50 DISTINCT MD.CODPRODUTO, ' +
     ' M.CODALMOXARIFADO, coalesce(MD.LOTE,0) LOTE , ' +
     ' COALESCE(ve.PRECO_CUSTO, 0) PRECO_CUSTO, COALESCE(ve.ESTOQUE,0) ESTOQUE ' +
     ' , COALESCE(ve.PRECO_COMPRA,0) PRECO_COMPRA, p.LOTES, coalesce(lt.CODLOTE,0) CODLOTE ' +
     '  FROM MOVIMENTO M ' +
     ' INNER JOIN MOVIMENTODETALHE MD ON M.CODMOVIMENTO = MD.CODMOVIMENTO ' +
     ' INNER JOIN NATUREZAOPERACAO NP ON M.CODNATUREZA = NP.CODNATUREZA ' +
     ' INNER JOIN VIEW_ESTOQUE ve ON MD.CODPRODUTO = ve.CODPRODUTO ' +
     ' INNER JOIN PRODUTOS P on p.CODPRODUTO = md.CODPRODUTO ' +
     '  LEFT OUTER JOIN LOTES lt on lt.CODPRODUTO = MD.CODPRODUTO and lt.LOTE = md.LOTE ' +
     ' WHERE  NP.BAIXAMOVIMENTO in (0,1) ' +
     ' ORDER BY M.CODMOVIMENTO DESC ';
    dm.cdsBusca.Open;
    DecimalSeparator := '.';
    dm.SQl.StartTransaction(TDA);
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
        dm.SQl.ExecuteDirect(strAtualiza);
        // atualiza lote
        if (dm.cdsBusca.FieldByName('LOTES').asString = 'S') then
        begin
          if (dm.cdsBusca.FieldByName('CODLOTE').AsInteger = 0) then
          begin
            strAtualizaLote := 'INSERT INTO LOTES (LOTE, CODPRODUTO, DATAFABRICACAO ' +
              ', DATAVENCIMENTO, ESTOQUE, PRECO) VALUES (';  // , NOTAFISCAL, SERIEINI, SERIEFIM
            strAtualizaLote := strAtualizaLote + QuotedStr(dm.cdsBusca.FieldByName('LOTE').AsString);
            strAtualizaLote := strAtualizaLote + ', ' + InttoStr(dm.cdsBusca.FieldByName('CODLOTE').AsInteger);
            strAtualizaLote := strAtualizaLote + ', ' + QuotedStr('01/01/01');
            strAtualizaLote := strAtualizaLote + ', ' + QuotedStr('01/01/01');
            strAtualizaLote := strAtualizaLote + ', ' + FloatToStr(dm.cdsBusca.FieldByName('ESTOQUE').asfloat);
            strAtualizaLote := strAtualizaLote + ', ' + FloatToStr(dm.cdsBusca.FieldByName('PRECO_COMPRA').asfloat);
            strAtualizaLote := strAtualizaLote + ')';
          end
          else
          begin
            strAtualizaLote := 'UPDATE LOTES SET ESTOQUE = ' +
              FloatToStr(dm.cdsBusca.FieldByName('ESTOQUE').asfloat) +
              ' WHERE CODLOTE = ' + IntToStr(dm.cdsBusca.FieldByName('CODLOTE').AsInteger);
          end;
          dm.SQl.ExecuteDirect(strAtualizaLote);
        end;
        dm.cdsBusca.Next;
      end;
      DecimalSeparator := ',';
      dm.SQl.Commit(TDA);
    except
      on E : Exception do
      begin
        dm.SQl.Rollback(TDA); //on failure, undo the changes}
      end;
    end;
    dm.sdsBusca.Close;
    dm.sdsBusca.SQLConnection := dm.sqlsisAdimin;

    dm.SQl.StartTransaction(TDA);
    try
      dm.SQl.ExecuteDirect('UPDATE ATUALIZA SET INSERIDO = ' + QuotedStr('N') +
          ' , DATA_MODIFICADO = null ' +
          ' WHERE CODATUALIZA = 5000');
      dm.SQl.Commit(TDA);
    except
      on E : Exception do
      begin
        dm.SQl.Rollback(TDA); //on failure, undo the changes}
      end;
    end;
  end;
end;

procedure TEstoqueAtualiza.Execute;
var  secaoCritica : TCriticalSection;
begin
  secaoCritica := TCriticalSection.Create;
  try
    secaoCritica.Acquire;
    atualiza;
  finally
    secaoCritica.Release;
  end;
end;

end.
