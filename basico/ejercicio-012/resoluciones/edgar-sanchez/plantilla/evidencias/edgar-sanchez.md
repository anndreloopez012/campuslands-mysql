# Ejercicio Básico 012: Playlist Musical

## 👤 Datos del Desarrollador
- **Nombre:** Edgar Sánchez
- **Fecha:** 29/07/2026
- **Tecnología / SGBD:** MySQL

---

## 📌 Descripción del Proyecto
Este módulo modela una entidad de biblioteca/playlist de música digital, permitiendo registrar las métricas de uso, metadatos y preferencias de usuario. El objetivo es estructurar una entidad robusta aplicando restricciones explícitas e indicadores analíticos mediante SQL.

---

## 💡 Solución Planteada
1. **Modelado de Entidad e Integridad:**
   - **Elección de Tipos de Datos:** Uso de `VARCHAR` dimensionados para textos, `INT` para contadores/tiempos y `BOOLEAN` para el estado de preferencia.
   - **Restricciones Dominio (`CHECK`):** Validación de géneros musicales estándar y aseguramiento de duraciones coherentes (entre 30 y 1200 segundos).
   - **Valores por Defecto:** Asignación automática de la fecha actual (`CURRENT_DATE`) e inicialización de banderas de favoritos y reproducciones en cero.

2. **Consultas de Negocio:**
   - Agrupamiento por género musical con conversión matemática directa de segundos a minutos (`ROUND(SUM(...) / 60.0, 2)`).
   - Filtrado dinámico por subconsulta para hallar temas con duración superior al promedio de la playlist.