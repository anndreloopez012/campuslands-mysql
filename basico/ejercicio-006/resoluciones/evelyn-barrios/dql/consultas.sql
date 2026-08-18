-- Consultas base. Completa o reemplaza segun el enunciado.
-- basico/ejercicio-006 - evelyn-barrios
-- Consultas para practicar la cláusula WHERE.
USE campuslands_mysql;

-- Consulta 1: Listar todos los hiperdeportivos disponibles para la venta.
-- El objetivo es mostrar a un cliente potencial qué autos puede comprar.
SELECT
    marca,
    modelo,
    anio,
    precio_usd AS 'precio (USD)'
FROM hiperdeportivos
WHERE estado = 'disponible';

-- Consulta 2: Encontrar autos fabricados a partir de 2021 con una velocidad máxima superior a 450 km/h.
-- Esto ayuda a identificar los modelos más recientes y más rápidos del inventario.
SELECT
    marca,
    modelo,
    anio,
    velocidad_max_kmh AS 'velocidad_max (km/h)'
FROM hiperdeportivos
WHERE anio >= 2021 AND velocidad_max_kmh > 450;

-- Consulta 3: Listar los autos de origen italiano que cuestan menos de 2,000,000 USD.
-- Filtro para clientes interesados en marcas italianas dentro de un cierto presupuesto.
SELECT
    marca,
    modelo,
    precio_usd AS 'precio (USD)',
    pais_origen
FROM hiperdeportivos
WHERE pais_origen = 'Italia' AND precio_usd < 2000000.00;

-- Consulta 4: Mostrar autos que son de EE.UU. o tienen una aceleración de 0-100 km/h en menos de 2.5 segundos.
-- Esta consulta combina dos condiciones con un OR para encontrar autos excepcionalmente rápidos o de un origen específico.
SELECT
    marca,
    modelo,
    aceleracion_0_100_s AS 'aceleracion (0-100s)',
    pais_origen
FROM hiperdeportivos
WHERE pais_origen = 'EE.UU.' OR aceleracion_0_100_s < 2.5;

-- Consulta 5: Encontrar todos los autos que no son de producción limitada y están disponibles.
-- Útil para identificar modelos de producción regular que se pueden adquirir.
SELECT
    marca,
    modelo,
    estado
FROM hiperdeportivos
WHERE produccion_limitada = FALSE AND estado = 'disponible';
