USE Demo
GO

DBCC DROPCLEANBUFFERS
GO

DECLARE @startDtm DATETIME = GETDATE()

SELECT dbo.ufn_GetTokenLength(TokenString, '|', 0), dbo.ufn_GetTokenLength(TokenString, '|', 1)
FROM CLRSampleData.dbo.StringTokens

DECLARE @durationMSecs INTEGER = DATEDIFF(ms, @startDtm, GETDATE())
SELECT 'T-SQL Completed in: ' + CAST(@durationMSecs AS VARCHAR(MAX)) + ' M/Secs'

DBCC DROPCLEANBUFFERS
GO

DECLARE @startDtm DATETIME = GETDATE()
SELECT dbo.GetFastTokenLength(TokenString, '|', 0), dbo.GetFastTokenLength(TokenString, '|', 1) 
FROM ClrSampleData.dbo.StringTokens
DECLARE @durationMSecs INTEGER = DATEDIFF(ms, @startDtm, GETDATE())
SELECT 'CLR Completed in: ' + CAST(@durationMSecs AS VARCHAR(MAX)) + ' M/Secs'

