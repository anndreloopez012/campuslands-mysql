# Ejercicio 018 (funcionalidades) - maria-montepeque

Tematica: videojuego RPG. Demuestra `Roles y permisos` (`CREATE ROLE`, `GRANT`, `SET DEFAULT ROLE`, `REVOKE`) con las tablas `personajes_rpg` y `objetos_inventario`, y 3 roles que representan 3 "rangos" del juego.

## Que es

Un rol agrupa un conjunto de privilegios bajo un nombre. En vez de otorgar `SELECT`, `INSERT`, etc. usuario por usuario, se le dan los privilegios al ROL una sola vez, y despues cada usuario recibe el rol que le corresponde. La ventaja central: si hay que cambiar los permisos de "todos los Game Master", se cambia el rol una sola vez y afecta a todos los usuarios que lo tienen, sin tocarlos uno por uno.

## Como lo aplique

3 roles, cada uno con acceso distinto sobre `personajes_rpg` y `objetos_inventario`:

| Rol | Privilegios | Usuario |
|---|---|---|
| `rol_jugador` | `SELECT` | `jugador_lira` |
| `rol_game_master` | `SELECT`, `INSERT`, `UPDATE` | `gm_orion` |
| `rol_administrador` | `ALL PRIVILEGES` | `admin_kael` |

`ddl/schema.sql` se ejecuta **como `root`**, no como `campus`: crear roles y usuarios necesita privilegios globales (`CREATE ROLE`, `CREATE USER`) que el usuario `campus` de `docker-compose.yml` no tiene (el suyo esta limitado a `campuslands_mysql.*`) — se confirmo intentandolo primero con `campus` y MySQL lo rechazo con `ERROR 1227`. Es justo el punto del ejercicio: administrar accesos es tarea de un administrador, no de un usuario de aplicacion.

`dql/consultas.sql` documenta la validacion, hecha con **conexiones reales separadas** (no se puede probar el permiso de un usuario sin conectarse como ese usuario):

1. **`SHOW GRANTS`** — para `jugador_lira` sin `USING` solo muestra que tiene el rol asignado; con `USING 'rol_jugador'` muestra los privilegios YA resueltos (`SELECT` sobre las 2 tablas).
2. **Como `jugador_lira`**: `SELECT` funciona; un `INSERT` es rechazado (`ERROR 1142`).
3. **Como `gm_orion`**: `INSERT` y `UPDATE` funcionan (se agrego el personaje `Nyx` y se subio el nivel de `Doryen` a 26); un `DELETE` es rechazado (`ERROR 1142`).
4. **Como `admin_kael`**: el mismo `DELETE` que le fallo al GM si funciona, y limpia al personaje `Nyx` de prueba.
5. **El punto central**: como `root`, se hace `REVOKE UPDATE ... FROM 'rol_game_master'` (al ROL, no al usuario `gm_orion`). Sin volver a tocar a `gm_orion` para nada, el mismo `UPDATE` que funciono en el paso 3 ahora falla con el mismo `ERROR 1142`. El cambio de permisos se propago solo por venir del rol.
6. Limpieza final: se borran los 3 usuarios y los 3 roles de prueba.

## Archivos

- `ddl/schema.sql` — tablas + 3 roles + 3 usuarios + `GRANT`/`SET DEFAULT ROLE` (ejecutar como `root`).
- `dml/inserts.sql` — 4 personajes y 7 objetos de inventario (ejecutar como `campus`).
- `dql/consultas.sql` — documenta que se ejecuta con cada usuario, mas los `SHOW GRANTS`/`REVOKE`/limpieza que corren como `root`.
- `evidencias/resultados_consultas.txt` — salida real de las 4 conexiones distintas (root, jugador, GM, admin) contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u root -proot123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql

# Validacion con cada usuario (ver dql/consultas.sql para el detalle completo):
docker exec -i campuslands-mysql-db mysql -u jugador_lira -p'Jugador_2026!' campuslands_mysql -e "SELECT * FROM personajes_rpg;"
docker exec -i campuslands-mysql-db mysql -u gm_orion -p'GameMaster_2026!' campuslands_mysql -e "INSERT INTO personajes_rpg (nombre, clase, nivel, experiencia, propietario) VALUES ('Nyx', 'Arquero', 1, 0, 'Invitado');"
docker exec -i campuslands-mysql-db mysql -u admin_kael -p'AdminReino_2026!' campuslands_mysql -e "DELETE FROM personajes_rpg WHERE nombre = 'Nyx';"
```

Nota: `root123` / `campus123` son las credenciales locales de este `docker-compose.yml` (no son secretos reales). Los usuarios `jugador_lira`, `gm_orion` y `admin_kael` son cuentas MySQL de prueba creadas solo para este ejercicio; `dql/consultas.sql` termina borrandolas para no dejarlas colgando en el contenedor.
