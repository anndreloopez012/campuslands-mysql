# Ejercicio-09

# Explicacion 
En este ejercicio profundicé en la implementación y el comportamiento avanzado de las **Claves Foráneas (FOREIGN KEY)** utilizando la base de datos de **kickboxing**. 
* **Análisis técnico:** Se diseñó una arquitectura relacional aplicando diferentes políticas de integridad referencial:
  1. **`ON DELETE CASCADE`** en la tabla `combates`, permitiendo que si un atleta es eliminado, su historial de peleas se limpie automáticamente para evitar registros huérfanos.
  2. **`ON DELETE RESTRICT`** en la tabla `historial_lesiones`, garantizando que ningún atleta con registros médicos activos pueda ser borrado accidentalmente del sistema, protegiendo la consistencia de los datos críticos.

## Estructura de ejercicio

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

* **`ddl/schema.sql`** → Creación de la estructura relacional con restricciones de clave foránea explícitas (`CONSTRAINT`) y reglas configuradas de cascada y restricción.
* **`dml/inserts.sql`** → Carga de registros relacionados que cumplen estrictamente con las reglas de dependencia de las FK.
* **`dql/consultas.sql`** → Consultas de integración mediante `LEFT JOIN` para verificar las relaciones y documentación del comportamiento ante restricciones de borrado.
* **`README.md`** → Documentación general del ejercicio.