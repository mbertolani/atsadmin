set term ^ ;
CREATE OR ALTER TRIGGER FRETE_NF FOR NOTAFISCAL ACTIVE
AFTER INSERT OR UPDATE POSITION 0
AS 
declare variable codm INTEGER;
declare variable coddet INTEGER;
declare variable det1 INTEGER;
declare variable det INTEGER;
declare variable FRETE double precision;
declare variable DESCONTO double precision;
declare variable FRETE_UNIT double precision;
declare variable DESCONTO_UNIT double precision;
declare variable FRETE_TOTAL double precision;
declare variable DESCONTO_TOTAL double precision;
declare variable valtot double precision;
BEGIN
--alter table MOVIMENTODETALHE add VALOR_DESCONTO double precision
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
   
   FRETE = new.VALOR_FRETE;
   DESCONTO = new.VALOR_DESCONTO;
   if (frete is null) then
    frete = 0;
   if (desconto is null) then
    desconto = 0; 
   
   Frete_UNIT = new.VALOR_FRETE / new.VALOR_PRODUTO;
   DESCONTO_UNIT = new.VALOR_DESCONTO / new.VALOR_PRODUTO;
   
   Frete_TOTAL = new.VALOR_FRETE;
   DESCONTO_TOTAL = new.VALOR_DESCONTO;
   
   select count(md.CODDETALHE) from MOVIMENTODETALHE md
   where md.CODMOVIMENTO = :codm
   into :det;
   det1 = 1;
   for select md.CODDETALHE, md.VALTOTAL from MOVIMENTODETALHE md
   where md.CODMOVIMENTO = :codm
   into :coddet, :valtot
   do begin
	if (inserting) then
	begin
	 update MOVIMENTODETALHE set FRETE = UDF_ROUNDDEC((:Frete_UNIT * :valtot), 2), valor_desconto = UDF_ROUNDDEC((:DESCONTO_UNIT * :valtot), 2) where CODDETALHE = :coddet;
	 if ( det = det1) then
	   update MOVIMENTODETALHE set FRETE = :Frete_TOTAL, valor_desconto = :DESCONTO_TOTAL where CODDETALHE = :coddet;
    end
	else
     if(old.VALOR_FRETE <> new.VALOR_FRETE) then
     begin
        update MOVIMENTODETALHE set FRETE = UDF_ROUNDDEC((:Frete_UNIT * :valtot), 2), valor_desconto = UDF_ROUNDDEC((:DESCONTO_UNIT * :valtot), 2) where CODDETALHE = :coddet;
        if ( det = det1) then
	      update MOVIMENTODETALHE set FRETE = :Frete_TOTAL, valor_desconto = :DESCONTO_TOTAL where CODDETALHE = :coddet;
    end
    det1 = det1 +1;
    Frete_TOTAL   = Frete_TOTAL - UDF_ROUNDDEC((:Frete_UNIT * :valtot), 2);
    DESCONTO_TOTAL = DESCONTO_TOTAL - UDF_ROUNDDEC((:DESCONTO_UNIT * :valtot), 2);
    end
END
