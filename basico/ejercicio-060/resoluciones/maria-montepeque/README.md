# Resolucion - Ejercicio 060 (basico)

## Autor
maria-montepeque

## Que hice
Modele una relacion simple 1 a N para un equipo de streaming:
`creadores_basico` y `directos_basico`, donde cada directo pertenece a
un solo creador y un creador puede tener muchos directos.

## Decisiones tecnicas
- `id_creador` en `directos_basico` es la unica forma en que se
  expresa la relacion: no se repite el nombre del canal en cada
  directo, se consulta con `JOIN`.
- `CHECK (seguidores >= 0)`, `CHECK (duracion_min > 0)` y
  `CHECK (espectadores_pico >= 0)` como restricciones minimas.
- `nombre_canal UNIQUE` para no duplicar creadores.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Directos con el nombre del canal.
2. Directos de un creador especifico.
3. Cantidad de directos por creador.
4. Pico de espectadores mas alto por creador.
5. Creadores con mas de 50000 seguidores.
6. Duracion total transmitida por creador, en horas.
