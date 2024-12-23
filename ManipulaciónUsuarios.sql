*Práctica 2: Manipulación de usuarios*

*Ejercicio 1: Otorgar permisos básicos*

```
GRANT SELECT ON biblioteca.* TO 'lector'@'%';
```

*Ejercicio 2: Otorgar permisos de escritura*

```
GRANT INSERT, UPDATE ON biblioteca.libros TO 'lector'@'%';
```

*Ejercicio 3: Revocar permisos específicos*

```
REVOKE INSERT, UPDATE ON biblioteca.libros FROM 'lector'@'%';
```

*Ejercicio 4: Modificar permisos existentes*

```
GRANT SELECT ON biblioteca.* TO 'lector'@'%';
GRANT SHOW DATABASES ON *.* TO 'lector'@'%';
```

*Ejercicio 5: Eliminar usuarios*

```
DROP USER 'lector'@'%';
``
