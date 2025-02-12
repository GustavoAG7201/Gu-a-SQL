--! Crear una base de datos si no existe
CREATE DATABASE IF NOT EXISTS prueba;
USE prueba;

-- Crear una tabla con restricciones
CREATE TABLE roles (
    id_rol INT PRIMARY KEY AUTO_INCREMENT,  -- Clave primaria autoincremental
    nombre_rol VARCHAR(50) UNIQUE,         -- Valor único
    turno VARCHAR(20) NOT NULL,            -- No acepta valores nulos
    cp VARCHAR(6) DEFAULT '88000',         -- Valor por defecto
    edad INT(3) CHECK (edad > 18)          -- Verifica que la edad sea mayor a 18
);

--! DDL (Lenguaje de Definición de Datos)

--! Crear una base de datos
CREATE DATABASE nombreBD;

--! Verificar si la base de datos ya existe antes de crearla
CREATE DATABASE IF NOT EXISTS nombreBD;

--! Visualizar bases de datos existentes
SHOW DATABASES;

--! Usar una base de datos específica
USE nombreBD;

--! Eliminar una base de datos
DROP DATABASE nombreBD;

--! Modificar una tabla (agregar columna)
ALTER TABLE nombre_tabla
ADD COLUMN rfc VARCHAR(13) UNIQUE;

--! Eliminar una tabla
DROP TABLE nombre_tabla;

--! Renombrar una tabla
RENAME TABLE nombre_tabla TO nuevo_nombre;

--! Modificar una tabla (eliminar columna)
ALTER TABLE nombre_tabla
DROP COLUMN nombre_columna;

--! Actualizar datos en una tabla
UPDATE nombre_tabla
SET campo_a_actualizar = 'nuevo_valor'
WHERE id_tabla = 1;

--! Eliminar registros de una tabla
DELETE FROM nombre_tabla
WHERE id_tabla = 1;

--! Truncar una tabla (eliminar todos los registros)
TRUNCATE TABLE nombre_tabla;

--! Seleccionar datos con condiciones
SELECT * FROM nombre_tabla
WHERE campo LIKE '%o';  -- Termina con 'o'

--! Unir tablas con INNER JOIN
SELECT roles.rol, usuarios.nombre
FROM roles
INNER JOIN usuarios ON usuarios.id_rol = roles.id_rol;

--! Limitar el número de registros mostrados
SELECT * FROM nombre_tabla
LIMIT 10;  -- Limita a 10 registros

--! Mostrar registros a partir de una fila específica
SELECT * FROM nombre_tabla
LIMIT 5 OFFSET 2;  -- Muestra 5 registros a partir de la fila 2

--! Concatenar campos
SELECT CONCAT(id_rol, ' - ', rol) AS concatenacion
FROM roles;

--! Contar registros
SELECT COUNT(*) AS totalRegistros
FROM roles;

--! Funciones aritméticas
SELECT SUM(id_rol) AS suma FROM roles;
SELECT MIN(id_rol) AS minimo FROM roles;
SELECT MAX(id_rol) AS maximo FROM roles;
SELECT AVG(id_rol) AS promedio FROM roles;

--! Cambiar el conjunto de caracteres de una tabla
ALTER TABLE nombre_tabla
CHARACTER SET utf8;





--******************  G   U   I   A   2   **************************


--! CREACION Y MANIPULACION DE BASES DE DATOS

-- Crear una base de datos
CREATE DATABASE nombreBD;

-- Crear una base de datos con conjunto de caracteres y colación
CREATE DATABASE nombreBD
CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Verificar si la base de datos ya existe antes de crearla
CREATE DATABASE IF NOT EXISTS nombreBD;

-- Mostrar todas las bases de datos
SHOW DATABASES;

-- Usar una base de datos específica
USE nombreBD;

-- Eliminar una base de datos
DROP DATABASE nombreBD;



--! CREACION Y MANIPULACION DE TABLAS

-- Crear una tabla con restricciones
CREATE TABLE tabla (
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Clave primaria autoincremental
    columna1 VARCHAR(50) UNIQUE,        -- Valor único
    columna2 INT NOT NULL,              -- No acepta valores nulos
    columna3 DECIMAL(10, 2) DEFAULT 0,  -- Valor por defecto
    columna4 INT CHECK (columna4 > 0),  -- Verifica una condición
    columna5 VARCHAR(100) COMMENT 'Este es un comentario'  -- Comentario
);

-- Mostrar la estructura de una tabla
DESCRIBE tabla;

-- Renombrar una tabla
RENAME TABLE tabla TO nuevo_nombre;

-- Eliminar una tabla
DROP TABLE tabla;

-- Vaciar una tabla (eliminar todos los registros)
TRUNCATE TABLE tabla;



--! MODIFICACION DE TABLAS

-- Agregar una columna a una tabla
ALTER TABLE tabla
ADD COLUMN nueva_columna tipo_de_dato;

