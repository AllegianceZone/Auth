﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACSSAuth.Management
{
	public partial class ChangePassword : UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Master.PageHeader = "CSS - Change Password";

			if (Master.Breadcrumb != null)
				Master.Breadcrumb.Visible = true;
		}
	}
}
