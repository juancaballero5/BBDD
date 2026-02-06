USE EMPRESA;

/* 1. Hallar el nombre de los empleados que no tienen comisión, clasificados
de manera que aparezca primero aquellos nombres que son más cortos.*/

SELECT NOMEM
FROM temple
WHERE COMIS IS NULL
ORDER BY LEN (NOMEM);

/* 2. Hallar, por orden alfabético, los nombres de los empleados suprimiendo
las dos últimas letras. Utiliza alias de columna.*/

SELECT LEFT (NOMEM , LEN(NOMEM) - 2)  AS 'Nombre'
FROM temple
ORDER BY 1 ASC;

/* 3. Hallar cuántos departamentos hay y el presupuesto anual medio de
ellos. Utiliza alias de columna.*/

SELECT COUNT(NUMDE) AS 'Departamento', PRESU AS 'Presupuesto'
FROM tdepto;

/* 4. Hallar la masa salarial anual (salario más comisión) de la empresa (se
suponen 14 pagas anuales).*/

SELECT (SALAR + ISNULL(COMIS , 0)) * 14 AS 'MasaAnual'
FROM temple;

/* 5. Obtener el nombre y la masa salarial anual (salario más comisión) de
cada empleado (se suponen 14 pagas anuales). Ordenar
ascendentemente por el nombre del empleado. Utiliza alias para las
columnas y ordenar ascendentemente por el nombre del empleado.
Hacer el ejercicio de cuatro formas diferentes:*/

-- Utilizando la función ISNULL.

SELECT NOMEM AS 'Empleado', (SALAR + ISNULL(COMIS , 0)) * 14 AS 'MasaAnual'
FROM temple
ORDER BY 1;

-- Utilizando la función IIF.

SELECT NOMEM AS 'Empleado', IIF(COMIS IS NULL ,SALAR *14 , (SALAR + COMIS) * 14 ) AS 'Masa Anual'
FROM temple
ORDER BY 1;

-- Utilizando el operador UNION.
-- Utilizando una expresión CASE.


