# Ejercicio 007 - ORDER BY para Liga de Fútbol

## Descripción

Esta solución implementa una tabla para administrar información de una liga de fútbol utilizando **MySQL** sobre la base de datos existente **campuslands_mysqli**.

El objetivo principal es practicar el uso de la cláusula **ORDER BY** para ordenar información de diferentes maneras.

---

## Estructura del proyecto

```
wilder-catu/
├── README.md
├── ddl/
│   └── schema.sql
├── dml/
│   └── inserts.sql
└── dql/
    └── consultas.sql
```

---

## Función de cada archivo

### ddl/schema.sql

Este archivo contiene la estructura de la tabla `equipos`.

Funciones:

- Utiliza la base de datos `campuslands_mysqli`.
- Elimina la tabla si existe.
- Crea la tabla con sus columnas.
- Define restricciones de integridad (`PRIMARY KEY`, `NOT NULL`, `CHECK` y `ENUM`).

---

### dml/inserts.sql

Contiene los datos iniciales para realizar pruebas.

Incluye:

- 10 equipos de fútbol.
- Diferentes cantidades de puntos.
- Distintas diferencias de goles.
- Equipos activos e inactivos.

---

### dql/consultas.sql

Contiene consultas utilizando **ORDER BY**.

Las consultas permiten:

1. Mostrar la tabla de posiciones por puntos.
2. Ordenar los equipos alfabéticamente.
3. Mostrar el ranking por diferencia de goles.
4. Ordenar entrenadores por nombre.
5. Ordenar por partidos jugados.
6. Mostrar equipos activos ordenados por puntaje.

---

## Ejecución

Ejecutar los archivos en el siguiente orden:

1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

---

## Decisiones técnicas

- Se utiliza la base de datos existente **campuslands_mysqli**.
- No se crea una nueva base de datos.
- Se emplean nombres descriptivos para tablas y columnas.
- Se utilizan restricciones para asegurar la integridad de la información.
- Las consultas emplean alias para mejorar la presentación de los reportes.

---

## Requisitos cumplidos

- ✔ Uso de MySQL.
- ✔ Uso de la base de datos `campuslands_mysqli`.
- ✔ Separación entre DDL, DML y DQL.
- ✔ Más de 8 registros.
- ✔ Más de 5 consultas.
- ✔ Uso de ORDER BY.
- ✔ Restricciones de integridad.
- ✔ Datos suficientes para realizar ordenamientos y validaciones.