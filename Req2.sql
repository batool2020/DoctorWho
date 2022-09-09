CREATE DATABASE DoctorWho;
USE DoctorWho;


CREATE TABLE tblAuthor (
    AuthorId int NOT NULL,
    AuthorName varchar(200),
    PRIMARY KEY (AuthorId)

);

CREATE TABLE tblDoctor (
    DoctorId int NOT NULL,
    DoctorNumber int,
    DoctorName varchar(200),
    BirthData date,
    FirstEpisodeDate date,
    LastEpisodeDate date,
    PRIMARY KEY (DoctorId)

);


CREATE TABLE tblEpisode (
    EpisodeId int NOT NULL,
    SeriesNumber int,
    EpisodeNumber int,
    EpisodeType varchar(200),
    Title varchar(200),
    EpisodeDate varchar(255),
    AuthorId int,
    DoctorId int,
    Notes varchar(255),
    PRIMARY KEY (EpisodeId),
    FOREIGN KEY (AuthorId) REFERENCES tblAuthor(AuthorId),
    FOREIGN KEY (DoctorId) REFERENCES tblDoctor(DoctorId)

);


CREATE TABLE tblCompanion(
    CompanionId int NOT NULL, 
    CompanionName varchar(200),
    WhoPlayed varchar(200),
    PRIMARY KEY (CompanionId)

);

CREATE TABLE tblEpisodeCompanion(
    EpisodeCompanionId int NOT NULL, 
    EpisodeId int,
    CompanionId int,
    PRIMARY KEY (EpisodeCompanionId),
    FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId),
    FOREIGN KEY (CompanionId) REFERENCES tblCompanion(CompanionId)
);

CREATE TABLE tblEnemy(
    EnemyId int NOT NULL, 
    EnemyName varchar(200),
    Description varchar(200),
    PRIMARY KEY (EnemyId)

);


CREATE TABLE tblEpisodeEnemy(
    EpisodeEnemyId int NOT NULL, 
    EpisodeId int,
    EnemyId int,
    PRIMARY KEY (EpisodeEnemyId),
    FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId),  
    FOREIGN KEY (EnemyId) REFERENCES tblEnemy(EnemyId)

);

