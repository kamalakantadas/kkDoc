using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI.membership
{
    public partial class membership : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)Session["Email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
        }
        //protected void verifyEmail(object sender, EventArgs e)
        //{

        //}
        protected void changePlanMembership(object sender, EventArgs e)
        {
            Response.Redirect("~/membership/changeplan.aspx");
        }
        protected void logout(object sender, EventArgs e)
        {
            Session["Email"] = null;
            Response.Redirect("Index.aspx");
        }
    }
}