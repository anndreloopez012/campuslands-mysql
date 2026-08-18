CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS auto_colores_disponibles;
DROP TABLE IF EXISTS autos_hiperdeportivos_1fn;

-- === DISEÑO INCORRECTO (referencia, NO se crea) ===
-- CREATE TABLE autos_mal_diseñada (
--   id_auto INT PRIMARY KEY,
--   modelo VARCHAR(60),
--   colores_disponibles VARCHAR(200)  -- ej: 'Rojo, Negro, Azul' <- VIOLA 1FN (valor no atomico)
-- );

-- === DISEÑO CORRECTO (cumple 1FN) ===
CREATE TABLE autos_hiperdeportivos_1fn (
  id_auto INT AUTO_INCREMENT PRIMARY KEY,
  marca VARCHAR(40) NOT NULL,
  modelo VARCHAR(60) NOT NULL,
  potencia_hp SMALLINT UNSIGNED NOT NULL,
  precio DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  estado ENUM('disponible','agotado','preventa') NOT NULL DEFAULT 'disponible'
);

-- Tabla separada: un color por fila, no una lista en una sola columna
CREATE TABLE auto_colores_disponibles (
  id_color INT AUTO_INCREMENT PRIMARY KEY,
  id_auto INT NOT NULL,
  color VARCHAR(30) NOT NULL,
  CONSTRAINT fk_auto_color FOREIGN KEY (id_auto) REFERENCES autos_hiperdeportivos_1fn(id_auto)
);