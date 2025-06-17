CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id_classe BIGINT AUTO_INCREMENT PRIMARY KEY,
dificuldade VARCHAR(50),
tipo VARCHAR(100),
estilo_combate VARCHAR(100)
);

CREATE TABLE tb_personagens (
id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
nivel INT,
experiencia INT,
ataque BIGINT,
defesa BIGINT,
id_classe BIGINT,
FOREIGN KEY(id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes(dificuldade, tipo, estilo_combate)
VALUES ("Média", "Aventureira", "Exploração");

INSERT INTO tb_classes(dificuldade, tipo, estilo_combate)
VALUES ("Alta", "Deus da guerra", "Combate");

INSERT INTO tb_classes(dificuldade, tipo, estilo_combate)
VALUES ("Média", "Sobrevivente", "Combate Furtivo");

INSERT INTO tb_classes(dificuldade, tipo, estilo_combate)
VALUES ("Alta", "Pistoleiro", "Tiro");

INSERT INTO tb_classes(dificuldade, tipo, estilo_combate)
VALUES ("Fácil", "Mago", "Magia");



INSERT INTO tb_personagens(nome, nivel, experiencia, ataque, defesa, id_classe) 
VALUES ("Lara Croft", 5, 7, 1500, 2000, 1);

INSERT INTO tb_personagens(nome, nivel, experiencia, ataque, defesa, id_classe) 
VALUES ("Kratos", 6, 10, 10000, 6000, 2);

INSERT INTO tb_personagens(nome, nivel, experiencia, ataque, defesa, id_classe) 
VALUES ("Ellie", 4, 6, 3000, 1500, 3);

INSERT INTO tb_personagens(nome, nivel, experiencia, ataque, defesa, id_classe) 
VALUES ("Leon Kennedy", 8, 9, 5000, 5000, 3);

INSERT INTO tb_personagens(nome, nivel, experiencia, ataque, defesa, id_classe) 
VALUES ("Arthur Morgan", 7, 6, 3300, 3000, 4);

INSERT INTO tb_personagens(nome, nivel, experiencia, ataque, defesa, id_classe) 
VALUES ("Merlin", 2, 3, 1000, 1000, 5);

INSERT INTO tb_personagens(nome, nivel, experiencia, ataque, defesa, id_classe) 
VALUES ("Snape", 3, 5, 2000, 2000, 5);

INSERT INTO tb_personagens(nome, nivel, experiencia, ataque, defesa, id_classe) 
VALUES ("Chris Redfield", 9, 10, 7000, 7000, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000; 

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT id_personagem, nome, nivel, experiencia, ataque, defesa, dificuldade, tipo, estilo_combate
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT id_personagem, nome, nivel, experiencia, ataque, defesa, dificuldade, tipo, estilo_combate
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE estilo_combate = "Combate Furtivo";


























