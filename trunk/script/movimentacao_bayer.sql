SET TERM ^ ;
CREATE OR ALTER PROCEDURE MOVIMENTO_BAYER (
    DATAINI date,
    DATAFIM date)
RETURNS (
    NATUREZA char(1),
    FILIAL char(1),
    CFOP varchar(4),
    QUANTIDADE double precision,
    CODPRO varchar(20),
    DATA varchar(8),
    LOTE char(1),
    NUMNF varchar(10),
    CIDADE varchar(60),
    UF varchar(2),
    NOME varchar(60),
    PRECOUNITARIO double precision,
    CPF_CNPJ varchar(18),
    MOV_CANCELADA char(1)    )
AS
DECLARE VARIABLE nat integer; 
DECLARE VARIABLE codmov integer;
DECLARE VARIABLE movnf integer;
DECLARE VARIABLE natnf integer;
DECLARE VARIABLE codnf integer;
DECLARE VARIABLE protocolo varchar(20);
DECLARE VARIABLE datamov date;

BEGIN
    lote = '-';
    FILIAL = '1';
    for select m.CODMOVIMENTO, m.CODNATUREZA, md.CFOP, md.QUANTIDADE, p.CODPRO, md.VLR_BASE from MOVIMENTO m
    inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO
    inner join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
    where p.MARCA = 'BAYER' and (m.CODNATUREZA = 3 or m.CODNATUREZA = 4) and not md.BAIXA is null
    into :codmov, :NATUREZA, :CFOP, :QUANTIDADE, :CODPRO, :PRECOUNITARIO
    do begin
        protocolo = '';
        if(nat = 3) then
        begin
            natureza = 'S';
            select v.DATAVENDA, v.NOTAFISCAL, ec.CIDADE, ec.UF, c.RAZAOSOCIAL, c.CNPJ 
            from VENDA v
            inner join CLIENTES c on c.CODCLIENTE = v.CODCLIENTE
            inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = c.CODCLIENTE
            where v.CODMOVIMENTO = :codmov and ec.TIPOEND = 0
            into :datamov, :NUMNF, :CIDADE, :UF, :NOME, :CPF_CNPJ;
        end
        else if(nat = 4) then
        begin
            natureza = 'E';
            MOV_CANCELADA = 'N';  
            protocolo = '';
            select c.DATACOMPRA, c.NOTAFISCAL, ef.CIDADE, ef.UF, f.RAZAOSOCIAL, f.CNPJ 
            from COMPRA c
            inner join FORNECEDOR f on c.CODFORNECEDOR = f.CODFORNECEDOR
            inner join ENDERECOFORNECEDOR ef on ef.CODFORNECEDOR = c.CODFORNECEDOR
            where c.CODMOVIMENTO = :codmov and ef.TIPOEND = 0
            into :datamov, :NUMNF, :CIDADE, :UF, :NOME, :CPF_CNPJ;
        end
        
        select m.CODMOVIMENTO, m.CODNATUREZA 
        from MOVIMENTO m 
        where m.CONTROLE = :codmov
        into :movnf, natnf;
        
        if (natnf = 15) then
        begin
            select nf.PROTOCOLOCANC from NOTAFISCAL nf
            inner join VENDA v on v.CODVENDA = nf.CODVENDA
            where v.CODMOVIMENTO = :movnf
            into :protocolo;
            if(protocolo is null) then
                MOV_CANCELADA = 'N';
            else
                MOV_CANCELADA = 'S';
        end
        
        data = extract(year from datamov) + extract(month from datamov) + extract(day from datamov);
        
        if ((not protocolo = '') or (natureza = 'E')) then
            suspend;
    
    end

END
