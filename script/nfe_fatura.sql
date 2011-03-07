CREATE OR ALTER PROCEDURE NFE_FATURA (
    CODVENDA integer )
RETURNS (
    DATAFATURA date,
    VALOR double precision,
    NUMEROFATURA varchar(20) )
AS
DECLARE VARIABLE ve_Prazo char(10); 
DECLARE VARIABLE Prazo char(40);
DECLARE VARIABLE NF char(20);
DECLARE VARIABLE serie char(10);
DECLARE VARIABLE CFOP char(4);
DECLARE VARIABLE uf char(2);
DECLARE VARIABLE nenv char(1);
DECLARE VARIABLE VLR DOUBLE PRECISION;
DECLARE VARIABLE VLR_TOT DOUBLE PRECISION;
DECLARE VARIABLE TOT_SUBST DOUBLE PRECISION;
DECLARE VARIABLE parc smallint;
DECLARE VARIABLE parcelas smallint;
DECLARE VARIABLE codm integer;
DECLARE VARIABLE cli integer;
DECLARE VARIABLE TOT_IPI DOUBLE PRECISION;
DECLARE VARIABLE vlr_base DOUBLE PRECISION;
DECLARE VARIABLE qnt DOUBLE PRECISION;
DECLARE VARIABLE ipi DOUBLE PRECISION;
DECLARE VARIABLE subst DOUBLE PRECISION;
DECLARE VARIABLE vfrete DOUBLE PRECISION;

-- (new.VLR_BASE*new.QUANTIDADE) valor tot cada PRODUTo
BEGIN
  VLR_TOT = 0;
  TOT_SUBST = 0;
  TOT_IPI = 0;
  parc = 0; 
  /* Gera as FAtura para imprimir na NFe */ 
  select first 1 prazo, cast(notafiscal as varchar(15)), serie, CODMOVIMENTO, CODCLIENTE, VALOR_FRETE from venda where codvenda = :codvenda
  into :prazo, :nf, :serie, :codm, :cli, :vfrete;
  
  select first 1 ec.UF from ENDERECOCLIENTE ec where ec.CODCLIENTE = :cli and ec.TIPOEND = 0
    into :uf;
  
  /*Verifica quantas parcelas são*/ 
  select first 1 r.PARCELAS
    from RECEBIMENTO r where r.TITULO = udf_trim(:NF) || '-' || :Serie
    into :parcelas;
  
  select first 1 D9 from parametro where parametro = :prazo
  into :ve_prazo;
  if (prazo is null) then 
  begin
    for select distinct md.CFOP from MOVIMENTODETALHE md where md.CODMOVIMENTO = :codm
      into :CFOP
    do begin
        select first 1 ei.NAOENVFATURA from ESTADO_ICMS ei where ei.CFOP = :CFOP and ei.UF = :uf
          into :nenv;
        if (:nenv <> 'S') then
        begin
          for select (md.VLR_BASE * md.QUANTIDADE), md.VIPI, md.ICMS_SUBST from MOVIMENTODETALHE md where md.CODMOVIMENTO = :codm and md.CFOP = :cfop
          into :vlr_base, :ipi, :subst
          do begin
            VLR_TOT = VLR_TOT + :vlr_base;
            TOT_IPI = TOT_IPI + :ipi;
            TOT_SUBST = TOT_SUBST + :subst;
          end
        end
    end
    parc = 0;
      for select r.DATAVENCIMENTO,  r.VIA
        from RECEBIMENTO r where r.TITULO = udf_trim(:NF) || '-' || :Serie order by r.DATAVENCIMENTO, r.VIA
        into :datafatura, :numerofatura
        do begin
          parc = parc + 1;
          numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:parc);
          if (parc = 1) then
            valor = (VLR_TOT/parcelas) + TOT_SUBST + TOT_IPI + vfrete;
          else
            valor = (VLR_TOT/parcelas);
          suspend;
        end     
  end
  ELSE
  BEGIN
  if (ve_prazo = '999') then
  begin 
  
      for select distinct md.CFOP from MOVIMENTODETALHE md where md.CODMOVIMENTO = :codm
      into :CFOP
      do begin
        select first 1 ei.NAOENVFATURA from ESTADO_ICMS ei where ei.CFOP = :CFOP and ei.UF = :uf
          into :nenv;
        if (:nenv <> 'S') then
        begin
          for select (md.VLR_BASE * md.QUANTIDADE), md.VIPI, md.ICMS_SUBST from MOVIMENTODETALHE md where md.CODMOVIMENTO = :codm and md.CFOP = :cfop
          into :vlr_base, :ipi, :subst
          do begin
            VLR_TOT = VLR_TOT + :vlr_base;
            TOT_IPI = TOT_IPI + :ipi;
            TOT_SUBST = TOT_SUBST + :subst;
          end
        end
    end
    parc = 0;
    for select r.DATAVENCIMENTO,  r.VIA
      from RECEBIMENTO r where r.TITULO = udf_trim(:NF) || '-' || :Serie order by r.DATAVENCIMENTO, r.VIA
      into :datafatura, :numerofatura
      do begin
      if (parc = 0) then
            valor = (VLR_TOT/parcelas) + TOT_SUBST + TOT_IPI + vfrete;
          else
            valor = (VLR_TOT/parcelas);        
        parc = parc + 1;
        numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:parc);
        suspend;
      end
    
  end
  else begin 

      for select distinct md.CFOP from MOVIMENTODETALHE md where md.CODMOVIMENTO = :codm
      into :CFOP
      do begin
        select first 1 ei.NAOENVFATURA from ESTADO_ICMS ei where ei.CFOP = :CFOP and ei.UF = :uf
          into :nenv;
        if (nenv = 'S') then
        begin
          for select (md.VLR_BASE * md.QUANTIDADE), md.VIPI, md.ICMS_SUBST from MOVIMENTODETALHE md where md.CODMOVIMENTO = :codm and md.CFOP = :cfop
          into :vlr_base, :ipi, :subst
          do begin
            VLR_TOT = VLR_TOT + :vlr_base;
            TOT_IPI = TOT_IPI + :ipi;
            TOT_SUBST = TOT_SUBST + :subst;
          end
        end
      end
    select first 1 r.VALOR_RESTO, parcelas from RECEBIMENTO r  where r.TITULO = udf_trim(:NF) || '-' || :Serie
      into :vlr, :parc;
    parc = 0; 
    for select r.DATAVENCIMENTO, r.via
      from RECEBIMENTO r  where r.TITULO = udf_trim(:NF) || '-' || :Serie and BL = 1 order by r.DATAVENCIMENTO, r.VIA
      into :datafatura, :numerofatura
    do begin
        if (parc = 0) then
            valor = (VLR_TOT/parcelas) + TOT_SUBST + TOT_IPI + vfrete;
          else
            valor = (VLR_TOT/parcelas);        
        parc = parc + 1;
        numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:parc);
        suspend;
    end

  end
  END    
END