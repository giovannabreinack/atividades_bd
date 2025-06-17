CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(100)
);

CREATE TABLE tb_produtos (
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL(6,2),
descricao VARCHAR(255),
id_categoria BIGINT,
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(tipo) VALUES ("Cabelo");
INSERT INTO tb_categorias(tipo) VALUES ("Remédio");
INSERT INTO tb_categorias(tipo) VALUES ("Cosmético");
INSERT INTO tb_categorias(tipo) VALUES ("Higiene");
INSERT INTO tb_categorias(tipo) VALUES ("Maquiagem");

INSERT INTO tb_produtos(nome, preco, descricao, id_categoria)
VALUES ("Kit da Seda", 56.00, "Inclui shampoo e condicionador seda para cabelos cacheados", 1);

INSERT INTO tb_produtos(nome, preco, descricao, id_categoria)
VALUES ("Omeprazol", 12.00, "Indicado para cólicas de intestino e ansia", 2);

INSERT INTO tb_produtos(nome, preco, descricao, id_categoria)
VALUES ("Dipirona", 8.00, "Indicado para dores de cabeça e dores no corpo", 2);

INSERT INTO tb_produtos(nome, preco, descricao, id_categoria)
VALUES ("Esmalte", 6.00, "Indicado para pintar as unhas", 3);

INSERT INTO tb_produtos(nome, preco, descricao, id_categoria)
VALUES ("Escova de dentes", 16.00, "Indicado para higiene bucal", 4);

INSERT INTO tb_produtos(nome, preco, descricao, id_categoria)
VALUES ("Batom", 20.00, "cores diversas", 5);

INSERT INTO tb_produtos(nome, preco, descricao, id_categoria)
VALUES ("Tinta de Cabelo", 26.00, "Inclui diversas cores", 1);

INSERT INTO tb_produtos(nome, preco, descricao, id_categoria)
VALUES ("Oleo de Argan", 27.00, "Oléo para hidratar o cabelo", 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT id_produto, nome, preco, descricao, tipo
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT id_produto, nome, preco, descricao, tipo
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tipo = "Cosmético";





