CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint AUTO_INCREMENT,
	origem varchar(255) NOT NULL,
    personalidade varchar(255) NOT NULL,
    Mundo varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_classe (origem,personalidade,mundo)
VALUES ("Besta", "Animal","Selvagem");

INSERT INTO tb_classe (origem,personalidade,mundo)
VALUES ("Mago", "Sabio","Anciao");

INSERT INTO tb_classe (origem,personalidade,mundo)
VALUES ("Elfo", "pacifico","Bosquemagico");

INSERT INTO tb_classe (origem,personalidade,mundo)
VALUES ("Diabolic", "Terrivel","Hellparadise");

INSERT INTO tb_classe (origem,personalidade,mundo)
VALUES ("Guerreiro", "Corajoso","Guardian");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    especial varchar(255) NOT NULL,
    poderAtaque int,
    poderDefesa int,
    classe_id bigint, 
    PRIMARY KEY (id),
	FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
	   
);

INSERT INTO tb_personagem (nome, especial, poderAtaque,poderDefesa, classe_id)
VALUES ("Chief", "FireofPeace", 5000, 1500,3);
INSERT INTO tb_personagem (nome, especial, poderAtaque,poderDefesa, classe_id)
VALUES ("Dragonredeyes", "HellBall", 2400, 1200,1);

INSERT INTO tb_personagem (nome, especial, poderAtaque,poderDefesa, classe_id)
VALUES ("MagoNegro", "Magiadark", 2600, 1300,2);
INSERT INTO tb_personagem (nome, especial, poderAtaque,poderDefesa, classe_id)
VALUES ("TheProtector", "AtackFatale" , 1600, 2700,5);

INSERT INTO tb_personagem (nome, especial, poderAtaque,poderDefesa, classe_id)
VALUES ("KnightofDead", "LaminadaMorte", 3000, 5000,4);
INSERT INTO tb_personagem (nome, especial, poderAtaque,poderDefesa, classe_id)
VALUES ("JosephCenturion", "CenturionFinisher", 4000, 2000,1);

INSERT INTO tb_personagem (nome, especial, poderAtaque,poderDefesa, classe_id)
VALUES ("MagodoTempo", "ReverseTime", 500, 2100,2);
INSERT INTO tb_personagem (nome, especial, poderAtaque,poderDefesa, classe_id)
VALUES ("HarpiesZombies", "ForbidenMemories", 3500, 2400,4);

SELECT * FROM tb_personagem;

SELECT nome, poderAtaque FROM tb_personagem WHERE poderAtaque>2000;
SELECT* FROM tb_personagem WHERE poderDefesa BETWEEN 1000 AND 2000;
SELECT*FROM tb_personagem WHERE nome LIKE "C%";

SELECT nome, tb_classe.origem
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id;

SELECT nome, tb_classe.origem
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id;