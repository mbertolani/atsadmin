CREATE OR ALTER TRIGGER CALCULA_ICMS_ST ACTIVE
BEFORE UPDATE POSITION 0
AS
 DECLARE VARIABLE UF char(2);
 Declare variable CICMS_SUBST double precision;
 Declare variable CICMS_SUBST_IC double precision;
 Declare variable CICMS_SUBST_IND double precision;
 Declare variable CICMS double precision;
 Declare variable IND_IPI double precision;
 Declare variable CST_P char (5);
 Declare variable ind_reduzicms double precision;
 Declare variable PESSOA SMALLINT;   
 Declare variable ICMS_SUBST double precision;
 DECLARE VARIABLE cormva DOUBLE PRECISION;
 DECLARE VARIABLE VALOR_SUBDesc DOUBLE PRECISION;
 DECLARE VARIABLE TOTST DOUBLE PRECISION;
 DECLARE VARIABLE TOTBASEST DOUBLE PRECISION;
 DECLARE VARIABLE TOTICMS DOUBLE PRECISION;
 DECLARE VARIABLE TOTBASEICMS DOUBLE PRECISION;
 DECLARE VARIABLE TOTIPI DOUBLE PRECISION;
 DECLARE VARIABLE NUMNF integer;
 
BEGIN

    new.ICMS_SUBSTD = 0;
    new.ICMS_SUBST = 0;

	select first 1 ec.UF, c.TIPOFIRMA from movimento m
	inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = m.CODCLIENTE
	inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE
	where ec.TIPOEND = 0 and m.CODMOVIMENTO = new.CODMOVIMENTO
	into :UF, :PESSOA;
	
	select COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1), ei.CST, COALESCE(ei.IPI, 0) from ESTADO_ICMS ei
        where ei.CFOP = new.CFOP and ei.UF = :UF and ei.PESSOA = 'J'
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, CICMS, ind_reduzicms, :CST_P, :IND_IPI;
	
	if (pessoa = 0) then
	begin
        select COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1), ei.CST, COALESCE(ei.IPI, 0) from ESTADO_ICMS ei
        where ei.CFOP = new.CFOP and ei.UF = :UF and ei.PESSOA = 'F'
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, CICMS, ind_reduzicms, :CST_P, :IND_IPI;
    end
    
    if (IND_IPI > 0) then
	begin
    new.VIPI = (new.VALTOTAL * IND_IPI/100);
    new.PIPI = IND_IPI;
    end
    else
    begin
    new.VIPI = 0;
    new.PIPI = 0;
    end
	new.CST = :cst_p;
	if (ind_reduzicms = 0 )then
        ind_reduzicms = 1;
    
			
    if (CICMS > 0) then 
    begin 
        new.VLR_BASEICMS = new.VALTOTAL * ind_reduzicms;
        new.VALOR_ICMS = new.VLR_BASEICMS * (CICMS/100);  
    end
    else
    begin
        new.VLR_BASEICMS = 0;
        new.VALOR_ICMS = 0;
    end
    
    
    if (CICMS_SUBST > 0) then 
    begin       
        if (CICMS_SUBST > 0) then 
        CICMS_SUBST = 1 + (CICMS_SUBST / 100);
         
        if (CICMS_SUBST_IC > 0) then 
        CICMS_SUBST_IC = CICMS_SUBST_IC / 100;

        if (CICMS_SUBST_IND > 0) then 
        CICMS_SUBST_IND = CICMS_SUBST_IND / 100;
        
        --CORREÇÃO DO VALOR DO MVA QUANDO FOR PARA FORA DO ESTADO
        if (CICMS_SUBST_IC <> CICMS_SUBST_IND)  then
        begin
        cormva = ((1-CICMS_SUBST_IND)/ (1-CICMS_SUBST_IC));
        CICMS_SUBST = CICMS_SUBST * cormva;
        end        

        new.ICMS_SUBSTD = (new.VALTOTAL + new.vipi) * UDF_ROUNDDEC(CICMS_SUBST, 4); 
        VALOR_SUBDesc = (new.VALTOTAL) * CICMS_SUBST_IND; 
        new.ICMS_SUBST = (new.ICMS_SUBSTD  * CICMS_SUBST_IC) - Valor_SubDesc;
  end
  
  select sum(md.ICMS_SUBST), sum(md.ICMS_SUBSTD), sum(md.VLR_BASEICMS), sum(md.VALOR_ICMS), sum(md.VIPI) from MOVIMENTODETALHE md
  where md.CODMOVIMENTO = new.CODMOVIMENTO
  into :TOTST, :TOTBASEST, :TOTBASEICMS, :TOTICMS, :TOTIPI;
  
  select nf.NOTAFISCAL from VENDA v
  inner join NOTAFISCAL nf on nf.CODVENDA = v.CODVENDA
  where v.CODMOVIMENTO = new.CODMOVIMENTO
  into :NUMNF;
  
  UPDATE NOTAFISCAL SET BASE_ICMS_SUBST = :TOTBASEST, VALOR_ICMS_SUBST = :TOTST, BASE_ICMS = :TOTBASEICMS, VALOR_ICMS = :TOTICMS, VALOR_IPI = :TOTIPI,
              VALOR_TOTAL_NOTA = VALOR_TOTAL_NOTA +  :TOTST + :TOTIPI;
  
END