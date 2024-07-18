SELECT TOP (1000) [id]
      ,[name]
      ,[salary]
      , ROW_NUMBER() OVER (ORDER BY id) as row_id
  FROM [test].[dbo].[user]

  SELECT *
  FROM [test].[dbo].[user]
 
update test.dbo.[user]
set sexo = 'feminino'
where id not in (1,3,4)



 



  insert into test.dbo.[user]
  VALUES
  (4,'Bruno','10000'),
  (5,'Debora','3000'),
  (6,'Alice','1000');
  go

alter table test.dbo.[user]
add  sexo varchar(10)


select id,name,salary,sexo,
AVG(salary) OVER (PARTITION BY sexo) as 'Media de salario por sexo'
from test.dbo.[user]

select (3000 + 10000 + 1000) / 3