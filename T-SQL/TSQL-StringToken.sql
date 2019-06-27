USE Demo
GO

-- Create a T-SQL UFN to get string length of delimited token within source string

IF EXISTS(SELECT * from sys.objects WHERE name = 'ufn_GetTokenLength') DROP FUNCTION dbo.ufn_GetTokenLength
GO

CREATE FUNCTION ufn_GetTokenLength(@SrcString nvarchar(4000), @TokenNo int)
	RETURNS INT
AS
BEGIN
	DECLARE @CurrOffset int, @NextOffset int, @TokenCnt int

	SET @CurrOffset = 0
	SET @TokenCnt = 0
	SET @NextOffset = CHARINDEX('|', @SrcString)

	WHILE (@NextOffset <> 0)
	BEGIN
		IF @TokenCnt = @TokenNo
			RETURN LEN(SUBSTRING(@SrcString,@CurrOffset,@NextOffset-@CurrOffset))

        SET @CurrOffset = @NextOffset + 1
        SET @TokenCnt = @TokenCnt + 1
        SET @NextOffset = CHARINDEX('|',@SrcString, @NextOffset+1)
	END

	RETURN -1
END
GO

SELECT dbo.ufn_GetTokenLength(TokenString, 0), dbo.ufn_GetTokenLength(TokenString, 1)
FROM CLRSampleData.dbo.StringTokens

-- NOTE: the DROPCLEANBUFFER does not change performance - most cost is PROC

DBCC DROPCLEANBUFFERS
GO

--
-- CLR Stuff starts here
--

/*
sp_configure 'clr enabled', 1

RECONFIGURE


SELECT dbo.GetFastTokenLength(TokenString, 0), dbo.GetFastTokenLength(TokenString, 1) 
FROM ClrSampleData.dbo.StringTokens
*/