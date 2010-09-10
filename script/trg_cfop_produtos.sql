SET TERM ^ ;
ALTER TRIGGER CFOP_PRODUTOS ACTIVE
AFTER INSERT OR UPDATE POSITION 0
AS 
declare variable codm INTEGER;
BEGIN
    select v.CODMOVIMENTO from venda v
    where v.CODVENDA = new.CODVENDA
    into :codm;
    
	if (inserting) then
	 update MOVIMENTODETALHE set CFOP = new.CFOP where CODMOVIMENTO = :codm;
	else
     if(old.CFOP <> new.CFOP) then
        update MOVIMENTODETALHE set CFOP = new.CFOP
        where CODMOVIMENTO = :codm;
END^
SET TERM ; ^