using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI
{
    public partial class affiliate_program : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void logout(object sender, EventArgs e)
        {
            Session["Email"] = null;
            if (Session["Email"] == null)
            {
                Response.Redirect("speechToText.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}