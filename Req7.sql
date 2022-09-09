CREATE FUNCTION [dbo].[fnEnemies](
	@EpisodeId int
)
RETURNS TABLE AS
RETURN
-- Simple 

	SELECT E.EnemyName
	FROM tblEnemy AS E
	INNER JOIN tblEpisodeEnemy AS EE ON EE.EnemyId =  E.EnemyId
	WHERE EE.EpisodeId = @EpisodeId