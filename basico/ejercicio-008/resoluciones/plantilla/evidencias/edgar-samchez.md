# Ejercicio Básico 008: Fútbol Sala

## 👤 Datos del Desarrollador
- **Nombre:** Edgar Sánchez
- **Fecha:** 28/07/2026
- **Tecnología / SGBD:** MySQL

---

## 📌 Descripción del Proyecto
Este módulo permite la administración y actualización del rendimiento atlético y disciplina de un plantel de fútbol sala. Se enfoca en la aplicación profesional de la sentencia `UPDATE` para mantener sincronizados los contadores de partidos, goles y estados de disponibilidad de los jugadores.

---

## 💡 Solución Planteada
1. **Modelado e Integridad:**
   - Construcción de la tabla `jugadores_futsal` con restricciones `CHECK` para garantizar que los contadores deportivos no tomen valores negativos y los estados cumplan con los valores de catálogo permitidos.

2. **Uso de Modificaciones Condicionales (`UPDATE`):**
   - **Actualización Incremental:** Incremento de `partidos_jugados`, `goles_anotados` y `asistencias` tomando como base sus valores anteriores (`campo = campo + n`).
   - **Actualización por Regla de Negocio:** Cambio masivo del campo `estado` a `'Suspendido'` para atletas con acumulación de tarjetas amarillas (`tarjetas_amarillas >= 5`).
   - **Uso Estricto del `WHERE`:** Garantía de actualizaciones seguras limitadas por `jugador_id` o condiciones lógicas específicas para evitar la modificación accidental de toda la tabla.