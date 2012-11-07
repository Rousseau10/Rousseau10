USE [Action_Amusements_Winhost]
GO

/****** Object:  Trigger [dbo].[TRG_AFTER_IsActive_AFTER_Location]    Script Date: 06/23/2012 09:55:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[TRG_AFTER_IsActive_AFTER_Location]
		   ON  [dbo].[Location]
		   AFTER INSERT,UPDATE
		AS 
		BEGIN
			
			UPDATE [Location]
			SET Is_Active = 'false'
			where Loc_End_Date   < GetDate()
			
			UPDATE [Location]
			SET Is_Active = 'true'
			where Loc_End_Date   IS NULL OR Loc_End_Date >= GetDate()
		END

GO


USE [Action_Amusements_Winhost]
GO

/****** Object:  Trigger [dbo].[TRG_AFTER_IsActive_AFTER_Account]    Script Date: 06/23/2012 09:56:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


alter TRIGGER [dbo].[TRG_AFTER_IsActive_AFTER_Account]
		   ON  [dbo].[Account]
		   AFTER INSERT,UPDATE
		AS 
		BEGIN
			
			UPDATE [Account]
			SET Is_Active = 'false'
			where End_Date   < GetDate()
			
			UPDATE [Account]
			SET Is_Active = 'true'
			where End_Date   IS NULL OR End_Date >= GetDate()
		END
GO

