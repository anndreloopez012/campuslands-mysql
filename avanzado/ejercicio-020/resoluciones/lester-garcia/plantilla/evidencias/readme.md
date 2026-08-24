# Tattoo Studio Indexes - Base de Datos en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en un estudio de tatuajes. El objetivo fue almacenar información sobre clientes, tatuadores y citas, aplicando índices para mejorar el acceso a información que puede ser consultada frecuentemente.

Los índices permiten que MySQL encuentre determinados registros de manera más eficiente, especialmente cuando las tablas contienen una gran cantidad de información.

## Solución General

La solución consiste en la creación de una base de datos llamada **tattoo_studio_indexes**, conformada por tres tablas:

- **clients** → Almacena la información de los clientes.
- **tattoo_artists** → Contiene la información de los tatuadores y sus especialidades.
- **appointments** → Registra las citas programadas, incluyendo fecha, hora, estilo, estado y precio.

Posteriormente se crearon índices sobre columnas que representan posibles criterios frecuentes de búsqueda:

- `appointment_date`
- `status`
- `specialty`

También se creó un índice compuesto sobre:

```sql
(appointment_date, appointment_time)
```

Finalmente se utilizaron consultas con `EXPLAIN` para analizar el plan de ejecución de MySQL y comprobar cómo se pueden utilizar los índices.

## Índices implementados

### `idx_appointments_date`

Se utiliza para facilitar búsquedas de citas por fecha.

```sql
CREATE INDEX idx_appointments_date
ON appointments(appointment_date);
```

### `idx_appointments_status`

Permite optimizar búsquedas relacionadas con el estado de las citas.

```sql
CREATE INDEX idx_appointments_status
ON appointments(status);
```

### `idx_artists_specialty`

Permite buscar tatuadores según su especialidad.

```sql
CREATE INDEX idx_artists_specialty
ON tattoo_artists(specialty);
```

### `idx_appointments_date_time`

Es un índice compuesto que combina fecha y hora.

```sql
CREATE INDEX idx_appointments_date_time
ON appointments(appointment_date, appointment_time);
```

## Decisiones técnicas

- Se utilizaron claves primarias para identificar cada registro.
- Se utilizaron claves foráneas para relacionar clientes, tatuadores y citas.
- Se utilizaron índices sobre columnas que representan criterios frecuentes de búsqueda.
- Se creó un índice compuesto para consultas que utilizan fecha y hora.
- Se utilizó `EXPLAIN` para analizar el plan de ejecución.
- Se utilizó `SHOW INDEX` para comprobar los índices existentes.
- No se crearon índices innecesarios sobre todas las columnas, debido a que los índices también requieren espacio y pueden aumentar el costo de operaciones como `INSERT`, `UPDATE` y `DELETE`.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y las tablas.
- **02_dml.sql** → Inserción de clientes, tatuadores y citas.
- **03_dql.sql** → Creación de índices, análisis mediante `EXPLAIN` y consultas de verificación.

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
- Clientes, tatuadores y citas registrados.
- Relaciones entre tablas funcionando mediante claves foráneas.
- Índices creados correctamente.
- Índice compuesto creado correctamente.
- Índices verificables mediante `SHOW INDEX`.
- Consultas analizadas mediante `EXPLAIN`.
- Información consultada correctamente utilizando las columnas indexadas.
- Estructura preparada para mejorar el rendimiento de búsquedas cuando el volumen de datos aumente.