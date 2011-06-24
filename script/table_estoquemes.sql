CREATE TABLE ESTOQUEMES
(
  CODPRODUTO INTEGER NOT NULL,
  LOTE VARCHAR(60) not null,
  MESANO INTEGER not null,
  QTDEENTRADA Double precision,
  QTDECOMPRA Double precision,
  QTDEDEVOLUCAO Double precision,
  QTDESAIDA Double precision,
  QTDEVENDA Double precision,
  QTDEPERDA Double precision,
  PRECOCUSTO Double precision,
  PRECOVENDA Double precision,
  CENTROCUSTO Integer not null,
  PRIMARY KEY (CODPRODUTO, LOTE, MESANO, CENTROCUSTO)
);

