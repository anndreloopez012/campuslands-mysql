-- Ejercicio 008 - Avanzado - Roles y Permisos (sin CREATE USER)

-- Tabla de jugadores
CREATE TABLE `ejercicio-008-adv-jugadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    equipo VARCHAR(30) NOT NULL,
    posicion VARCHAR(20) DEFAULT 'delantero',
    goles INT DEFAULT 0,
    asistencias INT DEFAULT 0,
    partidos INT DEFAULT 0
);

-- Tabla de usuarios con roles
CREATE TABLE `ejercicio-008-adv_usuarios` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    rol VARCHAR(20) NOT NULL,
    activo BOOLEAN DEFAULT TRUE
);