SET TERM ^ ;

CREATE PROCEDURE MATERIAPRIMA_CUSTO
RETURNS 
 ( codProd integer, 
    codMat integer, 
      qtde double precision, 
 custoUnit double precision,
  custoTot double precision,
   Produto varchar(300),
  matPrima varchar(300))
AS 
BEGIN
  /* Relatorio com os materiais principais e 
     materias primas com o respectivo preco de custo */
  
  -- Pego todos materiais que tem materia prima cadastrado 
  for select distinct p.codproduto, p.PRODUTO 
        from produtos p, MATERIA_PRIMA m 
       where p.CODPRODUTO = m.CODPRODUTO
         and ((p.USA is null) or (p.USA = 'S')) 
        into :codProd, :Produto
  do begin         
    -- busco a materia prima   
    for SELECT r.CODPRODMP, r.QTDEUSADA, p.PRODUTO
          FROM MATERIA_PRIMA r, PRODUTOS p
         WHERE r.CODPRODUTO = p.CODPRODUTO 
           AND r.CODPRODUTO = :codProd 
          INTO :codMat, :qtde, :matPrima
    do begin
      -- Calcular o Custo de Cada Item 
      select first 1 m.PRECOCUSTO 
        from ESTOQUEMES m
       where m.CODPRODUTO = :codMat 
       order by m.MESANO DESC  
        into :custoUnit;
      custoTot = custoUnit * qtde;    
    end 
  end           
END^

SET TERM ; ^
