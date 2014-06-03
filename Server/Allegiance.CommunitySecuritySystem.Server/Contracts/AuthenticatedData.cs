using System.Runtime.Serialization;
using ACSSAuth.BlackboxGenerator;
using ACSSAuth.Common.Enumerations;
using System;

namespace ACSSAuth.Server.Contracts
{
    [DataContract]
    public class AuthenticatedData
    {
        #region Properties

        [DataMember]
        public string Username { get; set; }

        [DataMember]
        public string Password { get; set; }

        [DataMember]
        public int SessionId { get; set; }

        #endregion

        #region Methods

        internal bool Authenticate()
        {
            return Validation.ValidateLogin(Username, Password);
        }

        internal bool Authenticate(params RoleType[] requiredRoles)
        {
            return Validation.ValidateLogin(Username, Password, requiredRoles);
        }

        #endregion
    }
}