# Kickboxing Tournament - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en un torneo de kickboxing. El objetivo fue diseñar una estructura organizada que permitiera almacenar información sobre gimnasios, peleadores, torneos y combates, aplicando correctamente las **claves foráneas (FOREIGN KEY)** para mantener la integridad referencial entre las tablas. La solución se organizó en los tres componentes principales del lenguaje SQL: DDL para la creación de la estructura, DML para la inserción de datos de prueba y DQL para consultar y verificar la información almacenada.

## Solución General

La solución consiste en la creación de una base de datos llamada **kickboxing_tournament**, conformada por cuatro tablas relacionadas mediante claves primarias y foráneas: **gyms**, **fighters**, **tournaments** y **fights**. Las relaciones permiten asociar cada peleador con un gimnasio y cada combate con un peleador y un torneo específico, garantizando la integridad de los datos. Posteriormente se insertaron registros realistas y se desarrollaron consultas SQL para comprobar el funcionamiento de las relaciones entre las tablas y obtener información relevante sobre los combates y participantes.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y de las tablas con claves foráneas.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Consultas para verificar las relaciones y analizar la información almacenada.

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
- Relaciones entre tablas implementadas mediante **FOREIGN KEY**.
- Integridad referencial garantizada.
- Datos insertados sin errores.
- Consultas ejecutadas correctamente mostrando información coherente sobre gimnasios, peleadores, torneos y combates.