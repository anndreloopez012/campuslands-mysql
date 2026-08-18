CREATE TABLE categorias_repuesto (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(200) NOT NULL
);

CREATE TABLE repuestos_moto (
    repuesto_id INT AUTO_INCREMENT PRIMARY KEY,
    categoria_id INT NOT NULL,
    codigo_sku VARCHAR(30) NOT NULL UNIQUE,
    nombre_repuesto VARCHAR(100) NOT NULL,
    precio_unitario_usd DECIMAL(10,2) NOT NULL CONSTRAINT chk_precio_repuesto CHECK (precio_unitario_usd > 0.00),
    stock_actual INT NOT NULL DEFAULT 0 CONSTRAINT chk_stock_repuesto CHECK (stock_actual >= 0),
    CONSTRAINT fk_repuestos_categorias 
        FOREIGN KEY (categoria_id) REFERENCES categorias_repuesto(categoria_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE mecanicos (
    mecanico_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_mecanico VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    tarifa_hora_usd DECIMAL(8,2) NOT NULL CONSTRAINT chk_tarifa CHECK (tarifa_hora_usd > 0.00)
);

CREATE TABLE ordenes_trabajo (
    orden_id INT AUTO_INCREMENT PRIMARY KEY,
    mecanico_id INT NOT NULL,
    codigo_orden VARCHAR(20) NOT NULL UNIQUE,
    cliente_nombre VARCHAR(100) NOT NULL,
    placa_moto VARCHAR(15) NOT NULL,
    fecha_ingreso DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    horas_trabajadas DECIMAL(5,2) NOT NULL DEFAULT 0.00 CONSTRAINT chk_horas CHECK (horas_trabajadas >= 0.00),
    estado_orden VARCHAR(20) NOT NULL DEFAULT 'En Proceso' CONSTRAINT chk_estado_ot CHECK (estado_orden IN ('En Proceso', 'Finalizada', 'Entregada', 'Cancelada')),
    CONSTRAINT fk_ordenes_mecanicos 
        FOREIGN KEY (mecanico_id) REFERENCES mecanicos(mecanico_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE repuestos_utilizados_ot (
    uso_id INT AUTO_INCREMENT PRIMARY KEY,
    orden_id INT NOT NULL,
    repuesto_id INT NOT NULL,
    cantidad INT NOT NULL CONSTRAINT chk_cantidad_uso CHECK (cantidad > 0),
    precio_aplicado_usd DECIMAL(10,2) NOT NULL CONSTRAINT chk_precio_aplicado CHECK (precio_aplicado_usd > 0.00),
    CONSTRAINT fk_uso_ordenes 
        FOREIGN KEY (orden_id) REFERENCES ordenes_trabajo(orden_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_uso_repuestos 
        FOREIGN KEY (repuesto_id) REFERENCES repuestos_moto(repuesto_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_orden_repuesto 
        UNIQUE (orden_id, repuesto_id)
);