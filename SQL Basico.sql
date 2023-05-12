
create database db_empresa;

use db_empresa;

CREATE TABLE tb_loja (
id 	bigint auto_increment,
Nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal not null,
idade int not null,
PRIMARy KeY (id)
);
insert  into tb_loja (Nome,cargo,salario,idade) values ("Marcos Luiz","Gerente",3000,27);
insert  into tb_loja (Nome,cargo,salario,idade) values ("Lucas Fraga","Engenheiro",7000,32);
insert  into tb_loja (Nome,cargo,salario,idade) values ("Italo Miguel","Assistente ADM",980,52);
insert  into tb_loja (Nome,cargo,salario,idade) values ("juberto","Chefe",4000,27);
insert  into tb_loja (Nome,cargo,salario,idade) values ("Arthu","analista de sistema",800,37);

select * from tb_loja;


select * from tb_loja  where salario <= 2000;
select * from tb_loja  where salario >= 2000;

update tb_loja set salario = 901 where id =6;


delete from tb_loja where id = 16;
