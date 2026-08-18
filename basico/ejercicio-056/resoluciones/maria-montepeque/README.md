# Resolucion - Ejercicio 056 (basico)

## Autor
maria-montepeque

## Que hice
Cree la tabla `aventureros_basico` para un videojuego RPG con
validaciones simples: `NOT NULL`, `UNIQUE`, `DEFAULT`, `ENUM` y `CHECK`
de rango sobre nivel, vida y oro.

## Decisiones tecnicas
- `nombre UNIQUE` porque cada aventurero debe ser identificable sin
  ambiguedad.
- `CHECK (nivel BETWEEN 1 AND 100)` para no permitir niveles fuera del
  rango del juego.
- `CHECK (vida_maxima > 0)` y `CHECK (oro >= 0)`: la vida siempre debe
  ser positiva, el oro nunca puede ser negativo.
- `nivel` y `oro` tienen `DEFAULT` (1 y 0) para simplificar la creacion
  de un aventurero nuevo.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Aventureros activos ordenados por nivel.
2. Aventureros de una clase especifica.
3. Aventureros de nivel avanzado (20 o mas).
4. Vida maxima promedio por clase.
5. Top 3 aventureros con mas oro.
6. Cantidad de aventureros por estado.
