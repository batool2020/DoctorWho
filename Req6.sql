CREATE OR ALTER FUNCTION [dbo].[fnCompanions](
	@EpisodeId int
)
RETURNS TABLE AS
RETURN

	SELECT c.CompanionName
	FROM tblCompanion AS c
	INNER JOIN tblEpisodeCompanion AS ec ON ec.CompanionId =  c.CompanionId
	WHERE ec.EpisodeId = @EpisodeId



	USE [DoctorWho]
GO

SELECT * FROM [dbo].[fnEnemies](
	11)

GO


	USE [DoctorWho]
GO

SELECT * FROM [dbo].[viewEpisodes]

GO