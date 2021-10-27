create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
pack varchar(150) not null,
indicacao varchar(150) not null,
acao varchar(150) not null,
primary key(id)
);

insert into tb_categoria (pack, indicacao, acao) values ("Xarope","Pediatrico","Lenta");
insert into tb_categoria (pack, indicacao, acao) values ("Gota","Adulto","Moderada");
insert into tb_categoria (pack, indicacao, acao) values ("Comprimido","Pediatrico","Rapida");
insert into tb_categoria (pack, indicacao, acao) values ("Curativo","Geral","Rapida");
insert into tb_categoria (pack, indicacao, acao) values ("Solucao","Adulto","Moderada");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(50),
tipo varchar(50),
preco decimal(6,2),
data_venda date,
hora_venda time,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Fluimucil 20mg/ml","Expectorante",29.80,20211025,184500, 1);
insert into tb_produto (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Colirio Teuto 20ml","Oftalmica",13.95,20211024,203100, 2);
insert into tb_produto (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Camomilina C","Analgesico",43.35,20211025,191500, 3);
insert into tb_produto (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Band-Aid","Adesivo",9.10,20211026,204500, 4);
insert into tb_produto (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Kit Solucao lentes contato","Oftalmica",62.57,20211025,010000, 5);
insert into tb_produto (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("AAS Infantil","Analgesico",7.05,20211025,192800, 3);
insert into tb_produto (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Neosoro 30ml","Antisseptico nasal",73.34,20211023,232000, 5);
insert into tb_produto (nome, tipo, preco, data_venda, hora_venda, categoria_id)
values ("Cetoconazol Cimed 200mg","Antifungico",28.70,20211024,212000, 3);

select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome Like "%B%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where tipo="cosméticos";
