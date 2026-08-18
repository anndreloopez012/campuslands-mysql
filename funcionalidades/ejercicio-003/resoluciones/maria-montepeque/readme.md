# Ejercicio 003 (funcionalidades) - maria-montepeque

Tematica: pingpong. Demuestra la funcionalidad `Restricciones` (PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK y DEFAULT) con dos tablas: `jugadores_pingpong` y `partidas_pingpong`.

## Que es

Las restricciones (constraints) son reglas que MySQL aplica a nivel de tabla para evitar que se guarden datos invalidos o inconsistentes, sin depender de validaciones externas en la aplicacion.

## Como lo aplique

- `jugadores_pingpong.id` — `PRIMARY KEY AUTO_INCREMENT`, identifica a cada jugador.
- `jugadores_pingpong.alias` — `NOT NULL UNIQUE`, no se permiten alias repetidos ni vacios.
- `jugadores_pingpong.club` — `DEFAULT 'Sin club'` para jugadores independientes.
- `jugadores_pingpong.ranking_puntos` — `DEFAULT 1000` (ranking inicial estandar) + `CHECK (ranking_puntos >= 0)`.
- `partidas_pingpong.jugador_local_id` / `jugador_visitante_id` — `FOREIGN KEY` hacia `jugadores_pingpong(id)`, una partida no puede referenciar un jugador que no existe.
- `partidas_pingpong.sets_local` / `sets_visitante` — `CHECK (... BETWEEN 0 AND 3)`, un set no puede pasar del maximo de un partido a mejor de 5 juegos.
- `partidas_pingpong.estado` — `DEFAULT 'programada'`.
- `CONSTRAINT chk_jugadores_distintos CHECK (jugador_local_id <> jugador_visitante_id)` — un jugador no puede jugar contra si mismo.

## Como validarlo

`dql/consultas.sql` tiene dos partes:

1. Consultas normales (`SELECT` con `JOIN` y ranking) que muestran que las restricciones no estorban el uso real de los datos.
2. Cinco `INSERT` que violan a proposito cada restriccion (UNIQUE, NOT NULL, CHECK de sets, FOREIGN KEY, CHECK de jugadores distintos). Cada uno debe fallar; el error de MySQL es la evidencia de que la restriccion funciona.

`evidencias/resultados_consultas.txt` contiene la salida real: las dos consultas exitosas y los cinco mensajes de error (`ERROR 1062`, `ERROR 1048`, `ERROR 3819` x2, `ERROR 1452`) obtenidos al ejecutar cada `INSERT` invalido contra el MySQL de Docker.

## Archivos

- `ddl/schema.sql` — tablas `jugadores_pingpong` y `partidas_pingpong` con las 6 restricciones.
- `dml/inserts.sql` — 7 jugadores y 7 partidas de practica.
- `dql/consultas.sql` — 2 consultas de verificacion + 5 inserts que deben fallar por restriccion.
- `evidencias/resultados_consultas.txt` — salida real contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```

Nota: el bloque de "pruebas de restricciones" en `dql/consultas.sql` detiene la ejecucion en el primer error si se corre el archivo completo de una vez (comportamiento normal del cliente `mysql` sin `--force`). Para ver los 5 errores, ejecuta cada `INSERT` de esa seccion por separado, como se hizo para generar `evidencias/resultados_consultas.txt`.
