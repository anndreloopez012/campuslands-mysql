# Futsal Security - Base de Datos en MySQL

## Alumno
**Lester Garcia**

## Descripción

En este ejercicio se desarrolló una base de datos relacional en MySQL inspirada en una liga de fútbol sala. El objetivo fue diseñar una estructura organizada para almacenar información sobre equipos, jugadores, partidos y clasificación, implementando además un esquema de **roles y permisos** que permita controlar el acceso a la información según las responsabilidades de cada usuario dentro del sistema.

## Solución General

La solución consiste en la creación de una base de datos llamada **ejercicio_08_adv**, conformada por cuatro tablas relacionadas mediante claves primarias y foráneas: **teams**, **players**, **matches** y **standings**. Posteriormente se insertaron registros realistas para representar el funcionamiento de una liga de fútbol sala. Finalmente, se implementó un sistema de seguridad basado en **roles**, definiendo perfiles para entrenadores, árbitros y administradores, asignando únicamente los permisos necesarios para cada uno y verificando su correcta configuración mediante consultas administrativas.

## Decisiones técnicas

- Se implementaron tres roles: **coach_role**, **referee_role** y **administrator_role**.
- Cada rol recibe únicamente los permisos necesarios siguiendo el principio de **mínimo privilegio**.
- Los entrenadores únicamente pueden consultar información de equipos, jugadores y clasificación.
- Los árbitros pueden consultar los partidos y actualizar únicamente los marcadores.
- Los administradores poseen control completo sobre la base de datos.
- Los usuarios se crean por separado y posteriormente se les asigna el rol correspondiente como rol predeterminado.

## Evidencia

La solución está organizada en tres archivos SQL independientes para facilitar su mantenimiento y revisión:

- **01_ddl.sql** → Creación de la base de datos y de las tablas.
- **02_dml.sql** → Inserción de los datos de prueba.
- **03_dql.sql** → Creación de roles, asignación de permisos, creación de usuarios y verificación de privilegios.

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
- Roles creados correctamente con permisos específicos.
- Usuarios asociados a sus respectivos roles.
- Verificación exitosa de los privilegios asignados mediante `SHOW GRANTS`.