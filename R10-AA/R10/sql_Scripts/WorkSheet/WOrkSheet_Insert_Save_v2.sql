/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 5 [id]
      ,[coinsIN]
  FROM [Action_Amusements_Winhost].[dbo].[tester]
  
  SELECT [history_id]
      ,[id]
      ,[coinsIN_running_total]
  FROM [Action_Amusements_Winhost].[dbo].[tester_history]
GO


	    