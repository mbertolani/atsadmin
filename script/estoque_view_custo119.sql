set term  ^ ;
CREATE OR ALTER PROCEDURE ESTOQUE_VIEW_CUSTO (
    DTA1 date,
    PROD1 integer,
    CCUSTO integer,
    LOTE varchar(60) )
RETURNS (
    CODPROD varchar(20),
    MESANO varchar(10),
    CODPRODUTO integer,
    PRODUTO varchar(300),
    GRUPO varchar(30),
    SUBGRUPOPROD varchar(30),
    SALDOINIACUM double precision,
    ENTRADA double precision,
    SAIDA double precision,
    SALDOFIMACUM double precision,
    ESTOQUE_MES double precision,
    PRECOUNIT double precision,
    PRECOCUSTO double precision,
    VALORESTOQUE double precision,
    VALORVENDA double precision,
    PRECOCOMPRA double precision,
    PRECOVENDA double precision,
    LOTES varchar(60),
    CCUSTOS integer )
AS
DECLARE VARIABLE PROD integer;
DECLARE VARIABLE INI smallint;
DECLARE VARIABLE SOMA_ENTRADA double precision; 
DECLARE VARIABLE SOMA_SAIDA double precision;
DECLARE VARIABLE SOMA_ENT double precision; 
DECLARE VARIABLE SOMA_SAI double precision;
BEGIN
  PROD = 0;
  INI  = 0;
  SOMA_ENTRADA = 0;
  SOMA_SAIDA   = 0;

  
  if (ccusto = 0) then 
    ccusto = 1;
     
   --suspend;   
   --mesano = datamov;  
   FOR SELECT CODPROD, SALDOINIACUM,  
     ENTRADA, SAIDA, SALDOFIMACUM, PRECOUNIT, VALORVENDA,  CCUSTOS, LOTES, GRUPO, PRECOCOMPRA, PRECOVENDA, PRECOCUSTO
       from SPESTOQUEFILTRO('01/01/01' , :DTA1, :Prod1, :Prod1, 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA', 
       100, :CCUSTO, 'TODAS AS MARCAS CADASTRADAS NO SISTEMA', :LOTE, 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA') ep
       into :CODPROD,  :SALDOINIACUM, :SOMA_ENT, :SOMA_SAI, :SALDOFIMACUM, :PRECOUNIT, :VALORVENDA,  :CCUSTOS, :LOTES, 
       :GRUPO, :PRECOCOMPRA, :PRECOVENDA, :PRECOCUSTO
   do begin     
   end

  
   
   Suspend;
   
   
   
END
