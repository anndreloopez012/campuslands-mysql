# Travel Tourism Functions - Base de Datos en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en un sistema de viajes y turismo. El objetivo fue almacenar información sobre destinos, viajeros y viajes, y posteriormente utilizar diferentes **funciones SQL** para transformar, calcular y analizar los datos almacenados.

Las funciones SQL permiten realizar operaciones directamente sobre los registros de la base de datos, facilitando la generación de información útil sin necesidad de procesar todos los datos manualmente.

## Solución General

La solución consiste en la creación de una base de datos llamada **travel_tourism_functions**, conformada por tres tablas:

- **destinations** → Almacena los destinos turísticos disponibles.
- **travelers** → Contiene la información de los viajeros.
- **trips** → Registra los viajes realizados, incluyendo fechas, duración y costos.

Las tablas se relacionan mediante claves primarias y foráneas para mantener la integridad de la información.

Para practicar funciones SQL se utilizaron diferentes funciones de MySQL, entre ellas:

- `UPPER()` → Convertir texto a mayúsculas.
- `LOWER()` → Convertir texto a minúsculas.
- `LENGTH()` → Obtener la cantidad de caracteres de un texto.
- `ROUND()` → Redondear valores numéricos.
- `CONCAT()` → Combinar diferentes valores de texto.
- `DATEDIFF()` → Calcular diferencias entre fechas.
- `COALESCE()` → Proporcionar un valor alternativo cuando existe un valor `NULL`.
- `MAX()` → Obtener el valor máximo.
- `MIN()` → Obtener el valor mínimo.
- `AVG()` → Calcular un promedio.
- `SUM()` → Calcular un total.
- `COUNT()` → Contar registros.

## Decisiones técnicas

- Se utilizaron claves primarias para identificar de forma única cada registro.
- Se utilizaron claves foráneas para relacionar viajeros, destinos y viajes.
- Se utilizó `DECIMAL(10,2)` para almacenar los costos de los viajes.
- Se utilizaron funciones de texto para transformar y presentar información.
- Se utilizaron funciones matemáticas para calcular costos diarios y valores promedio.
- Se utilizaron funciones de fecha para analizar el tiempo transcurrido desde cada viaje.
- Se utilizaron funciones de agregación para obtener indicadores generales del sistema.
- Se utilizó `CONCAT()` para generar descripciones legibles de los viajes.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y las tablas.
- **02_dml.sql** → Inserción de destinos, viajeros y viajes.
- **03_dql.sql** → Consultas utilizando diferentes funciones SQL.

**Estructura del proyecto:**

```text
lester-garcia/plantilla
│
├── 01_ddl.sql
├── 02_dml.sql
├── 03_dql.sql
└── README.md
```

## Resultado esperado

- Base de datos creada correctamente.
- Destinos y viajeros registrados correctamente.
- Viajes relacionados mediante claves foráneas.
- Información de texto transformada mediante funciones SQL.
- Costos diarios calculados correctamente.
- Fechas analizadas mediante funciones de fecha.
- Valores máximos, mínimos y promedios obtenidos correctamente.
- Total de gastos calculado mediante `SUM()`.
- Cantidad de viajes obtenida mediante `COUNT()`.
- Consultas ejecutadas correctamente mostrando información útil para el análisis del sistema.