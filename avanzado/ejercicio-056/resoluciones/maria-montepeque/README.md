# Resolucion - Ejercicio 056 (avanzado)

## Autor
maria-montepeque

## Que hice
Modele un arbol de talentos de un videojuego RPG en
`talentos_avanzado` (cada talento apunta a su prerequisito con
`id_talento_previo`, una FK auto-referenciada) y escribi seis
consultas con `WITH` / `WITH RECURSIVE`:

1. **Arbol completo descendente**: recorre desde las raices
   (`id_talento_previo IS NULL`) hacia sus talentos derivados,
   acumulando profundidad y la ruta completa como texto.
2. **Cadena ascendente**: dado un talento final (`Furia Imparable`),
   sube por sus prerequisitos hasta la raiz.
3. **Generador de secuencia**: una tabla de experiencia requerida por
   nivel, calculada con una formula acumulativa — un recursivo que no
   recorre un arbol, genera una progresion numerica.
4. **CTE simple**: cantidad de talentos por clase.
5. **CTE simple**: talentos "hoja" (nadie los tiene como
   prerequisito), usando un `LEFT JOIN` contra otro CTE.
6. **Dos CTE encadenados** en una sola consulta: talentos raiz junto
   con su cantidad de hijos directos.

## Decisiones tecnicas
- `id_talento_previo` referencia a la misma tabla (`talentos_avanzado`),
  la estructura clasica para modelar un arbol o jerarquia en una tabla
  relacional.
- La consulta 1 usa `CAST(nombre AS CHAR(500))` en el caso base del
  `RECURSIVE`: sin el `CAST`, MySQL infiere el tipo de la columna
  `ruta` a partir del primer `SELECT` y trunca las rutas largas del
  `CONCAT` del caso recursivo.
- La consulta 3 demuestra que `WITH RECURSIVE` no es solo para
  arboles: sirve para cualquier secuencia que dependa de su paso
  anterior.

## Como ejecutar
```bash
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < ddl/schema.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dml/inserts.sql
mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < dql/consultas.sql
```

## Consultas incluidas
1. Arbol completo de talentos con profundidad y ruta (recursivo).
2. Cadena de prerequisitos de "Furia Imparable" (recursivo ascendente).
3. Tabla de experiencia requerida por nivel (recursivo generador de secuencia).
4. Cantidad de talentos por clase (CTE simple).
5. Talentos finales / hojas del arbol (CTE simple).
6. Talentos raiz con su cantidad de hijos directos (CTE encadenados).
