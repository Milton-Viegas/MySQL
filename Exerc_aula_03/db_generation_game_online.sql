create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
habilidade varchar(50) not null,
arma varchar(50),
flag varchar(50),
primary key (id)
);

insert into tb_classe (habilidade, arma, flag) values ("Arqueiro","Arco e flecha","branca");
insert into tb_classe (habilidade, arma, flag) values ("Mago","Cajado","branca");
insert into tb_classe (habilidade, arma, flag) values ("Espadachim","Espada","azul");
insert into tb_classe (habilidade, arma, flag) values ("Escudeiro","Lança e escudo","amarela");
insert into tb_classe (habilidade, arma, flag) values ("Civil","Punhal","verde");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (150) not null,
idade int,
raca varchar (25),
ataque int,
defesa int,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, idade, raca, ataque, defesa, classe_id) values ("Legolas",2931,"Elfo",5000,1000, 1);
insert into tb_personagem (nome, idade, raca, ataque, defesa, classe_id) values ("Gandalf",24000,"Maiar",9000,5000, 2);
insert into tb_personagem (nome, idade, raca, ataque, defesa, classe_id) values ("Aragorn",87,"Humano",3000,2000, 3);
insert into tb_personagem (nome, idade, raca, ataque, defesa, classe_id) values ("Gimli",262,"Anões",700,1000, 4);
insert into tb_personagem (nome, idade, raca, ataque, defesa, classe_id) values ("Frodo",33,"Hobbit",100,400, 5);
insert into tb_personagem (nome, idade, raca, ataque, defesa, classe_id) values ("Faramir",84,"Humano",3000,2000, 3);
insert into tb_personagem (nome, idade, raca, ataque, defesa, classe_id) values ("Celeborn",400000,"Elfo",9000,5000, 2);
insert into tb_personagem (nome, idade, raca, ataque, defesa, classe_id) values ("Galadriel",400000,"Elfa",9000,5000, 2);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome Like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id; -- 2ª opção a seguir:

select nome, idade, raca, ataque, defesa, tb_classe.habilidade as habilidade_da_classe, tb_classe.arma as arma_da_classe,
tb_classe.flag as flag_da_classe from tb_personagem inner join tb_classe on  tb_classe.id = tb_personagem.classe_id;

select * from tb_classe where habilidade="Arqueiro"; -- 2ª opção a seguir:

select nome, idade, raca, ataque, defesa, tb_classe.habilidade as habilidade_da_classe, tb_classe.arma as arma_da_classe,
tb_classe.flag as flag_da_classe from tb_personagem inner join tb_classe on  tb_classe.id = tb_personagem.classe_id where habilidade="Arqueiro";
