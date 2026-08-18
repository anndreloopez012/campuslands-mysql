-- Crear base de datos
DROP DATABASE IF EXISTS hypercars_db;

CREATE DATABASE hypercars_db;

USE hypercars_db;


-- Tabla principal normalizada en 1FN
CREATE TABLE hyper_sports_cars (

    id_car INT AUTO_INCREMENT PRIMARY KEY,

    brand VARCHAR(50) NOT NULL,

    model VARCHAR(80) NOT NULL,

    year_manufactured YEAR NOT NULL,

    engine_type VARCHAR(100) NOT NULL,

    horsepower INT NOT NULL,

    top_speed_kmh INT NOT NULL,

    price_usd DECIMAL(12,2) NOT NULL,

    country_origin VARCHAR(50) NOT NULL,

    status ENUM('active','inactive') DEFAULT 'active',


    -- Validaciones del negocio
    CONSTRAINT chk_horsepower 
        CHECK (horsepower > 0),

    CONSTRAINT chk_speed
        CHECK (top_speed_kmh > 0),

    CONSTRAINT chk_price
        CHECK (price_usd > 0)

);