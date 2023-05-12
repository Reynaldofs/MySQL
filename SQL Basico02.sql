create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
id 	bigint auto_increment,
nome varchar(255) not null,
tipo varchar(255) not null,
primary key (id)
);
insert  into tb_classes (Nome,tipo) values ("Warlock","Guerreiro");
insert  into tb_classes (Nome,tipo) values ("leu","Cacador");
insert  into tb_classes (Nome,tipo) values ("luzdosol","mago");
insert  into tb_classes (Nome,tipo) values ("cavalobranco","atirado");
insert  into tb_classes (Nome,tipo) values ("Guerraazul","Submisso");

select * from tb_classes;


create table tb_personagens (

id 	bigint auto_increment,
nome varchar(255),
Poder int,
Defesar int,
Saude int,
velocidade int,
classes_id bigint,
primary key (id),
foreign Key (classes_id) references tb_classes(id)
);

INSERT INTO tb_personagens (arqueiro,Poder, Defesar, Saude, velocidade, classes_id) VALUES (2000, 20, 100, 30, 1);
INSERT INTO tb_personagens (Curandeiro,Poder, Defesar, Saude, velocidade, classes_id) VALUES (1500, 20, 100, 30, 2);
INSERT INTO tb_personagens (vitoria,Poder, Defesar, Saude, velocidade, classes_id) VALUES (5500, 20, 100, 30, 3);
INSERT INTO tb_personagens (Curandeiro,Poder, Defesar, Saude, velocidade, classes_id) VALUES (4000, 20, 100, 30, 4);
INSERT INTO tb_personagens (gato,Poder, Defesar, Saude, velocidade, classes_id) VALUES (6000, 20, 100, 30, 5);
INSERT INTO tb_personagens (tubarão,Poder, Defesar, Saude, velocidade, classes_id) VALUES (3600, 20, 100, 30, 6);
INSERT INTO tb_personagens (passarinho,Poder, Defesar, Saude, velocidade, classes_id) VALUES (8000, 20, 100, 30, 7);
INSERT INTO tb_personagens (lutado,Poder, Defesar, Saude, velocidade, classes_id) VALUES (1500, 20, 100, 30, 8);

select * from tb_personagens;

select * from tb_personagens where pontos > 2000;

SELECT * FROM tb_personagens WHERE pontos BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE personagem LIKE "C%";

Select * from tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id; 

SELECT tipo from tb_classes
RIGHT JOIN tb_personagens ON tb_personagens.classes_id = tb_classes.id;



