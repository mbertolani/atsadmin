set term ^;
/*
create table callcenter (
protocolo varchar(20) not null primary key, 
data_atendimento TIMESTAMP,
nome varchar(100), 
cidade varchar(60), 
CEP varchar(10), 
UF varchar(2), 
telefone varchar(15), 
n_quadro varchar(20), 
n_serie varchar(20), 
modelobike varchar(100), 
tipo_atendimento varchar(30), 
status_atendimento char(1))^


create table callcenter_det (
id TIMESTAMP not null primary key,
id_usuario integer,
atendimento varchar(200)
)^

create generator gen_callcenter^

commit ^
*/

alter table callcenter_det add protocolo varchar(20) not null ^


