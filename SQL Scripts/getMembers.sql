USE V1Migration;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getMembers')
    DROP PROCEDURE [dbo].getMembers;
GO

CREATE PROCEDURE getMembers 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Members;
END
GO
