CREATE SCHEMA IF NOT EXISTS comabemdb;

USE comabemdb ;

CREATE TABLE IF NOT EXISTS comabemdb.valores (
  id_valores INT NOT NULL AUTO_INCREMENT,
  preco_por_unidade_reais DECIMAL(8,2) NOT NULL,
  medidas_unidade VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_valores));


CREATE TABLE IF NOT EXISTS comabemdb.lista_produtos (
  id_produtos INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  id_valores INT NOT NULL,
  PRIMARY KEY (id_produtos),
  CONSTRAINT fk_lista_produtos_1
    FOREIGN KEY (id_valores)
    REFERENCES ComaBemDB.valores (id_valores)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
