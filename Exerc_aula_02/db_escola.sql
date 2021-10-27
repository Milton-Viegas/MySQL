create database db_escola;

use db_escola;
create table tb_estudantes(
id bigint auto_increment,
nome varchar(150) not null,
matricula bigint,
ano int(2),
turma varchar(10),
nota_exame decimal not null,
primary key(id)
);

select * from tb_estudantes;

insert into tb_estudantes(nome, matricula, ano, turma, nota_exame)
values ("Aristoteles", 35435, 6, "B", 7.8);
insert into tb_estudantes(nome, matricula, ano, turma, nota_exame)
values ("homero", 34976, 6, "A", 9.0);
insert into tb_estudantes(nome, matricula, ano, turma, nota_exame)
values ("Sêneca", 36829, 8, "D", 9.9);
insert into tb_estudantes(nome, matricula, ano, turma, nota_exame)
values ("DeLaVega", 34989, 9, "A", 8.5);
insert into tb_estudantes(nome, matricula, ano, turma, nota_exame)
values ("Agostinho", 36788, 9, "B", 7.9);
insert into tb_estudantes(nome, matricula, ano, turma, nota_exame)
values ("Julio Verne", 39008, 5, "C", 9.8);
insert into tb_estudantes(nome, matricula, ano, turma, nota_exame)
values ("Pepetela", 31286, 7, "A", 8.7);
insert into tb_estudantes(nome, matricula, ano, turma, nota_exame)
values ("C.S. Lewis", 34899, 9, "B", 9.3);

alter table tb_estudantes modify nota_exame decimal (4,2);

select * from tb_estudantes where nota_exame > 7;
select * from tb_estudantes where nota_exame < 7;
update tb_estudantes set nome="Zorro DeLaVega", nota_exame=6.9 where id=4;