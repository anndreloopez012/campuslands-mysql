# Ejercicio 010 - COUNT y SUM para Carreras Urbanas

## Descripción

En esta práctica se desarrolló una base de datos orientada a una competencia de carreras urbanas con el objetivo de practicar las funciones de agregación **COUNT()** y **SUM()** en MySQL.

La solución fue desarrollada utilizando la base de datos **campuslands_mysql** y una tabla exclusiva llamada **corredores_carreras_urbanas**, evitando conflictos con otros ejercicios.

---

## Estructura del proyecto

```text
resoluciones/nombre-apellido/

├── README.md
├── ddl/
│   └── schema.sql
├── dml/
│   └── inserts.sql
└── dql/
    └── consultas.sql
```

---

## Orden de ejecución

Ejecutar los archivos en el siguiente orden:

1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

Todos los archivos utilizan:

```sql
USE campuslands_mysql;
```

---

## Modelo de datos

La tabla **corredores_carreras_urbanas** almacena:

- Nombre del corredor.
- Ciudad.
- Categoría.
- Edad.
- Tiempo empleado.
- Distancia recorrida.
- Estado de participación.

Se implementaron restricciones **NOT NULL**, **CHECK**, **DEFAULT** y **ENUM** para garantizar la calidad de la información.

---

## Consultas desarrolladas

Durante la práctica se utilizaron las funciones de agregación **COUNT()** y **SUM()** para obtener indicadores como:

- Cantidad total de corredores.
- Total de corredores finalizados.
- Suma de kilómetros recorridos.
- Tiempo total acumulado.
- Total de corredores por categorías.
- Kilómetros recorridos en maratón.

Las consultas utilizan alias descriptivos para facilitar la interpretación de los resultados.

---

## Validación

La solución cumple correctamente cuando:

- `schema.sql` crea la tabla sin errores.
- `inserts.sql` registra correctamente los diez corredores.
- `consultas.sql` devuelve resultados utilizando correctamente las funciones **COUNT()** y **SUM()**.

---

## Conclusión

Este ejercicio permitió comprender cómo utilizar las funciones **COUNT()** y **SUM()** para generar indicadores estadísticos en MySQL. Estas funciones son fundamentales para elaborar reportes y obtener métricas útiles en cualquier sistema de información.