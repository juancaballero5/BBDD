/*CREATE DATABASE ejercicio2;*/
GO
USE ejercicio2;
CREATE TABLE marca
(
CodMar INT NOT NULL,
NomMar VARCHAR(50) NOT NULL,
PRIMARY KEY (CodMar)
);
CREATE TABLE modelo
(
CodMod INT NOT NULL,
NomMod VARCHAR(50) NOT NULL,
CodMar INT NOT NULL,
PRIMARY KEY (CodMod),
FOREIGN KEY (CodMar) REFERENCES marca(CodMar)
);

CREATE TABLE coche
(
CodCoc INT NOT NULL,
MatCoc VARCHAR(8) NOT NULL UNIQUE,
ColCoc VARCHAR(50) NOT NULL DEFAULT 'blanco',
PueCoc TINYINT NOT NULL,
CvCoc TINYINT  NOT NULL,
CilCoc SMALLINT NOT NULL,
AntCoc DATE NOT NULL,
CodMod INT NOT NULL,
PRIMARY KEY (CodCoc),
FOREIGN KEY (CodMod) REFERENCES modelo(CodMod)
);

INSERT INTO marca (CodMar, NomMar)
VALUES (1,'Audi'),
(2,'Citroën'),
(3,'Seat');

INSERT INTO modelo (CodMod, NomMod, CodMar)
VALUES (1,'A3',1),
(2,'A4',1),
(3,'A6',1),
(4,'C3',2),
(5,'C4',2),
(6,'C5',2),
(7,'Ibiza',3),
(8,'León',3),
(9,'Arona',3);

INSERT INTO coche (CodCoc, MatCoc, ColCoc, PueCoc, AntCoc, CvCoc,
CilCoc, CodMod)
VALUES (1, '1234AAA', 'rojo', 5, '1995-09-30', 110, 1500, 8),
(2, '1234AAB', DEFAULT, 11, '1998/03/15', 90, 1400, 4),
(3, '1234AAC', 'amarillo', 3, '1999/12/07', 80, 2200, 7),
(4, '1234AAD', 'gris', 5, '2008/05/13', 210, 1600, 1);