﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace ACSSAuth.Server.Contracts
{
	[DataContract]
	public class ValidateLegacyAliasResult
	{
		[DataMember]
		public bool AliasCanBeUsed { get; set; }
	}
}