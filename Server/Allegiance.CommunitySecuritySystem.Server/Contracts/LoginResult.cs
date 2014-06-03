using System.Runtime.Serialization;
using ACSSAuth.Common.Enumerations;

namespace ACSSAuth.Server.Contracts
{
    [DataContract]
    public class LoginResult
    {
        #region Properties

        [DataMember] 
        public LoginStatus Status { get; set; }

        [DataMember]
        public byte[] BlackboxData { get; set; }

        [DataMember]
        public string AcceptedAlias { get; set; }

		[DataMember]
		public int Rank { get; set; }

        #endregion
    }
}