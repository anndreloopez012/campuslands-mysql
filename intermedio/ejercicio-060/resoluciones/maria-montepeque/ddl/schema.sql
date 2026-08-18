-- Campuslands MySQL - intermedio ejercicio 060
-- Resolucion: maria-montepeque
-- Tema: equipo de streaming
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS creadores_intermedio;
DROP TABLE IF EXISTS creadores_staging_intermedio;

-- Tabla de staging: aterrizan los datos "crudos" tal como llegarian
-- de un archivo externo (CSV, export de otra plataforma, etc.). Todo
-- es texto y no hay restricciones, porque en esta etapa los datos
-- pueden venir con espacios, mayusculas inconsistentes o duplicados.
CREATE TABLE creadores_staging_intermedio (
  nombre_canal VARCHAR(150),
  categoria VARCHAR(80),
  seguidores VARCHAR(50),
  pais VARCHAR(80)
);

-- Tabla final, limpia: aqui si aplican los tipos y restricciones
-- correctas, porque solo debe llegar informacion ya validada.
CREATE TABLE creadores_intermedio (
  id_creador INT AUTO_INCREMENT PRIMARY KEY,
  nombre_canal VARCHAR(150) NOT NULL UNIQUE,
  categoria ENUM('juegos','musica','arte','programacion','variedad') NOT NULL,
  seguidores INT NOT NULL,
  pais VARCHAR(80) NOT NULL,
  CONSTRAINT chk_creadores_intermedio_seguidores CHECK (seguidores >= 0)
);
