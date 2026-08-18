# Ejercicio 005 - Nivel Básico - SELECT Taller Mecánico de Motos

## 1. Temática

Taller mecánico de motos con consultas SELECT básicas para filtrar, ordenar y mostrar información.

## 2. Decisiones Técnicas

- **Diseño de Tablas (DDL):**
  - Una tabla: `ejercicio-005-bas-taller`.
  - Columnas: `id`, `cliente`, `marca`, `modelo`, `año`, `servicio`, `costo`, `fecha_ingreso`, `estado`.
  - PRIMARY KEY en `id` con AUTO_INCREMENT.
  - Uso de comillas invertidas para nombres con guiones.

- **Inserción de Datos (DML):**
  - 8 servicios de taller con diferentes estados.
  - Estados: 'completado', 'en proceso', 'pendiente'.
  - Fechas distribuidas en 2025.

- **Consultas (DQL):**
  - SELECT * para mostrar todos los datos.
  - SELECT con WHERE para filtrar por estado.
  - SELECT con ORDER BY para ordenar por costo.
  - SELECT con BETWEEN para filtrar por rango de fechas.
  - Proyección de columnas específicas para cada consulta.

## 3. Evidencias

*A continuación, se adjuntan capturas de pantalla que demuestran la ejecución y los resultados de los scripts SQL en phpMyAdmin.*

Definición de tablas e insertar datos
![Definición de tablas](evidencias/definirEinsertar.png)
Consulta 1
![Consulta1](evidencias/consulta1.png)
Consulta 2
![Consulta2](evidencias/consulta2.png)
Consulta 3
![Consulta3](evidencias/consulta3.png)
Consulta 4
![Consulta4](evidencias/consulta4.png)
Consulta 5
![Consulta5](evidencias/consulta5.png)