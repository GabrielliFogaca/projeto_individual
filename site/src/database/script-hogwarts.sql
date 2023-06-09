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

INSERT INTO usuario (primeiroNome, sobrenome, nickname, senha, fkOrigem, fkCasa, fkAno)
VALUES 
('Gabrielli', 'Fogaca', 'GabiFogaca', 'sptech', 2, 2, 1),
('Aurelia', 'Wolfsbane', 'moonwhisperer', 'lunaris123', 2, 3, 1),
('Thaddeus', 'Hawthorne', 'spellbinder', 'arcane123', 1, 2, 2),
('Seraphina', 'Nightshade', 'shadowspell', 'midnight1', 3, 4, 1),
('Cassius', 'Ravenwood', 'enigmamancer', 'riddles123', 1, 4, 2),
('Vespera', 'Moonstone', 'starmystic', 'luminary1', 2, 1, 1),
('Sylvanus', 'Wilde', 'naturewhisperer', 'verdant123', 1, 3, 2),
('Ariadne', 'Shadowbrook', 'shadowdancer', 'umbra1', 3, 1, 1),
('Lysander', 'Starlight', 'astralscribe', 'celestial123', 2, 2, 2),
('Rowena', 'Evergreen', 'spellweaver', 'enchanted1', 1, 2, 1),
('Joana', 'Ferreira', 'Bruxoana','12345678', 1, 4, 1),
('Luke', 'Grantte', 'GrantB', '12345678', 2, 3, 1),
('Lauren', 'Darking', 'Dark Fonte', '12345678', 3, 2, 1),
('Leily', 'Alves', 'LuxLei', '12345678', 1, 1, 2),
('Evelyn', 'Moonspell', 'lunadreamer', 'arcanearts1', 3, 3, 1),
('Amara', 'Evergreen', 'spellwhisperer', 'magic123', 1, 2, 2),
('Cedric', 'Shadowcaster', 'enchantedsoul', 'wand123', 2, 3, 2),
('Lorelei', 'Moonstone', 'stardustwitch', 'spellbound1', 1, 1, 2),
('Phoenix', 'Blackthorn', 'firecaster', 'mystic123', 3, 4, 2),
('Astrid', 'Ravenhart', 'enigmasorceress', 'ravenclaw1', 1, 4, 1),
('Rowan', 'Wilde', 'naturemancer', 'wildmagic1', 2, 1, 2),
('Sage', 'Mistral', 'spellweaver', 'mystical123', 1, 3, 2),
('Elysia', 'Shadowbrook', 'shadowcaster', 'darkarts1', 3, 1, 2),
('Phoenix', 'Starlight', 'lumosmaster', 'phoenixfire1', 2, 2, 1),
('Zephyr', 'Nightshade', 'moonspell', 'whisper1', 1, 2, 1),
('Aurelia', 'Dawncaster', 'mysticwand', 'magic123', 1, 3, 1),
('Cassius', 'Shadowthorn', 'spellbound', 'enchant123', 2, 4, 2),
('Seraphina', 'Moonfire', 'starweaver', 'luminous1', 3, 2, 1),
('Thaddeus', 'Stormrider', 'thunderbolt', 'arcane123', 1, 1, 2),
('Vesper', 'Silvermoon', 'shadowcaster', 'midnight1', 2, 4, 1),
('Luna', 'Starwhisper', 'spellweaver', 'mystical123', 1, 2, 2),
('Rowan', 'Thornwood', 'wildheart', 'nature123', 3, 3, 1),
('Ariadne', 'Blackthorn', 'moonshadow', 'lunar1', 1, 1, 1),
('Phoenix', 'Stormweaver', 'firestorm', 'phoenix123', 2, 2, 2),
('Sylvanus', 'Whisperwind', 'naturelore', 'verdant1', 3, 3, 2),
('Elara', 'Nightshade', 'shadowcaster', 'magical123', 1, 2, 1),
('Caspian', 'Wolfsbane', 'mooncaller', 'lunaris1', 2, 1, 1),
('Serenity', 'Blackthorn', 'enchantress', 'mystic1', 1, 3, 2),
('Orion', 'Firestone', 'pyromancer', 'blaze123', 3, 4, 1),
('Lilith', 'Shadowmoon', 'nightshade', 'darkness1', 2, 2, 2),
('Alistair', 'Thornheart', 'spellbinder', 'mystique1', 3, 1, 2),
('Rosalind', 'Moonstone', 'moonweaver', 'lunatic123', 1, 3, 1),
('Thalia', 'Silverwood', 'starcaller', 'celestial1', 2, 4, 2),
('Lysander', 'Nightshade', 'shadowwhisper', 'moonlight1', 3, 2, 1),
('Cassandra', 'Stormrider', 'thunderstorm', 'electric1', 1, 1, 2),
('Leander', 'Whisperwind', 'naturewielder', 'earth123', 2, 3, 1),
('Valeria', 'Frostfall', 'frostmage', 'icy1', 3, 1, 2),
('Magnus', 'Stoneheart', 'stonecaster', 'earthquake1', 1, 4, 1),
('Aurora', 'Firestone', 'blazeflame', 'ignite123', 2, 2, 2),
('Evangeline', 'Duskwood', 'shadowdancer', 'twilight1', 3, 3, 1),
('Xander', 'Stormwind', 'thunderbolt', 'volt123', 1, 1, 2),
('Selene', 'Silvermoon', 'moonbeam', 'lunar1', 2, 4, 1),
('Cedric', 'Frostwind', 'frostbite', 'chill123', 3, 2, 2),
('Isabella', 'Witchwood', 'spellbound', 'enchant1', 1, 3, 1),
('Silas', 'Shadowstrike', 'nightblade', 'shadow1', 2, 2, 2),
('Luna', 'Starlight', 'stargazer', 'celeste123', 3, 1, 1),
('Phoenix', 'Emberheart', 'firephoenix', 'burn1', 1, 4, 2),
('Violet', 'Moonshadow', 'shadowwitch', 'darkness123', 2, 3, 1),
('Rowan', 'Thornblade', 'thornweaver', 'thorny1', 3, 1, 2),
('Raven', 'Midnight', 'nightbird', 'nocturnal1', 1, 2, 1),
('Draven', 'Stormcaller', 'tempest', 'stormy123', 2, 1, 2),
('Freya', 'Mistral', 'breezewalker', 'windy1', 3, 4, 1),
('Ember', 'Blaze', 'firestorm', 'inferno123', 1, 3, 2),
('Nyx', 'Shadowborn', 'shadowninja', 'eclipse1', 2, 2, 2),
('Ophelia', 'Stardust', 'starmancer', 'stellar123', 3, 1, 1),
('Xavier', 'Frostwind', 'snowcaster', 'frosty1', 1, 4, 2),
('Aria', 'Silvermoon', 'moonwhisper', 'lunaris123', 2, 3, 1),
('Phoenix', 'Darkfire', 'firehawk', 'burning1', 3, 1, 2),
('Aurora', 'Nightshade', 'shadowfairy', 'dark1', 1, 2, 1),
('Elijah', 'Stormrider', 'thunderstrike', 'electrify1', 2, 1, 2),
('Rosalie', 'Moonlight', 'moonpriestess', 'lunar123', 3, 4, 1),
('Sylvester', 'Shadowbane', 'shadowrider', 'shade1', 1, 3, 2),
('Fiona', 'Starbloom', 'starchild', 'cosmic1', 2, 2, 2),
('Lucian', 'Moonshadow', 'moonblade', 'darkmoon1', 3, 1, 1),
('Vivienne', 'Frostheart', 'frostfairy', 'frozen1', 1, 4, 2),
('Aether', 'Flameheart', 'blazemage', 'pyro1', 2, 3, 1),
('Lilith', 'Darkmoon', 'shadowqueen', 'nightfall1', 3, 1, 2),
('Caelum', 'Stormborn', 'stormweaver', 'thunder1', 1, 2, 1),
('Morgana', 'Nightshade', 'shadowenchantress', 'darkness123', 2, 1, 2),
('Orion', 'Windrider', 'winddancer', 'gust123', 3, 4, 1),
('Ember', 'Darkfire', 'firemancer', 'burn1', 1, 3, 2),
('Nyx', 'Shadowborn', 'shadowninja', 'nightfall1', 2, 2, 2),
('Ophelia', 'Stardust', 'stardancer', 'cosmic1', 3, 1, 1),
('Phoenix', 'Frostwind', 'frostphoenix', 'frozen1', 1, 4, 2),
('Aria', 'Shadowfall', 'shadowmystic', 'dark1', 2, 3, 1),
('Ginevra', 'Weasley', 'ginger', 'redhair1', 1, 1, 1),
 ('Arthur', 'Weasley', 'mrweasley', 'muggle1', 1, 2, 2),
 ('Molly', 'Weasley', 'mrsweasley', 'homemaker1', 1, 3, 1),
 ('Percy', 'Weasley', 'prefect', 'study1', 1, 4, 2),
 ('Bill', 'Weasley', 'werewolf', 'curse1', 1, 1, 1),
 ('Charlie', 'Weasley', 'dragon', 'fire1', 1, 2, 2),
 ('Pomona', 'Sprout', 'herbology', 'plants1', 1, 3, 1),
 ('Minerva', 'McGonagall', 'transfiguration', 'cat1', 1, 4, 2),
 ('Severus', 'Snape', 'potions', 'always1', 1, 1, 1),
 ('Rubeus', 'Hagrid', 'keeper', 'beasts1', 1, 2, 2),
 ('Remus', 'Lupin', 'werewolf', 'moon1', 1, 3, 1),
 ('Sirius', 'Black', 'prisoner', 'padfoot1', 1, 4, 2),
 ('Nymphadora', 'Tonks', 'metamorphmagus', 'pink1', 1, 1, 1),
 ('Kingsley', 'Shacklebolt', 'auror', 'protection1', 1, 2, 2),
 ('Mundungus', 'Fletcher', 'thief', 'goods1', 1, 3, 1),
 ('Arthur', 'Dumbledore', 'headmaster', 'elderwand1', 1, 4, 2),
 ('Lavender', 'Brown', 'gossip', 'girly1', 1, 1, 1),
 ('Parvati', 'Patil', 'divination', 'predictions1', 1, 2, 2),
 ('Cho', 'Chang', 'seeker', 'raven1', 1, 3, 1),
 ('Cedric', 'Diggory', 'triwizard', 'hufflepuff1', 1, 4, 2),
 ('Dean', 'Thomas', 'artist', 'muggleborn1', 1, 1, 1),
 ('Padma', 'Patil', 'intellect', 'wisdom1', 1, 2, 2),
 ('Oliver', 'Wood', 'captain', 'quidditch1', 1, 3, 1),
 ('Marcus', 'Flint', 'bulldozer', 'slytherin1', 1, 4, 2),
 ('Argus', 'Filch', 'caretaker', 'squib1', 1, 1, 1);


