create table forma_entrada (
    cod_venda  integer not null, 
    id_entrada integer not null primary key,
    forma_pgto char(1),
    caixa Smallint,
    n_doc varchar(60)
    )
    
    