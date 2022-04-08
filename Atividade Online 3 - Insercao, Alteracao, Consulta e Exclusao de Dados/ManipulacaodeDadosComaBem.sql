USE comabemdb;

INSERT INTO valores(preco_por_unidade_reais, medidas_unidade) VALUES ('30.00', '2 Kg');
INSERT INTO valores(preco_por_unidade_reais, medidas_unidade) VALUES ('30.00', '1 Unidade');
INSERT INTO valores(preco_por_unidade_reais, medidas_unidade) VALUES ('30.00', '1,5 Litros');
INSERT INTO valores(preco_por_unidade_reais, medidas_unidade) VALUES ('20.00', '2 Pacotes');

SELECT * FROM valores;


INSERT INTO lista_produtos(nome, id_valores) VALUES ('Carne', 1);
INSERT INTO lista_produtos(nome, id_valores) VALUES ('Óleo', 2);
INSERT INTO lista_produtos(nome, id_valores) VALUES ('Leite', 3);
INSERT INTO lista_produtos(nome, id_valores) VALUES ('Alface', 2);
INSERT INTO lista_produtos(nome, id_valores) VALUES ('Biscoito', 4);
INSERT INTO lista_produtos(nome, id_valores) VALUES ('Produto a Atualizar', 2);
INSERT INTO lista_produtos(nome, id_valores) VALUES ('Peixe Congelado',1);

SELECT id_produtos AS 'Código', nome AS 'Produto', id_valores AS 'Valores do Produto' FROM lista_produtos;

UPDATE valores SET preco_por_unidade_reais = '10.00', medidas_unidade = '1 Pacote' WHERE id_valores = 4;
SELECT * FROM valores WHERE id_valores = 4;
UPDATE lista_produtos SET nome = 'Biscoito de Chocolate' WHERE id_produtos = 5;
SELECT id_produtos, nome FROM lista_produtos WHERE id_produtos = 5;
UPDATE lista_produtos SET nome = 'Milho de Pipoca', id_valores = 4 WHERE id_produtos = 6;
SELECT * FROM lista_produtos WHERE id_produto = 6;

SELECT * FROM lista_produtos;
DELETE FROM lista_produtos WHERE id_produtos = 7;
SELECT LP.id_produtos AS 'Código', LP.nome AS 'Produto', LP.id_valores AS 'Valores do Produto', V.preco_por_unidade_reais AS 'Preço', V.medidas_unidade AS 'Unidade'
	FROM lista_produtos AS LP
	JOIN valores AS V ON LP.id_valores = V.id_valores
    ORDER BY LP.id_produtos;

