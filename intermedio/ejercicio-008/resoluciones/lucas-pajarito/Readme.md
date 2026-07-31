# Ejercicio 008 - Normalización 3FN para Fútbol Sala

## Descripción

Este proyecto implementa una base de datos de **fútbol sala** aplicando principios de **Tercera Forma Normal (3FN)** en MySQL.

El objetivo es evitar redundancia de datos, mejorar la integridad referencial y facilitar consultas estadísticas relacionadas con jugadores y clubes.

---

# Estructura del proyecto

```text
intermedio/ejercicio-008/resoluciones/lucas-pajarito/
├── README.md
├── ddl/
│   └── schema.sql
├── dml/
│   └── inserts.sql
└── dql/
    └── consultas.sql
```

---

# Diseño en 3FN

La información se separó en cuatro tablas:

* **ciudades_fs**: almacena ciudades.
* **clubes_fs**: almacena clubes y referencia a una ciudad.
* **jugadores_fs**: almacena datos personales y referencia al club.
* **estadisticas_jugador_fs**: almacena estadísticas deportivas y referencia al jugador.

Con esta estructura:

* Cada tabla representa una sola entidad.
* No existen dependencias parciales.
* No existen dependencias transitivas.

---

# Restricciones aplicadas

* Edad entre 15 y 40 años.
* Valores estadísticos no negativos.
* Nombre de ciudad único.
* Nombre de club único.
* Un registro de estadísticas por jugador (`UNIQUE`).

---

# Datos cargados

Se insertaron:

* 4 ciudades.
* 4 clubes.
* 8 jugadores.
* 8 registros de estadísticas.

Los datos permiten probar filtros, agrupaciones y cálculos.

---

# Consultas implementadas

1. Top 5 goleadores.
2. Jugadores con ciudad de su club.
3. Promedio de goles por posición.
4. Total de goles por club.
5. Jugadores con más de 10 goles.
6. Promedio de goles por partido.

---

# Orden de ejecución

Ejecutar los archivos en este orden:

```sql
SOURCE ddl/schema.sql;
SOURCE dml/inserts.sql;
SOURCE dql/consultas.sql;
```

O ejecutarlos manualmente desde MySQL Workbench.

---

# Validación realizada

* `schema.sql` crea todas las tablas sin errores.
* `inserts.sql` inserta registros válidos respetando las llaves foráneas.
* `consultas.sql` devuelve reportes útiles y verificables.

---

# Tecnologías utilizadas

* MySQL 8.x
* SQL DDL
* SQL DML
* SQL DQL

---

# Autor

**Lucas Pajarito**

Proyecto académico orientado a practicar **normalización 3FN**, integridad referencial y consultas SQL en MySQL.
