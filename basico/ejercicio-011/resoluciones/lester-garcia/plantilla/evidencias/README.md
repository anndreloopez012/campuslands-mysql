# Torneo de Pingpong - Base de Datos en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL para administrar la información de un torneo de pingpong. El sistema permite registrar jugadores, torneos y partidos, aplicando validaciones simples para garantizar que los datos almacenados sean coherentes. El ejercicio se enfoca principalmente en el uso de restricciones como `NOT NULL`, `UNIQUE`, `CHECK`, `ENUM`, `PRIMARY KEY` y `FOREIGN KEY`.

## Solución General

La solución consiste en crear la base de datos **torneo_pingpong**, utilizando tres tablas principales: **jugadores**, **torneos** y **partidos**. En la definición de las tablas se implementaron diferentes validaciones para evitar datos incorrectos, como edades fuera de rango, nombres de torneos repetidos, fechas de finalización anteriores al inicio y partidos donde un jugador se enfrente contra sí mismo. Posteriormente se insertaron diez registros de jugadores y partidos, además de ocho torneos, y finalmente se crearon consultas `SELECT` que permiten comprobar las restricciones, consultar jugadores activos, visualizar partidos, analizar torneos y verificar que los datos cumplan las reglas establecidas.

## Evidencia

La solución está organizada en archivos independientes según la responsabilidad de cada componente SQL:

- **01_ddl.sql** → Creación de la base de datos, tablas y validaciones.
- **02_dml.sql** → Inserción de datos de prueba.
- **03_dql.sql** → Consultas y comprobación de las validaciones.
- **README.md** → Documentación del ejercicio.

### Validaciones aplicadas

| Validación | Aplicación |
|---|---|
| `PRIMARY KEY` | Identificación única de jugadores, torneos y partidos |
| `NOT NULL` | Campos obligatorios |
| `UNIQUE` | Nickname de jugadores y nombre de torneos |
| `CHECK` | Restricción de edades, premios, fechas y resultados |
| `ENUM` | Categorías de torneo y estados controlados |
| `FOREIGN KEY` | Relación entre jugadores, torneos y partidos |

### Estructura del proyecto

```text
lester-garcia/plantillas
│
├── ddl.sql
├── dml.sql
├── dql.sql
└── README.md
```

### Resultado esperado

- Base de datos creada correctamente.
- Registros insertados sin errores.
- Restricciones de validación funcionando correctamente.
- Relaciones entre las tablas establecidas mediante claves foráneas.
- Consultas ejecutadas correctamente.
- Las consultas de validación deben permitir comprobar que no existen registros que incumplan las reglas definidas.