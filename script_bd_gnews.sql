CREATE TABLE historico_revisão(
  
  id_historico SERIAL PRIMARY KEY,
  fk_noticia int, 
  CONSTRAINT fk_noticia FOREIGN KEY (fk_noticia) REFERENCES noticia (id_noticia),
  fk_editor int, 
  CONSTRAINT fk_editor FOREIGN KEY (fk_editor) REFERENCES editor (id_editor),
  observação_revisao varchar(255),
  status_aplicado  varchar(255),
  data_alteracao timestamp
  
);
