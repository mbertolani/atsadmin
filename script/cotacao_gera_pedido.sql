SET TERM ^ ;
CREATE OR ALTER TRIGGER COTACAO_GERA_PEDIDO FOR MOVIMENTODETALHE ACTIVE 
AFTER UPDATE POSITION 0
AS 
  DECLARE VARIABLE NAT SMALLINT;
BEGIN 
	-- Qdo conferido o pedido (qtde) gera se um pedido com a natureza = 4
    if ((NEW.RECEBIDO > 0) and (NEW.STATUS = 1) and (OLD.STATUS IS NULL)) then 
    begin
      SELECT m.CODNATUREZA 
        FROM MOVIMENTO m 
       where m.CODMOVIMENTO = old.CODMOVIMENTO
      into :nat;
      if (nat = 5) then 
      begin     
        INSERT INTO MOVIMENTO(insert into MOVIMENTO (codmovimento, datamovimento, codcliente, codnatureza, 
            status, codusuario, codfornecedor, data_sistema, controle, data_entrega, prazo_pagamento, obs)
          values ( 
      end;   
    
      -- verifica se é Compra ou Despesa
      if (new.COTACAO_TIPO = 'C') then 
      begin 
        select first 1 m.codmovimento from MOVIMENTO m, MOVIMENTODETALHE md 
         where m.CODMOVIMENTO = md.CODMOVIMENTO      
           and md.BAIXA is null 
           and m.DATAMOVIMENTO = CURRENT_DATE
           and m.CODFORNECEDOR = new.COTACAO_FORNEC
           order by m.CODMOVIMENTO desc 
        into :codmov;
        
        if (codmov is null) then 
          codMov = 0;
             
        if (codmov = 0) then 
        begin  
          codmov = GEN_ID(GENMOV, 1);
          insert into MOVIMENTO (codmovimento, datamovimento, codcliente, codnatureza, 
            status, codusuario, codfornecedor, data_sistema, controle, data_entrega, prazo_pagamento, obs)
          values (
            :codmov, CURRENT_DATE, 0, 5, 1, 1, new.COTACAO_FORNEC, CURRENT_TIMESTAMP, new.COTACAO_CODIGO,
            new.COTACAO_DTENTREGA, new.COTACAO_PRAZO, UDF_LEFT(new.COTACAO_OBSERVACAO,99));   
        end  
        select first 1 p.CODPRODUTO from produtos p where p.CODPRO =  new.COTACAO_ITEM
          into :codProduto;
        
        insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto, 
            quantidade, preco) values (
            GEN_ID(GENMOVDET, 1), :codmov, :codProduto, new.COTACAO_ITEMDESCRICAO, 
            new.COTACAO_QTDE, NEW.COTACAO_PRECO);  
        UPDATE COMPRA_SOLIC  SET SOLIC_SITUACAO = 'E' 
         WHERE SOLIC_CODIGO = NEW.COTACAO_CODSOLIC;              
      end 
    end
END^
SET TERM ; ^