USE comabemdb;

CREATE ROLE cliente;

CREATE USER usuario 
	IDENTIFIED BY 'senha123'
    DEFAULT ROLE cliente;
    
GRANT SELECT ON comabemdb.* TO cliente;

FLUSH PRIVILEGES;