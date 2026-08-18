# Ejercicio 002 - Nivel Avanzado - Procedimientos Battle Royale

## 1. Temática

Ranking de jugadores de Battle Royale usando procedimientos almacenados para consultas y actualizaciones automáticas.

## 2. Decisiones Técnicas

- **Diseño de Tablas (DDL):**
  - Una tabla: `ejercicio-002-adv-jugadores`.
  - Columnas simples: `nick`, `nivel`, `puntaje`, `victorias`, `partidas`.
  - Uso de comillas invertidas `` ` `` para nombres con guiones.

- **Inserción de Datos (DML):**
  - 7 jugadores con estadísticas variadas.
  - Incluye jugadores de alto y bajo nivel.

- **Procedimientos:**
  - `sp_top_jugadores`: recibe límite y muestra top por puntaje.
  - `sp_actualizar_nivel`: incrementa nivel cada 10 victorias.
  - Uso de `DELIMITER` para crear procedimientos correctamente.

- **Consultas (DQL):**
  - Ver datos antes y después de procedimientos.
  - Llamar procedimientos con diferentes parámetros.

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