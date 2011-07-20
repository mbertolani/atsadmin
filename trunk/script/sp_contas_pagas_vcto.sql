set term ^ ;
CREATE OR ALTER PROCEDURE SP_CONTAS_PAGAS_VCTO (
    DTAINI Date,
    DTAFIM Date,
    COD_FOR Integer,
    COD_CCUSTO Smallint,
    COD_CONTA Integer,
    COD_CAIXA Smallint )
RETURNS (
    DTAEMISSAO Date,
    DTAVENC Date,
    CODFORN Integer,
    FORNECEDOR Varchar(60),
    DESCRICAO Varchar(150),
    VALORTITULO Double precision,
    VALORPAGO Double precision,
    CONTACONTABIL Varchar(200),
    CAIXA Varchar(60),
    CODCONTA Varchar(15) )
AS
DECLARE VARIABLE CCAIXA INTEGER;
DECLARE VARIABLE N_TITULO VARCHAR(15);
DECLARE VARIABLE CCONTABIL INTEGER;
BEGIN



  /* Lista as contas efetuados */


  FOR SELECT pag.DATAVENCIMENTO, pag.CODFORNECEDOR, forn.NOMEFORNECEDOR, 
    pag.HISTORICO, sum(pag.valor_RESTO), sum(pag.VALORRECEBIDO)
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATAVENCIMENTO BETWEEN :DTAINI AND :DTAFIM 
    and ((pag.CODFORNECEDOR = :cod_for) or (:cod_for = 9999999))
    and ((pag.CODALMOXARIFADO = :COD_CCUSTO) or (:COD_CCUSTO = 0))
    and ((pag.CONTACREDITO = :COD_CONTA) or (:COD_CONTA = 9999999))
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
     group by pag.CODFORNECEDOR, forn.NOMEFORNECEDOR, pag.DATAVENCIMENTO,  
     pag.HISTORICO
    order by pag.CODFORNECEDOR, pag.DATAVENCIMENTO
  INTO  :DTAVENC, :CODFORN, :FORNECEDOR, :DESCRICAO, :VALORTITULO, :VALORPAGO
  DO BEGIN
    FORNECEDOR = CAST(:CODFORN AS VARCHAR(5)) || '-' ||  :FORNECEDOR;
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    SELECT NOME FROM PLANO WHERE CODIGO = :CCAIXA
    INTO :CAIXA;

    SUSPEND;
    descricao = null;
    ccontabil = null;
    caixa = null;
  END
END