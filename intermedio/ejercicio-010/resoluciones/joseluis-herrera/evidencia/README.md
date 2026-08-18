# Ejercicio-10

# Explicacion 
En este ejercicio practiqué el uso de las funciones de agregación **COUNT** y **SUM** en MySQL utilizando una solución estructurada desde cero bajo la temática de **carreras urbanas**.
* **Análisis técnico:** Las funciones de agregación son fundamentales en el análisis de datos para resumir información. Utilicé `COUNT` para cuantificar registros (como el número total de atletas o participantes por categoría) y `SUM` para calcular métricas financieras acumuladas (como los ingresos totales por inscripciones). Asimismo, integré estas funciones con la cláusula `GROUP BY` y uniones (`JOIN`) para generar reportes analíticos consolidados por evento.

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

* **`ddl/schema.sql`** → Creación de la base de datos y diseño relacional de las tablas `eventos_carrera`, `corredores` y `inscripciones` con sus respectivas llaves foráneas.
* **`dml/inserts.sql`** → Carga de datos de prueba coherentes para eventos deportivos y registros de participantes.
* **`dql/consultas.sql`** → Consultas analíticas utilizando **COUNT** para conteo de registros y **SUM** para cálculos de totales económicos, incluyendo reportes agrupados.
* **`README.md`** → Documentación general del ejercicio.