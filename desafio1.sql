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
    ano_lancamento VARCHAR(45),
    artista_id INT,
    FOREIGN KEY (artista_id)
        REFERENCES SpotifyClone.artista (artista_id)
)  ENGINE=INNODB;