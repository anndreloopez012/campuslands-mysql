-- Consultas demostrando el uso y ventajas de las Vistas Simples (Views).
USE campuslands_mysql;

SELECT nombre, especie, planeta_origen, faccion, alineacion 
    FROM vw_inter_014_personajes_completos 
    ORDER BY nombre ASC;

SELECT nombre, planeta_origen, faccion 
    FROM vw_inter_014_personajes_completos 
    WHERE alineacion = 'Oscuridad';

SELECT alineacion, total_personajes 
    FROM vw_inter_014_estadisticas_alineacion 
    ORDER BY total_personajes DESC;

CREATE OR REPLACE VIEW vw_inter_014_heroes_rebeldes AS
    SELECT nombre, especie, planeta_origen
    FROM vw_inter_014_personajes_completos
    WHERE faccion = 'Alianza Rebelde';

SELECT nombre, especie, planeta_origen 
    FROM vw_inter_014_heroes_rebeldes;