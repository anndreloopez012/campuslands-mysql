# Ejercicio 008 - UPDATE para Fútbol Sala

## Descripción

Este proyecto implementa una base de datos sencilla de **fútbol sala** en MySQL. El objetivo principal es practicar la sentencia **UPDATE**, además de la creación de tablas, inserción de datos y consultas SQL.

---

## Estructura del proyecto

```text
resoluciones/lucas-pajarito/
├── README.md
├── ddl/
│   └── schema.sql
├── dml/
│   └── inserts.sql
└── dql/
    └── consultas.sql
```

---

## Tabla creada

### jugadores_futsal

Almacena información de jugadores:

* Nombre
* Posición
* Edad
* Goles
* Asistencias
* Partidos jugados
* Estado

### Restricciones aplicadas

* Edad entre **14 y 40 años**.
* Goles, asistencias y partidos jugados no pueden ser negativos.
* Posición y estado controlados mediante `ENUM`.

---

## Datos insertados

Se registraron **10 jugadores** con posiciones diferentes:

* Portero
* Defensa
* Ala
* Pivot

Los datos permiten probar filtros, cálculos y ordenamientos.

---

## Operaciones UPDATE realizadas

1. Modificación de goles de un jugador.
2. Cambio de estado de un jugador.
3. Incremento automático de partidos jugados.

Estas operaciones demuestran el uso práctico de `UPDATE`.

---

## Consultas implementadas

1. Top 5 goleadores.
2. Listado de jugadores activos.
3. Promedio de goles por posición.
4. Jugadores con más de 10 goles.
5. Resumen estadístico de jugadores activos.
6. Promedio de goles por partido.

---

## Orden de ejecución

Ejecutar los archivos en este orden:

```sql
SOURCE ddl/schema.sql;
SOURCE dml/inserts.sql;
SOURCE dql/consultas.sql;
```

O ejecutarlos manualmente desde **MySQL Workbench**.

---

## Resultados esperados

El sistema permitirá:

* Consultar rankings de jugadores.
* Identificar jugadores activos.
* Analizar rendimiento ofensivo.
* Ver estadísticas generales del equipo.
* Validar cambios realizados con `UPDATE`.

---

## Tecnologías utilizadas

* MySQL 8.x
* SQL DDL
* SQL DML
* SQL DQL

---

## Autor

**Lucas Pajarito**

Proyecto académico desarrollado para practicar operaciones `UPDATE` y consultas SQL en MySQL.
