--Total de estudiantes en la carrera Mecanica (código 102)
SELECT COUNT(ESTUDIANTE_legajo) 
FROM INSCRIPCION 
WHERE CURSO_codigo = 102;

--salario mínimo de los profesores nacidos en la década del 80
SELECT MIN(salario)
FROM PROFESOR
WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31';

--CONSULTAS A PARTIR DE MODELO RELACIONAL:
  --Cantidad de pasajeros por país
  SELECT COUNT(idpasajero) 
  FROM PASAJERO 
  GROUP BY idpais

  --Suma de todos los pagos realizados
  SELECT SUM(monto)
  FROM PAGO

  --Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales
  SELECT idpasajero as 'Id pasajero', ROUND(SUM(monto),2) as 'Total por pasajero'
  SELECT ROUND(SUM(monto),2)
  FROM PAGO
  GROUP BY idpasajero

  --Promedio de los pagos que realizó un pasajero.
  SELECT idpasajero as 'Id pasajero', AVG(monto) as 'Promedio por pasajero'
  FROM PAGO
  GROUP BY idpasajero