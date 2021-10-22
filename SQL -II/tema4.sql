--consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
SELECT COUNT(*) as 'Cantidad profesores'
FROM(SELECT c.nombre
FROM curso c LEFT JOIN profesor p ON p.id = c.PROFESOR_id
WHERE turno = "Noche"
group by id having count(*) > 1);
--consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
SELECT * 
FROM ESTUDIANTE e INNER JOIN INSCRIPCION i ON i.ESTUDIANTE_legajo = e.legajo
WHERE i.CURSO_codigo <> 105