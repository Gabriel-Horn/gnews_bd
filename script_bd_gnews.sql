CREATE TABLE historico_revisao (
  id_historico SERIAL PRIMARY KEY,
  observacao_revisao varchar (255),
  status_aplicado varchar (255),
  data_alteracao timestamp
  
);

SELECT * FROM historico_revisao;

INSERT INTO  historico_revisao(observacao_revisao, status_aplicado, data_alteracao) VALUES ('Observação concluida com sucesso e sem erros', 'Ok', '2026-12-30 14:30:00' )         


