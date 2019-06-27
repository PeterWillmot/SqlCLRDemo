USE Demo
GO

-- NOTE: the DROPCLEANBUFFER does not change performance - most cost is PROC

DBCC DROPCLEANBUFFERS
GO

SELECT dbo.ufn_GetTokenLength(TokenString, 0), dbo.ufn_GetTokenLength(TokenString, 1)
FROM CLRSampleData.dbo.StringTokens
