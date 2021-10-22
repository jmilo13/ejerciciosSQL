--consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.
SELECT ESTUDIANTE_legajo, COUNT(CURSO_codigo) as 'Cantidad de cursos'
FROM INSCRIPCION
GROUP by ESTUDIANTE_legajo;
--consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.
SELECT ESTUDIANTE_legajo, COUNT(CURSO_codigo) as 'Cantidad de cursos'
FROM INSCRIPCION
GROUP by ESTUDIANTE_legajo
HAVING COUNT(CURSO_codigo) > 1;
--consulta que devuelva la información de los estudiantes que no realizan ningún curso.
SELECT * 
FROM ESTUDIANTE e LEFT JOIN INSCRIPCION i ON e.legajo = i.ESTUDIANTE_legajo
WHERE i.numero = NULL
--Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una.
  --PROFESOR = id = índice clousterizado
  --CURSO = codigo = índice clousterizado
  --INSCRIPCION = numero = índice clousterizado
  --ESTUDIANTE = legajo = índice clousterizado
--Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.
SELECT *
FROM ESTUDIANTE e 
  INNER JOIN INSCRIPCION i ON e.legajo = i.ESTUDIANTE_legajo
  INNER JOIN CURSO c ON i.CURSO_codigo = c.codigo
  INNER JOIN PROFESOR p ON c.PROFESOR_id = p.id
WHERE p.apellido = 'Pérez' OR p.apellido = 'Paz'

