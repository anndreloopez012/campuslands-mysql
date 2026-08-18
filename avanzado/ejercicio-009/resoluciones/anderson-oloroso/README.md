# ✨ Solución ejercicio avanzado: 09

## _Henrik Anderson Oloroso García 💯_

### Creación de la tabla 📑

Para este ejercicio se creó la tabla `peleadores_kickboxing`, diseñada para almacenar información básica de peleadores de kickboxing.

La tabla cuenta con los siguientes campos:

- peleador_id
- nombre_peleador
- categoria
- nacionalidad
- victorias
- derrotas

*El campo `peleador_id` está configurado como PK y `AUTO_INCREMENT`, por lo que MySQL genera automáticamente un identificador único para cada peleador.*

### Creación de registros 📝

Se insertaron 15 registros con información de diferentes peleadores.

Los campos utilizados para los registros fueron:

- nombre_peleador
- categoria
- nacionalidad
- victorias
- derrotas

*El campo `peleador_id` no se incluyó manualmente porque MySQL genera automáticamente su valor mediante `AUTO_INCREMENT`.*

### Aplicación de bloqueos 🔒

Para practicar bloqueos en MySQL se utilizaron transacciones junto con las instrucciones:

- `FOR UPDATE`
- `FOR SHARE`

El bloqueo `FOR UPDATE` se utilizó para seleccionar registros que posteriormente pueden ser modificados dentro de una transacción.

Por ejemplo:

```sql
START TRANSACTION;

SELECT *
FROM peleadores_kickboxing
WHERE peleador_id = 1
FOR UPDATE;