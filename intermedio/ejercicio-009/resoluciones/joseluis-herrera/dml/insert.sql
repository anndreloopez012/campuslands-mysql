INSERT INTO atletas (id_atleta, nombre, categoria_peso, activo) VALUES
(1, 'Alex Pereira', 'Peso Semipesado', 1),
(2, 'Rico Verhoeven', 'Peso Pesado', 1),
(3, 'Superbon Singha Mawynn', 'Peso Pluma', 1);

INSERT INTO combates (id_atleta, adversario, resultado) VALUES
(1, 'Israel Adesanya', 'Victoria'),
(2, 'Badr Hari', 'Victoria'),
(3, 'Marat Grigorian', 'Victoria');

INSERT INTO historial_lesiones (id_atleta, tipo_lesion, gravedad) VALUES
(1, 'Esguince de tobillo', 'Leve'),
(3, 'Fractura nasal', 'Moderada');