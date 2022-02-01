SELECT * FROM enderecos;

SELECT * FROM enderecos AS e
FULL OUTER JOIN usuarios AS u 
	ON e.id = u.endereco_id
ORDER BY e.id;

SELECT r.id, r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id FROM usuario_redes_sociais AS u_r
FULL OUTER JOIN redes_sociais AS r
	ON u_r.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
	ON u_r.usuario_id = u.id;

SELECT r.id, r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e.id, e.rua, e.pais, e.cidade FROM usuario_redes_sociais AS u_r 
FULL OUTER JOIN redes_sociais AS r
	ON u_r.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
	ON u_r.usuario_id = u.id
FULL OUTER JOIN enderecos AS e
	ON u.endereco_id = e.id;

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM usuario_redes_sociais AS u_r 
FULL OUTER JOIN redes_sociais AS r
	ON u_r.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
	ON u_r.usuario_id = u.id
FULL OUTER JOIN enderecos AS e
	ON u.endereco_id = e.id;

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM usuario_redes_sociais AS u_r 
FULL OUTER JOIN redes_sociais AS r
	ON u_r.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
	ON u_r.usuario_id = u.id
FULL OUTER JOIN enderecos AS e
	ON u.endereco_id = e.id
WHERE r.nome = 'Youtube';

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM usuario_redes_sociais AS u_r 
FULL OUTER JOIN redes_sociais AS r
	ON u_r.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
	ON u_r.usuario_id = u.id
FULL OUTER JOIN enderecos AS e
	ON u.endereco_id = e.id
WHERE r.nome = 'Instagram';

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM usuario_redes_sociais AS u_r 
FULL OUTER JOIN redes_sociais AS r
	ON u_r.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
	ON u_r.usuario_id = u.id
FULL OUTER JOIN enderecos AS e
	ON u.endereco_id = e.id
WHERE r.nome = 'Facebook';

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM usuario_redes_sociais AS u_r 
FULL OUTER JOIN redes_sociais AS r
	ON u_r.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
	ON u_r.usuario_id = u.id
FULL OUTER JOIN enderecos AS e
	ON u.endereco_id = e.id
WHERE r.nome = 'TikTok';
	
SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM usuario_redes_sociais AS u_r 
FULL OUTER JOIN redes_sociais AS r
	ON u_r.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
	ON u_r.usuario_id = u.id
FULL OUTER JOIN enderecos AS e
	ON u.endereco_id = e.id
WHERE r.nome = 'Twitter';