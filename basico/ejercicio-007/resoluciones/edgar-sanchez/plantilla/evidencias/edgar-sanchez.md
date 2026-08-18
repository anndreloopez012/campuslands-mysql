# Ejercicio Básico 007: Liga de Fútbol

## 👤 Datos del Desarrollador
- **Nombre:** Edgar Sánchez
- **Fecha:** 28/07/2026
- **Tecnología / SGBD:** MySQL

---

## 📌 Descripción del Proyecto
Este módulo gestiona la tabla de posiciones y estadísticas deportivas de una liga de fútbol. Se enfoca en la aplicación técnica de la cláusula `ORDER BY` para organizar clasificaciones de torneo, rankings ofensivos/defensivos y listados alfabéticos.

---

## 💡 Solución Planteada
1. **Modelado y Consistencia:**
   - Creación de la tabla `equipos_liga` garantizando la integridad de datos mediante restricciones `CHECK` en contadores de partidos, goles y puntos.

2. **Uso de Ordenamiento (`ORDER BY`):**
   - **Criterio Múltiple:** Clasificación de tabla general ordenando primero por `puntos DESC` y desencadenando empates mediante la expresión calculada `(goles_a_favor - goles_en_contra) DESC`.
   - **Direccionalidad:** Uso explícito de `ASC` para ordenamientos alfabéticos y mejores marcas defensivas, junto a `DESC` para tablas de rendimiento y goleo.