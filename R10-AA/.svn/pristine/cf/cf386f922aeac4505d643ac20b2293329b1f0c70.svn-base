--CRUD stored procedure template

--
USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[Workout_Got_Number]    Script Date: 06/19/2012 14:26:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Workout_Got_Number](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Day] [nvarchar](50) NULL,
	[Time] [nvarchar](50) NULL,
	[Place] [nvarchar](50) NULL,
	[Approach] [nvarchar](50) NULL,
	[Method] [nvarchar](50) NULL,
	[Rank] [nvarchar](50) NULL,
	[M_Detials] [nvarchar](200) NULL,
	[Drink] [bit] NULL,
	[Smoke] [bit] NULL,
	[Card] [bit] NULL,
	[Get_No] [bit] NULL,
	[Touch] [nvarchar](100) NULL,
	[Improve] [nvarchar](200) NULL,
	[Com] [nvarchar](200) NULL,
	[FName] [nvarchar](50) NULL,
	[LName] [nvarchar](50) NULL,
	[Nick] [nvarchar](50) NULL,
	[Avail] [nvarchar](50) NULL,
	[Duration] [nvarchar](50) NULL,
	[HomeAdd] [nvarchar](50) NULL,
	[WorkAdd] [nvarchar](50) NULL,
	[NonVacAdd] [nvarchar](50) NULL,
	[BornIn] [nvarchar](50) NULL,
	[Money] [nvarchar](50) NULL,
	[Age] [nvarchar](50) NULL,
	[Eyes] [nvarchar](50) NULL,
	[Other] [nvarchar](200) NULL,
	[Smoker] [bit] NULL,
	[Mobile] [nvarchar](50) NULL,
	[OtherNo] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL
) ON [PRIMARY]

GO

--

create procedure usp_DELETE_Workout_Got_Number

@ID int
as
begin
DELETE FROM [Action_Amusements_Winhost].[dbo].[Workout_Got_Number]
     WHERE ID= @ID
end


alter proc usp_UPDATE_Workout_Got_Number
@ID int = null 
	  ,@Date date = null 
      ,@Day nvarchar(50) = null 
      ,@Time nvarchar(50) = null 
      ,@Place nvarchar(50) = null 
      ,@Approach nvarchar(50) = null 
      ,@Method nvarchar(50) = null 
      ,@Rank nvarchar(50) = null 
      ,@M_Detials nvarchar(200) = null 
      ,@Drink bit = null 
      ,@Smoke bit = null 
      ,@Card bit = null 
      ,@Get_No bit = null 
      ,@Touch nvarchar(100) = null 
      ,@Improve nvarchar(200) = null 
      ,@Com nvarchar(200) = null 
      ,@FName nvarchar(50) = null 
      ,@LName nvarchar(50) = null 
      ,@Nick nvarchar(50) = null 
      ,@Avail nvarchar(50) = null 
      ,@Duration nvarchar(50) = null 
      ,@HomeAdd nvarchar(50) = null 
      ,@WorkAdd nvarchar(50) = null 
      ,@NonVacAdd nvarchar(50) = null 
      ,@BornIn nvarchar(50) = null 
      ,@Money nvarchar(50) = null 
      ,@Age nvarchar(50) = null 
      ,@Eyes nvarchar(50) = null 
      ,@Other nvarchar(200) = null 
      ,@Smoker bit = null 
      ,@Mobile nvarchar(50) = null 
      ,@OtherNo nvarchar(50) = null 
      ,@Email nvarchar(50) = null 
as
begin
set nocount on;
UPDATE [Action_Amusements_Winhost].[dbo].[Workout_Got_Number]
   SET [Date] = @Date 
      ,[Day] = @Day 
      ,[Time] = @Time 
      ,[Place] = @Place 
      ,[Approach] = @Approach 
      ,[Method] = @Method 
      ,[Rank] = @Rank 
      ,[M_Detials] = @M_Detials 
      ,[Drink] = @Drink 
      ,[Smoke] = @Smoke 
      ,[Card] = @Card 
      ,[Get_No] = @Get_No 
      ,[Touch] = @Touch 
      ,[Improve] = @Improve 
      ,[Com] = @Com 
      ,[FName] = @FName 
      ,[LName] = @LName 
      ,[Nick] = @Nick 
      ,[Avail] = @Avail 
      ,[Duration] = @Duration 
      ,[HomeAdd] = @HomeAdd 
      ,[WorkAdd] = @WorkAdd 
      ,[NonVacAdd] = @NonVacAdd 
      ,[BornIn] = @BornIn 
      ,[Money] = @Money 
      ,[Age] = @Age 
      ,[Eyes] = @Eyes 
      ,[Other] = @Other 
      ,[Smoker] = @Smoker 
      ,[Mobile] = @Mobile 
      ,[OtherNo] = @OtherNo 
      ,[Email] = @Email 
 WHERE ID= @ID


