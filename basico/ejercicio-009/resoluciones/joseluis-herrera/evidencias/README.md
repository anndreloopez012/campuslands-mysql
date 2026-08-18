# Ejercicio-09

# Explicacion 
En este ejercicio practiqué el uso de la sentencia **DELETE** en MySQL aplicando un enfoque analítico, seguro y controlado. Para mantener la coherencia profesional, implementé la solución desde cero utilizando la temática de una academia de **kickboxing**, estructurando los scripts en DDL, DML y consultas de borrado acompañadas de su respectiva verificación con `SELECT`.
* **Criterio técnico aplicado:** Se utilizó la cláusula `WHERE` en las sentencias de borrado para evitar desastres operativos (evitando un `DELETE` sin filtros), y se demostró el uso de **eliminación en cascada (`ON DELETE CASCADE`)** para mantener la integridad referencial al eliminar registros dependientes como los combates de atletas inactivos.

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

* **`ddl/schema.sql`** → Creación de la base de datos y diseño relacional de las tablas `atletas` y `combates` con llaves foráneas y reglas de eliminación en cascada.
* **`dml/inserts.sql`** → Carga inicial de datos de prueba con perfiles activos e inactivos de deportistas.
* **`dql/consultas.sql`** → Sentencias **DELETE** controladas (borrado por llave primaria y borrado condicional masivo) con sus respectivas consultas de verificación (`SELECT`).
* **`README.md`** → Documentación general del ejercicio