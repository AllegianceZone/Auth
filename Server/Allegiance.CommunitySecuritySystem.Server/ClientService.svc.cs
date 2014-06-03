using ACSSAuth.BlackboxGenerator;
using ACSSAuth.Common.Enumerations;
using ACSSAuth.DataAccess;
using ACSSAuth.DataAccess.Enumerations;
using ACSSAuth.DataAccess.Model;
using ACSSAuth.Server.Contracts;
using ACSSAuth.Server.Interfaces;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing.Imaging;
using System.IO;
using System.ServiceModel.Activation;
using System.Web;
using System.Linq;

namespace ACSSAuth.Server
{
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public partial class ClientService : IClientService
    {
        #region Contracts

        public List<Poll> ListPolls(AuthenticatedData data)
        {
            try
            {
                if (!data.Authenticate())
                    return null;

                return Poll.FindActivePolls(data.Username);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public void ApplyVote(PollData data)
        {
            try
            {
                if (!data.Authenticate())
                    return;

                data.ApplyVote();
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        #endregion

        #region Contracts

        public ListMessageResult ListMessages(AuthenticatedData data)
        {
            try
            {
                if (!data.Authenticate())
                    return null;

                using (var db = new CSSDataContext())
                {
                    var messages = new List<IMessage>();
                    messages.AddRange(GroupMessage.GetGroupMessages(db, data.Username));
                    messages.AddRange(PersonalMessage.GetPrivateMessages(db, data.Username));
                    messages.AddRange(GroupMessage.GetGlobalMessages(db, data.Username));

                    //Re-insert messages into list since windows services 
                    //don't seem to be able to handle objects wrapped in a baseclass.
                    //var result = messages
                    //    .OrderByDescending(p => p.DateToSend)
                    //    .Select(p => new BaseMessage()
                    //{
                    //    Id = p.Id,
                    //    Sender = p.Sender,
                    //    Subject = p.Subject,
                    //    Message = p.Message,
                    //    DateCreated = p.DateToSend,     //User doesn't actually have to know the date the message was created - only sent.
                    //    DateToSend = p.DateToSend,
                    //    DateExpires = p.DateExpires,
                    //}).ToList();

                    //return result;

                    ListMessageResult returnValue = new ListMessageResult();
                    returnValue.Messages = new List<ListMessageResult.ListMessage>();
                    messages.ForEach(p => returnValue.Messages.Add(new ListMessageResult.ListMessage()
                    {
                        DateCreated = p.DateCreated,
                        DateExpires = p.DateExpires,
                        DateToSend = p.DateToSend,
                        Id = p.Id,
                        Sender = p.Sender,
                        Subject = p.Subject,
                        Message = p.Message
                    }));


                    return returnValue;
                }
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        #endregion

        #region Contracts

        public AutoUpdateResult CheckForUpdates(int lobbyId)
        {
            try
            {
                //Check current version, send updated files
                return AutoUpdateResult.RetrieveFileList(lobbyId);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public List<LobbyResult> CheckAvailableLobbies()
        {
            try
            {
                using (var db = new CSSDataContext())
                {
                    // perform updates for all available lobbies. The update check is moved to application
                    // startup, before the user logs in. Otherwise the the launcher can't update if
                    // the signature to the authentication service changes.
                    return db.Lobbies.Where(p => p.IsEnabled == true).Select(l => new LobbyResult()
                    {
                        LobbyId = l.Id,
                        Name = l.Name,
                        Host = l.Host
                    }).ToList();
                }
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        #endregion

        #region Contracts

        public LoginResult GetBlackBoxForUser(LoginData loginData)
        {
            try
            {
                bool useDebugBlackbox = Boolean.Parse(ConfigurationManager.AppSettings["UseDebugBlackbox"]);

                return loginData.Verify(useDebugBlackbox);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public LauncherSignInResult LauncherSignIn(LauncherSignInData data)
        {
            try
            {
                LauncherSignInResult result = new LauncherSignInResult();

                bool succeeded = data.Authenticate();

                if (succeeded == true)
                {
                    result.Status = CheckInStatus.Ok;

                    using (CSSDataContext db = new CSSDataContext())
                    {
                        if (Identity.IsLinkedToAnOlderAccount(db, data.Username) == true)
                        {
                            result.LinkedAccount = Identity.GetOldestLinkedAcccountUsername(db, data.Username);
                            result.Status = CheckInStatus.AccountLinked;
                        }
                    }
                }
                else
                {
                    result.Status = CheckInStatus.InvalidCredentials;
                }

                return result;
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public LoginResult Login(LoginData data)
        {
            try
            {
                bool useDebugBlackbox = Boolean.Parse(ConfigurationManager.AppSettings["UseDebugBlackbox"]);

                return data.Verify(useDebugBlackbox);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public CheckInResult CheckIn(CheckInData data)
        {
            try
            {
                if (!data.Authenticate())
                    return new CheckInResult() { Status = CheckInStatus.InvalidCredentials };

                return data.Verify();
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public void Logout(AuthenticatedData data)
        {
            try
            {
                if (!data.Authenticate())
                    return;

                Validation.EndSession(data.Username, data.Password);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public CheckAliasResult CreateAlias(LoginData data)
        {
            try
            {
                if (!data.Authenticate())
                    return CheckAliasResult.InvalidLogin;

                //if (data.CheckCaptcha() == false)
                //	return CheckAliasResult.CaptchaFailed;

                return Validation.CreateAlias(data.Username, data.Password, data.Alias, data.LegacyPassword);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public CheckAliasResult IsAliasAvailable(string callsignWithTags)
        {
            // Prevent slamming on this call.
            System.Threading.Thread.Sleep(500);

            try
            {
                return Validation.ValidateAlias(callsignWithTags);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }

        }

        public bool CheckLegacyAliasExists(string callsignWithTags)
        {
            // Prevent slamming on this call.
            System.Threading.Thread.Sleep(500);

            using (CSSDataContext db = new CSSDataContext())
            {
                string callsign = Alias.GetCallsignFromStringWithTokensAndTags(db, callsignWithTags);
                return Alias.CheckLegacyAliasExists(callsign);
            }
        }

        public CheckAliasResult ValidateLegacyCallsignUsage(string callsignWithTags, string legacyPassword)
        {
            // Prevent slamming on this call.
            System.Threading.Thread.Sleep(500);

            using (CSSDataContext db = new CSSDataContext())
            {
                string callsign = Alias.GetCallsignFromStringWithTokensAndTags(db, callsignWithTags);
                return Alias.ValidateLegacyCallsignUsage(callsign, legacyPassword);
            }
        }

        public CheckAliasResult CheckAlias(LoginData data)
        {
            try
            {
                if (!data.Authenticate())
                    return CheckAliasResult.InvalidLogin;

                return Validation.ValidateAlias(data.Username, data.Password, data.Alias);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public ListAliasesResult ListAliases(AuthenticatedData data)
        {
            try
            {
                if (!data.Authenticate())
                    return null;

                ListAliasesResult result = new ListAliasesResult();

                using (var db = new CSSDataContext())
                {
                    result.Aliases = Alias.ListDecoratedAliases(db, data.Username, true);

                    result.AvailableAliasCount = Alias.GetAliasCount(db, data.Username);
                }

                return result;
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public bool SetDefaultAlias(SetDefaultAliasData data)
        {
            try
            {
                if (!data.Authenticate())
                    return false;

                return data.SetDefaultAlias();
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }


        public CaptchaResult GetCaptcha(int width, int height)
        {
            Guid captchaToken;
            string captchaAnswer;
            string requestorIpAddress = String.Empty;

            if (HttpContext.Current != null)
                requestorIpAddress = HttpContext.Current.Request.UserHostAddress;

            DataAccess.Captcha.GetNewCaptchaAnswer(requestorIpAddress, out captchaToken, out captchaAnswer);

            Common.Utility.CaptchaImage captchaImage = new Common.Utility.CaptchaImage(captchaAnswer, width, height);

            MemoryStream memoryStream = new MemoryStream();
            captchaImage.Image.Save(memoryStream, ImageFormat.Jpeg);

            CaptchaResult returnValue = new CaptchaResult()
            {
                CaptchaImage = memoryStream.GetBuffer(),
                CaptchaToken = captchaToken
            };

            return returnValue;
        }

        public CreateLoginResult CreateLogin(string username, string password, string email, Guid captchaToken, string captchaAnswer)
        {
            System.Web.Security.MembershipCreateStatus status;

            // Prevent DDOS from slamming the server on this method. 
            System.Threading.Thread.Sleep(500);

            try
            {
                if (DataAccess.Captcha.CheckCaptcha(captchaToken, captchaAnswer) == false)
                {
                    status = System.Web.Security.MembershipCreateStatus.InvalidAnswer;
                }
                else
                {
                    DataAccess.MembershipProviders.CssMembershipProvider membershipProvider = new DataAccess.MembershipProviders.CssMembershipProvider();

                    membershipProvider.CreateUser(username, password, email, String.Empty, Guid.NewGuid().ToString(), true, null, out status);
                }

                return new CreateLoginResult()
                {
                    MembershipCreateStatus = status
                };
            }
            catch (Exception ex)
            {
                Log.Write(LogType.AuthenticationServer, ex.ToString());

                return new CreateLoginResult()
                {
                    MembershipCreateStatus = System.Web.Security.MembershipCreateStatus.ProviderError
                };
            }
        }


        #endregion
    }
}