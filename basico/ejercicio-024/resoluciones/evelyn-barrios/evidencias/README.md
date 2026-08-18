## Evidencias de Ejecución - Ejercicio 024

Este documento muestra los resultados obtenidos al ejecutar los scripts de la solución, demostrando que el `DELETE` controlado funciona como se esperaba.

### 1. Creación de Estructura e Inserción de Datos

Primero, se ejecutan los scripts `ddl/schema.sql` y `dml/inserts.sql`.

- `schema.sql`: Crea la base de datos `academia_soldadura` y la tabla `inspecciones_soldadura`.
- `inserts.sql`: Inserta 8 registros de prueba en la tabla.

Después de estos pasos, la tabla contiene 4 inspecciones 'Aprobado', 2 'Rechazado' y 2 'Reparado'.

### 2. Ejecución de Consultas (`dql/consultas.sql`)

A continuación se muestran los resultados de cada consulta del archivo `dql/consultas.sql`.

#### Consulta 1: Reporte general de inspecciones

**Resultado:**

    resultado   total_inspecciones
    ------------------------------
    Aprobado                     4
    Rechazado                    2
    Reparado                     2

**Análisis:** La consulta agrupa correctamente los 8 registros iniciales por su resultado.

#### Consulta 2: Inspecciones rechazadas con más de 2 defectos

**Resultado:**

    id  proyecto_nombre           soldador_id  fecha_inspeccion  defectos_encontrados
    ----------------------------------------------------------------------------------
    2   Estructura Edificio Beta          102        2025-07-16                     3
    6   Tubería Industrial Delta          104        2025-07-22                     5

**Análisis:** El filtro `WHERE resultado = 'Rechazado' AND defectos_encontrados > 2` funciona correctamente, identificando los casos más críticos.

#### Consulta 3: Mostrar registros que serán eliminados

**Resultado:**

    id  proyecto_nombre           resultado
    ---------------------------------------
    5   Estructura Edificio Beta   Reparado
    8   Tubería Industrial Delta   Reparado

**Análisis:** Se identifican con éxito los 2 registros cuyo estado es 'Reparado', que son el objetivo de la operación de borrado.

#### Consulta 4: Ejecución del `DELETE` controlado

**Resultado:**
    Query OK, 2 rows affected
**Análisis:** El comando `DELETE` se ejecuta y reporta que 2 filas fueron afectadas, coincidiendo con los registros 'Reparado' identificados previamente.

#### Consulta 5: Verificación final

**Resultado:**

    id  proyecto_nombre           soldador_id  resultado
    ----------------------------------------------------
    1   Puente Metálico Alfa              101   Aprobado
    2   Estructura Edificio Beta          102   Rechazado
    3   Chasis Vehicular Gamma            101   Aprobado
    4   Puente Metálico Alfa              103   Aprobado
    6   Tubería Industrial Delta          104   Rechazado
    7   Puente Metálico Alfa              103   Aprobado

**Análisis:** La tabla final contiene 6 registros. Los registros con `resultado = 'Reparado'` han sido eliminados exitosamente, mientras que el resto de los datos permanece intacto. El objetivo del ejercicio se ha cumplido.