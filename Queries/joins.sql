select @@SERVERNAME + ' ' + @@SERVICENAME



use BotecoDBADB;
go


drop table pessoa;
go 


create table pessoa
(
   id int,
   nome VARCHAR(50),
   cod_cidade int

);
go



insert into pessoa
VALUES
(1,'Bruno',1),
(2,'Debora',2),
(3,'Joao',2),
(4,'Ana',3),
(5,'Alice',3);
go

create table cidade
(
 id int,
 nome VARCHAR(50)
);
go

insert into cidade
VALUES
(1,'Curitiba'),
(2,'Sao Paulo'),
(4,'Maringa');
go

select * from pessoa;
go

select * from cidade;
go

SELECT pe.id as id_pessoa,
pe.nome as nome_pessoa,
ci.nome as nome_cidade
FROM pessoa pe  FULL JOIN cidade ci 
ON pe.cod_cidade = ci.id



SELECT id from pessoa
UNION
SELECT id from cidade


create table customer
(
cidade VARCHAR(50)

)

create table fornecedor
(
cidade VARCHAR(50)

)

insert into customer
VALUES
('curitiba'),
('Lucianopolis'),
('Guaruja');

insert into fornecedor
VALUES
('Bauru'),
('Marilia'),
('Guaruja');

select * from customer
UNION ALL
select * from fornecedor

-- query sql server with sp_error log

exec sp_readerrorlog 0, 1, 'database', 'start'

