# Resolución Ejercicio 010 - Backup Lógico (Carreras Urbanas)

**Autor:** Sergio Miranda Ajú
**Fecha:** Julio 2026

## Descripción del Proyecto
Resolución del módulo avanzado enfocado en la comprensión y ejecución de **respaldos lógicos (Logical Backups)** en MySQL. Se estructuró un sistema de control para carreras urbanas, permitiendo verificar la integridad de los datos antes y después de un proceso de exportación/importación.

## Decisiones Técnicas
- **Estructura Modular:** Los scripts se dividieron rigurosamente en DDL (`schema.sql`), DML (`inserts.sql` ideal para respaldos basados en sentencias `INSERT`) y DQL (`consultas.sql`).
- **Tipado Preciso:** Se usó `DECIMAL(4,2)` para distancias y `DECIMAL(6,2)` para los tiempos en minutos, permitiendo cálculos exactos de rendimiento (min/km). El estado se controló mediante un `ENUM`.

## Instrucciones de Ejecución y Respaldo
1. **Ejecución inicial:** Carga secuencial de los scripts `schema.sql`, `inserts.sql` y `consultas.sql`.
2. **Generación de Backup Lógico (Comando de Terminal):**
   ```bash
   mysqldump -u root -p campuslands_mysql ejercicio_010_carreras_urbanas > backup_carreras.sql