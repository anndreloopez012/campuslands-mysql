# Ejercicio 015 (funcionalidades) - maria-montepeque

Tematica: arquitectura 3D. Demuestra `Transacciones` (`START TRANSACTION`, `COMMIT`, `ROLLBACK`, `SAVEPOINT`) con `proyectos_arquitectura` (4 proyectos) y `pagos_proveedores`.

## Que es

Una transaccion agrupa varias sentencias (`INSERT`, `UPDATE`, ...) para que se apliquen **todas juntas o ninguna**. Sin transacciones, un error a mitad de una operacion de varios pasos (por ejemplo "registrar un pago" = insertar el pago + descontar el saldo) puede dejar la base de datos en un estado inconsistente: el pago registrado pero el saldo sin descontar, o al reves.

## Como lo aplique

`registrar un pago` siempre son DOS operaciones que tienen que ir juntas: un `INSERT` en `pagos_proveedores` y un `UPDATE` que descuenta `saldo_disponible` en `proyectos_arquitectura`. La tabla tiene un `CHECK (saldo_disponible >= 0)` para que sea imposible gastar mas de lo que queda.

`dql/consultas.sql` recorre:

1. **`SELECT @@autocommit`** — confirma que por defecto (`1`) cada sentencia individual ya es su propia transaccion; por eso hace falta `START TRANSACTION` cuando se quieren agrupar varias.
2. **Transaccion exitosa** — se registra un pago de 25000.00 para `Torre Vitral` (`INSERT` + `UPDATE`) y se cierra con `COMMIT`. El saldo baja de 500000.00 a 475000.00.
3. **Transaccion que falla A MITAD DE CAMINO (el punto central del ejercicio)** — para `Puente Peatonal Norte` (saldo ya en 0.00): el `INSERT` del pago se aplica sin problema, pero el `UPDATE` que le seguiria viola `chk_saldo_no_negativo_arquitectura` y **falla** (`ERROR 3819`). MySQL/InnoDB **no deshace solo la transaccion completa** cuando una sentencia falla — el `INSERT` sigue ahi, pendiente, hasta que alguien decide que hacer. Por eso se hace `ROLLBACK` explicito: sin el, un `COMMIT` por error habria dejado un pago registrado sin su descuento de saldo correspondiente. Despues del `ROLLBACK` se confirma que el `INSERT` tambien se deshizo (`pagos_puente_peatonal` sigue en 2, `saldo_disponible` sigue en 0.00).
4. **`SAVEPOINT`** — dentro de una misma transaccion sobre `Museo de Arte Contemporaneo`, se registran 2 pagos. Se pone un `SAVEPOINT` entre ambos y luego `ROLLBACK TO SAVEPOINT` deshace **solo** el segundo pago (su `INSERT` y su `UPDATE`), dejando el primero intacto, y se cierra con `COMMIT`. El saldo final (740000.00) refleja solo el primer pago (60000.00), no los 105000.00 de ambos.
5. **Verificacion de consistencia final** — para los 4 proyectos, `saldo_disponible = presupuesto_total - SUM(pagos_proveedores.monto)` coincide exactamente, confirmando que ninguna transaccion dejo datos a medias.

## Archivos

- `ddl/schema.sql` — `proyectos_arquitectura` (con `CHECK` de saldo no negativo) y `pagos_proveedores`.
- `dml/inserts.sql` — 4 proyectos y 4 pagos iniciales.
- `dql/consultas.sql` — 4 pasos con transacciones (commit exitoso, fallo + rollback manual, savepoint, verificacion final).
- `evidencias/resultados_consultas.txt` — salida real de los 4 pasos, incluido el error esperado del paso 3, ejecutados contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 --force campuslands_mysql < dql/consultas.sql
```

Nota: se necesita `--force` porque el paso 3 incluye a proposito una sentencia que **debe fallar** (para demostrar el `ROLLBACK`); sin `--force` el cliente `mysql` se detiene ahi y no llega a ejecutar el `ROLLBACK` ni los pasos siguientes. El script tampoco es idempotente (hace `COMMIT` de cambios reales), asi que correrlo dos veces sin repetir `ddl/schema.sql` + `dml/inserts.sql` antes va a dar numeros distintos a los de `evidencias/resultados_consultas.txt`.
