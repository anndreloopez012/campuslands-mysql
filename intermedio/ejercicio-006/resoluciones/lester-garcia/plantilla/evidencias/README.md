# Hypercars 1NF - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en autos hiperdeportivos. El objetivo fue diseñar una estructura organizada siguiendo los principios de la **Primera Forma Normal (1FN)**, garantizando que cada tabla almacene datos atómicos, sin grupos repetitivos y con registros identificados mediante claves primarias. La solución se dividió en los tres componentes principales del lenguaje SQL: DDL para la creación de la estructura, DML para la inserción de datos y DQL para verificar y consultar la información almacenada.

## Solución General

La solución consiste en la creación de una base de datos llamada **hypercars_1nf**, conformada por cuatro tablas relacionadas: **brands**, **cars**, **customers** y **sales**. La normalización a **1FN** se aplicó separando la información en entidades independientes, evitando atributos multivaluados o repetidos y asegurando que cada columna almacene un único valor. Posteriormente se insertaron registros realistas y se desarrollaron consultas que permiten verificar la correcta organización de los datos, así como obtener información útil mediante filtros, uniones, ordenamientos y funciones de agregación.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y de las tablas normalizadas.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Consultas para validar la estructura y analizar la información.

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
- Estructura diseñada cumpliendo los principios de la **Primera Forma Normal (1FN)**.
- Relaciones entre tablas funcionando mediante claves foráneas.
- Datos insertados sin errores.
- Consultas ejecutadas correctamente mostrando información coherente sobre marcas, autos, clientes y ventas.