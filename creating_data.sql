-- Select rows from a Table or View '[usuario]' in schema '[dbo]'
SELECT * FROM [dbo].[usuario]

 -- Insert rows into table 'usuario' in schema '[dbo]'
INSERT INTO [dbo].[usuario]
( -- Columns to insert data into
 [Id], [nome], [email]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Bruno', 'bruno@'
),
( -- Second row: values for the columns in the list above
 2, 'De', 'De@'
)
-- Add more rows here 
GO