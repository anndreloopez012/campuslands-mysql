# Ejercicio Básico 006: Autos Hiperdeportivos

## 👤 Datos del Desarrollador
- **Nombre:** Edgar Sánchez
- **Fecha:** 26/07/2026
- **Tecnología / SGBD:** MySQL

---

## 📌 Descripción del Proyecto
Este módulo permite la gestión y consulta selectiva de un catálogo de vehículos de altas prestaciones. Está enfocado en aplicar filtros precisos sobre datos técnicos (potencia, velocidad, precio y tiraje de producción) usando la cláusula `WHERE` en MySQL.

---

## 💡 Solución Planteada
1. **Modelado y Restricciones:**
   - Creación de la tabla `autos_hiperdeportivos` con validaciones tipo `CHECK` para asegurar datos numéricos y categorías de transmisión válidas.

2. **Uso de Filtros SQL (`WHERE`):**
   - **Operadores de comparación (`>=`, `<=`)**: Evaluación de potencia y tiraje de producción.
   - **Rango (`BETWEEN`)**: Filtrado de autos dentro de un rango de presupuesto.
   - **Inclusión (`IN`)**: Búsqueda por múltiples países de origen simultáneamente.
   - **Lógica Compuesta (`AND` / `OR`)**: Combinación de criterios para detectar autos de alta velocidad o de tecnología exclusiva.