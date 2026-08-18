# Ejercicio 013 (funcionalidades) - maria-montepeque

Tematica: dibujo digital. Demuestra `Funciones almacenadas` con `ilustradores_digitales` (5 ilustradores) e `ilustraciones` (14 piezas), usando 5 funciones.

## Que es

Una funcion almacenada (`CREATE FUNCTION ... RETURNS ...`) es una rutina que calcula y **devuelve un solo valor**, y a diferencia de un procedimiento (`CALL sp(...)`), se puede usar directamente dentro de un `SELECT`, un `WHERE`, o como argumento de otra funcion — como si fuera una columna o una expresion mas de la consulta.

## Como lo aplique

`ddl/schema.sql` crea las tablas y 5 funciones:

1. **`fn_precio_base(horas, tarifa)`** — `DETERMINISTIC`, calculo puro (`horas * tarifa`), siempre el mismo resultado para los mismos argumentos.
2. **`fn_nivel_complejidad(capas)`** — clasifica una ilustracion segun sus capas (`Simple` ≤5, `Media` 6-15, `Compleja` >15) con `IF`/`ELSEIF` adentro.
3. **`fn_bono_nivel(nivel, subtotal)`** — calcula un bono segun el nivel del ilustrador (`Principiante` 0%, `Intermedio` 5%, `Avanzado` 10%, `Profesional` 15%) con `CASE`.
4. **`fn_dias_desde_entrega(fecha)`** — usa `CURDATE()`, por eso se declara `NOT DETERMINISTIC` (el resultado cambia segun el dia que se ejecute).
5. **`fn_ingresos_ilustrador(ilustrador_id)`** — `READS SQL DATA`: hace su propia consulta interna sobre `ilustraciones` y devuelve el total ya calculado (usando las otras 2 funciones adentro).

`dql/consultas.sql` muestra usos que un procedimiento **no puede hacer**:

- **Funcion en el `SELECT`** — `fn_nivel_complejidad(capas)` como una columna mas, calculada fila por fila.
- **Funcion combinada con `JOIN`** — `fn_precio_base()` usando la tarifa del ilustrador correspondiente a cada ilustracion.
- **Funciones ANIDADAS** — el resultado de `fn_precio_base()` se pasa como argumento de `fn_bono_nivel()`, y ambas se suman en la misma fila (ej. `Ciudad Neon`: subtotal 450.00 + bono 67.50 = 517.50).
- **Funcion en el `WHERE`** — `WHERE fn_nivel_complejidad(capas) = 'Compleja'` filtra usando el resultado de la funcion, no una columna real.
- **Funcion `NOT DETERMINISTIC`** — `fn_dias_desde_entrega()` calcula los dias transcurridos desde cada entrega usando la fecha actual del servidor.
- **Funcion que consulta otra tabla, usada como columna** — `fn_ingresos_ilustrador(id)` sobre `ilustradores_digitales` dispara una consulta interna por cada fila y devuelve el ingreso total de ese ilustrador (ej. Nadia Prism: 1137.40, la suma de sus 4 ilustraciones con bono incluido).

## Archivos

- `ddl/schema.sql` — `ilustradores_digitales`, `ilustraciones` y las 5 funciones.
- `dml/inserts.sql` — 5 ilustradores y 14 ilustraciones.
- `dql/consultas.sql` — 6 consultas que usan las funciones en `SELECT`, `WHERE`, anidadas, y sobre una tabla distinta a la que reciben por parametro.
- `evidencias/resultados_consultas.txt` — salida real de las 6 consultas ejecutadas contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```

Nota: el resultado de `fn_dias_desde_entrega()` (paso 5) depende de la fecha en la que se ejecute, asi que los numeros de `evidencias/resultados_consultas.txt` van a ser distintos si se corre otro dia.
