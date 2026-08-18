# Ejercicio 009 - Nivel Avanzado - Bloqueos Kickboxing

## 1. Temática

Kickboxing con bloqueos de filas y tablas para controlar accesos concurrentes y evitar inconsistencias.

## 2. Decisiones Técnicas

- **Diseño de Tablas (DDL):**
  - Tabla principal: `ejercicio-009-adv-luchadores`.
  - Tabla auditoría: `ejercicio-009-adv_bitacora`.
  - Columnas con `saldo` y `ultima_actualizacion` para seguimiento.
  - Uso de comillas invertidas para nombres con guiones.

- **Tipos de bloqueos:**
  - **FOR UPDATE:** Bloqueo de fila en transacción.
  - **LOCK TABLES READ:** Bloqueo de lectura (solo lectura).
  - **LOCK TABLES WRITE:** Bloqueo de escritura (lectura/escritura).

- **Procedimiento `sp_actualizar_saldo`:**
  - Inicia transacción.
  - Bloquea fila con `FOR UPDATE`.
  - Actualiza saldo.
  - Registra en bitácora.
  - Maneja errores con `ROLLBACK`.

- **Ventajas de bloqueos:**
  - Evita condiciones de carrera.
  - Garantiza consistencia en operaciones concurrentes.
  - Permite transacciones seguras.

- **Consultas (DQL):**
  - Ver estado antes y después.
  - Llamar procedimiento con bloqueo.
  - Pruebas de bloqueos de lectura/escritura.

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
Consulta 7
![Consulta7](evidencias/consulta7.png)
Consulta 8
![Consulta8](evidencias/consulta8.png)
Consulta 9
![Consulta9](evidencias/consulta9.png)
