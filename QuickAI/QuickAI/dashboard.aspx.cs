﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.QueryString["email"];
            Session["Email"] = email;
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
            //Image img = (Image)Page.FindControl("userImage");
            //img.Visible = true;
            //img.AlternateText = email;
        }
       
    }
}