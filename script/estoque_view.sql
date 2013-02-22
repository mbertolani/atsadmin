SET TERM ^ ;

CREATE OR ALTER PROCEDURE ESTOQUE_VIEW (DTA1 Date,
    PROD1 Integer,
    CCUSTO Integer,
    LOTE Varchar(60)
     )
RETURNS 
(
    CODPROD Varchar(20),
    MESANO VARCHAR(10), 
    CODPRODUTO INTEGER,
    PRODUTO Varchar(300),
    GRUPO Varchar(30),
    SUBGRUPOPROD Varchar(30),
    SALDOINIACUM Double precision,
    ENTRADA Double precision,
    SAIDA Double precision,
    SALDOFIMACUM Double precision,
    ESTOQUE_MES Double precision,
    PRECOUNIT Double precision,
    VALORESTOQUE Double precision,
    VALORVENDA Double precision,
    LOTES Varchar(60),
    CCUSTOS Integer
)
AS 
DECLARE VARIABLE PROD integer;
DECLARE VARIABLE INI smallint;
DECLARE VARIABLE SOMA_ENTRADA double precision; 
DECLARE VARIABLE SOMA_SAIDA double precision;
DECLARE VARIABLE SOMA_ENT double precision; 
DECLARE VARIABLE SOMA_SAI double precision;
DECLARE VARIABLE SALDO_INI double precision; 
DECLARE VARIABLE SALDO_FIM double precision;
DECLARE VARIABLE SALDO_INIX double precision; 
DECLARE VARIABLE SALDO_FIMX double precision;
DECLARE variable DataMov Date;
BEGIN
  PROD = 0;
  INI  = 0;
  SOMA_ENTRADA = 0;
  SOMA_SAIDA   = 0;
  SALDO_INIX   = 0;
  SALDO_FIMX   = 0;
  
  -- Procuro pelo ultimo movimento do item 
  SELECT First 1 m.DATAMOVIMENTO FROM MOVIMENTO m, MOVIMENTODETALHE md 
   WHERE md.CODMOVIMENTO = m.CODMOVIMENTO
     AND md.CODPRODUTO  = :Prod1 
     AND md.BAIXA is not null 
     AND m.DATAMOVIMENTO <= :dta1
   ORDER bY m.DATAMOVIMENTO DESC 
    into :dataMov;       
     
   FOR SELECT CODPROD, SALDOINIACUM,  
     ENTRADA, SAIDA, SALDOFIMACUM, PRECOUNIT, VALORVENDA,  CCUSTOS, LOTES
       from SPESTOQUEFILTRO(:DataMov , :DataMov, :Prod1, :Prod1, 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA', 
       100, :CCUSTO, 'TODAS AS MARCAS CADASTRADAS NO SISTEMA', :LOTE, 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA')
       into :CODPROD,  :SALDOINIACUM, :SOMA_ENT, :SOMA_SAI, :SALDOFIMACUM, :PRECOUNIT, :VALORVENDA,  :CCUSTOS, :LOTES
   do begin
      
       
   end
   Suspend;
END