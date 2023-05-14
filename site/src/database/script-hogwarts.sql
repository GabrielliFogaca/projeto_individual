create database hogwarts;

use hogwarts;

create table origem (
idOrigem INT PRIMARY KEY auto_increment,
tipo VARCHAR(20)
);

create table casa (
idCasa INT PRIMARY KEY auto_increment,
nome VARCHAR(20)
);

create table usuario (
idUsuario INT PRIMARY KEY auto_increment,
nome VARCHAR(20),
sobrenome VARCHAR(20),
nickname VARCHAR(20),
dtNasc DATE,
fkOrigem INT,
constraint fkO FOREIGN KEY (fkOrigem)
	references origem(idOrigem),
fkCasa INT,
constraint fkC FOREIGN KEY (fkCasa)
	references casa(idCasa)
    );


INSERT INTO origem VALUES 
(null, 'Bruxa'),
(null, 'Trouxa'),
(null, 'Mista');

INSERT INTO casa VALUES
(null, 'Grifinória'),
(null,'Lufa-Lufa'),
(null, 'Corvinal'),
(null, 'Sonserina');

INSERT INTO usuario VALUES 
(null, 'Joana', 'Ferreira', 'Bruxoana', '1995-12-29', 1, 4),
(null, 'Luke', 'Grantte', 'GrantB', '2000-02-15', 2, 3),
(null, 'Lauren', 'Darking', 'Dark Fonte', '1999-05-01', 3, 2),
(null, 'Leily', 'Alves', 'LuxLei', '2001-12-09', 1, 1);