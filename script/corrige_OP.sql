--DELETAR PK da tabela OF_OF antes --ALTER TABLE OF_OF DROP CONSTRAINT INTEG_382; -

ALTER TABLE OF_OF ALTER OFID_IND TYPE Varchar(20);

alter table OF_OF add constraint PK_OF_OF primary key (OFID, OFID_IND);