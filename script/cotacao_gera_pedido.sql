SET TERM ^ ;
CREATE OR ALTER TRIGGER COTACAO_GERA_PEDIDO FOR MOVIMENTODETALHE ACTIVE 
AFTER UPDATE POSITION 0
AS 
  DECLARE VARIABLE NAT SMALLINT;
  DECLARE VARIABLE codUsuario SMALLINT;
  DECLARE VARIABLE codVendedor SMALLINT;
  DECLARE VARIABLE codMov INT;
  DECLARE VARIABLE codProduto INT;  
  DECLARE VARIABLE codFornece INT;  
  DECLARE VARIABLE codCotacao INT; 
  DECLARE VARIABLE prazo VARCHAR(30); 
  DECLARE VARIABLE obs VARCHAR(100); 
  DECLARE VARIABLE entrega date; 
  DECLARE VARIABLE frete DOUBLE PRECISION; 
  DECLARE VARIABLE descProd  VARCHAR(300); 
  DECLARE VARIABLE qtde DOUBLE PRECISION; 
  DECLARE VARIABLE preco DOUBLE PRECISION; 
BEGIN 
	-- Qdo conferido o pedido (qtde) gera se um pedido com a natureza = 4
    if ((NEW.RECEBIDO > 0) and (New.STATUS = 1) and (OLD.RECEBIDO = 0)) then 
    begin
      SELECT m.CODNATUREZA, m.CODFORNECEDOR, m.CONTROLE, m.DATA_ENTREGA, 
        m.PRAZO_PAGAMENTO, m.OBS, m.VALOR_FRETE, m.CODUSUARIO, 
        m.CODVENDEDOR 
        FROM MOVIMENTO m 
       where m.CODMOVIMENTO = old.CODMOVIMENTO
      into :nat, :codFornece, :codCotacao, :entrega, :prazo, :obs, :frete, :codUsuario, 
      :codVendedor;
      if (nat = 5) then 
      begin     
        -- Vê se ja criou a MOVIMENTO 
        codMov = 0;
        Select m.CODMOVIMENTO from MOVIMENTO m 
         where m.CODFORNECEDOR = :codFornece
           and m.CONTROLE      = :codCotacao
           and m.DATAMOVIMENTO = CURRENT_DATE
           and m.CODNATUREZA   = 4
        into :codMov;   
        
        if (codMov is null) then 
          codMov = 0;
        
        if (codMov = 0) then 
        begin 
          codmov = GEN_ID(GENMOV, 1);
          INSERT INTO MOVIMENTO(codmovimento, datamovimento, codcliente, codnatureza, 
            status, codusuario, codfornecedor, data_sistema, controle, data_entrega, 
            prazo_pagamento, obs, valor_frete, codVendedor)
          values (:codmov, CURRENT_DATE, 0, 4, 
            0,:codUsuario, :codFornece, CURRENT_TIMESTAMP, :codCotacao, :entrega,
            :prazo, :obs, :frete, :codVendedor);    
        end
        Select codproduto, descproduto, quantidade, preco from MOVIMENTODETALHE md
         where md.CODDETALHE = old.codDetalhe 
         into :codProduto, :descProd, :qtde, :preco;  
        
        insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto, 
            quantidade, preco) values (
            GEN_ID(GENMOVDET, 1), :codmov, :codProduto, :descProd, 
            NEW.RECEBIDO, :preco); 
      end
    end
END^
SET TERM ; ^