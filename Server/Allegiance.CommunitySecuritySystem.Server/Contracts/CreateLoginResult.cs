using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace ACSSAuth.Server.Contracts
{
	[DataContract]
	public class CreateLoginResult
	{
		[DataMember]
		public System.Web.Security.MembershipCreateStatus MembershipCreateStatus { get; set; }
	}
}