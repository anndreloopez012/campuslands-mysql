# Futsal League 3NF - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en una liga de fútbol sala. El objetivo fue diseñar una estructura organizada siguiendo los principios de la **Tercera Forma Normal (3FN)**, eliminando dependencias transitivas y organizando la información en entidades independientes relacionadas mediante claves primarias y foráneas. La solución se dividió en los tres componentes principales del lenguaje SQL: DDL para la creación de la estructura, DML para la inserción de datos de prueba y DQL para verificar y consultar la información almacenada.

## Solución General

La solución consiste en la creación de una base de datos llamada **futsal_league_3nf**, conformada por cuatro tablas relacionadas: **cities**, **teams**, **players** y **matches**. La normalización a **3FN** se aplicó separando la información de las ciudades de la información de los equipos, evitando dependencias transitivas y garantizando que cada atributo no clave dependa únicamente de la clave primaria de su tabla. Posteriormente se insertaron registros realistas y se desarrollaron consultas SQL para validar las relaciones entre las tablas y obtener información útil sobre equipos, jugadores y partidos.

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
- Estructura diseñada cumpliendo los principios de la **Tercera Forma Normal (3FN)**.
- Relaciones entre tablas funcionando mediante claves foráneas.
- Datos insertados sin errores.
- Consultas ejecutadas correctamente mostrando información coherente sobre ciudades, equipos, jugadores y partidos de fútbol sala.