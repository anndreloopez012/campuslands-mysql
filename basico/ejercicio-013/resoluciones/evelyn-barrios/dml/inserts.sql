-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO peliculas_miedo (titulo, director, año_lanzamiento, genero, calificacion_imdb, duracion_minutos, estado) VALUES
('El Exorcista', 'William Friedkin', 1973, 'Terror Sobrenatural', 8.1, 122, 'disponible'),
('Psicosis', 'Alfred Hitchcock', 1960, 'Thriller Psicológico', 8.5, 109, 'disponible'),
('El Resplandor', 'Stanley Kubrick', 1980, 'Terror Psicológico', 8.4, 146, 'disponible'),
('Alien, el octavo pasajero', 'Ridley Scott', 1979, 'Ciencia Ficción Terror', 8.4, 117, 'disponible'),
('La Noche de Halloween', 'John Carpenter', 1978, 'Slasher', 7.7, 91, 'disponible'),
('Hereditary', 'Ari Aster', 2018, 'Terror Psicológico', 7.3, 127, 'disponible'),
('Get Out', 'Jordan Peele', 2017, 'Terror Social', 7.7, 104, 'disponible'),
('It', 'Andy Muschietti', 2017, 'Terror Sobrenatural', 7.3, 135, 'disponible'),
('El Conjuro', 'James Wan', 2013, 'Terror Sobrenatural', 7.5, 112, 'oculto'),
('Babadook', 'Jennifer Kent', 2014, 'Terror Psicológico', 6.8, 93, 'disponible');

INSERT INTO tareas (titulo, descripcion, categoria, prioridad, fecha_vencimiento, estado, asignado_a) VALUES
('Desarrollar módulo de autenticación', 'Implementar login, registro y recuperación de contraseña.', 'Backend', 'alta', '2026-08-10', 'en_progreso', 'Juan Pérez'),
('Diseñar interfaz de usuario', 'Crear mockups y prototipos para la sección de perfil.', 'Frontend', 'media', '2026-08-15', 'pendiente', 'María García'),
('Configurar base de datos', 'Crear esquema de tablas y relaciones iniciales.', 'DevOps', 'alta', '2026-08-05', 'completada', 'Pedro López'),
('Escribir documentación API', 'Documentar todos los endpoints del backend.', 'Documentación', 'baja', '2026-08-30', 'pendiente', 'Ana Díaz'),
('Revisar código de módulo de pagos', 'Realizar code review y pruebas unitarias.', 'Backend', 'media', '2026-08-12', 'en_progreso', 'Juan Pérez'),
('Optimizar consultas SQL', 'Mejorar rendimiento de consultas lentas en reportes.', 'Backend', 'alta', '2026-08-20', 'pendiente', 'Pedro López'),
('Preparar presentación para cliente', 'Crear diapositivas y guion para la demo.', 'Gestión', 'media', '2026-08-08', 'en_progreso', 'Laura Fernández'),
('Investigar nuevas tecnologías frontend', 'Explorar React 19 y sus novedades.', 'Investigación', 'baja', '2026-09-01', 'pendiente', 'María García'),
('Resolver bug crítico en producción', 'Corregir error que impide el acceso a usuarios.', 'Backend', 'alta', '2026-08-04', 'completada', 'Juan Pérez'),
('Planificar sprint de la próxima semana', 'Definir tareas y asignar responsables.', 'Gestión', 'alta', '2026-08-07', 'pendiente', 'Laura Fernández'),
('Actualizar dependencias del proyecto', 'Revisar y actualizar librerías a sus últimas versiones.', 'DevOps', 'media', '2026-08-25', 'pendiente', 'Pedro López'),
('Crear pruebas de integración', 'Desarrollar conjunto de pruebas para el flujo completo.', 'QA', 'media', '2026-08-18', 'pendiente', 'Carlos Ruiz');
