CREATE TABLE profesor (
  id INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(50) noT NULL,
  apellido VARCHAR(50) noT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  salario INT not NULL
);

INSERT INTO profesor VALUES (1, "Juan","Pérez",'1990-06-06',55000),
(2, "Maria Emilia","Paz",'1984-07-15',72000),
(3, "Martín","Correa",'1987-12-07',63000),
(4, "Lucía","Díaz",'1991-02-24',45000),
(5, "Raúl","Martínez",'1980-10-15',85000),
(6, "Mabel","Ríos",'1982-06-12',83000);

CREATE TABLE curso (
  codigo INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(50) noT NULL,
  descripcion varchar(200),
  cupo INT NOT NULL,
  turno VARCHAR(20) NOT NULL,
  PROFESOR_id INT FOREING KEY
);

INSERT INTO curso VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos",35, "Mañana", 1),
  (102, "Matemática Discreta","", 20,"Tarde",2),
  (103, "Programación Java","POO en Java", 35,"Noche",4),
  (104, "Programación web","", 35,"Noche",5),
  (105, "Programación C#",".NET, Visual Studio 2019", 30,"Noche",6);

SELECT profesor.Apellido , curso.Nombre, curso.turno
FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;