CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT,
	tipo varchar(255) NOT NULL,
    borda varchar(255) NOT NULL,
    massa varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,borda,massa)
VALUES ("Doce", "simples","fina");

INSERT INTO tb_categoria (tipo,borda,massa)
VALUES ("Doce", "simples","fina");

INSERT INTO tb_categoria (tipo,borda,massa)
VALUES ("Salgada", "recheada","Grossa");

INSERT INTO tb_categoria (tipo,borda,massa)
VALUES ("Salgada", "recheada","Grossa");

INSERT INTO tb_categoria (tipo,borda,massa)
VALUES ("Salgada", "simples","Grossa");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    sabor varchar(255) NOT NULL,
    valor int NOT NULL,
    categoria_id bigint, 
    PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
	   
);

INSERT INTO tb_pizza (nome, sabor, valor,categoria_id)
VALUES ("A moda da casa", "mussarela,calabresa e pimenta", 35 , 4);
INSERT INTO tb_pizza (nome, sabor, valor,categoria_id)
VALUES ("italia", "lasanha", 20, 3);

INSERT INTO tb_pizza (nome, sabor, valor,categoria_id)
VALUES ("Frango", "frango com catupiry", 50, 5);
INSERT INTO tb_pizza (nome, sabor, valor,categoria_id)
VALUES ("verde", "brocolis", 15, 4);

INSERT INTO tb_pizza (nome, sabor, valor,categoria_id)
VALUES ("gaucho", "costela", 25, 3);
INSERT INTO tb_pizza (nome, sabor, valor,categoria_id)
VALUES ("minas doce", "doce de leite", 30, 1);

INSERT INTO tb_pizza (nome, sabor, valor,categoria_id)
VALUES ("amor doce", "sonho de valsa", 40, 2);
INSERT INTO tb_pizza (nome, sabor, valor,categoria_id)
VALUES ("Morango especial", "chocolate com morango", 20, 1);

SELECT * FROM tb_pizza;

SELECT nome, sabor,valor FROM tb_pizza WHERE valor>45;
SELECT* FROM tb_pizza WHERE valor BETWEEN 29 AND 60;
SELECT*FROM tb_pizza WHERE nome LIKE "%c%";

SELECT nome,sabor,valor,tb_categoria.tipo
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT nome,sabor,valor,tb_categoria.tipo
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Doce";