USE DoctorWho;


  SELECT * FROM tblEpisodeEnemy AS EE
	INNER JOIN tblEnemy AS E ON E.EnemyId =  EE.EnemyId 


DELETE FROM tblCompanion where CompanionId NOT IN 
                        (SELECT DISTINCT EC.CompanionId 
                        FROM tblEpisodeCompanion EC)

                        
SELECT * FROM [dbo].viewEpisodes;

SELECT * FROM tblEpisode;

SELECT EC.EpisodeId, C.CompanionName  FROM tblEpisodeCompanion AS EC
	INNER JOIN tblCompanion AS C ON C.CompanionId = EC.CompanionId



  SELECT EE.EpisodeId, E.EnemyName FROM tblEpisodeEnemy AS EE
	INNER JOIN tblEnemy AS E ON E.EnemyId =  EE.EnemyId 


