SELECT 
    auto_id, 
    marca, 
    modelo, 
    potencia_hp, 
    velocidad_max_kmh
FROM autos_hiperdeportivos
WHERE potencia_hp >= 1500;

SELECT 
    auto_id, 
    marca, 
    modelo, 
    precio_usd, 
    unidades_producidas
FROM autos_hiperdeportivos
WHERE precio_usd BETWEEN 2000000.00 AND 3500000.00;

SELECT 
    auto_id, 
    marca, 
    modelo, 
    pais_origen, 
    transmision_tipo
FROM autos_hiperdeportivos
WHERE pais_origen IN ('Italia', 'Reino Unido');

SELECT 
    auto_id, 
    marca, 
    modelo, 
    potencia_hp, 
    unidades_producidas, 
    precio_usd
FROM autos_hiperdeportivos
WHERE potencia_hp > 1000 
  AND unidades_producidas <= 100;

SELECT 
    auto_id, 
    marca, 
    modelo, 
    velocidad_max_kmh, 
    transmision_tipo
FROM autos_hiperdeportivos
WHERE velocidad_max_kmh >= 400 
   OR transmision_tipo = 'Direct-Drive';