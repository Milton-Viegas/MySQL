create database db_rh;

use db_rh;
create table tb_funcionaries(
id bigint auto_increment,
nome varchar(50) not null,
cargo varchar(50),
carga_horaria int,
data_contrato date,
salario decimal not null,
primary key(id)
);

select * from tb_funcionaries;

insert into tb_funcionaries(nome, cargo, carga_horaria, data_contrato, salario)
values ("Jorge Amado", "CTO", 45, 20021008, 1200.00);
insert into tb_funcionaries(nome, cargo, carga_horaria, data_contrato, salario)
values ("Fernando Pessoa", "COO", 40, 20080511, 9500.00);
insert into tb_funcionaries(nome, cargo, carga_horaria, data_contrato, salario)
values ("Nina Simon", "CEO", 44, 19970110, 17500.00);
insert into tb_funcionaries(nome, cargo, carga_horaria, data_contrato, salario)
values ("Eddie Vender", "Jr Developer", 61, 20200828, 1800.00);
insert into tb_funcionaries(nome, cargo, carga_horaria, data_contrato, salario)
values ("Oscar Niemeyer", "Estagiario", 38, 20210902, 1500.00);

alter table tb_funcionaries modify salario decimal (8,2);
update tb_funcionaries set data_contrato=20031108 where id=1;
update tb_funcionaries set salario=12000 where id=1;
select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;
update tb_funcionaries set salario=22000 where id=3;