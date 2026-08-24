# Skydiving Management - Procedimientos Almacenados en MySQL

## Alumno

**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en un sistema de gestión de paracaidismo. El objetivo fue almacenar información sobre paracaidistas, instructores, equipos y saltos, además de automatizar operaciones frecuentes mediante **procedimientos almacenados**.

Los procedimientos almacenados permiten encapsular varias instrucciones SQL dentro de una rutina reutilizable. Esto facilita la ejecución de operaciones que requieren diferentes pasos, permite centralizar reglas de negocio y reduce la necesidad de repetir código SQL.

## Solución General

La solución consiste en la creación de una base de datos llamada **skydiving_management**, conformada por cuatro tablas:

- **skydivers** → Almacena la información de los paracaidistas.
- **instructors** → Contiene la información de los instructores.
- **equipment** → Registra los equipos utilizados durante los saltos.
- **jumps** → Almacena el historial de saltos realizados.

Se implementaron únicamente tres procedimientos almacenados:

### 1. `register_jump`

Permite registrar un nuevo salto y actualizar automáticamente el número total de saltos realizados por el paracaidista.

También actualiza el estado del equipo utilizado.

### 2. `get_skydiver_summary`

Genera un resumen estadístico de un paracaidista específico.

Permite obtener:

- Nombre.
- Nivel de experiencia.
- Total de saltos.
- Cantidad de saltos registrados.
- Altitud promedio.
- Altitud máxima.
- Altitud mínima.

### 3. `register_jump_with_validation`

Permite registrar un salto aplicando diferentes validaciones antes de insertar la información.

El procedimiento verifica:

- Existencia del paracaidista.
- Estado activo del paracaidista.
- Existencia del instructor.
- Estado activo del instructor.
- Existencia del equipo.
- Disponibilidad del equipo.
- Altitud mínima permitida.

Cuando una validación no se cumple, se utiliza `SIGNAL SQLSTATE '45000'` para generar un mensaje de error personalizado.

## Decisiones técnicas

- Se utilizaron claves primarias para identificar los registros.
- Se utilizaron claves foráneas para mantener la integridad referencial.
- Se utilizó `AUTO_INCREMENT` para generar identificadores automáticamente.
- Se utilizó `DECIMAL` cuando se requirieron valores numéricos con precisión.
- Los procedimientos almacenados permiten centralizar operaciones frecuentes.
- Se utilizaron variables locales mediante `DECLARE`.
- Se utilizó `SELECT ... INTO` para almacenar resultados dentro de variables.
- Se utilizaron estructuras condicionales `IF`.
- Se utilizó `SIGNAL SQLSTATE '45000'` para generar errores personalizados.
- El procedimiento de resumen utiliza funciones de agregación como `COUNT()`, `AVG()`, `MAX()` y `MIN()`.
- Se utilizaron parámetros `IN` para recibir información desde el usuario al ejecutar los procedimientos.

## Evidencia

La solución está organizada en tres archivos SQL independientes:

- **01_ddl.sql** → Creación de la base de datos y las tablas.
- **02_dml.sql** → Inserción de datos de prueba.
- **03_dql.sql** → Creación, ejecución y verificación de los tres procedimientos almacenados.

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
- Paracaidistas, instructores y equipos registrados.
- Saltos relacionados correctamente mediante claves foráneas.
- Procedimientos almacenados creados correctamente.
- Saltos registrados mediante procedimientos.
- Contador de saltos actualizado automáticamente.
- Resumen estadístico generado correctamente.
- Validaciones ejecutadas antes de registrar nuevos saltos.
- Errores personalizados mostrados cuando alguna condición no se cumple.
- Información final verificada mediante consultas `SELECT`.