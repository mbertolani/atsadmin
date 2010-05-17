CREATE or alter PROCEDURE NFE_FATURA 
 ( CODVENDA INTEGER ) 
RETURNS 
 ( DATAFATURA DATE,
   VALOR DOUBLE PRECISION,
   NUMEROFATURA VARCHAR(20)  )
AS 
DECLARE VARIABLE ve_Prazo char(10); 
DECLARE VARIABLE Prazo char(20);
DECLARE VARIABLE NF char(20);
DECLARE VARIABLE serie char(10);
DECLARE VARIABLE VLR DOUBLE PRECISION;
DECLARE VARIABLE parc smallint;

BEGIN
  /* Gera as FAtura para imprimir na NFe */ 
  select prazo, cast(notafiscal as varchar(15)), serie from venda where codvenda = :codvenda
  into :prazo, :nf, :serie; 
  select D9 from parametro where parametro = :prazo
  into :ve_prazo;
  if (ve_prazo = '999') then
  begin 
    for select r.DATAVENCIMENTO, r.VALOR_RESTO,  r.VIA
      from RECEBIMENTO r where r.TITULO = udf_trim(:NF) || '-' || :Serie
      into :datafatura, :valor, :numerofatura
      do begin
        numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:NumeroFatura);
        suspend;
      end
  end
  else begin 
    select first 1 r.VALOR_RESTO, parcelas from RECEBIMENTO r  where r.TITULO = udf_trim(:NF) || '-' || :Serie
      into :vlr, :parc;

    for select r.DATAVENCIMENTO, r.via
      from RECEBIMENTO r  where r.TITULO = udf_trim(:NF) || '-' || :Serie
      into :datafatura, :numerofatura
    do begin
        valor = vlr;
        if (parc > 0) then
           valor = vlr / parc; 
         numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:NumeroFatura);
        suspend;
    end
  end 
  if (prazo is null) then 
  begin
    for select r.DATAVENCIMENTO, r.VALOR_RESTO,  r.VIA
      from RECEBIMENTO r where r.CODVENDA = :codvenda
      into :datafatura, :valor, :numerofatura
      do begin
        numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:NumeroFatura);
        suspend;
      end     
  end      
END
