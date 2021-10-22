-- Crear una tabla persona sin primary key y solamente con dos campos: id y nombre
CREATE TABLE PERSONA(
  id INT, 
  nombre varchar(20)
);
-- Inserte datos siguiendo un orden no secuencial para el id.
INSERT INTO PERSONA values (8,'Juan'),
(1,'Mateo 2'),
(5,'Marcos 3'),
(6,'Lucas 4');
-- Consulte los datos para visualizar el orden de registros.
SELECT * from PERSONA --orden id = 8, 1, 5, 6
-- Agregue una clave primaria para el campo id.
ALTER TABLE PERSONA ADD CONSTRAINT pk_id PRIMARY key(id);
-- Consulte los datos para visualizar el orden de registros.
SELECT * from PERSONA --orden id = 1, 5, 6, 8