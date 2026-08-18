-- funcionalidades/ejercicio-016 - maria-montepeque
-- Tematica: soldadura
USE campuslands_mysql;

DROP TABLE IF EXISTS proyectos_soldadura;

CREATE TABLE proyectos_soldadura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cliente VARCHAR(100) NOT NULL,
    fecha_inicio DATE NOT NULL,
    -- Cada proceso de soldadura (MIG, TIG, SMAW, FCAW...) necesita atributos
    -- distintos: por eso las especificaciones van en JSON en vez de columnas
    -- fijas que quedarian NULL para la mayoria de los procesos.
    especificaciones JSON NOT NULL,
    -- Columna GENERADA a partir de una ruta del JSON. Un indice normal no
    -- puede apuntar directo a un campo dentro de un JSON; primero hay que
    -- "materializarlo" en una columna generada y despues indexar esa columna.
    espesor_mm_gen INT GENERATED ALWAYS AS (
        CAST(especificaciones ->> '$.espesor_mm' AS UNSIGNED)
    ) VIRTUAL
);
