INSERT INTO enderecos(rua, pais, cidade)
VALUES ('Avenida Higienópolis', 'Brasil', 'Londrina'),
('Avenida Paulista', 'Brasil', 'São Paulo'),
('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');
INSERT INTO usuarios(nome, email, senha, endereco_id)
VALUES ('Cauan', 'cauan@exemple.com', '1234', 2),
('Chrystian', 'chrystian@exemple.com', '4321', 3),
('Matheus', 'matheus@exemple.com', '3214', 1);
INSERT INTO redes_sociais(nome)
VALUES ('Youtube'),
('Twitter'),
('Instagram'),
('Facebook'),
('TikTok');
INSERT INTO usuario_redes_sociais(usuario_id, rede_social_id)
VALUES (1, 1),
(2, 1),
(3, 1),
(2, 2),
(1, 2),
(3, 3),
(3, 4),
(2, 3),
(1, 5);