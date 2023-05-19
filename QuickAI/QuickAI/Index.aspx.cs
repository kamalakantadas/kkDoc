using QuickAI.membership;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI
{
    public partial class Index : System.Web.UI.Page
    {
        changeplan cp = new changeplan();
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)Session["email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
            if (email == null) {
                activeSessionFunction.Visible = false;
                joinButtonFunct.Visible = true;
            }
            else
            {
                activeSessionFunction.Visible = true;
                joinButtonFunct.Visible = false;
            }
        }
        protected void freeRegClick(object sender, EventArgs e) {
            Response.Redirect("Register.aspx", true);
        }
        protected void joinbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx", true);
        }

        //Membership Form in Index Page upgradeMembership
        protected void upgradeMembership(object sender, EventArgs e)
        {
            
        }
        protected void showBillAndSendDataToBankDepositForm(object sender, EventArgs e)
        {
            Response.Redirect("membership/changeplan.aspx?val="+1+"");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "up", "hideChangeFunctionality();", true);
           
        }
        
    }
}









//pmUserName.InnerText = (string)Session["Email"];
//userNameBankDeposit.InnerText = (string)Session["Email"];
////string s = ((HtmlGenericControl)FindControl("chPara")).InnerText;
//string s = chPara.Text.ToString();
//membershipPlan.InnerText = "Extended Plan";
//string title = "Extended Plan";
//string premium = "membership";
//string paymentMethod = "Wire Transaction";
//DateTime currentDate = DateTime.Now;
//string date = currentDate.ToString();
//string status = "";
////Database store only Current DateTime
////Page display Updated Value
//if (s == "5")
//{
//    DateTime futureDate = currentDate.AddMonths(1);
//    //This future display on text on there respective page
//    endDate.InnerText = futureDate.ToString();
//    planPurchase.InnerText = s.ToString();
//    priceDepositForm.InnerText = s.ToString();
//    TotalCost.InnerText = s.ToString();
//}
//else if (s == "50")
//{
//    DateTime futureDate = currentDate.AddYears(1);
//    //This future display on text on there respective page
//    endDate.InnerText = futureDate.ToString();
//    planPurchase.InnerText = s.ToString();
//    priceDepositForm.InnerText = s.ToString();
//    TotalCost.InnerText = s.ToString();
//}
//else
//{
//    endDate.InnerText = "LifeTime";
//    planPurchase.InnerText = s;
//    priceDepositForm.InnerText = s;
//    TotalCost.InnerText = s;
//    //LifeTime
//}
////db
//SqlConnection con = new SqlConnection(connectionString);
//query = "insert into trans_table values('" + title + "','" + s + "','" + premium + "','" + paymentMethod + "','" + date + "','" + status + "')";
//SqlCommand cmd = new SqlCommand(query, con);
//SqlDataAdapter adpt = new SqlDataAdapter(cmd);
//DataTable dt = new DataTable();
//adpt.Fill(dt);
//MessageBox.Show("Done");
//ScriptManager.RegisterStartupScript(this, this.GetType(), "up", "showBill();", true);