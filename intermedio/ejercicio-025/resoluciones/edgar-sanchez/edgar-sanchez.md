## Analisis

**Datos del Desarrollador**
*   **SGBD:** MySQL

**Descripción del Módulo**
Este módulo aplica restricciones de unicidad mediante la cláusula **UNIQUE** en MySQL dentro del contexto de un Laboratorio de Fórmulas Químicas. La solución garantiza la integridad de los datos evitando duplicados en identificadores estándares de la industria química, credenciales del personal y combinaciones operacionales clave en las fórmulas registradas.

**Organización y Decisiones Técnicas**
*   **Implementación y Control de Restricciones `UNIQUE`:**
    - Se aplicó la restricción `UNIQUE` simple en columnas que requieren identificadores inequívocos como `codigo_cas` (registro CAS de sustancias químicas), `nombre_quimico`, `numero_colegiado`, `correo` corporativo y `codigo_formula`.
    - Se definieron restricciones `UNIQUE` compuestas para prevenir redundancias operativas: `(analista_creador_id, nombre_formula)` para impedir que un mismo químico registre dos fórmulas con idéntico nombre, y `(formula_id, reactivo_id)` en la tabla `composicion_formula` para asegurar que un mismo reactivo no se repita en la misma receta.
*   **Integridad Referencial y Dominio:**
    - Claves foráneas configuradas con `ON DELETE RESTRICT` y `ON UPDATE CASCADE` en el núcleo del laboratorio para proteger el catálogo de reactivos y personal colegiado.
    - `ON DELETE CASCADE` en `composicion_formula` para remover automáticamente las proporciones asociadas si una fórmula es eliminada.
    - Restricciones `CHECK` para porcentajes de pureza ($0.00\% \text{ a } 100.00\%$), masas positivas ($> 0.000\text{ g}$) y dominios discretos para niveles de acceso y estados de fórmulas.
*   **Ausencia de Comentarios Internos:** Todas las sentencias DDL, DML y DQL se presentan totalmente limpias de comentarios en línea para dar estricto cumplimiento a las directrices técnicas fijadas.