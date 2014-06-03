using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using ACSSAuth.Management.Business;

namespace ACSSAuth.Management.Content.AutoUpdate
{
	public partial class PublicationDetailsIFrame : UI.Page
	{
		protected override void OnInit(EventArgs e)
		{
			ucPackageContents.Target = Target;
			//ucPackageContents.ShowDelete = false;

			base.OnInit(e);
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			if (this.IsPostBack == false)
				BindData();
		}

		private void BindData()
		{
		
		}
	}
}
