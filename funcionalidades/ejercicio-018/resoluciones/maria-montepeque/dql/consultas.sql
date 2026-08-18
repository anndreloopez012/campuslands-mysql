-- funcionalidades/ejercicio-018 - maria-montepeque
--
-- Este ejercicio se valida con VARIAS conexiones distintas (una por usuario),
-- no con un solo archivo corrido de punta a punta: la gracia de "Roles y
-- permisos" es justo que cada usuario tiene un acceso distinto, y eso solo
-- se puede probar conectandose COMO ese usuario. Cada bloque de abajo indica
-- con que usuario se ejecuta; la salida real de cada uno esta en
-- evidencias/resultados_consultas.txt en el mismo orden.

-- === Como root: inspeccionar los roles ===

-- 1. Los privilegios "en crudo" que tiene cada usuario: solo se ve que rol
-- tiene GRANTED, no que puede hacer exactamente con el.
SHOW GRANTS FOR 'jugador_lira'@'%';

-- 2. Con "USING 'rol'" se ven los privilegios YA RESUELTOS que ese rol le da
-- al usuario (esto es lo que de verdad puede hacer).
SHOW GRANTS FOR 'jugador_lira'@'%' USING 'rol_jugador';
SHOW GRANTS FOR 'gm_orion'@'%' USING 'rol_game_master';
SHOW GRANTS FOR 'admin_kael'@'%' USING 'rol_administrador';

-- === Como 'jugador_lira' (rol_jugador: solo SELECT) ===

-- 3. Consultar SI puede.
-- SELECT nombre, clase, nivel FROM personajes_rpg;

-- 4. Insertar NO puede (debe fallar).
-- INSERT INTO personajes_rpg (nombre, clase, nivel, experiencia, propietario) VALUES ('Zerath', 'Guerrero', 1, 0, 'Lira');

-- === Como 'gm_orion' (rol_game_master: SELECT, INSERT, UPDATE) ===

-- 5. Insertar un personaje nuevo SI puede.
-- INSERT INTO personajes_rpg (nombre, clase, nivel, experiencia, propietario) VALUES ('Nyx', 'Arquero', 1, 0, 'Invitado');

-- 6. Actualizar SI puede.
-- UPDATE personajes_rpg SET nivel = 26 WHERE nombre = 'Doryen';

-- 7. Borrar NO puede (debe fallar): ese privilegio se lo reservamos al admin.
-- DELETE FROM personajes_rpg WHERE nombre = 'Nyx';

-- === Como 'admin_kael' (rol_administrador: ALL PRIVILEGES) ===

-- 8. Borrar SI puede (limpia el personaje de prueba que dejo el intento fallido del GM).
-- DELETE FROM personajes_rpg WHERE nombre = 'Nyx';

-- === De nuevo como root: REVOKE afecta a TODOS los que tienen el rol ===

-- 9. Se le quita UPDATE al rol completo (no a un usuario en particular).
REVOKE UPDATE ON campuslands_mysql.personajes_rpg FROM 'rol_game_master';

-- 10. Como 'gm_orion' otra vez: el mismo UPDATE que funciono en el paso 6
-- ahora debe FALLAR, sin haber tocado al usuario para nada, solo al rol.
-- UPDATE personajes_rpg SET nivel = 27 WHERE nombre = 'Doryen';

-- === Limpieza final (como root) ===
DROP USER 'jugador_lira'@'%';
DROP USER 'gm_orion'@'%';
DROP USER 'admin_kael'@'%';
DROP ROLE 'rol_jugador';
DROP ROLE 'rol_game_master';
DROP ROLE 'rol_administrador';
