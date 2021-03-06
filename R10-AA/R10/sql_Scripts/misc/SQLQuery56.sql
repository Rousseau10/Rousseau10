USE [Action_Amusements_Winhost]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Expenses_Monthly]    Script Date: 06/17/2012 00:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Expenses_Monthly
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
ALTER procedure [dbo].[sp_UPDATE_Expenses_Monthly]


		@Expenses_Monthly_ID int -- also the filter(s) 
      ,@Sellor varchar(50)
      ,@invoice varchar(50)= null
      ,@Year_Month date
      ,@Supply varchar(50)
      ,@Cost money
      ,@Tax money
      ,@Shipping_Cost money
      ,@Pay_Method varchar(20)
      ,@Asset varchar(20)= null
      ,@Details varchar(200)= null
      ,@Notes varchar(200)= null
      ,@Comments  varchar(200)= null
      --,[Record_Modify_Date] 
      --,[Modifiers_Login]
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit = null


AS
BEGIN  
set nocount on 
UPDATE [Action_Amusements_Winhost].[dbo].[Expenses_Monthly]
   SET [Sellor] = @Sellor 
      ,[invoice] = @invoice 
      ,[Year_Month] = @Year_Month
      ,[Supply] = @Supply 
      ,[Cost] = @Cost 
      ,[Tax] = @Tax 
      ,[Shipping_Cost] = @Shipping_Cost 
      ,[Pay_Method] = @Pay_Method 
      ,[Asset] = @Asset 
      ,[Details] = @Details 
      ,[Notes] = @Notes 
      ,[Comments] = @Comments 
      ,[Record_Modify_Date] = GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Expenses_Monthly_ID = @Expenses_Monthly_ID
 end
