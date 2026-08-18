# Football League 2NF - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en una liga de fútbol. El objetivo fue diseñar una estructura organizada siguiendo los principios de la **Segunda Forma Normal (2FN)**, eliminando dependencias parciales y separando la información en entidades relacionadas mediante claves primarias y foráneas. La solución se organizó en los tres componentes principales del lenguaje SQL: DDL para la creación de la estructura, DML para la inserción de datos y DQL para consultar y verificar la información almacenada.

## Solución General

La solución consiste en la creación de una base de datos llamada **football_league_2nf**, conformada por cuatro tablas relacionadas: **teams**, **players**, **tournaments** y **team_tournaments**. La normalización a **2FN** se aplicó separando la información de los equipos, jugadores, torneos y participaciones en entidades independientes, evitando dependencias parciales y garantizando que cada atributo dependa completamente de la clave primaria de su tabla. Posteriormente se insertaron registros realistas y se desarrollaron consultas para validar las relaciones entre las tablas y obtener información útil sobre los equipos, jugadores y torneos.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y de las tablas normalizadas.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Consultas para verificar la estructura y analizar la información almacenada.

**Estructura del proyecto:**

```text
lester-garcia\plantilla
│
├── 01_ddl.sql
├── 02_dml.sql
├── 03_dql.sql
└── README.md
```

**Resultado esperado:**

- Base de datos creada correctamente.
- Estructura diseñada cumpliendo los principios de la **Segunda Forma Normal (2FN)**.
- Relaciones entre tablas funcionando mediante claves foráneas.
- Datos insertados sin errores.
- Consultas ejecutadas correctamente mostrando información coherente sobre equipos, jugadores, torneos y participaciones.