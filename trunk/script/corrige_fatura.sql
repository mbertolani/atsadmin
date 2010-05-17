SET TERM ^ ;

CREATE OR ALTER PROCEDURE Corrige_fatura 
 ( Titulo varchar(30)) 
RETURNS 
 ( debugar varchar(300))
AS 
DECLARE VARIABLE Tit    varchar(30); 
DECLARE VARIABLE Tit2   varchar(30); 
DECLARE VARIABLE Vlr    DOUBLE PRECISION;
DECLARE VARIABLE Vlr2   DOUBLE PRECISION;
DECLARE VARIABLE Vlr3   DOUBLE PRECISION;
DECLARE VARIABLE Vlr4   DOUBLE PRECISION;
DECLARE VARIABLE parc   SMALLINT;
DECLARE VARIABLE via    SMALLINT;
DECLARE VARIABLE codcli INT;
DECLARE VARIABLE codRec INT;
DECLARE VARIABLE dtaVcto date;
BEGIN
    /* Para quem tira a NF Parcial */
    -- Pego somenta a segunda via para comparar com a primeira para ver se o valor e diferente
    For Select First 1 r.TITULO, r.VALOR_RESTO, r.CODCLIENTE, r.PARCELAS
        from RECEBIMENTO r where r.PARCELAS > 1 and ((r.TITULO = :Titulo) or (:Titulo = 'TODOS'))
        and (r.VIA = 2)
        order by r.TITULO, r.via 
        into :Tit, :vlr3, :codCli, :parc
    do begin 
        -- Copiando a 1. Via
        select First 1 r.VALOR_RESTO, r.VALOR_PRIM_VIA - r.VALORTITULO
            from RECEBIMENTO r where r.TITULO = :Tit and r.VIA = 1 and r.CODCLIENTE = :codcli
            into :Vlr2, :vlr4;
    
        if (vlr3 <> vlr2) then 
        begin 
            For Select First 1 r.TITULO, r.VALOR_RESTO, r.VIA, r.DATAVENCIMENTO, r.VALORTITULO 
                from RECEBIMENTO r where r.TITULO = :Tit and r.VIA = 1 and r.CODCLIENTE = :codcli
                order by r.via 
                into :Tit, :vlr, :via, :dtaVcto, :vlr2
            do begin 
                For Select r.DataVencimento from RECEBIMENTO r 
                    where r.TITULO = :Tit and r.VIA > 1 and r.CODCLIENTE = :codcli and r.CONTA is null 
                    into :DtaVcto
                do begin  
                    Select max(r.via) from RECEBIMENTO r where r.TITULO = :Tit and r.CODCLIENTE = :codcli
                        into :via;
                        
                    via = via + 1;    
                    -- Faco uma copia de cada parcela
                    Insert into RECEBIMENTO (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, DATARECEBIMENTO, CAIXA, CONTADEBITO, 
                        CONTACREDITO, STATUS, VIA, FORMARECEBIMENTO, DATABAIXA, HISTORICO, CODVENDA, CODALMOXARIFADO, CODVENDEDOR, 
                        CODUSUARIO, N_DOCUMENTO, DATASISTEMA, VALORRECEBIDO, JUROS, DESCONTO, PERDA, TROCA, FUNRURAL, VALOR_PRIM_VIA, 
                        VALOR_RESTO, VALORTITULO, OUTRO_CREDITO, OUTRO_DEBITO, PARCELAS, DUP_REC_NF, NF, DP, BL, CODORIGEM, 
                        CODIGO_DE_BARRAS, IMAGE_COD_BARRAS, DV, NOMEARQUIVORETORNO, DATACONSOLIDA, SITUACAOCHEQUE, BANCO, AGENCIA, 
                        CONTA, GERARQREM, DATAGERARQREM, SELECIONOU, DESCONTADO, SITUACAO)  
                        select TITULO, EMISSAO, CODCLIENTE, :DtaVcto, DATARECEBIMENTO, CAIXA, CONTADEBITO, 
                        CONTACREDITO, STATUS, :via, FORMARECEBIMENTO, DATABAIXA, HISTORICO, CODVENDA, CODALMOXARIFADO, CODVENDEDOR, 
                        CODUSUARIO, N_DOCUMENTO, DATASISTEMA, VALORRECEBIDO, JUROS, DESCONTO, PERDA, TROCA, FUNRURAL, 0, 
                        :vlr/:PARC, :vlr2, OUTRO_CREDITO, OUTRO_DEBITO, PARCELAS, DUP_REC_NF, NF, DP, BL, CODORIGEM, 
                        CODIGO_DE_BARRAS, IMAGE_COD_BARRAS, DV, NOMEARQUIVORETORNO, DATACONSOLIDA, SITUACAOCHEQUE, BANCO, AGENCIA, 
                        '1', GERARQREM, DATAGERARQREM, SELECIONOU, DESCONTADO, SITUACAO 
                        from RECEBIMENTO WHERE  titulo = :tit and codcliente = :codcli and via = 1;
                end
                update RECEBIMENTO set VALOR_RESTO = :vlr/:parc WHERE  titulo = :tit and codcliente = :codcli and via = 1;
            end 
        end     
        -- Fim Copiando a 1. Via
        
        -- ###########################################################
        -- Copiando a 2. Via
        if (vlr3 <> vlr2) then 
        begin 
            For Select First 1 r.TITULO, r.VALOR_RESTO, r.PARCELAS, r.DATAVENCIMENTO, r.VALORTITULO 
                from RECEBIMENTO r where r.TITULO = :Tit and r.VIA = 2 and r.CODCLIENTE = :codcli
                and r.CONTA is null 
                order by r.via 
                into :Tit, :vlr, :parc, :dtaVcto, :vlr2
            do begin 
                --Insiro a primeira parcela do restante
                For Select r.codRecebimento, r.DataVencimento from RECEBIMENTO r 
                    where r.TITULO = :Tit and r.CODCLIENTE = :codcli and r.CONTA is null and r.VIA = 1
                    order by r.VIA
                    into :codRec, :DtaVcto
                do begin  
                    via = via + 1;    
                    -- Faco uma copia de cada parcela
                    Insert into RECEBIMENTO (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, DATARECEBIMENTO, CAIXA, CONTADEBITO, 
                        CONTACREDITO, STATUS, VIA, FORMARECEBIMENTO, DATABAIXA, HISTORICO, CODVENDA, CODALMOXARIFADO, CODVENDEDOR, 
                        CODUSUARIO, N_DOCUMENTO, DATASISTEMA, VALORRECEBIDO, JUROS, DESCONTO, PERDA, TROCA, FUNRURAL, VALOR_PRIM_VIA, 
                        VALOR_RESTO, VALORTITULO, OUTRO_CREDITO, OUTRO_DEBITO, PARCELAS, DUP_REC_NF, NF, DP, BL, CODORIGEM, 
                        CODIGO_DE_BARRAS, IMAGE_COD_BARRAS, DV, NOMEARQUIVORETORNO, DATACONSOLIDA, SITUACAOCHEQUE, BANCO, AGENCIA, 
                        CONTA, GERARQREM, DATAGERARQREM, SELECIONOU, DESCONTADO, SITUACAO)  
                        select TITULO, EMISSAO, CODCLIENTE, :DtaVcto, DATARECEBIMENTO, CAIXA, CONTADEBITO, 
                        CONTACREDITO, STATUS, :via, FORMARECEBIMENTO, DATABAIXA, HISTORICO, CODVENDA, CODALMOXARIFADO, CODVENDEDOR, 
                        CODUSUARIO, N_DOCUMENTO, DATASISTEMA, VALORRECEBIDO, JUROS, DESCONTO, PERDA, TROCA, FUNRURAL, 0, 
                        :vlr4/:PARC, :vlr4, OUTRO_CREDITO, OUTRO_DEBITO, PARCELAS, DUP_REC_NF, NF, DP, BL, CODORIGEM, 
                        CODIGO_DE_BARRAS, IMAGE_COD_BARRAS, DV, NOMEARQUIVORETORNO, DATACONSOLIDA, SITUACAOCHEQUE, BANCO, AGENCIA, 
                        '1', GERARQREM, DATAGERARQREM, SELECIONOU, DESCONTADO, SITUACAO 
                        from RECEBIMENTO WHERE CodRecebimento = :codRec;
                end
                -- Altero o Valor das outras parcelas 
                For Select r.codRecebimento, r.VALORTITULO from RECEBIMENTO r 
                    where r.TITULO = :Tit and r.CODCLIENTE = :codcli and r.CONTA is null and r.VIA > 1
                    order by r.VIA
                    into :codRec, :vlr
                do begin  
                    update RECEBIMENTO set VALOR_RESTO = :vlr4/:parc, VALORTITULO = :vlr4 WHERE codRecebimento = :codRec;
                end         
            end 
        end     
        -- Fim Copiando a 2. Via        
    end 
END^

SET TERM ; ^
