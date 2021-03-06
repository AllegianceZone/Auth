USE CSS
GO


/*
   Tuesday, September 11, 201210:32:15 PM
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
ALTER TABLE dbo.Login
	DROP CONSTRAINT FK_Login_Identity
GO
ALTER TABLE dbo.[Identity] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Login
	DROP CONSTRAINT DF_Login_DateCreated
GO
ALTER TABLE dbo.Login
	DROP CONSTRAINT DF_Login_AllowVirtualMachineLogin
GO
CREATE TABLE dbo.Tmp_Login
	(
	Id int NOT NULL IDENTITY (1, 1),
	Username nvarchar(20) NOT NULL,
	Password nvarchar(1024) NOT NULL,
	Email nvarchar(50) NOT NULL,
	DateCreated datetime NOT NULL,
	IdentityId int NOT NULL,
	AllowVirtualMachineLogin bit NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Login SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE dbo.Tmp_Login ADD CONSTRAINT
	DF_Login_DateCreated DEFAULT (getdate()) FOR DateCreated
GO
ALTER TABLE dbo.Tmp_Login ADD CONSTRAINT
	DF_Login_AllowVirtualMachineLogin DEFAULT ((0)) FOR AllowVirtualMachineLogin
GO
SET IDENTITY_INSERT dbo.Tmp_Login ON
GO
IF EXISTS(SELECT * FROM dbo.Login)
	 EXEC('INSERT INTO dbo.Tmp_Login (Id, Username, Password, Email, DateCreated, IdentityId, AllowVirtualMachineLogin)
		SELECT Id, Username, Password, Email, DateCreated, IdentityId, AllowVirtualMachineLogin FROM dbo.Login WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Login OFF
GO
ALTER TABLE dbo.MachineRecord
	DROP CONSTRAINT FK_MachineRecord_Login
GO
ALTER TABLE dbo.PersonalMessage
	DROP CONSTRAINT FK_PersonalMessage_Login
GO
ALTER TABLE dbo.Login_Role
	DROP CONSTRAINT FK_Login_Role_Login
GO
ALTER TABLE dbo.Alias
	DROP CONSTRAINT FK_Alias_Login
GO
ALTER TABLE dbo.Session
	DROP CONSTRAINT FK_Session_Login
GO
ALTER TABLE dbo.UsedKey
	DROP CONSTRAINT FK_UsedKey_Login
GO
ALTER TABLE dbo.Ban
	DROP CONSTRAINT FK_Ban_Login
GO
ALTER TABLE dbo.Lobby_Login
	DROP CONSTRAINT FK_Lobby_Login_Login
GO
ALTER TABLE dbo.Login_UnlinkedLogin
	DROP CONSTRAINT FK_Login_UnlinkedLogin_Login
GO
ALTER TABLE dbo.Login_UnlinkedLogin
	DROP CONSTRAINT FK_Login_UnlinkedLogin_Login1
GO
ALTER TABLE dbo.Ban
	DROP CONSTRAINT FK_Ban_Login1
GO
ALTER TABLE dbo.PollVote
	DROP CONSTRAINT FK_PollVote_Login
GO
DROP TABLE dbo.Login
GO
EXECUTE sp_rename N'dbo.Tmp_Login', N'Login', 'OBJECT' 
GO
ALTER TABLE dbo.Login ADD CONSTRAINT
	PK_Login PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX IX_Login_UniqueUsername ON dbo.Login
	(
	Username
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE dbo.Login ADD CONSTRAINT
	FK_Login_Identity FOREIGN KEY
	(
	IdentityId
	) REFERENCES dbo.[Identity]
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.PollVote ADD CONSTRAINT
	FK_PollVote_Login FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.PollVote SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Login_UnlinkedLogin ADD CONSTRAINT
	FK_Login_UnlinkedLogin_Login FOREIGN KEY
	(
	LoginId1
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Login_UnlinkedLogin ADD CONSTRAINT
	FK_Login_UnlinkedLogin_Login1 FOREIGN KEY
	(
	LoginId2
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Login_UnlinkedLogin SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Lobby_Login ADD CONSTRAINT
	FK_Lobby_Login_Login FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Lobby_Login SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Ban ADD CONSTRAINT
	FK_Ban_Login FOREIGN KEY
	(
	BannedByLoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Ban ADD CONSTRAINT
	FK_Ban_Login1 FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Ban SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.UsedKey ADD CONSTRAINT
	FK_UsedKey_Login FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.UsedKey SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Session ADD CONSTRAINT
	FK_Session_Login FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Session SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Alias ADD CONSTRAINT
	FK_Alias_Login FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Alias SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Login_Role ADD CONSTRAINT
	FK_Login_Role_Login FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Login_Role SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.PersonalMessage ADD CONSTRAINT
	FK_PersonalMessage_Login FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.PersonalMessage SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.MachineRecord ADD CONSTRAINT
	FK_MachineRecord_Login FOREIGN KEY
	(
	LoginId
	) REFERENCES dbo.Login
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.MachineRecord SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
