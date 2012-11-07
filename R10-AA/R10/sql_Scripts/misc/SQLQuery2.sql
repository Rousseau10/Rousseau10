USE [Action_Amusements_Winhost]
GO

/****** Object:  View [dbo].[vw_Worsheet_SELECT_Previous_Counts]    Script Date: 05/24/2012 05:55:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*,[Machine_Notes]
,[Machine_Comments]
,[Machine_Modify_Date]
,[Modifiers_Login]     
WHERE     (dbo.Loc_Count.Loc_Count_Date = '2012-04-25') AND (dbo.Loc_Count.Loc_Count_ID = 2)*/
create VIEW [dbo].[vw_Worsheet_SELECT_Previous_Counts] with SCHEMABINDING
AS
SELECT     dbo.Location.Location_ID AS 'Location.Location_ID', dbo.Loc_Count.Location_ID AS 'Loc_Count.Location_ID', 
                      dbo.Loc_Count.Loc_Count_ID AS 'Loc_Count.Loc_Count_ID', dbo.Mach_Count.Loc_Count_ID AS 'Mach_Count.Loc_Count_ID', 
                      dbo.Loc_Count.Loc_Count_Date AS 'Loc_Count.Loc_Count_Date', dbo.Location.Location_Name, 
                      dbo.Location.Location_Code AS 'Location.Location_Code', dbo.Machine.Location_Code AS 'Machine.Location_Code', dbo.Location.Account_Name, 
                      dbo.Location.Account_Code, dbo.Location.Address1, dbo.Location.Address2, dbo.Location.City, dbo.Location.State_Province_Territory, 
                      dbo.Location.Country, dbo.Location.Postal_Code, dbo.Location.Email_for_Sales_Report, dbo.Location.Location_Is_Active, 
                      dbo.Location.Tax_Percente_State, dbo.Location.Tax_Percente_County, dbo.Location.Tax_Percente_Other, dbo.Loc_Count.CoinsIn, 
                      dbo.Loc_Count.Tax_State, dbo.Loc_Count.Tax_County, dbo.Loc_Count.Tax_Other, dbo.Loc_Count.Tax_Total, dbo.Loc_Count.Gross, 
                      dbo.Loc_Count.Split_Operator, dbo.Loc_Count.Split_Location, dbo.Loc_Count.Advance, dbo.Loc_Count.Notes, dbo.Loc_Count.Counter_FirstName, 
                      dbo.Loc_Count.Counter_LastName, dbo.Loc_Count.Record_Modified_Date, dbo.Mach_Count.CoinsIn_Cents, dbo.Mach_Count.CoinsIn_Bills, 
                      dbo.Mach_Count.Adjustment_1, dbo.Mach_Count.Adjustment_2_Misc, dbo.Mach_Count.Adjustment_Total, dbo.Mach_Count.CoinsIn_Total, 
                      dbo.Mach_Count.Adjustment_1_Decription, dbo.Mach_Count.Adjustment_2_Misc_Decription, dbo.Mach_Count.Meter_Bills, 
                      dbo.Mach_Count.Meter_Cents, dbo.Mach_Count.Meter_Pieces, dbo.Location.Data_Is_Dummy AS '[Location].[Data_Is_Dummy]', 
                      dbo.Location.Flagged_for_Deletion AS '[Location].[Flagged_for_Deletion]', dbo.Loc_Count.Data_Is_Dummy AS '[Loc_Count].[Data_Is_Dummy]', 
                      dbo.Loc_Count.Flagged_for_Deletion AS '[Loc_Count].[Flagged_for_Deletion]', 
                      dbo.Mach_Count.Machine_Data_Is_Dummy AS '[Mach_Count].[Machine_Data_Is_Dummy]', 
                      dbo.Mach_Count.Flagged_for_Deletion AS '[Mach_Count].[Flagged_for_Deletion]', dbo.Machine.Data_Is_Dummy AS 'Machine.[Data_Is_Dummy]', 
                      dbo.Machine.Alias, dbo.Machine.Machine_Name, dbo.Machine.Machine_Class, dbo.Machine.Keys_1, dbo.Machine.Keys_2, dbo.Machine.Keys_3, 
                      dbo.Machine.Keys_4, dbo.Machine.External_Key, dbo.Machine.Machine_Count_Order
FROM         dbo.Location INNER JOIN
                      dbo.Loc_Count ON dbo.Loc_Count.Location_ID = dbo.Location.Location_ID INNER JOIN
                      dbo.Mach_Count ON dbo.Mach_Count.Loc_Count_ID = dbo.Loc_Count.Loc_Count_ID INNER JOIN
                      dbo.Machine ON dbo.Machine.Machine_ID = dbo.Mach_Count.Machine_ID

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[22] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Location"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Loc_Count"
            Begin Extent = 
               Top = 6
               Left = 280
               Bottom = 125
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Mach_Count"
            Begin Extent = 
               Top = 6
               Left = 510
               Bottom = 125
               Right = 740
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Machine"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 62
         Width = 284
         Width = 1500
         Width = 2415
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 150' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Worsheet_SELECT_Previous_Counts'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1125
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Worsheet_SELECT_Previous_Counts'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Worsheet_SELECT_Previous_Counts'
GO


