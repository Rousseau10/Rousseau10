BEGIN TRAN



		CREATE TRIGGER [dbo].[TRG_AFTER_IsActive]
		   ON  [dbo].[Location]
		   AFTER INSERT,UPDATE
		AS 
		BEGIN
		If Loc_End_Date is not null AND Loc_End_Date < GetDate()
		UPDATE [Location]
		SET Is_Active = 'false'
		END
END

GO

BEGIN TRAN

		CREATE TRIGGER [dbo].[TRG_AFTER_IsActive]
		   ON  [dbo].[Machine]
		   AFTER INSERT,UPDATE
		AS 
		BEGIN
		If Loc_End_Date is not null AND Loc_End_Date < GetDate()
		UPDATE [Account]
		SET Is_Active = 'false'
		END
		END
END
