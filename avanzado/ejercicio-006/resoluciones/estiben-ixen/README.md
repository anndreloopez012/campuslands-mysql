# Ejercicio 006 - EXPLAIN para Autos Hiperdeportivos

## Descripción

La solución desarrolla una base de datos orientada al almacenamiento de información sobre autos hiperdeportivos. El propósito principal del ejercicio es aprender a utilizar la instrucción **EXPLAIN** de MySQL para analizar cómo el optimizador ejecuta una consulta antes de recuperar los datos.

Además de construir la estructura de la tabla, se implementaron registros realistas, índices y consultas enfocadas en responder preguntas comunes dentro de un concesionario especializado.

---

# Archivos del proyecto

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

1. ddl/schema.sql
2. dml/inserts.sql
3. dql/consultas.sql

Todos los scripts utilizan la base de datos:

```sql
USE campuslands_mysql;
```

---

# Modelo de datos

Se diseñó una tabla llamada **autos**, que almacena la siguiente información:

- Marca
- Modelo
- País de origen
- Año
- Velocidad máxima
- Potencia en caballos de fuerza
- Precio
- Estado del vehículo
- Fecha de fabricación

Para mejorar el rendimiento de las consultas se crearon índices sobre las columnas más utilizadas.

---

# Consultas implementadas

Las consultas responden necesidades reales de negocio:

- Listar los autos disponibles.
- Mostrar los cinco vehículos más veloces.
- Calcular el precio promedio por país.
- Buscar autos con más de 1500 HP.
- Obtener el valor total del inventario disponible.
- Contar vehículos según su estado.

Antes de ejecutar cada consulta se utiliza **EXPLAIN**, permitiendo observar:

- Tipo de acceso.
- Índices utilizados.
- Cantidad estimada de registros.
- Estrategia empleada por el optimizador.

---

# Decisiones técnicas

Durante el desarrollo se aplicaron las siguientes buenas prácticas:

- Llave primaria AUTO_INCREMENT.
- Restricciones NOT NULL.
- Restricciones CHECK para validar datos.
- Uso de ENUM para controlar el estado.
- Índices para optimizar filtros y ordenamientos.
- Alias descriptivos en consultas de reporte.

---

# Validación

La solución es correcta cuando:

- schema.sql se ejecuta sin errores.
- inserts.sql registra correctamente los vehículos.
- consultas.sql devuelve resultados esperados.
- EXPLAIN muestra el plan de ejecución de cada consulta.

---

# Conclusión

El ejercicio permitió comprender la utilidad de **EXPLAIN** para analizar el rendimiento de las consultas SQL y verificar cómo MySQL accede a la información almacenada. El uso de índices, consultas organizadas y una estructura bien documentada facilita el mantenimiento y la optimización de la base de datos.