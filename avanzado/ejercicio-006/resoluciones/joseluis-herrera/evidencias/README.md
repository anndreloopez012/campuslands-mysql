# Ejercicio-06

# Explicacion 
En este ejercicio practiqué los fundamentos de la normalización de bases de datos, centrándome específicamente en la **Primera Forma Normal (1FN)**. Para cumplir con sus requisitos (valores atómicos, eliminación de grupos repetitivos y definición de una llave primaria clara), diseñé una solución desde cero utilizando la temática de autos hiperdeportivos, estructurando los scripts en DDL, DML y DQL de forma profesional.

## Estructura de ejercicio
## Estructura de ejercicio
```
└── 📁ejercicio-006
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

* **`ddl/schema.sql`** → Creación de la base de datos y diseño de tablas normalizadas (`hiperdeportivos`, `caracteristicas_tecnicas` y `mantenimientos`) que garantizan la atomicidad de los datos y evitan la redundancia horizontal.
* **`dml/inserts.sql`** → Carga de datos de prueba estructurados de manera atómica, separando atributos multivaluados y registros dependientes.
* **`dql/consultas.sql`** → Consultas analíticas mediante operaciones de unión (`JOIN`), funciones de agregación (`SUM`) y filtrado (`WHERE`) para validar la correcta integridad de la estructura en 1FN.
* **`README.md`** → Documentación general del ejercicio.