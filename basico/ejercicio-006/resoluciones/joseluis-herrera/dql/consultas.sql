USE db_hiperdeportivos;

SELECT marca, modelo, velocidad_maxima 
FROM hiperdeportivos 
WHERE velocidad_maxima > 420;

SELECT marca, modelo, pais_origen 
FROM hiperdeportivos 
WHERE pais_origen = 'Italia';

SELECT marca, modelo, precio_millones 
FROM hiperdeportivos 
WHERE precio_millones BETWEEN 2.00 AND 3.00;

SELECT marca, modelo, potencia_hp 
FROM hiperdeportivos 
WHERE potencia_hp > 1500 
ORDER BY potencia_hp DESC;