# Ejercicio 006 - EXPLAIN para Autos Hiperdeportivos

## Autor

**Nombre:** Lucas Samuel Pajarito Surek

---

# Descripción

Este proyecto corresponde a la resolución del **Ejercicio 006** del nivel **Avanzado Inicial**, cuyo objetivo es aplicar la herramienta **EXPLAIN** de MySQL para analizar el plan de ejecución de consultas SQL sobre una base de datos relacionada con autos hiperdeportivos.

La solución fue desarrollada siguiendo buenas prácticas de modelado relacional, organización de scripts y optimización de consultas mediante el uso de índices.

---

# Objetivo

Diseñar una base de datos funcional que permita almacenar información sobre autos hiperdeportivos y analizar el rendimiento de distintas consultas utilizando la instrucción **EXPLAIN**.

---

# Estructura del proyecto

```text
avanzado/
└── ejercicio-006/
    └── resoluciones/
        └── nombre-apellido/
            ├── README.md
            ├── ddl/
            │   └── schema.sql
            ├── dml/
            │   └── inserts.sql
            └── dql/
                └── consultas.sql
```

---

# Base de datos

Se creó la base de datos:

```sql
campuslands_mysql
```

La solución está compuesta por las siguientes tablas:

- **marcas**
- **modelos**
- **paises**
- **autos_hiperdeportivos**

La tabla principal almacena la información de cada automóvil y mantiene relaciones mediante llaves foráneas con las demás tablas.

---

# Restricciones implementadas

Durante el diseño se implementaron las siguientes restricciones para garantizar la integridad de la información:

- PRIMARY KEY
- FOREIGN KEY
- AUTO_INCREMENT
- NOT NULL
- UNIQUE
- CHECK para validar:
  - Potencia mayor que cero.
  - Velocidad mayor que cero.
  - Precio mayor que cero.
  - Aceleración mayor que cero.
- ENUM para controlar el estado del vehículo.

---

# Optimización mediante índices

Como el objetivo principal del ejercicio es utilizar **EXPLAIN**, se crearon índices sobre las columnas más utilizadas en filtros, ordenamientos y relaciones.

Índices implementados:

- idx_marca
- idx_modelo
- idx_pais
- idx_potencia
- idx_velocidad
- idx_precio
- idx_estado
- idx_anio

Estos índices permiten reducir el tiempo de búsqueda y mejorar el plan de ejecución generado por MySQL.

---

# Datos de prueba

Se insertaron registros correspondientes a:

- 8 marcas.
- 8 modelos.
- 6 países.
- 10 autos hiperdeportivos.

Los datos fueron seleccionados para permitir realizar filtros, agrupaciones, ordenamientos y pruebas de rendimiento.

---

# Consultas desarrolladas

Se implementaron cinco consultas orientadas al análisis de información:

1. Listado completo de autos hiperdeportivos.
2. Top 5 de los autos con mayor potencia.
3. Precio promedio y precio máximo por marca.
4. Autos disponibles con velocidad superior a 400 km/h.
5. Cantidad de autos registrados por país de origen.

Cada consulta fue precedida por la instrucción **EXPLAIN** para analizar el comportamiento del optimizador de MySQL.

---

# Uso de EXPLAIN

La instrucción **EXPLAIN** permite conocer cómo MySQL ejecuta una consulta antes de procesarla.

Entre la información obtenida se puede analizar:

- Tipo de acceso a las tablas.
- Índices utilizados.
- Orden de los JOIN.
- Cantidad estimada de registros leídos.
- Posibles mejoras de rendimiento.

Esto facilita detectar consultas ineficientes y optimizar el diseño de la base de datos.

---

# Orden de ejecución

Para ejecutar correctamente el proyecto se recomienda seguir el siguiente orden:

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

---

# Validación

La solución se considera correcta cuando:

- El script `schema.sql` crea la base de datos sin errores.
- Los registros son insertados correctamente mediante `inserts.sql`.
- Las cinco consultas generan resultados válidos.
- `EXPLAIN` muestra el plan de ejecución de cada consulta.
- Los índices creados son utilizados por el optimizador cuando corresponde.

---

# Decisiones técnicas

Para facilitar el mantenimiento y evitar redundancia se aplicó un modelo relacional compuesto por cuatro tablas relacionadas mediante llaves foráneas.

Además, se implementaron índices en los campos utilizados con mayor frecuencia en filtros y ordenamientos, permitiendo que el optimizador de MySQL pueda generar planes de ejecución más eficientes al utilizar la instrucción **EXPLAIN**.

La separación del proyecto en archivos DDL, DML y DQL mejora la organización del código y facilita su reutilización por otros desarrolladores.

---

# Tecnologías utilizadas

- MySQL
- SQL (DDL, DML y DQL)
- EXPLAIN para análisis del plan de ejecución

---

# Conclusión

El desarrollo de este ejercicio permitió comprender cómo el optimizador de MySQL procesa las consultas mediante **EXPLAIN**, así como la importancia de diseñar correctamente las tablas, definir restricciones e implementar índices para mejorar el rendimiento de una base de datos relacional.