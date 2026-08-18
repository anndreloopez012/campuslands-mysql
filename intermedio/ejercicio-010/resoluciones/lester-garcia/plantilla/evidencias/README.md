# Urban Races UNIQUE - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en carreras urbanas. El objetivo fue diseñar una estructura organizada que permitiera almacenar información sobre corredores, carreras, categorías e inscripciones, aplicando correctamente la restricción **UNIQUE** para evitar la duplicación de datos que deben ser únicos dentro del sistema. La solución se organizó en los tres componentes principales del lenguaje SQL: DDL para la creación de la estructura, DML para la inserción de datos de prueba y DQL para consultar y verificar la información almacenada.

## Solución General

La solución consiste en la creación de una base de datos llamada **urban_races_unique**, conformada por cuatro tablas relacionadas mediante claves primarias y foráneas: **runners**, **races**, **categories** y **registrations**. Se implementaron restricciones **UNIQUE** en los campos **email**, **phone**, **category_name** y **bib_number**, garantizando que no existan registros duplicados en información crítica del sistema. Posteriormente se insertaron datos realistas y se desarrollaron consultas SQL para verificar la correcta organización de la información y el funcionamiento de las restricciones.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y de las tablas con restricciones **UNIQUE**.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Consultas para verificar la información almacenada.

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
- Restricciones **UNIQUE** implementadas correctamente.
- Relaciones entre tablas funcionando mediante claves foráneas.
- Datos insertados sin errores ni duplicados en los campos restringidos.
- Consultas ejecutadas correctamente mostrando información coherente sobre corredores, carreras, categorías e inscripciones.