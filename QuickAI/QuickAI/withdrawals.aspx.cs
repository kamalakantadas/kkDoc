using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI
{
    public partial class withdrawals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)Session["email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
        }
        protected void logout(object sender, EventArgs e)
        {
            Session["Email"] = null;
            Response.Redirect("Index.aspx");
        }
    }
}