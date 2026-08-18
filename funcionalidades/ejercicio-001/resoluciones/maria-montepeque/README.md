# Resolucion - Funcionalidad 001: Motor InnoDB

## Autor
maria-montepeque

## Que es
InnoDB es el motor de almacenamiento por defecto de MySQL. Sus tres
diferencias principales frente al motor clasico MyISAM son las que
pide demostrar el enunciado: **claves foraneas** (integridad
referencial real), **transacciones** (`COMMIT`/`ROLLBACK` que de
verdad revierten cambios) y **bloqueo por filas** (en vez de bloquear
toda la tabla al escribir).

## Como lo aplique
En vez de solo crear tablas en InnoDB y mencionar la teoria, cree
**cada tabla dos veces** — una version InnoDB y una version MyISAM con
la misma estructura — para un gimnasio de kickboxing, y comprobe con
datos y tiempos reales las tres diferencias, una por una.

### Demostracion 1: claves foraneas
`luchadores_innodb_demo` y `luchadores_myisam_demo` tienen la MISMA
sentencia `FOREIGN KEY (id_gimnasio) REFERENCES gimnasios_innodb_demo`.
MySQL acepta la sintaxis en ambas al crear la tabla, pero:

- En **InnoDB**, intentar insertar un luchador con `id_gimnasio = 99`
  (que no existe) falla de verdad:
  ```sql
  INSERT INTO luchadores_innodb_demo (id_gimnasio, nombre, victorias, derrotas)
  VALUES (99, 'Luchador Fantasma', 0, 0);
  ```
  Resultado real obtenido:
  ```
  ERROR 1452 (23000): Cannot add or update a child row: a foreign key
  constraint fails (`campuslands_mysql`.`luchadores_innodb_demo`,
  CONSTRAINT `fk_luchadores_innodb_demo_gimnasio` ...)
  ```
- En **MyISAM**, el mismo `INSERT` con la misma referencia invalida
  **se ejecuta sin error** (esta si esta en `dml/inserts.sql`, porque
  no falla): la fila "Luchador Fantasma" con `id_gimnasio = 99` queda
  guardada. MyISAM no implementa integridad referencial; la
  restriccion queda solo en el papel.

### Demostracion 2: transacciones
Sobre `inventario_gym_innodb_demo` e `inventario_gym_myisam_demo`
(mismo item, mismo `UPDATE`, mismo `ROLLBACK`):
```sql
START TRANSACTION;
UPDATE inventario_..._demo SET stock = stock - 5 WHERE id_item = 1;
ROLLBACK;
```
Resultado real obtenido (consulta 1 de `dql/consultas.sql`):
| motor | stock |
|---|---|
| innodb | 20 |
| myisam | 15 |

El stock de InnoDB volvio a 20: el `ROLLBACK` si revirtio el cambio.
El stock de MyISAM se quedo en 15: MyISAM no soporta transacciones
reales, cada sentencia se confirma sola apenas se ejecuta, sin
importar que venga un `ROLLBACK` despues.

### Demostracion 3: bloqueo por filas
Esta parte necesita dos conexiones simultaneas de verdad (no cabe en
un solo script secuencial), asi que la ejecute manualmente con el item
2 ("Protector Bucal", stock limpio en 50 en ambas tablas) y mida los
tiempos reales:

**Prueba InnoDB** — Sesion A abre una transaccion y bloquea la fila
`id_item = 1` con `SELECT ... FOR UPDATE`, espera 4 segundos, y recien
ahi actualiza y hace `COMMIT`. Sesion B (arrancada 1 segundo despues)
intenta un `UPDATE` sobre una fila **distinta** (`id_item = 2`):
```
B_START: 18:14:28.175
B_END:   18:14:28.348   (~0.17 segundos, casi instantaneo)
```
La sesion B no espero nada: InnoDB solo bloqueo la fila 1, la fila 2
siguio libre para escribirse.

**Prueba MyISAM** — Sesion A hace un `UPDATE` sobre la fila `id_item =
1` que tarda ~4 segundos (`SET ultima_operacion_seg = SLEEP(4)` como
parte del mismo `UPDATE`, para forzar que la escritura dure ese
tiempo). Sesion B (arrancada 1 segundo despues) intenta un `UPDATE`
sobre la fila **distinta** (`id_item = 2`):
```
B_START: 18:14:42.868
B_END:   18:14:45.895   (~3.03 segundos de espera)
```
La sesion B quedo bloqueada casi 3 segundos, aunque estaba escribiendo
una fila totalmente distinta a la que tocaba la sesion A: MyISAM
bloquea la TABLA COMPLETA en cada escritura, no solo la fila afectada.

**Conclusion verificada**: el mismo escenario (una escritura larga en
una fila + otra escritura concurrente en una fila distinta) no espera
nada en InnoDB pero bloquea ~3 segundos en MyISAM. Esa es exactamente
la ventaja de concurrencia que ofrece el bloqueo por filas de InnoDB.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```
La demostracion 3 (bloqueo por filas) no esta en los scripts porque
requiere dos conexiones simultaneas; el procedimiento exacto queda
documentado arriba, con los tiempos reales obtenidos.

## Decisiones tecnicas
- Se declaro `ENGINE=InnoDB` / `ENGINE=MyISAM` de forma explicita en
  cada tabla, en vez de dejar el motor por defecto, para que la
  comparacion sea intencional y facil de verificar con
  `information_schema.TABLES` (ultima consulta de `dql/consultas.sql`).
- Las tablas InnoDB y MyISAM de cada demostracion tienen exactamente
  la misma estructura de columnas: la unica variable que cambia es el
  motor, para que la comparacion sea justa.
- `CHECK` solo se agrego a las tablas InnoDB porque son las que se
  usan como ejemplo "correcto" de la practica; las tablas MyISAM
  existen unicamente para el contraste.

## Como validar que quedo bien
- `ddl/schema.sql` y `dml/inserts.sql` se ejecutan sin errores.
- La consulta 1 de `dql/consultas.sql` muestra el stock divergente
  (20 vs 15) que prueba la diferencia de transacciones.
- La consulta 2 muestra la fila con FK invalida que solo existe en
  MyISAM.
- La prueba manual de bloqueo (documentada arriba) se repitio y dio
  los mismos resultados: InnoDB no bloquea filas ajenas, MyISAM si.
