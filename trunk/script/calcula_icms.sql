CREATE OR ALTER PROCEDURE CALCULA_ICMS (
    NUMERO_NF integer,
    UF char(2),
    CFOP varchar(10),
    FRETE double precision,
    SEGURO double precision,
    OUTROS double precision,
    TOTAL_PROD double precision,
    INDICE_MANUAL char(1),
    ICMS_INFO double precision,
    REDUZ_INFO double precision )
AS
declare variable cod integer;
declare variable codv integer;
declare variable NotaFiscalVenda integer;
declare variable serie varchar(20);
declare variable prazo varchar(20); 
declare variable NUMEROFATURA VARCHAR(20);
declare variable PARAMETRO VARCHAR(20);
declare variable qtde DOUBLE PRECISION;
declare variable preco DOUBLE PRECISION;
declare variable TOTICMS DOUBLE PRECISION;
declare variable TOTBASEICMS DOUBLE PRECISION;
declare variable TOTST DOUBLE PRECISION;
declare variable TOTIPI DOUBLE PRECISION;
declare variable TOTPROD DOUBLE PRECISION;
declare variable TOTBASEST DOUBLE PRECISION;
declare variable codCli integer;
declare variable d9 SMALLINT;
begin

    select v.codmovimento, v.NOTAFISCAL, v.SERIE, v.CODVENDA, prazo from venda v
        inner join notafiscal n on n.CODVENDA = v.CODVENDA where n.NUMNF = :numero_nf
    into :cod, :notaFiscalVenda, :serie, :codv, :prazo;

    select COALESCE(sum(md.ICMS_SUBST), 0), COALESCE(sum(md.ICMS_SUBSTD), 0), COALESCE(sum(md.VALOR_ICMS), 0), COALESCE(sum(md.VLR_BASEICMS), 0), COALESCE(sum(md.VIPI), 0), COALESCE(sum(md.VALTOTAL), 0) from MOVIMENTODETALHE md
    where md.CODMOVIMENTO = :cod
    into :TOTST, :TOTBASEST, :TOTICMS, :TOTBASEICMS, :TOTIPI, :TOTPROD;
  
    UPDATE NOTAFISCAL SET BASE_ICMS_SUBST = :TOTBASEST, VALOR_ICMS_SUBST = :TOTST, VALOR_IPI = :TOTIPI, BASE_ICMS = :TOTBASEICMS, VALOR_ICMS = :TOTICMS,
      VALOR_TOTAL_NOTA = :TOTPROD + :TOTST + :TOTIPI
      where NUMNF = :numero_nf;
              
  
    select first 1 NUMEROFATURA from NFE_FATURA(:CODV)
      into :numerofatura;        
      NumeroFatura = notaFiscalVenda || '-' || serie;
        
    -- vejo se usa nf Parcial
    select parametro from parametro where parametro = 'NFVALOR'
    into :parametro;
    if (parametro is not null) then
    begin        
      select first 1 cast(p.d9 as integer) from PARAMETRO p  where p.PARAMETRO = :Prazo
        into :d9; 

      if (d9 is null) then 
        d9 = 999;
    
      if (d9 <> 999) then 
        EXECUTE PROCEDURE Corrige_fatura(:NumeroFatura);  
    end
    
    update recebimento set valst = :TOTST where titulo = :notafiscalVenda || '-' || :serie and via = 1;
       
end