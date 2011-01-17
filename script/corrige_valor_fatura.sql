CREATE OR ALTER TRIGGER CORRIGE_VALOR_FATURA FOR RECEBIMENTO ACTIVE
BEFORE UPDATE POSITION 0
AS 
BEGIN 
    if ((old.VALOR_RESTO_SST is null) and (new.STATUS = '5-') )then
        new.VALOR_RESTO_SST = old.VALOR_RESTO;
    if ((old.VALOR_RESTO_SST is null) and (new.STATUS = '7-') )then
        new.VALOR_RESTO_SST = old.VALORRECEBIDO;
    if (new.VALST >= 0) then
        new.VALOR_RESTO = (new.VALST + new.VALOR_RESTO_SST);
END