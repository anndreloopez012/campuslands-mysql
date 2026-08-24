# Paracaidismo

## Nombre del alumno
**Lester Garcia**
_____________________________________

## Descripción general

Este proyecto implementa una base de datos relacional en MySQL para administrar información relacionada con una actividad de paracaidismo.

El sistema permite registrar paracaidistas, instructores, zonas de salto, saltos y participantes de cada actividad.

La solución está organizada mediante archivos DDL, DML y DQL.

## Objetivo

Practicar el uso de `HAVING` en MySQL mediante consultas que permitan filtrar grupos después de aplicar funciones de agregación.

## Estructura del proyecto

- `ddl.sql`: creación de la base de datos, tablas, relaciones y restricciones.
- `dml.sql`: inserción de datos de prueba.
- `dql.sql`: consultas y reportes.
- `README.md`: documentación del ejercicio.

## Modelo de datos

La base de datos está compuesta por:

- `paracaidistas`
- `instructores`
- `zonas_salto`
- `saltos`
- `participantes_salto`

La tabla `participantes_salto` funciona como tabla puente entre los paracaidistas y los saltos.

Esto permite representar correctamente que un paracaidista puede participar en diferentes saltos y que un salto puede tener varios participantes.

## Explicación general de la solución

La estructura fue diseñada para almacenar información relacionada con las actividades de una empresa o academia de paracaidismo.

Los paracaidistas pueden participar en diferentes saltos.

Cada salto está asociado a un instructor y a una zona determinada.

La tabla `participantes_salto` registra el resultado de la participación.

## Uso de HAVING

El concepto principal del ejercicio es `HAVING`.

`HAVING` permite filtrar los resultados después de utilizar `GROUP BY` y funciones de agregación.

Por ejemplo:

```sql
GROUP BY id_paracaidista
HAVING COUNT(id_salto) > 2;
```

Primero se agrupan los saltos por paracaidista.

Después se cuentan los saltos de cada grupo.

Finalmente se muestran únicamente los grupos que cumplen la condición.

## Diferencia entre WHERE y HAVING

`WHERE` filtra registros antes de realizar la agrupación.

`HAVING` filtra grupos después de realizar la agrupación.

Ejemplo:

```sql
WHERE resultado = 'Exitoso'
```

filtra los registros individuales.

Mientras:

```sql
HAVING COUNT(id_salto) > 2
```

filtra los grupos creados por `GROUP BY`.

## Consultas realizadas

### Consulta 1: Paracaidistas con más de dos saltos exitosos

Permite identificar los paracaidistas que tienen más de dos participaciones exitosas.

### Consulta 2: Instructores con más de dos saltos

Permite identificar los instructores que han participado en más de dos saltos.

### Consulta 3: Zonas con más de tres participantes exitosos

Permite conocer qué zonas han registrado más de tres participantes exitosos.

### Consulta 4: Ingresos por tipo de salto

Agrupa los saltos por tipo y muestra únicamente aquellos que generan más de $2.000.000.

## Decisiones técnicas

Se utilizaron claves primarias para identificar cada registro.

Las claves foráneas permiten mantener la integridad referencial entre las diferentes entidades.

La tabla `participantes_salto` utiliza una clave primaria compuesta:

```sql
PRIMARY KEY (id_salto, id_paracaidista)
```

Esto evita registrar dos veces al mismo paracaidista dentro del mismo salto.

Se utilizaron restricciones `CHECK` para controlar los niveles de los paracaidistas, resultados de los saltos, costos y valores numéricos.

Las consultas fueron diseñadas utilizando `GROUP BY` junto con `COUNT()` y `SUM()` para posteriormente aplicar condiciones mediante `HAVING`.

## Evidencia

La evidencia del ejercicio debe incluir capturas de pantalla de:

1. La creación de la base de datos.
2. La creación de las tablas.
3. La inserción de los datos.
4. La consulta de paracaidistas con más de dos saltos.
5. La consulta de instructores con más de dos saltos.
6. La consulta de zonas con más de tres participantes.
7. La consulta de ingresos por tipo de salto.

## Ejecución

Los archivos deben ejecutarse en el siguiente orden:

1. `ddl.sql`
2. `dml.sql`
3. `dql.sql`

Primero se crea la estructura de la base de datos, posteriormente se cargan los datos y finalmente se ejecutan las consultas.