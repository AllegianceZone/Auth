using System.Runtime.Serialization;
using ACSSAuth.Common.Enumerations;
using System.Collections.Generic;
using ACSSAuth.DataAccess;

namespace ACSSAuth.Server.Contracts
{
    [DataContract]
	public class ListAliasesResult 
    {
        #region Properties

        [DataMember]
        public List<Alias> Aliases { get; set; }

        [DataMember]
        public int AvailableAliasCount { get; set; }

        #endregion
    }
}