-- Eliminar una columna de una tabla
ALTER TABLE tabla
DROP COLUMN columna_a_eliminar;

-- Modificar el tipo de dato de una columna
ALTER TABLE tabla
MODIFY COLUMN columna nuevo_tipo_de_dato;

-- Agregar una restricción UNIQUE a una columna
ALTER TABLE tabla
ADD UNIQUE (columna);

-- Agregar una clave foránea
ALTER TABLE tabla
ADD CONSTRAINT fk_nombre
FOREIGN KEY (columna) REFERENCES otra_tabla(columna);



--! INSERCION, ACTUALIZACION Y ELIMINACION DE DATOS


-- Insertar un registro en una tabla
INSERT INTO tabla (columna1, columna2)
VALUES ('valor1', 'valor2');

-- Insertar múltiples registros en una tabla
INSERT INTO tabla (columna1, columna2)
VALUES ('valor1', 'valor2'),
       ('valor3', 'valor4'),
       ('valor5', 'valor6');

-- Actualizar un registro en una tabla
UPDATE tabla
SET columna1 = 'nuevo_valor'
WHERE id = 1;

-- Eliminar un registro de una tabla
DELETE FROM tabla
WHERE id = 1;





--! CONSULTAS BASICAS


-- Seleccionar todos los registros de una tabla
SELECT * FROM tabla;

-- Seleccionar columnas específicas
SELECT columna1, columna2 FROM tabla;

-- Filtrar registros con WHERE
SELECT * FROM tabla
WHERE columna1 = 'valor';

-- Ordenar resultados con ORDER BY
SELECT * FROM tabla
ORDER BY columna1 ASC;  -- Orden ascendente (por defecto)

SELECT * FROM tabla
ORDER BY columna1 DESC; -- Orden descendente

-- Limitar el número de registros mostrados
SELECT * FROM tabla
LIMIT 10;

-- Mostrar registros a partir de una fila específica
SELECT * FROM tabla
LIMIT 5 OFFSET 2;  -- Muestra 5 registros a partir de la fila 2



--! CONSULTAS CON FUNCIONES

-- Concatenar columnas
SELECT CONCAT(columna1, ' - ', columna2) AS concatenacion
FROM tabla;

-- Contar registros
SELECT COUNT(*) AS total_registros
FROM tabla;

-- Sumar valores de una columna
SELECT SUM(columna) AS suma
FROM tabla;

-- Calcular el promedio de una columna
SELECT AVG(columna) AS promedio
FROM tabla;

-- Encontrar el valor mínimo de una columna
SELECT MIN(columna) AS minimo
FROM tabla;

-- Encontrar el valor máximo de una columna
SELECT MAX(columna) AS maximo
FROM tabla;



--!CONSULTAS CON JOINS


-- INNER JOIN (intersección de ambas tablas)
SELECT tabla1.columna, tabla2.columna
FROM tabla1
INNER JOIN tabla2 ON tabla1.id = tabla2.id_tabla1;

-- LEFT JOIN (todos los registros de la tabla izquierda y coincidencias de la derecha)
SELECT tabla1.columna, tabla2.columna
FROM tabla1
LEFT JOIN tabla2 ON tabla1.id = tabla2.id_tabla1;

-- RIGHT JOIN (todos los registros de la tabla derecha y coincidencias de la izquierda)
SELECT tabla1.columna, tabla2.columna
FROM tabla1
RIGHT JOIN tabla2 ON tabla1.id = tabla2.id_tabla1;




--!OPERACIONES MATEMATICAS EN CONSULTAS


-- Sumar, restar, multiplicar y dividir
SELECT columna1 + columna2 AS suma,
       columna1 - columna2 AS resta,
       columna1 * columna2 AS multiplicacion,
       columna1 / columna2 AS division
FROM tabla;

-- Calcular el IVA (16%)
SELECT columna * 0.16 AS iva
FROM tabla;

-- Aplicar un descuento
SELECT columna - 10 AS descuento
FROM tabla;




--!FILTROS AVANZADOS


-- Filtrar con LIKE
SELECT * FROM tabla
WHERE columna LIKE '%patron%';  -- Contiene el patrón

SELECT * FROM tabla
WHERE columna LIKE 'patron%';   -- Comienza con el patrón

SELECT * FROM tabla
WHERE columna LIKE '%patron';   -- Termina con el patrón

-- Filtrar con BETWEEN (rango)
SELECT * FROM tabla
WHERE columna BETWEEN valor1 AND valor2;

-- Filtrar con IN (valores específicos)
SELECT * FROM tabla
WHERE columna IN ('valor1', 'valor2', 'valor3');



--!ELIMINACION Y ACTUALIZACION AVANZADA


-- Eliminar registros con condiciones
DELETE FROM tabla
WHERE columna = 'valor';

-- Actualizar múltiples columnas
UPDATE tabla
SET columna1 = 'nuevo_valor1',
    columna2 = 'nuevo_valor2'
WHERE id = 1;


