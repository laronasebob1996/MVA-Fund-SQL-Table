/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP (1000) [Claim_ID]
--      ,[Claimant_Name]
--      ,[Date_of_Accident]
--      ,[Date_of_Report]
--      ,[Amount_Claimed]
--      ,[Amount_Paid]
--      ,[Status]
--      ,[Cause]
--      ,[Region]
--  FROM [sales analytics].[dbo].[MVA_Claims]

---Show all claims with a status of "Pending"---
--SELECT * FROM MVA_Claims WHERE Status = 'Pending'

---shows when the amount claimed is less than the amount paid---
--SELECT * FROM MVA_Claims WHERE Amount_Claimed > Amount_Paid

