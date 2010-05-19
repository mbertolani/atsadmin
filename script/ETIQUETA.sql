set term ^;

CREATE OR ALTER PROCEDURE  ETIQUETA
RETURNS ( CODPRODUTO                       INTEGER
        , ORIGEM                           INTEGER
        , PRODUTO                          VARCHAR( 300 ) )
AS
declare variable i integer;
BEGIN
   for
    select 
        produtos.codproduto,
        produtos.origem,
        produtos.produto
    from produtos
    WHERE  produtos.origem is not null
    INTO :CODPRODUTO,
         :ORIGEM,
         :PRODUTO
  DO
  BEGIN
    i = 1;
    while (i <= origem) do
    begin
      SUSPEND;
    i = i+1;
    end

  END

END
