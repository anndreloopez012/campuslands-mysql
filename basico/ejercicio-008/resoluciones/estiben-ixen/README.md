# Ejercicio 008 - UPDATE para Fútbol Sala

## Descripción

El objetivo de esta práctica es aprender el uso de la instrucción **UPDATE** en MySQL mediante un escenario basado en un torneo de fútbol sala. Se desarrolló una tabla con información de jugadores y posteriormente se realizaron diferentes actualizaciones sobre los registros existentes.

La solución fue desarrollada utilizando la base de datos **campuslands_mysql**.

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

1. ddl/schema.sql
2. dml/inserts.sql
3. dql/consultas.sql

---

## Modelo de datos

Se creó la tabla **jugadores_futbol_sala**, la cual almacena:

- Nombre
- Equipo
- Posición
- Edad
- Goles
- Asistencias
- Salario
- Estado

Se aplicaron restricciones **NOT NULL**, **CHECK**, **DEFAULT** y **ENUM** para garantizar la integridad de los datos.

---

## Operaciones realizadas

Durante la práctica se realizaron varias actualizaciones utilizando **UPDATE**:

- Actualizar el salario de un jugador.
- Cambiar el estado de un jugador lesionado.
- Incrementar la cantidad de goles.
- Cambiar un jugador de equipo.
- Modificar las asistencias.
- Actualizar el salario de todos los jugadores activos.

Cada actualización fue verificada mediante una consulta **SELECT**.

---

## Validación

La solución es correcta cuando:

- schema.sql crea correctamente la tabla.
- inserts.sql registra los diez jugadores.
- consultas.sql ejecuta correctamente todas las instrucciones UPDATE.
- Los SELECT muestran la información actualizada.

---

## Conclusión

Esta práctica permitió comprender el funcionamiento de la instrucción **UPDATE** y la importancia de utilizar la cláusula **WHERE** para modificar únicamente los registros deseados. Además, se reforzaron buenas prácticas de organización, documentación y diseño de bases de datos.