create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
sabor varchar(50),
tamanho varchar(50),
classe varchar(50),
primary key (id)
);

insert into tb_categoria (sabor, tamanho, classe) values ("Churrasco","Pequena","Economica");
insert into tb_categoria (sabor, tamanho, classe) values ("Bacon","Media","Executiva");
insert into tb_categoria (sabor, tamanho, classe) values ("Queijos","Grande","Premium");
insert into tb_categoria (sabor, tamanho, classe) values ("Marisco","Grande","Premium");
insert into tb_categoria (sabor, tamanho, classe) values ("Surpresa","Media","Economica");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(50),
tipo varchar(50),
preco decimal(5,2),
data_venda date,
hora_venda time,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Catupiry","Salgada",39.90,20211025,184500, 1);
insert into tb_pizza (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Roys","Salgada",49.90,20211024,203100, 2);
insert into tb_pizza (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Quatro Queijos","Salgada",59.90,20211025,191500, 3);
insert into tb_pizza (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Di Mare","Salgada",59.90,20211026,204500, 4);
insert into tb_pizza (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Mama Mia!","Doce",39.90,20211025,010000, 5);
insert into tb_pizza (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Romeu e Julieta","Doce",49.90,20211025,192800, 3);
insert into tb_pizza (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Perchè no!","Doce",39.90,20211023,232000, 5);
insert into tb_pizza (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Banana com queijo","Doce",39.90,20211024,212000, 3);

select * from tb_pizza;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome Like "%C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where tipo="Doce";
