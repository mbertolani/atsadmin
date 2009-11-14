SET TERM ^ ;
ALTER PROCEDURE LANCA_ENT_SAIDA (
    TIPOLANC Smallint,
    CODMOV Integer,
    CODCLIFORN Integer,
    DATA Date,
    DATAVCTO Date,
    CODUSUARIO Smallint,
    CODCCUSTO Integer,
    SERIE Char(1),
    NSERIESAI Integer,
    NSERIEENT Varchar(10) )
AS
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE CODCV INTEGER;
BEGIN
  /* Estes lanÃ§amentos sÃ£o necessÃ¡rios para o sistema fazer o lanÃ§amento na tab MOVIMENTOCONT */
  /* LANCA ENTRADA NA TAB COMPRA */
  codCv = null;
  IF (TIPOLANC = 0) then
  BEGIN
     select codcompra from compra where codmovimento = :codMov
       into :codCV;
     delete from compra where codcompra = :codCv;  

     INSERT INTO COMPRA (CODMOVIMENTO, CODFORNECEDOR, DATACOMPRA, DATAVENCIMENTO,
     DESCONTO, VALOR, ENTRADA, CODUSUARIO, CODCCUSTO, NOTAFISCAL) 
     VALUES (:CODMOV, :CODCLIFORN, 
     :DATAVCTO, :DATAVCTO, 0, 0, 0, :CODUSUARIO, :CODCCUSTO, :nSerieSai);
  END
  /* LANCA SAIDA NA TAB SAIDA */
  IF (TIPOLANC = 1) then
  BEGIN
     select codVenda from Venda where codmovimento = :codMov
       into :codCV;
     delete from Venda where codVenda = :codCv;         
     
     CODIGO = GEN_ID("GENVENDA",1);   
     INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO,
     DESCONTO, VALOR, ENTRADA, CODUSUARIO, CODCCUSTO, SERIE, BANCO, CODVENDEDOR, NOTAFISCAL, CONTROLE) 
     VALUES 
     (:CODIGO, :CODMOV, :CODCLIFORN, 
     :DATA, :DATA, 0, 0, 0, :CODUSUARIO, :CODCCUSTO, :SERIE, 1, :CODUSUARIO, :nSerieSai, :nSerieEnt);
  END
END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE LANCA_ENT_SAIDA TO  SYSDBA;

