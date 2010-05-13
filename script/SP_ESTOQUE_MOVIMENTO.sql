SET TERM ^;
CREATE OR ALTER PROCEDURE SP_ESTOQUE_MOVIMENTO (
    DTA1 Date,
    DTA2 Date,
    MARC Varchar(50) )
RETURNS (
    CODPRO Varchar(20),
    CODPRODUTO INTEGER,
    PRODUTO Varchar(200),
    EST_ATUAL Double precision,
    ENTRADA Double precision,
    SAIDA Double precision,
    PRECOMEDIO Double precision,
    UN CHAR(2),
    MARCA Varchar(50))
AS

BEGIN

        FOR SELECT prod.CODPRODUTO, prod.PRODUTO, prod.ESTOQUEATUAL, prod.PRECOMEDIO, 
        prod.CODPRO, prod.UNIDADEMEDIDA, prod.MARCA
        FROM PRODUTOS prod 
        WHERE ((prod.MARCA = :MARC) OR (:MARC = 'TODAS AS MARCAS CADASTRADAS'))
        INTO :CODPRODUTO, :PRODUTO, :EST_ATUAL , :PRECOMEDIO, :CODPRO, :UN, :MARCA

        DO BEGIN
            --COMPRA / ENTRADA
            SELECT SUM(md.QUANTIDADE) as QUANTIDADE FROM MOVIMENTODETALHE md
            INNER JOIN MOVIMENTO m on m.CODMOVIMENTO = md.CODMOVIMENTO 
            where md.CODPRODUTO = :CODPRODUTO and md.BAIXA = 0 and (m.DATAMOVIMENTO BETWEEN :DTA1 AND :DTA2)
            into :ENTRADA;
            
            --VENDA / SAIDA
            SELECT SUM(md.QUANTIDADE) as QUANTIDADE FROM MOVIMENTODETALHE md
            INNER JOIN MOVIMENTO m on m.CODMOVIMENTO = md.CODMOVIMENTO 
            where md.CODPRODUTO = :CODPRODUTO and md.BAIXA = 1 and (m.DATAMOVIMENTO BETWEEN :DTA1 AND :DTA2)
            into :SAIDA;
            
            SUSPEND;
 
    END

END

