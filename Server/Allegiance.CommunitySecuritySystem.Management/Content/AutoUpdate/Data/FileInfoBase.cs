using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ACSSAuth.Management.Content.AutoUpdate.Data
{
	public abstract class FileInfoBase
	{
		public string Name { get; set; }
		public string DateCreated { get; set; }
		public string LastModified { get; set; }
	}
}
