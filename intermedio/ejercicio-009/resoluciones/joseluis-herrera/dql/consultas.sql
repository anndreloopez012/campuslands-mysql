SELECT 
    a.nombre AS atleta,
    a.categoria_peso,
    c.adversario,
    c.resultado AS resultado_combate,
    IFNULL(l.tipo_lesion, 'Sin lesiones registradas') AS historial_medico
FROM atletas a
LEFT JOIN combates c ON a.id_atleta = c.id_atleta
LEFT JOIN historial_lesiones l ON a.id_atleta = l.id_atleta;
