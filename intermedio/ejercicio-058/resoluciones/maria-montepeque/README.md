# Resolucion - Ejercicio 058 (intermedio)

## Autor
maria-montepeque

## Que hice
Modele la relacion muchos-a-muchos entre alumnos y talleres de una
academia tech con una tabla puente: `matriculas_intermedio`. Un alumno
puede tomar varios talleres y un taller puede tener varios alumnos; la
tabla puente es la unica forma de representar eso en un modelo
relacional sin duplicar datos.

## Decisiones tecnicas
- `PRIMARY KEY (id_alumno, id_taller)` compuesta: identifica cada
  matricula y de paso impide que el mismo alumno quede inscrito dos
  veces en el mismo taller.
- `calificacion_final` es `NULL`-able porque un taller en curso
  todavia no tiene nota final (Renata Osorio y Emilio Salcedo tienen
  matriculas sin calificar).
- `CHECK (calificacion_final IS NULL OR calificacion_final BETWEEN 0 AND 5)`:
  el `CHECK` no puede simplemente exigir un rango, porque `NULL` es un
  valor valido mientras el taller no termine.
- Renata Osorio esta inscrita en 3 talleres a proposito, para que la
  consulta de `HAVING COUNT(*) > 2` tenga un resultado real.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Alumnos inscritos en "React desde Fundamentos".
2. Talleres en los que esta inscrita Renata Osorio.
3. Cantidad de alumnos inscritos por taller.
4. Cantidad de talleres por alumno.
5. Alumnos inscritos en mas de 2 talleres (`HAVING`).
6. Calificacion promedio por taller (solo matriculas ya calificadas).
