/* criação database exemplo */ 

create database mock;

use mock;

/* criação tabela exemplo */ 

create table cliente (nome varchar(30), telefone varchar(15), cidade varchar(20), pais varchar(20));

desc cliente;

insert into cliente (nome,telefone,cidade,pais) values ('fulano1','111111111','Lisboa1','Portugal1');

/* query de teste */

select * from cliente;

SELECT nome,telefone,cidade,pais FROM cliente WHERE nome='fulano1';

/* OBS: No XML, a query será SELECT nome,telefone,cidade,pais FROM cliente WHERE nome=?; */

INSERT into cliente (nome,telefone,cidade,pais) values ('fulano2','222222222','Lisboa2','Portugal2');

/* OBS: No XML, a query será INSERT into cliente (nome,telefone,cidade,pais) values (?,?,?,?); */

DELETE from cliente where nome='fulano4';

/* OBS: No XML, a query será DELETE from cliente where nome=?; */

UPDATE cliente set telefone = 'outro333333', cidade = 'outroLisboa3', pais='outroPortugal3' where nome = 'fulano3';

/* OBS: No XML, a query será UPDATE cliente set telefone = ?, cidade = ?, pais = ? where nome = ?; */