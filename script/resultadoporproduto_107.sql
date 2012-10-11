CREATE OR ALTER PROCEDURE RESULTADOPORPRODUTO (
    CCUSTO Integer,
    MARCA Varchar(30),
    CATEGORIA Varchar(30),
    FAMILIA Varchar(30),
    DTAINI Date,
    DTAFIM Date )
RETURNS (
    CODPRO Varchar(15),
    PRODUTO Varchar(300),
    PRECOCUSTO Double precision,
    PRECOMEDIOVENDA Double precision,
    QTDEVENDA Double precision,
    QTDEENT Double precision,
    VLRENTTOTAL Double precision,
    VLRVENDATOTAL Double precision,
    RESULTADOPRODUTO Double precision,
    PERCENTUAL Double precision )
AS
DECLARE VARIABLE CP INTEGER;
 DECLARE VARIABLE TIPO SMALLINT;
 DECLARE VARIABLE QTDE DOUBLE PRECISION;
 DECLARE VARIABLE VLR DOUBLE PRECISION;
BEGIN
  VLRENTTOTAL = 0;
  QTDEENT = 0;
  VLRVENDATOTAL = 0;
  QTDEVENDA = 0;
  /* Seleciono os movimentos executados */ 
  FOR SELECT p.CODPRODUTO, p.CODPRO, p.PRODUTO
    FROM PRODUTOS p
    WHERE ((p.MARCA = :MARCA) OR (:MARCA = 'TODAS AS MARCAS DO CADASTRO'))
        and ((p.CATEGORIA = :CATEGORIA) OR (:CATEGORIA = 'TODAS AS CATEGORIAS CADASTRO'))     
        and ((p.FAMILIA = :FAMILIA) OR (:FAMILIA = 'TODAS AS FAMILIAS DO CADASTRO'))     
        order by p.CODPRODUTO
  INTO :CP, :CODPRO, :PRODUTO
  DO BEGIN
    /* Totais Compra e ou Entradas        */
    FOR SELECT COALESCE(sum(md.QUANTIDADE), 0), COALESCE(SUM(md.VALTOTAL), 0)
      FROM MOVIMENTO m
      inner join MOVIMENTODETALHE md on m.CODMOVIMENTO = md.CODMOVIMENTO
      inner join NATUREZAOPERACAO nt on nt.CODNATUREZA = m.CODNATUREZA
      WHERE (nt.BAIXAMOVIMENTO = 0) and (m.DATAMOVIMENTO BETWEEN :DTAINI AND :DTAFIM) 
      and md.CODPRODUTO = :CP and ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 999999)) 
      INTO :QTDE, :VLR 
    do begin
      /* Totais Compra e ou Entradas        */
      QTDEENT = QTDEENT + QTDE;
      VLRENTTOTAL = VLRENTTOTAL + VLR;
      if (( QTDEENT > 0)  AND (VLRENTTOTAL > 0) )then
        PRECOCUSTO = VLRENTTOTAL / QTDEENT;
      else
        precocusto = 0;
    END
    /* Totais VENDA e ou Saídas        */
    FOR SELECT COALESCE(sum(md.QUANTIDADE), 0), COALESCE(SUM(md.VALTOTAL), 0)
            FROM MOVIMENTO m
      inner join MOVIMENTODETALHE md on m.CODMOVIMENTO = md.CODMOVIMENTO
      inner join NATUREZAOPERACAO nt on nt.CODNATUREZA = m.CODNATUREZA
      WHERE (nt.BAIXAMOVIMENTO = 1) and (m.DATAMOVIMENTO BETWEEN :DTAINI AND :DTAFIM)
      and md.CODPRODUTO = :CP and ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 999999)) 
      INTO :QTDE, :VLR 
    do begin
      QTDEVENDA = QTDEVENDA + QTDE;
      VLRVENDATOTAL = VLRVENDATOTAL + VLR;
    END
    /*VLRENTTOTAL = PRECOCUSTO * QUANTIDADEVENDA;*/
    IF ((QTDEVENDA > 0) AND (VLRVENDATOTAL > 0)) THEN
    begin
      PRECOMEDIOVENDA = VLRVENDATOTAL / QTDEVENDA;    
    END
    else
      PRECOMEDIOVENDA = 0;
    
    RESULTADOPRODUTO = VLRVENDATOTAL - (PRECOCUSTO * QTDEVENDA);
    IF ((VLRVENDATOTAL > 0) AND (VLRENTTOTAL > 0)) THEN 
      PERCENTUAL = (RESULTADOPRODUTO/(PRECOCUSTO * QTDEVENDA)) * 100;
    else
      PERCENTUAL = 0;
    --if ((VLRENTTOTAL IS NOT NULL)  or (VLRVENDATOTAL IS NOT NULL)) THEN  
      suspend;
    qtdeEnt = 0;
    qtdeVenda = 0;
    VLRENTTOTAL = 0;
    VLRVENDATOTAL = 0;
         
  END      
END