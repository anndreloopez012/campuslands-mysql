# Ejercicio-10

# Explicacion 
En este ejercicio practiqué la gestión de **Copias de Seguridad Lógicas (Logical Backups)** en MySQL utilizando la base de datos de **carreras urbanas** (`db_carreras_urbanas`).
* **Análisis técnico:** A nivel profesional, la persistencia y la seguridad de la información exigen estrategias de respaldo confiables. Documenté el uso de la herramienta `mysqldump` para la exportación de estructuras (DDL) y datos (DML), así como los procedimientos de restauración mediante comandos de terminal y la sentencia `SOURCE`, garantizando la continuidad del negocio y la recuperación ante desastres.
## Estructura de ejercicio
```
└── 📁ejercicio-010
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
            └── 📁evidencia
                ├── README.md
        ├── .gitkeep
    └── README.md
```
## Componentes Principales

* **`ddl/schema.sql`** → Se reutiliza la estructura relacional base de carreras urbanas (`db_carreras_urbanas`).
* **`dml/inserts.sql`** → Se reutilizan los registros de eventos, corredores e inscripciones.
* **`dql/consultas.sql`** → Documentación técnica de comandos de terminal para respaldo (`mysqldump`), procedimientos de restauración y consultas de validación post-recuperación.
* **`README.md`** → Documentación general del ejercicio.