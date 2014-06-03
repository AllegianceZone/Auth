using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;

namespace ACSSAuth.Server.Contracts
{
	public class CaptchaResult
	{
		public byte[] CaptchaImage { get; set; }
		public Guid CaptchaToken { get; set; }
	}
}