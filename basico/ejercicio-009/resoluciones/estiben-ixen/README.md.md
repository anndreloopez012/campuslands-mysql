# Ejercicio 009 - DELETE Controlado para Kickboxing

## Descripción

Esta práctica tiene como objetivo aprender el uso de la instrucción **DELETE** en MySQL mediante una base de datos inspirada en un torneo de kickboxing. Se creó una tabla con información de distintos peleadores y posteriormente se realizaron eliminaciones controladas utilizando diferentes condiciones.

La solución fue desarrollada sobre la base de datos **campuslands_mysql**.

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

---

## Modelo de datos

Se diseñó una tabla llamada **peleadores_kickboxing** que almacena:

- Nombre.
- País.
- Categoría.
- Victorias.
- Derrotas.
- Edad.
- Estado.

Para mantener la integridad de los datos se implementaron restricciones **NOT NULL**, **CHECK**, **DEFAULT** y **ENUM**.

---

## Operaciones realizadas

Durante la práctica se utilizaron instrucciones **DELETE** para:

- Eliminar un peleador retirado.
- Eliminar un peleador suspendido.
- Eliminar un registro utilizando la llave primaria.
- Eliminar peleadores mayores de 32 años.
- Eliminar peleadores con más de siete derrotas.

Después de cada eliminación se ejecuta una consulta **SELECT** para verificar el resultado.

---

## Validación

La solución es correcta cuando:

- `schema.sql` crea correctamente la tabla.
- `inserts.sql` inserta los diez registros.
- `consultas.sql` elimina únicamente los registros indicados mediante la cláusula **WHERE**.

---

## Conclusión

Este ejercicio permitió comprender la importancia de utilizar **DELETE** junto con **WHERE** para eliminar únicamente los registros necesarios. También reforzó las buenas prácticas de validar los resultados después de cada operación y mantener una estructura organizada en los scripts SQL.