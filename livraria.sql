create database livraria_tera;
use livraria_tera;

-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE pedido (
idpedido INT(10) PRIMARY KEY,
data_pedido DATE,
status_pedido VARCHAR(30),
valor_total DECIMAL(10),
quantidade INT(10),
fk_pagamento INT(10),
fk_estoque INT(10),
fk_carrinho INT(10),
fk_cliente INT(10)
);

CREATE TABLE tipo_pagamento (
idpagamento INT(10) PRIMARY KEY,
data_pagamento DATE,
valor_pagamento DECIMAL(10),
forma_pagamento VARCHAR(20)
);

CREATE TABLE autor (
id_autor INT(10) PRIMARY KEY,
nome_autor VARCHAR(30 ),
sexo CHAR(1)
);

CREATE TABLE editora (
id_editora INT(10) PRIMARY KEY,
nome_editora INT(4),
uf CHAR(2)
);

CREATE TABLE cadastro (
id_Cadastro NUMERIC(10 ) PRIMARY KEY,
dataCadastro DATE,
fk_cadastro INT(10)
);

CREATE TABLE cliente (
id INT(10) PRIMARY KEY,
nome VARCHAR(30),
nascimento DATE,
email INT(40),
cpf CHAR(11),
sexo CHAR(1)
);

CREATE TABLE carrinho (
idcarrinho INT(10) PRIMARY KEY,
quantidade INT(10),
fk_livro INT(10)
);

CREATE TABLE livro (
	id_livro INT(10) PRIMARY KEY,
	nome_livro VARCHAR(30 ),
	paginas INT(10),
	valor DECIMAL(10),
	publicacao DATE,
	fk_autor INT(10),
	fk_editora INT(10)
);

CREATE TABLE estoque (
idestoque INT(10) PRIMARY KEY,
unidades INT(10)
);

ALTER TABLE livro ADD FOREIGN KEY(fk_autor) REFERENCES autor (id_autor);
ALTER TABLE livro ADD FOREIGN KEY(fk_editora) REFERENCES editora (id_editora);
ALTER TABLE pedido ADD FOREIGN KEY(fk_pagamento) REFERENCES tipo_pagamento (idpagamento);
ALTER TABLE pedido ADD FOREIGN KEY(fk_estoque) REFERENCES estoque (idestoque);
ALTER TABLE pedido ADD FOREIGN KEY(fk_carrinho) REFERENCES carrinho (idcarrinho);
ALTER TABLE pedido ADD FOREIGN KEY(fk_cliente) REFERENCES cliente (id);
ALTER TABLE cadastro ADD FOREIGN KEY(fk_cadastro) REFERENCES cliente (id);
ALTER TABLE carrinho ADD FOREIGN KEY(fk_livro) REFERENCES livro (id_livro);

select * from livro;


insert into cliente values
(1,'João Ferreira','1986-06-26','jojo@gmail.com','13606636930','M'),
(2,'Bruna Almeida','1997-02-16','ba1997fs@gmailcom','14512236530','F'),
(3,'Maria Carvalho Pinto','1999-06-23','mca199@gmail.com','14526636790','F'),
(4,'Francisca Souza Ferreira','1989-07-28','fran2525@hotmail.com','69866253690','F'),
(5,'Andre Campos','2001-03-14','andrecarneiro11@oul.com','25798536940','M'),
(6,'Ricardo Souza Rodrigues','1969-05-17','rick09@oul.com','12325869543','M'),
(7,'Angelo Fernandes','2002-09-15','fernandesangelo@outlook.com','14815236830','M'),
(8,'Margarida Favero','1999-05-13','mag101@gmail.com','12575843019','F');

select * from cliente;


insert into cadastro values 
(1,'2000-01-20',1),
(2,'2001-05-23',2),
(3,'1999-01-03',3),
(4,'2011-05-01',4),
(5,'1999-05-06',5),
(6,'1999-02-03',6),
(7,'1999-05-06',7),
(8,'2000-05-23',8);


ALTER TABLE livro MODIFY COLUMN publicacao YEAR;

insert into editora values 
(1,'Atlas','RJ'),
(2,'Addison','SP'),
(3,'Atlas','RJ'),
(4,'Beta','RJ'),
(5,'Beta','RJ'),
(6,'Bubba','MG'),
(7,'Insignia','ES'),
(8,'Insignia','ES'),
(9,'Larson','RS'),
(10,'Continental','RS');


insert into autor values
(1,'Ana Claudia','F'),
(2,'João Nunes','M'),
(3,'Celia Tavares','F'),
(4,'Eduardo Santos','M'),
(5,'Eduardo Santos','M'),
(6,'Hermes Macedo','M'),
(7,'Geraldo Francisco','M'),
(8,'Leda Silva','F'),
(9,'Marco Alcantara','M'),
(10,'Clara Mafra','F');

insert into estoque values
(1,5),
(2,200),
(3,130),
(4,300),
(5,63),
(6,9),
(7,132),
(8,126),
(9,115),
(10,15);

select * from estoque;


insert into livro values 
(1,'Cavaleiro Real',465,49.9,'2009',1,1),
(2,'SQL para leigos',450,98,'2018',2,2),
(3,'Receitas Caseiras',210,45,'2008',3,3),
(4,'Pessoas Efetivas',390,78.99,'2018',4,4),
(5,'Habitos Saudáveis',630,150.98,'2019',5,5),
(6,'A Casa Marrom',250,60,'2016',6,6),
(7,'Estacio Querido',310,100,'2015',7,7),
(8,'Pra sempre amigas',510,78.98,'2011',8,8),
(9,'Copas Inesqueciveis',200,130.98,'2018',9,9),
(10,'O poder da Mente',120,56.58,'2017',10,10);

select * from livro;

select idestoque, nome_livro, unidades
from livro
inner join estoque
on id_livro = idestoque;

ALTER TABLE `pedido` CHANGE `quantidade` `itens` INT(10) NULL DEFAULT NULL;


select * from estoque;
