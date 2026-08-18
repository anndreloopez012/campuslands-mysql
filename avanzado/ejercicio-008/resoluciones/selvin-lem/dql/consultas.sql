USE campuslands_mysql;

-- 1. Listado general de staff
SELECT * FROM futsal_staff;

-- 2. Verificar los privilegios otorgados al usuario admin
SHOW GRANTS FOR 'futsal_admin'@'%';

-- 3. Verificar los privilegios del entrenador DESPUES del REVOKE (solo debe quedar SELECT)
SHOW GRANTS FOR 'futsal_entrenador'@'%';

-- 4. Verificar los privilegios del usuario lector (menor nivel de acceso)
SHOW GRANTS FOR 'futsal_lector'@'%';

-- 5. Staff activo por cargo (consulta normal de negocio sobre la tabla protegida)
SELECT cargo, COUNT(*) AS total_staff
FROM futsal_staff
WHERE estado = 'activo'
GROUP BY cargo
ORDER BY total_staff DESC;