# Football League Views - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en una liga de fútbol. El objetivo fue diseñar una estructura organizada que permitiera almacenar información sobre equipos, jugadores, partidos y la tabla de posiciones. Como parte del nivel avanzado inicial, se implementaron **vistas (VIEW)** para simplificar consultas frecuentes, mejorar la reutilización del código SQL y facilitar el acceso a la información más utilizada por otros desarrolladores.

## Solución General

La solución consiste en la creación de una base de datos llamada **football_league_views**, conformada por cuatro tablas relacionadas mediante claves primarias y foráneas: **teams**, **players**, **matches** y **standings**. Posteriormente se insertaron datos realistas que representan el funcionamiento de una liga de fútbol. Finalmente, se crearon varias vistas que encapsulan consultas comunes, como la lista de equipos, jugadores con su equipo, resultados de partidos, clasificación del torneo y equipos con mejor rendimiento, permitiendo consultar la información de forma más sencilla y organizada.

## Decisiones técnicas

- Se utilizaron **vistas** para encapsular consultas repetitivas y facilitar su reutilización.
- Se emplearon **INNER JOIN** para relacionar correctamente la información entre las tablas.
- Las vistas se diseñaron con nombres descriptivos utilizando el prefijo **vw_** para facilitar su identificación.
- La estructura mantiene separadas las responsabilidades entre DDL, DML y DQL, favoreciendo el mantenimiento del proyecto.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y de las tablas.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Creación y consulta de las vistas.

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
- Relaciones entre tablas funcionando mediante claves foráneas.
- Datos insertados sin errores.
- Vistas creadas correctamente para reutilizar consultas frecuentes.
- Consultas sobre las vistas ejecutadas correctamente mostrando información coherente sobre equipos, jugadores, partidos y clasificación de la liga.