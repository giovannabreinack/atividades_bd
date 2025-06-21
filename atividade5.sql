CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255),
responsavel VARCHAR(255)
);

CREATE TABLE tb_produtos (
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco DECIMAL(6,2),
quantidade INT,
id_categoria BIGINT,
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(tipo, responsavel) VALUES ("Tinta", "João");
INSERT INTO tb_categorias(tipo, responsavel) VALUES ("Materiais", "Joana");
INSERT INTO tb_categorias(tipo, responsavel) VALUES ("Ferramentas", "Rian");
INSERT INTO tb_categorias(tipo, responsavel) VALUES ("Hidráulica", "Riana");
INSERT INTO tb_categorias(tipo, responsavel) VALUES ("Equipamentos", "Natalie");

INSERT INTO tb_produtos(nome, preco, quantidade, id_categoria) VALUES ("Tinta Collorston", 89.00, 1, 1);
INSERT INTO tb_produtos(nome, preco, quantidade, id_categoria) VALUES ("Tinta Suvinil", 112.00, 2, 1);
INSERT INTO tb_produtos(nome, preco, quantidade, id_categoria) VALUES ("Martelo", 39.00, 1, 3);
INSERT INTO tb_produtos(nome, preco, quantidade, id_categoria) VALUES ("Furadeira", 189.00, 2, 3);
INSERT INTO tb_produtos(nome, preco, quantidade, id_categoria) VALUES ("Mascara", 19.00, 5, 5);
INSERT INTO tb_produtos(nome, preco, quantidade, id_categoria) VALUES ("Capacete", 60.00, 10, 5);
INSERT INTO tb_produtos(nome, preco, quantidade, id_categoria) VALUES ("Cimento", 35.00, 1, 2);
INSERT INTO tb_produtos(nome, preco, quantidade, id_categoria) VALUES ("Cilindro", 19.00, 5, 4);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT id_produto, nome, preco, quantidade, tipo, responsavel FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT id_produto, nome, preco, quantidade, tipo, responsavel FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tipo = "Tinta";







