# Ejercicio Básico 010: Carreras Urbanas

## 👤 Datos del Desarrollador
- **Nombre:** Edgar Sánchez
- **Fecha:** 29/07/2026
- **Tecnología / SGBD:** MySQL

---

## 📌 Descripción del Proyecto
Este módulo permite auditar y consultar las métricas financieras e indicadores de participación de un evento de carreras urbanas. Se enfoca en la aplicación de las funciones de agregación `COUNT()` y `SUM()` para el análisis de recaudación e indicadores deportivos.

---

## 💡 Solución Planteada
1. **Modelado e Integridad de Datos:**
   - Creación de la tabla `participantes_carrera` con restricciones `CHECK` para garantizar valores monetarios no negativos y restringir las distancias a circuitos oficiales (5K, 10K, 21K, 42K).

2. **Uso de Agregaciones (`COUNT` y `SUM`):**
   - **`COUNT()`**: Contabilización precisa de corredores clasificados según su estado de pago, finalización del recorrido o asignación de categoría.
   - **`SUM()`**: Cálculo del capital acumulado tanto en cuotas de inscripción como en donaciones adicionales, permitiendo obtener el gran total recaudado por el evento.
   - **Uso con `GROUP BY`**: Agrupación estratégica para desglosar métricas clave según la distancia y la categoría de los competidores.