DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.usuario (
    usuario_id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(45) NOT NULL,
    idade INT
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.usuario
(usuario_id, nome, idade)
VALUES
	(1, "Thati", 23),
    (2, "Cintia", 35),
    (3, "Bill", 20),
    (4,	"Roger", 45),
    (5,	"Norman", 58),
    (6,	"Patrick", 33),
    (7,	"Vivian", 26),
    (8,	"Carol", 19),
    (9,	"Angelina", 42),
    (10, "Paul", 46);
    
CREATE TABLE SpotifyClone.planos (
    plano_id INT PRIMARY KEY NOT NULL,
    plano VARCHAR(45) NOT NULL,
    preco DECIMAL(3 , 2 )
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.planos
(plano_id, plano, preco)
VALUES
	(1,	"gratuito", 0),
    (2,	"familiar",	7.99),
    (3, "universitário", 5.99),
    (4,	"pessoal", 6.99);
    
CREATE TABLE SpotifyClone.usuario_planos (
    usuario_id INT,
    plano_id INT,
    data_assinatura VARCHAR(45),
    FOREIGN KEY (usuario_id)
        REFERENCES SpotifyClone.usuario (usuario_id),
    FOREIGN KEY (plano_id)
        REFERENCES SpotifyClone.planos (plano_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.usuario_planos
(usuario_id, data_assinatura, plano_id)
VALUES
	(1, "2019-10-20", 1),
    (2, "2017-12-30", 2),
    (3, "2019-06-05", 3),
    (4, "2020-05-13", 4),
    (5, "2017-02-17", 4),
    (6, "2017-01-06", 2),
    (7, "2018-01-05", 3),
    (8, "2018-02-14", 3),
    (9, "2018-04-29", 2),
    (10, "2017-01-17", 2);

CREATE TABLE SpotifyClone.artista (
    artista_id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(45)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.artista
(artista_id, nome)
VALUES
	(1,	"Walter Phoenix"),
    (2,	"Freedie Shannon"),
    (3,	"Lance Day"),
    (4,	"Peter Strong"),
    (5,	"Tyler Isle"),
    (6,	"Fog");
    
CREATE TABLE SpotifyClone.usuario_segue_artista (
    usuario_id INT,
    artista_id INT,
    FOREIGN KEY (usuario_id)
        REFERENCES SpotifyClone.usuario (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES SpotifyClone.artista (artista_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.usuario_segue_artista
(usuario_id, artista_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 4),
(3, 1),
(4, 2),
(5, 5),
(5, 6),
(6, 6),
(6, 3),
(6, 1),
(7, 4),
(7, 5),
(8, 1),
(8, 5),
(9, 6),
(9, 2),
(9, 3),
(10, 4),
(10, 6);

CREATE TABLE SpotifyClone.album (
    album_id INT PRIMARY KEY NOT NULL,
    album VARCHAR(45),
    ano_lancamento VARCHAR(45)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.album
(album_id,album,ano_lancamento)
VALUES
(1,"Envious",1990),
(2,"Exuberant",1993),
(3,"Hallowed Steam",1995),
(4,"Incandescent",1998),
(5,"Temporary Culture",2001),
(6,"Library of liberty",2003),
(7,"Chained Down",2007),
(8,"Cabinet of fools",2012),
(9,"No guarantees",2015),
(10,"Apparatus",2015);

CREATE TABLE SpotifyClone.album_artista (
    album_id INT,
    artista_id INT,
    FOREIGN KEY (album_id)
        REFERENCES album (album_id),
    FOREIGN KEY (artista_id)
        REFERENCES artista (artista_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.album_artista
(album_id, artista_id)
VALUES
(1,1),
(2,1),
(3,4),
(4,3),
(5,2),
(6,2),
(7,5),
(8,5),
(9,5),
(10,6);

CREATE TABLE SpotifyClone.cancoes (
	cancao_id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(45),
    duracao_segundos INT
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.cancoes
(cancao_id, nome, duracao_segundos)
VALUES
(1,"Soul For Us",200),
(2,"Reflections Of Magic",163),
(3,"Dance With Her Own",116),
(4,"Troubles Of My Inner Fire",203),
(5,"Time Fireworks",152),
(6,"Magic Circus",105),
(7,"Honey, So Do I",207),
(8,"Sweetie, Let's Go Wild",139),
(9,"She Knows",244),
(10,"Fantasy For Me",100),
(11,"Celebration Of More",146),
(12,"Rock His Everything",223),
(13,"Home Forever",231),
(14,"Diamond Power",241),
(15,"Let's Be Silly",132),
(16,"Thang Of Thunder",240),
(17,"Words Of Her Life",185),
(18,"Without My Streets",176),
(19,"Need Of The Evening",190),
(20,"History Of My Roses",222),
(21,"Without My Love",111),
(22,"Walking And Game",123),
(23,"Young And Father",197),
(24,"Finding My Traditions",179),
(25,"Walking And Man",229),
(26,"Hard And Time",135),
(27,"Honey, I'm A Lone Wolf",150),
(28,"She Thinks I Won't Stay Tonight",166),
(29,"He Heard You're Bad For Me",154),
(30,"He Hopes We Can't Stay",210),
(31,"I Know I Know",117),
(32,"He's Walking Away",159),
(33,"He's Trouble",138),
(34,"I Heard I Want To Bo Alone",120),
(35,"I Ride Alone",151),
(36,"Honey",79),
(37,"You Cheated On Me",95),
(38,"Wouldn't It Be Nice",213),
(39,"Baby",136),
(40,"You Make Me Feel So..",83);