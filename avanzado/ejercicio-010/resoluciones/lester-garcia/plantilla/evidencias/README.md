# Urban Races Backup - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en carreras urbanas. El objetivo fue diseñar una estructura organizada para almacenar información sobre corredores, carreras, categorías e inscripciones, además de practicar la realización de un **backup lógico** utilizando la herramienta **mysqldump**, una de las utilidades más utilizadas para respaldar bases de datos MySQL.

## Solución General

La solución consiste en la creación de una base de datos llamada **urban_races_backup**, conformada por cuatro tablas relacionadas mediante claves primarias y foráneas: **runners**, **races**, **categories** y **registrations**. Posteriormente se insertaron datos realistas para simular el funcionamiento del sistema. Finalmente, se documentaron los comandos necesarios para realizar respaldos completos, respaldos por tabla, respaldos únicamente de la estructura, respaldos únicamente de los datos y el proceso de restauración de la base de datos utilizando **mysqldump** y **mysql**.

## Decisiones técnicas

- Se utilizaron claves primarias y foráneas para mantener la integridad referencial.
- Se empleó **mysqldump** como herramienta estándar para realizar respaldos lógicos.
- Se documentaron distintos tipos de respaldo: completo, por tabla, solo estructura y solo datos.
- Se incluyó el comando de restauración para completar el ciclo de recuperación.
- Los comandos de respaldo se documentan como referencia y deben ejecutarse desde la terminal del sistema operativo, no desde el cliente de MySQL.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y de las tablas.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Consultas de verificación y documentación de los comandos para realizar el backup lógico.

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
- Consultas ejecutadas correctamente para verificar la información.
- Comandos de respaldo lógico documentados correctamente utilizando **mysqldump**.
- Procedimiento de restauración documentado para recuperar la base de datos a partir del respaldo.