SELECT * FROM usuario;
select * from origem;
select * from casa;

-- seleção de todos os alunos junto com a tabela casa.
select * from usuario join casa on idCasa = fkCasa;

-- seleção do primeiro nome do aluno join o nome da casa a qual o aluno pertence
select usuario.primeiroNome, casa.nome from usuario join casa on idCasa = fkCasa;

-- seleção do primeiro nome do aluno join qual sua origem familiar
select usuario.primeiroNome, origem.tipo from usuario join origem on idOrigem = fkOrigem;

-- Soma da quantidade linhas de fkOrigem na tabela usuario como a quantidade de casa origem (tipo), exibe tambem quais os tipos de origem que existem na tabela origem da 
-- tabela usuario join origem onde o id da tabela origem é igual ao fkOrigem na tabela usuario, agrupado por fkOrigem.
 SELECT COUNT(usuario.fkOrigem) as Qtd, origem.tipo AS origem 
FROM usuario JOIN origem ON  origem.idOrigem = usuario.fkOrigem group by usuario.fkOrigem;

-- Soma da quantidade de linhas de fkCasa na tabela usuario, apelidando de Qtd, exibindo o campo nome da tabela casa, from usuario join casa, on idCasa = fkCasa na tabela usuario,
-- agrupado por fkCasa.
SELECT COUNT(usuario.fkCasa) as Qtd, casa.nome AS Casa 
FROM usuario JOIN casa ON  casa.idCasa = usuario.fkCasa group by usuario.fkCasa;