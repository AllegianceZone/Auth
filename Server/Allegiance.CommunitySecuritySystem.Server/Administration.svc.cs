using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Authentication;
using ACSSAuth.Common.Enumerations;
using ACSSAuth.DataAccess;
using ACSSAuth.Server.Contracts;
using ACSSAuth.Server.Interfaces;
using System.ServiceModel.Activation;

namespace ACSSAuth.Server
{
	[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class Administration : IAdministration
    {
        #region Contracts

        public bool SetBan(BanData data)
        {
            try
            {
                if (!data.Authenticate(RoleType.Moderator, RoleType.ZoneLeader, RoleType.Administrator, RoleType.SuperAdministrator))
                    throw new AuthenticationException();

                return data.SetBan();
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public void RemoveBan(BanData data)
        {
            try
            {
				if (!data.Authenticate(RoleType.ZoneLeader, RoleType.Administrator, RoleType.SuperAdministrator))
                    throw new AuthenticationException();

                data.RemoveBan();
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public List<Ban> ListBans(AuthenticatedData data, string alias)
        {
            try
            {
				if (!data.Authenticate(RoleType.Moderator, RoleType.ZoneLeader, RoleType.Administrator, RoleType.SuperAdministrator))
                    throw new AuthenticationException();

                return BanData.ListBans(alias);
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public List<Alias> ListAliases(AuthenticatedData data, string alias)
        {
            try
            {
				if (!data.Authenticate(RoleType.Administrator, RoleType.ZoneLeader, RoleType.SuperAdministrator))
                    throw new AuthenticationException();

                using (var db = new CSSDataContext())
                {
                    return Alias.ListAliases(db, alias);
                }
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        public List<BanType> ListInfractionTypes(AuthenticatedData data)
        {
            try
            {
				if (!data.Authenticate(RoleType.Administrator, RoleType.ZoneLeader, RoleType.Moderator, RoleType.SuperAdministrator))
                    throw new AuthenticationException();

                using (var db = new CSSDataContext())
                {
                    return db.BanTypes.ToList();
                }
            }
            catch (Exception error)
            {
                Error.Write(error);
                throw;
            }
        }

        #endregion
    }
}
