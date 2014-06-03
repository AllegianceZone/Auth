using System.Runtime.Serialization;
using ACSSAuth.Common.Enumerations;

namespace ACSSAuth.Server.Contracts
{
    [DataContract]
	public class LauncherSignInResult
    {
        #region Properties

        [DataMember] 
        public CheckInStatus Status { get; set; }

		[DataMember]
		public string LinkedAccount { get; set; }

        #endregion
    }
}