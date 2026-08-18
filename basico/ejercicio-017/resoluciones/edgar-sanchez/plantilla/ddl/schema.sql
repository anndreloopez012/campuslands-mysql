CREATE TABLE proveedores_ropa (
    proveedor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proveedor VARCHAR(100) NOT NULL UNIQUE,
    codigo_fiscal VARCHAR(20) NOT NULL UNIQUE,
    email_contacto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

CREATE TABLE productos_ropa (
    producto_id INT AUTO_INCREMENT PRIMARY KEY,
    proveedor_id INT NOT NULL,
    sku VARCHAR(30) NOT NULL UNIQUE,
    nombre_producto VARCHAR(100) NOT NULL,
    talla VARCHAR(10) NOT NULL CHECK (talla IN ('XS', 'S', 'M', 'L', 'XL', 'XXL')),
    color VARCHAR(30) NOT NULL,
    precio_venta_usd DECIMAL(8,2) NOT NULL CHECK (precio_venta_usd > 0.00),
    stock_disponible INT NOT NULL DEFAULT 0 CHECK (stock_disponible >= 0),
    es_activo BOOLEAN NOT NULL DEFAULT TRUE,
    fecha_registro DATE NOT NULL,
    CONSTRAINT fk_productos_proveedores 
        FOREIGN KEY (proveedor_id) REFERENCES proveedores_ropa(proveedor_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE ventas_ropa (
    venta_id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_hora_venta DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    metodo_pago VARCHAR(20) NOT NULL CHECK (metodo_pago IN ('Efectivo', 'Tarjeta', 'Transferencia')),
    monto_total_usd DECIMAL(10,2) NOT NULL CHECK (monto_total_usd >= 0.00)
);

CREATE TABLE detalles_venta_ropa (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    venta_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario_usd DECIMAL(8,2) NOT NULL CHECK (precio_unitario_usd > 0.00),
    CONSTRAINT fk_detalles_ventas 
        FOREIGN KEY (venta_id) REFERENCES ventas_ropa(venta_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_detalles_productos 
        FOREIGN KEY (producto_id) REFERENCES productos_ropa(producto_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_venta_producto 
        UNIQUE (venta_id, producto_id)
);