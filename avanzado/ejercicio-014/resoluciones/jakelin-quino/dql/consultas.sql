-- 1. Ver películas antes de actualizar
SELECT * FROM `ejercicio-014-adv-peliculas`;

-- 2. Ejecutar procedimiento manualmente
CALL `sp_actualizar_vistas`();

-- 3. Ver películas después de actualizar
SELECT * FROM `ejercicio-014-adv-peliculas`;

-- 4. Ejecutar procedimiento de películas antiguas
CALL `sp_peliculas_antiguas`();

-- 5. Ver log de operaciones
SELECT * FROM `ejercicio-014-adv_log`
ORDER BY fecha DESC;

-- 6. Ver estadísticas actualizadas
SELECT titulo, vistas, ultima_actualizacion
FROM `ejercicio-014-adv-peliculas`
ORDER BY vistas DESC;

-- 7. Ejecutar múltiples veces (simular automatización)
CALL `sp_actualizar_vistas`();
CALL `sp_actualizar_vistas`();

-- 8. Ver cambios después de varias ejecuciones
SELECT titulo, vistas, ultima_actualizacion
FROM `ejercicio-014-adv-peliculas`
ORDER BY vistas DESC;