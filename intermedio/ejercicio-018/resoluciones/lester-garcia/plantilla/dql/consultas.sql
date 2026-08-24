USE ejercicio_18_int;

-- uso de GROUP BY
-- 1. Cantidad de reservas por destinos

SELECT 
   d.ciudad,
   d. pais,
   COUNT(r.id_reserva) AS total_reservas
   FROM destinos d 
   INNER JOIN viajes v 
     ON d.id_destino = v.id_destino
   INNER JOIN reservas r 
     ON  v.id_viaje= r. id_viaje
   GROUP BY 
     d.id_destino,
     d.ciudad,
     d.pais
  ORDER BY total_reservas DESC;
  
  -- 2. PERSONAS que viajaran por destino
  
  SELECT 
     d.ciudad,
     d.pais,
     SUM(r.cantidad_personas)AS total_personas
  FROM destinos d 
     INNER JOIN viajes v 
       ON d.id_destino = v.id_destino
	 INNER JOIN reservas r 
        ON  v.id_viaje = r.id_viaje
   WHERE estado <> 'cancelada'
   GROUP BY 
      d.id_destino,
      d.ciudad,
      d.pais
   ORDER BY total_personas DESC;
   
   -- 3. ingresos potenciles por destino
   
SELECT
    d.ciudad,
    d.pais,
    SUM(r.cantidad_personas * v.precio) AS ingresos_potenciales
FROM destinos d
INNER JOIN viajes v
    ON d.id_destino = v.id_destino
INNER JOIN reservas r
    ON v.id_viaje = r.id_viaje
WHERE r.estado IN ('Pendiente', 'Confirmada')
GROUP BY
    d.id_destino,
    d.ciudad,
    d.pais
ORDER BY ingresos_potenciales DESC; 

-- 4.Reservas agrupadas por estado

SELECT 
estado,
COUNT(*) AS cantidad_reservas,
SUM(cantidad_personas) AS personas_registradas
FROM reservas
GROUP BY estado
ORDER BY cantidad_reservas DESC;
   
      