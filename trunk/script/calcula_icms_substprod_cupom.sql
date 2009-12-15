set term ^  ;
create or ALTER PROCEDURE CALCULA_ICMS_SUBSTPROD_CUPOM (
    CFOP Varchar(30),
    UF Char(2),
    NUMERO_NF Integer,
    CODMOV Integer,
    SERIE Char(20) )
AS
  declare variable codRec integer;
  declare variable codNF integer;
  declare variable codVen integer;
  declare variable codMovNovo integer;
  declare variable codCCusto integer;
  declare variable codUser integer;
  declare variable codProduto integer;
  declare variable qtde double PRECISION;
  declare variable desconto double PRECISION;
  declare variable preco DOUBLE PRECISION;
  declare variable total DOUBLE PRECISION;
  declare variable icms DOUBLE PRECISION;
  declare variable tBaseicms DOUBLE PRECISION;
  declare variable baseIcms DOUBLE PRECISION;
  declare variable valorIcms DOUBLE PRECISION;
  declare variable totalIcms DOUBLE PRECISION;
  declare variable vFrete DOUBLE PRECISION;
  declare variable vSeguro DOUBLE PRECISION;
  declare variable vIcms DOUBLE PRECISION;
  declare variable vOutros DOUBLE PRECISION;
  declare variable vIpi DOUBLE PRECISION;
  declare variable vFreteT DOUBLE PRECISION;
  declare variable vSeguroT DOUBLE PRECISION;
  declare variable vIcmsT DOUBLE PRECISION;
  declare variable vIcmsSubst DOUBLE PRECISION;
  declare variable vOutrosT DOUBLE PRECISION;
  declare variable vIpiT DOUBLE PRECISION;
  declare variable pesoUn DOUBLE PRECISION;
  declare variable pesoTotal DOUBLE PRECISION;
  declare variable un char(2);
  declare variable cst char(5);
  declare variable cstProd char(5);
  declare variable descP varchar(300);
  declare variable cfop_outros varchar(30);
  declare variable np SMALLINT;
  declare variable CALC_FISC Varchar (30);
  declare variable CICMS_SUBST double precision;
  declare variable CICMS_SUBST_IC double precision;
  declare variable CICMS_SUBST_IND double precision;
  declare variable CICMS double precision;
  declare variable CICMS_BASE double precision;
  declare variable VLR_PROD double precision;
  declare variable VLR_ICMS double precision;
  declare variable ST double precision;
  declare variable BASE_ST double precision;
  declare variable total2 double precision;
  declare variable total3 double precision;
  declare variable TOTAL_VLR_ICMS double precision;
  declare variable TOTAL_ST double precision;
  declare variable TOTAL_BASE_ST double precision;
  declare variable TOTAL_ICMS double precision;
  declare variable TOTAL_ICMS_BASE double precision;
  declare variable USA_SUBPROD char(1);
begin 
    total2 = 0;
    total3 = 0;
    ST = 0 ;
    BASE_ST = 0;
    TOTAL_BASE_ST = 0;
    TOTAL_ST = 0;
    total = 0;
    TOTAL_VLR_ICMS = 0;
    totalIcms = 0;
    TOTAL_ICMS_BASE = 0; 
    TOTAL_ICMS = 0;
    CICMS_SUBST = 0;
    USA_SUBPROD = 'N';
    
    -- localiza o mov. detalhe
    for select  md.QTDE_ALT, md.CODPRODUTO, md.QUANTIDADE, md.PRECO, md.ICMS, prod.BASE_ICMS, prod.CST
    from MOVIMENTODETALHE md
      inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO
      where md.CODMOVIMENTO = :codMov
    into :desconto, :codProduto, :qtde, :preco, :icms, :baseIcms, :cstProd
    do begin
      select cfp.ICMS_SUBST, cfp.ICMS_SUBST_IC, cfp.ICMS_SUBST_IND, cfp.ICMS, cfp.ICMS_BASE from CLASSIFICACAOFISCALPRODUTO cfp 
      where cfp.CFOP = :CFOP and cfp.COD_PROD = :codProduto and cfp.UF = :UF
      into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, CICMS, CICMS_BASE;

      if (desconto is null) then
        desconto = 0;
          
      VLR_PROD = ( :qtde * (:preco * (1-(:desconto/100))));

      if (CICMS_SUBST > 0) then
      begin
        USA_SUBPROD = 'S';
        if (CICMS_SUBST is null) then
          CICMS_SUBST = 0;
        if (CICMS_SUBST_IC is null) then
          CICMS_SUBST_IC = 0;
        if (CICMS_SUBST_IND is null) then
          CICMS_SUBST_IND = 0;
        if (icms is null) then 
          icms = 0;
        if (baseIcms is null) then 
          baseIcms = 0;
        if (CICMS is null) then
          CICMS = 0;
        else
          CICMS = (CICMS/100);
        if (CICMS_BASE is null) then
          CICMS_BASE = 1;
        else
          CICMS_BASE = (CICMS_BASE/100);
        total = 0;          
            
        BASE_ST = (VLR_PROD *(1+(CICMS_SUBST/100)));
        VLR_ICMS =  (VLR_PROD*(CICMS_SUBST_IND/100));
        ST = (BASE_ST * (CICMS_SUBST_IC/100))-(VLR_ICMS);
        CICMS_BASE = (VLR_PROD * CICMS_BASE);
        CICMS = (CICMS * CICMS_BASE);
            
    
    --md.ICMS = md.ICMS*(1+(CICMS_SUBST/100))*(CICMS_SUBST_IC/100))-(VLR_PROD*(CICMS_SUBST_IND));

        if (icms > 0) then 
        cst = '000';
        if (icms is null) then 
          icms = vIcmsT;
        if (icms is null) then 
        begin  
          cst = '041';
        end        
        if ((baseIcms = 100) and (icms > 0)) then 
        begin  
         cst = '000';
        end        
        if (icms = 0) then 
        begin  
          cst = '040';
        end        
        if ((baseICMS < 100) and (baseICMS > 0) and (icms > 0)) then 
        begin
          cst = '020'; 
        end 
        if ((cstProd is not null) or (cstProd <> '')) then 
          cst = cstProd;
        
        update MOVIMENTODETALHE set valor_icms = :valoricms, cst = :cst, icms_subst = :ST, icms_substd = :BASE_ST
        where codmovimento = :codmov and codproduto = :codProduto;
        
        if(desconto > 0) then  
          total = total + (:qtde * (:preco*(1-(:desconto/100))));--((:PRECO/:np) * :desconto)); --((:PRECO/:np) * :desconto)
        else
          total = total + (:qtde * :preco);--((:PRECO/:np) * :desconto)); --((:PRECO/:np) * :desconto)
        
        --totalIcms = totalIcms + :valoricms;
        TOTAL_BASE_ST = TOTAL_BASE_ST + BASE_ST;
        TOTAL_ST = TOTAL_ST + ST;
        TOTAL_ICMS_BASE = TOTAL_ICMS_BASE + CICMS_BASE; 
        TOTAL_ICMS = TOTAL_ICMS + CICMS;
  
      end
      CICMS_SUBST = 0;
      total3 = total3 + total;    
      if(total = 0) then
        total2 = total2 + VLR_PROD;      
    end

    total = total2 + total3 + TOTAL_ST;
    vIcmsT = 0; 
    total = total + vSeguroT + vOutrosT + vIpiT + vIcmsT + vFreteT;

  /*Buscando a numeracao da duplicata */
  preco = total; 
  
end