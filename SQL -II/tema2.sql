--Nombre, apellido y cursos que realiza cada estudiante
SELECT e.nombre, e.apellido, c.nombre
FROM ESTUDIANTE e INNER JOIN CURSO c ON e.legajo = c.ESTUDIANTE_legajo;

--Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
SELECT e.nombre, e.apellido, c.nombre
FROM ESTUDIANTE e INNER JOIN CURSO c ON e.legajo = c.ESTUDIANTE_legajo;
ORDER BY c.nombre;

--Nombre, apellido y cursos que dicta cada profesor
SELECT p.nombre, p.apellido, c.nombre
FROM PROFESOR p INNER JOIN CURSO c ON p.id = c.PROFESOR_id;

--Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
SELECT p.nombre, p.apellido, c.nombre
FROM PROFESOR p INNER JOIN CURSO c ON p.id = c.PROFESOR_i
ORDER BY c.nombre;

--Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
SELECT c.codigo, c.cupo - COUNT (*) as 'Cupos disponibles'
FROM CURSO c  LEFT JOIN  INSCRIPCION i ON i.CURSO_codigo = c.codigo
GROUP by i.CURSO_codigo;

--Cursos cuyo cupo disponible sea menor a 10
SELECT c.codigo, c.cupo - COUNT(i.CURSO_codigo) as disponible
FROM CURSO c  LEFT JOIN  INSCRIPCION i ON i.CURSO_codigo = c.codigo
GROUP BY c.codigo
HAVING disponible < 10;