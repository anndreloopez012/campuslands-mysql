# Estudio de Tatuajes

## Nombre del alumno
**Lester Garcia**
_____________________________________

## Descripción general

Este proyecto implementa una base de datos relacional en MySQL para administrar información relacionada con un estudio profesional de tatuajes.

El sistema permite registrar clientes, tatuadores, estilos, diseños de tatuajes y citas.

La solución está organizada mediante archivos DDL, DML y DQL.

## Objetivo

Practicar el uso de **subconsultas en MySQL** mediante diferentes escenarios de análisis de información.

El ejercicio utiliza subconsultas escalares, `IN`, `EXISTS` y una subconsulta correlacionada.

## Estructura del proyecto

- `ddl.sql`: creación de la base de datos, tablas, relaciones y restricciones.
- `dml.sql`: inserción de datos de prueba.
- `dql.sql`: consultas y subconsultas.
- `README.md`: documentación del ejercicio.

## Modelo de datos

La base de datos está compuesta por:

- `clientes`
- `tatuadores`
- `estilos`
- `tatuajes`
- `citas`

La tabla `citas` relaciona a los clientes con los diseños de tatuajes seleccionados.

Cada tatuaje está relacionado con un tatuador y un estilo.

## Explicación general de la solución

La información se dividió en diferentes tablas para evitar duplicidad de datos y mantener una estructura organizada.

Los clientes pueden tener diferentes citas.

Cada cita está asociada con un tatuaje.

Los tatuajes pertenecen a un estilo y son realizados por un tatuador determinado.

El concepto principal del ejercicio son las subconsultas.

## ¿Qué es una subconsulta?

Una subconsulta es una consulta SQL que se encuentra dentro de otra consulta.

Por ejemplo:

```sql
SELECT AVG(precio)
FROM tatuajes;
```

puede utilizarse dentro de otra consulta:

```sql
WHERE precio > (
    SELECT AVG(precio)
    FROM tatuajes
);
```

La consulta interna obtiene un valor que posteriormente utiliza la consulta externa.

## Tipos de subconsultas utilizadas

### Subconsulta escalar

Utilizada para obtener el precio promedio de los tatuajes.

```sql
SELECT AVG(precio)
FROM tatuajes;
```

Devuelve un único valor.

### Subconsulta con IN

Utilizada para identificar tatuadores que tienen diseños superiores a determinado precio.

### Subconsulta con EXISTS

Utilizada para comprobar si un cliente tiene al menos una cita completada.

### Subconsulta correlacionada

Utilizada para comparar la duración de cada tatuaje con el promedio de duración de su propio estilo.

## Consultas realizadas

### Consulta 1: Tatuajes sobre el precio promedio

Identifica los diseños cuyo precio está por encima del promedio general.

### Consulta 2: Tatuadores con diseños costosos

Identifica los tatuadores que tienen al menos un diseño con precio superior a $700.000.

### Consulta 3: Clientes con citas completadas

Identifica los clientes que tienen al menos una cita cuyo estado es `Completada`.

### Consulta 4: Duración superior al promedio del estilo

Identifica los tatuajes cuya duración supera el promedio de duración de los tatuajes pertenecientes al mismo estilo.

## Decisiones técnicas

Se utilizaron claves primarias para identificar de manera única los registros.

Las claves foráneas mantienen la integridad referencial entre las diferentes entidades.

Se utilizaron restricciones `CHECK` para evitar valores inválidos en precios, duración, experiencia y estados.

Las consultas fueron diseñadas para demostrar diferentes formas de utilizar subconsultas.

La cuarta consulta utiliza una subconsulta correlacionada debido a que el promedio depende del estilo del registro que se está evaluando.

## Evidencia

La evidencia del ejercicio debe incluir capturas de pantalla de:

1. La creación de la base de datos.
2. La creación de las tablas.
3. La inserción de los datos.
4. La consulta de tatuajes por encima del promedio.
5. La consulta de tatuadores con diseños superiores a $700.000.
6. La consulta de clientes con citas completadas.
7. La consulta de tatuajes con duración superior al promedio de su estilo.

## Ejecución

Los archivos deben ejecutarse en el siguiente orden:

1. `ddl.sql`
2. `dml.sql`
3. `dql.sql`

Primero se crea la estructura, posteriormente se cargan los datos y finalmente se ejecutan las consultas.