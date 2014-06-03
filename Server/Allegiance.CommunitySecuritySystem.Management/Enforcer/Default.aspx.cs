using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACSSAuth.Server.Contracts;

namespace ACSSAuth.Management.Enforcer
{
	public partial class Default : UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			ucBan.ActivePlayersOnly = true;
		}
	}
}
