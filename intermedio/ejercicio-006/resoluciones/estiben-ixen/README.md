# Ejercicio 006 - Normalizacion 1FN Autos Hiperdeportivos


## Descripcion

Este proyecto implementa una base de datos MySQL enfocada en autos hiperdeportivos aplicando principios de normalizacion en Primera Forma Normal (1FN).


## Objetivo

Crear una estructura organizada donde cada registro represente un unico auto con atributos individuales, evitando grupos repetidos o datos almacenados en una sola columna.


## Estructura del proyecto
```
├── README.md

├── ddl/
│ └── schema.sql

├── dml/
│ └── inserts.sql

└── dql/
└── consultas.sql
```


## Modelo aplicado

Tabla principal:

`hyper_sports_cars`


Cada columna representa un atributo atomico:

- Marca
- Modelo
- Año
- Tipo de motor
- Potencia
- Velocidad maxima
- Precio
- Pais de origen
- Estado


## Decisiones tecnicas

- Se utilizo AUTO_INCREMENT para generar identificadores unicos.
- Se aplicaron restricciones CHECK para evitar valores incorrectos.
- Se utilizo DECIMAL para manejar precios con precision.
- Se separaron scripts SQL por responsabilidad:
  - DDL: estructura.
  - DML: insercion de datos.
  - DQL: consultas.


## Ejecucion

Ejecutar en este orden:

1. ddl/schema.sql
2. dml/inserts.sql
3. dql/consultas.sql


## Consultas incluidas

- Ranking por velocidad maxima.
- Autos con mayor potencia.
- Promedio de precios por pais.
- Top 5 autos mas caros.
- Filtros por año.
- Conteo por estado.


## Tecnologias utilizadas

- MySQL 8+
- SQL