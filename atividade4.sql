CREATE DATABASE db_dos_vegetais;

USE db_dos_vegetais;

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255),
quantidade INT
);

CREATE TABLE tb_produtos (
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
cor VARCHAR(100),
nacionalidade VARCHAR(100),
preco DECIMAL(4,2),
id_categoria BIGINT,
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Fruta", 2);
INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Fruta", 1);
INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Fruta", 3);
INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Fruta", 4);
INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Verdura", 1);
INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Verdura", 2);
INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Verdura", 3);
INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Legumes", 1);
INSERT INTO tb_categorias(tipo, quantidade) VALUES ("Legumes", 2);

INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Maçã", "Verde", "Argentina", 12.00, 1);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Maçã", "Vermelha", "Argentina", 17.00, 3);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Maçã", "Vermelha", "Brasil", 9.00, 2);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Melancia", "Vermelha", "Brasil", 17.00, 4);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Kiwi", "Verde", "Brasil", 8.00, 2);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Alface", "Verde", "Brasil", 6.00, 5);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Couve", "Verde", "Brasil", 14.00, 6);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Cenoura", "Laranja", "Paraguai", 6.00, 9);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Abacate", "Verde", "Brasil", 19.00, 2);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Mandioca", "Amarelo", "Chile", 20.00, 8);
INSERT INTO tb_produtos(nome, cor, nacionalidade, preco, id_categoria)
VALUES ("Batata-Doce", "Roxa", "Brasil", 22.00, 9);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT id_produto, nome, cor, nacionalidade, preco, tipo, quantidade
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria =  tb_categorias.id_categoria; 
SELECT id_produto, nome, cor, nacionalidade, preco, tipo, quantidade
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria =  tb_categorias.id_categoria
WHERE tipo = "Fruta";



