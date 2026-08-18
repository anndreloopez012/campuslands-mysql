SELECT user, host, account_locked, password_expired 
FROM user 
WHERE user IN ('analista_deportivo', 'entrenador_equipo');

SELECT * FROM mysql.db 
WHERE user LIKE '%rol_%' OR user IN ('analista_deportivo', 'entrenador_equipo');

-- Verifica los permisos que tiene el usuario actualmente
SHOW GRANTS;