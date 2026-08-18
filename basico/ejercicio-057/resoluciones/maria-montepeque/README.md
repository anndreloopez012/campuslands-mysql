# Resolucion - Ejercicio 057 (basico)

## Autor
maria-montepeque

## Que hice
Modele la entidad `gestas_basico` para un videojuego de accion y
aventura, pensando en los atributos que realmente distinguen a una
gesta del juego: tipo, dificultad, region, recompensas y si ya fue
completada.

## Decisiones tecnicas
- `tipo_gesta` y `dificultad` como `ENUM` porque son catalogos
  cerrados y conocidos de antemano, no texto libre.
- `titulo UNIQUE` para no duplicar gestas.
- `completada BOOLEAN` para practicar filtros de estado sin necesitar
  una tabla aparte.
- `CHECK (recompensa_oro >= 0)` y `CHECK (experiencia_otorgada >= 0)`
  como restricciones minimas de negocio.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Listado completo ordenado por dificultad.
2. Gestas principales pendientes.
3. Top 3 gestas con mejor recompensa de oro.
4. Experiencia promedio otorgada por dificultad.
5. Gestas completadas por tipo.
6. Gestas disponibles en una region especifica.
