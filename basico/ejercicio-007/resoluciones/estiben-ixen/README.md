# Ejercicio 007 - ORDER BY para Liga de Fútbol

## Descripción

Este proyecto tiene como objetivo practicar el uso de la cláusula **ORDER BY** en MySQL mediante el desarrollo de una base de datos inspirada en una liga de fútbol. La solución organiza información sobre equipos, permitiendo generar reportes ordenados según diferentes criterios.

La base de datos utilizada es **campuslands_mysql**.

---

# Estructura del proyecto

```
resoluciones/estiben-ixen/

├── README.md
├── ddl/
│   └── schema.sql
├── dml/
│   └── inserts.sql
└── dql/
    └── consultas.sql
```

---

# Orden de ejecución

Ejecutar los archivos en el siguiente orden:

1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

Todos los scripts utilizan:

```sql
USE campuslands_mysql;
```

---

# Modelo de datos

La tabla **equipos** almacena la siguiente información:

- Nombre del equipo.
- Ciudad.
- Entrenador.
- Partidos jugados.
- Puntos obtenidos.
- Goles a favor.
- Goles en contra.
- Estado del equipo.

Se implementaron restricciones **NOT NULL**, **CHECK** y **ENUM** para garantizar la integridad de los datos.

---

# Consultas desarrolladas

Las consultas utilizan la cláusula **ORDER BY** para organizar la información según distintos criterios:

- Equipos con mayor cantidad de puntos.
- Equipos ordenados alfabéticamente.
- Equipos con más goles a favor.
- Equipos con menos goles en contra.
- Entrenadores ordenados por nombre.
- Equipos ordenados por ciudad.
- Equipos según partidos jugados.
- Equipos ordenados por estado y puntos.

Cada reporte utiliza alias descriptivos para mejorar la presentación de los resultados.

---

# Validación

La solución cumple correctamente cuando:

- `schema.sql` crea la tabla sin errores.
- `inserts.sql` registra todos los equipos.
- `consultas.sql` devuelve los resultados ordenados correctamente mediante **ORDER BY**.

---

# Conclusión

Este ejercicio permitió comprender cómo la cláusula **ORDER BY** facilita la organización de la información en MySQL. Gracias a esta instrucción es posible generar reportes claros y ordenados, mejorando la lectura y el análisis de los datos almacenados.