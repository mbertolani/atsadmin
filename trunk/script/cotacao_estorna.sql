CREATE or ALTER TRIGGER COTACAO_ESTORNA FOR MOVIMENTODETALHE
ACTIVE AFTER DELETE POSITION 0
AS 
  declare variable codNat smallint;
  declare variable codSolic int;
  declare variable codFornec int;
  declare variable codCot int;
  declare variable codDet int;
  declare variable codCotacao varchar(30);
  declare variable codPro varchar(30);
BEGIN 
  codNat = 0;
  -- Item excluído de um pedido de compra(cotacao), volta para a lista de solicitacao novamente
  SELECT m.CODNATUREZA, m.CODFORNECEDOR, m.CODPEDIDO FROM MOVIMENTO m WHERE m.CODMOVIMENTO = old.CODMOVIMENTO
    into :codNat, :codFornec, :codCotacao; 
  if (codNat is null) then 
    codNat = 0;
  if (codNat = 5) then   
  begin 
    codCot = cast(:codCotacao as integer);
    SELECT p.CODPRO FROM PRODUTOS p where p.CODPRODUTO = old.CODPRODUTO
      into :codPro;
      
    SELECT c.COTACAO_CODSOLIC FROM COMPRA_COTACAO c 
     WHERE c.COTACAO_CODIGO = :codCotacao  
       and c.COTACAO_FORNEC = :codFornec
       and c.COTACAO_ITEM   = :codPro
      into :codSolic;    
       
    UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = 'A' WHERE SOLIC_CODIGO = :codSolic;
  end  
  if (codNat = 4) then   
  begin 
    -- Colocar quantidade Recebida = 0 e mudar o Status para 3    
    FOR SELECT md.CODIGO, md.CODDETALHE
      FROM MOVIMENTO m, MOVIMENTODETALHE md
     WHERE m.CODMOVIMENTO = old.CODMOVIMENTO
       and md.CODMOVIMENTO = m.CODMOVIMENTO
      into :codCot, :codDet
    do begin    
      UPDATE MOVIMENTO SET STATUS = 3 WHERE CODPEDIDO = :codCot AND CODNATUREZA = 5; 
      update MOVIMENTODETALHE set RECEBIDO = 0 WHERE CODDETALHE = :codDet;
    end 
  end 
END
