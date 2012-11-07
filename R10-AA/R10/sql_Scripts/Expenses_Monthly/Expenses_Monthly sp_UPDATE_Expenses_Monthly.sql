SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Expenses_Monthly
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
create procedure sp_UPDATE_Expenses_Monthly
@Expenses_Monthly_ID_Filter int 
--filter(s) above

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
 WHERE Expenses_Monthly_ID = @Expenses_Monthly_ID_Filter
 end
GO


declare
@Expenses_Monthly_ID_Filter int = 4
--filter(s) above

      ,@Sellor varchar(50)= 'STAPLE STORE'
      ,@invoice varchar(50)
      ,@Year_Month date = '2012-01-01'
      ,@Supply varchar(50) = 'Batteries'
      ,@Cost money = 120
      ,@Tax money = 3
      ,@Shipping_Cost money = 0
      ,@Pay_Method varchar(20) = 'Card Visa'
      ,@Asset varchar(20)
      ,@Details varchar(200)
      ,@Notes varchar(200)
      ,@Comments  varchar(200)
      --,[Record_Modify_Date] 
      --,[Modifiers_Login]
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit = null
      
 Exec sp_UPDATE_Expenses_Monthly 
 @Expenses_Monthly_ID_Filter = @Expenses_Monthly_ID_Filter
 ,@Sellor = @Sellor
 ,@Cost = @Cost
 ,@Year_Month = @Year_Month
 ,@Supply = @Supply
 ,@Tax = @Tax
 ,@Shipping_Cost = @Shipping_Cost 
 ,@Pay_Method = @Pay_Method 
 
     
select * from Expenses_Monthly

