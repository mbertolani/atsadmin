SET TERM ^ ;

CREATE OR ALTER PROCEDURE pedido_x_venda 
 ( dataIni date, dataFim date, compraVenda char(1) ) 
RETURNS 
 ( mesAno char(7), mesAnoV integer, valorVenda double precision, valorPedido double precision)
AS 
DECLARE VARIABLE  mes smallint;
DECLARE VARIABLE  ano smallint; 
BEGIN
  -- Mostra o Total de Pedidos no Mes e o Total Faturado no Mes 
  if (compraVenda = 'V') then 
  begin 
  For SELECT UDF_MONTH(DATAVENDA), UDF_YEAR(DATAVENDA) , UDF_MONTH(DATAVENDA) || UDF_YEAR(DATAVENDA) MESANO, SUM(VALOR) VENDA
    FROM VENDA 
   WHERE DATAVENDA BETWEEN :dataIni AND :dataFim 
   GROUP BY UDF_MONTH(DATAVENDA), UDF_YEAR(DATAVENDA), UDF_MONTH(DATAVENDA)
    INTO :mes, :ano, :mesAnoV, :valorVenda
  do begin
    mesAno = UDF_PADL(mes,'0',2) || '-' || cast(ano as char(4));
    -- Total de Pedido no Período
    Select sum(md.VLR_BASE * md.QUANTIDADE) from Movimento m , MovimentoDetalhe md 
     where md.CODMOVIMENTO = m.CODMOVIMENTO 
       and m.CODNATUREZA   = 3
       and udf_month(m.DATAMOVIMENTO) = :mes and UDF_YEAR(m.DATAMOVIMENTO) = :ano
    into :valorPedido;      
    Suspend; 
  end  
  mes = null;
  ano = null;
  end

  -- Mostra o Total de Pedidos no Mes e o Total Recebido no Mes 
  if (compraVenda = 'C') then 
  begin 
  For SELECT UDF_MONTH(DATACOMPRA), UDF_YEAR(DATACOMPRA) , UDF_MONTH(DATACOMPRA) || UDF_YEAR(DATACOMPRA) MESANO, SUM(VALOR) COMPRA
    FROM COMPRA 
   WHERE DATACOMPRA BETWEEN :dataIni AND :dataFim 
   GROUP BY UDF_MONTH(DATACOMPRA), UDF_YEAR(DATACOMPRA), UDF_MONTH(DATACOMPRA)
    INTO :mes, :ano, :mesAnoV, :valorVenda
  do begin
    mesAno = UDF_PADL(mes,'0',2) || '-' || cast(ano as char(4));
    -- Total de Pedido no Período
    Select sum(md.VLR_BASE * md.QUANTIDADE) from Movimento m , MovimentoDetalhe md 
     where md.CODMOVIMENTO = m.CODMOVIMENTO 
       and m.CODNATUREZA   = 4
       and udf_month(m.DATAMOVIMENTO) = :mes and UDF_YEAR(m.DATAMOVIMENTO) = :ano
    into :valorPedido;      
    Suspend; 
  end  
  end
   
END^

SET TERM ; ^
