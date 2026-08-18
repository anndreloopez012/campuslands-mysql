-- Campuslands MySQL - avanzado ejercicio 060
-- Resolucion: maria-montepeque
-- Tema: equipo de streaming
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS interacciones_chat_avanzado;

CREATE TABLE interacciones_chat_avanzado (
  id_interaccion INT AUTO_INCREMENT PRIMARY KEY,
  creador VARCHAR(80) NOT NULL,
  usuario VARCHAR(80) NOT NULL,
  tipo_interaccion ENUM('mensaje','suscripcion','donacion','ban') NOT NULL,
  fecha DATETIME NOT NULL
);

-- A proposito NO se crea todavia ningun indice sobre "creador": este
-- ejercicio mide el costo real de consultar sin indice y despues el
-- impacto real de agregarlo (ver dml/inserts.sql y dql/consultas.sql).
