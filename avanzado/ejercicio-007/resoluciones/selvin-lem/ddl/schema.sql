CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP VIEW IF EXISTS vw_tabla_posiciones;
DROP VIEW IF EXISTS vw_equipos_activos;
DROP TABLE IF EXISTS liga_partidos;
DROP TABLE IF EXISTS liga_equipos_v2;

CREATE TABLE liga_equipos_v2 (
  id_equipo INT AUTO_INCREMENT PRIMARY KEY,
  nombre_equipo VARCHAR(60) NOT NULL UNIQUE,
  ciudad VARCHAR(50) NOT NULL,
  estado ENUM('activo','sancionado') NOT NULL DEFAULT 'activo'
);

CREATE TABLE liga_partidos (
  id_partido INT AUTO_INCREMENT PRIMARY KEY,
  id_equipo_local INT NOT NULL,
  id_equipo_visitante INT NOT NULL,
  goles_local TINYINT UNSIGNED NOT NULL DEFAULT 0,
  goles_visitante TINYINT UNSIGNED NOT NULL DEFAULT 0,
  fecha_partido DATE NOT NULL,
  CONSTRAINT fk_local FOREIGN KEY (id_equipo_local) REFERENCES liga_equipos_v2(id_equipo),
  CONSTRAINT fk_visitante FOREIGN KEY (id_equipo_visitante) REFERENCES liga_equipos_v2(id_equipo)
);

-- Vista 1: simple, filtra equipos activos (actualizable, sin JOIN ni agregacion)
CREATE VIEW vw_equipos_activos AS
SELECT id_equipo, nombre_equipo, ciudad
FROM liga_equipos_v2
WHERE estado = 'activo';

-- Vista 2: compleja, calcula tabla de posiciones combinando JOIN y agregacion (solo lectura)
CREATE VIEW vw_tabla_posiciones AS
SELECT
  e.nombre_equipo,
  COUNT(p.id_partido) AS partidos_jugados,
  SUM(
    CASE
      WHEN p.id_equipo_local = e.id_equipo AND p.goles_local > p.goles_visitante THEN 3
      WHEN p.id_equipo_visitante = e.id_equipo AND p.goles_visitante > p.goles_local THEN 3
      WHEN p.goles_local = p.goles_visitante THEN 1
      ELSE 0
    END
  ) AS puntos
FROM liga_equipos_v2 e
LEFT JOIN liga_partidos p
  ON e.id_equipo = p.id_equipo_local OR e.id_equipo = p.id_equipo_visitante
GROUP BY e.nombre_equipo;