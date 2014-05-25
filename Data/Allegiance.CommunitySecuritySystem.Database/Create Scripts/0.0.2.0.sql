----------------------------------------------------------------------------------------
--
--	BT: Generated 2/4/2010
--	Includes all changes thru 0.0.1.016.
--	Target: SQLServer 2005.
----------------------------------------------------------------------------------------


/****** Object:  ForeignKey [FK_ActiveKey_TransformMethod]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActiveKey_TransformMethod]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActiveKey]'))
ALTER TABLE [dbo].[ActiveKey] DROP CONSTRAINT [FK_ActiveKey_TransformMethod]
GO
/****** Object:  ForeignKey [FK_Alias_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alias_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
ALTER TABLE [dbo].[Alias] DROP CONSTRAINT [FK_Alias_Login]
GO
/****** Object:  ForeignKey [FK_AutoUpdateFile_Lobby_AutoUpdateFile]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AutoUpdateFile_Lobby_AutoUpdateFile]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
ALTER TABLE [dbo].[AutoUpdateFile_Lobby] DROP CONSTRAINT [FK_AutoUpdateFile_Lobby_AutoUpdateFile]
GO
/****** Object:  ForeignKey [FK_AutoUpdateFile_Lobby_Lobby]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AutoUpdateFile_Lobby_Lobby]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
ALTER TABLE [dbo].[AutoUpdateFile_Lobby] DROP CONSTRAINT [FK_AutoUpdateFile_Lobby_Lobby]
GO
/****** Object:  ForeignKey [FK_Ban_Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban] DROP CONSTRAINT [FK_Ban_Identity]
GO
/****** Object:  ForeignKey [FK_Ban_InfractionType]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_InfractionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban] DROP CONSTRAINT [FK_Ban_InfractionType]
GO
/****** Object:  ForeignKey [FK_Ban_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban] DROP CONSTRAINT [FK_Ban_Login]
GO
/****** Object:  ForeignKey [FK_Group_Alias_GroupRole_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole] DROP CONSTRAINT [FK_Group_Alias_GroupRole_Alias]
GO
/****** Object:  ForeignKey [FK_Group_Alias_GroupRole_Group]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_Group]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole] DROP CONSTRAINT [FK_Group_Alias_GroupRole_Group]
GO
/****** Object:  ForeignKey [FK_Group_Alias_GroupRole_GroupRole]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_GroupRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole] DROP CONSTRAINT [FK_Group_Alias_GroupRole_GroupRole]
GO
/****** Object:  ForeignKey [FK_GroupMessage_Group]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Group]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage]'))
ALTER TABLE [dbo].[GroupMessage] DROP CONSTRAINT [FK_GroupMessage_Group]
GO
/****** Object:  ForeignKey [FK_GroupMessage_Alias_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Alias_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]'))
ALTER TABLE [dbo].[GroupMessage_Alias] DROP CONSTRAINT [FK_GroupMessage_Alias_Alias]
GO
/****** Object:  ForeignKey [FK_GroupMessage_Alias_GroupMessage]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Alias_GroupMessage]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]'))
ALTER TABLE [dbo].[GroupMessage_Alias] DROP CONSTRAINT [FK_GroupMessage_Alias_GroupMessage]
GO
/****** Object:  ForeignKey [FK_GroupRequest_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupRequest_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupRequest]'))
ALTER TABLE [dbo].[GroupRequest] DROP CONSTRAINT [FK_GroupRequest_Alias]
GO
/****** Object:  ForeignKey [FK_GroupRequest_GroupRequestType]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupRequest_GroupRequestType]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupRequest]'))
ALTER TABLE [dbo].[GroupRequest] DROP CONSTRAINT [FK_GroupRequest_GroupRequestType]
GO
/****** Object:  ForeignKey [FK_Lobby_Login_Lobby]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lobby_Login_Lobby]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby_Login]'))
ALTER TABLE [dbo].[Lobby_Login] DROP CONSTRAINT [FK_Lobby_Login_Lobby]
GO
/****** Object:  ForeignKey [FK_Lobby_Login_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lobby_Login_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby_Login]'))
ALTER TABLE [dbo].[Lobby_Login] DROP CONSTRAINT [FK_Lobby_Login_Login]
GO
/****** Object:  ForeignKey [FK_Login_Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
ALTER TABLE [dbo].[Login] DROP CONSTRAINT [FK_Login_Identity]
GO
/****** Object:  ForeignKey [FK_Login_Role_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Role_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login_Role]'))
ALTER TABLE [dbo].[Login_Role] DROP CONSTRAINT [FK_Login_Role_Login]
GO
/****** Object:  ForeignKey [FK_Login_Role_Role]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Role_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login_Role]'))
ALTER TABLE [dbo].[Login_Role] DROP CONSTRAINT [FK_Login_Role_Role]
GO
/****** Object:  ForeignKey [FK_MachineRecord_Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord] DROP CONSTRAINT [FK_MachineRecord_Identity]
GO
/****** Object:  ForeignKey [FK_MachineRecord_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord] DROP CONSTRAINT [FK_MachineRecord_Login]
GO
/****** Object:  ForeignKey [FK_MachineRecord_MachineRecordType]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_MachineRecordType]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord] DROP CONSTRAINT [FK_MachineRecord_MachineRecordType]
GO
/****** Object:  ForeignKey [FK_PersonalMessage_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonalMessage_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
ALTER TABLE [dbo].[PersonalMessage] DROP CONSTRAINT [FK_PersonalMessage_Alias]
GO
/****** Object:  ForeignKey [FK_PersonalMessage_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonalMessage_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
ALTER TABLE [dbo].[PersonalMessage] DROP CONSTRAINT [FK_PersonalMessage_Login]
GO
/****** Object:  ForeignKey [FK_PollOption_Poll]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollOption_Poll]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollOption]'))
ALTER TABLE [dbo].[PollOption] DROP CONSTRAINT [FK_PollOption_Poll]
GO
/****** Object:  ForeignKey [FK_PollVote_Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollVote_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollVote]'))
ALTER TABLE [dbo].[PollVote] DROP CONSTRAINT [FK_PollVote_Identity]
GO
/****** Object:  ForeignKey [FK_PollVote_PollOption]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollVote_PollOption]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollVote]'))
ALTER TABLE [dbo].[PollVote] DROP CONSTRAINT [FK_PollVote_PollOption]
GO
/****** Object:  ForeignKey [FK_Session_ActiveKey]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_ActiveKey]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [FK_Session_ActiveKey]
GO
/****** Object:  ForeignKey [FK_Session_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [FK_Session_Login]
GO
/****** Object:  ForeignKey [FK_Session_SessionStatus]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_SessionStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [FK_Session_SessionStatus]
GO
/****** Object:  ForeignKey [FK_UsedKey_ActiveKey]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsedKey_ActiveKey]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsedKey]'))
ALTER TABLE [dbo].[UsedKey] DROP CONSTRAINT [FK_UsedKey_ActiveKey]
GO
/****** Object:  ForeignKey [FK_UsedKey_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsedKey_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsedKey]'))
ALTER TABLE [dbo].[UsedKey] DROP CONSTRAINT [FK_UsedKey_Login]
GO
/****** Object:  UserDefinedFunction [dbo].[AvailableKey]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AvailableKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[AvailableKey]
GO
/****** Object:  Table [dbo].[GroupMessage_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]') AND type in (N'U'))
DROP TABLE [dbo].[GroupMessage_Alias]
GO
/****** Object:  Table [dbo].[GroupRequest]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupRequest]') AND type in (N'U'))
DROP TABLE [dbo].[GroupRequest]
GO
/****** Object:  View [dbo].[DuplicateVote]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[DuplicateVote]'))
DROP VIEW [dbo].[DuplicateVote]
GO
/****** Object:  Table [dbo].[Group_Alias_GroupRole]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]') AND type in (N'U'))
DROP TABLE [dbo].[Group_Alias_GroupRole]
GO
/****** Object:  Table [dbo].[PersonalMessage]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonalMessage]') AND type in (N'U'))
DROP TABLE [dbo].[PersonalMessage]
GO
/****** Object:  Table [dbo].[Login_Role]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login_Role]') AND type in (N'U'))
DROP TABLE [dbo].[Login_Role]
GO
/****** Object:  Table [dbo].[MachineRecord]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MachineRecord]') AND type in (N'U'))
DROP TABLE [dbo].[MachineRecord]
GO
/****** Object:  Table [dbo].[Lobby_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lobby_Login]') AND type in (N'U'))
DROP TABLE [dbo].[Lobby_Login]
GO
/****** Object:  Table [dbo].[PollVote]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PollVote]') AND type in (N'U'))
DROP TABLE [dbo].[PollVote]
GO
/****** Object:  UserDefinedFunction [dbo].[FindAutoUpdateFiles]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FindAutoUpdateFiles]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[FindAutoUpdateFiles]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ban]') AND type in (N'U'))
DROP TABLE [dbo].[Ban]
GO
/****** Object:  Table [dbo].[Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alias]') AND type in (N'U'))
DROP TABLE [dbo].[Alias]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Session]') AND type in (N'U'))
DROP TABLE [dbo].[Session]
GO
/****** Object:  Table [dbo].[UsedKey]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsedKey]') AND type in (N'U'))
DROP TABLE [dbo].[UsedKey]
GO
/****** Object:  Table [dbo].[AutoUpdateFile_Lobby]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]') AND type in (N'U'))
DROP TABLE [dbo].[AutoUpdateFile_Lobby]
GO
/****** Object:  Table [dbo].[ActiveKey]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActiveKey]') AND type in (N'U'))
DROP TABLE [dbo].[ActiveKey]
GO
/****** Object:  Table [dbo].[GroupMessage]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupMessage]') AND type in (N'U'))
DROP TABLE [dbo].[GroupMessage]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login]') AND type in (N'U'))
DROP TABLE [dbo].[Login]
GO
/****** Object:  Table [dbo].[PollOption]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PollOption]') AND type in (N'U'))
DROP TABLE [dbo].[PollOption]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
DROP TABLE [dbo].[Log]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[MachineRecordType]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MachineRecordType]') AND type in (N'U'))
DROP TABLE [dbo].[MachineRecordType]
GO
/****** Object:  Table [dbo].[Poll]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Poll]') AND type in (N'U'))
DROP TABLE [dbo].[Poll]
GO
/****** Object:  Table [dbo].[Error]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Error]') AND type in (N'U'))
DROP TABLE [dbo].[Error]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group]') AND type in (N'U'))
DROP TABLE [dbo].[Group]
GO
/****** Object:  Table [dbo].[AutoUpdateFile]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile]') AND type in (N'U'))
DROP TABLE [dbo].[AutoUpdateFile]
GO
/****** Object:  Table [dbo].[GroupRequestType]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupRequestType]') AND type in (N'U'))
DROP TABLE [dbo].[GroupRequestType]
GO
/****** Object:  Table [dbo].[GroupRole]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupRole]') AND type in (N'U'))
DROP TABLE [dbo].[GroupRole]
GO
/****** Object:  Table [dbo].[Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Identity]') AND type in (N'U'))
DROP TABLE [dbo].[Identity]
GO
/****** Object:  Table [dbo].[InfractionType]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InfractionType]') AND type in (N'U'))
DROP TABLE [dbo].[InfractionType]
GO
/****** Object:  Table [dbo].[Lobby]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lobby]') AND type in (N'U'))
DROP TABLE [dbo].[Lobby]
GO
/****** Object:  Table [dbo].[SessionStatus]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionStatus]') AND type in (N'U'))
DROP TABLE [dbo].[SessionStatus]
GO
/****** Object:  Table [dbo].[TransformMethod]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransformMethod]') AND type in (N'U'))
DROP TABLE [dbo].[TransformMethod]
GO
/****** Object:  Default [DF_ActiveKey_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ActiveKey_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActiveKey]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ActiveKey_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ActiveKey] DROP CONSTRAINT [DF_ActiveKey_DateCreated]
END


End
GO
/****** Object:  Default [DF_Alias_IsDefault]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Alias_IsDefault]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Alias_IsDefault]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Alias] DROP CONSTRAINT [DF_Alias_IsDefault]
END


End
GO
/****** Object:  Default [DF_Alias_IsActive]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Alias_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Alias_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Alias] DROP CONSTRAINT [DF_Alias_IsActive]
END


End
GO
/****** Object:  Default [DF_Alias_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Alias_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Alias_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Alias] DROP CONSTRAINT [DF_Alias_DateCreated]
END


End
GO
/****** Object:  Default [DF_AutoUpdateFile_IsProtected]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AutoUpdateFile_IsProtected]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AutoUpdateFile_IsProtected]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AutoUpdateFile] DROP CONSTRAINT [DF_AutoUpdateFile_IsProtected]
END


End
GO
/****** Object:  Default [DF_AutoUpdateFile_Lobby_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AutoUpdateFile_Lobby_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AutoUpdateFile_Lobby_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AutoUpdateFile_Lobby] DROP CONSTRAINT [DF_AutoUpdateFile_Lobby_DateCreated]
END


End
GO
/****** Object:  Default [DF_AutoUpdateFile_Lobby_DateModified]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AutoUpdateFile_Lobby_DateModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AutoUpdateFile_Lobby_DateModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AutoUpdateFile_Lobby] DROP CONSTRAINT [DF_AutoUpdateFile_Lobby_DateModified]
END


End
GO
/****** Object:  Default [DF_Ban_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ban_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ban_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ban] DROP CONSTRAINT [DF_Ban_DateCreated]
END


End
GO
/****** Object:  Default [DF_Ban_InEffect]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ban_InEffect]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ban_InEffect]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ban] DROP CONSTRAINT [DF_Ban_InEffect]
END


End
GO
/****** Object:  Default [DF_Ban_InfractionCode]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ban_InfractionCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ban_InfractionCode]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ban] DROP CONSTRAINT [DF_Ban_InfractionCode]
END


End
GO
/****** Object:  Default [DF_Error_DateOccurred]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Error_DateOccurred]') AND parent_object_id = OBJECT_ID(N'[dbo].[Error]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Error_DateOccurred]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Error] DROP CONSTRAINT [DF_Error_DateOccurred]
END


End
GO
/****** Object:  Default [DF_Group_IsSquad]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Group_IsSquad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Group_IsSquad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Group] DROP CONSTRAINT [DF_Group_IsSquad]
END


End
GO
/****** Object:  Default [DF_Group_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Group_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Group_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Group] DROP CONSTRAINT [DF_Group_DateCreated]
END


End
GO
/****** Object:  Default [DF_GroupMessage_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GroupMessage_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GroupMessage_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroupMessage] DROP CONSTRAINT [DF_GroupMessage_DateCreated]
END


End
GO
/****** Object:  Default [DF_GroupMessage_DateToSend]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GroupMessage_DateToSend]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GroupMessage_DateToSend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroupMessage] DROP CONSTRAINT [DF_GroupMessage_DateToSend]
END


End
GO
/****** Object:  Default [DF_GroupMessage_Alias_DateViewed]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GroupMessage_Alias_DateViewed]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GroupMessage_Alias_DateViewed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroupMessage_Alias] DROP CONSTRAINT [DF_GroupMessage_Alias_DateViewed]
END


End
GO
/****** Object:  Default [DF_GroupRequest_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GroupRequest_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupRequest]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GroupRequest_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroupRequest] DROP CONSTRAINT [DF_GroupRequest_DateCreated]
END


End
GO
/****** Object:  Default [DF_Identity_DateLastLogin]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Identity_DateLastLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Identity]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Identity_DateLastLogin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Identity] DROP CONSTRAINT [DF_Identity_DateLastLogin]
END


End
GO
/****** Object:  Default [DF_Lobby_IsRestrictive]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Lobby_IsRestrictive]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Lobby_IsRestrictive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Lobby] DROP CONSTRAINT [DF_Lobby_IsRestrictive]
END


End
GO
/****** Object:  Default [DF_Lobby_IsEnabled]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Lobby_IsEnabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Lobby_IsEnabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Lobby] DROP CONSTRAINT [DF_Lobby_IsEnabled]
END


End
GO
/****** Object:  Default [DF_Log_DateOccurred]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Log_DateOccurred]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Log_DateOccurred]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Log] DROP CONSTRAINT [DF_Log_DateOccurred]
END


End
GO
/****** Object:  Default [DF_Login_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Login_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Login_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Login] DROP CONSTRAINT [DF_Login_DateCreated]
END


End
GO
/****** Object:  Default [DF_PersonalMessage_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PersonalMessage_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PersonalMessage_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PersonalMessage] DROP CONSTRAINT [DF_PersonalMessage_DateCreated]
END


End
GO
/****** Object:  Default [DF_PersonalMessage_DateToSend]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PersonalMessage_DateToSend]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PersonalMessage_DateToSend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PersonalMessage] DROP CONSTRAINT [DF_PersonalMessage_DateToSend]
END


End
GO
/****** Object:  Default [DF_Poll_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Poll_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Poll]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Poll_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Poll] DROP CONSTRAINT [DF_Poll_DateCreated]
END


End
GO
/****** Object:  Default [DF_Session_Id]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Session_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Session_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [DF_Session_Id]
END


End
GO
/****** Object:  Default [DF_Session_DateLastCheckIn]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Session_DateLastCheckIn]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Session_DateLastCheckIn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [DF_Session_DateLastCheckIn]
END


End
GO
/****** Object:  Default [DF_Session_IPAddress]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Session_IPAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Session_IPAddress]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [DF_Session_IPAddress]
END


End
GO
/****** Object:  Default [DF_UsedKey_DateUsed]    Script Date: 02/04/2010 08:38:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_UsedKey_DateUsed]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsedKey]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UsedKey_DateUsed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UsedKey] DROP CONSTRAINT [DF_UsedKey_DateUsed]
END


End
GO
/****** Object:  Role [css_server]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'css_server')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'css_server' AND type = 'R')
CREATE ROLE [css_server]

END
GO
/****** Object:  Table [dbo].[TransformMethod]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransformMethod]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TransformMethod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_TransformMethod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TransformMethod] ON
INSERT [dbo].[TransformMethod] ([Id], [Text]) VALUES (1, N'int len = rand.Next(189, 350); for (int i = rand.Next(15, 35); i < len; i += 2) sb.Append((char)rand.Next(48, 122));')
SET IDENTITY_INSERT [dbo].[TransformMethod] OFF
/****** Object:  Table [dbo].[SessionStatus]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SessionStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SessionStatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_SessionStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[SessionStatus] ([Id], [Name]) VALUES (1, N'PendingVerification')
INSERT [dbo].[SessionStatus] ([Id], [Name]) VALUES (2, N'Active')
INSERT [dbo].[SessionStatus] ([Id], [Name]) VALUES (3, N'Closed')
/****** Object:  Table [dbo].[Lobby]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lobby]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Lobby](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Host] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BasePath] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsRestrictive] [bit] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_Lobby] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Lobby] ON
INSERT [dbo].[Lobby] ([Id], [Name], [Host], [BasePath], [IsRestrictive], [IsEnabled]) VALUES (1, N'Production', N'localhost', N'.\', 0, 1)
INSERT [dbo].[Lobby] ([Id], [Name], [Host], [BasePath], [IsRestrictive], [IsEnabled]) VALUES (2, N'Beta', N'localhost', N'.\Dev', 0, 1)
SET IDENTITY_INSERT [dbo].[Lobby] OFF
/****** Object:  Table [dbo].[InfractionType]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InfractionType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InfractionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FirstOffense] [int] NOT NULL,
	[Class] [tinyint] NOT NULL,
 CONSTRAINT [PK_InfractionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Identity]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Identity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Identity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateLastLogin] [datetime] NOT NULL,
 CONSTRAINT [PK_Identity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[GroupRole]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GroupRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Token] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_GroupRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[GroupRequestType]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupRequestType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GroupRequestType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_GroupRequestType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[AutoUpdateFile]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AutoUpdateFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Filename] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsProtected] [bit] NOT NULL,
 CONSTRAINT [PK_AutoUpdateFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Group]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tag] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsSquad] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Error]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Error]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Error](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ExceptionType] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Message] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StackTrace] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[InnerMessage] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateOccurred] [datetime] NOT NULL,
 CONSTRAINT [PK_Error] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[Poll]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Poll]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Poll](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateExpires] [datetime] NOT NULL,
 CONSTRAINT [PK_Poll] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[MachineRecordType]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MachineRecordType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MachineRecordType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_MachineRecordType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[MachineRecordType] ([Id], [Name]) VALUES (1, N'Network')
INSERT [dbo].[MachineRecordType] ([Id], [Name]) VALUES (2, N'HardDisk')
INSERT [dbo].[MachineRecordType] ([Id], [Name]) VALUES (3, N'EDID')
INSERT [dbo].[MachineRecordType] ([Id], [Name]) VALUES (4, N'Serial')
INSERT [dbo].[MachineRecordType] ([Id], [Name]) VALUES (5, N'Misc')
/****** Object:  Table [dbo].[Role]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Log]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Message] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DateOccurred] [datetime] NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[PollOption]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PollOption]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PollOption](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PollId] [int] NOT NULL,
	[Option] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_PollOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Login]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Password] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[IdentityId] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[GroupMessage]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupMessage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GroupMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Message] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GroupId] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateToSend] [datetime] NOT NULL,
	[DateExpires] [datetime] NULL,
 CONSTRAINT [PK_GroupMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ActiveKey]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActiveKey]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ActiveKey](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Token] [nvarchar](95) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Filename] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[RSACspBlob] [image] NOT NULL,
	[TransformMethodId] [int] NOT NULL,
 CONSTRAINT [PK_ActiveKey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[AutoUpdateFile_Lobby]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AutoUpdateFile_Lobby](
	[AutoUpdateFileId] [int] NOT NULL,
	[LobbyId] [int] NOT NULL,
	[ValidChecksum] [nchar](28) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CurrentVersion] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_AutoUpdateFile_Lobby] PRIMARY KEY NONCLUSTERED 
(
	[AutoUpdateFileId] ASC,
	[LobbyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]') AND name = N'IX_AutoUpdateFile_Lobby')
CREATE CLUSTERED INDEX [IX_AutoUpdateFile_Lobby] ON [dbo].[AutoUpdateFile_Lobby] 
(
	[AutoUpdateFileId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]') AND name = N'IX_AutoUpdateFile_Lobby_1')
CREATE NONCLUSTERED INDEX [IX_AutoUpdateFile_Lobby_1] ON [dbo].[AutoUpdateFile_Lobby] 
(
	[LobbyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  Table [dbo].[UsedKey]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsedKey]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsedKey](
	[LoginId] [int] NOT NULL,
	[ActiveKeyId] [int] NOT NULL,
	[DateUsed] [datetime] NOT NULL,
 CONSTRAINT [PK_UsedKey] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC,
	[ActiveKeyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[Session]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Session]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Session](
	[Id] [uniqueidentifier] NOT NULL,
	[LoginId] [int] NOT NULL,
	[ActiveKeyId] [int] NOT NULL,
	[SessionStatusId] [int] NOT NULL,
	[DateLastCheckIn] [datetime] NOT NULL,
	[IPAddress] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[Alias]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Alias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginId] [int] NOT NULL,
	[Callsign] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Alias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[Ban]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ban]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ban](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentityId] [int] NOT NULL,
	[BannedById] [int] NOT NULL,
	[Reason] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateExpires] [datetime] NULL,
	[InEffect] [bit] NOT NULL,
	[InfractionTypeId] [int] NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  UserDefinedFunction [dbo].[FindAutoUpdateFiles]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FindAutoUpdateFiles]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[FindAutoUpdateFiles] 
(	
	@LobbyId int
)
RETURNS TABLE 
AS
RETURN 
(

	SELECT AL.*, AO.Filename, AO.IsProtected
	FROM AutoUpdateFile AO
		INNER JOIN AutoUpdateFile_Lobby AL ON AL.AutoUpdateFileId = AO.Id
	INNER JOIN 
	(
		SELECT MAX(AL.LobbyId) as LobbyId, AF.[Filename]
		FROM AutoUpdateFile AF
			LEFT JOIN AutoUpdateFile_Lobby AL ON AL.AutoUpdateFileId = AF.Id
		WHERE LobbyId IS NULL OR LobbyId = @LobbyId
		GROUP BY [Filename]
	) AD ON AD.[Filename] = AO.[Filename] AND (AL.LobbyId = AD.Lobbyid OR AD.Lobbyid IS NULL)

)
' 
END
GO
/****** Object:  Table [dbo].[PollVote]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PollVote]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PollVote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PollOptionId] [int] NOT NULL,
	[IdentityId] [int] NOT NULL,
 CONSTRAINT [PK_PollVote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Lobby_Login]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lobby_Login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Lobby_Login](
	[LobbyId] [int] NOT NULL,
	[LoginId] [int] NOT NULL,
 CONSTRAINT [PK_Lobby_Login] PRIMARY KEY CLUSTERED 
(
	[LobbyId] ASC,
	[LoginId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[MachineRecord]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MachineRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MachineRecord](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdentityId] [int] NOT NULL,
	[RecordTypeId] [int] NOT NULL,
	[Identifier] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoginId] [int] NOT NULL,
 CONSTRAINT [PK_MachineRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[Login_Role]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login_Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Login_Role](
	[LoginId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Login_Role] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[PersonalMessage]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonalMessage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PersonalMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Message] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateToSend] [datetime] NOT NULL,
	[DateExpires] [datetime] NULL,
	[LoginId] [int] NOT NULL,
	[DateViewed] [datetime] NULL,
	[SenderAliasId] [int] NOT NULL,
 CONSTRAINT [PK_PersonalMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Group_Alias_GroupRole]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Group_Alias_GroupRole](
	[GroupId] [int] NOT NULL,
	[AliasId] [int] NOT NULL,
	[GroupRoleId] [int] NOT NULL,
 CONSTRAINT [PK_Group_Alias_GroupRole] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[AliasId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  View [dbo].[DuplicateVote]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[DuplicateVote]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[DuplicateVote]
AS
SELECT P.Id as PollId, PV.Id as PollVoteId, PV.IdentityId
FROM PollVote PV
	INNER JOIN PollOption PO ON PV.PollOptionId = PO.Id
	INNER JOIN Poll P ON PO.PollId = P.Id


'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'DuplicateVote', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PV"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PO"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 110
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DuplicateVote'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'DuplicateVote', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DuplicateVote'
GO
/****** Object:  Table [dbo].[GroupRequest]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupRequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GroupRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RequestTypeId] [int] NOT NULL,
	[AliasId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_GroupRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[GroupMessage_Alias]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GroupMessage_Alias](
	[GroupMessageId] [int] NOT NULL,
	[AliasId] [int] NOT NULL,
	[DateViewed] [datetime] NULL,
 CONSTRAINT [PK_GroupMessage_Alias] PRIMARY KEY CLUSTERED 
(
	[GroupMessageId] ASC,
	[AliasId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  UserDefinedFunction [dbo].[AvailableKey]    Script Date: 02/04/2010 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AvailableKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
CREATE FUNCTION [dbo].[AvailableKey]
(	
	@LoginId int
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT K.Id, K.Token, K.[Filename], K.DateCreated, K.TransformMethodId
	FROM ActiveKey K
		LEFT OUTER JOIN UsedKey UK ON K.Id = UK.ActiveKeyId AND UK.LoginId = @LoginId
	GROUP BY K.Id, K.Token, K.[Filename], K.DateCreated, K.TransformMethodId
	HAVING COUNT(UK.ActiveKeyId) = 0
)
' 
END
GO
/****** Object:  Default [DF_ActiveKey_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ActiveKey_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActiveKey]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ActiveKey_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ActiveKey] ADD  CONSTRAINT [DF_ActiveKey_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_Alias_IsDefault]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Alias_IsDefault]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Alias_IsDefault]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Alias] ADD  CONSTRAINT [DF_Alias_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
END


End
GO
/****** Object:  Default [DF_Alias_IsActive]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Alias_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Alias_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Alias] ADD  CONSTRAINT [DF_Alias_IsActive]  DEFAULT ((1)) FOR [IsActive]
END


End
GO
/****** Object:  Default [DF_Alias_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Alias_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Alias_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Alias] ADD  CONSTRAINT [DF_Alias_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_AutoUpdateFile_IsProtected]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AutoUpdateFile_IsProtected]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AutoUpdateFile_IsProtected]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AutoUpdateFile] ADD  CONSTRAINT [DF_AutoUpdateFile_IsProtected]  DEFAULT ((0)) FOR [IsProtected]
END


End
GO
/****** Object:  Default [DF_AutoUpdateFile_Lobby_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AutoUpdateFile_Lobby_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AutoUpdateFile_Lobby_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AutoUpdateFile_Lobby] ADD  CONSTRAINT [DF_AutoUpdateFile_Lobby_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_AutoUpdateFile_Lobby_DateModified]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AutoUpdateFile_Lobby_DateModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AutoUpdateFile_Lobby_DateModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AutoUpdateFile_Lobby] ADD  CONSTRAINT [DF_AutoUpdateFile_Lobby_DateModified]  DEFAULT (getdate()) FOR [DateModified]
END


End
GO
/****** Object:  Default [DF_Ban_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ban_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ban_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ban] ADD  CONSTRAINT [DF_Ban_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_Ban_InEffect]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ban_InEffect]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ban_InEffect]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ban] ADD  CONSTRAINT [DF_Ban_InEffect]  DEFAULT ((1)) FOR [InEffect]
END


End
GO
/****** Object:  Default [DF_Ban_InfractionCode]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ban_InfractionCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ban_InfractionCode]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ban] ADD  CONSTRAINT [DF_Ban_InfractionCode]  DEFAULT ((0)) FOR [InfractionTypeId]
END


End
GO
/****** Object:  Default [DF_Error_DateOccurred]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Error_DateOccurred]') AND parent_object_id = OBJECT_ID(N'[dbo].[Error]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Error_DateOccurred]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Error] ADD  CONSTRAINT [DF_Error_DateOccurred]  DEFAULT (getdate()) FOR [DateOccurred]
END


End
GO
/****** Object:  Default [DF_Group_IsSquad]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Group_IsSquad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Group_IsSquad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_IsSquad]  DEFAULT ((0)) FOR [IsSquad]
END


End
GO
/****** Object:  Default [DF_Group_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Group_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Group_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_GroupMessage_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GroupMessage_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GroupMessage_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroupMessage] ADD  CONSTRAINT [DF_GroupMessage_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_GroupMessage_DateToSend]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GroupMessage_DateToSend]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GroupMessage_DateToSend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroupMessage] ADD  CONSTRAINT [DF_GroupMessage_DateToSend]  DEFAULT (getdate()) FOR [DateToSend]
END


End
GO
/****** Object:  Default [DF_GroupMessage_Alias_DateViewed]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GroupMessage_Alias_DateViewed]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GroupMessage_Alias_DateViewed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroupMessage_Alias] ADD  CONSTRAINT [DF_GroupMessage_Alias_DateViewed]  DEFAULT (getdate()) FOR [DateViewed]
END


End
GO
/****** Object:  Default [DF_GroupRequest_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GroupRequest_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupRequest]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GroupRequest_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroupRequest] ADD  CONSTRAINT [DF_GroupRequest_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_Identity_DateLastLogin]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Identity_DateLastLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Identity]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Identity_DateLastLogin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Identity] ADD  CONSTRAINT [DF_Identity_DateLastLogin]  DEFAULT (getdate()) FOR [DateLastLogin]
END


End
GO
/****** Object:  Default [DF_Lobby_IsRestrictive]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Lobby_IsRestrictive]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Lobby_IsRestrictive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Lobby] ADD  CONSTRAINT [DF_Lobby_IsRestrictive]  DEFAULT ((0)) FOR [IsRestrictive]
END


End
GO
/****** Object:  Default [DF_Lobby_IsEnabled]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Lobby_IsEnabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Lobby_IsEnabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Lobby] ADD  CONSTRAINT [DF_Lobby_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
END


End
GO
/****** Object:  Default [DF_Log_DateOccurred]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Log_DateOccurred]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Log_DateOccurred]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Log] ADD  CONSTRAINT [DF_Log_DateOccurred]  DEFAULT (getdate()) FOR [DateOccurred]
END


End
GO
/****** Object:  Default [DF_Login_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Login_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Login_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Login] ADD  CONSTRAINT [DF_Login_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_PersonalMessage_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PersonalMessage_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PersonalMessage_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PersonalMessage] ADD  CONSTRAINT [DF_PersonalMessage_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_PersonalMessage_DateToSend]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PersonalMessage_DateToSend]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PersonalMessage_DateToSend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PersonalMessage] ADD  CONSTRAINT [DF_PersonalMessage_DateToSend]  DEFAULT (getdate()) FOR [DateToSend]
END


End
GO
/****** Object:  Default [DF_Poll_DateCreated]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Poll_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[Poll]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Poll_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Poll] ADD  CONSTRAINT [DF_Poll_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  Default [DF_Session_Id]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Session_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Session_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Session] ADD  CONSTRAINT [DF_Session_Id]  DEFAULT (newid()) FOR [Id]
END


End
GO
/****** Object:  Default [DF_Session_DateLastCheckIn]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Session_DateLastCheckIn]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Session_DateLastCheckIn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Session] ADD  CONSTRAINT [DF_Session_DateLastCheckIn]  DEFAULT (getdate()) FOR [DateLastCheckIn]
END


End
GO
/****** Object:  Default [DF_Session_IPAddress]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Session_IPAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Session_IPAddress]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Session] ADD  CONSTRAINT [DF_Session_IPAddress]  DEFAULT ('') FOR [IPAddress]
END


End
GO
/****** Object:  Default [DF_UsedKey_DateUsed]    Script Date: 02/04/2010 08:38:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_UsedKey_DateUsed]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsedKey]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UsedKey_DateUsed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UsedKey] ADD  CONSTRAINT [DF_UsedKey_DateUsed]  DEFAULT (getdate()) FOR [DateUsed]
END


End
GO
/****** Object:  ForeignKey [FK_ActiveKey_TransformMethod]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActiveKey_TransformMethod]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActiveKey]'))
ALTER TABLE [dbo].[ActiveKey]  WITH CHECK ADD  CONSTRAINT [FK_ActiveKey_TransformMethod] FOREIGN KEY([TransformMethodId])
REFERENCES [dbo].[TransformMethod] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActiveKey_TransformMethod]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActiveKey]'))
ALTER TABLE [dbo].[ActiveKey] CHECK CONSTRAINT [FK_ActiveKey_TransformMethod]
GO
/****** Object:  ForeignKey [FK_Alias_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alias_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
ALTER TABLE [dbo].[Alias]  WITH CHECK ADD  CONSTRAINT [FK_Alias_Login] FOREIGN KEY([LoginId])
REFERENCES [dbo].[Login] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alias_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alias]'))
ALTER TABLE [dbo].[Alias] CHECK CONSTRAINT [FK_Alias_Login]
GO
/****** Object:  ForeignKey [FK_AutoUpdateFile_Lobby_AutoUpdateFile]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AutoUpdateFile_Lobby_AutoUpdateFile]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
ALTER TABLE [dbo].[AutoUpdateFile_Lobby]  WITH CHECK ADD  CONSTRAINT [FK_AutoUpdateFile_Lobby_AutoUpdateFile] FOREIGN KEY([AutoUpdateFileId])
REFERENCES [dbo].[AutoUpdateFile] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AutoUpdateFile_Lobby_AutoUpdateFile]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
ALTER TABLE [dbo].[AutoUpdateFile_Lobby] CHECK CONSTRAINT [FK_AutoUpdateFile_Lobby_AutoUpdateFile]
GO
/****** Object:  ForeignKey [FK_AutoUpdateFile_Lobby_Lobby]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AutoUpdateFile_Lobby_Lobby]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
ALTER TABLE [dbo].[AutoUpdateFile_Lobby]  WITH CHECK ADD  CONSTRAINT [FK_AutoUpdateFile_Lobby_Lobby] FOREIGN KEY([LobbyId])
REFERENCES [dbo].[Lobby] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AutoUpdateFile_Lobby_Lobby]') AND parent_object_id = OBJECT_ID(N'[dbo].[AutoUpdateFile_Lobby]'))
ALTER TABLE [dbo].[AutoUpdateFile_Lobby] CHECK CONSTRAINT [FK_AutoUpdateFile_Lobby_Lobby]
GO
/****** Object:  ForeignKey [FK_Ban_Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Identity] FOREIGN KEY([IdentityId])
REFERENCES [dbo].[Identity] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban] CHECK CONSTRAINT [FK_Ban_Identity]
GO
/****** Object:  ForeignKey [FK_Ban_InfractionType]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_InfractionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban]  WITH CHECK ADD  CONSTRAINT [FK_Ban_InfractionType] FOREIGN KEY([InfractionTypeId])
REFERENCES [dbo].[InfractionType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_InfractionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban] CHECK CONSTRAINT [FK_Ban_InfractionType]
GO
/****** Object:  ForeignKey [FK_Ban_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Login] FOREIGN KEY([BannedById])
REFERENCES [dbo].[Login] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ban_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
ALTER TABLE [dbo].[Ban] CHECK CONSTRAINT [FK_Ban_Login]
GO
/****** Object:  ForeignKey [FK_Group_Alias_GroupRole_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole]  WITH CHECK ADD  CONSTRAINT [FK_Group_Alias_GroupRole_Alias] FOREIGN KEY([AliasId])
REFERENCES [dbo].[Alias] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole] CHECK CONSTRAINT [FK_Group_Alias_GroupRole_Alias]
GO
/****** Object:  ForeignKey [FK_Group_Alias_GroupRole_Group]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_Group]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole]  WITH CHECK ADD  CONSTRAINT [FK_Group_Alias_GroupRole_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_Group]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole] CHECK CONSTRAINT [FK_Group_Alias_GroupRole_Group]
GO
/****** Object:  ForeignKey [FK_Group_Alias_GroupRole_GroupRole]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_GroupRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole]  WITH CHECK ADD  CONSTRAINT [FK_Group_Alias_GroupRole_GroupRole] FOREIGN KEY([GroupRoleId])
REFERENCES [dbo].[GroupRole] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Group_Alias_GroupRole_GroupRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[Group_Alias_GroupRole]'))
ALTER TABLE [dbo].[Group_Alias_GroupRole] CHECK CONSTRAINT [FK_Group_Alias_GroupRole_GroupRole]
GO
/****** Object:  ForeignKey [FK_GroupMessage_Group]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Group]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage]'))
ALTER TABLE [dbo].[GroupMessage]  WITH CHECK ADD  CONSTRAINT [FK_GroupMessage_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Group]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage]'))
ALTER TABLE [dbo].[GroupMessage] CHECK CONSTRAINT [FK_GroupMessage_Group]
GO
/****** Object:  ForeignKey [FK_GroupMessage_Alias_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Alias_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]'))
ALTER TABLE [dbo].[GroupMessage_Alias]  WITH CHECK ADD  CONSTRAINT [FK_GroupMessage_Alias_Alias] FOREIGN KEY([AliasId])
REFERENCES [dbo].[Alias] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Alias_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]'))
ALTER TABLE [dbo].[GroupMessage_Alias] CHECK CONSTRAINT [FK_GroupMessage_Alias_Alias]
GO
/****** Object:  ForeignKey [FK_GroupMessage_Alias_GroupMessage]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Alias_GroupMessage]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]'))
ALTER TABLE [dbo].[GroupMessage_Alias]  WITH CHECK ADD  CONSTRAINT [FK_GroupMessage_Alias_GroupMessage] FOREIGN KEY([GroupMessageId])
REFERENCES [dbo].[GroupMessage] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupMessage_Alias_GroupMessage]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupMessage_Alias]'))
ALTER TABLE [dbo].[GroupMessage_Alias] CHECK CONSTRAINT [FK_GroupMessage_Alias_GroupMessage]
GO
/****** Object:  ForeignKey [FK_GroupRequest_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupRequest_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupRequest]'))
ALTER TABLE [dbo].[GroupRequest]  WITH CHECK ADD  CONSTRAINT [FK_GroupRequest_Alias] FOREIGN KEY([AliasId])
REFERENCES [dbo].[Alias] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupRequest_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupRequest]'))
ALTER TABLE [dbo].[GroupRequest] CHECK CONSTRAINT [FK_GroupRequest_Alias]
GO
/****** Object:  ForeignKey [FK_GroupRequest_GroupRequestType]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupRequest_GroupRequestType]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupRequest]'))
ALTER TABLE [dbo].[GroupRequest]  WITH CHECK ADD  CONSTRAINT [FK_GroupRequest_GroupRequestType] FOREIGN KEY([RequestTypeId])
REFERENCES [dbo].[GroupRequestType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupRequest_GroupRequestType]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupRequest]'))
ALTER TABLE [dbo].[GroupRequest] CHECK CONSTRAINT [FK_GroupRequest_GroupRequestType]
GO
/****** Object:  ForeignKey [FK_Lobby_Login_Lobby]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lobby_Login_Lobby]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby_Login]'))
ALTER TABLE [dbo].[Lobby_Login]  WITH CHECK ADD  CONSTRAINT [FK_Lobby_Login_Lobby] FOREIGN KEY([LobbyId])
REFERENCES [dbo].[Lobby] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lobby_Login_Lobby]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby_Login]'))
ALTER TABLE [dbo].[Lobby_Login] CHECK CONSTRAINT [FK_Lobby_Login_Lobby]
GO
/****** Object:  ForeignKey [FK_Lobby_Login_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lobby_Login_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby_Login]'))
ALTER TABLE [dbo].[Lobby_Login]  WITH CHECK ADD  CONSTRAINT [FK_Lobby_Login_Login] FOREIGN KEY([LoginId])
REFERENCES [dbo].[Login] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lobby_Login_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lobby_Login]'))
ALTER TABLE [dbo].[Lobby_Login] CHECK CONSTRAINT [FK_Lobby_Login_Login]
GO
/****** Object:  ForeignKey [FK_Login_Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Identity] FOREIGN KEY([IdentityId])
REFERENCES [dbo].[Identity] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Identity]
GO
/****** Object:  ForeignKey [FK_Login_Role_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Role_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login_Role]'))
ALTER TABLE [dbo].[Login_Role]  WITH CHECK ADD  CONSTRAINT [FK_Login_Role_Login] FOREIGN KEY([LoginId])
REFERENCES [dbo].[Login] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Role_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login_Role]'))
ALTER TABLE [dbo].[Login_Role] CHECK CONSTRAINT [FK_Login_Role_Login]
GO
/****** Object:  ForeignKey [FK_Login_Role_Role]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Role_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login_Role]'))
ALTER TABLE [dbo].[Login_Role]  WITH CHECK ADD  CONSTRAINT [FK_Login_Role_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Role_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login_Role]'))
ALTER TABLE [dbo].[Login_Role] CHECK CONSTRAINT [FK_Login_Role_Role]
GO
/****** Object:  ForeignKey [FK_MachineRecord_Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord]  WITH CHECK ADD  CONSTRAINT [FK_MachineRecord_Identity] FOREIGN KEY([IdentityId])
REFERENCES [dbo].[Identity] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord] CHECK CONSTRAINT [FK_MachineRecord_Identity]
GO
/****** Object:  ForeignKey [FK_MachineRecord_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord]  WITH CHECK ADD  CONSTRAINT [FK_MachineRecord_Login] FOREIGN KEY([LoginId])
REFERENCES [dbo].[Login] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord] CHECK CONSTRAINT [FK_MachineRecord_Login]
GO
/****** Object:  ForeignKey [FK_MachineRecord_MachineRecordType]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_MachineRecordType]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord]  WITH CHECK ADD  CONSTRAINT [FK_MachineRecord_MachineRecordType] FOREIGN KEY([RecordTypeId])
REFERENCES [dbo].[MachineRecordType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MachineRecord_MachineRecordType]') AND parent_object_id = OBJECT_ID(N'[dbo].[MachineRecord]'))
ALTER TABLE [dbo].[MachineRecord] CHECK CONSTRAINT [FK_MachineRecord_MachineRecordType]
GO
/****** Object:  ForeignKey [FK_PersonalMessage_Alias]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonalMessage_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
ALTER TABLE [dbo].[PersonalMessage]  WITH CHECK ADD  CONSTRAINT [FK_PersonalMessage_Alias] FOREIGN KEY([SenderAliasId])
REFERENCES [dbo].[Alias] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonalMessage_Alias]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
ALTER TABLE [dbo].[PersonalMessage] CHECK CONSTRAINT [FK_PersonalMessage_Alias]
GO
/****** Object:  ForeignKey [FK_PersonalMessage_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonalMessage_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
ALTER TABLE [dbo].[PersonalMessage]  WITH CHECK ADD  CONSTRAINT [FK_PersonalMessage_Login] FOREIGN KEY([LoginId])
REFERENCES [dbo].[Login] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonalMessage_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonalMessage]'))
ALTER TABLE [dbo].[PersonalMessage] CHECK CONSTRAINT [FK_PersonalMessage_Login]
GO
/****** Object:  ForeignKey [FK_PollOption_Poll]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollOption_Poll]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollOption]'))
ALTER TABLE [dbo].[PollOption]  WITH CHECK ADD  CONSTRAINT [FK_PollOption_Poll] FOREIGN KEY([PollId])
REFERENCES [dbo].[Poll] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollOption_Poll]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollOption]'))
ALTER TABLE [dbo].[PollOption] CHECK CONSTRAINT [FK_PollOption_Poll]
GO
/****** Object:  ForeignKey [FK_PollVote_Identity]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollVote_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollVote]'))
ALTER TABLE [dbo].[PollVote]  WITH CHECK ADD  CONSTRAINT [FK_PollVote_Identity] FOREIGN KEY([IdentityId])
REFERENCES [dbo].[Identity] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollVote_Identity]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollVote]'))
ALTER TABLE [dbo].[PollVote] CHECK CONSTRAINT [FK_PollVote_Identity]
GO
/****** Object:  ForeignKey [FK_PollVote_PollOption]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollVote_PollOption]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollVote]'))
ALTER TABLE [dbo].[PollVote]  WITH CHECK ADD  CONSTRAINT [FK_PollVote_PollOption] FOREIGN KEY([PollOptionId])
REFERENCES [dbo].[PollOption] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PollVote_PollOption]') AND parent_object_id = OBJECT_ID(N'[dbo].[PollVote]'))
ALTER TABLE [dbo].[PollVote] CHECK CONSTRAINT [FK_PollVote_PollOption]
GO
/****** Object:  ForeignKey [FK_Session_ActiveKey]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_ActiveKey]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_ActiveKey] FOREIGN KEY([ActiveKeyId])
REFERENCES [dbo].[ActiveKey] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_ActiveKey]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_ActiveKey]
GO
/****** Object:  ForeignKey [FK_Session_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Login] FOREIGN KEY([LoginId])
REFERENCES [dbo].[Login] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Login]
GO
/****** Object:  ForeignKey [FK_Session_SessionStatus]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_SessionStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_SessionStatus] FOREIGN KEY([SessionStatusId])
REFERENCES [dbo].[SessionStatus] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Session_SessionStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Session]'))
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_SessionStatus]
GO
/****** Object:  ForeignKey [FK_UsedKey_ActiveKey]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsedKey_ActiveKey]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsedKey]'))
ALTER TABLE [dbo].[UsedKey]  WITH CHECK ADD  CONSTRAINT [FK_UsedKey_ActiveKey] FOREIGN KEY([ActiveKeyId])
REFERENCES [dbo].[ActiveKey] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsedKey_ActiveKey]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsedKey]'))
ALTER TABLE [dbo].[UsedKey] CHECK CONSTRAINT [FK_UsedKey_ActiveKey]
GO
/****** Object:  ForeignKey [FK_UsedKey_Login]    Script Date: 02/04/2010 08:38:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsedKey_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsedKey]'))
ALTER TABLE [dbo].[UsedKey]  WITH CHECK ADD  CONSTRAINT [FK_UsedKey_Login] FOREIGN KEY([LoginId])
REFERENCES [dbo].[Login] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsedKey_Login]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsedKey]'))
ALTER TABLE [dbo].[UsedKey] CHECK CONSTRAINT [FK_UsedKey_Login]
GO
