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
  DECLARE VARIABLE userAprova VARCHAR(30);
  DECLARE VARIABLE obs VARCHAR(100); 
  DECLARE VARIABLE entrega date; 
  DECLARE VARIABLE frete DOUBLE PRECISION; 
BEGIN 
	-- Qdo conferido o pedido (qtde) gera se um pedido com a natureza = 4
    if ((NEW.RECEBIDO > 0) and (OLD.RECEBIDO = 0)) then 
    begin
      SELECT m.CODNATUREZA, m.CODFORNECEDOR, m.CONTROLE, m.DATA_ENTREGA, 
        m.PRAZO_PAGAMENTO, m.OBS, m.VALOR_FRETE, m.CODUSUARIO, 
        m.CODVENDEDOR , m.USER_APROVA
        FROM MOVIMENTO m 
       where m.CODMOVIMENTO = old.CODMOVIMENTO
      into :nat, :codFornece, :codCotacao, :entrega, :prazo, :obs, :frete, :codUsuario, 
      :codVendedor, :userAprova;
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
            prazo_pagamento, obs, valor_frete, codVendedor, user_Aprova)
          values (:codmov, CURRENT_DATE, 0, 4, 
            3,:codUsuario, :codFornece, CURRENT_TIMESTAMP, :codCotacao, :entrega,
            :prazo, :obs, :frete, :codVendedor, :userAprova);    
          When any do
          begin
            EXCEPTION ERRO_TRG;
          end 
        end

        insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto,   
            quantidade, preco, un, qtde_alt) values (
            GEN_ID(GENMOVDET, 1), :codMov, old.codProduto, old.DESCPRODUTO, 
            NEW.RECEBIDO, old.PRECO, old.UN, old.QTDE_ALT); 
            
         if (new.RECEBIDO < old.QUANTIDADE) then 
         begin 
           insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto, 
             quantidade, preco, un, qtde_alt, recebido) values (
             GEN_ID(GENMOVDET, 1), old.CODMOVIMENTO, old.codProduto, old.DESCPRODUTO, 
             old.QUANTIDADE - new.RECEBIDO, old.PRECO, old.UN, old.QTDE_ALT, 0);
         end  

        When any do
        begin
          EXCEPTION ERRO_TRG;
        end 
            
      end
    end
END^
SET TERM ; ^