CREATE OR ALTER PROCEDURE COTACAO_NEGOCIACAO 
 (ITEM VARCHAR(15))
RETURNS 
 (CODPRO   VARCHAR(15),
  DESCRICAO VARCHAR(300), 
  PRECO1    DOUBLE PRECISION,
  PRECO2    DOUBLE PRECISION,
  PRECO3    DOUBLE PRECISION,
  PRECO4    DOUBLE PRECISION,
  PRECO5    DOUBLE PRECISION,
  PRECO6    DOUBLE PRECISION,
  PRECO7    DOUBLE PRECISION,
  PRECO8    DOUBLE PRECISION,
  TOT1    DOUBLE PRECISION,
  TOT2    DOUBLE PRECISION,
  TOT3    DOUBLE PRECISION,
  TOT4    DOUBLE PRECISION,
  TOT5    DOUBLE PRECISION,
  TOT6    DOUBLE PRECISION,
  TOT7    DOUBLE PRECISION,
  TOT8    DOUBLE PRECISION,  
  UN        CHAR(3),
  QTDE      DOUBLE PRECISION,
  PRAZO1     VARCHAR(30),
  PRAZO2     VARCHAR(30),
  PRAZO3     VARCHAR(30),
  PRAZO4     VARCHAR(30),
  PRAZO5     VARCHAR(30),
  PRAZO6     VARCHAR(30),
  PRAZO7     VARCHAR(30),
  PRAZO8     VARCHAR(30),
  OBS       VARCHAR(200),
  TOTAL     DOUBLE PRECISION,
  FRETE     DOUBLE PRECISION,  
  DENTREGA1 DATE,
  DENTREGA2 DATE,
  DENTREGA3 DATE,
  DENTREGA4 DATE,
  DENTREGA5 DATE,
  DENTREGA6 DATE,
  DENTREGA7 DATE,
  DENTREGA8 DATE
)
AS 
  DECLARE VARIABLE PRAZO     VARCHAR(30);
  DECLARE VARIABLE DENTREGA  DATE;
  DECLARE VARIABLE codFornec integer; 
  DECLARE VARIABLE numFornec SMALLINT; 
  DECLARE VARIABLE Fornec    varchar(60); 
  DECLARE VARIABLE PRECO     DOUBLE PRECISION;
  DECLARE VARIABLE TTOTAL    DOUBLE PRECISION;
  DECLARE VARIABLE FORNEC1   integer;
  DECLARE VARIABLE FORNEC2   integer;
  DECLARE VARIABLE FORNEC3   integer;
  DECLARE VARIABLE FORNEC4   integer;
  DECLARE VARIABLE FORNEC5   integer;
  DECLARE VARIABLE FORNEC6   integer;
  DECLARE VARIABLE FORNEC7   integer;
  DECLARE VARIABLE FORNEC8   integer;
  DECLARE VARIABLE T1    DOUBLE PRECISION;
  DECLARE VARIABLE T2    DOUBLE PRECISION;
  DECLARE VARIABLE T3    DOUBLE PRECISION;
  DECLARE VARIABLE T4    DOUBLE PRECISION;
  DECLARE VARIABLE T5    DOUBLE PRECISION;
  DECLARE VARIABLE T6    DOUBLE PRECISION;
  DECLARE VARIABLE T7    DOUBLE PRECISION;
  DECLARE VARIABLE T8    DOUBLE PRECISION;
  DECLARE VARIABLE FRETE1 DOUBLE PRECISION;
  DECLARE VARIABLE FRETE2 DOUBLE PRECISION;
