# Ejercicio Básico 011: Ping Pong

## 👤 Datos del Desarrollador
- **Nombre:** Edgar Sánchez
- **Fecha:** 29/07/2026
- **Tecnología / SGBD:** MySQL

---

## 📌 Descripción del Proyecto
Este módulo permite la gestión de la tabla de posiciones y expediente técnico de un torneo o academia de Ping Pong (Tenis de Mesa). El foco principal radica en el diseño e implementación de validaciones de dominio y consistencia en el motor de base de datos MySQL.

---

## 💡 Solución Planteada
1. **Modelado y Validaciones Integradas:**
   - **`CHECK`:** Garantía de valores permitidos en campos categóricos como `mano_dominante` ('Diestro', 'Zurdo') y la restricción estricta de no negatividad para contadores de partidos y `puntos_ranking`.
   - **`DEFAULT`:** Asignación automática de valores estándar (ej. 1000 puntos base de ranking al registrar un jugador nuevo).
   - **`UNIQUE`:** Evita la duplicación de documentos de identidad en el sistema.