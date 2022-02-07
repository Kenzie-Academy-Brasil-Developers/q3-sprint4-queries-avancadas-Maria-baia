INSERT INTO enderecos(rua, pais, cidade)
VALUES ('Avenida Higienópolis', 'Brasil', 'Londrina'),
('Avenida Paulista', 'Brasil', 'São Paulo'),
('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');
INSERT INTO usuarios(nome, email, senha, endereco_id)
VALUES ('Cauan', 'cauan@exemple.com', '1234', (SELECT id FROM enderecos WHERE rua LIKE 'Paulista' and cidade = 'São Paulo')),
('Chrystian', 'chrystian@exemple.com', '4321', (SELECT id FROM enderecos WHERE rua LIKE 'Marcelino' and cidade = 'Curitiba')),
('Matheus', 'matheus@exemple.com', '3214', (SELECT id FROM enderecos WHERE rua LIKE 'Higienópolis' and cidade = 'São Londrina'));
INSERT INTO redes_sociais(nome)
VALUES ('Youtube'),
('Twitter'),
('Instagram'),
('Facebook'),
('TikTok');
INSERT INTO usuario_redes_sociais(usuario_id, rede_social_id)
VALUES ((SELECT id FROM usuarios WHERE nome LIKE 'Cauan'), (SELECT id FROM redes_sociais WHERE nome LIKE 'Youtube')),
((SELECT id FROM usuarios WHERE nome LIKE 'Chrystian'), (SELECT id FROM redes_sociais WHERE nome LIKE 'Youtube')),
((SELECT id FROM usuarios WHERE nome LIKE 'Matheus'), (SELECT id FROM redes_sociais WHERE nome LIKE 'Youtube')),
((SELECT id FROM usuarios WHERE nome LIKE 'Chrystian'), (SELECT id FROM redes_sociais WHERE nome LIKE 'Twitter')),
((SELECT id FROM usuarios WHERE nome LIKE 'Cauan'), (SELECT id FROM redes_sociais WHERE nome LIKE 'Twitter')),
((SELECT id FROM usuarios WHERE nome LIKE 'Matheus'), (SELECT id FROM redes_sociais WHERE nome LIKE 'Instagram')),
((SELECT id FROM usuarios WHERE nome LIKE 'Matheus'), (SELECT id FROM redes_sociais WHERE nome LIKE 'Facebook')),
((SELECT id FROM usuarios WHERE nome LIKE 'Chrystian'), (SELECT id FROM redes_sociais  WHERE nome LIKE 'Instagram')),
((SELECT id FROM usuarios WHERE nome LIKE 'Cauan'), (SELECT id FROM redes_sociais WHERE nome LIKE 'TikTok'));