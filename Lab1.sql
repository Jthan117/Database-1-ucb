
--Asi se escribe un comentario en SQL

--Crear una base de datos
create database DATABASE_UCB

--Utilizar la base de datos
use DATABASE_UCB

--Crear las tablas de informaci�n (entidades)
create table ESTUDIANTES (
	ID					INT IDENTITY(1, 1),
	NOMBRE_COMPLETO		VARCHAR(200) NOT NULL,
	CARNET				INT NOT NULL,
	GENERO				VARCHAR(20) NOT NULL,
	EDAD				INT NOT NULL
);
--Insertar datos a la tabla ESTUDIANTES
INSERT INTO ESTUDIANTES (NOMBRE_COMPLETO, CARNET, GENERO, EDAD) 
VALUES ('Juan Perez', 7854933, 'Masculino', 99);


-- Insertar 10 tuplas en la tabla ESTUDIANTES
INSERT INTO ESTUDIANTES (NOMBRE_COMPLETO, CARNET, GENERO, EDAD)
VALUES
(
    'Juan P�rez Garc�a',
    123456789,
    'M',
    25
),
(
    'Mar�a S�nchez L�pez',
    987654321,
    'F',
    20
),
(
    'Jos� Gonz�lez Fern�ndez',
    321456789,
    'M',
    19
),
(
    'Pedro Rodr�guez G�mez',
    789456123,
    'M',
    21
),
(
    'Ana Mart�nez P�rez',
    543216789,
    'F',
    22
),
(
    'Luis Fern�ndez Garc�a',
    963214578,
    'M',
    23
),
(
    'Carmen L�pez S�nchez',
    789543216,
    'F',
    24
),
(
    'David Gonz�lez Fern�ndez',
    654321789,
    'M',
    25
),
(
    'Laura Garc�a P�rez',
    987543216,
    'F',
    26
);



--MANIPULAR UNA BASE DE DATOS

SELECT *
FROM ESTUDIANTES
WHERE EDAD < 20