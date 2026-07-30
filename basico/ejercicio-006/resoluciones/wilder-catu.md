# Ejercicio 006 - WHERE para Autos Hiperdeportivos

## Descripción

Esta solución implementa una base de datos en MySQL para almacenar información sobre autos hiperdeportivos y realizar consultas utilizando la cláusula **WHERE**.

La estructura del proyecto separa cada responsabilidad en un archivo diferente para facilitar el mantenimiento y la comprensión del código.

---

## Estructura del proyecto

```
wilder-catu/
│
├── README.md
├── ddl/
│   └── schema.sql
├── dml/
│   └── inserts.sql
└── dql/
    └── consultas.sql
```

---

## Función de cada archivo

### ddl/schema.sql

Contiene toda la estructura de la base de datos.

Responsabilidades:

- Crear la base de datos.
- Crear la tabla `autos`.
- Definir el tipo de dato de cada columna.
- Agregar restricciones (`NOT NULL`, `CHECK`, `PRIMARY KEY` y `ENUM`) para garantizar la integridad de los datos.

---

### dml/inserts.sql

Contiene los registros iniciales.

Responsabilidades:

- Insertar diez autos hiperdeportivos.
- Incluir distintos estados (Disponible, Reservado y Vendido).
- Agregar información suficiente para probar consultas con filtros.

---

### dql/consultas.sql

Contiene consultas SQL usando la cláusula **WHERE**.

Las consultas permiten:

- Mostrar autos disponibles.
- Buscar vehículos con velocidad mayor a 450 km/h.
- Mostrar únicamente autos italianos.
- Consultar autos con precio superior a tres millones.
- Filtrar vehículos con más de 1500 HP.
- Mostrar únicamente autos vendidos.

Cada consulta responde a una necesidad específica del negocio y utiliza alias cuando mejora la presentación del resultado.

---

## Cómo ejecutar

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

---

## Decisiones técnicas

- Se utilizó MySQL.
- El precio se almacena como `DECIMAL(12,2)` para evitar errores de precisión.
- Se utilizó `ENUM` para controlar los estados válidos del automóvil.
- Se agregaron restricciones `CHECK` para impedir valores negativos en velocidad, potencia y precio.
- Los nombres de tablas y columnas son descriptivos y consistentes.

---

## Requisitos cumplidos

- ✔ Uso de MySQL.
- ✔ Separación entre DDL, DML y DQL.
- ✔ Más de 8 registros.
- ✔ Más de 5 consultas.
- ✔ Uso de WHERE.
- ✔ Restricciones de integridad.
- ✔ Datos coherentes para realizar filtros y pruebas.