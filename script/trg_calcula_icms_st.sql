set term  ^ ; 
CREATE OR ALTER TRIGGER CALCULA_ICMS_ST FOR MOVIMENTODETALHE ACTIVE
BEFORE UPDATE POSITION 0
AS
 DECLARE VARIABLE UF char(2);
 Declare variable CICMS_SUBST double precision;
 Declare variable CICMS_SUBST_IC double precision;
 Declare variable CICMS_SUBST_IND double precision;
 Declare variable CICMS double precision;
 Declare variable IND_IPI double precision;
 Declare variable CST_P char (5);
 Declare variable CSOSN char (3);
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
 DECLARE VARIABLE NAT integer; 
 DECLARE VARIABLE CODCLI integer; 
 DECLARE VARIABLE VFRETE DOUBLE PRECISION;
 
BEGIN

    new.ICMS_SUBSTD = 0;
    new.ICMS_SUBST = 0;

	select first 1 ec.UF, c.TIPOFIRMA, m.CODCLIENTE from movimento m
	inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = m.CODCLIENTE
	inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE
	where ec.TIPOEND = 0 and m.CODMOVIMENTO = new.CODMOVIMENTO
	into :UF, :PESSOA, :CODCLI;
	
	if (:CODCLI is null) then
	begin
    select first 1 ef.UF, f.TIPOFIRMA from movimento m
	inner join ENDERECOFORNECEDOR ef on ef.CODFORNECEDOR = m.CODFORNECEDOR
	inner join FORNECEDOR f on f.CODFORNECEDOR = m.CODFORNECEDOR
	where ef.TIPOEND = 0 and m.CODMOVIMENTO = new.CODMOVIMENTO
	into :UF, :PESSOA;
	end
	
	select first 1 COALESCE(cfp.ICMS_SUBST, 0), COALESCE(cfp.ICMS_SUBST_IC, 0), COALESCE(cfp.ICMS_SUBST_IC, 0), 
	COALESCE(cfp.ICMS, 0), COALESCE(cfp.ICMS_BASE, 1), cfp.CST, COALESCE(cfp.IPI, 0), cfp.CSOSN 
	from CLASSIFICACAOFISCALPRODUTO cfp
        where cfp.CFOP = new.CFOP and cfp.UF = :UF and cfp.cod_prod = new.CODPRODUTO
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, CICMS, ind_reduzicms, :CST_P, :IND_IPI, :CSOSN;
    
    new.CSOSN = CSOSN;
	if ( (CICMS> 0 ) or (CICMS_SUBST >0) )then
	begin
	  new.icms = :cicms;
    if (IND_IPI > 0) then
    begin
        new.VIPI = ((new.VLR_BASE*new.QUANTIDADE) * IND_IPI/100);
        new.PIPI = IND_IPI;
    end
    else
    begin
        new.VIPI = 0;
        new.PIPI = 0;
    end
        
	if (ind_reduzicms <= 0) then
        ind_reduzicms = 1;
	if (ind_reduzicms > 1 )then
        ind_reduzicms = ind_reduzicms/100;
		
    /**    ***** TEM ST **************/
           if (CICMS_SUBST > 0) then    
          new.ICMS_SUBSTD = ((new.VLR_BASE*new.QUANTIDADE) *(1+(CICMS_SUBST/100)));
          new.VLR_BASEICMS = ((new.VLR_BASE*new.QUANTIDADE) * ind_reduzicms);
          new.VALOR_ICMS = (new.VLR_BASEICMS) * (CICMS / 100);
		  if ( new.ICMS_SUBSTD > 0) then
			new.ICMS_SUBST = (new.ICMS_SUBSTD * (CICMS_SUBST_IC/100))-(new.VALOR_ICMS);
		  else
		    new.ICMS_SUBST = 0;
       new.cst = :cst_p;
	end

	else
	begin	
        select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1), ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN from ESTADO_ICMS ei
        where ei.CFOP = new.CFOP and ei.UF = :UF and ei.PESSOA = 'J'
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, CICMS, ind_reduzicms, :CST_P, :IND_IPI, :CSOSN;
    
        if (pessoa = 0) then
        begin
            select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1), ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN from ESTADO_ICMS ei
            where ei.CFOP = new.CFOP and ei.UF = :UF and ei.PESSOA = 'F'
            into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, CICMS, ind_reduzicms, :CST_P, :IND_IPI, :CSOSN;
        end
        new.CSOSN = CSOSN;
        if (IND_IPI > 0) then
        begin
            new.VIPI = ((new.VLR_BASE*new.QUANTIDADE) * IND_IPI/100);
            new.PIPI = IND_IPI;
        end
        else
        begin
            new.VIPI = 0;
            new.PIPI = 0;
        end
        new.CST = :cst_p;
        if (ind_reduzicms <= 0 )then
            ind_reduzicms = 1;
		if (ind_reduzicms > 1 )then
            ind_reduzicms = ind_reduzicms/100;
    
			
        if (CICMS > 0) then 
        begin
		  new.icms = :cicms; 
          new.VLR_BASEICMS = (new.VLR_BASE*new.QUANTIDADE) * ind_reduzicms;
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

            new.ICMS_SUBSTD = ((new.VLR_BASE*new.QUANTIDADE) + new.vipi) * UDF_ROUNDDEC(CICMS_SUBST, 4); 
            VALOR_SUBDesc = (new.VLR_BASE*new.QUANTIDADE) * CICMS_SUBST_IND; 
            new.ICMS_SUBST = (new.ICMS_SUBSTD  * CICMS_SUBST_IC) - Valor_SubDesc;
        end
    end
    
    if( new.FRETE > 0) then
    begin
     if (CICMS >0) then
     begin
       new.BCFRETE = new.frete * ind_reduzicms;
       new.ICMSFRETE = new.BCFRETE * (CICMS/100);  
     end
     if (CICMS_SUBST > 0) then 
     begin
      new.BCSTFRETE = new.FRETE * UDF_ROUNDDEC(CICMS_SUBST, 4);
      VALOR_SUBDesc = new.FRETE * CICMS_SUBST_IND;
      new.STFRETE = (new.BCFRETE * CICMS_SUBST_IC) - Valor_SubDesc;
     end
    end
    if( new.FRETE = 0) then
    begin
      new.BCFRETE = 0;
      new.STFRETE = 0;
    new.ICMSFRETE = 0;
    new.BCSTFRETE = 0;
    end 
END