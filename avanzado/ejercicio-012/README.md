    
## Explicacion paso a paso
1. Lee el contexto y detecta que datos se necesitan.
2. Revisa la plantilla en `plantilla/` para entender el punto de partida.
3. Disena la tabla o tablas necesarias antes de escribir consultas.
4. Inserta datos suficientes para probar casos normales y casos limite.
5. Escribe consultas que respondan preguntas de negocio, no solo `SELECT *`.
6. Ejecuta los scripts en este orden: DDL, DML y DQL.
7. Guarda evidencias de resultados o notas de validacion.

## Instrucciones detalladas
- Crea tu solucion dentro de `resoluciones/nombre-apellido/`.
- Copia la carpeta `plantilla/` dentro de tu carpeta personal si quieres partir desde una base.
- Completa `ddl/schema.sql`, `dml/inserts.sql` y `dql/consultas.sql`.
- Agrega minimo 8 registros utiles y minimo 5 consultas.
- Agrega un `README.md` corto en tu resolucion explicando ejecucion y decisiones.

## Requerimientos minimos
- Usar MySQL, no SQLite ni PostgreSQL.
- Usar nombres de tablas y columnas consistentes.
- Aplicar al menos una validacion o restriccion relacionada con el problema.
- Incluir datos que permitan probar filtros, ordenamientos y calculos.
- Escribir consultas con alias claros cuando el resultado sea un reporte.

## Ejemplos
```sql
SELECT categoria, COUNT(*) AS total, AVG(puntaje) AS promedio
FROM mi_tabla
WHERE estado = 'activo'
GROUP BY categoria
ORDER BY promedio DESC;
```

Carpeta correcta:

```text
avanzado/ejercicio-012/resoluciones/juan-perez/
├── README.md
├── ddl/schema.sql
├── dml/inserts.sql
└── dql/consultas.sql
```

## Entregable esperado
Una carpeta personal con scripts SQL ejecutables y una explicacion corta de la solucion.

## Reglas
- No modifiques el README base del ejercicio.
- No borres archivos de plantilla.
- No edites resoluciones de otros estudiantes.
- No subas `.env`, dumps pesados, bases locales ni capturas innecesarias.
- El Pull Request debe apuntar a `dev`.

## Consejos
- Piensa primero en las preguntas que debe responder la base de datos.
- Usa `DECIMAL` para dinero o puntajes que requieren precision.
- Usa `DATE` o `DATETIME` si el tiempo importa.
- Si repites texto muchas veces, considera si hace falta otra tabla.

## Errores comunes
- Crear columnas con nombres ambiguos como `dato1` o `valor`.
- Insertar pocos datos y no poder probar filtros.
- Mezclar DDL, DML y DQL en un solo archivo sin orden.
- Abrir el PR hacia `main` en lugar de `dev`.

## Pistas opcionales
- Identifica una entidad principal y sus atributos.
- Agrega un campo de estado para practicar filtros.
- Crea una consulta de ranking o top 5 relacionada con la tematica.

## Como validar si quedo bien
- Ejecuta `schema.sql` sin errores.
- Ejecuta `inserts.sql` y confirma que inserta registros.
- Ejecuta `consultas.sql` y revisa que cada consulta responda algo util.
- Verifica que tu carpeta este dentro de `resoluciones/nombre-apellido/`.
- Revisa `git status` antes del commit para confirmar que no modificaste archivos base.
