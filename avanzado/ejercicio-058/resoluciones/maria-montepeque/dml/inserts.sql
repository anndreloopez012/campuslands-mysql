-- Datos de practica: perfiles de alumnos de una academia tech,
-- guardados como JSON (habilidades, proyectos y datos de contacto).
USE campuslands_mysql;

INSERT INTO alumnos_perfil_avanzado (nombre, programa, perfil) VALUES
('Renata Osorio', 'desarrollo_web', JSON_OBJECT(
  'habilidades', JSON_ARRAY('HTML', 'CSS', 'JavaScript', 'Vue'),
  'proyectos', JSON_ARRAY(
    JSON_OBJECT('nombre', 'Portafolio Personal', 'tecnologia', 'Vue'),
    JSON_OBJECT('nombre', 'Tienda en Linea', 'tecnologia', 'Node.js')
  ),
  'contacto', JSON_OBJECT('github', 'renataosorio', 'linkedin', 'renata-osorio')
)),
('Tomas Duarte', 'ciencia_datos', JSON_OBJECT(
  'habilidades', JSON_ARRAY('Python', 'SQL', 'NumPy'),
  'proyectos', JSON_ARRAY(
    JSON_OBJECT('nombre', 'Prediccion de Demanda', 'tecnologia', 'Python')
  ),
  'contacto', JSON_OBJECT('github', 'tomasduarte', 'linkedin', 'tomas-duarte')
)),
('Valeria Ponce', 'ciberseguridad', JSON_OBJECT(
  'habilidades', JSON_ARRAY('Python', 'Linux', 'Nmap', 'Metasploit'),
  'proyectos', JSON_ARRAY(
    JSON_OBJECT('nombre', 'Pentest Interno', 'tecnologia', 'Kali Linux'),
    JSON_OBJECT('nombre', 'Auditoria de Red', 'tecnologia', 'Wireshark')
  ),
  'contacto', JSON_OBJECT('github', 'valeriaponce', 'linkedin', 'valeria-ponce')
)),
('Emilio Salcedo', 'devops', JSON_OBJECT(
  'habilidades', JSON_ARRAY('Docker', 'Kubernetes', 'Terraform'),
  'proyectos', JSON_ARRAY(
    JSON_OBJECT('nombre', 'Pipeline de Despliegue', 'tecnologia', 'GitLab CI')
  ),
  'contacto', JSON_OBJECT('github', 'emiliosalcedo', 'linkedin', 'emilio-salcedo')
)),
('Camila Restrepo', 'diseno_ux', JSON_OBJECT(
  'habilidades', JSON_ARRAY('Figma', 'Adobe XD', 'Prototipado'),
  'proyectos', JSON_ARRAY(
    JSON_OBJECT('nombre', 'Rediseno App de Salud', 'tecnologia', 'Figma')
  ),
  'contacto', JSON_OBJECT('github', 'camilarestrepo', 'linkedin', 'camila-restrepo')
)),
('Sebastian Colmenares', 'desarrollo_web', JSON_OBJECT(
  'habilidades', JSON_ARRAY('JavaScript', 'React', 'SQL'),
  'proyectos', JSON_ARRAY(
    JSON_OBJECT('nombre', 'Dashboard de Ventas', 'tecnologia', 'React'),
    JSON_OBJECT('nombre', 'API de Pedidos', 'tecnologia', 'Express')
  ),
  'contacto', JSON_OBJECT('github', 'sebascolmenares', 'linkedin', 'sebastian-colmenares')
)),
('Paula Vanegas', 'ciencia_datos', JSON_OBJECT(
  'habilidades', JSON_ARRAY('Python', 'R', 'Machine Learning'),
  'proyectos', JSON_ARRAY(
    JSON_OBJECT('nombre', 'Clasificador de Clientes', 'tecnologia', 'scikit-learn')
  ),
  'contacto', JSON_OBJECT('github', 'paulavanegas', 'linkedin', 'paula-vanegas')
)),
('Andres Puentes', 'ciberseguridad', JSON_OBJECT(
  'habilidades', JSON_ARRAY('Python', 'Linux'),
  'proyectos', JSON_ARRAY(),
  'contacto', JSON_OBJECT('github', 'andrespuentes', 'linkedin', 'andres-puentes')
));

-- Andres Puentes todavia no tenia ningun proyecto registrado.
-- JSON_ARRAY_APPEND agrega un elemento al final del arreglo "proyectos"
-- sin tener que reescribir todo el documento JSON.
UPDATE alumnos_perfil_avanzado
SET perfil = JSON_ARRAY_APPEND(
  perfil,
  '$.proyectos',
  JSON_OBJECT('nombre', 'Escaner de Puertos Basico', 'tecnologia', 'Python')
)
WHERE nombre = 'Andres Puentes';
