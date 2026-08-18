# Ejercicio 010 - Nivel Avanzado - Backup Lógico Carreras Urbanas

## 1. Temática

Carreras urbanas con sistema de backup simple usando tablas duplicadas.

## 2. Decisiones Técnicas

- **Diseño de Tablas (DDL):**
  - Tabla principal: `ejercicio-010-adv-corredores`.
  - Tabla backup: `ejercicio-010-adv-corredores_backup` (misma estructura).
  - Tabla historial: `ejercicio-010-adv-backups`.
  - Uso de comillas invertidas para nombres con guiones.

- **Método de backup (sin procedimientos):**
  - `INSERT INTO ... SELECT`: Copia todos los datos.
  - `INSERT INTO ... SELECT COUNT(*)`: Registra en historial.
  - Restauración con `INSERT SELECT` desde backup.

- **Ventajas:**
  - Sin procedimientos complicados.
  - Sin privilegios especiales.
  - Fácil de entender.
  - Copia exacta de datos.

- **Pasos:**
  1. Crear tabla backup con misma estructura.
  2. Copiar datos con INSERT SELECT.
  3. Restaurar cuando sea necesario.

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
Consulta 7 y 8
![Consulta7](evidencias/consulta7-8.png)
