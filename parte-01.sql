CREATE  TABLE IF NOT EXISTS redes_sociais(
	id bigserial PRIMARY KEY,
	nome varchar(150) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS enderecos(
	id bigserial PRIMARY KEY,
	rua varchar NOT NULL,
	pais varchar(100) NOT NULL,
	cidade varchar(100) NOT NULL 
);
CREATE TABLE IF NOT EXISTS usuarios(
	id bigserial PRIMARY KEY,
	nome varchar(100),
	email varchar NOT NULL UNIQUE,
	senha varchar NOT NULL,
	endereco_id integer NOT NULL,
	CONSTRAINT fk_enderecos FOREIGN KEY (endereco_id) REFERENCES enderecos(id)
);
CREATE TABLE IF NOT EXISTS usuario_redes_sociais(
	id bigserial PRIMARY KEY,
	usuario_id integer NOT NULL,
	rede_social_id integer NOT NULL,
	CONSTRAINT fk_usuarios FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
	CONSTRAINT fk_redes_sociais FOREIGN KEY (rede_social_id) REFERENCES redes_sociais(id)
);