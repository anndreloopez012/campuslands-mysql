-- funcionalidades/ejercicio-014 - maria-montepeque
USE campuslands_mysql;

-- 1. Los 12 INSERT de dml/inserts.sql ya dispararon trg_frames_after_insert:
-- gasto_actual y total_frames estan correctos SIN que nadie los haya escrito
-- a mano.
SELECT nombre, estado, presupuesto, gasto_actual, total_frames
FROM proyectos_animacion
ORDER BY id;

-- 2. Un INSERT nuevo, en vivo, para ver el trigger actuar en este momento.
INSERT INTO renders_frames (proyecto_id, numero_frame, costo_render, estado_render)
VALUES (2, 5, 133.25, 'renderizado');

SELECT nombre, gasto_actual, total_frames
FROM proyectos_animacion
WHERE nombre = 'Mundo de Cristal';

-- 3. DELETE de un frame: trg_frames_after_delete resta su costo y baja el
-- contador (se borra el frame 6 de 'Aventura Estelar', el que quedo 'pendiente').
DELETE FROM renders_frames WHERE proyecto_id = 1 AND numero_frame = 6;

SELECT nombre, gasto_actual, total_frames
FROM proyectos_animacion
WHERE nombre = 'Aventura Estelar';

-- 4. UPDATE valido: sube el presupuesto de 'Cortometraje Eco' (por encima de
-- lo ya gastado) y cambia el estado de 'Mundo de Cristal' a 'finalizado'.
-- Ambos cambios quedan registrados por trg_proyecto_after_update.
UPDATE proyectos_animacion SET presupuesto = 9000.00 WHERE nombre = 'Cortometraje Eco';
UPDATE proyectos_animacion SET estado = 'finalizado' WHERE nombre = 'Mundo de Cristal';

SELECT proyecto_id, campo, valor_anterior, valor_nuevo, modificado_en
FROM auditoria_proyectos
ORDER BY id;

-- 5. DELETE permitido: 'Cortometraje Eco' esta 'pausado' (no 'produccion'),
-- asi que trg_proyecto_before_delete lo deja pasar. El ON DELETE CASCADE
-- de la FK borra tambien sus 2 renders_frames.
DELETE FROM proyectos_animacion WHERE nombre = 'Cortometraje Eco';

SELECT COUNT(*) AS frames_de_cortometraje_eco
FROM renders_frames
WHERE proyecto_id = 3;

-- === Estas dos sentencias DEBEN fallar (se ejecutan aparte, ver evidencias/resultados_consultas.txt) ===
--
-- 6. Bajar el presupuesto de 'Aventura Estelar' por debajo de lo ya gastado
-- (gasto_actual quedo en 516.50 tras el paso 3). trg_proyecto_before_update
-- lo debe rechazar.
-- UPDATE proyectos_animacion SET presupuesto = 100.00 WHERE nombre = 'Aventura Estelar';
--
-- 7. Borrar 'Aventura Estelar' mientras sigue 'produccion'.
-- trg_proyecto_before_delete lo debe rechazar.
-- DELETE FROM proyectos_animacion WHERE nombre = 'Aventura Estelar';
