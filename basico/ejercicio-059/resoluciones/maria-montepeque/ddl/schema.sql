-- Campuslands MySQL - basico ejercicio 059
-- Resolucion: maria-montepeque
-- Tema: marketplace de accesorios
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS pedidos_accesorios_basico;

CREATE TABLE pedidos_accesorios_basico (
  id_pedido INT AUTO_INCREMENT PRIMARY KEY,
  producto VARCHAR(120) NOT NULL,
  categoria ENUM('collares','pulseras','aretes','anillos','bolsos') NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  fecha_pedido DATE NOT NULL,
  fecha_entrega_estimada DATE NOT NULL,
  estado ENUM('pendiente','enviado','entregado','cancelado') NOT NULL DEFAULT 'pendiente',
  CONSTRAINT chk_pedidos_accesorios_basico_precio CHECK (precio > 0),
  CONSTRAINT chk_pedidos_accesorios_basico_fechas CHECK (fecha_entrega_estimada >= fecha_pedido)
);
