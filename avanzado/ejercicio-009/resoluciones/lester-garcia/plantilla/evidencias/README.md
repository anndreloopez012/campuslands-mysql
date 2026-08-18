# Kickboxing Locks - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en un torneo de kickboxing. El objetivo fue diseñar una estructura organizada para almacenar información sobre gimnasios, peleadores, torneos y combates, demostrando el uso de **bloqueos (Locks)** mediante transacciones para controlar el acceso concurrente a los datos y mantener la consistencia de la información.

## Solución General

La solución consiste en la creación de una base de datos llamada **kickboxing_locks**, conformada por cuatro tablas relacionadas mediante claves primarias y foráneas: **gyms**, **fighters**, **tournaments** y **fights**. Posteriormente se insertaron registros realistas que representan un torneo de kickboxing. Finalmente, se desarrollaron ejemplos utilizando **START TRANSACTION**, **SELECT ... FOR UPDATE** y **SELECT ... FOR SHARE**, simulando escenarios donde múltiples usuarios intentan acceder o modificar simultáneamente los mismos registros.

## Decisiones técnicas

- Se utilizaron transacciones para controlar la concurrencia.
- Se implementó **FOR UPDATE** para bloquear registros que serán modificados.
- Se utilizó **FOR SHARE** para permitir lecturas consistentes sin modificaciones simultáneas.
- Los ejemplos están pensados para ejecutarse desde **dos sesiones diferentes de MySQL**, permitiendo observar el comportamiento de los bloqueos.
- Se empleó **SHOW PROCESSLIST** para verificar las sesiones activas y los bloqueos durante la ejecución.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y de las tablas.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Ejemplos de bloqueos utilizando transacciones y consultas de verificación.

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
- Bloqueos aplicados correctamente mediante **FOR UPDATE** y **FOR SHARE**.
- Concurrencia controlada utilizando transacciones.
- Verificación del comportamiento de los bloqueos mediante pruebas en múltiples sesiones.