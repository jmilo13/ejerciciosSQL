--crea la tabla
CREATE TABLE cursos (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(50) noT NULL,
  description varchar(200),
  turn VARCHAR(20) NOT NULL
);
--agrega el campo cupos
ALTER TABLE cursos ADD cupos
--inserta valores
INSERT INTO cursos VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35),
  (102, "Matemática Discreta","","Tarde",30)
--errores
INSERT INTO cursos VALUES (103, null,"","Tarde",32)
INSERT INTO cursos VALUES (102, "Fundamentos POO","","Mañana",32)
--actualiza el cupo de todos los registros
UPDATE cursos SET cupo=25
--elimina el curso algoritmos
DELETE from cursos where id=101