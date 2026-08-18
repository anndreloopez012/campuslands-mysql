# Ejercicio-08

# Explicacion 
En este ejercicio ascendimos al nivel avanzado de normalización implementando la **Tercera Forma Normal (3FN)** sobre la temática de **fútbol sala**. 
* **Análisis técnico:** Partiendo de la base de datos anterior (`db_futbol_sala`), estructuramos las entidades de forma que cumplan con la 1FN (valores atómicos), la 2FN (sin dependencias parciales en claves compuestas) y finalmente la **3FN**, la cual exige la **eliminación de dependencias transitivas**. Esto garantiza que ningún atributo no clave dependa indirectamente de otro atributo que tampoco sea clave, manteniendo los datos del club (`equipos_sala`) estrictamente separados de las estadísticas y datos personales de los `jugadores`.

## Estructura de ejercicio

## Estructura de ejercicio
```
└── 📁ejercicio-008
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
                ├── consulta.sql
            └── 📁evidencias
                ├── README.md
        ├── .gitkeep
    └── README.md
```
## Componentes Principales

* **`ddl/schema.sql`** → Creación de la base de datos bajo estrictas reglas de 3FN, estructurando las tablas `equipos_sala`, `jugadores` y `estadisticas_partido_jugador` mediante llaves foráneas limpias.
* **`dml/inserts.sql`** → Carga de registros coherentes que evitan la duplicación de información institucional en las tablas dependientes.
* **`dql/consultas.sql`** → Consultas relacionales (`JOIN`, `GROUP BY`, `SUM`) para validar la correcta integración de las entidades normalizadas.
* **`README.md`** → Documentación general del ejercicio.