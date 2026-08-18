# Ejercicio Básico 013: Catálogo de Películas de Miedo

## 👤 Datos del Desarrollador
- **Nombre:** Edgar Sánchez
- **Fecha:** 29/07/2026
- **Tecnología / SGBD:** MySQL

---

## 📌 Descripción del Proyecto
Este módulo administra la disponibilidad y métricas del catálogo de una plataforma/servicio de cine enfocado en el género de terror. Se centra en el filtrado dinámico mediante la columna de control `estado_disponibilidad`.

---

## 💡 Solución Planteada
1. **Modelado y Consistencia:**
   - Creación de la tabla `peliculas_terror` implementando validaciones `CHECK` sobre subgéneros aceptados, rangos de calificación (0.0 a 10.0) y la lista de estados válidos del catálogo.

2. **Filtros por Estado (`WHERE ... IN / =`):**
   - **Filtrado Unitario:** Aislamiento de registros en estado `'Streaming'` combinado con evaluaciones de calidad (`calificacion_audiencia > 7.0`).
   - **Filtrado Multiestado:** Consulta de títulos disponibles para difusión pública combinando los estados `'En Cartelera'` y `'Streaming'`.
   - **Segmentación de Negocio:** Uso de `GROUP BY` sobre el campo `estado_disponibilidad` para obtener balances estadísticos del catálogo.