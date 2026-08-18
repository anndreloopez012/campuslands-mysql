# Ejercicio-07

# Explicacion 
Para abordar la **Segunda Forma Normal (2FN)**, **fue necesario crear una nueva estructura de base de datos desde cero**. 
*¿Por qué?* La tabla del ejercicio anterior (`equipos`) tenía una clave primaria simple (`id_auto` / `id_equipo`) y contenía columnas que dependían directamente de ella, lo que técnicamente impedía evidenciar el problema principal que resuelve la 2FN: la **dependencia parcial en claves compuestas**. 

Para demostrar un criterio técnico real y profesional, diseñé un modelo donde se implementa una **clave primaria compuesta** (`id_equipo` y `anio_temporada`) en la tabla `rendimiento_temporada`, asegurando que ningún atributo dependa parcialmente de solo una parte de la clave, y separando los datos estáticos (`equipos`) de los datos estructurales (`estadios`).

## Estructura de ejercicio

```
└── 📁ejercicio-007
    └── 📁plantilla
        └── 📁ddl
            ├── schema.sql
        └── 📁dml
            ├── inserts.sql
        └── 📁dql
            ├── consultas.sql
        └── 📁evidencias
            ├── .gitkeep
    └── 📁resoluciones
        └── 📁joseluis-herrera
            └── 📁ddl
                ├── schema.sql
            └── 📁dml
                ├── inserts.sql
            └── 📁dql
                ├── consultas.sql
            └── 📁evidencias
                ├── README.md
        ├── .gitkeep
    └── README.md
```

## Componentes Principales

* **`ddl/schema.sql`** → Creación de la base de datos aplicando 2FN, estructurando tablas relacionales con llaves primarias simples y compuestas (`equipos`, `estadios`, `rendimiento_temporada`).
* **`dml/inserts.sql`** → Carga de datos coherentes que respetan la integridad referencial y las dependencias funcionales completas.
* **`dql/consultas.sql`** → Consultas multitabla (`JOIN`) con filtros avanzados (`WHERE`, `ORDER BY`) sobre el modelo normalizado.
* **`README.md`** → Documentación general del ejercicio.
