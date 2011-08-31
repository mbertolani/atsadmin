set term  ^ ;
CREATE OR ALTER TRIGGER INVENT_ESTOQUE FOR INVENTARIO
ACTIVE BEFORE INSERT POSITION 0
AS 
declare variable qtde double precision;
BEGIN 
  if (inserting) then 
  begin
    qtde = 0; 
	-- Preenche o campo ESTOQUE_ATUAL
    -- Ve o estoque atual
    IF (new.CODCCUSTO = 0) then 
    begin 
      SELECT First 1 m.SALDOESTOQUE FROM ESTOQUEMES M 
       WHERE m.MESANO = UDF_MONTHSTART(UDF_YEAR(NEW.DATAIVENTARIO), UDF_MONTH(NEW.DATAIVENTARIO)) 
         AND m.CODPRODUTO = NEW.CODPRODUTO
         into :qtde;   
    end      
    IF (new.CODCCUSTO > 0) then 
    begin 
      SELECT First 1 m.SALDOESTOQUE FROM ESTOQUEMES M 
       WHERE m.MESANO = UDF_MONTHSTART(UDF_YEAR(NEW.DATAIVENTARIO), UDF_MONTH(NEW.DATAIVENTARIO)) 
         AND m.CODPRODUTO = NEW.CODPRODUTO
         AND m.CENTROCUSTO = NEW.CODCCUSTO
         into :qtde;   
    end      

    if (qtde is null) then 
      qtde = 0;
    /*select SALDOFIM from SPESTOQUE (NEW.DATAIVENTARIO, NEW.DATAIVENTARIO, NEW.CODPRODUTO, NEW.CODPRODUTO,
       'TODOS OS GRUPOS CADASTRADOS NO SISTEMA', 
       'TODOS OS SUBGRUPOS CADASTRADOS NO SISTEMA')
    into :qtde;   */
    NEW.ESTOQUE_ATUAL = :qtde;    
  end 
END 
