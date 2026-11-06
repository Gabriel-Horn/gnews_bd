CREATE TABLE historico_revisao (
  id_historico SERIAL PRIMARY KEY,
  observacao_revisao varchar (255),
  status_aplicado varchar (255),
  data_alteracao timestamp
  
);

SELECT * FROM historico_revisao;

INSERT INTO  historico_revisao(observacao_revisao, status_aplicado, data_alteracao) VALUES ('Observação concluida com sucesso e sem erros', 'Ok', '2026-12-30 14:30:00' );

CREATE TABLE midia_noticia (
  id_noticia SERIAL PRIMARY KEY,
  tipo_midia varchar(255),
  url_arquivo varchar(500),
  legenda varchar(255),
  data_upload timestamp

);         

SELECT * FROM midia_noticia;

INSERT INTO  midia_noticia(tipo_midia, url_arquivo, legenda, data_upload) VALUES ('Página web', 'www.gnews.com', 'Parque sustentável', '2027-01-01 03:00:34' );

CREATE TABLE noticia(
  
  id_noticia SERIAL PRIMARY KEY,
  titulo varchar(255),
  subtitulo varchar(255),
  conteudo_texto varchar(255),
  status varchar(255),
  data_publicacao timestamp,
  data_criacao timestamp,
  fk_jornalista int,
  fk_categoria int,
  CONSTRAINT fk_jornalista FOREIGN KEY (fk_jornalista) REFERENCES jornalista (id_jornalista),
  CONSTRAINT fk_categoria FOREIGN KEY (fk_categoria) REFERENCES categoria (id_categoria) 

);


INSERT INTO noticia (titulo, subtitulo, conteudo_texto, status) VALUES ('Novo parque sustentável', 'Novo parque anunciado em Cascavel construído com recusos ecológicos.', 'Nesta manhã foi anunciado a finalização do parque que estava sendo construído. È um espaço de lazer pensado em sustentabilidade.', 'Ok', '2026-12-30 03:01:24');
SELECT * FROM noticia;

CREATE TABLE jornalista(

  id_jornalista SERIAL PRIMARY KEY,
  registro_profissional varchar(50),
  biografia character varying(255),
  especialidade varchar(100),
  fk_usuario int,
  CONSTRAINT fk_usuario FOREIGN KEY (fk_usuario) REFERENCES usuario (id_usuario)

);

INSERT INTO jornalista (regristro_profissional, biografio character, especialidade) VALUES ('');
SELECT * FROM jornalista;

CREATE TABLE usuario(

  id_usuario SERIAL PRIMARY KEY,
  nome varchar(255),
  email varchar(255),
  senha_hash varchar(255),
  data_nascimento date,
  tipo_perfil varchar(255),
  data_cadastro timestamp

);

INSERT INTO usuario (nome, email, senha_hash, data_nascimento, tipo_perfil, data_cadastro) VALUES ('Roberta', 'roberta@gmail.com', '', '2000-10-19 05:27:24', '', '2013-07-18 14:30:58' );
SELECT * FROM usuario;

create table public_categoria(
  id_categoria serial primary key,
  nome_categoria     varchar(100) null,
  descricao          varchar(255) null,
  slug               varchar(100)

);

INSERT INTO  public_categoria (nome_categoria, descricao, slug) VALUES ('Susten', 'Ok', '2026-12-30 14:30:00' );

SELECT * FROM public_categoria;

