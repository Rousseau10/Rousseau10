
create procedure usp_DELETE_Workout_Got_Number

@ID int
as
begin

DELETE FROM [Action_Amusements_Winhost].[dbo].[Workout_Got_Number]
     WHERE ID= @ID


end


create proc usp_UPDATE_Workout_Got_Number
@ID int
	  ,@Date date 
      ,@Day nvarchar(50) 
      ,@Time nvarchar(50) 
      ,@Place nvarchar(50) 
      ,@Approach nvarchar(50) 
      ,@Method, nvarchar(50) 
      ,@Rank nvarchar(50) 
      ,@M_Detials nvarchar(200) 
      ,@Drink bit 
      ,@Smoke bit 
      ,@Card bit 
      ,@Get_No bit 
      ,@Touch nvarchar(100) 
      ,@Improve nvarchar(200) 
      ,@Com nvarchar(200) 
      ,@FName nvarchar(50) 
      ,@LName nvarchar(50) 
      ,@Nick nvarchar(50) 
      ,@Avail nvarchar(50) 
      ,@Duration nvarchar(50) 
      ,@HomeAdd nvarchar(50) 
      ,@WorkAdd nvarchar(50) 
      ,@NonVacAdd nvarchar(50) 
      ,@BornIn nvarchar(50) 
      ,@Money nvarchar(50) 
      ,@Age nvarchar(50) 
      ,@Eyes nvarchar(50) 
      ,@Other nvarchar(200) 
      ,@Smoker bit 
      ,@Mobile nvarchar(50) 
      ,@OtherNo nvarchar(50) 
       @Email nvarchar(50) 
as
begin

UPDATE [Action_Amusements_Winhost].[dbo].[Workout_Got_Number]
   SET [Date] = @Date, date,>
      ,[Day] = @Day, nvarchar(50),>
      ,[Time] = @Time, nvarchar(50),>
      ,[Where] = @Where, nvarchar(50),>
      ,[Approach] = @Approach, nvarchar(50),>
      ,[Method] = @Method, nvarchar(50),>
      ,[Rank] = @Rank, nvarchar(50),>
      ,[M_Detials] = @M_Detials, nvarchar(200),>
      ,[Drink] = @Drink, bit,>
      ,[Smoke] = @Smoke, bit,>
      ,[Card] = @Card, bit,>
      ,[Get_No] = @Get_No, bit,>
      ,[Touch] = @Touch, nvarchar(100),>
      ,[Improve] = @Improve, nvarchar(200),>
      ,[Com] = @Com, nvarchar(200),>
      ,[FName] = @FName, nvarchar(50),>
      ,[LName] = @LName, nvarchar(50),>
      ,[Nick] = @Nick, nvarchar(50),>
      ,[Avail] = @Avail, nvarchar(50),>
      ,[Duration] = @Duration, nvarchar(50),>
      ,[HomeAdd] = @HomeAdd, nvarchar(50),>
      ,[WorkAdd] = @WorkAdd, nvarchar(50),>
      ,[NonVacAdd] = @NonVacAdd, nvarchar(50),>
      ,[From] = @From, nvarchar(50),>
      ,[Money] = @Money, nvarchar(50),>
      ,[Age] = @Age, nvarchar(50),>
      ,[Eyes] = @Eyes, nvarchar(50),>
      ,[Other] = @Other, nvarchar(200),>
      ,[Smoker] = @Smoker, bit,>
      ,[Mobile] = @Mobile, nvarchar(50),>
      ,[OtherNo] = @OtherNo, nvarchar(50),>
      ,[Email] = @Email, nvarchar(50),>
 WHERE ID= @ID


end

create proc usp_INSERT_Workout_Got_Number
@ID int
as
begin
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
           (@Date, date,>
           ,@Day, nvarchar(50),>
           ,@Time, nvarchar(50),>
           ,@Place, nvarchar(50),>
           ,@Approach, nvarchar(50),>
           ,@Method, nvarchar(50),>
           ,@Rank, nvarchar(50),>
           ,@M_Detials, nvarchar(200),>
           ,@Drink, bit,>
           ,@Smoke, bit,>
           ,@Card, bit,>
           ,@Get_No, bit,>
           ,@Touch, nvarchar(100),>
           ,@Improve, nvarchar(200),>
           ,@Com, nvarchar(200),>
           ,@FName, nvarchar(50),>
           ,@LName, nvarchar(50),>
           ,@Nick, nvarchar(50),>
           ,@Avail, nvarchar(50),>
           ,@Duration, nvarchar(50),>
           ,@HomeAdd, nvarchar(50),>
           ,@WorkAdd, nvarchar(50),>
           ,@NonVacAdd, nvarchar(50),>
           ,@BornIn, nvarchar(50),>
           ,@Money, nvarchar(50),>
           ,@Age, nvarchar(50),>
           ,@Eyes, nvarchar(50),>
           ,@Other, nvarchar(200),>
           ,@Smoker, bit,>
           ,@Mobile, nvarchar(50),>
           ,@OtherNo, nvarchar(50),>
           ,@Email, nvarchar(50),>)
  end
