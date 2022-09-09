USE DoctorWho; 

SELECT * FROM tblEpisode;
UPDATE tblEpisode 
SET Title = Title + ' _Canceled'
WHERE tblEpisode.DoctorId IS NULL;

-- Here we use IS instead of = because NULL is not a value in SQL.