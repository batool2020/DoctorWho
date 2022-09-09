CREATE VIEW [dbo].viewEpisodes
AS

	WITH cteEpisodeEnemy
 AS
 (
  SELECT EE.EpisodeId, E.EnemyName FROM tblEpisodeEnemy AS EE
	INNER JOIN tblEnemy AS E ON E.EnemyId =  EE.EnemyId 
 ), 
 cteEpisodeComanion AS (
	SELECT EC.EpisodeId, C.CompanionName  FROM tblEpisodeCompanion AS EC
	INNER JOIN tblCompanion AS C ON C.CompanionId = EC.CompanionId
	)



SELECT DISTINCT EP.EpisodeId, EP.EpisodeType, A.AuthorName, D.DoctorName, CTEC.CompanionName
	FROM tblEpisode AS EP, tblAuthor As A, tblDoctor AS d, tblCompanion AS C, tblEnemy as E, cteEpisodeComanion AS CTEC
	WHERE EP.AuthorId = A.AuthorId AND EP.DoctorId = D.DoctorId  AND EP.EpisodeId =  CTEC.EpisodeId


