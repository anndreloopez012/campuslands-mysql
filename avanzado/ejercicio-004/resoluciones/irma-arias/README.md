# Ejercicio 004 - Gatillos (Triggers) para garaje de motos

## Descripción
Módulo avanzado de base de datos para la administración de un garaje de motocicletas, enfocado en la implementación de **Triggers (Gatillos)** en MySQL para automatizar la auditoría de inserciones y el control de cambios de estado en tiempo real.

## Decisiones Técnicas
- **Triggers Implementados:** 
  - `trg_moto_ingresada`: Registra de forma automática un evento en la tabla `auditoria_garaje` cada vez que se inserta una nueva moto.
  - `trg_moto_actualizada`: Detecta cambios en los estados de las motocicletas y guarda una traza histórica.
- **Validaciones de Integridad:** Restricciones `CHECK` para asegurar que el cilindraje y los costos sean valores positivos válidos.

## Orden de Ejecución
1. `ddl/schema.sql` (Crea tablas, relaciones y activa los triggers)
2. `dml/inserts.sql` (Inserta datos iniciales y prueba las actualizaciones automáticas)
3. `dql/consultas.sql` (Ejecuta reportes analíticos y verifica el registro de auditoría)