CREATE DATABASE IF NOT EXISTS streaming_optimizacion_db;
USE streaming_optimizacion_db;

-- 1. Tabla Creadores / Streamers
CREATE TABLE IF NOT EXISTS streamers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    pais VARCHAR(50) NOT NULL,
    estado ENUM('Activo', 'Baneado', 'Inactivo') DEFAULT 'Activo',
    INDEX idx_pais (pais),
    INDEX idx_estado_pais (estado, pais) -- Índice Compuesto
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Tabla Transmisiones / Streams
CREATE TABLE IF NOT EXISTS transmisiones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_streamer INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    espectadores_pico INT DEFAULT 0,
    duracion_minutos INT DEFAULT 0,
    fecha_transmision DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_transmisiones_streamers FOREIGN KEY (id_streamer) REFERENCES streamers(id) ON DELETE CASCADE,
    INDEX idx_categoria (categoria),
    INDEX idx_fecha (fecha_transmision),
    INDEX idx_cat_espectadores (categoria, espectadores_pico DESC), -- Índice para ordenamiento rápido
    FULLTEXT INDEX idx_ft_titulo (titulo) -- Índice Full-Text para búsquedas de texto
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Tabla Donaciones / Bits
CREATE TABLE IF NOT EXISTS donaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_transmision INT NOT NULL,
    id_donador INT NOT NULL,
    monto_usd DECIMAL(10,2) NOT NULL,
    mantenido_en_hold BOOLEAN DEFAULT FALSE,
    fecha_donacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_donaciones_transmision FOREIGN KEY (id_transmision) REFERENCES transmisiones(id) ON DELETE CASCADE,
    INDEX idx_transmision_monto (id_transmision, monto_usd)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Tabla Ejercicios Prácticos
CREATE TABLE IF NOT EXISTS ejercicios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    dificultad VARCHAR(50) NOT NULL,
    tematica VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;