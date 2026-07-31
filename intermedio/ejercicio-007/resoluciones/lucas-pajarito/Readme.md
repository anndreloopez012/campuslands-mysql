# Ejercicio 007 - Normalización 2FN para Liga de Fútbol

## Autor

**Nombre:** Lucas Samuel Pajarito Surek

---

# Descripción

Este proyecto corresponde a la resolución del **Ejercicio 007** del nivel **Intermedio Inicial**, cuyo objetivo es aplicar la **Segunda Forma Normal (2FN)** en MySQL mediante el diseño de una base de datos para administrar información de una liga de fútbol.

La solución organiza la información en múltiples tablas relacionadas para reducir la redundancia, facilitar el mantenimiento de los datos y garantizar la integridad referencial mediante el uso de llaves foráneas.

---

# Objetivo

Implementar una base de datos normalizada en **Segunda Forma Normal (2FN)** que permita almacenar información de equipos de fútbol, ciudades y entrenadores, además de realizar consultas útiles para el análisis de la información.

---

# Estructura del proyecto

```text
intermedio/
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

La solución está compuesta por las siguientes tablas:

- **ciudades_liga**
- **entrenadores_liga**
- **equipos_liga_07**

Las tablas `ciudades_liga` y `entrenadores_liga` almacenan información independiente que posteriormente es referenciada desde la tabla `equipos_liga_07` mediante llaves foráneas.

---

# Aplicación de la Segunda Forma Normal (2FN)

Para cumplir con la Segunda Forma Normal se separó la información que anteriormente se repetía en una sola tabla.

La normalización consistió en:

- Crear una tabla independiente para las ciudades.
- Crear una tabla independiente para los entrenadores.
- Mantener en la tabla principal únicamente la información propia de cada equipo.
- Relacionar las entidades mediante claves foráneas.

Con esta estructura se evita almacenar repetidamente los nombres de ciudades y entrenadores para cada registro.

---

# Restricciones implementadas

Durante el diseño se implementaron las siguientes restricciones:

- PRIMARY KEY
- FOREIGN KEY
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
- ENUM para controlar el estado del equipo.

Estas restricciones ayudan a mantener la consistencia de la información almacenada.

---

# Datos de prueba

Se insertaron registros correspondientes a:

- 8 ciudades.
- 8 entrenadores.
- 10 equipos de fútbol.

Los datos fueron seleccionados para permitir realizar consultas con relaciones entre tablas, filtros, agrupaciones y ordenamientos.

---

# Consultas desarrolladas

Se implementaron cinco consultas de negocio:

1. Listado completo de equipos con ciudad y entrenador.
2. Top 5 de equipos con mayor cantidad de puntos.
3. Cantidad de equipos registrados por ciudad.
4. Promedio de puntos por entrenador.
5. Equipos activos con más de 80 puntos.

Las consultas utilizan:

- INNER JOIN
- GROUP BY
- ORDER BY
- COUNT()
- AVG()
- LIMIT
- WHERE

Estas consultas permiten comprobar el correcto funcionamiento de las relaciones entre las tablas.

---

# Orden de ejecución

Para ejecutar correctamente el proyecto se recomienda seguir el siguiente orden:

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

---

# Validación

La solución se considera correcta cuando:

- `schema.sql` crea todas las tablas sin errores.
- `inserts.sql` inserta correctamente todos los registros.
- Las llaves foráneas mantienen la integridad referencial.
- Las consultas muestran información completa mediante `INNER JOIN`.
- Los resultados obtenidos responden correctamente a las preguntas de negocio.

---

# Decisiones técnicas

Se decidió separar las entidades **Ciudad** y **Entrenador** de la tabla principal para eliminar la duplicidad de información y cumplir con la Segunda Forma Normal.

Además, se utilizaron nombres de tablas diferentes a los del ejercicio anterior para evitar conflictos al ejecutar ambos proyectos dentro de la misma base de datos.

La división de los scripts en archivos DDL, DML y DQL facilita la organización del proyecto y simplifica su mantenimiento.

---

# Tecnologías utilizadas

- MySQL
- SQL (DDL, DML y DQL)

---

# Conclusión

El desarrollo de este ejercicio permitió aplicar los principios de la **Segunda Forma Normal (2FN)**, organizando la información en tablas relacionadas mediante llaves foráneas. Esta estructura reduce la redundancia de datos, mejora la integridad de la base de datos y facilita la creación de consultas más claras y mantenibles, siguiendo buenas prácticas de diseño relacional.