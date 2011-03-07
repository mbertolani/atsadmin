CREATE OR ALTER TRIGGER FRETE_NF FOR NOTAFISCAL ACTIVE
AFTER INSERT OR UPDATE POSITION 0
AS 
declare variable codm INTEGER;
declare variable coddet INTEGER;
BEGIN
    if ((new.NATUREZA = 15) or (new.NATUREZA = 12) or (new.NATUREZA = 16)) then
    begin
        select v.CODMOVIMENTO from venda v
        where v.CODVENDA = new.CODVENDA
        into :codm;
    end
    else
    begin
        select c.CODMOVIMENTO from COMPRA c
        where c.CODCOMPRA = new.CODVENDA
        into :codm;
    end
    
    select first 1 md.CODDETALHE from MOVIMENTODETALHE md
    where md.CODMOVIMENTO = :codm
    order by md.CODDETALHE
    into :coddet;
    
	if (inserting) then
	 update MOVIMENTODETALHE set FRETE = new.valor_frete where CODDETALHE = :coddet;
	else
     if(old.VALOR_FRETE <> new.VALOR_FRETE) then
        update MOVIMENTODETALHE set FRETE = new.valor_frete where CODDETALHE = :coddet;
END