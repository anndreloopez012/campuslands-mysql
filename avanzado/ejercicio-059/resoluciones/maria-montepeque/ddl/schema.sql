-- Campuslands MySQL - avanzado ejercicio 059
-- Resolucion: maria-montepeque
-- Tema: marketplace de accesorios
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP EVENT IF EXISTS ev_expirar_ofertas_marketplace_avanzado;
DROP TABLE IF EXISTS auditoria_ofertas_marketplace_avanzado;
DROP TABLE IF EXISTS ofertas_marketplace_avanzado;

CREATE TABLE ofertas_marketplace_avanzado (
  id_oferta INT AUTO_INCREMENT PRIMARY KEY,
  producto VARCHAR(120) NOT NULL,
  categoria ENUM('collares','pulseras','aretes','anillos','bolsos') NOT NULL,
  precio_original DECIMAL(10,2) NOT NULL,
  precio_oferta DECIMAL(10,2) NOT NULL,
  fecha_inicio DATETIME NOT NULL,
  fecha_fin DATETIME NOT NULL,
  estado ENUM('programada','activa','expirada') NOT NULL DEFAULT 'programada',
  CONSTRAINT chk_ofertas_marketplace_avanzado_precios CHECK (precio_oferta < precio_original)
) ENGINE=InnoDB;

CREATE TABLE auditoria_ofertas_marketplace_avanzado (
  id_log INT AUTO_INCREMENT PRIMARY KEY,
  id_oferta INT NOT NULL,
  accion VARCHAR(80) NOT NULL,
  ejecutado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- ===================================================================
-- Event Scheduler: revisa cada hora si alguna oferta ya vencio
-- (fecha_fin < NOW()) y la marca como 'expirada', dejando rastro en
-- la auditoria. Nadie tiene que acordarse de correr esto a mano.
--
-- El INSERT en la auditoria va ANTES del UPDATE, y usando el estado
-- viejo ('programada'/'activa') como condicion: asi cada oferta se
-- registra en la auditoria una sola vez, la primera vez que el evento
-- la encuentra vencida. En las siguientes ejecuciones ya no calificara
-- para el INSERT porque su estado ya sera 'expirada'.
-- ===================================================================
DELIMITER $$

CREATE EVENT ev_expirar_ofertas_marketplace_avanzado
ON SCHEDULE EVERY 1 HOUR
STARTS CURRENT_TIMESTAMP
DO
BEGIN
  INSERT INTO auditoria_ofertas_marketplace_avanzado (id_oferta, accion)
  SELECT id_oferta, 'expirada automaticamente por el event scheduler'
  FROM ofertas_marketplace_avanzado
  WHERE estado IN ('programada', 'activa') AND fecha_fin < NOW();

  UPDATE ofertas_marketplace_avanzado
  SET estado = 'expirada'
  WHERE estado IN ('programada', 'activa') AND fecha_fin < NOW();
END$$

DELIMITER ;
