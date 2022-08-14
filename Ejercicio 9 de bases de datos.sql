/*Punto 1. Crear base de datos y tablas*/
DROP DATABASE IF EXISTS pelucanina;

CREATE DATABASE pelucanina;
USE pelucanina;

CREATE TABLE dueño (
DNI int PRIMARY KEY NOT NULL,
Nombre varchar(30) NOT NULL, 
Apellido varchar(25) NOT NULL, 
Telefono int NOT NULL, 
Direccion varchar(50)
);

CREATE TABLE perro (
ID_Perro int PRIMARY KEY NOT NULL auto_increment, 
Nombre varchar(30) NOT NULL, 
Fecha_nacimiento date NULL, 
Sexo varchar(15) NOT NULL,
DNI_Dueño int,
constraint fk_DNI_Dueño FOREIGN KEY(DNI_Dueño) REFERENCES Dueño(DNI)
);

CREATE TABLE historial (
ID_Historial int PRIMARY KEY  NOT NULL auto_increment,
Fecha DATETIME NOT NULL,
Descripcion varchar(200) NULL, 
Monto DOUBLE NOT NULL,
Perro int,
constraint fk_Perro FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro) 
);

/*Punto 2. Agregar nuevo animal y dueño asociado*/
INSERT INTO pelucanina.Dueño (
DNI, Nombre, Apellido, Telefono, Dirección)
VALUES(41087647, "Alejandro", "Vergara", 3517520868, "España 673");

INSERT INTO pelucanina.Perro (
Nombre, Fecha_nacimiento, Sexo, DNI_dueño)
VALUES("Hulk", "2022-04-19", "Macho", 41087647);

/*Punto 9. Actualizar la dirección del dueño*/
SELECT*FROM pelucanina.Dueño; #Consulto los datos de los dueños

UPDATE pelucanina.Dueño
SET Direccion = "Libertad 123"
WHERE DNI =41087647;

SELECT*FROM pelucanina.Dueño; #Consulto los datos del dueño para verificar que cambió la dirección



