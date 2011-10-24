SET TERM ^ ;

CREATE OR ALTER PROCEDURE pedido_x_venda 
 ( dataIni date, dataFim date ) 
RETURNS 
 ( mesAno char(7), mesDesc char(3), valorVenda double precision, valorPedido double precision)
AS 
DECLARE VARIABLE  mes smallint;
DECLARE VARIABLE  ano smallint; 
BEGIN
  /* Mostra o Total de Pedidos no Mes e o Total Faturado no Mes */
  For SELECT UDF_MONTH(DATAVENDA), UDF_YEAR(DATAVENDA) , UDF_SMONTHNAME(DATAVENDA) MES, SUM(VALOR) VENDA
    FROM VENDA 
   WHERE DATAVENDA BETWEEN :dataIni AND :dataFim 
   GROUP BY UDF_MONTH(DATAVENDA), UDF_YEAR(DATAVENDA), UDF_SMONTHNAME(DATAVENDA)
    INTO :mes, :ano, :mesDesc, :valorVenda
  do begin
    mesAno = UDF_PADL(mes,'0',2) || '-' || cast(ano as char(4));
    -- Total de Pedido no Período
    Select sum(md.VLR_BASE * md.QUANTIDADE) from Movimento m , MovimentoDetalhe md 
     where md.CODMOVIMENTO = m.CODMOVIMENTO 
       and udf_month(m.DATAMOVIMENTO) = :mes and UDF_YEAR(m.DATAMOVIMENTO) = :ano
    into :valorPedido;      
    Suspend; 
  end   
END^

SET TERM ; ^
