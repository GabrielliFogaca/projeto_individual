
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

create table anoEstudo (
idAno INT PRIMARY KEY auto_increment,
ano VARCHAR(20)
);

create table usuario (
idUsuario INT PRIMARY KEY auto_increment,
primeiroNome VARCHAR(20),
sobrenome VARCHAR(20),
nickname VARCHAR(20),
senha VARCHAR(13),
fkOrigem INT,
constraint fkO FOREIGN KEY (fkOrigem)
	references origem(idOrigem),
fkCasa INT,
constraint fkC FOREIGN KEY (fkCasa)
	references casa(idCasa),
fkAno INT,
constraint fkAno foreign key (fkAno)
	references anoEstudo(idAno)
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

INSERT INTO anoEstudo VALUES 
(null, 1),
(null, 2);


INSERT INTO usuario VALUES 
(null, 'Joana', 'Ferreira', 'Bruxoana','12345678', 1, 4, 1),
(null, 'Luke', 'Grantte', 'GrantB', '12345678', 2, 3, 1),
(null, 'Lauren', 'Darking', 'Dark Fonte', '12345678', 3, 2, 1),
(null, 'Leily', 'Alves', 'LuxLei', '12345678', 1, 1, 2);

SELECT * FROM usuario;
select * from origem;
select * from casa;

SELECT COUNT(usuario.fkOrigem) as Qtd, origem.tipo AS origem 
FROM usuario JOIN origem ON  origem.idOrigem = usuario.fkOrigem group by usuario.fkOrigem;

SELECT COUNT(usuario.fkCasa) as casa, casa.nome AS Casa 
FROM usuario JOIN casa ON  casa.idCasa = usuario.fkCasa group by usuario.fkCasa;