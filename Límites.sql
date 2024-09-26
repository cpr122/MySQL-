Los rangos en la base de datos con MySQL se utilizan para limitar los resultados de una consulta. Los rangos se establecen con la cláusula "LIMIT" y se pueden utilizar de varias maneras:

1. Limitar el número de resultados:
    - LIMIT 10; // Muestra solo los primeros 10 resultados.
2. Saltar resultados y luego limitar:
    - LIMIT 10 OFFSET 20; // Salta los primeros 20 resultados y muestra los siguientes 10.
3. Limitar resultados y saltar:
    - LIMIT 10, 20; // Muestra los resultados del 10 al 20.

También se pueden utilizar rangos con la cláusula "WHERE" para filtrar resultados.

Por ejemplo:
```
SELECT * FROM usuarios WHERE edad BETWEEN 18 AND 25;
```
Esto mostrará todos los usuarios con edad entre 18 y 25 años.

Otro ejemplo:
```
SELECT * FROM usuarios WHERE edad IN (18, 20, 25);
```
Esto mostrará todos los usuarios con edad 18, 20 o 25 años.

Recuerda que los rangos se pueden utilizar de diferentes maneras dependiendo de tus necesidades.
