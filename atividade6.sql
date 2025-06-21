CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255),
representante VARCHAR(255)
);

CREATE TABLE tb_cursos (
id_curso BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco DECIMAL(6,2),
numero_de_aulas INT,
data_inicio DATE,
data_final DATE,
id_categoria BIGINT,
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(categoria, representante) VALUES ("Programação em JavaScript", "Leticia");
INSERT INTO tb_categorias(categoria, representante) VALUES ("Programação em Java", "Poliana");
INSERT INTO tb_categorias(categoria, representante) VALUES ("Programação em Python", "Leonardo");
INSERT INTO tb_categorias(categoria, representante) VALUES ("Métodos Agéis", "Natan");
INSERT INTO tb_categorias(categoria, representante) VALUES ("Soft Skills", "Mateus");
INSERT INTO tb_categorias(categoria, representante) VALUES ("Análise de dados", "Patricia");


INSERT INTO tb_cursos(nome, preco, numero_de_aulas, data_inicio, data_final, id_categoria) 
VALUES ("JavaScript para iniciantes", 189.00, 60, "2025-06-30", "2025-10-10", 1);

INSERT INTO tb_cursos(nome, preco, numero_de_aulas, data_inicio, data_final, id_categoria) 
VALUES ("JavaScript Avançado", 289.00, 120, "2025-06-11", "2025-12-20", 1);

INSERT INTO tb_cursos(nome, preco, numero_de_aulas, data_inicio, data_final, id_categoria) 
VALUES ("Java para quem tem pressa", 159.00, 100, "2025-05-30", "2025-11-30", 2);

INSERT INTO tb_cursos(nome, preco, numero_de_aulas, data_inicio, data_final, id_categoria) 
VALUES ("Java e Spring Boot", 230.00, 160, "2025-06-10", "2025-11-23", 2);

INSERT INTO tb_cursos(nome, preco, numero_de_aulas, data_inicio, data_final, id_categoria) 
VALUES ("Tarefas com Kanban", 89.00, 40, "2024-06-30", "2024-10-10", 4);

INSERT INTO tb_cursos(nome, preco, numero_de_aulas, data_inicio, data_final, id_categoria) 
VALUES ("Power BI", 259.00, 80, "2026-06-30", "2026-10-10", 6);

INSERT INTO tb_cursos(nome, preco, numero_de_aulas, data_inicio, data_final, id_categoria) 
VALUES ("Python para iniciantes", 99.00, 75, "2025-08-23", "2025-11-15", 3);

INSERT INTO tb_cursos(nome, preco, numero_de_aulas, data_inicio, data_final, id_categoria) 
VALUES ("Como ser proativo", 59.00, 30, "2025-07-24", "2025-10-01", 4);


SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT id_curso, nome, preco, numero_de_aulas, data_inicio, data_final, categoria, representante FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria;

SELECT id_curso, nome, preco, numero_de_aulas, data_inicio, data_final, categoria, representante FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE categoria = "Programação em JavaScript";







