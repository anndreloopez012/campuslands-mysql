# Ejercicio-09

# Explicacion 
En este ejercicio practiqué el manejo de **bloqueos (Locks) en MySQL** utilizando transacciones (`START TRANSACTION`, `COMMIT`) sobre la misma base de datos de **kickboxing** (`db_kickboxing`). 
* **Análisis técnico:** A nivel profesional, la gestión de concurrencia es vital para evitar problemas como *Dirty Reads*, *Non-Repetable Reads* o *Lost Updates*. Implementé bloqueos exclusivos (`FOR UPDATE`) para proteger operaciones críticas de escritura y bloqueos compartidos (`FOR SHARE`) para garantizar lecturas seguras y consistentes en entornos multiusuario.

## Estructura de ejercicio
```
└── 📁ejercicio-009
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
                ├── insert.sql
            └── 📁dql
                ├── consultas.sql
            └── 📁evidencias
                ├── README.md
        ├── .gitkeep
    └── README.md
```
## Componentes Principales

* **`ddl/schema.sql`** → Se reutiliza la estructura relacional base de la academia de kickboxing (`db_kickboxing`).
* **`dml/inserts.sql`** → Se reutilizan los registros base de atletas y combates.
* **`dql/consultas.sql`** → Implementación de transacciones con control de concurrencia mediante bloqueos exclusivos (`FOR UPDATE`) y compartidos (`FOR SHARE`).
* **`README.md`** → Documentación general del ejercicio.