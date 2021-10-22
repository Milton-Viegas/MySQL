create database db_ecommerce;

use db_ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar(150) not null,
quantidade int,
tamanho varchar(4),
categoria varchar(50),
preco decimal not null,
primary key(id)
);

select * from tb_produtos;

insert into tb_produtos(nome, quantidade, tamanho, categoria, preco)
values ("Pendrive", 30, 64, "Informatica", 55);
insert into tb_produtos(nome, quantidade, tamanho, categoria, preco)
values ("Notebook", 10, 8, "Informatica", 1999);
insert into tb_produtos(nome, quantidade, tamanho, categoria, preco)
values ("Limpa monitor", 17, 500, "limpeza", 15);
insert into tb_produtos(nome, quantidade, tamanho, categoria, preco)
values ("CD pack10", 300, 700, "Informatica", 11);
insert into tb_produtos(nome, quantidade, tamanho, categoria, preco)
values ("Mouse", 50, 2, "Informatica", 49);
insert into tb_produtos(nome, quantidade, tamanho, categoria, preco)
values ("Teclado", 10, 1, "Informatica", 99);
insert into tb_produtos(nome, quantidade, tamanho, categoria, preco)
values ("Caixa de som", 38, 1, "Som", 89);
insert into tb_produtos(nome, quantidade, tamanho, categoria, preco)
values ("Motorola G8", 19, 64, "Celular", 1859);

update tb_produtos set nome="Motorola G8", quantidade=19, tamanho=64, categoria="Celular", preco=1859 where id=2;
delete from tb_produtos where id=9;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;
update tb_produtos set nome="CD Pack x10" where id=5;
