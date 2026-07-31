# ⚽ Ejercicio 007 - Liga de Fútbol (MySQL)

## 📌 Descripción

Este proyecto implementa una base de datos relacional para administrar una **Liga de Fútbol** utilizando **MySQL**.  
El objetivo es practicar la creación de tablas, relaciones, inserción de datos y consultas SQL.

---

# 📂 Estructura del proyecto

```text
Ejercicio_007_Liga_Futbol/
│
├── schema.sql
├── insert_data.sql
├── consultas.sql
└── README.md
```

---

# 🗄️ Base de datos

```sql
CREATE DATABASE campuslands_mysql;
```

Base de datos utilizada:

- **campuslands_mysql**

---

# 🧱 Tablas creadas

## 1. ciudades_liga_vw

Almacena las ciudades de los equipos.

| Campo | Tipo |
|---|---|
| id_ciudad | INT |
| nombre_ciudad | VARCHAR(60) |

---

## 2. entrenadores_liga_vw

Almacena los entrenadores registrados.

| Campo | Tipo |
|---|---|
| id_entrenador | INT |
| nombre_entrenador | VARCHAR(80) |

---

## 3. equipos_liga_vw

Tabla principal de la liga.

| Campo | Tipo |
|---|---|
| id_equipo | INT |
| nombre_equipo | VARCHAR(70) |
| id_ciudad | INT |
| id_entrenador | INT |
| partidos_jugados | INT |
| partidos_ganados | INT |
| partidos_empatados | INT |
| partidos_perdidos | INT |
| goles_favor | INT |
| goles_contra | INT |
| puntos | INT |
| estado | ENUM('Activo','Inactivo') |

---

# 🔗 Relaciones

```text
ciudades_liga_vw (1) ---- (N) equipos_liga_vw (N) ---- (1) entrenadores_liga_vw
```

- Un equipo pertenece a una ciudad.
- Un equipo tiene un entrenador.

---

# 📝 Datos insertados

Se registraron:

- **5 ciudades**
- **5 entrenadores**
- **5 equipos**

### Equipos registrados

- Tigres FC
- Leones FC
- Halcones FC
- Águilas FC
- Toros FC

---

# 🔍 Consultas implementadas

## 1. Tabla de posiciones

Muestra los equipos ordenados por puntos y diferencia de goles.

## 2. Equipos activos

Lista los equipos activos con su ciudad y entrenador.

## 3. Diferencia de goles

Calcula:

```sql
goles_favor - goles_contra
```

## 4. Entrenadores y puntos

Muestra el entrenador y los puntos obtenidos por su equipo.

## 5. Resumen general de la liga

Obtiene:

- Total de equipos.
- Total de partidos.
- Total de goles.
- Promedio de puntos.

## Consulta extra

Equipo con mayor cantidad de goles a favor.

---

# 📜 Scripts desarrollados

## schema.sql

Contiene:

- Creación de la base de datos.
- Creación de tablas.
- Llaves primarias.
- Llaves foráneas.
- Restricciones de integridad.

## insert_data.sql

Contiene todas las sentencias `INSERT`.

## consultas.sql

Contiene las consultas SQL desarrolladas.

---

# ▶️ Ejecución del proyecto

Ejecutar en el siguiente orden:

```sql
SOURCE schema.sql;
SOURCE insert_data.sql;
SOURCE consultas.sql;
```

O ejecutar cada archivo desde **MySQL Workbench**.

---

# 📊 Resultados esperados

El sistema permite:

- Consultar la clasificación de la liga.
- Identificar equipos activos.
- Visualizar estadísticas generales.
- Relacionar equipos, ciudades y entrenadores.
- Analizar el rendimiento deportivo.

---

# 🛠️ Tecnologías utilizadas

- **MySQL 8.x**
- SQL DDL
- SQL DML
- SQL Queries

---

# 👨‍💻 Autor

**Lucas Pajarito**

Proyecto académico desarrollado para practicar bases de datos relacionales y consultas SQL avanzadas.