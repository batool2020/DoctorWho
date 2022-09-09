USE DoctorWho;
 
GO  
CREATE PROCEDURE spSummariseEpisodes  
   
AS   
 SELECT Top 3 EP.CompanionId, COUNT(*) AS Appearance_Number, C.CompanionName
	FROM tblEpisodeCompanion AS EP, tblCompanion AS C
	WHERE EP.CompanionId = C.CompanionId
	GROUP BY EP.CompanionId,  C.CompanionName
	ORDER BY Appearance_Number DESC

  SELECT Top 3 EE.EnemyId, COUNT(EE.EnemyId) AS Appearance_Number, E.EnemyName
	FROM tblEpisodeEnemy AS EE, tblEnemy AS E
	WHERE EE.EnemyId = E.EnemyId
	GROUP BY EE.EnemyId,  E.EnemyName
	ORDER BY Appearance_Number DESC
GO

EXECUTE spSummariseEpisodes;

