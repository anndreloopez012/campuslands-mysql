USE campuslands_mysql;

-- 1. Confirmar que Renato Xol NO se inserto (placa duplicada rechazada)
SELECT * FROM carreras_urbanas_pilotos_unique WHERE nombre_piloto = 'Renato Xol';

-- 2. Confirmar que Sofia Mux NO se inserto (numero+temporada duplicado rechazado)
SELECT * FROM carreras_urbanas_pilotos_unique WHERE nombre_piloto = 'Sofia Mux';

-- 3. Confirmar que el numero 7 SI existe dos veces, en temporadas distintas (caso valido)
SELECT nombre_piloto, numero_corredor, temporada
FROM carreras_urbanas_pilotos_unique
WHERE numero_corredor = 7;

-- 4. Listado general de pilotos activos por temporada
SELECT temporada, COUNT(*) AS total_pilotos
FROM carreras_urbanas_pilotos_unique
WHERE estado = 'activo'
GROUP BY temporada;

-- 5. Verificar las restricciones UNIQUE existentes sobre la tabla
SHOW INDEX FROM carreras_urbanas_pilotos_unique WHERE Non_unique = 0;