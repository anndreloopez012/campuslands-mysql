# Ejercicio 032 - LEFT JOIN para Ranking Battle Royale

## Descripción
Módulo relacional en MySQL enfocado en practicar el uso práctico y analítico de **LEFT JOIN**, estructurando información sobre clanes, niveles de organización, jugadores de Battle Royale, puntajes de ranking, estadísticas de combate (eliminaciones y partidas) y estados operativos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas con regla ON DELETE SET NULL, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales robustos y coherentes, incluyendo un caso límite de un clan sin jugadores para validar el comportamiento del LEFT JOIN.
3. dql/consultas.sql - Consultas orientadas a explotar uniones izquierdas, manejo de nulos con COALESCE, funciones de agregación y reportes de ranking.
## Decisiones Técnicas
- Se implementó una relación 1:N donde el campo id_clan en la tabla de jugadores acepta valores nulos (NULL), permitiendo registrar agentes libres que no pertenecen a ningún clan.
- Se utilizó LEFT JOIN para garantizar que la consulta principal de clanes muestre absolutamente todas las organizaciones creadas en el sistema, incluso aquellas que aún no cuentan con miembros activos.
