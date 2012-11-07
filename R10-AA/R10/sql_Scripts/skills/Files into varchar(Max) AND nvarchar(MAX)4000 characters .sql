--///////////////inserting Files into nvarchar(MAX)400 chars (2 gig)////////////////--



 CREATE TABLE #MyTestTable (
    MyData NVARCHAR(MAX)
 )
 
 -- Puts all eACH row in text fnot new table row----RESULTS: works fine
 BULK INSERT [#MyTestTable]
FROM 'D:\MyTextFileComaDeliited.txt'

 SELECT * FROM #MyTestTable

 
 --Puts WHOLE file into row  ----RESULTS: works fine
BULK INSERT [#MyTestTable]
FROM 'D:\MyTextFileComaDeliited.txt'
WITH (ROWTERMINATOR = '\0',
      CODEPAGE = 'ACP')     
SELECT * FROM #MyTestTable

 

 --.XLS Puts WHOLE file into row  ----RESULTS: went in but all chewed up 
BULK INSERT [#MyTestTable]
FROM 'D:\Friday Call In Email.xls'
WITH (ROWTERMINATOR = '|',
      CODEPAGE = 'ACP')     
SELECT * FROM #MyTestTable

 
 
 
  --.SQL Puts WHOLE file into row  ----RESULTS: works
BULK INSERT [#MyTestTable]
FROM 'D:\All_Tables_functions_DAta_J23.sql'
WITH (ROWTERMINATOR = '\0',
      CODEPAGE = 'ACP')     
SELECT * FROM #MyTestTable

 

 --.DOC - Puts WHOLE file into row ----RESULTS: went in but all chewed up 
BULK INSERT [#MyTestTable]
FROM 'D:\Manuscript_GZK_Just_Text.doc'
WITH (ROWTERMINATOR = '\0',
      CODEPAGE = 'ACP')     
SELECT * FROM #MyTestTable

 

 --.DOC with images - Puts WHOLE file into row--RESULTS: went in but all chewed up 
BULK INSERT [#MyTestTable]
FROM 'D:\Manuscript_GZK_With_Images.doc'
WITH (ROWTERMINATOR = '\0',
      CODEPAGE = 'ACP')     
SELECT * FROM #MyTestTable
 
 



 SELECT * FROM #MyTestTable
  drop table #MyTestTable