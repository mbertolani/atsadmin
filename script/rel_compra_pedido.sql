Set term ^ ;
CREATE OR ALTER PROCEDURE rel_compra_pedido(codFornec Integer, pData1 date, pData2 date)
RETURNS (
    CODPRODUTO Varchar(15),
    PRODUTO Varchar(100),
    NF_PEDIDO Varchar(20),
    TIPO Varchar(10),  -- Pedido ou NF
    DATA_PEDIDO Date,
    SITUACAO Varchar(30),
    DATA_ENTREGA Date,
    QTDE Double precision,
    PRECO Double precision,
    FORMA_PAGTO Varchar(60),
    PRAZO Varchar(60),
    VALOR Double precision,
    FORNECEDOR Varchar(60)
    )
AS
Begin 
  -- PEDIDOS RECEBIDOS 
  For select CAST(c.NOTAFISCAL AS VARCHAR(20)), f.NOMEFORNECEDOR, UDF_LEFT(p.PRODUTO, 99), md.QUANTIDADE,
    md.PRECO, c.VALOR, c.DATACOMPRA , p.CODPRO, m.DATA_ENTREGA, c.PRAZO, c.FORMAPAGAMENTO 
    from compra c 
    left outer join MOVIMENTO m on m.CODMOVIMENTO = c.CODMOVIMENTO 
    left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = c.CODMOVIMENTO 
    left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
    left outer join FORNECEDOR f on f.CODFORNECEDOR = c.CODFORNECEDOR
    where c.DATACOMPRA between :pData1 and :pData2
      and m.CODNATUREZA = 4
      and ((c.CODFORNECEDOR = :codFornec) or (:codFornec = 0))
  into :nf_pedido, :Fornecedor, :Produto, :qtde, :preco, :valor, :DATA_PEDIDO, :codProduto, :DATA_ENTREGA, :PRAZO, :FORMA_PAGTO 
  do begin
    tipo     = 'NF';
    situacao = 'Finalizado';
    suspend;
  end
  -- PEDIDOS NÃO RECEBIDOS 
  For select CAST(m.CODPEDIDO AS VARCHAR(20)), f.NOMEFORNECEDOR, UDF_LEFT(p.PRODUTO, 99), md.QUANTIDADE,
    md.PRECO, (md.PRECO * md.QUANTIDADE) VALOR, m.DATAMOVIMENTO , p.CODPRO, m.DATA_ENTREGA, m.PRAZO_PAGAMENTO, m.FORMA_PAG
    from MOVIMENTO m
    left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO 
    left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
    left outer join FORNECEDOR f on f.CODFORNECEDOR = m.CODFORNECEDOR
    where m.DATAMOVIMENTO between :pData1 and :pData2
      and m.CODNATUREZA = 5
      and md.BAIXA is null 
      and ((m.CODFORNECEDOR = :codFornec) or (:codFornec = 0))
  into :nf_pedido, :Fornecedor, :Produto, :qtde, :preco, :valor, :DATA_PEDIDO, :codProduto, :DATA_ENTREGA, :PRAZO, :FORMA_PAGTO 
  do begin
    tipo     = 'Pedido';
    situacao = 'Nao Recebido';
    suspend;
  end
  -- PEDIDOS RECEBIDO NẪO FINALIZADOS
  For select CAST(m.CODPEDIDO AS VARCHAR(20)), f.NOMEFORNECEDOR, UDF_LEFT(p.PRODUTO, 99), md.QUANTIDADE,
    md.PRECO, (md.PRECO * md.QUANTIDADE) VALOR, m.DATAMOVIMENTO , p.CODPRO, m.DATA_ENTREGA, m.PRAZO_PAGAMENTO, m.FORMA_PAG
    from MOVIMENTO m
    left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO 
    left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
    left outer join FORNECEDOR f on f.CODFORNECEDOR = m.CODFORNECEDOR
    where m.DATAMOVIMENTO between :pData1 and :pData2
      and m.CODNATUREZA = 4
      and md.BAIXA is null 
      and ((m.CODFORNECEDOR = :codFornec) or (:codFornec = 0))
  into :nf_pedido, :Fornecedor, :Produto, :qtde, :preco, :valor, :DATA_PEDIDO, :codProduto, :DATA_ENTREGA, :PRAZO, :FORMA_PAGTO 
  do begin
    tipo     = 'Pedido';
    situacao = 'Pend. Entr. NF'; -- Pendente entrada NF.
    suspend;
  end
end