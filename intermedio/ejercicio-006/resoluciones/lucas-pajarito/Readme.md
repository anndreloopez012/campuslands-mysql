# Ejercicio 006 - Normalización 1FN | Autos Hiperdeportivos

## Autor
**Nombre:** Lucas Samuel Pajarito Surek

---

# Descripción

Este proyecto corresponde a la resolución del **Ejercicio 006** de normalización en **Primera Forma Normal (1FN)** utilizando MySQL.

Se desarrolló una base de datos para gestionar información de autos hiperdeportivos, separando la información en distintas tablas para evitar la duplicidad de datos y mantener la integridad referencial mediante llaves foráneas.

La solución incluye la creación de la estructura de la base de datos, inserción de registros de prueba y consultas que permiten obtener información útil para el análisis de los datos.

---

# Objetivo

Aplicar los conceptos de la Primera Forma Normal (1FN) mediante:

- Diseño de tablas relacionadas.
- Uso de claves primarias y foráneas.
- Inserción de datos consistentes.
- Consultas orientadas a responder necesidades de negocio.
- Organización del proyecto siguiendo la estructura propuesta.

---

# Estructura del proyecto

```
ejercicio-006/
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

- marcas
- modelo
- pais_origen
- Autos_Hiperdeportivos_06

Cada automóvil almacena únicamente los identificadores de la marca, modelo y país de origen, evitando repetir información y cumpliendo con la Primera Forma Normal.

---

# Restricciones implementadas

Se implementaron las siguientes validaciones:

- Llaves primarias (`PRIMARY KEY`).
- Llaves foráneas (`FOREIGN KEY`).
- `AUTO_INCREMENT`.
- Restricciones `NOT NULL`.
- Validaciones `CHECK` para:
  - Potencia mayor a cero.
  - Velocidad máxima mayor a cero.
  - Precio mayor a cero.

Estas restricciones ayudan a mantener la integridad de la información almacenada.

---

# Datos utilizados

Se agregaron registros de prueba que incluyen:

- Diferentes marcas de autos hiperdeportivos.
- Modelos representativos.
- Países de origen.
- Vehículos con distintas potencias, velocidades y precios.

Estos datos permiten validar filtros, cálculos y consultas.

---

# Consultas realizadas

Se desarrollaron cinco consultas enfocadas en responder preguntas de negocio:

1. Listado completo de los autos registrados.
2. Top 5 de autos con mayor potencia.
3. Precio promedio por marca.
4. Autos cuya velocidad supera los 400 km/h.
5. Cantidad de autos registrados por país de origen.

Las consultas utilizan:

- INNER JOIN
- ORDER BY
- GROUP BY
- COUNT()
- AVG()
- MAX()
- LIMIT

---

# Orden de ejecución

Para ejecutar correctamente el proyecto se recomienda el siguiente orden:

1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`

---

# Decisiones técnicas

Para cumplir con la Primera Forma Normal se decidió separar la información repetitiva en tablas independientes:

- La información de las marcas se almacena en la tabla `marcas`.
- Los modelos se almacenan en la tabla `modelo`.
- Los países de origen se almacenan en la tabla `pais_origen`.

La tabla `Autos_Hiperdeportivos_06` únicamente referencia estas entidades mediante llaves foráneas, reduciendo redundancia y facilitando el mantenimiento de la base de datos.

---

# Validación

La solución fue validada verificando que:

- El script de creación de tablas se ejecuta sin errores.
- Los registros se insertan correctamente.
- Las relaciones entre tablas funcionan mediante llaves foráneas.
- Las consultas generan resultados coherentes.
- La estructura del proyecto sigue la organización solicitada en la documentación.

---

# Tecnologías utilizadas

- MySQL
- SQL (DDL, DML y DQL)

---

# Conclusión

La solución implementa correctamente una base de datos normalizada en Primera Forma Normal (1FN), aplicando buenas prácticas de modelado, integridad referencial y consultas SQL orientadas al análisis de información sobre autos hiperdeportivos.