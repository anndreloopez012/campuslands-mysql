# Resolucion - Ejercicio 058 (basico)

## Autor
maria-montepeque

## Que hice
Cree la tabla `alumnos_tech_basico` para una academia tech y escribi
seis consultas centradas en filtrar por `estado`: igualdad,
desigualdad, combinaciones con `IN` y `AND`, y agregados condicionados
por estado.

## Decisiones tecnicas
- `estado ENUM('activo','pausado','graduado','retirado')` como
  catalogo cerrado del ciclo de vida de un alumno.
- `CHECK (progreso_porcentaje BETWEEN 0 AND 100)` para que el progreso
  siempre sea un porcentaje valido.
- La consulta 6 combina `WHERE estado = 'activo'` con `GROUP BY
  programa`, mostrando que filtrar por estado y agregar no son
  excluyentes.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Alumnos activos ordenados por progreso.
2. Alumnos graduados.
3. Alumnos que no estan activos.
4. Alumnos activos o pausados con progreso menor al 50%.
5. Cantidad de alumnos por estado.
6. Progreso promedio de los alumnos activos, por programa.
