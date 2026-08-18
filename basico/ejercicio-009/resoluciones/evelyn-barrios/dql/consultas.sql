-- basico/ejercicio-009 - evelyn-barrios
-- Práctica de la sentencia DELETE de forma controlada
USE campuslands_mysql;

-- Antes de borrar, veamos todos los registros iniciales.
SELECT * FROM kickboxers;

-- Escenario 1: Eliminar un registro de prueba específico.
-- El peleador 'John Doe' es un registro basura y debe ser eliminado.

-- Paso 1.1: (Práctica recomendada) Verificar qué se va a borrar.
SELECT * FROM kickboxers WHERE nombre = 'John Doe';

-- Paso 1.2: Ejecutar el borrado.
DELETE FROM kickboxers WHERE nombre = 'John Doe';

-- Paso 1.3: Confirmar que el registro ya no existe.
SELECT * FROM kickboxers WHERE nombre = 'John Doe';


-- Escenario 2: Limpieza de datos. Eliminar todos los peleadores retirados.
-- La base de datos solo debe contener peleadores activos o inactivos temporalmente.

-- Paso 2.1: (Práctica recomendada) Verificar los registros a eliminar.
SELECT * FROM kickboxers WHERE estado = 'Retirado';

-- Paso 2.2: Ejecutar el borrado masivo controlado.
DELETE FROM kickboxers WHERE estado = 'Retirado';

-- Paso 2.3: Confirmar que no quedan peleadores retirados (la consulta no debe devolver resultados).
SELECT * FROM kickboxers WHERE estado = 'Retirado';

-- Estado final de la tabla después de las eliminaciones.
SELECT * FROM kickboxers;