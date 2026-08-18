-- Campuslands MySQL - avanzado ejercicio 028
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS academia_tech_db;
USE academia_tech_db;

-- 1. Tabla Estudiantes
CREATE TABLE IF NOT EXISTS estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_estudiante VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_registro DATE DEFAULT (CURRENT_DATE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Tabla Cursos
CREATE TABLE IF NOT EXISTS cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_curso VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(100) NOT NULL,
    horas_duracion INT NOT NULL,
    nivel ENUM('Principiante', 'Intermedio', 'Avanzado') DEFAULT 'Principiante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Tabla Instructores
CREATE TABLE IF NOT EXISTS instructores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_instructor VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Tabla Ejercicios Prácticos
CREATE TABLE IF NOT EXISTS ejercicios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    dificultad VARCHAR(50) NOT NULL,
    tematica VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 5. TABLA PUENTE 1: Matriculas (Relación N:M entre Estudiantes y Cursos)
CREATE TABLE IF NOT EXISTS matriculas (
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_matricula DATE DEFAULT (CURRENT_DATE),
    estado ENUM('Activo', 'Completado', 'Cancelado') DEFAULT 'Activo',
    calificacion_final DECIMAL(4,2) NULL,
    PRIMARY KEY (id_estudiante, id_curso), -- Llave primaria compuesta
    CONSTRAINT fk_matriculas_estudiantes FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id) ON DELETE CASCADE,
    CONSTRAINT fk_matriculas_cursos FOREIGN KEY (id_curso) REFERENCES cursos(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 6. TABLA PUENTE 2: Asignacion_Instructores (Relación N:M entre Cursos e Instructores)
CREATE TABLE IF NOT EXISTS asignacion_instructores (
    id_curso INT NOT NULL,
    id_instructor INT NOT NULL,
    rol VARCHAR(50) DEFAULT 'Titular',
    PRIMARY KEY (id_curso, id_instructor), -- Llave primaria compuesta
    CONSTRAINT fk_asig_cursos FOREIGN KEY (id_curso) REFERENCES cursos(id) ON DELETE CASCADE,
    CONSTRAINT fk_asig_instructores FOREIGN KEY (id_instructor) REFERENCES instructores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;