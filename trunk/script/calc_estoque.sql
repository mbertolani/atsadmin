SET TERM ^ ;
CREATE OR ALTER PROCEDURE CALC_ESTOQUE (
    DATAINI date,
    DATAFIM date )
RETURNS (
    CODPRO integer,
    DESCPRO varchar(300),
    QNT double precision,
    ESTOQUE double precision,
    SALDO double precision )
AS
BEGIN
    FOR SELECT md.CODPRODUTO, SUM(md.QUANTIDADE), md.DESCPRODUTO
    FROM MOVIMENTODETALHE md 
    INNER JOIN MOVIMENTO m on m.CODMOVIMENTO = md.CODMOVIMENTO
    where md.BAIXA is null and m.CODNATUREZA = 3 and m.DATAMOVIMENTO BETWEEN :DATAINI and :DATAFIM
    group by md.CODPRODUTO, md.DESCPRODUTO
    into :CODPRO, :QNT, :DESCPRO
    do begin    
    select sum(p.SALDOFIM) from SPESTOQUEPRODUTO(:DATAINI
                                 , CURRENT_DATE
                                 , :CODPRO
                                 , :CODPRO
                                 , 'TODOS OS GRUPOS CADASTRADOS'
                                 , 'TODOS SUBGRUPOS DO CADASTRO'
                                 , 'TODAS AS MARCAS CADASTRADAS'
                                 , 0) p
        into :ESTOQUE;
  --      select p.ESTOQUEATUAL from PRODUTOS p where p.CODPRO = :CODPRO
    --    INTO :ESTOQUE;
        SALDO = :ESTOQUE - :QNT;
        SUSPEND;
    end

END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE CALC_ESTOQUE TO  SYSDBA;