BEGIN
  numFornec = 0;
  -- Lista todos os fornecedores com Cotações em aberto para o item 
  FOR SELECT COTACAO_FORNEC, COTACAO_PRAZO, COTACAO_DTENTREGA
    FROM COMPRA_COTACAO
   WHERE COTACAO_SITUACAO = 'G'
     AND COTACAO_ITEM     = :ITEM
   ORDER BY COTACAO_CODIGO  
  INTO :codFornec, :PRAZO , :DENTREGA
  do begin 
       
    numFornec = numFornec + 1;
    if (numFornec = 1) then 
    begin
      fornec1   = codfornec;
      prazo1    = prazo;
      dentrega1 = dentrega;     
    end   
    if (numFornec = 2) then
    begin
      fornec2 = codfornec;
      prazo2    = prazo;
      dentrega2 = dentrega;
    end  
    if (numFornec = 3) then
    begin
      fornec3   = codfornec;
      prazo3    = prazo;
      dentrega3 = dentrega;
    end  
    if (numFornec = 4) then 
    begin
      fornec4   = codfornec;
      prazo4    = prazo;
      dentrega4 = dentrega;
    end  
    if (numFornec = 5) then 
    begin
      fornec5   = codfornec;
      prazo5    = prazo;
      dentrega5 = dentrega;
    end  

    if (numFornec = 6) then 
    begin
      fornec6   = codfornec;
      prazo6    = prazo;
      dentrega6 = dentrega;
    end  

    if (numFornec = 7) then 
    begin
      fornec7   = codfornec;
      prazo7    = prazo;
      dentrega7 = dentrega;
    end  

    if (numFornec = 8) then 
    begin
      fornec8   = codfornec;
      prazo8    = prazo;
      dentrega8 = dentrega;
    end  

  end  
  
  --Busca todos as cotaçoes para o fornecedor
  TOTAL = 0;
  T1    = 0; 
  T2    = 0;
  T3    = 0;
  T4    = 0;
  T5    = 0;
  T6    = 0;
  T7    = 0;
  T8    = 0;
  
  FOR SELECT COTACAO_ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60)
    DESCRICAO, COTACAO_PRECO, COTACAO_OBSERVACAO, 
    COTACAO_QTDE, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
   FROM COMPRA_COTACAO
  WHERE COTACAO_FORNEC = :codFornec
    AND COTACAO_SITUACAO = 'G'
   INTO :CODPRO, :DESCRICAO, :PRECO, :OBS, :QTDE, :TTOTAL 
  do begin
    
    TOTAL = TOTAL + TTOTAL;
    
    SELECT FIRST 1 COTACAO_PRECO, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec1
       AND COTACAO_SITUACAO = 'G'
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO1, :TOT1;

      SELECT COTACAO_FRETE
        FROM COMPRA_COTACAO
       WHERE COTACAO_FORNEC = :Fornec1
         AND COTACAO_SITUACAO = 'G'    
         AND COTACAO_FRETE > 0
        INTO :FRETE1; 

      T1 = T1 + TOT1;

    SELECT FIRST 1 COTACAO_PRECO, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec2
       AND COTACAO_SITUACAO = 'G'
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO2, :TOT2;

      SELECT COTACAO_FRETE
        FROM COMPRA_COTACAO
       WHERE COTACAO_FORNEC = :Fornec2
         AND COTACAO_SITUACAO = 'G'    
         AND COTACAO_FRETE > 0
        INTO :FRETE2; 

    T2 = T2 + TOT2;

    SELECT FIRST 1 COTACAO_PRECO, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec3
       AND COTACAO_SITUACAO = 'G'
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO3, :TOT3;

    T3 = T3 + TOT3;
    
    SELECT FIRST 1 COTACAO_PRECO, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec4
       AND COTACAO_SITUACAO = 'G'
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO4, :TOT4;

    SELECT FIRST 1 COTACAO_PRECO, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec5
       AND COTACAO_SITUACAO = 'G'
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO5, :TOT5;

    SELECT FIRST 1 COTACAO_PRECO, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec6
       AND COTACAO_SITUACAO = 'G'
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO6, :TOT6;

    SELECT FIRST 1 COTACAO_PRECO, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec7
       AND COTACAO_SITUACAO = 'G'
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO7, :TOT7;

    SELECT FIRST 1 COTACAO_PRECO, (COTACAO_PRECO * COTACAO_QTDE) TOTAL
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec8
       AND COTACAO_SITUACAO = 'G'
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO8, :TOT8;

    suspend;
    
  end    
  
  CODPRO = '';
  DESCRICAO = '';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  qtde   = null;
  tot1   = null;
  tot2   = null;
  tot3   = null;
  tot4   = null;
  tot5   = null;
  tot6   = null;
  tot7   = null;
  tot8   = null;
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = ' FRETE ';
  if (numFornec = 1) then 
    TOT1 = FRETE1;
  if (numFornec = 2) then     
    TOT2 = FRETE2;
 -- if (numFornec = 3) then     
 --   PRECO3 = FRETE;
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = '';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  tot1   = null;
  tot2   = null;
  tot3   = null;
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = ' TOTAL ';
  TOT1 = T1;
  TOT2 = T2;
  TOT3 = T3;
  
  SUSPEND;

  /* 
  CODPRO = '';
  DESCRICAO = '';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  tot1   = null;
  tot2   = null;
  tot3   = null;
  tot4   = null;
  tot5   = null;
  tot6   = null;
  tot7   = null;
  tot8   = null;

  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = ' CONDICOES PAGAMENTO';
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = '';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = ' PRAZO DE ENTREGA ';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  
  SUSPEND;*/

END