end

alter proc usp_INSERT_Workout_Got_Number
@Date date = null
      ,@Day nvarchar(50) = null 
      ,@Time nvarchar(50) = null 
      ,@Place nvarchar(50) = null 
      ,@Approach nvarchar(50) = null 
      ,@Method nvarchar(50) = null 
      ,@Rank nvarchar(50) = null 
      ,@M_Detials nvarchar(200) = null 
      ,@Drink bit = null 
      ,@Smoke bit = null 
      ,@Card bit = null 
      ,@Get_No bit = null 
      ,@Touch nvarchar(100) = null 
      ,@Improve nvarchar(200) = null 
      ,@Com nvarchar(200) = null 
      ,@FName nvarchar(50) = null 
      ,@LName nvarchar(50) = null 
      ,@Nick nvarchar(50) = null 
      ,@Avail nvarchar(50) = null 
      ,@Duration nvarchar(50) = null 
      ,@HomeAdd nvarchar(50) = null 
      ,@WorkAdd nvarchar(50) = null 
      ,@NonVacAdd nvarchar(50) = null 
      ,@BornIn nvarchar(50) = null 
      ,@Money nvarchar(50) = null 
      ,@Age nvarchar(50) = null 
      ,@Eyes nvarchar(50) = null 
      ,@Other nvarchar(200) = null 
      ,@Smoker bit = null 
      ,@Mobile nvarchar(50) = null 
      ,@OtherNo nvarchar(50) = null 
      ,@Email nvarchar(50) = null 
as
begin
set nocount on;
INSERT INTO [Action_Amusements_Winhost].[dbo].[Workout_Got_Number]
           ([Date]
           ,[Day]
           ,[Time]
           ,[Place]
           ,[Approach]
           ,[Method]
           ,[Rank]
           ,[M_Detials]
           ,[Drink]
           ,[Smoke]
           ,[Card]
           ,[Get_No]
           ,[Touch]
           ,[Improve]
           ,[Com]
           ,[FName]
           ,[LName]
           ,[Nick]
           ,[Avail]
           ,[Duration]
           ,[HomeAdd]
           ,[WorkAdd]
           ,[NonVacAdd]
           ,[BornIn]
           ,[Money]
           ,[Age]
           ,[Eyes]
           ,[Other]
           ,[Smoker]
           ,[Mobile]
           ,[OtherNo]
           ,[Email])
     VALUES
           (@Date 
           ,@Day 
           ,@Time 
           ,@Place 
           ,@Approach 
           ,@Method 
           ,@Rank 
           ,@M_Detials 
           ,@Drink 
           ,@Smoke 
           ,@Card 
           ,@Get_No 
           ,@Touch 
           ,@Improve 
           ,@Com 
           ,@FName 
           ,@LName 
           ,@Nick 
           ,@Avail 
           ,@Duration 
           ,@HomeAdd 
           ,@WorkAdd 
           ,@NonVacAdd 
           ,@BornIn 
           ,@Money 
           ,@Age 
           ,@Eyes 
           ,@Other 
           ,@Smoker 
           ,@Mobile 
           ,@OtherNo 
           ,@Email )
  end

--USAGE OF AL THREE CRUDs
--/////////block to run ///////
DECLARE @Eyes nvarchar(50)
Declare @ID int

EXECUTE  [Action_Amusements_Winhost].[dbo].[usp_INSERT_Workout_Got_Number] 
   @Eyes = 'greenish'
  select * from Workout_Got_Number  
   
   select @id =   max(id) from Workout_Got_Number
   EXECUTE  [Action_Amusements_Winhost].[dbo].[usp_UPDATE_Workout_Got_Number] 
  @ID = @ID
  ,@Eyes = 'Blue-h'
  select * from Workout_Got_Number 
  

 EXECUTE  [Action_Amusements_Winhost].[dbo].[usp_DELETE_Workout_Got_Number] 
   @ID =  @ID
 select * from Workout_Got_Number 

 
  truncate table Workout_Got_Number
 --/////////End block to run ///////