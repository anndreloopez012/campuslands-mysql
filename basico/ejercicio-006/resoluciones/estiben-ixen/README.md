# Ejercicio 006 - WHERE para Autos Hiperdeportivos

## Descripción

En este ejercicio se desarrolló una solución en MySQL para practicar el uso de la cláusula **WHERE**, permitiendo filtrar información específica dentro de una tabla de autos hiperdeportivos.

La base de datos utilizada es **campuslands_mysql**, donde se creó una tabla con información técnica y comercial de distintos vehículos.

---

# Estructura del proyecto

```
resoluciones/estiben-ixen/

├── README.md
├── ddl/
│   └── schema.sql
├── dml/
│   └── inserts.sql
└── dql/
    └── consultas.sql
```

---

# Orden de ejecución

Ejecutar los archivos en el siguiente orden:

1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

Todos los archivos utilizan la base de datos:

```sql
USE campuslands_mysql;
```

---

# Modelo de datos

La tabla **autos** almacena la siguiente información:

- Marca
- Modelo
- País de origen
- Año
- Velocidad máxima
- Potencia (HP)
- Precio
- Estado
- Fecha de fabricación

Se implementaron restricciones como **NOT NULL**, **CHECK** y **ENUM** para garantizar la integridad de los datos.

---

# Consultas desarrolladas

Las consultas utilizan la cláusula **WHERE** para filtrar información según diferentes criterios:

- Vehículos disponibles.
- Autos fabricados después de 2022.
- Vehículos con velocidad superior a 450 km/h.
- Autos con precio mayor a tres millones.
- Vehículos fabricados en Italia.
- Autos con más de 1500 HP.
- Vehículos vendidos.
- Vehículos reservados.

Cada consulta utiliza alias descriptivos para mejorar la presentación de los resultados.

---

# Validación

La solución es correcta cuando:

- `schema.sql` crea la tabla sin errores.
- `inserts.sql` inserta correctamente los registros.
- `consultas.sql` devuelve la información esperada utilizando la cláusula **WHERE**.

---

# Conclusión

Este ejercicio permitió comprender el funcionamiento de la cláusula **WHERE** en MySQL para realizar consultas filtradas según condiciones específicas. Además, se aplicaron buenas prácticas de diseño, organización de scripts y documentación para facilitar el mantenimiento y la comprensión del proyecto.