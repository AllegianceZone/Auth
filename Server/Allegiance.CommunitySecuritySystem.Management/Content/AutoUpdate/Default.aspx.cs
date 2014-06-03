using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACSSAuth.Management.Business;

namespace ACSSAuth.Management.Content.AutoUpdate
{
	public partial class Default : UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			lblAvailablePackageCount.Text = AutoUpdateManager.GetCountPackages().ToString();
			lblBackupCount.Text = AutoUpdateManager.GetCountBackups().ToString();
			lblPublicationDestinationCount.Text = AutoUpdateManager.GetCountPublications().ToString();
		}
	}
}
