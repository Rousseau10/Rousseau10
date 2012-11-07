
use [Action_Amusements_Winhost]
CREATE PROCEDURE sp_UPDATE_zzz__Parent_Child 
--parent pamrs
 @Loc_Count_ID int
 ,@Loc nchar(10)
 ,@DOP date
 ,@CoinsIN money
 ,@Nullable_Rating int
 --child parms
 ,@Mach_Count_ID int
 --,@Loc_Count_ID int
 --,@CoinsIn
 ,@CoinsBils money
 ,@Nullable_Mach_Rating int
 
 
AS
BEGIN


  
update dbo.zzz_Parent
set 
 Loc = @Loc
 ,DOP = @DOP
 ,CoinsIN = @CoinsIN
 ,Nullable_Rating = @Nullable_Rating
where Loc_Count_ID = @Loc_Count_ID

update zzz_Child
set 

 Loc_Count_ID = @Loc_Count_ID
 ,CoinsIn = @Loc_Count_ID
 ,CoinsBils = @CoinsBils
 ,Nullable_Mach_Rating = @Nullable_Mach_Rating
where Loc_Count_ID = @Loc_Count_ID
   
END
GO