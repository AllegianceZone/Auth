USE CSSStats
GO

/*
   Tuesday, March 30, 20104:23:41 PM
   User: 
   Server: localhost
   Database: CSS
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Game
	(
	GameId int NOT NULL IDENTITY (1, 1),
	GameName varchar(255) NOT NULL,
	CoreFile varbinary(50) NOT NULL,
	MapName varchar(50) NOT NULL,
	SquadGame bit NOT NULL,
	Conquest bit NOT NULL,
	DeathMatch bit NOT NULL,
	DeathmatchGoal int NOT NULL,
	FriendlyFire bit NOT NULL,
	RevealMap bit NOT NULL,
	AllowDevelopments bit NOT NULL,
	AllowShipyards bit NOT NULL,
	AllowDefections bit NOT NULL,
	InvulnerableStations bit NOT NULL,
	StatsCount bit NOT NULL,
	MaxImbalance int NOT NULL,
	StartingMoney float(53) NOT NULL,
	TotalMoney float(53) NOT NULL,
	Resources int NOT NULL,
	StartTime datetime NOT NULL,
	EndTime datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Game ADD CONSTRAINT
	PK_Game PRIMARY KEY CLUSTERED 
	(
	GameId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Game SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Team
	(
	TeamId int NOT NULL IDENTITY (1, 1),
	GameId int NOT NULL,
	TeamNumber int NOT NULL,
	TeamName varchar(50) NOT NULL,
	Commander varchar(50) NOT NULL,
	Faction varchar(50) NOT NULL,
	ResearchedStarbase bit NOT NULL,
	ResearchedSupremacy bit NOT NULL,
	ResearchedTactical bit NOT NULL,
	ResearchedExpansion bit NOT NULL,
	ResearchedShipyard bit NOT NULL,
	Won bit NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Team ADD CONSTRAINT
	PK_Team PRIMARY KEY CLUSTERED 
	(
	TeamId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Team ADD CONSTRAINT
	FK_Team_Game FOREIGN KEY
	(
	GameId
	) REFERENCES dbo.Game
	(
	GameId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Team SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.TeamMember
	(
	TeamId int NOT NULL,
	Callsign varchar(50) NOT NULL,
	Duration int NOT NULL,
	JoinTime datetime NOT NULL,
	LeaveTime datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.TeamMember ADD CONSTRAINT
	FK_TeamMember_Team FOREIGN KEY
	(
	TeamId
	) REFERENCES dbo.Team
	(
	TeamId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.TeamMember SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.ChatLog
	(
	GameId int NOT NULL,
	ChatTime datetime NOT NULL,
	SpeakerName varchar(50) NOT NULL,
	TargetName varchar(50) NOT NULL,
	Text varchar(2064) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.ChatLog ADD CONSTRAINT
	FK_ChatLog_Game FOREIGN KEY
	(
	GameId
	) REFERENCES dbo.Game
	(
	GameId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ChatLog SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.GameEvent
	(
	GameId int NOT NULL,
	EventId int NOT NULL IDENTITY (1, 1),
	EventTime datetime NOT NULL,
	PerformerId int NOT NULL,
	PerformerName varchar(50) NOT NULL,
	TargetId int NOT NULL,
	TargetName varchar(50) NOT NULL,
	IndirectId int NOT NULL,
	IndirectName varchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.GameEvent ADD CONSTRAINT
	PK_GameEvent PRIMARY KEY CLUSTERED 
	(
	EventId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.GameEvent ADD CONSTRAINT
	FK_GameEvent_Game FOREIGN KEY
	(
	GameId
	) REFERENCES dbo.Game
	(
	GameId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.GameEvent SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
