CREATE DATABASE peluqueria_canina; 

use peluqueria_canina; 

SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE `dueno` (
    `DNI` INT PRIMARY KEY NOT NULL,
    `Nombre` VARCHAR(50) NOT NULL,
    `Apellido` VARCHAR(50) NOT NULL,
    `Telefono` INT NOT NULL,
    `Direccion` VARCHAR(50) NOT NULL
);
 
 CREATE TABLE `perro` (
  `ID_Perro` int primary key NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(45) NOT NULL,
  `DNI_dueno` int NOT NULL,
  KEY `DNI_dueno_idx` (`DNI_dueno`),
  CONSTRAINT `DNI_dueno` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`)
);

 CREATE TABLE `historial` (
  `ID_historial` varchar(50) primary key NOT NULL,
  `Fecha` date NOT NULL,
  `Perro` int NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Monto` int NOT NULL,
  KEY `Perro_idx` (`Perro`),
  CONSTRAINT `Perro` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`)
);

# dueno #

INSERT INTO dueno VALUES ('79503962', 'Guillermo', 'Peron', '44585', '669162534');
INSERT INTO dueno VALUES ('82842571', 'Silvio', 'Behr', '55556', '626351429');
INSERT INTO dueno VALUES ('61142000', 'Jorge', 'Pipo','75548', '448556658' );
INSERT INTO dueno VALUES ('46900725', 'Luis','Kloe', '89595', '679837625');
INSERT INTO dueno VALUES ('85366986', 'Elba', 'Munich', '56598', '54545454');
INSERT INTO dueno VALUES ('73571384', 'Camila', 'Ramirez', '5458562', '950896725');
INSERT INTO dueno VALUES ('82937751', 'Sofia', 'Fernandez', '58562', '950263514');
INSERT INTO dueno VALUES ('80502866', 'Ramiro', 'Rojas', '665952', '668726354');

# perro #

INSERT INTO perro VALUES (3303, 'rati', '2020-08-21', 'H','669162534');
INSERT INTO perro VALUES (3304, 'ramon', '2021-09-22', 'H','626351429');
INSERT INTO perro VALUES (3310, 'alvert', '1999-04-14', 'M','448556658');
INSERT INTO perro VALUES (3308, 'benedetto', '2019-03-01', 'M','679837625');
INSERT INTO perro VALUES (3309, 'roman', '2020-02-20', 'H','54545454');
INSERT INTO perro VALUES (4021, 'beto', '2022-01-26', 'H','950896725');
INSERT INTO perro VALUES (4022, 'euge', '2001-11-28', 'H','950263514');
INSERT INTO perro VALUES (2325, 'ramiro','2006-12-29', 'M','668726354');

# historial #

INSERT INTO historial VALUES (1, '2022-04-22', 3303, 'básica', 4500);
INSERT INTO historial VALUES (2, '2020-03-22', 3304, 'básica', 2370);
INSERT INTO historial VALUES (3, '2019-09-20', 3310, 'básica', 3550);
INSERT INTO historial VALUES (4, '2022-04-22', 3308, 'básica', 4850);
INSERT INTO historial VALUES (5, '2021-10-19', 3309, 'alta', 5500);
INSERT INTO historial VALUES (6, '2022-04-19', 4021, 'básica', 3500);
INSERT INTO historial VALUES (7, '2019-04-22', 4022, 'básica', 3700);
INSERT INTO historial VALUES (8, '2020-05-21', 2325, 'alta', 4505);

#Obtener todos los perros que asistieron a la peluquería en 2022#

Select Fecha
from historial
where Fecha between '2022-01-01' and '2022-12-31';
