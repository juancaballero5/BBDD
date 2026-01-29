USE EMPRESA;

/* 1. Hallar el nombre de los empleados que no tienen comisión, clasificados
de manera que aparezca primero aquellos nombres que son más cortos.*/

SELECT NOMEM
FROM temple
WHERE COMIS IS NULL
ORDER BY LEN (NOMEM);

/* 2. Hallar, por orden alfabético, los nombres de los empleados suprimiendo
las dos últimas letras. Utiliza alias de columna.*/

SELECT NOMEM
FROM temple