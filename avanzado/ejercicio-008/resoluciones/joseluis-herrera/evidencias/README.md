# Ejercicio-08

# Explicacion 
En este ejercicio implementé la gestión de **Roles, Usuarios y Permisos (`GRANT`, `REVOKE`, `CREATE ROLE`)** en MySQL aplicando el principio de **mínimo privilegio** sobre la base de datos de fútbol sala (`db_futbol_sala_3fn`). 
* **Análisis técnico:** A nivel profesional, la seguridad de los datos requiere aislar las capacidades de cada actor dentro del sistema. En lugar de otorgar permisos globales o directos a las cuentas de usuario, creé roles específicos (`rol_analista` y `rol_entrenador`) para delegar exclusivamente las operaciones necesarias (lectura analítica frente a gestión operativa de plantillas), facilitando la escalabilidad y el mantenimiento de la seguridad corporativa.

## Estructura de ejercicio
```
└── 📁ejercicio-008
    └── 📁plantilla
        └── 📁ddl
            ├── schema.sql
        └── 📁dml
            ├── inserts.sql
        └── 📁dql
            ├── consultas.sql
        └── 📁evidencias
            ├── .gitkeep
    └── 📁resoluciones
        └── 📁joseluis-herrera
            └── 📁ddl
                ├── schema.sql
            └── 📁dml
                ├── insert.sql
            └── 📁dql
                ├── consulta.sql
            └── 📁evidencias
                ├── README.md
        ├── .gitkeep
    └── README.md
```
## Componentes Principales

* **`ddl/schema.sql`** → Creación estructurada de roles personalizados, asignación granular de privilegios (`SELECT`, `INSERT`, `UPDATE`), creación de usuarios de prueba y aplicación de políticas de acceso.
* **`dml/inserts.sql`** → Se reutiliza la estructura de datos base normalizada en 3FN para la validación de permisos operativos.
* **`dql/consultas.sql`** → Consultas de auditoría de seguridad para verificar usuarios registrados, permisos asignados y privilegios activos en el servidor.
* **`README.md`** → Documentación general del ejercicio.