create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
classe varchar(50),
primary key (id)
);

insert into tb_categoria (descricao, ativo, classe) values ("Bovino",true,"Premium");
insert into tb_categoria (descricao, ativo, classe) values ("Suino",true,"Silver");
insert into tb_categoria (descricao, ativo, classe) values ("Aves",true,"Economica");
insert into tb_categoria (descricao, ativo, classe) values ("Caprino",true,"Silver");
insert into tb_categoria (descricao, ativo, classe) values ("imbutidos",true,"Economica");

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
hora_venda time,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtproduto, dtvalidade, hora_venda, categoria_id)
values ("ASA",40.00,30, "2021-11-07", "14:31:05", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, hora_venda, categoria_id)
values ("Picanha",20.00,30, "2021-11-08", "10:13:00", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, hora_venda, categoria_id)
values ("coxa de frango",20.00,30, "2021-11-07", "10:38:02", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, hora_venda, categoria_id)
values ("Bacon",30.00,30, "2021-11-09", "10:26:00", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, hora_venda, categoria_id)
values ("hamburguer",60.00,30, "2021-09-07", "11:56:00", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, hora_venda, categoria_id)
values ("Cupim",20.00,30, "2021-11-10", "14:31:05", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, hora_venda, categoria_id)
values ("Peito de frango",25.00,30, "2021-11-09", "17:11:00", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, hora_venda, categoria_id)
values ("Cabrito",20.00,30, "2021-11-07", "10:32:00", 4);

select * from tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome Like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_categoria where descricao="Aves";