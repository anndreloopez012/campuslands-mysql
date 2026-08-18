
CREATE ROLE 'rol_administrador_futsal';
CREATE ROLE 'rol_analista_futsal';
CREATE ROLE 'rol_operador_actas_futsal';

GRANT ALL PRIVILEGES ON *.* TO 'rol_administrador_futsal' WITH GRANT OPTION;

GRANT SELECT ON equipos_futsal TO 'rol_analista_futsal';
GRANT SELECT ON jugadores_futsal TO 'rol_analista_futsal';
GRANT SELECT ON encuentros_futsal TO 'rol_analista_futsal';
GRANT SELECT ON estadisticas_partido_futsal TO 'rol_analista_futsal';

GRANT SELECT, INSERT, UPDATE ON encuentros_futsal TO 'rol_operador_actas_futsal';
GRANT SELECT, INSERT, UPDATE ON estadisticas_partido_futsal TO 'rol_operador_actas_futsal';
GRANT SELECT ON equipos_futsal TO 'rol_operador_actas_futsal';
GRANT SELECT ON jugadores_futsal TO 'rol_operador_actas_futsal';

CREATE USER 'admin_futsal_usr'@'%' IDENTIFIED BY 'AdminFutsal2026#Secure!';
CREATE USER 'analista_futsal_usr'@'%' IDENTIFIED BY 'AnalistaFutsal2026#Data!';
CREATE USER 'operador_futsal_usr'@'%' IDENTIFIED BY 'OperadorFutsal2026#Actas!';

GRANT 'rol_administrador_futsal' TO 'admin_futsal_usr'@'%';
GRANT 'rol_analista_futsal' TO 'analista_futsal_usr'@'%';
GRANT 'rol_operador_actas_futsal' TO 'operador_futsal_usr'@'%';

SET DEFAULT ROLE 'rol_administrador_futsal' TO 'admin_futsal_usr'@'%';
SET DEFAULT ROLE 'rol_analista_futsal' TO 'analista_futsal_usr'@'%';
SET DEFAULT ROLE 'rol_operador_actas_futsal' TO 'operador_futsal_usr'@'%';

FLUSH PRIVILEGES;

SELECT 
    e.nombre_equipo,
    COUNT(j.jugador_id) AS cantidad_jugadores,
    ROUND(AVG(j.salario_mensual_usd), 2) AS salario_promedio_mensual,
    SUM(j.salario_mensual_usd) AS masa_salarial_mensual
FROM equipos_futsal e
LEFT JOIN jugadores_futsal j ON e.equipo_id = j.equipo_id
GROUP BY e.equipo_id, e.nombre_equipo
ORDER BY masa_salarial_mensual DESC;

SELECT 
    j.nombre_completo AS jugador,
    e.nombre_equipo,
    j.posicion,
    SUM(est.goles_anotados) AS goles_totales,
    SUM(est.asistencias) AS asistencias_totales,
    SUM(est.faltas_cometidas) AS faltas_acumuladas
FROM jugadores_futsal j
INNER JOIN equipos_futsal e ON j.equipo_id = e.equipo_id
INNER JOIN estadisticas_partido_futsal est ON j.jugador_id = est.jugador_id
GROUP BY j.jugador_id, j.nombre_completo, e.nombre_equipo, j.posicion
ORDER BY goles_totales DESC, asistencias_totales DESC;

SHOW GRANTS FOR 'analista_futsal_usr'@'%';
SHOW GRANTS FOR 'operador_futsal_usr'@'%';