# Ejercicio 009 - Nivel Intermedio - FOREIGN KEY Kickboxing

## 1. Temática

Kickboxing con FOREIGN KEY para mantener integridad referencial entre luchadores, categorías y gimnasios.

## 2. Decisiones Técnicas

- **Diseño de Tablas (DDL):**
  - 3 tablas relacionadas:
    - `ejercicio-009-int-categorias`: Catálogo de categorías por peso.
    - `ejercicio-009-int-gimnasios`: Información de gimnasios.
    - `ejercicio-009-int-luchadores`: Datos de luchadores con FOREIGN KEY.
  - Llaves foráneas:
    - `categoria_id` → `ejercicio-009-int-categorias(id)`
    - `gimnasio_id` → `ejercicio-009-int-gimnasios(id)`
  - `UNIQUE` en nombres para evitar duplicados.
  - Uso de comillas invertidas para nombres con guiones.

- **Ventajas de FOREIGN KEY:**
  - Integridad referencial garantizada.
  - Evita registros huérfanos.
  - Cascada en eliminaciones/actualizaciones (opcional).
  - Mejora la consistencia de datos.

- **Inserción de Datos (DML):**
  - 4 categorías con rangos de peso.
  - 3 gimnasios en diferentes ciudades.
  - 8 luchadores con relaciones correctas.

- **Consultas (DQL):**
  - INNER JOIN para mostrar datos relacionados.
  - LEFT JOIN para incluir categorías sin luchadores.
  - Filtros por ciudad y condiciones de peso.
  - Verificación de integridad con BETWEEN.

## 3. Evidencias

*A continuación, se adjuntan capturas de pantalla que demuestran la ejecución y los resultados de los scripts SQL en phpMyAdmin.*

Definición de tablas e inserción de datos
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
Consulta 6
![Consulta6](evidencias/consulta6.png)
