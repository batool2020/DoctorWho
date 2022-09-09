USE DoctorWho; 


INSERT INTO  tblCompanion VALUES (1, 'Susan Foreman','Carole Ann'),(2,  'Ian Ches', 'William Russel'), (3, 'Polly', 'Anneke Wills'), (4, 'Jo Grant', 'Katy Manning'), (5, 'Lela', 'Loise Jameson');
INSERT INTO  tblDoctor VALUES (1, 100, 'Rose Tyler', '1980-10-22', '2005-05-19', '2005-11-20'), (2,101, 'Martha Jones', '1991-03-21', '2005-02-23', '2005-09-10'),  (3, 102, 'Rry Williams', '1985-11-15', '2007-03-26', '2008-01-20'),  (4, 103, 'River Song', '1960-05-13', '2008-09-19', '2009-10-12'),  (5, 104, 'Dan Lewis', '1982-12-22', '2010-10-20', '2011-02-16');
INSERT INTO  tblEpisodeCompanion VALUES (1,10,1),(2,10,3),(3,12,1),(4,12,5), (5,14,5);
INSERT INTO  tblAuthor VALUES (11,'David Whitaker'), (22,'Terry Nation'), (33,'Robert Holms'), (44, 'Bob Baker'), (55, 'Malcolm Hulke');
INSERT INTO  tblEpisode VALUES (10,1,2,'Drama', 'Rose', '2005-03-23', 22,1,'Good Episode'),(11,2, 12, 'Action', 'The End of The World', '2005-04-02', 11,1, 'Amazing!'), 
(12,5,5, 'Comedy', 'The  Long Game', '2002-04-20', 33,1,'Funny!'), (13,3,10,'Action', 'Love and Monsters', '2006-06-17', 22,2,'Warm'),
(14,10,7, 'Science Fiction' ,'Human Nature', '2007-05-26', 44, 3, 'Informative');
INSERT INTO  tblEpisodeEnemy VALUES (10101, 10, 101), (11202, 11, 202), (12101, 12, 101), (13404, 13, 404), (12303, 12, 303);
INSERT INTO  tblEnemy VALUES (101, 'Enemy1', 'Evil'), (202, 'Enemy2', 'Strong'), (303, 'Enemy3', 'Unfair'), (404, 'Enemy4', 'Bad Pesron');


SELECT * FROM tblEpisodeCompanion;
SELECT * FROM tblEpisodeEnemy;
SELECT * FROM tblEpisode;


INSERT INTO  tblEpisodeCompanion VALUES (6,11,1),(7,12,3),(8,11,5), (9,11,2), (10,12,4);
INSERT INTO tblCompanion VALUES (4, 'Jo Grant', 'Katy Manning'), (2,'Ian Ches', 'William Russel');

INSERT INTO  tblEpisode VALUES (15,4,6,'Comedy', 'Heaven', '2010-05-28', 11,null,'Funny!!!');


