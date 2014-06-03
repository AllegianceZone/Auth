using System.Runtime.Serialization;
using ACSSAuth.Common.Enumerations;
using System;

namespace ACSSAuth.Server.Contracts
{
    [DataContract]
    public class CheckInResult
    {
        #region Properties

        [DataMember]
        public CheckInStatus Status { get; set; }

        [DataMember]
        public string Ticket { get; set; }

        #endregion
    }
}