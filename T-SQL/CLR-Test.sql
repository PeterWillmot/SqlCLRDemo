USE Demo

DBCC DROPCLEANBUFFERS
GO

SELECT dbo.GetFastTokenLength(TokenString, 0), dbo.GetFastTokenLength(TokenString, 1) 
FROM ClrSampleData.dbo.StringTokens
