--! SELECT
--todo: se utiliza para especificar las columnas que deseas ver
-- ejemplo:

SELECT nombre,edad FROM empleados;

--! FROM
-- todo: especifica la tabla de la que se van a extraer los datos
-- ejemplo;

SELECT * FROM productos;

--* en este caso el (*) significa que se estan seleccionado todos los registros de la tabla


--! WHERE
-- todo: filtra los resultados de una consulta segun condiciones especificas

-- ejemplo: 

SELECT nombre FROM empleados WHERE edad > 30;

--* en este ejemplo se seleccionan los nombres cuya edad sea mayor a 30


--! ORDER BY
-- todo: ordena los resultados de una consulta en ascendente o descentente

-- ejemplo:

SELECT nombre, salario FROM empleados ORDER BY salario DESC;
SELECT nombre, salario FROM empleados ORDER BY salario ASC;

--* en estos ejemplos se selecciona el nombre y el salario de los empleados, ordenandolos por salario en orden ascendente y descentente

--! GROUP BY
-- todo: agrupa los resultados de una consulta en base a una o varias columnas

-- ejemplo:

SELECT departamento, COUNT(*) FROM empleados GROUP BY departamento;

--* en este ejemplo se contaria el numero de empleados en cada departamento


--! HAVING
-- todo: filtra los grupos de resultados (similar al WHERE, pero se sua despues de un GROUP BY)

-- ejemplo

SELECT departamento, COUNT(*) FROM empleados GROUP BY departamento HAVING COUNT(*) > 5;

--* en este ejemplo muestra solo aquellos departamentos con mas de 5 empleados

--!  ******************** JOIN **********************
-- todo: combina filas de dos o mas tablas en base a una columna en comun





--! INSERT INTO
-- todo: inserta nuevos datos en una tabla 

-- ejemplo:

INSERT INTO empleados (nombre, edad, departamento) VALUES ('Ana', 28, 'Ventas');

--* agrega un nuevo registro en la tabla "empleados" con los valores dados


--! UPDATE
--  todo: modifica datos existentes en una tabla

-- ejemplo:

UPDATE empleados SET salario = 5000 WHERE nombre = "Juan";

--* modifica datos existentes en una tabla


--! DELETE
-- todo: elimina registros de una tabla 

-- ejemplo:

DELETE FROM empleados WHERE edad < 18;

--* en este ejemplo elimina los registros de empleados que tengan una edad menor a 18 años


--! LIKE
-- todo: se utiliza en el "WHERE" para buscar un patron especifico en una columna

-- ejemplo:

SELECT nombre FROM empleados WHERE nombre LIKE 'J%';

--* en este ejemplo selecciona  los nombres de la tabla empleados que inician con la letra "J"


--! DISTINCT
-- todo: elimina valores duplicados en los resultados

-- ejemplo: 

SELECT DISTINCT departamento from empleados;

--* en este ejemplo se muestran los departamentos unicos en la tabla "empleados"



-- ! *****FUNCIONES DE AGREGADO (realizar calculos sobre un conjunto de datos)******


--! COUNT
-- ejemplo:

SELECT COUNT(*) FROM empleados;

--* en este ejemplo se cuenta el total de empleados registrados


--! SUM
-- ejemplo:

SELECT SUM(salario) FROM empleados;

--* en este ejemplo se suman todos los salarios de los empleados


--! AVG
-- ejemplo:

SELECT AVG(salario) FROM empleados;

--* en este ejemplo se calcula el salario promedio de los empleados


--! MAX
-- ejemplo: 

SELECT MAX(edad) FROM empleados;

--* en este ejemplo se calcula la edad maxima de los empleados


--! MIN
-- ejemplo:

SELECT MIN(edad) FROM empleados;

--* en este ejemplo se calcula la edad minima de los empleados



-- ! *****FUNCIONES DE CONVERSION DE MAYUSCULAS Y MINUSCULAS (VARIACION DE ACCESS)******

-- !UCASE (su equivalente en sql es "UPPER")
-- todo: convierte texto a mayusculas

-- ejemplo:

SELECT UCASE(nombre) AS NombreMayusculas FROM empleados;


--! LCASE (su equivalente en sql es "LOWER")
-- todo: convierte texto a minusculas

-- ejemplo: 

SELECT LCASE(nombre) AS NombreMinusculas FROM empleados;



--! TRIM
-- todo: se usa para eliminar espacios en blanco al inicio y al final de una cadena de texto

-- ejemplo:

SELECT TRIM(nombre) AS NombreSinEspacios FROM empleados;

--* en este ejemplo se eliminan los espacios en blanco que haya en la columna "nombre"