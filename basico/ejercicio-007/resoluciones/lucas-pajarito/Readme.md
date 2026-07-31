# Ejercicio 007 - ORDER BY para Liga de Fútbol

## Autor

**Nombre:** Lucas Samuel Pajarito Surek

---

# Descripción

Este proyecto corresponde a la resolución del **Ejercicio 007** del nivel **Básico Inicial**, cuyo propósito es aplicar la cláusula **ORDER BY** en MySQL para ordenar información de una base de datos inspirada en una liga de fútbol.

La solución fue desarrollada siguiendo buenas prácticas de programación, utilizando nombres descriptivos, datos coherentes y consultas enfocadas en responder necesidades de negocio.

---

# Objetivo

Diseñar una base de datos sencilla que permita almacenar información de equipos de fútbol y realizar consultas ordenadas mediante la cláusula **ORDER BY**.

---

# Estructura del proyecto

```text
basico/
└── ejercicio-007/
    └── resoluciones/
        └── nombre-apellido/
            ├── README.md
            ├── ddl/
            │   └── schema.sql
            ├── dml/
            │   └── inserts.sql
            └── dql/
                └── consultas.sql
```

---

# Base de datos

Se creó la base de datos:

```sql
campuslands_mysql
```

La solución utiliza una tabla principal:

- **liga_futbol**

Esta tabla almacena la información más relevante de cada equipo participante en la liga, incluyendo ciudad, entrenador, estadísticas deportivas y estado del equipo.

---

# Restricciones implementadas

Para mantener la integridad de los datos se implementaron las siguientes restricciones:

- PRIMARY KEY
- AUTO_INCREMENT
- NOT NULL
- CHECK para validar:
  - Partidos jugados.
  - Partidos ganados.
  - Partidos empatados.
  - Partidos perdidos.
  - Goles a favor.
  - Goles en contra.
  - Puntos.
- ENUM para controlar el estado del equipo (Activo o Inactivo).

Estas validaciones garantizan que únicamente se almacenen datos válidos dentro de la base de datos.

---

# Datos de prueba

Se registraron **10 equipos de fútbol** con información relacionada con:

- Nombre del equipo.
- Ciudad.
- Entrenador.
- Partidos jugados.
- Partidos ganados.
- Partidos empatados.
- Partidos perdidos.
- Goles a favor.
- Goles en contra.
- Puntos obtenidos.
- Estado del equipo.

Los registros fueron creados con valores realistas para facilitar el uso de filtros y ordenamientos.

---

# Consultas desarrolladas

Se implementaron cinco consultas utilizando la cláusula **ORDER BY** para responder diferentes preguntas de negocio:

1. Tabla de posiciones ordenada por puntos.
2. Equipos con mayor cantidad de partidos ganados.
3. Equipos ordenados por goles anotados.
4. Equipos organizados alfabéticamente por ciudad.
5. Equipos activos ordenados por menor cantidad de derrotas.

Estas consultas permiten comprender el funcionamiento del ordenamiento ascendente y descendente en MySQL.

---

# Uso de ORDER BY

La cláusula **ORDER BY** permite organizar los resultados de una consulta según uno o varios campos.

Durante este ejercicio se aplicó para:

- Ordenar de mayor a menor (`DESC`).
- Ordenar de menor a mayor (`ASC`).
- Ordenar utilizando múltiples columnas.
- Combinar filtros (`WHERE`) con ordenamientos.
- Generar reportes claros mediante alias.

Su uso facilita el análisis de la información almacenada y mejora la presentación de los resultados.

---

# Orden de ejecución

Para ejecutar correctamente la solución se recomienda seguir el siguiente orden:

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

---

# Validación

La solución se considera correcta cuando:

- El archivo `schema.sql` crea la tabla sin errores.
- Los registros son insertados correctamente mediante `inserts.sql`.
- Las cinco consultas generan resultados ordenados correctamente.
- Los datos aparecen organizados según los criterios establecidos en cada consulta.

---

# Decisiones técnicas

Se optó por utilizar una única tabla debido a que el ejercicio pertenece al nivel básico y el objetivo principal es practicar el uso de **ORDER BY**.

La estructura fue diseñada con nombres claros y restricciones básicas para mantener la consistencia de los datos. Las consultas se enfocan en distintos tipos de ordenamiento, utilizando tanto orden ascendente como descendente y múltiples criterios de clasificación.

---

# Tecnologías utilizadas

- MySQL
- SQL (DDL, DML y DQL)

---

# Conclusión

El desarrollo de este ejercicio permitió comprender el funcionamiento de la cláusula **ORDER BY** en MySQL, aplicándola para organizar información de una liga de fútbol de diferentes maneras. Además, se reforzó el uso de consultas estructuradas, datos consistentes y una organización adecuada de los scripts SQL, facilitando el mantenimiento y la comprensión del proyecto.