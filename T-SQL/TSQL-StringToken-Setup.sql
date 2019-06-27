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
