SET TERM ^ ;
ALTER PROCEDURE NFE_FATURA (
    CODVENDA Integer )
RETURNS (
    DATAFATURA Date,
    VALOR Double precision,
    NUMEROFATURA Varchar(20) )
AS
DECLARE VARIABLE ve_Prazo char(10); 
DECLARE VARIABLE Prazo char(20);
DECLARE VARIABLE NF char(20);
DECLARE VARIABLE serie char(10);
DECLARE VARIABLE VLR DOUBLE PRECISION;
DECLARE VARIABLE parc smallint;

BEGIN
  parc = 0; 
  /* Gera as FAtura para imprimir na NFe */ 
  select prazo, cast(notafiscal as varchar(15)), serie from venda where codvenda = :codvenda
  into :prazo, :nf, :serie; 
  select D9 from parametro where parametro = :prazo
  into :ve_prazo;
  if (prazo is null) then 
  begin
    for select r.DATAVENCIMENTO, r.VALOR_RESTO,  r.VIA
      from RECEBIMENTO r where r.TITULO = udf_trim(:NF) || '-' || :Serie order by r.DATAVENCIMENTO, r.VIA
      into :datafatura, :valor, :numerofatura
      do begin
        parc = parc + 1;
        numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:parc);
        --numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:NumeroFatura);
        suspend;
      end     
  end
  ELSE
  BEGIN
  if (ve_prazo = '999') then
  begin 
    parc = parc + 1;
    for select r.DATAVENCIMENTO, r.VALOR_RESTO,  r.VIA

      from RECEBIMENTO r where r.TITULO = udf_trim(:NF) || '-' || :Serie order by r.DATAVENCIMENTO, r.VIA

      into :datafatura, :valor, :numerofatura
      do begin
        numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:parc);
        suspend;
      end
  end
  else begin 
    select first 1 r.VALOR_RESTO, parcelas from RECEBIMENTO r  where r.TITULO = udf_trim(:NF) || '-' || :Serie
      into :vlr, :parc;
    parc = 0; 
    for select r.DATAVENCIMENTO, r.via, r.VALOR_RESTO
      from RECEBIMENTO r  where r.TITULO = udf_trim(:NF) || '-' || :Serie and BL = 1 order by r.DATAVENCIMENTO, r.VIA
      into :datafatura, :numerofatura, :vlr
    do begin
        valor = vlr;
        --if (parc > 0) then
        --   valor = vlr / parc; 
        parc = parc + 1;
        numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:parc);
        suspend;
    end
  end
  END    
END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE NFE_FATURA TO  SYSDBA;

