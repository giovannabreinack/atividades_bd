CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(100),
descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas (
id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(100),
preco DECIMAL(4,2),
ingredientes VARCHAR(255),
id_categoria BIGINT,
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(tipo, descricao) VALUES ("Doce", "Pizza doce com borda recheada");

INSERT INTO tb_categorias(tipo, descricao) VALUES ("Doce", "Pizza de chocolate com morangos");

INSERT INTO tb_categorias(tipo, descricao) VALUES ("Doce", "Pizza de banana com canela");

INSERT INTO tb_categorias(tipo, descricao) VALUES ("Doce", "Pizza de chocolate com granulado");

INSERT INTO tb_categorias(tipo, descricao) VALUES ("Salgada", "Pizza de mussarela com calabresa");

INSERT INTO tb_categorias(tipo, descricao) VALUES ("Salgada", "Pizza de atum");

INSERT INTO tb_categorias(tipo, descricao) VALUES ("Salgada", "Pizza de frango com catupiry");

# pizzas
INSERT INTO tb_pizzas(sabor, preco, ingredientes, id_categoria) 
VALUES ("Sonho valsa", 56.00, "chocolate e amendoim", 1);

INSERT INTO tb_pizzas(sabor, preco, ingredientes, id_categoria) 
VALUES ("Tentação", 53.00, "chocolate e morangos", 2);

INSERT INTO tb_pizzas(sabor, preco, ingredientes, id_categoria) 
VALUES ("Bananada", 50.00, "Banana e canela", 3);

INSERT INTO tb_pizzas(sabor, preco, ingredientes, id_categoria) 
VALUES ("Brigadeiro", 57.00, "chocolate ao leite e granulados", 4);

INSERT INTO tb_pizzas(sabor, preco, ingredientes, id_categoria) 
VALUES ("Calabresa", 47.00, "mussarela, queijo e cebola", 5);

INSERT INTO tb_pizzas(sabor, preco, ingredientes, id_categoria) 
VALUES ("Atum", 48.00, "atum, queijo, cebola e oregano", 6);

INSERT INTO tb_pizzas(sabor, preco, ingredientes, id_categoria) 
VALUES ("Frango com catupiry", 54.00, "frango, mussarela, catupiry", 7);

INSERT INTO tb_pizzas(sabor, preco, ingredientes, id_categoria) 
VALUES ("Fini", 58.00, "fini, marshmellow e chocolate", 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT id_pizza, sabor, preco, ingredientes, tipo, descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT id_pizza, sabor, preco, ingredientes, tipo, descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tipo = "Doce";











